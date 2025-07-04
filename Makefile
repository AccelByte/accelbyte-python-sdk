# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

SHELL := /bin/bash

#ENV_FILE_PATH ?= $(PWD)/tests/sample_apps/.env

clean:
	rm -rf build
	rm -rf dist
	rm -rf *.egg-info

lint: clean
	rm -f lint.err
	docker run -t --rm -v $$(pwd):/data -w /data --entrypoint /bin/sh dhanarab/python-pylint:3.9-2.12.2-2 \
			-c 'pip install -r requirements.txt && pylint -j 0 accelbyte_py_sdk || exit $$(( $$? & (1+2+32) ))' || touch lint.err
#	find samples -type f -iname __init__.py -exec sh -c 'DIR="$$(dirname "{}")" && [ -f "$$DIR/../__init__.py" ] || echo "$$DIR"' \; | while read DIR; do \
#			echo "# $$DIR"; \
#			docker run -t --rm -v $(PWD):/data -w /data/$$DIR --entrypoint /bin/sh dhanarab/python-pylint:3.9-2.12.2-2 \
#					-c "cd .. \
#							&& ([ -f requirements.txt ] && pip install -r requirements.txt || true) \
#							&& find $$(basename "$$DIR") -type f -iname requirements.txt -exec pip install -r {} \; \
#							&& pylint -j 0 $$(basename "$$DIR") || exit \$$(( \$$? & (1+2+32) ))" || touch lint.err; \
#	done
	[ ! -f lint.err ]

