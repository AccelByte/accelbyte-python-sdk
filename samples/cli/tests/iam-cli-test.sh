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

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

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

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

echo "TAP version 13"
echo "1..299"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 GetBansType
$PYTHON -m $MODULE 'iam-get-bans-type' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetBansType' test.out

#- 3 GetListBanReason
$PYTHON -m $MODULE 'iam-get-list-ban-reason' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetListBanReason' test.out

#- 4 GetClients
eval_tap 0 4 'GetClients # SKIP deprecated' test.out

#- 5 CreateClient
eval_tap 0 5 'CreateClient # SKIP deprecated' test.out

#- 6 GetClient
$PYTHON -m $MODULE 'iam-get-client' \
    'FtBxyZcD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetClient' test.out

#- 7 UpdateClient
$PYTHON -m $MODULE 'iam-update-client' \
    '{"ClientName": "XBpGlsQu", "RedirectUri": "Ju8vMf0I"}' \
    'sJkTrd8I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateClient' test.out

#- 8 DeleteClient
eval_tap 0 8 'DeleteClient # SKIP deprecated' test.out

#- 9 UpdateClientPermission
$PYTHON -m $MODULE 'iam-update-client-permission' \
    '{"Permissions": [{"Action": 59, "Resource": "cV2zXnTK"}]}' \
    'jXY1bPqa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UpdateClientPermission' test.out

#- 10 AddClientPermission
$PYTHON -m $MODULE 'iam-add-client-permission' \
    '24' \
    'iBxx9Cs1' \
    '8EY84ekI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AddClientPermission' test.out

#- 11 DeleteClientPermission
$PYTHON -m $MODULE 'iam-delete-client-permission' \
    '39' \
    'qRzHU1oh' \
    '570KQBVa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteClientPermission' test.out

#- 12 UpdateClientSecret
$PYTHON -m $MODULE 'iam-update-client-secret' \
    '{"NewSecret": "ewc72krS"}' \
    'ha68n3Yn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateClientSecret' test.out

#- 13 GetClientsbyNamespace
$PYTHON -m $MODULE 'iam-get-clientsby-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetClientsbyNamespace' test.out

#- 14 CreateClientByNamespace
$PYTHON -m $MODULE 'iam-create-client-by-namespace' \
    '{"ClientId": "ozp1C2Km", "ClientName": "IQTuBdNE", "ClientPermissions": [{"Action": 93, "Resource": "sxFb8CJ1", "SchedAction": 76, "SchedCron": "7DJZaMSx", "SchedRange": ["ECbZbygy"]}], "Namespace": "oarORoeN", "RedirectUri": "HSb8Rh3k", "Secret": "gs9qqJbn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateClientByNamespace' test.out

#- 15 DeleteClientByNamespace
$PYTHON -m $MODULE 'iam-delete-client-by-namespace' \
    'QsoBgiVp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DeleteClientByNamespace' test.out

#- 16 CreateUser
$PYTHON -m $MODULE 'iam-create-user' \
    '{"AuthType": "P8Cm3yvA", "Country": "SUoxdxxF", "DisplayName": "qmAGTJ8I", "LoginId": "EdagEtp4", "Password": "w29KOu9c", "PasswordMD5Sum": "19R6XDqW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateUser' test.out

#- 17 GetAdminUsersByRoleID
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetAdminUsersByRoleID' test.out

#- 18 GetUserByLoginID
$PYTHON -m $MODULE 'iam-get-user-by-login-id' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetUserByLoginID' test.out

#- 19 GetUserByPlatformUserID
$PYTHON -m $MODULE 'iam-get-user-by-platform-user-id' \
    'HkkP8npL' \
    'EKMfjiX7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetUserByPlatformUserID' test.out

#- 20 ForgotPassword
$PYTHON -m $MODULE 'iam-forgot-password' \
    '{"Context": "jpkVZk3I", "LanguageTag": "aQYEmqGo", "LoginID": "dOEGt9gP"}' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 20 'ForgotPassword' test.out

#- 21 GetUsersByLoginIds
$PYTHON -m $MODULE 'iam-get-users-by-login-ids' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetUsersByLoginIds' test.out

#- 22 ResetPassword
$PYTHON -m $MODULE 'iam-reset-password' \
    '{"Code": "Oj0c6i0J", "LoginID": "kvIas73u", "NewPassword": "cYnFAJ3D"}' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 22 'ResetPassword' test.out

#- 23 SearchUser
eval_tap 0 23 'SearchUser # SKIP deprecated' test.out

#- 24 GetUserByUserID
$PYTHON -m $MODULE 'iam-get-user-by-user-id' \
    'K5T4Eogg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetUserByUserID' test.out

#- 25 UpdateUser
$PYTHON -m $MODULE 'iam-update-user' \
    '{"Country": "0Y39UoYl", "DateOfBirth": "pv5bVAgt", "DisplayName": "sDhUTDUs", "LanguageTag": "cbQDjbTQ"}' \
    'uPMz2PTR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateUser' test.out

#- 26 DeleteUser
$PYTHON -m $MODULE 'iam-delete-user' \
    'lkyU89ZP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteUser' test.out

#- 27 BanUser
$PYTHON -m $MODULE 'iam-ban-user' \
    '{"ban": "Ow6zPFJ4", "comment": "2cwmzBBS", "endDate": "MNcoAAOj", "reason": "KNjfcYHm", "skipNotif": false}' \
    'YgBU1sqj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BanUser' test.out

#- 28 GetUserBanHistory
$PYTHON -m $MODULE 'iam-get-user-ban-history' \
    'yK0XH45P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetUserBanHistory' test.out

#- 29 DisableUserBan
$PYTHON -m $MODULE 'iam-disable-user-ban' \
    'aRSOFQBt' \
    'u23REZ8h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'DisableUserBan' test.out

#- 30 EnableUserBan
$PYTHON -m $MODULE 'iam-enable-user-ban' \
    'RVX7LGOv' \
    'DdYiQS9i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'EnableUserBan' test.out

