# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

lint:
	docker run -t --rm -v $(PWD):/data --entrypoint /bin/sh cytopia/pylint \
			-c 'apk update && apk add gcc musl-dev python3-dev libffi-dev openssl-dev cargo && pip install -r requirements.txt && pylint -j 0 accelbyte_py_sdk || exit $$(( $$? & (1+2+32) ))'
