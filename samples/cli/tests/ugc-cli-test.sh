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
ugc-admin-list-staging-contents --login_with_auth "Bearer foo"
ugc-admin-get-staging-content-by-id '8jkIykR2zbaI6PD7' --login_with_auth "Bearer foo"
ugc-admin-approve-staging-content '{"approved": false, "note": "AwEw1HO4FnKtx4XL"}' 'KAmlDr19uJ3nq6Ve' --login_with_auth "Bearer foo"
ugc-admin-update-content-by-share-code-v2 '{"customAttributes": {"rzVCcI8y3Cz0YqCK": {}, "Uh5RD9vNAp4jinFp": {}, "nQ5xF9wwbvMZyeDe": {}}, "name": "RnVfPUa6xVVBcq3w", "shareCode": "ZpFIYeAg79HcLJXJ", "subType": "7mpVI6eTYAjdPlCi", "tags": ["QQC35cj4KyOVgvnW", "bfRJtsB7cUQZ2QUA", "xJrINPXppPNO3Afm"], "type": "XcgwC3IN6tvKgLB9"}' 'QmJIOq9dP5szG71u' 'tjsQ4CrRb9gUCeVz' '7fWbZIdhevfZvyV7' --login_with_auth "Bearer foo"
ugc-admin-delete-content-by-share-code-v2 'AcodcZwKjYDdmJOl' 'zwm9Su4FnS98Qqft' 'Sjq7sn8yreciPLfk' --login_with_auth "Bearer foo"
ugc-admin-delete-user-content-v2 'VyyJsbGpO6JgehDJ' 'xEN7JlZc8LMq1o2j' 'ZWu4yA3r0u4q1bTH' --login_with_auth "Bearer foo"
ugc-admin-update-user-content-v2 '{"customAttributes": {"XIjfJKyFlM0u1uuo": {}, "Vdn9yVoSlKNchPHN": {}, "L4X3LLaGPGdqLE8S": {}}, "name": "ohhhuiTnJarYYkHB", "shareCode": "DdSzBXdxapwhd5IQ", "subType": "YBQuxLvPuWYvE3fs", "tags": ["Ny9Z9OhxXvCp9y7f", "LD2qfCXnlUnqxT1W", "sRNMZcA92hzC7MNa"], "type": "8vVe4MHX6AgMep90"}' 'AyyUJyAK5PRMRMwd' 'vl0hv6g62GxBW2tQ' 'F5tkTjgJaMYvNQOs' --login_with_auth "Bearer foo"
ugc-admin-update-user-content-file-location '{"fileExtension": "Da4bkcgepqtxjbrz", "fileLocation": "tee7QLTGAak7Kaol"}' '01DK97D2xnik42mi' 'teR5eQAe1rzmmgqB' 'PRmd6mO4oI8KDqeb' --login_with_auth "Bearer foo"
ugc-admin-generate-user-content-upload-urlv2 '{"contentType": "m83raNBJ5y7axEkv", "fileExtension": "I4oxZEDxGiBnNbn0"}' 'zaf7CaOSlHXrUSA6' 'sMJzA5mtqISQ83TT' 'btefXWznDe4LQdXf' --login_with_auth "Bearer foo"
ugc-admin-get-content-by-user-idv2 'FBii2RAMEX5RMjBF' --login_with_auth "Bearer foo"
ugc-admin-update-content-hide-status-v2 '{"isHidden": true}' 'ZGYzQqV8d9mDdUIo' 'iIJFNxuNOmUSWw18' --login_with_auth "Bearer foo"
ugc-admin-get-user-group-contents-v2 'T1IxVWCxdvPL9e4P' '01vxP8xj1LyEirUR' --login_with_auth "Bearer foo"
ugc-admin-list-user-staging-contents 'ERnEMzpImW6sjAHy' --login_with_auth "Bearer foo"
ugc-public-get-content-by-channel-idv2 'CK5tNanGBrkzUvck' --login_with_auth "Bearer foo"
ugc-public-list-content-v2 --login_with_auth "Bearer foo"
ugc-public-bulk-get-content-by-idv2 '{"contentIds": ["3xTtmOFMebS4AdlN", "zwog2IhErkNhNcEC", "WwchW6zL9SkbLlrN"]}' --login_with_auth "Bearer foo"
ugc-public-get-content-bulk-by-share-codes-v2 '{"shareCodes": ["XnGanMazb8jvRWen", "URH48aJuALEcSqcE", "15u6D31DjOsrs3CU"]}' --login_with_auth "Bearer foo"
ugc-public-get-content-by-share-code-v2 'YATdqnQGbqiqOkNe' --login_with_auth "Bearer foo"
ugc-public-get-content-by-idv2 'ATj7eGjodd7CcJUr' --login_with_auth "Bearer foo"
ugc-public-add-download-count-v2 'I6MAugK5kypNrp2n' --login_with_auth "Bearer foo"
ugc-public-list-content-downloader-v2 'Fe9FmN86sK5LOq4f' --login_with_auth "Bearer foo"
ugc-public-list-content-like-v2 't5jGcMICPUYnfG6j' --login_with_auth "Bearer foo"
ugc-update-content-like-status-v2 '{"likeStatus": false}' 'MWuAfDqLMR919IZP' --login_with_auth "Bearer foo"
ugc-public-create-content-v2 '{"contentType": "KOKiAVQXXOmqFHLb", "customAttributes": {"yXmgCNiXH8uenbC5": {}, "CphgMweexsIAP5vH": {}, "LjBJ9iqMcBL4BzhD": {}}, "fileExtension": "UjhKPwbwcvQU5kG8", "name": "bXGFmPAnOkDiJq4x", "subType": "Qye7HqnVK3YVeOWs", "tags": ["9mfVQh3jLBtn9pxp", "E7BYtzB0B4CxyQrU", "pIFvORxTi79DpSjb"], "type": "39ukcR6c2E2r3vk3"}' 'IfAKEbqcNXSGCCvN' 'owNmdpcJgF88ySNq' --login_with_auth "Bearer foo"
ugc-public-update-content-by-share-code-v2 '{"customAttributes": {"4Mj7mulP4tQ6R1Oq": {}, "KVOTniBgLsNhdgQ0": {}, "JWZjNRSzOTqcVNX3": {}}, "name": "ahvxw9gwwhTnjN6w", "subType": "KZGW4y3f0R9s2knd", "tags": ["hhZhwAiLsZs4pmLD", "IQch4IjDq9aT3qZy", "I0rYsWucAkXsVJbX"], "type": "i7eRZa7WwIc895Im"}' 'qK6tVsaUq3stUh5J' '5Z9GiBiSAylX5cS0' 'IeHpWCugmfOL0QQp' --login_with_auth "Bearer foo"
ugc-public-delete-content-by-share-code-v2 'xsuD8PGqku59eFJr' 'OXyDYz9vMUOPG0iH' 'DT8QbF7gHPTPQbvL' --login_with_auth "Bearer foo"
ugc-public-delete-content-v2 't2NRqJGIKzLyH1y7' '2L13Ornyx34luLdv' 'tsTKXMjiw6gYPvfn' --login_with_auth "Bearer foo"
ugc-public-update-content-v2 '{"customAttributes": {"2Qt9iyq3Nyk8ncu2": {}, "Z3eDHH9WaVO4iKhD": {}, "cJ7TCcNIsQ3PuppU": {}}, "name": "xDSK8aOTGMudcxlC", "subType": "V4cNbJGQ57lPdinp", "tags": ["jS2DRfGt9GlyZVQ4", "X67tPZSTpPq3xjrE", "lvvDgw0ag7kSWE0H"], "type": "iqm5IuLryiEXqvUW"}' 'DjU1G0EVjVZw1ToL' 'uPakQN1MpOs1RVFr' 'cg2CXxepx78fvsyh' --login_with_auth "Bearer foo"
ugc-public-update-content-file-location '{"fileExtension": "E2BKtyTDSIM7mkmv", "fileLocation": "Z7Cmsh4US8o4jfMA"}' 'NPpmZDdMiCxmuCCV' 'uFjS1GC1d2b92B4v' 'Egj3HOmhcWm428Xe' --login_with_auth "Bearer foo"
ugc-update-content-share-code-v2 '{"shareCode": "jRF94NIY9nMrBZo0"}' 'lNUBDShHD32vvL28' 'FPwTiXfLcxDC9Ynd' '02mECIQhfIhHtADU' --login_with_auth "Bearer foo"
ugc-public-generate-content-upload-urlv2 '{"contentType": "Q9zimQTQT95pFJUA", "fileExtension": "JsyAfeKOufV4f15N"}' 'ohXu6opxQGRt6Pql' 'kL0diRhLC10ih2EQ' 'fY3XCv4hdOa6FdZh' --login_with_auth "Bearer foo"
ugc-public-get-content-by-user-idv2 'NMd1onFjGRbxtABP' --login_with_auth "Bearer foo"
ugc-update-screenshots-v2 '{"screenshots": [{"description": "XDmgNEJBhgGq5GID", "screenshotId": "hNC66szbCCf73IFb"}, {"description": "RkPSSITz4TjCrJHX", "screenshotId": "GXku2YVuOzhxHmnr"}, {"description": "rV9ZGWrZ05sxe6A6", "screenshotId": "RpmKDebNkylbynkg"}]}' 'T9vayLLiizac7Ge6' 'zKJdlt7rjF5RaJwv' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot-v2 '{"screenshots": [{"contentType": "kWVco2LTo5ijlvDF", "description": "8qBWCQ9dLWYyS8zd", "fileExtension": "bmp"}, {"contentType": "GM5anIloyj9lhbvu", "description": "QdW2jwKUckc794ry", "fileExtension": "pjp"}, {"contentType": "91lX8DD4MYXlrJ81", "description": "lHvv9rqvEoM8YmVj", "fileExtension": "jpg"}]}' 'dVej8N2yv6VTnOK7' 'xAvM7tuL81lsR7xx' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot-v2 'SVp3Gd2TK0HzYviT' 'gYmx82JVBRLPZ6Iz' '8tne5dbguBF6Gsvv' --login_with_auth "Bearer foo"
ugc-public-get-group-contents-v2 'dl8jHz9x7XZIjU4I' 'K9lOLaZaMphKCqTq' --login_with_auth "Bearer foo"
ugc-list-user-staging-contents '3EVheJjoEEXBLIxG' --login_with_auth "Bearer foo"
ugc-get-user-staging-content-by-id 'nNuhoJM3WWPvvCiC' 'f33ViEdqQpoGkUWN' --login_with_auth "Bearer foo"
ugc-update-staging-content '{"fileExtension": "izk5UcPAGv6c1ESC", "fileLocation": "6hZYTYZbzf5aANNN"}' 's5kgSZZNUHbIT9sz' 'ApmWJO5vzzXZj08a' --login_with_auth "Bearer foo"
ugc-delete-user-staging-content-by-id '6K1XRVfriSpPFnZB' 'JZkDnEiyfa2LrnpZ' --login_with_auth "Bearer foo"
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
echo "1..160"

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
    '{"id": "xNnLRH36bqS2oFY7", "name": "6PU1AziBOHEAj1cT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "3u6Zc2FbrTFznTgD"}' \
    'IwZIRWf6T3by2kYS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'CdnFKLc0xcTjqjdc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "EfU61OJYMnW49rWy", "customAttributes": {"np1ck1vT90C6o86c": {}, "SRL9cgbUmulhe98o": {}, "aFKlQicdrxVhrtwS": {}}, "fileExtension": "d9QWVMYz7TU1Tsxs", "name": "ChSclSkb5aBi9K9z", "preview": "yv6gFZXI5nXJ7hLi", "previewMetadata": {"previewContentType": "6HweweRmyo91dIn7", "previewFileExtension": "QqXBDXJcrqKmXDwo"}, "shareCode": "EV6tCdrxw1KOPhuv", "subType": "HuYrGWDK41uMOC0m", "tags": ["RvSoaGk4ktF5wnJD", "g9Q3WXiydCOInVol", "sr6CHmj763vLwtYE"], "type": "JTSiXjcY5ZPkv90l"}' \
    'yKSTWLxSFZ0LpupE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "i5DbkVs3qFTi1t53", "customAttributes": {"0Wj1WfzIvc3VlSXr": {}, "A3XUGud4tVjmxEf4": {}, "XvVhFJTxFHITBg9x": {}}, "fileExtension": "4unq3eOMHIKeTyBG", "name": "5dCUoExnKfV3869I", "payload": "N4V1OdhH4GVU7Exl", "preview": "kmc4xYiLjLyZrXr9", "previewMetadata": {"previewContentType": "Bhtzn8jAdTn6xBhr", "previewFileExtension": "ciryLm67rkadH5Y4"}, "shareCode": "1SLjCPrFa05Xl5TP", "subType": "C5GODS44bmm7jPdK", "tags": ["LddfdsUqjXVzW1Qq", "xnWR5sheLgsAF4ct", "v5guycGiq9j2EyIk"], "type": "nfLDpgHnMOn8nc3g", "updateContentFile": false}' \
    'Z8ZFyyEr0KBXuJBq' \
    'K4QtEydPWLPBYiR3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'UbJc1ZYapx7C477e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    'tqgfOJDUT0uKAPrA' \
    'Rya2IMlNiXpF4qvs' \
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
    '{"contentIds": ["UUpHqi33TcBGkc0H", "jUcnkpU9oVzl2kBu", "LFXIeCEKZUTz3GvC"]}' \
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
    '{"shareCodes": ["AZ5j24acYHbrryHB", "6GO9zP3FaepA3b3Y", "J9nJM6vtT27xv85K"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
