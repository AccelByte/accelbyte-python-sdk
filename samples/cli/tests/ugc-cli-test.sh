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
ugc-rollback-content-version '2L4jk4Lo0LSP0pf4' 'IxjUkl535X3ateEK' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots '{"screenshots": [{"description": "DpADz1x3poD3Qgb3", "screenshotId": "boLQQ1MzH7Qm8bwb"}, {"description": "mXgdAPh1EThG96gA", "screenshotId": "FKK2WDgCcxvONZm3"}, {"description": "EeERmDnyeFoF7VSZ", "screenshotId": "6pf3vneSD2Tb3g7m"}]}' 'SQUhAEtrmjqU6YE3' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot '{"screenshots": [{"contentType": "p4lSck0ZHn5GI39Y", "description": "BHqaTHeKtW18iGeU", "fileExtension": "jfif"}, {"contentType": "HQipcCx9Zw5D2L7v", "description": "IYhGGSyEW4ZJJ42d", "fileExtension": "png"}, {"contentType": "mhgo5QB65lSAiYnN", "description": "jkfZrQvGgbLdLsFz", "fileExtension": "pjp"}]}' 'MDYDDxHSZjtqXyJ5' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot '8f7Gc26SaiGVkydw' 'YWQG26yUZNmTBcvr' --login_with_auth "Bearer foo"
ugc-list-content-versions 'bYCwZtxFHyPLtI8i' --login_with_auth "Bearer foo"
ugc-single-admin-get-all-groups --login_with_auth "Bearer foo"
ugc-admin-create-group '{"contents": ["lbyDPUIj88cekdqC", "t81P1ktfIovmv9gs", "R5cJcHm3SZLxoRDF"], "name": "uuuySj29a9LJE8Ho"}' --login_with_auth "Bearer foo"
ugc-single-admin-get-group 'RS1X2PFAAMwzHPxB' --login_with_auth "Bearer foo"
ugc-single-admin-update-group '{"contents": ["1UskYs4Yw20DOqOB", "SC2DKHRuPMMWH8Yb", "33T5UBJCjfcnLRfx"], "name": "eCSz9WEi8KlloeH0"}' 'JT1yduat2vQR3biB' --login_with_auth "Bearer foo"
ugc-single-admin-delete-group 'fsu4jmsRE2w1yEkL' --login_with_auth "Bearer foo"
ugc-single-admin-get-group-contents 'gh3tIYt4SqYUTLDx' --login_with_auth "Bearer foo"
ugc-admin-get-tag --login_with_auth "Bearer foo"
ugc-admin-create-tag '{"tag": "9gIiDandpGT2t24a"}' --login_with_auth "Bearer foo"
ugc-admin-update-tag '{"tag": "OMh5eC3IHeHSKLCa"}' '3xreNDUWehwH3q31' --login_with_auth "Bearer foo"
ugc-admin-delete-tag 'A806DJgas4b6z3LN' --login_with_auth "Bearer foo"
ugc-admin-get-type --login_with_auth "Bearer foo"
ugc-admin-create-type '{"subtype": ["Uj7fdgLA84Z8YYk6", "QEgJjBbEDoNf3n0h", "EoRCAcf80zfFyabW"], "type": "AgIUXiI07A68eaqC"}' --login_with_auth "Bearer foo"
ugc-admin-update-type '{"subtype": ["2J9jyEW6GLbc0NaK", "DUL3sa13lk1dQBHO", "86IlBhnetU4RwTqU"], "type": "XlTDBzOuYsaZA2yy"}' 'd4mbqoOfADMMAXFa' --login_with_auth "Bearer foo"
ugc-admin-delete-type 'Y9eKa699bRVhyaKw' --login_with_auth "Bearer foo"
ugc-admin-get-channel 'wrAP2aMlu7WtjCto' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-channels 'YetOO847g8OudOfj' --login_with_auth "Bearer foo"
ugc-admin-update-channel '{"name": "nCuHZ3c46IjGa23Y"}' 'vYmmDg7VYPXIuvUY' 'TZBRujIUE1Tq5jyA' --login_with_auth "Bearer foo"
ugc-admin-delete-channel 'ZvkRCMNFIurjh2im' 'db4rbkXj0ZwsVC0g' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "L97ZVJSPqJiwv1ql", "customAttributes": {"YB1RSKs6gQxC3Gb7": {}, "S0o4zGYY7KQI1AeF": {}, "gPqaOkvo1aolB4lk": {}}, "fileExtension": "KB4EYOkQ1jMD3cym", "name": "8xIfkOVW2grREOLx", "payload": "0KOww3HICQLfl7MU", "preview": "BG7qtPu64yAtURKL", "previewMetadata": {"previewContentType": "Rkb738HGS6rDgMdI", "previewFileExtension": "IlhS1fSiM9331m7T"}, "shareCode": "a1PsKc50Kv6ecnEe", "subType": "vcAx2K2zkRenmPZn", "tags": ["GBt4P7WnbdSJtjX7", "ZshZyZl5x4bRXBHU", "TrDzZSKscfOcYu3d"], "type": "pCROYqUiGKXVFCmp", "updateContentFile": false}' 'ogaKt2ujQSa3Zdb6' '5UXmy0Zp6iIaTIKU' 'kmkk9QM0NBMA9ORx' --login_with_auth "Bearer foo"
ugc-admin-delete-content 'pzwLR2AK6eXUGPJs' 'w1fiP80G9Pclxcft' '2ulIJzPyrVEiOG4U' --login_with_auth "Bearer foo"
ugc-admin-get-content 'cqsuGKHhMRWLVd3D' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents 'lhLuIpomM8sm1Mia' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": false}' '1mX2tJoARtdbBe7u' 'dsMrok0WvGYYnx4V' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups '709xbnGezKsDwG2o' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group 'mOR2nvYI9TVqJdvz' --login_with_auth "Bearer foo"
ugc-admin-get-group 'cWbfUpaXp5JMl5LL' '4bTxBmZjdrrIxsB0' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["NRsB1fPqqRRulpqp", "ymDkQhtrHWwRVnwV", "BOqOHi8pWGd1juYh"], "name": "iqjRJOqB5F93zFQb"}' 'JndUDpdONneAczbB' 'dHb2slt71B1SmZp2' --login_with_auth "Bearer foo"
ugc-admin-delete-group 'JZp50CnPb71ORYcm' 'QbTU5JX8ccLjMXJR' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents 'k0eaKQDOJvrTefgl' 'Ss6g4iY9u02aCNYI' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states 'Wekp18lOC3mNqF7B' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content 'l0LcghVHfPEspxwh' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["RON0bc1eMbEIjowL", "qc3ecjXJbZDKKoxL", "E1Y3Dymtj3giPg4x"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-public-download-content-by-share-code '4yiPX6ues1Hhhkg1' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'yLVbLFzHEP8cM4NT' --login_with_auth "Bearer foo"
ugc-add-download-count 'wr0KHaAsmTej52WK' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": false}' 'MkNSawQUWDFJvJBW' --login_with_auth "Bearer foo"
ugc-public-download-content-preview 'ic7UkBeIXuqDuAXI' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator '66bQ71w0deoV9Lx5' --login_with_auth "Bearer foo"
ugc-get-channels 'RDA1l2XcrciYNEzv' --login_with_auth "Bearer foo"
ugc-public-create-channel '{"name": "SZIPkhSgORcz5S5B"}' 'vmgBLxh4ijFnE3Ta' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel 'm69qSZ7PC6f6QkmZ' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "XElW9YfRSse6AAz3"}' 'S4czz0QKFlAVmVLu' '4AOec0z8eBeeoip6' --login_with_auth "Bearer foo"
ugc-delete-channel '8J1nsv4W2OJhtafx' 'MSJlHeb34sZKHcl5' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "LLLOexL4fZvWtND2", "customAttributes": {"tcBFpX8lNtFEJ7tn": {}, "kY6Mca5afj12K2Iz": {}, "rBvvWm4udE0OXudX": {}}, "fileExtension": "gNne8kJATwlc6esU", "name": "p6Sw1I98jeZQ7hfx", "preview": "nhLd3Knaknoed9DH", "previewMetadata": {"previewContentType": "hLOqQGhCUr6iTrjy", "previewFileExtension": "EgarAdNJOIG36I6t"}, "subType": "RbRcrEveMdAdiPKD", "tags": ["UVSC00PYeDcaggin", "xnFIna3yddcbsPhe", "TH26IUJNvYuGRUvp"], "type": "ZaHCuESOiIZsMfB4"}' 'ZH3mtgWgU4pCAKxe' 'E70CaunQNxot371W' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "9G4AvQkqsGnmyo5J", "customAttributes": {"JTUVmb8GEXFTlEME": {}, "sFzYqwgK1Np5nodq": {}, "pLm7FhJBNXzAFdO0": {}}, "fileExtension": "Khqf6kiTdSGv2LFj", "name": "AKY7CbgsWqFWZX7k", "payload": "PBom8F9GLLTG8phc", "preview": "3n4iLoIllKlpO2pq", "previewMetadata": {"previewContentType": "iXJF3WGRaoQomSJC", "previewFileExtension": "4DdrKF7SUQPLG59e"}, "subType": "0k5ZtX6wK7PpUlcI", "tags": ["W32iK7MGt1ixY5rA", "1WoVeJIePF8ZrQzP", "4zvtdxdbZUpd6FJt"], "type": "HJ1pyVwyKQLY6FEO", "updateContentFile": true}' '5Rb3z7CYLM8IlsHq' 'ffnrfsGlfPaZKBwa' '3Ddb60ufPpzwj1QG' --login_with_auth "Bearer foo"
ugc-delete-content 'IFmlVf4jvapseE9L' 'N9bvhOrHflIOd6X3' 'viLvtEk4mTIpUA9g' --login_with_auth "Bearer foo"
ugc-public-get-user-content 'xo8SV38nEhoXmM2W' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents '7l6jHMA2rG3nakop' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "Aywelu01nryEJ0Nq", "screenshotId": "oTow0qiOiC4j0ikt"}, {"description": "m0ZPLkLOsp0LZ5nj", "screenshotId": "N86Hl8kUXzt6bSc6"}, {"description": "bWvgpVyW9dD1kOmv", "screenshotId": "rAejcq2LgkQuaS7R"}]}' 'Bx3vim02jBOxrZDy' 'vpcLYOWA8NjxOnaE' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "ok4nOOCzfsflhjbn", "description": "gJOUn18G5MlfDTk8", "fileExtension": "bmp"}, {"contentType": "VfRwNj547fH0XrKE", "description": "DpEY8VnocGAjci0V", "fileExtension": "jpeg"}, {"contentType": "bQxFJ3sWCqQpQ2Fb", "description": "KPFMycMSQ4qfAacR", "fileExtension": "pjp"}]}' '6OCaGBeMfPlNos4y' 'BRjrERHEonAZR8Gm' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot 'Eu0q1p6QCyY6vSkV' 'FWdsbYuVEGVxYheR' '3j5mNZ6vwv7K8Asv' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": true}' 'efTYKhuxaEc7M4P7' --login_with_auth "Bearer foo"
ugc-get-public-followers 'UckSC6ePeN8i4GrF' --login_with_auth "Bearer foo"
ugc-get-public-following 'ES9z7xueHpATHcce' --login_with_auth "Bearer foo"
ugc-get-groups 'e9GXhKcjmSEwdrkE' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["nnqKzFsLfYalUlfw", "EQKjU7eHGebSVu0L", "Q40kepEaC4dfiOMZ"], "name": "fEhHr39pysFO3Zvc"}' '1BZG99LyvfvHEsJK' --login_with_auth "Bearer foo"
ugc-delete-all-user-group 'QQewVLMUoAnaRcYp' --login_with_auth "Bearer foo"
ugc-get-group '7FUjfIGaffoflEIB' 'yYqeKN0meGelYF5w' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["WaDhukU4khGG4vZF", "TYnPkmSu4PWam1jx", "R7SETWjteoc8fgvZ"], "name": "DDhoO05oKqymxLD1"}' 'Lcvw6T6mZEiwxxEl' 'pMYSWIeVzm7z9noo' --login_with_auth "Bearer foo"
ugc-delete-group 'wmlTIKVowi0RY2VN' '4ZONJREdUQ3z9F1B' --login_with_auth "Bearer foo"
ugc-get-group-content 'xNNgnke4akncw7wu' '9TmXfJWBPrx9Ns8e' --login_with_auth "Bearer foo"
ugc-delete-all-user-states 'LzYEvwSWTaLQjctv' --login_with_auth "Bearer foo"
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
echo "1..95"

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
    '{"id": "rK2jhsYpKPlXn77A", "name": "tYoFzLAATPY8P8P3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "cfoivvQxevecWw7R"}' \
    'ry0KK5rgAGO0dW8r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'X2MVUGKSZ4GcLkt4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "pK32sJxlZcCTpTdR", "customAttributes": {"tCHvuk6B6XTmSLyn": {}, "50sigBVZxiKdV57G": {}, "vRyd9UuL02Le8HSC": {}}, "fileExtension": "slsDd4M1F5qRIblS", "name": "7Nz81GRazPAANjfB", "preview": "oldFOyqA2clJ5gEO", "previewMetadata": {"previewContentType": "aCgM6Yn6RugbNEIp", "previewFileExtension": "GBFUjOn5mM7k8nbL"}, "shareCode": "zvtCIW5ynMKquUic", "subType": "AeIVXtoWAXhMlW4t", "tags": ["LqX7OICf5oD1e6oI", "9FmYel0kOw72o8Zk", "gk0jS6rDWUwfhKvr"], "type": "f2AaH4yCWrHSppnI"}' \
    'ZkNnTn3rzH5NvAtc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "vNedgS1fUfKmihDb", "customAttributes": {"mu8ePWlQMVDXEHei": {}, "GTnwyEw6hIWDZrpP": {}, "7rz3ISW510kHr4is": {}}, "fileExtension": "TKWjmv67nuHCXWfw", "name": "nwGioVwVzmmBVVFf", "payload": "pqx1AeLtzcPJ3jtD", "preview": "YBo4FUTH7CGfKSyx", "previewMetadata": {"previewContentType": "gRR1DiCqSMzpqIFG", "previewFileExtension": "LkDs7ACC1RgBfoNr"}, "shareCode": "HlFi2qJLgmBLE35Y", "subType": "hyiDV90SeI5yppBH", "tags": ["oytVznCgNyx9fbT6", "3ShEh8PbGikLjgjc", "j34uulU6FYBZsWFb"], "type": "r3RSP0W9nBhvhf8Q", "updateContentFile": false}' \
    'DtJMcYQdN66bswAg' \
    't65X4N1LQZmB61JM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'dtwCVUrYQue84dwm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    'bwFEnAZaWsQJtRYo' \
    'agRJK5PX9UcOvhPy' \
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
    '{"contentIds": ["E11TRT2SKseoe8VL", "ie0LBa36KNzjf005", "CXNGehQ2aTjTDfKF"]}' \
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
    '{"shareCodes": ["DXC7eGL5YhJDWh9Y", "Wqc0qgV6d9yOfIML", "ds2DbPcaoMdtRLTm"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
