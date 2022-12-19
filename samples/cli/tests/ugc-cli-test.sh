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
ugc-admin-create-channel '{"name": "Gvk9BdzH"}' --login_with_auth "Bearer foo"
ugc-single-admin-update-channel '{"name": "N1i5cQfr"}' 'why3BnEF' --login_with_auth "Bearer foo"
ugc-single-admin-delete-channel 'Ac2joHTs' --login_with_auth "Bearer foo"
ugc-admin-upload-content-s3 '{"contentType": "ySSL3Udk", "fileExtension": "PO15rgoT", "name": "yVaGEsMv", "preview": "e9zGa0Li", "previewMetadata": {"previewContentType": "XmHCBdlb", "previewFileExtension": "RDd7DmXf"}, "subType": "v0D1QkmU", "tags": ["pICq6n9N", "2F8AM4HU", "sAsClPSn"], "type": "wzQu44x5"}' 'Exwabehp' --login_with_auth "Bearer foo"
ugc-single-admin-update-content-s3 '{"contentType": "1kdkC6gZ", "fileExtension": "y1Q2hm6c", "name": "P5q65BFS", "preview": "Yk6jrjQg", "previewMetadata": {"previewContentType": "f3aaKrKU", "previewFileExtension": "FSxc2qG0"}, "subType": "cPJcoLNg", "tags": ["ju2PcwCJ", "ajGdcJIJ", "oHNpoQDS"], "type": "XL3R1IDe"}' 'FVydUQTv' 'N5EIMTV6' --login_with_auth "Bearer foo"
ugc-admin-search-channel-specific-content 'Cg05s5Iz' --login_with_auth "Bearer foo"
ugc-single-admin-delete-content 'iDG6Yezi' 'AVNJKzxx' --login_with_auth "Bearer foo"
ugc-single-admin-get-content --login_with_auth "Bearer foo"
ugc-admin-search-content --login_with_auth "Bearer foo"
ugc-admin-get-user-content-by-share-code 'SK92anpp' --login_with_auth "Bearer foo"
ugc-admin-get-specific-content 'ccgiaecv' --login_with_auth "Bearer foo"
ugc-admin-download-content-preview '8xADG1se' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots '{"screenshots": [{"description": "INZCg5Ov", "screenshotId": "h2UrKtod"}, {"description": "8ttkkpyO", "screenshotId": "mA0LHyIT"}, {"description": "Hd4BEmYT", "screenshotId": "63qLwA9G"}]}' 'T6zCvYQp' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot '{"screenshots": [{"contentType": "KpU22whC", "description": "Q0Sbd9cs", "fileExtension": "pjp"}, {"contentType": "pau8G5y2", "description": "oTzdA3nB", "fileExtension": "pjp"}, {"contentType": "1xwR8Dtq", "description": "dgOj0c5p", "fileExtension": "jpeg"}]}' 'DeOJJflI' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot 'P5FFsXMw' 'NtK9sha5' --login_with_auth "Bearer foo"
ugc-single-admin-get-all-groups --login_with_auth "Bearer foo"
ugc-admin-create-group '{"contents": ["Zww96rFe", "Ejl7SgdG", "8smA8SVX"], "name": "7beGkyTX"}' --login_with_auth "Bearer foo"
ugc-single-admin-get-group 'encontzY' --login_with_auth "Bearer foo"
ugc-single-admin-update-group '{"contents": ["gNoylc0H", "mOqG393U", "niraviFj"], "name": "rRpknDon"}' 'yPDIjoQr' --login_with_auth "Bearer foo"
ugc-single-admin-delete-group 'lXuCeuTu' --login_with_auth "Bearer foo"
ugc-single-admin-get-group-contents '1b3prBbo' --login_with_auth "Bearer foo"
ugc-admin-get-tag --login_with_auth "Bearer foo"
ugc-admin-create-tag '{"tag": "YscJk1Op"}' --login_with_auth "Bearer foo"
ugc-admin-update-tag '{"tag": "BAPjgLYS"}' 'tDOvotRa' --login_with_auth "Bearer foo"
ugc-admin-delete-tag 'tG5jfoxg' --login_with_auth "Bearer foo"
ugc-admin-get-type --login_with_auth "Bearer foo"
ugc-admin-create-type '{"subtype": ["2clN3Rur", "3wt8Dckq", "SOv5rnEM"], "type": "QgXusNcK"}' --login_with_auth "Bearer foo"
ugc-admin-update-type '{"subtype": ["ECEib0GZ", "pDB0PwP6", "qdZhd0Xs"], "type": "svPgImsk"}' 'fNCPQdwj' --login_with_auth "Bearer foo"
ugc-admin-delete-type 'WBkr945I' --login_with_auth "Bearer foo"
ugc-admin-get-channel 'e7EYHG7n' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-channels 'InWkx3yB' --login_with_auth "Bearer foo"
ugc-admin-update-channel '{"name": "X3giCeLe"}' 'H3qsc9Tk' 'daVnhfVX' --login_with_auth "Bearer foo"
ugc-admin-delete-channel 'DgaNlxN3' 'CbuVjtGE' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "b8QzhrwH", "fileExtension": "8AiwRsN0", "name": "rmYjTj9r", "preview": "ajEwjKYY", "previewMetadata": {"previewContentType": "NmwD8VIQ", "previewFileExtension": "JKmg6BIY"}, "subType": "lSPsYmF4", "tags": ["9m5Ufp6P", "UrNPR9od", "aFaKVq1y"], "type": "q0nuoSUM"}' '6PoUNwNe' 'hoV5ApoM' 'SG1YBiOG' --login_with_auth "Bearer foo"
ugc-admin-delete-content 'bXRlv2bh' 'hnfYL0Wm' 'WqJulpK4' --login_with_auth "Bearer foo"
ugc-admin-get-content 'obPe0O1E' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents 'JkjCKBNB' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": true}' 'hhX1faMS' '9n1HlIjP' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups 'ccYghiGB' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group 'Pq46fXzs' --login_with_auth "Bearer foo"
ugc-admin-get-group 'AMx7z5jQ' 'QR3GFrQ1' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["EiBTdm8x", "jqWfWokN", "DS3KhH8j"], "name": "Dr0E0iZp"}' 'iNtAdRLr' 'GPuMlKcg' --login_with_auth "Bearer foo"
ugc-admin-delete-group 'JMp1BJaD' 'Z6wyv9EM' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents '02JX9qiR' 'Hm4Auzf0' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states 'MfKxjoF2' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content 'Z9B6nOxY' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["61MYKycR", "7Hjl9v8L", "cKmkAAHd"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-public-download-content-by-share-code 'OWOYLQRI' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'rvp9ea9s' --login_with_auth "Bearer foo"
ugc-add-download-count 'E1sxnJYZ' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": false}' 'bijtIaF4' --login_with_auth "Bearer foo"
ugc-public-download-content-preview 'JoCizPrm' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator 'DuFxdMff' --login_with_auth "Bearer foo"
ugc-get-channels 'm4Ek44Vq' --login_with_auth "Bearer foo"
ugc-create-channel '{"name": "GmtxyOso"}' 'c2aGuHz8' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel '7SApJj1g' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "Ql4uGHpD"}' 'HdVTJUdR' 'Vi9BHOmX' --login_with_auth "Bearer foo"
ugc-delete-channel 'Zc71sd9T' 'J9H4Z2bn' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "l1Pa7GAL", "fileExtension": "wyImy7FW", "name": "Qq7njwqa", "preview": "ylDfHRUZ", "previewMetadata": {"previewContentType": "BZJgMUEZ", "previewFileExtension": "EH7n7nxC"}, "subType": "VXwP8eGv", "tags": ["c7MUuK1P", "MFHX3KRb", "IFffPucx"], "type": "NM51tGWc"}' '6B7exYXl' 'T5fy3uCl' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "x6xGPk2O", "fileExtension": "VKeiF0aE", "name": "i7BFoFX4", "preview": "gcQrebZa", "previewMetadata": {"previewContentType": "5l8TML2X", "previewFileExtension": "kqSzTJeG"}, "subType": "Cg2j3WPL", "tags": ["hm9CGvAw", "jA9qxp9I", "NrRrJm1N"], "type": "f5TThgIF"}' 'JD5j6OoP' 'mOhh2xWf' 'DQIIN7eG' --login_with_auth "Bearer foo"
ugc-delete-content 'yEayCjhP' 'XP4EDt86' '0LYpb7JI' --login_with_auth "Bearer foo"
ugc-public-get-user-content 'd7iU1rRL' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents 'lLWZOJVf' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "2iTFr8j9", "screenshotId": "J6DwmknZ"}, {"description": "iCAICksP", "screenshotId": "Ed8JYDik"}, {"description": "uuJvGRsR", "screenshotId": "vtws9P7h"}]}' 'uYIzasM2' 'tprC52u3' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "IcVdngan", "description": "KDPdmw39", "fileExtension": "jpg"}, {"contentType": "JTInRVDV", "description": "MrqoTdQM", "fileExtension": "jfif"}, {"contentType": "5otWwZXG", "description": "JHBU1Z9x", "fileExtension": "jpg"}]}' 'sSzZmFe8' 'ntXGv8y4' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot 'LYTt5sEr' 'Kfnqu0LO' 'bFweT5Lt' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": false}' 'c3Rlp0dx' --login_with_auth "Bearer foo"
ugc-get-public-followers 'xne4btau' --login_with_auth "Bearer foo"
ugc-get-public-following '1T4kAnmD' --login_with_auth "Bearer foo"
ugc-get-groups 'znd3gxrL' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["wQpyGucn", "45hXnCvh", "3EY7Ph8B"], "name": "O20E3cVx"}' '4BPUIwRZ' --login_with_auth "Bearer foo"
ugc-delete-all-user-group 'AzbkMFbk' --login_with_auth "Bearer foo"
ugc-get-group 'fdwQSnT2' '4ft34w2B' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["jkZbhl5E", "DBiirDne", "idQNZGxq"], "name": "gTAsS6U4"}' 'yDmhSxMz' 'tGfJS7j6' --login_with_auth "Bearer foo"
ugc-delete-group 'IKSZDujt' 'O06ZaimF' --login_with_auth "Bearer foo"
ugc-get-group-content 'B3bn7c2w' 'J1BsCOEd' --login_with_auth "Bearer foo"
ugc-delete-all-user-states 'ESku2IEB' --login_with_auth "Bearer foo"
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
echo "1..91"

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
    '{"name": "3mfX12ZT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "SmMTJ053"}' \
    '1TkRBcBq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'gXVWmNlb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "uGXCaQFS", "fileExtension": "ozQPBBIT", "name": "LQ4swME6", "preview": "Vimd2xVE", "previewMetadata": {"previewContentType": "bMCn2HcD", "previewFileExtension": "03tC761a"}, "subType": "qnulRaYt", "tags": ["a3loCoG7", "2TyPfjTX", "anTjN8xk"], "type": "9FU4UIiq"}' \
    'TaoHLWuW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "19vTZ1wt", "fileExtension": "WZ890mb3", "name": "n43ngsCe", "preview": "T36hYTq8", "previewMetadata": {"previewContentType": "8ZNrfblK", "previewFileExtension": "Qrzd0u1S"}, "subType": "8y0XjMVg", "tags": ["W5wEz77h", "oCX0H9hJ", "EZmOy4wW"], "type": "Cx8mpjmG"}' \
    'b65ONB6F' \
    'aru76uWw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'sPoeCob7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    'ktqEjKO2' \
    'W7Wobx3S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