$PYTHON -m $MODULE 'ugc-admin-get-user-content-by-share-code' \
    '5MU2qmbeqaVemINd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'ClpF7OvlBIEgjse5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'kd6GEDo08yq5E5Hl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
$PYTHON -m $MODULE 'ugc-rollback-content-version' \
    'eLoog4me2NBFp62x' \
    'lXvVcJerTPW02PWs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "HiKYArAxnKBfBfDl", "screenshotId": "rQQuAc10DjjwMv4v"}, {"description": "rIPRtvhQIyLarjaL", "screenshotId": "OKnX51yAB8Pa3uNG"}, {"description": "KhaLlJzJMSnJIIgs", "screenshotId": "AVmaGYxUX1B9oVuz"}]}' \
    'G2CnYX2YBF2g7TVt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "zYEHUodh3iUfBthb", "description": "epUCTWiZ1uqh7GAi", "fileExtension": "jpeg"}, {"contentType": "FEIu44u83ZLRxYlY", "description": "qlpq03BGdIk4oEog", "fileExtension": "pjp"}, {"contentType": "xc023dIvDiA0tQWl", "description": "HwBcTtztx3VAl6tX", "fileExtension": "pjp"}]}' \
    'YAWWcbcbGWmKgE8C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'Z4AELr5lraa5v5P5' \
    'Cj8hgFsqHC9h5JPi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
