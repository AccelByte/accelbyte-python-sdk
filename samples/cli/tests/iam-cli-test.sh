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
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "C587lmUm", "AWSCognitoRegion": "BziPZBnp", "AWSCognitoUserPool": "Ofkllxfq", "AppId": "0NsrSjw5", "ClientId": "Hog0blM1", "Environment": "d5MStYGc", "FederationMetadataURL": "zLINlEC0", "GenericOauthFlow": true, "IsActive": true, "Issuer": "E3yzIsUP", "JWKSEndpoint": "0NjluOrG", "KeyID": "ZTzsLW7F", "NetflixCertificates": {"encryptedPrivateKey": "jfs9nIkc", "publicCertificate": "Z38fUEan", "rootCertificate": "jKHbXfk1"}, "OrganizationId": "zxdzxg0U", "PlatformName": "XcRyHi3u", "RedirectUri": "8BzVWu1t", "Secret": "OmhUtCgc", "TeamID": "pvGrEbcZ", "TokenAuthenticationType": "UDExH1ta", "TokenClaimsMapping": {"yOGXIHzM": "RjMCtOJs"}}' 'Eijlrbpy' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'yEcQxVgJ' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "IjMZqcWf", "AWSCognitoRegion": "Ml6dqrpD", "AWSCognitoUserPool": "4tnc3ZRB", "AppId": "3IkdtPfA", "ClientId": "JEomwenJ", "Environment": "vQ8grtQS", "FederationMetadataURL": "v6EcALcM", "GenericOauthFlow": false, "IsActive": true, "Issuer": "5bT51M4y", "JWKSEndpoint": "ko8S0EnG", "KeyID": "LvGvfuSy", "NetflixCertificates": {"encryptedPrivateKey": "CTyjj4mC", "publicCertificate": "aiuMGKOF", "rootCertificate": "5GJJooSX"}, "OrganizationId": "Ul3YU35Q", "PlatformName": "HGpBABnO", "RedirectUri": "lxDznICQ", "Secret": "VyqBg34W", "TeamID": "TtDkn0rt", "TokenAuthenticationType": "n6t0Yx4z", "TokenClaimsMapping": {"12EaQ1rU": "QYCNTiDX"}}' '4jE3M2Is' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["THu8QwNy"], "assignedNamespaces": ["OlXfIWd0"], "domain": "mcq5T4SU", "roleId": "c7cWfCKK"}' '6Dij1gFc' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "enEMySPf"}' 'hxBenDiT' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'iAqFYmFK' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "jaELmmll", "apiKey": "6oexId1O", "appId": "KGUN2Uzn", "federationMetadataUrl": "d7uVa7t1", "isActive": true, "redirectUri": "vSYSV52b", "secret": "HifCIf4t", "ssoUrl": "suu6Pkam"}' '6tFSYFt4' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'ZxA2PzZF' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "RkBNlg6h", "apiKey": "n5qusKyZ", "appId": "AuV6uUvq", "federationMetadataUrl": "M0lV6UZM", "isActive": false, "redirectUri": "EbxHNgJR", "secret": "iQExaunj", "ssoUrl": "dAqnHUz4"}' '4tx4O6ha' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'mPwNoi07' '1ezDK56J' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'FIGe1IMU' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["CLcN0Dsa"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["D5FyBsFe"], "isAdmin": true, "roles": ["JVsYffmh"]}' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["yx6J25Pr"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'M4S3cB8m' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "17hEeLLg", "country": "oaYth6zc", "dateOfBirth": "f8eA45OM", "displayName": "vObWejo9", "languageTag": "LfGeegJM", "userName": "aBGR6D1Z"}' 'oZEZQkJ8' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'DSqFnhdK' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "vjFCFbSF", "comment": "lEWoMPdg", "endDate": "K5zn62mh", "reason": "nFSpCTlD", "skipNotif": true}' 'Ocygvv2L' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": false}' 'fBGVzanb' 'KYsB0gqJ' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "8VhYSikJ", "emailAddress": "l2p9rBx8", "languageTag": "N5egapqx"}' 'Dy4cLfNj' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "zzEZYA8j", "ContactType": "IkMJb7cZ", "LanguageTag": "2bPsaLLp", "validateOnly": true}' 'BVEMk5As' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'KaF2P44l' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'XkI3zdiR' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": false}' 'C5IbPit7' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "1JWlYCoi", "country": "4nDfPu5V", "dateOfBirth": "6QSYxEVO", "displayName": "ryVuZYmg", "emailAddress": "UeEPB5AG", "password": "Pgvk0Zth", "validateOnly": false}' 'j0EBA4az' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'Rz0d56sm' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'obor4p1P' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 22, "Resource": "gQB9EcNG", "SchedAction": 80, "SchedCron": "eBRY6G5a", "SchedRange": ["e07deDLa"]}]}' 'Z8JCvbeT' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 11, "Resource": "W0hgzrab", "SchedAction": 74, "SchedCron": "JxEwJrEB", "SchedRange": ["mQ64haNO"]}]}' 'zlGu68UY' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 48, "Resource": "upjdDetn"}]' 'oT0rfWtV' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '82' 'wQfq6V92' 'gbfPouNd' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'mP7fckVn' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'uDGvYIb1' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'p5tcR5z8' 'ZJLjSHca' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "R3X4tZmw", "platformUserId": "r0QmOnsE"}' 'g49eXp0x' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "QkZ2Jjuw"}' 'WWy0tU11' 'PCeSrvej' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'UKwVfF37' 'Vr7mkDzF' 'BI1VwhkV' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["SKDlNFOU"]' 'HBJsvTsq' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "k9hg4hj6", "roleId": "nUdebW6U"}]' 'skbPkkZA' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'k01f1KxC' 'tWADU2gu' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'N6U9w13W' '1K9TZQ4q' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "i5wowE36"}' 'rfmM0CCs' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 '35TPUPLm' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "Sx1DI5GH", "namespace": "9bv9ZTo2", "userId": "HpA6pzjH"}], "members": [{"displayName": "pZO0E9iL", "namespace": "gRPJK3nB", "userId": "ae3GOgbQ"}], "permissions": [{"action": 34, "resource": "qra0Ptkf", "schedAction": 43, "schedCron": "OpY2ramp", "schedRange": ["5lnBn6xm"]}], "roleName": "BkfMtC66"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'hFq0kPOk' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'ORm2XjlN' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": true, "roleName": "5ecPzAmi"}' '0ySJHfPl' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'oP1XkYK4' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'MgIsDSFM' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'PyMhyw1O' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'LZPVwwxH' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "4BIDJuDo", "namespace": "ShMMftll", "userId": "8N0VvChH"}]}' 'z9urmt7Q' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "WvE8s6Uz", "namespace": "8BRuYWDT", "userId": "tL6MTTRk"}]}' 'Cbb9S5Q1' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'IVHGT88p' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "rREBgYOW", "namespace": "dHJ9Jumo", "userId": "htU13gf7"}]}' 'TRigNZj5' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "w5y3HmK8", "namespace": "QVOa62eQ", "userId": "ZtbLLcF6"}]}' '71WLtv38' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 67, "resource": "ecczopFm", "schedAction": 9, "schedCron": "RwpcJBZy", "schedRange": ["i3mLC4Kz"]}]}' 'ekiSzeyo' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 23, "resource": "nOQt0joV", "schedAction": 67, "schedCron": "gCytC6lR", "schedRange": ["G98YxnHb"]}]}' 'RdoTKKeu' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["SjfZe9i1"]' 'osghF1hz' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '16' '1Nl47syJ' '5ibzSHZe' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'CLIvWPVR' 'sdEqA61y' 'TrMgsycT' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'gmPzc20E' 'uO5dMqGD' 'lSZPY07r' 'EVSjzHjL' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 '6ZbXjG6D' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'Smpp3op8' 'htaRLxtW' --login_with_auth "Bearer foo"
iam-revoke-user-v3 '4PvFkEST' --login_with_auth "Bearer foo"
iam-authorize-v3 'ULat5F1L' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 '7cR7q6PW' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-change2fa-method 'hZmmKz41' 'i1Tp78Fi' --login_with_auth "Bearer foo"
iam-verify2fa-code 'pJHahViJ' 'vLYW0kdm' 'lk2luqSO' 'True' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 '2VOZBoNb' 'B98PuSGy' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'kqFzPwSM' 'XT53bBuL' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 '38beOYDV' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Bearer foo"
iam-token-revocation-v3 'uHZQ9LYt' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'password' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 '23Wf8iEQ' 'o72sH0aR' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["dcDlDyGc"]}' 'sfIuI4Dv' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 '5lEJpK1A' 'yRlzsrRX' --login_with_auth "Bearer foo"
iam-public-get-async-status 'EFZivQOH' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "G6wVicNr", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "tsvvHLmI", "policyId": "ohfNISLX", "policyVersionId": "MDWDdm5F"}], "authType": "E4lliQMn", "code": "utJbpEo4", "country": "mUNHFtdm", "dateOfBirth": "l2xNviWa", "displayName": "cJc3Fm7Z", "emailAddress": "548uuKgo", "password": "CBqS5uId", "reachMinimumAge": true}' --login_with_auth "Bearer foo"
iam-check-user-availability 'bwCeeq9o' 'uEdDtjOg' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["sypLkm2Z"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "Yew5H7Zm", "languageTag": "0gnYyj6M"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "Xf9G1nty", "emailAddress": "ebvoeHen"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "AALKt7Ef", "languageTag": "xIH446oU"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'nP2S74un' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "g0JKqVWW", "policyId": "1rjK1epw", "policyVersionId": "kAvcsYvb"}], "authType": "EMAILPASSWD", "country": "fBVPpTa8", "dateOfBirth": "Yuq7TKiN", "displayName": "Xmz7eMrM", "password": "D5TbaUxT", "reachMinimumAge": true}' 'Tng0xjtd' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "Brjs3Kiy", "country": "kt2Ck2gO", "dateOfBirth": "lSatECZ2", "displayName": "UgwQLqDq", "languageTag": "YSxTPuVl", "userName": "Bqirdp3y"}' --login_with_auth "Bearer foo"
iam-public-update-user-v3 '{"avatarUrl": "xnsETl1S", "country": "vhQudsjI", "dateOfBirth": "hXdxiSoW", "displayName": "pnnxgX7B", "languageTag": "CPMqzQIx", "userName": "ibhpNYsH"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "tdB3Ikju", "emailAddress": "aZqhJilr", "languageTag": "ZkSSKgP5"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "rxCR77G9", "contactType": "d5CA1GOR", "languageTag": "SbL9n0db", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "EupmdLQz", "country": "PnNfBAcW", "dateOfBirth": "ArbkCfdH", "displayName": "IZb03otq", "emailAddress": "mBuS9V2p", "password": "CZ23UHmk", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "pJ4JLl01", "password": "qi7L2oDU"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "oVRUb39j", "newPassword": "22P4Sp09", "oldPassword": "cKmjRUbZ"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'VBVS7OK2' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'ZrdcsckM' 'ekROWZ2K' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "UTqkK2eF"}' 'aGLoSmEE' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'PbLywJsy' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'Uie6fZgL' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'llUPsO8l' 'g46Si700' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "6vL2w4aa", "emailAddress": "jDAOx0iJ", "newPassword": "jYleaktq"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 'v2WkljQu' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'D5mnJONq' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'HGq8mB7m' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'F2lMFcag' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'hFXJIJfl' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "RHFcsIqC", "platformUserId": "y4xDifSS"}' 'Q5On2ccE' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["cl3xeiO4"], "requestId": "bwF5JOjG"}' 'oGxKM3qM' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'ce5tfLcp' 'jFZMKCbp' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 '0pEbLCLF' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'pHxMYF83' '6075xEpz' --login_with_auth "Bearer foo"
iam-login-sso-client 'dnYtpja5' --login_with_auth "Bearer foo"
iam-logout-sso-client 'ig2isQZg' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["a6Vy76iz"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "PiQRjYa8", "country": "fv5fIt22", "dateOfBirth": "tIZhjhgk", "displayName": "igW22zXM", "languageTag": "WXfbcM0G", "userName": "IALIbFCQ"}' 'gBcLNT6i' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "OQVYx5rW", "emailAddress": "2gMsI1aY"}' 'BitSn3UD' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'eKj97I4W' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'YXLqjN7k' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["tOBTraBx"], "roleId": "WRTVuYEq"}' 'GlKDwTKX' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["BrXiQcd9"], "roleId": "IW8kiCKe"}' 'QJWZBvcq' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["1ETvWBxY"], "roleId": "ZJh7B8gb"}' 'nSu9M2Ox' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "aeYpCXYS"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'Miy87CTq' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'EQBg36my' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "rDcain0c"}' 'OVF1zHwD' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 91, "resource": "I0sJ1Q0k", "schedAction": 30, "schedCron": "hMTggSP2", "schedRange": ["SLcuAP7v"]}]}' 'U971Czw2' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 26, "resource": "bg8C7Mvy", "schedAction": 44, "schedCron": "hu6MjOju", "schedRange": ["Gzo1Fz4t"]}]}' 'U0aSn98N' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["8qOUA0z9"]' '2RaDe8ng' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'T8LRQkMn' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["G1LZyF2m"], "namespace": "dYY6ZMfu", "userId": "TYTKsue4"}' '8qBEBNAV' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "5BTe6ec1", "userId": "zA92URCL"}' 'SGPmRBZW' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "unHW7MYv", "country": "r6QA7Ppe", "dateOfBirth": "pc92HA94", "displayName": "eACdeyfU", "languageTag": "pgiPpf8n", "userName": "xKJ3dnmt"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-download-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'Pwa64Y4g' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["PEKMhhu9"], "emailAddresses": ["a6f3xJNt"], "isAdmin": false, "roleId": "KLlIIAeH"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "m5M6LsY1", "policyId": "VMuIEcRl", "policyVersionId": "s68M3MPM"}], "authType": "EMAILPASSWD", "country": "epyyMz6z", "dateOfBirth": "fR1pvTYY", "displayName": "tDOiEi4R", "emailAddress": "uEcHCSGh", "password": "pOZQFlwO", "passwordMD5Sum": "iuKGDFgK", "username": "49YuKnXk", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "8ANrcRal", "policyId": "7ta3fojA", "policyVersionId": "3h4MMW3A"}], "authType": "EMAILPASSWD", "code": "lsFBwjvL", "country": "Yvmg6avu", "dateOfBirth": "dQFF1CPN", "displayName": "Y9u2dVYd", "emailAddress": "glOOoCeK", "password": "0kPKmBqV", "passwordMD5Sum": "ux3lXcD8", "reachMinimumAge": false, "username": "ertAVCqs"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "y3nJ06Kk", "policyId": "seA0ARj9", "policyVersionId": "ricfayvn"}], "authType": "EMAILPASSWD", "country": "i8MDdY4W", "dateOfBirth": "LHoaUkYn", "displayName": "Qp5egdmV", "password": "E8ImivNt", "reachMinimumAge": true, "username": "qWRKHohO"}' 'DoWOr98k' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "jBUas9jj", "country": "z2FrgiaG", "dateOfBirth": "rcB7dIOV", "displayName": "KIPSJJHo", "languageTag": "5W8tKH8o", "userName": "u9SdbxSX"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "crEFCwqe", "emailAddress": "GNLdIBRd"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "liFQVMKE", "country": "zVUWlUWD", "dateOfBirth": "s2x1EQU0", "displayName": "oepEvcja", "emailAddress": "SgEh6jJn", "password": "FxinIHJ1", "reachMinimumAge": false, "username": "7aq5Zznd", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "acobTsuR", "password": "lhreQVFI", "username": "D3o8hJWV"}' --login_with_auth "Bearer foo"
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
iam-public-make-factor-my-default-v4 'jKIOAw70' --login_with_auth "Bearer foo"
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
    'DvAHhSGW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetClient' test.out

