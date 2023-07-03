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
social-bulk-get-stat-cycle --body '{"cycleIds": ["EW6GLbc0NaKDUL3s", "iI07A68eaqC2J9jy", "a13lk1dQBHO86IlB"]}' --login_with_auth "Bearer foo"
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
social-create-stat --body '{"cycleIds": ["udsMrok0WvGYYnx4", "omOR2nvYI9TVqJdv", "V709xbnGezKsDwG2"], "defaultValue": 0.41617567346829587, "description": "cWbfUpaXp5JMl5LL", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.7178048226334778, "minimum": 0.7062961847081144, "name": "gwsAj1ik1jglaDXT", "setAsGlobal": true, "setBy": "SERVER", "statCode": "CWwNTAhd2wrS0uPd", "tags": ["P57dBZNR88YbCtmK", "jhdinpng5BLy8wbh", "MssAHjapIkY9Rf4w"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'y8M9zVrjfGXZnqAQ' --login_with_auth "Bearer foo"
social-get-stat 'UoY1GjlIIk0iKoTT' --login_with_auth "Bearer foo"
social-delete-stat 'S1j02o7JjTXAQN0q' --login_with_auth "Bearer foo"
social-update-stat 'dskdQV0TqI8EFnmD' --body '{"cycleIds": ["bxIxi4YKlONk2Q5Y", "4JvaizwiilatuUjj", "t9lIMGql5ElEa9EI"], "defaultValue": 0.5599603137444925, "description": "lGcHB3CfR3ncDlwi", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "EIjowLqc3ecjXJbZ", "tags": ["giPg4x4yiPX6ues1", "Hhhkg1yLVbLFzHEP", "DKKoxLE1Y3Dymtj3"]}' --login_with_auth "Bearer foo"
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
social-create-stat-1 --body '{"cycleIds": ["KZWe8aoFzAyBME74", "HUtipUWYhWV1qx8C", "LhrTrcBE2ItBS3Kt"], "defaultValue": 0.4151469005576264, "description": "PML52faXUr9Sk4lq", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.009773740863903924, "minimum": 0.4360564208379871, "name": "cAXXKlhvyH8paOJt", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "qMPpcVfRwNj547fH", "tags": ["phn50c9tNLDljhZ2", "0XrKEDpEY8VnocGA", "jci0V3tBf2jnHGKX"]}' --login_with_auth "Bearer foo"
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
social-admin-list-users-stat-items 'uC2m38kXrDZWlGVE' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item '9sJ4NpUtKp6M9I6n' --body '[{"additionalData": {"EwnZhsjwJeGwaPSD": {}, "MZz95OYKiqaZD63x": {}, "e5rruJVfLGea0Ztl": {}}, "statCode": "zUcuHAXz0UV31Mfu", "updateStrategy": "MIN", "value": 0.010039073002777954}, {"additionalData": {"XsAuGsZaSHevO0TQ": {}, "NEI3kfabxJWWSI1E": {}, "CUo1NPpeFhUztXDg": {}}, "statCode": "B7n4C97uAPP8PATL", "updateStrategy": "MAX", "value": 0.9483850803530488}, {"additionalData": {"FYBZsWFbr3RSP0W9": {}, "nBhvhf8Q0DtJMcYQ": {}, "dN66bswAgt65X4N1": {}}, "statCode": "LQZmB61JMdtwCVUr", "updateStrategy": "MAX", "value": 0.6894439743781626}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'ue84dwmbwFEnAZaW' --body '[{"additionalData": {"sQJtRYoagRJK5PX9": {}, "UcOvhPyE11TRT2SK": {}, "seoe8VLie0LBa36K": {}}, "statCode": "Nzjf005CXNGehQ2a"}, {"additionalData": {"TjTDfKFDXC7eGL5Y": {}, "hJDWh9YWqc0qgV6d": {}, "9yOfIMLds2DbPcao": {}}, "statCode": "MdtRLTmSvTkQQgB7"}, {"additionalData": {"exYvmHMxr5hPCJJz": {}, "tJBg0tTJg46IewOX": {}, "E2AkCh3QIZsUf8lG": {}}, "statCode": "FXcmwTERHclOdxIw"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'qejxe18rNdb8Otq6' 'j1mqUav7k05HAQlt' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'nSojV4jT65yclX2F' 'tAz0vJjFIYWOaNds' --body '{"additionalData": {"immkW2miH3xRHAKy": {}, "4QxZkaXZ7vmiEd0J": {}, "PxVyQpshaDwNqTbb": {}}, "updateStrategy": "INCREMENT", "value": 0.42279697885178225}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"MfVXe0GZeMgsRsmH": {}, "1EQrYmkPKTPOlhTt": {}, "SiZNCxuogFteTHJe": {}}, "additionalKey": "4BhSSQkQD6WmOt6D", "statCode": "7ufFVTOhvQpfbBke", "updateStrategy": "INCREMENT", "userId": "aEdd36xj6wySoltD", "value": 0.3759914372770887}, {"additionalData": {"sbzxrlaKEfkoYjY2": {}, "o6ouRW9UtNquwC3W": {}, "gumrIz4NhGztZpr4": {}}, "additionalKey": "U4fwQIiLXgmRasvj", "statCode": "O4lj8m3XEwP2b4gd", "updateStrategy": "MIN", "userId": "xOeii8Jnmssep2xD", "value": 0.8827577289051194}, {"additionalData": {"NY0kABeGs9yxahld": {}, "1pO0Gyf5PO3COyMv": {}, "czgEpzZ3FbtxfhcR": {}}, "additionalKey": "C7IVYa6iZ5uFRYNn", "statCode": "3SHiWxF0YbuU5ar5", "updateStrategy": "MIN", "userId": "v1dMQ9Rrbk6C2cVW", "value": 0.09281349800883143}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 '6ttvbU1PO6ApCD2V' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'XidT7w0Oc15N8WXB' --body '[{"additionalData": {"Pp17PAewqSm5x3B4": {}, "t7WQnp8jXZedgt5c": {}, "yNe27HLtwtVOaxgP": {}}, "statCode": "6Jbct8puMybYGxD9", "updateStrategy": "MAX", "value": 0.22622102649720632}, {"additionalData": {"zGoDtsUuYo5p8ED5": {}, "QZAufwNa8lzfjv9o": {}, "YMXMjlVHY1AHwF3v": {}}, "statCode": "Goav7MK0PcLnEkco", "updateStrategy": "MAX", "value": 0.02480865703086843}, {"additionalData": {"MPimNhcZsU3VAdMD": {}, "cb4qlkiFAamqvZI2": {}, "KwjqPBiWXade41s3": {}}, "statCode": "rH34mB2yPlRpWjmH", "updateStrategy": "MAX", "value": 0.4328308604139046}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'AvKTH8MuqIg0Czkg' 'uwuJCW7EEFB67AOD' --body '{"additionalData": {"bi9BzupBsFpYc77G": {}, "tRUcCFeY5g4XgBsb": {}, "fzqxBPNe8ae1Il4a": {}}, "updateStrategy": "OVERRIDE", "value": 0.6779306778161662}' --login_with_auth "Bearer foo"
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

#- 2 GetNamespaceSlotConfig
$PYTHON -m $MODULE 'social-get-namespace-slot-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaceSlotConfig' test.out

#- 3 UpdateNamespaceSlotConfig
$PYTHON -m $MODULE 'social-update-namespace-slot-config' \
    --body '{"maxSlotSize": 77, "maxSlots": 63}' \
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
    'YXxm09wpGAbpEmDY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    '9vLh3u6EDsUmrV6k' \
    --body '{"maxSlotSize": 69, "maxSlots": 72}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    '4OotKwG3UC6XCnnZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'xF8CmQr17W65br34' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'rBBN9tU6TDm5GloF' \
    'SKWM1eym5ydC6p25' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    'xCWTqUOYZENJ1QHZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    'QxPRXH7uxBJEECQE' \
    '1li3Bg7Jxc9pUnZm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["vhidwCkZwqjYLfTi", "CO1NDBvQvRPnAz4V", "zW0CpoBCbyJsF5Ij"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'F1c0W338HS6CBgVR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'yihYNZ84CVhziXV8' \
    --body '{"achievements": ["HwSmvcvcDKF19yVR", "afCjOuSYht83AdvB", "aagTiRJ8daGTVX3B"], "attributes": {"b7jlz5IfHgKjI9mw": "JSrN8jkIykR2zbaI", "6PD7fEscShnGUGUt": "V9GJ279GDbLNwjm3", "FK0nnX2poMfZ1hDH": "tbh4HtMlFgvh2Dp2"}, "avatarUrl": "SoiIPp1yvfAHS0Vg", "inventories": ["Lu11A3HTovFi4tPA", "GfleyCA6jEtcqsnz", "oVILjkwW61duF87a"], "label": "Uyrdt4XSpWBAetsa", "profileName": "nzqP8oxfrtbECD1C", "statistics": ["YPwaiBAxfYL8Avt7", "0ZUT2fSk3LL0calq", "xEewuGS469k2hG0W"], "tags": ["Kt4sUmanYxM0UHZV", "NYzGMNIpWoSLkUrf", "uf4U3WeYeA9t2ENK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'KWrFtHIi1CMgKAOG' \
    '5iDcCR5PbCvDLil8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'wj9cKM3Ar6MF35hC' \
    'ER4nGmWGgTJfHlJl' \
    --body '{"achievements": ["4tHGa4XfZcd9CVnG", "qMX9FieeEssWEUl0", "7bhwntCVqiYOJf5K"], "attributes": {"wMZQjzvjSozv6CTR": "Dl0zp9CzHFwinkBN", "i4gvqgl6TZ9TGVPm": "v34h6T7EsufmfxKY", "B4LM6H6QXmpZ9X3f": "USR1l9xLPBsmAUrD"}, "avatarUrl": "9L1IiD6MlcEPhMDF", "inventories": ["zjHZ3sIhzOx2CXKl", "vIomU3pIxM9n8D2e", "LMe3lt9qfx2UDcgV"], "label": "E7L9FK6e0MrPc4vt", "profileName": "xk9hVKlG56HlzGr7", "statistics": ["XjdyRJunZPkp6ccI", "BnWyPw8mj7gyQ7Xd", "IszGRj46COPipH1M"], "tags": ["WVTHG0qHJCWEfOJp", "Zm9yEYWNGMy2pgSG", "SUOK68eqGJtWf1Yb"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'gg8rdwY9bmrvHmO0' \
    '7KNqX9LM2IwEsdOG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'BXBwnzDX8v3xgC1G' \
    'e9PdbTTAJ2Gp1r0s' \
    'VZ6LJAOddIL2l3hP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'jNDKv2LWfXqjr8fS' \
    '79En3wYowBdkaZ3y' \
    '6i38XQjLDRqkpiFK' \
    --body '{"name": "5BtiQ272Uo9UBJWo", "value": "dpdwsX1jorcyR0x3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    'YiHF8ITGPRQBCgIs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    '1Q2lzxl0yF5m77TT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    'h4gUoj8u2WRcLiEt' \
    'zVlnkflfn7pHY48F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    '1dl1q92m3iRlfnBA' \
    'k0CwiAsR65yQ9ssu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    'HdGmxncCEr0Kcgeq' \
    'zGbruNB72HHMkjzy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    'BB4UFKiaoV0VOem2' \
    'yqPsMFxKybPkbuS6' \
    --body '{"customAttribute": "x9cLJ1APnNlsa2bR", "label": "Br27fVMWuAfDqLMR", "tags": ["919IZPKOKiAVQXXO", "mqFHLbyXmgCNiXH8", "uenbC5CphgMweexs"]}' \
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
    'IAP5vHLjBJ9iqMcB' \
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
    --body '{"cycleType": "WEEKLY", "description": "4UMS93yOxNInDByh", "end": "1978-04-30T00:00:00Z", "name": "5kG8bXGFmPAnOkDi", "resetDate": 73, "resetDay": 82, "resetMonth": 34, "resetTime": "zOj84O6tgohjtC7b", "seasonPeriod": 53, "start": "1996-03-16T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle' \
    --body '{"cycleIds": ["UpIFvORxTi79DpSj", "s9mfVQh3jLBtn9px", "pE7BYtzB0B4CxyQr"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
$PYTHON -m $MODULE 'social-get-stat-cycle' \
    'b39ukcR6c2E2r3vk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    '3IfAKEbqcNXSGCCv' \
    --body '{"cycleType": "WEEKLY", "description": "owNmdpcJgF88ySNq", "end": "1993-11-07T00:00:00Z", "name": "oYIK69yg9ADCGiXa", "resetDate": 77, "resetDay": 84, "resetMonth": 38, "resetTime": "TniBgLsNhdgQ0JWZ", "seasonPeriod": 19, "start": "1985-11-24T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    'mhNHSXuqIHsxvaUo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    'XDmwWsukxncuD3Qx' \
    --body '{"statCodes": ["CXMd00YBWCaVVmM4", "5mfIZsWhkS476dGG", "JwJ00UH197MJ6zU7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
$PYTHON -m $MODULE 'social-stop-stat-cycle' \
    'JLMQyMWzYQCAaPJg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'oxGJoJaSzUtY4ZD0' \
    'Xtb0U4pH16NUsVY2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.8663632754317393, "statCode": "NVIs7NRen2Y3Ns0Q", "userId": "JQeaWytPfds1BYx0"}, {"inc": 0.4950461874098726, "statCode": "aURydf8ZyyZeHAWG", "userId": "gJUbUJRMbkcTglbU"}, {"inc": 0.977244027709012, "statCode": "6FyOjApNHBVfNOUR", "userId": "cjY3YYT9oTynmfIu"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.43928509489710854, "statCode": "WgJTNFfM8M0IW4oe", "userId": "8KDgy0xZfAcNg14W"}, {"inc": 0.2907678588848861, "statCode": "8TIP1LKiFQoLDvum", "userId": "fqrgSfnx2h61X9dN"}, {"inc": 0.85609479169999, "statCode": "MGRXBJ6mVV7JS9qj", "userId": "NLwvI8JdiY3RRiLi"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'lmOGF6dLLIeIVIjM' \
    '["cdlbdRXTGIrdNL5g", "JPqTAjgqaTHf1ANT", "J9Yk997XkGOdC6It"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "xDT8p4n4XCFkD1AJ", "userId": "LCwszbZxuHSgDOK8"}, {"statCode": "bjoF7bL2635KbtZT", "userId": "GJpqgl2IzNXGTuQP"}, {"statCode": "IDpor7t1aJLNNz6Q", "userId": "IVC9Mfuc8VOsnmnl"}]' \
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
    --body '{"cycleIds": ["cgDI8Pkz96vd80ms", "umnxAnYBTxaTIz0j", "VljdWYmELe74p38v"], "defaultValue": 0.2588090843564592, "description": "Im5bufnBqrpLeqhw", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.8846290425603192, "minimum": 0.9782409461086465, "name": "FPwTiXfLcxDC9Ynd", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "ECIQhfIhHtADUQ9z", "tags": ["u6opxQGRt6PqlkL0", "AfeKOufV4f15NohX", "imQTQT95pFJUAJsy"]}' \
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
    'diRhLC10ih2EQfY3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'XCv4hdOa6FdZhNMd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    '1onFjGRbxtABPXDm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'gNEJBhgGq5GIDhNC' \
    --body '{"cycleIds": ["66szbCCf73IFbRkP", "u2YVuOzhxHmnrrV9", "SSITz4TjCrJHXGXk"], "defaultValue": 0.8351772558148868, "description": "GWrZ05sxe6A6RpmK", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "TKbonoucNmzwOZOK", "tags": ["Tb1XTB9YQzUJ9XlY", "56sDkci5rZ8iMlOu", "ksQJCiRFiZWwJ7Nr"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'J8BzP6EUmUXGM5an' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items' \
    'Iloyj9lhbvuQdW2j' \
    'wKUckc794ryY91lX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    '8DD4MYXlrJ81lHvv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    '9rqvEoM8YmVjAkO3' \
    --body '[{"statCode": "HKsEp6KlqwW4djre"}, {"statCode": "xcbHdEtoQvpV344R"}, {"statCode": "ctmTozCi8HeV6jba"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'lHmqBBfi7sSF5BoG' \
    --body '[{"inc": 0.13567800021455112, "statCode": "TCVsXsygWbjE2opX"}, {"inc": 0.3112912357802956, "statCode": "dsJQeJ1too0qvxph"}, {"inc": 0.733685216569398, "statCode": "LEEBGTtZyTjdKNKg"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'YazujsmSmylT1Ytx' \
    --body '[{"inc": 0.554063945230085, "statCode": "q73aMb48jISd97KO"}, {"inc": 0.696324279083192, "statCode": "RhxSWLWLNfHRD3V1"}, {"inc": 0.923935021032234, "statCode": "QaGGL46LuxJF3sbe"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'qWBdQuWfgBAKx27M' \
    --body '[{"statCode": "SBqabUXOGkkoMUZn"}, {"statCode": "1YXj5zFZeOCOR9Nv"}, {"statCode": "BQZSJPOIKrRBrYVz"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'i9ui3lvozTt9TsH7' \
    'A0TuU2aL4bPkk11s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'ys6GdkDcos5uVJ0B' \
    'JfZ0jvA54CSqZFDs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'O1skRjOU1SMfQVQa' \
    '6blj9Rdd85bdYUum' \
    --body '{"inc": 0.6687308906622466}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'KVSZCg3XTc9vQe0d' \
    'HJfF6KIuvnRCa9Jk' \
    --body '{"additionalData": {"tyBdxkZKrEWFw9GY": {}, "xjiiOQAD77ci0vfW": {}, "VZoRRMPi57HyKKz5": {}}}' \
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
    'nyI6ulKNKoXa0dgx' \
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
    --body '{"cycleIds": ["1JgjC56pda3YhtQx", "pCYME6x21pdX2QSP", "Ad9sxoLnWGP1PafI"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    'jLX8ce0KbNN7Ycl2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'JfmQplvGjVQ4aebj' \
    'fgGu472oWJlfglLM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.9171617146612648, "statCode": "xjfkNL4lU6jaGfsD", "userId": "1cfswmeFpvtDteto"}, {"inc": 0.6802344720125969, "statCode": "VFL8LNW11vtpaTxi", "userId": "7k489jRCn48bvkCP"}, {"inc": 0.08832967512825363, "statCode": "KofwXOIZZQAJza84", "userId": "lKKmVOaTS6xBbNrS"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.7532244703684515, "statCode": "AW2ak7ISDrBVg6Nu", "userId": "DZvPb1kuUfNfUDe4"}, {"inc": 0.10440756768278625, "statCode": "7q6PHEaqbzHvDDl1", "userId": "jiLw3XMGBA6JXDpA"}, {"inc": 0.8553652776560537, "statCode": "tIC45C0oaGouFu4h", "userId": "XONgUwJnUpryDeRc"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "pUvlrw2MwC1uuokp", "userId": "aIjL0Vxe5n9Lx3Qc"}, {"statCode": "Fo9gxOgvDc7xMrRK", "userId": "vw8ISP2WKmCRRXBx"}, {"statCode": "lalCHtWlKxLpS8fL", "userId": "WoQ5nuJhatQPxR7d"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"cycleIds": ["vBVC5zgOKLTDmHe8", "v22M18uux9xBomQF", "c1eJ9sde7Ryt4udI"], "defaultValue": 0.6673150789352382, "description": "FWy5cwNPI6aFo0MV", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.09751849492857079, "minimum": 0.09072583511371801, "name": "OJDUT0uKAPrARya2", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "M3bNLWHAbCZixe2c", "tags": ["Q6O30lpzcBQMAEcN", "iMY4H34B6wVd8ipc", "cJqrKxnMzSYoc4Zj"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
$PYTHON -m $MODULE 'social-public-list-my-stat-cycle-items' \
    'KDwQeUWtjCC2UH6j' \
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
    'zMO3AfmOS5mQNyRP' \
    'ZFPNP56l1AT6OLKm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'ZhCZxxPPdPwOtEuW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'BSO2jJepUnEEgja2' \
    --body '[{"statCode": "mIE2kLTnJwc5XmkC"}, {"statCode": "uL5W4tKt6G3j9LYd"}, {"statCode": "G7xVPqBqe9RDQMBS"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'YAFLqp8PF5hCcouk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'Wpnbz4ys7j6lxuU3' \
    --body '[{"inc": 0.32849582798366395, "statCode": "2HEG0qfKegvFTD1s"}, {"inc": 0.6632904442967956, "statCode": "ykS8YLmwtYgWGcA0"}, {"inc": 0.12825280218054547, "statCode": "4G1LZ1HaX5UBMbsF"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    '44VTsLDRzdq22cbn' \
    --body '[{"inc": 0.3953489875914096, "statCode": "K3ggFDh2kaZP7pnn"}, {"inc": 0.7729265472737235, "statCode": "fxPwc259HF9ejHaI"}, {"inc": 0.6086993362932358, "statCode": "QruAuYyJLYGqMv82"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    '4ouSgkpK70uJmUL0' \
    --body '[{"statCode": "uzElixc023dIvDiA"}, {"statCode": "0tQWlHwBcTtztx3V"}, {"statCode": "Al6tXFbnATCzUOIz"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'Vcy9k3ie64Vnwa0C' \
    'lGQJultJe32AiwKa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'dEoIVmprwPsa9YD9' \
    '2CX0rITajpwHITGe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'HTnqRbzBB9ZFgJbQ' \
    '3Fj1umx4ItzkMJ7c' \
    --body '{"inc": 0.3384767197288001}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'df4r916GPrhn2etV' \
    'IQvRkQJAtDUH9tx6' \
    --body '{"inc": 0.8422687350441246}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'AehGz1ermJYXsYgL' \
    '7TfyIlAwjTZdRZJJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"zWZwvTX2bamSCvX1": {}, "nwvSWdDwD7WJHzgN": {}, "ZUKsI5y0mR3zMyTs": {}}, "additionalKey": "ftKqnsIJctAdxyZV", "statCode": "KHA9DkaSOWgtg8yw", "updateStrategy": "MAX", "userId": "l0qJqzoKMRMG541P", "value": 0.4255880978605725}, {"additionalData": {"iNjULsx4SnKNXLMU": {}, "aDSwwQlnNRZJHBSB": {}, "4fZWEFIZs28Ff1kZ": {}}, "additionalKey": "p1Zktx3N7WNMYIfc", "statCode": "DKbLu8pnK34oA1ke", "updateStrategy": "MAX", "userId": "XJvtggDdXjbdjMBa", "value": 0.12686544646952846}, {"additionalData": {"FZZGMTcqnWrIprOv": {}, "0BJ9Sgl7H1sdH2RI": {}, "Jz1eI7Q5pu9PutLf": {}}, "additionalKey": "6IrvZoBGQbO4S3rU", "statCode": "RGWUzPAE6SdV4D5j", "updateStrategy": "INCREMENT", "userId": "oF2FI3vyyqRzc20O", "value": 0.9537613046008397}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'FdsJP1G9tyBTfERX' \
    '["dvgD1Qf7Ot2DkUt3", "yexZBRvxYnEBhXtA", "VxCd3meTrT7cF9oV"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
$PYTHON -m $MODULE 'social-admin-list-users-stat-items' \
    'Ch89wNOkKYssVejc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'L3kR3hCGNgaJmuAL' \
    --body '[{"additionalData": {"lMQl9RLrthbfp0Vg": {}, "weLlT2sY3SsTnDQY": {}, "7kKU2u06Q4veujxt": {}}, "statCode": "yQENvJrBCqeg67d4", "updateStrategy": "MIN", "value": 0.6546432925335719}, {"additionalData": {"qO4U0bitNQLzwRoW": {}, "nR0AbkCPY70Fmvvi": {}, "VIBbcujF8Vk5qb8N": {}}, "statCode": "hWWwaxyMchkt8l5I", "updateStrategy": "MIN", "value": 0.7393240285486723}, {"additionalData": {"Uh2dJ90yqHDNacl4": {}, "F9G6Dl5TFwBY6HKX": {}, "AblkT8VGgSH8MGZG": {}}, "statCode": "wiVj7eDTaka9ABfX", "updateStrategy": "MIN", "value": 0.5615993872126165}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'ByPEOuPhGspRi3bh' \
    --body '[{"additionalData": {"PQvBBJI5Jxytpcub": {}, "N4AUUPFPscZsXeJO": {}, "D4DMtqfIGiGJovgW": {}}, "statCode": "SRxZ8N4UQ2fg3V1o"}, {"additionalData": {"2x0hL5DuBDqMyIAz": {}, "Wze94MEdJFAy2JTl": {}, "lJkRGB8jqJEd6eqq": {}}, "statCode": "sBVyONV0JRtozI0j"}, {"additionalData": {"pliCFQ6WgJpGPigd": {}, "c5VyC4qvWjVac1cQ": {}, "vSxgTNIUzxDgBlIb": {}}, "statCode": "uzm7DzJ20NFRJIhF"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'XR2dYprPmbpuptEC' \
    'Gd5cdXC2Sesc6y68' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'whNBYl9iCqfW6rqG' \
    'OQny4ij4ysYPonb5' \
    --body '{"additionalData": {"9gQffkNOmubxEJr2": {}, "qEAuJbpZSrcbc4LW": {}, "fKaY5c1tP5TDuI5f": {}}, "updateStrategy": "MAX", "value": 0.32424876772485467}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"tRQt28b6o3K0COF7": {}, "4tz6aeXZOYwbwjMN": {}, "dxKWlBfnRyFS0Ed7": {}}, "additionalKey": "gTM5AVrtBQiDTcNn", "statCode": "Za6Zuxk6u6HXXdiC", "updateStrategy": "OVERRIDE", "userId": "ZDj4E4mv12FNXypo", "value": 0.6574817964470342}, {"additionalData": {"Ll13j84P0KqirJ4P": {}, "kMFtsnFfz8Ew0X8f": {}, "BuBSKLSQ4GvLtz50": {}}, "additionalKey": "D3rpBfBovqLwXBuT", "statCode": "30EYeRj17xGhaBKo", "updateStrategy": "INCREMENT", "userId": "fiHjGmCyPsKCJTv1", "value": 0.14110360423888157}, {"additionalData": {"c9gvagF2cSuztsJ5": {}, "tj64gV7nmDk29mcj": {}, "Suz9vbNStqPtQmQN": {}}, "additionalKey": "6eKAGiZFCftT0RWE", "statCode": "CdjWYrnulxcCKAru", "updateStrategy": "OVERRIDE", "userId": "pOaAVLDB4k3Jwkda", "value": 0.3776394441807348}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'R7GJpYmuYCPG181q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    '9GA5DydC2D8UT6KO' \
    --body '[{"additionalData": {"c4VPDUR9ayazqXRq": {}, "egIUicYXXzxsBFrU": {}, "s9BYp6TgCejBd5o7": {}}, "statCode": "iTST7R3KbbQGERMN", "updateStrategy": "MIN", "value": 0.8758587335530943}, {"additionalData": {"5FZfQIodVBqQsBpC": {}, "JBIXLGYcwWVRK6UK": {}, "k5ozrXA4HZHNyq9o": {}}, "statCode": "danhR1Zrm3thUvV8", "updateStrategy": "OVERRIDE", "value": 0.3951307770878676}, {"additionalData": {"fkycLSVdleSaAyls": {}, "mLYe2phYOgT5kDTy": {}, "Pl3dKF7NXEjrJMki": {}}, "statCode": "8jvc3P8Gwjg3IOH0", "updateStrategy": "INCREMENT", "value": 0.47290794380603673}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'HgYKqxJiFJdrmj5v' \
    'hzgsJwex7wq8ZPlX' \
    --body '{"additionalData": {"NaUNgdY2vfJuje5c": {}, "PnmGjTvYa5Pqx1K7": {}, "qcAoijBPAp6EPb98": {}}, "updateStrategy": "OVERRIDE", "value": 0.3130298508399654}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
