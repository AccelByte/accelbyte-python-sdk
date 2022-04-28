# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

SHELL := /bin/bash

#ENV_FILE_PATH ?= $(PWD)/tests/sample_apps/how_to.env

lint:
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
	docker run --rm --tty --user $$(id -u):$$(id -g) --env PIP_CACHE_DIR=/tmp/pip -v $$(pwd):/data -w /data --entrypoint /bin/sh python:3.9-slim \
			-c 'python -m venv /tmp && \
				/tmp/bin/pip install -r requirements.txt && \
				PYTHONPATH=/data:$$PYTHONPATH /tmp/bin/python test.py --test_core Y'

test_integration:
	@test -n "$(ENV_FILE_PATH)" || (echo "ENV_FILE_PATH is not set" ; exit 1)
	docker run --rm --tty --user $$(id -u):$$(id -g) --env PIP_CACHE_DIR=/tmp/pip --env-file $(ENV_FILE_PATH) -v $$(pwd):/data -w /data --entrypoint /bin/sh python:3.9-slim \
			-c 'python -m venv /tmp && \
				/tmp/bin/pip install -r requirements.txt && \
				PYTHONPATH=/data:$$PYTHONPATH /tmp/bin/python test.py --test_core N --test_integration Y'

test_cli:
	@test -n "$(SDK_MOCK_SERVER_PATH)" || (echo "SDK_MOCK_SERVER_PATH is not set" ; exit 1)
	rm -f test.err
	docker run -t --rm -u $$(id -u):$$(id -g) -v $$(readlink -f "$(SDK_MOCK_SERVER_PATH)"):/server -v $$(pwd):/data -w /data --entrypoint /bin/bash -e PIP_CACHE_DIR=/tmp/pip python:3.9-slim \
			-c 'python -m venv /tmp/server && \
					(cd /server && /tmp/server/bin/pip install -r requirements.txt) && \
					python -m venv /tmp/client && \
					(cd samples/cli && /tmp/client/bin/pip install -r requirements.txt) && \
					(PYTHONPATH=/server:$$PYTHONPATH /tmp/server/bin/python -m justice_sdk_mock_server -s /data/spec &) && \
					(for i in $$(seq 1 10); do bash -c "timeout 1 echo > /dev/tcp/127.0.0.1/8080" 2>/dev/null && exit 0 || sleep 10; done; exit 1) && \
					sed -i "s/\r//" samples/cli/tests/* && \
					rm -f samples/cli/tests/*.tap && \
					(cd samples/cli && . /tmp/client/bin/activate && for FILE in $$(ls /data/samples/cli/tests/*.sh); do \
							(set -o pipefail; bash $${FILE} | tee "$${FILE}.tap") || touch /data/test.err; \
					done)'
	[ ! -f test.err ]