test_core:
	@test -n "$(SDK_MOCK_SERVER_PATH)" || (echo "SDK_MOCK_SERVER_PATH is not set" ; exit 1)
	rm -f test_core.err
	trap "docker stop --time 1 justice-codegen-sdk-mock-server justice-codegen-sdk-ws-mock-server; docker rm --force mylocal_httpbin" EXIT && \
		echo "[info] running httpbin" && \
			docker run -d -p 8070:80 --name mylocal_httpbin --rm kennethreitz/httpbin && \
			echo "[info] httpbin ready" && \
		echo "[info] running mock-server" && \
			(bash "$(SDK_MOCK_SERVER_PATH)/mock-server.sh" -s /data/spec -t "-" --save_files y &) && \
			(for i in $$(seq 1 10); do echo "[info] pinging mock-server" && curl http://localhost:8080/ 2>/dev/null && exit 0 || sleep 10; done; echo "[erro] can't connect to mock-server"; exit 1) && \
			echo "[info] mock-server ready" && \
		echo "[info] running ws-mock-server" && \
			(SPEC_DIR=/data/spec bash "$(SDK_MOCK_SERVER_PATH)/ws/ws-mock-server.sh" &) && \
			(for i in $$(seq 1 10); do echo "[info] pinging ws-mock-server" && bash -c "timeout 1 echo > /dev/tcp/127.0.0.1/8000" 2>/dev/null && exit 0 || sleep 10; done; echo "[erro] can't connect to ws-mock-server"; exit 1) && \
			echo "[info] ws-mock-server ready" && \
		docker run --rm --tty --network host \
			--user $$(id -u):$$(id -g) \
			--volume $$(pwd):/data --workdir /data \
			--env PIP_CACHE_DIR=/tmp/pip \
			--name ab_py_sdk_core_test \
			--entrypoint /bin/bash \
			python:3.9-slim \
				-c 'rm -f /data/test_core.tap && \
					python -m venv /tmp/client && \
					echo "[info] installing requirements-test.txt" && \
					(cd /data && /tmp/client/bin/pip install --upgrade pip && /tmp/client/bin/pip install -r requirements-test.txt) && \
					echo "[info] running tests" && \
					((PYTHONPATH=/data:$$PYTHONPATH /tmp/client/bin/python test.py --test_core Y --use_tap || touch /data/test_core.err) | tee "/data/test_core.tap")'
	[ ! -f test_core.err ]

test_integration:
	@test -n "$(ENV_FILE_PATH)" || (echo "ENV_FILE_PATH is not set" ; exit 1)
	rm -f test_integration.err
	docker run --rm --tty --user $$(id -u):$$(id -g) --env PIP_CACHE_DIR=/tmp/pip --env-file $(ENV_FILE_PATH) -v $$(pwd):/data -w /data --entrypoint /bin/sh python:3.9-slim \
			-c 'python -m venv /tmp && \
				/tmp/bin/pip install -r requirements-test.txt && \
				rm -f /data/test_integration.tap && \
				((PYTHONPATH=/data:$$PYTHONPATH /tmp/bin/python test.py --test_core N --test_integration Y --use_tap || touch /data/test_integration.err) | tee "/data/test_integration.tap")'
	[ ! -f test_integration.err ]

test_cli:
	@test -n "$(SDK_MOCK_SERVER_PATH)" || (echo "SDK_MOCK_SERVER_PATH is not set" ; exit 1)
	rm -f test_cli.err
	trap "docker stop --time 1 justice-codegen-sdk-mock-server justice-codegen-sdk-ws-mock-server" EXIT && \
		echo "[info] running mock-server" && \
			(bash "$(SDK_MOCK_SERVER_PATH)/mock-server.sh" -s /data/spec -t "-" --save_files y &) && \
			(for i in $$(seq 1 10); do echo "[info] pinging mock-server" && curl http://localhost:8080/ 2>/dev/null && exit 0 || sleep 10; done; echo "[erro] can't connect to mock-server"; exit 1) && \
			echo "[info] mock-server ready" && \
		echo "[info] running ws-mock-server" && \
			(SPEC_DIR=/data/spec bash "$(SDK_MOCK_SERVER_PATH)/ws/ws-mock-server.sh" &) && \
			(for i in $$(seq 1 10); do echo "[info] pinging ws-mock-server" && bash -c "timeout 1 echo > /dev/tcp/127.0.0.1/8000" 2>/dev/null && exit 0 || sleep 10; done; echo "[erro] can't connect to ws-mock-server"; exit 1) && \
			echo "[info] ws-mock-server ready" && \
		docker run --rm --tty --network host \
			--user $$(id -u):$$(id -g) \
			--volume $$(pwd):/data --workdir /data \
			--env PIP_CACHE_DIR=/tmp/pip \
			--env BATCH=true \
			--name ab_py_sdk_cli_test \
			--entrypoint /bin/bash \
			python:3.9-slim \
				-c 'python -m venv /tmp/client && \
					echo "[info] installing samples/cli/requirements.txt" && \
					(cd /data/samples/cli && /tmp/client/bin/pip install --upgrade pip && /tmp/client/bin/pip install -r requirements.txt) && \
					echo "[info] running samples/cli/tests" && \
					rm -f samples/cli/tests/*.tap && \
					(cd /data/samples/cli && . /tmp/client/bin/activate && for FILE in $$(ls /data/samples/cli/tests/*.sh); do \
						(set -o pipefail; bash $${FILE} | tee "$${FILE}.tap") || touch /data/test_cli.err; \
					done)'
	[ ! -f test_cli.err ]

clean_dist:
	rm -rf *.egg-info
	rm -rf build
	rm -rf dist

build_dist: clean_dist
	@docker run --rm --tty --user $$(id -u):$$(id -g) \
		--volume $$(pwd):/data \
		--workdir /data \
		--entrypoint /bin/sh \
		python:3.9-slim \
			-c 'python -m venv /tmp && \
				/tmp/bin/pip install --upgrade pip build setuptools setuptools_scm wheel && \
				/tmp/bin/python setup.py sdist bdist_wheel --universal'

test_upload_dist: clean_dist build_dist
	@test -n "$(PYPIRC_PATH)" || (echo "PYPIRC_PATH is not set" ; exit 1)
	@docker run --rm --tty --user $$(id -u):$$(id -g) \
		--volume $$(pwd):/data \
		--volume $(PYPIRC_PATH):/.pypirc \
		--workdir /data \
		--entrypoint /bin/sh \
		python:3.9-slim \
			-c 'python -m venv /tmp && \
				/tmp/bin/pip install --upgrade twine && \
				/tmp/bin/python -m twine upload --repository testpypi --config-file /.pypirc --verbose dist/*'

upload_dist: clean_dist build_dist
	@test -n "$(PYPIRC_PATH)" || (echo "PYPIRC_PATH is not set" ; exit 1)
	@docker run --rm --tty --user $$(id -u):$$(id -g) \
		--volume $$(pwd):/data \
		--volume $(PYPIRC_PATH):/.pypirc \
		--workdir /data \
		--entrypoint /bin/sh \
		python:3.9-slim \
			-c 'python -m venv /tmp && \
				/tmp/bin/pip install --upgrade twine && \
				/tmp/bin/python -m twine upload --config-file /.pypirc --verbose dist/*'

test_broken_link:
	@test -n "$(SDK_MD_CRAWLER_PATH)" || (echo "SDK_MD_CRAWLER_PATH is not set" ; exit 1)
	rm -f test_broken_link.err
	bash "$(SDK_MD_CRAWLER_PATH)/md-crawler.sh" -i README.md
	DOCKER_SKIP_BUILD=1 bash "$(SDK_MD_CRAWLER_PATH)/md-crawler.sh" -i CHANGELOG.md
	(for FILE in $$(find docs -type f); do \
			(set -o pipefail; DOCKER_SKIP_BUILD=1 bash "$(SDK_MD_CRAWLER_PATH)/md-crawler.sh" -i $$FILE) || touch test_broken_link.err; \
	done)
	DOCKER_SKIP_BUILD=1 bash "$(SDK_MD_CRAWLER_PATH)/md-crawler.sh" -i "https://docs.accelbyte.io/gaming-services/services/extend/extend-sdk/get-started-with-extend-sdk/"
	[ ! -f test_broken_link.err ]

version:
	if [ -n "$$MAJOR" ]; then VERSION_PART=1; elif [ -n "$$PATCH" ]; then VERSION_PART=3; else VERSION_PART=2; fi && \
			VERSION_OLD=$$(cat version.txt | tr -d '\n') && \
			VERSION_NEW=$$(awk -v part=$$VERSION_PART -F. "{OFS=\".\"; \$$part+=1; print \$$0}" version.txt) && \
			echo $${VERSION_NEW} > version.txt && \
			sed -i "s/VERSION = \"[0-9]\+\.[0-9]\+\.[0-9]\+\"/VERSION = \"$$VERSION_NEW\"/" setup.py && \
			sed -i "s/__version__ = \"[0-9]\+\.[0-9]\+\.[0-9]\+\"/__version__ = \"$$VERSION_NEW\"/" accelbyte_py_sdk/__init__.py

outstanding_deprecation:
	find * -type f -iname '*.py' \
		| xargs awk ' \
				BEGIN { \
					count_ok = 0; \
					count_not_ok = 0; \
					"date +%s -d \"6 months ago\"" | getline limit_epoch; \
				} \
				match($$0,/@deprecated\("([0-9]{4}-[0-9]{1,2}-[0-9]{1,2})/,since_date) { \
					"date +%s -d " since_date[1] | getline since_epoch; \
					if (limit_epoch < since_epoch) { \
						count_ok += 1; \
						print "ok - " FILENAME ":" $$0; \
					} \
					else { \
						count_not_ok += 1; \
						print "not ok - " FILENAME ":" $$0; \
					} \
				} \
				END { \
					exit (count_not_ok ? 1 : 0); \
				}' \
		| tee outstanding_deprecation.out
	@echo 1..$$(grep -c '^\(not \)\?ok' outstanding_deprecation.out) 