#- 31 ListCrossNamespaceAccountLink
eval_tap 0 31 'ListCrossNamespaceAccountLink # SKIP deprecated' test.out

#- 32 DisableUser
eval_tap 0 32 'DisableUser # SKIP deprecated' test.out

#- 33 EnableUser
eval_tap 0 33 'EnableUser # SKIP deprecated' test.out

#- 34 GetUserInformation
$PYTHON -m $MODULE 'iam-get-user-information' \
    '7mV1C91p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetUserInformation' test.out

#- 35 DeleteUserInformation
$PYTHON -m $MODULE 'iam-delete-user-information' \
    'jG9gpxL6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteUserInformation' test.out

#- 36 GetUserLoginHistories
$PYTHON -m $MODULE 'iam-get-user-login-histories' \
    'ycTQdvln' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetUserLoginHistories' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
$PYTHON -m $MODULE 'iam-save-user-permission' \
    '{"Permissions": [{"Action": 74, "Resource": "AuSQWEXL", "SchedAction": 74, "SchedCron": "FE1YHo9m", "SchedRange": ["126ZWc8h"]}]}' \
    'HtWvbNYq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SaveUserPermission' test.out

#- 39 AddUserPermission
$PYTHON -m $MODULE 'iam-add-user-permission' \
    '{"SchedAction": 12, "SchedCron": "UqslArFP", "SchedRange": ["iHUIvaCv"]}' \
    '20' \
    'U9dBBpds' \
    'JLhsVyEx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AddUserPermission' test.out

#- 40 DeleteUserPermission
$PYTHON -m $MODULE 'iam-delete-user-permission' \
    '35' \
    'kxoot0B7' \
    'WOfercZd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteUserPermission' test.out

#- 41 GetUserPlatformAccounts
$PYTHON -m $MODULE 'iam-get-user-platform-accounts' \
    'pMci37Ds' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserPlatformAccounts' test.out

#- 42 GetUserMapping
$PYTHON -m $MODULE 'iam-get-user-mapping' \
    '7YSfExaI' \
    '3uzLteMb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetUserMapping' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
$PYTHON -m $MODULE 'iam-platform-link' \
    'FAlt4hr7' \
    'HmOYiBA5' \
    'ltAOXmlG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PlatformLink' test.out

#- 45 PlatformUnlink
$PYTHON -m $MODULE 'iam-platform-unlink' \
    '6eh1dTdo' \
    'TFpBIcuC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PlatformUnlink' test.out

#- 46 GetPublisherUser
$PYTHON -m $MODULE 'iam-get-publisher-user' \
    '1dQY93OJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetPublisherUser' test.out

#- 47 SaveUserRoles
$PYTHON -m $MODULE 'iam-save-user-roles' \
    '["nJ6Te9vD"]' \
    '8ldz7Hu8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'SaveUserRoles' test.out

#- 48 AddUserRole
$PYTHON -m $MODULE 'iam-add-user-role' \
    'AD79kdWu' \
    'nvizU0q1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AddUserRole' test.out

#- 49 DeleteUserRole
$PYTHON -m $MODULE 'iam-delete-user-role' \
    'pHyhhERo' \
    'GgdrysMi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteUserRole' test.out

#- 50 UpgradeHeadlessAccount
$PYTHON -m $MODULE 'iam-upgrade-headless-account' \
    '{"LoginID": "zBGSRdP2", "Password": "l7DNSZ8A"}' \
    'q0XiPLQX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpgradeHeadlessAccount' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
$PYTHON -m $MODULE 'iam-upgrade-headless-account-with-verification-code' \
    '{"Code": "Se07ZddO", "Password": "GTMlJjBw", "loginId": "j9HJHQKs"}' \
    'eEdSXRDS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpgradeHeadlessAccountWithVerificationCode' test.out

#- 52 UserVerification
$PYTHON -m $MODULE 'iam-user-verification' \
    '{"Code": "vguauw1x", "ContactType": "T7eMwSl9", "LanguageTag": "MLH0NnTJ", "validateOnly": true}' \
    'lNzBvwJa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UserVerification' test.out

#- 53 SendVerificationCode
$PYTHON -m $MODULE 'iam-send-verification-code' \
    '{"Context": "Qa547Jll", "LanguageTag": "vA8RWSpa", "LoginID": "bUt7xk6Q"}' \
    'xyWhfqoW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'SendVerificationCode' test.out

#- 54 Authorization
$PYTHON -m $MODULE 'iam-authorization' \
    'fJw2o8oW' \
    'UqvPCZ2H' \
    'token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'Authorization' test.out

#- 55 GetJWKS
$PYTHON -m $MODULE 'iam-get-jwks' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetJWKS' test.out

#- 56 PlatformTokenRequestHandler
eval_tap 0 56 'PlatformTokenRequestHandler # SKIP deprecated' test.out

#- 57 RevokeUser
$PYTHON -m $MODULE 'iam-revoke-user' \
    'T7NXmWDl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'RevokeUser' test.out

#- 58 GetRevocationList
$PYTHON -m $MODULE 'iam-get-revocation-list' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 58 'GetRevocationList' test.out

#- 59 RevokeToken
eval_tap 0 59 'RevokeToken # SKIP deprecated' test.out

#- 60 RevokeAUser
eval_tap 0 60 'RevokeAUser # SKIP deprecated' test.out

#- 61 TokenGrant
$PYTHON -m $MODULE 'iam-token-grant' \
    'password' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'TokenGrant' test.out

#- 62 VerifyToken
$PYTHON -m $MODULE 'iam-verify-token' \
    'uNIdQJR5' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 62 'VerifyToken' test.out

#- 63 GetRoles
$PYTHON -m $MODULE 'iam-get-roles' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetRoles' test.out

#- 64 CreateRole
$PYTHON -m $MODULE 'iam-create-role' \
    '{"AdminRole": false, "Managers": [{"DisplayName": "sNOlvkfw", "Namespace": "aSbnsuLC", "UserId": "gToxuVTe"}], "Members": [{"DisplayName": "kJgvg6h5", "Namespace": "HIpH0Dvi", "UserId": "plEk4vj3"}], "Permissions": [{"Action": 75, "Resource": "Dp4yqDt8", "SchedAction": 85, "SchedCron": "UZDpxlHa", "SchedRange": ["sinGcjrk"]}], "RoleName": "mRMttgjD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'CreateRole' test.out