$PYTHON -m $MODULE 'ugc-single-admin-get-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminSearchContent
$PYTHON -m $MODULE 'ugc-admin-search-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminSearchContent' test.out

#- 14 AdminGetUserContentByShareCode
$PYTHON -m $MODULE 'ugc-admin-get-user-content-by-share-code' \
    'xQvqU0pF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    's23qCK4L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'xZLFVjgm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "Dgz6BvTQ", "screenshotId": "TOeTCFmb"}, {"description": "OsGo21VI", "screenshotId": "ajajNswa"}, {"description": "7ws4NHiW", "screenshotId": "dZVPlCU4"}]}' \
    'nP5hcFjj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "hd5Dr76J", "description": "dCoQ648N", "fileExtension": "jfif"}, {"contentType": "6t5FL92T", "description": "3Vl3LH9l", "fileExtension": "jfif"}, {"contentType": "SWEwbppk", "description": "iZFsI19R", "fileExtension": "bmp"}]}' \
    'WGOnIjO1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'ZNsbJXJe' \
    'RzuIVXdp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteContentScreenshot' test.out

#- 20 SingleAdminGetAllGroups
$PYTHON -m $MODULE 'ugc-single-admin-get-all-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'SingleAdminGetAllGroups' test.out

#- 21 AdminCreateGroup
$PYTHON -m $MODULE 'ugc-admin-create-group' \
    '{"contents": ["jseDpTfd", "bghVWIzk", "JkYTaFD4"], "name": "JoH2dqej"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'GW5X4zSd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["cIdd85r0", "wFXXDefg", "7xY2etdW"], "name": "QeAkdVSC"}' \
    'wlPIdqgK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'B2QLjMqn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    'VXP4sVgv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminGetGroupContents' test.out

#- 26 AdminGetTag
$PYTHON -m $MODULE 'ugc-admin-get-tag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminGetTag' test.out

#- 27 AdminCreateTag
$PYTHON -m $MODULE 'ugc-admin-create-tag' \
    '{"tag": "31PlzTmx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "1dnAwgHA"}' \
    'nw2MIxxF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'RdLtc5wd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteTag' test.out

#- 30 AdminGetType
$PYTHON -m $MODULE 'ugc-admin-get-type' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminGetType' test.out

#- 31 AdminCreateType
$PYTHON -m $MODULE 'ugc-admin-create-type' \
    '{"subtype": ["4T9MYxuk", "4WuYZEvn", "o0Mrxl0L"], "type": "nvolTITi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["q0IaE9eF", "I4bkWgoP", "POg1JlJV"], "type": "kBm3gfX9"}' \
    'iIChB35o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'NosERQOh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'Xr3adguk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    'MAmLmimT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "6zr5NXNz"}' \
    '7cAxtpdY' \
    'MYoOyLGC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    '6ODWiq7C' \
    'UoJdbvYI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "LEdTREy4", "fileExtension": "S75k0IgL", "name": "bwHwwjJi", "preview": "myuH67kr", "previewMetadata": {"previewContentType": "JesuIDQR", "previewFileExtension": "6gbsvOFe"}, "subType": "hDQwfEIV", "tags": ["AQ7k9VQI", "Wjfv8RUF", "Vjdc7iKU"], "type": "RQl8pne4"}' \
    'T0Q9fvTA' \
    'KTxlEBZe' \
    'tnBkfiKG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    'RrWTf0ud' \
    'Z0ulKQbI' \
    '4kEyBmOe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'vxfuMTTR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    '2Vc5wmYc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": false}' \
    'nWNsMO7b' \
    'IU7QtmjY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'hQZwaxpI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'z9c74ZUZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'fiFUeq6k' \
    '3JswLz6S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["Qaj86KCg", "09ZrWF3F", "C5FwUmGc"], "name": "3s8OdBFd"}' \
    'JRnJ6otM' \
    'qKH8TOA4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    '7O5Izegz' \
    'vzcrxY5T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'NUrJBzaL' \
    '953ACurg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'mThg9IFw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'EdarMs9a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'SearchChannelSpecificContent' test.out

#- 52 PublicSearchContent
$PYTHON -m $MODULE 'ugc-public-search-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicSearchContent' test.out

#- 53 PublicGetContentBulk
$PYTHON -m $MODULE 'ugc-public-get-content-bulk' \
    '{"contentIds": ["YZzUnFMi", "tjqOQyoM", "hlqRyJGc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PublicGetContentBulk' test.out

#- 54 GetFollowedContent
$PYTHON -m $MODULE 'ugc-get-followed-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetFollowedContent' test.out

#- 55 GetLikedContent
$PYTHON -m $MODULE 'ugc-get-liked-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetLikedContent' test.out

#- 56 PublicDownloadContentByShareCode
$PYTHON -m $MODULE 'ugc-public-download-content-by-share-code' \
    'ojjdnQul' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'wkZdz7Dd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'i0DmD1uN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": true}' \
    'vZzIXI88' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    '3GiiaoQ8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentPreview' test.out

#- 61 GetTag
$PYTHON -m $MODULE 'ugc-get-tag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetTag' test.out

#- 62 GetType
$PYTHON -m $MODULE 'ugc-get-type' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetType' test.out

#- 63 PublicSearchCreator
$PYTHON -m $MODULE 'ugc-public-search-creator' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicSearchCreator' test.out

#- 64 GetFollowedUsers
$PYTHON -m $MODULE 'ugc-get-followed-users' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetFollowedUsers' test.out

#- 65 PublicGetCreator
$PYTHON -m $MODULE 'ugc-public-get-creator' \
    'ck2xraj6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'TDVWHVSp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
$PYTHON -m $MODULE 'ugc-create-channel' \
    '{"name": "G1hiTzGV"}' \
    'T0YDk6ev' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'ZGVPAqc6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "9wkL2JVZ"}' \
    'MbJ4jf0z' \
    'P4a5UBvG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'WPlgKpnc' \
    'IkGqpUea' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "T6zGN82Q", "fileExtension": "539ZETmW", "name": "NdlBqhsF", "preview": "1tc5TKjd", "previewMetadata": {"previewContentType": "nggSvfHZ", "previewFileExtension": "XLcRleUI"}, "subType": "FBi9OeGI", "tags": ["8ZVUW8Om", "o6Q8q9dz", "4f5qCu3g"], "type": "NxYM78pc"}' \
    'jJ2Hbcl5' \
    'voYvWoB3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "Fb2mbW7I", "fileExtension": "51f0vz72", "name": "wtdif5lj", "preview": "h13qA0Se", "previewMetadata": {"previewContentType": "xn8IDRl1", "previewFileExtension": "7V6ZfavI"}, "subType": "SNddSqRg", "tags": ["iCi8zxGR", "fYQMPm1g", "HSEa9Inb"], "type": "F5sbuWmY"}' \
    'Y6fAxVYL' \
    'PWKz6Pl6' \
    'GwTTg7Ci' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'clTJUjim' \
    'UwKKeHan' \
    'nryFMS8q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    'FWQteRtJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'hUIvyOti' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "r3oPFmo7", "screenshotId": "ya5wMVkb"}, {"description": "qd9rbude", "screenshotId": "OB9VdxK5"}, {"description": "QtgWlumt", "screenshotId": "dooLNvrh"}]}' \
    'WyS6W7gb' \
    'yASbZjBK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "caAtsyFB", "description": "2ciB06xL", "fileExtension": "png"}, {"contentType": "Lppd2xBt", "description": "pMy3xDGO", "fileExtension": "png"}, {"contentType": "7m9PRgRZ", "description": "vUxvViB0", "fileExtension": "png"}]}' \
    'KQs4d8eD' \
    'zMv1k3Cg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'wgn3EuBi' \
    'p4wVKnys' \
    'vzrOk7K1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": false}' \
    'HWzQaNHj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'Sqhj5rAq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'WhxY0Y0l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    '3PYOdbiR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["BGdplg0P", "JFq7ktIh", "p2hfAFJF"], "name": "1p1n6BT0"}' \
    'vooUr97L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    '2V4lgEJY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'c2X8VXYR' \
    '7ZfQ85Sd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["m1SKKg7M", "bM6pd5xQ", "XMl6HqNx"], "name": "8JRlyhTq"}' \
    'BesJ4fSN' \
    '9sA68BJj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'rKOiCX17' \
    'WSBxWC2t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'QbaUFhmk' \
    'zcaHssij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'eLXniYTI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
