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
ugc-admin-get-content-bulk-by-share-codes '{"shareCodes": ["mqRBaAkLnvxkT1X6", "8cmDc3fxU8MyKrQp", "M4hkkK6KKXNB3Gv0"]}' --login_with_auth "Bearer foo"
ugc-admin-get-user-content-by-share-code 'IqmF51TkhjYnaq6f' --login_with_auth "Bearer foo"
ugc-admin-get-specific-content 'oWvXa3bMrXsDr6kI' --login_with_auth "Bearer foo"
ugc-admin-download-content-preview 'LsSSyDdmykmoPYgc' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots '{"screenshots": [{"description": "2L4jk4Lo0LSP0pf4", "screenshotId": "IxjUkl535X3ateEK"}, {"description": "DpADz1x3poD3Qgb3", "screenshotId": "boLQQ1MzH7Qm8bwb"}, {"description": "mXgdAPh1EThG96gA", "screenshotId": "FKK2WDgCcxvONZm3"}]}' 'EeERmDnyeFoF7VSZ' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot '{"screenshots": [{"contentType": "6pf3vneSD2Tb3g7m", "description": "SQUhAEtrmjqU6YE3", "fileExtension": "jfif"}, {"contentType": "sYSiZqan0nSBJroa", "description": "v91GXlvPG6bFYReV", "fileExtension": "pjp"}, {"contentType": "c9d9sogWa24CKNS0", "description": "GqVvUfHQvsHXNUNe", "fileExtension": "png"}]}' 'mhgo5QB65lSAiYnN' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot 'jkfZrQvGgbLdLsFz' 'HkBMr1yrOMlNFSrU' --login_with_auth "Bearer foo"
ugc-single-admin-get-all-groups --login_with_auth "Bearer foo"
ugc-admin-create-group '{"contents": ["EirnjX9fDmIbeZxz", "fTcyiuATus9hsfpF", "DcSDG8aMVGLiBNrD"], "name": "jqoxcwgGLXpUL4pp"}' --login_with_auth "Bearer foo"
ugc-single-admin-get-group '2ncYAHdNzDmeIP6r' --login_with_auth "Bearer foo"
ugc-single-admin-update-group '{"contents": ["OvDz9KOsb392k6Ym", "JFfRByjlBiuFM3FI", "oVk8T3GpAnkCmBUq"], "name": "g2SCnqntX9y1aZSW"}' 'MiVi10sG6vxkfUcm' --login_with_auth "Bearer foo"
ugc-single-admin-delete-group 'qRRbceJ5i0EeDxOg' --login_with_auth "Bearer foo"
ugc-single-admin-get-group-contents 'BnhhqElIaDml48wd' --login_with_auth "Bearer foo"
ugc-admin-get-tag --login_with_auth "Bearer foo"
ugc-admin-create-tag '{"tag": "NFLTm5T50x9WT0Gf"}' --login_with_auth "Bearer foo"
ugc-admin-update-tag '{"tag": "H2rtOa4EXsXzOXQA"}' 'k4mqrxzTtuLl4Xlb' --login_with_auth "Bearer foo"
ugc-admin-delete-tag 'GL8QOxtjzm8y2wNh' --login_with_auth "Bearer foo"
ugc-admin-get-type --login_with_auth "Bearer foo"
ugc-admin-create-type '{"subtype": ["mwoYZyI4EFZKBcYr", "CEAE7WIsfmx40NLR", "c6m8heKnWhzfe2Nu"], "type": "beoKFeIaFQCYoDPI"}' --login_with_auth "Bearer foo"
ugc-admin-update-type '{"subtype": ["CpnduEEQlULdJz4m", "nRBkMNxvvKgAT8mJ", "rYq6hRkloqxM3gpw"], "type": "xcfMy9XzjjI5YbsK"}' 'oADkzJEN2VHzih3b' --login_with_auth "Bearer foo"
ugc-admin-delete-type 'it0VWn3CO39PXDNx' --login_with_auth "Bearer foo"
ugc-admin-get-channel 'tXgeO3FgkXhjDzaQ' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-channels 'Y3snn2ZkP7cFdP43' --login_with_auth "Bearer foo"
ugc-admin-update-channel '{"name": "e5dC9XIBudfZgrbH"}' 'DIDm4hMzF4Txoden' 'SrUTvfqU0bfoMm5c' --login_with_auth "Bearer foo"
ugc-admin-delete-channel 'TtFWbotQyXJRcQWs' 'mqPNs92epxk0i8Vx' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "sZNereSvf9699mCE", "customAttributes": {"HThUJkETAsSp7gh4": {}, "TeUTkOkAYfJB8AT9": {}, "t4Tv207Y2QD3oD5f": {}}, "fileExtension": "LCr3OOlXVv8ZGF7u", "name": "YnGzpipNDigNJma1", "payload": "MbqqZtfNWql4nmwA", "preview": "ft4gqkNNlWkD9eOz", "previewMetadata": {"previewContentType": "iYRFOn0jJLHC9Lxh", "previewFileExtension": "vNXTwGBCtohLtl9Z"}, "shareCode": "uhytm5UDrT6QXCs5", "subType": "SPBbRPZTF6oQAXVG", "tags": ["7tnsZg5QgXjvyGJP", "N4eXbJE5Vs2Gcyom", "QoIXimBJehyxlNsj"], "type": "UgxBkF6wFPoJeQed", "updateContentFile": false}' 'ZshZyZl5x4bRXBHU' 'TrDzZSKscfOcYu3d' 'pCROYqUiGKXVFCmp' --login_with_auth "Bearer foo"
ugc-admin-delete-content 'o6sPwVOEDSJsEK5Q' 'pNhlI2iS5EpGhhvX' 'Yck0upMzUYnb76tF' --login_with_auth "Bearer foo"
ugc-admin-get-content 'kEORV3bu1bNCtX7W' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents '40V6Do5sYadCCFrH' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": true}' 'ulIJzPyrVEiOG4Uc' 'qsuGKHhMRWLVd3Dl' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups 'hLuIpomM8sm1MiaI' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group '1mX2tJoARtdbBe7u' --login_with_auth "Bearer foo"
ugc-admin-get-group 'dsMrok0WvGYYnx4V' '709xbnGezKsDwG2o' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["mOR2nvYI9TVqJdvz", "cWbfUpaXp5JMl5LL", "4bTxBmZjdrrIxsB0"], "name": "NRsB1fPqqRRulpqp"}' 'ymDkQhtrHWwRVnwV' 'BOqOHi8pWGd1juYh' --login_with_auth "Bearer foo"
ugc-admin-delete-group 'iqjRJOqB5F93zFQb' 'JndUDpdONneAczbB' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents 'dHb2slt71B1SmZp2' 'JZp50CnPb71ORYcm' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states 'QbTU5JX8ccLjMXJR' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content 'k0eaKQDOJvrTefgl' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["Ss6g4iY9u02aCNYI", "Wekp18lOC3mNqF7B", "l0LcghVHfPEspxwh"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-public-download-content-by-share-code 'RON0bc1eMbEIjowL' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'qc3ecjXJbZDKKoxL' --login_with_auth "Bearer foo"
ugc-add-download-count 'E1Y3Dymtj3giPg4x' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": false}' 'yiPX6ues1Hhhkg1y' --login_with_auth "Bearer foo"
ugc-public-download-content-preview 'LVbLFzHEP8cM4NTw' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator 'r0KHaAsmTej52WKi' --login_with_auth "Bearer foo"
ugc-get-channels '6tArAURt9plCSVq8' --login_with_auth "Bearer foo"
ugc-public-create-channel '{"name": "PdH6hJPUAc0RVwXg"}' 'AgntLMCuaXBWQi6B' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel 'qPg4xr0lCancUZGC' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "HsZYoLfR1KtOv7Zy"}' '0b65uvuKNuy0ytZQ' '7M6Nzy1adnSKOLFK' --login_with_auth "Bearer foo"
ugc-delete-channel 'x1dX4LuWJu3pDMUA' 'eeZ97SBROPYuG6Xq' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "P6oo7G73zdxTgOfn", "customAttributes": {"wIdlNa29fDLh741I": {}, "slKHzGlLKWUtDQs6": {}, "1OQAoxyyQpRWCiiP": {}}, "fileExtension": "DGQhNPEwiJCf2XJV", "name": "rlzqQls1ozhLVA3k", "preview": "E8jKvgatOEBM70Td", "previewMetadata": {"previewContentType": "lNBJYOmpu1VCarzB", "previewFileExtension": "sV6xnZ5Jrzzjrcau"}, "subType": "g6CWVG8SWP3glU6m", "tags": ["uswVJnNnN7kAa7j0", "riFc5HTHQIoVsGo7", "dwV9DBqFKHQkETJy"], "type": "TlUrwDTnoujQD4IE"}' 'iH9Z5qXn3aoRtlqO' 'ECohViHA5CzgFSy8' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "X1A3PrIfapq5AAeM", "customAttributes": {"e4L3mDWORBVXTIIJ": {}, "M9XsYIIZxiXNMR9B": {}, "gaWcFX3SUBhyoTsM": {}}, "fileExtension": "WPAxUMkawaGpAyrI", "name": "wMif3BOdkocVTd4B", "payload": "xqGWV6mTJ0sQs6XN", "preview": "bjvqhnUVLWu8olKd", "previewMetadata": {"previewContentType": "xL6ozRmDD0jJvlfV", "previewFileExtension": "5OemPYdYT7DROCjt"}, "subType": "uzFMbAG9YI89hmgu", "tags": ["B8FOTjMLo4b9rIzq", "YkEpstyVTBcrM8rG", "0rH0zcswwVeMK6Mb"], "type": "GIVIu8vvwLc7KY3u", "updateContentFile": false}' 'oVeJIePF8ZrQzP4z' 'vtdxdbZUpd6FJtHJ' '1pyVwyKQLY6FEO65' --login_with_auth "Bearer foo"
ugc-delete-content 'Rb3z7CYLM8IlsHqf' 'fnrfsGlfPaZKBwa3' 'Ddb60ufPpzwj1QGI' --login_with_auth "Bearer foo"
ugc-public-get-user-content 'FmlVf4jvapseE9LN' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents '9bvhOrHflIOd6X3v' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "iLvtEk4mTIpUA9gx", "screenshotId": "o8SV38nEhoXmM2W7"}, {"description": "l6jHMA2rG3nakopA", "screenshotId": "ywelu01nryEJ0Nqo"}, {"description": "Tow0qiOiC4j0iktm", "screenshotId": "0ZPLkLOsp0LZ5njN"}]}' '86Hl8kUXzt6bSc6b' 'WvgpVyW9dD1kOmvr' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "Aejcq2LgkQuaS7RB", "description": "x3vim02jBOxrZDyv", "fileExtension": "jpeg"}, {"contentType": "qx8CzPML52faXUr9", "description": "Sk4lq2faBcAXXKlh", "fileExtension": "jpeg"}, {"contentType": "OUn18G5MlfDTk8aG", "description": "40NlncceIZSwgAIk", "fileExtension": "bmp"}]}' 'EY8VnocGAjci0V3t' 'Bf2jnHGKXphn50c9' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot 'tNLDljhZ2jxLRX3z' '46OCaGBeMfPlNos4' 'yBRjrERHEonAZR8G' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": false}' 'Y6QAYn6WQ5UBEU1Q' --login_with_auth "Bearer foo"
ugc-get-public-followers 'AOHfZiGhxOdcuDXS' --login_with_auth "Bearer foo"
ugc-get-public-following 'xSc3aZPV87pna08g' --login_with_auth "Bearer foo"
ugc-get-groups 'xefTYKhuxaEc7M4P' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["7UckSC6ePeN8i4Gr", "FES9z7xueHpATHcc", "ee9GXhKcjmSEwdrk"], "name": "EnnqKzFsLfYalUlf"}' 'wEQKjU7eHGebSVu0' --login_with_auth "Bearer foo"
ugc-delete-all-user-group 'LQ40kepEaC4dfiOM' --login_with_auth "Bearer foo"
ugc-get-group 'ZfEhHr39pysFO3Zv' 'c1BZG99LyvfvHEsJ' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["KQQewVLMUoAnaRcY", "p7FUjfIGaffoflEI", "ByYqeKN0meGelYF5"], "name": "wWaDhukU4khGG4vZ"}' 'FTYnPkmSu4PWam1j' 'xR7SETWjteoc8fgv' --login_with_auth "Bearer foo"
ugc-delete-group 'ZDDhoO05oKqymxLD' '1Lcvw6T6mZEiwxxE' --login_with_auth "Bearer foo"
ugc-get-group-content 'lpMYSWIeVzm7z9no' 'owmlTIKVowi0RY2V' --login_with_auth "Bearer foo"
ugc-delete-all-user-states 'N4ZONJREdUQ3z9F1' --login_with_auth "Bearer foo"
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
echo "1..93"

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
    '{"id": "BxNNgnke4akncw7w", "name": "u9TmXfJWBPrx9Ns8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "eLzYEvwSWTaLQjct"}' \
    'vrK2jhsYpKPlXn77' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'AtYoFzLAATPY8P8P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "3cfoivvQxevecWw7", "customAttributes": {"Rry0KK5rgAGO0dW8": {}, "rX2MVUGKSZ4GcLkt": {}, "4pK32sJxlZcCTpTd": {}}, "fileExtension": "RtCHvuk6B6XTmSLy", "name": "n50sigBVZxiKdV57", "preview": "GvRyd9UuL02Le8HS", "previewMetadata": {"previewContentType": "CslsDd4M1F5qRIbl", "previewFileExtension": "S7Nz81GRazPAANjf"}, "shareCode": "BoldFOyqA2clJ5gE", "subType": "OaCgM6Yn6RugbNEI", "tags": ["pGBFUjOn5mM7k8nb", "LzvtCIW5ynMKquUi", "cAeIVXtoWAXhMlW4"], "type": "tLqX7OICf5oD1e6o"}' \
    'I9FmYel0kOw72o8Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "kgk0jS6rDWUwfhKv", "customAttributes": {"rf2AaH4yCWrHSppn": {}, "IZkNnTn3rzH5NvAt": {}, "cvNedgS1fUfKmihD": {}}, "fileExtension": "bmu8ePWlQMVDXEHe", "name": "iGTnwyEw6hIWDZrp", "payload": "P7rz3ISW510kHr4i", "preview": "sTKWjmv67nuHCXWf", "previewMetadata": {"previewContentType": "wnwGioVwVzmmBVVF", "previewFileExtension": "fpqx1AeLtzcPJ3jt"}, "shareCode": "DYBo4FUTH7CGfKSy", "subType": "xgRR1DiCqSMzpqIF", "tags": ["GLkDs7ACC1RgBfoN", "rHlFi2qJLgmBLE35", "YhyiDV90SeI5yppB"], "type": "HoytVznCgNyx9fbT", "updateContentFile": false}' \
    '3ShEh8PbGikLjgjc' \
    'j34uulU6FYBZsWFb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'r3RSP0W9nBhvhf8Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    '0DtJMcYQdN66bswA' \
    'gt65X4N1LQZmB61J' \
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
    '{"contentIds": ["MdtwCVUrYQue84dw", "mbwFEnAZaWsQJtRY", "oagRJK5PX9UcOvhP"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
$PYTHON -m $MODULE 'ugc-admin-search-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
$PYTHON -m $MODULE 'ugc-admin-get-content-bulk-by-share-codes' \
    '{"shareCodes": ["yE11TRT2SKseoe8V", "Lie0LBa36KNzjf00", "5CXNGehQ2aTjTDfK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
$PYTHON -m $MODULE 'ugc-admin-get-user-content-by-share-code' \
    'FDXC7eGL5YhJDWh9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'YWqc0qgV6d9yOfIM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'Lds2DbPcaoMdtRLT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "mSvTkQQgB7exYvmH", "screenshotId": "Mxr5hPCJJztJBg0t"}, {"description": "TJg46IewOXE2AkCh", "screenshotId": "3QIZsUf8lGFXcmwT"}, {"description": "ERHclOdxIwqejxe1", "screenshotId": "8rNdb8Otq6j1mqUa"}]}' \
    'v7k05HAQltnSojV4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateScreenshots' test.out

#- 20 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "jT65yclX2FtAz0vJ", "description": "jFIYWOaNdsimmkW2", "fileExtension": "jfif"}, {"contentType": "gvEY3Hht1SwqTsKK", "description": "Ko37NHDOQe91Ps3z", "fileExtension": "jpeg"}, {"contentType": "haDwNqTbbFMXAMfV", "description": "Xe0GZeMgsRsmH1EQ", "fileExtension": "jpeg"}]}' \
    'i0eHkt1mr9EOIFg0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminUploadContentScreenshot' test.out

#- 21 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'dnWIYN2NVL70Iw15' \
    '7g00jr9b8MuYmmeK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteContentScreenshot' test.out

#- 22 SingleAdminGetAllGroups
$PYTHON -m $MODULE 'ugc-single-admin-get-all-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetAllGroups' test.out

#- 23 AdminCreateGroup
$PYTHON -m $MODULE 'ugc-admin-create-group' \
    '{"contents": ["TmBNvGYxEQdf3ewo", "GGoY7xmFNAmjDDCv", "s78mcMdiS76YApGJ"], "name": "9ufwLYkqIgLuZS6h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateGroup' test.out

#- 24 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'sQryiEtOAbpeUNf2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetGroup' test.out

#- 25 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["6UqkCfgCUYBn2xaO", "BdPF0JmX8qwU1cTu", "HHPB5S3DvPRCzBrV"], "name": "UxmDOj3cvRFaTC11"}' \
    'W0TGTCm4fZWuk6pQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminUpdateGroup' test.out

#- 26 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'xDQpKqxLGeMvr9Ts' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminDeleteGroup' test.out

#- 27 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    'vcMQ7dBsaIecRxIs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminGetGroupContents' test.out

#- 28 AdminGetTag
$PYTHON -m $MODULE 'ugc-admin-get-tag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminGetTag' test.out

#- 29 AdminCreateTag
$PYTHON -m $MODULE 'ugc-admin-create-tag' \
    '{"tag": "ZvD6rmzVr5XT1Nxw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminCreateTag' test.out

#- 30 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "0v1dMQ9Rrbk6C2cV"}' \
    'Wf6ttvbU1PO6ApCD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateTag' test.out

#- 31 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    '2VXidT7w0Oc15N8W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTag' test.out

#- 32 AdminGetType
$PYTHON -m $MODULE 'ugc-admin-get-type' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminGetType' test.out

#- 33 AdminCreateType
$PYTHON -m $MODULE 'ugc-admin-create-type' \
    '{"subtype": ["XBPp17PAewqSm5x3", "B4t7WQnp8jXZedgt", "5cyNe27HLtwtVOax"], "type": "gP6Jbct8puMybYGx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminCreateType' test.out

#- 34 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["D9IPmmsLmu3kaPj0", "O4zd8Tb7cUNGPTBx", "iFFCrn7djjs69FTF"], "type": "VGUVhvKhJCmeisql"}' \
    '14mUHVbMPimNhcZs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminUpdateType' test.out

#- 35 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'U3VAdMDcb4qlkiFA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteType' test.out

#- 36 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'amqvZI2KwjqPBiWX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminGetChannel' test.out

#- 37 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    'ade41s3rH34mB2yP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteAllUserChannels' test.out

#- 38 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "lRpWjmHZAAvKTH8M"}' \
    'uqIg0CzkguwuJCW7' \
    'EEFB67AODbi9Bzup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateChannel' test.out

#- 39 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'BsFpYc77GtRUcCFe' \
    'Y5g4XgBsbfzqxBPN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteChannel' test.out

#- 40 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "e8ae1Il4aAtEbu4I", "customAttributes": {"jGdqthRxTjQ7gkZE": {}, "Y8rG0q0Q2Qd2JzRb": {}, "kF2I03dIjvBbA6bf": {}}, "fileExtension": "bYaJCJjfk2TUvn95", "name": "FhO7VW3mbDVMDu87", "payload": "t0ldWf7iSGIiKFtW", "preview": "tn4Yr2svKM6pqLGZ", "previewMetadata": {"previewContentType": "0TBujELAUK6mQ5iZ", "previewFileExtension": "gbwwm5iGzXtcknrg"}, "shareCode": "idKupvXO6aj4hCmT", "subType": "C34jxW4pIDwdqXpm", "tags": ["Rmut9H9XyWI8bp8f", "QxRuX91uYmtrHJbE", "GTUj7YjERL1rEQG0"], "type": "2zccA8wvLsWUNd6l", "updateContentFile": true}' \
    'vqDejvqklTSvDwuO' \
    'rP9lzpiX0VuFpZum' \
    '7izxe7NPzjOa8E7w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateContentS3' test.out

#- 41 AdminUpdateContentDirect
eval_tap 0 41 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 42 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    'Y76PxLv9HBEUe89A' \
    'wEw1HO4FnKtx4XLK' \
    'AmlDr19uJ3nq6Ver' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteContent' test.out

#- 43 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'zVCcI8y3Cz0YqCKU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminGetContent' test.out

#- 44 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'h5RD9vNAp4jinFpn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteAllUserContents' test.out

#- 45 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": true}' \
    'xF9wwbvMZyeDeRnV' \
    'fPUa6xVVBcq3wZpF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminHideUserContent' test.out

#- 46 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'IYeAg79HcLJXJ7mp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminGetAllGroups' test.out

#- 47 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'VI6eTYAjdPlCiQQC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminDeleteAllUserGroup' test.out

#- 48 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    '35cj4KyOVgvnWbfR' \
    'JtsB7cUQZ2QUAxJr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetGroup' test.out

#- 49 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["INPXppPNO3AfmXcg", "wC3IN6tvKgLB9QmJ", "IOq9dP5szG71utjs"], "name": "Q4CrRb9gUCeVz7fW"}' \
    'bZIdhevfZvyV7Aco' \
    'dcZwKjYDdmJOlzwm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdateGroup' test.out

#- 50 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    '9Su4FnS98QqftSjq' \
    '7sn8yreciPLfkVyy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteGroup' test.out

#- 51 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'JsbGpO6JgehDJxEN' \
    '7JlZc8LMq1o2jZWu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminGetGroupContents' test.out

#- 52 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    '4yA3r0u4q1bTHXIj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminDeleteAllUserStates' test.out

#- 53 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'fJKyFlM0u1uuoVdn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'SearchChannelSpecificContent' test.out

#- 54 PublicSearchContent
$PYTHON -m $MODULE 'ugc-public-search-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicSearchContent' test.out

#- 55 PublicGetContentBulk
$PYTHON -m $MODULE 'ugc-public-get-content-bulk' \
    '{"contentIds": ["9yVoSlKNchPHNL4X", "3LLaGPGdqLE8Sohh", "huiTnJarYYkHBDdS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicGetContentBulk' test.out

#- 56 GetFollowedContent
$PYTHON -m $MODULE 'ugc-get-followed-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetFollowedContent' test.out

#- 57 GetLikedContent
$PYTHON -m $MODULE 'ugc-get-liked-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetLikedContent' test.out

#- 58 PublicDownloadContentByShareCode
$PYTHON -m $MODULE 'ugc-public-download-content-by-share-code' \
    'zBXdxapwhd5IQYBQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByShareCode' test.out

#- 59 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'uxLvPuWYvE3fsNy9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicDownloadContentByContentID' test.out

#- 60 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'Z9OhxXvCp9y7fLD2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AddDownloadCount' test.out

#- 61 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": true}' \
    'PBsmAUrD9L1IiD6M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'UpdateContentLikeStatus' test.out

#- 62 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    'lcEPhMDFzjHZ3sIh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicDownloadContentPreview' test.out

#- 63 GetTag
$PYTHON -m $MODULE 'ugc-get-tag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetTag' test.out

#- 64 GetType
$PYTHON -m $MODULE 'ugc-get-type' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetType' test.out

#- 65 PublicSearchCreator
$PYTHON -m $MODULE 'ugc-public-search-creator' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicSearchCreator' test.out

#- 66 GetFollowedUsers
$PYTHON -m $MODULE 'ugc-get-followed-users' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetFollowedUsers' test.out

#- 67 PublicGetCreator
$PYTHON -m $MODULE 'ugc-public-get-creator' \
    'zOx2CXKlvIomU3pI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicGetCreator' test.out

#- 68 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'xM9n8D2eLMe3lt9q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'GetChannels' test.out

#- 69 PublicCreateChannel
$PYTHON -m $MODULE 'ugc-public-create-channel' \
    '{"name": "fx2UDcgVE7L9FK6e"}' \
    '0MrPc4vtxk9hVKlG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicCreateChannel' test.out

#- 70 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    '56HlzGr7XjdyRJun' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'DeleteAllUserChannel' test.out

#- 71 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "ZPkp6ccIBnWyPw8m"}' \
    'j7gyQ7XdIszGRj46' \
    'COPipH1MWVTHG0qH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'UpdateChannel' test.out

#- 72 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'JCWEfOJpZm9yEYWN' \
    'GMy2pgSGSUOK68eq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'DeleteChannel' test.out

#- 73 CreateContentDirect
eval_tap 0 73 'CreateContentDirect # SKIP deprecated' test.out

#- 74 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "GJtWf1Ybgg8rdwY9", "customAttributes": {"bmrvHmO07KNqX9LM": {}, "2IwEsdOGBXBwnzDX": {}, "8v3xgC1Ge9PdbTTA": {}}, "fileExtension": "J2Gp1r0sVZ6LJAOd", "name": "dIL2l3hPjNDKv2LW", "preview": "fXqjr8fS79En3wYo", "previewMetadata": {"previewContentType": "wBdkaZ3y6i38XQjL", "previewFileExtension": "DRqkpiFK5BtiQ272"}, "subType": "Uo9UBJWodpdwsX1j", "tags": ["orcyR0x3YiHF8ITG", "PRQBCgIs1Q2lzxl0", "yF5m77TTh4gUoj8u"], "type": "2WRcLiEtzVlnkflf"}' \
    'n7pHY48F1dl1q92m' \
    '3iRlfnBAk0CwiAsR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'CreateContentS3' test.out

#- 75 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "65yQ9ssuHdGmxncC", "customAttributes": {"Er0KcgeqzGbruNB7": {}, "2HHMkjzyBB4UFKia": {}, "oV0VOem2yqPsMFxK": {}}, "fileExtension": "ybPkbuS6x9cLJ1AP", "name": "nNlsa2bRBr27fVMW", "payload": "uAfDqLMR919IZPKO", "preview": "KiAVQXXOmqFHLbyX", "previewMetadata": {"previewContentType": "mgCNiXH8uenbC5Cp", "previewFileExtension": "hgMweexsIAP5vHLj"}, "subType": "BJ9iqMcBL4BzhDUj", "tags": ["hKPwbwcvQU5kG8bX", "GFmPAnOkDiJq4xQy", "e7HqnVK3YVeOWs9m"], "type": "fVQh3jLBtn9pxpE7", "updateContentFile": true}' \
    'nrNSleywHbHig6IK' \
    'WVZ77KeRWdECaFGz' \
    'fZ2hxcJ2Fnemn7M2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UpdateContentS3' test.out

#- 76 UpdateContentDirect
eval_tap 0 76 'UpdateContentDirect # SKIP deprecated' test.out

#- 77 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    '3SzUo4hNBDh9ZFP1' \
    'OW0nXOErQPS4VsRo' \
    'YIK69yg9ADCGiXaL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'DeleteContent' test.out

#- 78 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    's2xjHkinOD975nAR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicGetUserContent' test.out

#- 79 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'HCmhNHSXuqIHsxva' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'DeleteAllUserContents' test.out

#- 80 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "UoXDmwWsukxncuD3", "screenshotId": "QxCXMd00YBWCaVVm"}, {"description": "M45mfIZsWhkS476d", "screenshotId": "GGJwJ00UH197MJ6z"}, {"description": "U7JLMQyMWzYQCAaP", "screenshotId": "JgoxGJoJaSzUtY4Z"}]}' \
    'D0Xtb0U4pH16NUsV' \
    'Y21NVIs7NRen2Y3N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UpdateScreenshots' test.out

#- 81 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "s0QJQeaWytPfds1B", "description": "Yx0EaURydf8ZyyZe", "fileExtension": "pjp"}, {"contentType": "DYz9vMUOPG0iHDT8", "description": "QbF7gHPTPQbvLt2N", "fileExtension": "png"}, {"contentType": "NOURcjY3YYT9oTyn", "description": "mfIuBWgJTNFfM8M0", "fileExtension": "pjp"}]}' \
    'XMjiw6gYPvfn2Qt9' \
    'iyq3Nyk8ncu2Z3eD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'UploadContentScreenshot' test.out

#- 82 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'HH9WaVO4iKhDcJ7T' \
    'CcNIsQ3PuppUxDSK' \
    '8aOTGMudcxlCV4cN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'DeleteContentScreenshot' test.out

#- 83 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": false}' \
    '3RRiLilmOGF6dLLI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateUserFollowStatus' test.out

#- 84 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'eIVIjMcdlbdRXTGI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowers' test.out

#- 85 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'rdNL5gJPqTAjgqaT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetPublicFollowing' test.out

#- 86 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'Hf1ANTJ9Yk997XkG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'GetGroups' test.out

#- 87 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["OdC6ItxDT8p4n4XC", "FkD1AJLCwszbZxuH", "SgDOK8bjoF7bL263"], "name": "5KbtZTGJpqgl2IzN"}' \
    'XGTuQPIDpor7t1aJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'CreateGroup' test.out

#- 88 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'LNNz6QIVC9Mfuc8V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'DeleteAllUserGroup' test.out

#- 89 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'OsnmnlVljdWYmELe' \
    '74p38vumnxAnYBTx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'GetGroup' test.out

#- 90 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["aTIz0jcgDI8Pkz96", "vd80msqIm5bufnBq", "rpLeqhwVhjnnjKME"], "name": "mtbiWsAQHbMrKYi0"}' \
    'Zxs5SWCqZXHLLa31' \
    'oQf7BULnZDhutDM6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'UpdateGroup' test.out

#- 91 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'BqguqD5xxGxBWtnT' \
    'KUe2znsqPzPkwCBo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'DeleteGroup' test.out

#- 92 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    '2SwCUsTag4MLAo3m' \
    '61P2xaNfmn8Onb1a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'GetGroupContent' test.out

#- 93 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    '9gMz0F2UBRmMhAbU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'DeleteAllUserStates' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
