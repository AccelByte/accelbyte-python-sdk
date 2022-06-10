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
iam-get-bans-type --login_with_auth "Bearer foo"
iam-get-list-ban-reason --login_with_auth "Bearer foo"
iam-get-client 'FtBxyZcD' --login_with_auth "Bearer foo"
iam-update-client '{"ClientName": "XBpGlsQu", "RedirectUri": "Ju8vMf0I"}' 'sJkTrd8I' --login_with_auth "Bearer foo"
iam-update-client-permission '{"Permissions": [{"Action": 59, "Resource": "cV2zXnTK"}]}' 'jXY1bPqa' --login_with_auth "Bearer foo"
iam-add-client-permission '24' 'iBxx9Cs1' '8EY84ekI' --login_with_auth "Bearer foo"
iam-delete-client-permission '39' 'qRzHU1oh' '570KQBVa' --login_with_auth "Bearer foo"
iam-update-client-secret '{"NewSecret": "ewc72krS"}' 'ha68n3Yn' --login_with_auth "Bearer foo"
iam-get-clientsby-namespace --login_with_auth "Bearer foo"
iam-create-client-by-namespace '{"ClientId": "ozp1C2Km", "ClientName": "IQTuBdNE", "ClientPermissions": [{"Action": 93, "Resource": "sxFb8CJ1", "SchedAction": 76, "SchedCron": "7DJZaMSx", "SchedRange": ["ECbZbygy"]}], "Namespace": "oarORoeN", "RedirectUri": "HSb8Rh3k", "Secret": "gs9qqJbn"}' --login_with_auth "Bearer foo"
iam-delete-client-by-namespace 'QsoBgiVp' --login_with_auth "Bearer foo"
iam-create-user '{"AuthType": "P8Cm3yvA", "Country": "SUoxdxxF", "DisplayName": "qmAGTJ8I", "LoginId": "EdagEtp4", "Password": "w29KOu9c", "PasswordMD5Sum": "19R6XDqW"}' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id --login_with_auth "Bearer foo"
iam-get-user-by-login-id --login_with_auth "Bearer foo"
iam-get-user-by-platform-user-id 'HkkP8npL' 'EKMfjiX7' --login_with_auth "Bearer foo"
iam-forgot-password '{"Context": "jpkVZk3I", "LanguageTag": "aQYEmqGo", "LoginID": "dOEGt9gP"}' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-users-by-login-ids --login_with_auth "Bearer foo"
iam-reset-password '{"Code": "Oj0c6i0J", "LoginID": "kvIas73u", "NewPassword": "cYnFAJ3D"}' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-user-by-user-id 'K5T4Eogg' --login_with_auth "Bearer foo"
iam-update-user '{"Country": "0Y39UoYl", "DateOfBirth": "pv5bVAgt", "DisplayName": "sDhUTDUs", "LanguageTag": "cbQDjbTQ"}' 'uPMz2PTR' --login_with_auth "Bearer foo"
iam-delete-user 'lkyU89ZP' --login_with_auth "Bearer foo"
iam-ban-user '{"ban": "Ow6zPFJ4", "comment": "2cwmzBBS", "endDate": "MNcoAAOj", "reason": "KNjfcYHm", "skipNotif": false}' 'YgBU1sqj' --login_with_auth "Bearer foo"
iam-get-user-ban-history 'yK0XH45P' --login_with_auth "Bearer foo"
iam-disable-user-ban 'aRSOFQBt' 'u23REZ8h' --login_with_auth "Bearer foo"
iam-enable-user-ban 'RVX7LGOv' 'DdYiQS9i' --login_with_auth "Bearer foo"
iam-get-user-information '7mV1C91p' --login_with_auth "Bearer foo"
iam-delete-user-information 'jG9gpxL6' --login_with_auth "Bearer foo"
iam-get-user-login-histories 'ycTQdvln' --login_with_auth "Bearer foo"
iam-save-user-permission '{"Permissions": [{"Action": 74, "Resource": "AuSQWEXL", "SchedAction": 74, "SchedCron": "FE1YHo9m", "SchedRange": ["126ZWc8h"]}]}' 'HtWvbNYq' --login_with_auth "Bearer foo"
iam-add-user-permission '{"SchedAction": 12, "SchedCron": "UqslArFP", "SchedRange": ["iHUIvaCv"]}' '20' 'U9dBBpds' 'JLhsVyEx' --login_with_auth "Bearer foo"
iam-delete-user-permission '35' 'kxoot0B7' 'WOfercZd' --login_with_auth "Bearer foo"
iam-get-user-platform-accounts 'pMci37Ds' --login_with_auth "Bearer foo"
iam-get-user-mapping '7YSfExaI' '3uzLteMb' --login_with_auth "Bearer foo"
iam-platform-link 'FAlt4hr7' 'HmOYiBA5' 'ltAOXmlG' --login_with_auth "Bearer foo"
iam-platform-unlink '6eh1dTdo' 'TFpBIcuC' --login_with_auth "Bearer foo"
iam-get-publisher-user '1dQY93OJ' --login_with_auth "Bearer foo"
iam-save-user-roles '["nJ6Te9vD"]' '8ldz7Hu8' --login_with_auth "Bearer foo"
iam-add-user-role 'AD79kdWu' 'nvizU0q1' --login_with_auth "Bearer foo"
iam-delete-user-role 'pHyhhERo' 'GgdrysMi' --login_with_auth "Bearer foo"
iam-upgrade-headless-account '{"LoginID": "zBGSRdP2", "Password": "l7DNSZ8A"}' 'q0XiPLQX' --login_with_auth "Bearer foo"
iam-upgrade-headless-account-with-verification-code '{"Code": "Se07ZddO", "Password": "GTMlJjBw", "loginId": "j9HJHQKs"}' 'eEdSXRDS' --login_with_auth "Bearer foo"
iam-user-verification '{"Code": "vguauw1x", "ContactType": "T7eMwSl9", "LanguageTag": "MLH0NnTJ", "validateOnly": true}' 'lNzBvwJa' --login_with_auth "Bearer foo"
iam-send-verification-code '{"Context": "Qa547Jll", "LanguageTag": "vA8RWSpa", "LoginID": "bUt7xk6Q"}' 'xyWhfqoW' --login_with_auth "Bearer foo"
iam-authorization 'fJw2o8oW' 'UqvPCZ2H' 'token' --login_with_auth "Bearer foo"
iam-get-jwks --login_with_auth "Bearer foo"
iam-revoke-user 'T7NXmWDl' --login_with_auth "Bearer foo"
iam-get-revocation-list --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant 'password' --login_with_auth "Bearer foo"
iam-verify-token 'uNIdQJR5' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-roles --login_with_auth "Bearer foo"
iam-create-role '{"AdminRole": false, "Managers": [{"DisplayName": "sNOlvkfw", "Namespace": "aSbnsuLC", "UserId": "gToxuVTe"}], "Members": [{"DisplayName": "kJgvg6h5", "Namespace": "HIpH0Dvi", "UserId": "plEk4vj3"}], "Permissions": [{"Action": 75, "Resource": "Dp4yqDt8", "SchedAction": 85, "SchedCron": "UZDpxlHa", "SchedRange": ["sinGcjrk"]}], "RoleName": "mRMttgjD"}' --login_with_auth "Bearer foo"
iam-get-role 'SaIVBmft' --login_with_auth "Bearer foo"
iam-update-role '{"RoleName": "3Udg7p9P"}' 'GmY2H5kX' --login_with_auth "Bearer foo"
iam-delete-role '4MsisSX2' --login_with_auth "Bearer foo"
iam-get-role-admin-status '8nARxWRp' --login_with_auth "Bearer foo"
iam-set-role-as-admin 'v5ou5xtv' --login_with_auth "Bearer foo"
iam-remove-role-admin 'd28OUfCt' --login_with_auth "Bearer foo"
iam-get-role-managers '8UJC5flN' --login_with_auth "Bearer foo"
iam-add-role-managers '{"Managers": [{"DisplayName": "yj6HsTtX", "Namespace": "8P3llnaa", "UserId": "S9lqyygP"}]}' 'cfkJIxfQ' --login_with_auth "Bearer foo"
iam-remove-role-managers '{"Managers": [{"DisplayName": "Zza8kNVb", "Namespace": "DxVMq7HJ", "UserId": "k0F89xAc"}]}' '3YVfaENt' --login_with_auth "Bearer foo"
iam-get-role-members 'rl0pTKZT' --login_with_auth "Bearer foo"
iam-add-role-members '{"Members": [{"DisplayName": "XqzHuBMY", "Namespace": "QSA2jz1Z", "UserId": "OpdOjSyM"}]}' 'ddB41JuM' --login_with_auth "Bearer foo"
iam-remove-role-members '{"Members": [{"DisplayName": "f7RUyBHR", "Namespace": "j8IiRimR", "UserId": "llHT6Dc4"}]}' '0vFFA6gp' --login_with_auth "Bearer foo"
iam-update-role-permissions '{"Permissions": [{"Action": 93, "Resource": "7EW3x1dC", "SchedAction": 30, "SchedCron": "m55gOeqQ", "SchedRange": ["IqcJVKmB"]}]}' 'M1J1IbuT' --login_with_auth "Bearer foo"
iam-add-role-permission '{"SchedAction": 35, "SchedCron": "rkbmuT1w", "SchedRange": ["hOqmEnDX"]}' '69' 'WrBPlSay' '46mv71BA' --login_with_auth "Bearer foo"
iam-delete-role-permission '53' 'OjtFJ2vm' 'Tj7tT7TZ' --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v2 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v2 '{"AgeRestriction": 67, "Enable": true}' --login_with_auth "Bearer foo"
iam-get-list-country-age-restriction --login_with_auth "Bearer foo"
iam-update-country-age-restriction '{"AgeRestriction": 6}' 'CkIsZoAr' --login_with_auth "Bearer foo"
iam-admin-search-users-v2 'WwPHcyFA' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v2 'dAtYciLI' --login_with_auth "Bearer foo"
iam-admin-update-user-v2 '{"Country": "gRwFRr0g", "DateOfBirth": "wB9tz3vp", "DisplayName": "99XVlV8r", "LanguageTag": "K3tE6n0s"}' 'mip1tw3L' --login_with_auth "Bearer foo"
iam-admin-ban-user-v2 '{"ban": "7cUd9pqt", "comment": "v6JfPZwc", "endDate": "CVOXcVa8", "reason": "0TmCwtD2", "skipNotif": false}' 'AH01o6Nd' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v2 'cBIgzrDy' --login_with_auth "Bearer foo"
iam-admin-disable-user-v2 '{"Reason": "WpFBYGmm"}' 'BawMyoKy' --login_with_auth "Bearer foo"
iam-admin-enable-user-v2 'NpdAasm8' --login_with_auth "Bearer foo"
iam-admin-reset-password-v2 '{"LanguageTag": "xwUfzOlQ", "NewPassword": "iZY4NbOQ", "OldPassword": "XJ7uOTzN"}' 'Mvuq2tNl' --login_with_auth "Bearer foo"
iam-admin-delete-platform-link-v2 '4CX4IjiK' '4DEUJRVK' --login_with_auth "Bearer foo"
iam-admin-put-user-roles-v2 '["3l9Eb0R1"]' 'XRb0RH8v' --login_with_auth "Bearer foo"
iam-admin-create-user-roles-v2 '["S1smeOln"]' 'grdTXCza' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction 'PBtkZMio' --login_with_auth "Bearer foo"
iam-public-create-user-v2 '{"AuthType": "4wcyhloV", "Country": "S3rYp8Qt", "DisplayName": "cEmCEVc7", "LoginId": "5UfeypWj", "Password": "DNhzCL5s", "PasswordMD5Sum": "WS2qwO76"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v2 '{"Context": "3iEklkzL", "LanguageTag": "m88LpLuY", "LoginID": "RO3C55yH"}' --login_with_auth "Bearer foo"
iam-public-reset-password-v2 '{"Code": "pwK2Jaqe", "LoginID": "nDGn7a2N", "NewPassword": "UplWiLjq"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-idv2 '06n6a0rW' --login_with_auth "Bearer foo"
iam-public-update-user-v2 '{"Country": "8EfkpaXt", "DateOfBirth": "wYZJaQ4W", "DisplayName": "bwNmsFYe", "LanguageTag": "tjEurH8e"}' 'loJzNKtR' --login_with_auth "Bearer foo"
iam-public-get-user-ban 'UaTz1ETd' --login_with_auth "Bearer foo"
iam-public-update-password-v2 '{"LanguageTag": "smwzjkkn", "NewPassword": "9oiQl05g", "OldPassword": "7cO3ZMb6"}' 'Ojlo6DMN' --login_with_auth "Bearer foo"
iam-get-list-justice-platform-accounts 'pP2qMrTQ' --login_with_auth "Bearer foo"
iam-public-platform-link-v2 '1UpjfU6w' 'Jhy1jOVk' 'kUlS7952' --login_with_auth "Bearer foo"
iam-public-delete-platform-link-v2 '7EZ25Ia8' 'uCeZFlLt' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-v3 --login_with_auth "Bearer foo"
iam-admin-get-list-ban-reason-v3 --login_with_auth "Bearer foo"
iam-admin-get-input-validations --login_with_auth "Bearer foo"
iam-admin-update-input-validations '[{"field": "EVpDAEbA", "validation": {"allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "description": [{"language": "0pDE5xRw", "message": ["h5b45ebp"]}], "isCustomRegex": false, "letterCase": "M7ScSs3U", "maxLength": 80, "maxRepeatingAlphaNum": 30, "maxRepeatingSpecialCharacter": 53, "minCharType": 44, "minLength": 68, "regex": "p9rRtn1P", "specialCharacterLocation": "cCxdbume", "specialCharacters": ["YgOdEBWR"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'QiW3KFfU' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 16, "enable": false}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 67}' '4081gRB1' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["GyLfLg4R"], "baseUri": "YuEbgUDE", "clientId": "cJyIvsPw", "clientName": "Or0BmV5i", "clientPermissions": [{"action": 63, "resource": "vfwFjTSm", "schedAction": 69, "schedCron": "EqoLyLeU", "schedRange": ["GmomGX9s"]}], "clientPlatform": "XTZ0v8pq", "deletable": false, "namespace": "c5SwGnRe", "oauthClientType": "UULDX4QU", "redirectUri": "Ibb5nh68", "secret": "ZnyUtRvW"}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 '9hNBSFTt' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'FrOmjkFr' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["FVA8t0xF"], "baseUri": "34Xpt6Zl", "clientName": "TTic0kr2", "clientPermissions": [{"action": 1, "resource": "0nI2oo7U", "schedAction": 67, "schedCron": "CJK5sp0a", "schedRange": ["CvIq3aHV"]}], "clientPlatform": "YIlewLRu", "deletable": false, "namespace": "Gj0HTeeW", "redirectUri": "XlIcRidq"}' 'ctDpygY0' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 0, "resource": "x476ED4M"}]}' 'MO9Tw2JH' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 33, "resource": "hWIwHWTg"}]}' 'zJFRYw6t' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '68' 'KZLO6V4O' 'de46QmCi' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'dgdpP7RT' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "C587lmUm", "AWSCognitoRegion": "BziPZBnp", "AWSCognitoUserPool": "Ofkllxfq", "AppId": "0NsrSjw5", "ClientId": "Hog0blM1", "Environment": "d5MStYGc", "FederationMetadataURL": "zLINlEC0", "GenericOauthFlow": true, "IsActive": true, "Issuer": "E3yzIsUP", "JWKSEndpoint": "0NjluOrG", "KeyID": "ZTzsLW7F", "OrganizationId": "jfs9nIkc", "PlatformName": "Z38fUEan", "RedirectUri": "jKHbXfk1", "Secret": "zxdzxg0U", "TeamID": "XcRyHi3u", "TokenAuthenticationType": "8BzVWu1t", "TokenClaimsMapping": {"OmhUtCgc": "pvGrEbcZ"}}' 'UDExH1ta' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'yOGXIHzM' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "RjMCtOJs", "AWSCognitoRegion": "Eijlrbpy", "AWSCognitoUserPool": "yEcQxVgJ", "AppId": "IjMZqcWf", "ClientId": "Ml6dqrpD", "Environment": "4tnc3ZRB", "FederationMetadataURL": "3IkdtPfA", "GenericOauthFlow": true, "IsActive": false, "Issuer": "mwenJvQ8", "JWKSEndpoint": "grtQSv6E", "KeyID": "cALcMIPm", "OrganizationId": "s5bT51M4", "PlatformName": "yko8S0En", "RedirectUri": "GLvGvfuS", "Secret": "yCTyjj4m", "TeamID": "CaiuMGKO", "TokenAuthenticationType": "F5GJJooS", "TokenClaimsMapping": {"XUl3YU35": "QHGpBABn"}}' 'OlxDznIC' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["QVyqBg34"], "assignedNamespaces": ["WTtDkn0r"], "domain": "tn6t0Yx4", "roleId": "z12EaQ1r"}' 'UQYCNTiD' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "X4jE3M2I"}' 'sTHu8QwN' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'yOlXfIWd' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "0mcq5T4S", "apiKey": "Uc7cWfCK", "appId": "K6Dij1gF", "federationMetadataUrl": "cenEMySP", "isActive": false, "redirectUri": "hxBenDiT", "secret": "iAqFYmFK", "ssoUrl": "jaELmmll"}' '6oexId1O' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'KGUN2Uzn' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "d7uVa7t1", "apiKey": "4yvSYSV5", "appId": "2bHifCIf", "federationMetadataUrl": "4tsuu6Pk", "isActive": false, "redirectUri": "m6tFSYFt", "secret": "4ZxA2PzZ", "ssoUrl": "FRkBNlg6"}' 'hn5qusKy' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'ZAuV6uUv' 'qM0lV6UZ' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'MlEbxHNg' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["JRiQExau"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["njdAqnHU"], "isAdmin": true, "roles": ["44tx4O6h"]}' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["amPwNoi0"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 '71ezDK56' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"country": "JFIGe1IM", "dateOfBirth": "UCLcN0Ds", "displayName": "aD5FyBsF", "languageTag": "e9OYEJVs", "userName": "Yffmhyx6"}' 'J25PrM4S' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 '3cB8m17h' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "EeLLgoaY", "comment": "th6zcf8e", "endDate": "A45OMvOb", "reason": "Wejo9LfG", "skipNotif": false}' 'egJMaBGR' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": false}' 'ZEZQkJ8D' 'SqFnhdKv' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "jFCFbSFl", "emailAddress": "EWoMPdgK", "languageTag": "5zn62mhn"}' 'FSpCTlDN' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "BOcygvv2", "ContactType": "LAgfBGVz", "LanguageTag": "anbKYsB0", "validateOnly": false}' 'qJ8VhYSi' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'kJl2p9rB' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'x8N5egap' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": true}' 'xDy4cLfN' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "jzzEZYA8", "country": "jIkMJb7c", "dateOfBirth": "Z2bPsaLL", "displayName": "pEBVEMk5", "emailAddress": "AsKaF2P4", "password": "4lXkI3zd", "validateOnly": false}' 'RiC5IbPi' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 't71JWlYC' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'oi4nDfPu' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 94, "Resource": "6QSYxEVO", "SchedAction": 34, "SchedCron": "yVuZYmgU", "SchedRange": ["eEPB5AGP"]}]}' 'gvk0Ztha' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 18, "Resource": "0EBA4azR", "SchedAction": 51, "SchedCron": "0d56smob", "SchedRange": ["or4p1Plg"]}]}' 'QB9EcNGO' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 8, "Resource": "BRY6G5ae"}]' '07deDLaZ' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '71' 'CvbeTfW0' 'hgzrabLJ' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'xEwJrEBm' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'Q64haNOz' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'lGu68UYy' 'upjdDetn' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "oT0rfWtV", "platformUserId": "PwQfq6V9"}' '2gbfPouN' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "dmP7fckV"}' 'nuDGvYIb' '1p5tcR5z' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 '8ZJLjSHc' 'aR3X4tZm' 'wr0QmOns' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["Eg49eXp0"]' 'xQkZ2Jju' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "wWWy0tU1", "roleId": "1PCeSrve"}]' 'jUKwVfF3' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 '7Vr7mkDz' 'FBI1Vwhk' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'VSKDlNFO' 'UHBJsvTs' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "k9hg4hj6"}' 'nUdebW6U' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'skbPkkZA' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "CtWADU2g", "namespace": "uN6U9w13", "userId": "W1K9TZQ4"}], "members": [{"displayName": "qRLEi5wo", "namespace": "wE36rfmM", "userId": "0CCs35TP"}], "permissions": [{"action": 92, "resource": "PLmsY8Wg", "schedAction": 45, "schedCron": "Sx1DI5GH", "schedRange": ["9bv9ZTo2"]}], "roleName": "HpA6pzjH"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'pZO0E9iL' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'gRPJK3nB' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": false, "roleName": "3GOgbQrq"}' 'ra0Ptkfv' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'OpY2ramp' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 '5lnBn6xm' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'BkfMtC66' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'hFq0kPOk' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "ORm2XjlN", "namespace": "EE5ecPzA", "userId": "mi0ySJHf"}]}' 'PloP1XkY' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "K4MgIsDS", "namespace": "FMPyMhyw", "userId": "1OLZPVww"}]}' 'xH4BIDJu' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'DoShMMft' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "ll8N0VvC", "namespace": "hHz9urmt", "userId": "7QWvE8s6"}]}' 'Uz8BRuYW' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "DTtL6MTT", "namespace": "RkCbb9S5", "userId": "Q1IVHGT8"}]}' '8prREBgY' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 80, "resource": "WdHJ9Jum", "schedAction": 28, "schedCron": "htU13gf7", "schedRange": ["TRigNZj5"]}]}' 'w5y3HmK8' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 85, "resource": "VOa62eQZ", "schedAction": 38, "schedCron": "bLLcF671", "schedRange": ["WLtv38He"]}]}' 'cczopFme' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["RwpcJBZy"]' 'i3mLC4Kz' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '9' 'kiSzeyol' 'nOQt0joV' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'HgCytC6l' 'RG98YxnH' 'bRdoTKKe' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'uSjfZe9i' '1osghF1h' 'zi1Nl47s' 'yJ5ibzSH' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'ZeCLIvWP' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'VRsdEqA6' '1yTrMgsy' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'cTgmPzc2' --login_with_auth "Bearer foo"
iam-authorize-v3 '0EuO5dMq' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'lSZPY07r' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-change2fa-method 'EVSjzHjL' '6ZbXjG6D' --login_with_auth "Bearer foo"
iam-verify2fa-code 'Smpp3op8' 'htaRLxtW' '4PvFkEST' 'False' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 't5F1Le7c' 'R7q6PWhZ' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'mmKz41i1' 'Tp78FipJ' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'HahViJvL' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Bearer foo"
iam-token-revocation-v3 'YW0kdmlk' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'uqSOOA2V' 'OZBoNbB9' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["8PuSGykq"]}' 'FzPwSMXT' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 '53bBuL38' 'beOYDVuH' --login_with_auth "Bearer foo"
iam-public-get-async-status 'ZQ9LYt6w' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "23Wf8iEQ", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "72sH0aRd", "policyId": "cDlDyGcs", "policyVersionId": "fIuI4Dv5"}], "authType": "lEJpK1Ay", "code": "RlzsrRXE", "country": "FZivQOHG", "dateOfBirth": "6wVicNra", "displayName": "tsvvHLmI", "emailAddress": "ohfNISLX", "password": "MDWDdm5F", "reachMinimumAge": true}' --login_with_auth "Bearer foo"
iam-check-user-availability '4lliQMnu' 'tJbpEo4m' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["UNHFtdml"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "2xNviWac", "languageTag": "Jc3Fm7Z5"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "48uuKgoC", "emailAddress": "BqS5uIdC"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "bwCeeq9o", "languageTag": "uEdDtjOg"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'sypLkm2Z' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "w5H7Zm0g", "policyId": "nYyj6MXf", "policyVersionId": "9G1ntyeb"}], "authType": "EMAILPASSWD", "country": "oeHenAAL", "dateOfBirth": "Kt7EfxIH", "displayName": "446oUnP2", "password": "S74unXwg", "reachMinimumAge": true}' 'VWW1rjK1' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"country": "epwkAvcs", "dateOfBirth": "YvbgfBVP", "displayName": "pTa8Yuq7", "languageTag": "TKiNXmz7", "userName": "eMrMD5Tb"}' --login_with_auth "Bearer foo"
iam-public-update-user-v3 '{"country": "aUxTCTng", "dateOfBirth": "0xjtdBrj", "displayName": "s3Kiykt2", "languageTag": "Ck2gOlSa", "userName": "tECZ2Ugw"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "QLqDqYSx", "emailAddress": "TPuVlBqi", "languageTag": "rdp3yxns"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "ETl1SvhQ", "contactType": "udsjIhXd", "languageTag": "xiSoWpnn", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "gX7BCPMq", "country": "zQIxibhp", "dateOfBirth": "NYsHtdB3", "displayName": "IkjuaZqh", "emailAddress": "JilrZkSS", "password": "KgP5rxCR", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "5CA1GORS", "password": "bL9n0dbW"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "DEupmdLQ", "newPassword": "zPnNfBAc", "oldPassword": "WArbkCfd"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'HIZb03ot' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'qmBuS9V2' 'pCZ23UHm' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "k0lpJ4JL"}' 'l01qi7L2' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'oDUoVRUb' --login_with_auth "Bearer foo"
iam-public-web-link-platform '39j22P4S' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'p09cKmjR' 'UbZVBVS7' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "OK2Zrdcs", "emailAddress": "ckMekROW", "newPassword": "Z2KUTqkK"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 '2eFaGLoS' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'mEEPbLyw' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'JsyUie6f' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'ZgLllUPs' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'O8lg46Si' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "7006vL2w", "platformUserId": "4aajDAOx"}' '0iJjYlea' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["ktqv2Wkl"], "requestId": "jQuD5mnJ"}' 'ONqHGq8m' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'B7mF2lMF' 'caghFXJI' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'JflRHFcs' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'IqCy4xDi' 'fSSQ5On2' --login_with_auth "Bearer foo"
iam-login-sso-client 'ccEcl3xe' --login_with_auth "Bearer foo"
iam-logout-sso-client 'iO4bwF5J' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["OjGoGxKM"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"country": "3qMce5tf", "dateOfBirth": "LcpjFZMK", "displayName": "Cbp0pEbL", "languageTag": "CLFpHxMY", "userName": "F836075x"}' 'EpzdnYtp' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "ja5ig2is", "emailAddress": "QZga6Vy7"}' '6izPiQRj' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'Ya8fv5fI' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 't22tIZhj' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["hgkigW22"], "roleId": "zXMWXfbc"}' 'M0GIALIb' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["FCQgBcLN"], "roleId": "T6iOQVYx"}' '5rW2gMsI' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["1aYBitSn"], "roleId": "3UDeKj97"}' 'I4WYXLqj' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "TraBxWRT"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'VuYEqGlK' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'DwTKXBrX' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "9IW8kiCK"}' 'eQJWZBvc' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 33, "resource": "1ETvWBxY", "schedAction": 70, "schedCron": "h7B8gbnS", "schedRange": ["u9M2OxD2"]}]}' 'udaeYpCX' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 100, "resource": "SMiy87CT", "schedAction": 33, "schedCron": "EQBg36my", "schedRange": ["3sY2clrD"]}]}' 'cain0cOV' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["F1zHwDTI"]' '0sJ1Q0kp' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'hMTggSP2' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["SLcuAP7v"], "namespace": "U971Czw2", "userId": "nbg8C7Mv"}' 'ywhu6MjO' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "juGzo1Fz", "userId": "4tU0aSn9"}' '8N8qOUA0' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"country": "z92RaDe8", "dateOfBirth": "ngT8LRQk", "displayName": "MnG1LZyF", "languageTag": "2mdYY6ZM", "userName": "fuTYTKsu"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-download-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'e48qBEBN' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["AV5BTe6e"], "emailAddresses": ["c1zA92UR"], "isAdmin": true, "roleId": "LSGPmRBZ"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "nHW7MYvr", "policyId": "6QA7Ppep", "policyVersionId": "c92HA94e"}], "authType": "EMAILPASSWD", "country": "CdeyfUpg", "dateOfBirth": "iPpf8nxK", "displayName": "J3dnmtPw", "emailAddress": "a64Y4gPE", "password": "KMhhu9a6", "passwordMD5Sum": "f3xJNtUl", "username": "KLlIIAeH", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "5M6LsY1V", "policyId": "MuIEcRls", "policyVersionId": "68M3MPMR"}], "authType": "EMAILPASSWD", "code": "epyyMz6z", "country": "fR1pvTYY", "dateOfBirth": "tDOiEi4R", "displayName": "uEcHCSGh", "emailAddress": "pOZQFlwO", "password": "iuKGDFgK", "passwordMD5Sum": "49YuKnXk", "reachMinimumAge": true, "username": "0m8ANrcR"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "l7ta3foj", "policyId": "A3h4MMW3", "policyVersionId": "AJ5zlsFB"}], "authType": "EMAILPASSWD", "country": "jvLYvmg6", "dateOfBirth": "avudQFF1", "displayName": "CPNY9u2d", "password": "VYdglOOo", "reachMinimumAge": true, "username": "eK0kPKmB"}' 'qVux3lXc' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"country": "D8aertAV", "dateOfBirth": "Cqs8XT8x", "displayName": "y3nJ06Kk", "languageTag": "seA0ARj9", "userName": "ricfayvn"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "hi8MDdY4", "emailAddress": "WLHoaUkY"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "nQp5egdm", "country": "VE8ImivN", "dateOfBirth": "tQxqWRKH", "displayName": "ohODoWOr", "emailAddress": "98kjBUas", "password": "9jjz2Frg", "reachMinimumAge": false, "username": "aGrcB7dI", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "5W8tKH8o", "password": "u9SdbxSX", "username": "crEFCwqe"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-get-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-download-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'GNLdIBRd' --login_with_auth "Bearer foo"
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
echo "1..304"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

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
    'liFQVMKE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetClient' test.out

