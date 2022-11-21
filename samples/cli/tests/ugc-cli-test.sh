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
ugc-admin-create-channel '{"name": "2RqZPwVR"}' --login_with_auth "Bearer foo"
ugc-single-admin-update-channel '{"name": "3KpWm9RR"}' 'mW9MR4g2' --login_with_auth "Bearer foo"
ugc-single-admin-delete-channel 'prFMuKzq' --login_with_auth "Bearer foo"
ugc-admin-upload-content-s3 '{"contentType": "TGpEk3Vn", "fileExtension": "VakNEODm", "name": "7OnZGvQP", "preview": "nvbmBkZF", "previewMetadata": {"previewContentType": "5PeS7IZf", "previewFileExtension": "l60Aj296"}, "subType": "98BePRHu", "tags": ["bbQKem8m", "vgLQosJK", "RIiUtX0T"], "type": "09hzlsdp"}' 'mNB2HK0P' --login_with_auth "Bearer foo"
ugc-single-admin-update-content-s3 '{"contentType": "TXlFV0lm", "fileExtension": "1RQk4m9C", "name": "TWvPGxRY", "preview": "7J4jvsiL", "previewMetadata": {"previewContentType": "zWbaMF0A", "previewFileExtension": "qtxtLAyY"}, "subType": "w38eTqOh", "tags": ["6vmkrTj7", "1ICSadYm", "fat63QRE"], "type": "T1UnF38k"}' 'LVQQruQE' 'aY2vEAuz' --login_with_auth "Bearer foo"
ugc-admin-search-channel-specific-content 'ae0iPc3d' --login_with_auth "Bearer foo"
ugc-single-admin-delete-content 'Fylp5xeb' 'KoNSfO7Z' --login_with_auth "Bearer foo"
ugc-single-admin-get-content --login_with_auth "Bearer foo"
ugc-admin-search-content --login_with_auth "Bearer foo"
ugc-admin-get-user-content-by-share-code 'fVKdsgfN' --login_with_auth "Bearer foo"
ugc-admin-get-specific-content 'kgzoQ3q7' --login_with_auth "Bearer foo"
ugc-admin-download-content-preview '1XP6q1UB' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots '{"screenshots": [{"description": "00YSWely", "screenshotId": "OeIrl5nI"}, {"description": "n5BDjIry", "screenshotId": "OZErfeAv"}, {"description": "IUGm0Lix", "screenshotId": "GPRwzK6d"}]}' 'javqN4Yi' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot '{"screenshots": [{"contentType": "EXcIfa00", "description": "Sq6jQG8Y", "fileExtension": "jpeg"}, {"contentType": "6skrUeT0", "description": "myoTlkPt", "fileExtension": "jfif"}, {"contentType": "szKyCSEg", "description": "9eYhU0HS", "fileExtension": "bmp"}]}' 'SGLLK4Lc' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot '9wWRgoua' 'Dhca2Ki1' --login_with_auth "Bearer foo"
ugc-single-admin-get-all-groups --login_with_auth "Bearer foo"
ugc-admin-create-group '{"contents": ["UZIyDSEG", "j4OZUFdq", "rsAQZmCw"], "name": "0YNXoQlv"}' --login_with_auth "Bearer foo"
ugc-single-admin-get-group 'cT0Sp0pG' --login_with_auth "Bearer foo"
ugc-single-admin-update-group '{"contents": ["vHiagdMt", "zS5CsqNE", "mvi2T9xy"], "name": "zudzfQNZ"}' 'GkpIQjjj' --login_with_auth "Bearer foo"
ugc-single-admin-delete-group '5oP1x94K' --login_with_auth "Bearer foo"
ugc-single-admin-get-group-contents 'LvaMtV5a' --login_with_auth "Bearer foo"
ugc-admin-get-tag --login_with_auth "Bearer foo"
ugc-admin-create-tag '{"tag": "FDUR4hW9"}' --login_with_auth "Bearer foo"
ugc-admin-update-tag '{"tag": "FwSn5wvJ"}' 'z6Td99sN' --login_with_auth "Bearer foo"
ugc-admin-delete-tag 'HGW9oNke' --login_with_auth "Bearer foo"
ugc-admin-get-type --login_with_auth "Bearer foo"
ugc-admin-create-type '{"subtype": ["X74xonC4", "4obZ8A4a", "4QF18hud"], "type": "8zVOWvLG"}' --login_with_auth "Bearer foo"
ugc-admin-update-type '{"subtype": ["Hg9OQR6U", "zZyTazdD", "Z8aDUzO9"], "type": "2Z5uTzWs"}' '3rjtkfbr' --login_with_auth "Bearer foo"
ugc-admin-delete-type 'VFEgmtOe' --login_with_auth "Bearer foo"
ugc-admin-get-channel 'AKwwK6E8' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-channels 'beqRsB93' --login_with_auth "Bearer foo"
ugc-admin-update-channel '{"name": "f31YsICN"}' 'iimkLJcJ' 'Vsha4cyg' --login_with_auth "Bearer foo"
ugc-admin-delete-channel 'inBNBs2u' 'kuh8SFBU' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "LPhyPVPh", "fileExtension": "1qxs13Nm", "name": "bwT9RvJu", "preview": "2pyl8RRj", "previewMetadata": {"previewContentType": "72ZPYyJE", "previewFileExtension": "sHjzQM8p"}, "subType": "aIVW4tpD", "tags": ["fof87CmN", "nrU0gT7U", "sB48k5MY"], "type": "VLdlsC1Y"}' 'F0H04QNF' 'db8TQ1gk' 'shSm36NZ' --login_with_auth "Bearer foo"
ugc-admin-delete-content '6QyBX1XC' 'qqaXf0nc' 'PDLQLAap' --login_with_auth "Bearer foo"
ugc-admin-get-content 'n5gVM8RE' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents 'TWl3MzGd' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": false}' 'aV97Je6E' 'tQHJnJbJ' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups 'vYC1axvQ' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group 'C3A8kV6y' --login_with_auth "Bearer foo"
ugc-admin-get-group 'puekNSDK' 'CwFMYo6u' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["xPBA0mJ3", "qyhhsL3V", "ek3QTLKk"], "name": "DpNkzHh9"}' 'xQdcGTxp' '6cjzZ787' --login_with_auth "Bearer foo"
ugc-admin-delete-group 'pnWJLHmP' '7UgRJgCU' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents 'agZwgUr4' 'gdTCSsAB' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states '9T4C85cs' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content 'A8uKREYT' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["RoBxOl46", "yOgbhBMZ", "AQg941NB"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-public-download-content-by-share-code '4cdSNsGP' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'taNwUPjS' --login_with_auth "Bearer foo"
ugc-add-download-count 'q1gpwYxQ' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": false}' 'Vmon8d4G' --login_with_auth "Bearer foo"
ugc-public-download-content-preview 'UQmV27yb' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator 'yygG8cgW' --login_with_auth "Bearer foo"
ugc-get-channels 'CdtlUJ9B' --login_with_auth "Bearer foo"
ugc-create-channel '{"name": "A6hyzun4"}' 'OjW1cyFP' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel 'xD6pSY8B' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "cih7rZlD"}' 'xePWZY8X' 'p3lUm3lJ' --login_with_auth "Bearer foo"
ugc-delete-channel 'WOkv9x96' '4FBEnPUK' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "FGfVJSBz", "fileExtension": "Iq74Rnpx", "name": "hcoYeTaR", "preview": "SODbY6zr", "previewMetadata": {"previewContentType": "z5eg2XB9", "previewFileExtension": "EPOnz3So"}, "subType": "UFOtcU0r", "tags": ["uA9ZqYqq", "4QXjNsj3", "a8qFPfIc"], "type": "omqKFLSi"}' 'AeV8tmhK' 'dS13ab5S' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "LhL7oFVj", "fileExtension": "0dTATAFa", "name": "XYgRHFth", "preview": "z5T7kT7o", "previewMetadata": {"previewContentType": "Krwg5hEN", "previewFileExtension": "ypZuMSj5"}, "subType": "cESz5VsR", "tags": ["2z9z5D8Z", "FzPJsYwz", "Kp97LicH"], "type": "oOt1rtvF"}' 't2VS3Aqq' 'zBgZnrDC' '67dUJgky' --login_with_auth "Bearer foo"
ugc-delete-content 'C8wu9zCM' '1tKO5efh' 'pgdpJLNA' --login_with_auth "Bearer foo"
ugc-public-get-user-content 'Ney3cTBs' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents 'Icuy1Q1F' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "z1vweuh5", "screenshotId": "GDr9HKW9"}, {"description": "UN7XO7zD", "screenshotId": "l0t1gTvJ"}, {"description": "W6nBvrZ7", "screenshotId": "5oLa67i4"}]}' 'baTk9GkT' '6lwsBDaz' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "PXLwVx9N", "description": "bg1SAnt3", "fileExtension": "png"}, {"contentType": "b2yvLTN8", "description": "geRSo7ML", "fileExtension": "pjp"}, {"contentType": "QYCSdb0T", "description": "9yhRWadQ", "fileExtension": "png"}]}' 'IzRvXoWJ' 'SsLKJwh6' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot 'fqmclao7' 'gYuEzJcG' 'OMJAMkDO' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": true}' 'ed331Y5i' --login_with_auth "Bearer foo"
ugc-get-public-followers 'vmakgXVl' --login_with_auth "Bearer foo"
ugc-get-public-following '3tzzRvJM' --login_with_auth "Bearer foo"
ugc-get-groups 'OoV6Yc5o' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["lChQuMg5", "320yio5Y", "ekCCxDHH"], "name": "VKirDNmt"}' 'JXJkTS5z' --login_with_auth "Bearer foo"
ugc-delete-all-user-group 'jqsLcwLc' --login_with_auth "Bearer foo"
ugc-get-group 'hcuutPop' 'CpbchGCK' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["vWVSd7BO", "pjTdntWV", "oY6GaGgQ"], "name": "2DbZz3LB"}' 'fF9qMVa5' 'jgPa6dQC' --login_with_auth "Bearer foo"
ugc-delete-group 'UXa30P5t' 'X1SzPhi8' --login_with_auth "Bearer foo"
ugc-get-group-content 'KocYiA9a' 'ayu2kRZw' --login_with_auth "Bearer foo"
ugc-delete-all-user-states 'JfScl6EF' --login_with_auth "Bearer foo"
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
    '{"name": "dJ8rYqTs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "po16LGPs"}' \
    '2ZpohrUV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    '74D4hJ67' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "iecNrW0E", "fileExtension": "Ai3n3HEc", "name": "cyACVSRV", "preview": "5GrTeGYQ", "previewMetadata": {"previewContentType": "V4pcllOw", "previewFileExtension": "WvnSPrSG"}, "subType": "2XMeH4FM", "tags": ["TrFCpOAo", "TdiUtYAw", "WUWKiQbv"], "type": "3HRPIKG1"}' \
    'e3tOYcFH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "R5YaUrDx", "fileExtension": "09WiPzIN", "name": "VUfA8FLu", "preview": "GPO15Ubf", "previewMetadata": {"previewContentType": "UFwbGdK3", "previewFileExtension": "QoGAnkvG"}, "subType": "EvydQR0C", "tags": ["mZyBWdat", "aL6AkKsy", "vXtmngZE"], "type": "gJykgXbK"}' \
    'yLhSabGA' \
    'UvjUQw7A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'DeJRq6W0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    'L7mfJtrN' \
    'C8M2eZZo' \
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
    'RHNKMG5u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'oP2kNW8u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'BbsXMfOC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "ndg0ZYml", "screenshotId": "MBqA3EY5"}, {"description": "9PpogZSR", "screenshotId": "1Z7aYxIt"}, {"description": "OHhuJDvM", "screenshotId": "hnYjgn3k"}]}' \
    'D2l9GHnK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "s0quEWsq", "description": "EcjefV9t", "fileExtension": "png"}, {"contentType": "S5pHnkl1", "description": "GkxyCC9E", "fileExtension": "jpg"}, {"contentType": "YHCcxCwi", "description": "CwdhOdP2", "fileExtension": "bmp"}]}' \
    'NDg05DF2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'EuvfAa94' \
    'X3Lvqbyj' \
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
    '{"contents": ["VoIiWOw9", "SbumdmOB", "LV99WXqO"], "name": "oGyv4nl6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'Tbk1dlir' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["wajBMHvd", "vFYW5kDi", "bxa8QVsS"], "name": "Ls9nvx6Z"}' \
    'XQmxiExW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'gVEyumqg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    '1LWWUKDq' \
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
    '{"tag": "F1E9niU9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "VaT2TMT7"}' \
    '1Y6iS23O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    '6syhtxHz' \
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
    '{"subtype": ["8uTxCweC", "05iK9bOe", "TtgGeOSR"], "type": "UPuxwajo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["6fXVlma2", "vZU5oALB", "p22WxoQY"], "type": "EPSVAHkN"}' \
    '2h2I5Q1R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'rsvCKOBl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'wAjTLb86' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    '8QVupo9R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "PNLP2fkt"}' \
    'vO2qK9km' \
    'MWlwXar5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'RORjbBJs' \
    'ptZhOpbg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "L0sfwUyj", "fileExtension": "6vinXxgl", "name": "eA1ZInG5", "preview": "WAYNM7er", "previewMetadata": {"previewContentType": "GzMVm7Y7", "previewFileExtension": "z0eL8UIc"}, "subType": "WiZX2zSD", "tags": ["klOBWFBU", "i7kszkXL", "Gd28q67l"], "type": "BRupUUio"}' \
    'LQVuApqK' \
    '8s0yMtp0' \
    'J0mOvWKT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    'D5332DaZ' \
    'QiAtNhuH' \
    '6H2JHIqW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'VN5xPHKn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'pRaFiGmz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": false}' \
    'rKBM1Ca8' \
    'j486B0J1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'IbtOh7mz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'qyvrod9O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'Y9vOzbE8' \
    'ASSYmpnA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["dx6oANgt", "mMpFwj9F", "rzD4VCDG"], "name": "7k82jjCl"}' \
    'a5ACosUL' \
    'cHZun04O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'p0drepcb' \
    'TUTOo77o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'qxKEB69Q' \
    'fbsyLZKx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'aovqMazC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'KNCCQzl5' \
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
    '{"contentIds": ["dTbHurFc", "6edFsNhG", "TF3LhEh9"]}' \
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
    'QohCpH0i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'i5ZJWNaS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'XgtUOXtt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": true}' \
    'QY7EXdIm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    '7xHgOdbh' \
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
    'Nq1z33ZZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'lVM5YoBA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
$PYTHON -m $MODULE 'ugc-create-channel' \
    '{"name": "UMabfhEJ"}' \
    'HT8b9vU5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'WH1Sk1Kb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "MGWTjGSZ"}' \
    'wGKhxqKK' \
    '5GIZVNVz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    '4kfHMrBU' \
    '5eU69bNW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "yvI9gJBP", "fileExtension": "xKULkhyX", "name": "2EDhs6Ub", "preview": "JNf8ABe7", "previewMetadata": {"previewContentType": "onwd7AeO", "previewFileExtension": "G29iAh3Q"}, "subType": "rlgW5FB4", "tags": ["EVJIOSjj", "keJQa4as", "1jKXrKeN"], "type": "K0foXoEs"}' \
    'mNlIZAMT' \
    'KOwqnJeJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "MRI2c66y", "fileExtension": "xec7Wk8U", "name": "vk3FJoWV", "preview": "uvzPniF4", "previewMetadata": {"previewContentType": "8sd0lzfF", "previewFileExtension": "40rFUann"}, "subType": "Ha34gwVb", "tags": ["kTg74csD", "W38hAeSH", "fJETIch1"], "type": "xOnmxxa1"}' \
    '18OZ7WLN' \
    'mdDKxOHm' \
    'IlsH3cGT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'gkrqDvFn' \
    'eibKtotY' \
    '4DLKja5t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    'EQ0aHWuQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    '8HMAw9on' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "AAMlQgUN", "screenshotId": "7HXZHuUG"}, {"description": "GjJbrEYJ", "screenshotId": "BIeOnQ0B"}, {"description": "q7LyP14Z", "screenshotId": "x8F0mAjt"}]}' \
    'rvgEtVYt' \
    'rC72cEUL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "g7i7L4sD", "description": "nIpgGZbV", "fileExtension": "jpeg"}, {"contentType": "RcEzg91F", "description": "zWgbdSFY", "fileExtension": "jpeg"}, {"contentType": "HXba8nV2", "description": "they5YUD", "fileExtension": "bmp"}]}' \
    'bbgh4TaC' \
    'WvKw7gnT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'SlanB9mR' \
    'us0x6APG' \
    'hg0RFwKA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": true}' \
    'CKfKdBDB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'QnnqcoUR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'RjltHlQs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'QIfPkBn8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["I1aGTtrm", "4osuPoGl", "Zqrp4yv9"], "name": "CSx9VfLI"}' \
    'PcCimPUX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    '0b8eFZIE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'lYNYr93M' \
    'YpnoAnKI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["XaormHiL", "LS2npjMI", "SIbsSmWm"], "name": "BAoDlzlt"}' \
    'dNPXTwoX' \
    'eQPxlLg7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'gfC52wpK' \
    'PjNc7QED' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    '4yknIUza' \
    '87a7EtYi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'G00rkVx3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