$PYTHON -m $MODULE 'ugc-admin-get-user-content-by-share-code' \
    'SvTkQQgB7exYvmHM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'xr5hPCJJztJBg0tT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'Jg46IewOXE2AkCh3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
$PYTHON -m $MODULE 'ugc-rollback-content-version' \
    'QIZsUf8lGFXcmwTE' \
    'RHclOdxIwqejxe18' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "rNdb8Otq6j1mqUav", "screenshotId": "7k05HAQltnSojV4j"}, {"description": "T65yclX2FtAz0vJj", "screenshotId": "FIYWOaNdsimmkW2m"}, {"description": "iH3xRHAKy4QxZkaX", "screenshotId": "Z7vmiEd0JPxVyQps"}]}' \
    'haDwNqTbbFMXAMfV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "Xe0GZeMgsRsmH1EQ", "description": "rYmkPKTPOlhTtSiZ", "fileExtension": "png"}, {"contentType": "dnWIYN2NVL70Iw15", "description": "7g00jr9b8MuYmmeK", "fileExtension": "png"}, {"contentType": "VTOhvQpfbBke8aEd", "description": "d36xj6wySoltDxsb", "fileExtension": "jpg"}]}' \
    '78mcMdiS76YApGJ9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'ufwLYkqIgLuZS6hs' \
    'QryiEtOAbpeUNf26' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
