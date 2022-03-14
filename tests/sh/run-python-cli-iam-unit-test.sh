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

OPERATIONS_COUNT=273

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
    '{"ACSURL": "46QmCidg", "AWSCognitoRegion": "dpP7RTC5", "AWSCognitoUserPool": "87lmUmBz", "AppId": "iPZBnpOf", "ClientId": "kllxfq0N", "Environment": "srSjw5Ho", "FederationMetadataURL": "g0blM1d5", "IsActive": true, "KeyID": "YGczLINl", "OrganizationId": "EC0OEsE3", "RedirectUri": "yzIsUP0N", "Secret": "jluOrGZT", "TeamID": "zsLW7Fjf"}' \
    's9nIkcZ3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AddThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 130 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    '8fUEanjK' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 131 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "HbXfk1zx", "AWSCognitoRegion": "dzxg0UXc", "AWSCognitoUserPool": "RyHi3u8B", "AppId": "zVWu1tOm", "ClientId": "hUtCgcpv", "Environment": "GrEbcZUD", "FederationMetadataURL": "ExH1tayO", "IsActive": true, "KeyID": "MRjMCtOJ", "OrganizationId": "sEijlrbp", "RedirectUri": "yyEcQxVg", "Secret": "JIjMZqcW", "TeamID": "fMl6dqrp"}' \
    'D4tnc3ZR' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 132 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["B3IkdtPf"], "assignedNamespaces": ["AJEomwen"], "domain": "JvQ8grtQ", "roleId": "Sv6EcALc"}' \
    'MIPms5bT' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateThirdPartyLoginPlatformDomainV3'
delete_file $TEMP_FILE

#- 133 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "51M4yko8"}' \
    'S0EnGLvG' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteThirdPartyLoginPlatformDomainV3'
delete_file $TEMP_FILE

#- 134 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'vfuSyCTy' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveSSOLoginPlatformCredential'
delete_file $TEMP_FILE

#- 135 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "jj4mCaiu", "apiKey": "MGKOF5GJ", "appId": "JooSXUl3", "federationMetadataUrl": "YU35QHGp", "isActive": true, "redirectUri": "ABnOlxDz", "secret": "nICQVyqB", "ssoUrl": "g34WTtDk"}' \
    'n0rtn6t0' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AddSSOLoginPlatformCredential'
delete_file $TEMP_FILE

#- 136 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'Yx4z12Ea' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteSSOLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 137 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "Q1rUQYCN", "apiKey": "TiDX4jE3", "appId": "M2IsTHu8", "federationMetadataUrl": "QwNyOlXf", "isActive": false, "redirectUri": "0mcq5T4S", "secret": "Uc7cWfCK", "ssoUrl": "K6Dij1gF"}' \
    'cenEMySP' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateSSOPlatformCredential'
delete_file $TEMP_FILE

#- 138 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'fhxBenDi' \
    'TiAqFYmF' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserByPlatformUserIDV3'
delete_file $TEMP_FILE

#- 139 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'KjaELmml' \
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
    '{"userIds": ["l6oexId1"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminListUserIDByUserIDsV3'
delete_file $TEMP_FILE

#- 142 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["OKGUN2Uz"], "isAdmin": false, "roles": ["d7uVa7t1"]}' \
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
    '{"listEmailAddressRequest": ["4yvSYSV5"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetBulkUserByEmailAddressV3'
delete_file $TEMP_FILE

#- 146 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    '2bHifCIf' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserByUserIdV3'
delete_file $TEMP_FILE

#- 147 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"country": "4tsuu6Pk", "dateOfBirth": "am6tFSYF", "displayName": "t4ZxA2Pz", "languageTag": "ZFRkBNlg", "userName": "6hn5qusK"}' \
    'yZAuV6uU' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserV3'
delete_file $TEMP_FILE

#- 148 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'vqM0lV6U' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserBanV3'
delete_file $TEMP_FILE

#- 149 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "ZMlEbxHN", "comment": "gJRiQExa", "endDate": "unjdAqnH", "reason": "Uz44tx4O", "skipNotif": false}' \
    'amPwNoi0' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminBanUserV3'
delete_file $TEMP_FILE

