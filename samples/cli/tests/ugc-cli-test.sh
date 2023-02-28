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
ugc-single-admin-get-channel --login_with_auth "Bearer foo"
ugc-admin-create-channel '{"name": "tulSEfsZ"}' --login_with_auth "Bearer foo"
ugc-single-admin-update-channel '{"name": "FcgvIvFp"}' '47IVzODT' --login_with_auth "Bearer foo"
ugc-single-admin-delete-channel 'NWQ9ZDgR' --login_with_auth "Bearer foo"
ugc-admin-upload-content-s3 '{"contentType": "WHxgVfnb", "customAttributes": {"sWuCzqcI": {}, "UQxcMN6I": {}, "3ALeh2fJ": {}}, "fileExtension": "ArM8mq9Q", "name": "U9oYb6h0", "preview": "dVIGr7YR", "previewMetadata": {"previewContentType": "alhYpAgH", "previewFileExtension": "OqkcWJlB"}, "subType": "OXuvHVdW", "tags": ["kMV8D3e7", "IKn62vlk", "2V7sopTh"], "type": "51UyPgxH"}' 'yQArwawM' --login_with_auth "Bearer foo"
ugc-single-admin-update-content-s3 '{"contentType": "tfMVA1am", "customAttributes": {"vYsuPyBK": {}, "Ox6dmdiY": {}, "H8yg6X94": {}}, "fileExtension": "8ECKDHgw", "name": "25RKDV3G", "payload": "byivIhys", "preview": "ILxQ5pNY", "previewMetadata": {"previewContentType": "c3y05XWp", "previewFileExtension": "lggUzDF5"}, "subType": "UErlYp8m", "tags": ["FotxI8QV", "P9AmuDlN", "A3hAEkR5"], "type": "znTDXDKm", "updateContentFile": false}' 'wCektoLi' 'abyzwWuf' --login_with_auth "Bearer foo"
ugc-admin-search-channel-specific-content 'FiiuXjKg' --login_with_auth "Bearer foo"
ugc-single-admin-delete-content '3Ox8i7dv' 'nkxL4N9V' --login_with_auth "Bearer foo"
ugc-single-admin-get-content --login_with_auth "Bearer foo"
ugc-admin-get-content-bulk '{"contentIds": ["tmBnBxWd", "bPkTIda0", "c4ItaJ7P"]}' --login_with_auth "Bearer foo"
ugc-admin-search-content --login_with_auth "Bearer foo"
ugc-admin-get-user-content-by-share-code 'Vi0tVhFI' --login_with_auth "Bearer foo"
ugc-admin-get-specific-content '5xgzJgcB' --login_with_auth "Bearer foo"
ugc-admin-download-content-preview 'e5SJkLoZ' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots '{"screenshots": [{"description": "jv2Aaegu", "screenshotId": "qNmnkNks"}, {"description": "cn8waJ9M", "screenshotId": "5ZDHda4V"}, {"description": "5KDjk6Rn", "screenshotId": "a0mswcWt"}]}' 'MJyFOoWM' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot '{"screenshots": [{"contentType": "4D4KlDgj", "description": "6yBbpggG", "fileExtension": "jpg"}, {"contentType": "XvKhAOuj", "description": "Z9yloQd9", "fileExtension": "jpg"}, {"contentType": "Zo81I7vW", "description": "rjxPZXZB", "fileExtension": "jfif"}]}' '3ogtzuY5' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot 'R0F5L9fQ' '3TRww2JE' --login_with_auth "Bearer foo"
ugc-single-admin-get-all-groups --login_with_auth "Bearer foo"
ugc-admin-create-group '{"contents": ["NOIkVYni", "0PgjcEd6", "6KeImuic"], "name": "xRGUBIxg"}' --login_with_auth "Bearer foo"
ugc-single-admin-get-group 'kJbEKNMk' --login_with_auth "Bearer foo"
ugc-single-admin-update-group '{"contents": ["E2CblaMX", "TnXFyqjh", "8PnzbYVA"], "name": "qfS2R25B"}' 'qDzAIHvU' --login_with_auth "Bearer foo"
ugc-single-admin-delete-group '9rsxkjS1' --login_with_auth "Bearer foo"
ugc-single-admin-get-group-contents 'zWKprkRs' --login_with_auth "Bearer foo"
ugc-admin-get-tag --login_with_auth "Bearer foo"
ugc-admin-create-tag '{"tag": "UuQ6Ffpf"}' --login_with_auth "Bearer foo"
ugc-admin-update-tag '{"tag": "XIcYA4rr"}' '5aBBhERK' --login_with_auth "Bearer foo"
ugc-admin-delete-tag '9IjrpidZ' --login_with_auth "Bearer foo"
ugc-admin-get-type --login_with_auth "Bearer foo"
ugc-admin-create-type '{"subtype": ["SRpKaoNA", "fADbW8yP", "wwPHjoYa"], "type": "BuJMJaQB"}' --login_with_auth "Bearer foo"
ugc-admin-update-type '{"subtype": ["Y3GvM4hm", "eq96p7jA", "jGgpFb9y"], "type": "druzs3aK"}' 'qpi3hcxq' --login_with_auth "Bearer foo"
ugc-admin-delete-type 'FcwNspxz' --login_with_auth "Bearer foo"
ugc-admin-get-channel 'hvyIQGaN' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-channels 'jEYoHNjr' --login_with_auth "Bearer foo"
ugc-admin-update-channel '{"name": "QPMuakWf"}' 'pmzxCUdW' 'i0gPQvWu' --login_with_auth "Bearer foo"
ugc-admin-delete-channel 'DnkxGu6g' 'QjXDGkz1' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "rRl43dGj", "customAttributes": {"cFwntBNB": {}, "TurGDneZ": {}, "9kg8DvfF": {}}, "fileExtension": "hgOfyKfA", "name": "xGSgx3OP", "payload": "MSa7AhwK", "preview": "D99tevgD", "previewMetadata": {"previewContentType": "rdNH57eb", "previewFileExtension": "gnDRUoGW"}, "subType": "IqgGyuPr", "tags": ["y2nW0Yvh", "FskydO8i", "MJrDt3zm"], "type": "xXjgy89h", "updateContentFile": true}' 'bTwEfu9P' '6nzU8EXj' 'iwF6FB6v' --login_with_auth "Bearer foo"
ugc-admin-delete-content 'Uj9092MO' '0H6egT19' 'NmHqCbfd' --login_with_auth "Bearer foo"
ugc-admin-get-content 'Zkj6F6Po' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents 'dUCKlzP2' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": false}' 'dmxEHsM2' '2IiuuuDd' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups 'fjus5Rbi' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group '045Wdpnc' --login_with_auth "Bearer foo"
ugc-admin-get-group 'Vrt9Nygt' 'OwEZrEiG' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["LVGhy2CT", "fHTe7sfT", "1WJv7MpY"], "name": "lVXxZHSa"}' 'BJecTb6w' 'HbDeYbX2' --login_with_auth "Bearer foo"
ugc-admin-delete-group 'NCo4rQYY' 'xgcQJ8KA' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents 'tdPyZRGL' 'GJncTD4V' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states 'Wy9rqXk9' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content 'FOKomEyh' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["tN5O8taE", "T2kG7tyI", "na9eiK2Z"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-public-download-content-by-share-code 'O7IJjQF4' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'Mrhge0nH' --login_with_auth "Bearer foo"
ugc-add-download-count 'Qaf89u8n' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": false}' 'UoB8Ib1E' --login_with_auth "Bearer foo"
ugc-public-download-content-preview '9KjUp3cU' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator 'WrLLuENd' --login_with_auth "Bearer foo"
ugc-get-channels 'qixWrgWi' --login_with_auth "Bearer foo"
ugc-create-channel '{"name": "lkNqCL47"}' '9OOW9GlG' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel 'jrYSfAkH' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "neDZtyB5"}' 'gatiDp6Z' 'sg932Hd7' --login_with_auth "Bearer foo"
ugc-delete-channel 'jg0FrpIm' 'fNvlVOIi' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "2BpyNskZ", "customAttributes": {"P36caZKF": {}, "YEUDSYlN": {}, "ee4l8jbj": {}}, "fileExtension": "5H87jLWG", "name": "fIrutsmP", "preview": "k2yE9Qy0", "previewMetadata": {"previewContentType": "aKPD500w", "previewFileExtension": "WDgCmEld"}, "subType": "0AWUOaIY", "tags": ["L0SAyfL8", "D8bQwwY4", "d2ZHzj8p"], "type": "72hJlZq5"}' '0cUvBZIY' 'BnGvUiAh' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "V2PAe8T7", "customAttributes": {"AuVDsWEz": {}, "zI8m7Gkz": {}, "lmo78YA9": {}}, "fileExtension": "uFIawc22", "name": "JoER1HK3", "payload": "MVhkP4r6", "preview": "7No6AgJW", "previewMetadata": {"previewContentType": "7Kl7cIO8", "previewFileExtension": "kKNf0hvU"}, "subType": "fu7UKxXs", "tags": ["KmsjnR1e", "aNm7MxOu", "d6Vywp9C"], "type": "iHnYqz4p", "updateContentFile": false}' 'Qk1ae3p1' 'NHoqMafj' 'VeUTmlC2' --login_with_auth "Bearer foo"
ugc-delete-content 'cJLF7kED' 'u6SYSdts' '89jYBklG' --login_with_auth "Bearer foo"
ugc-public-get-user-content 'Vpa6RtBa' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents 'zu5rJVnn' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "dwcuPCNs", "screenshotId": "HrYmRBTP"}, {"description": "fA4AfU3R", "screenshotId": "RHNK2EFd"}, {"description": "QiRiD7yj", "screenshotId": "mM6tjJLs"}]}' 'yWZVb87q' 'ShC0gJUy' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "5zIJAz9h", "description": "u7gJva0z", "fileExtension": "jfif"}, {"contentType": "C0FkiBXO", "description": "yHRT39P7", "fileExtension": "bmp"}, {"contentType": "gVYpW539", "description": "pcgNMkZo", "fileExtension": "pjp"}]}' 'gObzCNP7' 'UJr235gt' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot '7NUVF6Dc' '5jqTWT2v' '3MNoHG2k' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": true}' 'btVrcaKS' --login_with_auth "Bearer foo"
ugc-get-public-followers 'TXrN1qKL' --login_with_auth "Bearer foo"
ugc-get-public-following 'TqwAxe4h' --login_with_auth "Bearer foo"
ugc-get-groups '7Hw9aYWE' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["cnb4venN", "t2qYUENd", "WXoQOlFH"], "name": "vUldn5AK"}' 'yuitZ1Ud' --login_with_auth "Bearer foo"
ugc-delete-all-user-group '0FTpcYXw' --login_with_auth "Bearer foo"
ugc-get-group 'QDN2KQRr' 'abblJdNo' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["AUyOcgmQ", "BZUzlZlM", "haEXJv6E"], "name": "2o7jw9yz"}' 'NaYnUTtK' 'ZiTMfJ5t' --login_with_auth "Bearer foo"
ugc-delete-group '9gftOkJL' 'vJhLFdzx' --login_with_auth "Bearer foo"
ugc-get-group-content 'CH5i6kHG' '0MeHW27q' --login_with_auth "Bearer foo"
ugc-delete-all-user-states 'gaxppkeu' --login_with_auth "Bearer foo"
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
echo "1..92"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 SingleAdminGetChannel
$PYTHON -m $MODULE 'ugc-single-admin-get-channel' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
$PYTHON -m $MODULE 'ugc-admin-create-channel' \
    '{"name": "dByaHrES"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "dptdgT6P"}' \
    'uurBuw0O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'blxsOgnp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "n0pBdDOf", "customAttributes": {"OD00rZym": {}, "majZaz9R": {}, "rzBIsB05": {}}, "fileExtension": "nzZeemRE", "name": "u1rG0Jp8", "preview": "iYipPXhE", "previewMetadata": {"previewContentType": "W7XmFGmR", "previewFileExtension": "dPPefGDH"}, "subType": "etM4c16J", "tags": ["wwdFKK2h", "V5N3gETW", "QbltECj9"], "type": "ny3HUCnZ"}' \
    '9nTwVEqu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "cRtUaPVc", "customAttributes": {"2gKdKfFZ": {}, "YZwI2ncz": {}, "i93WdxmC": {}}, "fileExtension": "Z5BhIkMl", "name": "zAlwxlYS", "payload": "7K4hMeCu", "preview": "8SJoiyJS", "previewMetadata": {"previewContentType": "KTGOI8rb", "previewFileExtension": "aPWlR6Ex"}, "subType": "q3C5KhKt", "tags": ["KDKywaJj", "C86CPGxq", "aCVZoemI"], "type": "nm79S5T3", "updateContentFile": true}' \
    'oP7SQb8A' \
    'xINvsEQw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    '092pWIjO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    'fHdwOi0F' \
    'BLXEaaYC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
