# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

test_cli:
	@test -n "$(SDK_MOCK_SERVER_PATH)" || (echo "SDK_MOCK_SERVER_PATH is not set" ; exit 1)
	rm -f test.err
	docker run -t --rm -u $$(id -u):$$(id -g) -v $$(readlink -f "$(SDK_MOCK_SERVER_PATH)"):/server -v $$(pwd):/data -w /data --entrypoint /bin/sh -e PIP_CACHE_DIR=/tmp/pip python:3.9-slim \
			-c 'python -m venv /tmp/server && \
					(cd /server && /tmp/server/bin/pip install -r requirements.txt) && \
					python -m venv /tmp/client && \
					(cd samples/cli && /tmp/client/bin/pip install -r requirements.txt) && \
					(PYTHONPATH=/server:$$PYTHONPATH /tmp/server/bin/python -m justice_sdk_mock_server -s /data/spec &) && \
					(for i in $$(seq 1 10); do python -c "import sys;import socket;sys.exit(socket.socket(socket.AF_INET,socket.SOCK_STREAM).connect_ex((\"localhost\",8080)))" && exit 0 || sleep 10; done; exit 1) && \
					sed -i "s/\r//" tests/sh/* && \
					(cd samples/cli && . /tmp/client/bin/activate && for FILE in $$(ls /data/tests/sh/*.sh | grep -v run-python-cli-all-unit-test.sh); do bash $$FILE || touch /data/test.err; done)'
	[ ! -f test.err ]
