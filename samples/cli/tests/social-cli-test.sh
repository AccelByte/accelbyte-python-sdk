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
social-get-namespace-slot-config --login_with_auth "Bearer foo"
social-update-namespace-slot-config --body '{"maxSlotSize": 62, "maxSlots": 39}' --login_with_auth "Bearer foo"
social-delete-namespace-slot-config --login_with_auth "Bearer foo"
social-get-user-slot-config 'AxcVpFrttufHIRdH' --login_with_auth "Bearer foo"
social-update-user-slot-config '9UzVRiXbqlAw7r6W' --body '{"maxSlotSize": 9, "maxSlots": 20}' --login_with_auth "Bearer foo"
social-delete-user-slot-config 'HpzSn3ZPUdc0qh4n' --login_with_auth "Bearer foo"
social-get-user-profiles '8mzZ0m8SAMTwE6I5' --login_with_auth "Bearer foo"
social-get-profile '6IaRDBXxyaNoMR6h' 'kspInrAip6lyzSxw' --login_with_auth "Bearer foo"
social-get-user-namespace-slots 'ElFHHdgs21Jub74C' --login_with_auth "Bearer foo"
social-get-slot-data 'UkNmKJfh5pUkHODp' 'oMF78NY4YkHs1cnz' --login_with_auth "Bearer foo"
social-public-get-user-game-profiles '["1JSDgY1TXp38zsCT", "CrbCbPOyNQkT7Nvy", "E3cwyALczNIicXm7"]' --login_with_auth "Bearer foo"
social-public-get-user-profiles 'agSrjJW2OQNOs1PX' --login_with_auth "Bearer foo"
social-public-create-profile 'hT5FvdiRilZ7oFgx' --body '{"achievements": ["4c8OumKtPDKJDXn7", "Z4U68su8XfqlqNiT", "vB6SdAdIhUDrwoZ5"], "attributes": {"MecdKi5r6QEa1ysL": "Ezth6mXhzkzWkFeZ", "SoEAcBdW19m4eu6d": "5tA5jUmiTqpyhPFd", "xLzFQN05MYzYiKWe": "5dNRljv7IPrDQQRg"}, "avatarUrl": "at0SevkLGMS0lyuI", "inventories": ["9a2I9u6Vpbsx5w8h", "qUI06UpOXGSLmCVu", "HOPlLlkvR8sKgnuR"], "label": "kgghGoYupD391C2q", "profileName": "tPYokahFjkQsfCaT", "statistics": ["mt1d67FXGk2s9Q0m", "PVo3twu0MesTCf9x", "4rt69lna7qxNeIxP"], "tags": ["z6MbwL6IY69z1UaL", "qYSYWytLPziZMdjx", "cBZufQxGiHPllG4c"]}' --login_with_auth "Bearer foo"
social-public-get-profile 'YEzfTD1ZBm3MqHcU' 'mLZZbSqb8RwNmn9H' --login_with_auth "Bearer foo"
social-public-update-profile 'rNQy4uZAAiE0mit9' 'RGCCHYzUOcEdscKH' --body '{"achievements": ["PEqgA8yu7Vk6Jt4Y", "mos9Jcdos4fYcTVU", "6RBt0zYoMcHyCUEX"], "attributes": {"lAvxJMdalwSyliWM": "NW5NyLu0M3VHh2EI", "8JlDbPWbQ6Q9lNmq": "RBaAkLnvxkT1X68c", "mDc3fxU8MyKrQpM4": "hkkK6KKXNB3Gv0Iq"}, "avatarUrl": "mF51TkhjYnaq6foW", "inventories": ["vXa3bMrXsDr6kILs", "SSyDdmykmoPYgc2L", "4jk4Lo0LSP0pf4Ix"], "label": "jUkl535X3ateEKDp", "profileName": "ADz1x3poD3Qgb3bo", "statistics": ["LQQ1MzH7Qm8bwbmX", "gdAPh1EThG96gAFK", "K2WDgCcxvONZm3Ee"], "tags": ["ERmDnyeFoF7VSZ6p", "f3vneSD2Tb3g7mSQ", "UhAEtrmjqU6YE3p4"]}' --login_with_auth "Bearer foo"
social-public-delete-profile 'lSck0ZHn5GI39YBH' 'qaTHeKtW18iGeUlc' --login_with_auth "Bearer foo"
social-public-get-profile-attribute '9d9sogWa24CKNS0G' 'qVvUfHQvsHXNUNe4' 'mhgo5QB65lSAiYnN' --login_with_auth "Bearer foo"
social-public-update-attribute 'jkfZrQvGgbLdLsFz' 'HkBMr1yrOMlNFSrU' 'EirnjX9fDmIbeZxz' --body '{"name": "fTcyiuATus9hsfpF", "value": "DcSDG8aMVGLiBNrD"}' --login_with_auth "Bearer foo"
social-public-get-user-namespace-slots 'jqoxcwgGLXpUL4pp' --login_with_auth "Bearer foo"
social-public-create-user-namespace-slot '2ncYAHdNzDmeIP6r' --login_with_auth "Bearer foo"
social-public-get-slot-data 'OvDz9KOsb392k6Ym' 'JFfRByjlBiuFM3FI' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot 'oVk8T3GpAnkCmBUq' 'g2SCnqntX9y1aZSW' --login_with_auth "Bearer foo"
social-public-delete-user-namespace-slot 'MiVi10sG6vxkfUcm' 'qRRbceJ5i0EeDxOg' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot-metadata 'BnhhqElIaDml48wd' 'NFLTm5T50x9WT0Gf' --body '{"customAttribute": "H2rtOa4EXsXzOXQA", "label": "k4mqrxzTtuLl4Xlb", "tags": ["GL8QOxtjzm8y2wNh", "mwoYZyI4EFZKBcYr", "CEAE7WIsfmx40NLR"]}' --login_with_auth "Bearer foo"
social-get-global-stat-items --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code 'c6m8heKnWhzfe2Nu' --login_with_auth "Bearer foo"
social-get-stat-cycles --login_with_auth "Bearer foo"
social-create-stat-cycle --body '{"cycleType": "ANNUALLY", "description": "Uj7fdgLA84Z8YYk6", "end": "1993-05-06T00:00:00Z", "name": "EgJjBbEDoNf3n0hE", "resetDate": 30, "resetDay": 56, "resetMonth": 90, "resetTime": "kMNxvvKgAT8mJrYq", "seasonPeriod": 95, "start": "1974-12-22T00:00:00Z"}' --login_with_auth "Bearer foo"
social-bulk-get-stat-cycle --body '{"cycleIds": ["a13lk1dQBHO86IlB", "EW6GLbc0NaKDUL3s", "iI07A68eaqC2J9jy"]}' --login_with_auth "Bearer foo"
social-get-stat-cycle 'hnetU4RwTqUXlTDB' --login_with_auth "Bearer foo"
social-update-stat-cycle 'zOuYsaZA2yyd4mbq' --body '{"cycleType": "DAILY", "description": "ZkP7cFdP43e5dC9X", "end": "1988-08-12T00:00:00Z", "name": "9bRVhyaKwwrAP2aM", "resetDate": 22, "resetDay": 64, "resetMonth": 41, "resetTime": "4TxodenSrUTvfqU0", "seasonPeriod": 2, "start": "1973-11-28T00:00:00Z"}' --login_with_auth "Bearer foo"
social-delete-stat-cycle 'oMm5cTtFWbotQyXJ' --login_with_auth "Bearer foo"
social-bulk-add-stats 'RcQWsmqPNs92epxk' --body '{"statCodes": ["0i8VxsZNereSvf96", "99mCEHThUJkETAsS", "p7gh4TeUTkOkAYfJ"]}' --login_with_auth "Bearer foo"
social-stop-stat-cycle 'B8AT9t4Tv207Y2QD' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items '3oD5fLCr3OOlXVv8' 'ZGF7uYnGzpipNDig' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item --body '[{"inc": 0.6445182006727916, "statCode": "Jma1MbqqZtfNWql4", "userId": "nmwAft4gqkNNlWkD"}, {"inc": 0.9983050889748251, "statCode": "eOziYRFOn0jJLHC9", "userId": "LxhvNXTwGBCtohLt"}, {"inc": 0.18615409696855045, "statCode": "9Zuhytm5UDrT6QXC", "userId": "s5SPBbRPZTF6oQAX"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value --body '[{"inc": 0.7590947304401865, "statCode": "G7tnsZg5QgXjvyGJ", "userId": "PN4eXbJE5Vs2Gcyo"}, {"inc": 0.1977748429595615, "statCode": "QoIXimBJehyxlNsj", "userId": "UgxBkF6wFPoJeQed"}, {"inc": 0.1305669012554801, "statCode": "ogEhhM2rIizGdKvO", "userId": "Pdq5xrgxSmy1DN9L"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items 'FkYW5DQyj4bj5Ro2' '["ogaKt2ujQSa3Zdb6", "5UXmy0Zp6iIaTIKU", "kmkk9QM0NBMA9ORx"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item --body '[{"statCode": "pzwLR2AK6eXUGPJs", "userId": "w1fiP80G9Pclxcft"}, {"statCode": "2ulIJzPyrVEiOG4U", "userId": "cqsuGKHhMRWLVd3D"}, {"statCode": "lhLuIpomM8sm1Mia", "userId": "I1mX2tJoARtdbBe7"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat --body '{"cycleIds": ["omOR2nvYI9TVqJdv", "V709xbnGezKsDwG2", "udsMrok0WvGYYnx4"], "defaultValue": 0.41617567346829587, "description": "cWbfUpaXp5JMl5LL", "incrementOnly": false, "maximum": 0.0055702606541150335, "minimum": 0.9810403017191413, "name": "SRgwsAj1ik1jglaD", "setAsGlobal": false, "setBy": "SERVER", "statCode": "PqqRRulpqpymDkQh", "tags": ["qB5F93zFQbJndUDp", "trHWwRVnwVBOqOHi", "8pWGd1juYhiqjRJO"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'dONneAczbBdHb2sl' --login_with_auth "Bearer foo"
social-get-stat 't71B1SmZp2JZp50C' --login_with_auth "Bearer foo"
social-delete-stat 'nPb71ORYcmQbTU5J' --login_with_auth "Bearer foo"
social-update-stat 'X8ccLjMXJRk0eaKQ' --body '{"cycleIds": ["DOJvrTefglSs6g4i", "lOC3mNqF7Bl0Lcgh", "Y9u02aCNYIWekp18"], "defaultValue": 0.7698618065817802, "description": "HfPEspxwhRON0bc1", "name": "eMbEIjowLqc3ecjX", "tags": ["tj3giPg4x4yiPX6u", "JbZDKKoxLE1Y3Dym", "es1Hhhkg1yLVbLFz"]}' --login_with_auth "Bearer foo"
social-delete-tied-stat 'HEP8cM4NTwr0KHaA' --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items 'smTej52WKi6tArAU' 'Rt9plCSVq8PdH6hJ' --login_with_auth "Bearer foo"
social-get-user-stat-items 'PUAc0RVwXgAgntLM' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'CuaXBWQi6BqPg4xr' --body '[{"statCode": "0lCancUZGCHsZYoL"}, {"statCode": "fR1KtOv7Zy0b65uv"}, {"statCode": "uKNuy0ytZQ7M6Nzy"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 '1adnSKOLFKx1dX4L' --body '[{"inc": 0.3264947586215158, "statCode": "WJu3pDMUAeeZ97SB"}, {"inc": 0.7007452659427176, "statCode": "OPYuG6XqP6oo7G73"}, {"inc": 0.4167583320346889, "statCode": "dxTgOfnwIdlNa29f"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'DLh741IslKHzGlLK' --body '[{"inc": 0.7893772187089259, "statCode": "UtDQs61OQAoxyyQp"}, {"inc": 0.7055319829794326, "statCode": "WCiiPDGQhNPEwiJC"}, {"inc": 0.09616199561235972, "statCode": "2XJVrlzqQls1ozhL"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'VA3kE8jKvgatOEBM' --body '[{"statCode": "70TdlNBJYOmpu1VC"}, {"statCode": "arzBsV6xnZ5Jrzzj"}, {"statCode": "rcaug6CWVG8SWP3g"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'lU6muswVJnNnN7kA' 'a7j0riFc5HTHQIoV' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'sGo7dwV9DBqFKHQk' 'ETJyTlUrwDTnoujQ' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'D4IEiH9Z5qXn3aoR' 'tlqOECohViHA5Czg' --body '{"inc": 0.5040514525304463}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'Sy8X1A3PrIfapq5A' 'AeMe4L3mDWORBVXT' --body '{"additionalData": {"IIJM9XsYIIZxiXNM": {}, "R9BgaWcFX3SUBhyo": {}, "TsMWPAxUMkawaGpA": {}}}' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 'yrIwMif3BOdkocVT' --login_with_auth "Bearer foo"
social-get-stat-cycles-1 --login_with_auth "Bearer foo"
social-bulk-get-stat-cycle-1 --body '{"cycleIds": ["d4BxqGWV6mTJ0sQs", "lKdxL6ozRmDD0jJv", "6XNbjvqhnUVLWu8o"]}' --login_with_auth "Bearer foo"
social-get-stat-cycle-1 'lfV5OemPYdYT7DRO' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'CjtuzFMbAG9YI89h' 'mguB8FOTjMLo4b9r' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.5608410207009888, "statCode": "zqYkEpstyVTBcrM8", "userId": "rG0rH0zcswwVeMK6"}, {"inc": 0.613929134266353, "statCode": "bGIVIu8vvwLc7KY3", "userId": "uVoJXTIMtpgkieDy"}, {"inc": 0.5066022568661668, "statCode": "97lGdMiHKxbWCYzo", "userId": "8yO2KTK9tmmOnYnO"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.2552394712423327, "statCode": "as6ghP1y4Zi7s7QB", "userId": "lk44Z44B1GZgKg4u"}, {"inc": 0.58367596173311, "statCode": "xaCgcGLuC3brWdTY", "userId": "CfHkIySok5DiXZtL"}, {"inc": 0.7790680231550203, "statCode": "87rGysryod3dNQrm", "userId": "sApRA6HX3RwrKt2e"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "cozL0TOg54vCE48L", "userId": "5oLF6M4lNa4JUMSH"}, {"statCode": "NgqRqCV7usamANkZ", "userId": "lOX9Sfo95HgXqKhT"}, {"statCode": "PkwfLM9uSybRzWek", "userId": "2gZvRrvr0n9d9lvc"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"cycleIds": ["cKMLhrTrcBE2ItBS", "E74HUtipUWYhWV1q", "3KtKZWe8aoFzAyBM"], "defaultValue": 0.3722315475902186, "description": "8CzPML52faXUr9Sk", "incrementOnly": false, "maximum": 0.6526270155975477, "minimum": 0.45929907178065954, "name": "zfsflhjbngJOUn18", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "xqMPpcVfRwNj547f", "tags": ["Xphn50c9tNLDljhZ", "H0XrKEDpEY8VnocG", "Ajci0V3tBf2jnHGK"]}' --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items-1 '2jxLRX3z46OCaGBe' 'MfPlNos4yBRjrERH' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'EonAZR8GmEu0q1p6' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'QCyY6vSkVFWdsbYu' --body '[{"statCode": "VEGVxYheR3j5mNZ6"}, {"statCode": "vwv7K8Asvt1j1Rx5"}, {"statCode": "9hesNWy2NvZ85DDK"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'DAF8KDsBZOuYQJ03' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'BAHZ7c53q7akMpcm' --body '[{"inc": 0.21730212983218955, "statCode": "nx6RVBrop9v7aZK3"}, {"inc": 0.1181128851312434, "statCode": "65hbN15zfQSfQrtf"}, {"inc": 0.5064167683762777, "statCode": "3TQN0OcNDLr36vzo"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 'hZyjMQAg5mPYhrLT' --body '[{"inc": 0.3919725158386894, "statCode": "U8OhgfY9JQYGF4bY"}, {"inc": 0.7946413795548418, "statCode": "EcENx9xZlAchob44"}, {"inc": 0.18622779627354025, "statCode": "ONDDwMvgI0HlyPR7"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'wZNiVsF6xG2mXEQd' --body '[{"statCode": "bzIVy8alncV7vWgS"}, {"statCode": "Hdfo07UctPErqxyM"}, {"statCode": "yOK06MqQBErxgjVB"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'ycvU4PbmRDcrg0Dj' 'QjBECXvea7H1m2lJ' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'FRZ3ZprZ60zMjhTH' 'eh94TSenE5hCFkIf' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item '5weqZ18MH57l2Zsr' 'h90ETtYmGukz3Mnl' --body '{"inc": 0.28886614705157954}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'jcHp6B8Vj7rXFgDn' 'DkdZ9bpjb1tdA3Qh' --body '{"inc": 0.14580431819059625}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'CMW64f4XhIjSoTB2' 'NMKtezapPr2QEPx3' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"zTxBGtEJIYppuUSs": {}, "KoHw2hyd12uSE7BE": {}, "v3aevq6iohU1cg4W": {}}, "additionalKey": "1IS3Uv1BpWoJBaqd", "statCode": "g2FHcunsS1lnaO2m", "updateStrategy": "MAX", "userId": "vqjhbeK2qN8g6x2P", "value": 0.39922370275148933}, {"additionalData": {"YDo5R3hLiD5sf5y1": {}, "JsxJNGmyt0SQDUDo": {}, "WBZVGLlkUetzCAWc": {}}, "additionalKey": "9x1aMjgGim51T107", "statCode": "XIZRZ7tZdIs0xf4c", "updateStrategy": "OVERRIDE", "userId": "BFUjOn5mM7k8nbLz", "value": 0.33925224054501146}, {"additionalData": {"tCIW5ynMKquUicAe": {}, "IVXtoWAXhMlW4tLq": {}, "X7OICf5oD1e6oI9F": {}}, "additionalKey": "mYel0kOw72o8Zkgk", "statCode": "0jS6rDWUwfhKvrf2", "updateStrategy": "OVERRIDE", "userId": "lxHv8SwyagYvDJ3w", "value": 0.8898405151144736}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'UNgIGj2jZtEYT8sI' '["PSE1XXPzySa0sZoF", "S6xCOWMpyh9pMsQg", "b64ELbzDMwyo4nIR"]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'ysQdbufXjYnSoIFe' --body '[{"additionalData": {"ouC2m38kXrDZWlGV": {}, "E9sJ4NpUtKp6M9I6": {}, "nEwnZhsjwJeGwaPS": {}}, "statCode": "DMZz95OYKiqaZD63", "updateStrategy": "OVERRIDE", "value": 0.47772049952236295}, {"additionalData": {"iCqSMzpqIFGLkDs7": {}, "ACC1RgBfoNrHlFi2": {}, "qJLgmBLE35YhyiDV": {}}, "statCode": "90SeI5yppBHoytVz", "updateStrategy": "MAX", "value": 0.4922222156296219}, {"additionalData": {"CUo1NPpeFhUztXDg": {}, "B7n4C97uAPP8PATL": {}, "pUpxeJlsBJT6Hh3O": {}}, "statCode": "MjAjq2mK8lbSEEel", "updateStrategy": "OVERRIDE", "value": 0.6820531876171841}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'dN66bswAgt65X4N1' --body '[{"additionalData": {"LQZmB61JMdtwCVUr": {}, "YQue84dwmbwFEnAZ": {}, "aWsQJtRYoagRJK5P": {}}, "statCode": "X9UcOvhPyE11TRT2"}, {"additionalData": {"SKseoe8VLie0LBa3": {}, "6KNzjf005CXNGehQ": {}, "2aTjTDfKFDXC7eGL": {}}, "statCode": "5YhJDWh9YWqc0qgV"}, {"additionalData": {"6d9yOfIMLds2DbPc": {}, "aoMdtRLTmSvTkQQg": {}, "B7exYvmHMxr5hPCJ": {}}, "statCode": "JztJBg0tTJg46Iew"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'OXE2AkCh3QIZsUf8' 'lGFXcmwTERHclOdx' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'Iwqejxe18rNdb8Ot' 'q6j1mqUav7k05HAQ' --body '{"additionalData": {"ltnSojV4jT65yclX": {}, "2FtAz0vJjFIYWOaN": {}, "dsimmkW2miH3xRHA": {}}, "updateStrategy": "OVERRIDE", "value": 0.7123151862045949}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"wqTsKKKo37NHDOQe": {}, "91Ps3ztUIV0dS6hI": {}, "H9c4VfkyrwpuXxba": {}}, "additionalKey": "ERbfgPmi0eHkt1mr", "statCode": "9EOIFg0dnWIYN2NV", "updateStrategy": "INCREMENT", "userId": "Iw157g00jr9b8MuY", "value": 0.20138952851301195}, {"additionalData": {"meKTmBNvGYxEQdf3": {}, "ewoGGoY7xmFNAmjD": {}, "DCvs78mcMdiS76YA": {}}, "additionalKey": "pGJ9ufwLYkqIgLuZ", "statCode": "S6hsQryiEtOAbpeU", "updateStrategy": "INCREMENT", "userId": "U4fwQIiLXgmRasvj", "value": 0.6485324103645006}, {"additionalData": {"4lj8m3XEwP2b4gd3": {}, "xOeii8Jnmssep2xD": {}, "2NY0kABeGs9yxahl": {}}, "additionalKey": "d1pO0Gyf5PO3COyM", "statCode": "vczgEpzZ3Fbtxfhc", "updateStrategy": "MIN", "userId": "C7IVYa6iZ5uFRYNn", "value": 0.8878476720198079}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'SHiWxF0YbuU5ar5q' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'TLWUCy0Afgc050XI' --body '[{"additionalData": {"ZRW491e94mQjVOOB": {}, "nIWhunElqZUodp3I": {}, "htCSHy1ei1fIrPvf": {}}, "statCode": "HnRN06EjRwEQlNap", "updateStrategy": "OVERRIDE", "value": 0.6976000043855359}, {"additionalData": {"fk4f9Zcw1pEHAyNF": {}, "xcVTKuAQTGh5BxjW": {}, "OozGoDtsUuYo5p8E": {}}, "statCode": "D5QZAufwNa8lzfjv", "updateStrategy": "MIN", "value": 0.23179586397731544}, {"additionalData": {"YMXMjlVHY1AHwF3v": {}, "Goav7MK0PcLnEkco": {}, "kKwcQ0baDT9OyJ2h": {}}, "statCode": "23GUS2amU7syGlEl", "updateStrategy": "INCREMENT", "value": 0.5853738075850524}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'wjqPBiWXade41s3r' 'H34mB2yPlRpWjmHZ' --body '{"additionalData": {"AAvKTH8MuqIg0Czk": {}, "guwuJCW7EEFB67AO": {}, "Dbi9BzupBsFpYc77": {}}, "updateStrategy": "MIN", "value": 0.9149376951085384}' --login_with_auth "Bearer foo"
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
echo "1..91"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetNamespaceSlotConfig
$PYTHON -m $MODULE 'social-get-namespace-slot-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaceSlotConfig' test.out

#- 3 UpdateNamespaceSlotConfig
$PYTHON -m $MODULE 'social-update-namespace-slot-config' \
    --body '{"maxSlotSize": 25, "maxSlots": 95}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'UpdateNamespaceSlotConfig' test.out

#- 4 DeleteNamespaceSlotConfig
$PYTHON -m $MODULE 'social-delete-namespace-slot-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'DeleteNamespaceSlotConfig' test.out

#- 5 GetUserSlotConfig
$PYTHON -m $MODULE 'social-get-user-slot-config' \
    'Eh9tRk8knYSV30ln' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    'roQehMDli6t9unQL' \
    --body '{"maxSlotSize": 2, "maxSlots": 43}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    'xm09wpGAbpEmDY9v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'Lh3u6EDsUmrV6kH4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'OotKwG3UC6XCnnZx' \
    'F8CmQr17W65br34r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    'BBN9tU6TDm5GloFS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    'KWM1eym5ydC6p25x' \
    'CWTqUOYZENJ1QHZQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["xPRXH7uxBJEECQE1", "li3Bg7Jxc9pUnZmv", "hidwCkZwqjYLfTiC"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'O1NDBvQvRPnAz4Vz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'W0CpoBCbyJsF5IjF' \
    --body '{"achievements": ["1c0W338HS6CBgVRy", "ihYNZ84CVhziXV8H", "wSmvcvcDKF19yVRa"], "attributes": {"fCjOuSYht83AdvBa": "agTiRJ8daGTVX3Bb", "7jlz5IfHgKjI9mwJ": "SrN8jkIykR2zbaI6", "PD7fEscShnGUGUtV": "9GJ279GDbLNwjm3F"}, "avatarUrl": "K0nnX2poMfZ1hDHt", "inventories": ["bh4HtMlFgvh2Dp2S", "oiIPp1yvfAHS0VgL", "u11A3HTovFi4tPAG"], "label": "fleyCA6jEtcqsnzo", "profileName": "VILjkwW61duF87aU", "statistics": ["yrdt4XSpWBAetsan", "zqP8oxfrtbECD1CY", "PwaiBAxfYL8Avt70"], "tags": ["ZUT2fSk3LL0calqx", "EewuGS469k2hG0WK", "t4sUmanYxM0UHZVN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'YzGMNIpWoSLkUrfu' \
    'f4U3WeYeA9t2ENKK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'WrFtHIi1CMgKAOG5' \
    'iDcCR5PbCvDLil8w' \
    --body '{"achievements": ["j9cKM3Ar6MF35hCE", "R4nGmWGgTJfHlJl4", "tHGa4XfZcd9CVnGq"], "attributes": {"MX9FieeEssWEUl07": "bhwntCVqiYOJf5Kw", "MZQjzvjSozv6CTRD": "l0zp9CzHFwinkBNi", "4gvqgl6TZ9TGVPmv": "34h6T7EsufmfxKYB"}, "avatarUrl": "4LM6H6QXmpZ9X3fU", "inventories": ["SR1l9xLPBsmAUrD9", "L1IiD6MlcEPhMDFz", "jHZ3sIhzOx2CXKlv"], "label": "IomU3pIxM9n8D2eL", "profileName": "Me3lt9qfx2UDcgVE", "statistics": ["7L9FK6e0MrPc4vtx", "k9hVKlG56HlzGr7X", "jdyRJunZPkp6ccIB"], "tags": ["nWyPw8mj7gyQ7XdI", "szGRj46COPipH1MW", "VTHG0qHJCWEfOJpZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'm9yEYWNGMy2pgSGS' \
    'UOK68eqGJtWf1Ybg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'g8rdwY9bmrvHmO07' \
    'KNqX9LM2IwEsdOGB' \
    'XBwnzDX8v3xgC1Ge' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    '9PdbTTAJ2Gp1r0sV' \
    'Z6LJAOddIL2l3hPj' \
    'NDKv2LWfXqjr8fS7' \
    --body '{"name": "9En3wYowBdkaZ3y6", "value": "i38XQjLDRqkpiFK5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    'BtiQ272Uo9UBJWod' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    'pdwsX1jorcyR0x3Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    'iHF8ITGPRQBCgIs1' \
    'Q2lzxl0yF5m77TTh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    '4gUoj8u2WRcLiEtz' \
    'Vlnkflfn7pHY48F1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    'dl1q92m3iRlfnBAk' \
    '0CwiAsR65yQ9ssuH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    'dGmxncCEr0Kcgeqz' \
    'GbruNB72HHMkjzyB' \
    --body '{"customAttribute": "B4UFKiaoV0VOem2y", "label": "qPsMFxKybPkbuS6x", "tags": ["9cLJ1APnNlsa2bRB", "r27fVMWuAfDqLMR9", "19IZPKOKiAVQXXOm"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
$PYTHON -m $MODULE 'social-get-global-stat-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
$PYTHON -m $MODULE 'social-get-global-stat-item-by-stat-code' \
    'qFHLbyXmgCNiXH8u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
$PYTHON -m $MODULE 'social-get-stat-cycles' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
$PYTHON -m $MODULE 'social-create-stat-cycle' \
    --body '{"cycleType": "ANNUALLY", "description": "uGcL1koyHjCH5olY", "end": "1990-12-02T00:00:00Z", "name": "ETRpABAmO2EGvJ4U", "resetDate": 79, "resetDay": 52, "resetMonth": 91, "resetTime": "hDUjhKPwbwcvQU5k", "seasonPeriod": 66, "start": "1991-01-07T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle' \
    --body '{"cycleIds": ["84O6tgohjtC7bzjP", "ti0QP2ssiJ66OzOj", "pucddXJ5zifF8y95"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
$PYTHON -m $MODULE 'social-get-stat-cycle' \
    '9anrNSleywHbHig6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    'IKWVZ77KeRWdECaF' \
    --body '{"cycleType": "WEEKLY", "description": "9ukcR6c2E2r3vk3I", "end": "1973-08-11T00:00:00Z", "name": "3SzUo4hNBDh9ZFP1", "resetDate": 84, "resetDay": 25, "resetMonth": 100, "resetTime": "dpcJgF88ySNq4Mj7", "seasonPeriod": 26, "start": "1989-06-11T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    '69yg9ADCGiXaLs2x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    'jHkinOD975nARHCm' \
    --body '{"statCodes": ["hNHSXuqIHsxvaUoX", "DmwWsukxncuD3QxC", "XMd00YBWCaVVmM45"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
$PYTHON -m $MODULE 'social-stop-stat-cycle' \
    'mfIZsWhkS476dGGJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'wJ00UH197MJ6zU7J' \
    'LMQyMWzYQCAaPJgo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.3716781062404444, "statCode": "GJoJaSzUtY4ZD0Xt", "userId": "b0U4pH16NUsVY21N"}, {"inc": 0.7639500104677431, "statCode": "Is7NRen2Y3Ns0QJQ", "userId": "eaWytPfds1BYx0Ea"}, {"inc": 0.7465374333154366, "statCode": "Rydf8ZyyZeHAWGgJ", "userId": "UbUJRMbkcTglbU86"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.5015715261507325, "statCode": "yOjApNHBVfNOURcj", "userId": "Y3YYT9oTynmfIuBW"}, {"inc": 0.10649704870749765, "statCode": "JTNFfM8M0IW4oe8K", "userId": "Dgy0xZfAcNg14Ws8"}, {"inc": 0.7333706541476693, "statCode": "IP1LKiFQoLDvumfq", "userId": "rgSfnx2h61X9dN1M"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'GRXBJ6mVV7JS9qjN' \
    '["LwvI8JdiY3RRiLil", "mOGF6dLLIeIVIjMc", "dlbdRXTGIrdNL5gJ"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "PqTAjgqaTHf1ANTJ", "userId": "9Yk997XkGOdC6Itx"}, {"statCode": "DT8p4n4XCFkD1AJL", "userId": "CwszbZxuHSgDOK8b"}, {"statCode": "joF7bL2635KbtZTG", "userId": "Jpqgl2IzNXGTuQPI"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
$PYTHON -m $MODULE 'social-get-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
$PYTHON -m $MODULE 'social-create-stat' \
    --body '{"cycleIds": ["ljdWYmELe74p38vu", "VC9Mfuc8VOsnmnlV", "Dpor7t1aJLNNz6QI"], "defaultValue": 0.20456556145684912, "description": "nxAnYBTxaTIz0jcg", "incrementOnly": true, "maximum": 0.9701775204481501, "minimum": 0.8028469009045187, "name": "ejRF94NIY9nMrBZo", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "fnBqrpLeqhwVhjnn", "tags": ["La31oQf7BULnZDhu", "KYi0Zxs5SWCqZXHL", "jKMEmtbiWsAQHbMr"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'CreateStat' test.out

#- 43 ExportStats
$PYTHON -m $MODULE 'social-export-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'ExportStats' test.out

#- 44 ImportStats
$PYTHON -m $MODULE 'social-import-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'ImportStats' test.out

#- 45 QueryStats
$PYTHON -m $MODULE 'social-query-stats' \
    'tDM6BqguqD5xxGxB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'WtnTKUe2znsqPzPk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'wCBo2SwCUsTag4ML' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'Ao3m61P2xaNfmn8O' \
    --body '{"cycleIds": ["hAbUWmFhdYLWzMuv", "nb1a9gMz0F2UBRmM", "3zkUY0n0BAZkwbYk"], "defaultValue": 0.4450441388363613, "description": "LyO6A0FqfhnaB3Yx", "name": "KNdOTacCcJfIfXsh", "tags": ["PhPUTKbonoucNmzw", "uLUk5WdpxjZx5noX", "OZOK56sDkci5rZ8i"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'MlOuksQJCiRFiZWw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items' \
    'J7NrTb1XTB9YQzUJ' \
    '9XlYJ8BzP6EUmUXG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'M5anIloyj9lhbvuQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'dW2jwKUckc794ryY' \
    --body '[{"statCode": "91lX8DD4MYXlrJ81"}, {"statCode": "lHvv9rqvEoM8YmVj"}, {"statCode": "AkO3HKsEp6KlqwW4"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'djrexcbHdEtoQvpV' \
    --body '[{"inc": 0.8896182754008543, "statCode": "44RctmTozCi8HeV6"}, {"inc": 0.14545976974571184, "statCode": "balHmqBBfi7sSF5B"}, {"inc": 0.2298266232804309, "statCode": "GiTCVsXsygWbjE2o"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'pXtdsJQeJ1too0qv' \
    --body '[{"inc": 0.37473877261913735, "statCode": "phTLEEBGTtZyTjdK"}, {"inc": 0.6416103026297832, "statCode": "KgYazujsmSmylT1Y"}, {"inc": 0.3082031426441024, "statCode": "xIq73aMb48jISd97"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'KORRhxSWLWLNfHRD' \
    --body '[{"statCode": "3V15QaGGL46LuxJF"}, {"statCode": "3sbeqWBdQuWfgBAK"}, {"statCode": "x27MSBqabUXOGkko"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'MUZn1YXj5zFZeOCO' \
    'R9NvBQZSJPOIKrRB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'rYVzi9ui3lvozTt9' \
    'TsH7A0TuU2aL4bPk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'k11sys6GdkDcos5u' \
    'VJ0BJfZ0jvA54CSq' \
    --body '{"inc": 0.8382143906563242}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'FDsO1skRjOU1SMfQ' \
    'VQa6blj9Rdd85bdY' \
    --body '{"additionalData": {"UumPKVSZCg3XTc9v": {}, "Qe0dHJfF6KIuvnRC": {}, "a9JktyBdxkZKrEWF": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
$PYTHON -m $MODULE 'social-get-global-stat-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
$PYTHON -m $MODULE 'social-get-global-stat-item-by-stat-code-1' \
    'w9GYxjiiOQAD77ci' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
$PYTHON -m $MODULE 'social-get-stat-cycles-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle-1' \
    --body '{"cycleIds": ["KKz5nyI6ulKNKoXa", "0vfWVZoRRMPi57Hy", "0dgx1JgjC56pda3Y"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    'htQxpCYME6x21pdX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    '2QSPAd9sxoLnWGP1' \
    'PafIjLX8ce0KbNN7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.8126616894220552, "statCode": "cl2JfmQplvGjVQ4a", "userId": "ebjfgGu472oWJlfg"}, {"inc": 0.19256311698579265, "statCode": "LM4xjfkNL4lU6jaG", "userId": "fsD1cfswmeFpvtDt"}, {"inc": 0.07386211923730224, "statCode": "toQVFL8LNW11vtpa", "userId": "Txi7k489jRCn48bv"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.1671539599995221, "statCode": "CPfKofwXOIZZQAJz", "userId": "a84lKKmVOaTS6xBb"}, {"inc": 0.641140961664315, "statCode": "rSUAW2ak7ISDrBVg", "userId": "6NuDZvPb1kuUfNfU"}, {"inc": 0.4699181894619864, "statCode": "e4g7q6PHEaqbzHvD", "userId": "Dl1jiLw3XMGBA6JX"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "DpA1tIC45C0oaGou", "userId": "Fu4hXONgUwJnUpry"}, {"statCode": "DeRcpUvlrw2MwC1u", "userId": "uokpaIjL0Vxe5n9L"}, {"statCode": "x3QcFo9gxOgvDc7x", "userId": "MrRKvw8ISP2WKmCR"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"cycleIds": ["RXBxlalCHtWlKxLp", "S8fLWoQ5nuJhatQP", "xR7dvBVC5zgOKLTD"], "defaultValue": 0.20625086908485724, "description": "He8c1eJ9sde7Ryt4", "incrementOnly": true, "maximum": 0.5774766359939436, "minimum": 0.4380300011669077, "name": "qK4QtEydPWLPBYiR", "setAsGlobal": false, "setBy": "SERVER", "statCode": "c1ZYapx7C477etqg", "tags": ["fOJDUT0uKAPrARya", "2IMlNiXpF4qvsUUp", "Hqi33TcBGkc0HjUc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 GetUserStatCycleItems1
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items-1' \
    'nkpU9oVzl2kBuLFX' \
    'IeCEKZUTz3GvCAZ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'GetUserStatCycleItems1' test.out

#- 71 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'j24acYHbrryHB6GO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicQueryUserStatItems' test.out

#- 72 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    '9zP3FaepA3b3YJ9n' \
    --body '[{"statCode": "JM6vtT27xv85K5MU"}, {"statCode": "2qmbeqaVemINdClp"}, {"statCode": "F7OvlBIEgjse5kd6"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicBulkCreateUserStatItems' test.out

#- 73 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'GEDo08yq5E5HleLo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryUserStatItems1' test.out

#- 74 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'og4me2NBFp62xlXv' \
    --body '[{"inc": 0.7584246963493942, "statCode": "cJerTPW02PWsHiKY"}, {"inc": 0.4278044733154479, "statCode": "rAxnKBfBfDlrQQuA"}, {"inc": 0.04296783482149835, "statCode": "10DjjwMv4vrIPRtv"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicBulkIncUserStatItem1' test.out

#- 75 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    'hQIyLarjaLOKnX51' \
    --body '[{"inc": 0.3994652576094492, "statCode": "AB8Pa3uNGKhaLlJz"}, {"inc": 0.5718341011581729, "statCode": "MSnJIIgsAVmaGYxU"}, {"inc": 0.7983065955962317, "statCode": "1B9oVuzG2CnYX2YB"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'BulkIncUserStatItemValue2' test.out

#- 76 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'F2g7TVtzYEHUodh3' \
    --body '[{"statCode": "iUfBthbepUCTWiZ1"}, {"statCode": "uqh7GAi4FEIu44u8"}, {"statCode": "3ZLRxYlYqlpq03BG"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'BulkResetUserStatItem3' test.out

#- 77 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'dIk4oEogFVGR71rJ' \
    'OBy6lsj1AKGBjnHm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicCreateUserStatItem' test.out

#- 78 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'aAu4YK87DYAWWcbc' \
    'bGWmKgE8CZ4AELr5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'DeleteUserStatItems1' test.out

#- 79 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'lraa5v5P5Cj8hgFs' \
    'qHC9h5JPiMEtgKui' \
    --body '{"inc": 0.5282346145895013}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicIncUserStatItem' test.out

#- 80 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'TYgwWv5XldL6rOVG' \
    'cRAn51rVAQSxp4qT' \
    --body '{"inc": 0.4447843136268089}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicIncUserStatItemValue' test.out

#- 81 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    '54mKA3V9DKlCeZ7m' \
    'LYsHooOIaxIpb1cI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'ResetUserStatItemValue1' test.out

#- 82 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"OJPS3lJ80YJ41U4o": {}, "oQ980ywmg1pWpWit": {}, "1QC7FKe0fnHUlmU1": {}}, "additionalKey": "unGKM0tgfeWy47bb", "statCode": "wMI4gGmvK9gW596F", "updateStrategy": "MIN", "userId": "zgNZUKsI5y0mR3zM", "value": 0.3927454118226349}, {"additionalData": {"TsftKqnsIJctAdxy": {}, "ZVKHA9DkaSOWgtg8": {}, "yw8lHEbVDwBAqanO": {}}, "additionalKey": "lscRIWw82k5K5VTk", "statCode": "dubkOFldMCQ98JH4", "updateStrategy": "MAX", "userId": "HBSB4fZWEFIZs28F", "value": 0.08404542654433378}, {"additionalData": {"1kZp1Zktx3N7WNMY": {}, "IfcDKbLu8pnK34oA": {}, "1keYXJvtggDdXjbd": {}}, "additionalKey": "jMBahFZZGMTcqnWr", "statCode": "IprOv0BJ9Sgl7H1s", "updateStrategy": "INCREMENT", "userId": "iEokbUiYzCQh2iNT", "value": 0.3552657613789687}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'BulkUpdateUserStatItemV2' test.out

#- 83 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'tnohddMzMTQ9P7sY' \
    '["LDWAJOA75K4BYJ2f", "kqYJoF2FI3vyyqRz", "c20O7FdsJP1G9tyB"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'BulkFetchOrDefaultStatItems1' test.out

#- 84 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'TfERXdvgD1Qf7Ot2' \
    --body '[{"additionalData": {"DkUt3yexZBRvxYnE": {}, "BhXtAVxCd3meTrT7": {}, "cF9oVCh89wNOkKYs": {}}, "statCode": "sVejcL3kR3hCGNga", "updateStrategy": "MAX", "value": 0.42743273322057374}, {"additionalData": {"YOHR5BWa9VzIkaQE": {}, "l1iUProNB6hI6IpG": {}, "cToWgFvdRhG9NwV3": {}}, "statCode": "zDuqVlVTypcYPK8I", "updateStrategy": "OVERRIDE", "value": 0.04988846392997526}, {"additionalData": {"4RWOqO4U0bitNQLz": {}, "wRoWnR0AbkCPY70F": {}, "mvviVIBbcujF8Vk5": {}}, "statCode": "qb8NhWWwaxyMchkt", "updateStrategy": "MAX", "value": 0.6755474204714842}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'BulkUpdateUserStatItem' test.out

#- 85 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'XM6XTUh2dJ90yqHD' \
    --body '[{"additionalData": {"Nacl4F9G6Dl5TFwB": {}, "Y6HKXAblkT8VGgSH": {}, "8MGZGwiVj7eDTaka": {}}, "statCode": "9ABfX1IByPEOuPhG"}, {"additionalData": {"spRi3bhPQvBBJI5J": {}, "xytpcubN4AUUPFPs": {}, "cZsXeJOD4DMtqfIG": {}}, "statCode": "iGJovgWSRxZ8N4UQ"}, {"additionalData": {"2fg3V1o2x0hL5DuB": {}, "DqMyIAzWze94MEdJ": {}, "FAy2JTllJkRGB8jq": {}}, "statCode": "JEd6eqqsBVyONV0J"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'BulkResetUserStatItemValues' test.out

#- 86 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'RtozI0jpliCFQ6Wg' \
    'JpGPigdc5VyC4qvW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'DeleteUserStatItems2' test.out

#- 87 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'jVac1cQvSxgTNIUz' \
    'xDgBlIbuzm7DzJ20' \
    --body '{"additionalData": {"NFRJIhFXR2dYprPm": {}, "bpuptECGd5cdXC2S": {}, "esc6y68whNBYl9iC": {}}, "updateStrategy": "MIN", "value": 0.11246647009016086}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'UpdateUserStatItemValue' test.out

#- 88 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"D5i2Ni6AnWn3NdEP": {}, "hNHSH7eKDfRcngEp": {}, "TnRUQr3RLOM1vEx4": {}}, "additionalKey": "gqDY6jwyKRxhkLe5", "statCode": "zohg9s9utRQt28b6", "updateStrategy": "MAX", "userId": "e32hqEcB1ExYMBb3", "value": 0.03250300003973172}, {"additionalData": {"kvoaJYdMqGegcg3e": {}, "RvBZXN3cjIXmFWRJ": {}, "nj8xN7HDPTUEDPN1": {}}, "additionalKey": "Kb4UTPWDXTSb55g8", "statCode": "LSTs7Nf95lGlPrf6", "updateStrategy": "MAX", "userId": "0KqirJ4PkMFtsnFf", "value": 0.40562635420224336}, {"additionalData": {"8Ew0X8fBuBSKLSQ4": {}, "GvLtz50D3rpBfBov": {}, "qLwXBuT30EYeRj17": {}}, "additionalKey": "xGhaBKoUfiHjGmCy", "statCode": "PsKCJTv1ic9gvagF", "updateStrategy": "OVERRIDE", "userId": "cSuztsJ5tj64gV7n", "value": 0.20026533944140124}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem1' test.out

#- 89 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'Dk29mcjSuz9vbNSt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PublicQueryUserStatItems2' test.out

#- 90 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'qPtQmQN6eKAGiZFC' \
    --body '[{"additionalData": {"ftT0RWECdjWYrnul": {}, "xcCKAru8pOaAVLDB": {}, "4k3JwkdaxR7GJpYm": {}}, "statCode": "uYCPG181q9GA5Dyd", "updateStrategy": "OVERRIDE", "value": 0.03526012509926346}, {"additionalData": {"2Fh04JTsqDTynCew": {}, "qJligLlRxOelKykI": {}, "CRxF6HtlER2txs4q": {}}, "statCode": "rNARATn6KXOutlYB", "updateStrategy": "INCREMENT", "value": 0.017159615552086116}, {"additionalData": {"QGERMNpqWb51y5RU": {}, "zvMfTkPy0fGvTGgf": {}, "LKsg0b1Bq78cE5O5": {}}, "statCode": "pmPnbiPJ9j4vxmbH", "updateStrategy": "MIN", "value": 0.3101688605743511}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'BulkUpdateUserStatItem2' test.out

#- 91 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'hUvV87yfkycLSVdl' \
    'eSaAylsmLYe2phYO' \
    --body '{"additionalData": {"gT5kDTyPl3dKF7NX": {}, "EjrJMki8jvc3P8Gw": {}, "jg3IOH0SDHgYKqxJ": {}}, "updateStrategy": "MAX", "value": 0.8058367558716315}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
