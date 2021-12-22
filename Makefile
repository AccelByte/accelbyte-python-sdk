# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

lint:
	rm -f lint.err
	docker run -t --rm -v $(PWD):/data -w /data --entrypoint /bin/sh dhanarab/python-pylint:3.9-2.12.2-2 \
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