#- 7 UpdateClient
$PYTHON -m $MODULE 'iam-update-client' \
    '{"ClientName": "Uvzq1Za3", "RedirectUri": "IBC4vQFs"}' \
    'UJPfiaJp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateClient' test.out

#- 8 DeleteClient
eval_tap 0 8 'DeleteClient # SKIP deprecated' test.out

#- 9 UpdateClientPermission
$PYTHON -m $MODULE 'iam-update-client-permission' \
    '{"Permissions": [{"Action": 34, "Resource": "t7OBgBCe"}]}' \
    '6N0eI65M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UpdateClientPermission' test.out

#- 10 AddClientPermission
$PYTHON -m $MODULE 'iam-add-client-permission' \
    '26' \
    '5tngEYXg' \
    'PVT5CqXD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AddClientPermission' test.out

#- 11 DeleteClientPermission
$PYTHON -m $MODULE 'iam-delete-client-permission' \
    '54' \
    'VMJyJeKF' \
    'O92YDtaZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteClientPermission' test.out

#- 12 UpdateClientSecret
$PYTHON -m $MODULE 'iam-update-client-secret' \
    '{"NewSecret": "vJoKS0Ox"}' \
    'yipZuO4N' \
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
    '{"ClientId": "9S2YCgHa", "ClientName": "6XBcvGRY", "ClientPermissions": [{"Action": 21, "Resource": "5rUtWHCn", "SchedAction": 14, "SchedCron": "mzzppV7t", "SchedRange": ["KNKYUQVB"]}], "Namespace": "XymWcNlH", "RedirectUri": "aFxYaGHU", "Secret": "pmBFyOrF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateClientByNamespace' test.out

#- 15 DeleteClientByNamespace
$PYTHON -m $MODULE 'iam-delete-client-by-namespace' \
    'KtxGNAi0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DeleteClientByNamespace' test.out

#- 16 CreateUser
$PYTHON -m $MODULE 'iam-create-user' \
    '{"AuthType": "fq4xChPL", "Country": "d2lOopc7", "DisplayName": "XoVpdd6r", "LoginId": "CpyMrnH9", "Password": "YHXh7KnC", "PasswordMD5Sum": "VOKY2zsB"}' \
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
    'RGtd8QY2' \
    'OLbijrvf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetUserByPlatformUserID' test.out

#- 20 ForgotPassword
$PYTHON -m $MODULE 'iam-forgot-password' \
    '{"Context": "r8hknjWU", "LanguageTag": "WdMUXHvw", "LoginID": "4pNlGLjd"}' \
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
    '{"Code": "BxLM079p", "LoginID": "DAbTgmsE", "NewPassword": "YEq2GkYK"}' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 22 'ResetPassword' test.out

#- 23 SearchUser
eval_tap 0 23 'SearchUser # SKIP deprecated' test.out

#- 24 GetUserByUserID
$PYTHON -m $MODULE 'iam-get-user-by-user-id' \
    '1vYm9flX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetUserByUserID' test.out

#- 25 UpdateUser
$PYTHON -m $MODULE 'iam-update-user' \
    '{"Country": "Q7CQoemn", "DateOfBirth": "QG0dH0NV", "DisplayName": "M9VEHTPq", "LanguageTag": "Dhkcu5vn"}' \
    'z6GiNMbo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateUser' test.out

#- 26 DeleteUser
$PYTHON -m $MODULE 'iam-delete-user' \
    'BJHml0LJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteUser' test.out

#- 27 BanUser
$PYTHON -m $MODULE 'iam-ban-user' \
    '{"ban": "mpPi4mqh", "comment": "ruiCZLGG", "endDate": "P5UXkHNT", "reason": "Mapp5Sbo", "skipNotif": false}' \
    'sUJKADr6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BanUser' test.out

#- 28 GetUserBanHistory
$PYTHON -m $MODULE 'iam-get-user-ban-history' \
    '0EkdFrpL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetUserBanHistory' test.out

#- 29 DisableUserBan
$PYTHON -m $MODULE 'iam-disable-user-ban' \
    'sGt9yTXW' \
    'USCQcMsH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'DisableUserBan' test.out

#- 30 EnableUserBan
$PYTHON -m $MODULE 'iam-enable-user-ban' \
    'N7reI22k' \
    's7I12tAZ' \
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
    'c8sxxLx9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetUserInformation' test.out

#- 35 DeleteUserInformation
$PYTHON -m $MODULE 'iam-delete-user-information' \
    'XQeqNWLm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteUserInformation' test.out

#- 36 GetUserLoginHistories
$PYTHON -m $MODULE 'iam-get-user-login-histories' \
    '8cNJbYH5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetUserLoginHistories' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
$PYTHON -m $MODULE 'iam-save-user-permission' \
    '{"Permissions": [{"Action": 71, "Resource": "4WiJLv9N", "SchedAction": 43, "SchedCron": "Hwtw2Mjc", "SchedRange": ["y9ZL6Zs5"]}]}' \
    'Bu2XYopL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SaveUserPermission' test.out

#- 39 AddUserPermission
$PYTHON -m $MODULE 'iam-add-user-permission' \
    '{"SchedAction": 97, "SchedCron": "ZeUKJJNf", "SchedRange": ["tRpGgk1i"]}' \
    '36' \
    'eREzzRG6' \
    'z9wmuHdd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AddUserPermission' test.out

