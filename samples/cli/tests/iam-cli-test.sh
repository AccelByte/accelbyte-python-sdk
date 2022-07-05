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
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "C587lmUm", "AWSCognitoRegion": "BziPZBnp", "AWSCognitoUserPool": "Ofkllxfq", "AppId": "0NsrSjw5", "ClientId": "Hog0blM1", "Environment": "d5MStYGc", "FederationMetadataURL": "zLINlEC0", "GenericOauthFlow": true, "IsActive": true, "Issuer": "E3yzIsUP", "JWKSEndpoint": "0NjluOrG", "KeyID": "ZTzsLW7F", "NetflixCertificates": {"encryptedPrivateKey": "jfs9nIkc", "encryptedPrivateKeyName": "Z38fUEan", "publicCertificate": "jKHbXfk1", "publicCertificateName": "zxdzxg0U", "rootCertificate": "XcRyHi3u", "rootCertificateName": "8BzVWu1t"}, "OrganizationId": "OmhUtCgc", "PlatformName": "pvGrEbcZ", "RedirectUri": "UDExH1ta", "Secret": "yOGXIHzM", "TeamID": "RjMCtOJs", "TokenAuthenticationType": "Eijlrbpy", "TokenClaimsMapping": {"yEcQxVgJ": "IjMZqcWf"}}' 'Ml6dqrpD' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 '4tnc3ZRB' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "3IkdtPfA", "AWSCognitoRegion": "JEomwenJ", "AWSCognitoUserPool": "vQ8grtQS", "AppId": "v6EcALcM", "ClientId": "IPms5bT5", "Environment": "1M4yko8S", "FederationMetadataURL": "0EnGLvGv", "GenericOauthFlow": false, "IsActive": true, "Issuer": "SyCTyjj4", "JWKSEndpoint": "mCaiuMGK", "KeyID": "OF5GJJoo", "NetflixCertificates": {"encryptedPrivateKey": "SXUl3YU3", "encryptedPrivateKeyName": "5QHGpBAB", "publicCertificate": "nOlxDznI", "publicCertificateName": "CQVyqBg3", "rootCertificate": "4WTtDkn0", "rootCertificateName": "rtn6t0Yx"}, "OrganizationId": "4z12EaQ1", "PlatformName": "rUQYCNTi", "RedirectUri": "DX4jE3M2", "Secret": "IsTHu8Qw", "TeamID": "NyOlXfIW", "TokenAuthenticationType": "d0mcq5T4", "TokenClaimsMapping": {"SUc7cWfC": "KK6Dij1g"}}' 'FcenEMyS' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["PfhxBenD"], "assignedNamespaces": ["iTiAqFYm"], "domain": "FKjaELmm", "roleId": "ll6oexId"}' '1OKGUN2U' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "znd7uVa7"}' 't14yvSYS' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'V52bHifC' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "If4tsuu6", "apiKey": "Pkam6tFS", "appId": "YFt4ZxA2", "federationMetadataUrl": "PzZFRkBN", "isActive": false, "redirectUri": "g6hn5qus", "secret": "KyZAuV6u", "ssoUrl": "UvqM0lV6"}' 'UZMlEbxH' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'NgJRiQEx' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "aunjdAqn", "apiKey": "HUz44tx4", "appId": "O6hamPwN", "federationMetadataUrl": "oi071ezD", "isActive": true, "redirectUri": "IGe1IMUC", "secret": "LcN0DsaD", "ssoUrl": "5FyBsFe9"}' 'OYEJVsYf' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'fmhyx6J2' '5PrM4S3c' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'B8m17hEe' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["LLgoaYth"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["6zcf8eA4"], "isAdmin": true, "roles": ["ObWejo9L"]}' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["fGeegJMa"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'BGR6D1Zo' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "ZEZQkJ8D", "country": "SqFnhdKv", "dateOfBirth": "jFCFbSFl", "displayName": "EWoMPdgK", "languageTag": "5zn62mhn", "userName": "FSpCTlDN"}' 'BOcygvv2' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'LAgfBGVz' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "anbKYsB0", "comment": "gqJ8VhYS", "endDate": "ikJl2p9r", "reason": "Bx8N5ega", "skipNotif": false}' 'qxDy4cLf' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": true}' 'zEZYA8jI' 'kMJb7cZ2' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "bPsaLLpE", "emailAddress": "BVEMk5As", "languageTag": "KaF2P44l"}' 'XkI3zdiR' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "iC5IbPit", "ContactType": "71JWlYCo", "LanguageTag": "i4nDfPu5", "validateOnly": true}' 'EVOryVuZ' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'YmgUeEPB' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 '5AGPgvk0' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": true}' 'haj0EBA4' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "azRz0d56", "country": "smobor4p", "dateOfBirth": "1PlgQB9E", "displayName": "cNGOeBRY", "emailAddress": "6G5ae07d", "password": "eDLaZ8JC", "validateOnly": true}' 'beTfW0hg' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'zrabLJxE' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'wJrEBmQ6' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 14, "Resource": "aNOzlGu6", "SchedAction": 93, "SchedCron": "YyupjdDe", "SchedRange": ["tnoT0rfW"]}]}' 'tVPwQfq6' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 95, "Resource": "92gbfPou", "SchedAction": 79, "SchedCron": "dmP7fckV", "SchedRange": ["nuDGvYIb"]}]}' '1p5tcR5z' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 71, "Resource": "LjSHcaR3"}]' 'X4tZmwr0' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '85' 'mOnsEg49' 'eXp0xQkZ' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 '2JjuwWWy' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts '0tU11PCe' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'SrvejUKw' 'VfF37Vr7' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "mkDzFBI1", "platformUserId": "VwhkVSKD"}' 'lNFOUHBJ' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "svTsqk9h"}' 'g4hj6nUd' 'ebW6Uskb' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'PkkZAk01' 'f1KxCtWA' 'DU2guN6U' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["9w13W1K9"]' 'TZQ4qRLE' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "i5wowE36", "roleId": "rfmM0CCs"}]' '35TPUPLm' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'sY8WgwSx' '1DI5GH9b' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'v9ZTo2Hp' 'A6pzjHpZ' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "9iLgRPJK"}' '3nBae3GO' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'gbQrqra0' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "vOpY2ram", "namespace": "p5lnBn6x", "userId": "mBkfMtC6"}], "members": [{"displayName": "6hFq0kPO", "namespace": "kORm2Xjl", "userId": "NEE5ecPz"}], "permissions": [{"action": 53, "resource": "mi0ySJHf", "schedAction": 83, "schedCron": "loP1XkYK", "schedRange": ["4MgIsDSF"]}], "roleName": "MPyMhyw1"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'OLZPVwwx' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'H4BIDJuD' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": false, "roleName": "MMftll8N"}' '0VvChHz9' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'urmt7QWv' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'E8s6Uz8B' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'RuYWDTtL' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 '6MTTRkCb' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "b9S5Q1IV", "namespace": "HGT88prR", "userId": "EBgYOWdH"}]}' 'J9Jumoht' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "U13gf7TR", "namespace": "igNZj5w5", "userId": "y3HmK8QV"}]}' 'Oa62eQZt' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'bLLcF671' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "WLtv38He", "namespace": "cczopFme", "userId": "RwpcJBZy"}]}' 'i3mLC4Kz' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "ekiSzeyo", "namespace": "lnOQt0jo", "userId": "VHgCytC6"}]}' 'lRG98Yxn' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 66, "resource": "bRdoTKKe", "schedAction": 40, "schedCron": "SjfZe9i1", "schedRange": ["osghF1hz"]}]}' 'i1Nl47sy' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 70, "resource": "5ibzSHZe", "schedAction": 56, "schedCron": "LIvWPVRs", "schedRange": ["dEqA61yT"]}]}' 'rMgsycTg' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["mPzc20Eu"]' 'O5dMqGDl' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '89' 'ZPY07rEV' 'SjzHjL6Z' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'bXjG6DSm' 'pp3op8ht' 'aRLxtW4P' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'vFkESTUL' 'at5F1Le7' 'cR7q6PWh' 'ZmmKz41i' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 '1Tp78Fip' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'JHahViJv' 'LYW0kdml' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'k2luqSOO' --login_with_auth "Bearer foo"
iam-authorize-v3 'A2VOZBoN' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'B98PuSGy' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-change2fa-method 'kqFzPwSM' 'XT53bBuL' --login_with_auth "Bearer foo"
iam-verify2fa-code '38beOYDV' 'uHZQ9LYt' '6w23Wf8i' 'True' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'Qo72sH0a' 'RdcDlDyG' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'csfIuI4D' 'v5lEJpK1' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'AyRlzsrR' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Bearer foo"
iam-token-revocation-v3 'XEFZivQO' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'password' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'VicNrats' 'vvHLmIoh' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["fNISLXMD"]}' 'WDdm5FE4' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'lliQMnut' 'JbpEo4mU' --login_with_auth "Bearer foo"
iam-public-get-async-status 'NHFtdml2' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "xNviWacJ", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "3Fm7Z548", "policyId": "uuKgoCBq", "policyVersionId": "S5uIdCbw"}], "authType": "Ceeq9ouE", "code": "dDtjOgsy", "country": "pLkm2ZYe", "dateOfBirth": "w5H7Zm0g", "displayName": "nYyj6MXf", "emailAddress": "9G1ntyeb", "password": "voeHenAA", "reachMinimumAge": true}' --login_with_auth "Bearer foo"
iam-check-user-availability '7EfxIH44' '6oUnP2S7' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["4unXwg0J"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "KqVWW1rj", "languageTag": "K1epwkAv"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "csYvbgfB", "emailAddress": "VPpTa8Yu"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "q7TKiNXm", "languageTag": "z7eMrMD5"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'TbaUxTCT' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "g0xjtdBr", "policyId": "js3Kiykt", "policyVersionId": "2Ck2gOlS"}], "authType": "EMAILPASSWD", "country": "tECZ2Ugw", "dateOfBirth": "QLqDqYSx", "displayName": "TPuVlBqi", "password": "rdp3yxns", "reachMinimumAge": true}' 'Tl1SvhQu' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "dsjIhXdx", "country": "iSoWpnnx", "dateOfBirth": "gX7BCPMq", "displayName": "zQIxibhp", "languageTag": "NYsHtdB3", "userName": "IkjuaZqh"}' --login_with_auth "Bearer foo"
iam-public-update-user-v3 '{"avatarUrl": "JilrZkSS", "country": "KgP5rxCR", "dateOfBirth": "77G9d5CA", "displayName": "1GORSbL9", "languageTag": "n0dbWDEu", "userName": "pmdLQzPn"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "NfBAcWAr", "emailAddress": "bkCfdHIZ", "languageTag": "b03otqmB"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "uS9V2pCZ", "contactType": "23UHmk0l", "languageTag": "pJ4JLl01", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "i7L2oDUo", "country": "VRUb39j2", "dateOfBirth": "2P4Sp09c", "displayName": "KmjRUbZV", "emailAddress": "BVS7OK2Z", "password": "rdcsckMe", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "ROWZ2KUT", "password": "qkK2eFaG"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "LoSmEEPb", "newPassword": "LywJsyUi", "oldPassword": "e6fZgLll"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'UPsO8lg4' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 '6Si7006v' 'L2w4aajD' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "AOx0iJjY"}' 'leaktqv2' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'WkljQuD5' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'mnJONqHG' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'q8mB7mF2' 'lMFcaghF' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "XJIJflRH", "emailAddress": "FcsIqCy4", "newPassword": "xDifSSQ5"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 'On2ccEcl' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 '3xeiO4bw' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'F5JOjGoG' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'xKM3qMce' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 '5tfLcpjF' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "ZMKCbp0p", "platformUserId": "EbLCLFpH"}' 'xMYF8360' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["75xEpzdn"], "requestId": "Ytpja5ig"}' '2isQZga6' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'Vy76izPi' 'QRjYa8fv' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 '5fIt22tI' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'Zhjhgkig' 'W22zXMWX' --login_with_auth "Bearer foo"
iam-login-sso-client 'fbcM0GIA' --login_with_auth "Bearer foo"
iam-logout-sso-client 'LIbFCQgB' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["cLNT6iOQ"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "VYx5rW2g", "country": "MsI1aYBi", "dateOfBirth": "tSn3UDeK", "displayName": "j97I4WYX", "languageTag": "LqjN7ktO", "userName": "BTraBxWR"}' 'TVuYEqGl' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "KDwTKXBr", "emailAddress": "XiQcd9IW"}' '8kiCKeQJ' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'WZBvcq1E' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'TvWBxYZJ' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["h7B8gbnS"], "roleId": "u9M2OxD2"}' 'udaeYpCX' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["YSMiy87C"], "roleId": "TqEQBg36"}' 'my3sY2cl' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["rDcain0c"], "roleId": "OVF1zHwD"}' 'TI0sJ1Q0' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "MTggSP2S"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'LcuAP7vU' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 '971Czw2n' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "7Mvywhu6"}' 'MjOjuGzo' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 62, "resource": "z4tU0aSn", "schedAction": 79, "schedCron": "8qOUA0z9", "schedRange": ["2RaDe8ng"]}]}' 'T8LRQkMn' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 64, "resource": "1LZyF2md", "schedAction": 100, "schedCron": "Y6ZMfuTY", "schedRange": ["TKsue48q"]}]}' 'BEBNAV5B' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["Te6ec1zA"]' '92URCLSG' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'PmRBZWun' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["HW7MYvr6"], "namespace": "QA7Ppepc", "userId": "92HA94eA"}' 'CdeyfUpg' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "iPpf8nxK", "userId": "J3dnmtPw"}' 'a64Y4gPE' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "KMhhu9a6", "country": "f3xJNtUl", "dateOfBirth": "KLlIIAeH", "displayName": "bm5M6LsY", "languageTag": "1VMuIEcR", "userName": "ls68M3MP"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-download-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'MRPBepyy' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["Mz6zfR1p"], "emailAddresses": ["vTYYtDOi"], "isAdmin": true, "roleId": "i4RuEcHC"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "pOZQFlwO", "policyId": "iuKGDFgK", "policyVersionId": "49YuKnXk"}], "authType": "EMAILPASSWD", "country": "0m8ANrcR", "dateOfBirth": "al7ta3fo", "displayName": "jA3h4MMW", "emailAddress": "3AJ5zlsF", "password": "BwjvLYvm", "passwordMD5Sum": "g6avudQF", "username": "F1CPNY9u", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "glOOoCeK", "policyId": "0kPKmBqV", "policyVersionId": "ux3lXcD8"}], "authType": "EMAILPASSWD", "code": "ertAVCqs", "country": "8XT8xy3n", "dateOfBirth": "J06KkseA", "displayName": "0ARj9ric", "emailAddress": "fayvnhi8", "password": "MDdY4WLH", "passwordMD5Sum": "oaUkYnQp", "reachMinimumAge": false, "username": "gdmVE8Im"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "vNtQxqWR", "policyId": "KHohODoW", "policyVersionId": "Or98kjBU"}], "authType": "EMAILPASSWD", "country": "s9jjz2Fr", "dateOfBirth": "giaGrcB7", "displayName": "dIOVKIPS", "password": "JJHo5W8t", "reachMinimumAge": false, "username": "u9SdbxSX"}' 'crEFCwqe' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "GNLdIBRd", "country": "liFQVMKE", "dateOfBirth": "zVUWlUWD", "displayName": "s2x1EQU0", "languageTag": "oepEvcja", "userName": "SgEh6jJn"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "FxinIHJ1", "emailAddress": "o7aq5Zzn"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "d5eacobT", "country": "suRlhreQ", "dateOfBirth": "VFID3o8h", "displayName": "JWVjKIOA", "emailAddress": "w70DvAHh", "password": "SGWUvzq1", "reachMinimumAge": false, "username": "3IBC4vQF", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "UJPfiaJp", "password": "1rt7OBgB", "username": "Ce6N0eI6"}' --login_with_auth "Bearer foo"
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
iam-public-make-factor-my-default-v4 '5Mn5tngE' --login_with_auth "Bearer foo"
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
    'YXgPVT5C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetClient' test.out

#- 7 UpdateClient
$PYTHON -m $MODULE 'iam-update-client' \
    '{"ClientName": "qXDZBVMJ", "RedirectUri": "yJeKFO92"}' \
    'YDtaZvJo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateClient' test.out

#- 8 DeleteClient
eval_tap 0 8 'DeleteClient # SKIP deprecated' test.out

#- 9 UpdateClientPermission
$PYTHON -m $MODULE 'iam-update-client-permission' \
    '{"Permissions": [{"Action": 72, "Resource": "S0OxyipZ"}]}' \
    'uO4N9S2Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UpdateClientPermission' test.out

#- 10 AddClientPermission
$PYTHON -m $MODULE 'iam-add-client-permission' \
    '56' \
    'gHa6XBcv' \
    'GRYk5rUt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AddClientPermission' test.out

#- 11 DeleteClientPermission
$PYTHON -m $MODULE 'iam-delete-client-permission' \
    '96' \
    'HCnhmzzp' \
    'pV7tKNKY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteClientPermission' test.out

#- 12 UpdateClientSecret
$PYTHON -m $MODULE 'iam-update-client-secret' \
    '{"NewSecret": "UQVBXymW"}' \
    'cNlHaFxY' \
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
    '{"ClientId": "aGHUpmBF", "ClientName": "yOrFKtxG", "ClientPermissions": [{"Action": 79, "Resource": "Ai0fq4xC", "SchedAction": 14, "SchedCron": "PLd2lOop", "SchedRange": ["c7XoVpdd"]}], "Namespace": "6rCpyMrn", "RedirectUri": "H9YHXh7K", "Secret": "nCVOKY2z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateClientByNamespace' test.out

#- 15 DeleteClientByNamespace
$PYTHON -m $MODULE 'iam-delete-client-by-namespace' \
    'sBRGtd8Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DeleteClientByNamespace' test.out

#- 16 CreateUser
$PYTHON -m $MODULE 'iam-create-user' \
    '{"AuthType": "Y2OLbijr", "Country": "vfr8hknj", "DisplayName": "WUWdMUXH", "LoginId": "vw4pNlGL", "Password": "jdBxLM07", "PasswordMD5Sum": "9pDAbTgm"}' \
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
    'sEYEq2Gk' \
    'YK1vYm9f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetUserByPlatformUserID' test.out

#- 20 ForgotPassword
$PYTHON -m $MODULE 'iam-forgot-password' \
    '{"Context": "lXQ7CQoe", "LanguageTag": "mnQG0dH0", "LoginID": "NVM9VEHT"}' \
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
    '{"Code": "PqDhkcu5", "LoginID": "vnz6GiNM", "NewPassword": "boBJHml0"}' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 22 'ResetPassword' test.out

#- 23 SearchUser
eval_tap 0 23 'SearchUser # SKIP deprecated' test.out

#- 24 GetUserByUserID
$PYTHON -m $MODULE 'iam-get-user-by-user-id' \
    'LJmpPi4m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetUserByUserID' test.out

#- 25 UpdateUser
$PYTHON -m $MODULE 'iam-update-user' \
    '{"Country": "qhruiCZL", "DateOfBirth": "GGP5UXkH", "DisplayName": "NTMapp5S", "LanguageTag": "bonsUJKA"}' \
    'Dr60EkdF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateUser' test.out

#- 26 DeleteUser
$PYTHON -m $MODULE 'iam-delete-user' \
    'rpLsGt9y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteUser' test.out

#- 27 BanUser
$PYTHON -m $MODULE 'iam-ban-user' \
    '{"ban": "TXWUSCQc", "comment": "MsHN7reI", "endDate": "22ks7I12", "reason": "tAZc8sxx", "skipNotif": true}' \
    '9XQeqNWL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BanUser' test.out

#- 28 GetUserBanHistory
$PYTHON -m $MODULE 'iam-get-user-ban-history' \
    'm8cNJbYH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetUserBanHistory' test.out

#- 29 DisableUserBan
$PYTHON -m $MODULE 'iam-disable-user-ban' \
    '5J4WiJLv' \
    '9NvHwtw2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'DisableUserBan' test.out

#- 30 EnableUserBan
$PYTHON -m $MODULE 'iam-enable-user-ban' \
    'Mjcy9ZL6' \
    'Zs5Bu2XY' \
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
    'opLWZeUK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetUserInformation' test.out

#- 35 DeleteUserInformation
$PYTHON -m $MODULE 'iam-delete-user-information' \
    'JJNftRpG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteUserInformation' test.out

#- 36 GetUserLoginHistories
$PYTHON -m $MODULE 'iam-get-user-login-histories' \
    'gk1iseRE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetUserLoginHistories' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
$PYTHON -m $MODULE 'iam-save-user-permission' \
    '{"Permissions": [{"Action": 51, "Resource": "zRG6z9wm", "SchedAction": 40, "SchedCron": "HddyOdib", "SchedRange": ["I1LVyqbd"]}]}' \
    'Y8DGZKAu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SaveUserPermission' test.out

#- 39 AddUserPermission
$PYTHON -m $MODULE 'iam-add-user-permission' \
    '{"SchedAction": 29, "SchedCron": "IKz3Pp3z", "SchedRange": ["LWUxMzMt"]}' \
    '88' \
    'mMmZP8nG' \
    '0FoQP8q7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AddUserPermission' test.out

#- 40 DeleteUserPermission
$PYTHON -m $MODULE 'iam-delete-user-permission' \
    '0' \
    'Ssb85gAh' \
    '9RD3ZzN6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteUserPermission' test.out

#- 41 GetUserPlatformAccounts
$PYTHON -m $MODULE 'iam-get-user-platform-accounts' \
    'N1iJ8ltt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserPlatformAccounts' test.out

#- 42 GetUserMapping
$PYTHON -m $MODULE 'iam-get-user-mapping' \
    '9IRqCflg' \
    'ln6r5f0s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetUserMapping' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
$PYTHON -m $MODULE 'iam-platform-link' \
    '5H6lCf3Q' \
    'Ha11hLLC' \
    'gw5av4LE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PlatformLink' test.out

#- 45 PlatformUnlink
$PYTHON -m $MODULE 'iam-platform-unlink' \
    'xdabD8g2' \
    'cvHfMRup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PlatformUnlink' test.out

#- 46 GetPublisherUser
$PYTHON -m $MODULE 'iam-get-publisher-user' \
    'DA5xbjs3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetPublisherUser' test.out

#- 47 SaveUserRoles
$PYTHON -m $MODULE 'iam-save-user-roles' \
    '["XRdHUJ0G"]' \
    'CmflIXkg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'SaveUserRoles' test.out

#- 48 AddUserRole
$PYTHON -m $MODULE 'iam-add-user-role' \
    'J6zkTwoa' \
    'kq7sEejF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AddUserRole' test.out

#- 49 DeleteUserRole
$PYTHON -m $MODULE 'iam-delete-user-role' \
    'Z1NtONXb' \
    '9w9hsQHs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteUserRole' test.out

#- 50 UpgradeHeadlessAccount
$PYTHON -m $MODULE 'iam-upgrade-headless-account' \
    '{"LoginID": "zIsfrlzK", "Password": "pQdd58dZ"}' \
    'P5RvrinN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpgradeHeadlessAccount' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
$PYTHON -m $MODULE 'iam-upgrade-headless-account-with-verification-code' \
    '{"Code": "tvBtqFSk", "Password": "A68mIVYJ", "loginId": "5pSVxBsL"}' \
    'hty3pecT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpgradeHeadlessAccountWithVerificationCode' test.out

#- 52 UserVerification
$PYTHON -m $MODULE 'iam-user-verification' \
    '{"Code": "oXA4M1oU", "ContactType": "FPhgo7Z6", "LanguageTag": "mwNC4FY6", "validateOnly": false}' \
    'M87joJNO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UserVerification' test.out

#- 53 SendVerificationCode
$PYTHON -m $MODULE 'iam-send-verification-code' \
    '{"Context": "GB83Ns6H", "LanguageTag": "l5Poab6l", "LoginID": "KoVqNBUz"}' \
    'IxOfglqu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'SendVerificationCode' test.out

#- 54 Authorization
$PYTHON -m $MODULE 'iam-authorization' \
    'S2q2DoWr' \
    '9zvFtKa2' \
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
    'OAqOokV1' \
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
    'client_credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'TokenGrant' test.out

#- 62 VerifyToken
$PYTHON -m $MODULE 'iam-verify-token' \
    'lxQ2YriT' \
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
    '{"AdminRole": false, "Managers": [{"DisplayName": "ipD67jI2", "Namespace": "hiZkrtLn", "UserId": "h2U1RQlM"}], "Members": [{"DisplayName": "xkfNMPNt", "Namespace": "qv2TMz1b", "UserId": "7SnzkXOe"}], "Permissions": [{"Action": 21, "Resource": "83Igm1wk", "SchedAction": 89, "SchedCron": "WsYvAsu1", "SchedRange": ["8obUdc8m"]}], "RoleName": "bvXcwcgM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'CreateRole' test.out

#- 65 GetRole
$PYTHON -m $MODULE 'iam-get-role' \
    'qOXMziXr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetRole' test.out

#- 66 UpdateRole
$PYTHON -m $MODULE 'iam-update-role' \
    '{"RoleName": "VdsEc3Cl"}' \
    'FP3mJwus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'UpdateRole' test.out

#- 67 DeleteRole
$PYTHON -m $MODULE 'iam-delete-role' \
    'CBTe4kLc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'DeleteRole' test.out

#- 68 GetRoleAdminStatus
$PYTHON -m $MODULE 'iam-get-role-admin-status' \
    'uqL40NYg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'GetRoleAdminStatus' test.out

#- 69 SetRoleAsAdmin
$PYTHON -m $MODULE 'iam-set-role-as-admin' \
    'ekRavpaG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'SetRoleAsAdmin' test.out

#- 70 RemoveRoleAdmin
$PYTHON -m $MODULE 'iam-remove-role-admin' \
    'TA9BTyCC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'RemoveRoleAdmin' test.out

#- 71 GetRoleManagers
$PYTHON -m $MODULE 'iam-get-role-managers' \
    'yN4Fw9i6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'GetRoleManagers' test.out

#- 72 AddRoleManagers
$PYTHON -m $MODULE 'iam-add-role-managers' \
    '{"Managers": [{"DisplayName": "mI2W3tjj", "Namespace": "CqPVyYs0", "UserId": "1hEYzWw3"}]}' \
    'qrcxM0DP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'AddRoleManagers' test.out

#- 73 RemoveRoleManagers
$PYTHON -m $MODULE 'iam-remove-role-managers' \
    '{"Managers": [{"DisplayName": "AXQBNMP7", "Namespace": "j3xfPaoZ", "UserId": "aWFspkU5"}]}' \
    'kn6PlPqD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'RemoveRoleManagers' test.out

#- 74 GetRoleMembers
$PYTHON -m $MODULE 'iam-get-role-members' \
    '4AgfasBf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'GetRoleMembers' test.out

#- 75 AddRoleMembers
$PYTHON -m $MODULE 'iam-add-role-members' \
    '{"Members": [{"DisplayName": "clBhZjZb", "Namespace": "LnmghKwP", "UserId": "yVIn3qaH"}]}' \
    'P7KNulyf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'AddRoleMembers' test.out

#- 76 RemoveRoleMembers
$PYTHON -m $MODULE 'iam-remove-role-members' \
    '{"Members": [{"DisplayName": "rENVQkpc", "Namespace": "aWHf6T2x", "UserId": "OOljn7c6"}]}' \
    'c9efJI02' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'RemoveRoleMembers' test.out

#- 77 UpdateRolePermissions
$PYTHON -m $MODULE 'iam-update-role-permissions' \
    '{"Permissions": [{"Action": 91, "Resource": "ZxrgLBFJ", "SchedAction": 61, "SchedCron": "kphFz0h6", "SchedRange": ["WpoVpVc2"]}]}' \
    'HBBmj6cE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UpdateRolePermissions' test.out

#- 78 AddRolePermission
$PYTHON -m $MODULE 'iam-add-role-permission' \
    '{"SchedAction": 17, "SchedCron": "02hXl42u", "SchedRange": ["bCRfy4Gj"]}' \
    '73' \
    'n5ItHXLD' \
    'ZqpRhqnR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'AddRolePermission' test.out

#- 79 DeleteRolePermission
$PYTHON -m $MODULE 'iam-delete-role-permission' \
    '64' \
    'cbLuQOGM' \
    'OEzmdjNh' \
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
    '{"AgeRestriction": 91, "Enable": false}' \
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
    '{"AgeRestriction": 33}' \
    'yfMBSaZc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateCountryAgeRestriction' test.out

#- 84 AdminSearchUsersV2
$PYTHON -m $MODULE 'iam-admin-search-users-v2' \
    '4SA16M8g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'AdminSearchUsersV2' test.out

#- 85 AdminGetUserByUserIdV2
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v2' \
    'QCD7aBHW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'AdminGetUserByUserIdV2' test.out

#- 86 AdminUpdateUserV2
$PYTHON -m $MODULE 'iam-admin-update-user-v2' \
    '{"Country": "CYevNkfc", "DateOfBirth": "Qvl4Oso7", "DisplayName": "tx65zXCi", "LanguageTag": "TfjorLFq"}' \
    'TmIUFUoo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'AdminUpdateUserV2' test.out

#- 87 AdminBanUserV2
$PYTHON -m $MODULE 'iam-admin-ban-user-v2' \
    '{"ban": "nHBI13SZ", "comment": "FHfm0F8v", "endDate": "S2BrZ3nq", "reason": "88YSSD7z", "skipNotif": true}' \
    '8FvVU3kR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'AdminBanUserV2' test.out

#- 88 AdminGetUserBanV2
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v2' \
    'XBGPXIdf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'AdminGetUserBanV2' test.out

#- 89 AdminDisableUserV2
$PYTHON -m $MODULE 'iam-admin-disable-user-v2' \
    '{"Reason": "t1biZHuh"}' \
    'WyFPHdXc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'AdminDisableUserV2' test.out

#- 90 AdminEnableUserV2
$PYTHON -m $MODULE 'iam-admin-enable-user-v2' \
    'yvZEhYeU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'AdminEnableUserV2' test.out

#- 91 AdminResetPasswordV2
$PYTHON -m $MODULE 'iam-admin-reset-password-v2' \
    '{"LanguageTag": "Sy5Ukc65", "NewPassword": "naP11R8X", "OldPassword": "ww9vq9nM"}' \
    'a2Btgwyu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'AdminResetPasswordV2' test.out

#- 92 AdminDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-admin-delete-platform-link-v2' \
    'f2fjV30S' \
    'Lxi7uyha' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'AdminDeletePlatformLinkV2' test.out

#- 93 AdminPutUserRolesV2
$PYTHON -m $MODULE 'iam-admin-put-user-roles-v2' \
    '["eFtcO9XN"]' \
    'y63QO9vW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'AdminPutUserRolesV2' test.out

#- 94 AdminCreateUserRolesV2
$PYTHON -m $MODULE 'iam-admin-create-user-roles-v2' \
    '["0ck7TEDE"]' \
    '8LeEQBeG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'AdminCreateUserRolesV2' test.out

#- 95 PublicGetCountryAgeRestriction
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction' \
    'PLiE6tHC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PublicGetCountryAgeRestriction' test.out

#- 96 PublicCreateUserV2
$PYTHON -m $MODULE 'iam-public-create-user-v2' \
    '{"AuthType": "r0GPFvT0", "Country": "SAK91y5v", "DisplayName": "CeBIJq0B", "LoginId": "9UcI6c5c", "Password": "re9ealHO", "PasswordMD5Sum": "ZphcLncn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'PublicCreateUserV2' test.out

#- 97 PublicForgotPasswordV2
$PYTHON -m $MODULE 'iam-public-forgot-password-v2' \
    '{"Context": "jnmyU8FS", "LanguageTag": "xXdCrsko", "LoginID": "Fqnowq9L"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicForgotPasswordV2' test.out

#- 98 PublicResetPasswordV2
$PYTHON -m $MODULE 'iam-public-reset-password-v2' \
    '{"Code": "az1GLt5M", "LoginID": "hf8Z7ahm", "NewPassword": "bVPm2g7x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'PublicResetPasswordV2' test.out

#- 99 PublicGetUserByUserIDV2
$PYTHON -m $MODULE 'iam-public-get-user-by-user-idv2' \
    'AFfRRLUj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'PublicGetUserByUserIDV2' test.out

#- 100 PublicUpdateUserV2
$PYTHON -m $MODULE 'iam-public-update-user-v2' \
    '{"Country": "fWS9sftI", "DateOfBirth": "fHGe5bUT", "DisplayName": "SXOv12PM", "LanguageTag": "cRO6E2Mk"}' \
    're5q7Fva' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'PublicUpdateUserV2' test.out

#- 101 PublicGetUserBan
$PYTHON -m $MODULE 'iam-public-get-user-ban' \
    'ACp6he0f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'PublicGetUserBan' test.out

#- 102 PublicUpdatePasswordV2
$PYTHON -m $MODULE 'iam-public-update-password-v2' \
    '{"LanguageTag": "zjkPNNS0", "NewPassword": "BfgF6inI", "OldPassword": "RsZ5hrqN"}' \
    'zVszGVP5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdatePasswordV2' test.out

#- 103 GetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-get-list-justice-platform-accounts' \
    'P1iwhcf3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetListJusticePlatformAccounts' test.out

#- 104 PublicPlatformLinkV2
$PYTHON -m $MODULE 'iam-public-platform-link-v2' \
    '0C1KHRZH' \
    'MGy5vbfZ' \
    'vYIFFctE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'PublicPlatformLinkV2' test.out

#- 105 PublicDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-public-delete-platform-link-v2' \
    'KOLxSRxe' \
    '0wmWBMcN' \
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
    '[{"field": "iWoobB6o", "validation": {"allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "description": [{"language": "pE9wGNVw", "message": ["kgfJJ2HI"]}], "isCustomRegex": false, "letterCase": "lfzgRpTf", "maxLength": 23, "maxRepeatingAlphaNum": 46, "maxRepeatingSpecialCharacter": 62, "minCharType": 71, "minLength": 82, "regex": "BizXZtrG", "specialCharacterLocation": "e8LyOH24", "specialCharacters": ["nneZHFeR"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'ld0bGA7J' \
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
    '{"ageRestriction": 46, "enable": true}' \
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
    '{"ageRestriction": 1}' \
    'Eaimvokc' \
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
    '{"audiences": ["WX59kwiY"], "baseUri": "HgHT6Ivd", "clientId": "0fGpU209", "clientName": "nVRclumQ", "clientPermissions": [{"action": 91, "resource": "Fvr5rRyY", "schedAction": 50, "schedCron": "aNmz3PjM", "schedRange": ["x2T89NTr"]}], "clientPlatform": "FRUCXFkr", "deletable": true, "namespace": "xegpkcXC", "oauthClientType": "fzgcvv0W", "redirectUri": "E5EQhcom", "secret": "PS1E7cps"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'AdminCreateClientV3' test.out

#- 120 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'Lgr2zEnj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 121 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'yRNjEC3F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminDeleteClientV3' test.out

#- 122 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["MDcZvwwf"], "baseUri": "8aU98In3", "clientName": "1mF4jlwK", "clientPermissions": [{"action": 49, "resource": "GxTF1l5q", "schedAction": 78, "schedCron": "p0sT1X8J", "schedRange": ["2eAWOzjm"]}], "clientPlatform": "h9UzIfnh", "deletable": false, "namespace": "o6xUmTle", "redirectUri": "UnJFM7Xh"}' \
    'oDxGik2J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminUpdateClientV3' test.out

#- 123 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 89, "resource": "fZ64wWeP"}]}' \
    'q6103PON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminUpdateClientPermissionV3' test.out

#- 124 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 72, "resource": "IS7F9emW"}]}' \
    '4R15tAsi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminAddClientPermissionsV3' test.out

#- 125 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '65' \
    '31CEyUOu' \
    'OZhmnHkv' \
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
    'ek6Aa5kN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "noclxs9k", "AWSCognitoRegion": "xcvIpV7m", "AWSCognitoUserPool": "CYfWKjY9", "AppId": "CsQYsGyh", "ClientId": "EOntEked", "Environment": "M1A0bFqv", "FederationMetadataURL": "jxbT3YuV", "GenericOauthFlow": false, "IsActive": false, "Issuer": "BN5RSjhc", "JWKSEndpoint": "juDvNrXL", "KeyID": "845jfh5t", "NetflixCertificates": {"encryptedPrivateKey": "Z0hqJLjQ", "encryptedPrivateKeyName": "UmoYUnC8", "publicCertificate": "49OBNuLZ", "publicCertificateName": "tofGAAaM", "rootCertificate": "pBQArU4R", "rootCertificateName": "S0FQRy5Q"}, "OrganizationId": "z5VcyfBp", "PlatformName": "HjtvFwKS", "RedirectUri": "JyZeqvpe", "Secret": "vcVXTxs9", "TeamID": "LTorIyx2", "TokenAuthenticationType": "3LhLy7ds", "TokenClaimsMapping": {"3g3BuHTP": "F19dBYFw"}}' \
    's5Ya4eOw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'WqW8HiLp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "Ti1W63Hc", "AWSCognitoRegion": "cgM5kYu3", "AWSCognitoUserPool": "6JpTL55W", "AppId": "4ws3KCyp", "ClientId": "lY1ocKDC", "Environment": "VaqrVeeg", "FederationMetadataURL": "T3uGDIIc", "GenericOauthFlow": true, "IsActive": true, "Issuer": "uokt8TC3", "JWKSEndpoint": "8mYoUanQ", "KeyID": "T4Mmznv7", "NetflixCertificates": {"encryptedPrivateKey": "r2jthibg", "encryptedPrivateKeyName": "eCLX41qy", "publicCertificate": "OiLgd8Wy", "publicCertificateName": "739QHzw0", "rootCertificate": "TEzpd7TV", "rootCertificateName": "5vhMM2i3"}, "OrganizationId": "DM6etfI7", "PlatformName": "TzC3sKmt", "RedirectUri": "syEKdO6H", "Secret": "Nm3zGu71", "TeamID": "qTSSJEbW", "TokenAuthenticationType": "lETp9XOC", "TokenClaimsMapping": {"A1X3HHMT": "lakAWQfB"}}' \
    'uBAOCjBf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["YCcplye2"], "assignedNamespaces": ["GaPNzkrg"], "domain": "BH4icml6", "roleId": "L36Vg2F2"}' \
    'Q9aZDJg1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "OT8109ot"}' \
    '70TevJgs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'b2PyFfJ6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "qcHABdGt", "apiKey": "V9jAPqon", "appId": "7UmLNy9P", "federationMetadataUrl": "kF9SnlbW", "isActive": false, "redirectUri": "Axv8uHDq", "secret": "JtYC7rzn", "ssoUrl": "wNdLhqXv"}' \
    'XVnjvc0B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'MegJpW1Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "euhpLX1B", "apiKey": "HZ4hnOmm", "appId": "yXu6XtjN", "federationMetadataUrl": "CqYk9TPU", "isActive": false, "redirectUri": "DTfR7dpU", "secret": "Eo2Oe08H", "ssoUrl": "peJBfG0n"}' \
    'GZHe5lw2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'TlkPIxL9' \
    'v4fpCd0U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'k5h1kP1p' \
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
    '{"userIds": ["kkT08Cs6"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["DdXZWowB"], "isAdmin": false, "roles": ["ZizMvwHs"]}' \
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
    '{"listEmailAddressRequest": ["zf84MAma"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'yJJ6vzDT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "XxsyIaTg", "country": "p0pwnEJL", "dateOfBirth": "15kxO4oV", "displayName": "UPng5JsH", "languageTag": "AkI47jO1", "userName": "wuAFuZcU"}' \
    'wPteKdQg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'UTF33fYW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "ZfQMAnzi", "comment": "ThaE2btn", "endDate": "0up9GeTQ", "reason": "7XymDSQN", "skipNotif": true}' \
    'pZyFhIeq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": true}' \
    'VSnhxby8' \
    'F6xF8Mhb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "JAYEDN1x", "emailAddress": "szppR69n", "languageTag": "sKAS5zKs"}' \
    'TRXd7b3v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "2fkZIkr0", "ContactType": "6ojUtoVJ", "LanguageTag": "LGXekomv", "validateOnly": true}' \
    'D849mo5v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'IkDZYrYE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'f1xYnlxH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": false}' \
    'FoXtwKW6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "AOnqnWCu", "country": "XMWqG8fN", "dateOfBirth": "prJx82nA", "displayName": "FexNou1A", "emailAddress": "icsQjKx5", "password": "LjetHEw0", "validateOnly": false}' \
    'CQpU6EGO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'W0VAI87D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'PH0fLLiU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 33, "Resource": "zay0gET8", "SchedAction": 90, "SchedCron": "53yEej7D", "SchedRange": ["sqsTvNKA"]}]}' \
    'XqfqMJHG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 9, "Resource": "HaN2k1Eu", "SchedAction": 38, "SchedCron": "m9AAWDcD", "SchedRange": ["v3ISBgZC"]}]}' \
    'Af2pWOWs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 68, "Resource": "2lOHfiu4"}]' \
    'HraKYMtg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '54' \
    'mvCHMtF1' \
    '5a7T0Ihe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'ywiPE1WU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'R1PTFfJJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    '46kzfqap' \
    'bByIKoYz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminCreateJusticeUser' test.out

#- 167 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "YtTWJA3n", "platformUserId": "FCDgWOpz"}' \
    '3yPQfqbe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminLinkPlatformAccount' test.out

#- 168 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "VG7i4VTA"}' \
    'huFYhEgQ' \
    'Bb9Hni6l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminPlatformUnlinkV3' test.out

#- 169 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'DMj9gvkB' \
    'cQjQ56Ru' \
    'AvUlMWp8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformLinkV3' test.out

#- 170 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["WGpZxCe0"]' \
    'KsmXtGBb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserRolesV3' test.out

#- 171 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "KrV58TIT", "roleId": "hQ52PYNk"}]' \
    'nBCjirw4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminSaveUserRoleV3' test.out

#- 172 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'hmfMSl2b' \
    'ETuFLFOf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserRoleV3' test.out

#- 173 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'dl0yRndb' \
    'O78R8ybY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserRoleV3' test.out

#- 174 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "Hx3BIgGu"}' \
    'o817lZA5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserStatusV3' test.out

#- 175 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    '8OI2LMYR' \
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
    '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "J833JKRN", "namespace": "cdpuCxSD", "userId": "FWMVcsOZ"}], "members": [{"displayName": "lS0ulerU", "namespace": "61drwLng", "userId": "bZxOGxFw"}], "permissions": [{"action": 27, "resource": "mB60ea7X", "schedAction": 68, "schedCron": "tZS8KIu9", "schedRange": ["T604oPaj"]}], "roleName": "gyShKuLB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateRoleV3' test.out

#- 178 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    '7pQLZiWV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminGetRoleV3' test.out

#- 179 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'mc8PVwSh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteRoleV3' test.out

#- 180 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": true, "roleName": "Y3h2oVVS"}' \
    'cVv3YTBM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateRoleV3' test.out

#- 181 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    '4teOpqev' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminGetRoleAdminStatusV3' test.out

#- 182 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'sWvMhihe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateAdminRoleStatusV3' test.out

#- 183 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'E2KM7Cta' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminRemoveRoleAdminV3' test.out

#- 184 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'l5z7hLiO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminGetRoleManagersV3' test.out

#- 185 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "Yz1jFfu1", "namespace": "y1d77D8Z", "userId": "NOfHyenh"}]}' \
    'bRZ4a9Uj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminAddRoleManagersV3' test.out

#- 186 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "jjU0EggY", "namespace": "LcGiEDZb", "userId": "Dl9ZeZH3"}]}' \
    'M87v0Fhd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminRemoveRoleManagersV3' test.out

#- 187 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'KDEfXRha' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRoleMembersV3' test.out

#- 188 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "O0AYSqvc", "namespace": "V2LqfgCX", "userId": "28Je4kyP"}]}' \
    'QjgDJNOE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminAddRoleMembersV3' test.out

#- 189 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "MtdEtN4s", "namespace": "EebnQucg", "userId": "aop5NEdh"}]}' \
    'urScNiUx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminRemoveRoleMembersV3' test.out

#- 190 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 26, "resource": "JUewUVhk", "schedAction": 64, "schedCron": "RRTgLCb9", "schedRange": ["evywZywu"]}]}' \
    'nLImNhyZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateRolePermissionsV3' test.out

#- 191 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 36, "resource": "b7YhhQbD", "schedAction": 47, "schedCron": "LRKxzUtp", "schedRange": ["KDC8gl2o"]}]}' \
    'tjUWKxgW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminAddRolePermissionsV3' test.out

#- 192 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["6n8AJaeq"]' \
    'xTPgZKFi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminDeleteRolePermissionsV3' test.out

#- 193 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '88' \
    'BGlCD4ig' \
    '5ZRoJd1a' \
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
    's1Wkfh3l' \
    '8HyGWZTd' \
    'pmTxPUBF' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 195 'UserAuthenticationV3' test.out

#- 196 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'jTIIKcXl' \
    'xPfdDyjJ' \
    '0wwrYelj' \
    'Myoeb3gs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AuthenticationWithPlatformLinkV3' test.out

#- 197 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'MOMdqbt4' \
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
    'PnuFr18i' \
    'jp3Cmzrf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 201 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'VIa1vi9o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'RevokeUserV3' test.out

#- 202 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'ky2P7fIg' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 202 'AuthorizeV3' test.out

#- 203 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'RSBlxuko' \
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
    'OTCosjAX' \
    'o6ljBVW8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'Change2faMethod' test.out

#- 206 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'r7nyNcVl' \
    '6ZB3bGHu' \
    'pBuAL2av' \
    'False' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'Verify2faCode' test.out

#- 207 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'wGRJbZqX' \
    'gQ9azOre' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 208 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'TsviZmgm' \
    '0l8Yr4wm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AuthCodeRequestV3' test.out

#- 209 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'giwIF5Zx' \
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
    '5TIIhBtL' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 211 'TokenRevocationV3' test.out

#- 212 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'refresh_token' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 212 'TokenGrantV3' test.out

#- 213 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'T6xRqyV0' \
    'tlLaMYL1' \
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
    '{"platformUserIds": ["p95v9mOi"]}' \
    'IFEdQ2RK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 217 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'eQy2WRzt' \
    'R5qztuhV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'PublicGetUserByPlatformUserIDV3' test.out

#- 218 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'aJDWx2Od' \
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
    '{"PasswordMD5Sum": "rUV7bhcK", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "B6NWffXk", "policyId": "Yzes2xHp", "policyVersionId": "1ufZNxhb"}], "authType": "saSFtTmb", "code": "If2hFQRm", "country": "si02melJ", "dateOfBirth": "QkLtV2Qn", "displayName": "PsmhFVPt", "emailAddress": "JTGig12O", "password": "dDnxXuJo", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'PublicCreateUserV3' test.out

#- 221 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'OG4tOeWV' \
    'MI9K1eJ6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'CheckUserAvailability' test.out

#- 222 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["xC2h6U8T"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'PublicBulkGetUsers' test.out

#- 223 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "gR2k2RkE", "languageTag": "r8XbmQNu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'PublicSendRegistrationCode' test.out

#- 224 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "v80Em9nu", "emailAddress": "ffLGUWnV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'PublicVerifyRegistrationCode' test.out

#- 225 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "BQPhwwHR", "languageTag": "0qyfFcSC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'PublicForgotPasswordV3' test.out

#- 226 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'dkfe5eaw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'GetAdminInvitationV3' test.out

#- 227 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "pdHeH5p8", "policyId": "Zx8jy7nx", "policyVersionId": "GzOTBpmm"}], "authType": "EMAILPASSWD", "country": "uEEEyDtw", "dateOfBirth": "btA8xsmm", "displayName": "caOLdFif", "password": "Uk9p700j", "reachMinimumAge": true}' \
    '0p4HpK8p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'CreateUserFromInvitationV3' test.out

#- 228 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "vufSxYM0", "country": "VkuqOKrh", "dateOfBirth": "vMwvD04U", "displayName": "Y8ghvsmS", "languageTag": "rrJzAi6F", "userName": "OuhQIBAb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'UpdateUserV3' test.out

#- 229 PublicUpdateUserV3
$PYTHON -m $MODULE 'iam-public-update-user-v3' \
    '{"avatarUrl": "up1fpWsO", "country": "6fW468fW", "dateOfBirth": "xqRkJDjf", "displayName": "NhYDgVm0", "languageTag": "TCaos4wy", "userName": "jaPP6Cle"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'PublicUpdateUserV3' test.out

#- 230 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "kQGm25KY", "emailAddress": "mFZxQr4x", "languageTag": "bV63gcdU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'PublicSendVerificationCodeV3' test.out

#- 231 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "4vyIPJeR", "contactType": "jCj7UK5n", "languageTag": "EmwsQtSf", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicUserVerificationV3' test.out

#- 232 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "qA4CysEX", "country": "4VOy0n2E", "dateOfBirth": "kPBjC4ec", "displayName": "HwtSGzay", "emailAddress": "UaDh3m2e", "password": "X31qVPH2", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicUpgradeHeadlessAccountV3' test.out

#- 233 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "znf57fQ1", "password": "PY5uDkQ8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicVerifyHeadlessAccountV3' test.out

#- 234 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "zpNRwycE", "newPassword": "AShpFLpq", "oldPassword": "Ax1N5IGe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicUpdatePasswordV3' test.out

#- 235 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'bNuvyrgh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateJusticeUser' test.out

#- 236 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'VdsSwDc9' \
    'NJRX9Zda' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PublicPlatformLinkV3' test.out

#- 237 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "C8sja1J7"}' \
    'eucGSSxZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicPlatformUnlinkV3' test.out

#- 238 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'JPto04wT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicPlatformUnlinkAllV3' test.out

#- 239 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'EI8isXmy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicWebLinkPlatform' test.out

#- 240 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'AGW2rZ7b' \
    'YvVW26Oa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicWebLinkPlatformEstablish' test.out

#- 241 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "ysx72rwV", "emailAddress": "3MdXNVRD", "newPassword": "zT2sBbfl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'ResetPasswordV3' test.out

#- 242 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'g7cD247c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicGetUserByUserIdV3' test.out

#- 243 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    '1XYYJf18' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserBanHistoryV3' test.out

#- 244 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'StYu6wb2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 245 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'We3Q6Pm7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserLoginHistoriesV3' test.out

#- 246 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'RBkqWDPE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicGetUserPlatformAccountsV3' test.out

#- 247 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "P4CWnZJj", "platformUserId": "XdiUv9ow"}' \
    'F1mQrc03' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicLinkPlatformAccount' test.out

#- 248 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["W7oOdpY5"], "requestId": "ZJChQtpD"}' \
    '2U9IQzA2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicForceLinkPlatformWithProgression' test.out

#- 249 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'eexjq3Tf' \
    'nJ6ryQ4w' \
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
    'Cg5Itn9T' \
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
    'YOR2n8qF' \
    'jjSZx0Fe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PlatformAuthenticateSAMLV3Handler' test.out

#- 254 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'RdmgOta6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'LoginSSOClient' test.out

#- 255 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'pcKzSPfe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'LogoutSSOClient' test.out

#- 256 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["k369fIM1"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'AdminBulkCheckValidUserIDV4' test.out

#- 257 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "tcxwt2Xq", "country": "PFaIxBgz", "dateOfBirth": "RO8GKycd", "displayName": "cXuULpvu", "languageTag": "BNRzUbH0", "userName": "hI7yCEyj"}' \
    'KXQPnomA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'AdminUpdateUserV4' test.out

#- 258 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "sHMpmDvt", "emailAddress": "4tkWavQ0"}' \
    'jo17Qq6A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'AdminUpdateUserEmailAddressV4' test.out

#- 259 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'FdE7URb1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'AdminDisableUserMFAV4' test.out

#- 260 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    '9BcvWfPx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'AdminListUserRolesV4' test.out

#- 261 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["HPQaUCly"], "roleId": "AjfGkGwD"}' \
    'soo09NdZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'AdminUpdateUserRoleV4' test.out

#- 262 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["jNjjtl8X"], "roleId": "IGZV3GBX"}' \
    'IHxWGX4i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'AdminAddUserRoleV4' test.out

#- 263 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["wwHLohaK"], "roleId": "vD9nNeLi"}' \
    '2tRrclM3' \
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
    '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "kWcIpWlb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'AdminCreateRoleV4' test.out

#- 266 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'LNxQciSm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'AdminGetRoleV4' test.out

#- 267 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    '2ObiacE1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'AdminDeleteRoleV4' test.out

#- 268 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "3dhO4E5c"}' \
    'HbV6Tq3m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'AdminUpdateRoleV4' test.out

#- 269 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 0, "resource": "kniWG9At", "schedAction": 1, "schedCron": "znHrmvF1", "schedRange": ["mJZ3dLFx"]}]}' \
    'AkQrsQXC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'AdminUpdateRolePermissionsV4' test.out

#- 270 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 92, "resource": "jnXNZpac", "schedAction": 7, "schedCron": "MfX6X3Zt", "schedRange": ["a5msSId5"]}]}' \
    '56xncCH3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'AdminAddRolePermissionsV4' test.out

#- 271 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["7zoQElCS"]' \
    'NpKYpjKm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'AdminDeleteRolePermissionsV4' test.out

#- 272 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'IIb0iBSA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'AdminListAssignedUsersV4' test.out

#- 273 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["7vdLvUFJ"], "namespace": "7qN6ucqf", "userId": "Jth42FD6"}' \
    'A3kchLvx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'AdminAssignUserToRoleV4' test.out

#- 274 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "RuULxDjX", "userId": "J9BFwEyG"}' \
    'UCv8O9EB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'AdminRevokeUserFromRoleV4' test.out

#- 275 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "lPmENb7i", "country": "nSCGzNuH", "dateOfBirth": "pABtt9Gg", "displayName": "pAZjcg8z", "languageTag": "9cH6u6Sm", "userName": "VFciDGuf"}' \
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
    'TZk7gk6n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminMakeFactorMyDefaultV4' test.out

#- 286 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["ZZgUCWs5"], "emailAddresses": ["b2flAnrs"], "isAdmin": true, "roleId": "pCRQfPhf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminInviteUserV4' test.out

#- 287 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "amej28Ju", "policyId": "m6vaoBRu", "policyVersionId": "MFZbZvy6"}], "authType": "EMAILPASSWD", "country": "J2jHxdpq", "dateOfBirth": "HuBibSpy", "displayName": "FVnkERZ9", "emailAddress": "gwlM0hF5", "password": "0v8sFHE2", "passwordMD5Sum": "trW2mRr4", "username": "XS8ek4IK", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicCreateTestUserV4' test.out

#- 288 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "bukLGw4H", "policyId": "J51V5Dd7", "policyVersionId": "JZjCvoCn"}], "authType": "EMAILPASSWD", "code": "0By8GbfD", "country": "bnZRasK3", "dateOfBirth": "D9LYj8f7", "displayName": "kb4sU5W5", "emailAddress": "wrnCC7OG", "password": "huPV98XU", "passwordMD5Sum": "YE5mm7bH", "reachMinimumAge": true, "username": "lXpNGEUu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicCreateUserV4' test.out

#- 289 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "31elzdmX", "policyId": "7gz9djDT", "policyVersionId": "8HpJ3j7L"}], "authType": "EMAILPASSWD", "country": "GDuYXVur", "dateOfBirth": "nW5P0Zs1", "displayName": "3FtOvKL3", "password": "NS8Iq1rR", "reachMinimumAge": true, "username": "HR1S2ZUI"}' \
    'C8uvkyFC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'CreateUserFromInvitationV4' test.out

#- 290 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "MKBFVFMD", "country": "8RmFR37l", "dateOfBirth": "ij05gCbg", "displayName": "x9wKmx7c", "languageTag": "jHqzVYnt", "userName": "0cmkvnir"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicUpdateUserV4' test.out

#- 291 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "igdjwdDL", "emailAddress": "kv0pxwrY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicUpdateUserEmailAddressV4' test.out

#- 292 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "jQ08Mafj", "country": "V6ihDDPn", "dateOfBirth": "2UODE5C6", "displayName": "wjRywXS6", "emailAddress": "QpnJBEzx", "password": "6dWqAZXp", "reachMinimumAge": false, "username": "DSpnpvCu", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 293 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "bIzKZsyG", "password": "X6JJkbGq", "username": "2cf2RYx5"}' \
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
    'T5vYIU38' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