#- 65 GetRole
$PYTHON -m $MODULE 'iam-get-role' \
    'SaIVBmft' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetRole' test.out

#- 66 UpdateRole
$PYTHON -m $MODULE 'iam-update-role' \
    '{"RoleName": "3Udg7p9P"}' \
    'GmY2H5kX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'UpdateRole' test.out

#- 67 DeleteRole
$PYTHON -m $MODULE 'iam-delete-role' \
    '4MsisSX2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'DeleteRole' test.out

#- 68 GetRoleAdminStatus
$PYTHON -m $MODULE 'iam-get-role-admin-status' \
    '8nARxWRp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'GetRoleAdminStatus' test.out

#- 69 SetRoleAsAdmin
$PYTHON -m $MODULE 'iam-set-role-as-admin' \
    'v5ou5xtv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'SetRoleAsAdmin' test.out

#- 70 RemoveRoleAdmin
$PYTHON -m $MODULE 'iam-remove-role-admin' \
    'd28OUfCt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'RemoveRoleAdmin' test.out

#- 71 GetRoleManagers
$PYTHON -m $MODULE 'iam-get-role-managers' \
    '8UJC5flN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'GetRoleManagers' test.out

#- 72 AddRoleManagers
$PYTHON -m $MODULE 'iam-add-role-managers' \
    '{"Managers": [{"DisplayName": "yj6HsTtX", "Namespace": "8P3llnaa", "UserId": "S9lqyygP"}]}' \
    'cfkJIxfQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'AddRoleManagers' test.out

#- 73 RemoveRoleManagers
$PYTHON -m $MODULE 'iam-remove-role-managers' \
    '{"Managers": [{"DisplayName": "Zza8kNVb", "Namespace": "DxVMq7HJ", "UserId": "k0F89xAc"}]}' \
    '3YVfaENt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'RemoveRoleManagers' test.out

#- 74 GetRoleMembers
$PYTHON -m $MODULE 'iam-get-role-members' \
    'rl0pTKZT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'GetRoleMembers' test.out

#- 75 AddRoleMembers
$PYTHON -m $MODULE 'iam-add-role-members' \
    '{"Members": [{"DisplayName": "XqzHuBMY", "Namespace": "QSA2jz1Z", "UserId": "OpdOjSyM"}]}' \
    'ddB41JuM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'AddRoleMembers' test.out

#- 76 RemoveRoleMembers
$PYTHON -m $MODULE 'iam-remove-role-members' \
    '{"Members": [{"DisplayName": "f7RUyBHR", "Namespace": "j8IiRimR", "UserId": "llHT6Dc4"}]}' \
    '0vFFA6gp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'RemoveRoleMembers' test.out

#- 77 UpdateRolePermissions
$PYTHON -m $MODULE 'iam-update-role-permissions' \
    '{"Permissions": [{"Action": 93, "Resource": "7EW3x1dC", "SchedAction": 30, "SchedCron": "m55gOeqQ", "SchedRange": ["IqcJVKmB"]}]}' \
    'M1J1IbuT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UpdateRolePermissions' test.out

#- 78 AddRolePermission
$PYTHON -m $MODULE 'iam-add-role-permission' \
    '{"SchedAction": 35, "SchedCron": "rkbmuT1w", "SchedRange": ["hOqmEnDX"]}' \
    '69' \
    'WrBPlSay' \
    '46mv71BA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'AddRolePermission' test.out

#- 79 DeleteRolePermission
$PYTHON -m $MODULE 'iam-delete-role-permission' \
    '53' \
    'OjtFJ2vm' \
    'Tj7tT7TZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'DeleteRolePermission' test.out

#- 80 AdminGetAgeRestrictionStatusV2
$PYTHON -m $MODULE 'iam-admin-get-age-restriction-status-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'AdminGetAgeRestrictionStatusV2' test.out

#- 81 AdminUpdateAgeRestrictionConfigV2
$PYTHON -m $MODULE 'iam-admin-update-age-restriction-config-v2' \
    '{"AgeRestriction": 67, "Enable": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'AdminUpdateAgeRestrictionConfigV2' test.out

#- 82 GetListCountryAgeRestriction
$PYTHON -m $MODULE 'iam-get-list-country-age-restriction' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetListCountryAgeRestriction' test.out

#- 83 UpdateCountryAgeRestriction
$PYTHON -m $MODULE 'iam-update-country-age-restriction' \
    '{"AgeRestriction": 6}' \
    'CkIsZoAr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateCountryAgeRestriction' test.out

#- 84 AdminSearchUsersV2
$PYTHON -m $MODULE 'iam-admin-search-users-v2' \
    'WwPHcyFA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'AdminSearchUsersV2' test.out

#- 85 AdminGetUserByUserIdV2
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v2' \
    'dAtYciLI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'AdminGetUserByUserIdV2' test.out

#- 86 AdminUpdateUserV2
$PYTHON -m $MODULE 'iam-admin-update-user-v2' \
    '{"Country": "gRwFRr0g", "DateOfBirth": "wB9tz3vp", "DisplayName": "99XVlV8r", "LanguageTag": "K3tE6n0s"}' \
    'mip1tw3L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'AdminUpdateUserV2' test.out

#- 87 AdminBanUserV2
$PYTHON -m $MODULE 'iam-admin-ban-user-v2' \
    '{"ban": "7cUd9pqt", "comment": "v6JfPZwc", "endDate": "CVOXcVa8", "reason": "0TmCwtD2", "skipNotif": false}' \
    'AH01o6Nd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'AdminBanUserV2' test.out

#- 88 AdminGetUserBanV2
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v2' \
    'cBIgzrDy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'AdminGetUserBanV2' test.out

