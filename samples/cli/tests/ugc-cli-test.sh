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
ugc-public-update-content-by-share-code '{"contentType": "l6jHMA2rG3nakopA", "customAttributes": {"ywelu01nryEJ0Nqo": {}, "Tow0qiOiC4j0iktm": {}, "0ZPLkLOsp0LZ5njN": {}}, "fileExtension": "86Hl8kUXzt6bSc6b", "name": "WvgpVyW9dD1kOmvr", "payload": "Aejcq2LgkQuaS7RB", "preview": "x3vim02jBOxrZDyv", "previewMetadata": {"previewContentType": "pcLYOWA8NjxOnaEo", "previewFileExtension": "k4nOOCzfsflhjbng"}, "subType": "JOUn18G5MlfDTk8a", "tags": ["G40NlncceIZSwgAI", "kgzh4pTU0Am4DZhl", "0bQxFJ3sWCqQpQ2F"], "type": "bKPFMycMSQ4qfAac", "updateContentFile": true}' '0LgB5BUXvjcu2s6w' '3VifnKqmTSoGH1XE' 'fY6QAYn6WQ5UBEU1' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "QAOHfZiGhxOdcuDX", "customAttributes": {"SxSc3aZPV87pna08": {}, "gxefTYKhuxaEc7M4": {}, "P7UckSC6ePeN8i4G": {}}, "fileExtension": "rFES9z7xueHpATHc", "name": "cee9GXhKcjmSEwdr", "payload": "kEnnqKzFsLfYalUl", "preview": "fwEQKjU7eHGebSVu", "previewMetadata": {"previewContentType": "0LQ40kepEaC4dfiO", "previewFileExtension": "MZfEhHr39pysFO3Z"}, "subType": "vc1BZG99LyvfvHEs", "tags": ["JKQQewVLMUoAnaRc", "Yp7FUjfIGaffoflE", "IByYqeKN0meGelYF"], "type": "5wWaDhukU4khGG4v", "updateContentFile": false}' 'FTYnPkmSu4PWam1j' 'xR7SETWjteoc8fgv' 'ZDDhoO05oKqymxLD' --login_with_auth "Bearer foo"
ugc-public-delete-content-by-share-code '1Lcvw6T6mZEiwxxE' 'lpMYSWIeVzm7z9no' 'owmlTIKVowi0RY2V' --login_with_auth "Bearer foo"
ugc-delete-content 'N4ZONJREdUQ3z9F1' 'BxNNgnke4akncw7w' 'u9TmXfJWBPrx9Ns8' --login_with_auth "Bearer foo"
ugc-public-get-user-content 'eLzYEvwSWTaLQjct' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents 'vrK2jhsYpKPlXn77' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "AtYoFzLAATPY8P8P", "screenshotId": "3cfoivvQxevecWw7"}, {"description": "Rry0KK5rgAGO0dW8", "screenshotId": "rX2MVUGKSZ4GcLkt"}, {"description": "4pK32sJxlZcCTpTd", "screenshotId": "RtCHvuk6B6XTmSLy"}]}' 'n50sigBVZxiKdV57' 'GvRyd9UuL02Le8HS' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "CslsDd4M1F5qRIbl", "description": "S7Nz81GRazPAANjf", "fileExtension": "jpg"}, {"contentType": "c9x1aMjgGim51T10", "description": "7XIZRZ7tZdIs0xf4", "fileExtension": "bmp"}, {"contentType": "GBFUjOn5mM7k8nbL", "description": "zvtCIW5ynMKquUic", "fileExtension": "jpg"}]}' 'LgpZehK0G2nmyuVi' 'B9kRTcSQdTnNYGeA' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot 'fYFG3wSkHKufBdS3' 'ZOokZB4cXnAXyuGz' '6LlxHv8SwyagYvDJ' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": false}' 'w3UNgIGj2jZtEYT8' --login_with_auth "Bearer foo"
ugc-get-public-followers 'sIPSE1XXPzySa0sZ' --login_with_auth "Bearer foo"
ugc-get-public-following 'oFS6xCOWMpyh9pMs' --login_with_auth "Bearer foo"
ugc-get-groups 'Qgb64ELbzDMwyo4n' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["IRysQdbufXjYnSoI", "FeouC2m38kXrDZWl", "GVE9sJ4NpUtKp6M9"], "name": "I6nEwnZhsjwJeGwa"}' 'PSDMZz95OYKiqaZD' --login_with_auth "Bearer foo"
ugc-delete-all-user-group '63xe5rruJVfLGea0' --login_with_auth "Bearer foo"
ugc-get-group 'ZtlzUcuHAXz0UV31' 'MfuGaXsAuGsZaSHe' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["vO0TQNEI3kfabxJW", "WSI1ECUo1NPpeFhU", "ztXDgB7n4C97uAPP"], "name": "8PATLpUpxeJlsBJT"}' '6Hh3OMjAjq2mK8lb' 'SEEelxnb5QxWG2HF' --login_with_auth "Bearer foo"
ugc-delete-group 'nZlA6HKWW4fI1IQc' 'oBQELcNlZkqTZrKg' --login_with_auth "Bearer foo"
ugc-get-group-content 'XNwvm4e5GX6H742O' 'ixhtAoKiVm6URT95' --login_with_auth "Bearer foo"
ugc-delete-all-user-states 'XhnUcvWB28Mpusuh' --login_with_auth "Bearer foo"
ugc-admin-get-content-by-channel-idv2 'hDJ5slzgiWZEtyd5' --login_with_auth "Bearer foo"
ugc-admin-create-content-v2 '{"contentType": "6LfxnbY97jjYgXch", "customAttributes": {"CbkXX26uEdCfQaMA": {}, "QuTKfC0I2kNjCMDt": {}, "DMrentgn3DhqciwI": {}}, "fileExtension": "eShF9RKb9vvxuJlh", "name": "XbWhbwPwToC6knjV", "shareCode": "wVnzaqSfJiQFC2gX", "subType": "oda0kg16yUSpSOAj", "tags": ["HJWwfCjYwWkLob9g", "KLqs2nEZhpByfHZi", "nxNfgPAwkMBsznlB"], "type": "UqnLT4AbGptKaWNv"}' 'Pbpg7yrRvXfZ6rvg' --login_with_auth "Bearer foo"
ugc-admin-delete-official-content-v2 'vEY3Hht1SwqTsKKK' 'o37NHDOQe91Ps3zt' --login_with_auth "Bearer foo"
ugc-admin-update-official-content-v2 '{"customAttributes": {"UIV0dS6hIH9c4Vfk": {}, "yrwpuXxbaERbfgPm": {}, "i0eHkt1mr9EOIFg0": {}}, "name": "dnWIYN2NVL70Iw15", "shareCode": "7g00jr9b8MuYmmeK", "subType": "TmBNvGYxEQdf3ewo", "tags": ["GGoY7xmFNAmjDDCv", "s78mcMdiS76YApGJ", "9ufwLYkqIgLuZS6h"], "type": "sQryiEtOAbpeUNf2"}' '6UqkCfgCUYBn2xaO' 'BdPF0JmX8qwU1cTu' --login_with_auth "Bearer foo"
ugc-admin-update-official-content-file-location '{"fileExtension": "HHPB5S3DvPRCzBrV", "fileLocation": "UxmDOj3cvRFaTC11"}' 'W0TGTCm4fZWuk6pQ' 'xDQpKqxLGeMvr9Ts' --login_with_auth "Bearer foo"
ugc-admin-generate-official-content-upload-urlv2 '{"contentType": "vcMQ7dBsaIecRxIs", "fileExtension": "ZvD6rmzVr5XT1Nxw"}' '0v1dMQ9Rrbk6C2cV' 'Wf6ttvbU1PO6ApCD' --login_with_auth "Bearer foo"
ugc-admin-list-content-v2 --login_with_auth "Bearer foo"
ugc-admin-bulk-get-content-by-i-ds-v2 '{"contentIds": ["2VXidT7w0Oc15N8W", "XBPp17PAewqSm5x3", "B4t7WQnp8jXZedgt"]}' --login_with_auth "Bearer foo"
ugc-admin-get-content-bulk-by-share-codes-v2 '{"shareCodes": ["5cyNe27HLtwtVOax", "gP6Jbct8puMybYGx", "D9IPmmsLmu3kaPj0"]}' --login_with_auth "Bearer foo"
ugc-admin-get-content-by-share-code-v2 'O4zd8Tb7cUNGPTBx' --login_with_auth "Bearer foo"
ugc-admin-get-content-by-content-idv2 'iFFCrn7djjs69FTF' --login_with_auth "Bearer foo"
ugc-rollback-content-version-v2 'VGUVhvKhJCmeisql' '14mUHVbMPimNhcZs' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots-v2 '{"screenshots": [{"description": "U3VAdMDcb4qlkiFA", "screenshotId": "amqvZI2KwjqPBiWX"}, {"description": "ade41s3rH34mB2yP", "screenshotId": "lRpWjmHZAAvKTH8M"}, {"description": "uqIg0CzkguwuJCW7", "screenshotId": "EEFB67AODbi9Bzup"}]}' 'BsFpYc77GtRUcCFe' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot-v2 '{"screenshots": [{"contentType": "Y5g4XgBsbfzqxBPN", "description": "e8ae1Il4aAtEbu4I", "fileExtension": "jfif"}, {"contentType": "9wpGAbpEmDY9vLh3", "description": "u6EDsUmrV6kH4Oot", "fileExtension": "pjp"}, {"contentType": "F2I03dIjvBbA6bfb", "description": "YaJCJjfk2TUvn95F", "fileExtension": "bmp"}]}' 'tU6TDm5GloFSKWM1' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot-v2 'eym5ydC6p25xCWTq' 'UOYZENJ1QHZQxPRX' --login_with_auth "Bearer foo"
ugc-list-content-versions-v2 'H7uxBJEECQE1li3B' --login_with_auth "Bearer foo"
ugc-admin-get-official-group-contents-v2 'g7Jxc9pUnZmvhidw' --login_with_auth "Bearer foo"
ugc-admin-update-content-by-share-code-v2 '{"customAttributes": {"CkZwqjYLfTiCO1ND": {}, "BvQvRPnAz4VzW0Cp": {}, "oBCbyJsF5IjF1c0W": {}}, "name": "338HS6CBgVRyihYN", "shareCode": "Z84CVhziXV8HwSmv", "subType": "cvcDKF19yVRafCjO", "tags": ["uSYht83AdvBaagTi", "RJ8daGTVX3Bb7jlz", "5IfHgKjI9mwJSrN8"], "type": "jkIykR2zbaI6PD7f"}' 'EscShnGUGUtV9GJ2' '79GDbLNwjm3FK0nn' 'X2poMfZ1hDHtbh4H' --login_with_auth "Bearer foo"
ugc-admin-delete-content-by-share-code-v2 'tMlFgvh2Dp2SoiIP' 'p1yvfAHS0VgLu11A' '3HTovFi4tPAGfley' --login_with_auth "Bearer foo"
ugc-admin-delete-user-content-v2 'CA6jEtcqsnzoVILj' 'kwW61duF87aUyrdt' '4XSpWBAetsanzqP8' --login_with_auth "Bearer foo"
ugc-admin-update-user-content-v2 '{"customAttributes": {"oxfrtbECD1CYPwai": {}, "BAxfYL8Avt70ZUT2": {}, "fSk3LL0calqxEewu": {}}, "name": "GS469k2hG0WKt4sU", "shareCode": "manYxM0UHZVNYzGM", "subType": "NIpWoSLkUrfuf4U3", "tags": ["WeYeA9t2ENKKWrFt", "HIi1CMgKAOG5iDcC", "R5PbCvDLil8wj9cK"], "type": "M3Ar6MF35hCER4nG"}' 'mWGgTJfHlJl4tHGa' '4XfZcd9CVnGqMX9F' 'ieeEssWEUl07bhwn' --login_with_auth "Bearer foo"
ugc-admin-update-user-content-file-location '{"fileExtension": "tCVqiYOJf5KwMZQj", "fileLocation": "zvjSozv6CTRDl0zp"}' '9CzHFwinkBNi4gvq' 'gl6TZ9TGVPmv34h6' 'T7EsufmfxKYB4LM6' --login_with_auth "Bearer foo"
ugc-admin-generate-user-content-upload-urlv2 '{"contentType": "H6QXmpZ9X3fUSR1l", "fileExtension": "9xLPBsmAUrD9L1Ii"}' 'D6MlcEPhMDFzjHZ3' 'sIhzOx2CXKlvIomU' '3pIxM9n8D2eLMe3l' --login_with_auth "Bearer foo"
ugc-admin-get-content-by-user-idv2 't9qfx2UDcgVE7L9F' --login_with_auth "Bearer foo"
ugc-admin-update-content-hide-status-v2 '{"isHidden": true}' 'e0MrPc4vtxk9hVKl' 'G56HlzGr7XjdyRJu' --login_with_auth "Bearer foo"
ugc-admin-get-user-group-contents-v2 'nZPkp6ccIBnWyPw8' 'mj7gyQ7XdIszGRj4' --login_with_auth "Bearer foo"
ugc-public-get-content-by-channel-idv2 '6COPipH1MWVTHG0q' --login_with_auth "Bearer foo"
ugc-public-list-content-v2 --login_with_auth "Bearer foo"
ugc-public-bulk-get-content-by-idv2 '{"contentIds": ["HJCWEfOJpZm9yEYW", "NGMy2pgSGSUOK68e", "qGJtWf1Ybgg8rdwY"]}' --login_with_auth "Bearer foo"
ugc-public-get-content-by-share-code-v2 '9bmrvHmO07KNqX9L' --login_with_auth "Bearer foo"
ugc-public-get-content-by-idv2 'M2IwEsdOGBXBwnzD' --login_with_auth "Bearer foo"
ugc-public-add-download-count-v2 'X8v3xgC1Ge9PdbTT' --login_with_auth "Bearer foo"
ugc-public-list-content-downloader-v2 'AJ2Gp1r0sVZ6LJAO' --login_with_auth "Bearer foo"
ugc-public-list-content-like-v2 'ddIL2l3hPjNDKv2L' --login_with_auth "Bearer foo"
ugc-update-content-like-status-v2 '{"likeStatus": false}' 'FNxuNOmUSWw18T1I' --login_with_auth "Bearer foo"
ugc-public-create-content-v2 '{"contentType": "xVWCxdvPL9e4P01v", "customAttributes": {"xP8xj1LyEirURERn": {}, "EMzpImW6sjAHyCK5": {}, "tNanGBrkzUvck3xT": {}}, "fileExtension": "tmOFMebS4AdlNzwo", "name": "g2IhErkNhNcECWwc", "subType": "hW6zL9SkbLlrNXnG", "tags": ["anMazb8jvRWenURH", "48aJuALEcSqcE15u", "6D31DjOsrs3CUYAT"], "type": "dqnQGbqiqOkNeATj"}' '7eGjodd7CcJUrI6M' 'AugK5kypNrp2nFe9' --login_with_auth "Bearer foo"
ugc-public-update-content-by-share-code-v2 '{"customAttributes": {"FmN86sK5LOq4ft5j": {}, "GcMICPUYnfG6jl9U": {}, "4jReteIMgzISomCs": {}}, "name": "odJrhQW41q2OspCZ", "subType": "bt3Uta5I0uGcL1ko", "tags": ["yHjCH5olYLETRpAB", "AmO2EGvJ4UMS93yO", "xNInDByhnoluO6ti"], "type": "0QP2ssiJ66OzOj84"}' 'O6tgohjtC7bzjPpu' 'cddXJ5zifF8y959a' 'nrNSleywHbHig6IK' --login_with_auth "Bearer foo"
ugc-public-delete-content-by-share-code-v2 'WVZ77KeRWdECaFGz' 'fZ2hxcJ2Fnemn7M2' '3SzUo4hNBDh9ZFP1' --login_with_auth "Bearer foo"
ugc-public-delete-content-v2 'OW0nXOErQPS4VsRo' 'YIK69yg9ADCGiXaL' 's2xjHkinOD975nAR' --login_with_auth "Bearer foo"
ugc-public-update-content-v2 '{"customAttributes": {"HCmhNHSXuqIHsxva": {}, "UoXDmwWsukxncuD3": {}, "QxCXMd00YBWCaVVm": {}}, "name": "M45mfIZsWhkS476d", "subType": "GGJwJ00UH197MJ6z", "tags": ["U7JLMQyMWzYQCAaP", "JgoxGJoJaSzUtY4Z", "D0Xtb0U4pH16NUsV"], "type": "Y21NVIs7NRen2Y3N"}' 's0QJQeaWytPfds1B' 'Yx0EaURydf8ZyyZe' 'HAWGgJUbUJRMbkcT' --login_with_auth "Bearer foo"
ugc-public-update-content-file-location '{"fileExtension": "glbU86FyOjApNHBV", "fileLocation": "fNOURcjY3YYT9oTy"}' 'nmfIuBWgJTNFfM8M' '0IW4oe8KDgy0xZfA' 'cNg14Ws8TIP1LKiF' --login_with_auth "Bearer foo"
ugc-public-generate-content-upload-urlv2 '{"contentType": "QoLDvumfqrgSfnx2", "fileExtension": "h61X9dN1MGRXBJ6m"}' 'VV7JS9qjNLwvI8Jd' 'iY3RRiLilmOGF6dL' 'LIeIVIjMcdlbdRXT' --login_with_auth "Bearer foo"
ugc-public-get-content-by-user-idv2 'GIrdNL5gJPqTAjgq' --login_with_auth "Bearer foo"
ugc-update-screenshots-v2 '{"screenshots": [{"description": "aTHf1ANTJ9Yk997X", "screenshotId": "kGOdC6ItxDT8p4n4"}, {"description": "XCFkD1AJLCwszbZx", "screenshotId": "uHSgDOK8bjoF7bL2"}, {"description": "635KbtZTGJpqgl2I", "screenshotId": "zNXGTuQPIDpor7t1"}]}' 'aJLNNz6QIVC9Mfuc' '8VOsnmnlVljdWYmE' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot-v2 '{"screenshots": [{"contentType": "Le74p38vumnxAnYB", "description": "TxaTIz0jcgDI8Pkz", "fileExtension": "jpeg"}, {"contentType": "NIY9nMrBZo0lNUBD", "description": "ShHD32vvL28FPwTi", "fileExtension": "jpeg"}, {"contentType": "fLcxDC9Ynd02mECI", "description": "QhfIhHtADUQ9zimQ", "fileExtension": "png"}]}' 'f7BULnZDhutDM6Bq' 'guqD5xxGxBWtnTKU' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot-v2 'e2znsqPzPkwCBo2S' 'wCUsTag4MLAo3m61' 'P2xaNfmn8Onb1a9g' --login_with_auth "Bearer foo"
ugc-public-get-group-contents-v2 'Mz0F2UBRmMhAbUWm' 'FhdYLWzMuv3zkUY0' --login_with_auth "Bearer foo"
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
echo "1..146"

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
    '{"id": "n0BAZkwbYkBLyO6A", "name": "0FqfhnaB3YxKNdOT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "acCcJfIfXshuLUk5"}' \
    'WdpxjZx5noXPhPUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'KbonoucNmzwOZOK5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "6sDkci5rZ8iMlOuk", "customAttributes": {"sQJCiRFiZWwJ7NrT": {}, "b1XTB9YQzUJ9XlYJ": {}, "8BzP6EUmUXGM5anI": {}}, "fileExtension": "loyj9lhbvuQdW2jw", "name": "KUckc794ryY91lX8", "preview": "DD4MYXlrJ81lHvv9", "previewMetadata": {"previewContentType": "rqvEoM8YmVjAkO3H", "previewFileExtension": "KsEp6KlqwW4djrex"}, "shareCode": "cbHdEtoQvpV344Rc", "subType": "tmTozCi8HeV6jbal", "tags": ["HmqBBfi7sSF5BoGi", "TCVsXsygWbjE2opX", "tdsJQeJ1too0qvxp"], "type": "hTLEEBGTtZyTjdKN"}' \
    'KgYazujsmSmylT1Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "txIq73aMb48jISd9", "customAttributes": {"7KORRhxSWLWLNfHR": {}, "D3V15QaGGL46LuxJ": {}, "F3sbeqWBdQuWfgBA": {}}, "fileExtension": "Kx27MSBqabUXOGkk", "name": "oMUZn1YXj5zFZeOC", "payload": "OR9NvBQZSJPOIKrR", "preview": "BrYVzi9ui3lvozTt", "previewMetadata": {"previewContentType": "9TsH7A0TuU2aL4bP", "previewFileExtension": "kk11sys6GdkDcos5"}, "shareCode": "uVJ0BJfZ0jvA54CS", "subType": "qZFDsO1skRjOU1SM", "tags": ["fQVQa6blj9Rdd85b", "dYUumPKVSZCg3XTc", "9vQe0dHJfF6KIuvn"], "type": "RCa9JktyBdxkZKrE", "updateContentFile": false}' \
    'Fw9GYxjiiOQAD77c' \
    'i0vfWVZoRRMPi57H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'yKKz5nyI6ulKNKoX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    'a0dgx1JgjC56pda3' \
    'YhtQxpCYME6x21pd' \
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
    '{"contentIds": ["X2QSPAd9sxoLnWGP", "1PafIjLX8ce0KbNN", "7Ycl2JfmQplvGjVQ"]}' \
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
    '{"shareCodes": ["4aebjfgGu472oWJl", "fglLM4xjfkNL4lU6", "jaGfsD1cfswmeFpv"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
$PYTHON -m $MODULE 'ugc-admin-get-user-content-by-share-code' \
    'tDtetoQVFL8LNW11' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'vtpaTxi7k489jRCn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    '48bvkCPfKofwXOIZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
$PYTHON -m $MODULE 'ugc-rollback-content-version' \
    'ZQAJza84lKKmVOaT' \
    'S6xBbNrSUAW2ak7I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "SDrBVg6NuDZvPb1k", "screenshotId": "uUfNfUDe4g7q6PHE"}, {"description": "aqbzHvDDl1jiLw3X", "screenshotId": "MGBA6JXDpA1tIC45"}, {"description": "C0oaGouFu4hXONgU", "screenshotId": "wJnUpryDeRcpUvlr"}]}' \
    'w2MwC1uuokpaIjL0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "Vxe5n9Lx3QcFo9gx", "description": "OgvDc7xMrRKvw8IS", "fileExtension": "png"}, {"contentType": "UqjXVzW1QqxnWR5s", "description": "heLgsAF4ctv5guyc", "fileExtension": "pjp"}, {"contentType": "JhatQPxR7dvBVC5z", "description": "gOKLTDmHe8c1eJ9s", "fileExtension": "bmp"}]}' \
    'Er0KBXuJBqK4QtEy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'dPWLPBYiR3UbJc1Z' \
    'Yapx7C477etqgfOJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
$PYTHON -m $MODULE 'ugc-list-content-versions' \
    'DUT0uKAPrARya2IM' \
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
    '{"contents": ["lNiXpF4qvsUUpHqi", "33TcBGkc0HjUcnkp", "U9oVzl2kBuLFXIeC"], "name": "EKZUTz3GvCAZ5j24"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'acYHbrryHB6GO9zP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["3FaepA3b3YJ9nJM6", "vtT27xv85K5MU2qm", "beqaVemINdClpF7O"], "name": "vlBIEgjse5kd6GED"}' \
    'o08yq5E5HleLoog4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'me2NBFp62xlXvVcJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    'erTPW02PWsHiKYAr' \
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
    '{"tag": "AxnKBfBfDlrQQuAc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "10DjjwMv4vrIPRtv"}' \
    'hQIyLarjaLOKnX51' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'yAB8Pa3uNGKhaLlJ' \
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
    '{"subtype": ["zJMSnJIIgsAVmaGY", "xUX1B9oVuzG2CnYX", "2YBF2g7TVtzYEHUo"], "type": "dh3iUfBthbepUCTW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["iZ1uqh7GAi4FEIu4", "4u83ZLRxYlYqlpq0", "3BGdIk4oEogFVGR7"], "type": "1rJOBy6lsj1AKGBj"}' \
    'nHmaAu4YK87DYAWW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'cbcbGWmKgE8CZ4AE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'Lr5lraa5v5P5Cj8h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    'gFsqHC9h5JPiMEtg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "KuiGTYgwWv5XldL6"}' \
    'rOVGcRAn51rVAQSx' \
    'p4qTB54mKA3V9DKl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'CeZ7mLYsHooOIaxI' \
    'pb1cIOJPS3lJ80YJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
$PYTHON -m $MODULE 'ugc-admin-update-content-s3-by-share-code' \
    '{"contentType": "41U4ooQ980ywmg1p", "customAttributes": {"WpWit1QC7FKe0fnH": {}, "UlmU1unGKM0tgfeW": {}, "y47bbwMI4gGmvK9g": {}}, "fileExtension": "W596FwBNrFXt3TAu", "name": "KBwBcD12ae6r3hHw", "payload": "ya4NpdOzg3hr6ucH", "preview": "f7dbh2iKNUl0qJqz", "previewMetadata": {"previewContentType": "oKMRMG541PAiNjUL", "previewFileExtension": "sx4SnKNXLMUaDSww"}, "shareCode": "QlnNRZJHBSB4fZWE", "subType": "FIZs28Ff1kZp1Zkt", "tags": ["x3N7WNMYIfcDKbLu", "8pnK34oA1keYXJvt", "ggDdXjbdjMBahFZZ"], "type": "GMTcqnWrIprOv0BJ", "updateContentFile": false}' \
    'Sgl7H1sdH2RIJz1e' \
    'I7Q5pu9PutLf6Irv' \
    'ZoBGQbO4S3rURGWU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "zPAE6SdV4D5jftRl", "customAttributes": {"9rZmtQUvro8TWwXW": {}, "sz9TVmdMKEohKzuM": {}, "YDUTLBeCidXjuGgx": {}}, "fileExtension": "8ncXejmeZtzT0qj0", "name": "ltsqfiZrthVvyX0O", "payload": "CKDJE3RMUddwSSgx", "preview": "Cu8zru1DhGAYOHR5", "previewMetadata": {"previewContentType": "BWa9VzIkaQEl1iUP", "previewFileExtension": "roNB6hI6IpGcToWg"}, "shareCode": "FvdRhG9NwV3zDuqV", "subType": "lVTypcYPK8IxrSZu", "tags": ["xWl0Je4fJIyFAm3D", "Qht4JwnPS2urJqer", "obWMZGVL5KLTxahW"], "type": "lS6XdBaKSLCgOOPX", "updateContentFile": true}' \
    'TUh2dJ90yqHDNacl' \
    '4F9G6Dl5TFwBY6HK' \
    'XAblkT8VGgSH8MGZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
$PYTHON -m $MODULE 'ugc-delete-content-by-share-code' \
    'GwiVj7eDTaka9ABf' \
    'X1IByPEOuPhGspRi' \
    '3bhPQvBBJI5Jxytp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    'cubN4AUUPFPscZsX' \
    'eJOD4DMtqfIGiGJo' \
    'vgWSRxZ8N4UQ2fg3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'V1o2x0hL5DuBDqMy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'IAzWze94MEdJFAy2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": true}' \
    'llJkRGB8jqJEd6eq' \
    'qsBVyONV0JRtozI0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'jpliCFQ6WgJpGPig' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'dc5VyC4qvWjVac1c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'QvSxgTNIUzxDgBlI' \
    'buzm7DzJ20NFRJIh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["FXR2dYprPmbpuptE", "CGd5cdXC2Sesc6y6", "8whNBYl9iCqfW6rq"], "name": "GOQny4ij4ysYPonb"}' \
    '59gQffkNOmubxEJr' \
    '2qEAuJbpZSrcbc4L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'WfKaY5c1tP5TDuI5' \
    'f6m4KC07CnsZe32h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'qEcB1ExYMBb3ckvo' \
    'aJYdMqGegcg3eRvB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'ZXN3cjIXmFWRJnj8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'xN7HDPTUEDPN1Kb4' \
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
    '{"contentIds": ["UTPWDXTSb55g8LST", "s7Nf95lGlPrf6obI", "dnI6Ag7eUYcYJ4Qz"]}' \
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
    'XCmqr6gmPGaHP5SV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicDownloadContentByShareCode' test.out

#- 63 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'PvRLiDi0mNHb6Lx8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByContentID' test.out

#- 64 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'eq8SGNwEQO8dYXvB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'AddDownloadCount' test.out

#- 65 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": false}' \
    'YvJBwb6CjZUMRf2V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'UpdateContentLikeStatus' test.out

#- 66 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    'JetWsokvx3BHuTEc' \
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
    'zr9KjQ3ttz8MTBt1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicGetCreator' test.out

#- 72 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'xk9IyssSA8nP5PQj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'GetChannels' test.out

#- 73 PublicCreateChannel
$PYTHON -m $MODULE 'ugc-public-create-channel' \
    '{"name": "pzk2Tb7iYdmNZWos"}' \
    'rsVBPZ64j0HUONsc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicCreateChannel' test.out

#- 74 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'ofwYLQcDvkaEIIPo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'DeleteAllUserChannel' test.out

#- 75 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "JT83zEGXmVBZLyrH"}' \
    '9J7BoysmaORLkP5h' \
    'c2Fh04JTsqDTynCe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UpdateChannel' test.out

#- 76 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'wqJligLlRxOelKyk' \
    'ICRxF6HtlER2txs4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteChannel' test.out

#- 77 CreateContentDirect
eval_tap 0 77 'CreateContentDirect # SKIP deprecated' test.out

#- 78 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "qrNARATn6KXOutlY", "customAttributes": {"BbLhL8KXx25FZfQI": {}, "odVBqQsBpCJBIXLG": {}, "YcwWVRK6UKk5ozrX": {}}, "fileExtension": "A4HZHNyq9odanhR1", "name": "Zrm3thUvV87yfkyc", "preview": "LSVdleSaAylsmLYe", "previewMetadata": {"previewContentType": "2phYOgT5kDTyPl3d", "previewFileExtension": "KF7NXEjrJMki8jvc"}, "subType": "3P8Gwjg3IOH0SDHg", "tags": ["YKqxJiFJdrmj5vhz", "gsJwex7wq8ZPlXNa", "UNgdY2vfJuje5cPn"], "type": "mGjTvYa5Pqx1K7qc"}' \
    'AoijBPAp6EPb988N' \
    'zxrDKVpULjjiw3Ne' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'CreateContentS3' test.out

#- 79 PublicUpdateContentByShareCode
$PYTHON -m $MODULE 'ugc-public-update-content-by-share-code' \
    '{"contentType": "VG4DJi9DaMrc0WFg", "customAttributes": {"KjE945x2CPVYYG9W": {}, "voGmAmvaVV5YfxnU": {}, "Ncwjr7gSGhnfuF4W": {}}, "fileExtension": "ZiQVICVpWd3UM08g", "name": "MXhdf3juXW4JprIb", "payload": "3CJCAtvSG8Cfa9dz", "preview": "OJDGCTHIOFjeXbsS", "previewMetadata": {"previewContentType": "gR43kIDzxBwqRJTz", "previewFileExtension": "rHNZWUsq5lQo2jy2"}, "subType": "9EJigqYhyVhURx1y", "tags": ["PeczRpdk0HATGylx", "2JG2KNGfhzfCTxxr", "sRRLee3TcJ7DQIi4"], "type": "5aCDHN9mVug2zkVf", "updateContentFile": true}' \
    'KgpKOcn3tMD9UT67' \
    'bOwugFDa6wUQvehK' \
    'qwCh86XmRkCEcfHD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdateContentByShareCode' test.out

#- 80 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "Cdl59Wp9A3tXGve6", "customAttributes": {"DdK6uvg8f2cIoByk": {}, "9fxtvsgeAxo57nKA": {}, "bZpsbJ4Iu5KJ0ynx": {}}, "fileExtension": "GBlacDCdFe8ATUqV", "name": "xcSthrpnMUBsnUfu", "payload": "QIcSbUt5UGkInFGp", "preview": "uUsdtq4dOwNESzCE", "previewMetadata": {"previewContentType": "W9dUVhZjLftC3sCS", "previewFileExtension": "8CpLCqPD9CeDEdCn"}, "subType": "nL6Kt1Bjj3b8QM8R", "tags": ["r45ULqXQgvwD3PsK", "DJiWxQBwaS7rDBf2", "S54phbdyGDt47f9G"], "type": "WRlE9hqz6rjDNo4r", "updateContentFile": false}' \
    'U8mosluiHZJ7O8sA' \
    'Q32wj9uaDzsr9xYi' \
    'WRuuzQJiLc1eI9w3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UpdateContentS3' test.out

#- 81 PublicDeleteContentByShareCode
$PYTHON -m $MODULE 'ugc-public-delete-content-by-share-code' \
    'JEhxPGbEk7s7gw07' \
    'FlounC3vJKBC7Swg' \
    'oViPeIB4Ehy0Y5aS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicDeleteContentByShareCode' test.out

#- 82 UpdateContentDirect
eval_tap 0 82 'UpdateContentDirect # SKIP deprecated' test.out

#- 83 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'JVDginxAM77eY9C1' \
    '4FbfiI2NPvl1kCY5' \
    'bEokxXxkWZbjf7GZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'DeleteContent' test.out

#- 84 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    'xaossQmjo69wohJF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicGetUserContent' test.out

#- 85 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'yTNk5FGUPhR4LEZv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'DeleteAllUserContents' test.out

#- 86 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "z3EjFR7996Ug5m4a", "screenshotId": "xDV5uTcYsoahUrEL"}, {"description": "Q1btjJOqQMgZWAU6", "screenshotId": "E92nHJzvw7tnYtGf"}, {"description": "v0EJyjBu4EzwRjD7", "screenshotId": "jmQJeFPghqamSc5y"}]}' \
    '0X48eT7Mluexk87b' \
    '9Z5BTsEA3EdmW8sa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'UpdateScreenshots' test.out

#- 87 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "abP4xRowfNojzPXI", "description": "2v0prR3OEey0MkZw", "fileExtension": "png"}, {"contentType": "9FHuv1M3qfch4SqI", "description": "V6LQPHlaeYl4csFq", "fileExtension": "png"}, {"contentType": "5cU66yJaj4ovoKWE", "description": "4EW0sw8v5peiuxoB", "fileExtension": "pjp"}]}' \
    'oQBp2mWAOYksczxB' \
    'S0OBCa2vWadLmQtY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'UploadContentScreenshot' test.out

#- 88 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'KmEMzicbuL2S3RiW' \
    '8dLTCBfGUdVEdvdQ' \
    'L7sVwcZ2PofaJoSq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'DeleteContentScreenshot' test.out

#- 89 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": true}' \
    'fmjIXFGZ5PKdbabJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateUserFollowStatus' test.out

#- 90 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'IkNnt9P1Tkm08luh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetPublicFollowers' test.out

#- 91 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    '4dpPRMDbUXBWTbpA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetPublicFollowing' test.out

#- 92 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'ogG2wlZkLhuU5FI8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'GetGroups' test.out

#- 93 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["NijFI0GKwJ3vfXls", "AMy2Zp2UAGxHnmSx", "vkG9UR5q9neoW6JB"], "name": "cGp9Rx2RfcRhXpme"}' \
    'eHdvphas9S7ivHEo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'CreateGroup' test.out

#- 94 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'LbUMM47f1UreUpxE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'DeleteAllUserGroup' test.out

#- 95 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'kXIbE1ETzRJZKMav' \
    'u4Ul2IaieEbPSE7T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'GetGroup' test.out

#- 96 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["GkeHsYsW9oGBN1pY", "MBwbPZTlMlUvFEiG", "prcNSQ9kEeXBZ6FV"], "name": "rBzyhyhoS6a9oe0J"}' \
    'aXFpff28uYbe4Cf2' \
    'HEHvVevhISjbtBJU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'UpdateGroup' test.out

#- 97 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'K5fE3OufPSX3PdOU' \
    '2V9yw94oa8UJ34TI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'DeleteGroup' test.out

#- 98 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'edV3HyoX4VnO2LpB' \
    'U08wfnlHBXFIqFUm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'GetGroupContent' test.out

#- 99 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'gUSMM5au8GJT0mkV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'DeleteAllUserStates' test.out

#- 100 AdminGetContentByChannelIDV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-channel-idv2' \
    'PI6zUtf3QaJPGrTN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'AdminGetContentByChannelIDV2' test.out

#- 101 AdminCreateContentV2
$PYTHON -m $MODULE 'ugc-admin-create-content-v2' \
    '{"contentType": "cXXTUIggoH89QNmI", "customAttributes": {"17UDb19R6H7r1ta3": {}, "m7jK5pxe82pgFiAS": {}, "6piIzmc8rKrKEPGS": {}}, "fileExtension": "Acong6eNERUf8kjc", "name": "i1Ctccv9Gv4tOcbn", "shareCode": "uCqf0lm6WBkIzjoS", "subType": "V31tvmMB6jzrpRGE", "tags": ["SmooHiCV4GUOnXpa", "pXQGRakUbcG7PcR4", "eiU3Idi55jNrGNT2"], "type": "VHTKuIT5FwwHj0Ur"}' \
    '5F2PWGTTD81xhNP4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'AdminCreateContentV2' test.out

#- 102 AdminDeleteOfficialContentV2
$PYTHON -m $MODULE 'ugc-admin-delete-official-content-v2' \
    't6kYBUjyXAn3bWQF' \
    '6QcAiJpXIrgroixp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'AdminDeleteOfficialContentV2' test.out

#- 103 AdminUpdateOfficialContentV2
$PYTHON -m $MODULE 'ugc-admin-update-official-content-v2' \
    '{"customAttributes": {"tZhckUTGkcBOE4qM": {}, "cH1Kyi8ZFvGcV8DY": {}, "0XOkDstxZcY1HgAn": {}}, "name": "ZV4IOglVLqb9lGAJ", "shareCode": "Ug21Lt7JwgwMUSuC", "subType": "3Bajy3BcEMCtQs2F", "tags": ["cEcvVAyId6Cp85HV", "DsZBQgOnXuXsGThY", "Zrmm0wrFMnPpWgrQ"], "type": "D4hEk0OLjYsnignE"}' \
    '7KcMF7fuDbzRRYMN' \
    'XWUsp1tOibJY9aL9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'AdminUpdateOfficialContentV2' test.out

#- 104 AdminUpdateOfficialContentFileLocation
$PYTHON -m $MODULE 'ugc-admin-update-official-content-file-location' \
    '{"fileExtension": "ie6vvMbiNURrlm88", "fileLocation": "QlKyuoya4JgakZyU"}' \
    'V7t73VnSFbuxd4KY' \
    'Z0jk0UZdhtnKu9oT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'AdminUpdateOfficialContentFileLocation' test.out

#- 105 AdminGenerateOfficialContentUploadURLV2
$PYTHON -m $MODULE 'ugc-admin-generate-official-content-upload-urlv2' \
    '{"contentType": "c8pVkiyGsj5JdXzR", "fileExtension": "xfNEjUMTs8WIObJB"}' \
    'Tsvsw76uISRX0bKV' \
    'oWtoUW1P7ocuBAld' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 106 AdminListContentV2
$PYTHON -m $MODULE 'ugc-admin-list-content-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'AdminListContentV2' test.out

#- 107 AdminBulkGetContentByIDsV2
$PYTHON -m $MODULE 'ugc-admin-bulk-get-content-by-i-ds-v2' \
    '{"contentIds": ["DSUS7Haa6unq1yQO", "SRvyiLBRVtIDi2pi", "IQFVmzMidw70KSah"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'AdminBulkGetContentByIDsV2' test.out

#- 108 AdminGetContentBulkByShareCodesV2
$PYTHON -m $MODULE 'ugc-admin-get-content-bulk-by-share-codes-v2' \
    '{"shareCodes": ["pYZdKZRyR9AX7Jjx", "vNZhM84DiZk6ySrB", "9SVFctW7YS0OkL78"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'AdminGetContentBulkByShareCodesV2' test.out

#- 109 AdminGetContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-share-code-v2' \
    'XeEAtALFI3v8yha4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminGetContentByShareCodeV2' test.out

#- 110 AdminGetContentByContentIDV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-content-idv2' \
    'pd5A7MYcpBD6lKNb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'AdminGetContentByContentIDV2' test.out

#- 111 RollbackContentVersionV2
$PYTHON -m $MODULE 'ugc-rollback-content-version-v2' \
    '8RxvN2u5J7baOeLH' \
    '19fqBwNbNe1ffYRt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'RollbackContentVersionV2' test.out

#- 112 AdminUpdateScreenshotsV2
$PYTHON -m $MODULE 'ugc-admin-update-screenshots-v2' \
    '{"screenshots": [{"description": "IvQaKyevWYtZjK6J", "screenshotId": "29v8MpBSpo3AKRmn"}, {"description": "JkzJHAckUyBksYQf", "screenshotId": "Dm0RNFwiz70tRVLM"}, {"description": "lHi8i9gOVqajUWrg", "screenshotId": "EsWDtaKzn8dZwnnG"}]}' \
    'eZsZVgbPzPFbrOMZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'AdminUpdateScreenshotsV2' test.out

#- 113 AdminUploadContentScreenshotV2
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot-v2' \
    '{"screenshots": [{"contentType": "MgWkFN7Tpkx6Gcfy", "description": "Og6ZUrrp9ubg9mnd", "fileExtension": "pjp"}, {"contentType": "qdgJRvpZrSpWX3KE", "description": "e2BjV00ReCXFffjJ", "fileExtension": "pjp"}, {"contentType": "oCQykmXHYmkRlg7g", "description": "Ys6unPYQ9jNQN1di", "fileExtension": "jfif"}]}' \
    'HAPbBbNPStVBUpKg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUploadContentScreenshotV2' test.out

#- 114 AdminDeleteContentScreenshotV2
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot-v2' \
    'OssFkz0F36piDYXe' \
    'HZ7FHls3nyvconqb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'AdminDeleteContentScreenshotV2' test.out

#- 115 ListContentVersionsV2
$PYTHON -m $MODULE 'ugc-list-content-versions-v2' \
    'HQqKLQKe3xmj6s0G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'ListContentVersionsV2' test.out

#- 116 AdminGetOfficialGroupContentsV2
$PYTHON -m $MODULE 'ugc-admin-get-official-group-contents-v2' \
    'qsWncp5LrqbiKudv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'AdminGetOfficialGroupContentsV2' test.out

#- 117 AdminUpdateContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-admin-update-content-by-share-code-v2' \
    '{"customAttributes": {"9z75SzoCV8ZMi2o1": {}, "nR482D6gNClk9c87": {}, "hosaPFC5zBW3ZgVZ": {}}, "name": "Cj9ObVGT0Scwl4kN", "shareCode": "mCi15XTJTgCNNH7R", "subType": "tG5Xmo9Q0Wb07N17", "tags": ["fkxZSc6VbE0AGcek", "jMNHuPXtz8tXxrmz", "afMUguyDoN91uc28"], "type": "HoSpGt1g0GGbT4Hf"}' \
    '2PPKOldkbgX9CWJK' \
    'wXXSbv5eg9q86IaD' \
    'Fjjx6uZerWbtwTX9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateContentByShareCodeV2' test.out

#- 118 AdminDeleteContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-admin-delete-content-by-share-code-v2' \
    'gNRByjbE8lOLAfTX' \
    'KLzbrddqcKLa7Lev' \
    'xNHOSEhQRZIp693l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentByShareCodeV2' test.out

#- 119 AdminDeleteUserContentV2
$PYTHON -m $MODULE 'ugc-admin-delete-user-content-v2' \
    'Rwtc43atCuCFxbfb' \
    'z4aQERziPL4dHhOq' \
    'G5KDdUvk0LEi26Ls' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteUserContentV2' test.out

#- 120 AdminUpdateUserContentV2
$PYTHON -m $MODULE 'ugc-admin-update-user-content-v2' \
    '{"customAttributes": {"7mjRxNmvvNtjJNQe": {}, "pUTGhwlY4lPzlsCR": {}, "5rVsyfcH7WjP7HuG": {}}, "name": "z3b5WAEvdRF9bqMj", "shareCode": "4ro5B19VE838c7Oy", "subType": "dVw0zCqoMZvpIOO9", "tags": ["7DmQ5ZOzx6iCJTu6", "0IifzMhkk5Pxsjqb", "CKpMv2Yky9DYkD2s"], "type": "IllFtBtXJKG3rqBm"}' \
    'ILhtWm8RQvRUbUDS' \
    'iefGEdLucrtO2gCQ' \
    'D057DrDlgC2nzS9S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'AdminUpdateUserContentV2' test.out

#- 121 AdminUpdateUserContentFileLocation
$PYTHON -m $MODULE 'ugc-admin-update-user-content-file-location' \
    '{"fileExtension": "iGUjVAw4v3q6JRHc", "fileLocation": "n7KaoCEkRdo6qHYI"}' \
    'ZWnXqQ1oHFJ9Q0vq' \
    'sL9SomqWsGA76yxi' \
    '0QzZWfmP2sx0KO5b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminUpdateUserContentFileLocation' test.out

#- 122 AdminGenerateUserContentUploadURLV2
$PYTHON -m $MODULE 'ugc-admin-generate-user-content-upload-urlv2' \
    '{"contentType": "EJaPnAFjsodyJQVV", "fileExtension": "BrShGbIIuqK8C403"}' \
    'HgoXCR6XOMXwKdfq' \
    'k8T4QHK30EX0Fclp' \
    'Dl5HsuracO5Mnjnx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGenerateUserContentUploadURLV2' test.out

#- 123 AdminGetContentByUserIDV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-user-idv2' \
    'D1OXkxShFVQTRekL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminGetContentByUserIDV2' test.out

#- 124 AdminUpdateContentHideStatusV2
$PYTHON -m $MODULE 'ugc-admin-update-content-hide-status-v2' \
    '{"isHidden": false}' \
    '6bpuJip8JyxJ39vr' \
    'tuWWrqTZbSqBSKp8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentHideStatusV2' test.out

#- 125 AdminGetUserGroupContentsV2
$PYTHON -m $MODULE 'ugc-admin-get-user-group-contents-v2' \
    'AmgwhYzk33J34fiT' \
    'xK63OHpnUCGBVfpc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminGetUserGroupContentsV2' test.out

#- 126 PublicGetContentByChannelIDV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-channel-idv2' \
    'tNFUsUQ6ZXQcb2o1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'PublicGetContentByChannelIDV2' test.out

#- 127 PublicListContentV2
$PYTHON -m $MODULE 'ugc-public-list-content-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'PublicListContentV2' test.out

#- 128 PublicBulkGetContentByIDV2
$PYTHON -m $MODULE 'ugc-public-bulk-get-content-by-idv2' \
    '{"contentIds": ["J5euLAbBgejqc0ap", "xqZ209BySn8aUaGl", "AyvIslt7N1qcxKs4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'PublicBulkGetContentByIDV2' test.out

#- 129 PublicGetContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-share-code-v2' \
    'nlf1MfqUZXkjHvcU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'PublicGetContentByShareCodeV2' test.out

#- 130 PublicGetContentByIDV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-idv2' \
    'OTlxNf09pefgFIiJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'PublicGetContentByIDV2' test.out

#- 131 PublicAddDownloadCountV2
$PYTHON -m $MODULE 'ugc-public-add-download-count-v2' \
    'ssShBKsQjXvfQgQD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'PublicAddDownloadCountV2' test.out

#- 132 PublicListContentDownloaderV2
$PYTHON -m $MODULE 'ugc-public-list-content-downloader-v2' \
    't6ce8NDMErA82FrR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'PublicListContentDownloaderV2' test.out

#- 133 PublicListContentLikeV2
$PYTHON -m $MODULE 'ugc-public-list-content-like-v2' \
    '1GSogkewIzTOqKkc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'PublicListContentLikeV2' test.out

#- 134 UpdateContentLikeStatusV2
$PYTHON -m $MODULE 'ugc-update-content-like-status-v2' \
    '{"likeStatus": false}' \
    '6kPmswm5TCAU1cKA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateContentLikeStatusV2' test.out

#- 135 PublicCreateContentV2
$PYTHON -m $MODULE 'ugc-public-create-content-v2' \
    '{"contentType": "pdJDnE73GLmSZns5", "customAttributes": {"owBhoUg4LsGP6KLP": {}, "XkvUv2XiXaBzsmax": {}, "jTZPlLitytGka7Kv": {}}, "fileExtension": "5TacQKF4OlRGdmXx", "name": "ETLEQrr3KCAV9alq", "subType": "3hK1G4kKooSNNUZu", "tags": ["iynZ64IwncZPk82G", "F3eTC0vzZUDj9dzG", "gGVxo9OHgfHumyfu"], "type": "BNisecYbcOpR45VD"}' \
    'lvSc0Mr7ImwCwGqO' \
    'f0bNs97KvKyj3MqS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'PublicCreateContentV2' test.out

#- 136 PublicUpdateContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-public-update-content-by-share-code-v2' \
    '{"customAttributes": {"7Dcmtfh50eObbrmg": {}, "jhWK0x0ZidAJ1CU1": {}, "eD1La16Bw3JbUnUD": {}}, "name": "h5yGjjv4Mwrv2van", "subType": "cmR6Z7rb21A2E9pX", "tags": ["0BWCMqPsRk5htdM5", "T3fDSrSHrkoqv2mM", "6soMaTvQq2a9YdFN"], "type": "tRVSO0js0hG9xmSn"}' \
    'zd7zgUxAogcnGkXk' \
    '17QPkJHRhmLKQuQV' \
    'FSKiXl8G2uf6E8Ea' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'PublicUpdateContentByShareCodeV2' test.out

#- 137 PublicDeleteContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-public-delete-content-by-share-code-v2' \
    'jXLSAS8MKMaxQ1Qy' \
    'JCpKedhuzI7G9NCK' \
    'KXu1bqI2M5PmXfKn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'PublicDeleteContentByShareCodeV2' test.out

#- 138 PublicDeleteContentV2
$PYTHON -m $MODULE 'ugc-public-delete-content-v2' \
    'Q7BYGjCUDMOrbmoR' \
    'vWnfmGFy0eUoOBd9' \
    '0h9EDqSTOfoNewWj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'PublicDeleteContentV2' test.out

#- 139 PublicUpdateContentV2
$PYTHON -m $MODULE 'ugc-public-update-content-v2' \
    '{"customAttributes": {"wMWDKEt6JhbJ0fwT": {}, "Daq6b5RpMwhWPtnd": {}, "riXU9loOxpmEuwDV": {}}, "name": "c12r0DVUGgGHkapT", "subType": "CafFMdvYiCBuzUUw", "tags": ["yI6Vtd4v9k4fv3kM", "iuQ3DhsKLxjt5srP", "FxBgpFtDBmTLH9kP"], "type": "9U53z6joBAhAlJGI"}' \
    '2YYb6ajBjgq6eY4P' \
    'BNHKPx62tHxDb06Z' \
    'Fy3uglSp2UxvF2uL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'PublicUpdateContentV2' test.out

#- 140 PublicUpdateContentFileLocation
$PYTHON -m $MODULE 'ugc-public-update-content-file-location' \
    '{"fileExtension": "XWilRD7HD6LCgdFx", "fileLocation": "RGj00RT6LvcnGMJb"}' \
    'JIYLssMvy9gkfTMR' \
    'rXVRcAVRDX6gmDfN' \
    'fPGYYSTunMgt3C8h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'PublicUpdateContentFileLocation' test.out

#- 141 PublicGenerateContentUploadURLV2
$PYTHON -m $MODULE 'ugc-public-generate-content-upload-urlv2' \
    '{"contentType": "EguCqlMHiQN3HWJw", "fileExtension": "9zIWsiP2JQ24meDr"}' \
    'wEuTyM2qohglzO8A' \
    'El6A9sh2x2ur2ccp' \
    '7R7OqPqIjS4i0N9y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'PublicGenerateContentUploadURLV2' test.out

#- 142 PublicGetContentByUserIDV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-user-idv2' \
    'tb3c8pVZ8GlU8962' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'PublicGetContentByUserIDV2' test.out

#- 143 UpdateScreenshotsV2
$PYTHON -m $MODULE 'ugc-update-screenshots-v2' \
    '{"screenshots": [{"description": "e6gtn5pUARJM1T8Q", "screenshotId": "wMNOAzXmyHEV4g9P"}, {"description": "6a280S5RNB5dVCsB", "screenshotId": "7xL4axSPgPCiwLxC"}, {"description": "FLDixZwVtt3RVTl0", "screenshotId": "tR00oQgcHdGGK3x7"}]}' \
    '6U1EIcklttmrpgF5' \
    'szl0sMY8es36r1Fg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'UpdateScreenshotsV2' test.out

#- 144 UploadContentScreenshotV2
$PYTHON -m $MODULE 'ugc-upload-content-screenshot-v2' \
    '{"screenshots": [{"contentType": "R70eNLHkVrEFd8xA", "description": "rWJuCAIfNBSHgpFN", "fileExtension": "jpeg"}, {"contentType": "X9fHr6WvBxmBvNj3", "description": "ktaDf9B22HGgxakP", "fileExtension": "jpeg"}, {"contentType": "Cu1HFaj6Vxs3GuA4", "description": "S1dS7H7yIS7b5TSD", "fileExtension": "png"}]}' \
    'WpCF1vyamjsEzwtL' \
    'PxK1os4qR8LaQzEb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'UploadContentScreenshotV2' test.out

#- 145 DeleteContentScreenshotV2
$PYTHON -m $MODULE 'ugc-delete-content-screenshot-v2' \
    '39sZTdFfC8x5aHLs' \
    'XHlm1RJTTy9JrNz1' \
    'K5M1qgFddYvifGHa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'DeleteContentScreenshotV2' test.out

#- 146 PublicGetGroupContentsV2
$PYTHON -m $MODULE 'ugc-public-get-group-contents-v2' \
    'wNx6yhniEHLbEQKc' \
    '0aUvrKXDIjYC4df9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'PublicGetGroupContentsV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
