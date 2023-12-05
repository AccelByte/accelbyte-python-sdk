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
ugc-admin-update-official-content-file-location '{"fileExtension": "VWf6ttvbU1PO6ApC", "fileLocation": "D2VXidT7w0Oc15N8"}' 'WXBPp17PAewqSm5x' '3B4t7WQnp8jXZedg' --login_with_auth "Bearer foo"
ugc-admin-generate-official-content-upload-urlv2 '{"contentType": "t5cyNe27HLtwtVOa", "fileExtension": "xgP6Jbct8puMybYG"}' 'xD9IPmmsLmu3kaPj' '0O4zd8Tb7cUNGPTB' --login_with_auth "Bearer foo"
ugc-admin-get-configs --login_with_auth "Bearer foo"
ugc-admin-update-config '{"value": "xiFFCrn7djjs69FT"}' 'FVGUVhvKhJCmeisq' --login_with_auth "Bearer foo"
ugc-admin-list-content-v2 --login_with_auth "Bearer foo"
ugc-admin-bulk-get-content-by-i-ds-v2 '{"contentIds": ["l14mUHVbMPimNhcZ", "sU3VAdMDcb4qlkiF", "AamqvZI2KwjqPBiW"]}' --login_with_auth "Bearer foo"
ugc-admin-get-content-bulk-by-share-codes-v2 '{"shareCodes": ["Xade41s3rH34mB2y", "PlRpWjmHZAAvKTH8", "MuqIg0CzkguwuJCW"]}' --login_with_auth "Bearer foo"
ugc-admin-get-content-by-share-code-v2 '7EEFB67AODbi9Bzu' --login_with_auth "Bearer foo"
ugc-admin-get-content-by-content-idv2 'pBsFpYc77GtRUcCF' --login_with_auth "Bearer foo"
ugc-rollback-content-version-v2 'eY5g4XgBsbfzqxBP' 'Ne8ae1Il4aAtEbu4' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots-v2 '{"screenshots": [{"description": "IjGdqthRxTjQ7gkZ", "screenshotId": "EY8rG0q0Q2Qd2JzR"}, {"description": "bkF2I03dIjvBbA6b", "screenshotId": "fbYaJCJjfk2TUvn9"}, {"description": "5FhO7VW3mbDVMDu8", "screenshotId": "7t0ldWf7iSGIiKFt"}]}' 'Wtn4Yr2svKM6pqLG' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot-v2 '{"screenshots": [{"contentType": "Z0TBujELAUK6mQ5i", "description": "Zgbwwm5iGzXtcknr", "fileExtension": "bmp"}, {"contentType": "dwCkZwqjYLfTiCO1", "description": "NDBvQvRPnAz4VzW0", "fileExtension": "jpg"}, {"contentType": "Rmut9H9XyWI8bp8f", "description": "QxRuX91uYmtrHJbE", "fileExtension": "pjp"}]}' 'NZ84CVhziXV8HwSm' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot-v2 'vcvcDKF19yVRafCj' 'OuSYht83AdvBaagT' --login_with_auth "Bearer foo"
ugc-list-content-versions-v2 'iRJ8daGTVX3Bb7jl' --login_with_auth "Bearer foo"
ugc-admin-get-official-group-contents-v2 'z5IfHgKjI9mwJSrN' --login_with_auth "Bearer foo"
ugc-admin-update-content-by-share-code-v2 '{"customAttributes": {"8jkIykR2zbaI6PD7": {}, "fEscShnGUGUtV9GJ": {}, "279GDbLNwjm3FK0n": {}}, "name": "nX2poMfZ1hDHtbh4", "shareCode": "HtMlFgvh2Dp2SoiI", "subType": "Pp1yvfAHS0VgLu11", "tags": ["A3HTovFi4tPAGfle", "yCA6jEtcqsnzoVIL", "jkwW61duF87aUyrd"], "type": "t4XSpWBAetsanzqP"}' '8oxfrtbECD1CYPwa' 'iBAxfYL8Avt70ZUT' '2fSk3LL0calqxEew' --login_with_auth "Bearer foo"
ugc-admin-delete-content-by-share-code-v2 'uGS469k2hG0WKt4s' 'UmanYxM0UHZVNYzG' 'MNIpWoSLkUrfuf4U' --login_with_auth "Bearer foo"
ugc-admin-delete-user-content-v2 '3WeYeA9t2ENKKWrF' 'tHIi1CMgKAOG5iDc' 'CR5PbCvDLil8wj9c' --login_with_auth "Bearer foo"
ugc-admin-update-user-content-v2 '{"customAttributes": {"KM3Ar6MF35hCER4n": {}, "GmWGgTJfHlJl4tHG": {}, "a4XfZcd9CVnGqMX9": {}}, "name": "FieeEssWEUl07bhw", "shareCode": "ntCVqiYOJf5KwMZQ", "subType": "jzvjSozv6CTRDl0z", "tags": ["p9CzHFwinkBNi4gv", "qgl6TZ9TGVPmv34h", "6T7EsufmfxKYB4LM"], "type": "6H6QXmpZ9X3fUSR1"}' 'l9xLPBsmAUrD9L1I' 'iD6MlcEPhMDFzjHZ' '3sIhzOx2CXKlvIom' --login_with_auth "Bearer foo"
ugc-admin-update-user-content-file-location '{"fileExtension": "U3pIxM9n8D2eLMe3", "fileLocation": "lt9qfx2UDcgVE7L9"}' 'FK6e0MrPc4vtxk9h' 'VKlG56HlzGr7Xjdy' 'RJunZPkp6ccIBnWy' --login_with_auth "Bearer foo"
ugc-admin-generate-user-content-upload-urlv2 '{"contentType": "Pw8mj7gyQ7XdIszG", "fileExtension": "Rj46COPipH1MWVTH"}' 'G0qHJCWEfOJpZm9y' 'EYWNGMy2pgSGSUOK' '68eqGJtWf1Ybgg8r' --login_with_auth "Bearer foo"
ugc-admin-get-content-by-user-idv2 'dwY9bmrvHmO07KNq' --login_with_auth "Bearer foo"
ugc-admin-update-content-hide-status-v2 '{"isHidden": true}' '9LM2IwEsdOGBXBwn' 'zDX8v3xgC1Ge9Pdb' --login_with_auth "Bearer foo"
ugc-admin-get-user-group-contents-v2 'TTAJ2Gp1r0sVZ6LJ' 'AOddIL2l3hPjNDKv' --login_with_auth "Bearer foo"
ugc-public-get-content-by-channel-idv2 '2LWfXqjr8fS79En3' --login_with_auth "Bearer foo"
ugc-public-list-content-v2 --login_with_auth "Bearer foo"
ugc-public-bulk-get-content-by-idv2 '{"contentIds": ["wYowBdkaZ3y6i38X", "QjLDRqkpiFK5BtiQ", "272Uo9UBJWodpdws"]}' --login_with_auth "Bearer foo"
ugc-public-get-content-bulk-by-share-codes-v2 '{"shareCodes": ["X1jorcyR0x3YiHF8", "ITGPRQBCgIs1Q2lz", "xl0yF5m77TTh4gUo"]}' --login_with_auth "Bearer foo"
ugc-public-get-content-by-share-code-v2 'j8u2WRcLiEtzVlnk' --login_with_auth "Bearer foo"
ugc-public-get-content-by-idv2 'flfn7pHY48F1dl1q' --login_with_auth "Bearer foo"
ugc-public-add-download-count-v2 '92m3iRlfnBAk0Cwi' --login_with_auth "Bearer foo"
ugc-public-list-content-downloader-v2 'AsR65yQ9ssuHdGmx' --login_with_auth "Bearer foo"
ugc-public-list-content-like-v2 'ncCEr0KcgeqzGbru' --login_with_auth "Bearer foo"
ugc-update-content-like-status-v2 '{"likeStatus": true}' 'B72HHMkjzyBB4UFK' --login_with_auth "Bearer foo"
ugc-public-create-content-v2 '{"contentType": "iaoV0VOem2yqPsMF", "customAttributes": {"xKybPkbuS6x9cLJ1": {}, "APnNlsa2bRBr27fV": {}, "MWuAfDqLMR919IZP": {}}, "fileExtension": "KOKiAVQXXOmqFHLb", "name": "yXmgCNiXH8uenbC5", "subType": "CphgMweexsIAP5vH", "tags": ["LjBJ9iqMcBL4BzhD", "UjhKPwbwcvQU5kG8", "bXGFmPAnOkDiJq4x"], "type": "Qye7HqnVK3YVeOWs"}' '9mfVQh3jLBtn9pxp' 'E7BYtzB0B4CxyQrU' --login_with_auth "Bearer foo"
ugc-public-update-content-by-share-code-v2 '{"customAttributes": {"pIFvORxTi79DpSjb": {}, "39ukcR6c2E2r3vk3": {}, "IfAKEbqcNXSGCCvN": {}}, "name": "owNmdpcJgF88ySNq", "subType": "4Mj7mulP4tQ6R1Oq", "tags": ["KVOTniBgLsNhdgQ0", "JWZjNRSzOTqcVNX3", "ahvxw9gwwhTnjN6w"], "type": "KZGW4y3f0R9s2knd"}' 'hhZhwAiLsZs4pmLD' 'IQch4IjDq9aT3qZy' 'I0rYsWucAkXsVJbX' --login_with_auth "Bearer foo"
ugc-public-delete-content-by-share-code-v2 'i7eRZa7WwIc895Im' 'qK6tVsaUq3stUh5J' '5Z9GiBiSAylX5cS0' --login_with_auth "Bearer foo"
ugc-public-delete-content-v2 'IeHpWCugmfOL0QQp' 'xsuD8PGqku59eFJr' 'OXyDYz9vMUOPG0iH' --login_with_auth "Bearer foo"
ugc-public-update-content-v2 '{"customAttributes": {"DT8QbF7gHPTPQbvL": {}, "t2NRqJGIKzLyH1y7": {}, "2L13Ornyx34luLdv": {}}, "name": "tsTKXMjiw6gYPvfn", "subType": "2Qt9iyq3Nyk8ncu2", "tags": ["Z3eDHH9WaVO4iKhD", "cJ7TCcNIsQ3PuppU", "xDSK8aOTGMudcxlC"], "type": "V4cNbJGQ57lPdinp"}' 'jS2DRfGt9GlyZVQ4' 'X67tPZSTpPq3xjrE' 'lvvDgw0ag7kSWE0H' --login_with_auth "Bearer foo"
ugc-public-update-content-file-location '{"fileExtension": "iqm5IuLryiEXqvUW", "fileLocation": "DjU1G0EVjVZw1ToL"}' 'uPakQN1MpOs1RVFr' 'cg2CXxepx78fvsyh' 'E2BKtyTDSIM7mkmv' --login_with_auth "Bearer foo"
ugc-update-content-share-code-v2 '{"shareCode": "Z7Cmsh4US8o4jfMA"}' 'NPpmZDdMiCxmuCCV' 'uFjS1GC1d2b92B4v' 'Egj3HOmhcWm428Xe' --login_with_auth "Bearer foo"
ugc-public-generate-content-upload-urlv2 '{"contentType": "jRF94NIY9nMrBZo0", "fileExtension": "lNUBDShHD32vvL28"}' 'FPwTiXfLcxDC9Ynd' '02mECIQhfIhHtADU' 'Q9zimQTQT95pFJUA' --login_with_auth "Bearer foo"
ugc-public-get-content-by-user-idv2 'JsyAfeKOufV4f15N' --login_with_auth "Bearer foo"
ugc-update-screenshots-v2 '{"screenshots": [{"description": "ohXu6opxQGRt6Pql", "screenshotId": "kL0diRhLC10ih2EQ"}, {"description": "fY3XCv4hdOa6FdZh", "screenshotId": "NMd1onFjGRbxtABP"}, {"description": "XDmgNEJBhgGq5GID", "screenshotId": "hNC66szbCCf73IFb"}]}' 'RkPSSITz4TjCrJHX' 'GXku2YVuOzhxHmnr' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot-v2 '{"screenshots": [{"contentType": "rV9ZGWrZ05sxe6A6", "description": "RpmKDebNkylbynkg", "fileExtension": "png"}, {"contentType": "wOZOK56sDkci5rZ8", "description": "iMlOuksQJCiRFiZW", "fileExtension": "jpeg"}, {"contentType": "WVco2LTo5ijlvDF8", "description": "qBWCQ9dLWYyS8zdh", "fileExtension": "png"}]}' 'M5anIloyj9lhbvuQ' 'dW2jwKUckc794ryY' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot-v2 '91lX8DD4MYXlrJ81' 'lHvv9rqvEoM8YmVj' 'AkO3HKsEp6KlqwW4' --login_with_auth "Bearer foo"
ugc-public-get-group-contents-v2 'djrexcbHdEtoQvpV' '344RctmTozCi8HeV' --login_with_auth "Bearer foo"
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
echo "1..152"

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
    '{"id": "6jbalHmqBBfi7sSF", "name": "5BoGiTCVsXsygWbj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "E2opXtdsJQeJ1too"}' \
    '0qvxphTLEEBGTtZy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'TjdKNKgYazujsmSm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "ylT1YtxIq73aMb48", "customAttributes": {"jISd97KORRhxSWLW": {}, "LNfHRD3V15QaGGL4": {}, "6LuxJF3sbeqWBdQu": {}}, "fileExtension": "WfgBAKx27MSBqabU", "name": "XOGkkoMUZn1YXj5z", "preview": "FZeOCOR9NvBQZSJP", "previewMetadata": {"previewContentType": "OIKrRBrYVzi9ui3l", "previewFileExtension": "vozTt9TsH7A0TuU2"}, "shareCode": "aL4bPkk11sys6Gdk", "subType": "Dcos5uVJ0BJfZ0jv", "tags": ["A54CSqZFDsO1skRj", "OU1SMfQVQa6blj9R", "dd85bdYUumPKVSZC"], "type": "g3XTc9vQe0dHJfF6"}' \
    'KIuvnRCa9JktyBdx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "kZKrEWFw9GYxjiiO", "customAttributes": {"QAD77ci0vfWVZoRR": {}, "MPi57HyKKz5nyI6u": {}, "lKNKoXa0dgx1JgjC": {}}, "fileExtension": "56pda3YhtQxpCYME", "name": "6x21pdX2QSPAd9sx", "payload": "oLnWGP1PafIjLX8c", "preview": "e0KbNN7Ycl2JfmQp", "previewMetadata": {"previewContentType": "lvGjVQ4aebjfgGu4", "previewFileExtension": "72oWJlfglLM4xjfk"}, "shareCode": "NL4lU6jaGfsD1cfs", "subType": "wmeFpvtDtetoQVFL", "tags": ["8LNW11vtpaTxi7k4", "89jRCn48bvkCPfKo", "fwXOIZZQAJza84lK"], "type": "KmVOaTS6xBbNrSUA", "updateContentFile": true}' \
    'ak7ISDrBVg6NuDZv' \
    'Pb1kuUfNfUDe4g7q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    '6PHEaqbzHvDDl1ji' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    'Lw3XMGBA6JXDpA1t' \
    'IC45C0oaGouFu4hX' \
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
    '{"contentIds": ["ONgUwJnUpryDeRcp", "Uvlrw2MwC1uuokpa", "IjL0Vxe5n9Lx3QcF"]}' \
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
    '{"shareCodes": ["o9gxOgvDc7xMrRKv", "w8ISP2WKmCRRXBxl", "alCHtWlKxLpS8fLW"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