#- 89 AdminDisableUserV2
$PYTHON -m $MODULE 'iam-admin-disable-user-v2' \
    '{"Reason": "WpFBYGmm"}' \
    'BawMyoKy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'AdminDisableUserV2' test.out

#- 90 AdminEnableUserV2
$PYTHON -m $MODULE 'iam-admin-enable-user-v2' \
    'NpdAasm8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'AdminEnableUserV2' test.out

#- 91 AdminResetPasswordV2
$PYTHON -m $MODULE 'iam-admin-reset-password-v2' \
    '{"LanguageTag": "xwUfzOlQ", "NewPassword": "iZY4NbOQ", "OldPassword": "XJ7uOTzN"}' \
    'Mvuq2tNl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'AdminResetPasswordV2' test.out

#- 92 AdminDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-admin-delete-platform-link-v2' \
    '4CX4IjiK' \
    '4DEUJRVK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'AdminDeletePlatformLinkV2' test.out

#- 93 AdminPutUserRolesV2
$PYTHON -m $MODULE 'iam-admin-put-user-roles-v2' \
    '["3l9Eb0R1"]' \
    'XRb0RH8v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'AdminPutUserRolesV2' test.out

#- 94 AdminCreateUserRolesV2
$PYTHON -m $MODULE 'iam-admin-create-user-roles-v2' \
    '["S1smeOln"]' \
    'grdTXCza' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'AdminCreateUserRolesV2' test.out

#- 95 PublicGetCountryAgeRestriction
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction' \
    'PBtkZMio' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PublicGetCountryAgeRestriction' test.out

#- 96 PublicCreateUserV2
$PYTHON -m $MODULE 'iam-public-create-user-v2' \
    '{"AuthType": "4wcyhloV", "Country": "S3rYp8Qt", "DisplayName": "cEmCEVc7", "LoginId": "5UfeypWj", "Password": "DNhzCL5s", "PasswordMD5Sum": "WS2qwO76"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'PublicCreateUserV2' test.out

#- 97 PublicForgotPasswordV2
$PYTHON -m $MODULE 'iam-public-forgot-password-v2' \
    '{"Context": "3iEklkzL", "LanguageTag": "m88LpLuY", "LoginID": "RO3C55yH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicForgotPasswordV2' test.out

#- 98 PublicResetPasswordV2
$PYTHON -m $MODULE 'iam-public-reset-password-v2' \
    '{"Code": "pwK2Jaqe", "LoginID": "nDGn7a2N", "NewPassword": "UplWiLjq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'PublicResetPasswordV2' test.out

#- 99 PublicGetUserByUserIDV2
$PYTHON -m $MODULE 'iam-public-get-user-by-user-idv2' \
    '06n6a0rW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'PublicGetUserByUserIDV2' test.out

#- 100 PublicUpdateUserV2
$PYTHON -m $MODULE 'iam-public-update-user-v2' \
    '{"Country": "8EfkpaXt", "DateOfBirth": "wYZJaQ4W", "DisplayName": "bwNmsFYe", "LanguageTag": "tjEurH8e"}' \
    'loJzNKtR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'PublicUpdateUserV2' test.out

#- 101 PublicGetUserBan
$PYTHON -m $MODULE 'iam-public-get-user-ban' \
    'UaTz1ETd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'PublicGetUserBan' test.out

#- 102 PublicUpdatePasswordV2
$PYTHON -m $MODULE 'iam-public-update-password-v2' \
    '{"LanguageTag": "smwzjkkn", "NewPassword": "9oiQl05g", "OldPassword": "7cO3ZMb6"}' \
    'Ojlo6DMN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdatePasswordV2' test.out

#- 103 GetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-get-list-justice-platform-accounts' \
    'pP2qMrTQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetListJusticePlatformAccounts' test.out

#- 104 PublicPlatformLinkV2
$PYTHON -m $MODULE 'iam-public-platform-link-v2' \
    '1UpjfU6w' \
    'Jhy1jOVk' \
    'kUlS7952' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'PublicPlatformLinkV2' test.out

#- 105 PublicDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-public-delete-platform-link-v2' \
    '7EZ25Ia8' \
    'uCeZFlLt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'PublicDeletePlatformLinkV2' test.out

#- 106 AdminGetBansTypeV3
$PYTHON -m $MODULE 'iam-admin-get-bans-type-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'AdminGetBansTypeV3' test.out

#- 107 AdminGetListBanReasonV3
$PYTHON -m $MODULE 'iam-admin-get-list-ban-reason-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'AdminGetListBanReasonV3' test.out

#- 108 AdminGetInputValidations
$PYTHON -m $MODULE 'iam-admin-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'AdminGetInputValidations' test.out

#- 109 AdminUpdateInputValidations
$PYTHON -m $MODULE 'iam-admin-update-input-validations' \
    '[{"field": "EVpDAEbA", "validation": {"allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "description": [{"language": "0pDE5xRw", "message": ["h5b45ebp"]}], "isCustomRegex": false, "letterCase": "M7ScSs3U", "maxLength": 80, "maxRepeatingAlphaNum": 30, "maxRepeatingSpecialCharacter": 53, "minCharType": 44, "minLength": 68, "regex": "p9rRtn1P", "specialCharacterLocation": "cCxdbume", "specialCharacters": ["YgOdEBWR"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'QiW3KFfU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
$PYTHON -m $MODULE 'iam-list-admins-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'ListAdminsV3' test.out

#- 112 AdminGetAgeRestrictionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-age-restriction-status-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'AdminGetAgeRestrictionStatusV3' test.out

#- 113 AdminUpdateAgeRestrictionConfigV3
$PYTHON -m $MODULE 'iam-admin-update-age-restriction-config-v3' \
    '{"ageRestriction": 16, "enable": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-admin-get-list-country-age-restriction-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-admin-update-country-age-restriction-v3' \
    '{"ageRestriction": 67}' \
    '4081gRB1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
$PYTHON -m $MODULE 'iam-admin-get-banned-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminGetBansTypeWithNamespaceV3
$PYTHON -m $MODULE 'iam-admin-get-bans-type-with-namespace-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminGetBansTypeWithNamespaceV3' test.out

#- 118 AdminGetClientsByNamespaceV3
$PYTHON -m $MODULE 'iam-admin-get-clients-by-namespace-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'AdminGetClientsByNamespaceV3' test.out

#- 119 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["GyLfLg4R"], "baseUri": "YuEbgUDE", "clientId": "cJyIvsPw", "clientName": "Or0BmV5i", "clientPermissions": [{"action": 63, "resource": "vfwFjTSm", "schedAction": 69, "schedCron": "EqoLyLeU", "schedRange": ["GmomGX9s"]}], "deletable": true, "namespace": "8pqLfc5S", "oauthClientType": "wGnReUUL", "redirectUri": "DX4QUIbb", "secret": "5nh68Zny"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'AdminCreateClientV3' test.out

#- 120 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'UtRvW9hN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 121 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'BSFTtFrO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminDeleteClientV3' test.out

#- 122 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["mjkFrFVA"], "baseUri": "8t0xF34X", "clientName": "pt6ZlTTi", "clientPermissions": [{"action": 4, "resource": "0kr2a0nI", "schedAction": 28, "schedCron": "o7UHCJK5", "schedRange": ["sp0aCvIq"]}], "deletable": false, "namespace": "HVYIlewL", "redirectUri": "RuHY83bG"}' \
    'j0HTeeWX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminUpdateClientV3' test.out

#- 123 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 23, "resource": "IcRidqct"}]}' \
    'DpygY0ax' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminUpdateClientPermissionV3' test.out

#- 124 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 61, "resource": "D4MMO9Tw"}]}' \
    '2JH0qhWI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminAddClientPermissionsV3' test.out

#- 125 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '45' \
    'HWTgzJFR' \
    'Yw6t1IKZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteClientPermissionV3' test.out

#- 126 RetrieveAllThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 127 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 128 RetrieveAllSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-sso-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 129 RetrieveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-third-party-login-platform-credential-v3' \
    'LO6V4Ode' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "46QmCidg", "AWSCognitoRegion": "dpP7RTC5", "AWSCognitoUserPool": "87lmUmBz", "AppId": "iPZBnpOf", "ClientId": "kllxfq0N", "Environment": "srSjw5Ho", "FederationMetadataURL": "g0blM1d5", "GenericOauthFlow": true, "IsActive": false, "Issuer": "zLINlEC0", "JWKSEndpoint": "OEsE3yzI", "KeyID": "sUP0Njlu", "OrganizationId": "OrGZTzsL", "PlatformName": "W7Fjfs9n", "RedirectUri": "IkcZ38fU", "Secret": "EanjKHbX", "TeamID": "fk1zxdzx", "TokenAuthenticationType": "g0UXcRyH", "TokenClaimsMapping": {"i3u8BzVW": "u1tOmhUt"}}' \
    'CgcpvGrE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'bcZUDExH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "1tayOGXI", "AWSCognitoRegion": "HzMRjMCt", "AWSCognitoUserPool": "OJsEijlr", "AppId": "bpyyEcQx", "ClientId": "VgJIjMZq", "Environment": "cWfMl6dq", "FederationMetadataURL": "rpD4tnc3", "GenericOauthFlow": true, "IsActive": false, "Issuer": "dtPfAJEo", "JWKSEndpoint": "mwenJvQ8", "KeyID": "grtQSv6E", "OrganizationId": "cALcMIPm", "PlatformName": "s5bT51M4", "RedirectUri": "yko8S0En", "Secret": "GLvGvfuS", "TeamID": "yCTyjj4m", "TokenAuthenticationType": "CaiuMGKO", "TokenClaimsMapping": {"F5GJJooS": "XUl3YU35"}}' \
    'QHGpBABn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["OlxDznIC"], "assignedNamespaces": ["QVyqBg34"], "domain": "WTtDkn0r", "roleId": "tn6t0Yx4"}' \
    'z12EaQ1r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "UQYCNTiD"}' \
    'X4jE3M2I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'sTHu8QwN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "yOlXfIWd", "apiKey": "0mcq5T4S", "appId": "Uc7cWfCK", "federationMetadataUrl": "K6Dij1gF", "isActive": false, "redirectUri": "enEMySPf", "secret": "hxBenDiT", "ssoUrl": "iAqFYmFK"}' \
    'jaELmmll' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    '6oexId1O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "KGUN2Uzn", "apiKey": "d7uVa7t1", "appId": "4yvSYSV5", "federationMetadataUrl": "2bHifCIf", "isActive": true, "redirectUri": "suu6Pkam", "secret": "6tFSYFt4", "ssoUrl": "ZxA2PzZF"}' \
    'RkBNlg6h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'n5qusKyZ' \
    'AuV6uUvq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'M0lV6UZM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetAdminUsersByRoleIdV3' test.out

#- 141 AdminGetUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-email-address-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByEmailAddressV3' test.out

#- 142 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["lEbxHNgJ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["RiQExaun"], "isAdmin": false, "roles": ["dAqnHUz4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'AdminInviteUserV3' test.out

#- 144 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUsersV3' test.out

#- 145 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminSearchUserV3' test.out

#- 146 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["4tx4O6ha"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'mPwNoi07' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"country": "1ezDK56J", "dateOfBirth": "FIGe1IMU", "displayName": "CLcN0Dsa", "languageTag": "D5FyBsFe", "userName": "9OYEJVsY"}' \
    'ffmhyx6J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    '25PrM4S3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "cB8m17hE", "comment": "eLLgoaYt", "endDate": "h6zcf8eA", "reason": "45OMvObW", "skipNotif": false}' \
    'jo9LfGee' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": false}' \
    'BGR6D1Zo' \
    'ZEZQkJ8D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "SqFnhdKv", "emailAddress": "jFCFbSFl", "languageTag": "EWoMPdgK"}' \
    '5zn62mhn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "FSpCTlDN", "ContactType": "BOcygvv2", "LanguageTag": "LAgfBGVz", "validateOnly": false}' \
    'nbKYsB0g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'qJ8VhYSi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'kJl2p9rB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": true}' \
    '8N5egapq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "xDy4cLfN", "country": "jzzEZYA8", "dateOfBirth": "jIkMJb7c", "displayName": "Z2bPsaLL", "emailAddress": "pEBVEMk5", "password": "AsKaF2P4", "validateOnly": false}' \
    'XkI3zdiR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'iC5IbPit' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    '71JWlYCo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 16, "Resource": "4nDfPu5V", "SchedAction": 85, "SchedCron": "SYxEVOry", "SchedRange": ["VuZYmgUe"]}]}' \
    'EPB5AGPg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 42, "Resource": "k0Zthaj0", "SchedAction": 60, "SchedCron": "BA4azRz0", "SchedRange": ["d56smobo"]}]}' \
    'r4p1PlgQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 55, "Resource": "9EcNGOeB"}]' \
    'RY6G5ae0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '7' \
    'eDLaZ8JC' \
    'vbeTfW0h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'gzrabLJx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'EwJrEBmQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    '64haNOzl' \
    'Gu68UYyu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminCreateJusticeUser' test.out

#- 167 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "pjdDetno", "platformUserId": "T0rfWtVP"}' \
    'wQfq6V92' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminLinkPlatformAccount' test.out

#- 168 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "gbfPouNd"}' \
    'mP7fckVn' \
    'uDGvYIb1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminPlatformUnlinkV3' test.out

#- 169 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'p5tcR5z8' \
    'ZJLjSHca' \
    'R3X4tZmw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformLinkV3' test.out

#- 170 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["r0QmOnsE"]' \
    'g49eXp0x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserRolesV3' test.out

#- 171 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "QkZ2Jjuw", "roleId": "WWy0tU11"}]' \
    'PCeSrvej' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminSaveUserRoleV3' test.out

#- 172 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'UKwVfF37' \
    'Vr7mkDzF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserRoleV3' test.out

#- 173 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'BI1VwhkV' \
    'SKDlNFOU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserRoleV3' test.out

#- 174 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "JsvTsqk9"}' \
    'hg4hj6nU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserStatusV3' test.out

#- 175 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'debW6Usk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 176 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminGetRolesV3' test.out

#- 177 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "ZAk01f1K", "namespace": "xCtWADU2", "userId": "guN6U9w1"}], "members": [{"displayName": "3W1K9TZQ", "namespace": "4qRLEi5w", "userId": "owE36rfm"}], "permissions": [{"action": 76, "resource": "0CCs35TP", "schedAction": 92, "schedCron": "PLmsY8Wg", "schedRange": ["wSx1DI5G"]}], "roleName": "H9bv9ZTo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateRoleV3' test.out

#- 178 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    '2HpA6pzj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminGetRoleV3' test.out

#- 179 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'HpZO0E9i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteRoleV3' test.out

#- 180 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "Bae3GOgb"}' \
    'Qrqra0Pt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateRoleV3' test.out

#- 181 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'kfvOpY2r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminGetRoleAdminStatusV3' test.out

#- 182 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'amp5lnBn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateAdminRoleStatusV3' test.out

#- 183 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    '6xmBkfMt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminRemoveRoleAdminV3' test.out

#- 184 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'C66hFq0k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminGetRoleManagersV3' test.out

#- 185 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "POkORm2X", "namespace": "jlNEE5ec", "userId": "PzAmi0yS"}]}' \
    'JHfPloP1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminAddRoleManagersV3' test.out

#- 186 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "XkYK4MgI", "namespace": "sDSFMPyM", "userId": "hyw1OLZP"}]}' \
    'VwwxH4BI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminRemoveRoleManagersV3' test.out

#- 187 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'DJuDoShM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRoleMembersV3' test.out

#- 188 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "Mftll8N0", "namespace": "VvChHz9u", "userId": "rmt7QWvE"}]}' \
    '8s6Uz8BR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminAddRoleMembersV3' test.out

#- 189 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "uYWDTtL6", "namespace": "MTTRkCbb", "userId": "9S5Q1IVH"}]}' \
    'GT88prRE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminRemoveRoleMembersV3' test.out

#- 190 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 54, "resource": "gYOWdHJ9", "schedAction": 70, "schedCron": "umohtU13", "schedRange": ["gf7TRigN"]}]}' \
    'Zj5w5y3H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateRolePermissionsV3' test.out

#- 191 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 25, "resource": "K8QVOa62", "schedAction": 9, "schedCron": "QZtbLLcF", "schedRange": ["671WLtv3"]}]}' \
    '8Hecczop' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminAddRolePermissionsV3' test.out

#- 192 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["FmeRwpcJ"]' \
    'BZyi3mLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminDeleteRolePermissionsV3' test.out

#- 193 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '72' \
    'zekiSzey' \
    'olnOQt0j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteRolePermissionV3' test.out

#- 194 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminGetMyUserV3' test.out

#- 195 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'oVHgCytC' \
    '6lRG98Yx' \
    'nHbRdoTK' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 195 'UserAuthenticationV3' test.out

#- 196 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'GetCountryLocationV3' test.out

#- 197 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'Logout' test.out

#- 198 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'KeuSjfZe' \
    '9i1osghF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 199 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    '1hzi1Nl4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'RevokeUserV3' test.out

#- 200 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    '7syJ5ibz' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 200 'AuthorizeV3' test.out

#- 201 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'CLIvWPVR' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 201 'TokenIntrospectionV3' test.out

#- 202 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GetJWKSV3' test.out

#- 203 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'sdEqA61y' \
    'TrMgsycT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'Change2faMethod' test.out

#- 204 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'gmPzc20E' \
    'uO5dMqGD' \
    'lSZPY07r' \
    'True' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'Verify2faCode' test.out

#- 205 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'VSjzHjL6' \
    'ZbXjG6DS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 206 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'mpp3op8h' \
    'taRLxtW4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AuthCodeRequestV3' test.out

#- 207 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'PvFkESTU' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 207 'PlatformTokenGrantV3' test.out

#- 208 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetRevocationListV3' test.out