$PYTHON -m $MODULE 'ugc-list-content-versions' \
    'UqkCfgCUYBn2xaOB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
$PYTHON -m $MODULE 'ugc-single-admin-get-all-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
$PYTHON -m $MODULE 'ugc-admin-create-group' \
    '{"contents": ["dPF0JmX8qwU1cTuH", "HPB5S3DvPRCzBrVU", "xmDOj3cvRFaTC11W"], "name": "0TGTCm4fZWuk6pQx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'DQpKqxLGeMvr9Tsv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["cMQ7dBsaIecRxIsZ", "vD6rmzVr5XT1Nxw0", "v1dMQ9Rrbk6C2cVW"], "name": "f6ttvbU1PO6ApCD2"}' \
    'VXidT7w0Oc15N8WX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'BPp17PAewqSm5x3B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    '4t7WQnp8jXZedgt5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
$PYTHON -m $MODULE 'ugc-admin-get-tag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
$PYTHON -m $MODULE 'ugc-admin-create-tag' \
    '{"tag": "cyNe27HLtwtVOaxg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "P6Jbct8puMybYGxD"}' \
    '9IPmmsLmu3kaPj0O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    '4zd8Tb7cUNGPTBxi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
$PYTHON -m $MODULE 'ugc-admin-get-type' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
$PYTHON -m $MODULE 'ugc-admin-create-type' \
    '{"subtype": ["FFCrn7djjs69FTFV", "GUVhvKhJCmeisql1", "4mUHVbMPimNhcZsU"], "type": "3VAdMDcb4qlkiFAa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["mqvZI2KwjqPBiWXa", "de41s3rH34mB2yPl", "RpWjmHZAAvKTH8Mu"], "type": "qIg0CzkguwuJCW7E"}' \
    'EFB67AODbi9BzupB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'sFpYc77GtRUcCFeY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    '5g4XgBsbfzqxBPNe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    '8ae1Il4aAtEbu4Ij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "GdqthRxTjQ7gkZEY"}' \
    '8rG0q0Q2Qd2JzRbk' \
    'F2I03dIjvBbA6bfb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'YaJCJjfk2TUvn95F' \
    'hO7VW3mbDVMDu87t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "0ldWf7iSGIiKFtWt", "customAttributes": {"n4Yr2svKM6pqLGZ0": {}, "TBujELAUK6mQ5iZg": {}, "bwwm5iGzXtcknrgi": {}}, "fileExtension": "dKupvXO6aj4hCmTC", "name": "34jxW4pIDwdqXpmR", "payload": "mut9H9XyWI8bp8fQ", "preview": "xRuX91uYmtrHJbEG", "previewMetadata": {"previewContentType": "TUj7YjERL1rEQG02", "previewFileExtension": "zccA8wvLsWUNd6lP"}, "shareCode": "KvqDejvqklTSvDwu", "subType": "OrP9lzpiX0VuFpZu", "tags": ["m7izxe7NPzjOa8E7", "wY76PxLv9HBEUe89", "AwEw1HO4FnKtx4XL"], "type": "KAmlDr19uJ3nq6Ve", "updateContentFile": true}' \
    'X2poMfZ1hDHtbh4H' \
    'tMlFgvh2Dp2SoiIP' \
    'p1yvfAHS0VgLu11A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3' test.out