$PYTHON -m $MODULE 'ugc-list-content-versions' \
    'MEtgKuiGTYgwWv5X' \
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
    '{"contents": ["ldL6rOVGcRAn51rV", "AQSxp4qTB54mKA3V", "9DKlCeZ7mLYsHooO"], "name": "IaxIpb1cIOJPS3lJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    '80YJ41U4ooQ980yw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["mg1pWpWit1QC7FKe", "0fnHUlmU1unGKM0t", "gfeWy47bbwMI4gGm"], "name": "vK9gW596FwBNrFXt"}' \
    '3TAuKBwBcD12ae6r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    '3hHwya4NpdOzg3hr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    '6ucHf7dbh2iKNUl0' \
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
    '{"tag": "qJqzoKMRMG541PAi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "NjULsx4SnKNXLMUa"}' \
    'DSwwQlnNRZJHBSB4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'fZWEFIZs28Ff1kZp' \
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
    '{"subtype": ["1Zktx3N7WNMYIfcD", "KbLu8pnK34oA1keY", "XJvtggDdXjbdjMBa"], "type": "hFZZGMTcqnWrIprO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["v0BJ9Sgl7H1sdH2R", "IJz1eI7Q5pu9PutL", "f6IrvZoBGQbO4S3r"], "type": "URGWUzPAE6SdV4D5"}' \
    'jftRl9rZmtQUvro8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'TWwXWsz9TVmdMKEo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'hKzuMYDUTLBeCidX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    'juGgx8ncXejmeZtz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "T0qj0ltsqfiZrthV"}' \
    'vyX0OCKDJE3RMUdd' \
    'wSSgxCu8zru1DhGA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'YOHR5BWa9VzIkaQE' \
    'l1iUProNB6hI6IpG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
$PYTHON -m $MODULE 'ugc-admin-update-content-s3-by-share-code' \
    '{"contentType": "cToWgFvdRhG9NwV3", "customAttributes": {"zDuqVlVTypcYPK8I": {}, "xrSZuxWl0Je4fJIy": {}, "FAm3DQht4JwnPS2u": {}}, "fileExtension": "rJqerobWMZGVL5KL", "name": "TxahWlS6XdBaKSLC", "payload": "gOOPXM6XTUh2dJ90", "preview": "yqHDNacl4F9G6Dl5", "previewMetadata": {"previewContentType": "TFwBY6HKXAblkT8V", "previewFileExtension": "GgSH8MGZGwiVj7eD"}, "shareCode": "Taka9ABfX1IByPEO", "subType": "uPhGspRi3bhPQvBB", "tags": ["JI5JxytpcubN4AUU", "PFPscZsXeJOD4DMt", "qfIGiGJovgWSRxZ8"], "type": "N4UQ2fg3V1o2x0hL", "updateContentFile": true}' \
    'wagH7BMT1IZKTdNF' \
    'VBQ1crBXAupATO8u' \
    'XsqVpdiWo8SjDAM0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "Riw8wLYW3n4F3LD1", "customAttributes": {"EDwBXw5uBYeQZOzA": {}, "TNSV9E9yyNb7yaLX": {}, "zAVYymOuhCkZu4ht": {}}, "fileExtension": "rsf8eIFSovTGXaMs", "name": "q8ePN1oco2jx8Upe", "payload": "8SjMvpqM8puggOEd", "preview": "G47gD5i2Ni6AnWn3", "previewMetadata": {"previewContentType": "NdEPhNHSH7eKDfRc", "previewFileExtension": "ngEpTnRUQr3RLOM1"}, "shareCode": "vEx4gqDY6jwyKRxh", "subType": "kLe5zohg9s9utRQt", "tags": ["28b6o3K0COF74tz6", "aeXZOYwbwjMNdxKW", "lBfnRyFS0Ed7gTM5"], "type": "AVrtBQiDTcNnZa6Z", "updateContentFile": true}' \
    'EDPN1Kb4UTPWDXTS' \
    'b55g8LSTs7Nf95lG' \
    'lPrf6obIdnI6Ag7e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
$PYTHON -m $MODULE 'ugc-delete-content-by-share-code' \
    'UYcYJ4QzXCmqr6gm' \
    'PGaHP5SVPvRLiDi0' \
    'mNHb6Lx8eq8SGNwE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    'QO8dYXvBSYvJBwb6' \
    'CjZUMRf2VJetWsok' \
    'vx3BHuTEczr9KjQ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'ttz8MTBt1xk9Iyss' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'SA8nP5PQjpzk2Tb7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": false}' \
    'eKAGiZFCftT0RWEC' \
    'djWYrnulxcCKAru8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'pOaAVLDB4k3Jwkda' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'xR7GJpYmuYCPG181' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'q9GA5DydC2D8UT6K' \
    'Oc4VPDUR9ayazqXR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["qegIUicYXXzxsBFr", "Us9BYp6TgCejBd5o", "7iTST7R3KbbQGERM"], "name": "NpqWb51y5RUzvMfT"}' \
    'kPy0fGvTGgfLKsg0' \
    'b1Bq78cE5O5pmPnb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'iPJ9j4vxmbH3rVaa' \
    'uufxkPHElug48Tgf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'Nu0rqXUOyToLPIRE' \
    'GIKlJt3EP9kKwkEN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'Q8VOHGwbADMfuOmh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    '0lciRhVZ2DeoODXM' \
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
    '{"contentIds": ["zLSrzoiBnYi5UWs3", "tYlYeMoCimJySocR", "vUWDOrFZKPNoN9AW"]}' \
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
    '{"shareCodes": ["tLK9TFgi9j2XMh9W", "pifqjNjLOtNQts2y", "xf6MLZJ2jZfZbpTJ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
$PYTHON -m $MODULE 'ugc-public-download-content-by-share-code' \
    'ezzriCDWXT59SRu0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'YqUxKDc84OMIzvTS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'cdbKBsAyJMz4ILND' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": true}' \
    'GhnfuF4WZiQVICVp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    'Wd3UM08gMXhdf3ju' \
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
    'XW4JprIb3CJCAtvS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'G8Cfa9dzOJDGCTHI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
$PYTHON -m $MODULE 'ugc-public-create-channel' \
    '{"name": "OFjeXbsSgR43kIDz"}' \
    'xBwqRJTzrHNZWUsq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    '5lQo2jy29EJigqYh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "yVhURx1yPeczRpdk"}' \
    '0HATGylx2JG2KNGf' \
    'hzfCTxxrsRRLee3T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'cJ7DQIi45aCDHN9m' \
    'Vug2zkVf6KgpKOcn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "3tMD9UT67bOwugFD", "customAttributes": {"a6wUQvehKqwCh86X": {}, "mRkCEcfHDCdl59Wp": {}, "9A3tXGve6DdK6uvg": {}}, "fileExtension": "8f2cIoByk9fxtvsg", "name": "eAxo57nKAbZpsbJ4", "preview": "Iu5KJ0ynxGBlacDC", "previewMetadata": {"previewContentType": "dFe8ATUqVxcSthrp", "previewFileExtension": "nMUBsnUfuQIcSbUt"}, "subType": "5UGkInFGpuUsdtq4", "tags": ["dOwNESzCEW9dUVhZ", "jLftC3sCS8CpLCqP", "D9CeDEdCnnL6Kt1B"], "type": "jj3b8QM8Rr45ULqX"}' \
    'QgvwD3PsKDJiWxQB' \
    'waS7rDBf2S54phbd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
$PYTHON -m $MODULE 'ugc-public-update-content-by-share-code' \
    '{"contentType": "yGDt47f9GWRlE9hq", "customAttributes": {"z6rjDNo4rhjxUdMM": {}, "83WekqfWv04vvn9b": {}, "k5qr8qs2mqtnGAqX": {}}, "fileExtension": "UjNypF6MMqWpdEJs", "name": "PoaIbYz8cK5jlpJd", "payload": "re5ur6yvWJDdvM7T", "preview": "7PX2vamIRZHzsIYO", "previewMetadata": {"previewContentType": "CUoiCXNjrdQL2jdx", "previewFileExtension": "1eIba1sB0HsJ06Dz"}, "subType": "fbzRYt4OVUyumBeI", "tags": ["qdQGZC5kM03HHijs", "QRj7N8IAjmsonjj0", "ZR50BQ1U6aFD3O2k"], "type": "XQSc58zgZVl4gIF7", "updateContentFile": true}' \
    'qQMgZWAU6E92nHJz' \
    'vw7tnYtGfv0EJyjB' \
    'u4EzwRjD7jmQJeFP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "ghqamSc5y0X48eT7", "customAttributes": {"Mluexk87b9Z5BTsE": {}, "A3EdmW8saabP4xRo": {}, "wfNojzPXI2v0prR3": {}}, "fileExtension": "OEey0MkZwS6TYwNN", "name": "3UYhic03qGEg5fNz", "payload": "BVrjo3g8CfRwtyl1", "preview": "HeT7VEPgG40QyXzs", "previewMetadata": {"previewContentType": "Ozgck078IghoQBp2", "previewFileExtension": "mWAOYksczxBS0OBC"}, "subType": "a2vWadLmQtYKmEMz", "tags": ["icbuL2S3RiW8dLTC", "BfGUdVEdvdQL7sVw", "cZ2PofaJoSqtrEOq"], "type": "xH46fRTSZoDdT0fe", "updateContentFile": false}' \
    '9P1Tkm08luh4dpPR' \
    'MDbUXBWTbpAogG2w' \
    'lZkLhuU5FI8NijFI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
$PYTHON -m $MODULE 'ugc-public-delete-content-by-share-code' \
    '0GKwJ3vfXlsAMy2Z' \
    'p2UAGxHnmSxvkG9U' \
    'R5q9neoW6JBcGp9R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'x2RfcRhXpmeeHdvp' \
    'has9S7ivHEoLbUMM' \
    '47f1UreUpxEkXIbE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
$PYTHON -m $MODULE 'ugc-update-content-share-code' \
    '{"shareCode": "1ETzRJZKMavu4Ul2"}' \
    'IaieEbPSE7TGkeHs' \
    'YsW9oGBN1pYMBwbP' \
    'ZTlMlUvFEiGprcNS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    'Q9kEeXBZ6FVrBzyh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'yhoS6a9oe0JaXFpf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "f28uYbe4Cf2HEHvV", "screenshotId": "evhISjbtBJUK5fE3"}, {"description": "OufPSX3PdOU2V9yw", "screenshotId": "94oa8UJ34TIedV3H"}, {"description": "yoX4VnO2LpBU08wf", "screenshotId": "nlHBXFIqFUmgUSMM"}]}' \
    '5au8GJT0mkVPI6zU' \
    'tf3QaJPGrTNcXXTU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "IggoH89QNmI17UDb", "description": "19R6H7r1ta3m7jK5", "fileExtension": "jfif"}, {"contentType": "qGdCZIc6EFqBKxbS", "description": "7Q2OgRucL1jwRXzf", "fileExtension": "jfif"}, {"contentType": "eNERUf8kjci1Ctcc", "description": "v9Gv4tOcbnuCqf0l", "fileExtension": "jfif"}]}' \
    'bkOfHaGr5kdazlyp' \
    'vt6lSLfU7HByGXPM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'qxj4hBgVY3YAxZLK' \
    'bcOdyjqf6Q4oiwoJ' \
    'caRMEb15LBlTVufc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": true}' \
    'wwHj0Ur5F2PWGTTD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    '81xhNP4t6kYBUjyX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'An3bWQF6QcAiJpXI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'rgroixptZhckUTGk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["cBOE4qMcH1Kyi8ZF", "vGcV8DY0XOkDstxZ", "cY1HgAnZV4IOglVL"], "name": "qb9lGAJUg21Lt7Jw"}' \
    'gwMUSuC3Bajy3BcE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'MCtQs2FcEcvVAyId' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    '6Cp85HVDsZBQgOnX' \
    'uXsGThYZrmm0wrFM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["nPpWgrQD4hEk0OLj", "YsnignE7KcMF7fuD", "bzRRYMNXWUsp1tOi"], "name": "bJY9aL9ie6vvMbiN"}' \
    'URrlm88QlKyuoya4' \
    'JgakZyUV7t73VnSF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'buxd4KYZ0jk0UZdh' \
    'tnKu9oTc8pVkiyGs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'j5JdXzRxfNEjUMTs' \
    '8WIObJBTsvsw76uI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'SRX0bKVoWtoUW1P7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-channel-idv2' \
    'ocuBAldDSUS7Haa6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
$PYTHON -m $MODULE 'ugc-admin-create-content-v2' \
    '{"contentType": "unq1yQOSRvyiLBRV", "customAttributes": {"tIDi2piIQFVmzMid": {}, "w70KSahpYZdKZRyR": {}, "9AX7JjxvNZhM84Di": {}}, "fileExtension": "Zk6ySrB9SVFctW7Y", "name": "S0OkL78XeEAtALFI", "shareCode": "3v8yha4pd5A7MYcp", "subType": "BD6lKNb8RxvN2u5J", "tags": ["7baOeLH19fqBwNbN", "e1ffYRtIvQaKyevW", "YtZjK6J29v8MpBSp"], "type": "o3AKRmnJkzJHAckU"}' \
    'yBksYQfDm0RNFwiz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
$PYTHON -m $MODULE 'ugc-admin-delete-official-content-v2' \
    '70tRVLMlHi8i9gOV' \
    'qajUWrgEsWDtaKzn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
$PYTHON -m $MODULE 'ugc-admin-update-official-content-v2' \
    '{"customAttributes": {"8dZwnnGeZsZVgbPz": {}, "PFbrOMZMgWkFN7Tp": {}, "kx6GcfyOg6ZUrrp9": {}}, "name": "ubg9mndW2JKmQafU", "shareCode": "s2bxYztOEyVbKIf1", "subType": "ZbzgUwd8DHoCQykm", "tags": ["XHYmkRlg7gYs6unP", "YQ9jNQN1di1ldhOh", "6HvjnYuV7NfC4A2O"], "type": "DiZhbfb8QqCyK1XH"}' \
    '9D6vl5eFdFfgK46G' \
    'jCWaP8huTmnq3FGQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
$PYTHON -m $MODULE 'ugc-admin-update-official-content-file-location' \
    '{"fileExtension": "n3Ahu5wxq6oJq4mC", "fileLocation": "hmQHQhO9IKBXDFQf"}' \
    'XFD58sG6uDhFYlrz' \
    'JBYSeMuJfQecutjS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
$PYTHON -m $MODULE 'ugc-admin-generate-official-content-upload-urlv2' \
    '{"contentType": "029BiJWOG1m7MKcl", "fileExtension": "r5igjNTVItrH2X78"}' \
    'hxJgaVfw5Vnyq8Oz' \
    'TE89WDNoMcOmbfJr' \
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
    '{"value": "CJQIj1haAosKglqa"}' \
    'CXE9ytpIO8btO3Ow' \
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
    '{"contentIds": ["NEGSW5TaW4to7QCY", "2NGGvi9kg3rMIzNm", "hJTNQjKlwjfJ3TJ2"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
$PYTHON -m $MODULE 'ugc-admin-get-content-bulk-by-share-codes-v2' \
    '{"shareCodes": ["xVpge70WsLfgbZie", "RvJI5sT9DH3DfLCv", "8q4Thmq09bBgPAYx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-share-code-v2' \
    'rBE9jlnTgtgW33wD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-content-idv2' \
    'wD9RKvQX4yFQFdrR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
$PYTHON -m $MODULE 'ugc-rollback-content-version-v2' \
    'oM6FoqCYw7AlxO6q' \
    'dFpc71sSck3ggZWJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
$PYTHON -m $MODULE 'ugc-admin-update-screenshots-v2' \
    '{"screenshots": [{"description": "lSlCQMDji329PfVr", "screenshotId": "vMEPtpsSNcpK1QkB"}, {"description": "2Sy8Ww79LVeVskqe", "screenshotId": "UB7RSayqGFguhh3b"}, {"description": "vadRthdbVApebRA0", "screenshotId": "9rW8i8krFWJhe03c"}]}' \
    'oRFok5d3AyGrZO8G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot-v2' \
    '{"screenshots": [{"contentType": "uoXNSoVEBG7VbBPU", "description": "Wipz9C05YabFX4FC", "fileExtension": "pjp"}, {"contentType": "BtXJKG3rqBmILhtW", "description": "m8RQvRUbUDSiefGE", "fileExtension": "bmp"}, {"contentType": "elFAadM9y66Drf4S", "description": "SGGt3MiBKohow3kK", "fileExtension": "jfif"}]}' \
    'w4v3q6JRHcn7KaoC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot-v2' \
    'EkRdo6qHYIZWnXqQ' \
    '1oHFJ9Q0vqsL9Som' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
$PYTHON -m $MODULE 'ugc-list-content-versions-v2' \
    'qWsGA76yxi0QzZWf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
$PYTHON -m $MODULE 'ugc-admin-get-official-group-contents-v2' \
    'mP2sx0KO5bEJaPnA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
$PYTHON -m $MODULE 'ugc-admin-list-staging-contents' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
$PYTHON -m $MODULE 'ugc-admin-get-staging-content-by-id' \
    'FjsodyJQVVBrShGb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
$PYTHON -m $MODULE 'ugc-admin-approve-staging-content' \
    '{"approved": true, "note": "IuqK8C403HgoXCR6"}' \
    'XOMXwKdfqk8T4QHK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-admin-update-content-by-share-code-v2' \
    '{"customAttributes": {"30EX0FclpDl5Hsur": {}, "acO5MnjnxD1OXkxS": {}, "hFVQTRekLfjmy8zo": {}}, "name": "sRCRgVwbrQKmb01y", "shareCode": "A7U7dGMjupZkZQY8", "subType": "CNyT4k3DIbfT22G5", "tags": ["NpE130YWSgxpKWtd", "tdtVW9anENmxb9e7", "vXZV3ig8Jg5VByeI"], "type": "3ycMcYYBixKJXCIS"}' \
    'Qdwec1m8BusV9tUh' \
    '74KVo6Xqjz2xUKLN' \
    'WSmYyVvyelIJ8Qga' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-admin-delete-content-by-share-code-v2' \
    'LMqi836ULa7cfZl4' \
    'VuY6rsZyo6CBRRno' \
    'OikIxXKKIR6kPmsw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
$PYTHON -m $MODULE 'ugc-admin-delete-user-content-v2' \
    'm5TCAU1cKApdJDnE' \
    '73GLmSZns5owBhoU' \
    'g4LsGP6KLPXkvUv2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
$PYTHON -m $MODULE 'ugc-admin-update-user-content-v2' \
    '{"customAttributes": {"XiXaBzsmaxjTZPlL": {}, "itytGka7Kv5TacQK": {}, "F4OlRGdmXxETLEQr": {}}, "name": "r3KCAV9alq3hK1G4", "shareCode": "kKooSNNUZuiynZ64", "subType": "IwncZPk82GF3eTC0", "tags": ["vzZUDj9dzGgGVxo9", "OHgfHumyfuBNisec", "YbcOpR45VDlvSc0M"], "type": "r7ImwCwGqOf0bNs9"}' \
    '7KvKyj3MqS7Dcmtf' \
    'h50eObbrmgjhWK0x' \
    '0ZidAJ1CU1eD1La1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
$PYTHON -m $MODULE 'ugc-admin-update-user-content-file-location' \
    '{"fileExtension": "6Bw3JbUnUDh5yGjj", "fileLocation": "v4Mwrv2vancmR6Z7"}' \
    'rb21A2E9pX0BWCMq' \
    'PsRk5htdM5T3fDSr' \
    'SHrkoqv2mM6soMaT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
$PYTHON -m $MODULE 'ugc-admin-generate-user-content-upload-urlv2' \
    '{"contentType": "vQq2a9YdFNtRVSO0", "fileExtension": "js0hG9xmSnzd7zgU"}' \
    'xAogcnGkXk17QPkJ' \
    'HRhmLKQuQVFSKiXl' \
    '8G2uf6E8EajXLSAS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
$PYTHON -m $MODULE 'ugc-admin-get-content-by-user-idv2' \
    '8MKMaxQ1QyJCpKed' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
$PYTHON -m $MODULE 'ugc-admin-update-content-hide-status-v2' \
    '{"isHidden": false}' \
    'CiTNAxq26gZrPqCs' \
    'SDspvgM16sZ6rjnk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
$PYTHON -m $MODULE 'ugc-admin-get-user-group-contents-v2' \
    'H4ExObppC6CMYDm5' \
    'ge659UDEOF6gp5Uf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
$PYTHON -m $MODULE 'ugc-admin-list-user-staging-contents' \
    'mjtiVbqJnZcrqrPy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-channel-idv2' \
    'e7fCwi7Il2wIFlHm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
$PYTHON -m $MODULE 'ugc-public-list-content-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
$PYTHON -m $MODULE 'ugc-public-bulk-get-content-by-idv2' \
    '{"contentIds": ["9N6owMHMtJy1Oqn5", "9tEGm9NYeUT5P0nx", "8TqSZdZ5C8mFI9Tn"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
$PYTHON -m $MODULE 'ugc-public-get-content-bulk-by-share-codes-v2' \
    '{"shareCodes": ["vzEqBNMF9CZvPxT5", "zbreMc9fBoU3RHND", "FjLKFrepy56eW1km"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-share-code-v2' \
    'b15QeIQF51c4MqJz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-idv2' \
    'DSvELgBe6dboSdhk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
$PYTHON -m $MODULE 'ugc-public-add-download-count-v2' \
    'BzAzPkt1efGJeJax' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
$PYTHON -m $MODULE 'ugc-public-list-content-downloader-v2' \
    'yHYutgXucx85vHA0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
$PYTHON -m $MODULE 'ugc-public-list-content-like-v2' \
    '09FAb21jxeWXk80y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
$PYTHON -m $MODULE 'ugc-update-content-like-status-v2' \
    '{"likeStatus": true}' \
    'D6LCgdFxRGj00RT6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
$PYTHON -m $MODULE 'ugc-public-create-content-v2' \
    '{"contentType": "LvcnGMJbJIYLssMv", "customAttributes": {"y9gkfTMRrXVRcAVR": {}, "DX6gmDfNfPGYYSTu": {}, "nMgt3C8hEguCqlMH": {}}, "fileExtension": "iQN3HWJw9zIWsiP2", "name": "JQ24meDrwEuTyM2q", "subType": "ohglzO8AEl6A9sh2", "tags": ["x2ur2ccp7R7OqPqI", "jS4i0N9ytb3c8pVZ", "8GlU8962e6gtn5pU"], "type": "ARJM1T8QwMNOAzXm"}' \
    'yHEV4g9P6a280S5R' \
    'NB5dVCsB7xL4axSP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-public-update-content-by-share-code-v2' \
    '{"customAttributes": {"gPCiwLxCFLDixZwV": {}, "tt3RVTl0tR00oQgc": {}, "HdGGK3x76U1EIckl": {}}, "name": "ttmrpgF5szl0sMY8", "subType": "es36r1FgR70eNLHk", "tags": ["VrEFd8xArWJuCAIf", "NBSHgpFNw9K9pmAI", "c6VSfE9nbE2PMv12"], "type": "ZSRJkujxbCu1HFaj"}' \
    '6Vxs3GuA4S1dS7H7' \
    'yIS7b5TSDRIoMg7D' \
    'c5APzfzXDELJFaIa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
$PYTHON -m $MODULE 'ugc-public-delete-content-by-share-code-v2' \
    'EMW5bhJyL72WDyhB' \
    'sCCbnfihnXKxGxau' \
    'pnTTq9ihZkvFKfSH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
$PYTHON -m $MODULE 'ugc-public-delete-content-v2' \
    'Qh8I9xk3sFl0cbuC' \
    'RM69XKkLwioRaKnW' \
    'hlh80BhYe2fJDS6T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
$PYTHON -m $MODULE 'ugc-public-update-content-v2' \
    '{"customAttributes": {"75Q4ulonMFjmYqE1": {}, "wJhfogWg2Apm0sUy": {}, "18aWn65Co0vdCk8s": {}}, "name": "o6JSaZAIadKDEZyw", "subType": "onA2SrEdN2tmGuX6", "tags": ["r0gBVUUeKKlPKtE6", "gnYxmkmCWbs5qugk", "lBUS6uwWrCQt86Jr"], "type": "g8tLAJWpcyNkUvqn"}' \
    '6eXr6FNbKJ05Orya' \
    '6LSSUlugIAknXcSa' \
    'VYcAYp7qSiDvsfMU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
$PYTHON -m $MODULE 'ugc-public-update-content-file-location' \
    '{"fileExtension": "OpWv46sXvpOjrpRo", "fileLocation": "4mYrCeQUnYoID2Uq"}' \
    'O0iAXA9dB4ib8HDO' \
    'J8TNiP8KgEAj3dbR' \
    'TI0i6dO3zkbDseh4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
$PYTHON -m $MODULE 'ugc-update-content-share-code-v2' \
    '{"shareCode": "tJdoGcwMBmegqVUa"}' \
    'WMJBjrV0p9A7tcHr' \
    'V0MbJGr4drgkDuWS' \
    '05m0pGzazM2BUXnz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
$PYTHON -m $MODULE 'ugc-public-generate-content-upload-urlv2' \
    '{"contentType": "UEWTiKMJAf6AgbiE", "fileExtension": "DMfCckWogE5gcfF8"}' \
    'AMGZ2FBS93Mg6TKw' \
    'dRMraDLrwh3d0ykR' \
    'GkgqUNIbJMJ9ABbK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
$PYTHON -m $MODULE 'ugc-public-get-content-by-user-idv2' \
    'VWO2YEDiqkwKbpdk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
$PYTHON -m $MODULE 'ugc-update-screenshots-v2' \
    '{"screenshots": [{"description": "7wlDngNiPPjpSAlZ", "screenshotId": "wFGpea5ObBB49Km4"}, {"description": "ClIQmkIdLCvNhZ6P", "screenshotId": "8aqZ2yfrC1V7ZpJZ"}, {"description": "PHCMqvcYmeDLYEzs", "screenshotId": "2SQUdKr6vgqkjycq"}]}' \
    'clNlBORlC8ZkjsxY' \
    'tgxplHTPLzynjFZg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
$PYTHON -m $MODULE 'ugc-upload-content-screenshot-v2' \
    '{"screenshots": [{"contentType": "F3erw7UsyHq4bBb0", "description": "n1JhPUS8BRPGV9n7", "fileExtension": "jfif"}, {"contentType": "9zLJdKMexeJc7Nvg", "description": "TSgKjCxZjKf8NA4c", "fileExtension": "pjp"}, {"contentType": "fSRy8GgVk77fd1GS", "description": "5YkyhAiAItnWUmD2", "fileExtension": "jpg"}]}' \
    '5fp1egsx3ErheNwq' \
    'd5priclNNqLyrlzr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
$PYTHON -m $MODULE 'ugc-delete-content-screenshot-v2' \
    'J4QHbfnAdtkujxHf' \
    'f7n1yaNCcjgFhS0U' \
    'RBhl0L5FCbOn46W2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
$PYTHON -m $MODULE 'ugc-public-get-group-contents-v2' \
    'B2uPQLrt2t6bVpCg' \
    'KvPXSDufmKh783cV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
$PYTHON -m $MODULE 'ugc-list-user-staging-contents' \
    '54JsVBRB0rY0xfWd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
$PYTHON -m $MODULE 'ugc-get-user-staging-content-by-id' \
    'dACyHSmo4KX9TPO3' \
    'K1k5ZM8btmGsgXNX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
$PYTHON -m $MODULE 'ugc-update-staging-content' \
    '{"fileExtension": "bpqxh76Af5JSwjw2", "fileLocation": "fE2g6jXV7oai2oDm"}' \
    '9FaP0HJ98tE4UyoQ' \
    'g0b0sGOkzxVt15LK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
$PYTHON -m $MODULE 'ugc-delete-user-staging-content-by-id' \
    'mkQ7YBhsOuJ0ypkk' \
    't2G4eFh2YNsdoxpL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