#- 40 DeleteUserPermission
$PYTHON -m $MODULE 'iam-delete-user-permission' \
    '48' \
    'OdibI1LV' \
    'yqbdY8DG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteUserPermission' test.out

#- 41 GetUserPlatformAccounts
$PYTHON -m $MODULE 'iam-get-user-platform-accounts' \
    'ZKAuoIKz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserPlatformAccounts' test.out

#- 42 GetUserMapping
$PYTHON -m $MODULE 'iam-get-user-mapping' \
    '3Pp3zLWU' \
    'xMzMtSmM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetUserMapping' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
$PYTHON -m $MODULE 'iam-platform-link' \
    'mZP8nG0F' \
    'oQP8q7aS' \
    'sb85gAh9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PlatformLink' test.out

#- 45 PlatformUnlink
$PYTHON -m $MODULE 'iam-platform-unlink' \
    'RD3ZzN6N' \
    '1iJ8ltt9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PlatformUnlink' test.out

#- 46 GetPublisherUser
$PYTHON -m $MODULE 'iam-get-publisher-user' \
    'IRqCflgl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetPublisherUser' test.out

#- 47 SaveUserRoles
$PYTHON -m $MODULE 'iam-save-user-roles' \
    '["n6r5f0s5"]' \
    'H6lCf3QH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'SaveUserRoles' test.out

#- 48 AddUserRole
$PYTHON -m $MODULE 'iam-add-user-role' \
    'a11hLLCg' \
    'w5av4LEx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AddUserRole' test.out

#- 49 DeleteUserRole
$PYTHON -m $MODULE 'iam-delete-user-role' \
    'dabD8g2c' \
    'vHfMRupD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteUserRole' test.out

#- 50 UpgradeHeadlessAccount
$PYTHON -m $MODULE 'iam-upgrade-headless-account' \
    '{"LoginID": "A5xbjs3X", "Password": "RdHUJ0GC"}' \
    'mflIXkgJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpgradeHeadlessAccount' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
$PYTHON -m $MODULE 'iam-upgrade-headless-account-with-verification-code' \
    '{"Code": "6zkTwoak", "Password": "q7sEejFZ", "loginId": "1NtONXb9"}' \
    'w9hsQHsz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpgradeHeadlessAccountWithVerificationCode' test.out

#- 52 UserVerification
$PYTHON -m $MODULE 'iam-user-verification' \
    '{"Code": "IsfrlzKp", "ContactType": "Qdd58dZP", "LanguageTag": "5RvrinNt", "validateOnly": true}' \
    'BtqFSkA6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UserVerification' test.out

#- 53 SendVerificationCode
$PYTHON -m $MODULE 'iam-send-verification-code' \
    '{"Context": "8mIVYJ5p", "LanguageTag": "SVxBsLht", "LoginID": "y3pecToX"}' \
    'A4M1oUFP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'SendVerificationCode' test.out

#- 54 Authorization
$PYTHON -m $MODULE 'iam-authorization' \
    'hgo7Z6mw' \
    'NC4FY69m' \
    'code' \
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
    'oJNOGB83' \
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
    '6Hl5Poab' \
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
    '{"AdminRole": false, "Managers": [{"DisplayName": "KoVqNBUz", "Namespace": "IxOfglqu", "UserId": "S2q2DoWr"}], "Members": [{"DisplayName": "9zvFtKa2", "Namespace": "mOAqOokV", "UserId": "1plxQ2Yr"}], "Permissions": [{"Action": 17, "Resource": "TPfipD67", "SchedAction": 19, "SchedCron": "I2hiZkrt", "SchedRange": ["Lnh2U1RQ"]}], "RoleName": "lMxkfNMP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'CreateRole' test.out

#- 65 GetRole
$PYTHON -m $MODULE 'iam-get-role' \
    'Ntqv2TMz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetRole' test.out

#- 66 UpdateRole
$PYTHON -m $MODULE 'iam-update-role' \
    '{"RoleName": "1b7SnzkX"}' \
    'Oek83Igm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'UpdateRole' test.out

#- 67 DeleteRole
$PYTHON -m $MODULE 'iam-delete-role' \
    '1wkSWsYv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'DeleteRole' test.out

#- 68 GetRoleAdminStatus
$PYTHON -m $MODULE 'iam-get-role-admin-status' \
    'Asu18obU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'GetRoleAdminStatus' test.out

#- 69 SetRoleAsAdmin
$PYTHON -m $MODULE 'iam-set-role-as-admin' \
    'dc8mbvXc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'SetRoleAsAdmin' test.out

#- 70 RemoveRoleAdmin
$PYTHON -m $MODULE 'iam-remove-role-admin' \
    'wcgMqOXM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'RemoveRoleAdmin' test.out

#- 71 GetRoleManagers
$PYTHON -m $MODULE 'iam-get-role-managers' \
    'ziXrVdsE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'GetRoleManagers' test.out

#- 72 AddRoleManagers
$PYTHON -m $MODULE 'iam-add-role-managers' \
    '{"Managers": [{"DisplayName": "c3ClFP3m", "Namespace": "JwusCBTe", "UserId": "4kLcuqL4"}]}' \
    '0NYgekRa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'AddRoleManagers' test.out

#- 73 RemoveRoleManagers
$PYTHON -m $MODULE 'iam-remove-role-managers' \
    '{"Managers": [{"DisplayName": "vpaGTA9B", "Namespace": "TyCCyN4F", "UserId": "w9i6mI2W"}]}' \
    '3tjjCqPV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'RemoveRoleManagers' test.out

#- 74 GetRoleMembers
$PYTHON -m $MODULE 'iam-get-role-members' \
    'yYs01hEY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'GetRoleMembers' test.out

#- 75 AddRoleMembers
$PYTHON -m $MODULE 'iam-add-role-members' \
    '{"Members": [{"DisplayName": "zWw3qrcx", "Namespace": "M0DPAXQB", "UserId": "NMP7j3xf"}]}' \
    'PaoZaWFs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'AddRoleMembers' test.out

#- 76 RemoveRoleMembers
$PYTHON -m $MODULE 'iam-remove-role-members' \
    '{"Members": [{"DisplayName": "pkU5kn6P", "Namespace": "lPqD4Agf", "UserId": "asBfclBh"}]}' \
    'ZjZbLnmg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'RemoveRoleMembers' test.out

#- 77 UpdateRolePermissions
$PYTHON -m $MODULE 'iam-update-role-permissions' \
    '{"Permissions": [{"Action": 15, "Resource": "KwPyVIn3", "SchedAction": 32, "SchedCron": "aHP7KNul", "SchedRange": ["yfrENVQk"]}]}' \
    'pcaWHf6T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UpdateRolePermissions' test.out

#- 78 AddRolePermission
$PYTHON -m $MODULE 'iam-add-role-permission' \
    '{"SchedAction": 46, "SchedCron": "OOljn7c6", "SchedRange": ["c9efJI02"]}' \
    '91' \
    'ZxrgLBFJ' \
    'EkphFz0h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'AddRolePermission' test.out

#- 79 DeleteRolePermission
$PYTHON -m $MODULE 'iam-delete-role-permission' \
    '97' \
    'poVpVc2H' \
    'BBmj6cEi' \
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
    '{"AgeRestriction": 14, "Enable": false}' \
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
    '{"AgeRestriction": 41}' \
    'bCRfy4Gj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateCountryAgeRestriction' test.out

#- 84 AdminSearchUsersV2
$PYTHON -m $MODULE 'iam-admin-search-users-v2' \
    'Kn5ItHXL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'AdminSearchUsersV2' test.out

#- 85 AdminGetUserByUserIdV2
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v2' \
    'DZqpRhqn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'AdminGetUserByUserIdV2' test.out

#- 86 AdminUpdateUserV2
$PYTHON -m $MODULE 'iam-admin-update-user-v2' \
    '{"Country": "R742GcbL", "DateOfBirth": "uQOGMOEz", "DisplayName": "mdjNhT0S", "LanguageTag": "46kqyfMB"}' \
    'SaZc4SA1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'AdminUpdateUserV2' test.out

#- 87 AdminBanUserV2
$PYTHON -m $MODULE 'iam-admin-ban-user-v2' \
    '{"ban": "6M8gQCD7", "comment": "aBHWCYev", "endDate": "NkfcQvl4", "reason": "Oso7tx65", "skipNotif": true}' \
    'XCiTfjor' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'AdminBanUserV2' test.out

#- 88 AdminGetUserBanV2
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v2' \
    'LFqTmIUF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'AdminGetUserBanV2' test.out

#- 89 AdminDisableUserV2
$PYTHON -m $MODULE 'iam-admin-disable-user-v2' \
    '{"Reason": "UoonHBI1"}' \
    '3SZFHfm0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'AdminDisableUserV2' test.out

#- 90 AdminEnableUserV2
$PYTHON -m $MODULE 'iam-admin-enable-user-v2' \
    'F8vS2BrZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'AdminEnableUserV2' test.out

#- 91 AdminResetPasswordV2
$PYTHON -m $MODULE 'iam-admin-reset-password-v2' \
    '{"LanguageTag": "3nq88YSS", "NewPassword": "D7zV0C8F", "OldPassword": "vVU3kRXB"}' \
    'GPXIdft1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'AdminResetPasswordV2' test.out

#- 92 AdminDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-admin-delete-platform-link-v2' \
    'biZHuhWy' \
    'FPHdXcyv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'AdminDeletePlatformLinkV2' test.out

#- 93 AdminPutUserRolesV2
$PYTHON -m $MODULE 'iam-admin-put-user-roles-v2' \
    '["ZEhYeUSy"]' \
    '5Ukc65na' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'AdminPutUserRolesV2' test.out

#- 94 AdminCreateUserRolesV2
$PYTHON -m $MODULE 'iam-admin-create-user-roles-v2' \
    '["P11R8Xww"]' \
    '9vq9nMa2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'AdminCreateUserRolesV2' test.out

#- 95 PublicGetCountryAgeRestriction
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction' \
    'Btgwyuf2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PublicGetCountryAgeRestriction' test.out

#- 96 PublicCreateUserV2
$PYTHON -m $MODULE 'iam-public-create-user-v2' \
    '{"AuthType": "fjV30SLx", "Country": "i7uyhaeF", "DisplayName": "tcO9XNy6", "LoginId": "3QO9vW0c", "Password": "k7TEDE8L", "PasswordMD5Sum": "eEQBeGPL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'PublicCreateUserV2' test.out

#- 97 PublicForgotPasswordV2
$PYTHON -m $MODULE 'iam-public-forgot-password-v2' \
    '{"Context": "iE6tHCr0", "LanguageTag": "GPFvT0SA", "LoginID": "K91y5vCe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicForgotPasswordV2' test.out

#- 98 PublicResetPasswordV2
$PYTHON -m $MODULE 'iam-public-reset-password-v2' \
    '{"Code": "BIJq0B9U", "LoginID": "cI6c5cre", "NewPassword": "9ealHOZp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'PublicResetPasswordV2' test.out

#- 99 PublicGetUserByUserIDV2
$PYTHON -m $MODULE 'iam-public-get-user-by-user-idv2' \
    'hcLncnjn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'PublicGetUserByUserIDV2' test.out

#- 100 PublicUpdateUserV2
$PYTHON -m $MODULE 'iam-public-update-user-v2' \
    '{"Country": "myU8FSxX", "DateOfBirth": "dCrskoFq", "DisplayName": "nowq9Laz", "LanguageTag": "1GLt5Mhf"}' \
    '8Z7ahmbV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'PublicUpdateUserV2' test.out

#- 101 PublicGetUserBan
$PYTHON -m $MODULE 'iam-public-get-user-ban' \
    'Pm2g7xAF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'PublicGetUserBan' test.out

#- 102 PublicUpdatePasswordV2
$PYTHON -m $MODULE 'iam-public-update-password-v2' \
    '{"LanguageTag": "fRRLUjfW", "NewPassword": "S9sftIfH", "OldPassword": "Ge5bUTSX"}' \
    'Ov12PMcR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdatePasswordV2' test.out

#- 103 GetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-get-list-justice-platform-accounts' \
    'O6E2Mkre' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetListJusticePlatformAccounts' test.out

#- 104 PublicPlatformLinkV2
$PYTHON -m $MODULE 'iam-public-platform-link-v2' \
    '5q7FvaAC' \
    'p6he0fzj' \
    'kPNNS0Bf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'PublicPlatformLinkV2' test.out

#- 105 PublicDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-public-delete-platform-link-v2' \
    'gF6inIRs' \
    'Z5hrqNzV' \
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
    '[{"field": "szGVP5P1", "validation": {"allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "description": [{"language": "f30C1KHR", "message": ["ZHMGy5vb"]}], "isCustomRegex": false, "letterCase": "ZvYIFFct", "maxLength": 61, "maxRepeatingAlphaNum": 73, "maxRepeatingSpecialCharacter": 81, "minCharType": 74, "minLength": 47, "regex": "SRxe0wmW", "specialCharacterLocation": "BMcNiWoo", "specialCharacters": ["bB6o6alT"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'QcP0EpE9' \
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
    '{"ageRestriction": 45, "enable": true}' \
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
    '{"ageRestriction": 20}' \
    'gfJJ2HIa' \
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
    '{"audiences": ["lfzgRpTf"], "baseUri": "9lxF1JPB", "clientId": "izXZtrGe", "clientName": "8LyOH24n", "clientPermissions": [{"action": 26, "resource": "eZHFeRld", "schedAction": 3, "schedCron": "GA7JxWYz", "schedRange": ["aEaimvok"]}], "clientPlatform": "cWX59kwi", "deletable": false, "namespace": "HT6Ivd0f", "oauthClientType": "GpU209nV", "redirectUri": "RclumQTF", "secret": "vr5rRyYz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'AdminCreateClientV3' test.out

#- 120 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'aNmz3PjM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 121 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'x2T89NTr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminDeleteClientV3' test.out

#- 122 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["FRUCXFkr"], "baseUri": "uxegpkcX", "clientName": "Cfzgcvv0", "clientPermissions": [{"action": 96, "resource": "E5EQhcom", "schedAction": 82, "schedCron": "S1E7cpsL", "schedRange": ["gr2zEnjy"]}], "clientPlatform": "RNjEC3FM", "deletable": true, "namespace": "cZvwwf8a", "redirectUri": "U98In31m"}' \
    'F4jlwKyG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminUpdateClientV3' test.out

#- 123 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 47, "resource": "TF1l5q1N"}]}' \
    'p0sT1X8J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminUpdateClientPermissionV3' test.out

#- 124 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 8, "resource": "AWOzjmh9"}]}' \
    'UzIfnhoo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminAddClientPermissionsV3' test.out

#- 125 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '46' \
    'UmTleUnJ' \
    'FM7XhoDx' \
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
    'Gik2JSfZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "64wWePq6", "AWSCognitoRegion": "103PONKI", "AWSCognitoUserPool": "S7F9emW4", "AppId": "R15tAsiG", "ClientId": "31CEyUOu", "Environment": "OZhmnHkv", "FederationMetadataURL": "ek6Aa5kN", "GenericOauthFlow": false, "IsActive": false, "Issuer": "clxs9kxc", "JWKSEndpoint": "vIpV7mCY", "KeyID": "fWKjY9Cs", "NetflixCertificates": {"encryptedPrivateKey": "QYsGyhEO", "publicCertificate": "ntEkedM1", "rootCertificate": "A0bFqvjx"}, "OrganizationId": "bT3YuVda", "PlatformName": "BN5RSjhc", "RedirectUri": "juDvNrXL", "Secret": "845jfh5t", "TeamID": "Z0hqJLjQ", "TokenAuthenticationType": "UmoYUnC8", "TokenClaimsMapping": {"49OBNuLZ": "tofGAAaM"}}' \
    'pBQArU4R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'S0FQRy5Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "z5VcyfBp", "AWSCognitoRegion": "HjtvFwKS", "AWSCognitoUserPool": "JyZeqvpe", "AppId": "vcVXTxs9", "ClientId": "LTorIyx2", "Environment": "3LhLy7ds", "FederationMetadataURL": "3g3BuHTP", "GenericOauthFlow": true, "IsActive": false, "Issuer": "BYFws5Ya", "JWKSEndpoint": "4eOwWqW8", "KeyID": "HiLpTi1W", "NetflixCertificates": {"encryptedPrivateKey": "63HccgM5", "publicCertificate": "kYu36JpT", "rootCertificate": "L55W4ws3"}, "OrganizationId": "KCyplY1o", "PlatformName": "cKDCVaqr", "RedirectUri": "VeegT3uG", "Secret": "DIIcvuuo", "TeamID": "kt8TC38m", "TokenAuthenticationType": "YoUanQT4", "TokenClaimsMapping": {"Mmznv7r2": "jthibgeC"}}' \
    'LX41qyOi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["Lgd8Wy73"], "assignedNamespaces": ["9QHzw0TE"], "domain": "zpd7TV5v", "roleId": "hMM2i3DM"}' \
    '6etfI7Tz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "C3sKmtsy"}' \
    'EKdO6HNm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    '3zGu71qT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "SSJEbWlE", "apiKey": "Tp9XOCA1", "appId": "X3HHMTla", "federationMetadataUrl": "kAWQfBuB", "isActive": true, "redirectUri": "OCjBfYCc", "secret": "plye2GaP", "ssoUrl": "NzkrgBH4"}' \
    'icml6L36' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'Vg2F2Q9a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "ZDJg1OT8", "apiKey": "109ot70T", "appId": "evJgsb2P", "federationMetadataUrl": "yFfJ6qcH", "isActive": true, "redirectUri": "BdGtV9jA", "secret": "Pqon7UmL", "ssoUrl": "Ny9PkF9S"}' \
    'nlbWNcAx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'v8uHDqJt' \
    'YC7rznwN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'dLhqXvXV' \
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
    '{"userIds": ["njvc0BMe"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["gJpW1Zeu"], "isAdmin": false, "roles": ["pLX1BHZ4"]}' \
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
    '{"listEmailAddressRequest": ["hnOmmyXu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    '6XtjNCqY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "k9TPUKcD", "country": "TfR7dpUE", "dateOfBirth": "o2Oe08Hp", "displayName": "eJBfG0nG", "languageTag": "ZHe5lw2T", "userName": "lkPIxL9v"}' \
    '4fpCd0Uk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    '5h1kP1pk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "kT08Cs6D", "comment": "dXZWowBg", "endDate": "ZizMvwHs", "reason": "zf84MAma", "skipNotif": true}' \
    'JJ6vzDTX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": true}' \
    'yIaTgp0p' \
    'wnEJL15k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "xO4oVUPn", "emailAddress": "g5JsHAkI", "languageTag": "47jO1wuA"}' \
    'FuZcUwPt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "eKdQgUTF", "ContactType": "33fYWZfQ", "LanguageTag": "MAnziTha", "validateOnly": true}' \
    '2btn0up9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'GeTQ7Xym' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'DSQNYXNE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": false}' \
    'ZyFhIeqi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "NHtVSnhx", "country": "by8F6xF8", "dateOfBirth": "MhbJAYED", "displayName": "N1xszppR", "emailAddress": "69nsKAS5", "password": "zKsTRXd7", "validateOnly": false}' \
    '3v2fkZIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'r06ojUto' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'VJLGXeko' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 25, "Resource": "vwD849mo", "SchedAction": 42, "SchedCron": "IkDZYrYE", "SchedRange": ["f1xYnlxH"]}]}' \
    'HXjFoXtw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 73, "Resource": "W6AOnqnW", "SchedAction": 56, "SchedCron": "uXMWqG8f", "SchedRange": ["NprJx82n"]}]}' \
    'AFexNou1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 52, "Resource": "icsQjKx5"}]' \
    'LjetHEw0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '1' \
    'CQpU6EGO' \
    'W0VAI87D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'PH0fLLiU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'qzay0gET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    '8T53yEej' \
    '7DsqsTvN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminCreateJusticeUser' test.out

#- 167 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "KAXqfqMJ", "platformUserId": "HGeHaN2k"}' \
    '1Eutm9AA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminLinkPlatformAccount' test.out

#- 168 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "WDcDv3IS"}' \
    'BgZCAf2p' \
    'WOWs4I2l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminPlatformUnlinkV3' test.out

#- 169 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'OHfiu4Hr' \
    'aKYMtgBm' \
    'vCHMtF15' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformLinkV3' test.out

#- 170 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["a7T0Ihey"]' \
    'wiPE1WUR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserRolesV3' test.out

#- 171 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "1PTFfJJ4", "roleId": "6kzfqapb"}]' \
    'ByIKoYzY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminSaveUserRoleV3' test.out

#- 172 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'tTWJA3nF' \
    'CDgWOpz3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserRoleV3' test.out

#- 173 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'yPQfqbeV' \
    'G7i4VTAh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserRoleV3' test.out

#- 174 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "FYhEgQBb"}' \
    '9Hni6lDM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserStatusV3' test.out

#- 175 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'j9gvkBcQ' \
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
    '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "vUlMWp8W", "namespace": "GpZxCe0K", "userId": "smXtGBbK"}], "members": [{"displayName": "rV58TITh", "namespace": "Q52PYNkn", "userId": "BCjirw4h"}], "permissions": [{"action": 25, "resource": "fMSl2bET", "schedAction": 40, "schedCron": "FLFOfdl0", "schedRange": ["yRndbO78"]}], "roleName": "R8ybYsHx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateRoleV3' test.out

#- 178 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    '3BIgGuo8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminGetRoleV3' test.out

#- 179 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    '17lZA58O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteRoleV3' test.out

#- 180 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "CJ833JKR"}' \
    'NcdpuCxS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateRoleV3' test.out

#- 181 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'DFWMVcsO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminGetRoleAdminStatusV3' test.out

#- 182 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'ZlS0uler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateAdminRoleStatusV3' test.out

#- 183 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'U61drwLn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminRemoveRoleAdminV3' test.out

#- 184 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'gbZxOGxF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminGetRoleManagersV3' test.out

#- 185 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "wnmB60ea", "namespace": "7XItZS8K", "userId": "Iu9T604o"}]}' \
    'PajgyShK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminAddRoleManagersV3' test.out

#- 186 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "uLB7pQLZ", "namespace": "iWVmc8PV", "userId": "wShVQz7F"}]}' \
    'Y3h2oVVS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminRemoveRoleManagersV3' test.out

#- 187 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'cVv3YTBM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRoleMembersV3' test.out

#- 188 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "4teOpqev", "namespace": "sWvMhihe", "userId": "E2KM7Cta"}]}' \
    'l5z7hLiO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminAddRoleMembersV3' test.out

#- 189 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "Yz1jFfu1", "namespace": "y1d77D8Z", "userId": "NOfHyenh"}]}' \
    'bRZ4a9Uj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminRemoveRoleMembersV3' test.out

#- 190 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 19, "resource": "jU0EggYL", "schedAction": 5, "schedCron": "GiEDZbDl", "schedRange": ["9ZeZH3M8"]}]}' \
    '7v0FhdKD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateRolePermissionsV3' test.out

#- 191 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 61, "resource": "fXRhaO0A", "schedAction": 100, "schedCron": "SqvcV2Lq", "schedRange": ["fgCX28Je"]}]}' \
    '4kyPQjgD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminAddRolePermissionsV3' test.out

#- 192 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["JNOEMtdE"]' \
    'tN4sEebn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminDeleteRolePermissionsV3' test.out

#- 193 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '85' \
    'ucgaop5N' \
    'EdhurScN' \
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
    'iUxnJUew' \
    'UVhkGRRT' \
    'gLCb9evy' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 195 'UserAuthenticationV3' test.out

#- 196 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'wZywunLI' \
    'mNhyZsb7' \
    'YhhQbDxL' \
    'RKxzUtpK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AuthenticationWithPlatformLinkV3' test.out

#- 197 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'DC8gl2ot' \
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
    'jUWKxgW6' \
    'n8AJaeqx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 201 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'TPgZKFi3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'RevokeUserV3' test.out

#- 202 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'SBGlCD4i' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 202 'AuthorizeV3' test.out

#- 203 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    '5ZRoJd1a' \
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
    's1Wkfh3l' \
    '8HyGWZTd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'Change2faMethod' test.out

#- 206 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'pmTxPUBF' \
    'jTIIKcXl' \
    'xPfdDyjJ' \
    'True' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'Verify2faCode' test.out

#- 207 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'wrYeljMy' \
    'oeb3gsMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 208 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'Mdqbt4Pn' \
    'uFr18ijp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AuthCodeRequestV3' test.out

#- 209 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    '3CmzrfVI' \
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
    'a1vi9oky' \
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
    'IgBRSBlx' \
    'ukoOTCos' \
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
    '{"platformUserIds": ["jAXo6ljB"]}' \
    'VW8r7nyN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 217 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'cVl6ZB3b' \
    'GHupBuAL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'PublicGetUserByPlatformUserIDV3' test.out

#- 218 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    '2avXKOjw' \
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
    '{"PasswordMD5Sum": "GRJbZqXg", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "zOreTsvi", "policyId": "Zmgm0l8Y", "policyVersionId": "r4wmgiwI"}], "authType": "F5Zx5TII", "code": "hBtL3zT6", "country": "xRqyV0tl", "dateOfBirth": "LaMYL1p9", "displayName": "5v9mOiIF", "emailAddress": "EdQ2RKeQ", "password": "y2WRztR5", "reachMinimumAge": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'PublicCreateUserV3' test.out

#- 221 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'ztuhVaJD' \
    'Wx2OdrUV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'CheckUserAvailability' test.out

#- 222 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["7bhcKGIO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'PublicBulkGetUsers' test.out

#- 223 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "ZcB6NWff", "languageTag": "XkYzes2x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'PublicSendRegistrationCode' test.out

#- 224 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "Hp1ufZNx", "emailAddress": "hbsaSFtT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'PublicVerifyRegistrationCode' test.out

#- 225 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "mbIf2hFQ", "languageTag": "Rmsi02me"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'PublicForgotPasswordV3' test.out

#- 226 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'lJQkLtV2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'GetAdminInvitationV3' test.out

#- 227 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "PsmhFVPt", "policyId": "JTGig12O", "policyVersionId": "dDnxXuJo"}], "authType": "EMAILPASSWD", "country": "OG4tOeWV", "dateOfBirth": "MI9K1eJ6", "displayName": "xC2h6U8T", "password": "gR2k2RkE", "reachMinimumAge": true}' \
    '8XbmQNuv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'CreateUserFromInvitationV3' test.out

#- 228 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "80Em9nuf", "country": "fLGUWnVB", "dateOfBirth": "QPhwwHR0", "displayName": "qyfFcSCd", "languageTag": "kfe5eawF", "userName": "pdHeH5p8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'UpdateUserV3' test.out

#- 229 PublicUpdateUserV3
$PYTHON -m $MODULE 'iam-public-update-user-v3' \
    '{"avatarUrl": "Zx8jy7nx", "country": "GzOTBpmm", "dateOfBirth": "juEEEyDt", "displayName": "wbtA8xsm", "languageTag": "mcaOLdFi", "userName": "fUk9p700"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'PublicUpdateUserV3' test.out

#- 230 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "jB0p4HpK", "emailAddress": "8pvufSxY", "languageTag": "M0VkuqOK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'PublicSendVerificationCodeV3' test.out

#- 231 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "rhvMwvD0", "contactType": "4UY8ghvs", "languageTag": "mSrrJzAi", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicUserVerificationV3' test.out

#- 232 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "OuhQIBAb", "country": "up1fpWsO", "dateOfBirth": "6fW468fW", "displayName": "xqRkJDjf", "emailAddress": "NhYDgVm0", "password": "TCaos4wy", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicUpgradeHeadlessAccountV3' test.out

#- 233 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "aPP6Clek", "password": "QGm25KYm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicVerifyHeadlessAccountV3' test.out

#- 234 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "FZxQr4xb", "newPassword": "V63gcdU4", "oldPassword": "vyIPJeRj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicUpdatePasswordV3' test.out

#- 235 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'Cj7UK5nE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateJusticeUser' test.out

#- 236 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'mwsQtSfD' \
    'qA4CysEX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PublicPlatformLinkV3' test.out

#- 237 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "4VOy0n2E"}' \
    'kPBjC4ec' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicPlatformUnlinkV3' test.out

#- 238 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'HwtSGzay' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicPlatformUnlinkAllV3' test.out

#- 239 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'UaDh3m2e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicWebLinkPlatform' test.out

#- 240 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'X31qVPH2' \
    'VHDznf57' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicWebLinkPlatformEstablish' test.out

#- 241 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "fQ1PY5uD", "emailAddress": "kQ8zpNRw", "newPassword": "ycEAShpF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'ResetPasswordV3' test.out

#- 242 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'LpqAx1N5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicGetUserByUserIdV3' test.out

#- 243 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'IGebNuvy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserBanHistoryV3' test.out

#- 244 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'rghVdsSw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 245 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'Dc9NJRX9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserLoginHistoriesV3' test.out

#- 246 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'ZdaC8sja' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicGetUserPlatformAccountsV3' test.out

#- 247 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "1J7eucGS", "platformUserId": "SxZJPto0"}' \
    '4wTEI8is' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicLinkPlatformAccount' test.out

#- 248 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["XmyAGW2r"], "requestId": "Z7bYvVW2"}' \
    '6Oaysx72' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicForceLinkPlatformWithProgression' test.out

#- 249 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'rwV3MdXN' \
    'VRDzT2sB' \
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
    'bflg7cD2' \
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
    '47c1XYYJ' \
    'f18StYu6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PlatformAuthenticateSAMLV3Handler' test.out

#- 254 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'wb2We3Q6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'LoginSSOClient' test.out

#- 255 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'Pm7RBkqW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'LogoutSSOClient' test.out

#- 256 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["DPEP4CWn"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'AdminBulkCheckValidUserIDV4' test.out

#- 257 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "ZJjXdiUv", "country": "9owF1mQr", "dateOfBirth": "c03W7oOd", "displayName": "pY5ZJChQ", "languageTag": "tpD2U9IQ", "userName": "zA2eexjq"}' \
    '3TfnJ6ry' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'AdminUpdateUserV4' test.out

#- 258 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "Q4wCg5It", "emailAddress": "n9TYOR2n"}' \
    '8qFjjSZx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'AdminUpdateUserEmailAddressV4' test.out

#- 259 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    '0FeRdmgO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'AdminDisableUserMFAV4' test.out

#- 260 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'ta6pcKzS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'AdminListUserRolesV4' test.out

#- 261 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["Pfek369f"], "roleId": "IM1tcxwt"}' \
    '2XqPFaIx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'AdminUpdateUserRoleV4' test.out

#- 262 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["BgzRO8GK"], "roleId": "ycdcXuUL"}' \
    'pvuBNRzU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'AdminAddUserRoleV4' test.out

#- 263 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["bH0hI7yC"], "roleId": "EyjKXQPn"}' \
    'omAsHMpm' \
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
    '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "4tkWavQ0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'AdminCreateRoleV4' test.out

#- 266 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'jo17Qq6A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'AdminGetRoleV4' test.out

#- 267 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'FdE7URb1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'AdminDeleteRoleV4' test.out

#- 268 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "WfPxHPQa"}' \
    'UClyAjfG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'AdminUpdateRoleV4' test.out

#- 269 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 20, "resource": "GwDsoo09", "schedAction": 79, "schedCron": "dZjNjjtl", "schedRange": ["8XIGZV3G"]}]}' \
    'BXIHxWGX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'AdminUpdateRolePermissionsV4' test.out

#- 270 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 16, "resource": "wwHLohaK", "schedAction": 43, "schedCron": "D9nNeLi2", "schedRange": ["tRrclM3o"]}]}' \
    '5FmkWcIp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'AdminAddRolePermissionsV4' test.out

#- 271 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["WlbLNxQc"]' \
    'iSm2Obia' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'AdminDeleteRolePermissionsV4' test.out

#- 272 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'cE1VtVP5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'AdminListAssignedUsersV4' test.out

#- 273 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["yWKB3dhO"], "namespace": "4E5cHbV6", "userId": "Tq3makni"}' \
    'WG9Atazn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'AdminAssignUserToRoleV4' test.out

#- 274 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "HrmvF1mJ", "userId": "Z3dLFxAk"}' \
    'QrsQXCUj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'AdminRevokeUserFromRoleV4' test.out

#- 275 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "nXNZpacd", "country": "MfX6X3Zt", "dateOfBirth": "a5msSId5", "displayName": "56xncCH3", "languageTag": "7zoQElCS", "userName": "NpKYpjKm"}' \
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
    'IIb0iBSA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminMakeFactorMyDefaultV4' test.out

#- 286 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["7vdLvUFJ"], "emailAddresses": ["7qN6ucqf"], "isAdmin": true, "roleId": "h42FD6A3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminInviteUserV4' test.out

#- 287 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "chLvxRuU", "policyId": "LxDjXJ9B", "policyVersionId": "FwEyGUCv"}], "authType": "EMAILPASSWD", "country": "BlPmENb7", "dateOfBirth": "inSCGzNu", "displayName": "HpABtt9G", "emailAddress": "gpAZjcg8", "password": "z9cH6u6S", "passwordMD5Sum": "mVFciDGu", "username": "fTZk7gk6", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicCreateTestUserV4' test.out

#- 288 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "UCWs5b2f", "policyId": "lAnrsypC", "policyVersionId": "RQfPhfO9"}], "authType": "EMAILPASSWD", "code": "amej28Ju", "country": "m6vaoBRu", "dateOfBirth": "MFZbZvy6", "displayName": "mJ2jHxdp", "emailAddress": "qHuBibSp", "password": "yFVnkERZ", "passwordMD5Sum": "9gwlM0hF", "reachMinimumAge": true, "username": "8sFHE2tr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicCreateUserV4' test.out

#- 289 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Rr4XS8ek", "policyId": "4IK6APTp", "policyVersionId": "bukLGw4H"}], "authType": "EMAILPASSWD", "country": "d7JZjCvo", "dateOfBirth": "Cnb0By8G", "displayName": "bfDbnZRa", "password": "sK3D9LYj", "reachMinimumAge": false, "username": "7kb4sU5W"}' \
    '5wrnCC7O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'CreateUserFromInvitationV4' test.out

#- 290 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "GhuPV98X", "country": "UYE5mm7b", "dateOfBirth": "HElXpNGE", "displayName": "UuLY9Nu3", "languageTag": "1elzdmX7", "userName": "gz9djDT8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicUpdateUserV4' test.out

#- 291 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "HpJ3j7Ly", "emailAddress": "GDuYXVur"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicUpdateUserEmailAddressV4' test.out

#- 292 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "nW5P0Zs1", "country": "3FtOvKL3", "dateOfBirth": "NS8Iq1rR", "displayName": "NyHR1S2Z", "emailAddress": "UIC8uvky", "password": "FCMKBFVF", "reachMinimumAge": true, "username": "8RmFR37l", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 293 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "j05gCbgx", "password": "9wKmx7cj", "username": "HqzVYnt0"}' \
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
    'cmkvniri' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