#- 7 UpdateClient
$PYTHON -m $MODULE 'iam-update-client' \
    '{"ClientName": "zVUWlUWD", "RedirectUri": "s2x1EQU0"}' \
    'oepEvcja' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateClient' test.out

#- 8 DeleteClient
eval_tap 0 8 'DeleteClient # SKIP deprecated' test.out

#- 9 UpdateClientPermission
$PYTHON -m $MODULE 'iam-update-client-permission' \
    '{"Permissions": [{"Action": 88, "Resource": "gEh6jJnF"}]}' \
    'xinIHJ1o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UpdateClientPermission' test.out

#- 10 AddClientPermission
$PYTHON -m $MODULE 'iam-add-client-permission' \
    '1' \
    'q5Zznd5e' \
    'acobTsuR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AddClientPermission' test.out

#- 11 DeleteClientPermission
$PYTHON -m $MODULE 'iam-delete-client-permission' \
    '23' \
    'hreQVFID' \
    '3o8hJWVj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteClientPermission' test.out

#- 12 UpdateClientSecret
$PYTHON -m $MODULE 'iam-update-client-secret' \
    '{"NewSecret": "KIOAw70D"}' \
    'vAHhSGWU' \
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
    '{"ClientId": "vzq1Za3I", "ClientName": "BC4vQFsU", "ClientPermissions": [{"Action": 71, "Resource": "PfiaJp1r", "SchedAction": 38, "SchedCron": "7OBgBCe6", "SchedRange": ["N0eI65Mn"]}], "Namespace": "5tngEYXg", "RedirectUri": "PVT5CqXD", "Secret": "ZBVMJyJe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateClientByNamespace' test.out

#- 15 DeleteClientByNamespace
$PYTHON -m $MODULE 'iam-delete-client-by-namespace' \
    'KFO92YDt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DeleteClientByNamespace' test.out

#- 16 CreateUser
$PYTHON -m $MODULE 'iam-create-user' \
    '{"AuthType": "aZvJoKS0", "Country": "OxyipZuO", "DisplayName": "4N9S2YCg", "LoginId": "Ha6XBcvG", "Password": "RYk5rUtW", "PasswordMD5Sum": "HCnhmzzp"}' \
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
    'pV7tKNKY' \
    'UQVBXymW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetUserByPlatformUserID' test.out

#- 20 ForgotPassword
$PYTHON -m $MODULE 'iam-forgot-password' \
    '{"Context": "cNlHaFxY", "LanguageTag": "aGHUpmBF", "LoginID": "yOrFKtxG"}' \
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
    '{"Code": "NAi0fq4x", "LoginID": "ChPLd2lO", "NewPassword": "opc7XoVp"}' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 22 'ResetPassword' test.out

#- 23 SearchUser
eval_tap 0 23 'SearchUser # SKIP deprecated' test.out

#- 24 GetUserByUserID
$PYTHON -m $MODULE 'iam-get-user-by-user-id' \
    'dd6rCpyM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetUserByUserID' test.out

#- 25 UpdateUser
$PYTHON -m $MODULE 'iam-update-user' \
    '{"Country": "rnH9YHXh", "DateOfBirth": "7KnCVOKY", "DisplayName": "2zsBRGtd", "LanguageTag": "8QY2OLbi"}' \
    'jrvfr8hk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateUser' test.out

#- 26 DeleteUser
$PYTHON -m $MODULE 'iam-delete-user' \
    'njWUWdMU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteUser' test.out

#- 27 BanUser
$PYTHON -m $MODULE 'iam-ban-user' \
    '{"ban": "XHvw4pNl", "comment": "GLjdBxLM", "endDate": "079pDAbT", "reason": "gmsEYEq2", "skipNotif": false}' \
    'YK1vYm9f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BanUser' test.out

#- 28 GetUserBanHistory
$PYTHON -m $MODULE 'iam-get-user-ban-history' \
    'lXQ7CQoe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetUserBanHistory' test.out

#- 29 DisableUserBan
$PYTHON -m $MODULE 'iam-disable-user-ban' \
    'mnQG0dH0' \
    'NVM9VEHT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'DisableUserBan' test.out

#- 30 EnableUserBan
$PYTHON -m $MODULE 'iam-enable-user-ban' \
    'PqDhkcu5' \
    'vnz6GiNM' \
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
    'boBJHml0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetUserInformation' test.out

#- 35 DeleteUserInformation
$PYTHON -m $MODULE 'iam-delete-user-information' \
    'LJmpPi4m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteUserInformation' test.out

#- 36 GetUserLoginHistories
$PYTHON -m $MODULE 'iam-get-user-login-histories' \
    'qhruiCZL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetUserLoginHistories' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
$PYTHON -m $MODULE 'iam-save-user-permission' \
    '{"Permissions": [{"Action": 65, "Resource": "GP5UXkHN", "SchedAction": 90, "SchedCron": "Mapp5Sbo", "SchedRange": ["nsUJKADr"]}]}' \
    '60EkdFrp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SaveUserPermission' test.out

#- 39 AddUserPermission
$PYTHON -m $MODULE 'iam-add-user-permission' \
    '{"SchedAction": 75, "SchedCron": "sGt9yTXW", "SchedRange": ["USCQcMsH"]}' \
    '79' \
    '7reI22ks' \
    '7I12tAZc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AddUserPermission' test.out

#- 40 DeleteUserPermission
$PYTHON -m $MODULE 'iam-delete-user-permission' \
    '37' \
    'xxLx9XQe' \
    'qNWLm8cN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteUserPermission' test.out

#- 41 GetUserPlatformAccounts
$PYTHON -m $MODULE 'iam-get-user-platform-accounts' \
    'JbYH5J4W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserPlatformAccounts' test.out

#- 42 GetUserMapping
$PYTHON -m $MODULE 'iam-get-user-mapping' \
    'iJLv9NvH' \
    'wtw2Mjcy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetUserMapping' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
$PYTHON -m $MODULE 'iam-platform-link' \
    '9ZL6Zs5B' \
    'u2XYopLW' \
    'ZeUKJJNf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PlatformLink' test.out

#- 45 PlatformUnlink
$PYTHON -m $MODULE 'iam-platform-unlink' \
    'tRpGgk1i' \
    'seREzzRG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PlatformUnlink' test.out

#- 46 GetPublisherUser
$PYTHON -m $MODULE 'iam-get-publisher-user' \
    '6z9wmuHd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetPublisherUser' test.out

#- 47 SaveUserRoles
$PYTHON -m $MODULE 'iam-save-user-roles' \
    '["dyOdibI1"]' \
    'LVyqbdY8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'SaveUserRoles' test.out

#- 48 AddUserRole
$PYTHON -m $MODULE 'iam-add-user-role' \
    'DGZKAuoI' \
    'Kz3Pp3zL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AddUserRole' test.out

#- 49 DeleteUserRole
$PYTHON -m $MODULE 'iam-delete-user-role' \
    'WUxMzMtS' \
    'mMmZP8nG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteUserRole' test.out

#- 50 UpgradeHeadlessAccount
$PYTHON -m $MODULE 'iam-upgrade-headless-account' \
    '{"LoginID": "0FoQP8q7", "Password": "aSsb85gA"}' \
    'h9RD3ZzN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpgradeHeadlessAccount' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
$PYTHON -m $MODULE 'iam-upgrade-headless-account-with-verification-code' \
    '{"Code": "6N1iJ8lt", "Password": "t9IRqCfl", "loginId": "gln6r5f0"}' \
    's5H6lCf3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpgradeHeadlessAccountWithVerificationCode' test.out

#- 52 UserVerification
$PYTHON -m $MODULE 'iam-user-verification' \
    '{"Code": "QHa11hLL", "ContactType": "Cgw5av4L", "LanguageTag": "ExdabD8g", "validateOnly": false}' \
    'vHfMRupD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UserVerification' test.out

#- 53 SendVerificationCode
$PYTHON -m $MODULE 'iam-send-verification-code' \
    '{"Context": "A5xbjs3X", "LanguageTag": "RdHUJ0GC", "LoginID": "mflIXkgJ"}' \
    '6zkTwoak' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'SendVerificationCode' test.out

#- 54 Authorization
$PYTHON -m $MODULE 'iam-authorization' \
    'q7sEejFZ' \
    '1NtONXb9' \
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
    '9hsQHszI' \
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
    'frlzKpQd' \
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
    '{"AdminRole": false, "Managers": [{"DisplayName": "58dZP5Rv", "Namespace": "rinNtvBt", "UserId": "qFSkA68m"}], "Members": [{"DisplayName": "IVYJ5pSV", "Namespace": "xBsLhty3", "UserId": "pecToXA4"}], "Permissions": [{"Action": 77, "Resource": "1oUFPhgo", "SchedAction": 25, "SchedCron": "wNC4FY69", "SchedRange": ["mM87joJN"]}], "RoleName": "OGB83Ns6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'CreateRole' test.out

#- 65 GetRole
$PYTHON -m $MODULE 'iam-get-role' \
    'Hl5Poab6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetRole' test.out

#- 66 UpdateRole
$PYTHON -m $MODULE 'iam-update-role' \
    '{"RoleName": "lKoVqNBU"}' \
    'zIxOfglq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'UpdateRole' test.out

#- 67 DeleteRole
$PYTHON -m $MODULE 'iam-delete-role' \
    'uS2q2DoW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'DeleteRole' test.out

#- 68 GetRoleAdminStatus
$PYTHON -m $MODULE 'iam-get-role-admin-status' \
    'r9zvFtKa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'GetRoleAdminStatus' test.out

#- 69 SetRoleAsAdmin
$PYTHON -m $MODULE 'iam-set-role-as-admin' \
    '2mOAqOok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'SetRoleAsAdmin' test.out

#- 70 RemoveRoleAdmin
$PYTHON -m $MODULE 'iam-remove-role-admin' \
    'V1plxQ2Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'RemoveRoleAdmin' test.out

#- 71 GetRoleManagers
$PYTHON -m $MODULE 'iam-get-role-managers' \
    'riTPfipD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'GetRoleManagers' test.out

#- 72 AddRoleManagers
$PYTHON -m $MODULE 'iam-add-role-managers' \
    '{"Managers": [{"DisplayName": "67jI2hiZ", "Namespace": "krtLnh2U", "UserId": "1RQlMxkf"}]}' \
    'NMPNtqv2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'AddRoleManagers' test.out

#- 73 RemoveRoleManagers
$PYTHON -m $MODULE 'iam-remove-role-managers' \
    '{"Managers": [{"DisplayName": "TMz1b7Sn", "Namespace": "zkXOek83", "UserId": "Igm1wkSW"}]}' \
    'sYvAsu18' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'RemoveRoleManagers' test.out

#- 74 GetRoleMembers
$PYTHON -m $MODULE 'iam-get-role-members' \
    'obUdc8mb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'GetRoleMembers' test.out

#- 75 AddRoleMembers
$PYTHON -m $MODULE 'iam-add-role-members' \
    '{"Members": [{"DisplayName": "vXcwcgMq", "Namespace": "OXMziXrV", "UserId": "dsEc3ClF"}]}' \
    'P3mJwusC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'AddRoleMembers' test.out

#- 76 RemoveRoleMembers
$PYTHON -m $MODULE 'iam-remove-role-members' \
    '{"Members": [{"DisplayName": "BTe4kLcu", "Namespace": "qL40NYge", "UserId": "kRavpaGT"}]}' \
    'A9BTyCCy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'RemoveRoleMembers' test.out

#- 77 UpdateRolePermissions
$PYTHON -m $MODULE 'iam-update-role-permissions' \
    '{"Permissions": [{"Action": 79, "Resource": "4Fw9i6mI", "SchedAction": 96, "SchedCron": "3tjjCqPV", "SchedRange": ["yYs01hEY"]}]}' \
    'zWw3qrcx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UpdateRolePermissions' test.out

#- 78 AddRolePermission
$PYTHON -m $MODULE 'iam-add-role-permission' \
    '{"SchedAction": 77, "SchedCron": "0DPAXQBN", "SchedRange": ["MP7j3xfP"]}' \
    '1' \
    'oZaWFspk' \
    'U5kn6PlP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'AddRolePermission' test.out

#- 79 DeleteRolePermission
$PYTHON -m $MODULE 'iam-delete-role-permission' \
    '33' \
    'D4AgfasB' \
    'fclBhZjZ' \
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
    '{"AgeRestriction": 3, "Enable": false}' \
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
    '{"AgeRestriction": 24}' \
    'ghKwPyVI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateCountryAgeRestriction' test.out

#- 84 AdminSearchUsersV2
$PYTHON -m $MODULE 'iam-admin-search-users-v2' \
    'n3qaHP7K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'AdminSearchUsersV2' test.out

#- 85 AdminGetUserByUserIdV2
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v2' \
    'NulyfrEN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'AdminGetUserByUserIdV2' test.out

#- 86 AdminUpdateUserV2
$PYTHON -m $MODULE 'iam-admin-update-user-v2' \
    '{"Country": "VQkpcaWH", "DateOfBirth": "f6T2xOOl", "DisplayName": "jn7c6c9e", "LanguageTag": "fJI02TZx"}' \
    'rgLBFJEk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'AdminUpdateUserV2' test.out

#- 87 AdminBanUserV2
$PYTHON -m $MODULE 'iam-admin-ban-user-v2' \
    '{"ban": "phFz0h6W", "comment": "poVpVc2H", "endDate": "BBmj6cEi", "reason": "02hXl42u", "skipNotif": false}' \
    'CRfy4GjK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'AdminBanUserV2' test.out

#- 88 AdminGetUserBanV2
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v2' \
    'n5ItHXLD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'AdminGetUserBanV2' test.out

#- 89 AdminDisableUserV2
$PYTHON -m $MODULE 'iam-admin-disable-user-v2' \
    '{"Reason": "ZqpRhqnR"}' \
    '742GcbLu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'AdminDisableUserV2' test.out

#- 90 AdminEnableUserV2
$PYTHON -m $MODULE 'iam-admin-enable-user-v2' \
    'QOGMOEzm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'AdminEnableUserV2' test.out

#- 91 AdminResetPasswordV2
$PYTHON -m $MODULE 'iam-admin-reset-password-v2' \
    '{"LanguageTag": "djNhT0S4", "NewPassword": "6kqyfMBS", "OldPassword": "aZc4SA16"}' \
    'M8gQCD7a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'AdminResetPasswordV2' test.out

#- 92 AdminDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-admin-delete-platform-link-v2' \
    'BHWCYevN' \
    'kfcQvl4O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'AdminDeletePlatformLinkV2' test.out

#- 93 AdminPutUserRolesV2
$PYTHON -m $MODULE 'iam-admin-put-user-roles-v2' \
    '["so7tx65z"]' \
    'XCiTfjor' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'AdminPutUserRolesV2' test.out