$PYTHON -m $MODULE 'ugc-admin-get-user-content-by-share-code' \
    'oQ5nuJhatQPxR7dv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'BVC5zgOKLTDmHe8c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    '1eJ9sde7Ryt4udIv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
$PYTHON -m $MODULE 'ugc-rollback-content-version' \
    '22M18uux9xBomQFP' \
    'FWy5cwNPI6aFo0MV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "wDZCIXFNEL3uWVRz", "screenshotId": "3V7YbJM3bNLWHAbC"}, {"description": "Zixe2cQ6O30lpzcB", "screenshotId": "QMAEcNcJqrKxnMzS"}, {"description": "Yoc4ZjiMY4H34B6w", "screenshotId": "Vd8ipcKDwQeUWtjC"}]}' \
    'C2UH6jzMO3AfmOS5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "mQNyRPZFPNP56l1A", "description": "T6OLKmZhCZxxPPdP", "fileExtension": "jpeg"}, {"contentType": "lpF7OvlBIEgjse5k", "description": "d6GEDo08yq5E5Hle", "fileExtension": "pjp"}, {"contentType": "5XmkCuL5W4tKt6G3", "description": "j9LYdG7xVPqBqe9R", "fileExtension": "jpg"}]}' \
    'KYArAxnKBfBfDlrQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'QuAc10DjjwMv4vrI' \
    'PRtvhQIyLarjaLOK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
