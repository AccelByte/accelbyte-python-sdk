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
basic-admin-get-user-profile-public-info-by-ids --body '{"userIds": ["KOu9c19R"]}' --login_with_auth "Bearer foo"
basic-get-namespace-publisher --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile 'qWHkkP8n' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url 'pLEKMfji' 'X7jpkVZk' --login_with_auth "Bearer foo"
basic-get-user-profile-info '3IaQYEmq' --login_with_auth "Bearer foo"
basic-update-user-profile 'GodOEGt9' --body '{"avatarLargeUrl": "gPOj0c6i", "avatarSmallUrl": "0JkvIas7", "avatarUrl": "3ucYnFAJ", "customAttributes": {"3DK5T4Eo": {}}, "dateOfBirth": "1323-10-31", "firstName": "gtsDhUTD", "language": "SCBq_tqUp_uz", "lastName": "POw6zPFJ", "status": "ACTIVE", "timeZone": "wmzBBSMN", "zipCode": "coAAOjKN"}' --login_with_auth "Bearer foo"
basic-delete-user-profile 'jfcYHm09' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info '3aYgBU1s' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially 'qjyK0XH4' --body '{"5PaRSOFQ": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info 'Btu23REZ' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially '8hRVX7LG' --body '{"OvDdYiQS": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status '9i7mV1C9' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-public-generated-upload-url 'jG9gpxL6' 'ycTQdvln' --login_with_auth "Bearer foo"
basic-public-get-countries --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids '2LAuSQWE' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "XL6LFE1Y", "avatarSmallUrl": "Ho9m126Z", "avatarUrl": "Wc8hHtWv", "customAttributes": {"bNYqgUqs": {}}, "dateOfBirth": "6472-10-22", "firstName": "U9dBBpds", "language": "lHSv-RKXO", "lastName": "t0B7WOfe", "privateCustomAttributes": {"rcZdpMci": {}}, "timeZone": "37Ds7YSf", "zipCode": "ExaI3uzL"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "teMbFAlt", "avatarSmallUrl": "4hr7HmOY", "avatarUrl": "iBA5ltAO", "customAttributes": {"XmlG6eh1": {}}, "dateOfBirth": "0373-12-06", "firstName": "C1dQY93O", "language": "NjtE-DZhU-wU", "lastName": "nvizU0q1", "privateCustomAttributes": {"pHyhhERo": {}}, "timeZone": "GgdrysMi"}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "zBGSRdP2"}' --login_with_auth "Bearer foo"
basic-public-report-user 'l7DNSZ8A' --body '{"category": "q0XiPLQX", "description": "Se07ZddO", "gameSessionId": "GTMlJjBw", "subcategory": "j9HJHQKs", "userId": "eEdSXRDS"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url 'vguauw1x' 'T7eMwSl9' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info 'MLH0NnTJ' --login_with_auth "Bearer foo"
basic-public-update-user-profile '2ulNzBvw' --body '{"avatarLargeUrl": "JaQa547J", "avatarSmallUrl": "llvA8RWS", "avatarUrl": "pabUt7xk", "customAttributes": {"6QxyWhfq": {}}, "dateOfBirth": "1853-05-28", "firstName": "zT7NXmWD", "language": "xS_SnoL_As", "lastName": "bnsuLCgT", "timeZone": "oxuVTekJ", "zipCode": "gvg6h5HI"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'pH0Dvipl' --body '{"avatarLargeUrl": "Ek4vj3LD", "avatarSmallUrl": "p4yqDt8Q", "avatarUrl": "UZDpxlHa", "customAttributes": {"sinGcjrk": {}}, "dateOfBirth": "9441-08-30", "firstName": "IVBmft3U", "language": "GP", "lastName": "X4MsisSX", "timeZone": "28nARxWR"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'pv5ou5xt' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially 'vd28OUfC' --body '{"t8UJC5fl": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'Nyj6HsTt' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'X8P3llna' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
END

exit $EXIT_CODE