#- 43 AdminUpdateContentDirect
eval_tap 0 43 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 44 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    '3HTovFi4tPAGfley' \
    'CA6jEtcqsnzoVILj' \
    'kwW61duF87aUyrdt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteContent' test.out

#- 45 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    '4XSpWBAetsanzqP8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetContent' test.out

#- 46 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'oxfrtbECD1CYPwai' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserContents' test.out

#- 47 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": true}' \
    'JrINPXppPNO3AfmX' \
    'cgwC3IN6tvKgLB9Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminHideUserContent' test.out

#- 48 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'mJIOq9dP5szG71ut' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetAllGroups' test.out

#- 49 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'jsQ4CrRb9gUCeVz7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteAllUserGroup' test.out

#- 50 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'fWbZIdhevfZvyV7A' \
    'codcZwKjYDdmJOlz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroup' test.out

#- 51 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["wm9Su4FnS98QqftS", "jq7sn8yreciPLfkV", "yyJsbGpO6JgehDJx"], "name": "EN7JlZc8LMq1o2jZ"}' \
    'Wu4yA3r0u4q1bTHX' \
    'IjfJKyFlM0u1uuoV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminUpdateGroup' test.out

#- 52 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'dn9yVoSlKNchPHNL' \
    '4X3LLaGPGdqLE8So' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminDeleteGroup' test.out

