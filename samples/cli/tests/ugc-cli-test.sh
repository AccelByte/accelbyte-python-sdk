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
ugc-admin-create-channel '{"id": "EAxcVpFrttufHIRd", "name": "H9UzVRiXbqlAw7r6"}' --login_with_auth "Bearer foo"
ugc-single-admin-update-channel '{"name": "W2ktQG0h5JAav5kR"}' 'a62WopBJHPtcDs8b' --login_with_auth "Bearer foo"
ugc-single-admin-delete-channel 'BZLCXLx8bbgorQeF' --login_with_auth "Bearer foo"
ugc-admin-upload-content-s3 '{"contentType": "bQ1g7qbPngUNB1vR", "customAttributes": {"odwpzS6DaDpv8N7Z": {}, "QVqGj6oDLjWjkY1a": {}, "XlFcDtgOjchIua5t": {}}, "fileExtension": "WEIC32ogW7olvbTg", "name": "rhRTcPiSuL0Sly6X", "preview": "M4OI18mAQLnzjMf8", "previewMetadata": {"previewContentType": "GZ2WBZqxYG3aREAu", "previewFileExtension": "2D6QVKNCWP75TB0i"}, "shareCode": "7pKxR8dl0zRVW4EZ", "subType": "G9m0XcgGVbMqSszE", "tags": ["8GHavj7AorKsxwko", "sAVerXpc1C8XfwHu", "Keb9l3rGN9A3sNm8"], "type": "4hddSpHt0P7MIIR7"}' 'CkyF6C7duuyZ0GhD' --login_with_auth "Bearer foo"
ugc-single-admin-update-content-s3 '{"contentType": "ogqrhBRd8lDR6qVN", "customAttributes": {"PRZYdFLIAjGGJddV": {}, "Cvu9vx5KQ7KYnIuM": {}, "BvaO35llzQRaT5kP": {}}, "fileExtension": "xUfofvnnSuB0y5WU", "name": "lrMdI4sNveabntBS", "payload": "xTeIv53HGCiljvjK", "preview": "oyD6SCwGrncqmLtj", "previewMetadata": {"previewContentType": "QHAf8TgoNm03VLis", "previewFileExtension": "V6zwPuo3td6TC6I3"}, "shareCode": "lMjGSWN2laRlxfcj", "subType": "HfYakUCTqGkE7wcW", "tags": ["fDslpJSqGAXQ0yYo", "NRKd3IL5TAQ6iiPl", "SC2uE4o5Vwdo3feP"], "type": "qIJA8IHtrkmu0hpD", "updateContentFile": true}' '9HrNQy4uZAAiE0mi' 't9RGCCHYzUOcEdsc' --login_with_auth "Bearer foo"
ugc-admin-search-channel-specific-content 'KHPEqgA8yu7Vk6Jt' --login_with_auth "Bearer foo"
ugc-single-admin-delete-content '4Ymos9Jcdos4fYcT' 'VU6RBt0zYoMcHyCU' --login_with_auth "Bearer foo"
ugc-single-admin-get-content --login_with_auth "Bearer foo"
ugc-admin-get-content-bulk '{"contentIds": ["EXlAvxJMdalwSyli", "WMNW5NyLu0M3VHh2", "EI8JlDbPWbQ6Q9lN"]}' --login_with_auth "Bearer foo"
ugc-admin-search-content --login_with_auth "Bearer foo"
ugc-admin-get-user-content-by-share-code 'mqRBaAkLnvxkT1X6' --login_with_auth "Bearer foo"
ugc-admin-get-specific-content '8cmDc3fxU8MyKrQp' --login_with_auth "Bearer foo"
ugc-admin-download-content-preview 'M4hkkK6KKXNB3Gv0' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots '{"screenshots": [{"description": "IqmF51TkhjYnaq6f", "screenshotId": "oWvXa3bMrXsDr6kI"}, {"description": "LsSSyDdmykmoPYgc", "screenshotId": "2L4jk4Lo0LSP0pf4"}, {"description": "IxjUkl535X3ateEK", "screenshotId": "DpADz1x3poD3Qgb3"}]}' 'boLQQ1MzH7Qm8bwb' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot '{"screenshots": [{"contentType": "mXgdAPh1EThG96gA", "description": "FKK2WDgCcxvONZm3", "fileExtension": "jpg"}, {"contentType": "uwjRHpKKTlmVr9Xu", "description": "oJbRFQSKVPHbn4Xx", "fileExtension": "jpeg"}, {"contentType": "QUhAEtrmjqU6YE3p", "description": "4lSck0ZHn5GI39YB", "fileExtension": "pjp"}]}' '91GXlvPG6bFYReVH' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot 'QipcCx9Zw5D2L7vI' 'YhGGSyEW4ZJJ42d3' --login_with_auth "Bearer foo"
ugc-single-admin-get-all-groups --login_with_auth "Bearer foo"
ugc-admin-create-group '{"contents": ["PBddN8S48l9lyNAp", "flxqMrj3oZk03QXc", "KMDYDDxHSZjtqXyJ"], "name": "58f7Gc26SaiGVkyd"}' --login_with_auth "Bearer foo"
ugc-single-admin-get-group 'wYWQG26yUZNmTBcv' --login_with_auth "Bearer foo"
ugc-single-admin-update-group '{"contents": ["rbYCwZtxFHyPLtI8", "ilbyDPUIj88cekdq", "Ct81P1ktfIovmv9g"], "name": "sR5cJcHm3SZLxoRD"}' 'FuuuySj29a9LJE8H' --login_with_auth "Bearer foo"
ugc-single-admin-delete-group 'oRS1X2PFAAMwzHPx' --login_with_auth "Bearer foo"
ugc-single-admin-get-group-contents 'B1UskYs4Yw20DOqO' --login_with_auth "Bearer foo"
ugc-admin-get-tag --login_with_auth "Bearer foo"
ugc-admin-create-tag '{"tag": "BSC2DKHRuPMMWH8Y"}' --login_with_auth "Bearer foo"
ugc-admin-update-tag '{"tag": "b33T5UBJCjfcnLRf"}' 'xeCSz9WEi8KlloeH' --login_with_auth "Bearer foo"
ugc-admin-delete-tag '0JT1yduat2vQR3bi' --login_with_auth "Bearer foo"
ugc-admin-get-type --login_with_auth "Bearer foo"
ugc-admin-create-type '{"subtype": ["Bfsu4jmsRE2w1yEk", "Lgh3tIYt4SqYUTLD", "x9gIiDandpGT2t24"], "type": "aOMh5eC3IHeHSKLC"}' --login_with_auth "Bearer foo"
ugc-admin-update-type '{"subtype": ["a3xreNDUWehwH3q3", "1A806DJgas4b6z3L", "NUj7fdgLA84Z8YYk"], "type": "6QEgJjBbEDoNf3n0"}' 'hEoRCAcf80zfFyab' --login_with_auth "Bearer foo"
ugc-admin-delete-type 'WAgIUXiI07A68eaq' --login_with_auth "Bearer foo"
ugc-admin-get-channel 'C2J9jyEW6GLbc0Na' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-channels 'KDUL3sa13lk1dQBH' --login_with_auth "Bearer foo"
ugc-admin-update-channel '{"name": "O86IlBhnetU4RwTq"}' 'UXlTDBzOuYsaZA2y' 'yd4mbqoOfADMMAXF' --login_with_auth "Bearer foo"
ugc-admin-delete-channel 'aY9eKa699bRVhyaK' 'wwrAP2aMlu7WtjCt' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "oYetOO847g8OudOf", "customAttributes": {"jnCuHZ3c46IjGa23": {}, "YvYmmDg7VYPXIuvU": {}, "YTZBRujIUE1Tq5jy": {}}, "fileExtension": "AZvkRCMNFIurjh2i", "name": "mdb4rbkXj0ZwsVC0", "payload": "gL97ZVJSPqJiwv1q", "preview": "lYB1RSKs6gQxC3Gb", "previewMetadata": {"previewContentType": "7S0o4zGYY7KQI1Ae", "previewFileExtension": "FgPqaOkvo1aolB4l"}, "shareCode": "kKB4EYOkQ1jMD3cy", "subType": "m8xIfkOVW2grREOL", "tags": ["x0KOww3HICQLfl7M", "UBG7qtPu64yAtURK", "LRkb738HGS6rDgMd"], "type": "IIlhS1fSiM9331m7", "updateContentFile": false}' '4eXbJE5Vs2GcyomQ' 'oIXimBJehyxlNsjU' 'gxBkF6wFPoJeQedi' --login_with_auth "Bearer foo"
ugc-admin-delete-content 'ogEhhM2rIizGdKvO' 'Pdq5xrgxSmy1DN9L' 'FkYW5DQyj4bj5Ro2' --login_with_auth "Bearer foo"
ugc-admin-get-content 'ogaKt2ujQSa3Zdb6' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents '5UXmy0Zp6iIaTIKU' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": false}' 'ck0upMzUYnb76tFk' 'EORV3bu1bNCtX7W4' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups '0V6Do5sYadCCFrHH' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group 'C3DpZxkrQDXuNFvi' --login_with_auth "Bearer foo"
ugc-admin-get-group 'Marv8mnfHK8CCmE2' 'lPnsbD3SGEdlwuUc' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["cE536ugBp3HBvepn", "DCjgyJlXe36mgWjL", "fFmteue9nzJ6fH24"], "name": "T805tVg8JqU0jZpj"}' 'vsugAOS7u8RiWyer' 'CSa8SRgwsAj1ik1j' --login_with_auth "Bearer foo"
ugc-admin-delete-group 'glaDXTvKCWwNTAhd' '2wrS0uPdjhdinpng' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents '5BLy8wbhMssAHjap' 'IkY9Rf4wP57dBZNR' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states '88YbCtmKy8M9zVrj' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content 'fGXZnqAQUoY1GjlI' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["Ik0iKoTTS1j02o7J", "jTXAQN0qdskdQV0T", "qI8EFnmDbxIxi4YK"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-public-download-content-by-share-code 'lONk2Q5Y4Jvaizwi' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'ilatuUjjt9lIMGql' --login_with_auth "Bearer foo"
ugc-add-download-count '5ElEa9EIIlGcHB3C' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": false}' 'RON0bc1eMbEIjowL' --login_with_auth "Bearer foo"
ugc-public-download-content-preview 'qc3ecjXJbZDKKoxL' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator 'E1Y3Dymtj3giPg4x' --login_with_auth "Bearer foo"
ugc-get-channels '4yiPX6ues1Hhhkg1' --login_with_auth "Bearer foo"
ugc-public-create-channel '{"name": "yLVbLFzHEP8cM4NT"}' 'wr0KHaAsmTej52WK' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel 'i6tArAURt9plCSVq' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "8PdH6hJPUAc0RVwX"}' 'gAgntLMCuaXBWQi6' 'BqPg4xr0lCancUZG' --login_with_auth "Bearer foo"
ugc-delete-channel 'CHsZYoLfR1KtOv7Z' 'y0b65uvuKNuy0ytZ' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "Q7M6Nzy1adnSKOLF", "customAttributes": {"Kx1dX4LuWJu3pDMU": {}, "AeeZ97SBROPYuG6X": {}, "qP6oo7G73zdxTgOf": {}}, "fileExtension": "nwIdlNa29fDLh741", "name": "IslKHzGlLKWUtDQs", "preview": "61OQAoxyyQpRWCii", "previewMetadata": {"previewContentType": "PDGQhNPEwiJCf2XJ", "previewFileExtension": "VrlzqQls1ozhLVA3"}, "subType": "kE8jKvgatOEBM70T", "tags": ["dlNBJYOmpu1VCarz", "BsV6xnZ5Jrzzjrca", "ug6CWVG8SWP3glU6"], "type": "muswVJnNnN7kAa7j"}' '0riFc5HTHQIoVsGo' '7dwV9DBqFKHQkETJ' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "yTlUrwDTnoujQD4I", "customAttributes": {"EiH9Z5qXn3aoRtlq": {}, "OECohViHA5CzgFSy": {}, "8X1A3PrIfapq5AAe": {}}, "fileExtension": "Me4L3mDWORBVXTII", "name": "JM9XsYIIZxiXNMR9", "payload": "BgaWcFX3SUBhyoTs", "preview": "MWPAxUMkawaGpAyr", "previewMetadata": {"previewContentType": "IwMif3BOdkocVTd4", "previewFileExtension": "BxqGWV6mTJ0sQs6X"}, "subType": "NbjvqhnUVLWu8olK", "tags": ["dxL6ozRmDD0jJvlf", "V5OemPYdYT7DROCj", "tuzFMbAG9YI89hmg"], "type": "uB8FOTjMLo4b9rIz", "updateContentFile": true}' '4DdrKF7SUQPLG59e' '0k5ZtX6wK7PpUlcI' 'W32iK7MGt1ixY5rA' --login_with_auth "Bearer foo"
ugc-delete-content '1WoVeJIePF8ZrQzP' '4zvtdxdbZUpd6FJt' 'HJ1pyVwyKQLY6FEO' --login_with_auth "Bearer foo"
ugc-public-get-user-content '65Rb3z7CYLM8IlsH' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents 'qffnrfsGlfPaZKBw' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "a3Ddb60ufPpzwj1Q", "screenshotId": "GIFmlVf4jvapseE9"}, {"description": "LN9bvhOrHflIOd6X", "screenshotId": "3viLvtEk4mTIpUA9"}, {"description": "gxo8SV38nEhoXmM2", "screenshotId": "W7l6jHMA2rG3nako"}]}' 'pAywelu01nryEJ0N' 'qoTow0qiOiC4j0ik' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "tm0ZPLkLOsp0LZ5n", "description": "jN86Hl8kUXzt6bSc", "fileExtension": "jfif"}, {"contentType": "bWvgpVyW9dD1kOmv", "description": "rAejcq2LgkQuaS7R", "fileExtension": "jpg"}, {"contentType": "BME74HUtipUWYhWV", "description": "1qx8CzPML52faXUr", "fileExtension": "jfif"}]}' 'Sk4lq2faBcAXXKlh' 'vyH8paOJtxqMPpcV' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot 'fRwNj547fH0XrKED' 'pEY8VnocGAjci0V3' 'tBf2jnHGKXphn50c' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": true}' 'PFMycMSQ4qfAacR0' --login_with_auth "Bearer foo"
ugc-get-public-followers 'LgB5BUXvjcu2s6w3' --login_with_auth "Bearer foo"
ugc-get-public-following 'VifnKqmTSoGH1XEf' --login_with_auth "Bearer foo"
ugc-get-groups 'Y6QAYn6WQ5UBEU1Q' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["AOHfZiGhxOdcuDXS", "xSc3aZPV87pna08g", "xefTYKhuxaEc7M4P"], "name": "7UckSC6ePeN8i4Gr"}' 'FES9z7xueHpATHcc' --login_with_auth "Bearer foo"
ugc-delete-all-user-group 'ee9GXhKcjmSEwdrk' --login_with_auth "Bearer foo"
ugc-get-group 'EnnqKzFsLfYalUlf' 'wEQKjU7eHGebSVu0' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["LQ40kepEaC4dfiOM", "ZfEhHr39pysFO3Zv", "c1BZG99LyvfvHEsJ"], "name": "KQQewVLMUoAnaRcY"}' 'p7FUjfIGaffoflEI' 'ByYqeKN0meGelYF5' --login_with_auth "Bearer foo"
ugc-delete-group 'wWaDhukU4khGG4vZ' 'FTYnPkmSu4PWam1j' --login_with_auth "Bearer foo"
ugc-get-group-content 'xR7SETWjteoc8fgv' 'ZDDhoO05oKqymxLD' --login_with_auth "Bearer foo"
ugc-delete-all-user-states '1Lcvw6T6mZEiwxxE' --login_with_auth "Bearer foo"
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
    '{"id": "lpMYSWIeVzm7z9no", "name": "owmlTIKVowi0RY2V"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "N4ZONJREdUQ3z9F1"}' \
    'BxNNgnke4akncw7w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'u9TmXfJWBPrx9Ns8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "eLzYEvwSWTaLQjct", "customAttributes": {"vrK2jhsYpKPlXn77": {}, "AtYoFzLAATPY8P8P": {}, "3cfoivvQxevecWw7": {}}, "fileExtension": "Rry0KK5rgAGO0dW8", "name": "rX2MVUGKSZ4GcLkt", "preview": "4pK32sJxlZcCTpTd", "previewMetadata": {"previewContentType": "RtCHvuk6B6XTmSLy", "previewFileExtension": "n50sigBVZxiKdV57"}, "shareCode": "GvRyd9UuL02Le8HS", "subType": "CslsDd4M1F5qRIbl", "tags": ["S7Nz81GRazPAANjf", "BoldFOyqA2clJ5gE", "OaCgM6Yn6RugbNEI"], "type": "pGBFUjOn5mM7k8nb"}' \
    'LzvtCIW5ynMKquUi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "cAeIVXtoWAXhMlW4", "customAttributes": {"tLqX7OICf5oD1e6o": {}, "I9FmYel0kOw72o8Z": {}, "kgk0jS6rDWUwfhKv": {}}, "fileExtension": "rf2AaH4yCWrHSppn", "name": "IZkNnTn3rzH5NvAt", "payload": "cvNedgS1fUfKmihD", "preview": "bmu8ePWlQMVDXEHe", "previewMetadata": {"previewContentType": "iGTnwyEw6hIWDZrp", "previewFileExtension": "P7rz3ISW510kHr4i"}, "shareCode": "sTKWjmv67nuHCXWf", "subType": "wnwGioVwVzmmBVVF", "tags": ["fpqx1AeLtzcPJ3jt", "DYBo4FUTH7CGfKSy", "xgRR1DiCqSMzpqIF"], "type": "GLkDs7ACC1RgBfoN", "updateContentFile": true}' \
    '31MfuGaXsAuGsZaS' \
    'HevO0TQNEI3kfabx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'JWWSI1ECUo1NPpeF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    'hUztXDgB7n4C97uA' \
    'PP8PATLpUpxeJlsB' \
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
    '{"contentIds": ["JT6Hh3OMjAjq2mK8", "lbSEEelxnb5QxWG2", "HFnZlA6HKWW4fI1I"]}' \
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
    'QcoBQELcNlZkqTZr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'KgXNwvm4e5GX6H74' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    '2OixhtAoKiVm6URT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "95XhnUcvWB28Mpus", "screenshotId": "uhhDJ5slzgiWZEty"}, {"description": "d56LfxnbY97jjYgX", "screenshotId": "chCbkXX26uEdCfQa"}, {"description": "MAQuTKfC0I2kNjCM", "screenshotId": "DtDMrentgn3Dhqci"}]}' \
    'wIeShF9RKb9vvxuJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "lhXbWhbwPwToC6kn", "description": "jVwVnzaqSfJiQFC2", "fileExtension": "bmp"}, {"contentType": "3QIZsUf8lGFXcmwT", "description": "ERHclOdxIwqejxe1", "fileExtension": "bmp"}, {"contentType": "rNdb8Otq6j1mqUav", "description": "7k05HAQltnSojV4j", "fileExtension": "png"}]}' \
    'UqnLT4AbGptKaWNv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'Pbpg7yrRvXfZ6rvg' \
    'vEY3Hht1SwqTsKKK' \
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
    '{"contents": ["o37NHDOQe91Ps3zt", "UIV0dS6hIH9c4Vfk", "yrwpuXxbaERbfgPm"], "name": "i0eHkt1mr9EOIFg0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'dnWIYN2NVL70Iw15' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["7g00jr9b8MuYmmeK", "TmBNvGYxEQdf3ewo", "GGoY7xmFNAmjDDCv"], "name": "s78mcMdiS76YApGJ"}' \
    '9ufwLYkqIgLuZS6h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'sQryiEtOAbpeUNf2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    '6UqkCfgCUYBn2xaO' \
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
    '{"tag": "BdPF0JmX8qwU1cTu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "HHPB5S3DvPRCzBrV"}' \
    'UxmDOj3cvRFaTC11' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'W0TGTCm4fZWuk6pQ' \
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
    '{"subtype": ["xDQpKqxLGeMvr9Ts", "vcMQ7dBsaIecRxIs", "ZvD6rmzVr5XT1Nxw"], "type": "0v1dMQ9Rrbk6C2cV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["Wf6ttvbU1PO6ApCD", "2VXidT7w0Oc15N8W", "XBPp17PAewqSm5x3"], "type": "B4t7WQnp8jXZedgt"}' \
    '5cyNe27HLtwtVOax' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'gP6Jbct8puMybYGx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'D9IPmmsLmu3kaPj0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    'O4zd8Tb7cUNGPTBx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "iFFCrn7djjs69FTF"}' \
    'VGUVhvKhJCmeisql' \
    '14mUHVbMPimNhcZs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'U3VAdMDcb4qlkiFA' \
    'amqvZI2KwjqPBiWX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "ade41s3rH34mB2yP", "customAttributes": {"lRpWjmHZAAvKTH8M": {}, "uqIg0CzkguwuJCW7": {}, "EEFB67AODbi9Bzup": {}}, "fileExtension": "BsFpYc77GtRUcCFe", "name": "Y5g4XgBsbfzqxBPN", "payload": "e8ae1Il4aAtEbu4I", "preview": "jGdqthRxTjQ7gkZE", "previewMetadata": {"previewContentType": "Y8rG0q0Q2Qd2JzRb", "previewFileExtension": "kF2I03dIjvBbA6bf"}, "shareCode": "bYaJCJjfk2TUvn95", "subType": "FhO7VW3mbDVMDu87", "tags": ["t0ldWf7iSGIiKFtW", "tn4Yr2svKM6pqLGZ", "0TBujELAUK6mQ5iZ"], "type": "gbwwm5iGzXtcknrg", "updateContentFile": false}' \
    'wCkZwqjYLfTiCO1N' \
    'DBvQvRPnAz4VzW0C' \
    'poBCbyJsF5IjF1c0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    'W338HS6CBgVRyihY' \
    'NZ84CVhziXV8HwSm' \
    'vcvcDKF19yVRafCj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'OuSYht83AdvBaagT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'iRJ8daGTVX3Bb7jl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": true}' \
    'm7izxe7NPzjOa8E7' \
    'wY76PxLv9HBEUe89' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'AwEw1HO4FnKtx4XL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'KAmlDr19uJ3nq6Ve' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'rzVCcI8y3Cz0YqCK' \
    'Uh5RD9vNAp4jinFp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["nQ5xF9wwbvMZyeDe", "RnVfPUa6xVVBcq3w", "ZpFIYeAg79HcLJXJ"], "name": "7mpVI6eTYAjdPlCi"}' \
    'QQC35cj4KyOVgvnW' \
    'bfRJtsB7cUQZ2QUA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'xJrINPXppPNO3Afm' \
    'XcgwC3IN6tvKgLB9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'QmJIOq9dP5szG71u' \
    'tjsQ4CrRb9gUCeVz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    '7fWbZIdhevfZvyV7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'AcodcZwKjYDdmJOl' \
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
    '{"contentIds": ["zwm9Su4FnS98Qqft", "Sjq7sn8yreciPLfk", "VyyJsbGpO6JgehDJ"]}' \
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
    'xEN7JlZc8LMq1o2j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'ZWu4yA3r0u4q1bTH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'XIjfJKyFlM0u1uuo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": true}' \
    'dn9yVoSlKNchPHNL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    '4X3LLaGPGdqLE8So' \
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
    'hhhuiTnJarYYkHBD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'dSzBXdxapwhd5IQY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 PublicCreateChannel
$PYTHON -m $MODULE 'ugc-public-create-channel' \
    '{"name": "BQuxLvPuWYvE3fsN"}' \
    'y9Z9OhxXvCp9y7fL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateChannel' test.out

#- 69 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'D2qfCXnlUnqxT1Ws' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "RNMZcA92hzC7MNa8"}' \
    'vVe4MHX6AgMep90A' \
    'yyUJyAK5PRMRMwdv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'l0hv6g62GxBW2tQF' \
    '5tkTjgJaMYvNQOsD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "a4bkcgepqtxjbrzt", "customAttributes": {"ee7QLTGAak7Kaol0": {}, "1DK97D2xnik42mit": {}, "eR5eQAe1rzmmgqBP": {}}, "fileExtension": "Rmd6mO4oI8KDqebm", "name": "83raNBJ5y7axEkvI", "preview": "4oxZEDxGiBnNbn0z", "previewMetadata": {"previewContentType": "af7CaOSlHXrUSA6s", "previewFileExtension": "MJzA5mtqISQ83TTb"}, "subType": "tefXWznDe4LQdXfF", "tags": ["Bii2RAMEX5RMjBFV", "ZGYzQqV8d9mDdUIo", "iIJFNxuNOmUSWw18"], "type": "T1IxVWCxdvPL9e4P"}' \
    '01vxP8xj1LyEirUR' \
    'ERnEMzpImW6sjAHy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "CK5tNanGBrkzUvck", "customAttributes": {"3xTtmOFMebS4AdlN": {}, "zwog2IhErkNhNcEC": {}, "WwchW6zL9SkbLlrN": {}}, "fileExtension": "XnGanMazb8jvRWen", "name": "URH48aJuALEcSqcE", "payload": "15u6D31DjOsrs3CU", "preview": "YATdqnQGbqiqOkNe", "previewMetadata": {"previewContentType": "ATj7eGjodd7CcJUr", "previewFileExtension": "I6MAugK5kypNrp2n"}, "subType": "Fe9FmN86sK5LOq4f", "tags": ["t5jGcMICPUYnfG6j", "l9U4jReteIMgzISo", "mCsodJrhQW41q2Os"], "type": "pCZbt3Uta5I0uGcL", "updateContentFile": true}' \
    'koyHjCH5olYLETRp' \
    'ABAmO2EGvJ4UMS93' \
    'yOxNInDByhnoluO6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'ti0QP2ssiJ66OzOj' \
    '84O6tgohjtC7bzjP' \
    'pucddXJ5zifF8y95' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    '9anrNSleywHbHig6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'IKWVZ77KeRWdECaF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "GzfZ2hxcJ2Fnemn7", "screenshotId": "M23SzUo4hNBDh9ZF"}, {"description": "P1OW0nXOErQPS4Vs", "screenshotId": "RoYIK69yg9ADCGiX"}, {"description": "aLs2xjHkinOD975n", "screenshotId": "ARHCmhNHSXuqIHsx"}]}' \
    'vaUoXDmwWsukxncu' \
    'D3QxCXMd00YBWCaV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "VmM45mfIZsWhkS47", "description": "6dGGJwJ00UH197MJ", "fileExtension": "jpg"}, {"contentType": "rYsWucAkXsVJbXi7", "description": "eRZa7WwIc895ImqK", "fileExtension": "jpg"}, {"contentType": "tVsaUq3stUh5J5Z9", "description": "GiBiSAylX5cS0IeH", "fileExtension": "jfif"}]}' \
    '0QJQeaWytPfds1BY' \
    'x0EaURydf8ZyyZeH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'AWGgJUbUJRMbkcTg' \
    'lbU86FyOjApNHBVf' \
    'NOURcjY3YYT9oTyn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": false}' \
    'Ornyx34luLdvtsTK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'XMjiw6gYPvfn2Qt9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'iyq3Nyk8ncu2Z3eD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'HH9WaVO4iKhDcJ7T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["CcNIsQ3PuppUxDSK", "8aOTGMudcxlCV4cN", "bJGQ57lPdinpjS2D"], "name": "RfGt9GlyZVQ4X67t"}' \
    'PZSTpPq3xjrElvvD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'gw0ag7kSWE0Hiqm5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'IuLryiEXqvUWDjU1' \
    'G0EVjVZw1ToLuPak' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["QN1MpOs1RVFrcg2C", "Xxepx78fvsyhE2BK", "tyTDSIM7mkmvZ7Cm"], "name": "sh4US8o4jfMANPpm"}' \
    'ZDdMiCxmuCCVuFjS' \
    '1GC1d2b92B4vEgj3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'HOmhcWm428XejRF9' \
    '4NIY9nMrBZo0lNUB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'DShHD32vvL28FPwT' \
    'iXfLcxDC9Ynd02mE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'CIQhfIhHtADUQ9zi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