$PYTHON -m $MODULE 'ugc-list-content-versions' \
    'nX51yAB8Pa3uNGKh' \
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
    '{"contents": ["aLlJzJMSnJIIgsAV", "maGYxUX1B9oVuzG2", "CnYX2YBF2g7TVtzY"], "name": "EHUodh3iUfBthbep"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'UCTWiZ1uqh7GAi4F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["EIu44u83ZLRxYlYq", "lpq03BGdIk4oEogF", "VGR71rJOBy6lsj1A"], "name": "KGBjnHmaAu4YK87D"}' \
    'YAWWcbcbGWmKgE8C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'Z4AELr5lraa5v5P5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    'Cj8hgFsqHC9h5JPi' \
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
    '{"tag": "MEtgKuiGTYgwWv5X"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "ldL6rOVGcRAn51rV"}' \
    'AQSxp4qTB54mKA3V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    '9DKlCeZ7mLYsHooO' \
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
    '{"subtype": ["IaxIpb1cIOJPS3lJ", "80YJ41U4ooQ980yw", "mg1pWpWit1QC7FKe"], "type": "0fnHUlmU1unGKM0t"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["gfeWy47bbwMI4gGm", "vK9gW596FwBNrFXt", "3TAuKBwBcD12ae6r"], "type": "3hHwya4NpdOzg3hr"}' \
    '6ucHf7dbh2iKNUl0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'qJqzoKMRMG541PAi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'NjULsx4SnKNXLMUa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    'DSwwQlnNRZJHBSB4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "fZWEFIZs28Ff1kZp"}' \
    '1Zktx3N7WNMYIfcD' \
    'KbLu8pnK34oA1keY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'XJvtggDdXjbdjMBa' \
    'hFZZGMTcqnWrIprO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
$PYTHON -m $MODULE 'ugc-admin-update-content-s3-by-share-code' \
    '{"contentType": "v0BJ9Sgl7H1sdH2R", "customAttributes": {"IJz1eI7Q5pu9PutL": {}, "f6IrvZoBGQbO4S3r": {}, "URGWUzPAE6SdV4D5": {}}, "fileExtension": "jftRl9rZmtQUvro8", "name": "TWwXWsz9TVmdMKEo", "payload": "hKzuMYDUTLBeCidX", "preview": "juGgx8ncXejmeZtz", "previewMetadata": {"previewContentType": "T0qj0ltsqfiZrthV", "previewFileExtension": "vyX0OCKDJE3RMUdd"}, "shareCode": "wSSgxCu8zru1DhGA", "subType": "YOHR5BWa9VzIkaQE", "tags": ["l1iUProNB6hI6IpG", "cToWgFvdRhG9NwV3", "zDuqVlVTypcYPK8I"], "type": "xrSZuxWl0Je4fJIy", "updateContentFile": true}' \
    'Am3DQht4JwnPS2ur' \
    'JqerobWMZGVL5KLT' \
    'xahWlS6XdBaKSLCg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "OOPXM6XTUh2dJ90y", "customAttributes": {"qHDNacl4F9G6Dl5T": {}, "FwBY6HKXAblkT8VG": {}, "gSH8MGZGwiVj7eDT": {}}, "fileExtension": "aka9ABfX1IByPEOu", "name": "PhGspRi3bhPQvBBJ", "payload": "I5JxytpcubN4AUUP", "preview": "FPscZsXeJOD4DMtq", "previewMetadata": {"previewContentType": "fIGiGJovgWSRxZ8N", "previewFileExtension": "4UQ2fg3V1o2x0hL5"}, "shareCode": "DuBDqMyIAzWze94M", "subType": "EdJFAy2JTllJkRGB", "tags": ["8jqJEd6eqqsBVyON", "V0JRtozI0jpliCFQ", "6WgJpGPigdc5VyC4"], "type": "qvWjVac1cQvSxgTN", "updateContentFile": true}' \
    'UzxDgBlIbuzm7DzJ' \
    '20NFRJIhFXR2dYpr' \
    'PmbpuptECGd5cdXC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
$PYTHON -m $MODULE 'ugc-delete-content-by-share-code' \
    '2Sesc6y68whNBYl9' \
    'iCqfW6rqGOQny4ij' \
    '4ysYPonb59gQffkN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    'OmubxEJr2qEAuJbp' \
    'ZSrcbc4LWfKaY5c1' \
    'tP5TDuI5f6m4KC07' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'CnsZe32hqEcB1ExY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'MBb3ckvoaJYdMqGe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": false}' \
    'BfnRyFS0Ed7gTM5A' \
    'VrtBQiDTcNnZa6Zu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'xk6u6HXXdiC9ZDj4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'E4mv12FNXypoOLl1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    '3j84P0KqirJ4PkMF' \
    'tsnFfz8Ew0X8fBuB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["SKLSQ4GvLtz50D3r", "pBfBovqLwXBuT30E", "YeRj17xGhaBKoUfi"], "name": "HjGmCyPsKCJTv1ic"}' \
    '9gvagF2cSuztsJ5t' \
    'j64gV7nmDk29mcjS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'uz9vbNStqPtQmQN6' \
    'eKAGiZFCftT0RWEC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'djWYrnulxcCKAru8' \
    'pOaAVLDB4k3Jwkda' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'xR7GJpYmuYCPG181' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'q9GA5DydC2D8UT6K' \
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
    '{"contentIds": ["Oc4VPDUR9ayazqXR", "qegIUicYXXzxsBFr", "Us9BYp6TgCejBd5o"]}' \
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
    '{"shareCodes": ["7iTST7R3KbbQGERM", "NpqWb51y5RUzvMfT", "kPy0fGvTGgfLKsg0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
$PYTHON -m $MODULE 'ugc-public-download-content-by-share-code' \
    'b1Bq78cE5O5pmPnb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'iPJ9j4vxmbH3rVaa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'uufxkPHElug48Tgf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": true}' \
    'u0rqXUOyToLPIREG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    'IKlJt3EP9kKwkENQ' \
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
    '8VOHGwbADMfuOmh0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'lciRhVZ2DeoODXMz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
$PYTHON -m $MODULE 'ugc-public-create-channel' \
    '{"name": "LSrzoiBnYi5UWs3t"}' \
    'YlYeMoCimJySocRv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'UWDOrFZKPNoN9AWt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "LK9TFgi9j2XMh9Wp"}' \
    'ifqjNjLOtNQts2yx' \
    'f6MLZJ2jZfZbpTJe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'zzriCDWXT59SRu0Y' \
    'qUxKDc84OMIzvTSc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "dbKBsAyJMz4ILNDv", "customAttributes": {"hB4Eoes9a6XaJeRb": {}, "zTPwD3jxF7vxRUY0": {}, "ilrNoFT98SgtJd4Z": {}}, "fileExtension": "5f8nfaKqdZFLbZEH", "name": "xsDxeR6d7r1SQw80", "preview": "JfMpPrSqYypRUnq5", "previewMetadata": {"previewContentType": "o4ETeCUYG9ccTt7W", "previewFileExtension": "xw8OQ13t3uTw6zQu"}, "subType": "oZcXQpoTOxe8y1jo", "tags": ["rNsg9ZKYCKoISyXt", "HzoWGdYohxMp3uOQ", "IybqWfG9BJ6FVKlb"], "type": "YHtbPtaxvagSlpGg"}' \
    'VTF6VeDAPOGBwwey' \
    'FfXEOEAEtbag82Kg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
$PYTHON -m $MODULE 'ugc-public-update-content-by-share-code' \
    '{"contentType": "BgyCd5vjkfz3eR4D", "customAttributes": {"tNp129hzBw3xLUcC": {}, "Et0DzmkJq1sml5bY": {}, "t76BNsi4giR9434W": {}}, "fileExtension": "pKKdzxoufCNlFoOc", "name": "WQQy4bjmQeEweoBH", "payload": "TdwAk7ZQnbqY1cQw", "preview": "VEtAr5kKKAo9MM2C", "previewMetadata": {"previewContentType": "qm84jVi9kIpqgrzp", "previewFileExtension": "UkNOBWydXV0Fi02a"}, "subType": "Fr8CDapjwNOl4k8r", "tags": ["VNrm8drv8QD2JOe2", "Ntz7EFvowPgIGuet", "xFMqXCQMAqQ2ZRGz"], "type": "NtrThFa9XU8moslu", "updateContentFile": false}' \
    '3WekqfWv04vvn9bk' \
    '5qr8qs2mqtnGAqXU' \
    'jNypF6MMqWpdEJsP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "oaIbYz8cK5jlpJdr", "customAttributes": {"e5ur6yvWJDdvM7T7": {}, "PX2vamIRZHzsIYOC": {}, "UoiCXNjrdQL2jdx1": {}}, "fileExtension": "eIba1sB0HsJ06Dzf", "name": "bzRYt4OVUyumBeIq", "payload": "dQGZC5kM03HHijsQ", "preview": "Rj7N8IAjmsonjj0Z", "previewMetadata": {"previewContentType": "R50BQ1U6aFD3O2kX", "previewFileExtension": "QSc58zgZVl4gIF7v"}, "subType": "3qbZu9M3OxqVAT4H", "tags": ["1lRZ9Z1JBrHRzEOt", "IxzPqb6n73m0jiaD", "H86d9rsKgzCsMulp"], "type": "B8HZUtVVaJCiLgKO", "updateContentFile": true}' \
    '3EdmW8saabP4xRow' \
    'fNojzPXI2v0prR3O' \
    'Eey0MkZwS6TYwNN3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
$PYTHON -m $MODULE 'ugc-public-delete-content-by-share-code' \
    'UYhic03qGEg5fNzB' \
    'Vrjo3g8CfRwtyl1H' \
    'eT7VEPgG40QyXzsO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'zgck078IghoQBp2m' \
    'WAOYksczxBS0OBCa' \
    '2vWadLmQtYKmEMzi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
$PYTHON -m $MODULE 'ugc-update-content-share-code' \
    '{"shareCode": "cbuL2S3RiW8dLTCB"}' \
    'fGUdVEdvdQL7sVwc' \
    'Z2PofaJoSqtrEOqx' \
    'H46fRTSZoDdT0fef' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    'o74eg3Nt2c0r4GqF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    '0NHglOVuNZ9LzNeJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "nBurh54CWbYb0Peb", "screenshotId": "yt8b4DGscjwrizsF"}, {"description": "UgYwbaLvqvQ2NbmD", "screenshotId": "ITuymTBjn3d2sFzM"}, {"description": "S3QaVjZF7Ax6115K", "screenshotId": "g9U8vrQJXQxoIbVi"}]}' \
    '2CLEk277Ivjj1A64' \
    '7XQ3koaAfZIim0sF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "Pm1YN27bojDVaZLp", "description": "x4kEWYkO6KrKUMhJ", "fileExtension": "jpeg"}, {"contentType": "TlMlUvFEiGprcNSQ", "description": "9kEeXBZ6FVrBzyhy", "fileExtension": "bmp"}, {"contentType": "KXttgAI2QdWJFLmo", "description": "PEgd8EMspOs8nkic", "fileExtension": "bmp"}]}' \
    'gj5vyUMAAmIHYbsx' \
    'G5N066FXb88SbLOa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    '21DiSFsm0XXQJWsz' \
    'vTQEuALzDNp1SZ58' \
    'aDllwzTRHak1MXxj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": true}' \
    'GJT0mkVPI6zUtf3Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'aJPGrTNcXXTUIggo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'H89QNmI17UDb19R6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'H7r1ta3m7jK5pxe8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["2pgFiAS6piIzmc8r", "KrKEPGSAcong6eNE", "RUf8kjci1Ctccv9G"], "name": "v4tOcbnuCqf0lm6W"}' \
    'BkIzjoSV31tvmMB6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'jzrpRGESmooHiCV4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'GUOnXpapXQGRakUb' \
    'cG7PcR4eiU3Idi55' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["jNrGNT2VHTKuIT5F", "wwHj0Ur5F2PWGTTD", "81xhNP4t6kYBUjyX"], "name": "An3bWQF6QcAiJpXI"}' \
    'rgroixptZhckUTGk' \
    'cBOE4qMcH1Kyi8ZF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'vGcV8DY0XOkDstxZ' \
    'cY1HgAnZV4IOglVL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'qb9lGAJUg21Lt7Jw' \
    'gwMUSuC3Bajy3BcE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'MCtQs2FcEcvVAyId' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-channel-idv2' \
    '6Cp85HVDsZBQgOnX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
$PYTHON -m $MODULE 'ugc-admin-create-content-v2' \
    '{"contentType": "uXsGThYZrmm0wrFM", "customAttributes": {"nPpWgrQD4hEk0OLj": {}, "YsnignE7KcMF7fuD": {}, "bzRRYMNXWUsp1tOi": {}}, "fileExtension": "bJY9aL9ie6vvMbiN", "name": "URrlm88QlKyuoya4", "shareCode": "JgakZyUV7t73VnSF", "subType": "buxd4KYZ0jk0UZdh", "tags": ["tnKu9oTc8pVkiyGs", "j5JdXzRxfNEjUMTs", "8WIObJBTsvsw76uI"], "type": "SRX0bKVoWtoUW1P7"}' \
    'ocuBAldDSUS7Haa6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
$PYTHON -m $MODULE 'ugc-admin-delete-official-content-v2' \
    'unq1yQOSRvyiLBRV' \
    'tIDi2piIQFVmzMid' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
$PYTHON -m $MODULE 'ugc-admin-update-official-content-v2' \
    '{"customAttributes": {"w70KSahpYZdKZRyR": {}, "9AX7JjxvNZhM84Di": {}, "Zk6ySrB9SVFctW7Y": {}}, "name": "S0OkL78XeEAtALFI", "shareCode": "3v8yha4pd5A7MYcp", "subType": "BD6lKNb8RxvN2u5J", "tags": ["7baOeLH19fqBwNbN", "e1ffYRtIvQaKyevW", "YtZjK6J29v8MpBSp"], "type": "o3AKRmnJkzJHAckU"}' \
    'yBksYQfDm0RNFwiz' \
    '70tRVLMlHi8i9gOV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
$PYTHON -m $MODULE 'ugc-admin-update-official-content-file-location' \
    '{"fileExtension": "qajUWrgEsWDtaKzn", "fileLocation": "8dZwnnGeZsZVgbPz"}' \
    'PFbrOMZMgWkFN7Tp' \
    'kx6GcfyOg6ZUrrp9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
$PYTHON -m $MODULE 'ugc-admin-generate-official-content-upload-urlv2' \
    '{"contentType": "ubg9mndW2JKmQafU", "fileExtension": "s2bxYztOEyVbKIf1"}' \
    'ZbzgUwd8DHoCQykm' \
    'XHYmkRlg7gYs6unP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
$PYTHON -m $MODULE 'ugc-admin-get-configs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
$PYTHON -m $MODULE 'ugc-admin-update-config' \
    '{"value": "YQ9jNQN1di1ldhOh"}' \
    '6HvjnYuV7NfC4A2O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
$PYTHON -m $MODULE 'ugc-admin-list-content-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
$PYTHON -m $MODULE 'ugc-admin-bulk-get-content-by-i-ds-v2' \
    '{"contentIds": ["DiZhbfb8QqCyK1XH", "9D6vl5eFdFfgK46G", "jCWaP8huTmnq3FGQ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
$PYTHON -m $MODULE 'ugc-admin-get-content-bulk-by-share-codes-v2' \
    '{"shareCodes": ["n3Ahu5wxq6oJq4mC", "hmQHQhO9IKBXDFQf", "XFD58sG6uDhFYlrz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-share-code-v2' \
    'JBYSeMuJfQecutjS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-content-idv2' \
    '029BiJWOG1m7MKcl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
$PYTHON -m $MODULE 'ugc-rollback-content-version-v2' \
    'r5igjNTVItrH2X78' \
    'hxJgaVfw5Vnyq8Oz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
$PYTHON -m $MODULE 'ugc-admin-update-screenshots-v2' \
    '{"screenshots": [{"description": "TE89WDNoMcOmbfJr", "screenshotId": "CJQIj1haAosKglqa"}, {"description": "CXE9ytpIO8btO3Ow", "screenshotId": "NEGSW5TaW4to7QCY"}, {"description": "2NGGvi9kg3rMIzNm", "screenshotId": "hJTNQjKlwjfJ3TJ2"}]}' \
    'xVpge70WsLfgbZie' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot-v2' \
    '{"screenshots": [{"contentType": "RvJI5sT9DH3DfLCv", "description": "8q4Thmq09bBgPAYx", "fileExtension": "jpeg"}, {"contentType": "EhQRZIp693lRwtc4", "description": "3atCuCFxbfbz4aQE", "fileExtension": "png"}, {"contentType": "M6FoqCYw7AlxO6qd", "description": "Fpc71sSck3ggZWJl", "fileExtension": "png"}]}' \
    'mvvNtjJNQepUTGhw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot-v2' \
    'lY4lPzlsCR5rVsyf' \
    'cH7WjP7HuGz3b5WA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
$PYTHON -m $MODULE 'ugc-list-content-versions-v2' \
    'EvdRF9bqMj4ro5B1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
$PYTHON -m $MODULE 'ugc-admin-get-official-group-contents-v2' \
    '9VE838c7OydVw0zC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminUpdateContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-admin-update-content-by-share-code-v2' \
    '{"customAttributes": {"qoMZvpIOO97DmQ5Z": {}, "Ozx6iCJTu60IifzM": {}, "hkk5PxsjqbCKpMv2": {}}, "name": "Yky9DYkD2sIllFtB", "shareCode": "tXJKG3rqBmILhtWm", "subType": "8RQvRUbUDSiefGEd", "tags": ["LucrtO2gCQD057Dr", "DlgC2nzS9SiGUjVA", "w4v3q6JRHcn7KaoC"], "type": "EkRdo6qHYIZWnXqQ"}' \
    '1oHFJ9Q0vqsL9Som' \
    'qWsGA76yxi0QzZWf' \
    'mP2sx0KO5bEJaPnA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminUpdateContentByShareCodeV2' test.out

#- 122 AdminDeleteContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-admin-delete-content-by-share-code-v2' \
    'FjsodyJQVVBrShGb' \
    'IIuqK8C403HgoXCR' \
    '6XOMXwKdfqk8T4QH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminDeleteContentByShareCodeV2' test.out

#- 123 AdminDeleteUserContentV2
$PYTHON -m $MODULE 'ugc-admin-delete-user-content-v2' \
    'K30EX0FclpDl5Hsu' \
    'racO5MnjnxD1OXkx' \
    'ShFVQTRekLfjmy8z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteUserContentV2' test.out

#- 124 AdminUpdateUserContentV2
$PYTHON -m $MODULE 'ugc-admin-update-user-content-v2' \
    '{"customAttributes": {"osRCRgVwbrQKmb01": {}, "yA7U7dGMjupZkZQY": {}, "8CNyT4k3DIbfT22G": {}}, "name": "5NpE130YWSgxpKWt", "shareCode": "dtdtVW9anENmxb9e", "subType": "7vXZV3ig8Jg5VBye", "tags": ["I3ycMcYYBixKJXCI", "SQdwec1m8BusV9tU", "h74KVo6Xqjz2xUKL"], "type": "NWSmYyVvyelIJ8Qg"}' \
    'aLMqi836ULa7cfZl' \
    '4VuY6rsZyo6CBRRn' \
    'oOikIxXKKIR6kPms' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateUserContentV2' test.out

#- 125 AdminUpdateUserContentFileLocation
$PYTHON -m $MODULE 'ugc-admin-update-user-content-file-location' \
    '{"fileExtension": "wm5TCAU1cKApdJDn", "fileLocation": "E73GLmSZns5owBho"}' \
    'Ug4LsGP6KLPXkvUv' \
    '2XiXaBzsmaxjTZPl' \
    'LitytGka7Kv5TacQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateUserContentFileLocation' test.out

#- 126 AdminGenerateUserContentUploadURLV2
$PYTHON -m $MODULE 'ugc-admin-generate-user-content-upload-urlv2' \
    '{"contentType": "KF4OlRGdmXxETLEQ", "fileExtension": "rr3KCAV9alq3hK1G"}' \
    '4kKooSNNUZuiynZ6' \
    '4IwncZPk82GF3eTC' \
    '0vzZUDj9dzGgGVxo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminGenerateUserContentUploadURLV2' test.out

#- 127 AdminGetContentByUserIDV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-user-idv2' \
    '9OHgfHumyfuBNise' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminGetContentByUserIDV2' test.out

#- 128 AdminUpdateContentHideStatusV2
$PYTHON -m $MODULE 'ugc-admin-update-content-hide-status-v2' \
    '{"isHidden": false}' \
    'GjvpgJfuBs1Vpqn4' \
    '7GVghTH2wToOnq9U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateContentHideStatusV2' test.out

#- 129 AdminGetUserGroupContentsV2
$PYTHON -m $MODULE 'ugc-admin-get-user-group-contents-v2' \
    '5lyW89Xwt3wmRTrD' \
    'CjhnKvsHezWTqgYP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminGetUserGroupContentsV2' test.out

#- 130 PublicGetContentByChannelIDV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-channel-idv2' \
    'ixtHk6lWq6tEeUmU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'PublicGetContentByChannelIDV2' test.out

#- 131 PublicListContentV2
$PYTHON -m $MODULE 'ugc-public-list-content-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'PublicListContentV2' test.out

#- 132 PublicBulkGetContentByIDV2
$PYTHON -m $MODULE 'ugc-public-bulk-get-content-by-idv2' \
    '{"contentIds": ["96FLEak0mJqjRYld", "cTpdeCD9XPRi4bAQ", "L7VE2wL8Y4JFVUdz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'PublicBulkGetContentByIDV2' test.out

#- 133 PublicGetContentBulkByShareCodesV2
$PYTHON -m $MODULE 'ugc-public-get-content-bulk-by-share-codes-v2' \
    '{"shareCodes": ["A8bvXlDhG7BrorbK", "IKuOXJPm5ztrr09C", "DA8Ij5bGKSuopWQb"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'PublicGetContentBulkByShareCodesV2' test.out

#- 134 PublicGetContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-share-code-v2' \
    'aCvdPSq8Z27GpvHC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByShareCodeV2' test.out

#- 135 PublicGetContentByIDV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-idv2' \
    'Dx55JZ5z6gujpFzl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByIDV2' test.out

#- 136 PublicAddDownloadCountV2
$PYTHON -m $MODULE 'ugc-public-add-download-count-v2' \
    'PspQD9IRIpDDubnt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'PublicAddDownloadCountV2' test.out

#- 137 PublicListContentDownloaderV2
$PYTHON -m $MODULE 'ugc-public-list-content-downloader-v2' \
    'PCFxfeoW2NdSWzOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'PublicListContentDownloaderV2' test.out

#- 138 PublicListContentLikeV2
$PYTHON -m $MODULE 'ugc-public-list-content-like-v2' \
    'jO1NQUqWHBW78XRE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'PublicListContentLikeV2' test.out

#- 139 UpdateContentLikeStatusV2
$PYTHON -m $MODULE 'ugc-update-content-like-status-v2' \
    '{"likeStatus": false}' \
    'CiTNAxq26gZrPqCs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'UpdateContentLikeStatusV2' test.out

#- 140 PublicCreateContentV2
$PYTHON -m $MODULE 'ugc-public-create-content-v2' \
    '{"contentType": "SDspvgM16sZ6rjnk", "customAttributes": {"H4ExObppC6CMYDm5": {}, "ge659UDEOF6gp5Uf": {}, "mjtiVbqJnZcrqrPy": {}}, "fileExtension": "e7fCwi7Il2wIFlHm", "name": "9N6owMHMtJy1Oqn5", "subType": "9tEGm9NYeUT5P0nx", "tags": ["8TqSZdZ5C8mFI9Tn", "vzEqBNMF9CZvPxT5", "zbreMc9fBoU3RHND"], "type": "FjLKFrepy56eW1km"}' \
    'b15QeIQF51c4MqJz' \
    'DSvELgBe6dboSdhk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'PublicCreateContentV2' test.out

#- 141 PublicUpdateContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-public-update-content-by-share-code-v2' \
    '{"customAttributes": {"BzAzPkt1efGJeJax": {}, "yHYutgXucx85vHA0": {}, "09FAb21jxeWXk80y": {}}, "name": "9uxgVLGgK8aVSCN6", "subType": "oCETQ8gIDRdD2wwM", "tags": ["XwKVXGPhEJsc7rZp", "xaPHc9r8eToFmkHJ", "6BPOKFLxIwKssw64"], "type": "7YwDudnGRufOUGfM"}' \
    'jTU226l07jPlcYaq' \
    'YM7YfBmhjI9Y28qV' \
    'ceS9UX48dKPCFUIe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'PublicUpdateContentByShareCodeV2' test.out

#- 142 PublicDeleteContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-public-delete-content-by-share-code-v2' \
    'yYEymNXzNX6TGh4U' \
    'dEweeBsJEvBbAvCm' \
    'lh6Z1oz9BaixUUvm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'PublicDeleteContentByShareCodeV2' test.out

#- 143 PublicDeleteContentV2
$PYTHON -m $MODULE 'ugc-public-delete-content-v2' \
    'zbajE2gjooiDnc1N' \
    'Ub51lEgUwQ9tkWaM' \
    'OH47CAT7cBP0918J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'PublicDeleteContentV2' test.out

#- 144 PublicUpdateContentV2
$PYTHON -m $MODULE 'ugc-public-update-content-v2' \
    '{"customAttributes": {"aEBQBP766LUnBBR8": {}, "4iAO7sBQt6YJ2tWw": {}, "F7RnP1oK3c4RVfjB": {}}, "name": "0zi3XrYZUiN24ol1", "subType": "qqbalgizL97ycJV5", "tags": ["YqE2myQzl7X9fHr6", "WvBxmBvNj3ktaDf9", "B22HGgxakPt7IYza"], "type": "ZUTmvsEzLPnnGsnf"}' \
    'mBerp84qjwzWpCF1' \
    'vyamjsEzwtLPxK1o' \
    's4qR8LaQzEb39sZT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'PublicUpdateContentV2' test.out

#- 145 PublicUpdateContentFileLocation
$PYTHON -m $MODULE 'ugc-public-update-content-file-location' \
    '{"fileExtension": "dFfC8x5aHLsXHlm1", "fileLocation": "RJTTy9JrNz1K5M1q"}' \
    'gFddYvifGHawNx6y' \
    'hniEHLbEQKc0aUvr' \
    'KXDIjYC4df9qswSl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentFileLocation' test.out

#- 146 UpdateContentShareCodeV2
$PYTHON -m $MODULE 'ugc-update-content-share-code-v2' \
    '{"shareCode": "pCI8DhjlxUyrs3OS"}' \
    'esE5p0DwUj2HKUvP' \
    'YUcQBxMSdOOsn2Nd' \
    '8Jpa19GJDK46Eehx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateContentShareCodeV2' test.out

#- 147 PublicGenerateContentUploadURLV2
$PYTHON -m $MODULE 'ugc-public-generate-content-upload-urlv2' \
    '{"contentType": "7xasqMY9aulsL6NO", "fileExtension": "V5agpS6A5mkufBpW"}' \
    'VxIK9D2bTcgaKocc' \
    'aSwWcZmzCWGI1cIQ' \
    'cPWAShIhieSKUf3z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'PublicGenerateContentUploadURLV2' test.out

#- 148 PublicGetContentByUserIDV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-user-idv2' \
    'KbyQk2vQTYX1xsth' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'PublicGetContentByUserIDV2' test.out

#- 149 UpdateScreenshotsV2
$PYTHON -m $MODULE 'ugc-update-screenshots-v2' \
    '{"screenshots": [{"description": "28NZZgsXycuQNGID", "screenshotId": "eHlf6IcX1K9JrK6O"}, {"description": "r2xx7rLwrPoWiywn", "screenshotId": "xuDLLuIaSxoloIH1"}, {"description": "gBCWVFrvls0ZwosK", "screenshotId": "hDlLfTKxpVOXvGSr"}]}' \
    'dkqddI3ezqu6FB0s' \
    'L2xt6fX9j7rhZCAl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'UpdateScreenshotsV2' test.out

#- 150 UploadContentScreenshotV2
$PYTHON -m $MODULE 'ugc-upload-content-screenshot-v2' \
    '{"screenshots": [{"contentType": "DlVKBsLZiBRXszE7", "description": "CL1cQCSoqHvH7g63", "fileExtension": "bmp"}, {"contentType": "S05m0pGzazM2BUXn", "description": "zUEWTiKMJAf6Agbi", "fileExtension": "jpg"}, {"contentType": "O7KLdZDGwqx7T3l1", "description": "ut2oyolliYsTJUmp", "fileExtension": "jpeg"}]}' \
    'dRMraDLrwh3d0ykR' \
    'GkgqUNIbJMJ9ABbK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'UploadContentScreenshotV2' test.out

#- 151 DeleteContentScreenshotV2
$PYTHON -m $MODULE 'ugc-delete-content-screenshot-v2' \
    'VWO2YEDiqkwKbpdk' \
    '7wlDngNiPPjpSAlZ' \
    'wFGpea5ObBB49Km4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'DeleteContentScreenshotV2' test.out

#- 152 PublicGetGroupContentsV2
$PYTHON -m $MODULE 'ugc-public-get-group-contents-v2' \
    'ClIQmkIdLCvNhZ6P' \
    '8aqZ2yfrC1V7ZpJZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'PublicGetGroupContentsV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
