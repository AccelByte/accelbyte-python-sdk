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

touch "tmp.dat"

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

$PYTHON -m $MODULE 'start-interactive-session' --continue_on_error '--writer=tap' << END
basic-get-namespaces --login_with_auth "Bearer foo"
basic-create-namespace --body '{"displayName": "FtBxyZcD", "namespace": "XBpGlsQu"}' --login_with_auth "Bearer foo"
basic-get-namespace --login_with_auth "Bearer foo"
basic-delete-namespace --login_with_auth "Bearer foo"
basic-get-actions --login_with_auth "Bearer foo"
basic-ban-users --body '{"actionId": 71, "comment": "u8vMf0Is", "userIds": ["JkTrd8ID"]}' --login_with_auth "Bearer foo"
basic-get-banned-users '["cV2zXnTK"]' --login_with_auth "Bearer foo"
basic-report-user --body '{"category": "jXY1bPqa", "description": "miBxx9Cs", "gameSessionId": "18EY84ek", "subcategory": "ItqRzHU1", "userId": "oh570KQB"}' --login_with_auth "Bearer foo"
basic-get-user-status 'Vaewc72k' --login_with_auth "Bearer foo"
basic-un-ban-users --body '{"comment": "rSha68n3", "userIds": ["Ynozp1C2"]}' --login_with_auth "Bearer foo"
basic-update-namespace --body '{"displayName": "KmIQTuBd"}' --login_with_auth "Bearer foo"
basic-get-config --login_with_auth "Bearer foo"
basic-delete-config --login_with_auth "Bearer foo"
basic-update-config --body '{"apiKey": "NEUsxFb8"}' --login_with_auth "Bearer foo"
basic-generated-upload-url 'CJ17M7DJ' 'ZaMSxECb' --login_with_auth "Bearer foo"
basic-get-countries --login_with_auth "Bearer foo"
basic-get-country-groups --login_with_auth "Bearer foo"
basic-add-country-group --body '{"countries": [{"code": "Zbygyoar", "name": "ORoeNHSb"}], "countryGroupCode": "8Rh3kgs9", "countryGroupName": "qqJbnQso"}' --login_with_auth "Bearer foo"
basic-update-country-group 'BgiVpP8C' --body '{"countries": [{"code": "m3yvASUo", "name": "xdxxFqmA"}], "countryGroupName": "GTJ8IEda"}' --login_with_auth "Bearer foo"
basic-delete-country-group 'gEtp4w29' --login_with_auth "Bearer foo"
basic-get-languages --login_with_auth "Bearer foo"
basic-get-time-zones --login_with_auth "Bearer foo"
basic-get-user-profile-info-by-public-id 'KOu9c19R' --login_with_auth "Bearer foo"
basic-admin-get-user-profile-public-info-by-ids --body '{"userIds": ["6XDqWHkk"]}' --login_with_auth "Bearer foo"
basic-get-namespace-publisher --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile 'pLEKMfji' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url 'X7jpkVZk' '3IaQYEmq' --login_with_auth "Bearer foo"
basic-get-user-profile-info 'GodOEGt9' --login_with_auth "Bearer foo"
basic-update-user-profile 'gPOj0c6i' --body '{"avatarLargeUrl": "0JkvIas7", "avatarSmallUrl": "3ucYnFAJ", "avatarUrl": "3DK5T4Eo", "customAttributes": {"gg0Y39Uo": {}}, "dateOfBirth": "3506-05-21", "firstName": "UTDUscbQ", "language": "JBt-KYuz-536", "lastName": "BBSMNcoA", "status": "INACTIVE", "timeZone": "OjKNjfcY", "zipCode": "Hm093aYg"}' --login_with_auth "Bearer foo"
basic-delete-user-profile 'BU1sqjyK' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info '0XH45PaR' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially 'SOFQBtu2' --body '{"3REZ8hRV": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info 'X7LGOvDd' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially 'YiQS9i7m' --body '{"V1C91pjG": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status '9gpxL6yc' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-public-generated-upload-url 'vln2LAuS' 'QWEXL6LF' --login_with_auth "Bearer foo"
basic-public-get-countries --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids 'E1YHo9m1' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id '26ZWc8hH' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "tWvbNYqg", "avatarSmallUrl": "UqslArFP", "avatarUrl": "iHUIvaCv", "customAttributes": {"8kU9dBBp": {}}, "dateOfBirth": "4891-12-25", "firstName": "rkxoot0B", "language": "FERC", "lastName": "Mci37Ds7", "privateCustomAttributes": {"YSfExaI3": {}}, "timeZone": "uzLteMbF", "zipCode": "Alt4hr7H"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "mOYiBA5l", "avatarSmallUrl": "tAOXmlG6", "avatarUrl": "eh1dTdoT", "customAttributes": {"FpBIcuC1": {}}, "dateOfBirth": "8381-11-01", "firstName": "z7Hu8AD7", "language": "Dw_IZuQ", "lastName": "HyhhERoG", "privateCustomAttributes": {"gdrysMiz": {}}, "timeZone": "BGSRdP2l"}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "7DNSZ8Aq"}' --login_with_auth "Bearer foo"
basic-public-report-user '0XiPLQXS' --body '{"category": "e07ZddOG", "description": "TMlJjBwj", "gameSessionId": "9HJHQKse", "subcategory": "EdSXRDSv", "userId": "guauw1xT"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url '7eMwSl9M' 'LH0NnTJ2' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info 'ulNzBvwJ' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'aQa547Jl' --body '{"avatarLargeUrl": "lvA8RWSp", "avatarSmallUrl": "abUt7xk6", "avatarUrl": "QxyWhfqo", "customAttributes": {"WfJw2o8o": {}}, "dateOfBirth": "5786-08-05", "firstName": "uNIdQJR5", "language": "Sn_As", "lastName": "bnsuLCgT", "timeZone": "oxuVTekJ", "zipCode": "gvg6h5HI"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'pH0Dvipl' --body '{"avatarLargeUrl": "Ek4vj3LD", "avatarSmallUrl": "p4yqDt8Q", "avatarUrl": "UZDpxlHa", "customAttributes": {"sinGcjrk": {}}, "dateOfBirth": "9441-08-30", "firstName": "IVBmft3U", "language": "GP", "lastName": "X4MsisSX", "timeZone": "28nARxWR"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'pv5ou5xt' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially 'vd28OUfC' --body '{"t8UJC5fl": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'Nyj6HsTt' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'X8P3llna' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
exit()
END

rm -f "tmp.dat"

EXIT_CODE=$?

exit $EXIT_CODE