#- 150 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": true}' \
    'DK56JFIG' \
    'e1IMUCLc' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserBanV3'
delete_file $TEMP_FILE

#- 151 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "N0DsaD5F", "emailAddress": "yBsFe9OY", "languageTag": "EJVsYffm"}' \
    'hyx6J25P' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminSendVerificationCodeV3'
delete_file $TEMP_FILE

#- 152 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "rM4S3cB8", "ContactType": "m17hEeLL", "LanguageTag": "goaYth6z", "validateOnly": false}' \
    'f8eA45OM' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminVerifyAccountV3'
delete_file $TEMP_FILE

#- 153 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'vObWejo9' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserVerificationCode'
delete_file $TEMP_FILE

#- 154 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'LfGeegJM' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserDeletionStatusV3'
delete_file $TEMP_FILE

#- 155 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": false}' \
    'BGR6D1Zo' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserDeletionStatusV3'
delete_file $TEMP_FILE

#- 156 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "ZEZQkJ8D", "country": "SqFnhdKv", "dateOfBirth": "jFCFbSFl", "displayName": "EWoMPdgK", "emailAddress": "5zn62mhn", "password": "FSpCTlDN", "validateOnly": true}' \
    'Ocygvv2L' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpgradeHeadlessAccountV3'
delete_file $TEMP_FILE

#- 157 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'AgfBGVza' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteUserInformationV3'
delete_file $TEMP_FILE

#- 158 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'nbKYsB0g' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserLoginHistoriesV3'
delete_file $TEMP_FILE

#- 159 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 33, "Resource": "J8VhYSik", "SchedAction": 71, "SchedCron": "l2p9rBx8", "SchedRange": ["N5egapqx"]}]}' \
    'Dy4cLfNj' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserPermissionV3'
delete_file $TEMP_FILE

#- 160 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 51, "Resource": "zEZYA8jI", "SchedAction": 20, "SchedCron": "MJb7cZ2b", "SchedRange": ["PsaLLpEB"]}]}' \
    'VEMk5AsK' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddUserPermissionsV3'
delete_file $TEMP_FILE

#- 161 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 0, "Resource": "F2P44lXk"}]' \
    'I3zdiRiC' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteUserPermissionBulkV3'
delete_file $TEMP_FILE

#- 162 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '68' \
    'bPit71JW' \
    'lYCoi4nD' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteUserPermissionV3'
delete_file $TEMP_FILE

#- 163 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'fPu5V6QS' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserPlatformAccountsV3'
delete_file $TEMP_FILE

#- 164 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'YxEVOryV' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetListJusticePlatformAccounts'
delete_file $TEMP_FILE

#- 165 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'uZYmgUeE' \
    'PB5AGPgv' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateJusticeUser'
delete_file $TEMP_FILE

#- 166 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "k0Zthaj0", "platformUserId": "EBA4azRz"}' \
    '0d56smob' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminLinkPlatformAccount'
delete_file $TEMP_FILE

#- 167 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "or4p1Plg"}' \
    'QB9EcNGO' \
    'eBRY6G5a' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPlatformUnlinkV3'
delete_file $TEMP_FILE

#- 168 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'e07deDLa' \
    'Z8JCvbeT' \
    'fW0hgzra' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPlatformLinkV3'
delete_file $TEMP_FILE

#- 169 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["bLJxEwJr"]' \
    'EBmQ64ha' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteUserRolesV3'
delete_file $TEMP_FILE

#- 170 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "NOzlGu68", "roleId": "UYyupjdD"}]' \
    'etnoT0rf' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminSaveUserRoleV3'
delete_file $TEMP_FILE

#- 171 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'WtVPwQfq' \
    '6V92gbfP' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddUserRoleV3'
delete_file $TEMP_FILE

#- 172 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'ouNdmP7f' \
    'ckVnuDGv' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteUserRoleV3'
delete_file $TEMP_FILE

#- 173 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "1p5tcR5z"}' \
    '8ZJLjSHc' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserStatusV3'
delete_file $TEMP_FILE

