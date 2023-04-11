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
ugc-admin-create-channel '{"id": "EAxcVpFr", "name": "ttufHIRd"}' --login_with_auth "Bearer foo"
ugc-single-admin-update-channel '{"name": "H9UzVRiX"}' 'bqlAw7r6' --login_with_auth "Bearer foo"
ugc-single-admin-delete-channel 'W2ktQG0h' --login_with_auth "Bearer foo"
ugc-admin-upload-content-s3 '{"contentType": "5JAav5kR", "customAttributes": {"a62WopBJ": {}, "HPtcDs8b": {}, "BZLCXLx8": {}}, "fileExtension": "bbgorQeF", "name": "bQ1g7qbP", "preview": "ngUNB1vR", "previewMetadata": {"previewContentType": "odwpzS6D", "previewFileExtension": "aDpv8N7Z"}, "shareCode": "QVqGj6oD", "subType": "LjWjkY1a", "tags": ["XlFcDtgO", "jchIua5t", "WEIC32og"], "type": "W7olvbTg"}' 'rhRTcPiS' --login_with_auth "Bearer foo"
ugc-single-admin-update-content-s3 '{"contentType": "uL0Sly6X", "customAttributes": {"M4OI18mA": {}, "QLnzjMf8": {}, "GZ2WBZqx": {}}, "fileExtension": "YG3aREAu", "name": "2D6QVKNC", "payload": "WP75TB0i", "preview": "7pKxR8dl", "previewMetadata": {"previewContentType": "0zRVW4EZ", "previewFileExtension": "G9m0XcgG"}, "subType": "VbMqSszE", "tags": ["8GHavj7A", "orKsxwko", "sAVerXpc"], "type": "1C8XfwHu", "updateContentFile": true}' 'eb9l3rGN' '9A3sNm84' --login_with_auth "Bearer foo"
ugc-admin-search-channel-specific-content 'hddSpHt0' --login_with_auth "Bearer foo"
ugc-single-admin-delete-content 'P7MIIR7C' 'kyF6C7du' --login_with_auth "Bearer foo"
ugc-single-admin-get-content --login_with_auth "Bearer foo"
ugc-admin-get-content-bulk '{"contentIds": ["uyZ0GhDo", "gqrhBRd8", "lDR6qVNP"]}' --login_with_auth "Bearer foo"
ugc-admin-search-content --login_with_auth "Bearer foo"
ugc-admin-get-user-content-by-share-code 'RZYdFLIA' --login_with_auth "Bearer foo"
ugc-admin-get-specific-content 'jGGJddVC' --login_with_auth "Bearer foo"
ugc-admin-download-content-preview 'vu9vx5KQ' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots '{"screenshots": [{"description": "7KYnIuMB", "screenshotId": "vaO35llz"}, {"description": "QRaT5kPx", "screenshotId": "UfofvnnS"}, {"description": "uB0y5WUl", "screenshotId": "rMdI4sNv"}]}' 'eabntBSx' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot '{"screenshots": [{"contentType": "TeIv53HG", "description": "CiljvjKo", "fileExtension": "jpg"}, {"contentType": "qtPYokah", "description": "FjkQsfCa", "fileExtension": "png"}, {"contentType": "Af8TgoNm", "description": "03VLisV6", "fileExtension": "jpg"}]}' 'PVo3twu0' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot 'MesTCf9x' '4rt69lna' --login_with_auth "Bearer foo"
ugc-single-admin-get-all-groups --login_with_auth "Bearer foo"
ugc-admin-create-group '{"contents": ["7qxNeIxP", "z6MbwL6I", "Y69z1UaL"], "name": "qYSYWytL"}' --login_with_auth "Bearer foo"
ugc-single-admin-get-group 'PziZMdjx' --login_with_auth "Bearer foo"
ugc-single-admin-update-group '{"contents": ["cBZufQxG", "iHPllG4c", "YEzfTD1Z"], "name": "Bm3MqHcU"}' 'mLZZbSqb' --login_with_auth "Bearer foo"
ugc-single-admin-delete-group '8RwNmn9H' --login_with_auth "Bearer foo"
ugc-single-admin-get-group-contents 'rNQy4uZA' --login_with_auth "Bearer foo"
ugc-admin-get-tag --login_with_auth "Bearer foo"
ugc-admin-create-tag '{"tag": "AiE0mit9"}' --login_with_auth "Bearer foo"
ugc-admin-update-tag '{"tag": "RGCCHYzU"}' 'OcEdscKH' --login_with_auth "Bearer foo"
ugc-admin-delete-tag 'PEqgA8yu' --login_with_auth "Bearer foo"
ugc-admin-get-type --login_with_auth "Bearer foo"
ugc-admin-create-type '{"subtype": ["7Vk6Jt4Y", "mos9Jcdo", "s4fYcTVU"], "type": "6RBt0zYo"}' --login_with_auth "Bearer foo"
ugc-admin-update-type '{"subtype": ["McHyCUEX", "lAvxJMda", "lwSyliWM"], "type": "NW5NyLu0"}' 'M3VHh2EI' --login_with_auth "Bearer foo"
ugc-admin-delete-type '8JlDbPWb' --login_with_auth "Bearer foo"
ugc-admin-get-channel 'Q6Q9lNmq' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-channels 'RBaAkLnv' --login_with_auth "Bearer foo"
ugc-admin-update-channel '{"name": "xkT1X68c"}' 'mDc3fxU8' 'MyKrQpM4' --login_with_auth "Bearer foo"
ugc-admin-delete-channel 'hkkK6KKX' 'NB3Gv0Iq' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "mF51Tkhj", "customAttributes": {"Ynaq6foW": {}, "vXa3bMrX": {}, "sDr6kILs": {}}, "fileExtension": "SSyDdmyk", "name": "moPYgc2L", "payload": "4jk4Lo0L", "preview": "SP0pf4Ix", "previewMetadata": {"previewContentType": "jUkl535X", "previewFileExtension": "3ateEKDp"}, "subType": "ADz1x3po", "tags": ["D3Qgb3bo", "LQQ1MzH7", "Qm8bwbmX"], "type": "gdAPh1ET", "updateContentFile": false}' 'c2Z0QZxf' 'gPubTDIH' 'rvqAThuw' --login_with_auth "Bearer foo"
ugc-admin-delete-content 'jRHpKKTl' 'mVr9XuoJ' 'bRFQSKVP' --login_with_auth "Bearer foo"
ugc-admin-get-content 'Hbn4Xxtu' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents '7LQRENjE' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": true}' 'U6YE3p4l' 'Sck0ZHn5' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups 'GI39YBHq' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group 'aTHeKtW1' --login_with_auth "Bearer foo"
ugc-admin-get-group '8iGeUlc9' 'd9sogWa2' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["4CKNS0Gq", "VvUfHQvs", "HXNUNe4m"], "name": "hgo5QB65"}' 'lSAiYnNj' 'kfZrQvGg' --login_with_auth "Bearer foo"
ugc-admin-delete-group 'bLdLsFzH' 'kBMr1yrO' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents 'MlNFSrUE' 'irnjX9fD' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states 'mIbeZxzf' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content 'TcyiuATu' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["s9hsfpFD", "cSDG8aMV", "GLiBNrDj"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-public-download-content-by-share-code 'qoxcwgGL' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'XpUL4pp2' --login_with_auth "Bearer foo"
ugc-add-download-count 'ncYAHdNz' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": true}' 'ovmv9gsR' --login_with_auth "Bearer foo"
ugc-public-download-content-preview '5cJcHm3S' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator 'ZLxoRDFu' --login_with_auth "Bearer foo"
ugc-get-channels 'uuySj29a' --login_with_auth "Bearer foo"
ugc-public-create-channel '{"name": "9LJE8HoR"}' 'S1X2PFAA' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel 'MwzHPxB1' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "UskYs4Yw"}' '20DOqOBS' 'C2DKHRuP' --login_with_auth "Bearer foo"
ugc-delete-channel 'MMWH8Yb3' '3T5UBJCj' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "fcnLRfxe", "customAttributes": {"CSz9WEi8": {}, "KlloeH0J": {}, "T1yduat2": {}}, "fileExtension": "vQR3biBf", "name": "su4jmsRE", "preview": "2w1yEkLg", "previewMetadata": {"previewContentType": "h3tIYt4S", "previewFileExtension": "qYUTLDx9"}, "subType": "gIiDandp", "tags": ["GT2t24aO", "Mh5eC3IH", "eHSKLCa3"], "type": "xreNDUWe"}' 'hwH3q31A' '806DJgas' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "4b6z3LNU", "customAttributes": {"j7fdgLA8": {}, "4Z8YYk6Q": {}, "EgJjBbED": {}}, "fileExtension": "oNf3n0hE", "name": "oRCAcf80", "payload": "zfFyabWA", "preview": "gIUXiI07", "previewMetadata": {"previewContentType": "A68eaqC2", "previewFileExtension": "J9jyEW6G"}, "subType": "Lbc0NaKD", "tags": ["UL3sa13l", "k1dQBHO8", "6IlBhnet"], "type": "U4RwTqUX", "updateContentFile": false}' 'geO3FgkX' 'hjDzaQY3' 'snn2ZkP7' --login_with_auth "Bearer foo"
ugc-delete-content 'cFdP43e5' 'dC9XIBud' 'fZgrbHDI' --login_with_auth "Bearer foo"
ugc-public-get-user-content 'Dm4hMzF4' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents 'TxodenSr' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "UTvfqU0b", "screenshotId": "foMm5cTt"}, {"description": "FWbotQyX", "screenshotId": "JRcQWsmq"}, {"description": "PNs92epx", "screenshotId": "k0i8VxsZ"}]}' 'NereSvf9' '699mCEHT' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "hUJkETAs", "description": "Sp7gh4Te", "fileExtension": "png"}, {"contentType": "rbkXj0Zw", "description": "sVC0gL97", "fileExtension": "pjp"}, {"contentType": "7Y2QD3oD", "description": "5fLCr3OO", "fileExtension": "jfif"}]}' 's6gQxC3G' 'b7S0o4zG' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot 'YY7KQI1A' 'eFgPqaOk' 'vo1aolB4' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": false}' 'Aft4gqkN' --login_with_auth "Bearer foo"
ugc-get-public-followers 'NlWkD9eO' --login_with_auth "Bearer foo"
ugc-get-public-following 'ziYRFOn0' --login_with_auth "Bearer foo"
ugc-get-groups 'jJLHC9Lx' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["hvNXTwGB", "CtohLtl9", "Zuhytm5U"], "name": "DrT6QXCs"}' '5SPBbRPZ' --login_with_auth "Bearer foo"
ugc-delete-all-user-group 'TF6oQAXV' --login_with_auth "Bearer foo"
ugc-get-group 'G7tnsZg5' 'QgXjvyGJ' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["PN4eXbJE", "5Vs2Gcyo", "mQoIXimB"], "name": "JehyxlNs"}' 'jUgxBkF6' 'wFPoJeQe' --login_with_auth "Bearer foo"
ugc-delete-group 'diogEhhM' '2rIizGdK' --login_with_auth "Bearer foo"
ugc-get-group-content 'vOPdq5xr' 'gxSmy1DN' --login_with_auth "Bearer foo"
ugc-delete-all-user-states '9LFkYW5D' --login_with_auth "Bearer foo"
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
    '{"id": "Qyj4bj5R", "name": "o2ogaKt2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "ujQSa3Zd"}' \
    'b65UXmy0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'Zp6iIaTI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "KUkmkk9Q", "customAttributes": {"M0NBMA9O": {}, "RxpzwLR2": {}, "AK6eXUGP": {}}, "fileExtension": "Jsw1fiP8", "name": "0G9Pclxc", "preview": "ft2ulIJz", "previewMetadata": {"previewContentType": "PyrVEiOG", "previewFileExtension": "4UcqsuGK"}, "shareCode": "HhMRWLVd", "subType": "3DlhLuIp", "tags": ["omM8sm1M", "iaI1mX2t", "JoARtdbB"], "type": "e7udsMro"}' \
    'k0WvGYYn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "x4V709xb", "customAttributes": {"nGezKsDw": {}, "G2omOR2n": {}, "vYI9TVqJ": {}}, "fileExtension": "dvzcWbfU", "name": "paXp5JMl", "payload": "5LL4bTxB", "preview": "mZjdrrIx", "previewMetadata": {"previewContentType": "sB0NRsB1", "previewFileExtension": "fPqqRRul"}, "subType": "pqpymDkQ", "tags": ["htrHWwRV", "nwVBOqOH", "i8pWGd1j"], "type": "uYhiqjRJ", "updateContentFile": true}' \
    'wP57dBZN' \
    'R88YbCtm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'Ky8M9zVr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    'jfGXZnqA' \
    'QUoY1Gjl' \
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
    '{"contentIds": ["IIk0iKoT", "TS1j02o7", "JjTXAQN0"]}' \
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
    'qdskdQV0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'TqI8EFnm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'DbxIxi4Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "KlONk2Q5", "screenshotId": "Y4Jvaizw"}, {"description": "iilatuUj", "screenshotId": "jt9lIMGq"}, {"description": "l5ElEa9E", "screenshotId": "IIlGcHB3"}]}' \
    'CfR3ncDl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "wi3v3MFF", "description": "J1KesKoE", "fileExtension": "pjp"}, {"contentType": "JbZDKKox", "description": "LE1Y3Dym", "fileExtension": "jpeg"}, {"contentType": "pai0rYaT", "description": "5hOPjaf3", "fileExtension": "pjp"}]}' \
    's1Hhhkg1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'yLVbLFzH' \
    'EP8cM4NT' \
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
    '{"contents": ["wr0KHaAs", "mTej52WK", "i6tArAUR"], "name": "t9plCSVq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    '8PdH6hJP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["UAc0RVwX", "gAgntLMC", "uaXBWQi6"], "name": "BqPg4xr0"}' \
    'lCancUZG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'CHsZYoLf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    'R1KtOv7Z' \
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
    '{"tag": "y0b65uvu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "KNuy0ytZ"}' \
    'Q7M6Nzy1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'adnSKOLF' \
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
    '{"subtype": ["Kx1dX4Lu", "WJu3pDMU", "AeeZ97SB"], "type": "ROPYuG6X"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["qP6oo7G7", "3zdxTgOf", "nwIdlNa2"], "type": "9fDLh741"}' \
    'IslKHzGl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'LKWUtDQs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    '61OQAoxy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    'yQpRWCii' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "PDGQhNPE"}' \
    'wiJCf2XJ' \
    'VrlzqQls' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    '1ozhLVA3' \
    'kE8jKvga' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "tOEBM70T", "customAttributes": {"dlNBJYOm": {}, "pu1VCarz": {}, "BsV6xnZ5": {}}, "fileExtension": "Jrzzjrca", "name": "ug6CWVG8", "payload": "SWP3glU6", "preview": "muswVJnN", "previewMetadata": {"previewContentType": "nN7kAa7j", "previewFileExtension": "0riFc5HT"}, "subType": "HQIoVsGo", "tags": ["7dwV9DBq", "FKHQkETJ", "yTlUrwDT"], "type": "noujQD4I", "updateContentFile": true}' \
    'xnFIna3y' \
    'ddcbsPhe' \
    'TH26IUJN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    'vYuGRUvp' \
    'ZaHCuESO' \
    'iIZsMfB4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'ZH3mtgWg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'U4pCAKxe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": true}' \
    'M9XsYIIZ' \
    'xiXNMR9B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'gaWcFX3S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'UBhyoTsM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'WPAxUMka' \
    'waGpAyrI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["wMif3BOd", "kocVTd4B", "xqGWV6mT"], "name": "J0sQs6XN"}' \
    'bjvqhnUV' \
    'LWu8olKd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'xL6ozRmD' \
    'D0jJvlfV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    '5OemPYdY' \
    'T7DROCjt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'uzFMbAG9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'YI89hmgu' \
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
    '{"contentIds": ["B8FOTjML", "o4b9rIzq", "YkEpstyV"]}' \
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
    'TBcrM8rG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    '0rH0zcsw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'wVeMK6Mb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": false}' \
    'Iu8vvwLc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    '7KY3uVoJ' \
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
    'XTIMtpgk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'ieDyF97l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 PublicCreateChannel
$PYTHON -m $MODULE 'ugc-public-create-channel' \
    '{"name": "GdMiHKxb"}' \
    'WCYzo8yO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateChannel' test.out

#- 69 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    '2KTK9tmm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "OnYnOpas"}' \
    '6ghP1y4Z' \
    'i7s7QBlk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    '44Z44B1G' \
    'ZgKg4uKx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "aCgcGLuC", "customAttributes": {"3brWdTYC": {}, "fHkIySok": {}, "5DiXZtLW": {}}, "fileExtension": "87rGysry", "name": "od3dNQrm", "preview": "sApRA6HX", "previewMetadata": {"previewContentType": "3RwrKt2e", "previewFileExtension": "cozL0TOg"}, "subType": "54vCE48L", "tags": ["5oLF6M4l", "Na4JUMSH", "NgqRqCV7"], "type": "usamANkZ"}' \
    'lOX9Sfo9' \
    '5HgXqKhT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "PkwfLM9u", "customAttributes": {"SybRzWek": {}, "2gZvRrvr": {}, "0n9d9lvc": {}}, "fileExtension": "cKMLhrTr", "name": "cBE2ItBS", "payload": "3KtKZWe8", "preview": "aoFzAyBM", "previewMetadata": {"previewContentType": "E74HUtip", "previewFileExtension": "UWYhWV1q"}, "subType": "x8CzPML5", "tags": ["2faXUr9S", "k4lq2faB", "cAXXKlhv"], "type": "yH8paOJt", "updateContentFile": true}' \
    'fDTk8aG4' \
    '0NlncceI' \
    'ZSwgAIkg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'zh4pTU0A' \
    'm4DZhl0b' \
    'QxFJ3sWC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    'qQpQ2FbK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'PFMycMSQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "4qfAacR0", "screenshotId": "LgB5BUXv"}, {"description": "jcu2s6w3", "screenshotId": "VifnKqmT"}, {"description": "SoGH1XEf", "screenshotId": "Y6QAYn6W"}]}' \
    'Q5UBEU1Q' \
    'AOHfZiGh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "xOdcuDXS", "description": "xSc3aZPV", "fileExtension": "jpeg"}, {"contentType": "7pna08gx", "description": "efTYKhux", "fileExtension": "bmp"}, {"contentType": "esNWy2Nv", "description": "Z85DDKDA", "fileExtension": "pjp"}]}' \
    'N8i4GrFE' \
    'S9z7xueH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'pATHccee' \
    '9GXhKcjm' \
    'SEwdrkEn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": false}' \
    'v7aZK3h6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    '5hbN15zf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'QSfQrtfF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    '3TQN0OcN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["DLr36vzo", "hZyjMQAg", "5mPYhrLT"], "name": "yU8OhgfY"}' \
    '9JQYGF4b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'YXEcENx9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'xZlAchob' \
    '44lONDDw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["MvgI0Hly", "PR7wZNiV", "sF6xG2mX"], "name": "EQdbzIVy"}' \
    '8alncV7v' \
    'WgSHdfo0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    '7UctPErq' \
    'xyMyOK06' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'MqQBErxg' \
    'jVBycvU4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'PbmRDcrg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
