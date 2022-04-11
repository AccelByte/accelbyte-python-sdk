#!/bin/bash

#Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
#This is licensed software from AccelByte Inc, for limitations
#and restrictions contact your company contract manager.

#Meta:
#- random seed: 256
#- template file: python-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=298

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export AB_BASE_URL="http://0.0.0.0:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"
export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

get_current_year() { echo $(date +'%Y'); }
get_adult_birthday() { echo "$(( $(get_current_year) - 22))-01-01"; }

get_random_int() { echo $(( $1 + ( RANDOM % (($2 - $1)) ) )); }
get_random_bool() { ( (( (RANDOM % 2) == 1)) && echo "true" ) || ( echo "false" ) }
get_random_element() { declare -a a=("$@"); r=$((RANDOM % ${#a[@]})); echo ${a[$r]}; }

create_file() {
    touch $1
}

delete_file() {
    [ ! -e $1 ] || rm $1
}

update_status() {
    return_code=$1
    operation_name=$2

    FINISHED_COUNT=$(( $FINISHED_COUNT + 1 ))

    if [ $return_code == 0 ]
    then
        SUCCESS_COUNT=$(( $SUCCESS_COUNT + 1 ))
        echo "ok $FINISHED_COUNT $operation_name"
    else
        FAILED_COUNT=$(( $FAILED_COUNT + 1 ))
        echo "not ok $FINISHED_COUNT - $operation_name"
        echo '  ---'
        echo '  error: |-'
        while read line; do
          echo "    $line" | tr '\n' ' '
        echo $line
        done < $TEMP_FILE
    fi
}

create_file 'tmp.dat'

echo 'TAP version 13'
echo "1..$OPERATIONS_COUNT"

#- 1 GetBansType
$PYTHON -m $MODULE 'iam-get-bans-type' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetBansType'
delete_file $TEMP_FILE

#- 2 GetListBanReason
$PYTHON -m $MODULE 'iam-get-list-ban-reason' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetListBanReason'
delete_file $TEMP_FILE

#- 3 GetClients
update_status 0 'GetClients (skipped deprecated)'

#- 4 CreateClient
update_status 0 'CreateClient (skipped deprecated)'

#- 5 GetClient
$PYTHON -m $MODULE 'iam-get-client' \
    'FtBxyZcD' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetClient'
delete_file $TEMP_FILE

#- 6 UpdateClient
$PYTHON -m $MODULE 'iam-update-client' \
    '{"ClientName": "XBpGlsQu", "RedirectUri": "Ju8vMf0I"}' \
    'sJkTrd8I' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateClient'
delete_file $TEMP_FILE

#- 7 DeleteClient
update_status 0 'DeleteClient (skipped deprecated)'

#- 8 UpdateClientPermission
$PYTHON -m $MODULE 'iam-update-client-permission' \
    '{"Permissions": [{"Action": 59, "Resource": "cV2zXnTK"}]}' \
    'jXY1bPqa' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateClientPermission'
delete_file $TEMP_FILE

#- 9 AddClientPermission
$PYTHON -m $MODULE 'iam-add-client-permission' \
    '24' \
    'iBxx9Cs1' \
    '8EY84ekI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AddClientPermission'
delete_file $TEMP_FILE

#- 10 DeleteClientPermission
$PYTHON -m $MODULE 'iam-delete-client-permission' \
    '39' \
    'qRzHU1oh' \
    '570KQBVa' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteClientPermission'
delete_file $TEMP_FILE

#- 11 UpdateClientSecret
$PYTHON -m $MODULE 'iam-update-client-secret' \
    '{"NewSecret": "ewc72krS"}' \
    'ha68n3Yn' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateClientSecret'
delete_file $TEMP_FILE

#- 12 GetClientsbyNamespace
$PYTHON -m $MODULE 'iam-get-clientsby-namespace' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetClientsbyNamespace'
delete_file $TEMP_FILE

#- 13 CreateClientByNamespace
$PYTHON -m $MODULE 'iam-create-client-by-namespace' \
    '{"ClientId": "ozp1C2Km", "ClientName": "IQTuBdNE", "ClientPermissions": [{"Action": 93, "Resource": "sxFb8CJ1", "SchedAction": 76, "SchedCron": "7DJZaMSx", "SchedRange": ["ECbZbygy"]}], "Namespace": "oarORoeN", "RedirectUri": "HSb8Rh3k", "Secret": "gs9qqJbn"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateClientByNamespace'
delete_file $TEMP_FILE

#- 14 DeleteClientByNamespace
$PYTHON -m $MODULE 'iam-delete-client-by-namespace' \
    'QsoBgiVp' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteClientByNamespace'
delete_file $TEMP_FILE

#- 15 CreateUser
$PYTHON -m $MODULE 'iam-create-user' \
    '{"AuthType": "P8Cm3yvA", "Country": "SUoxdxxF", "DisplayName": "qmAGTJ8I", "LoginId": "EdagEtp4", "Password": "w29KOu9c", "PasswordMD5Sum": "19R6XDqW"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateUser'
delete_file $TEMP_FILE

#- 16 GetAdminUsersByRoleID
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAdminUsersByRoleID'
delete_file $TEMP_FILE

#- 17 GetUserByLoginID
$PYTHON -m $MODULE 'iam-get-user-by-login-id' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserByLoginID'
delete_file $TEMP_FILE

#- 18 GetUserByPlatformUserID
$PYTHON -m $MODULE 'iam-get-user-by-platform-user-id' \
    'HkkP8npL' \
    'EKMfjiX7' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserByPlatformUserID'
delete_file $TEMP_FILE

#- 19 ForgotPassword
$PYTHON -m $MODULE 'iam-forgot-password' \
    '{"Context": "jpkVZk3I", "LanguageTag": "aQYEmqGo", "LoginID": "dOEGt9gP"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ForgotPassword'
delete_file $TEMP_FILE

#- 20 GetUsersByLoginIds
$PYTHON -m $MODULE 'iam-get-users-by-login-ids' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUsersByLoginIds'
delete_file $TEMP_FILE

#- 21 ResetPassword
$PYTHON -m $MODULE 'iam-reset-password' \
    '{"Code": "Oj0c6i0J", "LoginID": "kvIas73u", "NewPassword": "cYnFAJ3D"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ResetPassword'
delete_file $TEMP_FILE

#- 22 SearchUser
update_status 0 'SearchUser (skipped deprecated)'

#- 23 GetUserByUserID
$PYTHON -m $MODULE 'iam-get-user-by-user-id' \
    'K5T4Eogg' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserByUserID'
delete_file $TEMP_FILE

#- 24 UpdateUser
$PYTHON -m $MODULE 'iam-update-user' \
    '{"Country": "0Y39UoYl", "DateOfBirth": "pv5bVAgt", "DisplayName": "sDhUTDUs", "LanguageTag": "cbQDjbTQ"}' \
    'uPMz2PTR' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUser'
delete_file $TEMP_FILE

#- 25 DeleteUser
$PYTHON -m $MODULE 'iam-delete-user' \
    'lkyU89ZP' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUser'
delete_file $TEMP_FILE

#- 26 BanUser
$PYTHON -m $MODULE 'iam-ban-user' \
    '{"ban": "Ow6zPFJ4", "comment": "2cwmzBBS", "endDate": "MNcoAAOj", "reason": "KNjfcYHm", "skipNotif": false}' \
    'YgBU1sqj' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'BanUser'
delete_file $TEMP_FILE

#- 27 GetUserBanHistory
$PYTHON -m $MODULE 'iam-get-user-ban-history' \
    'yK0XH45P' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserBanHistory'
delete_file $TEMP_FILE

#- 28 DisableUserBan
$PYTHON -m $MODULE 'iam-disable-user-ban' \
    'aRSOFQBt' \
    'u23REZ8h' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DisableUserBan'
delete_file $TEMP_FILE

#- 29 EnableUserBan
$PYTHON -m $MODULE 'iam-enable-user-ban' \
    'RVX7LGOv' \
    'DdYiQS9i' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'EnableUserBan'
delete_file $TEMP_FILE

#- 30 ListCrossNamespaceAccountLink
update_status 0 'ListCrossNamespaceAccountLink (skipped deprecated)'

#- 31 DisableUser
update_status 0 'DisableUser (skipped deprecated)'

#- 32 EnableUser
update_status 0 'EnableUser (skipped deprecated)'

#- 33 GetUserInformation
$PYTHON -m $MODULE 'iam-get-user-information' \
    '7mV1C91p' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserInformation'
delete_file $TEMP_FILE

#- 34 DeleteUserInformation
$PYTHON -m $MODULE 'iam-delete-user-information' \
    'jG9gpxL6' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserInformation'
delete_file $TEMP_FILE

#- 35 GetUserLoginHistories
$PYTHON -m $MODULE 'iam-get-user-login-histories' \
    'ycTQdvln' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserLoginHistories'
delete_file $TEMP_FILE

#- 36 UpdatePassword
update_status 0 'UpdatePassword (skipped deprecated)'

#- 37 SaveUserPermission
$PYTHON -m $MODULE 'iam-save-user-permission' \
    '{"Permissions": [{"Action": 74, "Resource": "AuSQWEXL", "SchedAction": 74, "SchedCron": "FE1YHo9m", "SchedRange": ["126ZWc8h"]}]}' \
    'HtWvbNYq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SaveUserPermission'
delete_file $TEMP_FILE

#- 38 AddUserPermission
$PYTHON -m $MODULE 'iam-add-user-permission' \
    '{"SchedAction": 12, "SchedCron": "UqslArFP", "SchedRange": ["iHUIvaCv"]}' \
    '20' \
    'U9dBBpds' \
    'JLhsVyEx' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AddUserPermission'
delete_file $TEMP_FILE

#- 39 DeleteUserPermission
$PYTHON -m $MODULE 'iam-delete-user-permission' \
    '35' \
    'kxoot0B7' \
    'WOfercZd' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserPermission'
delete_file $TEMP_FILE

#- 40 GetUserPlatformAccounts
$PYTHON -m $MODULE 'iam-get-user-platform-accounts' \
    'pMci37Ds' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserPlatformAccounts'
delete_file $TEMP_FILE

#- 41 GetUserMapping
$PYTHON -m $MODULE 'iam-get-user-mapping' \
    '7YSfExaI' \
    '3uzLteMb' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserMapping'
delete_file $TEMP_FILE

#- 42 GetUserJusticePlatformAccount
update_status 0 'GetUserJusticePlatformAccount (skipped deprecated)'

#- 43 PlatformLink
$PYTHON -m $MODULE 'iam-platform-link' \
    'FAlt4hr7' \
    'HmOYiBA5' \
    'ltAOXmlG' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PlatformLink'
delete_file $TEMP_FILE

#- 44 PlatformUnlink
$PYTHON -m $MODULE 'iam-platform-unlink' \
    '6eh1dTdo' \
    'TFpBIcuC' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PlatformUnlink'
delete_file $TEMP_FILE

#- 45 GetPublisherUser
$PYTHON -m $MODULE 'iam-get-publisher-user' \
    '1dQY93OJ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPublisherUser'
delete_file $TEMP_FILE

#- 46 SaveUserRoles
$PYTHON -m $MODULE 'iam-save-user-roles' \
    '["nJ6Te9vD"]' \
    '8ldz7Hu8' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SaveUserRoles'
delete_file $TEMP_FILE

#- 47 AddUserRole
$PYTHON -m $MODULE 'iam-add-user-role' \
    'AD79kdWu' \
    'nvizU0q1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AddUserRole'
delete_file $TEMP_FILE

#- 48 DeleteUserRole
$PYTHON -m $MODULE 'iam-delete-user-role' \
    'pHyhhERo' \
    'GgdrysMi' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserRole'
delete_file $TEMP_FILE

#- 49 UpgradeHeadlessAccount
$PYTHON -m $MODULE 'iam-upgrade-headless-account' \
    '{"LoginID": "zBGSRdP2", "Password": "l7DNSZ8A"}' \
    'q0XiPLQX' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpgradeHeadlessAccount'
delete_file $TEMP_FILE

#- 50 UpgradeHeadlessAccountWithVerificationCode
$PYTHON -m $MODULE 'iam-upgrade-headless-account-with-verification-code' \
    '{"Code": "Se07ZddO", "Password": "GTMlJjBw", "loginId": "j9HJHQKs"}' \
    'eEdSXRDS' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpgradeHeadlessAccountWithVerificationCode'
delete_file $TEMP_FILE

#- 51 UserVerification
$PYTHON -m $MODULE 'iam-user-verification' \
    '{"Code": "vguauw1x", "ContactType": "T7eMwSl9", "LanguageTag": "MLH0NnTJ", "validateOnly": true}' \
    'lNzBvwJa' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UserVerification'
delete_file $TEMP_FILE

#- 52 SendVerificationCode
$PYTHON -m $MODULE 'iam-send-verification-code' \
    '{"Context": "Qa547Jll", "LanguageTag": "vA8RWSpa", "LoginID": "bUt7xk6Q"}' \
    'xyWhfqoW' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SendVerificationCode'
delete_file $TEMP_FILE

#- 53 Authorization
$PYTHON -m $MODULE 'iam-authorization' \
    'fJw2o8oW' \
    'UqvPCZ2H' \
    'token' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'Authorization'
delete_file $TEMP_FILE

#- 54 GetJWKS
$PYTHON -m $MODULE 'iam-get-jwks' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetJWKS'
delete_file $TEMP_FILE

#- 55 PlatformTokenRequestHandler
update_status 0 'PlatformTokenRequestHandler (skipped deprecated)'

#- 56 RevokeUser
$PYTHON -m $MODULE 'iam-revoke-user' \
    'T7NXmWDl' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RevokeUser'
delete_file $TEMP_FILE

#- 57 GetRevocationList
$PYTHON -m $MODULE 'iam-get-revocation-list' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetRevocationList'
delete_file $TEMP_FILE

#- 58 RevokeToken
update_status 0 'RevokeToken (skipped deprecated)'

#- 59 RevokeAUser
update_status 0 'RevokeAUser (skipped deprecated)'

#- 60 TokenGrant
$PYTHON -m $MODULE 'iam-token-grant' \
    'password' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TokenGrant'
delete_file $TEMP_FILE

#- 61 VerifyToken
$PYTHON -m $MODULE 'iam-verify-token' \
    'uNIdQJR5' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'VerifyToken'
delete_file $TEMP_FILE

#- 62 GetRoles
$PYTHON -m $MODULE 'iam-get-roles' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetRoles'
delete_file $TEMP_FILE

#- 63 CreateRole
$PYTHON -m $MODULE 'iam-create-role' \
    '{"AdminRole": false, "Managers": [{"DisplayName": "sNOlvkfw", "Namespace": "aSbnsuLC", "UserId": "gToxuVTe"}], "Members": [{"DisplayName": "kJgvg6h5", "Namespace": "HIpH0Dvi", "UserId": "plEk4vj3"}], "Permissions": [{"Action": 75, "Resource": "Dp4yqDt8", "SchedAction": 85, "SchedCron": "UZDpxlHa", "SchedRange": ["sinGcjrk"]}], "RoleName": "mRMttgjD"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateRole'
delete_file $TEMP_FILE

#- 64 GetRole
$PYTHON -m $MODULE 'iam-get-role' \
    'SaIVBmft' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetRole'
delete_file $TEMP_FILE

#- 65 UpdateRole
$PYTHON -m $MODULE 'iam-update-role' \
    '{"RoleName": "3Udg7p9P"}' \
    'GmY2H5kX' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateRole'
delete_file $TEMP_FILE

#- 66 DeleteRole
$PYTHON -m $MODULE 'iam-delete-role' \
    '4MsisSX2' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteRole'
delete_file $TEMP_FILE

#- 67 GetRoleAdminStatus
$PYTHON -m $MODULE 'iam-get-role-admin-status' \
    '8nARxWRp' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetRoleAdminStatus'
delete_file $TEMP_FILE

#- 68 SetRoleAsAdmin
$PYTHON -m $MODULE 'iam-set-role-as-admin' \
    'v5ou5xtv' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SetRoleAsAdmin'
delete_file $TEMP_FILE

#- 69 RemoveRoleAdmin
$PYTHON -m $MODULE 'iam-remove-role-admin' \
    'd28OUfCt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RemoveRoleAdmin'
delete_file $TEMP_FILE

#- 70 GetRoleManagers
$PYTHON -m $MODULE 'iam-get-role-managers' \
    '8UJC5flN' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetRoleManagers'
delete_file $TEMP_FILE

#- 71 AddRoleManagers
$PYTHON -m $MODULE 'iam-add-role-managers' \
    '{"Managers": [{"DisplayName": "yj6HsTtX", "Namespace": "8P3llnaa", "UserId": "S9lqyygP"}]}' \
    'cfkJIxfQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AddRoleManagers'
delete_file $TEMP_FILE

#- 72 RemoveRoleManagers
$PYTHON -m $MODULE 'iam-remove-role-managers' \
    '{"Managers": [{"DisplayName": "Zza8kNVb", "Namespace": "DxVMq7HJ", "UserId": "k0F89xAc"}]}' \
    '3YVfaENt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RemoveRoleManagers'
delete_file $TEMP_FILE

#- 73 GetRoleMembers
$PYTHON -m $MODULE 'iam-get-role-members' \
    'rl0pTKZT' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetRoleMembers'
delete_file $TEMP_FILE

#- 74 AddRoleMembers
$PYTHON -m $MODULE 'iam-add-role-members' \
    '{"Members": [{"DisplayName": "XqzHuBMY", "Namespace": "QSA2jz1Z", "UserId": "OpdOjSyM"}]}' \
    'ddB41JuM' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AddRoleMembers'
delete_file $TEMP_FILE

#- 75 RemoveRoleMembers
$PYTHON -m $MODULE 'iam-remove-role-members' \
    '{"Members": [{"DisplayName": "f7RUyBHR", "Namespace": "j8IiRimR", "UserId": "llHT6Dc4"}]}' \
    '0vFFA6gp' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RemoveRoleMembers'
delete_file $TEMP_FILE

#- 76 UpdateRolePermissions
$PYTHON -m $MODULE 'iam-update-role-permissions' \
    '{"Permissions": [{"Action": 93, "Resource": "7EW3x1dC", "SchedAction": 30, "SchedCron": "m55gOeqQ", "SchedRange": ["IqcJVKmB"]}]}' \
    'M1J1IbuT' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateRolePermissions'
delete_file $TEMP_FILE

#- 77 AddRolePermission
$PYTHON -m $MODULE 'iam-add-role-permission' \
    '{"SchedAction": 35, "SchedCron": "rkbmuT1w", "SchedRange": ["hOqmEnDX"]}' \
    '69' \
    'WrBPlSay' \
    '46mv71BA' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AddRolePermission'
delete_file $TEMP_FILE

#- 78 DeleteRolePermission
$PYTHON -m $MODULE 'iam-delete-role-permission' \
    '53' \
    'OjtFJ2vm' \
    'Tj7tT7TZ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteRolePermission'
delete_file $TEMP_FILE

#- 79 AdminGetAgeRestrictionStatusV2
$PYTHON -m $MODULE 'iam-admin-get-age-restriction-status-v2' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetAgeRestrictionStatusV2'
delete_file $TEMP_FILE

#- 80 AdminUpdateAgeRestrictionConfigV2
$PYTHON -m $MODULE 'iam-admin-update-age-restriction-config-v2' \
    '{"AgeRestriction": 67, "Enable": true}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateAgeRestrictionConfigV2'
delete_file $TEMP_FILE

#- 81 GetListCountryAgeRestriction
$PYTHON -m $MODULE 'iam-get-list-country-age-restriction' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetListCountryAgeRestriction'
delete_file $TEMP_FILE

#- 82 UpdateCountryAgeRestriction
$PYTHON -m $MODULE 'iam-update-country-age-restriction' \
    '{"AgeRestriction": 6}' \
    'CkIsZoAr' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCountryAgeRestriction'
delete_file $TEMP_FILE

#- 83 AdminSearchUsersV2
$PYTHON -m $MODULE 'iam-admin-search-users-v2' \
    'WwPHcyFA' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminSearchUsersV2'
delete_file $TEMP_FILE

#- 84 AdminGetUserByUserIdV2
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v2' \
    'dAtYciLI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserByUserIdV2'
delete_file $TEMP_FILE

#- 85 AdminUpdateUserV2
$PYTHON -m $MODULE 'iam-admin-update-user-v2' \
    '{"Country": "gRwFRr0g", "DateOfBirth": "wB9tz3vp", "DisplayName": "99XVlV8r", "LanguageTag": "K3tE6n0s"}' \
    'mip1tw3L' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserV2'
delete_file $TEMP_FILE

#- 86 AdminBanUserV2
$PYTHON -m $MODULE 'iam-admin-ban-user-v2' \
    '{"ban": "7cUd9pqt", "comment": "v6JfPZwc", "endDate": "CVOXcVa8", "reason": "0TmCwtD2", "skipNotif": false}' \
    'AH01o6Nd' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminBanUserV2'
delete_file $TEMP_FILE

#- 87 AdminGetUserBanV2
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v2' \
    'cBIgzrDy' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserBanV2'
delete_file $TEMP_FILE

#- 88 AdminDisableUserV2
$PYTHON -m $MODULE 'iam-admin-disable-user-v2' \
    '{"Reason": "WpFBYGmm"}' \
    'BawMyoKy' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDisableUserV2'
delete_file $TEMP_FILE

#- 89 AdminEnableUserV2
$PYTHON -m $MODULE 'iam-admin-enable-user-v2' \
    'NpdAasm8' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminEnableUserV2'
delete_file $TEMP_FILE

#- 90 AdminResetPasswordV2
$PYTHON -m $MODULE 'iam-admin-reset-password-v2' \
    '{"LanguageTag": "xwUfzOlQ", "NewPassword": "iZY4NbOQ", "OldPassword": "XJ7uOTzN"}' \
    'Mvuq2tNl' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminResetPasswordV2'
delete_file $TEMP_FILE

#- 91 AdminDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-admin-delete-platform-link-v2' \
    '4CX4IjiK' \
    '4DEUJRVK' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeletePlatformLinkV2'
delete_file $TEMP_FILE

#- 92 AdminPutUserRolesV2
$PYTHON -m $MODULE 'iam-admin-put-user-roles-v2' \
    '["3l9Eb0R1"]' \
    'XRb0RH8v' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPutUserRolesV2'
delete_file $TEMP_FILE

#- 93 AdminCreateUserRolesV2
$PYTHON -m $MODULE 'iam-admin-create-user-roles-v2' \
    '["S1smeOln"]' \
    'grdTXCza' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateUserRolesV2'
delete_file $TEMP_FILE

#- 94 PublicGetCountryAgeRestriction
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction' \
    'PBtkZMio' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetCountryAgeRestriction'
delete_file $TEMP_FILE

#- 95 PublicCreateUserV2
$PYTHON -m $MODULE 'iam-public-create-user-v2' \
    '{"AuthType": "4wcyhloV", "Country": "S3rYp8Qt", "DisplayName": "cEmCEVc7", "LoginId": "5UfeypWj", "Password": "DNhzCL5s", "PasswordMD5Sum": "WS2qwO76"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserV2'
delete_file $TEMP_FILE

#- 96 PublicForgotPasswordV2
$PYTHON -m $MODULE 'iam-public-forgot-password-v2' \
    '{"Context": "3iEklkzL", "LanguageTag": "m88LpLuY", "LoginID": "RO3C55yH"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicForgotPasswordV2'
delete_file $TEMP_FILE

#- 97 PublicResetPasswordV2
$PYTHON -m $MODULE 'iam-public-reset-password-v2' \
    '{"Code": "pwK2Jaqe", "LoginID": "nDGn7a2N", "NewPassword": "UplWiLjq"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicResetPasswordV2'
delete_file $TEMP_FILE

#- 98 PublicGetUserByUserIDV2
$PYTHON -m $MODULE 'iam-public-get-user-by-user-idv2' \
    '06n6a0rW' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserByUserIDV2'
delete_file $TEMP_FILE

#- 99 PublicUpdateUserV2
$PYTHON -m $MODULE 'iam-public-update-user-v2' \
    '{"Country": "8EfkpaXt", "DateOfBirth": "wYZJaQ4W", "DisplayName": "bwNmsFYe", "LanguageTag": "tjEurH8e"}' \
    'loJzNKtR' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateUserV2'
delete_file $TEMP_FILE

#- 100 PublicGetUserBan
$PYTHON -m $MODULE 'iam-public-get-user-ban' \
    'UaTz1ETd' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserBan'
delete_file $TEMP_FILE

#- 101 PublicUpdatePasswordV2
$PYTHON -m $MODULE 'iam-public-update-password-v2' \
    '{"LanguageTag": "smwzjkkn", "NewPassword": "9oiQl05g", "OldPassword": "7cO3ZMb6"}' \
    'Ojlo6DMN' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdatePasswordV2'
delete_file $TEMP_FILE

#- 102 GetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-get-list-justice-platform-accounts' \
    'pP2qMrTQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetListJusticePlatformAccounts'
delete_file $TEMP_FILE

#- 103 PublicPlatformLinkV2
$PYTHON -m $MODULE 'iam-public-platform-link-v2' \
    '1UpjfU6w' \
    'Jhy1jOVk' \
    'kUlS7952' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicPlatformLinkV2'
delete_file $TEMP_FILE

#- 104 PublicDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-public-delete-platform-link-v2' \
    '7EZ25Ia8' \
    'uCeZFlLt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDeletePlatformLinkV2'
delete_file $TEMP_FILE

#- 105 AdminGetBansTypeV3
$PYTHON -m $MODULE 'iam-admin-get-bans-type-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetBansTypeV3'
delete_file $TEMP_FILE

#- 106 AdminGetListBanReasonV3
$PYTHON -m $MODULE 'iam-admin-get-list-ban-reason-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetListBanReasonV3'
delete_file $TEMP_FILE

#- 107 AdminGetInputValidations
$PYTHON -m $MODULE 'iam-admin-get-input-validations' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetInputValidations'
delete_file $TEMP_FILE

#- 108 AdminUpdateInputValidations
$PYTHON -m $MODULE 'iam-admin-update-input-validations' \
    '[{"field": "EVpDAEbA", "validation": {"allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "description": [{"language": "0pDE5xRw", "message": ["h5b45ebp"]}], "isCustomRegex": false, "letterCase": "M7ScSs3U", "maxLength": 80, "maxRepeatingAlphaNum": 30, "maxRepeatingSpecialCharacter": 53, "minCharType": 44, "minLength": 68, "regex": "p9rRtn1P", "specialCharacterLocation": "cCxdbume", "specialCharacters": ["YgOdEBWR"]}}]' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateInputValidations'
delete_file $TEMP_FILE

#- 109 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'QiW3KFfU' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminResetInputValidations'
delete_file $TEMP_FILE

#- 110 ListAdminsV3
$PYTHON -m $MODULE 'iam-list-admins-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListAdminsV3'
delete_file $TEMP_FILE

#- 111 AdminGetAgeRestrictionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-age-restriction-status-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetAgeRestrictionStatusV3'
delete_file $TEMP_FILE

#- 112 AdminUpdateAgeRestrictionConfigV3
$PYTHON -m $MODULE 'iam-admin-update-age-restriction-config-v3' \
    '{"ageRestriction": 16, "enable": false}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateAgeRestrictionConfigV3'
delete_file $TEMP_FILE

#- 113 AdminGetListCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-admin-get-list-country-age-restriction-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetListCountryAgeRestrictionV3'
delete_file $TEMP_FILE

#- 114 AdminUpdateCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-admin-update-country-age-restriction-v3' \
    '{"ageRestriction": 67}' \
    '4081gRB1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateCountryAgeRestrictionV3'
delete_file $TEMP_FILE

#- 115 AdminGetBannedUsersV3
$PYTHON -m $MODULE 'iam-admin-get-banned-users-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetBannedUsersV3'
delete_file $TEMP_FILE

#- 116 AdminGetBansTypeWithNamespaceV3
$PYTHON -m $MODULE 'iam-admin-get-bans-type-with-namespace-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetBansTypeWithNamespaceV3'
delete_file $TEMP_FILE

#- 117 AdminGetClientsByNamespaceV3
$PYTHON -m $MODULE 'iam-admin-get-clients-by-namespace-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetClientsByNamespaceV3'
delete_file $TEMP_FILE

#- 118 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["GyLfLg4R"], "baseUri": "YuEbgUDE", "clientId": "cJyIvsPw", "clientName": "Or0BmV5i", "clientPermissions": [{"action": 63, "resource": "vfwFjTSm", "schedAction": 69, "schedCron": "EqoLyLeU", "schedRange": ["GmomGX9s"]}], "deletable": true, "namespace": "8pqLfc5S", "oauthClientType": "wGnReUUL", "redirectUri": "DX4QUIbb", "secret": "5nh68Zny"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateClientV3'
delete_file $TEMP_FILE

#- 119 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'UtRvW9hN' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetClientsbyNamespacebyIDV3'
delete_file $TEMP_FILE

#- 120 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'BSFTtFrO' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteClientV3'
delete_file $TEMP_FILE

#- 121 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["mjkFrFVA"], "baseUri": "8t0xF34X", "clientName": "pt6ZlTTi", "clientPermissions": [{"action": 4, "resource": "0kr2a0nI", "schedAction": 28, "schedCron": "o7UHCJK5", "schedRange": ["sp0aCvIq"]}], "deletable": false, "namespace": "HVYIlewL", "redirectUri": "RuHY83bG"}' \
    'j0HTeeWX' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateClientV3'
delete_file $TEMP_FILE

#- 122 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 23, "resource": "IcRidqct"}]}' \
    'DpygY0ax' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateClientPermissionV3'
delete_file $TEMP_FILE

#- 123 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 61, "resource": "D4MMO9Tw"}]}' \
    '2JH0qhWI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddClientPermissionsV3'
delete_file $TEMP_FILE

#- 124 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '45' \
    'HWTgzJFR' \
    'Yw6t1IKZ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteClientPermissionV3'
delete_file $TEMP_FILE

#- 125 RetrieveAllThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAllThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 126 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 127 RetrieveAllSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-sso-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAllSSOLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 128 RetrieveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-third-party-login-platform-credential-v3' \
    'LO6V4Ode' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 129 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "46QmCidg", "AWSCognitoRegion": "dpP7RTC5", "AWSCognitoUserPool": "87lmUmBz", "AppId": "iPZBnpOf", "ClientId": "kllxfq0N", "Environment": "srSjw5Ho", "FederationMetadataURL": "g0blM1d5", "GenericOauthFlow": true, "IsActive": false, "Issuer": "zLINlEC0", "JWKSEndpoint": "OEsE3yzI", "KeyID": "sUP0Njlu", "OrganizationId": "OrGZTzsL", "PlatformName": "W7Fjfs9n", "RedirectUri": "IkcZ38fU", "Secret": "EanjKHbX", "TeamID": "fk1zxdzx", "TokenAuthenticationType": "g0UXcRyH", "TokenClaimsMapping": {"i3u8BzVW": "u1tOmhUt"}}' \
    'CgcpvGrE' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AddThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 130 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'bcZUDExH' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 131 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "1tayOGXI", "AWSCognitoRegion": "HzMRjMCt", "AWSCognitoUserPool": "OJsEijlr", "AppId": "bpyyEcQx", "ClientId": "VgJIjMZq", "Environment": "cWfMl6dq", "FederationMetadataURL": "rpD4tnc3", "GenericOauthFlow": true, "IsActive": false, "Issuer": "dtPfAJEo", "JWKSEndpoint": "mwenJvQ8", "KeyID": "grtQSv6E", "OrganizationId": "cALcMIPm", "PlatformName": "s5bT51M4", "RedirectUri": "yko8S0En", "Secret": "GLvGvfuS", "TeamID": "yCTyjj4m", "TokenAuthenticationType": "CaiuMGKO", "TokenClaimsMapping": {"F5GJJooS": "XUl3YU35"}}' \
    'QHGpBABn' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 132 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["OlxDznIC"], "assignedNamespaces": ["QVyqBg34"], "domain": "WTtDkn0r", "roleId": "tn6t0Yx4"}' \
    'z12EaQ1r' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateThirdPartyLoginPlatformDomainV3'
delete_file $TEMP_FILE

#- 133 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "UQYCNTiD"}' \
    'X4jE3M2I' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteThirdPartyLoginPlatformDomainV3'
delete_file $TEMP_FILE

#- 134 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'sTHu8QwN' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveSSOLoginPlatformCredential'
delete_file $TEMP_FILE

#- 135 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "yOlXfIWd", "apiKey": "0mcq5T4S", "appId": "Uc7cWfCK", "federationMetadataUrl": "K6Dij1gF", "isActive": false, "redirectUri": "enEMySPf", "secret": "hxBenDiT", "ssoUrl": "iAqFYmFK"}' \
    'jaELmmll' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AddSSOLoginPlatformCredential'
delete_file $TEMP_FILE

#- 136 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    '6oexId1O' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteSSOLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 137 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "KGUN2Uzn", "apiKey": "d7uVa7t1", "appId": "4yvSYSV5", "federationMetadataUrl": "2bHifCIf", "isActive": true, "redirectUri": "suu6Pkam", "secret": "6tFSYFt4", "ssoUrl": "ZxA2PzZF"}' \
    'RkBNlg6h' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateSSOPlatformCredential'
delete_file $TEMP_FILE

#- 138 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'n5qusKyZ' \
    'AuV6uUvq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserByPlatformUserIDV3'
delete_file $TEMP_FILE

#- 139 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'M0lV6UZM' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAdminUsersByRoleIdV3'
delete_file $TEMP_FILE

#- 140 AdminGetUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-email-address-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserByEmailAddressV3'
delete_file $TEMP_FILE

#- 141 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["lEbxHNgJ"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminListUserIDByUserIDsV3'
delete_file $TEMP_FILE

#- 142 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["RiQExaun"], "isAdmin": false, "roles": ["dAqnHUz4"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminInviteUserV3'
delete_file $TEMP_FILE

#- 143 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminListUsersV3'
delete_file $TEMP_FILE

#- 144 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminSearchUserV3'
delete_file $TEMP_FILE

#- 145 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["4tx4O6ha"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetBulkUserByEmailAddressV3'
delete_file $TEMP_FILE

#- 146 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'mPwNoi07' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserByUserIdV3'
delete_file $TEMP_FILE

#- 147 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"country": "1ezDK56J", "dateOfBirth": "FIGe1IMU", "displayName": "CLcN0Dsa", "languageTag": "D5FyBsFe", "userName": "9OYEJVsY"}' \
    'ffmhyx6J' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserV3'
delete_file $TEMP_FILE

#- 148 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    '25PrM4S3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserBanV3'
delete_file $TEMP_FILE

#- 149 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "cB8m17hE", "comment": "eLLgoaYt", "endDate": "h6zcf8eA", "reason": "45OMvObW", "skipNotif": false}' \
    'jo9LfGee' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminBanUserV3'
delete_file $TEMP_FILE

#- 150 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": false}' \
    'BGR6D1Zo' \
    'ZEZQkJ8D' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserBanV3'
delete_file $TEMP_FILE

#- 151 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "SqFnhdKv", "emailAddress": "jFCFbSFl", "languageTag": "EWoMPdgK"}' \
    '5zn62mhn' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminSendVerificationCodeV3'
delete_file $TEMP_FILE

#- 152 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "FSpCTlDN", "ContactType": "BOcygvv2", "LanguageTag": "LAgfBGVz", "validateOnly": false}' \
    'nbKYsB0g' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminVerifyAccountV3'
delete_file $TEMP_FILE

#- 153 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'qJ8VhYSi' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserVerificationCode'
delete_file $TEMP_FILE

#- 154 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'kJl2p9rB' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserDeletionStatusV3'
delete_file $TEMP_FILE

#- 155 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": true}' \
    '8N5egapq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserDeletionStatusV3'
delete_file $TEMP_FILE

#- 156 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "xDy4cLfN", "country": "jzzEZYA8", "dateOfBirth": "jIkMJb7c", "displayName": "Z2bPsaLL", "emailAddress": "pEBVEMk5", "password": "AsKaF2P4", "validateOnly": false}' \
    'XkI3zdiR' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpgradeHeadlessAccountV3'
delete_file $TEMP_FILE

#- 157 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'iC5IbPit' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteUserInformationV3'
delete_file $TEMP_FILE

#- 158 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    '71JWlYCo' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserLoginHistoriesV3'
delete_file $TEMP_FILE

#- 159 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 16, "Resource": "4nDfPu5V", "SchedAction": 85, "SchedCron": "SYxEVOry", "SchedRange": ["VuZYmgUe"]}]}' \
    'EPB5AGPg' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserPermissionV3'
delete_file $TEMP_FILE

#- 160 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 42, "Resource": "k0Zthaj0", "SchedAction": 60, "SchedCron": "BA4azRz0", "SchedRange": ["d56smobo"]}]}' \
    'r4p1PlgQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddUserPermissionsV3'
delete_file $TEMP_FILE

#- 161 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 55, "Resource": "9EcNGOeB"}]' \
    'RY6G5ae0' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteUserPermissionBulkV3'
delete_file $TEMP_FILE

#- 162 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '7' \
    'eDLaZ8JC' \
    'vbeTfW0h' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteUserPermissionV3'
delete_file $TEMP_FILE

#- 163 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'gzrabLJx' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserPlatformAccountsV3'
delete_file $TEMP_FILE

#- 164 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'EwJrEBmQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetListJusticePlatformAccounts'
delete_file $TEMP_FILE

#- 165 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    '64haNOzl' \
    'Gu68UYyu' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateJusticeUser'
delete_file $TEMP_FILE

#- 166 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "pjdDetno", "platformUserId": "T0rfWtVP"}' \
    'wQfq6V92' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminLinkPlatformAccount'
delete_file $TEMP_FILE

#- 167 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "gbfPouNd"}' \
    'mP7fckVn' \
    'uDGvYIb1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPlatformUnlinkV3'
delete_file $TEMP_FILE

#- 168 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'p5tcR5z8' \
    'ZJLjSHca' \
    'R3X4tZmw' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPlatformLinkV3'
delete_file $TEMP_FILE

#- 169 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["r0QmOnsE"]' \
    'g49eXp0x' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteUserRolesV3'
delete_file $TEMP_FILE

#- 170 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "QkZ2Jjuw", "roleId": "WWy0tU11"}]' \
    'PCeSrvej' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminSaveUserRoleV3'
delete_file $TEMP_FILE

#- 171 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'UKwVfF37' \
    'Vr7mkDzF' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddUserRoleV3'
delete_file $TEMP_FILE

#- 172 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'BI1VwhkV' \
    'SKDlNFOU' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteUserRoleV3'
delete_file $TEMP_FILE

#- 173 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "JsvTsqk9"}' \
    'hg4hj6nU' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserStatusV3'
delete_file $TEMP_FILE

#- 174 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'debW6Usk' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminVerifyUserWithoutVerificationCodeV3'
delete_file $TEMP_FILE

#- 175 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRolesV3'
delete_file $TEMP_FILE

#- 176 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "ZAk01f1K", "namespace": "xCtWADU2", "userId": "guN6U9w1"}], "members": [{"displayName": "3W1K9TZQ", "namespace": "4qRLEi5w", "userId": "owE36rfm"}], "permissions": [{"action": 76, "resource": "0CCs35TP", "schedAction": 92, "schedCron": "PLmsY8Wg", "schedRange": ["wSx1DI5G"]}], "roleName": "H9bv9ZTo"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateRoleV3'
delete_file $TEMP_FILE

#- 177 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    '2HpA6pzj' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRoleV3'
delete_file $TEMP_FILE

#- 178 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'HpZO0E9i' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteRoleV3'
delete_file $TEMP_FILE

#- 179 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "Bae3GOgb"}' \
    'Qrqra0Pt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateRoleV3'
delete_file $TEMP_FILE

#- 180 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'kfvOpY2r' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRoleAdminStatusV3'
delete_file $TEMP_FILE

#- 181 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'amp5lnBn' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateAdminRoleStatusV3'
delete_file $TEMP_FILE

#- 182 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    '6xmBkfMt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRemoveRoleAdminV3'
delete_file $TEMP_FILE

#- 183 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'C66hFq0k' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRoleManagersV3'
delete_file $TEMP_FILE

#- 184 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "POkORm2X", "namespace": "jlNEE5ec", "userId": "PzAmi0yS"}]}' \
    'JHfPloP1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddRoleManagersV3'
delete_file $TEMP_FILE

#- 185 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "XkYK4MgI", "namespace": "sDSFMPyM", "userId": "hyw1OLZP"}]}' \
    'VwwxH4BI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRemoveRoleManagersV3'
delete_file $TEMP_FILE

#- 186 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'DJuDoShM' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRoleMembersV3'
delete_file $TEMP_FILE

#- 187 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "Mftll8N0", "namespace": "VvChHz9u", "userId": "rmt7QWvE"}]}' \
    '8s6Uz8BR' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddRoleMembersV3'
delete_file $TEMP_FILE

#- 188 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "uYWDTtL6", "namespace": "MTTRkCbb", "userId": "9S5Q1IVH"}]}' \
    'GT88prRE' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRemoveRoleMembersV3'
delete_file $TEMP_FILE

#- 189 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 54, "resource": "gYOWdHJ9", "schedAction": 70, "schedCron": "umohtU13", "schedRange": ["gf7TRigN"]}]}' \
    'Zj5w5y3H' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateRolePermissionsV3'
delete_file $TEMP_FILE

#- 190 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 25, "resource": "K8QVOa62", "schedAction": 9, "schedCron": "QZtbLLcF", "schedRange": ["671WLtv3"]}]}' \
    '8Hecczop' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddRolePermissionsV3'
delete_file $TEMP_FILE

#- 191 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["FmeRwpcJ"]' \
    'BZyi3mLC' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteRolePermissionsV3'
delete_file $TEMP_FILE

#- 192 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '72' \
    'zekiSzey' \
    'olnOQt0j' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteRolePermissionV3'
delete_file $TEMP_FILE

#- 193 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetMyUserV3'
delete_file $TEMP_FILE

#- 194 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'oVHgCytC' \
    '6lRG98Yx' \
    'nHbRdoTK' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    >$TEMP_FILE 2>&1
update_status $? 'UserAuthenticationV3'
delete_file $TEMP_FILE

#- 195 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetCountryLocationV3'
delete_file $TEMP_FILE

#- 196 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'Logout'
delete_file $TEMP_FILE

#- 197 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'KeuSjfZe' \
    '9i1osghF' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRetrieveUserThirdPartyPlatformTokenV3'
delete_file $TEMP_FILE

#- 198 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    '1hzi1Nl4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RevokeUserV3'
delete_file $TEMP_FILE

#- 199 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    '7syJ5ibz' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    >$TEMP_FILE 2>&1
update_status $? 'AuthorizeV3'
delete_file $TEMP_FILE

#- 200 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'CLIvWPVR' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TokenIntrospectionV3'
delete_file $TEMP_FILE

#- 201 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetJWKSV3'
delete_file $TEMP_FILE

#- 202 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'sdEqA61y' \
    'TrMgsycT' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'Change2faMethod'
delete_file $TEMP_FILE

#- 203 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'gmPzc20E' \
    'uO5dMqGD' \
    'lSZPY07r' \
    'True' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'Verify2faCode'
delete_file $TEMP_FILE

#- 204 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'VSjzHjL6' \
    'ZbXjG6DS' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveUserThirdPartyPlatformTokenV3'
delete_file $TEMP_FILE

#- 205 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'mpp3op8h' \
    'taRLxtW4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AuthCodeRequestV3'
delete_file $TEMP_FILE

#- 206 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'PvFkESTU' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    >$TEMP_FILE 2>&1
update_status $? 'PlatformTokenGrantV3'
delete_file $TEMP_FILE

#- 207 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetRevocationListV3'
delete_file $TEMP_FILE

#- 208 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'Lat5F1Le' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TokenRevocationV3'
delete_file $TEMP_FILE

#- 209 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'authorization_code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    >$TEMP_FILE 2>&1
update_status $? 'TokenGrantV3'
delete_file $TEMP_FILE

#- 210 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'R7q6PWhZ' \
    'mmKz41i1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PlatformAuthenticationV3'
delete_file $TEMP_FILE

#- 211 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetInputValidations'
delete_file $TEMP_FILE

#- 212 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3'
delete_file $TEMP_FILE

#- 213 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["Tp78FipJ"]}' \
    'HahViJvL' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListUserIDByPlatformUserIDsV3'
delete_file $TEMP_FILE

#- 214 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'YW0kdmlk' \
    '2luqSOOA' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserByPlatformUserIDV3'
delete_file $TEMP_FILE

#- 215 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    '2VOZBoNb' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetAsyncStatus'
delete_file $TEMP_FILE

#- 216 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSearchUserV3'
delete_file $TEMP_FILE

#- 217 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "B98PuSGy", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "qFzPwSMX", "policyId": "T53bBuL3", "policyVersionId": "8beOYDVu"}], "authType": "HZQ9LYt6", "code": "w23Wf8iE", "country": "Qo72sH0a", "dateOfBirth": "RdcDlDyG", "displayName": "csfIuI4D", "emailAddress": "v5lEJpK1", "password": "AyRlzsrR", "reachMinimumAge": true}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserV3'
delete_file $TEMP_FILE

#- 218 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'FZivQOHG' \
    '6wVicNra' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CheckUserAvailability'
delete_file $TEMP_FILE

#- 219 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["tsvvHLmI"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkGetUsers'
delete_file $TEMP_FILE

#- 220 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "ohfNISLX", "languageTag": "MDWDdm5F"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSendRegistrationCode'
delete_file $TEMP_FILE

#- 221 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "E4lliQMn", "emailAddress": "utJbpEo4"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicVerifyRegistrationCode'
delete_file $TEMP_FILE

#- 222 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "mUNHFtdm", "languageTag": "l2xNviWa"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicForgotPasswordV3'
delete_file $TEMP_FILE

#- 223 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'cJc3Fm7Z' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAdminInvitationV3'
delete_file $TEMP_FILE

#- 224 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "uKgoCBqS", "policyId": "5uIdCbwC", "policyVersionId": "eeq9ouEd"}], "authType": "DtjOgsyp", "country": "Lkm2ZYew", "dateOfBirth": "5H7Zm0gn", "displayName": "Yyj6MXf9", "password": "G1ntyebv", "reachMinimumAge": false}' \
    'eHenAALK' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateUserFromInvitationV3'
delete_file $TEMP_FILE

#- 225 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"country": "t7EfxIH4", "dateOfBirth": "46oUnP2S", "displayName": "74unXwg0", "languageTag": "JKqVWW1r", "userName": "jK1epwkA"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserV3'
delete_file $TEMP_FILE

#- 226 PublicUpdateUserV3
$PYTHON -m $MODULE 'iam-public-update-user-v3' \
    '{"country": "vcsYvbgf", "dateOfBirth": "BVPpTa8Y", "displayName": "uq7TKiNX", "languageTag": "mz7eMrMD", "userName": "5TbaUxTC"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateUserV3'
delete_file $TEMP_FILE

#- 227 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "Tng0xjtd", "emailAddress": "Brjs3Kiy", "languageTag": "kt2Ck2gO"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSendVerificationCodeV3'
delete_file $TEMP_FILE

#- 228 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "lSatECZ2", "contactType": "UgwQLqDq", "languageTag": "YSxTPuVl", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUserVerificationV3'
delete_file $TEMP_FILE

#- 229 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "qirdp3yx", "country": "nsETl1Sv", "dateOfBirth": "hQudsjIh", "displayName": "XdxiSoWp", "emailAddress": "nnxgX7BC", "password": "PMqzQIxi", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpgradeHeadlessAccountV3'
delete_file $TEMP_FILE

#- 230 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "hpNYsHtd", "password": "B3IkjuaZ"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicVerifyHeadlessAccountV3'
delete_file $TEMP_FILE

#- 231 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "qhJilrZk", "newPassword": "SSKgP5rx", "oldPassword": "CR77G9d5"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdatePasswordV3'
delete_file $TEMP_FILE

#- 232 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'CA1GORSb' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateJusticeUser'
delete_file $TEMP_FILE

#- 233 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'L9n0dbWD' \
    'EupmdLQz' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicPlatformLinkV3'
delete_file $TEMP_FILE

#- 234 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "PnNfBAcW"}' \
    'ArbkCfdH' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicPlatformUnlinkV3'
delete_file $TEMP_FILE

#- 235 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'IZb03otq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicWebLinkPlatform'
delete_file $TEMP_FILE

#- 236 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'mBuS9V2p' \
    'CZ23UHmk' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicWebLinkPlatformEstablish'
delete_file $TEMP_FILE

#- 237 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "0lpJ4JLl", "emailAddress": "01qi7L2o", "newPassword": "DUoVRUb3"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ResetPasswordV3'
delete_file $TEMP_FILE

#- 238 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    '9j22P4Sp' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserByUserIdV3'
delete_file $TEMP_FILE

#- 239 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    '09cKmjRU' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserBanHistoryV3'
delete_file $TEMP_FILE

#- 240 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'bZVBVS7O' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserLoginHistoriesV3'
delete_file $TEMP_FILE

#- 241 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'K2Zrdcsc' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserPlatformAccountsV3'
delete_file $TEMP_FILE

#- 242 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "kMekROWZ", "platformUserId": "2KUTqkK2"}' \
    'eFaGLoSm' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicLinkPlatformAccount'
delete_file $TEMP_FILE

#- 243 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'EEPbLywJ' \
    'syUie6fZ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicValidateUserByUserIDAndPasswordV3'
delete_file $TEMP_FILE

#- 244 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetRolesV3'
delete_file $TEMP_FILE

#- 245 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'gLllUPsO' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetRoleV3'
delete_file $TEMP_FILE

#- 246 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyUserV3'
delete_file $TEMP_FILE

#- 247 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    '8lg46Si7' \
    '006vL2w4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PlatformAuthenticateSAMLV3Handler'
delete_file $TEMP_FILE

#- 248 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'aajDAOx0' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'LoginSSOClient'
delete_file $TEMP_FILE

#- 249 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'iJjYleak' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'LogoutSSOClient'
delete_file $TEMP_FILE

#- 250 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["tqv2Wklj"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminBulkCheckValidUserIDV4'
delete_file $TEMP_FILE

#- 251 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"country": "QuD5mnJO", "dateOfBirth": "NqHGq8mB", "displayName": "7mF2lMFc", "languageTag": "aghFXJIJ", "userName": "flRHFcsI"}' \
    'qCy4xDif' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserV4'
delete_file $TEMP_FILE

#- 252 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "SSQ5On2c", "emailAddress": "cEcl3xei"}' \
    'O4bwF5JO' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserEmailAddressV4'
delete_file $TEMP_FILE

#- 253 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'jGoGxKM3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDisableUserMFAV4'
delete_file $TEMP_FILE

#- 254 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'qMce5tfL' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminListUserRolesV4'
delete_file $TEMP_FILE

#- 255 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["cpjFZMKC"], "roleId": "bp0pEbLC"}' \
    'LFpHxMYF' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserRoleV4'
delete_file $TEMP_FILE

#- 256 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["836075xE"], "roleId": "pzdnYtpj"}' \
    'a5ig2isQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddUserRoleV4'
delete_file $TEMP_FILE

#- 257 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["Zga6Vy76"], "roleId": "izPiQRjY"}' \
    'a8fv5fIt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRemoveUserRoleV4'
delete_file $TEMP_FILE

#- 258 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRolesV4'
delete_file $TEMP_FILE

#- 259 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "hgkigW22"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateRoleV4'
delete_file $TEMP_FILE

#- 260 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'zXMWXfbc' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRoleV4'
delete_file $TEMP_FILE

#- 261 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'M0GIALIb' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteRoleV4'
delete_file $TEMP_FILE

#- 262 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "BcLNT6iO"}' \
    'QVYx5rW2' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateRoleV4'
delete_file $TEMP_FILE

#- 263 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 13, "resource": "MsI1aYBi", "schedAction": 38, "schedCron": "Sn3UDeKj", "schedRange": ["97I4WYXL"]}]}' \
    'qjN7ktOB' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateRolePermissionsV4'
delete_file $TEMP_FILE

#- 264 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 91, "resource": "raBxWRTV", "schedAction": 41, "schedCron": "YEqGlKDw", "schedRange": ["TKXBrXiQ"]}]}' \
    'cd9IW8ki' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddRolePermissionsV4'
delete_file $TEMP_FILE

#- 265 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["CKeQJWZB"]' \
    'vcq1ETvW' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteRolePermissionsV4'
delete_file $TEMP_FILE

#- 266 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'BxYZJh7B' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminListAssignedUsersV4'
delete_file $TEMP_FILE

#- 267 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["8gbnSu9M"], "namespace": "2OxD2uda", "userId": "eYpCXYSM"}' \
    'iy87CTqE' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAssignUserToRoleV4'
delete_file $TEMP_FILE

#- 268 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "QBg36my3", "userId": "sY2clrDc"}' \
    'ain0cOVF' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRevokeUserFromRoleV4'
delete_file $TEMP_FILE

#- 269 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"country": "1zHwDTI0", "dateOfBirth": "sJ1Q0kph", "displayName": "MTggSP2S", "languageTag": "LcuAP7vU", "userName": "971Czw2n"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateMyUserV4'
delete_file $TEMP_FILE

#- 270 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDisableMyAuthenticatorV4'
delete_file $TEMP_FILE

#- 271 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminEnableMyAuthenticatorV4'
delete_file $TEMP_FILE

#- 272 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGenerateMyAuthenticatorKeyV4'
delete_file $TEMP_FILE

#- 273 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetMyBackupCodesV4'
delete_file $TEMP_FILE

#- 274 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGenerateMyBackupCodesV4'
delete_file $TEMP_FILE

#- 275 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDisableMyBackupCodesV4'
delete_file $TEMP_FILE

#- 276 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDownloadMyBackupCodesV4'
delete_file $TEMP_FILE

#- 277 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminEnableMyBackupCodesV4'
delete_file $TEMP_FILE

#- 278 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetMyEnabledFactorsV4'
delete_file $TEMP_FILE

#- 279 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'bg8C7Mvy' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminMakeFactorMyDefaultV4'
delete_file $TEMP_FILE

#- 280 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["whu6MjOj"], "emailAddresses": ["uGzo1Fz4"], "isAdmin": true, "roleId": "U0aSn98N"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminInviteUserV4'
delete_file $TEMP_FILE

#- 281 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "OUA0z92R", "policyId": "aDe8ngT8", "policyVersionId": "LRQkMnG1"}], "authType": "LZyF2mdY", "country": "Y6ZMfuTY", "dateOfBirth": "TKsue48q", "displayName": "BEBNAV5B", "emailAddress": "Te6ec1zA", "password": "92URCLSG", "passwordMD5Sum": "PmRBZWun", "username": "HW7MYvr6", "verified": true}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateTestUserV4'
delete_file $TEMP_FILE

#- 282 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "epc92HA9", "policyId": "4eACdeyf", "policyVersionId": "UpgiPpf8"}], "authType": "nxKJ3dnm", "code": "tPwa64Y4", "country": "gPEKMhhu", "dateOfBirth": "9a6f3xJN", "displayName": "tUlKLlII", "emailAddress": "AeHbm5M6", "password": "LsY1VMuI", "passwordMD5Sum": "EcRls68M", "reachMinimumAge": true, "username": "epyyMz6z"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserV4'
delete_file $TEMP_FILE

#- 283 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "R1pvTYYt", "policyId": "DOiEi4Ru", "policyVersionId": "EcHCSGhp"}], "authType": "OZQFlwOi", "country": "uKGDFgK4", "dateOfBirth": "9YuKnXks", "displayName": "0m8ANrcR", "password": "al7ta3fo", "reachMinimumAge": false, "username": "A3h4MMW3"}' \
    'AJ5zlsFB' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateUserFromInvitationV4'
delete_file $TEMP_FILE

#- 284 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"country": "wjvLYvmg", "dateOfBirth": "6avudQFF", "displayName": "1CPNY9u2", "languageTag": "dVYdglOO", "userName": "oCeK0kPK"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateUserV4'
delete_file $TEMP_FILE

#- 285 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "mBqVux3l", "emailAddress": "XcD8aert"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateUserEmailAddressV4'
delete_file $TEMP_FILE

#- 286 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "AVCqs8XT", "country": "8xy3nJ06", "dateOfBirth": "KkseA0AR", "displayName": "j9ricfay", "emailAddress": "vnhi8MDd", "password": "Y4WLHoaU", "reachMinimumAge": false, "username": "YnQp5egd", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpgradeHeadlessAccountWithVerificationCodeV4'
delete_file $TEMP_FILE

#- 287 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "VE8ImivN", "password": "tQxqWRKH", "username": "ohODoWOr"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpgradeHeadlessAccountV4'
delete_file $TEMP_FILE

#- 288 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDisableMyAuthenticatorV4'
delete_file $TEMP_FILE

#- 289 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicEnableMyAuthenticatorV4'
delete_file $TEMP_FILE

#- 290 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGenerateMyAuthenticatorKeyV4'
delete_file $TEMP_FILE

#- 291 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyBackupCodesV4'
delete_file $TEMP_FILE

#- 292 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGenerateMyBackupCodesV4'
delete_file $TEMP_FILE

#- 293 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDisableMyBackupCodesV4'
delete_file $TEMP_FILE

#- 294 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDownloadMyBackupCodesV4'
delete_file $TEMP_FILE

#- 295 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicEnableMyBackupCodesV4'
delete_file $TEMP_FILE

#- 296 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicRemoveTrustedDeviceV4'
delete_file $TEMP_FILE

#- 297 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyEnabledFactorsV4'
delete_file $TEMP_FILE

#- 298 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    '98kjBUas' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicMakeFactorMyDefaultV4'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT