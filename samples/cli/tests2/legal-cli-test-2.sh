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
legal-change-preference-consent 'FtBxyZcD' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "GlsQuJu8", "policyId": "vMf0IsJk", "policyVersionId": "Trd8IDcV"}]' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements '2zXnTKjX' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version 'Y1bPqami' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies --login_with_auth "Bearer foo"
legal-create-policy --body '{"affectedClientIds": ["Bxx9Cs18"], "affectedCountries": ["EY84ekIt"], "basePolicyName": "qRzHU1oh", "description": "570KQBVa", "namespace": "ewc72krS", "tags": ["ha68n3Yn"], "typeId": "ozp1C2Km"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy 'IQTuBdNE' --login_with_auth "Bearer foo"
legal-partial-update-policy 'UsxFb8CJ' --body '{"affectedClientIds": ["17M7DJZa"], "affectedCountries": ["MSxECbZb"], "basePolicyName": "ygyoarOR", "description": "oeNHSb8R", "namespace": "h3kgs9qq", "tags": ["JbnQsoBg"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'iVpP8Cm3' 'yvASUoxd' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions 'xxFqmAGT' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'J8IEdagE' --body '{"contentType": "tp4w29KO", "description": "u9c19R6X", "localeCode": "DqWHkkP8"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version 'npLEKMfj' --login_with_auth "Bearer foo"
legal-update-localized-policy-version 'iX7jpkVZ' --body '{"attachmentChecksum": "k3IaQYEm", "attachmentLocation": "qGodOEGt", "attachmentVersionIdentifier": "9gPOj0c6", "contentType": "i0JkvIas", "description": "73ucYnFA"}' --login_with_auth "Bearer foo"
legal-request-presigned-url 'J3DK5T4E' --body '{"contentMD5": "ogg0Y39U", "contentType": "oYlpv5bV"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'AgtsDhUT' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy 'DUscbQDj' 'bTQuPMz2' 'PTRlkyU8' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "PFJ42cwm", "policyId": "zBBSMNco", "policyVersionId": "AAOjKNjf"}]' --login_with_auth "Bearer foo"
legal-admin-retrieve-eligibilities 'cYHm093a' 'YgBU1sqj' 'yK0XH45P' --login_with_auth "Bearer foo"
legal-retrieve-policies 'aRSOFQBt' --login_with_auth "Bearer foo"
legal-update-policy-version 'u23REZ8h' --body '{"description": "RVX7LGOv", "displayVersion": "DdYiQS9i", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-publish-policy-version 'V1C91pjG' --login_with_auth "Bearer foo"
legal-update-policy '9gpxL6yc' --body '{"description": "TQdvln2L", "isDefaultOpted": true, "isMandatory": true, "policyName": "SQWEXL6L", "readableId": "FE1YHo9m", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 '8hHtWvbN' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version 'YqgUqslA' --login_with_auth "Bearer foo"
legal-create-policy-version 'rFPiHUIv' --body '{"description": "aCv8kU9d", "displayVersion": "BBpdsJLh", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types '95' --login_with_auth "Bearer foo"
legal-get-user-info-status --login_with_auth "Bearer foo"
legal-sync-user-info --login_with_auth "Bearer foo"
legal-invalidate-user-info-cache --login_with_auth "Bearer foo"
legal-anonymize-user-agreement 'yExrkxoo' --login_with_auth "Bearer foo"
legal-change-preference-consent-1 --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "7WOfercZ", "policyId": "dpMci37D", "policyVersionId": "s7YSfExa"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy 'I3uzLteM' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Alt4hr7H", "policyId": "mOYiBA5l", "policyVersionId": "tAOXmlG6"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-v2 'eh1dTdoT' 'FpBIcuC1' 'dQY93OJn' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "D8ldz7Hu", "policyId": "8AD79kdW", "policyVersionId": "unvizU0q"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-1 '1pHyhhER' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "drysMizB", "policyId": "GSRdP2l7", "policyVersionId": "DNSZ8Aq0"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'XiPLQXSe' '07ZddOGT' 'MlJjBwj9' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 'HJHQKseE' --login_with_auth "Bearer foo"
legal-retrieve-policy-versions --login_with_auth "Bearer foo"
legal-retrieve-latest-policies 'dSXRDSvg' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public 'uauw1xT7' --login_with_auth "Bearer foo"
legal-check-readiness --login_with_auth "Bearer foo"
END

exit $EXIT_CODE