#- 94 AdminCreateUserRolesV2
$PYTHON -m $MODULE 'iam-admin-create-user-roles-v2' \
    '["LFqTmIUF"]' \
    'UoonHBI1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'AdminCreateUserRolesV2' test.out

#- 95 PublicGetCountryAgeRestriction
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction' \
    '3SZFHfm0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PublicGetCountryAgeRestriction' test.out

#- 96 PublicCreateUserV2
$PYTHON -m $MODULE 'iam-public-create-user-v2' \
    '{"AuthType": "F8vS2BrZ", "Country": "3nq88YSS", "DisplayName": "D7zV0C8F", "LoginId": "vVU3kRXB", "Password": "GPXIdft1", "PasswordMD5Sum": "biZHuhWy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'PublicCreateUserV2' test.out

#- 97 PublicForgotPasswordV2
$PYTHON -m $MODULE 'iam-public-forgot-password-v2' \
    '{"Context": "FPHdXcyv", "LanguageTag": "ZEhYeUSy", "LoginID": "5Ukc65na"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicForgotPasswordV2' test.out

#- 98 PublicResetPasswordV2
$PYTHON -m $MODULE 'iam-public-reset-password-v2' \
    '{"Code": "P11R8Xww", "LoginID": "9vq9nMa2", "NewPassword": "Btgwyuf2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'PublicResetPasswordV2' test.out

#- 99 PublicGetUserByUserIDV2
$PYTHON -m $MODULE 'iam-public-get-user-by-user-idv2' \
    'fjV30SLx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'PublicGetUserByUserIDV2' test.out

#- 100 PublicUpdateUserV2
$PYTHON -m $MODULE 'iam-public-update-user-v2' \
    '{"Country": "i7uyhaeF", "DateOfBirth": "tcO9XNy6", "DisplayName": "3QO9vW0c", "LanguageTag": "k7TEDE8L"}' \
    'eEQBeGPL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'PublicUpdateUserV2' test.out

#- 101 PublicGetUserBan
$PYTHON -m $MODULE 'iam-public-get-user-ban' \
    'iE6tHCr0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'PublicGetUserBan' test.out

#- 102 PublicUpdatePasswordV2
$PYTHON -m $MODULE 'iam-public-update-password-v2' \
    '{"LanguageTag": "GPFvT0SA", "NewPassword": "K91y5vCe", "OldPassword": "BIJq0B9U"}' \
    'cI6c5cre' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdatePasswordV2' test.out

#- 103 GetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-get-list-justice-platform-accounts' \
    '9ealHOZp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetListJusticePlatformAccounts' test.out

#- 104 PublicPlatformLinkV2
$PYTHON -m $MODULE 'iam-public-platform-link-v2' \
    'hcLncnjn' \
    'myU8FSxX' \
    'dCrskoFq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'PublicPlatformLinkV2' test.out

#- 105 PublicDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-public-delete-platform-link-v2' \
    'nowq9Laz' \
    '1GLt5Mhf' \
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
    '[{"field": "8Z7ahmbV", "validation": {"allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "description": [{"language": "FfRRLUjf", "message": ["WS9sftIf"]}], "isCustomRegex": false, "letterCase": "5bUTSXOv", "maxLength": 82, "maxRepeatingAlphaNum": 77, "maxRepeatingSpecialCharacter": 4, "minCharType": 87, "minLength": 81, "regex": "6E2Mkre5", "specialCharacterLocation": "q7FvaACp", "specialCharacters": ["6he0fzjk"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'PNNS0Bfg' \
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
    '{"ageRestriction": 62, "enable": false}' \
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
    '{"ageRestriction": 26}' \
    'IRsZ5hrq' \
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
    '{"audiences": ["NzVszGVP"], "baseUri": "5P1iwhcf", "clientId": "30C1KHRZ", "clientName": "HMGy5vbf", "clientPermissions": [{"action": 43, "resource": "YIFFctEK", "schedAction": 81, "schedCron": "LxSRxe0w", "schedRange": ["mWBMcNiW"]}], "clientPlatform": "oobB6o6a", "deletable": false, "namespace": "TQcP0EpE", "oauthClientType": "9wGNVwkg", "redirectUri": "fJJ2HIal", "secret": "fzgRpTf9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'AdminCreateClientV3' test.out

#- 120 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'lxF1JPBi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 121 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'zXZtrGe8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminDeleteClientV3' test.out

#- 122 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["LyOH24nn"], "baseUri": "eZHFeRld", "clientName": "0bGA7JxW", "clientPermissions": [{"action": 100, "resource": "zaEaimvo", "schedAction": 21, "schedCron": "cWX59kwi", "schedRange": ["YHgHT6Iv"]}], "clientPlatform": "d0fGpU20", "deletable": false, "namespace": "VRclumQT", "redirectUri": "Fvr5rRyY"}' \
    'zaNmz3Pj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminUpdateClientV3' test.out

#- 123 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 76, "resource": "x2T89NTr"}]}' \
    'FRUCXFkr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminUpdateClientPermissionV3' test.out

#- 124 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 40, "resource": "xegpkcXC"}]}' \
    'fzgcvv0W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminAddClientPermissionsV3' test.out

#- 125 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '60' \
    '5EQhcomP' \
    'S1E7cpsL' \
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
    'gr2zEnjy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "RNjEC3FM", "AWSCognitoRegion": "DcZvwwf8", "AWSCognitoUserPool": "aU98In31", "AppId": "mF4jlwKy", "ClientId": "GxTF1l5q", "Environment": "1Np0sT1X", "FederationMetadataURL": "8J2eAWOz", "GenericOauthFlow": false, "IsActive": false, "Issuer": "h9UzIfnh", "JWKSEndpoint": "oo6xUmTl", "KeyID": "eUnJFM7X", "OrganizationId": "hoDxGik2", "PlatformName": "JSfZ64wW", "RedirectUri": "ePq6103P", "Secret": "ONKIS7F9", "TeamID": "emW4R15t", "TokenAuthenticationType": "AsiG31CE", "TokenClaimsMapping": {"yUOuOZhm": "nHkvek6A"}}' \
    'a5kNnocl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'xs9kxcvI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "pV7mCYfW", "AWSCognitoRegion": "KjY9CsQY", "AWSCognitoUserPool": "sGyhEOnt", "AppId": "EkedM1A0", "ClientId": "bFqvjxbT", "Environment": "3YuVdaBN", "FederationMetadataURL": "5RSjhcju", "GenericOauthFlow": true, "IsActive": true, "Issuer": "NrXL845j", "JWKSEndpoint": "fh5tZ0hq", "KeyID": "JLjQUmoY", "OrganizationId": "UnC849OB", "PlatformName": "NuLZtofG", "RedirectUri": "AAaMpBQA", "Secret": "rU4RS0FQ", "TeamID": "Ry5Qz5Vc", "TokenAuthenticationType": "yfBpHjtv", "TokenClaimsMapping": {"FwKSJyZe": "qvpevcVX"}}' \
    'Txs9LTor' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["Iyx23LhL"], "assignedNamespaces": ["y7ds3g3B"], "domain": "uHTPF19d", "roleId": "BYFws5Ya"}' \
    '4eOwWqW8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "HiLpTi1W"}' \
    '63HccgM5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'kYu36JpT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "L55W4ws3", "apiKey": "KCyplY1o", "appId": "cKDCVaqr", "federationMetadataUrl": "VeegT3uG", "isActive": true, "redirectUri": "IIcvuuok", "secret": "t8TC38mY", "ssoUrl": "oUanQT4M"}' \
    'mznv7r2j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'thibgeCL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "X41qyOiL", "apiKey": "gd8Wy739", "appId": "QHzw0TEz", "federationMetadataUrl": "pd7TV5vh", "isActive": false, "redirectUri": "3DM6etfI", "secret": "7TzC3sKm", "ssoUrl": "tsyEKdO6"}' \
    'HNm3zGu7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    '1qTSSJEb' \
    'WlETp9XO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'CA1X3HHM' \
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
    '{"userIds": ["TlakAWQf"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["BuBAOCjB"], "isAdmin": false, "roles": ["YCcplye2"]}' \
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
    '{"listEmailAddressRequest": ["GaPNzkrg"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'BH4icml6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"country": "L36Vg2F2", "dateOfBirth": "Q9aZDJg1", "displayName": "OT8109ot", "languageTag": "70TevJgs", "userName": "b2PyFfJ6"}' \
    'qcHABdGt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'V9jAPqon' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "7UmLNy9P", "comment": "kF9SnlbW", "endDate": "NcAxv8uH", "reason": "DqJtYC7r", "skipNotif": true}' \
    'nwNdLhqX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": false}' \
    'jvc0BMeg' \
    'JpW1Zeuh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "pLX1BHZ4", "emailAddress": "hnOmmyXu", "languageTag": "6XtjNCqY"}' \
    'k9TPUKcD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "TfR7dpUE", "ContactType": "o2Oe08Hp", "LanguageTag": "eJBfG0nG", "validateOnly": false}' \
    '5lw2TlkP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'IxL9v4fp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'Cd0Uk5h1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": false}' \
    'P1pkkT08' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "Cs6DdXZW", "country": "owBgZizM", "dateOfBirth": "vwHszf84", "displayName": "MAmayJJ6", "emailAddress": "vzDTXxsy", "password": "IaTgp0pw", "validateOnly": false}' \
    'EJL15kxO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    '4oVUPng5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'JsHAkI47' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 19, "Resource": "O1wuAFuZ", "SchedAction": 4, "SchedCron": "UwPteKdQ", "SchedRange": ["gUTF33fY"]}]}' \
    'WZfQMAnz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 16, "Resource": "ThaE2btn", "SchedAction": 41, "SchedCron": "p9GeTQ7X", "SchedRange": ["ymDSQNYX"]}]}' \
    'NEpZyFhI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 8, "Resource": "qiNHtVSn"}]' \
    'hxby8F6x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '62' \
    '8MhbJAYE' \
    'DN1xszpp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'R69nsKAS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    '5zKsTRXd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    '7b3v2fkZ' \
    'Ikr06ojU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminCreateJusticeUser' test.out

#- 167 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "toVJLGXe", "platformUserId": "komvwD84"}' \
    '9mo5vIkD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminLinkPlatformAccount' test.out

#- 168 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "ZYrYEf1x"}' \
    'YnlxHHXj' \
    'FoXtwKW6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminPlatformUnlinkV3' test.out

#- 169 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'AOnqnWCu' \
    'XMWqG8fN' \
    'prJx82nA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformLinkV3' test.out

#- 170 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["FexNou1A"]' \
    'icsQjKx5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserRolesV3' test.out

#- 171 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "LjetHEw0", "roleId": "aCQpU6EG"}]' \
    'OW0VAI87' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminSaveUserRoleV3' test.out

#- 172 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'DPH0fLLi' \
    'Uqzay0gE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserRoleV3' test.out

#- 173 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'T8T53yEe' \
    'j7DsqsTv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserRoleV3' test.out

#- 174 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "XqfqMJHG"}' \
    'eHaN2k1E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserStatusV3' test.out

#- 175 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'utm9AAWD' \
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
    '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "3ISBgZCA", "namespace": "f2pWOWs4", "userId": "I2lOHfiu"}], "members": [{"displayName": "4HraKYMt", "namespace": "gBmvCHMt", "userId": "F15a7T0I"}], "permissions": [{"action": 15, "resource": "eywiPE1W", "schedAction": 93, "schedCron": "R1PTFfJJ", "schedRange": ["46kzfqap"]}], "roleName": "bByIKoYz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateRoleV3' test.out

#- 178 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'YtTWJA3n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminGetRoleV3' test.out

#- 179 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'FCDgWOpz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteRoleV3' test.out

#- 180 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": false, "roleName": "qbeVG7i4"}' \
    'VTAhuFYh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateRoleV3' test.out

#- 181 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'EgQBb9Hn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminGetRoleAdminStatusV3' test.out

#- 182 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'i6lDMj9g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateAdminRoleStatusV3' test.out

#- 183 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'vkBcQjQ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminRemoveRoleAdminV3' test.out

#- 184 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    '6RuAvUlM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminGetRoleManagersV3' test.out

#- 185 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "Wp8WGpZx", "namespace": "Ce0KsmXt", "userId": "GBbKrV58"}]}' \
    'TIThQ52P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminAddRoleManagersV3' test.out

#- 186 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "YNknBCji", "namespace": "rw4hmfMS", "userId": "l2bETuFL"}]}' \
    'FOfdl0yR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminRemoveRoleManagersV3' test.out

#- 187 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'ndbO78R8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRoleMembersV3' test.out

#- 188 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "ybYsHx3B", "namespace": "IgGuo817", "userId": "lZA58OI2"}]}' \
    'LMYRX16n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminAddRoleMembersV3' test.out

#- 189 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "fCJ833JK", "namespace": "RNcdpuCx", "userId": "SDFWMVcs"}]}' \
    'OZlS0ule' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminRemoveRoleMembersV3' test.out

#- 190 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 34, "resource": "U61drwLn", "schedAction": 13, "schedCron": "bZxOGxFw", "schedRange": ["nmB60ea7"]}]}' \
    'XItZS8KI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateRolePermissionsV3' test.out

#- 191 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 40, "resource": "9T604oPa", "schedAction": 18, "schedCron": "gyShKuLB", "schedRange": ["7pQLZiWV"]}]}' \
    'mc8PVwSh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminAddRolePermissionsV3' test.out

#- 192 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["VQz7FY3h"]' \
    '2oVVScVv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminDeleteRolePermissionsV3' test.out

#- 193 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '100' \
    'TBM4teOp' \
    'qevsWvMh' \
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
    'iheE2KM7' \
    'Ctal5z7h' \
    'LiOYz1jF' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 195 'UserAuthenticationV3' test.out

#- 196 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'fu1y1d77' \
    'D8ZNOfHy' \
    'enhbRZ4a' \
    '9UjjjU0E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AuthenticationWithPlatformLinkV3' test.out

#- 197 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'ggYLcGiE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 198 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'GetCountryLocationV3' test.out

#- 199 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'Logout' test.out

#- 200 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'DZbDl9Ze' \
    'ZH3M87v0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 201 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'FhdKDEfX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'RevokeUserV3' test.out

#- 202 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'RhaO0AYS' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 202 'AuthorizeV3' test.out

#- 203 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'vcV2Lqfg' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 203 'TokenIntrospectionV3' test.out

#- 204 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GetJWKSV3' test.out

#- 205 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'CX28Je4k' \
    'yPQjgDJN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'Change2faMethod' test.out

#- 206 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'OEMtdEtN' \
    '4sEebnQu' \
    'cgaop5NE' \
    'False' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'Verify2faCode' test.out

#- 207 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'hurScNiU' \
    'xnJUewUV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 208 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'hkGRRTgL' \
    'Cb9evywZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AuthCodeRequestV3' test.out

#- 209 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'ywunLImN' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 209 'PlatformTokenGrantV3' test.out

#- 210 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'GetRevocationListV3' test.out

#- 211 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'hyZsb7Yh' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 211 'TokenRevocationV3' test.out

#- 212 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'authorization_code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 212 'TokenGrantV3' test.out

#- 213 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'QbDxLRKx' \
    'zUtpKDC8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'PlatformAuthenticationV3' test.out

#- 214 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'PublicGetInputValidations' test.out

#- 215 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 216 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["gl2otjUW"]}' \
    'KxgW6n8A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 217 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'JaeqxTPg' \
    'ZKFi3SBG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'PublicGetUserByPlatformUserIDV3' test.out

#- 218 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'lCD4ig5Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'PublicGetAsyncStatus' test.out

#- 219 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'PublicSearchUserV3' test.out

#- 220 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "RoJd1as1", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "fh3l8HyG", "policyId": "WZTdpmTx", "policyVersionId": "PUBFjTII"}], "authType": "KcXlxPfd", "code": "DyjJ0wwr", "country": "YeljMyoe", "dateOfBirth": "b3gsMOMd", "displayName": "qbt4PnuF", "emailAddress": "r18ijp3C", "password": "mzrfVIa1", "reachMinimumAge": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'PublicCreateUserV3' test.out

#- 221 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'i9oky2P7' \
    'fIgBRSBl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'CheckUserAvailability' test.out

#- 222 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["xukoOTCo"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'PublicBulkGetUsers' test.out

#- 223 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "sjAXo6lj", "languageTag": "BVW8r7ny"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'PublicSendRegistrationCode' test.out

#- 224 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "NcVl6ZB3", "emailAddress": "bGHupBuA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'PublicVerifyRegistrationCode' test.out

#- 225 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "L2avXKOj", "languageTag": "wGRJbZqX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'PublicForgotPasswordV3' test.out

#- 226 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'gQ9azOre' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'GetAdminInvitationV3' test.out

#- 227 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "viZmgm0l", "policyId": "8Yr4wmgi", "policyVersionId": "wIF5Zx5T"}], "authType": "EMAILPASSWD", "country": "BtL3zT6x", "dateOfBirth": "RqyV0tlL", "displayName": "aMYL1p95", "password": "v9mOiIFE", "reachMinimumAge": false}' \
    'Q2RKeQy2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'CreateUserFromInvitationV3' test.out

#- 228 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"country": "WRztR5qz", "dateOfBirth": "tuhVaJDW", "displayName": "x2OdrUV7", "languageTag": "bhcKGIOZ", "userName": "cB6NWffX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'UpdateUserV3' test.out

#- 229 PublicUpdateUserV3
$PYTHON -m $MODULE 'iam-public-update-user-v3' \
    '{"country": "kYzes2xH", "dateOfBirth": "p1ufZNxh", "displayName": "bsaSFtTm", "languageTag": "bIf2hFQR", "userName": "msi02mel"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'PublicUpdateUserV3' test.out

#- 230 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "JQkLtV2Q", "emailAddress": "nPsmhFVP", "languageTag": "tJTGig12"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'PublicSendVerificationCodeV3' test.out

#- 231 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "OdDnxXuJ", "contactType": "oZgOG4tO", "languageTag": "eWVMI9K1", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicUserVerificationV3' test.out

#- 232 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "J6xC2h6U", "country": "8TgR2k2R", "dateOfBirth": "kEr8XbmQ", "displayName": "Nuv80Em9", "emailAddress": "nuffLGUW", "password": "nVBQPhww", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicUpgradeHeadlessAccountV3' test.out

#- 233 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "yfFcSCdk", "password": "fe5eawFp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicVerifyHeadlessAccountV3' test.out

#- 234 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "dHeH5p8Z", "newPassword": "x8jy7nxG", "oldPassword": "zOTBpmmj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicUpdatePasswordV3' test.out

#- 235 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'uEEEyDtw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateJusticeUser' test.out

#- 236 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'btA8xsmm' \
    'caOLdFif' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PublicPlatformLinkV3' test.out

#- 237 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "Uk9p700j"}' \
    'B0p4HpK8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicPlatformUnlinkV3' test.out

#- 238 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'pvufSxYM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicPlatformUnlinkAllV3' test.out

#- 239 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    '0VkuqOKr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicWebLinkPlatform' test.out

#- 240 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'hvMwvD04' \
    'UY8ghvsm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicWebLinkPlatformEstablish' test.out

#- 241 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "SrrJzAi6", "emailAddress": "FOuhQIBA", "newPassword": "bup1fpWs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'ResetPasswordV3' test.out

#- 242 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'O6fW468f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicGetUserByUserIdV3' test.out

#- 243 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'WxqRkJDj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserBanHistoryV3' test.out

#- 244 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'fNhYDgVm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 245 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    '0TCaos4w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserLoginHistoriesV3' test.out

#- 246 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'yjaPP6Cl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicGetUserPlatformAccountsV3' test.out

#- 247 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "ekQGm25K", "platformUserId": "YmFZxQr4"}' \
    'xbV63gcd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicLinkPlatformAccount' test.out

#- 248 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["U4vyIPJe"], "requestId": "RjCj7UK5"}' \
    'nEmwsQtS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicForceLinkPlatformWithProgression' test.out

#- 249 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'fDqA4Cys' \
    'EX4VOy0n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 250 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicGetRolesV3' test.out

#- 251 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    '2EkPBjC4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicGetRoleV3' test.out

#- 252 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicGetMyUserV3' test.out

#- 253 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'ecHwtSGz' \
    'ayUaDh3m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PlatformAuthenticateSAMLV3Handler' test.out

#- 254 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    '2eX31qVP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'LoginSSOClient' test.out

#- 255 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'H2VHDznf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'LogoutSSOClient' test.out

#- 256 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["57fQ1PY5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'AdminBulkCheckValidUserIDV4' test.out

#- 257 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"country": "uDkQ8zpN", "dateOfBirth": "RwycEASh", "displayName": "pFLpqAx1", "languageTag": "N5IGebNu", "userName": "vyrghVds"}' \
    'SwDc9NJR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'AdminUpdateUserV4' test.out

#- 258 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "X9ZdaC8s", "emailAddress": "ja1J7euc"}' \
    'GSSxZJPt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'AdminUpdateUserEmailAddressV4' test.out

#- 259 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'o04wTEI8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'AdminDisableUserMFAV4' test.out

#- 260 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'isXmyAGW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'AdminListUserRolesV4' test.out

#- 261 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["2rZ7bYvV"], "roleId": "W26Oaysx"}' \
    '72rwV3Md' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'AdminUpdateUserRoleV4' test.out

#- 262 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["XNVRDzT2"], "roleId": "sBbflg7c"}' \
    'D247c1XY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'AdminAddUserRoleV4' test.out

#- 263 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["YJf18StY"], "roleId": "u6wb2We3"}' \
    'Q6Pm7RBk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'AdminRemoveUserRoleV4' test.out

#- 264 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'AdminGetRolesV4' test.out

#- 265 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "P4CWnZJj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'AdminCreateRoleV4' test.out

#- 266 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'XdiUv9ow' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'AdminGetRoleV4' test.out

#- 267 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'F1mQrc03' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'AdminDeleteRoleV4' test.out

#- 268 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "Y5ZJChQt"}' \
    'pD2U9IQz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'AdminUpdateRoleV4' test.out

#- 269 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 53, "resource": "2eexjq3T", "schedAction": 10, "schedCron": "nJ6ryQ4w", "schedRange": ["Cg5Itn9T"]}]}' \
    'YOR2n8qF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'AdminUpdateRolePermissionsV4' test.out

#- 270 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 19, "resource": "jSZx0FeR", "schedAction": 7, "schedCron": "mgOta6pc", "schedRange": ["KzSPfek3"]}]}' \
    '69fIM1tc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'AdminAddRolePermissionsV4' test.out

#- 271 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["xwt2XqPF"]' \
    'aIxBgzRO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'AdminDeleteRolePermissionsV4' test.out

#- 272 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    '8GKycdcX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'AdminListAssignedUsersV4' test.out

#- 273 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["uULpvuBN"], "namespace": "RzUbH0hI", "userId": "7yCEyjKX"}' \
    'QPnomAsH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'AdminAssignUserToRoleV4' test.out

#- 274 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "MpmDvt4t", "userId": "kWavQ0jo"}' \
    '17Qq6AFd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'AdminRevokeUserFromRoleV4' test.out

#- 275 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"country": "E7URb19B", "dateOfBirth": "cvWfPxHP", "displayName": "QaUClyAj", "languageTag": "fGkGwDso", "userName": "o09NdZjN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'AdminUpdateMyUserV4' test.out

#- 276 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'AdminDisableMyAuthenticatorV4' test.out

#- 277 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'AdminEnableMyAuthenticatorV4' test.out

#- 278 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 279 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'AdminGetMyBackupCodesV4' test.out

#- 280 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'AdminGenerateMyBackupCodesV4' test.out

#- 281 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'AdminDisableMyBackupCodesV4' test.out

#- 282 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminDownloadMyBackupCodesV4' test.out

#- 283 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminEnableMyBackupCodesV4' test.out

#- 284 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminGetMyEnabledFactorsV4' test.out

#- 285 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'jjtl8XIG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminMakeFactorMyDefaultV4' test.out

#- 286 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["ZV3GBXIH"], "emailAddresses": ["xWGX4iww"], "isAdmin": false, "roleId": "haKvD9nN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminInviteUserV4' test.out

#- 287 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Li2tRrcl", "policyId": "M3o5FmkW", "policyVersionId": "cIpWlbLN"}], "authType": "EMAILPASSWD", "country": "QciSm2Ob", "dateOfBirth": "iacE1VtV", "displayName": "P5yWKB3d", "emailAddress": "hO4E5cHb", "password": "V6Tq3mak", "passwordMD5Sum": "niWG9Ata", "username": "znHrmvF1", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicCreateTestUserV4' test.out

#- 288 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "LFxAkQrs", "policyId": "QXCUjnXN", "policyVersionId": "ZpacdMfX"}], "authType": "EMAILPASSWD", "code": "a5msSId5", "country": "56xncCH3", "dateOfBirth": "7zoQElCS", "displayName": "NpKYpjKm", "emailAddress": "IIb0iBSA", "password": "7vdLvUFJ", "passwordMD5Sum": "7qN6ucqf", "reachMinimumAge": true, "username": "h42FD6A3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicCreateUserV4' test.out

#- 289 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "chLvxRuU", "policyId": "LxDjXJ9B", "policyVersionId": "FwEyGUCv"}], "authType": "EMAILPASSWD", "country": "BlPmENb7", "dateOfBirth": "inSCGzNu", "displayName": "HpABtt9G", "password": "gpAZjcg8", "reachMinimumAge": true, "username": "9cH6u6Sm"}' \
    'VFciDGuf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'CreateUserFromInvitationV4' test.out

#- 290 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"country": "TZk7gk6n", "dateOfBirth": "ZZgUCWs5", "displayName": "b2flAnrs", "languageTag": "ypCRQfPh", "userName": "fO9Eamej"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicUpdateUserV4' test.out

#- 291 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "28Jum6va", "emailAddress": "oBRuMFZb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicUpdateUserEmailAddressV4' test.out

#- 292 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "Zvy6mJ2j", "country": "HxdpqHuB", "dateOfBirth": "ibSpyFVn", "displayName": "kERZ9gwl", "emailAddress": "M0hF50v8", "password": "sFHE2trW", "reachMinimumAge": false, "username": "Rr4XS8ek", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 293 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "PTpbukLG", "password": "w4HJ51V5", "username": "Dd7JZjCv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicUpgradeHeadlessAccountV4' test.out

#- 294 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicDisableMyAuthenticatorV4' test.out

#- 295 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicEnableMyAuthenticatorV4' test.out

#- 296 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 297 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetMyBackupCodesV4' test.out

#- 298 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicGenerateMyBackupCodesV4' test.out

#- 299 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicDisableMyBackupCodesV4' test.out

#- 300 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicDownloadMyBackupCodesV4' test.out

#- 301 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicEnableMyBackupCodesV4' test.out

#- 302 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicRemoveTrustedDeviceV4' test.out

#- 303 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicGetMyEnabledFactorsV4' test.out

#- 304 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'oCnb0By8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
