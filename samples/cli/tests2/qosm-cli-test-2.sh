#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# Meta:
# - random seed: 256
# - template file: python-cli-unit-test-2.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='samples/cli'

touch "tmp.dat"

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

$PYTHON -m $MODULE 'start-interactive-session' --continue_on_error '--writer=tap' << END
qosm-delete-server 'FtBxyZcD' --login_with_auth "Bearer foo"
qosm-set-server-alias '{"alias": "XBpGlsQu"}' 'Ju8vMf0I' --login_with_auth "Bearer foo"
qosm-list-server --login_with_auth "Bearer foo"
qosm-heartbeat '{"ip": "sJkTrd8I", "port": 59, "region": "cV2zXnTK"}' --login_with_auth "Bearer foo"
exit()
END

rm -f "tmp.dat"

EXIT_CODE=$?

exit $EXIT_CODE