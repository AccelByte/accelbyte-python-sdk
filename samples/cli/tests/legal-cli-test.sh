#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# Meta:
# - random seed: 256
# - template file: python-cli-unit-test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

EXIT_CODE=0
PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"
export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

touch "tmp.dat"

if [ "$BATCH" = true ] ; then

$PYTHON -m $MODULE 'start-interactive-session' --continue_on_error '--writer=tap' << END
legal-change-preference-consent 'ohPJa3Va' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "pv5PY5s4", "policyId": "MoMF0elG", "policyVersionId": "sz1qb3wg"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "9H1gbi5P", "policyId": "qDNFaolP", "policyVersionId": "4rEYhdlk"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "cC2QAlXC", "policyId": "ldbxe51l", "policyVersionId": "4KNQeebZ"}]' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements 'HUHD8Q23' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version 'sYWqdpjq' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies --login_with_auth "Bearer foo"
legal-create-policy --body '{"affectedClientIds": ["Tu0UBOp2", "uR2Eyxwm", "OJ8zycZ3"], "affectedCountries": ["9k3iWSMQ", "Wb1dLe5u", "cz97WbvQ"], "basePolicyName": "DsqCASSq", "description": "qXBpwwqM", "namespace": "Y2Ni5oPY", "tags": ["IBzDWgjK", "Msp5lN2a", "c1RvXxj6"], "typeId": "Dg3nUx3e"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy 't15h036F' --login_with_auth "Bearer foo"
legal-partial-update-policy '5GmVfMVS' --body '{"affectedClientIds": ["T4dm0pHZ", "JfXxA8NX", "RYSxOJHB"], "affectedCountries": ["GVO4MsHc", "YfBk2O3E", "MxvU10Qo"], "basePolicyName": "Qyi6EOhz", "description": "uZk7sZsi", "namespace": "plABFgs7", "tags": ["8g3DII7N", "dBmkmnGK", "98SzjihD"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'l77cLDtL' 'ZBW0cNH6' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions '0ky2Ochp' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'XkHVhpU7' --body '{"contentType": "XDJ4Ghfa", "description": "oy5A3OPZ", "localeCode": "7ZoU0nNY"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version '5wTEv0cn' --login_with_auth "Bearer foo"
legal-update-localized-policy-version 'TjtTQvfF' --body '{"attachmentChecksum": "02cLfqtQ", "attachmentLocation": "H3jDFxIu", "attachmentVersionIdentifier": "2aCufAUe", "contentType": "z6A03Lat", "description": "AjcqP9AC"}' --login_with_auth "Bearer foo"
legal-request-presigned-url 'Opd3K5IO' --body '{"contentMD5": "2qaP7cZF", "contentType": "2CAyGgpc"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'byLet6P9' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy '3Gfr2BdZ' 'Q2s9GGdn' '5y1pKXLe' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Qa5vFYfV", "policyId": "20Dv276z", "policyVersionId": "oGWzG82A"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "QUT8BItV", "policyId": "p8m34GYt", "policyVersionId": "c8xjeDOF"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "IB3FvJv6", "policyId": "xXZkvu75", "policyVersionId": "lUBg5xkw"}]' --login_with_auth "Bearer foo"
legal-admin-retrieve-eligibilities 'CU1d7Qqp' '5h17OR1h' 'TymEPLD7' --login_with_auth "Bearer foo"
legal-retrieve-policies 'eqRykeWq' --login_with_auth "Bearer foo"
legal-update-policy-version 'jhAcCtzc' --body '{"description": "Lur8ZC9A", "displayVersion": "9Kd5AcBV", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-publish-policy-version 'BJyWWOOj' --login_with_auth "Bearer foo"
legal-update-policy '7MYiCkgE' --body '{"description": "nX9Pi9oQ", "isDefaultOpted": false, "isMandatory": false, "policyName": "3x4V477y", "readableId": "aJqY0fsn", "shouldNotifyOnUpdate": true}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 'PhU6VoY3' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version 'j3euhaGa' --login_with_auth "Bearer foo"
legal-create-policy-version 'gqQFYPJC' --body '{"description": "Lsea2u9E", "displayVersion": "TYgb920G", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types '57' --login_with_auth "Bearer foo"
legal-get-user-info-status --login_with_auth "Bearer foo"
legal-sync-user-info --login_with_auth "Bearer foo"
legal-invalidate-user-info-cache --login_with_auth "Bearer foo"
legal-anonymize-user-agreement 'g2xkUa1r' --login_with_auth "Bearer foo"
legal-change-preference-consent-1 --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "q6w92Kpg", "policyId": "juDXocOe", "policyVersionId": "UflUZAgz"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "w8KwXirT", "policyId": "FPM1pJYX", "policyVersionId": "g7VwpfKi"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "HpV67TCD", "policyId": "cJLLcMgL", "policyVersionId": "d9nezitJ"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy 'CEuV3bld' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "cRID7OCr", "policyId": "aQbvK4Hs", "policyVersionId": "QGmhKWS9"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "amjcLqi9", "policyId": "OHdtOYJs", "policyVersionId": "C8HRnNgN"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "QYYYwcle", "policyId": "PNbsYHZO", "policyVersionId": "iANCjGKY"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-v2 '8EmpnPBt' '3Qd5oBn9' 'wsHxbp6B' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "uJNB5K05", "policyId": "njf1dfTb", "policyVersionId": "JB9KKJRw"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "WRGJUNY9", "policyId": "6n6ZlxeK", "policyVersionId": "aoheukLs"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "x7sh7LjW", "policyId": "qDmu3w7X", "policyVersionId": "IMrg67js"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-1 'ZvFcgCV4' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "8MQaMYNI", "policyId": "bgKYAPI6", "policyVersionId": "WEuaN4mH"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "DtrCApNx", "policyId": "9eXoQzxP", "policyVersionId": "Zffd4B8m"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "IY44XFgr", "policyId": "wa4Z5HkL", "policyVersionId": "IYwYDevc"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'ajzErrRd' 'b1bojcks' 'zrXPZnUR' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 'CAvC0ioN' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies 'foYoNAvA' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public 'tllUZEGD' --login_with_auth "Bearer foo"
legal-check-readiness --login_with_auth "Bearer foo"
exit()
END

EXIT_CODE=$?

else

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..42"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ChangePreferenceConsent
$PYTHON -m $MODULE 'legal-change-preference-consent' \
    'UDmq5Kbm' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ZMuEYubf", "policyId": "XqlnVpEV", "policyVersionId": "1GFJueIQ"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ISyyRyNh", "policyId": "S7sMTiLH", "policyVersionId": "UtsgsKTz"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "I8m7cJwZ", "policyId": "7d6FtrlO", "policyVersionId": "fYcNeKZu"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    'qURHDoYl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'hT9jNG0B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
$PYTHON -m $MODULE 'legal-retrieve-all-legal-policies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
$PYTHON -m $MODULE 'legal-create-policy' \
    --body '{"affectedClientIds": ["3wcRytmA", "SfeCZP9K", "1zYSYOdK"], "affectedCountries": ["hGPX015s", "u7tbzZ3H", "kNrsN7C0"], "basePolicyName": "bcswi1GK", "description": "3tf0YC6g", "namespace": "QJEIm1wd", "tags": ["L5tS71IF", "mVTanLsK", "1Kh95ai0"], "typeId": "oolI4mpc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'D3fMfgQl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    '6UQleYLA' \
    --body '{"affectedClientIds": ["7IQnBNk0", "qjx7DVt4", "QE6yymPE"], "affectedCountries": ["St56NVyC", "R1CsGj62", "XXBl1cIS"], "basePolicyName": "xQLWo7qP", "description": "FjJNcida", "namespace": "DqBtIRpa", "tags": ["ta1KIdoa", "SmSrcp7F", "m81rqvMx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'Ol7xexO4' \
    '5nMT6zzV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'LAZoZu7u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    '9NXnkCdM' \
    --body '{"contentType": "Q1Awckx4", "description": "qjLGDyEp", "localeCode": "lkO9MavB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'YBHCC6J2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'phWmkZac' \
    --body '{"attachmentChecksum": "2n53cOGK", "attachmentLocation": "T6BQvbhw", "attachmentVersionIdentifier": "lHhSYzZH", "contentType": "8GYFIW4d", "description": "GsIzIDZk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'uuzDOiyp' \
    --body '{"contentMD5": "E3QrJ0BT", "contentType": "ACsY3gQD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'mEszof89' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'Vyqt44x2' \
    '1bXMEkJ4' \
    'ZVWtegHC' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "kJASf3T6", "policyId": "qniGfJyd", "policyVersionId": "BIZDG90A"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "MciJ1usi", "policyId": "rLHmcB2W", "policyVersionId": "UQbY7i4Q"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "db4uUbcX", "policyId": "BPT1vtEN", "policyVersionId": "HM7FmcKe"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'IndirectBulkAcceptVersionedPolicy' test.out

#- 17 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    '7NsZlEVd' \
    'm6bzQGPm' \
    'f2foyIUo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminRetrieveEligibilities' test.out

#- 18 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'ta7TeXtm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetrievePolicies' test.out

#- 19 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    'Usbc6gLw' \
    --body '{"description": "EPw86MsC", "displayVersion": "nDHvHb7d", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdatePolicyVersion' test.out

#- 20 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'JxQTEgNC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublishPolicyVersion' test.out

#- 21 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'oMqIOK7o' \
    --body '{"description": "5WsIQ2lV", "isDefaultOpted": true, "isMandatory": true, "policyName": "idaN6GAm", "readableId": "alZzzKAg", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdatePolicy' test.out

#- 22 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    '8wVCBiGE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SetDefaultPolicy1' test.out

#- 23 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    'LonCmtfN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicyVersion' test.out

#- 24 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    '0VGuMltl' \
    --body '{"description": "KBRSMxMb", "displayVersion": "2JQ1kbS4", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreatePolicyVersion' test.out

#- 25 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '66' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'RetrieveAllPolicyTypes' test.out

#- 26 GetUserInfoStatus
$PYTHON -m $MODULE 'legal-get-user-info-status' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetUserInfoStatus' test.out

#- 27 SyncUserInfo
$PYTHON -m $MODULE 'legal-sync-user-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'SyncUserInfo' test.out

#- 28 InvalidateUserInfoCache
$PYTHON -m $MODULE 'legal-invalidate-user-info-cache' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'InvalidateUserInfoCache' test.out

#- 29 AnonymizeUserAgreement
$PYTHON -m $MODULE 'legal-anonymize-user-agreement' \
    'TUN8wwuA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserAgreement' test.out

#- 30 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "CzN7DsD2", "policyId": "Frdrf3wf", "policyVersionId": "CyLMwQxx"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "NT0GbACy", "policyId": "VHj1ZFwo", "policyVersionId": "UB0s2pWx"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "xx0sLwGK", "policyId": "UycZoypB", "policyVersionId": "CID8Cpdk"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ChangePreferenceConsent1' test.out

#- 31 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'vnhiMwF4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AcceptVersionedPolicy' test.out

#- 32 RetrieveAgreementsPublic
$PYTHON -m $MODULE 'legal-retrieve-agreements-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'RetrieveAgreementsPublic' test.out

#- 33 BulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-bulk-accept-versioned-policy' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "QsT2d5vh", "policyId": "lCWfOSfi", "policyVersionId": "BjRzHVLf"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "8YW0TLo1", "policyId": "MX8rKlY3", "policyVersionId": "oLBJ9KLa"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Z0vRP1dr", "policyId": "n2pqXeqd", "policyVersionId": "X4gw95B2"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'BulkAcceptVersionedPolicy' test.out

#- 34 IndirectBulkAcceptVersionedPolicyV2
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-v2' \
    'w37V2zzz' \
    'Aq15pAXp' \
    '4Fsi3MhH' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "APTFEzJc", "policyId": "kKQO1tfH", "policyVersionId": "EAAzjPz0"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "unVll8K9", "policyId": "6gvcYGXG", "policyVersionId": "bSWBN0cd"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "aV1iZiRW", "policyId": "wmVjA39k", "policyVersionId": "tJYKaCi2"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 35 IndirectBulkAcceptVersionedPolicy1
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-1' \
    'k8dY5y0i' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "kUTLWbz5", "policyId": "gBRX2sVK", "policyVersionId": "tNSzyAP4"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "S5PcTvoy", "policyId": "Lc7ZyHeM", "policyVersionId": "Nl92QWhx"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Tr2fUBcy", "policyId": "mi0HJO2W", "policyVersionId": "NsFvnLpn"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 36 RetrieveEligibilitiesPublic
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'RetrieveEligibilitiesPublic' test.out

#- 37 RetrieveEligibilitiesPublicIndirect
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public-indirect' \
    'Wz3FipEB' \
    '43KrFWBg' \
    'dK01DtCw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'RetrieveEligibilitiesPublicIndirect' test.out

#- 38 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'O79fuLI5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 39 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    'zoD9pJ7j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'RetrieveLatestPolicies' test.out

#- 40 RetrieveLatestPoliciesPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'RetrieveLatestPoliciesPublic' test.out

#- 41 RetrieveLatestPoliciesByNamespaceAndCountryPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-by-namespace-and-country-public' \
    'yUN9tzi9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 42 CheckReadiness
$PYTHON -m $MODULE 'legal-check-readiness' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'CheckReadiness' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