$PYTHON -m $MODULE 'ugc-single-admin-get-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
$PYTHON -m $MODULE 'ugc-admin-get-content-bulk' \
    '{"contentIds": ["FobGMRPv", "v1PQuRBg", "7vH03ZHx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
$PYTHON -m $MODULE 'ugc-admin-search-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
$PYTHON -m $MODULE 'ugc-admin-get-user-content-by-share-code' \
    'xG0MdPjA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'kMsGltOo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'IzbMoWjK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "b9pw0bqM", "screenshotId": "Pj5TzoH1"}, {"description": "kUMq70JE", "screenshotId": "mVjMWByk"}, {"description": "vhYOWVmn", "screenshotId": "RhxgSuv2"}]}' \
    '9VfcNXMq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "BcI0Hltw", "description": "uRxjSxW1", "fileExtension": "jfif"}, {"contentType": "tMAnxYe1", "description": "MTawAKAw", "fileExtension": "jpg"}, {"contentType": "ZuGieaqX", "description": "v7tLGA2l", "fileExtension": "png"}]}' \
    'VsuNKMGg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'CSga0hb2' \
    'ijqpoGou' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
$PYTHON -m $MODULE 'ugc-single-admin-get-all-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
$PYTHON -m $MODULE 'ugc-admin-create-group' \
    '{"contents": ["K5JYRmp9", "diA8NIOH", "jvGXLCZ6"], "name": "JRySqX88"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'lfwacGCw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["FMMB0ymR", "78UG6eCJ", "iwiUv4oQ"], "name": "gApz22Aq"}' \
    '64XJWTRO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'gfpSmxLA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    'YcpZ9EcA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
$PYTHON -m $MODULE 'ugc-admin-get-tag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
$PYTHON -m $MODULE 'ugc-admin-create-tag' \
    '{"tag": "Yf0QEWv5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "uO3DSDAu"}' \
    'g21zNo08' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    '0e3lgkoJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
$PYTHON -m $MODULE 'ugc-admin-get-type' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
$PYTHON -m $MODULE 'ugc-admin-create-type' \
    '{"subtype": ["N3ge9TLy", "wUKl6YVV", "2t5wNJaX"], "type": "sUCleGQB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["Z01ZnRJ6", "7mqsdWkT", "0Ks8vhks"], "type": "4FERM5bG"}' \
    '1eTloSph' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'z0pv7uww' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'd3eO5hvW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    '79EvhHcZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "mx5T00w7"}' \
    'eOS14rVU' \
    'Gj3RvNAD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'jXhw3iJt' \
    '27Va9858' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "I2aJbHVc", "customAttributes": {"een9E8hB": {}, "Swz1I3mt": {}, "iHRrAiCG": {}}, "fileExtension": "FwYzFxD1", "name": "qfbsNzdN", "payload": "CxmSuBuf", "preview": "xpl62pWu", "previewMetadata": {"previewContentType": "vvxVrPhR", "previewFileExtension": "gwyrkORh"}, "subType": "dQvtdYI8", "tags": ["QELyixxp", "fAnwFlgq", "8CUeIw6Y"], "type": "awUHgdDZ", "updateContentFile": true}' \
    '7qz7PdbU' \
    'iqUdxHhz' \
    'Ppcr0Frs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    '5jcI7JYw' \
    'C7zU3fXE' \
    'MSdx6gC7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'VsRIIjI7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'NT5LbrVv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": false}' \
    'fSzueIvZ' \
    'YxRhL9AQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'I85qkfEf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'AkbZhJRB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'JQCBcKk1' \
    'WRgUY8Yh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["bxGIlqJp", "s2rX9aPQ", "iPPXrtX6"], "name": "vzcZbjKh"}' \
    '1cE2cRAM' \
    'jQMCpld1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'XTwesrxK' \
    'ZcliumGN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'llsC5dOD' \
    'niI3noT9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'fn2P71Px' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'Eb0DfzAr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
$PYTHON -m $MODULE 'ugc-public-search-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
$PYTHON -m $MODULE 'ugc-public-get-content-bulk' \
    '{"contentIds": ["r0sVoCKq", "pi2p0Xxf", "qo89fLTJ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
$PYTHON -m $MODULE 'ugc-get-followed-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
$PYTHON -m $MODULE 'ugc-get-liked-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
$PYTHON -m $MODULE 'ugc-public-download-content-by-share-code' \
    'Lk4ryPab' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'ggJ0YkR0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'c4Jy7yqv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": true}' \
    's4Rb7N7r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    'bchEmsEI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
$PYTHON -m $MODULE 'ugc-get-tag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
$PYTHON -m $MODULE 'ugc-get-type' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
$PYTHON -m $MODULE 'ugc-public-search-creator' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
$PYTHON -m $MODULE 'ugc-get-followed-users' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
$PYTHON -m $MODULE 'ugc-public-get-creator' \
    'gc5TMriN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'YShymQue' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 CreateChannel
$PYTHON -m $MODULE 'ugc-create-channel' \
    '{"name": "cQI39Fi7"}' \
    'Q5rzzH5p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'CreateChannel' test.out

#- 69 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'qD5sfOp1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "dB61NMtF"}' \
    'U9pblLRR' \
    '8d1IaUOI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'XoCDNKB7' \
    '0zrR75uF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "4HpvpABp", "customAttributes": {"0eoVIAOE": {}, "otUHmDUL": {}, "Y46Jhgzs": {}}, "fileExtension": "tF3ZgnhU", "name": "KwWJvNao", "preview": "NLfASDdC", "previewMetadata": {"previewContentType": "zn2V32sZ", "previewFileExtension": "xACosEvu"}, "subType": "gJ8MT38H", "tags": ["UhAx0s1N", "LFJimqdV", "hHF5nCXR"], "type": "T7g5qa9V"}' \
    'cDA3ZLHt' \
    'L8aCZJpM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "o9RhfeKp", "customAttributes": {"JYBpxKOg": {}, "26FnirIH": {}, "3WUxAJyP": {}}, "fileExtension": "zObk8OmZ", "name": "zZueh4L2", "payload": "dCScYaq4", "preview": "RWInrSdz", "previewMetadata": {"previewContentType": "gVAxDqZy", "previewFileExtension": "Y9BhXyLM"}, "subType": "XLgqdgoA", "tags": ["SSPKoqND", "6ppEjKHo", "gXSY3eUx"], "type": "SYzMhlkR", "updateContentFile": false}' \
    'iEmOx8FK' \
    'RrWcC6Fm' \
    'ZmGSKOoC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'kW1dthTk' \
    '3yxrNdXQ' \
    'IAIZOfv9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    'i82p3HRc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'o6q82OJB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "tku0kvrL", "screenshotId": "6wz2uZTB"}, {"description": "Q9AUqXVb", "screenshotId": "FIcn9q3E"}, {"description": "A03qzzRt", "screenshotId": "gidFt5t0"}]}' \
    '4ZDmny6K' \
    'r94rnU6P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "QTY0iO7v", "description": "27z22b4T", "fileExtension": "pjp"}, {"contentType": "xmseLts4", "description": "pgNaojBU", "fileExtension": "pjp"}, {"contentType": "6Iqr7f4D", "description": "e9gMVewZ", "fileExtension": "jfif"}]}' \
    'jO5aFvdp' \
    'ibBnf4hg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    '3RxCxjg5' \
    'a03hiUOo' \
    'geWLkPXT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": false}' \
    'nnLbgnrl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'X0D30xP1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'GToryYzv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'oDFtwfw8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["gMkmSGUn", "LYZjrvUj", "2LuvylNx"], "name": "3kqLPFki"}' \
    'sNgoneim' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'tY4QJE45' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'lR7pQoR2' \
    '96RxIgP8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["bDBGS9aj", "xsyarod2", "i2XHW1gf"], "name": "plJr9p7e"}' \
    'Ak6hpriO' \
    'XWFLKurD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'q1OgjdzT' \
    'Br3kdDF5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'vPNCJy1B' \
    'pvj97sgL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'XbvmXvlM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