#- 174 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'aR3X4tZm' \
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
    '{"adminRole": true, "deletable": true, "isWildcard": false, "managers": [{"displayName": "OnsEg49e", "namespace": "Xp0xQkZ2", "userId": "JjuwWWy0"}], "members": [{"displayName": "tU11PCeS", "namespace": "rvejUKwV", "userId": "fF37Vr7m"}], "permissions": [{"action": 20, "resource": "DzFBI1Vw", "schedAction": 14, "schedCron": "kVSKDlNF", "schedRange": ["OUHBJsvT"]}], "roleName": "sqk9hg4h"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateRoleV3'
delete_file $TEMP_FILE

#- 177 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'j6nUdebW' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRoleV3'
delete_file $TEMP_FILE

#- 178 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    '6UskbPkk' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteRoleV3'
delete_file $TEMP_FILE

#- 179 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": false, "roleName": "01f1KxCt"}' \
    'WADU2guN' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateRoleV3'
delete_file $TEMP_FILE

#- 180 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    '6U9w13W1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRoleAdminStatusV3'
delete_file $TEMP_FILE

#- 181 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'K9TZQ4qR' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateAdminRoleStatusV3'
delete_file $TEMP_FILE

#- 182 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'LEi5wowE' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRemoveRoleAdminV3'
delete_file $TEMP_FILE

#- 183 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    '36rfmM0C' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRoleManagersV3'
delete_file $TEMP_FILE

#- 184 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "Cs35TPUP", "namespace": "LmsY8Wgw", "userId": "Sx1DI5GH"}]}' \
    '9bv9ZTo2' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddRoleManagersV3'
delete_file $TEMP_FILE

#- 185 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "HpA6pzjH", "namespace": "pZO0E9iL", "userId": "gRPJK3nB"}]}' \
    'ae3GOgbQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRemoveRoleManagersV3'
delete_file $TEMP_FILE

#- 186 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'rqra0Ptk' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRoleMembersV3'
delete_file $TEMP_FILE

#- 187 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "fvOpY2ra", "namespace": "mp5lnBn6", "userId": "xmBkfMtC"}]}' \
    '66hFq0kP' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddRoleMembersV3'
delete_file $TEMP_FILE

#- 188 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "OkORm2Xj", "namespace": "lNEE5ecP", "userId": "zAmi0ySJ"}]}' \
    'HfPloP1X' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRemoveRoleMembersV3'
delete_file $TEMP_FILE

#- 189 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 20, "resource": "YK4MgIsD", "schedAction": 89, "schedCron": "FMPyMhyw", "schedRange": ["1OLZPVww"]}]}' \
    'xH4BIDJu' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateRolePermissionsV3'
delete_file $TEMP_FILE

#- 190 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 58, "resource": "oShMMftl", "schedAction": 23, "schedCron": "8N0VvChH", "schedRange": ["z9urmt7Q"]}]}' \
    'WvE8s6Uz' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddRolePermissionsV3'
delete_file $TEMP_FILE

#- 191 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["8BRuYWDT"]' \
    'tL6MTTRk' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteRolePermissionsV3'
delete_file $TEMP_FILE

#- 192 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '56' \
    'bb9S5Q1I' \
    'VHGT88pr' \
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
    'REBgYOWd' \
    'HJ9Jumoh' \
    'tU13gf7T' \
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
    'RigNZj5w' \
    '5y3HmK8Q' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRetrieveUserThirdPartyPlatformTokenV3'
delete_file $TEMP_FILE

#- 198 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'VOa62eQZ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RevokeUserV3'
delete_file $TEMP_FILE

#- 199 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'tbLLcF67' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    >$TEMP_FILE 2>&1
update_status $? 'AuthorizeV3'
delete_file $TEMP_FILE

#- 200 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'v38Heccz' \
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

#- 202 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'opFmeRwp' \
    'cJBZyi3m' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveUserThirdPartyPlatformTokenV3'
delete_file $TEMP_FILE

#- 203 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'LC4Kzeki' \
    'SzeyolnO' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AuthCodeRequestV3'
delete_file $TEMP_FILE

#- 204 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'Qt0joVHg' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    >$TEMP_FILE 2>&1
update_status $? 'PlatformTokenGrantV3'
delete_file $TEMP_FILE

#- 205 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetRevocationListV3'
delete_file $TEMP_FILE

#- 206 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'CytC6lRG' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TokenRevocationV3'
delete_file $TEMP_FILE

#- 207 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'password' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    >$TEMP_FILE 2>&1
update_status $? 'TokenGrantV3'
delete_file $TEMP_FILE

#- 208 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'nHbRdoTK' \
    'KeuSjfZe' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PlatformAuthenticationV3'
delete_file $TEMP_FILE

#- 209 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetInputValidations'
delete_file $TEMP_FILE

#- 210 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3'
delete_file $TEMP_FILE

#- 211 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["9i1osghF"]}' \
    '1hzi1Nl4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListUserIDByPlatformUserIDsV3'
delete_file $TEMP_FILE

#- 212 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    '7syJ5ibz' \
    'SHZeCLIv' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserByPlatformUserIDV3'
delete_file $TEMP_FILE

#- 213 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'WPVRsdEq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetAsyncStatus'
delete_file $TEMP_FILE

#- 214 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSearchUserV3'
delete_file $TEMP_FILE

#- 215 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "A61yTrMg", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ycTgmPzc", "policyId": "20EuO5dM", "policyVersionId": "qGDlSZPY"}], "authType": "07rEVSjz", "code": "HjL6ZbXj", "country": "G6DSmpp3", "dateOfBirth": "op8htaRL", "displayName": "xtW4PvFk", "emailAddress": "ESTULat5", "password": "F1Le7cR7", "reachMinimumAge": true}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserV3'
delete_file $TEMP_FILE

#- 216 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    '6PWhZmmK' \
    'z41i1Tp7' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CheckUserAvailability'
delete_file $TEMP_FILE

#- 217 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["8FipJHah"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkGetUsers'
delete_file $TEMP_FILE

#- 218 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "ViJvLYW0", "languageTag": "kdmlk2lu"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSendRegistrationCode'
delete_file $TEMP_FILE

#- 219 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "qSOOA2VO", "emailAddress": "ZBoNbB98"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicVerifyRegistrationCode'
delete_file $TEMP_FILE

#- 220 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "PuSGykqF", "languageTag": "zPwSMXT5"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicForgotPasswordV3'
delete_file $TEMP_FILE

#- 221 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    '3bBuL38b' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAdminInvitationV3'
delete_file $TEMP_FILE

#- 222 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "OYDVuHZQ", "policyId": "9LYt6w23", "policyVersionId": "Wf8iEQo7"}], "authType": "2sH0aRdc", "country": "DlDyGcsf", "dateOfBirth": "IuI4Dv5l", "displayName": "EJpK1AyR", "password": "lzsrRXEF", "reachMinimumAge": false}' \
    'vQOHG6wV' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateUserFromInvitationV3'
delete_file $TEMP_FILE

#- 223 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"country": "icNratsv", "dateOfBirth": "vHLmIohf", "displayName": "NISLXMDW", "languageTag": "Ddm5FE4l", "userName": "liQMnutJ"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserV3'
delete_file $TEMP_FILE

#- 224 PublicUpdateUserV3
$PYTHON -m $MODULE 'iam-public-update-user-v3' \
    '{"country": "bpEo4mUN", "dateOfBirth": "HFtdml2x", "displayName": "NviWacJc", "languageTag": "3Fm7Z548", "userName": "uuKgoCBq"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateUserV3'
delete_file $TEMP_FILE

#- 225 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "S5uIdCbw", "emailAddress": "Ceeq9ouE", "languageTag": "dDtjOgsy"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSendVerificationCodeV3'
delete_file $TEMP_FILE

#- 226 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "pLkm2ZYe", "contactType": "w5H7Zm0g", "languageTag": "nYyj6MXf", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUserVerificationV3'
delete_file $TEMP_FILE

#- 227 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "tyebvoeH", "country": "enAALKt7", "dateOfBirth": "EfxIH446", "displayName": "oUnP2S74", "emailAddress": "unXwg0JK", "password": "qVWW1rjK", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpgradeHeadlessAccountV3'
delete_file $TEMP_FILE

#- 228 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "pwkAvcsY", "password": "vbgfBVPp"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicVerifyHeadlessAccountV3'
delete_file $TEMP_FILE

#- 229 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "Ta8Yuq7T", "newPassword": "KiNXmz7e", "oldPassword": "MrMD5Tba"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdatePasswordV3'
delete_file $TEMP_FILE

#- 230 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'UxTCTng0' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateJusticeUser'
delete_file $TEMP_FILE

#- 231 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'xjtdBrjs' \
    '3Kiykt2C' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicPlatformLinkV3'
delete_file $TEMP_FILE

#- 232 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "k2gOlSat"}' \
    'ECZ2UgwQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicPlatformUnlinkV3'
delete_file $TEMP_FILE

#- 233 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'LqDqYSxT' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicWebLinkPlatform'
delete_file $TEMP_FILE

#- 234 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'PuVlBqir' \
    'dp3yxnsE' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicWebLinkPlatformEstablish'
delete_file $TEMP_FILE

#- 235 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "Tl1SvhQu", "emailAddress": "dsjIhXdx", "newPassword": "iSoWpnnx"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ResetPasswordV3'
delete_file $TEMP_FILE

#- 236 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'gX7BCPMq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserByUserIdV3'
delete_file $TEMP_FILE

#- 237 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'zQIxibhp' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserBanHistoryV3'
delete_file $TEMP_FILE

#- 238 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'NYsHtdB3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserLoginHistoriesV3'
delete_file $TEMP_FILE

#- 239 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'IkjuaZqh' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserPlatformAccountsV3'
delete_file $TEMP_FILE

#- 240 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "JilrZkSS", "platformUserId": "KgP5rxCR"}' \
    '77G9d5CA' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicLinkPlatformAccount'
delete_file $TEMP_FILE

#- 241 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    '1GORSbL9' \
    'n0dbWDEu' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicValidateUserByUserIDAndPasswordV3'
delete_file $TEMP_FILE

#- 242 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetRolesV3'
delete_file $TEMP_FILE

#- 243 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'pmdLQzPn' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetRoleV3'
delete_file $TEMP_FILE

#- 244 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyUserV3'
delete_file $TEMP_FILE

#- 245 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'NfBAcWAr' \
    'bkCfdHIZ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PlatformAuthenticateSAMLV3Handler'
delete_file $TEMP_FILE

#- 246 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'b03otqmB' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'LoginSSOClient'
delete_file $TEMP_FILE

#- 247 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'uS9V2pCZ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'LogoutSSOClient'
delete_file $TEMP_FILE

#- 248 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"country": "23UHmk0l", "dateOfBirth": "pJ4JLl01", "displayName": "qi7L2oDU", "languageTag": "oVRUb39j", "userName": "22P4Sp09"}' \
    'cKmjRUbZ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserV4'
delete_file $TEMP_FILE

#- 249 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "VBVS7OK2", "emailAddress": "ZrdcsckM"}' \
    'ekROWZ2K' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserEmailAddressV4'
delete_file $TEMP_FILE

#- 250 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'UTqkK2eF' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminListUserRolesV4'
delete_file $TEMP_FILE

#- 251 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["aGLoSmEE"], "roleId": "PbLywJsy"}' \
    'Uie6fZgL' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserRoleV4'
delete_file $TEMP_FILE

#- 252 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["llUPsO8l"], "roleId": "g46Si700"}' \
    '6vL2w4aa' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddUserRoleV4'
delete_file $TEMP_FILE

#- 253 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["jDAOx0iJ"], "roleId": "jYleaktq"}' \
    'v2WkljQu' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRemoveUserRoleV4'
delete_file $TEMP_FILE

#- 254 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRolesV4'
delete_file $TEMP_FILE

#- 255 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "JONqHGq8"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateRoleV4'
delete_file $TEMP_FILE

#- 256 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'mB7mF2lM' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRoleV4'
delete_file $TEMP_FILE

#- 257 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'FcaghFXJ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteRoleV4'
delete_file $TEMP_FILE

#- 258 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "csIqCy4x"}' \
    'DifSSQ5O' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateRoleV4'
delete_file $TEMP_FILE

#- 259 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 26, "resource": "2ccEcl3x", "schedAction": 9, "schedCron": "iO4bwF5J", "schedRange": ["OjGoGxKM"]}]}' \
    '3qMce5tf' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateRolePermissionsV4'
delete_file $TEMP_FILE

#- 260 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 74, "resource": "cpjFZMKC", "schedAction": 2, "schedCron": "p0pEbLCL", "schedRange": ["FpHxMYF8"]}]}' \
    '36075xEp' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddRolePermissionsV4'
delete_file $TEMP_FILE

#- 261 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["zdnYtpja"]' \
    '5ig2isQZ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteRolePermissionsV4'
delete_file $TEMP_FILE

#- 262 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'ga6Vy76i' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminListAssignedUsersV4'
delete_file $TEMP_FILE

#- 263 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["zPiQRjYa"], "namespace": "8fv5fIt2", "userId": "2tIZhjhg"}' \
    'kigW22zX' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAssignUserToRoleV4'
delete_file $TEMP_FILE

#- 264 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "MWXfbcM0", "userId": "GIALIbFC"}' \
    'QgBcLNT6' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRevokeUserFromRoleV4'
delete_file $TEMP_FILE

#- 265 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"country": "iOQVYx5r", "dateOfBirth": "W2gMsI1a", "displayName": "YBitSn3U", "languageTag": "DeKj97I4", "userName": "WYXLqjN7"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateMyUserV4'
delete_file $TEMP_FILE

#- 266 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["ktOBTraB"], "emailAddresses": ["xWRTVuYE"], "isAdmin": true, "roleId": "GlKDwTKX"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminInviteUserV4'
delete_file $TEMP_FILE

#- 267 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "rXiQcd9I", "policyId": "W8kiCKeQ", "policyVersionId": "JWZBvcq1"}], "authType": "ETvWBxYZ", "country": "Jh7B8gbn", "dateOfBirth": "Su9M2OxD", "displayName": "2udaeYpC", "emailAddress": "XYSMiy87", "password": "CTqEQBg3", "passwordMD5Sum": "6my3sY2c", "username": "lrDcain0", "verified": false}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateTestUserV4'
delete_file $TEMP_FILE

#- 268 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "1zHwDTI0", "policyId": "sJ1Q0kph", "policyVersionId": "MTggSP2S"}], "authType": "LcuAP7vU", "code": "971Czw2n", "country": "bg8C7Mvy", "dateOfBirth": "whu6MjOj", "displayName": "uGzo1Fz4", "emailAddress": "tU0aSn98", "password": "N8qOUA0z", "passwordMD5Sum": "92RaDe8n", "reachMinimumAge": false, "username": "T8LRQkMn"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserV4'
delete_file $TEMP_FILE

#- 269 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "F2mdYY6Z", "policyId": "MfuTYTKs", "policyVersionId": "ue48qBEB"}], "authType": "NAV5BTe6", "country": "ec1zA92U", "dateOfBirth": "RCLSGPmR", "displayName": "BZWunHW7", "password": "MYvr6QA7", "reachMinimumAge": false, "username": "epc92HA9"}' \
    '4eACdeyf' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateUserFromInvitationV4'
delete_file $TEMP_FILE

#- 270 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"country": "UpgiPpf8", "dateOfBirth": "nxKJ3dnm", "displayName": "tPwa64Y4", "languageTag": "gPEKMhhu", "userName": "9a6f3xJN"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateUserV4'
delete_file $TEMP_FILE

#- 271 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "tUlKLlII", "emailAddress": "AeHbm5M6"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateUserEmailAddressV4'
delete_file $TEMP_FILE

#- 272 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "LsY1VMuI", "country": "EcRls68M", "dateOfBirth": "3MPMRPBe", "displayName": "pyyMz6zf", "emailAddress": "R1pvTYYt", "password": "DOiEi4Ru", "reachMinimumAge": true, "username": "cHCSGhpO", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpgradeHeadlessAccountWithVerificationCodeV4'
delete_file $TEMP_FILE

#- 273 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "lwOiuKGD", "password": "FgK49YuK", "username": "nXks0m8A"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpgradeHeadlessAccountV4'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT