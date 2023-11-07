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
ugc-admin-get-content-by-channel-idv2 'ePWlQMVDXEHeiGTn' --login_with_auth "Bearer foo"
ugc-admin-create-content-v2 '{"contentType": "wyEw6hIWDZrpP7rz", "customAttributes": {"3ISW510kHr4isTKW": {}, "jmv67nuHCXWfwnwG": {}, "ioVwVzmmBVVFfpqx": {}}, "fileExtension": "1AeLtzcPJ3jtDYBo", "name": "4FUTH7CGfKSyxgRR", "shareCode": "1DiCqSMzpqIFGLkD", "subType": "s7ACC1RgBfoNrHlF", "tags": ["i2qJLgmBLE35Yhyi", "DV90SeI5yppBHoyt", "VznCgNyx9fbT63Sh"], "type": "Eh8PbGikLjgjcj34"}' 'uulU6FYBZsWFbr3R' --login_with_auth "Bearer foo"
ugc-admin-delete-official-content-v2 'SP0W9nBhvhf8Q0Dt' 'JMcYQdN66bswAgt6' --login_with_auth "Bearer foo"
ugc-admin-update-official-content-v2 '{"customAttributes": {"5X4N1LQZmB61JMdt": {}, "wCVUrYQue84dwmbw": {}, "FEnAZaWsQJtRYoag": {}}, "name": "RJK5PX9UcOvhPyE1", "shareCode": "1TRT2SKseoe8VLie", "subType": "0LBa36KNzjf005CX", "tags": ["NGehQ2aTjTDfKFDX", "C7eGL5YhJDWh9YWq", "c0qgV6d9yOfIMLds"], "type": "2DbPcaoMdtRLTmSv"}' 'TkQQgB7exYvmHMxr' '5hPCJJztJBg0tTJg' --login_with_auth "Bearer foo"
ugc-admin-update-official-content-file-location '{"fileExtension": "46IewOXE2AkCh3QI", "fileLocation": "ZsUf8lGFXcmwTERH"}' 'clOdxIwqejxe18rN' 'db8Otq6j1mqUav7k' --login_with_auth "Bearer foo"
ugc-admin-generate-official-content-upload-urlv2 '{"contentType": "05HAQltnSojV4jT6", "fileExtension": "5yclX2FtAz0vJjFI"}' 'YWOaNdsimmkW2miH' '3xRHAKy4QxZkaXZ7' --login_with_auth "Bearer foo"
ugc-admin-list-content-v2 --login_with_auth "Bearer foo"
ugc-admin-bulk-get-content-by-i-ds-v2 '{"contentIds": ["vmiEd0JPxVyQpsha", "DwNqTbbFMXAMfVXe", "0GZeMgsRsmH1EQrY"]}' --login_with_auth "Bearer foo"
ugc-admin-get-content-by-share-code-v2 'mkPKTPOlhTtSiZNC' --login_with_auth "Bearer foo"
ugc-admin-get-content-by-content-idv2 'xuogFteTHJe4BhSS' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots-v2 '{"screenshots": [{"description": "QkQD6WmOt6D7ufFV", "screenshotId": "TOhvQpfbBke8aEdd"}, {"description": "36xj6wySoltDxsbz", "screenshotId": "xrlaKEfkoYjY2o6o"}, {"description": "uRW9UtNquwC3Wgum", "screenshotId": "rIz4NhGztZpr4U4f"}]}' 'wQIiLXgmRasvjO4l' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot-v2 '{"screenshots": [{"contentType": "j8m3XEwP2b4gd3xO", "description": "eii8Jnmssep2xD2N", "fileExtension": "jfif"}, {"contentType": "0kABeGs9yxahld1p", "description": "O0Gyf5PO3COyMvcz", "fileExtension": "bmp"}, {"contentType": "pKqxLGeMvr9TsvcM", "description": "Q7dBsaIecRxIsZvD", "fileExtension": "jfif"}]}' 'rmzVr5XT1Nxw0v1d' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot-v2 'MQ9Rrbk6C2cVWf6t' 'tvbU1PO6ApCD2VXi' --login_with_auth "Bearer foo"
ugc-admin-get-official-group-contents-v2 'dT7w0Oc15N8WXBPp' --login_with_auth "Bearer foo"
ugc-admin-delete-user-content-v2 '17PAewqSm5x3B4t7' 'WQnp8jXZedgt5cyN' 'e27HLtwtVOaxgP6J' --login_with_auth "Bearer foo"
ugc-admin-update-user-content-v2 '{"customAttributes": {"bct8puMybYGxD9IP": {}, "mmsLmu3kaPj0O4zd": {}, "8Tb7cUNGPTBxiFFC": {}}, "name": "rn7djjs69FTFVGUV", "shareCode": "hvKhJCmeisql14mU", "subType": "HVbMPimNhcZsU3VA", "tags": ["dMDcb4qlkiFAamqv", "ZI2KwjqPBiWXade4", "1s3rH34mB2yPlRpW"], "type": "jmHZAAvKTH8MuqIg"}' '0CzkguwuJCW7EEFB' '67AODbi9BzupBsFp' 'Yc77GtRUcCFeY5g4' --login_with_auth "Bearer foo"
ugc-admin-update-user-content-file-location '{"fileExtension": "XgBsbfzqxBPNe8ae", "fileLocation": "1Il4aAtEbu4IjGdq"}' 'thRxTjQ7gkZEY8rG' '0q0Q2Qd2JzRbkF2I' '03dIjvBbA6bfbYaJ' --login_with_auth "Bearer foo"
ugc-admin-generate-user-content-upload-urlv2 '{"contentType": "CJjfk2TUvn95FhO7", "fileExtension": "VW3mbDVMDu87t0ld"}' 'Wf7iSGIiKFtWtn4Y' 'r2svKM6pqLGZ0TBu' 'jELAUK6mQ5iZgbww' --login_with_auth "Bearer foo"
ugc-admin-get-content-by-user-idv2 'm5iGzXtcknrgidKu' --login_with_auth "Bearer foo"
ugc-admin-update-content-hide-status-v2 '{"isHidden": false}' 'wqjYLfTiCO1NDBvQ' 'vRPnAz4VzW0CpoBC' --login_with_auth "Bearer foo"
ugc-admin-get-user-group-contents-v2 'byJsF5IjF1c0W338' 'HS6CBgVRyihYNZ84' --login_with_auth "Bearer foo"
ugc-public-get-content-by-channel-idv2 'CVhziXV8HwSmvcvc' --login_with_auth "Bearer foo"
ugc-public-list-content-v2 --login_with_auth "Bearer foo"
ugc-public-bulk-get-content-by-idv2 '{"contentIds": ["DKF19yVRafCjOuSY", "ht83AdvBaagTiRJ8", "daGTVX3Bb7jlz5If"]}' --login_with_auth "Bearer foo"
ugc-public-get-content-by-share-code-v2 'HgKjI9mwJSrN8jkI' --login_with_auth "Bearer foo"
ugc-public-get-content-by-idv2 'ykR2zbaI6PD7fEsc' --login_with_auth "Bearer foo"
ugc-public-add-download-count-v2 'ShnGUGUtV9GJ279G' --login_with_auth "Bearer foo"
ugc-public-list-content-downloader-v2 'DbLNwjm3FK0nnX2p' --login_with_auth "Bearer foo"
ugc-public-list-content-like-v2 'oMfZ1hDHtbh4HtMl' --login_with_auth "Bearer foo"
ugc-update-content-like-status-v2 '{"likeStatus": true}' 'gvh2Dp2SoiIPp1yv' --login_with_auth "Bearer foo"
ugc-public-create-content-v2 '{"contentType": "fAHS0VgLu11A3HTo", "customAttributes": {"vFi4tPAGfleyCA6j": {}, "EtcqsnzoVILjkwW6": {}, "1duF87aUyrdt4XSp": {}}, "fileExtension": "WBAetsanzqP8oxfr", "name": "tbECD1CYPwaiBAxf", "subType": "YL8Avt70ZUT2fSk3", "tags": ["LL0calqxEewuGS46", "9k2hG0WKt4sUmanY", "xM0UHZVNYzGMNIpW"], "type": "oSLkUrfuf4U3WeYe"}' 'A9t2ENKKWrFtHIi1' 'CMgKAOG5iDcCR5Pb' --login_with_auth "Bearer foo"
ugc-public-delete-content-v2 'CvDLil8wj9cKM3Ar' '6MF35hCER4nGmWGg' 'TJfHlJl4tHGa4XfZ' --login_with_auth "Bearer foo"
ugc-public-update-content-v2 '{"customAttributes": {"cd9CVnGqMX9FieeE": {}, "ssWEUl07bhwntCVq": {}, "iYOJf5KwMZQjzvjS": {}}, "name": "ozv6CTRDl0zp9CzH", "subType": "FwinkBNi4gvqgl6T", "tags": ["Z9TGVPmv34h6T7Es", "ufmfxKYB4LM6H6QX", "mpZ9X3fUSR1l9xLP"], "type": "BsmAUrD9L1IiD6Ml"}' 'cEPhMDFzjHZ3sIhz' 'Ox2CXKlvIomU3pIx' 'M9n8D2eLMe3lt9qf' --login_with_auth "Bearer foo"
ugc-public-update-content-file-location '{"fileExtension": "x2UDcgVE7L9FK6e0", "fileLocation": "MrPc4vtxk9hVKlG5"}' '6HlzGr7XjdyRJunZ' 'Pkp6ccIBnWyPw8mj' '7gyQ7XdIszGRj46C' --login_with_auth "Bearer foo"
ugc-public-generate-content-upload-urlv2 '{"contentType": "OPipH1MWVTHG0qHJ", "fileExtension": "CWEfOJpZm9yEYWNG"}' 'My2pgSGSUOK68eqG' 'JtWf1Ybgg8rdwY9b' 'mrvHmO07KNqX9LM2' --login_with_auth "Bearer foo"
ugc-public-get-content-by-user-idv2 'IwEsdOGBXBwnzDX8' --login_with_auth "Bearer foo"
ugc-update-screenshots-v2 '{"screenshots": [{"description": "v3xgC1Ge9PdbTTAJ", "screenshotId": "2Gp1r0sVZ6LJAOdd"}, {"description": "IL2l3hPjNDKv2LWf", "screenshotId": "Xqjr8fS79En3wYow"}, {"description": "BdkaZ3y6i38XQjLD", "screenshotId": "RqkpiFK5BtiQ272U"}]}' 'o9UBJWodpdwsX1jo' 'rcyR0x3YiHF8ITGP' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot-v2 '{"screenshots": [{"contentType": "RQBCgIs1Q2lzxl0y", "description": "F5m77TTh4gUoj8u2", "fileExtension": "png"}, {"contentType": "6zL9SkbLlrNXnGan", "description": "Mazb8jvRWenURH48", "fileExtension": "bmp"}, {"contentType": "lfnBAk0CwiAsR65y", "description": "Q9ssuHdGmxncCEr0", "fileExtension": "pjp"}]}' 'QGbqiqOkNeATj7eG' 'jodd7CcJUrI6MAug' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot-v2 'K5kypNrp2nFe9FmN' '86sK5LOq4ft5jGcM' 'ICPUYnfG6jl9U4jR' --login_with_auth "Bearer foo"
ugc-public-get-group-contents-v2 'eteIMgzISomCsodJ' 'rhQW41q2OspCZbt3' --login_with_auth "Bearer foo"
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
echo "1..137"

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
    '{"id": "Uta5I0uGcL1koyHj", "name": "CH5olYLETRpABAmO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "2EGvJ4UMS93yOxNI"}' \
    'nDByhnoluO6ti0QP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    '2ssiJ66OzOj84O6t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "gohjtC7bzjPpucdd", "customAttributes": {"XJ5zifF8y959anrN": {}, "SleywHbHig6IKWVZ": {}, "77KeRWdECaFGzfZ2": {}}, "fileExtension": "hxcJ2Fnemn7M23Sz", "name": "Uo4hNBDh9ZFP1OW0", "preview": "nXOErQPS4VsRoYIK", "previewMetadata": {"previewContentType": "69yg9ADCGiXaLs2x", "previewFileExtension": "jHkinOD975nARHCm"}, "shareCode": "hNHSXuqIHsxvaUoX", "subType": "DmwWsukxncuD3QxC", "tags": ["XMd00YBWCaVVmM45", "mfIZsWhkS476dGGJ", "wJ00UH197MJ6zU7J"], "type": "LMQyMWzYQCAaPJgo"}' \
    'xGJoJaSzUtY4ZD0X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "tb0U4pH16NUsVY21", "customAttributes": {"NVIs7NRen2Y3Ns0Q": {}, "JQeaWytPfds1BYx0": {}, "EaURydf8ZyyZeHAW": {}}, "fileExtension": "GgJUbUJRMbkcTglb", "name": "U86FyOjApNHBVfNO", "payload": "URcjY3YYT9oTynmf", "preview": "IuBWgJTNFfM8M0IW", "previewMetadata": {"previewContentType": "4oe8KDgy0xZfAcNg", "previewFileExtension": "14Ws8TIP1LKiFQoL"}, "shareCode": "DvumfqrgSfnx2h61", "subType": "X9dN1MGRXBJ6mVV7", "tags": ["JS9qjNLwvI8JdiY3", "RRiLilmOGF6dLLIe", "IVIjMcdlbdRXTGIr"], "type": "dNL5gJPqTAjgqaTH", "updateContentFile": false}' \
    '0ag7kSWE0Hiqm5Iu' \
    'LryiEXqvUWDjU1G0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'EVjVZw1ToLuPakQN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    '1MpOs1RVFrcg2CXx' \
    'epx78fvsyhE2BKty' \
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
    '{"contentIds": ["TDSIM7mkmvZ7Cmsh", "4US8o4jfMANPpmZD", "dMiCxmuCCVuFjS1G"]}' \
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
    '{"shareCodes": ["C1d2b92B4vEgj3HO", "mhcWm428XejRF94N", "IY9nMrBZo0lNUBDS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
