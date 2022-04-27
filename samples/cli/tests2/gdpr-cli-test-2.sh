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

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

$PYTHON -m $MODULE 'start-interactive-session' --continue_on_error > test.out 2>&1 << END
gdpr-admin-get-list-deletion-data-request --login_with_auth "Bearer foo"
gdpr-get-admin-email-configuration --login_with_auth "Bearer foo"
gdpr-update-admin-email-configuration '["FtBxyZcD"]' --login_with_auth "Bearer foo"
gdpr-save-admin-email-configuration '["XBpGlsQu"]' --login_with_auth "Bearer foo"
gdpr-delete-admin-email-configuration '["Ju8vMf0I"]' --login_with_auth "Bearer foo"
gdpr-admin-get-list-personal-data-request --login_with_auth "Bearer foo"
gdpr-admin-get-user-account-deletion-request 'sJkTrd8I' --login_with_auth "Bearer foo"
gdpr-admin-submit-user-account-deletion-request 'DcV2zXnT' --login_with_auth "Bearer foo"
gdpr-admin-cancel-user-account-deletion-request 'KjXY1bPq' --login_with_auth "Bearer foo"
gdpr-admin-get-user-personal-data-requests 'amiBxx9C' --login_with_auth "Bearer foo"
gdpr-admin-request-data-retrieval 's18EY84e' --login_with_auth "Bearer foo"
gdpr-admin-cancel-user-personal-data-request 'kItqRzHU' '1oh570KQ' --login_with_auth "Bearer foo"
gdpr-admin-generate-personal-data-url 'BVaewc72' 'krSha68n' '3Ynozp1C' --login_with_auth "Bearer foo"
gdpr-public-submit-user-account-deletion-request '2KmIQTuB' 'dNEUsxFb' --login_with_auth "Bearer foo"
gdpr-public-cancel-user-account-deletion-request '8CJ17M7D' --login_with_auth "Bearer foo"
gdpr-public-get-user-account-deletion-status 'JZaMSxEC' --login_with_auth "Bearer foo"
gdpr-public-get-user-personal-data-requests 'bZbygyoa' --login_with_auth "Bearer foo"
gdpr-public-request-data-retrieval 'rORoeNHS' 'b8Rh3kgs' --login_with_auth "Bearer foo"
gdpr-public-cancel-user-personal-data-request '9qqJbnQs' 'oBgiVpP8' --login_with_auth "Bearer foo"
gdpr-public-generate-personal-data-url 'Cm3yvASU' 'oxdxxFqm' 'AGTJ8IEd' --login_with_auth "Bearer foo"
END

exit $EXIT_CODE