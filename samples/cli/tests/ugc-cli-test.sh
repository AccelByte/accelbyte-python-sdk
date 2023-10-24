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
ugc-admin-update-content-s3-by-share-code '{"contentType": "L97ZVJSPqJiwv1ql", "customAttributes": {"YB1RSKs6gQxC3Gb7": {}, "S0o4zGYY7KQI1AeF": {}, "gPqaOkvo1aolB4lk": {}}, "fileExtension": "KB4EYOkQ1jMD3cym", "name": "8xIfkOVW2grREOLx", "payload": "0KOww3HICQLfl7MU", "preview": "BG7qtPu64yAtURKL", "previewMetadata": {"previewContentType": "Rkb738HGS6rDgMdI", "previewFileExtension": "IlhS1fSiM9331m7T"}, "shareCode": "a1PsKc50Kv6ecnEe", "subType": "vcAx2K2zkRenmPZn", "tags": ["GBt4P7WnbdSJtjX7", "ZshZyZl5x4bRXBHU", "TrDzZSKscfOcYu3d"], "type": "pCROYqUiGKXVFCmp", "updateContentFile": false}' 'ogaKt2ujQSa3Zdb6' '5UXmy0Zp6iIaTIKU' 'kmkk9QM0NBMA9ORx' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "pzwLR2AK6eXUGPJs", "customAttributes": {"w1fiP80G9Pclxcft": {}, "2ulIJzPyrVEiOG4U": {}, "cqsuGKHhMRWLVd3D": {}}, "fileExtension": "lhLuIpomM8sm1Mia", "name": "I1mX2tJoARtdbBe7", "payload": "udsMrok0WvGYYnx4", "preview": "V709xbnGezKsDwG2", "previewMetadata": {"previewContentType": "omOR2nvYI9TVqJdv", "previewFileExtension": "zcWbfUpaXp5JMl5L"}, "shareCode": "L4bTxBmZjdrrIxsB", "subType": "0NRsB1fPqqRRulpq", "tags": ["pymDkQhtrHWwRVnw", "VBOqOHi8pWGd1juY", "hiqjRJOqB5F93zFQ"], "type": "bJndUDpdONneAczb", "updateContentFile": true}' 'fGXZnqAQUoY1GjlI' 'Ik0iKoTTS1j02o7J' 'jTXAQN0qdskdQV0T' --login_with_auth "Bearer foo"
ugc-delete-content-by-share-code 'qI8EFnmDbxIxi4YK' 'lONk2Q5Y4Jvaizwi' 'ilatuUjjt9lIMGql' --login_with_auth "Bearer foo"
ugc-admin-delete-content '5ElEa9EIIlGcHB3C' 'fR3ncDlwi3v3MFFJ' '1KesKoELCpobBEG8' --login_with_auth "Bearer foo"
ugc-admin-get-content 'X645xpdXpai0rYaT' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents '5hOPjaf3H0tYighU' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": true}' 'VUfcYHJbBfAKSiPW' '3VgsZXiR1DJ7HVWq' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups 'MkNSawQUWDFJvJBW' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group 'ic7UkBeIXuqDuAXI' --login_with_auth "Bearer foo"
ugc-admin-get-group '66bQ71w0deoV9Lx5' 'RDA1l2XcrciYNEzv' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["SZIPkhSgORcz5S5B", "vmgBLxh4ijFnE3Ta", "m69qSZ7PC6f6QkmZ"], "name": "XElW9YfRSse6AAz3"}' 'S4czz0QKFlAVmVLu' '4AOec0z8eBeeoip6' --login_with_auth "Bearer foo"
ugc-admin-delete-group '8J1nsv4W2OJhtafx' 'MSJlHeb34sZKHcl5' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents 'LLLOexL4fZvWtND2' 'tcBFpX8lNtFEJ7tn' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states 'kY6Mca5afj12K2Iz' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content 'rBvvWm4udE0OXudX' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["gNne8kJATwlc6esU", "p6Sw1I98jeZQ7hfx", "nhLd3Knaknoed9DH"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-public-download-content-by-share-code 'hLOqQGhCUr6iTrjy' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'EgarAdNJOIG36I6t' --login_with_auth "Bearer foo"
ugc-add-download-count 'RbRcrEveMdAdiPKD' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": false}' 'SC00PYeDcagginxn' --login_with_auth "Bearer foo"
ugc-public-download-content-preview 'FIna3yddcbsPheTH' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator '26IUJNvYuGRUvpZa' --login_with_auth "Bearer foo"
ugc-get-channels 'HCuESOiIZsMfB4ZH' --login_with_auth "Bearer foo"
ugc-public-create-channel '{"name": "3mtgWgU4pCAKxeE7"}' '0CaunQNxot371W9G' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel '4AvQkqsGnmyo5JJT' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "UVmb8GEXFTlEMEsF"}' 'zYqwgK1Np5nodqpL' 'm7FhJBNXzAFdO0Kh' --login_with_auth "Bearer foo"
ugc-delete-channel 'qf6kiTdSGv2LFjAK' 'Y7CbgsWqFWZX7kPB' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "om8F9GLLTG8phc3n", "customAttributes": {"4iLoIllKlpO2pqiX": {}, "JF3WGRaoQomSJC4D": {}, "drKF7SUQPLG59e0k": {}}, "fileExtension": "5ZtX6wK7PpUlcIW3", "name": "2iK7MGt1ixY5rA1W", "preview": "oVeJIePF8ZrQzP4z", "previewMetadata": {"previewContentType": "vtdxdbZUpd6FJtHJ", "previewFileExtension": "1pyVwyKQLY6FEO65"}, "subType": "Rb3z7CYLM8IlsHqf", "tags": ["fnrfsGlfPaZKBwa3", "Ddb60ufPpzwj1QGI", "FmlVf4jvapseE9LN"], "type": "9bvhOrHflIOd6X3v"}' 'iLvtEk4mTIpUA9gx' 'o8SV38nEhoXmM2W7' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "l6jHMA2rG3nakopA", "customAttributes": {"ywelu01nryEJ0Nqo": {}, "Tow0qiOiC4j0iktm": {}, "0ZPLkLOsp0LZ5njN": {}}, "fileExtension": "86Hl8kUXzt6bSc6b", "name": "WvgpVyW9dD1kOmvr", "payload": "Aejcq2LgkQuaS7RB", "preview": "x3vim02jBOxrZDyv", "previewMetadata": {"previewContentType": "pcLYOWA8NjxOnaEo", "previewFileExtension": "k4nOOCzfsflhjbng"}, "subType": "JOUn18G5MlfDTk8a", "tags": ["G40NlncceIZSwgAI", "kgzh4pTU0Am4DZhl", "0bQxFJ3sWCqQpQ2F"], "type": "bKPFMycMSQ4qfAac", "updateContentFile": true}' '0LgB5BUXvjcu2s6w' '3VifnKqmTSoGH1XE' 'fY6QAYn6WQ5UBEU1' --login_with_auth "Bearer foo"
ugc-delete-content 'QAOHfZiGhxOdcuDX' 'SxSc3aZPV87pna08' 'gxefTYKhuxaEc7M4' --login_with_auth "Bearer foo"
ugc-public-get-user-content 'P7UckSC6ePeN8i4G' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents 'rFES9z7xueHpATHc' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "cee9GXhKcjmSEwdr", "screenshotId": "kEnnqKzFsLfYalUl"}, {"description": "fwEQKjU7eHGebSVu", "screenshotId": "0LQ40kepEaC4dfiO"}, {"description": "MZfEhHr39pysFO3Z", "screenshotId": "vc1BZG99LyvfvHEs"}]}' 'JKQQewVLMUoAnaRc' 'Yp7FUjfIGaffoflE' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "IByYqeKN0meGelYF", "description": "5wWaDhukU4khGG4v", "fileExtension": "bmp"}, {"contentType": "FTYnPkmSu4PWam1j", "description": "xR7SETWjteoc8fgv", "fileExtension": "jpg"}, {"contentType": "4PbmRDcrg0DjQjBE", "description": "CXvea7H1m2lJFRZ3", "fileExtension": "pjp"}]}' 'prZ60zMjhTHeh94T' 'SenE5hCFkIf5weqZ' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot '18MH57l2Zsrh90ET' 'tYmGukz3MnlrjcHp' '6B8Vj7rXFgDnDkdZ' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": false}' 'EvwSWTaLQjctvrK2' --login_with_auth "Bearer foo"
ugc-get-public-followers 'jhsYpKPlXn77AtYo' --login_with_auth "Bearer foo"
ugc-get-public-following 'FzLAATPY8P8P3cfo' --login_with_auth "Bearer foo"
ugc-get-groups 'ivvQxevecWw7Rry0' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["KK5rgAGO0dW8rX2M", "VUGKSZ4GcLkt4pK3", "2sJxlZcCTpTdRtCH"], "name": "vuk6B6XTmSLyn50s"}' 'igBVZxiKdV57GvRy' --login_with_auth "Bearer foo"
ugc-delete-all-user-group 'd9UuL02Le8HSCsls' --login_with_auth "Bearer foo"
ugc-get-group 'Dd4M1F5qRIblS7Nz' '81GRazPAANjfBold' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["FOyqA2clJ5gEOaCg", "M6Yn6RugbNEIpGBF", "UjOn5mM7k8nbLzvt"], "name": "CIW5ynMKquUicAeI"}' 'VXtoWAXhMlW4tLqX' '7OICf5oD1e6oI9Fm' --login_with_auth "Bearer foo"
ugc-delete-group 'Yel0kOw72o8Zkgk0' 'jS6rDWUwfhKvrf2A' --login_with_auth "Bearer foo"
ugc-get-group-content 'aH4yCWrHSppnIZkN' 'nTn3rzH5NvAtcvNe' --login_with_auth "Bearer foo"
ugc-delete-all-user-states 'dgS1fUfKmihDbmu8' --login_with_auth "Bearer foo"
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
echo "1..97"

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
    '{"id": "ePWlQMVDXEHeiGTn", "name": "wyEw6hIWDZrpP7rz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "3ISW510kHr4isTKW"}' \
    'jmv67nuHCXWfwnwG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'ioVwVzmmBVVFfpqx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "1AeLtzcPJ3jtDYBo", "customAttributes": {"4FUTH7CGfKSyxgRR": {}, "1DiCqSMzpqIFGLkD": {}, "s7ACC1RgBfoNrHlF": {}}, "fileExtension": "i2qJLgmBLE35Yhyi", "name": "DV90SeI5yppBHoyt", "preview": "VznCgNyx9fbT63Sh", "previewMetadata": {"previewContentType": "Eh8PbGikLjgjcj34", "previewFileExtension": "uulU6FYBZsWFbr3R"}, "shareCode": "SP0W9nBhvhf8Q0Dt", "subType": "JMcYQdN66bswAgt6", "tags": ["5X4N1LQZmB61JMdt", "wCVUrYQue84dwmbw", "FEnAZaWsQJtRYoag"], "type": "RJK5PX9UcOvhPyE1"}' \
    '1TRT2SKseoe8VLie' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "0LBa36KNzjf005CX", "customAttributes": {"NGehQ2aTjTDfKFDX": {}, "C7eGL5YhJDWh9YWq": {}, "c0qgV6d9yOfIMLds": {}}, "fileExtension": "2DbPcaoMdtRLTmSv", "name": "TkQQgB7exYvmHMxr", "payload": "5hPCJJztJBg0tTJg", "preview": "46IewOXE2AkCh3QI", "previewMetadata": {"previewContentType": "ZsUf8lGFXcmwTERH", "previewFileExtension": "clOdxIwqejxe18rN"}, "shareCode": "db8Otq6j1mqUav7k", "subType": "05HAQltnSojV4jT6", "tags": ["5yclX2FtAz0vJjFI", "YWOaNdsimmkW2miH", "3xRHAKy4QxZkaXZ7"], "type": "vmiEd0JPxVyQpsha", "updateContentFile": true}' \
    'V0dS6hIH9c4Vfkyr' \
    'wpuXxbaERbfgPmi0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'eHkt1mr9EOIFg0dn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    'WIYN2NVL70Iw157g' \
    '00jr9b8MuYmmeKTm' \
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
    '{"contentIds": ["BNvGYxEQdf3ewoGG", "oY7xmFNAmjDDCvs7", "8mcMdiS76YApGJ9u"]}' \
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
    '{"shareCodes": ["fwLYkqIgLuZS6hsQ", "ryiEtOAbpeUNf26U", "qkCfgCUYBn2xaOBd"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
$PYTHON -m $MODULE 'ugc-admin-get-user-content-by-share-code' \
    'PF0JmX8qwU1cTuHH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'PB5S3DvPRCzBrVUx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'mDOj3cvRFaTC11W0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
$PYTHON -m $MODULE 'ugc-rollback-content-version' \
    'TGTCm4fZWuk6pQxD' \
    'QpKqxLGeMvr9Tsvc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "MQ7dBsaIecRxIsZv", "screenshotId": "D6rmzVr5XT1Nxw0v"}, {"description": "1dMQ9Rrbk6C2cVWf", "screenshotId": "6ttvbU1PO6ApCD2V"}, {"description": "XidT7w0Oc15N8WXB", "screenshotId": "Pp17PAewqSm5x3B4"}]}' \
    't7WQnp8jXZedgt5c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "yNe27HLtwtVOaxgP", "description": "6Jbct8puMybYGxD9", "fileExtension": "pjp"}, {"contentType": "WOozGoDtsUuYo5p8", "description": "ED5QZAufwNa8lzfj", "fileExtension": "jpeg"}, {"contentType": "Crn7djjs69FTFVGU", "description": "VhvKhJCmeisql14m", "fileExtension": "bmp"}]}' \
    'HVbMPimNhcZsU3VA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'dMDcb4qlkiFAamqv' \
    'ZI2KwjqPBiWXade4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
$PYTHON -m $MODULE 'ugc-list-content-versions' \
    '1s3rH34mB2yPlRpW' \
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
    '{"contents": ["jmHZAAvKTH8MuqIg", "0CzkguwuJCW7EEFB", "67AODbi9BzupBsFp"], "name": "Yc77GtRUcCFeY5g4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'XgBsbfzqxBPNe8ae' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["1Il4aAtEbu4IjGdq", "thRxTjQ7gkZEY8rG", "0q0Q2Qd2JzRbkF2I"], "name": "03dIjvBbA6bfbYaJ"}' \
    'CJjfk2TUvn95FhO7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'VW3mbDVMDu87t0ld' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    'Wf7iSGIiKFtWtn4Y' \
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
    '{"tag": "r2svKM6pqLGZ0TBu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "jELAUK6mQ5iZgbww"}' \
    'm5iGzXtcknrgidKu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'pvXO6aj4hCmTC34j' \
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
    '{"subtype": ["xW4pIDwdqXpmRmut", "9H9XyWI8bp8fQxRu", "X91uYmtrHJbEGTUj"], "type": "7YjERL1rEQG02zcc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["A8wvLsWUNd6lPKvq", "DejvqklTSvDwuOrP", "9lzpiX0VuFpZum7i"], "type": "zxe7NPzjOa8E7wY7"}' \
    '6PxLv9HBEUe89AwE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'w1HO4FnKtx4XLKAm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'lDr19uJ3nq6VerzV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    'CcI8y3Cz0YqCKUh5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "RD9vNAp4jinFpnQ5"}' \
    'xF9wwbvMZyeDeRnV' \
    'fPUa6xVVBcq3wZpF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'IYeAg79HcLJXJ7mp' \
    'VI6eTYAjdPlCiQQC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
$PYTHON -m $MODULE 'ugc-admin-update-content-s3-by-share-code' \
    '{"contentType": "35cj4KyOVgvnWbfR", "customAttributes": {"JtsB7cUQZ2QUAxJr": {}, "INPXppPNO3AfmXcg": {}, "wC3IN6tvKgLB9QmJ": {}}, "fileExtension": "IOq9dP5szG71utjs", "name": "Q4CrRb9gUCeVz7fW", "payload": "bZIdhevfZvyV7Aco", "preview": "dcZwKjYDdmJOlzwm", "previewMetadata": {"previewContentType": "9Su4FnS98QqftSjq", "previewFileExtension": "7sn8yreciPLfkVyy"}, "shareCode": "JsbGpO6JgehDJxEN", "subType": "7JlZc8LMq1o2jZWu", "tags": ["4yA3r0u4q1bTHXIj", "fJKyFlM0u1uuoVdn", "9yVoSlKNchPHNL4X"], "type": "3LLaGPGdqLE8Sohh", "updateContentFile": false}' \
    'HFwinkBNi4gvqgl6' \
    'TZ9TGVPmv34h6T7E' \
    'sufmfxKYB4LM6H6Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "XmpZ9X3fUSR1l9xL", "customAttributes": {"PBsmAUrD9L1IiD6M": {}, "lcEPhMDFzjHZ3sIh": {}, "zOx2CXKlvIomU3pI": {}}, "fileExtension": "xM9n8D2eLMe3lt9q", "name": "fx2UDcgVE7L9FK6e", "payload": "0MrPc4vtxk9hVKlG", "preview": "56HlzGr7XjdyRJun", "previewMetadata": {"previewContentType": "ZPkp6ccIBnWyPw8m", "previewFileExtension": "j7gyQ7XdIszGRj46"}, "shareCode": "COPipH1MWVTHG0qH", "subType": "JCWEfOJpZm9yEYWN", "tags": ["GMy2pgSGSUOK68eq", "GJtWf1Ybgg8rdwY9", "bmrvHmO07KNqX9LM"], "type": "2IwEsdOGBXBwnzDX", "updateContentFile": true}' \
    'WznDe4LQdXfFBii2' \
    'RAMEX5RMjBFVZGYz' \
    'QqV8d9mDdUIoiIJF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
$PYTHON -m $MODULE 'ugc-delete-content-by-share-code' \
    'NxuNOmUSWw18T1Ix' \
    'VWCxdvPL9e4P01vx' \
    'P8xj1LyEirURERnE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    'MzpImW6sjAHyCK5t' \
    'NanGBrkzUvck3xTt' \
    'mOFMebS4AdlNzwog' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    '2IhErkNhNcECWwch' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'W6zL9SkbLlrNXnGa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": false}' \
    'pHY48F1dl1q92m3i' \
    'RlfnBAk0CwiAsR65' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'yQ9ssuHdGmxncCEr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    '0KcgeqzGbruNB72H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'HMkjzyBB4UFKiaoV' \
    '0VOem2yqPsMFxKyb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["PkbuS6x9cLJ1APnN", "lsa2bRBr27fVMWuA", "fDqLMR919IZPKOKi"], "name": "AVQXXOmqFHLbyXmg"}' \
    'CNiXH8uenbC5Cphg' \
    'MweexsIAP5vHLjBJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    '9iqMcBL4BzhDUjhK' \
    'PwbwcvQU5kG8bXGF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'mPAnOkDiJq4xQye7' \
    'HqnVK3YVeOWs9mfV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'Qh3jLBtn9pxpE7BY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'tzB0B4CxyQrUpIFv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
$PYTHON -m $MODULE 'ugc-public-search-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
$PYTHON -m $MODULE 'ugc-public-get-content-bulk' \
    '{"contentIds": ["ORxTi79DpSjb39uk", "cR6c2E2r3vk3IfAK", "EbqcNXSGCCvNowNm"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
$PYTHON -m $MODULE 'ugc-get-followed-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
$PYTHON -m $MODULE 'ugc-get-liked-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicDownloadContentByShareCode
$PYTHON -m $MODULE 'ugc-public-download-content-by-share-code' \
    'dpcJgF88ySNq4Mj7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicDownloadContentByShareCode' test.out

#- 63 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'mulP4tQ6R1OqKVOT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByContentID' test.out

#- 64 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'niBgLsNhdgQ0JWZj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'AddDownloadCount' test.out

#- 65 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": false}' \
    'RSzOTqcVNX3ahvxw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'UpdateContentLikeStatus' test.out

#- 66 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    '9gwwhTnjN6wKZGW4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicDownloadContentPreview' test.out

#- 67 GetTag
$PYTHON -m $MODULE 'ugc-get-tag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetTag' test.out

#- 68 GetType
$PYTHON -m $MODULE 'ugc-get-type' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'GetType' test.out

#- 69 PublicSearchCreator
$PYTHON -m $MODULE 'ugc-public-search-creator' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicSearchCreator' test.out

#- 70 GetFollowedUsers
$PYTHON -m $MODULE 'ugc-get-followed-users' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'GetFollowedUsers' test.out

#- 71 PublicGetCreator
$PYTHON -m $MODULE 'ugc-public-get-creator' \
    'y3f0R9s2kndhhZhw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicGetCreator' test.out

#- 72 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'AiLsZs4pmLDIQch4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'GetChannels' test.out

#- 73 PublicCreateChannel
$PYTHON -m $MODULE 'ugc-public-create-channel' \
    '{"name": "IjDq9aT3qZyI0rYs"}' \
    'WucAkXsVJbXi7eRZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicCreateChannel' test.out

#- 74 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'a7WwIc895ImqK6tV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'DeleteAllUserChannel' test.out

#- 75 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "saUq3stUh5J5Z9Gi"}' \
    'BiSAylX5cS0IeHpW' \
    'CugmfOL0QQpxsuD8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UpdateChannel' test.out

#- 76 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'PGqku59eFJrOXyDY' \
    'z9vMUOPG0iHDT8Qb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteChannel' test.out

#- 77 CreateContentDirect
eval_tap 0 77 'CreateContentDirect # SKIP deprecated' test.out

#- 78 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "F7gHPTPQbvLt2NRq", "customAttributes": {"JGIKzLyH1y72L13O": {}, "rnyx34luLdvtsTKX": {}, "Mjiw6gYPvfn2Qt9i": {}}, "fileExtension": "yq3Nyk8ncu2Z3eDH", "name": "H9WaVO4iKhDcJ7TC", "preview": "cNIsQ3PuppUxDSK8", "previewMetadata": {"previewContentType": "aOTGMudcxlCV4cNb", "previewFileExtension": "JGQ57lPdinpjS2DR"}, "subType": "fGt9GlyZVQ4X67tP", "tags": ["ZSTpPq3xjrElvvDg", "w0ag7kSWE0Hiqm5I", "uLryiEXqvUWDjU1G"], "type": "0EVjVZw1ToLuPakQ"}' \
    'N1MpOs1RVFrcg2CX' \
    'xepx78fvsyhE2BKt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'CreateContentS3' test.out

#- 79 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "yTDSIM7mkmvZ7Cms", "customAttributes": {"h4US8o4jfMANPpmZ": {}, "DdMiCxmuCCVuFjS1": {}, "GC1d2b92B4vEgj3H": {}}, "fileExtension": "OmhcWm428XejRF94", "name": "NIY9nMrBZo0lNUBD", "payload": "ShHD32vvL28FPwTi", "preview": "XfLcxDC9Ynd02mEC", "previewMetadata": {"previewContentType": "IQhfIhHtADUQ9zim", "previewFileExtension": "QTQT95pFJUAJsyAf"}, "subType": "eKOufV4f15NohXu6", "tags": ["opxQGRt6PqlkL0di", "RhLC10ih2EQfY3XC", "v4hdOa6FdZhNMd1o"], "type": "nFjGRbxtABPXDmgN", "updateContentFile": true}' \
    'mFhdYLWzMuv3zkUY' \
    '0n0BAZkwbYkBLyO6' \
    'A0FqfhnaB3YxKNdO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UpdateContentS3' test.out

#- 80 UpdateContentDirect
eval_tap 0 80 'UpdateContentDirect # SKIP deprecated' test.out

#- 81 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'TacCcJfIfXshuLUk' \
    '5WdpxjZx5noXPhPU' \
    'TKbonoucNmzwOZOK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteContent' test.out

#- 82 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    '56sDkci5rZ8iMlOu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicGetUserContent' test.out

#- 83 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'ksQJCiRFiZWwJ7Nr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'DeleteAllUserContents' test.out

#- 84 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "Tb1XTB9YQzUJ9XlY", "screenshotId": "J8BzP6EUmUXGM5an"}, {"description": "Iloyj9lhbvuQdW2j", "screenshotId": "wKUckc794ryY91lX"}, {"description": "8DD4MYXlrJ81lHvv", "screenshotId": "9rqvEoM8YmVjAkO3"}]}' \
    'HKsEp6KlqwW4djre' \
    'xcbHdEtoQvpV344R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'UpdateScreenshots' test.out

#- 85 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "ctmTozCi8HeV6jba", "description": "lHmqBBfi7sSF5BoG", "fileExtension": "jfif"}, {"contentType": "5dbguBF6Gsvvdl8j", "description": "Hz9x7XZIjU4IK9lO", "fileExtension": "pjp"}, {"contentType": "hTLEEBGTtZyTjdKN", "description": "KgYazujsmSmylT1Y", "fileExtension": "jpeg"}]}' \
    'JM3WWPvvCiCf33Vi' \
    'EdqQpoGkUWNizk5U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'UploadContentScreenshot' test.out

#- 86 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'cPAGv6c1ESC6hZYT' \
    'YZbzf5aANNNs5kgS' \
    'ZZNUHbIT9szApmWJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'DeleteContentScreenshot' test.out

#- 87 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": true}' \
    'Zn1YXj5zFZeOCOR9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'UpdateUserFollowStatus' test.out

#- 88 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'NvBQZSJPOIKrRBrY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetPublicFollowers' test.out

#- 89 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'Vzi9ui3lvozTt9Ts' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'GetPublicFollowing' test.out

#- 90 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'H7A0TuU2aL4bPkk1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetGroups' test.out

#- 91 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["1sys6GdkDcos5uVJ", "0BJfZ0jvA54CSqZF", "DsO1skRjOU1SMfQV"], "name": "Qa6blj9Rdd85bdYU"}' \
    'umPKVSZCg3XTc9vQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'CreateGroup' test.out

#- 92 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'e0dHJfF6KIuvnRCa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserGroup' test.out

#- 93 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    '9JktyBdxkZKrEWFw' \
    '9GYxjiiOQAD77ci0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetGroup' test.out

#- 94 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["vfWVZoRRMPi57HyK", "Kz5nyI6ulKNKoXa0", "dgx1JgjC56pda3Yh"], "name": "tQxpCYME6x21pdX2"}' \
    'QSPAd9sxoLnWGP1P' \
    'afIjLX8ce0KbNN7Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'UpdateGroup' test.out

#- 95 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'cl2JfmQplvGjVQ4a' \
    'ebjfgGu472oWJlfg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'DeleteGroup' test.out

#- 96 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'lLM4xjfkNL4lU6ja' \
    'GfsD1cfswmeFpvtD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetGroupContent' test.out

#- 97 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'tetoQVFL8LNW11vt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'DeleteAllUserStates' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
