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

OPERATIONS_COUNT=270

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
    '{"Code": "vguauw1x", "ContactType": "T7eMwSl9", "LanguageTag": "MLH0NnTJ"}' \
    '2ulNzBvw' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UserVerification'
delete_file $TEMP_FILE

#- 52 SendVerificationCode
$PYTHON -m $MODULE 'iam-send-verification-code' \
    '{"Context": "JaQa547J", "LanguageTag": "llvA8RWS", "LoginID": "pabUt7xk"}' \
    '6QxyWhfq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SendVerificationCode'
delete_file $TEMP_FILE

#- 53 Authorization
$PYTHON -m $MODULE 'iam-authorization' \
    'oWfJw2o8' \
    'oWUqvPCZ' \
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

#- 94 PublicCreateUserV2
$PYTHON -m $MODULE 'iam-public-create-user-v2' \
    '{"AuthType": "PBtkZMio", "Country": "4wcyhloV", "DisplayName": "S3rYp8Qt", "LoginId": "cEmCEVc7", "Password": "5UfeypWj", "PasswordMD5Sum": "DNhzCL5s"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserV2'
delete_file $TEMP_FILE

#- 95 PublicForgotPasswordV2
$PYTHON -m $MODULE 'iam-public-forgot-password-v2' \
    '{"Context": "WS2qwO76", "LanguageTag": "3iEklkzL", "LoginID": "m88LpLuY"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicForgotPasswordV2'
delete_file $TEMP_FILE

#- 96 PublicResetPasswordV2
$PYTHON -m $MODULE 'iam-public-reset-password-v2' \
    '{"Code": "RO3C55yH", "LoginID": "pwK2Jaqe", "NewPassword": "nDGn7a2N"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicResetPasswordV2'
delete_file $TEMP_FILE

#- 97 PublicGetUserByUserIDV2
$PYTHON -m $MODULE 'iam-public-get-user-by-user-idv2' \
    'UplWiLjq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserByUserIDV2'
delete_file $TEMP_FILE

#- 98 PublicUpdateUserV2
$PYTHON -m $MODULE 'iam-public-update-user-v2' \
    '{"Country": "06n6a0rW", "DateOfBirth": "8EfkpaXt", "DisplayName": "wYZJaQ4W", "LanguageTag": "bwNmsFYe"}' \
    'tjEurH8e' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateUserV2'
delete_file $TEMP_FILE

#- 99 PublicGetUserBan
$PYTHON -m $MODULE 'iam-public-get-user-ban' \
    'loJzNKtR' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserBan'
delete_file $TEMP_FILE

#- 100 PublicUpdatePasswordV2
$PYTHON -m $MODULE 'iam-public-update-password-v2' \
    '{"LanguageTag": "UaTz1ETd", "NewPassword": "smwzjkkn", "OldPassword": "9oiQl05g"}' \
    '7cO3ZMb6' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdatePasswordV2'
delete_file $TEMP_FILE

#- 101 GetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-get-list-justice-platform-accounts' \
    'Ojlo6DMN' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetListJusticePlatformAccounts'
delete_file $TEMP_FILE

#- 102 PublicPlatformLinkV2
$PYTHON -m $MODULE 'iam-public-platform-link-v2' \
    'pP2qMrTQ' \
    '1UpjfU6w' \
    'Jhy1jOVk' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicPlatformLinkV2'
delete_file $TEMP_FILE

#- 103 PublicDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-public-delete-platform-link-v2' \
    'kUlS7952' \
    '7EZ25Ia8' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDeletePlatformLinkV2'
delete_file $TEMP_FILE

#- 104 AdminGetBansTypeV3
$PYTHON -m $MODULE 'iam-admin-get-bans-type-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetBansTypeV3'
delete_file $TEMP_FILE

#- 105 AdminGetListBanReasonV3
$PYTHON -m $MODULE 'iam-admin-get-list-ban-reason-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetListBanReasonV3'
delete_file $TEMP_FILE

#- 106 AdminGetInputValidations
$PYTHON -m $MODULE 'iam-admin-get-input-validations' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetInputValidations'
delete_file $TEMP_FILE

#- 107 AdminUpdateInputValidations
$PYTHON -m $MODULE 'iam-admin-update-input-validations' \
    '[{"field": "uCeZFlLt", "validation": {"allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "description": [{"language": "EbA82jy7", "message": ["4lq0pDE5"]}], "isCustomRegex": true, "letterCase": "Rwh5b45e", "maxLength": 3, "maxRepeatingAlphaNum": 30, "maxRepeatingSpecialCharacter": 5, "minCharType": 77, "minLength": 88, "regex": "cSs3UOpA", "specialCharacterLocation": "wIp9rRtn", "specialCharacters": ["1PcCxdbu"]}}]' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateInputValidations'
delete_file $TEMP_FILE

#- 108 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'meYgOdEB' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminResetInputValidations'
delete_file $TEMP_FILE

#- 109 ListAdminsV3
$PYTHON -m $MODULE 'iam-list-admins-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListAdminsV3'
delete_file $TEMP_FILE

#- 110 AdminGetAgeRestrictionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-age-restriction-status-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetAgeRestrictionStatusV3'
delete_file $TEMP_FILE

#- 111 AdminUpdateAgeRestrictionConfigV3
$PYTHON -m $MODULE 'iam-admin-update-age-restriction-config-v3' \
    '{"ageRestriction": 96, "enable": false}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateAgeRestrictionConfigV3'
delete_file $TEMP_FILE

#- 112 AdminGetListCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-admin-get-list-country-age-restriction-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetListCountryAgeRestrictionV3'
delete_file $TEMP_FILE

#- 113 AdminUpdateCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-admin-update-country-age-restriction-v3' \
    '{"ageRestriction": 97}' \
    '3KFfU8ic' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateCountryAgeRestrictionV3'
delete_file $TEMP_FILE

#- 114 AdminGetBannedUsersV3
$PYTHON -m $MODULE 'iam-admin-get-banned-users-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetBannedUsersV3'
delete_file $TEMP_FILE

#- 115 AdminGetBansTypeWithNamespaceV3
$PYTHON -m $MODULE 'iam-admin-get-bans-type-with-namespace-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetBansTypeWithNamespaceV3'
delete_file $TEMP_FILE

#- 116 AdminGetClientsByNamespaceV3
$PYTHON -m $MODULE 'iam-admin-get-clients-by-namespace-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetClientsByNamespaceV3'
delete_file $TEMP_FILE

#- 117 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["H4081gRB"], "baseUri": "1GyLfLg4", "clientId": "RYuEbgUD", "clientName": "EcJyIvsP", "clientPermissions": [{"action": 44, "resource": "Or0BmV5i", "schedAction": 63, "schedCron": "vfwFjTSm", "schedRange": ["IEqoLyLe"]}], "namespace": "UGmomGX9", "oauthClientType": "sXTZ0v8p", "redirectUri": "qLfc5SwG", "secret": "nReUULDX"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateClientV3'
delete_file $TEMP_FILE

#- 118 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    '4QUIbb5n' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetClientsbyNamespacebyIDV3'
delete_file $TEMP_FILE

#- 119 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'h68ZnyUt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteClientV3'
delete_file $TEMP_FILE

#- 120 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["RvW9hNBS"], "baseUri": "FTtFrOmj", "clientName": "kFrFVA8t", "clientPermissions": [{"action": 47, "resource": "F34Xpt6Z", "schedAction": 23, "schedCron": "TTic0kr2", "schedRange": ["a0nI2oo7"]}], "namespace": "UHCJK5sp", "redirectUri": "0aCvIq3a"}' \
    'HVYIlewL' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateClientV3'
delete_file $TEMP_FILE

#- 121 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 86, "resource": "uHY83bGj"}]}' \
    '0HTeeWXl' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateClientPermissionV3'
delete_file $TEMP_FILE

#- 122 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 69, "resource": "cRidqctD"}]}' \
    'pygY0ax4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddClientPermissionsV3'
delete_file $TEMP_FILE

#- 123 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '61' \
    'D4MMO9Tw' \
    '2JH0qhWI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteClientPermissionV3'
delete_file $TEMP_FILE

#- 124 RetrieveAllThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAllThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 125 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 126 RetrieveAllSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-sso-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAllSSOLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 127 RetrieveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-third-party-login-platform-credential-v3' \
    'wHWTgzJF' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 128 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "RYw6t1IK", "AWSCognitoRegion": "ZLO6V4Od", "AWSCognitoUserPool": "e46QmCid", "AppId": "gdpP7RTC", "ClientId": "587lmUmB", "Environment": "ziPZBnpO", "FederationMetadataURL": "fkllxfq0", "IsActive": true, "KeyID": "rSjw5Hog", "OrganizationId": "0blM1d5M", "RedirectUri": "StYGczLI", "Secret": "NlEC0OEs", "TeamID": "E3yzIsUP"}' \
    '0NjluOrG' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AddThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 129 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'ZTzsLW7F' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 130 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "jfs9nIkc", "AWSCognitoRegion": "Z38fUEan", "AWSCognitoUserPool": "jKHbXfk1", "AppId": "zxdzxg0U", "ClientId": "XcRyHi3u", "Environment": "8BzVWu1t", "FederationMetadataURL": "OmhUtCgc", "IsActive": false, "KeyID": "vGrEbcZU", "OrganizationId": "DExH1tay", "RedirectUri": "OGXIHzMR", "Secret": "jMCtOJsE", "TeamID": "ijlrbpyy"}' \
    'EcQxVgJI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 131 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["jMZqcWfM"], "assignedNamespaces": ["l6dqrpD4"], "domain": "tnc3ZRB3", "roleId": "IkdtPfAJ"}' \
    'EomwenJv' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateThirdPartyLoginPlatformDomainV3'
delete_file $TEMP_FILE

#- 132 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "Q8grtQSv"}' \
    '6EcALcMI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteThirdPartyLoginPlatformDomainV3'
delete_file $TEMP_FILE

#- 133 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'Pms5bT51' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveSSOLoginPlatformCredential'
delete_file $TEMP_FILE

#- 134 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "M4yko8S0", "apiKey": "EnGLvGvf", "appId": "uSyCTyjj", "federationMetadataUrl": "4mCaiuMG", "isActive": true, "redirectUri": "5GJJooSX", "secret": "Ul3YU35Q", "ssoUrl": "HGpBABnO"}' \
    'lxDznICQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AddSSOLoginPlatformCredential'
delete_file $TEMP_FILE

#- 135 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'VyqBg34W' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteSSOLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 136 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "TtDkn0rt", "apiKey": "n6t0Yx4z", "appId": "12EaQ1rU", "federationMetadataUrl": "QYCNTiDX", "isActive": false, "redirectUri": "E3M2IsTH", "secret": "u8QwNyOl", "ssoUrl": "XfIWd0mc"}' \
    'q5T4SUc7' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateSSOPlatformCredential'
delete_file $TEMP_FILE

#- 137 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'cWfCKK6D' \
    'ij1gFcen' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserByPlatformUserIDV3'
delete_file $TEMP_FILE

#- 138 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'EMySPfhx' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAdminUsersByRoleIdV3'
delete_file $TEMP_FILE

#- 139 AdminGetUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-email-address-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserByEmailAddressV3'
delete_file $TEMP_FILE

#- 140 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["BenDiTiA"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminListUserIDByUserIDsV3'
delete_file $TEMP_FILE

#- 141 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["qFYmFKja"], "isAdmin": true, "roles": ["Lmmll6oe"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminInviteUserV3'
delete_file $TEMP_FILE

#- 142 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminListUsersV3'
delete_file $TEMP_FILE

#- 143 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminSearchUserV3'
delete_file $TEMP_FILE

#- 144 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["xId1OKGU"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetBulkUserByEmailAddressV3'
delete_file $TEMP_FILE

#- 145 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'N2Uznd7u' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserByUserIdV3'
delete_file $TEMP_FILE

#- 146 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"country": "Va7t14yv", "dateOfBirth": "SYSV52bH", "displayName": "ifCIf4ts", "languageTag": "uu6Pkam6", "userName": "tFSYFt4Z"}' \
    'xA2PzZFR' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserV3'
delete_file $TEMP_FILE

#- 147 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'kBNlg6hn' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserBanV3'
delete_file $TEMP_FILE

#- 148 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "5qusKyZA", "comment": "uV6uUvqM", "endDate": "0lV6UZMl", "reason": "EbxHNgJR", "skipNotif": false}' \
    'QExaunjd' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminBanUserV3'
delete_file $TEMP_FILE

#- 149 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": true}' \
    'nHUz44tx' \
    '4O6hamPw' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserBanV3'
delete_file $TEMP_FILE

#- 150 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "Noi071ez", "emailAddress": "DK56JFIG", "languageTag": "e1IMUCLc"}' \
    'N0DsaD5F' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminSendVerificationCodeV3'
delete_file $TEMP_FILE

#- 151 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "yBsFe9OY", "ContactType": "EJVsYffm", "LanguageTag": "hyx6J25P"}' \
    'rM4S3cB8' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminVerifyAccountV3'
delete_file $TEMP_FILE

#- 152 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'm17hEeLL' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserVerificationCode'
delete_file $TEMP_FILE

#- 153 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'goaYth6z' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserDeletionStatusV3'
delete_file $TEMP_FILE

#- 154 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": false}' \
    'f8eA45OM' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserDeletionStatusV3'
delete_file $TEMP_FILE

#- 155 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "vObWejo9", "country": "LfGeegJM", "dateOfBirth": "aBGR6D1Z", "displayName": "oZEZQkJ8", "emailAddress": "DSqFnhdK", "password": "vjFCFbSF"}' \
    'lEWoMPdg' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpgradeHeadlessAccountV3'
delete_file $TEMP_FILE

#- 156 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'K5zn62mh' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteUserInformationV3'
delete_file $TEMP_FILE

#- 157 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'nFSpCTlD' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserLoginHistoriesV3'
delete_file $TEMP_FILE

#- 158 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 78, "Resource": "BOcygvv2", "SchedAction": 75, "SchedCron": "AgfBGVza", "SchedRange": ["nbKYsB0g"]}]}' \
    'qJ8VhYSi' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserPermissionV3'
delete_file $TEMP_FILE

#- 159 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 21, "Resource": "Jl2p9rBx", "SchedAction": 79, "SchedCron": "5egapqxD", "SchedRange": ["y4cLfNjz"]}]}' \
    'zEZYA8jI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddUserPermissionsV3'
delete_file $TEMP_FILE

#- 160 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 20, "Resource": "MJb7cZ2b"}]' \
    'PsaLLpEB' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteUserPermissionBulkV3'
delete_file $TEMP_FILE

#- 161 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '95' \
    'EMk5AsKa' \
    'F2P44lXk' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteUserPermissionV3'
delete_file $TEMP_FILE

#- 162 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'I3zdiRiC' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserPlatformAccountsV3'
delete_file $TEMP_FILE

#- 163 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    '5IbPit71' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetListJusticePlatformAccounts'
delete_file $TEMP_FILE

#- 164 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'JWlYCoi4' \
    'nDfPu5V6' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateJusticeUser'
delete_file $TEMP_FILE

#- 165 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "QSYxEVOr", "platformUserId": "yVuZYmgU"}' \
    'eEPB5AGP' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminLinkPlatformAccount'
delete_file $TEMP_FILE

#- 166 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "gvk0Ztha"}' \
    'j0EBA4az' \
    'Rz0d56sm' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPlatformUnlinkV3'
delete_file $TEMP_FILE

#- 167 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'obor4p1P' \
    'lgQB9EcN' \
    'GOeBRY6G' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPlatformLinkV3'
delete_file $TEMP_FILE

#- 168 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["5ae07deD"]' \
    'LaZ8JCvb' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteUserRolesV3'
delete_file $TEMP_FILE

#- 169 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "eTfW0hgz", "roleId": "rabLJxEw"}]' \
    'JrEBmQ64' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminSaveUserRoleV3'
delete_file $TEMP_FILE

#- 170 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'haNOzlGu' \
    '68UYyupj' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddUserRoleV3'
delete_file $TEMP_FILE

#- 171 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'dDetnoT0' \
    'rfWtVPwQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteUserRoleV3'
delete_file $TEMP_FILE

#- 172 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "q6V92gbf"}' \
    'PouNdmP7' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserStatusV3'
delete_file $TEMP_FILE

#- 173 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'fckVnuDG' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminVerifyUserWithoutVerificationCodeV3'
delete_file $TEMP_FILE

#- 174 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRolesV3'
delete_file $TEMP_FILE

#- 175 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": true, "isWildcard": false, "managers": [{"displayName": "1p5tcR5z", "namespace": "8ZJLjSHc", "userId": "aR3X4tZm"}], "members": [{"displayName": "wr0QmOns", "namespace": "Eg49eXp0", "userId": "xQkZ2Jju"}], "permissions": [{"action": 44, "resource": "WWy0tU11", "schedAction": 82, "schedCron": "CeSrvejU", "schedRange": ["KwVfF37V"]}], "roleName": "r7mkDzFB"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateRoleV3'
delete_file $TEMP_FILE

#- 176 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'I1VwhkVS' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRoleV3'
delete_file $TEMP_FILE

#- 177 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'KDlNFOUH' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteRoleV3'
delete_file $TEMP_FILE

#- 178 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"isWildcard": true, "roleName": "JsvTsqk9"}' \
    'hg4hj6nU' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateRoleV3'
delete_file $TEMP_FILE

#- 179 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'debW6Usk' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRoleAdminStatusV3'
delete_file $TEMP_FILE

#- 180 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'bPkkZAk0' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateAdminRoleStatusV3'
delete_file $TEMP_FILE

#- 181 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    '1f1KxCtW' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRemoveRoleAdminV3'
delete_file $TEMP_FILE

#- 182 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'ADU2guN6' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRoleManagersV3'
delete_file $TEMP_FILE

#- 183 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "U9w13W1K", "namespace": "9TZQ4qRL", "userId": "Ei5wowE3"}]}' \
    '6rfmM0CC' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddRoleManagersV3'
delete_file $TEMP_FILE

#- 184 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "s35TPUPL", "namespace": "msY8WgwS", "userId": "x1DI5GH9"}]}' \
    'bv9ZTo2H' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRemoveRoleManagersV3'
delete_file $TEMP_FILE

#- 185 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'pA6pzjHp' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRoleMembersV3'
delete_file $TEMP_FILE

#- 186 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "ZO0E9iLg", "namespace": "RPJK3nBa", "userId": "e3GOgbQr"}]}' \
    'qra0Ptkf' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddRoleMembersV3'
delete_file $TEMP_FILE

#- 187 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "vOpY2ram", "namespace": "p5lnBn6x", "userId": "mBkfMtC6"}]}' \
    '6hFq0kPO' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRemoveRoleMembersV3'
delete_file $TEMP_FILE

#- 188 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 21, "resource": "ORm2XjlN", "schedAction": 60, "schedCron": "E5ecPzAm", "schedRange": ["i0ySJHfP"]}]}' \
    'loP1XkYK' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateRolePermissionsV3'
delete_file $TEMP_FILE

#- 189 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 76, "resource": "gIsDSFMP", "schedAction": 48, "schedCron": "Mhyw1OLZ", "schedRange": ["PVwwxH4B"]}]}' \
    'IDJuDoSh' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddRolePermissionsV3'
delete_file $TEMP_FILE

#- 190 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["MMftll8N"]' \
    '0VvChHz9' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteRolePermissionsV3'
delete_file $TEMP_FILE

#- 191 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '40' \
    'rmt7QWvE' \
    '8s6Uz8BR' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteRolePermissionV3'
delete_file $TEMP_FILE

#- 192 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetMyUserV3'
delete_file $TEMP_FILE

#- 193 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'uYWDTtL6' \
    'MTTRkCbb' \
    '9S5Q1IVH' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UserAuthenticationV3'
delete_file $TEMP_FILE

#- 194 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetCountryLocationV3'
delete_file $TEMP_FILE

#- 195 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'Logout'
delete_file $TEMP_FILE

#- 196 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'GT88prRE' \
    'BgYOWdHJ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRetrieveUserThirdPartyPlatformTokenV3'
delete_file $TEMP_FILE

#- 197 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    '9JumohtU' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RevokeUserV3'
delete_file $TEMP_FILE

#- 198 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    '13gf7TRi' \
    'code' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AuthorizeV3'
delete_file $TEMP_FILE

#- 199 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'NZj5w5y3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TokenIntrospectionV3'
delete_file $TEMP_FILE

#- 200 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetJWKSV3'
delete_file $TEMP_FILE

#- 201 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'HmK8QVOa' \
    '62eQZtbL' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveUserThirdPartyPlatformTokenV3'
delete_file $TEMP_FILE

#- 202 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'LcF671WL' \
    'tv38Hecc' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AuthCodeRequestV3'
delete_file $TEMP_FILE

#- 203 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'zopFmeRw' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PlatformTokenGrantV3'
delete_file $TEMP_FILE

#- 204 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetRevocationListV3'
delete_file $TEMP_FILE

#- 205 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'pcJBZyi3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TokenRevocationV3'
delete_file $TEMP_FILE

#- 206 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'client_credentials' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TokenGrantV3'
delete_file $TEMP_FILE

#- 207 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'LC4Kzeki' \
    'SzeyolnO' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PlatformAuthenticationV3'
delete_file $TEMP_FILE

#- 208 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetInputValidations'
delete_file $TEMP_FILE

#- 209 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3'
delete_file $TEMP_FILE

#- 210 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["Qt0joVHg"]}' \
    'CytC6lRG' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListUserIDByPlatformUserIDsV3'
delete_file $TEMP_FILE

#- 211 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    '98YxnHbR' \
    'doTKKeuS' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserByPlatformUserIDV3'
delete_file $TEMP_FILE

#- 212 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'jfZe9i1o' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetAsyncStatus'
delete_file $TEMP_FILE

#- 213 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSearchUserV3'
delete_file $TEMP_FILE

#- 214 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "sghF1hzi", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "47syJ5ib", "policyId": "zSHZeCLI", "policyVersionId": "vWPVRsdE"}], "authType": "qA61yTrM", "country": "gsycTgmP", "dateOfBirth": "zc20EuO5", "displayName": "dMqGDlSZ", "emailAddress": "PY07rEVS", "password": "jzHjL6Zb"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserV3'
delete_file $TEMP_FILE

#- 215 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'XjG6DSmp' \
    'p3op8hta' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CheckUserAvailability'
delete_file $TEMP_FILE

#- 216 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["RLxtW4Pv"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkGetUsers'
delete_file $TEMP_FILE

#- 217 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "FkESTULa", "languageTag": "t5F1Le7c"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicForgotPasswordV3'
delete_file $TEMP_FILE

#- 218 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'R7q6PWhZ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAdminInvitationV3'
delete_file $TEMP_FILE

#- 219 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "mKz41i1T", "policyId": "p78FipJH", "policyVersionId": "ahViJvLY"}], "authType": "W0kdmlk2", "country": "luqSOOA2", "dateOfBirth": "VOZBoNbB", "displayName": "98PuSGyk", "password": "qFzPwSMX"}' \
    'T53bBuL3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateUserFromInvitationV3'
delete_file $TEMP_FILE

#- 220 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"country": "8beOYDVu", "dateOfBirth": "HZQ9LYt6", "displayName": "w23Wf8iE", "languageTag": "Qo72sH0a", "userName": "RdcDlDyG"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserV3'
delete_file $TEMP_FILE

#- 221 PublicUpdateUserV3
$PYTHON -m $MODULE 'iam-public-update-user-v3' \
    '{"country": "csfIuI4D", "dateOfBirth": "v5lEJpK1", "displayName": "AyRlzsrR", "languageTag": "XEFZivQO", "userName": "HG6wVicN"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateUserV3'
delete_file $TEMP_FILE

#- 222 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "ratsvvHL", "emailAddress": "mIohfNIS", "languageTag": "LXMDWDdm"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSendVerificationCodeV3'
delete_file $TEMP_FILE

#- 223 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "5FE4lliQ", "contactType": "MnutJbpE", "languageTag": "o4mUNHFt"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUserVerificationV3'
delete_file $TEMP_FILE

#- 224 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "dml2xNvi", "country": "WacJc3Fm", "dateOfBirth": "7Z548uuK", "displayName": "goCBqS5u", "emailAddress": "IdCbwCee", "password": "q9ouEdDt"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpgradeHeadlessAccountV3'
delete_file $TEMP_FILE

#- 225 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "jOgsypLk", "password": "m2ZYew5H"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicVerifyHeadlessAccountV3'
delete_file $TEMP_FILE

#- 226 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "7Zm0gnYy", "newPassword": "j6MXf9G1", "oldPassword": "ntyebvoe"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdatePasswordV3'
delete_file $TEMP_FILE

#- 227 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'HenAALKt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateJusticeUser'
delete_file $TEMP_FILE

#- 228 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    '7EfxIH44' \
    '6oUnP2S7' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicPlatformLinkV3'
delete_file $TEMP_FILE

#- 229 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "4unXwg0J"}' \
    'KqVWW1rj' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicPlatformUnlinkV3'
delete_file $TEMP_FILE

#- 230 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'K1epwkAv' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicWebLinkPlatform'
delete_file $TEMP_FILE

#- 231 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'csYvbgfB' \
    'VPpTa8Yu' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicWebLinkPlatformEstablish'
delete_file $TEMP_FILE

#- 232 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "q7TKiNXm", "emailAddress": "z7eMrMD5", "newPassword": "TbaUxTCT"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ResetPasswordV3'
delete_file $TEMP_FILE

#- 233 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'ng0xjtdB' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserByUserIdV3'
delete_file $TEMP_FILE

#- 234 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'rjs3Kiyk' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserBanHistoryV3'
delete_file $TEMP_FILE

#- 235 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    't2Ck2gOl' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserLoginHistoriesV3'
delete_file $TEMP_FILE

#- 236 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'SatECZ2U' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserPlatformAccountsV3'
delete_file $TEMP_FILE

#- 237 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "gwQLqDqY", "platformUserId": "SxTPuVlB"}' \
    'qirdp3yx' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicLinkPlatformAccount'
delete_file $TEMP_FILE

#- 238 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'nsETl1Sv' \
    'hQudsjIh' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicValidateUserByUserIDAndPasswordV3'
delete_file $TEMP_FILE

#- 239 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetRolesV3'
delete_file $TEMP_FILE

#- 240 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'XdxiSoWp' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetRoleV3'
delete_file $TEMP_FILE

#- 241 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyUserV3'
delete_file $TEMP_FILE

#- 242 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'nnxgX7BC' \
    'PMqzQIxi' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PlatformAuthenticateSAMLV3Handler'
delete_file $TEMP_FILE

#- 243 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'bhpNYsHt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'LoginSSOClient'
delete_file $TEMP_FILE

#- 244 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'dB3Ikjua' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'LogoutSSOClient'
delete_file $TEMP_FILE

#- 245 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"country": "ZqhJilrZ", "dateOfBirth": "kSSKgP5r", "displayName": "xCR77G9d", "languageTag": "5CA1GORS", "userName": "bL9n0dbW"}' \
    'DEupmdLQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserV4'
delete_file $TEMP_FILE

#- 246 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "zPnNfBAc", "emailAddress": "WArbkCfd"}' \
    'HIZb03ot' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserEmailAddressV4'
delete_file $TEMP_FILE

#- 247 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'qmBuS9V2' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminListUserRolesV4'
delete_file $TEMP_FILE

#- 248 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["pCZ23UHm"], "roleId": "k0lpJ4JL"}' \
    'l01qi7L2' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateUserRoleV4'
delete_file $TEMP_FILE

#- 249 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["oDUoVRUb"], "roleId": "39j22P4S"}' \
    'p09cKmjR' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddUserRoleV4'
delete_file $TEMP_FILE

#- 250 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["UbZVBVS7"], "roleId": "OK2Zrdcs"}' \
    'ckMekROW' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRemoveUserRoleV4'
delete_file $TEMP_FILE

#- 251 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRolesV4'
delete_file $TEMP_FILE

#- 252 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": true, "isWildcard": false, "roleName": "K2eFaGLo"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateRoleV4'
delete_file $TEMP_FILE

#- 253 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'SmEEPbLy' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetRoleV4'
delete_file $TEMP_FILE

#- 254 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'wJsyUie6' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteRoleV4'
delete_file $TEMP_FILE

#- 255 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "isWildcard": false, "roleName": "LllUPsO8"}' \
    'lg46Si70' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateRoleV4'
delete_file $TEMP_FILE

#- 256 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 42, "resource": "L2w4aajD", "schedAction": 53, "schedCron": "Ox0iJjYl", "schedRange": ["eaktqv2W"]}]}' \
    'kljQuD5m' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateRolePermissionsV4'
delete_file $TEMP_FILE

#- 257 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 26, "resource": "JONqHGq8", "schedAction": 24, "schedCron": "B7mF2lMF", "schedRange": ["caghFXJI"]}]}' \
    'JflRHFcs' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddRolePermissionsV4'
delete_file $TEMP_FILE

#- 258 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["IqCy4xDi"]' \
    'fSSQ5On2' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteRolePermissionsV4'
delete_file $TEMP_FILE

#- 259 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'ccEcl3xe' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminListAssignedUsersV4'
delete_file $TEMP_FILE

#- 260 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["iO4bwF5J"], "namespace": "OjGoGxKM", "userId": "3qMce5tf"}' \
    'LcpjFZMK' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAssignUserToRoleV4'
delete_file $TEMP_FILE

#- 261 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "Cbp0pEbL", "userId": "CLFpHxMY"}' \
    'F836075x' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRevokeUserFromRoleV4'
delete_file $TEMP_FILE

#- 262 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"country": "EpzdnYtp", "dateOfBirth": "ja5ig2is", "displayName": "QZga6Vy7", "languageTag": "6izPiQRj", "userName": "Ya8fv5fI"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateMyUserV4'
delete_file $TEMP_FILE

#- 263 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["t22tIZhj"], "emailAddresses": ["hgkigW22"], "isAdmin": true, "roleId": "XMWXfbcM"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminInviteUserV4'
delete_file $TEMP_FILE

#- 264 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "LIbFCQgB", "policyId": "cLNT6iOQ", "policyVersionId": "VYx5rW2g"}], "authType": "MsI1aYBi", "country": "tSn3UDeK", "dateOfBirth": "j97I4WYX", "displayName": "LqjN7ktO", "emailAddress": "BTraBxWR", "password": "TVuYEqGl", "passwordMD5Sum": "KDwTKXBr", "username": "XiQcd9IW", "verified": false}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateTestUserV4'
delete_file $TEMP_FILE

#- 265 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "CKeQJWZB", "policyId": "vcq1ETvW", "policyVersionId": "BxYZJh7B"}], "authType": "8gbnSu9M", "country": "2OxD2uda", "dateOfBirth": "eYpCXYSM", "displayName": "iy87CTqE", "emailAddress": "QBg36my3", "password": "sY2clrDc", "passwordMD5Sum": "ain0cOVF", "username": "1zHwDTI0"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserV4'
delete_file $TEMP_FILE

#- 266 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "J1Q0kphM", "policyId": "TggSP2SL", "policyVersionId": "cuAP7vU9"}], "authType": "71Czw2nb", "country": "g8C7Mvyw", "dateOfBirth": "hu6MjOju", "displayName": "Gzo1Fz4t", "password": "U0aSn98N", "username": "8qOUA0z9"}' \
    '2RaDe8ng' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateUserFromInvitationV4'
delete_file $TEMP_FILE

#- 267 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"country": "T8LRQkMn", "dateOfBirth": "G1LZyF2m", "displayName": "dYY6ZMfu", "languageTag": "TYTKsue4", "userName": "8qBEBNAV"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateUserV4'
delete_file $TEMP_FILE

#- 268 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "5BTe6ec1", "emailAddress": "zA92URCL"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateUserEmailAddressV4'
delete_file $TEMP_FILE

#- 269 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "SGPmRBZW", "country": "unHW7MYv", "dateOfBirth": "r6QA7Ppe", "displayName": "pc92HA94", "emailAddress": "eACdeyfU", "password": "pgiPpf8n", "username": "xKJ3dnmt"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpgradeHeadlessAccountWithVerificationCodeV4'
delete_file $TEMP_FILE

#- 270 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "Pwa64Y4g", "password": "PEKMhhu9", "username": "a6f3xJNt"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpgradeHeadlessAccountV4'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT