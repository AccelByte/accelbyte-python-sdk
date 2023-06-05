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
social-bulk-get-stat-cycle --body '{"cycleIds": ["iI07A68eaqC2J9jy", "a13lk1dQBHO86IlB", "EW6GLbc0NaKDUL3s"]}' --login_with_auth "Bearer foo"
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
social-create-stat --body '{"cycleIds": ["V709xbnGezKsDwG2", "omOR2nvYI9TVqJdv", "udsMrok0WvGYYnx4"], "defaultValue": 0.41617567346829587, "description": "cWbfUpaXp5JMl5LL", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.7178048226334778, "minimum": 0.7062961847081144, "name": "gwsAj1ik1jglaDXT", "setAsGlobal": true, "setBy": "SERVER", "statCode": "CWwNTAhd2wrS0uPd", "tags": ["jhdinpng5BLy8wbh", "MssAHjapIkY9Rf4w", "P57dBZNR88YbCtmK"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'y8M9zVrjfGXZnqAQ' --login_with_auth "Bearer foo"
social-get-stat 'UoY1GjlIIk0iKoTT' --login_with_auth "Bearer foo"
social-delete-stat 'S1j02o7JjTXAQN0q' --login_with_auth "Bearer foo"
social-update-stat 'dskdQV0TqI8EFnmD' --body '{"cycleIds": ["4JvaizwiilatuUjj", "bxIxi4YKlONk2Q5Y", "t9lIMGql5ElEa9EI"], "defaultValue": 0.5599603137444925, "description": "lGcHB3CfR3ncDlwi", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "EIjowLqc3ecjXJbZ", "tags": ["DKKoxLE1Y3Dymtj3", "giPg4x4yiPX6ues1", "Hhhkg1yLVbLFzHEP"]}' --login_with_auth "Bearer foo"
social-delete-tied-stat '8cM4NTwr0KHaAsmT' --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items 'ej52WKi6tArAURt9' 'plCSVq8PdH6hJPUA' --login_with_auth "Bearer foo"
social-get-user-stat-items 'c0RVwXgAgntLMCua' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'XBWQi6BqPg4xr0lC' --body '[{"statCode": "ancUZGCHsZYoLfR1"}, {"statCode": "KtOv7Zy0b65uvuKN"}, {"statCode": "uy0ytZQ7M6Nzy1ad"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'nSKOLFKx1dX4LuWJ' --body '[{"inc": 0.3280618866387184, "statCode": "3pDMUAeeZ97SBROP"}, {"inc": 0.8111308273874861, "statCode": "uG6XqP6oo7G73zdx"}, {"inc": 0.726350473124282, "statCode": "gOfnwIdlNa29fDLh"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 '741IslKHzGlLKWUt' --body '[{"inc": 0.48141840134709757, "statCode": "Qs61OQAoxyyQpRWC"}, {"inc": 0.13646342958243785, "statCode": "iPDGQhNPEwiJCf2X"}, {"inc": 0.5735253931087697, "statCode": "VrlzqQls1ozhLVA3"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'kE8jKvgatOEBM70T' --body '[{"statCode": "dlNBJYOmpu1VCarz"}, {"statCode": "BsV6xnZ5Jrzzjrca"}, {"statCode": "ug6CWVG8SWP3glU6"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'muswVJnNnN7kAa7j' '0riFc5HTHQIoVsGo' --login_with_auth "Bearer foo"
social-delete-user-stat-items '7dwV9DBqFKHQkETJ' 'yTlUrwDTnoujQD4I' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'EiH9Z5qXn3aoRtlq' 'OECohViHA5CzgFSy' --body '{"inc": 0.9802137228422012}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'X1A3PrIfapq5AAeM' 'e4L3mDWORBVXTIIJ' --body '{"additionalData": {"M9XsYIIZxiXNMR9B": {}, "gaWcFX3SUBhyoTsM": {}, "WPAxUMkawaGpAyrI": {}}}' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 'wMif3BOdkocVTd4B' --login_with_auth "Bearer foo"
social-get-stat-cycles-1 --login_with_auth "Bearer foo"
social-bulk-get-stat-cycle-1 --body '{"cycleIds": ["xL6ozRmDD0jJvlfV", "xqGWV6mTJ0sQs6XN", "bjvqhnUVLWu8olKd"]}' --login_with_auth "Bearer foo"
social-get-stat-cycle-1 '5OemPYdYT7DROCjt' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'uzFMbAG9YI89hmgu' 'B8FOTjMLo4b9rIzq' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.8133975526596597, "statCode": "kEpstyVTBcrM8rG0", "userId": "rH0zcswwVeMK6MbG"}, {"inc": 0.5557386717323024, "statCode": "VIu8vvwLc7KY3uVo", "userId": "JXTIMtpgkieDyF97"}, {"inc": 0.19274728983664446, "statCode": "GdMiHKxbWCYzo8yO", "userId": "2KTK9tmmOnYnOpas"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.9384547985844873, "statCode": "ghP1y4Zi7s7QBlk4", "userId": "4Z44B1GZgKg4uKxa"}, {"inc": 0.4652651246103652, "statCode": "gcGLuC3brWdTYCfH", "userId": "kIySok5DiXZtLW87"}, {"inc": 0.2870990533941191, "statCode": "Gysryod3dNQrmsAp", "userId": "RA6HX3RwrKt2ecoz"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "L0TOg54vCE48L5oL", "userId": "F6M4lNa4JUMSHNgq"}, {"statCode": "RqCV7usamANkZlOX", "userId": "9Sfo95HgXqKhTPkw"}, {"statCode": "fLM9uSybRzWek2gZ", "userId": "vRrvr0n9d9lvccKM"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"cycleIds": ["LhrTrcBE2ItBS3Kt", "HUtipUWYhWV1qx8C", "KZWe8aoFzAyBME74"], "defaultValue": 0.4151469005576264, "description": "PML52faXUr9Sk4lq", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.009773740863903924, "minimum": 0.4360564208379871, "name": "cAXXKlhvyH8paOJt", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "qMPpcVfRwNj547fH", "tags": ["jci0V3tBf2jnHGKX", "phn50c9tNLDljhZ2", "0XrKEDpEY8VnocGA"]}' --login_with_auth "Bearer foo"
social-public-list-my-stat-cycle-items 'jxLRX3z46OCaGBeM' --login_with_auth "Bearer foo"
social-public-list-my-stat-items --login_with_auth "Bearer foo"
social-public-list-all-my-stat-items --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items-1 'fPlNos4yBRjrERHE' 'onAZR8GmEu0q1p6Q' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'CyY6vSkVFWdsbYuV' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'EGVxYheR3j5mNZ6v' --body '[{"statCode": "wv7K8Asvt1j1Rx59"}, {"statCode": "hesNWy2NvZ85DDKD"}, {"statCode": "AF8KDsBZOuYQJ03B"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'AHZ7c53q7akMpcmn' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'nx6RVBrop9v7aZK3' --body '[{"inc": 0.1181128851312434, "statCode": "65hbN15zfQSfQrtf"}, {"inc": 0.5064167683762777, "statCode": "3TQN0OcNDLr36vzo"}, {"inc": 0.11912421184066802, "statCode": "ZyjMQAg5mPYhrLTy"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 'U8OhgfY9JQYGF4bY' --body '[{"inc": 0.7946413795548418, "statCode": "EcENx9xZlAchob44"}, {"inc": 0.18622779627354025, "statCode": "ONDDwMvgI0HlyPR7"}, {"inc": 0.359408143792196, "statCode": "ZNiVsF6xG2mXEQdb"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'zIVy8alncV7vWgSH' --body '[{"statCode": "dfo07UctPErqxyMy"}, {"statCode": "OK06MqQBErxgjVBy"}, {"statCode": "cvU4PbmRDcrg0DjQ"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'jBECXvea7H1m2lJF' 'RZ3ZprZ60zMjhTHe' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'h94TSenE5hCFkIf5' 'weqZ18MH57l2Zsrh' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item '90ETtYmGukz3Mnlr' 'jcHp6B8Vj7rXFgDn' --body '{"inc": 0.4823148993455191}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'kdZ9bpjb1tdA3Qhj' 'CMW64f4XhIjSoTB2' --body '{"inc": 0.6317978533764572}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'MKtezapPr2QEPx3z' 'TxBGtEJIYppuUSsK' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"oHw2hyd12uSE7BEv": {}, "3aevq6iohU1cg4W1": {}, "IS3Uv1BpWoJBaqdg": {}}, "additionalKey": "2FHcunsS1lnaO2m9", "statCode": "vqjhbeK2qN8g6x2P", "updateStrategy": "OVERRIDE", "userId": "vRyd9UuL02Le8HSC", "value": 0.2929442567109426}, {"additionalData": {"lsDd4M1F5qRIblS7": {}, "Nz81GRazPAANjfBo": {}, "ldFOyqA2clJ5gEOa": {}}, "additionalKey": "CgM6Yn6RugbNEIpG", "statCode": "BFUjOn5mM7k8nbLz", "updateStrategy": "MIN", "userId": "6GqsBq8vdhWVnuYL", "value": 0.09696831962990837}, {"additionalData": {"pZehK0G2nmyuViB9": {}, "kRTcSQdTnNYGeAfY": {}, "FG3wSkHKufBdS3ZO": {}}, "additionalKey": "okZB4cXnAXyuGz6L", "statCode": "lxHv8SwyagYvDJ3w", "updateStrategy": "MAX", "userId": "UNgIGj2jZtEYT8sI", "value": 0.6653319604588218}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'SE1XXPzySa0sZoFS' '["6xCOWMpyh9pMsQgb", "64ELbzDMwyo4nIRy", "sQdbufXjYnSoIFeo"]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'uC2m38kXrDZWlGVE' --body '[{"additionalData": {"9sJ4NpUtKp6M9I6n": {}, "EwnZhsjwJeGwaPSD": {}, "MZz95OYKiqaZD63x": {}}, "statCode": "e5rruJVfLGea0Ztl", "updateStrategy": "OVERRIDE", "value": 0.420187747136228}, {"additionalData": {"CC1RgBfoNrHlFi2q": {}, "JLgmBLE35YhyiDV9": {}, "0SeI5yppBHoytVzn": {}}, "statCode": "CgNyx9fbT63ShEh8", "updateStrategy": "OVERRIDE", "value": 0.02864371210128025}, {"additionalData": {"GikLjgjcj34uulU6": {}, "FYBZsWFbr3RSP0W9": {}, "nBhvhf8Q0DtJMcYQ": {}}, "statCode": "dN66bswAgt65X4N1", "updateStrategy": "MAX", "value": 0.08587936640563187}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'I1IQcoBQELcNlZkq' --body '[{"additionalData": {"TZrKgXNwvm4e5GX6": {}, "H742OixhtAoKiVm6": {}, "URT95XhnUcvWB28M": {}}, "statCode": "pusuhhDJ5slzgiWZ"}, {"additionalData": {"Etyd56LfxnbY97jj": {}, "YgXchCbkXX26uEdC": {}, "fQaMAQuTKfC0I2kN": {}}, "statCode": "jCMDtDMrentgn3Dh"}, {"additionalData": {"qciwIeShF9RKb9vv": {}, "xuJlhXbWhbwPwToC": {}, "6knjVwVnzaqSfJiQ": {}}, "statCode": "FC2gXoda0kg16yUS"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'pSOAjHJWwfCjYwWk' 'Lob9gKLqs2nEZhpB' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'yfHZinxNfgPAwkMB' 'sznlBUqnLT4AbGpt' --body '{"additionalData": {"KaWNvPbpg7yrRvXf": {}, "Z6rvgvEY3Hht1Swq": {}, "TsKKKo37NHDOQe91": {}}, "updateStrategy": "OVERRIDE", "value": 0.30591744695428336}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"3ztUIV0dS6hIH9c4": {}, "VfkyrwpuXxbaERbf": {}, "gPmi0eHkt1mr9EOI": {}}, "additionalKey": "Fg0dnWIYN2NVL70I", "statCode": "w157g00jr9b8MuYm", "updateStrategy": "MAX", "userId": "ufFVTOhvQpfbBke8", "value": 0.011184791890532564}, {"additionalData": {"Edd36xj6wySoltDx": {}, "sbzxrlaKEfkoYjY2": {}, "o6ouRW9UtNquwC3W": {}}, "additionalKey": "gumrIz4NhGztZpr4", "statCode": "U4fwQIiLXgmRasvj", "updateStrategy": "OVERRIDE", "userId": "lj8m3XEwP2b4gd3x", "value": 0.6532336141725211}, {"additionalData": {"eii8Jnmssep2xD2N": {}, "Y0kABeGs9yxahld1": {}, "pO0Gyf5PO3COyMvc": {}}, "additionalKey": "zgEpzZ3FbtxfhcRC", "statCode": "7IVYa6iZ5uFRYNn3", "updateStrategy": "OVERRIDE", "userId": "HiWxF0YbuU5ar5qT", "value": 0.6044820179230074}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'WUCy0Afgc050XIZR' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'W491e94mQjVOOBnI' --body '[{"additionalData": {"WhunElqZUodp3Iht": {}, "CSHy1ei1fIrPvfHn": {}, "RN06EjRwEQlNapJR": {}}, "statCode": "fk4f9Zcw1pEHAyNF", "updateStrategy": "OVERRIDE", "value": 0.031639054772656494}, {"additionalData": {"ct8puMybYGxD9IPm": {}, "msLmu3kaPj0O4zd8": {}, "Tb7cUNGPTBxiFFCr": {}}, "statCode": "n7djjs69FTFVGUVh", "updateStrategy": "MIN", "value": 0.5233342691369112}, {"additionalData": {"oav7MK0PcLnEkcok": {}, "KwcQ0baDT9OyJ2h2": {}, "3GUS2amU7syGlElX": {}}, "statCode": "dEAOrVSnLocLVVYa", "updateStrategy": "MAX", "value": 0.28408838577010087}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'H34mB2yPlRpWjmHZ' 'AAvKTH8MuqIg0Czk' --body '{"additionalData": {"guwuJCW7EEFB67AO": {}, "Dbi9BzupBsFpYc77": {}, "GtRUcCFeY5g4XgBs": {}}, "updateStrategy": "INCREMENT", "value": 0.8541647947750299}' --login_with_auth "Bearer foo"
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
echo "1..94"

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
    --body '{"maxSlotSize": 22, "maxSlots": 52}' \
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
    'nroQehMDli6t9unQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    'LYXxm09wpGAbpEmD' \
    --body '{"maxSlotSize": 13, "maxSlots": 45}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    'kZEY8rG0q0Q2Qd2J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'zRbkF2I03dIjvBbA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    '6bfbYaJCJjfk2TUv' \
    'n95FhO7VW3mbDVMD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    'u87t0ldWf7iSGIiK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    'FtWtn4Yr2svKM6pq' \
    'LGZ0TBujELAUK6mQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["5iZgbwwm5iGzXtck", "nrgidKupvXO6aj4h", "CmTC34jxW4pIDwdq"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'XpmRmut9H9XyWI8b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'p8fQxRuX91uYmtrH' \
    --body '{"achievements": ["JbEGTUj7YjERL1rE", "QG02zccA8wvLsWUN", "d6lPKvqDejvqklTS"], "attributes": {"vDwuOrP9lzpiX0Vu": "FpZum7izxe7NPzjO", "a8E7wY76PxLv9HBE": "Ue89AwEw1HO4FnKt", "x4XLKAmlDr19uJ3n": "q6VerzVCcI8y3Cz0"}, "avatarUrl": "YqCKUh5RD9vNAp4j", "inventories": ["inFpnQ5xF9wwbvMZ", "yeDeRnVfPUa6xVVB", "cq3wZpFIYeAg79Hc"], "label": "LJXJ7mpVI6eTYAjd", "profileName": "PlCiQQC35cj4KyOV", "statistics": ["gvnWbfRJtsB7cUQZ", "2QUAxJrINPXppPNO", "3AfmXcgwC3IN6tvK"], "tags": ["gLB9QmJIOq9dP5sz", "G71utjsQ4CrRb9gU", "CeVz7fWbZIdhevfZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'vyV7AcodcZwKjYDd' \
    'mJOlzwm9Su4FnS98' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'QqftSjq7sn8yreci' \
    'PLfkVyyJsbGpO6Jg' \
    --body '{"achievements": ["ehDJxEN7JlZc8LMq", "1o2jZWu4yA3r0u4q", "1bTHXIjfJKyFlM0u"], "attributes": {"1uuoVdn9yVoSlKNc": "hPHNL4X3LLaGPGdq", "LE8SohhhuiTnJarY": "YkHBDdSzBXdxapwh", "d5IQYBQuxLvPuWYv": "E3fsNy9Z9OhxXvCp"}, "avatarUrl": "9y7fLD2qfCXnlUnq", "inventories": ["xT1WsRNMZcA92hzC", "7MNa8vVe4MHX6AgM", "ep90AyyUJyAK5PRM"], "label": "RMwdvl0hv6g62GxB", "profileName": "W2tQF5tkTjgJaMYv", "statistics": ["NQOsDa4bkcgepqtx", "jbrztee7QLTGAak7", "Kaol01DK97D2xnik"], "tags": ["42miteR5eQAe1rzm", "mgqBPRmd6mO4oI8K", "Dqebm83raNBJ5y7a"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'xEkvI4oxZEDxGiBn' \
    'Nbn0zaf7CaOSlHXr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'USA6sMJzA5mtqISQ' \
    '83TTbtefXWznDe4L' \
    'QdXfFBii2RAMEX5R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'MjBFVZGYzQqV8d9m' \
    'DdUIoiIJFNxuNOmU' \
    'SWw18T1IxVWCxdvP' \
    --body '{"name": "L9e4P01vxP8xj1Ly", "value": "EirURERnEMzpImW6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    'sjAHyCK5tNanGBrk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    'zUvck3xTtmOFMebS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    '4AdlNzwog2IhErkN' \
    'hNcECWwchW6zL9Sk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    'bLlrNXnGanMazb8j' \
    'vRWenURH48aJuALE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    'cSqcE15u6D31DjOs' \
    'rs3CUYATdqnQGbqi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    'qOkNeATj7eGjodd7' \
    'CcJUrI6MAugK5kyp' \
    --body '{"customAttribute": "Nrp2nFe9FmN86sK5", "label": "LOq4ft5jGcMICPUY", "tags": ["nfG6jl9U4jReteIM", "gzISomCsodJrhQW4", "1q2OspCZbt3Uta5I"]}' \
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
    '0uGcL1koyHjCH5ol' \
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
    --body '{"cycleType": "SEASONAL", "description": "LETRpABAmO2EGvJ4", "end": "1994-08-10T00:00:00Z", "name": "MS93yOxNInDByhno", "resetDate": 23, "resetDay": 21, "resetMonth": 41, "resetTime": "G8bXGFmPAnOkDiJq", "seasonPeriod": 83, "start": "1983-03-14T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle' \
    --body '{"cycleIds": ["Qye7HqnVK3YVeOWs", "E7BYtzB0B4CxyQrU", "9mfVQh3jLBtn9pxp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
$PYTHON -m $MODULE 'social-get-stat-cycle' \
    'pIFvORxTi79DpSjb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    '39ukcR6c2E2r3vk3' \
    --body '{"cycleType": "WEEKLY", "description": "M23SzUo4hNBDh9ZF", "end": "1992-07-04T00:00:00Z", "name": "1OW0nXOErQPS4VsR", "resetDate": 30, "resetDay": 20, "resetMonth": 71, "resetTime": "mulP4tQ6R1OqKVOT", "seasonPeriod": 28, "start": "1983-03-13T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    'jHkinOD975nARHCm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    'hNHSXuqIHsxvaUoX' \
    --body '{"statCodes": ["DmwWsukxncuD3QxC", "XMd00YBWCaVVmM45", "mfIZsWhkS476dGGJ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
$PYTHON -m $MODULE 'social-stop-stat-cycle' \
    'wJ00UH197MJ6zU7J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'LMQyMWzYQCAaPJgo' \
    'xGJoJaSzUtY4ZD0X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.309659466171059, "statCode": "b0U4pH16NUsVY21N", "userId": "VIs7NRen2Y3Ns0QJ"}, {"inc": 0.6856776483160753, "statCode": "eaWytPfds1BYx0Ea", "userId": "URydf8ZyyZeHAWGg"}, {"inc": 0.568736282194978, "statCode": "UbUJRMbkcTglbU86", "userId": "FyOjApNHBVfNOURc"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.14518636031716214, "statCode": "Y3YYT9oTynmfIuBW", "userId": "gJTNFfM8M0IW4oe8"}, {"inc": 0.581717573837881, "statCode": "Dgy0xZfAcNg14Ws8", "userId": "TIP1LKiFQoLDvumf"}, {"inc": 0.26451922886375157, "statCode": "rgSfnx2h61X9dN1M", "userId": "GRXBJ6mVV7JS9qjN"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'LwvI8JdiY3RRiLil' \
    '["mOGF6dLLIeIVIjMc", "dlbdRXTGIrdNL5gJ", "PqTAjgqaTHf1ANTJ"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "9Yk997XkGOdC6Itx", "userId": "DT8p4n4XCFkD1AJL"}, {"statCode": "CwszbZxuHSgDOK8b", "userId": "joF7bL2635KbtZTG"}, {"statCode": "Jpqgl2IzNXGTuQPI", "userId": "Dpor7t1aJLNNz6QI"}]' \
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
    --body '{"cycleIds": ["mnxAnYBTxaTIz0jc", "ljdWYmELe74p38vu", "VC9Mfuc8VOsnmnlV"], "defaultValue": 0.0980359455460117, "description": "DI8Pkz96vd80msqI", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.8425431126832166, "minimum": 0.1934161788923051, "name": "NUBDShHD32vvL28F", "setAsGlobal": true, "setBy": "SERVER", "statCode": "iXfLcxDC9Ynd02mE", "tags": ["feKOufV4f15NohXu", "CIQhfIhHtADUQ9zi", "mQTQT95pFJUAJsyA"]}' \
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
    '6opxQGRt6PqlkL0d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'iRhLC10ih2EQfY3X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'Cv4hdOa6FdZhNMd1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'onFjGRbxtABPXDmg' \
    --body '{"cycleIds": ["6szbCCf73IFbRkPS", "NEJBhgGq5GIDhNC6", "SITz4TjCrJHXGXku"], "defaultValue": 0.8784419569903483, "description": "YVuOzhxHmnrrV9ZG", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "05sxe6A6RpmKDebN", "tags": ["kylbynkgT9vayLLi", "jF5RaJwvkWVco2LT", "izac7Ge6zKJdlt7r"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'o5ijlvDF8qBWCQ9d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items' \
    'LWYyS8zdhMeBXH8x' \
    '6HdVfZVDAiU6iJOF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    '7JKZFNk2NKy59X8i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'Og2sVBiCoeC5weXJ' \
    --body '[{"statCode": "l7PeiMH8z8dVej8N"}, {"statCode": "2yv6VTnOK7xAvM7t"}, {"statCode": "uL81lsR7xxSVp3Gd"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    '2TK0HzYviTgYmx82' \
    --body '[{"inc": 0.568172464280074, "statCode": "VBRLPZ6Iz8tne5db"}, {"inc": 0.10135618814880687, "statCode": "uBF6Gsvvdl8jHz9x"}, {"inc": 0.960962911642574, "statCode": "XZIjU4IK9lOLaZaM"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'phKCqTq3EVheJjoE' \
    --body '[{"inc": 0.48884165537672786, "statCode": "XBLIxGnNuhoJM3WW"}, {"inc": 0.6647413075626591, "statCode": "vvCiCf33ViEdqQpo"}, {"inc": 0.5224316173990072, "statCode": "kUWNizk5UcPAGv6c"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    '1ESC6hZYTYZbzf5a' \
    --body '[{"statCode": "ANNNs5kgSZZNUHbI"}, {"statCode": "T9szApmWJO5vzzXZ"}, {"statCode": "j08a6K1XRVfriSpP"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'FnZBJZkDnEiyfa2L' \
    'rnpZxNnLRH36bqS2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'oFY76PU1AziBOHEA' \
    'j1cT3u6Zc2FbrTFz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'nTgDIwZIRWf6T3by' \
    '2kYSCdnFKLc0xcTj' \
    --body '{"inc": 0.2694381040408188}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'jdcEfU61OJYMnW49' \
    'rWynp1ck1vT90C6o' \
    --body '{"additionalData": {"86cSRL9cgbUmulhe": {}, "98oaFKlQicdrxVhr": {}, "twSd9QWVMYz7TU1T": {}}}' \
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
    'sxsChSclSkb5aBi9' \
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
    --body '{"cycleIds": ["In7QqXBDXJcrqKmX", "K9zyv6gFZXI5nXJ7", "hLi6HweweRmyo91d"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    'DwoEV6tCdrxw1KOP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'huvHuYrGWDK41uMO' \
    'C0mRvSoaGk4ktF5w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.2245794559628842, "statCode": "JDg9Q3WXiydCOInV", "userId": "olsr6CHmj763vLwt"}, {"inc": 0.8137450315528182, "statCode": "EJTSiXjcY5ZPkv90", "userId": "lyKSTWLxSFZ0Lpup"}, {"inc": 0.48715697211699016, "statCode": "i5DbkVs3qFTi1t53", "userId": "0Wj1WfzIvc3VlSXr"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.43246650841868095, "statCode": "3XUGud4tVjmxEf4X", "userId": "vVhFJTxFHITBg9x4"}, {"inc": 0.3245289301242721, "statCode": "nq3eOMHIKeTyBG5d", "userId": "CUoExnKfV3869IN4"}, {"inc": 0.7592266676185873, "statCode": "1OdhH4GVU7Exlkmc", "userId": "4xYiLjLyZrXr9Bht"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "zn8jAdTn6xBhrcir", "userId": "yLm67rkadH5Y41SL"}, {"statCode": "jCPrFa05Xl5TPC5G", "userId": "ODS44bmm7jPdKLdd"}, {"statCode": "fdsUqjXVzW1QqxnW", "userId": "R5sheLgsAF4ctv5g"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"cycleIds": ["uycGiq9j2EyIknfL", "ZFyyEr0KBXuJBqK4", "DpgHnMOn8nc3gUZ8"], "defaultValue": 0.6868270607303881, "description": "tEydPWLPBYiR3UbJ", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.8086083057092633, "minimum": 0.004433919993911406, "name": "px7C477etqgfOJDU", "setAsGlobal": true, "setBy": "SERVER", "statCode": "3uWVRz3V7YbJM3bN", "tags": ["0lpzcBQMAEcNcJqr", "LWHAbCZixe2cQ6O3", "KxnMzSYoc4ZjiMY4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
$PYTHON -m $MODULE 'social-public-list-my-stat-cycle-items' \
    'H34B6wVd8ipcKDwQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
$PYTHON -m $MODULE 'social-public-list-my-stat-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
$PYTHON -m $MODULE 'social-public-list-all-my-stat-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items-1' \
    'eUWtjCC2UH6jzMO3' \
    'AfmOS5mQNyRPZFPN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'P56l1AT6OLKmZhCZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'xxPPdPwOtEuWBSO2' \
    --body '[{"statCode": "jJepUnEEgja2mIE2"}, {"statCode": "kLTnJwc5XmkCuL5W"}, {"statCode": "4tKt6G3j9LYdG7xV"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'PqBqe9RDQMBSYAFL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'qp8PF5hCcoukWpnb' \
    --body '[{"inc": 0.41447919872293193, "statCode": "4ys7j6lxuU3u2HEG"}, {"inc": 0.8542188501671188, "statCode": "qfKegvFTD1sPykS8"}, {"inc": 0.8205411905705813, "statCode": "LmwtYgWGcA0h4G1L"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    'Z1HaX5UBMbsF44VT' \
    --body '[{"inc": 0.2913599561016966, "statCode": "LDRzdq22cbnyK3gg"}, {"inc": 0.5018327185343352, "statCode": "Dh2kaZP7pnnVfxPw"}, {"inc": 0.044116892465836166, "statCode": "259HF9ejHaILQruA"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'uYyJLYGqMv824ouS' \
    --body '[{"statCode": "gkpK70uJmUL0uzEl"}, {"statCode": "ixc023dIvDiA0tQW"}, {"statCode": "lHwBcTtztx3VAl6t"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'XFbnATCzUOIzVcy9' \
    'k3ie64Vnwa0ClGQJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'ultJe32AiwKadEoI' \
    'VmprwPsa9YD92CX0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'rITajpwHITGeHTnq' \
    'RbzBB9ZFgJbQ3Fj1' \
    --body '{"inc": 0.32267280489733097}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'mx4ItzkMJ7cudf4r' \
    '916GPrhn2etVIQvR' \
    --body '{"inc": 0.16196703897695253}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'QJAtDUH9tx60AehG' \
    'z1ermJYXsYgL7Tfy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"IlAwjTZdRZJJzWZw": {}, "vTX2bamSCvX1nwvS": {}, "WdDwD7WJHzgNZUKs": {}}, "additionalKey": "I5y0mR3zMyTsftKq", "statCode": "nsIJctAdxyZVKHA9", "updateStrategy": "OVERRIDE", "userId": "ucHf7dbh2iKNUl0q", "value": 0.5673593935283052}, {"additionalData": {"qzoKMRMG541PAiNj": {}, "ULsx4SnKNXLMUaDS": {}, "wwQlnNRZJHBSB4fZ": {}}, "additionalKey": "WEFIZs28Ff1kZp1Z", "statCode": "ktx3N7WNMYIfcDKb", "updateStrategy": "INCREMENT", "userId": "u8pnK34oA1keYXJv", "value": 0.31548020801962384}, {"additionalData": {"ggDdXjbdjMBahFZZ": {}, "GMTcqnWrIprOv0BJ": {}, "9Sgl7H1sdH2RIJz1": {}}, "additionalKey": "eI7Q5pu9PutLf6Ir", "statCode": "vZoBGQbO4S3rURGW", "updateStrategy": "OVERRIDE", "userId": "5K4BYJ2fkqYJoF2F", "value": 0.5485521501804803}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    '3vyyqRzc20O7FdsJ' \
    '["P1G9tyBTfERXdvgD", "1Qf7Ot2DkUt3yexZ", "BRvxYnEBhXtAVxCd"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    '3meTrT7cF9oVCh89' \
    --body '[{"additionalData": {"wNOkKYssVejcL3kR": {}, "3hCGNgaJmuALlMQl": {}, "9RLrthbfp0VgweLl": {}}, "statCode": "T2sY3SsTnDQY7kKU", "updateStrategy": "INCREMENT", "value": 0.3232865459997134}, {"additionalData": {"06Q4veujxtyQENvJ": {}, "rBCqeg67d4RWOqO4": {}, "U0bitNQLzwRoWnR0": {}}, "statCode": "AbkCPY70FmvviVIB", "updateStrategy": "INCREMENT", "value": 0.838186815736148}, {"additionalData": {"GVL5KLTxahWlS6Xd": {}, "BaKSLCgOOPXM6XTU": {}, "h2dJ90yqHDNacl4F": {}}, "statCode": "9G6Dl5TFwBY6HKXA", "updateStrategy": "INCREMENT", "value": 0.7313155322333552}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'BulkUpdateUserStatItem' test.out

#- 88 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    '7TOpyiuvvQUm29Ia' \
    --body '[{"additionalData": {"cq4XRLaA643nTMtX": {}, "SAyejnny0Ju13b6o": {}, "5uB2XM6IHy7EEvHy": {}}, "statCode": "LmcvrZZOdwe1x8Rj"}, {"additionalData": {"U6Bi8JXE52sUBBq2": {}, "SimQQoLbe5YOJvxG": {}, "RxUzrTwagH7BMT1I": {}}, "statCode": "ZKTdNFVBQ1crBXAu"}, {"additionalData": {"pATO8uXsqVpdiWo8": {}, "SjDAM0Riw8wLYW3n": {}, "4F3LD1EDwBXw5uBY": {}}, "statCode": "eQZOzATNSV9E9yyN"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'BulkResetUserStatItemValues' test.out

#- 89 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'b7yaLXzAVYymOuhC' \
    'kZu4htrsf8eIFSov' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'DeleteUserStatItems2' test.out

#- 90 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'TGXaMsq8ePN1oco2' \
    'jx8Upe8SjMvpqM8p' \
    --body '{"additionalData": {"uggOEdG47gD5i2Ni": {}, "6AnWn3NdEPhNHSH7": {}, "eKDfRcngEpTnRUQr": {}}, "updateStrategy": "OVERRIDE", "value": 0.7022080379374563}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'UpdateUserStatItemValue' test.out

#- 91 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"LOM1vEx4gqDY6jwy": {}, "KRxhkLe5zohg9s9u": {}, "tRQt28b6o3K0COF7": {}}, "additionalKey": "4tz6aeXZOYwbwjMN", "statCode": "dxKWlBfnRyFS0Ed7", "updateStrategy": "INCREMENT", "userId": "cjIXmFWRJnj8xN7H", "value": 0.4735360668150813}, {"additionalData": {"PTUEDPN1Kb4UTPWD": {}, "XTSb55g8LSTs7Nf9": {}, "5lGlPrf6obIdnI6A": {}}, "additionalKey": "g7eUYcYJ4QzXCmqr", "statCode": "6gmPGaHP5SVPvRLi", "updateStrategy": "OVERRIDE", "userId": "D3rpBfBovqLwXBuT", "value": 0.8973524970012884}, {"additionalData": {"0EYeRj17xGhaBKoU": {}, "fiHjGmCyPsKCJTv1": {}, "ic9gvagF2cSuztsJ": {}}, "additionalKey": "5tj64gV7nmDk29mc", "statCode": "jSuz9vbNStqPtQmQ", "updateStrategy": "MAX", "userId": "eKAGiZFCftT0RWEC", "value": 0.05884329343321382}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem1' test.out

#- 92 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'jWYrnulxcCKAru8p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'PublicQueryUserStatItems2' test.out

#- 93 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'OaAVLDB4k3Jwkdax' \
    --body '[{"additionalData": {"R7GJpYmuYCPG181q": {}, "9GA5DydC2D8UT6KO": {}, "c4VPDUR9ayazqXRq": {}}, "statCode": "egIUicYXXzxsBFrU", "updateStrategy": "MIN", "value": 0.49355600763868834}, {"additionalData": {"R2txs4qrNARATn6K": {}, "XOutlYBbLhL8KXx2": {}, "5FZfQIodVBqQsBpC": {}}, "statCode": "JBIXLGYcwWVRK6UK", "updateStrategy": "MAX", "value": 0.27213425134722413}, {"additionalData": {"78cE5O5pmPnbiPJ9": {}, "j4vxmbH3rVaauufx": {}, "kPHElug48TgfNu0r": {}}, "statCode": "qXUOyToLPIREGIKl", "updateStrategy": "MIN", "value": 0.18815940544243448}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'BulkUpdateUserStatItem2' test.out

#- 94 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    '3dKF7NXEjrJMki8j' \
    'vc3P8Gwjg3IOH0SD' \
    --body '{"additionalData": {"HgYKqxJiFJdrmj5v": {}, "hzgsJwex7wq8ZPlX": {}, "NaUNgdY2vfJuje5c": {}}, "updateStrategy": "MAX", "value": 0.5911454200356001}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