$PYTHON -m $MODULE 'ugc-admin-get-user-content-by-share-code' \
    'hHD32vvL28FPwTiX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'fLcxDC9Ynd02mECI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'QhfIhHtADUQ9zimQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
$PYTHON -m $MODULE 'ugc-rollback-content-version' \
    'TQT95pFJUAJsyAfe' \
    'KOufV4f15NohXu6o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "pxQGRt6PqlkL0diR", "screenshotId": "hLC10ih2EQfY3XCv"}, {"description": "4hdOa6FdZhNMd1on", "screenshotId": "FjGRbxtABPXDmgNE"}, {"description": "JBhgGq5GIDhNC66s", "screenshotId": "zbCCf73IFbRkPSSI"}]}' \
    'Tz4TjCrJHXGXku2Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "VuOzhxHmnrrV9ZGW", "description": "rZ05sxe6A6RpmKDe", "fileExtension": "bmp"}, {"contentType": "KbonoucNmzwOZOK5", "description": "6sDkci5rZ8iMlOuk", "fileExtension": "jpeg"}, {"contentType": "rjF5RaJwvkWVco2L", "description": "To5ijlvDF8qBWCQ9", "fileExtension": "bmp"}]}' \
    'BzP6EUmUXGM5anIl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'oyj9lhbvuQdW2jwK' \
    'Uckc794ryY91lX8D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
$PYTHON -m $MODULE 'ugc-list-content-versions' \
    'D4MYXlrJ81lHvv9r' \
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
    '{"contents": ["qvEoM8YmVjAkO3HK", "sEp6KlqwW4djrexc", "bHdEtoQvpV344Rct"], "name": "mTozCi8HeV6jbalH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'mqBBfi7sSF5BoGiT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["CVsXsygWbjE2opXt", "dsJQeJ1too0qvxph", "TLEEBGTtZyTjdKNK"], "name": "gYazujsmSmylT1Yt"}' \
    'xIq73aMb48jISd97' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'KORRhxSWLWLNfHRD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    '3V15QaGGL46LuxJF' \
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
    '{"tag": "3sbeqWBdQuWfgBAK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "x27MSBqabUXOGkko"}' \
    'MUZn1YXj5zFZeOCO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'R9NvBQZSJPOIKrRB' \
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
    '{"subtype": ["rYVzi9ui3lvozTt9", "TsH7A0TuU2aL4bPk", "k11sys6GdkDcos5u"], "type": "VJ0BJfZ0jvA54CSq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["ZFDsO1skRjOU1SMf", "QVQa6blj9Rdd85bd", "YUumPKVSZCg3XTc9"], "type": "vQe0dHJfF6KIuvnR"}' \
    'Ca9JktyBdxkZKrEW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'Fw9GYxjiiOQAD77c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'i0vfWVZoRRMPi57H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    'yKKz5nyI6ulKNKoX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "a0dgx1JgjC56pda3"}' \
    'YhtQxpCYME6x21pd' \
    'X2QSPAd9sxoLnWGP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    '1PafIjLX8ce0KbNN' \
    '7Ycl2JfmQplvGjVQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
$PYTHON -m $MODULE 'ugc-admin-update-content-s3-by-share-code' \
    '{"contentType": "4aebjfgGu472oWJl", "customAttributes": {"fglLM4xjfkNL4lU6": {}, "jaGfsD1cfswmeFpv": {}, "tDtetoQVFL8LNW11": {}}, "fileExtension": "vtpaTxi7k489jRCn", "name": "48bvkCPfKofwXOIZ", "payload": "ZQAJza84lKKmVOaT", "preview": "S6xBbNrSUAW2ak7I", "previewMetadata": {"previewContentType": "SDrBVg6NuDZvPb1k", "previewFileExtension": "uUfNfUDe4g7q6PHE"}, "shareCode": "aqbzHvDDl1jiLw3X", "subType": "MGBA6JXDpA1tIC45", "tags": ["C0oaGouFu4hXONgU", "wJnUpryDeRcpUvlr", "w2MwC1uuokpaIjL0"], "type": "Vxe5n9Lx3QcFo9gx", "updateContentFile": false}' \
    '4bmm7jPdKLddfdsU' \
    'qjXVzW1QqxnWR5sh' \
    'eLgsAF4ctv5guycG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "iq9j2EyIknfLDpgH", "customAttributes": {"nMOn8nc3gUZ8ZFyy": {}, "Er0KBXuJBqK4QtEy": {}, "dPWLPBYiR3UbJc1Z": {}}, "fileExtension": "Yapx7C477etqgfOJ", "name": "DUT0uKAPrARya2IM", "payload": "lNiXpF4qvsUUpHqi", "preview": "33TcBGkc0HjUcnkp", "previewMetadata": {"previewContentType": "U9oVzl2kBuLFXIeC", "previewFileExtension": "EKZUTz3GvCAZ5j24"}, "shareCode": "acYHbrryHB6GO9zP", "subType": "3FaepA3b3YJ9nJM6", "tags": ["vtT27xv85K5MU2qm", "beqaVemINdClpF7O", "vlBIEgjse5kd6GED"], "type": "o08yq5E5HleLoog4", "updateContentFile": false}' \
    'uL5W4tKt6G3j9LYd' \
    'G7xVPqBqe9RDQMBS' \
    'YAFLqp8PF5hCcouk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
$PYTHON -m $MODULE 'ugc-delete-content-by-share-code' \
    'Wpnbz4ys7j6lxuU3' \
    'u2HEG0qfKegvFTD1' \
    'sPykS8YLmwtYgWGc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    'A0h4G1LZ1HaX5UBM' \
    'bsF44VTsLDRzdq22' \
    'cbnyK3ggFDh2kaZP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    '7pnnVfxPwc259HF9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'ejHaILQruAuYyJLY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": true}' \
    'qMv824ouSgkpK70u' \
    'JmUL0uzElixc023d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'IvDiA0tQWlHwBcTt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'ztx3VAl6tXFbnATC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'zUOIzVcy9k3ie64V' \
    'nwa0ClGQJultJe32' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["AiwKadEoIVmprwPs", "a9YD92CX0rITajpw", "HITGeHTnqRbzBB9Z"], "name": "FgJbQ3Fj1umx4Itz"}' \
    'kMJ7cudf4r916GPr' \
    'hn2etVIQvRkQJAtD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'UH9tx60AehGz1erm' \
    'JYXsYgL7TfyIlAwj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'TZdRZJJzWZwvTX2b' \
    'amSCvX1nwvSWdDwD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    '7WJHzgNZUKsI5y0m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'R3zMyTsftKqnsIJc' \
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
    '{"contentIds": ["tAdxyZVKHA9DkaSO", "Wgtg8yw8lHEbVDwB", "AqanOlscRIWw82k5"]}' \
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
    'K5VTkdubkOFldMCQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicDownloadContentByShareCode' test.out

#- 63 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    '98JH4n0JtgqzZv5k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByContentID' test.out

#- 64 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'Vu4S95mj8YRvae4f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'AddDownloadCount' test.out

#- 65 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": false}' \
    '7WNMYIfcDKbLu8pn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'UpdateContentLikeStatus' test.out

#- 66 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    'K34oA1keYXJvtggD' \
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
    'dXjbdjMBahFZZGMT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicGetCreator' test.out

#- 72 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'cqnWrIprOv0BJ9Sg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'GetChannels' test.out

#- 73 PublicCreateChannel
$PYTHON -m $MODULE 'ugc-public-create-channel' \
    '{"name": "l7H1sdH2RIJz1eI7"}' \
    'Q5pu9PutLf6IrvZo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicCreateChannel' test.out

#- 74 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'BGQbO4S3rURGWUzP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'DeleteAllUserChannel' test.out

#- 75 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "AE6SdV4D5jftRl9r"}' \
    'ZmtQUvro8TWwXWsz' \
    '9TVmdMKEohKzuMYD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UpdateChannel' test.out

#- 76 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'UTLBeCidXjuGgx8n' \
    'cXejmeZtzT0qj0lt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteChannel' test.out

#- 77 CreateContentDirect
eval_tap 0 77 'CreateContentDirect # SKIP deprecated' test.out

#- 78 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "sqfiZrthVvyX0OCK", "customAttributes": {"DJE3RMUddwSSgxCu": {}, "8zru1DhGAYOHR5BW": {}, "a9VzIkaQEl1iUPro": {}}, "fileExtension": "NB6hI6IpGcToWgFv", "name": "dRhG9NwV3zDuqVlV", "preview": "TypcYPK8IxrSZuxW", "previewMetadata": {"previewContentType": "l0Je4fJIyFAm3DQh", "previewFileExtension": "t4JwnPS2urJqerob"}, "subType": "WMZGVL5KLTxahWlS", "tags": ["6XdBaKSLCgOOPXM6", "XTUh2dJ90yqHDNac", "l4F9G6Dl5TFwBY6H"], "type": "KXAblkT8VGgSH8MG"}' \
    'ZGwiVj7eDTaka9AB' \
    'fX1IByPEOuPhGspR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'CreateContentS3' test.out

#- 79 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "i3bhPQvBBJI5Jxyt", "customAttributes": {"pcubN4AUUPFPscZs": {}, "XeJOD4DMtqfIGiGJ": {}, "ovgWSRxZ8N4UQ2fg": {}}, "fileExtension": "3V1o2x0hL5DuBDqM", "name": "yIAzWze94MEdJFAy", "payload": "2JTllJkRGB8jqJEd", "preview": "6eqqsBVyONV0JRto", "previewMetadata": {"previewContentType": "zI0jpliCFQ6WgJpG", "previewFileExtension": "Pigdc5VyC4qvWjVa"}, "subType": "c1cQvSxgTNIUzxDg", "tags": ["BlIbuzm7DzJ20NFR", "JIhFXR2dYprPmbpu", "ptECGd5cdXC2Sesc"], "type": "6y68whNBYl9iCqfW", "updateContentFile": false}' \
    'rqGOQny4ij4ysYPo' \
    'nb59gQffkNOmubxE' \
    'Jr2qEAuJbpZSrcbc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UpdateContentS3' test.out

#- 80 UpdateContentDirect
eval_tap 0 80 'UpdateContentDirect # SKIP deprecated' test.out

#- 81 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    '4LWfKaY5c1tP5TDu' \
    'I5f6m4KC07CnsZe3' \
    '2hqEcB1ExYMBb3ck' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteContent' test.out

#- 82 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    'voaJYdMqGegcg3eR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicGetUserContent' test.out

#- 83 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'vBZXN3cjIXmFWRJn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'DeleteAllUserContents' test.out

#- 84 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "j8xN7HDPTUEDPN1K", "screenshotId": "b4UTPWDXTSb55g8L"}, {"description": "STs7Nf95lGlPrf6o", "screenshotId": "bIdnI6Ag7eUYcYJ4"}, {"description": "QzXCmqr6gmPGaHP5", "screenshotId": "SVPvRLiDi0mNHb6L"}]}' \
    'x8eq8SGNwEQO8dYX' \
    'vBSYvJBwb6CjZUMR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'UpdateScreenshots' test.out

#- 85 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "f2VJetWsokvx3BHu", "description": "TEczr9KjQ3ttz8MT", "fileExtension": "jpg"}, {"contentType": "nmDk29mcjSuz9vbN", "description": "StqPtQmQN6eKAGiZ", "fileExtension": "pjp"}, {"contentType": "osrsVBPZ64j0HUON", "description": "scofwYLQcDvkaEII", "fileExtension": "png"}]}' \
    'B4k3JwkdaxR7GJpY' \
    'muYCPG181q9GA5Dy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'UploadContentScreenshot' test.out

#- 86 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'dC2D8UT6KOc4VPDU' \
    'R9ayazqXRqegIUic' \
    'YXXzxsBFrUs9BYp6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'DeleteContentScreenshot' test.out

#- 87 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": false}' \
    'qrNARATn6KXOutlY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'UpdateUserFollowStatus' test.out

#- 88 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'BbLhL8KXx25FZfQI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetPublicFollowers' test.out

#- 89 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'odVBqQsBpCJBIXLG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'GetPublicFollowing' test.out

#- 90 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'YcwWVRK6UKk5ozrX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetGroups' test.out

#- 91 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["A4HZHNyq9odanhR1", "Zrm3thUvV87yfkyc", "LSVdleSaAylsmLYe"], "name": "2phYOgT5kDTyPl3d"}' \
    'KF7NXEjrJMki8jvc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'CreateGroup' test.out

#- 92 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    '3P8Gwjg3IOH0SDHg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserGroup' test.out

#- 93 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'YKqxJiFJdrmj5vhz' \
    'gsJwex7wq8ZPlXNa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetGroup' test.out

#- 94 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["UNgdY2vfJuje5cPn", "mGjTvYa5Pqx1K7qc", "AoijBPAp6EPb988N"], "name": "zxrDKVpULjjiw3Ne"}' \
    'VG4DJi9DaMrc0WFg' \
    'KjE945x2CPVYYG9W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'UpdateGroup' test.out

#- 95 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'voGmAmvaVV5YfxnU' \
    'Ncwjr7gSGhnfuF4W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'DeleteGroup' test.out

#- 96 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'ZiQVICVpWd3UM08g' \
    'MXhdf3juXW4JprIb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetGroupContent' test.out

#- 97 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    '3CJCAtvSG8Cfa9dz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'DeleteAllUserStates' test.out

#- 98 AdminGetContentByChannelIDV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-channel-idv2' \
    'OJDGCTHIOFjeXbsS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'AdminGetContentByChannelIDV2' test.out

#- 99 AdminCreateContentV2
$PYTHON -m $MODULE 'ugc-admin-create-content-v2' \
    '{"contentType": "gR43kIDzxBwqRJTz", "customAttributes": {"rHNZWUsq5lQo2jy2": {}, "9EJigqYhyVhURx1y": {}, "PeczRpdk0HATGylx": {}}, "fileExtension": "2JG2KNGfhzfCTxxr", "name": "sRRLee3TcJ7DQIi4", "shareCode": "5aCDHN9mVug2zkVf", "subType": "6KgpKOcn3tMD9UT6", "tags": ["7bOwugFDa6wUQveh", "KqwCh86XmRkCEcfH", "DCdl59Wp9A3tXGve"], "type": "6DdK6uvg8f2cIoBy"}' \
    'k9fxtvsgeAxo57nK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'AdminCreateContentV2' test.out

#- 100 AdminDeleteOfficialContentV2
$PYTHON -m $MODULE 'ugc-admin-delete-official-content-v2' \
    'AbZpsbJ4Iu5KJ0yn' \
    'xGBlacDCdFe8ATUq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'AdminDeleteOfficialContentV2' test.out

#- 101 AdminUpdateOfficialContentV2
$PYTHON -m $MODULE 'ugc-admin-update-official-content-v2' \
    '{"customAttributes": {"VxcSthrpnMUBsnUf": {}, "uQIcSbUt5UGkInFG": {}, "puUsdtq4dOwNESzC": {}}, "name": "EW9dUVhZjLftC3sC", "shareCode": "S8CpLCqPD9CeDEdC", "subType": "nnL6Kt1Bjj3b8QM8", "tags": ["Rr45ULqXQgvwD3Ps", "KDJiWxQBwaS7rDBf", "2S54phbdyGDt47f9"], "type": "GWRlE9hqz6rjDNo4"}' \
    'rhjxUdMM83WekqfW' \
    'v04vvn9bk5qr8qs2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'AdminUpdateOfficialContentV2' test.out

#- 102 AdminUpdateOfficialContentFileLocation
$PYTHON -m $MODULE 'ugc-admin-update-official-content-file-location' \
    '{"fileExtension": "mqtnGAqXUjNypF6M", "fileLocation": "MqWpdEJsPoaIbYz8"}' \
    'cK5jlpJdre5ur6yv' \
    'WJDdvM7T7PX2vamI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'AdminUpdateOfficialContentFileLocation' test.out

#- 103 AdminGenerateOfficialContentUploadURLV2
$PYTHON -m $MODULE 'ugc-admin-generate-official-content-upload-urlv2' \
    '{"contentType": "RZHzsIYOCUoiCXNj", "fileExtension": "rdQL2jdx1eIba1sB"}' \
    '0HsJ06DzfbzRYt4O' \
    'VUyumBeIqdQGZC5k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 104 AdminListContentV2
$PYTHON -m $MODULE 'ugc-admin-list-content-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'AdminListContentV2' test.out

#- 105 AdminBulkGetContentByIDsV2
$PYTHON -m $MODULE 'ugc-admin-bulk-get-content-by-i-ds-v2' \
    '{"contentIds": ["M03HHijsQRj7N8IA", "jmsonjj0ZR50BQ1U", "6aFD3O2kXQSc58zg"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'AdminBulkGetContentByIDsV2' test.out

#- 106 AdminGetContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-share-code-v2' \
    'ZVl4gIF7v3qbZu9M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'AdminGetContentByShareCodeV2' test.out

#- 107 AdminGetContentByContentIDV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-content-idv2' \
    '3OxqVAT4H1lRZ9Z1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'AdminGetContentByContentIDV2' test.out

#- 108 AdminUpdateScreenshotsV2
$PYTHON -m $MODULE 'ugc-admin-update-screenshots-v2' \
    '{"screenshots": [{"description": "JBrHRzEOtIxzPqb6", "screenshotId": "n73m0jiaDH86d9rs"}, {"description": "KgzCsMulpB8HZUtV", "screenshotId": "VaJCiLgKOwrSfWhT"}, {"description": "5B4WedopzwSluBtR", "screenshotId": "FPKThyGnbjmPDKFS"}]}' \
    '6u9FHuv1M3qfch4S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'AdminUpdateScreenshotsV2' test.out

#- 109 AdminUploadContentScreenshotV2
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot-v2' \
    '{"screenshots": [{"contentType": "qIV6LQPHlaeYl4cs", "description": "Fq65cU66yJaj4ovo", "fileExtension": "pjp"}, {"contentType": "G40QyXzsOzgck078", "description": "IghoQBp2mWAOYksc", "fileExtension": "jpg"}, {"contentType": "yEvMf9yilUEujk6o", "description": "qYo1HQYTFzwdOMdu", "fileExtension": "jfif"}]}' \
    'iW8dLTCBfGUdVEdv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUploadContentScreenshotV2' test.out

#- 110 AdminDeleteContentScreenshotV2
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot-v2' \
    'dQL7sVwcZ2PofaJo' \
    'SqtrEOqxH46fRTSZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'AdminDeleteContentScreenshotV2' test.out

#- 111 AdminGetOfficialGroupContentsV2
$PYTHON -m $MODULE 'ugc-admin-get-official-group-contents-v2' \
    'oDdT0fefo74eg3Nt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'AdminGetOfficialGroupContentsV2' test.out

#- 112 AdminDeleteUserContentV2
$PYTHON -m $MODULE 'ugc-admin-delete-user-content-v2' \
    '2c0r4GqF0NHglOVu' \
    'NZ9LzNeJnBurh54C' \
    'WbYb0Pebyt8b4DGs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'AdminDeleteUserContentV2' test.out

#- 113 AdminUpdateUserContentV2
$PYTHON -m $MODULE 'ugc-admin-update-user-content-v2' \
    '{"customAttributes": {"cjwrizsFUgYwbaLv": {}, "qvQ2NbmDITuymTBj": {}, "n3d2sFzMS3QaVjZF": {}}, "name": "7Ax6115Kg9U8vrQJ", "shareCode": "XQxoIbVi2CLEk277", "subType": "Ivjj1A647XQ3koaA", "tags": ["fZIim0sFPm1YN27b", "ojDVaZLpx4kEWYkO", "6KrKUMhJrASBh61h"], "type": "mWKSSrF35anDGvur"}' \
    '19V18oIrUKXttgAI' \
    '2QdWJFLmoPEgd8EM' \
    'spOs8nkic9gj5vyU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateUserContentV2' test.out

#- 114 AdminUpdateUserContentFileLocation
$PYTHON -m $MODULE 'ugc-admin-update-user-content-file-location' \
    '{"fileExtension": "MAAmIHYbsxG5N066", "fileLocation": "FXb88SbLOa21DiSF"}' \
    'sm0XXQJWszvTQEuA' \
    'LzDNp1SZ58aDllwz' \
    'TRHak1MXxj7Esrg7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'AdminUpdateUserContentFileLocation' test.out

#- 115 AdminGenerateUserContentUploadURLV2
$PYTHON -m $MODULE 'ugc-admin-generate-user-content-upload-urlv2' \
    '{"contentType": "900nml5BidsK9dCE", "fileExtension": "zhVnOv0PQbVIaKiH"}' \
    'foeorY7A1otGFyv2' \
    'SMjbEr50qGdCZIc6' \
    'EFqBKxbS7Q2OgRuc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'AdminGenerateUserContentUploadURLV2' test.out

#- 116 AdminGetContentByUserIDV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-user-idv2' \
    'L1jwRXzfjDZZBmOa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'AdminGetContentByUserIDV2' test.out

#- 117 AdminUpdateContentHideStatusV2
$PYTHON -m $MODULE 'ugc-admin-update-content-hide-status-v2' \
    '{"isHidden": true}' \
    'jci1Ctccv9Gv4tOc' \
    'bnuCqf0lm6WBkIzj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateContentHideStatusV2' test.out

#- 118 AdminGetUserGroupContentsV2
$PYTHON -m $MODULE 'ugc-admin-get-user-group-contents-v2' \
    'oSV31tvmMB6jzrpR' \
    'GESmooHiCV4GUOnX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'AdminGetUserGroupContentsV2' test.out

#- 119 PublicGetContentByChannelIDV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-channel-idv2' \
    'papXQGRakUbcG7Pc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'PublicGetContentByChannelIDV2' test.out

#- 120 PublicListContentV2
$PYTHON -m $MODULE 'ugc-public-list-content-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'PublicListContentV2' test.out

#- 121 PublicBulkGetContentByIDV2
$PYTHON -m $MODULE 'ugc-public-bulk-get-content-by-idv2' \
    '{"contentIds": ["R4eiU3Idi55jNrGN", "T2VHTKuIT5FwwHj0", "Ur5F2PWGTTD81xhN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'PublicBulkGetContentByIDV2' test.out

#- 122 PublicGetContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-share-code-v2' \
    'P4t6kYBUjyXAn3bW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'PublicGetContentByShareCodeV2' test.out

#- 123 PublicGetContentByIDV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-idv2' \
    'QF6QcAiJpXIrgroi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'PublicGetContentByIDV2' test.out

#- 124 PublicAddDownloadCountV2
$PYTHON -m $MODULE 'ugc-public-add-download-count-v2' \
    'xptZhckUTGkcBOE4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'PublicAddDownloadCountV2' test.out

#- 125 PublicListContentDownloaderV2
$PYTHON -m $MODULE 'ugc-public-list-content-downloader-v2' \
    'qMcH1Kyi8ZFvGcV8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'PublicListContentDownloaderV2' test.out

#- 126 PublicListContentLikeV2
$PYTHON -m $MODULE 'ugc-public-list-content-like-v2' \
    'DY0XOkDstxZcY1Hg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'PublicListContentLikeV2' test.out

#- 127 UpdateContentLikeStatusV2
$PYTHON -m $MODULE 'ugc-update-content-like-status-v2' \
    '{"likeStatus": true}' \
    '7Yi2VvoQNW8Yc481' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'UpdateContentLikeStatusV2' test.out

#- 128 PublicCreateContentV2
$PYTHON -m $MODULE 'ugc-public-create-content-v2' \
    '{"contentType": "dYdvGxJAMDRA1LF7", "customAttributes": {"jdWlekFwO94VBCV9": {}, "qJhWva2FPBujX0ge": {}, "YCpGJM4sqsPNJMiZ": {}}, "fileExtension": "XXOFwmGWAvNF0Z0G", "name": "kwxUNYyNwGiKrknH", "subType": "0Y5mrQgLC6D2qsFi", "tags": ["QHglUQMZi5WjMZfO", "adpgegCUjTdi1Ehr", "8OtqpNJ9R8TuNy4e"], "type": "jmVA3vMCsGyPd12B"}' \
    '8QNUz0hFFNbH6j2W' \
    '4roZM2UKAXEEsL5D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'PublicCreateContentV2' test.out

#- 129 PublicDeleteContentV2
$PYTHON -m $MODULE 'ugc-public-delete-content-v2' \
    '0oiFchQnVeq3g2AB' \
    '2WIRUQmauIY5HXCZ' \
    '0W4XmWP0HzSdiylL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'PublicDeleteContentV2' test.out

#- 130 PublicUpdateContentV2
$PYTHON -m $MODULE 'ugc-public-update-content-v2' \
    '{"customAttributes": {"hVYszm8xY33OQbum": {}, "u2QHLyZNuysyM4Of": {}, "CzdQCXMAWnf87YPN": {}}, "name": "Oe9Eevf1fhMg1E2k", "subType": "7QLFrVgtX7y0fPOi", "tags": ["eDCow2zXyFFVpM87", "yqEwEacQMTlqN4LK", "kxJ5v3SBafnKNiMP"], "type": "bFkFGA85W3HJkqgS"}' \
    '2B37wwoPYOHiIsxm' \
    'sLBPBJuNLnWRrtW8' \
    '70qD88ZcduZSe7W2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'PublicUpdateContentV2' test.out

#- 131 PublicUpdateContentFileLocation
$PYTHON -m $MODULE 'ugc-public-update-content-file-location' \
    '{"fileExtension": "0UZcDaiq0nEZ7Pyh", "fileLocation": "qFJkDClOsKmfsgJd"}' \
    'mzsDPsWh1k0cQ08N' \
    'G6dX2TZkil67kRng' \
    'oUa83ECh1gqPeS19' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'PublicUpdateContentFileLocation' test.out

#- 132 PublicGenerateContentUploadURLV2
$PYTHON -m $MODULE 'ugc-public-generate-content-upload-urlv2' \
    '{"contentType": "3TNNzot3sVli3GN2", "fileExtension": "XTrFibRAhzzEWzWl"}' \
    'TY70qdgJRvpZrSpW' \
    'X3KEe2BjV00ReCXF' \
    'ffjJJxlgjzIhpgOo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'PublicGenerateContentUploadURLV2' test.out

#- 133 PublicGetContentByUserIDV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-user-idv2' \
    'IOD74V21HWDAfvXw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'PublicGetContentByUserIDV2' test.out

#- 134 UpdateScreenshotsV2
$PYTHON -m $MODULE 'ugc-update-screenshots-v2' \
    '{"screenshots": [{"description": "dxbyp4HAPbBbNPSt", "screenshotId": "VBUpKgOssFkz0F36"}, {"description": "piDYXeHZ7FHls3ny", "screenshotId": "vconqbHQqKLQKe3x"}, {"description": "mj6s0GqsWncp5Lrq", "screenshotId": "biKudv9z75SzoCV8"}]}' \
    'ZMi2o1nR482D6gNC' \
    'lk9c87hosaPFC5zB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateScreenshotsV2' test.out

#- 135 UploadContentScreenshotV2
$PYTHON -m $MODULE 'ugc-upload-content-screenshot-v2' \
    '{"screenshots": [{"contentType": "W3ZgVZCj9ObVGT0S", "description": "cwl4kNmCi15XTJTg", "fileExtension": "jpg"}, {"contentType": "TVItrH2X78hxJgaV", "description": "fw5Vnyq8OzTE89WD", "fileExtension": "png"}, {"contentType": "AGcekjMNHuPXtz8t", "description": "XxrmzafMUguyDoN9", "fileExtension": "pjp"}]}' \
    'uc28HoSpGt1g0GGb' \
    'T4Hf2PPKOldkbgX9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UploadContentScreenshotV2' test.out

#- 136 DeleteContentScreenshotV2
$PYTHON -m $MODULE 'ugc-delete-content-screenshot-v2' \
    'CWJKwXXSbv5eg9q8' \
    '6IaDFjjx6uZerWbt' \
    'wTX9gNRByjbE8lOL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteContentScreenshotV2' test.out

#- 137 PublicGetGroupContentsV2
$PYTHON -m $MODULE 'ugc-public-get-group-contents-v2' \
    'AfTXKLzbrddqcKLa' \
    '7LevxNHOSEhQRZIp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'PublicGetGroupContentsV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
