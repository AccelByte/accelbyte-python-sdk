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
ugc-admin-create-channel '{"name": "m52BFwcC"}' --login_with_auth "Bearer foo"
ugc-single-admin-update-channel '{"name": "zNyocdiR"}' 'YZhlW5ng' --login_with_auth "Bearer foo"
ugc-single-admin-delete-channel 'thWIJaRz' --login_with_auth "Bearer foo"
ugc-admin-upload-content-s3 '{"contentType": "KiBReyBe", "customAttributes": {"CCwZdf0S": {}, "HMgGHOIw": {}, "u2NPgEwc": {}}, "fileExtension": "ASWblwJj", "name": "1MEKEqPC", "preview": "GdRKmU6F", "previewMetadata": {"previewContentType": "DSeBFBTx", "previewFileExtension": "wbTRAqe9"}, "subType": "ZNSXQHcw", "tags": ["DJdwc3sM", "OlPq9Uwi", "KF0Uj51Z"], "type": "6FMu4P9H"}' 'qagWOeDZ' --login_with_auth "Bearer foo"
ugc-single-admin-update-content-s3 '{"contentType": "myz7FzCn", "customAttributes": {"nlmEYYzJ": {}, "k3jpGECS": {}, "kgwn1rzL": {}}, "fileExtension": "ccvX57BW", "name": "vBl2Mghb", "payload": "0aZ7qFG1", "preview": "Zy5EtRaL", "previewMetadata": {"previewContentType": "G8k0nWnn", "previewFileExtension": "avuud8lL"}, "subType": "MQt6V20E", "tags": ["6jWIUjM8", "7kI4HSkU", "gnW2DVHJ"], "type": "A4yctAox", "updateContentFile": false}' 'njJzeiLt' 'PZMJ9aT1' --login_with_auth "Bearer foo"
ugc-admin-search-channel-specific-content 'C7RjpV9W' --login_with_auth "Bearer foo"
ugc-single-admin-delete-content '9WxG5K48' 'aY9dzHzN' --login_with_auth "Bearer foo"
ugc-single-admin-get-content --login_with_auth "Bearer foo"
ugc-admin-get-content-bulk '{"contentIds": ["PL9qvDyK", "GBhnjA3X", "B6v0h0Rx"]}' --login_with_auth "Bearer foo"
ugc-admin-search-content --login_with_auth "Bearer foo"
ugc-admin-get-user-content-by-share-code 'uqlYFBYq' --login_with_auth "Bearer foo"
ugc-admin-get-specific-content 'VBcCpuQO' --login_with_auth "Bearer foo"
ugc-admin-download-content-preview 'FI79G1Ei' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots '{"screenshots": [{"description": "tT9BJoDM", "screenshotId": "U0GGmzyc"}, {"description": "fKo4zNOw", "screenshotId": "149mveE8"}, {"description": "ZcBQzTgL", "screenshotId": "KgoGMvwZ"}]}' 'Y8I6hyYL' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot '{"screenshots": [{"contentType": "JjYZ2MFA", "description": "eaK0emT2", "fileExtension": "jpeg"}, {"contentType": "LbyfRrmS", "description": "Fmah07xX", "fileExtension": "jpeg"}, {"contentType": "VlyBVCjA", "description": "OH0HPfQF", "fileExtension": "png"}]}' '8KGhMmBr' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot 'RwIszh6t' '8bnuV21K' --login_with_auth "Bearer foo"
ugc-single-admin-get-all-groups --login_with_auth "Bearer foo"
ugc-admin-create-group '{"contents": ["5LH56Liy", "lSy6BJBj", "CcZ1y1HP"], "name": "sBdSfFCI"}' --login_with_auth "Bearer foo"
ugc-single-admin-get-group 'xlpXNaFX' --login_with_auth "Bearer foo"
ugc-single-admin-update-group '{"contents": ["MSg3Plu9", "w27T72zu", "lFl0OtJi"], "name": "8OIq9fkr"}' 'sSZP8L5k' --login_with_auth "Bearer foo"
ugc-single-admin-delete-group 'bXfrFgYk' --login_with_auth "Bearer foo"
ugc-single-admin-get-group-contents 'PvCQ3DIl' --login_with_auth "Bearer foo"
ugc-admin-get-tag --login_with_auth "Bearer foo"
ugc-admin-create-tag '{"tag": "4gjJiTPI"}' --login_with_auth "Bearer foo"
ugc-admin-update-tag '{"tag": "4hooHhJQ"}' 'DlRhrooB' --login_with_auth "Bearer foo"
ugc-admin-delete-tag 'KoRcuUvd' --login_with_auth "Bearer foo"
ugc-admin-get-type --login_with_auth "Bearer foo"
ugc-admin-create-type '{"subtype": ["ZWPaPpBX", "BkzzQRRH", "TLcfmmpH"], "type": "09mVYlv7"}' --login_with_auth "Bearer foo"
ugc-admin-update-type '{"subtype": ["XfKZcBv1", "2sS08Rk8", "0QWnTHok"], "type": "8x1HPeFg"}' 'p4V5g32e' --login_with_auth "Bearer foo"
ugc-admin-delete-type 'wccveBKn' --login_with_auth "Bearer foo"
ugc-admin-get-channel 'JdtzHP6t' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-channels 'itSMfGlf' --login_with_auth "Bearer foo"
ugc-admin-update-channel '{"name": "euc84lZg"}' 'uMiZLFuA' '8Uivjetq' --login_with_auth "Bearer foo"
ugc-admin-delete-channel '0n751f7G' '43CqQMfB' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "S3mDQgOG", "customAttributes": {"9ydr3SH7": {}, "okkZAG7N": {}, "scxeT6hn": {}}, "fileExtension": "UxMHUkWg", "name": "CPIKjv1K", "payload": "AC2y1sV6", "preview": "W7KmFQhM", "previewMetadata": {"previewContentType": "y4WeEHJS", "previewFileExtension": "kjmeWtnh"}, "subType": "OZf79nkW", "tags": ["6ib1D7cF", "ybNdrAtL", "wU2usPQ5"], "type": "E56lBCfF", "updateContentFile": false}' 'oPFDubbf' 'KvlFZaYs' '2FeX7YMk' --login_with_auth "Bearer foo"
ugc-admin-delete-content 'q71wgzH0' 'LaExEiQ2' '4N5811Zw' --login_with_auth "Bearer foo"
ugc-admin-get-content 'rB83Mfkk' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents 'PLFczsZ2' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": true}' 'N5sIqVfR' 'LKkzYzoD' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups '9i8WyaHC' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group 'aPjStWQG' --login_with_auth "Bearer foo"
ugc-admin-get-group 'zKvDlyG4' 'x18Bzqmu' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["JyxJdxC4", "nlec4QxD", "Ga4HNhbB"], "name": "guEZQGWj"}' 'mBTovjYV' 'Ppet1XDp' --login_with_auth "Bearer foo"
ugc-admin-delete-group '1ixINkLM' '02qojRdj' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents 'JqMsr2FA' 'cyG7GN5F' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states '0kHgAYN8' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content 'CveA30Ox' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["usjvBPXx", "6kyeK2xG", "rRW3xogM"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-public-download-content-by-share-code 'UFTj4G4W' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'TtyLVGTM' --login_with_auth "Bearer foo"
ugc-add-download-count 'kY4Uewvz' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": true}' 'x6nPSZ7q' --login_with_auth "Bearer foo"
ugc-public-download-content-preview 'ImlLSoJt' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator 'z9Zl8RQ9' --login_with_auth "Bearer foo"
ugc-get-channels 'qMnzCzWI' --login_with_auth "Bearer foo"
ugc-create-channel '{"name": "Qy32tasc"}' '5vhSCNu6' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel 'nV7AWpOR' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "mnt7h91n"}' 'mC10C42E' 'pbVLmpL9' --login_with_auth "Bearer foo"
ugc-delete-channel 'gYOznQax' 'mlhWiq6x' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "UgZBckn7", "customAttributes": {"00iy3AAn": {}, "cmjBqdPN": {}, "VBBaqFRO": {}}, "fileExtension": "p5Y7bWDE", "name": "Nn6rpclt", "preview": "I2CSwOeb", "previewMetadata": {"previewContentType": "Usvia1lu", "previewFileExtension": "eG44u2uo"}, "subType": "U9AGlG2k", "tags": ["qzLQtkB6", "Lr9jrLcy", "vQkKuEiv"], "type": "5S1BPcCz"}' '5tWux5jY' 'L9e8DvBm' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "K1apotXJ", "customAttributes": {"ewOX6nqT": {}, "xDtgiWcv": {}, "bQ97lNxn": {}}, "fileExtension": "bxP3HH12", "name": "f93Lqz9c", "payload": "3NZ16bgM", "preview": "jNPpcg5f", "previewMetadata": {"previewContentType": "l10va7iu", "previewFileExtension": "JaF4wIuq"}, "subType": "og8x9DbE", "tags": ["VfH1dfTH", "dBsVaCtE", "87oy3RzG"], "type": "YMFOyFDB", "updateContentFile": true}' 're79b5Th' 'QztqpyIG' 'rl5SCNPW' --login_with_auth "Bearer foo"
ugc-delete-content 'SXWxUN9w' 'WCZBK6Gg' 'ZFkPMsut' --login_with_auth "Bearer foo"
ugc-public-get-user-content 'Nmu7epDq' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents 'pb9LCwaz' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "XGC5Oqkd", "screenshotId": "Rw6JXePN"}, {"description": "4FLsBYyp", "screenshotId": "YAap05GO"}, {"description": "XsgskWWu", "screenshotId": "R3XgNOqo"}]}' 'w5ZzELLs' 'IoPKXxZl' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "O14g8SkN", "description": "tLzn5feo", "fileExtension": "jpeg"}, {"contentType": "Gy7mXhtI", "description": "7n6fQ8Uj", "fileExtension": "jfif"}, {"contentType": "wwX80PND", "description": "l9svsZI6", "fileExtension": "bmp"}]}' '6Ome19SW' '1tsQYqW0' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot 'dEH15etu' 'yvmsA2IL' 'uTgbCPoh' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": false}' '1xp5es68' --login_with_auth "Bearer foo"
ugc-get-public-followers 'zVMZYbu6' --login_with_auth "Bearer foo"
ugc-get-public-following '3b048fk4' --login_with_auth "Bearer foo"
ugc-get-groups 'V8SWKiqv' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["2GWi4skN", "I2qOWXML", "Ieusu209"], "name": "ZRFpdEqa"}' 'EsouArxr' --login_with_auth "Bearer foo"
ugc-delete-all-user-group 'tpiiabzP' --login_with_auth "Bearer foo"
ugc-get-group 'e867UNdR' 'q9cU7fa1' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["yq88ejUS", "KPg2mzff", "VKqbM6qz"], "name": "V4DqqbVo"}' 'ivec8cDy' 'VFpIEVmw' --login_with_auth "Bearer foo"
ugc-delete-group 'QsUfgbp0' 'i2vhcFie' --login_with_auth "Bearer foo"
ugc-get-group-content 'kI7dhZYH' '6y7E696Z' --login_with_auth "Bearer foo"
ugc-delete-all-user-states 'Hdc2zSlU' --login_with_auth "Bearer foo"
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
    '{"name": "dPG2b8ZT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "xCrfDSPj"}' \
    '11GALJVG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'K4G4FCvf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "J350beJV", "customAttributes": {"xg32qKzu": {}, "nVyOkmrU": {}, "bXLtM3Z9": {}}, "fileExtension": "SYCkgCAG", "name": "glHPuSIp", "preview": "lgglMPVN", "previewMetadata": {"previewContentType": "nIsDebm4", "previewFileExtension": "XQ2rIxbz"}, "subType": "K3dTnA2w", "tags": ["WoHwzVCd", "yeYnWMUU", "0BNeyBNP"], "type": "uoHFTPWb"}' \
    'WEfRgpwS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "QjkR0sOD", "customAttributes": {"VhBnNobh": {}, "CsTY7puJ": {}, "WCz5yMfj": {}}, "fileExtension": "RiOeBnPp", "name": "tRjAZnt3", "payload": "W1c0e6dI", "preview": "twNZCpXp", "previewMetadata": {"previewContentType": "noMyyafT", "previewFileExtension": "ZuYfU4pF"}, "subType": "uGRZVP6w", "tags": ["kMOcuw2h", "sDIMlVpp", "2R5MgwV7"], "type": "VlhFJZfu", "updateContentFile": false}' \
    'dwmYE2JF' \
    'b3c0iAqV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'jFVWHe6z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    'bLWRUckU' \
    'Y3d6tvwt' \
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
    '{"contentIds": ["oFd7ZDNd", "SgHQq932", "BFsGsI8B"]}' \
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
    'gHwO99UQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'VIfZWlSZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    '0SZSvT57' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "zAQIy6X7", "screenshotId": "ewv65ruc"}, {"description": "lQKvLbe9", "screenshotId": "AI6bRbdW"}, {"description": "C23npBJd", "screenshotId": "6b4kvFIe"}]}' \
    'D9a4nM2o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "aW7zsg3m", "description": "s6MILa0t", "fileExtension": "bmp"}, {"contentType": "y8IkWNkL", "description": "i70TetAM", "fileExtension": "jpeg"}, {"contentType": "ukvSzTWj", "description": "4DBb79ri", "fileExtension": "png"}]}' \
    'E9ruPI6M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'wHmR2MVp' \
    'KFSTjJzR' \
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
    '{"contents": ["0eQLzeXM", "CJZ9riAr", "gd3CJHaZ"], "name": "VmAVn1YG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'e39B5yke' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["plePOdRF", "karME7vV", "NZ0RUiq7"], "name": "UCFNV26Y"}' \
    '3UowJGfC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'AsnGAlVl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    'sOHvU9bG' \
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
    '{"tag": "KxEKnCu9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "qURFnYDN"}' \
    'U6ZV6KJs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'bOBO6Qgl' \
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
    '{"subtype": ["KDtNbGJz", "EPrgGSAu", "4eCQpK6i"], "type": "FZpYCgVg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["NSUoLVyS", "vGAX6ESQ", "YIuoxlJI"], "type": "U84iWobi"}' \
    'xnhctUbY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'ZjMeg9OI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'tgwqMkk7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    'VT8ZgEvk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "30I0n4at"}' \
    'Ut9R8snP' \
    'dcyTKTUL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'yGmXDw2S' \
    'FlcAb2VT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "ASQCnq0r", "customAttributes": {"9O9MNTa2": {}, "pP9ziJ4C": {}, "e6ZGT9ln": {}}, "fileExtension": "EPrObyYE", "name": "sHHjiYc5", "payload": "ffpWaB3j", "preview": "m0BtxSDj", "previewMetadata": {"previewContentType": "93PslRSp", "previewFileExtension": "BNliWEkI"}, "subType": "kXfo8OWu", "tags": ["2dqywmLc", "0t8odeFW", "e1zkDxU7"], "type": "4sg72U15", "updateContentFile": true}' \
    'dpxHOcsj' \
    'hCEeX4Ow' \
    '7aDMfDfb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    'rYtggrOI' \
    'm6mzRcTq' \
    'lufDpyTK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    '0kdNJYrS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'cHE4mjml' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": false}' \
    'pJsc8hUv' \
    '5agqeIGP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'JRX50aTn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    '5aypCxg6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'Ns4Yqot5' \
    'GAmUN79G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["1OrzCbrB", "giBJNwuG", "7HISLAcD"], "name": "QgWi7azs"}' \
    'Jw8UQRhq' \
    '6kNnm9fi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'PAvIzVXN' \
    '76QQm1VL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'HX1mgg52' \
    'kDBntVfm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    '5wRnToYd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'z4w7Cb7z' \
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
    '{"contentIds": ["k8XiNBER", "0UnFNmZu", "ipNhJaUk"]}' \
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
    'YRIbtWBD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'rlDhsDiE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'PrNc6Juk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": false}' \
    '18CY5Kfk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    '3tURbHkU' \
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
    'yNuMPK71' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'PgOJVWNV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 CreateChannel
$PYTHON -m $MODULE 'ugc-create-channel' \
    '{"name": "chOZHVsc"}' \
    'j8piNDdU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'CreateChannel' test.out

#- 69 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'V3kVj3EM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "6KZ3KJuR"}' \
    'Zk16yqyw' \
    'XW46M7hv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'mBPxBfEM' \
    'tNoGJPl7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "RCklWbVU", "customAttributes": {"U4m2WBn1": {}, "0TBEqilw": {}, "16zM4BhR": {}}, "fileExtension": "TleqHTRX", "name": "w4bIzJxs", "preview": "ZyuzjoUm", "previewMetadata": {"previewContentType": "k7cTZE5l", "previewFileExtension": "UTgwipGQ"}, "subType": "E8YNkEjU", "tags": ["AHfqBqfk", "fms8SY1m", "OLX2ED1E"], "type": "WSQWh1PY"}' \
    'XHaFm1KG' \
    '02P7Mx20' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "XUNvK01t", "customAttributes": {"1yUg5tJY": {}, "E4jf3V40": {}, "L46k2gNG": {}}, "fileExtension": "wkDLlc5W", "name": "M0mwaKX5", "payload": "zLX5Blyx", "preview": "Zr3bHTxV", "previewMetadata": {"previewContentType": "XQ67Vqef", "previewFileExtension": "Med61bRW"}, "subType": "OVP00rov", "tags": ["0leAe1CX", "iW5Y6dvc", "TvbjNTIW"], "type": "UXZwUPsx", "updateContentFile": false}' \
    'Zf6xAKSY' \
    'qbU6TLqj' \
    'yzZOMkI6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'cMzh0xqy' \
    'sRquUWZ6' \
    'mrucQrHc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    'RXNWSiYK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    '2ss5phHI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "8W0HqOVa", "screenshotId": "IHd2rxGb"}, {"description": "sXwULpVN", "screenshotId": "4SKLJDvR"}, {"description": "KXeXMYaN", "screenshotId": "cMF3GRbY"}]}' \
    '7aG7tbl4' \
    '160P86Pe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "uKnXr7Qs", "description": "tRlGlZgG", "fileExtension": "jpeg"}, {"contentType": "0GAI647r", "description": "D1wUqygq", "fileExtension": "jpg"}, {"contentType": "cFypGqwT", "description": "K5XfrBk2", "fileExtension": "pjp"}]}' \
    'W4ukfnQn' \
    'f9hK4ZVY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'qt8TZkj3' \
    'tJEGDwdp' \
    'tYkE1tqz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": false}' \
    'LDT5yLmS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'xuVkwCWj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'hsF9zaFU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    '5cSXwcwk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["lfuEX4dL", "NnDZJ7kz", "8oz3rEb9"], "name": "tgaBDJuq"}' \
    '5t8uw1Nr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    '8UpMmhIG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'RW9R785X' \
    '4W65eFw9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["8d8LvG0Q", "DxbSNkMk", "mtSVNvWC"], "name": "HXzW7kJF"}' \
    'oNqxI4Ge' \
    'DkMiehd0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'kERlsetD' \
    'qptKsmf5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'ICnNJuts' \
    'vn2yoxat' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'jAOxuYfW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