#- 53 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'hhhuiTnJarYYkHBD' \
    'dSzBXdxapwhd5IQY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminGetGroupContents' test.out

#- 54 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'BQuxLvPuWYvE3fsN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteAllUserStates' test.out

#- 55 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'y9Z9OhxXvCp9y7fL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'SearchChannelSpecificContent' test.out

#- 56 PublicSearchContent
$PYTHON -m $MODULE 'ugc-public-search-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicSearchContent' test.out

#- 57 PublicGetContentBulk
$PYTHON -m $MODULE 'ugc-public-get-content-bulk' \
    '{"contentIds": ["D2qfCXnlUnqxT1Ws", "RNMZcA92hzC7MNa8", "vVe4MHX6AgMep90A"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicGetContentBulk' test.out

#- 58 GetFollowedContent
$PYTHON -m $MODULE 'ugc-get-followed-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetFollowedContent' test.out

#- 59 GetLikedContent
$PYTHON -m $MODULE 'ugc-get-liked-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GetLikedContent' test.out

#- 60 PublicDownloadContentByShareCode
$PYTHON -m $MODULE 'ugc-public-download-content-by-share-code' \
    'yyUJyAK5PRMRMwdv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentByShareCode' test.out

#- 61 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'l0hv6g62GxBW2tQF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentByContentID' test.out

#- 62 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    '5tkTjgJaMYvNQOsD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AddDownloadCount' test.out

#- 63 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": false}' \
    'lG56HlzGr7XjdyRJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'UpdateContentLikeStatus' test.out

#- 64 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    'unZPkp6ccIBnWyPw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentPreview' test.out

#- 65 GetTag
$PYTHON -m $MODULE 'ugc-get-tag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetTag' test.out

#- 66 GetType
$PYTHON -m $MODULE 'ugc-get-type' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetType' test.out

#- 67 PublicSearchCreator
$PYTHON -m $MODULE 'ugc-public-search-creator' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicSearchCreator' test.out

#- 68 GetFollowedUsers
$PYTHON -m $MODULE 'ugc-get-followed-users' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'GetFollowedUsers' test.out

#- 69 PublicGetCreator
$PYTHON -m $MODULE 'ugc-public-get-creator' \
    '8mj7gyQ7XdIszGRj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicGetCreator' test.out

#- 70 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    '46COPipH1MWVTHG0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'GetChannels' test.out

#- 71 PublicCreateChannel
$PYTHON -m $MODULE 'ugc-public-create-channel' \
    '{"name": "qHJCWEfOJpZm9yEY"}' \
    'WNGMy2pgSGSUOK68' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicCreateChannel' test.out

#- 72 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'eqGJtWf1Ybgg8rdw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'DeleteAllUserChannel' test.out

#- 73 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "Y9bmrvHmO07KNqX9"}' \
    'LM2IwEsdOGBXBwnz' \
    'DX8v3xgC1Ge9PdbT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'UpdateChannel' test.out

#- 74 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'TAJ2Gp1r0sVZ6LJA' \
    'OddIL2l3hPjNDKv2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'DeleteChannel' test.out

#- 75 CreateContentDirect
eval_tap 0 75 'CreateContentDirect # SKIP deprecated' test.out

#- 76 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "LWfXqjr8fS79En3w", "customAttributes": {"YowBdkaZ3y6i38XQ": {}, "jLDRqkpiFK5BtiQ2": {}, "72Uo9UBJWodpdwsX": {}}, "fileExtension": "1jorcyR0x3YiHF8I", "name": "TGPRQBCgIs1Q2lzx", "preview": "l0yF5m77TTh4gUoj", "previewMetadata": {"previewContentType": "8u2WRcLiEtzVlnkf", "previewFileExtension": "lfn7pHY48F1dl1q9"}, "subType": "2m3iRlfnBAk0CwiA", "tags": ["sR65yQ9ssuHdGmxn", "cCEr0KcgeqzGbruN", "B72HHMkjzyBB4UFK"], "type": "iaoV0VOem2yqPsMF"}' \
    'xKybPkbuS6x9cLJ1' \
    'APnNlsa2bRBr27fV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'CreateContentS3' test.out

#- 77 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "MWuAfDqLMR919IZP", "customAttributes": {"KOKiAVQXXOmqFHLb": {}, "yXmgCNiXH8uenbC5": {}, "CphgMweexsIAP5vH": {}}, "fileExtension": "LjBJ9iqMcBL4BzhD", "name": "UjhKPwbwcvQU5kG8", "payload": "bXGFmPAnOkDiJq4x", "preview": "Qye7HqnVK3YVeOWs", "previewMetadata": {"previewContentType": "9mfVQh3jLBtn9pxp", "previewFileExtension": "E7BYtzB0B4CxyQrU"}, "subType": "pIFvORxTi79DpSjb", "tags": ["39ukcR6c2E2r3vk3", "IfAKEbqcNXSGCCvN", "owNmdpcJgF88ySNq"], "type": "4Mj7mulP4tQ6R1Oq", "updateContentFile": false}' \
    'VOTniBgLsNhdgQ0J' \
    'WZjNRSzOTqcVNX3a' \
    'hvxw9gwwhTnjN6wK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UpdateContentS3' test.out

#- 78 UpdateContentDirect
eval_tap 0 78 'UpdateContentDirect # SKIP deprecated' test.out

#- 79 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'ZGW4y3f0R9s2kndh' \
    'hZhwAiLsZs4pmLDI' \
    'Qch4IjDq9aT3qZyI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'DeleteContent' test.out

#- 80 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    '0rYsWucAkXsVJbXi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicGetUserContent' test.out

#- 81 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    '7eRZa7WwIc895Imq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteAllUserContents' test.out

#- 82 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "K6tVsaUq3stUh5J5", "screenshotId": "Z9GiBiSAylX5cS0I"}, {"description": "eHpWCugmfOL0QQpx", "screenshotId": "suD8PGqku59eFJrO"}, {"description": "XyDYz9vMUOPG0iHD", "screenshotId": "T8QbF7gHPTPQbvLt"}]}' \
    '2NRqJGIKzLyH1y72' \
    'L13Ornyx34luLdvt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateScreenshots' test.out

#- 83 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "sTKXMjiw6gYPvfn2", "description": "Qt9iyq3Nyk8ncu2Z", "fileExtension": "pjp"}, {"contentType": "eDHH9WaVO4iKhDcJ", "description": "7TCcNIsQ3PuppUxD", "fileExtension": "png"}, {"contentType": "VV7JS9qjNLwvI8Jd", "description": "iY3RRiLilmOGF6dL", "fileExtension": "pjp"}]}' \
    'DRfGt9GlyZVQ4X67' \
    'tPZSTpPq3xjrElvv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UploadContentScreenshot' test.out

#- 84 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'Dgw0ag7kSWE0Hiqm' \
    '5IuLryiEXqvUWDjU' \
    '1G0EVjVZw1ToLuPa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteContentScreenshot' test.out

#- 85 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": false}' \
    'HSgDOK8bjoF7bL26' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'UpdateUserFollowStatus' test.out

#- 86 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    '35KbtZTGJpqgl2Iz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'GetPublicFollowers' test.out

#- 87 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'NXGTuQPIDpor7t1a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetPublicFollowing' test.out

#- 88 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'JLNNz6QIVC9Mfuc8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetGroups' test.out

#- 89 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["VOsnmnlVljdWYmEL", "e74p38vumnxAnYBT", "xaTIz0jcgDI8Pkz9"], "name": "6vd80msqIm5bufnB"}' \
    'qrpLeqhwVhjnnjKM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'CreateGroup' test.out

#- 90 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'EmtbiWsAQHbMrKYi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteAllUserGroup' test.out

#- 91 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    '0Zxs5SWCqZXHLLa3' \
    '1oQf7BULnZDhutDM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetGroup' test.out

#- 92 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["6BqguqD5xxGxBWtn", "TKUe2znsqPzPkwCB", "o2SwCUsTag4MLAo3"], "name": "m61P2xaNfmn8Onb1"}' \
    'a9gMz0F2UBRmMhAb' \
    'UWmFhdYLWzMuv3zk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'UpdateGroup' test.out

#- 93 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'UY0n0BAZkwbYkBLy' \
    'O6A0FqfhnaB3YxKN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'DeleteGroup' test.out

#- 94 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'dOTacCcJfIfXshuL' \
    'Uk5WdpxjZx5noXPh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'GetGroupContent' test.out

#- 95 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'PUTKbonoucNmzwOZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'DeleteAllUserStates' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