#- 209 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'Lat5F1Le' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 209 'TokenRevocationV3' test.out

#- 210 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'authorization_code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 210 'TokenGrantV3' test.out

#- 211 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'R7q6PWhZ' \
    'mmKz41i1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'PlatformAuthenticationV3' test.out

#- 212 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'PublicGetInputValidations' test.out

#- 213 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 214 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["Tp78FipJ"]}' \
    'HahViJvL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 215 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'YW0kdmlk' \
    '2luqSOOA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'PublicGetUserByPlatformUserIDV3' test.out

#- 216 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    '2VOZBoNb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'PublicGetAsyncStatus' test.out

#- 217 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'PublicSearchUserV3' test.out

#- 218 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "B98PuSGy", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "qFzPwSMX", "policyId": "T53bBuL3", "policyVersionId": "8beOYDVu"}], "authType": "HZQ9LYt6", "code": "w23Wf8iE", "country": "Qo72sH0a", "dateOfBirth": "RdcDlDyG", "displayName": "csfIuI4D", "emailAddress": "v5lEJpK1", "password": "AyRlzsrR", "reachMinimumAge": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'PublicCreateUserV3' test.out

#- 219 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'FZivQOHG' \
    '6wVicNra' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'CheckUserAvailability' test.out

#- 220 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["tsvvHLmI"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'PublicBulkGetUsers' test.out

#- 221 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "ohfNISLX", "languageTag": "MDWDdm5F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'PublicSendRegistrationCode' test.out

#- 222 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "E4lliQMn", "emailAddress": "utJbpEo4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'PublicVerifyRegistrationCode' test.out

#- 223 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "mUNHFtdm", "languageTag": "l2xNviWa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'PublicForgotPasswordV3' test.out

#- 224 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'cJc3Fm7Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'GetAdminInvitationV3' test.out

#- 225 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "uKgoCBqS", "policyId": "5uIdCbwC", "policyVersionId": "eeq9ouEd"}], "authType": "DtjOgsyp", "country": "Lkm2ZYew", "dateOfBirth": "5H7Zm0gn", "displayName": "Yyj6MXf9", "password": "G1ntyebv", "reachMinimumAge": false}' \
    'eHenAALK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'CreateUserFromInvitationV3' test.out

#- 226 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"country": "t7EfxIH4", "dateOfBirth": "46oUnP2S", "displayName": "74unXwg0", "languageTag": "JKqVWW1r", "userName": "jK1epwkA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'UpdateUserV3' test.out

#- 227 PublicUpdateUserV3
$PYTHON -m $MODULE 'iam-public-update-user-v3' \
    '{"country": "vcsYvbgf", "dateOfBirth": "BVPpTa8Y", "displayName": "uq7TKiNX", "languageTag": "mz7eMrMD", "userName": "5TbaUxTC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'PublicUpdateUserV3' test.out

#- 228 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "Tng0xjtd", "emailAddress": "Brjs3Kiy", "languageTag": "kt2Ck2gO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'PublicSendVerificationCodeV3' test.out

#- 229 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "lSatECZ2", "contactType": "UgwQLqDq", "languageTag": "YSxTPuVl", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'PublicUserVerificationV3' test.out

#- 230 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "qirdp3yx", "country": "nsETl1Sv", "dateOfBirth": "hQudsjIh", "displayName": "XdxiSoWp", "emailAddress": "nnxgX7BC", "password": "PMqzQIxi", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'PublicUpgradeHeadlessAccountV3' test.out

#- 231 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "hpNYsHtd", "password": "B3IkjuaZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicVerifyHeadlessAccountV3' test.out

#- 232 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "qhJilrZk", "newPassword": "SSKgP5rx", "oldPassword": "CR77G9d5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicUpdatePasswordV3' test.out

#- 233 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'CA1GORSb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicCreateJusticeUser' test.out

#- 234 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'L9n0dbWD' \
    'EupmdLQz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicPlatformLinkV3' test.out

#- 235 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "PnNfBAcW"}' \
    'ArbkCfdH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicPlatformUnlinkV3' test.out

#- 236 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'IZb03otq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PublicWebLinkPlatform' test.out

#- 237 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'mBuS9V2p' \
    'CZ23UHmk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicWebLinkPlatformEstablish' test.out

#- 238 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "0lpJ4JLl", "emailAddress": "01qi7L2o", "newPassword": "DUoVRUb3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'ResetPasswordV3' test.out

#- 239 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    '9j22P4Sp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicGetUserByUserIdV3' test.out

#- 240 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    '09cKmjRU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicGetUserBanHistoryV3' test.out

#- 241 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'bZVBVS7O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicGetUserLoginHistoriesV3' test.out

#- 242 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'K2Zrdcsc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicGetUserPlatformAccountsV3' test.out

#- 243 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "kMekROWZ", "platformUserId": "2KUTqkK2"}' \
    'eFaGLoSm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicLinkPlatformAccount' test.out

#- 244 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'EEPbLywJ' \
    'syUie6fZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 245 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicGetRolesV3' test.out

#- 246 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'gLllUPsO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicGetRoleV3' test.out

#- 247 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicGetMyUserV3' test.out

#- 248 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    '8lg46Si7' \
    '006vL2w4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PlatformAuthenticateSAMLV3Handler' test.out

#- 249 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'aajDAOx0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'LoginSSOClient' test.out

#- 250 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'iJjYleak' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'LogoutSSOClient' test.out

#- 251 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["tqv2Wklj"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'AdminBulkCheckValidUserIDV4' test.out

#- 252 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"country": "QuD5mnJO", "dateOfBirth": "NqHGq8mB", "displayName": "7mF2lMFc", "languageTag": "aghFXJIJ", "userName": "flRHFcsI"}' \
    'qCy4xDif' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'AdminUpdateUserV4' test.out

#- 253 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "SSQ5On2c", "emailAddress": "cEcl3xei"}' \
    'O4bwF5JO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'AdminUpdateUserEmailAddressV4' test.out

#- 254 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'jGoGxKM3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'AdminDisableUserMFAV4' test.out

#- 255 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'qMce5tfL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'AdminListUserRolesV4' test.out

#- 256 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["cpjFZMKC"], "roleId": "bp0pEbLC"}' \
    'LFpHxMYF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'AdminUpdateUserRoleV4' test.out

#- 257 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["836075xE"], "roleId": "pzdnYtpj"}' \
    'a5ig2isQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'AdminAddUserRoleV4' test.out

#- 258 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["Zga6Vy76"], "roleId": "izPiQRjY"}' \
    'a8fv5fIt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'AdminRemoveUserRoleV4' test.out

#- 259 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'AdminGetRolesV4' test.out

#- 260 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "hgkigW22"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'AdminCreateRoleV4' test.out

#- 261 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'zXMWXfbc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'AdminGetRoleV4' test.out

#- 262 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'M0GIALIb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'AdminDeleteRoleV4' test.out

#- 263 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "BcLNT6iO"}' \
    'QVYx5rW2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'AdminUpdateRoleV4' test.out

#- 264 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 13, "resource": "MsI1aYBi", "schedAction": 38, "schedCron": "Sn3UDeKj", "schedRange": ["97I4WYXL"]}]}' \
    'qjN7ktOB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'AdminUpdateRolePermissionsV4' test.out

#- 265 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 91, "resource": "raBxWRTV", "schedAction": 41, "schedCron": "YEqGlKDw", "schedRange": ["TKXBrXiQ"]}]}' \
    'cd9IW8ki' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'AdminAddRolePermissionsV4' test.out

#- 266 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["CKeQJWZB"]' \
    'vcq1ETvW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'AdminDeleteRolePermissionsV4' test.out

#- 267 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'BxYZJh7B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'AdminListAssignedUsersV4' test.out

#- 268 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["8gbnSu9M"], "namespace": "2OxD2uda", "userId": "eYpCXYSM"}' \
    'iy87CTqE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'AdminAssignUserToRoleV4' test.out

#- 269 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "QBg36my3", "userId": "sY2clrDc"}' \
    'ain0cOVF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'AdminRevokeUserFromRoleV4' test.out

#- 270 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"country": "1zHwDTI0", "dateOfBirth": "sJ1Q0kph", "displayName": "MTggSP2S", "languageTag": "LcuAP7vU", "userName": "971Czw2n"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'AdminUpdateMyUserV4' test.out

#- 271 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'AdminDisableMyAuthenticatorV4' test.out

#- 272 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'AdminEnableMyAuthenticatorV4' test.out

#- 273 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 274 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'AdminGetMyBackupCodesV4' test.out

#- 275 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'AdminGenerateMyBackupCodesV4' test.out

#- 276 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'AdminDisableMyBackupCodesV4' test.out

#- 277 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'AdminDownloadMyBackupCodesV4' test.out

#- 278 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'AdminEnableMyBackupCodesV4' test.out

#- 279 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'AdminGetMyEnabledFactorsV4' test.out

#- 280 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'bg8C7Mvy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'AdminMakeFactorMyDefaultV4' test.out

#- 281 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["whu6MjOj"], "emailAddresses": ["uGzo1Fz4"], "isAdmin": true, "roleId": "U0aSn98N"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'AdminInviteUserV4' test.out

#- 282 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "OUA0z92R", "policyId": "aDe8ngT8", "policyVersionId": "LRQkMnG1"}], "authType": "LZyF2mdY", "country": "Y6ZMfuTY", "dateOfBirth": "TKsue48q", "displayName": "BEBNAV5B", "emailAddress": "Te6ec1zA", "password": "92URCLSG", "passwordMD5Sum": "PmRBZWun", "username": "HW7MYvr6", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicCreateTestUserV4' test.out

#- 283 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "epc92HA9", "policyId": "4eACdeyf", "policyVersionId": "UpgiPpf8"}], "authType": "nxKJ3dnm", "code": "tPwa64Y4", "country": "gPEKMhhu", "dateOfBirth": "9a6f3xJN", "displayName": "tUlKLlII", "emailAddress": "AeHbm5M6", "password": "LsY1VMuI", "passwordMD5Sum": "EcRls68M", "reachMinimumAge": true, "username": "epyyMz6z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV4' test.out

#- 284 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "R1pvTYYt", "policyId": "DOiEi4Ru", "policyVersionId": "EcHCSGhp"}], "authType": "OZQFlwOi", "country": "uKGDFgK4", "dateOfBirth": "9YuKnXks", "displayName": "0m8ANrcR", "password": "al7ta3fo", "reachMinimumAge": false, "username": "A3h4MMW3"}' \
    'AJ5zlsFB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'CreateUserFromInvitationV4' test.out

#- 285 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"country": "wjvLYvmg", "dateOfBirth": "6avudQFF", "displayName": "1CPNY9u2", "languageTag": "dVYdglOO", "userName": "oCeK0kPK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicUpdateUserV4' test.out

#- 286 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "mBqVux3l", "emailAddress": "XcD8aert"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicUpdateUserEmailAddressV4' test.out

#- 287 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "AVCqs8XT", "country": "8xy3nJ06", "dateOfBirth": "KkseA0AR", "displayName": "j9ricfay", "emailAddress": "vnhi8MDd", "password": "Y4WLHoaU", "reachMinimumAge": false, "username": "YnQp5egd", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 288 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "VE8ImivN", "password": "tQxqWRKH", "username": "ohODoWOr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicUpgradeHeadlessAccountV4' test.out

#- 289 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicDisableMyAuthenticatorV4' test.out

#- 290 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicEnableMyAuthenticatorV4' test.out

#- 291 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 292 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicGetMyBackupCodesV4' test.out

#- 293 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicGenerateMyBackupCodesV4' test.out

#- 294 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicDisableMyBackupCodesV4' test.out

#- 295 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicDownloadMyBackupCodesV4' test.out

#- 296 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicEnableMyBackupCodesV4' test.out

#- 297 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicRemoveTrustedDeviceV4' test.out

#- 298 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicGetMyEnabledFactorsV4' test.out

#- 299 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    '98kjBUas' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE