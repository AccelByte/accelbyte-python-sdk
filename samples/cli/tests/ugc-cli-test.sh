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
ugc-public-get-content-bulk-by-share-codes '{"shareCodes": ["hLOqQGhCUr6iTrjy", "EgarAdNJOIG36I6t", "RbRcrEveMdAdiPKD"]}' --login_with_auth "Bearer foo"
ugc-public-download-content-by-share-code 'UVSC00PYeDcaggin' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'xnFIna3yddcbsPhe' --login_with_auth "Bearer foo"
ugc-add-download-count 'TH26IUJNvYuGRUvp' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": false}' '1A3PrIfapq5AAeMe' --login_with_auth "Bearer foo"
ugc-public-download-content-preview '4L3mDWORBVXTIIJM' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator '9XsYIIZxiXNMR9Bg' --login_with_auth "Bearer foo"
ugc-get-channels 'aWcFX3SUBhyoTsMW' --login_with_auth "Bearer foo"
ugc-public-create-channel '{"name": "PAxUMkawaGpAyrIw"}' 'Mif3BOdkocVTd4Bx' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel 'qGWV6mTJ0sQs6XNb' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "jvqhnUVLWu8olKdx"}' 'L6ozRmDD0jJvlfV5' 'OemPYdYT7DROCjtu' --login_with_auth "Bearer foo"
ugc-delete-channel 'zFMbAG9YI89hmguB' '8FOTjMLo4b9rIzqY' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "kEpstyVTBcrM8rG0", "customAttributes": {"rH0zcswwVeMK6MbG": {}, "IVIu8vvwLc7KY3uV": {}, "oJXTIMtpgkieDyF9": {}}, "fileExtension": "7lGdMiHKxbWCYzo8", "name": "yO2KTK9tmmOnYnOp", "preview": "as6ghP1y4Zi7s7QB", "previewMetadata": {"previewContentType": "lk44Z44B1GZgKg4u", "previewFileExtension": "KxaCgcGLuC3brWdT"}, "subType": "YCfHkIySok5DiXZt", "tags": ["LW87rGysryod3dNQ", "rmsApRA6HX3RwrKt", "2ecozL0TOg54vCE4"], "type": "8L5oLF6M4lNa4JUM"}' 'SHNgqRqCV7usamAN' 'kZlOX9Sfo95HgXqK' --login_with_auth "Bearer foo"
ugc-public-update-content-by-share-code '{"contentType": "hTPkwfLM9uSybRzW", "customAttributes": {"ek2gZvRrvr0n9d9l": {}, "vccKMLhrTrcBE2It": {}, "BS3KtKZWe8aoFzAy": {}}, "fileExtension": "BME74HUtipUWYhWV", "name": "1qx8CzPML52faXUr", "payload": "9Sk4lq2faBcAXXKl", "preview": "hvyH8paOJtxqMPpc", "previewMetadata": {"previewContentType": "VfRwNj547fH0XrKE", "previewFileExtension": "DpEY8VnocGAjci0V"}, "subType": "3tBf2jnHGKXphn50", "tags": ["c9tNLDljhZ2jxLRX", "3z46OCaGBeMfPlNo", "s4yBRjrERHEonAZR"], "type": "8GmEu0q1p6QCyY6v", "updateContentFile": false}' 'QAOHfZiGhxOdcuDX' 'SxSc3aZPV87pna08' 'gxefTYKhuxaEc7M4' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "P7UckSC6ePeN8i4G", "customAttributes": {"rFES9z7xueHpATHc": {}, "cee9GXhKcjmSEwdr": {}, "kEnnqKzFsLfYalUl": {}}, "fileExtension": "fwEQKjU7eHGebSVu", "name": "0LQ40kepEaC4dfiO", "payload": "MZfEhHr39pysFO3Z", "preview": "vc1BZG99LyvfvHEs", "previewMetadata": {"previewContentType": "JKQQewVLMUoAnaRc", "previewFileExtension": "Yp7FUjfIGaffoflE"}, "subType": "IByYqeKN0meGelYF", "tags": ["5wWaDhukU4khGG4v", "ZFTYnPkmSu4PWam1", "jxR7SETWjteoc8fg"], "type": "vZDDhoO05oKqymxL", "updateContentFile": true}' 'BECXvea7H1m2lJFR' 'Z3ZprZ60zMjhTHeh' '94TSenE5hCFkIf5w' --login_with_auth "Bearer foo"
ugc-public-delete-content-by-share-code 'eqZ18MH57l2Zsrh9' '0ETtYmGukz3Mnlrj' 'cHp6B8Vj7rXFgDnD' --login_with_auth "Bearer foo"
ugc-delete-content 'kdZ9bpjb1tdA3Qhj' 'CMW64f4XhIjSoTB2' 'NMKtezapPr2QEPx3' --login_with_auth "Bearer foo"
ugc-update-content-share-code '{"shareCode": "zTxBGtEJIYppuUSs"}' 'KoHw2hyd12uSE7BE' 'v3aevq6iohU1cg4W' '1IS3Uv1BpWoJBaqd' --login_with_auth "Bearer foo"
ugc-public-get-user-content 'g2FHcunsS1lnaO2m' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents '9vqjhbeK2qN8g6x2' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "PyYDo5R3hLiD5sf5", "screenshotId": "y1JsxJNGmyt0SQDU"}, {"description": "DoWBZVGLlkUetzCA", "screenshotId": "Wc9x1aMjgGim51T1"}, {"description": "07XIZRZ7tZdIs0xf", "screenshotId": "4czdt7zqmSKxOEQl"}]}' 'Vcx6GqsBq8vdhWVn' 'uYLgpZehK0G2nmyu' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "ViB9kRTcSQdTnNYG", "description": "eAfYFG3wSkHKufBd", "fileExtension": "png"}, {"contentType": "kgk0jS6rDWUwfhKv", "description": "rf2AaH4yCWrHSppn", "fileExtension": "pjp"}, {"contentType": "J3w3UNgIGj2jZtEY", "description": "T8sIPSE1XXPzySa0", "fileExtension": "jpeg"}]}' 'mu8ePWlQMVDXEHei' 'GTnwyEw6hIWDZrpP' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot '7rz3ISW510kHr4is' 'TKWjmv67nuHCXWfw' 'nwGioVwVzmmBVVFf' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": false}' '9I6nEwnZhsjwJeGw' --login_with_auth "Bearer foo"
ugc-get-public-followers 'aPSDMZz95OYKiqaZ' --login_with_auth "Bearer foo"
ugc-get-public-following 'D63xe5rruJVfLGea' --login_with_auth "Bearer foo"
ugc-get-groups '0ZtlzUcuHAXz0UV3' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["1MfuGaXsAuGsZaSH", "evO0TQNEI3kfabxJ", "WWSI1ECUo1NPpeFh"], "name": "UztXDgB7n4C97uAP"}' 'P8PATLpUpxeJlsBJ' --login_with_auth "Bearer foo"
ugc-delete-all-user-group 'T6Hh3OMjAjq2mK8l' --login_with_auth "Bearer foo"
ugc-get-group 'bSEEelxnb5QxWG2H' 'FnZlA6HKWW4fI1IQ' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["coBQELcNlZkqTZrK", "gXNwvm4e5GX6H742", "OixhtAoKiVm6URT9"], "name": "5XhnUcvWB28Mpusu"}' 'hhDJ5slzgiWZEtyd' '56LfxnbY97jjYgXc' --login_with_auth "Bearer foo"
ugc-delete-group 'hCbkXX26uEdCfQaM' 'AQuTKfC0I2kNjCMD' --login_with_auth "Bearer foo"
ugc-get-group-content 'tDMrentgn3Dhqciw' 'IeShF9RKb9vvxuJl' --login_with_auth "Bearer foo"
ugc-delete-all-user-states 'hXbWhbwPwToC6knj' --login_with_auth "Bearer foo"
ugc-admin-get-content-by-channel-idv2 'VwVnzaqSfJiQFC2g' --login_with_auth "Bearer foo"
ugc-admin-create-content-v2 '{"contentType": "Xoda0kg16yUSpSOA", "customAttributes": {"jHJWwfCjYwWkLob9": {}, "gKLqs2nEZhpByfHZ": {}, "inxNfgPAwkMBsznl": {}}, "fileExtension": "BUqnLT4AbGptKaWN", "name": "vPbpg7yrRvXfZ6rv", "shareCode": "gvEY3Hht1SwqTsKK", "subType": "Ko37NHDOQe91Ps3z", "tags": ["tUIV0dS6hIH9c4Vf", "kyrwpuXxbaERbfgP", "mi0eHkt1mr9EOIFg"], "type": "0dnWIYN2NVL70Iw1"}' '57g00jr9b8MuYmme' --login_with_auth "Bearer foo"
ugc-admin-delete-official-content-v2 'KTmBNvGYxEQdf3ew' 'oGGoY7xmFNAmjDDC' --login_with_auth "Bearer foo"
ugc-admin-update-official-content-v2 '{"customAttributes": {"vs78mcMdiS76YApG": {}, "J9ufwLYkqIgLuZS6": {}, "hsQryiEtOAbpeUNf": {}}, "name": "26UqkCfgCUYBn2xa", "shareCode": "OBdPF0JmX8qwU1cT", "subType": "uHHPB5S3DvPRCzBr", "tags": ["VUxmDOj3cvRFaTC1", "1W0TGTCm4fZWuk6p", "QxDQpKqxLGeMvr9T"], "type": "svcMQ7dBsaIecRxI"}' 'sZvD6rmzVr5XT1Nx' 'w0v1dMQ9Rrbk6C2c' --login_with_auth "Bearer foo"
ugc-admin-copy-content '{"customAttributes": {"VWf6ttvbU1PO6ApC": {}, "D2VXidT7w0Oc15N8": {}, "WXBPp17PAewqSm5x": {}}, "name": "3B4t7WQnp8jXZedg", "subType": "t5cyNe27HLtwtVOa", "tags": ["xgP6Jbct8puMybYG", "xD9IPmmsLmu3kaPj", "0O4zd8Tb7cUNGPTB"], "targetChannelId": "xiFFCrn7djjs69FT", "type": "FVGUVhvKhJCmeisq"}' 'l14mUHVbMPimNhcZ' 'sU3VAdMDcb4qlkiF' --login_with_auth "Bearer foo"
ugc-admin-update-official-content-file-location '{"fileExtension": "AamqvZI2KwjqPBiW", "fileLocation": "Xade41s3rH34mB2y"}' 'PlRpWjmHZAAvKTH8' 'MuqIg0CzkguwuJCW' --login_with_auth "Bearer foo"
ugc-admin-generate-official-content-upload-urlv2 '{"contentType": "7EEFB67AODbi9Bzu", "fileExtension": "pBsFpYc77GtRUcCF"}' 'eY5g4XgBsbfzqxBP' 'Ne8ae1Il4aAtEbu4' --login_with_auth "Bearer foo"
ugc-admin-get-configs --login_with_auth "Bearer foo"
ugc-admin-update-config '{"value": "IjGdqthRxTjQ7gkZ"}' 'EY8rG0q0Q2Qd2JzR' --login_with_auth "Bearer foo"
ugc-admin-list-content-v2 --login_with_auth "Bearer foo"
ugc-admin-bulk-get-content-by-i-ds-v2 '{"contentIds": ["bkF2I03dIjvBbA6b", "fbYaJCJjfk2TUvn9", "5FhO7VW3mbDVMDu8"]}' --login_with_auth "Bearer foo"
ugc-admin-get-content-bulk-by-share-codes-v2 '{"shareCodes": ["7t0ldWf7iSGIiKFt", "Wtn4Yr2svKM6pqLG", "Z0TBujELAUK6mQ5i"]}' --login_with_auth "Bearer foo"
ugc-admin-get-content-by-share-code-v2 'Zgbwwm5iGzXtcknr' --login_with_auth "Bearer foo"
ugc-admin-get-content-by-content-idv2 'gidKupvXO6aj4hCm' --login_with_auth "Bearer foo"
ugc-rollback-content-version-v2 'TC34jxW4pIDwdqXp' 'mRmut9H9XyWI8bp8' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots-v2 '{"screenshots": [{"description": "fQxRuX91uYmtrHJb", "screenshotId": "EGTUj7YjERL1rEQG"}, {"description": "02zccA8wvLsWUNd6", "screenshotId": "lPKvqDejvqklTSvD"}, {"description": "wuOrP9lzpiX0VuFp", "screenshotId": "Zum7izxe7NPzjOa8"}]}' 'E7wY76PxLv9HBEUe' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot-v2 '{"screenshots": [{"contentType": "89AwEw1HO4FnKtx4", "description": "XLKAmlDr19uJ3nq6", "fileExtension": "jfif"}, {"contentType": "erzVCcI8y3Cz0YqC", "description": "KUh5RD9vNAp4jinF", "fileExtension": "jfif"}, {"contentType": "Pp1yvfAHS0VgLu11", "description": "A3HTovFi4tPAGfle", "fileExtension": "jpg"}]}' 'ZpFIYeAg79HcLJXJ' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot-v2 '7mpVI6eTYAjdPlCi' 'QQC35cj4KyOVgvnW' --login_with_auth "Bearer foo"
ugc-list-content-versions-v2 'bfRJtsB7cUQZ2QUA' --login_with_auth "Bearer foo"
ugc-admin-get-official-group-contents-v2 'xJrINPXppPNO3Afm' --login_with_auth "Bearer foo"
ugc-admin-list-staging-contents --login_with_auth "Bearer foo"
ugc-admin-get-staging-content-by-id 'XcgwC3IN6tvKgLB9' --login_with_auth "Bearer foo"
ugc-admin-approve-staging-content '{"approved": false, "note": "S469k2hG0WKt4sUm"}' 'anYxM0UHZVNYzGMN' --login_with_auth "Bearer foo"
ugc-admin-update-content-by-share-code-v2 '{"customAttributes": {"IpWoSLkUrfuf4U3W": {}, "eYeA9t2ENKKWrFtH": {}, "Ii1CMgKAOG5iDcCR": {}}, "name": "5PbCvDLil8wj9cKM", "shareCode": "3Ar6MF35hCER4nGm", "subType": "WGgTJfHlJl4tHGa4", "tags": ["XfZcd9CVnGqMX9Fi", "eeEssWEUl07bhwnt", "CVqiYOJf5KwMZQjz"], "type": "vjSozv6CTRDl0zp9"}' 'CzHFwinkBNi4gvqg' 'l6TZ9TGVPmv34h6T' '7EsufmfxKYB4LM6H' --login_with_auth "Bearer foo"
ugc-admin-delete-content-by-share-code-v2 '6QXmpZ9X3fUSR1l9' 'xLPBsmAUrD9L1IiD' '6MlcEPhMDFzjHZ3s' --login_with_auth "Bearer foo"
ugc-admin-delete-user-content-v2 'IhzOx2CXKlvIomU3' 'pIxM9n8D2eLMe3lt' '9qfx2UDcgVE7L9FK' --login_with_auth "Bearer foo"
ugc-admin-update-user-content-v2 '{"customAttributes": {"6e0MrPc4vtxk9hVK": {}, "lG56HlzGr7XjdyRJ": {}, "unZPkp6ccIBnWyPw": {}}, "name": "8mj7gyQ7XdIszGRj", "shareCode": "46COPipH1MWVTHG0", "subType": "qHJCWEfOJpZm9yEY", "tags": ["WNGMy2pgSGSUOK68", "eqGJtWf1Ybgg8rdw", "Y9bmrvHmO07KNqX9"], "type": "LM2IwEsdOGBXBwnz"}' 'DX8v3xgC1Ge9PdbT' 'TAJ2Gp1r0sVZ6LJA' 'OddIL2l3hPjNDKv2' --login_with_auth "Bearer foo"
ugc-admin-update-user-content-file-location '{"fileExtension": "LWfXqjr8fS79En3w", "fileLocation": "YowBdkaZ3y6i38XQ"}' 'jLDRqkpiFK5BtiQ2' '72Uo9UBJWodpdwsX' '1jorcyR0x3YiHF8I' --login_with_auth "Bearer foo"
ugc-admin-generate-user-content-upload-urlv2 '{"contentType": "TGPRQBCgIs1Q2lzx", "fileExtension": "l0yF5m77TTh4gUoj"}' '8u2WRcLiEtzVlnkf' 'lfn7pHY48F1dl1q9' '2m3iRlfnBAk0CwiA' --login_with_auth "Bearer foo"
ugc-admin-get-content-by-user-idv2 'sR65yQ9ssuHdGmxn' --login_with_auth "Bearer foo"
ugc-admin-update-content-hide-status-v2 '{"isHidden": false}' 'ATdqnQGbqiqOkNeA' 'Tj7eGjodd7CcJUrI' --login_with_auth "Bearer foo"
ugc-admin-get-user-group-contents-v2 '6MAugK5kypNrp2nF' 'e9FmN86sK5LOq4ft' --login_with_auth "Bearer foo"
ugc-admin-list-user-staging-contents '5jGcMICPUYnfG6jl' --login_with_auth "Bearer foo"
ugc-public-get-content-by-channel-idv2 '9U4jReteIMgzISom' --login_with_auth "Bearer foo"
ugc-public-list-content-v2 --login_with_auth "Bearer foo"
ugc-public-bulk-get-content-by-idv2 '{"contentIds": ["CsodJrhQW41q2Osp", "CZbt3Uta5I0uGcL1", "koyHjCH5olYLETRp"]}' --login_with_auth "Bearer foo"
ugc-public-get-content-bulk-by-share-codes-v2 '{"shareCodes": ["ABAmO2EGvJ4UMS93", "yOxNInDByhnoluO6", "ti0QP2ssiJ66OzOj"]}' --login_with_auth "Bearer foo"
ugc-public-get-content-by-share-code-v2 '84O6tgohjtC7bzjP' --login_with_auth "Bearer foo"
ugc-public-get-content-by-idv2 'pucddXJ5zifF8y95' --login_with_auth "Bearer foo"
ugc-public-add-download-count-v2 '9anrNSleywHbHig6' --login_with_auth "Bearer foo"
ugc-public-list-content-downloader-v2 'IKWVZ77KeRWdECaF' --login_with_auth "Bearer foo"
ugc-public-list-content-like-v2 'GzfZ2hxcJ2Fnemn7' --login_with_auth "Bearer foo"
ugc-update-content-like-status-v2 '{"likeStatus": false}' '23SzUo4hNBDh9ZFP' --login_with_auth "Bearer foo"
ugc-public-create-content-v2 '{"contentType": "1OW0nXOErQPS4VsR", "customAttributes": {"oYIK69yg9ADCGiXa": {}, "Ls2xjHkinOD975nA": {}, "RHCmhNHSXuqIHsxv": {}}, "fileExtension": "aUoXDmwWsukxncuD", "name": "3QxCXMd00YBWCaVV", "subType": "mM45mfIZsWhkS476", "tags": ["dGGJwJ00UH197MJ6", "zU7JLMQyMWzYQCAa", "PJgoxGJoJaSzUtY4"], "type": "ZD0Xtb0U4pH16NUs"}' 'VY21NVIs7NRen2Y3' 'Ns0QJQeaWytPfds1' --login_with_auth "Bearer foo"
ugc-public-update-content-by-share-code-v2 '{"customAttributes": {"BYx0EaURydf8ZyyZ": {}, "eHAWGgJUbUJRMbkc": {}, "TglbU86FyOjApNHB": {}}, "name": "VfNOURcjY3YYT9oT", "subType": "ynmfIuBWgJTNFfM8", "tags": ["M0IW4oe8KDgy0xZf", "AcNg14Ws8TIP1LKi", "FQoLDvumfqrgSfnx"], "type": "2h61X9dN1MGRXBJ6"}' 'mVV7JS9qjNLwvI8J' 'diY3RRiLilmOGF6d' 'LLIeIVIjMcdlbdRX' --login_with_auth "Bearer foo"
ugc-public-delete-content-by-share-code-v2 'TGIrdNL5gJPqTAjg' 'qaTHf1ANTJ9Yk997' 'XkGOdC6ItxDT8p4n' --login_with_auth "Bearer foo"
ugc-public-delete-content-v2 '4XCFkD1AJLCwszbZ' 'xuHSgDOK8bjoF7bL' '2635KbtZTGJpqgl2' --login_with_auth "Bearer foo"
ugc-public-update-content-v2 '{"customAttributes": {"IzNXGTuQPIDpor7t": {}, "1aJLNNz6QIVC9Mfu": {}, "c8VOsnmnlVljdWYm": {}}, "name": "ELe74p38vumnxAnY", "subType": "BTxaTIz0jcgDI8Pk", "tags": ["z96vd80msqIm5buf", "nBqrpLeqhwVhjnnj", "KMEmtbiWsAQHbMrK"], "type": "Yi0Zxs5SWCqZXHLL"}' 'a31oQf7BULnZDhut' 'DM6BqguqD5xxGxBW' 'tnTKUe2znsqPzPkw' --login_with_auth "Bearer foo"
ugc-public-update-content-file-location '{"fileExtension": "CBo2SwCUsTag4MLA", "fileLocation": "o3m61P2xaNfmn8On"}' 'b1a9gMz0F2UBRmMh' 'AbUWmFhdYLWzMuv3' 'zkUY0n0BAZkwbYkB' --login_with_auth "Bearer foo"
ugc-update-content-share-code-v2 '{"shareCode": "LyO6A0FqfhnaB3Yx"}' 'KNdOTacCcJfIfXsh' 'uLUk5WdpxjZx5noX' 'PhPUTKbonoucNmzw' --login_with_auth "Bearer foo"
ugc-public-generate-content-upload-urlv2 '{"contentType": "OZOK56sDkci5rZ8i", "fileExtension": "MlOuksQJCiRFiZWw"}' 'J7NrTb1XTB9YQzUJ' '9XlYJ8BzP6EUmUXG' 'M5anIloyj9lhbvuQ' --login_with_auth "Bearer foo"
ugc-public-get-content-by-user-idv2 'dW2jwKUckc794ryY' --login_with_auth "Bearer foo"
ugc-update-screenshots-v2 '{"screenshots": [{"description": "91lX8DD4MYXlrJ81", "screenshotId": "lHvv9rqvEoM8YmVj"}, {"description": "AkO3HKsEp6KlqwW4", "screenshotId": "djrexcbHdEtoQvpV"}, {"description": "344RctmTozCi8HeV", "screenshotId": "6jbalHmqBBfi7sSF"}]}' '5BoGiTCVsXsygWbj' 'E2opXtdsJQeJ1too' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot-v2 '{"screenshots": [{"contentType": "0qvxphTLEEBGTtZy", "description": "TjdKNKgYazujsmSm", "fileExtension": "jpg"}, {"contentType": "nNuhoJM3WWPvvCiC", "description": "f33ViEdqQpoGkUWN", "fileExtension": "jfif"}, {"contentType": "NfHRD3V15QaGGL46", "description": "LuxJF3sbeqWBdQuW", "fileExtension": "bmp"}]}' '5kgSZZNUHbIT9szA' 'pmWJO5vzzXZj08a6' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot-v2 'K1XRVfriSpPFnZBJ' 'ZkDnEiyfa2LrnpZx' 'NnLRH36bqS2oFY76' --login_with_auth "Bearer foo"
ugc-public-get-group-contents-v2 'PU1AziBOHEAj1cT3' 'u6Zc2FbrTFznTgDI' --login_with_auth "Bearer foo"
ugc-list-user-staging-contents 'wZIRWf6T3by2kYSC' --login_with_auth "Bearer foo"
ugc-get-user-staging-content-by-id 'dnFKLc0xcTjqjdcE' 'fU61OJYMnW49rWyn' --login_with_auth "Bearer foo"
ugc-update-staging-content '{"fileExtension": "p1ck1vT90C6o86cS", "fileLocation": "RL9cgbUmulhe98oa"}' 'FKlQicdrxVhrtwSd' '9QWVMYz7TU1TsxsC' --login_with_auth "Bearer foo"
ugc-delete-user-staging-content-by-id 'hSclSkb5aBi9K9zy' 'v6gFZXI5nXJ7hLi6' --login_with_auth "Bearer foo"
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
echo "1..161"

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
    '{"id": "HweweRmyo91dIn7Q", "name": "qXBDXJcrqKmXDwoE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "V6tCdrxw1KOPhuvH"}' \
    'uYrGWDK41uMOC0mR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'vSoaGk4ktF5wnJDg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "9Q3WXiydCOInVols", "customAttributes": {"r6CHmj763vLwtYEJ": {}, "TSiXjcY5ZPkv90ly": {}, "KSTWLxSFZ0LpupEi": {}}, "fileExtension": "5DbkVs3qFTi1t530", "name": "Wj1WfzIvc3VlSXrA", "preview": "3XUGud4tVjmxEf4X", "previewMetadata": {"previewContentType": "vVhFJTxFHITBg9x4", "previewFileExtension": "unq3eOMHIKeTyBG5"}, "shareCode": "dCUoExnKfV3869IN", "subType": "4V1OdhH4GVU7Exlk", "tags": ["mc4xYiLjLyZrXr9B", "htzn8jAdTn6xBhrc", "iryLm67rkadH5Y41"], "type": "SLjCPrFa05Xl5TPC"}' \
    '5GODS44bmm7jPdKL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "ddfdsUqjXVzW1Qqx", "customAttributes": {"nWR5sheLgsAF4ctv": {}, "5guycGiq9j2EyIkn": {}, "fLDpgHnMOn8nc3gU": {}}, "fileExtension": "Z8ZFyyEr0KBXuJBq", "name": "K4QtEydPWLPBYiR3", "payload": "UbJc1ZYapx7C477e", "preview": "tqgfOJDUT0uKAPrA", "previewMetadata": {"previewContentType": "Rya2IMlNiXpF4qvs", "previewFileExtension": "UUpHqi33TcBGkc0H"}, "shareCode": "jUcnkpU9oVzl2kBu", "subType": "LFXIeCEKZUTz3GvC", "tags": ["AZ5j24acYHbrryHB", "6GO9zP3FaepA3b3Y", "J9nJM6vtT27xv85K"], "type": "5MU2qmbeqaVemINd", "updateContentFile": true}' \
    'wOtEuWBSO2jJepUn' \
    'EEgja2mIE2kLTnJw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'c5XmkCuL5W4tKt6G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    '3j9LYdG7xVPqBqe9' \
    'RDQMBSYAFLqp8PF5' \
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
    '{"contentIds": ["hCcoukWpnbz4ys7j", "6lxuU3u2HEG0qfKe", "gvFTD1sPykS8YLmw"]}' \
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
    '{"shareCodes": ["tYgWGcA0h4G1LZ1H", "aX5UBMbsF44VTsLD", "Rzdq22cbnyK3ggFD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
$PYTHON -m $MODULE 'ugc-admin-get-user-content-by-share-code' \
    'h2kaZP7pnnVfxPwc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    '259HF9ejHaILQruA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'uYyJLYGqMv824ouS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
$PYTHON -m $MODULE 'ugc-rollback-content-version' \
    'gkpK70uJmUL0uzEl' \
    'ixc023dIvDiA0tQW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "lHwBcTtztx3VAl6t", "screenshotId": "XFbnATCzUOIzVcy9"}, {"description": "k3ie64Vnwa0ClGQJ", "screenshotId": "ultJe32AiwKadEoI"}, {"description": "VmprwPsa9YD92CX0", "screenshotId": "rITajpwHITGeHTnq"}]}' \
    'RbzBB9ZFgJbQ3Fj1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "umx4ItzkMJ7cudf4", "description": "r916GPrhn2etVIQv", "fileExtension": "png"}, {"contentType": "J80YJ41U4ooQ980y", "description": "wmg1pWpWit1QC7FK", "fileExtension": "bmp"}, {"contentType": "yIlAwjTZdRZJJzWZ", "description": "wvTX2bamSCvX1nwv", "fileExtension": "png"}]}' \
    'vK9gW596FwBNrFXt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    '3TAuKBwBcD12ae6r' \
    '3hHwya4NpdOzg3hr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
$PYTHON -m $MODULE 'ugc-list-content-versions' \
    '6ucHf7dbh2iKNUl0' \
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
    '{"contents": ["qJqzoKMRMG541PAi", "NjULsx4SnKNXLMUa", "DSwwQlnNRZJHBSB4"], "name": "fZWEFIZs28Ff1kZp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    '1Zktx3N7WNMYIfcD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["KbLu8pnK34oA1keY", "XJvtggDdXjbdjMBa", "hFZZGMTcqnWrIprO"], "name": "v0BJ9Sgl7H1sdH2R"}' \
    'IJz1eI7Q5pu9PutL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'f6IrvZoBGQbO4S3r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    'URGWUzPAE6SdV4D5' \
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
    '{"tag": "jftRl9rZmtQUvro8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "TWwXWsz9TVmdMKEo"}' \
    'hKzuMYDUTLBeCidX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'juGgx8ncXejmeZtz' \
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
    '{"subtype": ["T0qj0ltsqfiZrthV", "vyX0OCKDJE3RMUdd", "wSSgxCu8zru1DhGA"], "type": "YOHR5BWa9VzIkaQE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["l1iUProNB6hI6IpG", "cToWgFvdRhG9NwV3", "zDuqVlVTypcYPK8I"], "type": "xrSZuxWl0Je4fJIy"}' \
    'FAm3DQht4JwnPS2u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'rJqerobWMZGVL5KL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'TxahWlS6XdBaKSLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    'gOOPXM6XTUh2dJ90' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "yqHDNacl4F9G6Dl5"}' \
    'TFwBY6HKXAblkT8V' \
    'GgSH8MGZGwiVj7eD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'Taka9ABfX1IByPEO' \
    'uPhGspRi3bhPQvBB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
$PYTHON -m $MODULE 'ugc-admin-update-content-s3-by-share-code' \
    '{"contentType": "JI5JxytpcubN4AUU", "customAttributes": {"PFPscZsXeJOD4DMt": {}, "qfIGiGJovgWSRxZ8": {}, "N4UQ2fg3V1o2x0hL": {}}, "fileExtension": "5DuBDqMyIAzWze94", "name": "MEdJFAy2JTllJkRG", "payload": "B8jqJEd6eqqsBVyO", "preview": "NV0JRtozI0jpliCF", "previewMetadata": {"previewContentType": "Q6WgJpGPigdc5VyC", "previewFileExtension": "4qvWjVac1cQvSxgT"}, "shareCode": "NIUzxDgBlIbuzm7D", "subType": "zJ20NFRJIhFXR2dY", "tags": ["prPmbpuptECGd5cd", "XC2Sesc6y68whNBY", "l9iCqfW6rqGOQny4"], "type": "ij4ysYPonb59gQff", "updateContentFile": false}' \
    'cngEpTnRUQr3RLOM' \
    '1vEx4gqDY6jwyKRx' \
    'hkLe5zohg9s9utRQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "t28b6o3K0COF74tz", "customAttributes": {"6aeXZOYwbwjMNdxK": {}, "WlBfnRyFS0Ed7gTM": {}, "5AVrtBQiDTcNnZa6": {}}, "fileExtension": "Zuxk6u6HXXdiC9ZD", "name": "j4E4mv12FNXypoOL", "payload": "l13j84P0KqirJ4Pk", "preview": "MFtsnFfz8Ew0X8fB", "previewMetadata": {"previewContentType": "uBSKLSQ4GvLtz50D", "previewFileExtension": "3rpBfBovqLwXBuT3"}, "shareCode": "0EYeRj17xGhaBKoU", "subType": "fiHjGmCyPsKCJTv1", "tags": ["ic9gvagF2cSuztsJ", "5tj64gV7nmDk29mc", "jSuz9vbNStqPtQmQ"], "type": "N6eKAGiZFCftT0RW", "updateContentFile": true}' \
    '64j0HUONscofwYLQ' \
    'cDvkaEIIPoJT83zE' \
    'GXmVBZLyrH9J7Boy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
$PYTHON -m $MODULE 'ugc-delete-content-by-share-code' \
    'smaORLkP5hc2Fh04' \
    'JTsqDTynCewqJlig' \
    'LlRxOelKykICRxF6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    'HtlER2txs4qrNARA' \
    'Tn6KXOutlYBbLhL8' \
    'KXx25FZfQIodVBqQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'sBpCJBIXLGYcwWVR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'K6UKk5ozrXA4HZHN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": true}' \
    'biPJ9j4vxmbH3rVa' \
    'auufxkPHElug48Tg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'fNu0rqXUOyToLPIR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'EGIKlJt3EP9kKwkE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'NQ8VOHGwbADMfuOm' \
    'h0lciRhVZ2DeoODX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["MzLSrzoiBnYi5UWs", "3tYlYeMoCimJySoc", "RvUWDOrFZKPNoN9A"], "name": "WtLK9TFgi9j2XMh9"}' \
    'WpifqjNjLOtNQts2' \
    'yxf6MLZJ2jZfZbpT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'JezzriCDWXT59SRu' \
    '0YqUxKDc84OMIzvT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'ScdbKBsAyJMz4ILN' \
    'DvhB4Eoes9a6XaJe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'RbzTPwD3jxF7vxRU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'Y0ilrNoFT98SgtJd' \
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
    '{"contentIds": ["4Z5f8nfaKqdZFLbZ", "EHxsDxeR6d7r1SQw", "80JfMpPrSqYypRUn"]}' \
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

#- 62 PublicGetContentBulkByShareCodes
$PYTHON -m $MODULE 'ugc-public-get-content-bulk-by-share-codes' \
    '{"shareCodes": ["q5o4ETeCUYG9ccTt", "7Wxw8OQ13t3uTw6z", "QuoZcXQpoTOxe8y1"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
$PYTHON -m $MODULE 'ugc-public-download-content-by-share-code' \
    'jorNsg9ZKYCKoISy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'XtHzoWGdYohxMp3u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'OQIybqWfG9BJ6FVK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": false}' \
    'n3tMD9UT67bOwugF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    'Da6wUQvehKqwCh86' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
$PYTHON -m $MODULE 'ugc-get-tag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
$PYTHON -m $MODULE 'ugc-get-type' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
$PYTHON -m $MODULE 'ugc-public-search-creator' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
$PYTHON -m $MODULE 'ugc-get-followed-users' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
$PYTHON -m $MODULE 'ugc-public-get-creator' \
    'XmRkCEcfHDCdl59W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'p9A3tXGve6DdK6uv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
$PYTHON -m $MODULE 'ugc-public-create-channel' \
    '{"name": "g8f2cIoByk9fxtvs"}' \
    'geAxo57nKAbZpsbJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    '4Iu5KJ0ynxGBlacD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "CdFe8ATUqVxcSthr"}' \
    'pnMUBsnUfuQIcSbU' \
    't5UGkInFGpuUsdtq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    '4dOwNESzCEW9dUVh' \
    'ZjLftC3sCS8CpLCq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "PD9CeDEdCnnL6Kt1", "customAttributes": {"Bjj3b8QM8Rr45ULq": {}, "XQgvwD3PsKDJiWxQ": {}, "BwaS7rDBf2S54phb": {}}, "fileExtension": "dyGDt47f9GWRlE9h", "name": "qz6rjDNo4rhjxUdM", "preview": "M83WekqfWv04vvn9", "previewMetadata": {"previewContentType": "bk5qr8qs2mqtnGAq", "previewFileExtension": "XUjNypF6MMqWpdEJ"}, "subType": "sPoaIbYz8cK5jlpJ", "tags": ["dre5ur6yvWJDdvM7", "T7PX2vamIRZHzsIY", "OCUoiCXNjrdQL2jd"], "type": "x1eIba1sB0HsJ06D"}' \
    'zfbzRYt4OVUyumBe' \
    'IqdQGZC5kM03HHij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
$PYTHON -m $MODULE 'ugc-public-update-content-by-share-code' \
    '{"contentType": "sQRj7N8IAjmsonjj", "customAttributes": {"0ZR50BQ1U6aFD3O2": {}, "kXQSc58zgZVl4gIF": {}, "7v3qbZu9M3OxqVAT": {}}, "fileExtension": "4H1lRZ9Z1JBrHRzE", "name": "OtIxzPqb6n73m0ji", "payload": "aDH86d9rsKgzCsMu", "preview": "lpB8HZUtVVaJCiLg", "previewMetadata": {"previewContentType": "KOwrSfWhT5B4Wedo", "previewFileExtension": "pzwSluBtRFPKThyG"}, "subType": "nbjmPDKFS6u9FHuv", "tags": ["1M3qfch4SqIV6LQP", "HlaeYl4csFq65cU6", "6yJaj4ovoKWE4EW0"], "type": "sw8v5peiuxoBJATa", "updateContentFile": true}' \
    '2mWAOYksczxBS0OB' \
    'Ca2vWadLmQtYKmEM' \
    'zicbuL2S3RiW8dLT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "CBfGUdVEdvdQL7sV", "customAttributes": {"wcZ2PofaJoSqtrEO": {}, "qxH46fRTSZoDdT0f": {}, "efo74eg3Nt2c0r4G": {}}, "fileExtension": "qF0NHglOVuNZ9LzN", "name": "eJnBurh54CWbYb0P", "payload": "ebyt8b4DGscjwriz", "preview": "sFUgYwbaLvqvQ2Nb", "previewMetadata": {"previewContentType": "mDITuymTBjn3d2sF", "previewFileExtension": "zMS3QaVjZF7Ax611"}, "subType": "5Kg9U8vrQJXQxoIb", "tags": ["Vi2CLEk277Ivjj1A", "647XQ3koaAfZIim0", "sFPm1YN27bojDVaZ"], "type": "Lpx4kEWYkO6KrKUM", "updateContentFile": false}' \
    'PZTlMlUvFEiGprcN' \
    'SQ9kEeXBZ6FVrBzy' \
    'hyhoS6a9oe0JaXFp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
$PYTHON -m $MODULE 'ugc-public-delete-content-by-share-code' \
    'ff28uYbe4Cf2HEHv' \
    'VevhISjbtBJUK5fE' \
    '3OufPSX3PdOU2V9y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'w94oa8UJ34TIedV3' \
    'HyoX4VnO2LpBU08w' \
    'fnlHBXFIqFUmgUSM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
$PYTHON -m $MODULE 'ugc-update-content-share-code' \
    '{"shareCode": "M5au8GJT0mkVPI6z"}' \
    'Utf3QaJPGrTNcXXT' \
    'UIggoH89QNmI17UD' \
    'b19R6H7r1ta3m7jK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    '5pxe82pgFiAS6piI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'zmc8rKrKEPGSAcon' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "g6eNERUf8kjci1Ct", "screenshotId": "ccv9Gv4tOcbnuCqf"}, {"description": "0lm6WBkIzjoSV31t", "screenshotId": "vmMB6jzrpRGESmoo"}, {"description": "HiCV4GUOnXpapXQG", "screenshotId": "RakUbcG7PcR4eiU3"}]}' \
    'Idi55jNrGNT2VHTK' \
    'uIT5FwwHj0Ur5F2P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "WGTTD81xhNP4t6kY", "description": "BUjyXAn3bWQF6QcA", "fileExtension": "jfif"}, {"contentType": "Rv6EJtl5xWnsb8oW", "description": "q94RImNWVIJnhhwF", "fileExtension": "jpg"}, {"contentType": "i8ZFvGcV8DY0XOkD", "description": "stxZcY1HgAnZV4IO", "fileExtension": "bmp"}]}' \
    'QNW8Yc481dYdvGxJ' \
    'AMDRA1LF7jdWlekF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'wO94VBCV9qJhWva2' \
    'FPBujX0geYCpGJM4' \
    'sqsPNJMiZXXOFwmG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": true}' \
    'AvNF0Z0GkwxUNYyN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'wGiKrknH0Y5mrQgL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'C6D2qsFiQHglUQMZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'i5WjMZfOadpgegCU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["jTdi1Ehr8OtqpNJ9", "R8TuNy4ejmVA3vMC", "sGyPd12B8QNUz0hF"], "name": "FNbH6j2W4roZM2UK"}' \
    'AXEEsL5D0oiFchQn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'Veq3g2AB2WIRUQma' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'uIY5HXCZ0W4XmWP0' \
    'HzSdiylLhVYszm8x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["Y33OQbumu2QHLyZN", "uysyM4OfCzdQCXMA", "Wnf87YPNOe9Eevf1"], "name": "fhMg1E2k7QLFrVgt"}' \
    'X7y0fPOieDCow2zX' \
    'yFFVpM87yqEwEacQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'MTlqN4LKkxJ5v3SB' \
    'afnKNiMPbFkFGA85' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'W3HJkqgS2B37wwoP' \
    'YOHiIsxmsLBPBJuN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'LnWRrtW870qD88Zc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-channel-idv2' \
    'duZSe7W20UZcDaiq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
$PYTHON -m $MODULE 'ugc-admin-create-content-v2' \
    '{"contentType": "0nEZ7PyhqFJkDClO", "customAttributes": {"sKmfsgJdmzsDPsWh": {}, "1k0cQ08NG6dX2TZk": {}, "il67kRngoUa83ECh": {}}, "fileExtension": "1gqPeS193TNNzot3", "name": "sVli3GN2XTrFibRA", "shareCode": "hzzEWzWlTY70qdgJ", "subType": "RvpZrSpWX3KEe2Bj", "tags": ["V00ReCXFffjJJxlg", "jzIhpgOoIOD74V21", "HWDAfvXwdxbyp4HA"], "type": "PbBbNPStVBUpKgOs"}' \
    'sFkz0F36piDYXeHZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
$PYTHON -m $MODULE 'ugc-admin-delete-official-content-v2' \
    '7FHls3nyvconqbHQ' \
    'qKLQKe3xmj6s0Gqs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
$PYTHON -m $MODULE 'ugc-admin-update-official-content-v2' \
    '{"customAttributes": {"Wncp5LrqbiKudv9z": {}, "75SzoCV8ZMi2o1nR": {}, "482D6gNClk9c87ho": {}}, "name": "saPFC5zBW3ZgVZCj", "shareCode": "9ObVGT0Scwl4kNmC", "subType": "i15XTJTgCNNH7RtG", "tags": ["5Xmo9Q0Wb07N17fk", "xZSc6VbE0AGcekjM", "NHuPXtz8tXxrmzaf"], "type": "MUguyDoN91uc28Ho"}' \
    'SpGt1g0GGbT4Hf2P' \
    'PKOldkbgX9CWJKwX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
$PYTHON -m $MODULE 'ugc-admin-copy-content' \
    '{"customAttributes": {"XSbv5eg9q86IaDFj": {}, "jx6uZerWbtwTX9gN": {}, "RByjbE8lOLAfTXKL": {}}, "name": "zbrddqcKLa7LevxN", "subType": "HOSEhQRZIp693lRw", "tags": ["tc43atCuCFxbfbz4", "aQERziPL4dHhOqG5", "KDdUvk0LEi26Ls7m"], "targetChannelId": "jRxNmvvNtjJNQepU", "type": "TGhwlY4lPzlsCR5r"}' \
    'VsyfcH7WjP7HuGz3' \
    'b5WAEvdRF9bqMj4r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
$PYTHON -m $MODULE 'ugc-admin-update-official-content-file-location' \
    '{"fileExtension": "o5B19VE838c7OydV", "fileLocation": "w0zCqoMZvpIOO97D"}' \
    'mQ5ZOzx6iCJTu60I' \
    'ifzMhkk5PxsjqbCK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
$PYTHON -m $MODULE 'ugc-admin-generate-official-content-upload-urlv2' \
    '{"contentType": "pMv2Yky9DYkD2sIl", "fileExtension": "lFtBtXJKG3rqBmIL"}' \
    'htWm8RQvRUbUDSie' \
    'fGEdLucrtO2gCQD0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
$PYTHON -m $MODULE 'ugc-admin-get-configs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
$PYTHON -m $MODULE 'ugc-admin-update-config' \
    '{"value": "57DrDlgC2nzS9SiG"}' \
    'UjVAw4v3q6JRHcn7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
$PYTHON -m $MODULE 'ugc-admin-list-content-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
$PYTHON -m $MODULE 'ugc-admin-bulk-get-content-by-i-ds-v2' \
    '{"contentIds": ["KaoCEkRdo6qHYIZW", "nXqQ1oHFJ9Q0vqsL", "9SomqWsGA76yxi0Q"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
$PYTHON -m $MODULE 'ugc-admin-get-content-bulk-by-share-codes-v2' \
    '{"shareCodes": ["zZWfmP2sx0KO5bEJ", "aPnAFjsodyJQVVBr", "ShGbIIuqK8C403Hg"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-share-code-v2' \
    'oXCR6XOMXwKdfqk8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-content-idv2' \
    'T4QHK30EX0FclpDl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
$PYTHON -m $MODULE 'ugc-rollback-content-version-v2' \
    '5HsuracO5MnjnxD1' \
    'OXkxShFVQTRekLfj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
$PYTHON -m $MODULE 'ugc-admin-update-screenshots-v2' \
    '{"screenshots": [{"description": "my8zosRCRgVwbrQK", "screenshotId": "mb01yA7U7dGMjupZ"}, {"description": "kZQY8CNyT4k3DIbf", "screenshotId": "T22G5NpE130YWSgx"}, {"description": "pKWtdtdtVW9anENm", "screenshotId": "xb9e7vXZV3ig8Jg5"}]}' \
    'VByeI3ycMcYYBixK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot-v2' \
    '{"screenshots": [{"contentType": "JXCISQdwec1m8Bus", "description": "V9tUh74KVo6Xqjz2", "fileExtension": "jpg"}, {"contentType": "lxNf09pefgFIiJss", "description": "ShBKsQjXvfQgQDt6", "fileExtension": "bmp"}, {"contentType": "fZl4VuY6rsZyo6CB", "description": "RRnoOikIxXKKIR6k", "fileExtension": "png"}]}' \
    '3l2gAJOTCbx7J3gN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot-v2' \
    'LIlTk3Bpclrk4hIR' \
    'n0znIKzAEAHQpBOg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
$PYTHON -m $MODULE 'ugc-list-content-versions-v2' \
    'HEP5l94s7CbIJ7eH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
$PYTHON -m $MODULE 'ugc-admin-get-official-group-contents-v2' \
    'nVWOboMkyB7FTexs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
$PYTHON -m $MODULE 'ugc-admin-list-staging-contents' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
$PYTHON -m $MODULE 'ugc-admin-get-staging-content-by-id' \
    'OZ0b2p3b63KrcwIc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
$PYTHON -m $MODULE 'ugc-admin-approve-staging-content' \
    '{"approved": true, "note": "MhGy83Xit6boOLGC"}' \
    'cg16DqwdQPQ9HkSS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-admin-update-content-by-share-code-v2' \
    '{"customAttributes": {"V8e1MgTTLS2FgarY": {}, "903INGIyEfRBEj7q": {}, "ms9AGQExPhgr9gGf": {}}, "name": "C0GjvpgJfuBs1Vpq", "shareCode": "n47GVghTH2wToOnq", "subType": "9U5lyW89Xwt3wmRT", "tags": ["rDCjhnKvsHezWTqg", "YPixtHk6lWq6tEeU", "mU96FLEak0mJqjRY"], "type": "ldcTpdeCD9XPRi4b"}' \
    'AQL7VE2wL8Y4JFVU' \
    'dzA8bvXlDhG7Bror' \
    'bKIKuOXJPm5ztrr0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-admin-delete-content-by-share-code-v2' \
    '9CDA8Ij5bGKSuopW' \
    'QbaCvdPSq8Z27Gpv' \
    'HCDx55JZ5z6gujpF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
$PYTHON -m $MODULE 'ugc-admin-delete-user-content-v2' \
    'zlPspQD9IRIpDDub' \
    'ntPCFxfeoW2NdSWz' \
    'OXjO1NQUqWHBW78X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
$PYTHON -m $MODULE 'ugc-admin-update-user-content-v2' \
    '{"customAttributes": {"REZCiTNAxq26gZrP": {}, "qCsSDspvgM16sZ6r": {}, "jnkH4ExObppC6CMY": {}}, "name": "Dm5ge659UDEOF6gp", "shareCode": "5UfmjtiVbqJnZcrq", "subType": "rPye7fCwi7Il2wIF", "tags": ["lHm9N6owMHMtJy1O", "qn59tEGm9NYeUT5P", "0nx8TqSZdZ5C8mFI"], "type": "9TnvzEqBNMF9CZvP"}' \
    'xT5zbreMc9fBoU3R' \
    'HNDFjLKFrepy56eW' \
    '1kmb15QeIQF51c4M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
$PYTHON -m $MODULE 'ugc-admin-update-user-content-file-location' \
    '{"fileExtension": "qJzDSvELgBe6dboS", "fileLocation": "dhkBzAzPkt1efGJe"}' \
    'JaxyHYutgXucx85v' \
    'HA009FAb21jxeWXk' \
    '80y9uxgVLGgK8aVS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
$PYTHON -m $MODULE 'ugc-admin-generate-user-content-upload-urlv2' \
    '{"contentType": "CN6oCETQ8gIDRdD2", "fileExtension": "wwMXwKVXGPhEJsc7"}' \
    'rZpxaPHc9r8eToFm' \
    'kHJ6BPOKFLxIwKss' \
    'w647YwDudnGRufOU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-user-idv2' \
    'GfMjTU226l07jPlc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
$PYTHON -m $MODULE 'ugc-admin-update-content-hide-status-v2' \
    '{"isHidden": true}' \
    'aqYM7YfBmhjI9Y28' \
    'qVceS9UX48dKPCFU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
$PYTHON -m $MODULE 'ugc-admin-get-user-group-contents-v2' \
    'IeyYEymNXzNX6TGh' \
    '4UdEweeBsJEvBbAv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
$PYTHON -m $MODULE 'ugc-admin-list-user-staging-contents' \
    'Cmlh6Z1oz9BaixUU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-channel-idv2' \
    'vmzbajE2gjooiDnc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
$PYTHON -m $MODULE 'ugc-public-list-content-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
$PYTHON -m $MODULE 'ugc-public-bulk-get-content-by-idv2' \
    '{"contentIds": ["1NUb51lEgUwQ9tkW", "aMOH47CAT7cBP091", "8JaEBQBP766LUnBB"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
$PYTHON -m $MODULE 'ugc-public-get-content-bulk-by-share-codes-v2' \
    '{"shareCodes": ["R84iAO7sBQt6YJ2t", "WwF7RnP1oK3c4RVf", "jB0zi3XrYZUiN24o"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-share-code-v2' \
    'l1qqbalgizL97ycJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-idv2' \
    'V5YqE2myQzl7X9fH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
$PYTHON -m $MODULE 'ugc-public-add-download-count-v2' \
    'r6WvBxmBvNj3ktaD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
$PYTHON -m $MODULE 'ugc-public-list-content-downloader-v2' \
    'f9B22HGgxakPt7IY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
$PYTHON -m $MODULE 'ugc-public-list-content-like-v2' \
    'zaZUTmvsEzLPnnGs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
$PYTHON -m $MODULE 'ugc-update-content-like-status-v2' \
    '{"likeStatus": false}' \
    '7H7yIS7b5TSDRIoM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
$PYTHON -m $MODULE 'ugc-public-create-content-v2' \
    '{"contentType": "g7Dc5APzfzXDELJF", "customAttributes": {"aIaEMW5bhJyL72WD": {}, "yhBsCCbnfihnXKxG": {}, "xaupnTTq9ihZkvFK": {}}, "fileExtension": "fSHQh8I9xk3sFl0c", "name": "buCRM69XKkLwioRa", "subType": "KnWhlh80BhYe2fJD", "tags": ["S6T75Q4ulonMFjmY", "qE1wJhfogWg2Apm0", "sUy18aWn65Co0vdC"], "type": "k8so6JSaZAIadKDE"}' \
    'ZywonA2SrEdN2tmG' \
    'uX6r0gBVUUeKKlPK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-public-update-content-by-share-code-v2' \
    '{"customAttributes": {"tE6gnYxmkmCWbs5q": {}, "ugklBUS6uwWrCQt8": {}, "6Jrg8tLAJWpcyNkU": {}}, "name": "vqn6eXr6FNbKJ05O", "subType": "rya6LSSUlugIAknX", "tags": ["cSaVYcAYp7qSiDvs", "fMUOpWv46sXvpOjr", "pRo4mYrCeQUnYoID"], "type": "2UqO0iAXA9dB4ib8"}' \
    'HDOJ8TNiP8KgEAj3' \
    'dbRTI0i6dO3zkbDs' \
    'eh4tJdoGcwMBmegq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-public-delete-content-by-share-code-v2' \
    'VUaWMJBjrV0p9A7t' \
    'cHrV0MbJGr4drgkD' \
    'uWS05m0pGzazM2BU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
$PYTHON -m $MODULE 'ugc-public-delete-content-v2' \
    'XnzUEWTiKMJAf6Ag' \
    'biEDMfCckWogE5gc' \
    'fF8AMGZ2FBS93Mg6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
$PYTHON -m $MODULE 'ugc-public-update-content-v2' \
    '{"customAttributes": {"TKwdRMraDLrwh3d0": {}, "ykRGkgqUNIbJMJ9A": {}, "BbKVWO2YEDiqkwKb": {}}, "name": "pdk7wlDngNiPPjpS", "subType": "AlZwFGpea5ObBB49", "tags": ["Km4ClIQmkIdLCvNh", "Z6P8aqZ2yfrC1V7Z", "pJZPHCMqvcYmeDLY"], "type": "Ezs2SQUdKr6vgqkj"}' \
    'ycqclNlBORlC8Zkj' \
    'sxYtgxplHTPLzynj' \
    'FZgF3erw7UsyHq4b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
$PYTHON -m $MODULE 'ugc-public-update-content-file-location' \
    '{"fileExtension": "Bb0n1JhPUS8BRPGV", "fileLocation": "9n769zLJdKMexeJc"}' \
    '7NvgTSgKjCxZjKf8' \
    'NA4cGUaDfy9XnH2r' \
    '0EKrk5VlnKsWCPcc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
$PYTHON -m $MODULE 'ugc-update-content-share-code-v2' \
    '{"shareCode": "AFn5CEPoH6opK5DS"}' \
    'O8JyX4IE1z3rDwZ1' \
    'HKsOpyq8agQuz86n' \
    'c6jLF9DIW2ncJJKp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
$PYTHON -m $MODULE 'ugc-public-generate-content-upload-urlv2' \
    '{"contentType": "qmgvUTr8XAtpOqUQ", "fileExtension": "xzqJZiWi3KQffT5T"}' \
    'n61A1xW6okIqmd87' \
    'ir9op4YfGTno5oHz' \
    'qY3DgykA8zBJX0rk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-user-idv2' \
    'OHUkY5aSlqhYoSXb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
$PYTHON -m $MODULE 'ugc-update-screenshots-v2' \
    '{"screenshots": [{"description": "n6l5xAzc1nc3eFm9", "screenshotId": "50dtVAo7w4e3v5mh"}, {"description": "6Rum5pbgEt39uJQp", "screenshotId": "gEtchTe3nt7t9ztp"}, {"description": "rSfW9OutADrNGBWS", "screenshotId": "J1zQKxVmRTawjiZP"}]}' \
    'MoZZcyGEHxAKDQhe' \
    'r3usApPdJPn9eIdh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
$PYTHON -m $MODULE 'ugc-upload-content-screenshot-v2' \
    '{"screenshots": [{"contentType": "IBvTTupABJ4RwH3E", "description": "dKmYtbqQHNfIZwrM", "fileExtension": "jpeg"}, {"contentType": "lFRAJKySnC0cfPl3", "description": "Z2zSBbs4PAV72u8A", "fileExtension": "jpg"}, {"contentType": "2zMDSy4kyqyKgrtE", "description": "PdXXlt8geCdiXu3i", "fileExtension": "png"}]}' \
    'AHEZmuQrZ8GaQ4OZ' \
    '2nDodm4TNs8mAj6I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
$PYTHON -m $MODULE 'ugc-delete-content-screenshot-v2' \
    'KSYFdJwgZsRPOzwu' \
    'DSdGl1A2vaNeDiSq' \
    'TfmAVg50kOdJagEm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
$PYTHON -m $MODULE 'ugc-public-get-group-contents-v2' \
    'TuaxlxgywkbdOsyx' \
    'X1tfW488oYUT4jyC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
$PYTHON -m $MODULE 'ugc-list-user-staging-contents' \
    'VJ0V8obTlGVThz4b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
$PYTHON -m $MODULE 'ugc-get-user-staging-content-by-id' \
    'm41oIcV33yjPxibD' \
    'jfF7JkjCVpZKMxkF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
$PYTHON -m $MODULE 'ugc-update-staging-content' \
    '{"fileExtension": "kBtXMU6KRIm5xBoI", "fileLocation": "i99ctgFXasxp5h78"}' \
    '0ktjQw2yXzaQWaF2' \
    'PqUfbpMpRl6xRyV1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
$PYTHON -m $MODULE 'ugc-delete-user-staging-content-by-id' \
    '9cborUHeCpqnZ5NW' \
    '623WWn2ZJY3QvRa7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
