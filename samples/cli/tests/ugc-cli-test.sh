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
ugc-admin-create-channel '{"name": "QjkY74W4"}' --login_with_auth "Bearer foo"
ugc-single-admin-update-channel '{"name": "PDwgdMAk"}' '68nQSgmR' --login_with_auth "Bearer foo"
ugc-single-admin-delete-channel 'umDLzUvl' --login_with_auth "Bearer foo"
ugc-admin-upload-content-s3 '{"contentType": "BO2f5kkR", "fileExtension": "BwzAFQfT", "name": "UXNnxdFN", "preview": "hZmq6lPu", "previewMetadata": {"previewContentType": "cr9deCRX", "previewFileExtension": "UZMbrYbM"}, "subType": "WiUXqs6c", "tags": ["OybvC1wH", "hBJUGbx2", "Q3vpq1yU"], "type": "BuLB8khH"}' 'a1FT7FaQ' --login_with_auth "Bearer foo"
ugc-single-admin-update-content-s3 '{"contentType": "8sxYW1Nf", "fileExtension": "5MtLHufh", "name": "GIJ11XKY", "preview": "OI24nYkO", "previewMetadata": {"previewContentType": "p5MC4k7f", "previewFileExtension": "lFQ0hYww"}, "subType": "gaN88BRl", "tags": ["YKWDhwMH", "vphSyeyD", "P2mVLIG4"], "type": "M9DrmPPy"}' 'GgzvxtRY' '0DNXn8qE' --login_with_auth "Bearer foo"
ugc-admin-search-channel-specific-content '5h66Pfmk' --login_with_auth "Bearer foo"
ugc-single-admin-delete-content 'f0E6gwLc' '8S9qT61N' --login_with_auth "Bearer foo"
ugc-single-admin-get-content --login_with_auth "Bearer foo"
ugc-admin-search-content --login_with_auth "Bearer foo"
ugc-admin-get-user-content-by-share-code 'AxIlSgFD' --login_with_auth "Bearer foo"
ugc-admin-get-specific-content 'NND4VECn' --login_with_auth "Bearer foo"
ugc-admin-download-content-preview '9WjbgdsU' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots '{"screenshots": [{"description": "YHfEjO85", "screenshotId": "oRBIYetw"}, {"description": "kn0mskcz", "screenshotId": "XRvquMKd"}, {"description": "qf9Usnqj", "screenshotId": "4P7aXBDK"}]}' 'tZpuhX89' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot '{"screenshots": [{"contentType": "Du4alIw0", "description": "KgmWP3Vc", "fileExtension": "jfif"}, {"contentType": "Aq96NcgN", "description": "ivZ7nFsc", "fileExtension": "pjp"}, {"contentType": "PipSKjt5", "description": "3KBsNgrW", "fileExtension": "png"}]}' 'OaDdnRFu' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot '4VQrFbiY' 'ffmnU9kk' --login_with_auth "Bearer foo"
ugc-single-admin-get-all-groups --login_with_auth "Bearer foo"
ugc-admin-create-group '{"contents": ["eg7yonyc", "6CpmhkiF", "42hBqpLl"], "name": "2EcZGieQ"}' --login_with_auth "Bearer foo"
ugc-single-admin-get-group '1SqG5uKe' --login_with_auth "Bearer foo"
ugc-single-admin-update-group '{"contents": ["Bd9JzRIb", "XDIWLcgC", "GUnz2582"], "name": "1qNVqK3F"}' 'QLWgHV6Q' --login_with_auth "Bearer foo"
ugc-single-admin-delete-group 'Cz8KkTdw' --login_with_auth "Bearer foo"
ugc-single-admin-get-group-contents 'eNlZZO16' --login_with_auth "Bearer foo"
ugc-admin-get-tag --login_with_auth "Bearer foo"
ugc-admin-create-tag '{"tag": "UnE71VmD"}' --login_with_auth "Bearer foo"
ugc-admin-update-tag '{"tag": "fp3k8vcI"}' 'uZeydmUr' --login_with_auth "Bearer foo"
ugc-admin-delete-tag 'vIGxDvcl' --login_with_auth "Bearer foo"
ugc-admin-get-type --login_with_auth "Bearer foo"
ugc-admin-create-type '{"subtype": ["aUUGIZ18", "ozh9IVzu", "Ox0FykwR"], "type": "bPhys6jL"}' --login_with_auth "Bearer foo"
ugc-admin-update-type '{"subtype": ["PYeEXKro", "l9xdoxhE", "PuBOECe0"], "type": "8Kb0vFLg"}' '5U89HQ57' --login_with_auth "Bearer foo"
ugc-admin-delete-type 'vkio6Yz9' --login_with_auth "Bearer foo"
ugc-admin-get-channel 'X0WXW4xv' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-channels 'DxsNP57u' --login_with_auth "Bearer foo"
ugc-admin-update-channel '{"name": "pvfTp6DN"}' 'Eo22O7lI' 'Y8z9aWh3' --login_with_auth "Bearer foo"
ugc-admin-delete-channel '8I9xg87G' 'B0hSheZt' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "nrY9befs", "fileExtension": "0RfZpggg", "name": "bXI9bbSl", "preview": "0Mhi9SFT", "previewMetadata": {"previewContentType": "8PyfZSV4", "previewFileExtension": "z4yZ9rMb"}, "subType": "i5a0rvY5", "tags": ["GxoFM0fL", "kJDzyHwP", "03HBE4g7"], "type": "CPWXyqDq"}' 'VoqgK60N' 'xdFftpEg' 'aNYbDeS5' --login_with_auth "Bearer foo"
ugc-admin-delete-content 'h1BQDUYE' 'ulXS9W6V' 'jLDm09Qm' --login_with_auth "Bearer foo"
ugc-admin-get-content 'sugFk7MF' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents '4waD1iqT' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": false}' '3EUZ4reo' 'PBB9GqEH' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups 'XEb6RdPW' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group 'zD4mWYy0' --login_with_auth "Bearer foo"
ugc-admin-get-group '5KR3qh15' 'fgxhdRtw' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["F9L7Cicz", "mApgzq95", "IHNfPJfJ"], "name": "Sb6SFl4i"}' 'QDx5YFGP' '1gMXvQfz' --login_with_auth "Bearer foo"
ugc-admin-delete-group 'dKXufGNN' 'XGg6misQ' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents 'P0Z9wBUc' 'G97CvMm0' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states 'pVXJT0Mh' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content 'KlMRaIOA' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["IoJ5tNWF", "ewIutjfy", "1W1gaAx3"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-public-download-content-by-share-code 'B9h8o6SK' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'YLtROP1K' --login_with_auth "Bearer foo"
ugc-add-download-count 'VQQPWUWO' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": true}' 'XyMqOdZv' --login_with_auth "Bearer foo"
ugc-public-download-content-preview 'pqf24tKm' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator 'DwafSk1p' --login_with_auth "Bearer foo"
ugc-get-channels '4E6eWtkN' --login_with_auth "Bearer foo"
ugc-create-channel '{"name": "EHBoWGXo"}' 'SVQamE2J' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel 'd3fxcoih' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "uHPPmqvq"}' 'yPr6evs8' 'EDLje9AX' --login_with_auth "Bearer foo"
ugc-delete-channel '9VrBVHW9' '3pyewWBd' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "MLkekY46", "fileExtension": "4VolwihJ", "name": "OyykhNof", "preview": "hBNQ3vCO", "previewMetadata": {"previewContentType": "BUmp7XZ6", "previewFileExtension": "9ITg9Bo0"}, "subType": "2G4N5PeS", "tags": ["SsTYS4ns", "glovCpHN", "B9ggNYxk"], "type": "6cy0n8Vk"}' 'yx8S69he' 'K3zVD6hc' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "v7lLWdsq", "fileExtension": "JUVFjHzo", "name": "OYT5IMtH", "preview": "G3puaD1n", "previewMetadata": {"previewContentType": "lKCrvWny", "previewFileExtension": "G4lBoMD2"}, "subType": "bFv4Hyfr", "tags": ["CP7xRu6P", "wQFJEXMo", "1AJ0w3Ce"], "type": "SN73qKV7"}' 'QV4QnhJA' 'xxjDYowX' 'FTUIKd13' --login_with_auth "Bearer foo"
ugc-delete-content 'j0jp9bMo' 'ioXq0oLY' '2kUXCeEc' --login_with_auth "Bearer foo"
ugc-public-get-user-content '0mYZ2oIN' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents '1ewGTXNg' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "ARk0wAj0", "screenshotId": "eSwPzigr"}, {"description": "JC36fo6H", "screenshotId": "VOLgzctg"}, {"description": "XkAqCtzB", "screenshotId": "6PtESrm6"}]}' '9JnadPkb' 'tYnq68wT' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "RVFHnu3h", "description": "gTCXdegw", "fileExtension": "png"}, {"contentType": "yivqoN9m", "description": "8xd1Opop", "fileExtension": "jpeg"}, {"contentType": "FOYvfxrF", "description": "yIkhATMR", "fileExtension": "jfif"}]}' 'scOfFfPM' '98p6bMaK' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot 'jfezFluz' 'Kkdbi6jD' 'eowXw9bb' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": false}' 'kOZyGQbC' --login_with_auth "Bearer foo"
ugc-get-public-followers 'Jw01aIyZ' --login_with_auth "Bearer foo"
ugc-get-public-following 'lz54w6ee' --login_with_auth "Bearer foo"
ugc-get-groups 'tD5uWClS' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["MKU3jrHO", "3ctK14XG", "VplLsLBH"], "name": "CPhNLzlY"}' 'HvsFbQPz' --login_with_auth "Bearer foo"
ugc-delete-all-user-group 'dLh89oVR' --login_with_auth "Bearer foo"
ugc-get-group '8aEU0Q1l' 'hQ5y1hPj' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["L9qUl8S0", "EtovCXOY", "uLDH7QPx"], "name": "JXs5rPvI"}' 'U1sgEUYN' 'VUV8dVAx' --login_with_auth "Bearer foo"
ugc-delete-group 'wwO9EdRL' '6oxwFn37' --login_with_auth "Bearer foo"
ugc-get-group-content 'FkV0VPkb' 'GygSnamg' --login_with_auth "Bearer foo"
ugc-delete-all-user-states 'mjAU8VwK' --login_with_auth "Bearer foo"
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
    '{"name": "wk8P7213"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "HgpsSY77"}' \
    'TKEtjsfV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'WXjza6DQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "wG1szBdy", "fileExtension": "qE5NnQRP", "name": "Xl7jW1KN", "preview": "DXaB78mR", "previewMetadata": {"previewContentType": "51PwsK2n", "previewFileExtension": "gTPYXSvl"}, "subType": "pamkJ1e1", "tags": ["p01Guvl9", "tbi9uCOk", "WYcW6InX"], "type": "PRM0inIo"}' \
    'tw6TFNAp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "17tlyfMv", "fileExtension": "oexUcxLd", "name": "tceNbLDe", "preview": "s6JhW43z", "previewMetadata": {"previewContentType": "djC0aCsY", "previewFileExtension": "v1HU7n7c"}, "subType": "fMHXOf55", "tags": ["IDXAcLce", "u89rQZy3", "ADEFPfm6"], "type": "xpjAySVf"}' \
    'ASoOzv0C' \
    'KCQnoyEL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'rzkJW7lG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    'dotYaVXW' \
    'U6cxSgsc' \
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
    'Lr4uwGDB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    '3b8jCZKS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'zPX4phCG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "FrquJu8a", "screenshotId": "DY929ivB"}, {"description": "S9PlKo10", "screenshotId": "tMbvXZOq"}, {"description": "fbphhEb2", "screenshotId": "iS1WLFYC"}]}' \
    'lEgUFv9N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "qLoDNbFK", "description": "0d7iD7sw", "fileExtension": "bmp"}, {"contentType": "cPRpKazb", "description": "sC4nWMTr", "fileExtension": "jpg"}, {"contentType": "0BncItK3", "description": "g3cCyrFR", "fileExtension": "bmp"}]}' \
    'EcHtGpY7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'ffLRP2He' \
    'jWovyRP1' \
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
    '{"contents": ["OGAbpySh", "voHa7tOh", "3hgWcXKT"], "name": "N33Nkeis"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'Bv8OUekd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["g8sST0wq", "dlZYDDWk", "VJ7sPqN7"], "name": "73xKcCsC"}' \
    '09j3O89g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'ZSGAlVRD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    'ylIh7dZG' \
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
    '{"tag": "DZbQRcFm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "ER5uDxzx"}' \
    '4BwQN3lx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'g5pcZCNh' \
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
    '{"subtype": ["K2lIgnhg", "mxHAOn24", "SFkD4DUe"], "type": "dP1s4R9l"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["y57noSyW", "aEyltFVB", "mqRXmGzx"], "type": "QuDKLpQF"}' \
    'z9jY1qDd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'XunI13HR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'rIARGJ5l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    'jivEIDfI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "UPLb7Hma"}' \
    'xQSlo5vJ' \
    '7zjyfwuu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'x8iAQoH3' \
    'GzfAQC6l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "vqpmWWJB", "fileExtension": "Sujp1RUd", "name": "UYWICFcu", "preview": "dxBM0bdO", "previewMetadata": {"previewContentType": "2sJ5Zc30", "previewFileExtension": "S300qpKi"}, "subType": "CMpAGbrc", "tags": ["G6sQPlZR", "FrtHEWVw", "wmaPwIgH"], "type": "8CsSQJrO"}' \
    'UYANtVES' \
    'oorkd8c0' \
    'WZhNK7zK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    'jSiL3JZb' \
    'DsCPrf51' \
    'IcxYWfVN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    '4KSiYp1L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'Ha8xYlH0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": true}' \
    'X3RJkU47' \
    'bDzz8qtI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'IJEtwguo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'zxzqN5PQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    '3nw0A6dT' \
    'UOVV5aSr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["4RSodPnu", "zkycCMTv", "zgl0Edvx"], "name": "ZLH1lKyL"}' \
    'lErJpXFq' \
    'p6Qt5vnq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'JMwQcIIE' \
    'O7ndtHOc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'Owt5g2QZ' \
    'zWEHaQzE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'zQZk342W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'ZarZc4jR' \
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
    '{"contentIds": ["4b8xLCct", "AZIJH9FF", "dsow1vm5"]}' \
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
    '69xjF0DH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'FkD8PtmY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'HaG4lQjg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": false}' \
    'rdReutYu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    'hPN5YnoU' \
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
    'Vw8z69pG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'Ge5KcUCQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
$PYTHON -m $MODULE 'ugc-create-channel' \
    '{"name": "CSkJ934z"}' \
    'QOioqKw1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'fqXvRQPZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "yaAfKzwV"}' \
    'DE7LTyaV' \
    'Mdd56Klf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    '4MW6YwHI' \
    'QqJq9o0w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "VDE8pHFi", "fileExtension": "uws2RSph", "name": "WYbioim3", "preview": "952PJwVx", "previewMetadata": {"previewContentType": "Po5cKHjy", "previewFileExtension": "aBedTloe"}, "subType": "PoeEcOA4", "tags": ["pdlDDihd", "Xbi5vKZ5", "lIV7zDjT"], "type": "4RF9zgXm"}' \
    'GzKnBnN2' \
    'zDnpI4xf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "vlPON1zq", "fileExtension": "q2qvGqFI", "name": "FsobBHS9", "preview": "xttaPh26", "previewMetadata": {"previewContentType": "mf1nOse2", "previewFileExtension": "bVxUGvXB"}, "subType": "ZZW3PtOl", "tags": ["PZBNDONV", "kz0IXA5E", "LLejTzxL"], "type": "24tHMWD9"}' \
    'MJPjQlAg' \
    'C1KQ4zWF' \
    'UFJpimmh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'aNInrvT9' \
    'DZnDi2Zk' \
    '6xctTB8i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    'kIWoJY3z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'Pg7fNWig' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "Wo8Rn90E", "screenshotId": "r883n9iZ"}, {"description": "8TzzQJB4", "screenshotId": "I4ci1m9s"}, {"description": "1CDxhKF4", "screenshotId": "m7qZ8Hmn"}]}' \
    '16ns6nDH' \
    'xP2sjoog' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "nBMgBOLf", "description": "qOFkuyrY", "fileExtension": "bmp"}, {"contentType": "GkG0iIf2", "description": "U0cNml5H", "fileExtension": "jpeg"}, {"contentType": "cjOjywGa", "description": "hvzjxryL", "fileExtension": "png"}]}' \
    'iIH467UZ' \
    'ROE7udvL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'KGjzlTXs' \
    'AnGXgZ3Q' \
    'bF55dp8Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": true}' \
    '6OXnrg6k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'ayAEdDXV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'E7NxPzsE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'KFWKrDwb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["4eww8OS5", "PryzqkjB", "L19dB1gG"], "name": "8zaaMKTl"}' \
    'kIFdLJd7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'YRXQ0MvK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'cHwDdDGX' \
    'he0Ilu7c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["jNCcXR8i", "uJOYLbkE", "kyFaCArz"], "name": "Z4RIR3L9"}' \
    'uw8YxDBM' \
    '1upzz22P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'exmlZPLF' \
    'ZEgjIxi2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    '6hRQ2ph9' \
    'X5UbskrE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'Ez4C1w4x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
