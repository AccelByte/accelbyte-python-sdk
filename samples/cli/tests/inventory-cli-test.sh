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
inventory-admin-create-chaining-operations '{"message": "EAxcVpFrttufHIRd", "operations": [{"consumeItems": [{"inventoryId": "H9UzVRiXbqlAw7r6", "options": ["W2ktQG0h5JAav5kR", "a62WopBJHPtcDs8b", "BZLCXLx8bbgorQeF"], "qty": 2, "slotId": "6hkspInrAip6lyzS", "sourceItemId": "xwElFHHdgs21Jub7"}, {"inventoryId": "4CUkNmKJfh5pUkHO", "options": ["DpoMF78NY4YkHs1c", "nz1JSDgY1TXp38zs", "CTCrbCbPOyNQkT7N"], "qty": 44, "slotId": "4OI18mAQLnzjMf8G", "sourceItemId": "Z2WBZqxYG3aREAu2"}, {"inventoryId": "D6QVKNCWP75TB0i7", "options": ["pKxR8dl0zRVW4EZG", "9m0XcgGVbMqSszE8", "GHavj7AorKsxwkos"], "qty": 54, "slotId": "5MecdKi5r6QEa1ys", "sourceItemId": "LEzth6mXhzkzWkFe"}], "createItems": [{"customAttributes": {"ZSoEAcBdW19m4eu6": {}, "d5tA5jUmiTqpyhPF": {}, "dxLzFQN05MYzYiKW": {}}, "inventoryConfigurationCode": "e5dNRljv7IPrDQQR", "inventoryId": "gat0SevkLGMS0lyu", "qty": 70, "serverCustomAttributes": {"aO35llzQRaT5kPxU": {}, "fofvnnSuB0y5WUlr": {}, "MdI4sNveabntBSxT": {}}, "slotId": "eIv53HGCiljvjKoy", "slotUsed": 59, "source": "OTHER", "sourceItemId": "6SCwGrncqmLtjQHA", "tags": ["f8TgoNm03VLisV6z", "wPuo3td6TC6I3lMj", "GSWN2laRlxfcjHfY"], "toSpecificInventory": false, "type": "6MbwL6IY69z1UaLq"}, {"customAttributes": {"YSYWytLPziZMdjxc": {}, "BZufQxGiHPllG4cY": {}, "EzfTD1ZBm3MqHcUm": {}}, "inventoryConfigurationCode": "LZZbSqb8RwNmn9Hr", "inventoryId": "NQy4uZAAiE0mit9R", "qty": 67, "serverCustomAttributes": {"UdjsoqwGyzzWi9gw": {}, "QYv7t1o7TTr1Dmrh": {}, "Zv15T7quIOvBMcaY": {}}, "slotId": "mvCkGZ5dAgqxpBFm", "slotUsed": 1, "source": "OTHER", "sourceItemId": "Loxozr6wfNPX2bOI", "tags": ["tRMvqtlB2jJCSQT2", "79ZZPYGu0rdlgdWy", "OtXi3choQrpOsDBU"], "toSpecificInventory": false, "type": "epjChB3V0v52Dlym"}, {"customAttributes": {"6puQ23xoJ8aeCnaL": {}, "pUKp44YUDjasWIPU": {}, "vmEejtGeoyIPa8ZR": {}}, "inventoryConfigurationCode": "rvjj7il35MXbN9oC", "inventoryId": "MNqq98SjTvhZNkSQ", "qty": 60, "serverCustomAttributes": {"X3ateEKDpADz1x3p": {}, "oD3Qgb3boLQQ1MzH": {}, "7Qm8bwbmXgdAPh1E": {}}, "slotId": "ThG96gAFKK2WDgCc", "slotUsed": 49, "source": "OTHER", "sourceItemId": "rvqAThuwjRHpKKTl", "tags": ["mVr9XuoJbRFQSKVP", "Hbn4Xxtu7LQRENjE", "Eztx1WsYSiZqan0n"], "toSpecificInventory": true, "type": "I39YBHqaTHeKtW18"}], "removeItems": [{"inventoryId": "iGeUlc9d9sogWa24", "slotId": "CKNS0GqVvUfHQvsH", "sourceItemId": "XNUNe4mhgo5QB65l"}, {"inventoryId": "SAiYnNjkfZrQvGgb", "slotId": "LdLsFzHkBMr1yrOM", "sourceItemId": "lNFSrUEirnjX9fDm"}, {"inventoryId": "IbeZxzfTcyiuATus", "slotId": "9hsfpFDcSDG8aMVG", "sourceItemId": "LiBNrDjqoxcwgGLX"}], "targetUserId": "pUL4pp2ncYAHdNzD", "updateItems": [{"customAttributes": {"meIP6rOvDz9KOsb3": {}, "92k6YmJFfRByjlBi": {}, "uFM3FIoVk8T3GpAn": {}}, "inventoryId": "kCmBUqg2SCnqntX9", "serverCustomAttributes": {"y1aZSWMiVi10sG6v": {}, "xkfUcmqRRbceJ5i0": {}, "EeDxOgBnhhqElIaD": {}}, "slotId": "ml48wdNFLTm5T50x", "sourceItemId": "9WT0GfH2rtOa4EXs", "tags": ["XzOXQAk4mqrxzTtu", "Ll4XlbGL8QOxtjzm", "8y2wNhmwoYZyI4EF"], "type": "ZKBcYrCEAE7WIsfm"}, {"customAttributes": {"x40NLRc6m8heKnWh": {}, "zfe2NubeoKFeIaFQ": {}, "CYoDPICpnduEEQlU": {}}, "inventoryId": "LdJz4mnRBkMNxvvK", "serverCustomAttributes": {"gAT8mJrYq6hRkloq": {}, "xM3gpwxcfMy9Xzjj": {}, "I5YbsKoADkzJEN2V": {}}, "slotId": "Hzih3bit0VWn3CO3", "sourceItemId": "9PXDNxtXgeO3FgkX", "tags": ["hjDzaQY3snn2ZkP7", "cFdP43e5dC9XIBud", "fZgrbHDIDm4hMzF4"], "type": "TxodenSrUTvfqU0b"}, {"customAttributes": {"foMm5cTtFWbotQyX": {}, "JRcQWsmqPNs92epx": {}, "k0i8VxsZNereSvf9": {}}, "inventoryId": "699mCEHThUJkETAs", "serverCustomAttributes": {"Sp7gh4TeUTkOkAYf": {}, "JB8AT9t4Tv207Y2Q": {}, "D3oD5fLCr3OOlXVv": {}}, "slotId": "8ZGF7uYnGzpipNDi", "sourceItemId": "gNJma1MbqqZtfNWq", "tags": ["l4nmwAft4gqkNNlW", "kD9eOziYRFOn0jJL", "HC9LxhvNXTwGBCto"], "type": "hLtl9Zuhytm5UDrT"}]}, {"consumeItems": [{"inventoryId": "6QXCs5SPBbRPZTF6", "options": ["oQAXVG7tnsZg5QgX", "jvyGJPN4eXbJE5Vs", "2GcyomQoIXimBJeh"], "qty": 50, "slotId": "enmPZnGBt4P7Wnbd", "sourceItemId": "SJtjX7ZshZyZl5x4"}, {"inventoryId": "bRXBHUTrDzZSKscf", "options": ["OcYu3dpCROYqUiGK", "XVFCmpo6sPwVOEDS", "JsEK5QpNhlI2iS5E"], "qty": 31, "slotId": "IaTIKUkmkk9QM0NB", "sourceItemId": "MA9ORxpzwLR2AK6e"}, {"inventoryId": "XUGPJsw1fiP80G9P", "options": ["clxcft2ulIJzPyrV", "EiOG4UcqsuGKHhMR", "WLVd3DlhLuIpomM8"], "qty": 38, "slotId": "dlwuUccE536ugBp3", "sourceItemId": "HBvepnDCjgyJlXe3"}], "createItems": [{"customAttributes": {"6mgWjLfFmteue9nz": {}, "J6fH24T805tVg8Jq": {}, "U0jZpjvsugAOS7u8": {}}, "inventoryConfigurationCode": "RiWyerCSa8SRgwsA", "inventoryId": "j1ik1jglaDXTvKCW", "qty": 46, "serverCustomAttributes": {"RulpqpymDkQhtrHW": {}, "wRVnwVBOqOHi8pWG": {}, "d1juYhiqjRJOqB5F": {}}, "slotId": "93zFQbJndUDpdONn", "slotUsed": 10, "source": "OTHER", "sourceItemId": "zVrjfGXZnqAQUoY1", "tags": ["GjlIIk0iKoTTS1j0", "2o7JjTXAQN0qdskd", "QV0TqI8EFnmDbxIx"], "toSpecificInventory": false, "type": "efglSs6g4iY9u02a"}, {"customAttributes": {"CNYIWekp18lOC3mN": {}, "qF7Bl0LcghVHfPEs": {}, "pxwhRON0bc1eMbEI": {}}, "inventoryConfigurationCode": "jowLqc3ecjXJbZDK", "inventoryId": "KoxLE1Y3Dymtj3gi", "qty": 85, "serverCustomAttributes": {"YaT5hOPjaf3H0tYi": {}, "ghU0VUfcYHJbBfAK": {}, "SiPW3VgsZXiR1DJ7": {}}, "slotId": "HVWqMkNSawQUWDFJ", "slotUsed": 44, "source": "OTHER", "sourceItemId": "q8PdH6hJPUAc0RVw", "tags": ["XgAgntLMCuaXBWQi", "6BqPg4xr0lCancUZ", "GCHsZYoLfR1KtOv7"], "toSpecificInventory": true, "type": "y0b65uvuKNuy0ytZ"}, {"customAttributes": {"Q7M6Nzy1adnSKOLF": {}, "Kx1dX4LuWJu3pDMU": {}, "AeeZ97SBROPYuG6X": {}}, "inventoryConfigurationCode": "qP6oo7G73zdxTgOf", "inventoryId": "nwIdlNa29fDLh741", "qty": 71, "serverCustomAttributes": {"MSJlHeb34sZKHcl5": {}, "LLLOexL4fZvWtND2": {}, "tcBFpX8lNtFEJ7tn": {}}, "slotId": "kY6Mca5afj12K2Iz", "slotUsed": 36, "source": "OTHER", "sourceItemId": "BvvWm4udE0OXudXg", "tags": ["Nne8kJATwlc6esUp", "6Sw1I98jeZQ7hfxn", "hLd3Knaknoed9DHh"], "toSpecificInventory": true, "type": "OqQGhCUr6iTrjyEg"}], "removeItems": [{"inventoryId": "arAdNJOIG36I6tRb", "slotId": "RcrEveMdAdiPKDUV", "sourceItemId": "SC00PYeDcagginxn"}, {"inventoryId": "FIna3yddcbsPheTH", "slotId": "26IUJNvYuGRUvpZa", "sourceItemId": "HCuESOiIZsMfB4ZH"}, {"inventoryId": "3mtgWgU4pCAKxeE7", "slotId": "0CaunQNxot371W9G", "sourceItemId": "4AvQkqsGnmyo5JJT"}], "targetUserId": "UVmb8GEXFTlEMEsF", "updateItems": [{"customAttributes": {"zYqwgK1Np5nodqpL": {}, "m7FhJBNXzAFdO0Kh": {}, "qf6kiTdSGv2LFjAK": {}}, "inventoryId": "Y7CbgsWqFWZX7kPB", "serverCustomAttributes": {"om8F9GLLTG8phc3n": {}, "4iLoIllKlpO2pqiX": {}, "JF3WGRaoQomSJC4D": {}}, "slotId": "drKF7SUQPLG59e0k", "sourceItemId": "5ZtX6wK7PpUlcIW3", "tags": ["2iK7MGt1ixY5rA1W", "oVeJIePF8ZrQzP4z", "vtdxdbZUpd6FJtHJ"], "type": "1pyVwyKQLY6FEO65"}, {"customAttributes": {"Rb3z7CYLM8IlsHqf": {}, "fnrfsGlfPaZKBwa3": {}, "Ddb60ufPpzwj1QGI": {}}, "inventoryId": "FmlVf4jvapseE9LN", "serverCustomAttributes": {"9bvhOrHflIOd6X3v": {}, "iLvtEk4mTIpUA9gx": {}, "o8SV38nEhoXmM2W7": {}}, "slotId": "l6jHMA2rG3nakopA", "sourceItemId": "ywelu01nryEJ0Nqo", "tags": ["Tow0qiOiC4j0iktm", "0ZPLkLOsp0LZ5njN", "86Hl8kUXzt6bSc6b"], "type": "WvgpVyW9dD1kOmvr"}, {"customAttributes": {"Aejcq2LgkQuaS7RB": {}, "x3vim02jBOxrZDyv": {}, "pcLYOWA8NjxOnaEo": {}}, "inventoryId": "k4nOOCzfsflhjbng", "serverCustomAttributes": {"JOUn18G5MlfDTk8a": {}, "G40NlncceIZSwgAI": {}, "kgzh4pTU0Am4DZhl": {}}, "slotId": "0bQxFJ3sWCqQpQ2F", "sourceItemId": "bKPFMycMSQ4qfAac", "tags": ["R0LgB5BUXvjcu2s6", "w3VifnKqmTSoGH1X", "EfY6QAYn6WQ5UBEU"], "type": "1QAOHfZiGhxOdcuD"}]}, {"consumeItems": [{"inventoryId": "XSxSc3aZPV87pna0", "options": ["8gxefTYKhuxaEc7M", "4P7UckSC6ePeN8i4", "GrFES9z7xueHpATH"], "qty": 4, "slotId": "3q7akMpcmnnx6RVB", "sourceItemId": "rop9v7aZK3h65hbN"}, {"inventoryId": "15zfQSfQrtfF3TQN", "options": ["0OcNDLr36vzohZyj", "MQAg5mPYhrLTyU8O", "hgfY9JQYGF4bYXEc"], "qty": 61, "slotId": "JKQQewVLMUoAnaRc", "sourceItemId": "Yp7FUjfIGaffoflE"}, {"inventoryId": "IByYqeKN0meGelYF", "options": ["5wWaDhukU4khGG4v", "ZFTYnPkmSu4PWam1", "jxR7SETWjteoc8fg"], "qty": 43, "slotId": "vU4PbmRDcrg0DjQj", "sourceItemId": "BECXvea7H1m2lJFR"}], "createItems": [{"customAttributes": {"Z3ZprZ60zMjhTHeh": {}, "94TSenE5hCFkIf5w": {}, "eqZ18MH57l2Zsrh9": {}}, "inventoryConfigurationCode": "0ETtYmGukz3Mnlrj", "inventoryId": "cHp6B8Vj7rXFgDnD", "qty": 21, "serverCustomAttributes": {"eLzYEvwSWTaLQjct": {}, "vrK2jhsYpKPlXn77": {}, "AtYoFzLAATPY8P8P": {}}, "slotId": "3cfoivvQxevecWw7", "slotUsed": 90, "source": "ECOMMERCE", "sourceItemId": "ry0KK5rgAGO0dW8r", "tags": ["X2MVUGKSZ4GcLkt4", "pK32sJxlZcCTpTdR", "tCHvuk6B6XTmSLyn"], "toSpecificInventory": true, "type": "0sigBVZxiKdV57Gv"}, {"customAttributes": {"Ryd9UuL02Le8HSCs": {}, "lsDd4M1F5qRIblS7": {}, "Nz81GRazPAANjfBo": {}}, "inventoryConfigurationCode": "ldFOyqA2clJ5gEOa", "inventoryId": "CgM6Yn6RugbNEIpG", "qty": 55, "serverCustomAttributes": {"dt7zqmSKxOEQlVcx": {}, "6GqsBq8vdhWVnuYL": {}, "gpZehK0G2nmyuViB": {}}, "slotId": "9kRTcSQdTnNYGeAf", "slotUsed": 26, "source": "ECOMMERCE", "sourceItemId": "3wSkHKufBdS3ZOok", "tags": ["ZB4cXnAXyuGz6Llx", "Hv8SwyagYvDJ3w3U", "NgIGj2jZtEYT8sIP"], "toSpecificInventory": true, "type": "1fUfKmihDbmu8ePW"}, {"customAttributes": {"lQMVDXEHeiGTnwyE": {}, "w6hIWDZrpP7rz3IS": {}, "W510kHr4isTKWjmv": {}}, "inventoryConfigurationCode": "67nuHCXWfwnwGioV", "inventoryId": "wVzmmBVVFfpqx1Ae", "qty": 78, "serverCustomAttributes": {"nZhsjwJeGwaPSDMZ": {}, "z95OYKiqaZD63xe5": {}, "rruJVfLGea0ZtlzU": {}}, "slotId": "cuHAXz0UV31MfuGa", "slotUsed": 77, "source": "OTHER", "sourceItemId": "gmBLE35YhyiDV90S", "tags": ["eI5yppBHoytVznCg", "Nyx9fbT63ShEh8Pb", "GikLjgjcj34uulU6"], "toSpecificInventory": false, "type": "YBZsWFbr3RSP0W9n"}], "removeItems": [{"inventoryId": "Bhvhf8Q0DtJMcYQd", "slotId": "N66bswAgt65X4N1L", "sourceItemId": "QZmB61JMdtwCVUrY"}, {"inventoryId": "Que84dwmbwFEnAZa", "slotId": "WsQJtRYoagRJK5PX", "sourceItemId": "9UcOvhPyE11TRT2S"}, {"inventoryId": "Kseoe8VLie0LBa36", "slotId": "KNzjf005CXNGehQ2", "sourceItemId": "aTjTDfKFDXC7eGL5"}], "targetUserId": "YhJDWh9YWqc0qgV6", "updateItems": [{"customAttributes": {"d9yOfIMLds2DbPca": {}, "oMdtRLTmSvTkQQgB": {}, "7exYvmHMxr5hPCJJ": {}}, "inventoryId": "ztJBg0tTJg46IewO", "serverCustomAttributes": {"XE2AkCh3QIZsUf8l": {}, "GFXcmwTERHclOdxI": {}, "wqejxe18rNdb8Otq": {}}, "slotId": "6j1mqUav7k05HAQl", "sourceItemId": "tnSojV4jT65yclX2", "tags": ["FtAz0vJjFIYWOaNd", "simmkW2miH3xRHAK", "y4QxZkaXZ7vmiEd0"], "type": "JPxVyQpshaDwNqTb"}, {"customAttributes": {"bFMXAMfVXe0GZeMg": {}, "sRsmH1EQrYmkPKTP": {}, "OlhTtSiZNCxuogFt": {}}, "inventoryId": "eTHJe4BhSSQkQD6W", "serverCustomAttributes": {"mOt6D7ufFVTOhvQp": {}, "fbBke8aEdd36xj6w": {}, "ySoltDxsbzxrlaKE": {}}, "slotId": "fkoYjY2o6ouRW9Ut", "sourceItemId": "NquwC3WgumrIz4Nh", "tags": ["GztZpr4U4fwQIiLX", "gmRasvjO4lj8m3XE", "wP2b4gd3xOeii8Jn"], "type": "mssep2xD2NY0kABe"}, {"customAttributes": {"Gs9yxahld1pO0Gyf": {}, "5PO3COyMvczgEpzZ": {}, "3FbtxfhcRC7IVYa6": {}}, "inventoryId": "iZ5uFRYNn3SHiWxF", "serverCustomAttributes": {"0YbuU5ar5qTLWUCy": {}, "0Afgc050XIZRW491": {}, "e94mQjVOOBnIWhun": {}}, "slotId": "ElqZUodp3IhtCSHy", "sourceItemId": "1ei1fIrPvfHnRN06", "tags": ["EjRwEQlNapJRfk4f", "9Zcw1pEHAyNFxcVT", "KuAQTGh5BxjWOozG"], "type": "oDtsUuYo5p8ED5QZ"}]}], "requestId": "AufwNa8lzfjv9oYM"}' --login_with_auth "Bearer foo"
inventory-admin-list-integration-configurations --login_with_auth "Bearer foo"
inventory-admin-create-integration-configuration '{"mapItemType": ["XMjlVHY1AHwF3vGo", "av7MK0PcLnEkcokK", "wcQ0baDT9OyJ2h23"], "serviceName": "GUS2amU7syGlElXd", "targetInventoryCode": "EAOrVSnLocLVVYam"}' --login_with_auth "Bearer foo"
inventory-admin-update-integration-configuration '{"mapItemType": ["Qc4wcG5nDBLJoJHb", "iQ5duE5p4cfs2E41", "cK8QTwiIAvxSvNDl"], "serviceName": "mM5nQFMGzs7fzjgy", "targetInventoryCode": "c44mEh9tRk8knYSV"}' '30lnroQehMDli6t9' --login_with_auth "Bearer foo"
inventory-admin-update-status-integration-configuration '{"status": "TIED"}' 'aAtEbu4IjGdqthRx' --login_with_auth "Bearer foo"
inventory-admin-list-inventories --login_with_auth "Bearer foo"
inventory-admin-create-inventory '{"inventoryConfigurationCode": "TjQ7gkZEY8rG0q0Q", "userId": "2Qd2JzRbkF2I03dI"}' --login_with_auth "Bearer foo"
inventory-admin-get-inventory 'jvBbA6bfbYaJCJjf' --login_with_auth "Bearer foo"
inventory-admin-update-inventory '{"incMaxSlots": 21}' 'br34rBBN9tU6TDm5' --login_with_auth "Bearer foo"
inventory-delete-inventory '{"message": "GloFSKWM1eym5ydC"}' '6p25xCWTqUOYZENJ' --login_with_auth "Bearer foo"
inventory-admin-list-items '1QHZQxPRXH7uxBJE' --login_with_auth "Bearer foo"
inventory-admin-get-inventory-item 'ECQE1li3Bg7Jxc9p' 'UnZmvhidwCkZwqjY' 'LfTiCO1NDBvQvRPn' --login_with_auth "Bearer foo"
inventory-admin-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-admin-create-inventory-configuration '{"code": "Az4VzW0CpoBCbyJs", "description": "F5IjF1c0W338HS6C", "initialMaxSlots": 56, "maxInstancesPerUser": 25, "maxUpgradeSlots": 13, "name": "trHJbEGTUj7YjERL"}' --login_with_auth "Bearer foo"
inventory-admin-get-inventory-configuration '1rEQG02zccA8wvLs' --login_with_auth "Bearer foo"
inventory-admin-update-inventory-configuration '{"code": "WUNd6lPKvqDejvqk", "description": "lTSvDwuOrP9lzpiX", "initialMaxSlots": 98, "maxInstancesPerUser": 55, "maxUpgradeSlots": 41, "name": "b7jlz5IfHgKjI9mw"}' 'JSrN8jkIykR2zbaI' --login_with_auth "Bearer foo"
inventory-admin-delete-inventory-configuration '6PD7fEscShnGUGUt' --login_with_auth "Bearer foo"
inventory-admin-list-item-types --login_with_auth "Bearer foo"
inventory-admin-create-item-type '{"name": "V9GJ279GDbLNwjm3"}' --login_with_auth "Bearer foo"
inventory-admin-delete-item-type 'FK0nnX2poMfZ1hDH' --login_with_auth "Bearer foo"
inventory-admin-list-tags --login_with_auth "Bearer foo"
inventory-admin-create-tag '{"name": "tbh4HtMlFgvh2Dp2", "owner": "CLIENT"}' --login_with_auth "Bearer foo"
inventory-admin-delete-tag 'oiIPp1yvfAHS0VgL' --login_with_auth "Bearer foo"
inventory-admin-consume-user-item '{"options": ["u11A3HTovFi4tPAG", "fleyCA6jEtcqsnzo", "VILjkwW61duF87aU"], "qty": 51, "slotId": "lCiQQC35cj4KyOVg", "sourceItemId": "vnWbfRJtsB7cUQZ2"}' 'QUAxJrINPXppPNO3' 'AfmXcgwC3IN6tvKg' --login_with_auth "Bearer foo"
inventory-admin-bulk-update-my-items '[{"customAttributes": {"LB9QmJIOq9dP5szG": {}, "71utjsQ4CrRb9gUC": {}, "eVz7fWbZIdhevfZv": {}}, "serverCustomAttributes": {"yV7AcodcZwKjYDdm": {}, "JOlzwm9Su4FnS98Q": {}, "qftSjq7sn8yreciP": {}}, "slotId": "LfkVyyJsbGpO6Jge", "sourceItemId": "hDJxEN7JlZc8LMq1", "tags": ["o2jZWu4yA3r0u4q1", "bTHXIjfJKyFlM0u1", "uuoVdn9yVoSlKNch"], "type": "PHNL4X3LLaGPGdqL"}, {"customAttributes": {"E8SohhhuiTnJarYY": {}, "kHBDdSzBXdxapwhd": {}, "5IQYBQuxLvPuWYvE": {}}, "serverCustomAttributes": {"3fsNy9Z9OhxXvCp9": {}, "y7fLD2qfCXnlUnqx": {}, "T1WsRNMZcA92hzC7": {}}, "slotId": "MNa8vVe4MHX6AgMe", "sourceItemId": "p90AyyUJyAK5PRMR", "tags": ["Mwdvl0hv6g62GxBW", "2tQF5tkTjgJaMYvN", "QOsDa4bkcgepqtxj"], "type": "brztee7QLTGAak7K"}, {"customAttributes": {"aol01DK97D2xnik4": {}, "2miteR5eQAe1rzmm": {}, "gqBPRmd6mO4oI8KD": {}}, "serverCustomAttributes": {"qebm83raNBJ5y7ax": {}, "EkvI4oxZEDxGiBnN": {}, "bn0zaf7CaOSlHXrU": {}}, "slotId": "SA6sMJzA5mtqISQ8", "sourceItemId": "3TTbtefXWznDe4LQ", "tags": ["dXfFBii2RAMEX5RM", "jBFVZGYzQqV8d9mD", "dUIoiIJFNxuNOmUS"], "type": "Ww18T1IxVWCxdvPL"}]' '9e4P01vxP8xj1LyE' 'irURERnEMzpImW6s' --login_with_auth "Bearer foo"
inventory-admin-save-item-to-inventory '{"customAttributes": {"jAHyCK5tNanGBrkz": {}, "Uvck3xTtmOFMebS4": {}, "AdlNzwog2IhErkNh": {}}, "qty": 80, "serverCustomAttributes": {"gUoj8u2WRcLiEtzV": {}, "lnkflfn7pHY48F1d": {}, "l1q92m3iRlfnBAk0": {}}, "slotId": "CwiAsR65yQ9ssuHd", "slotUsed": 67, "source": "ECOMMERCE", "sourceItemId": "CUYATdqnQGbqiqOk", "tags": ["NeATj7eGjodd7CcJ", "UrI6MAugK5kypNrp", "2nFe9FmN86sK5LOq"], "type": "4ft5jGcMICPUYnfG"}' '6jl9U4jReteIMgzI' 'SomCsodJrhQW41q2' --login_with_auth "Bearer foo"
inventory-admin-bulk-remove-items '[{"slotId": "OspCZbt3Uta5I0uG", "sourceItemId": "cL1koyHjCH5olYLE"}, {"slotId": "TRpABAmO2EGvJ4UM", "sourceItemId": "S93yOxNInDByhnol"}, {"slotId": "uO6ti0QP2ssiJ66O", "sourceItemId": "zOj84O6tgohjtC7b"}]' 'zjPpucddXJ5zifF8' 'y959anrNSleywHbH' --login_with_auth "Bearer foo"
inventory-admin-bulk-save-item-to-inventory '[{"customAttributes": {"ig6IKWVZ77KeRWdE": {}, "CaFGzfZ2hxcJ2Fne": {}, "mn7M23SzUo4hNBDh": {}}, "qty": 44, "serverCustomAttributes": {"ZFP1OW0nXOErQPS4": {}, "VsRoYIK69yg9ADCG": {}, "iXaLs2xjHkinOD97": {}}, "slotId": "5nARHCmhNHSXuqIH", "slotUsed": 38, "source": "OTHER", "sourceItemId": "ahvxw9gwwhTnjN6w", "tags": ["KZGW4y3f0R9s2knd", "hhZhwAiLsZs4pmLD", "IQch4IjDq9aT3qZy"], "type": "I0rYsWucAkXsVJbX"}, {"customAttributes": {"i7eRZa7WwIc895Im": {}, "qK6tVsaUq3stUh5J": {}, "5Z9GiBiSAylX5cS0": {}}, "qty": 72, "serverCustomAttributes": {"3Ns0QJQeaWytPfds": {}, "1BYx0EaURydf8Zyy": {}, "ZeHAWGgJUbUJRMbk": {}}, "slotId": "cTglbU86FyOjApNH", "slotUsed": 57, "source": "ECOMMERCE", "sourceItemId": "RqJGIKzLyH1y72L1", "tags": ["3Ornyx34luLdvtsT", "KXMjiw6gYPvfn2Qt", "9iyq3Nyk8ncu2Z3e"], "type": "DHH9WaVO4iKhDcJ7"}, {"customAttributes": {"TCcNIsQ3PuppUxDS": {}, "K8aOTGMudcxlCV4c": {}, "NbJGQ57lPdinpjS2": {}}, "qty": 61, "serverCustomAttributes": {"IeIVIjMcdlbdRXTG": {}, "IrdNL5gJPqTAjgqa": {}, "THf1ANTJ9Yk997Xk": {}}, "slotId": "GOdC6ItxDT8p4n4X", "slotUsed": 59, "source": "ECOMMERCE", "sourceItemId": "EVjVZw1ToLuPakQN", "tags": ["1MpOs1RVFrcg2CXx", "epx78fvsyhE2BKty", "TDSIM7mkmvZ7Cmsh"], "type": "4US8o4jfMANPpmZD"}]' 'dMiCxmuCCVuFjS1G' 'C1d2b92B4vEgj3HO' --login_with_auth "Bearer foo"
inventory-admin-update-user-inventories-by-inventory-code '{"incMaxSlots": 26}' 'Iz0jcgDI8Pkz96vd' '80msqIm5bufnBqrp' --login_with_auth "Bearer foo"
inventory-admin-save-item '{"customAttributes": {"LeqhwVhjnnjKMEmt": {}, "biWsAQHbMrKYi0Zx": {}, "s5SWCqZXHLLa31oQ": {}}, "inventoryConfigurationCode": "f7BULnZDhutDM6Bq", "qty": 12, "serverCustomAttributes": {"OufV4f15NohXu6op": {}, "xQGRt6PqlkL0diRh": {}, "LC10ih2EQfY3XCv4": {}}, "slotId": "hdOa6FdZhNMd1onF", "slotUsed": 18, "source": "OTHER", "sourceItemId": "GRbxtABPXDmgNEJB", "tags": ["hgGq5GIDhNC66szb", "CCf73IFbRkPSSITz", "4TjCrJHXGXku2YVu"], "type": "OzhxHmnrrV9ZGWrZ"}' '05sxe6A6RpmKDebN' --login_with_auth "Bearer foo"
inventory-admin-bulk-save-item '[{"customAttributes": {"kylbynkgT9vayLLi": {}, "izac7Ge6zKJdlt7r": {}, "jF5RaJwvkWVco2LT": {}}, "inventoryConfigurationCode": "o5ijlvDF8qBWCQ9d", "qty": 77, "serverCustomAttributes": {"zP6EUmUXGM5anIlo": {}, "yj9lhbvuQdW2jwKU": {}, "ckc794ryY91lX8DD": {}}, "slotId": "4MYXlrJ81lHvv9rq", "slotUsed": 43, "source": "OTHER", "sourceItemId": "PeiMH8z8dVej8N2y", "tags": ["v6VTnOK7xAvM7tuL", "81lsR7xxSVp3Gd2T", "K0HzYviTgYmx82JV"], "type": "BRLPZ6Iz8tne5dbg"}, {"customAttributes": {"uBF6Gsvvdl8jHz9x": {}, "7XZIjU4IK9lOLaZa": {}, "MphKCqTq3EVheJjo": {}}, "inventoryConfigurationCode": "EEXBLIxGnNuhoJM3", "qty": 100, "serverCustomAttributes": {"73aMb48jISd97KOR": {}, "RhxSWLWLNfHRD3V1": {}, "5QaGGL46LuxJF3sb": {}}, "slotId": "eqWBdQuWfgBAKx27", "slotUsed": 78, "source": "ECOMMERCE", "sourceItemId": "BqabUXOGkkoMUZn1", "tags": ["YXj5zFZeOCOR9NvB", "QZSJPOIKrRBrYVzi", "9ui3lvozTt9TsH7A"], "type": "0TuU2aL4bPkk11sy"}, {"customAttributes": {"s6GdkDcos5uVJ0BJ": {}, "fZ0jvA54CSqZFDsO": {}, "1skRjOU1SMfQVQa6": {}}, "inventoryConfigurationCode": "blj9Rdd85bdYUumP", "qty": 74, "serverCustomAttributes": {"49rWynp1ck1vT90C": {}, "6o86cSRL9cgbUmul": {}, "he98oaFKlQicdrxV": {}}, "slotId": "hrtwSd9QWVMYz7TU", "slotUsed": 93, "source": "ECOMMERCE", "sourceItemId": "sxsChSclSkb5aBi9", "tags": ["K9zyv6gFZXI5nXJ7", "hLi6HweweRmyo91d", "In7QqXBDXJcrqKmX"], "type": "DwoEV6tCdrxw1KOP"}]' 'huvHuYrGWDK41uMO' --login_with_auth "Bearer foo"
inventory-admin-sync-user-entitlements 'C0mRvSoaGk4ktF5w' --login_with_auth "Bearer foo"
inventory-admin-purchasable '{"entitlementType": "nJDg9Q3WXiydCOIn", "inventoryConfig": {"slotUsed": 97}, "itemId": "fkNL4lU6jaGfsD1c", "itemType": "fswmeFpvtDtetoQV", "items": [{"bundledQty": 64, "entitlementType": "0lyKSTWLxSFZ0Lpu", "inventoryConfig": {"slotUsed": 32}, "itemId": "489jRCn48bvkCPfK", "itemType": "ofwXOIZZQAJza84l", "sku": "KKmVOaTS6xBbNrSU", "stackable": true, "useCount": 100}, {"bundledQty": 43, "entitlementType": "ak7ISDrBVg6NuDZv", "inventoryConfig": {"slotUsed": 85}, "itemId": "nq3eOMHIKeTyBG5d", "itemType": "CUoExnKfV3869IN4", "sku": "V1OdhH4GVU7Exlkm", "stackable": false, "useCount": 58}, {"bundledQty": 47, "entitlementType": "5C0oaGouFu4hXONg", "inventoryConfig": {"slotUsed": 95}, "itemId": "8jAdTn6xBhrciryL", "itemType": "m67rkadH5Y41SLjC", "sku": "PrFa05Xl5TPC5GOD", "stackable": false, "useCount": 43}], "quantity": 2, "sku": "Dc7xMrRKvw8ISP2W", "stackable": false, "useCount": 98}' 'CRRXBxlalCHtWlKx' --login_with_auth "Bearer foo"
inventory-public-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-public-list-item-types --login_with_auth "Bearer foo"
inventory-public-list-tags --login_with_auth "Bearer foo"
inventory-public-list-inventories --login_with_auth "Bearer foo"
inventory-public-consume-my-item '{"options": ["LpS8fLWoQ5nuJhat", "QPxR7dvBVC5zgOKL", "TDmHe8c1eJ9sde7R"], "qty": 51, "slotId": "BXuJBqK4QtEydPWL", "sourceItemId": "PBYiR3UbJc1ZYapx"}' '7C477etqgfOJDUT0' --login_with_auth "Bearer foo"
inventory-public-list-items 'uKAPrARya2IMlNiX' --login_with_auth "Bearer foo"
inventory-public-bulk-update-my-items '[{"customAttributes": {"pF4qvsUUpHqi33Tc": {}, "BGkc0HjUcnkpU9oV": {}, "zl2kBuLFXIeCEKZU": {}}, "slotId": "Tz3GvCAZ5j24acYH", "sourceItemId": "brryHB6GO9zP3Fae", "tags": ["pA3b3YJ9nJM6vtT2", "7xv85K5MU2qmbeqa", "VemINdClpF7OvlBI"]}, {"customAttributes": {"Egjse5kd6GEDo08y": {}, "q5E5HleLoog4me2N": {}, "BFp62xlXvVcJerTP": {}}, "slotId": "W02PWsHiKYArAxnK", "sourceItemId": "BfBfDlrQQuAc10Dj", "tags": ["jwMv4vrIPRtvhQIy", "LarjaLOKnX51yAB8", "Pa3uNGKhaLlJzJMS"]}, {"customAttributes": {"nJIIgsAVmaGYxUX1": {}, "B9oVuzG2CnYX2YBF": {}, "2g7TVtzYEHUodh3i": {}}, "slotId": "UfBthbepUCTWiZ1u", "sourceItemId": "qh7GAi4FEIu44u83", "tags": ["ZLRxYlYqlpq03BGd", "Ik4oEogFVGR71rJO", "By6lsj1AKGBjnHma"]}]' 'Au4YK87DYAWWcbcb' --login_with_auth "Bearer foo"
inventory-public-bulk-remove-my-items '[{"slotId": "GWmKgE8CZ4AELr5l", "sourceItemId": "raa5v5P5Cj8hgFsq"}, {"slotId": "HC9h5JPiMEtgKuiG", "sourceItemId": "TYgwWv5XldL6rOVG"}, {"slotId": "cRAn51rVAQSxp4qT", "sourceItemId": "B54mKA3V9DKlCeZ7"}]' 'mLYsHooOIaxIpb1c' --login_with_auth "Bearer foo"
inventory-public-move-my-items '{"items": [{"qty": 71, "slotId": "etVIQvRkQJAtDUH9", "sourceItemId": "tx60AehGz1ermJYX"}, {"qty": 38, "slotId": "1QC7FKe0fnHUlmU1", "sourceItemId": "unGKM0tgfeWy47bb"}, {"qty": 46, "slotId": "vX1nwvSWdDwD7WJH", "sourceItemId": "zgNZUKsI5y0mR3zM"}], "srcInventoryId": "yTsftKqnsIJctAdx"}' 'yZVKHA9DkaSOWgtg' --login_with_auth "Bearer foo"
inventory-public-get-item '8yw8lHEbVDwBAqan' 'OlscRIWw82k5K5VT' 'kdubkOFldMCQ98JH' --login_with_auth "Bearer foo"
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
echo "1..44"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminCreateChainingOperations
$PYTHON -m $MODULE 'inventory-admin-create-chaining-operations' \
    '{"message": "4n0JtgqzZv5kVu4S", "operations": [{"consumeItems": [{"inventoryId": "95mj8YRvae4f4lhB", "options": ["PbarbWEm8bVtZcfV", "CPdQhim9QKUAFTVY", "elIlGJg9wdc8bihh"], "qty": 100, "slotId": "WrIprOv0BJ9Sgl7H", "sourceItemId": "1sdH2RIJz1eI7Q5p"}, {"inventoryId": "u9PutLf6IrvZoBGQ", "options": ["bO4S3rURGWUzPAE6", "SdV4D5jftRl9rZmt", "QUvro8TWwXWsz9TV"], "qty": 24, "slotId": "tyBTfERXdvgD1Qf7", "sourceItemId": "Ot2DkUt3yexZBRvx"}, {"inventoryId": "YnEBhXtAVxCd3meT", "options": ["rT7cF9oVCh89wNOk", "KYssVejcL3kR3hCG", "NgaJmuALlMQl9RLr"], "qty": 40, "slotId": "IkaQEl1iUProNB6h", "sourceItemId": "I6IpGcToWgFvdRhG"}], "createItems": [{"customAttributes": {"9NwV3zDuqVlVTypc": {}, "YPK8IxrSZuxWl0Je": {}, "4fJIyFAm3DQht4Jw": {}}, "inventoryConfigurationCode": "nPS2urJqerobWMZG", "inventoryId": "VL5KLTxahWlS6XdB", "qty": 0, "serverCustomAttributes": {"yMchkt8l5IPSrwrJ": {}, "l7wYIVw13NCo9yXl": {}, "bQ52FTHTCj6SEAzT": {}}, "slotId": "7TOpyiuvvQUm29Ia", "slotUsed": 5, "source": "ECOMMERCE", "sourceItemId": "q4XRLaA643nTMtXS", "tags": ["Ayejnny0Ju13b6o5", "uB2XM6IHy7EEvHyL", "mcvrZZOdwe1x8RjU"], "toSpecificInventory": true, "type": "Bi8JXE52sUBBq2Si"}, {"customAttributes": {"mQQoLbe5YOJvxGRx": {}, "UzrTwagH7BMT1IZK": {}, "TdNFVBQ1crBXAupA": {}}, "inventoryConfigurationCode": "TO8uXsqVpdiWo8Sj", "inventoryId": "DAM0Riw8wLYW3n4F", "qty": 59, "serverCustomAttributes": {"LD1EDwBXw5uBYeQZ": {}, "OzATNSV9E9yyNb7y": {}, "aLXzAVYymOuhCkZu": {}}, "slotId": "4htrsf8eIFSovTGX", "slotUsed": 1, "source": "OTHER", "sourceItemId": "sq8ePN1oco2jx8Up", "tags": ["e8SjMvpqM8puggOE", "dG47gD5i2Ni6AnWn", "3NdEPhNHSH7eKDfR"], "toSpecificInventory": false, "type": "NOmubxEJr2qEAuJb"}, {"customAttributes": {"pZSrcbc4LWfKaY5c": {}, "1tP5TDuI5f6m4KC0": {}, "7CnsZe32hqEcB1Ex": {}}, "inventoryConfigurationCode": "YMBb3ckvoaJYdMqG", "inventoryId": "egcg3eRvBZXN3cjI", "qty": 53, "serverCustomAttributes": {"mFWRJnj8xN7HDPTU": {}, "EDPN1Kb4UTPWDXTS": {}, "b55g8LSTs7Nf95lG": {}}, "slotId": "lPrf6obIdnI6Ag7e", "slotUsed": 95, "source": "OTHER", "sourceItemId": "YcYJ4QzXCmqr6gmP", "tags": ["GaHP5SVPvRLiDi0m", "NHb6Lx8eq8SGNwEQ", "O8dYXvBSYvJBwb6C"], "toSpecificInventory": false, "type": "jGmCyPsKCJTv1ic9"}], "removeItems": [{"inventoryId": "gvagF2cSuztsJ5tj", "slotId": "64gV7nmDk29mcjSu", "sourceItemId": "z9vbNStqPtQmQN6e"}, {"inventoryId": "KAGiZFCftT0RWECd", "slotId": "jWYrnulxcCKAru8p", "sourceItemId": "OaAVLDB4k3Jwkdax"}, {"inventoryId": "R7GJpYmuYCPG181q", "slotId": "9GA5DydC2D8UT6KO", "sourceItemId": "c4VPDUR9ayazqXRq"}], "targetUserId": "egIUicYXXzxsBFrU", "updateItems": [{"customAttributes": {"s9BYp6TgCejBd5o7": {}, "iTST7R3KbbQGERMN": {}, "pqWb51y5RUzvMfTk": {}}, "inventoryId": "Py0fGvTGgfLKsg0b", "serverCustomAttributes": {"1Bq78cE5O5pmPnbi": {}, "PJ9j4vxmbH3rVaau": {}, "ufxkPHElug48TgfN": {}}, "slotId": "u0rqXUOyToLPIREG", "sourceItemId": "IKlJt3EP9kKwkENQ", "tags": ["8VOHGwbADMfuOmh0", "lciRhVZ2DeoODXMz", "LSrzoiBnYi5UWs3t"], "type": "YlYeMoCimJySocRv"}, {"customAttributes": {"UWDOrFZKPNoN9AWt": {}, "LK9TFgi9j2XMh9Wp": {}, "ifqjNjLOtNQts2yx": {}}, "inventoryId": "f6MLZJ2jZfZbpTJe", "serverCustomAttributes": {"zzriCDWXT59SRu0Y": {}, "qUxKDc84OMIzvTSc": {}, "dbKBsAyJMz4ILNDv": {}}, "slotId": "hB4Eoes9a6XaJeRb", "sourceItemId": "zTPwD3jxF7vxRUY0", "tags": ["ilrNoFT98SgtJd4Z", "5f8nfaKqdZFLbZEH", "xsDxeR6d7r1SQw80"], "type": "JfMpPrSqYypRUnq5"}, {"customAttributes": {"o4ETeCUYG9ccTt7W": {}, "xw8OQ13t3uTw6zQu": {}, "oZcXQpoTOxe8y1jo": {}}, "inventoryId": "rNsg9ZKYCKoISyXt", "serverCustomAttributes": {"HzoWGdYohxMp3uOQ": {}, "IybqWfG9BJ6FVKlb": {}, "YHtbPtaxvagSlpGg": {}}, "slotId": "VTF6VeDAPOGBwwey", "sourceItemId": "FfXEOEAEtbag82Kg", "tags": ["BgyCd5vjkfz3eR4D", "tNp129hzBw3xLUcC", "Et0DzmkJq1sml5bY"], "type": "t76BNsi4giR9434W"}]}, {"consumeItems": [{"inventoryId": "pKKdzxoufCNlFoOc", "options": ["WQQy4bjmQeEweoBH", "TdwAk7ZQnbqY1cQw", "VEtAr5kKKAo9MM2C"], "qty": 34, "slotId": "LftC3sCS8CpLCqPD", "sourceItemId": "9CeDEdCnnL6Kt1Bj"}, {"inventoryId": "j3b8QM8Rr45ULqXQ", "options": ["gvwD3PsKDJiWxQBw", "aS7rDBf2S54phbdy", "GDt47f9GWRlE9hqz"], "qty": 40, "slotId": "rjDNo4rhjxUdMM83", "sourceItemId": "WekqfWv04vvn9bk5"}, {"inventoryId": "qr8qs2mqtnGAqXUj", "options": ["NypF6MMqWpdEJsPo", "aIbYz8cK5jlpJdre", "5ur6yvWJDdvM7T7P"], "qty": 15, "slotId": "2vamIRZHzsIYOCUo", "sourceItemId": "iCXNjrdQL2jdx1eI"}], "createItems": [{"customAttributes": {"ba1sB0HsJ06Dzfbz": {}, "RYt4OVUyumBeIqdQ": {}, "GZC5kM03HHijsQRj": {}}, "inventoryConfigurationCode": "7N8IAjmsonjj0ZR5", "inventoryId": "0BQ1U6aFD3O2kXQS", "qty": 4, "serverCustomAttributes": {"ahUrELQ1btjJOqQM": {}, "gZWAU6E92nHJzvw7": {}, "tnYtGfv0EJyjBu4E": {}}, "slotId": "zwRjD7jmQJeFPghq", "slotUsed": 1, "source": "ECOMMERCE", "sourceItemId": "mSc5y0X48eT7Mlue", "tags": ["xk87b9Z5BTsEA3Ed", "mW8saabP4xRowfNo", "jzPXI2v0prR3OEey"], "toSpecificInventory": false, "type": "S6u9FHuv1M3qfch4"}, {"customAttributes": {"SqIV6LQPHlaeYl4c": {}, "sFq65cU66yJaj4ov": {}, "oKWE4EW0sw8v5pei": {}}, "inventoryConfigurationCode": "uxoBJATauyD3XCXV", "inventoryId": "MiyEvMf9yilUEujk", "qty": 25, "serverCustomAttributes": {"oqYo1HQYTFzwdOMd": {}, "upwD4O3uNbcIDcIy": {}, "vZbOy1T4hfwkuVyk": {}}, "slotId": "H4RpfmjIXFGZ5PKd", "slotUsed": 2, "source": "ECOMMERCE", "sourceItemId": "oDdT0fefo74eg3Nt", "tags": ["2c0r4GqF0NHglOVu", "NZ9LzNeJnBurh54C", "WbYb0Pebyt8b4DGs"], "toSpecificInventory": false, "type": "lsAMy2Zp2UAGxHnm"}, {"customAttributes": {"SxvkG9UR5q9neoW6": {}, "JBcGp9Rx2RfcRhXp": {}, "meeHdvphas9S7ivH": {}}, "inventoryConfigurationCode": "EoLbUMM47f1UreUp", "inventoryId": "xEkXIbE1ETzRJZKM", "qty": 0, "serverCustomAttributes": {"ZIim0sFPm1YN27bo": {}, "jDVaZLpx4kEWYkO6": {}, "KrKUMhJrASBh61hm": {}}, "slotId": "WKSSrF35anDGvur1", "slotUsed": 98, "source": "OTHER", "sourceItemId": "18oIrUKXttgAI2Qd", "tags": ["WJFLmoPEgd8EMspO", "s8nkic9gj5vyUMAA", "mIHYbsxG5N066FXb"], "toSpecificInventory": true, "type": "bLOa21DiSFsm0XXQ"}], "removeItems": [{"inventoryId": "JWszvTQEuALzDNp1", "slotId": "SZ58aDllwzTRHak1", "sourceItemId": "MXxj7Esrg7900nml"}, {"inventoryId": "5BidsK9dCEzhVnOv", "slotId": "0PQbVIaKiHfoeorY", "sourceItemId": "7A1otGFyv2SMjbEr"}, {"inventoryId": "50qGdCZIc6EFqBKx", "slotId": "bS7Q2OgRucL1jwRX", "sourceItemId": "zfjDZZBmOau6syme"}], "targetUserId": "06c6SKLc2mEC3IXl", "updateItems": [{"customAttributes": {"5XCbkOfHaGr5kdaz": {}, "lypvt6lSLfU7HByG": {}, "XPMqxj4hBgVY3YAx": {}}, "inventoryId": "ZLKbcOdyjqf6Q4oi", "serverCustomAttributes": {"woJcaRMEb15LBlTV": {}, "ufc5ZyODR2NVyn4P": {}, "Rqf3eRbZqBAoKGcV": {}}, "slotId": "CdMiSNV4qBrt1kcL", "sourceItemId": "mRv6EJtl5xWnsb8o", "tags": ["Wq94RImNWVIJnhhw", "FDV1VitaomvWTzds", "W4N70wYS4Kj7Yi2V"], "type": "voQNW8Yc481dYdvG"}, {"customAttributes": {"xJAMDRA1LF7jdWle": {}, "kFwO94VBCV9qJhWv": {}, "a2FPBujX0geYCpGJ": {}}, "inventoryId": "M4sqsPNJMiZXXOFw", "serverCustomAttributes": {"mGWAvNF0Z0GkwxUN": {}, "YyNwGiKrknH0Y5mr": {}, "QgLC6D2qsFiQHglU": {}}, "slotId": "QMZi5WjMZfOadpge", "sourceItemId": "gCUjTdi1Ehr8Otqp", "tags": ["NJ9R8TuNy4ejmVA3", "vMCsGyPd12B8QNUz", "0hFFNbH6j2W4roZM"], "type": "2UKAXEEsL5D0oiFc"}, {"customAttributes": {"hQnVeq3g2AB2WIRU": {}, "QmauIY5HXCZ0W4Xm": {}, "WP0HzSdiylLhVYsz": {}}, "inventoryId": "m8xY33OQbumu2QHL", "serverCustomAttributes": {"yZNuysyM4OfCzdQC": {}, "XMAWnf87YPNOe9Ee": {}, "vf1fhMg1E2k7QLFr": {}}, "slotId": "VgtX7y0fPOieDCow", "sourceItemId": "2zXyFFVpM87yqEwE", "tags": ["acQMTlqN4LKkxJ5v", "3SBafnKNiMPbFkFG", "A85W3HJkqgS2B37w"], "type": "woPYOHiIsxmsLBPB"}]}, {"consumeItems": [{"inventoryId": "JuNLnWRrtW870qD8", "options": ["8ZcduZSe7W20UZcD", "aiq0nEZ7PyhqFJkD", "ClOsKmfsgJdmzsDP"], "qty": 38, "slotId": "i9gOVqajUWrgEsWD", "sourceItemId": "taKzn8dZwnnGeZsZ"}, {"inventoryId": "VgbPzPFbrOMZMgWk", "options": ["FN7Tpkx6GcfyOg6Z", "Urrp9ubg9mndW2JK", "mQafUs2bxYztOEyV"], "qty": 2, "slotId": "BjV00ReCXFffjJJx", "sourceItemId": "lgjzIhpgOoIOD74V"}, {"inventoryId": "21HWDAfvXwdxbyp4", "options": ["HAPbBbNPStVBUpKg", "OssFkz0F36piDYXe", "HZ7FHls3nyvconqb"], "qty": 69, "slotId": "K46GjCWaP8huTmnq", "sourceItemId": "3FGQn3Ahu5wxq6oJ"}], "createItems": [{"customAttributes": {"q4mChmQHQhO9IKBX": {}, "DFQfXFD58sG6uDhF": {}, "YlrzJBYSeMuJfQec": {}}, "inventoryConfigurationCode": "utjS029BiJWOG1m7", "inventoryId": "MKclr5igjNTVItrH", "qty": 66, "serverCustomAttributes": {"X78hxJgaVfw5Vnyq": {}, "8OzTE89WDNoMcOmb": {}, "fJrCJQIj1haAosKg": {}}, "slotId": "lqaCXE9ytpIO8btO", "slotUsed": 91, "source": "OTHER", "sourceItemId": "wNEGSW5TaW4to7QC", "tags": ["Y2NGGvi9kg3rMIzN", "mhJTNQjKlwjfJ3TJ", "2xVpge70WsLfgbZi"], "toSpecificInventory": false, "type": "yjbE8lOLAfTXKLzb"}, {"customAttributes": {"rddqcKLa7LevxNHO": {}, "SEhQRZIp693lRwtc": {}, "43atCuCFxbfbz4aQ": {}}, "inventoryConfigurationCode": "ERziPL4dHhOqG5KD", "inventoryId": "dUvk0LEi26Ls7mjR", "qty": 48, "serverCustomAttributes": {"lSlCQMDji329PfVr": {}, "vMEPtpsSNcpK1QkB": {}, "2Sy8Ww79LVeVskqe": {}}, "slotId": "UB7RSayqGFguhh3b", "slotUsed": 43, "source": "ECOMMERCE", "sourceItemId": "9VE838c7OydVw0zC", "tags": ["qoMZvpIOO97DmQ5Z", "Ozx6iCJTu60IifzM", "hkk5PxsjqbCKpMv2"], "toSpecificInventory": false, "type": "ky9DYkD2sIllFtBt"}, {"customAttributes": {"XJKG3rqBmILhtWm8": {}, "RQvRUbUDSiefGEdL": {}, "ucrtO2gCQD057DrD": {}}, "inventoryConfigurationCode": "lgC2nzS9SiGUjVAw", "inventoryId": "4v3q6JRHcn7KaoCE", "qty": 21, "serverCustomAttributes": {"yVAHrHncR5dShqiB": {}, "UI9esSsXegSEhrPp": {}, "K2q8kxR4BuEksS2A": {}}, "slotId": "9VOA8H9VeHv0L2Ac", "slotUsed": 25, "source": "OTHER", "sourceItemId": "960EYQEuGJVl8xs1", "tags": ["WId9WlalqshF9Rh2", "o7GCQGPCxwEdkyuT", "3MgzReRq0112ISAr"], "toSpecificInventory": false, "type": "njnxD1OXkxShFVQT"}], "removeItems": [{"inventoryId": "RekLfjmy8zosRCRg", "slotId": "VwbrQKmb01yA7U7d", "sourceItemId": "GMjupZkZQY8CNyT4"}, {"inventoryId": "k3DIbfT22G5NpE13", "slotId": "0YWSgxpKWtdtdtVW", "sourceItemId": "9anENmxb9e7vXZV3"}, {"inventoryId": "ig8Jg5VByeI3ycMc", "slotId": "YYBixKJXCISQdwec", "sourceItemId": "1m8BusV9tUh74KVo"}], "targetUserId": "6Xqjz2xUKLNWSmYy", "updateItems": [{"customAttributes": {"VvyelIJ8QgaLMqi8": {}, "36ULa7cfZl4VuY6r": {}, "sZyo6CBRRnoOikIx": {}}, "inventoryId": "XKKIR6kPmswm5TCA", "serverCustomAttributes": {"U1cKApdJDnE73GLm": {}, "SZns5owBhoUg4LsG": {}, "P6KLPXkvUv2XiXaB": {}}, "slotId": "zsmaxjTZPlLitytG", "sourceItemId": "ka7Kv5TacQKF4OlR", "tags": ["GdmXxETLEQrr3KCA", "V9alq3hK1G4kKooS", "NNUZuiynZ64IwncZ"], "type": "Pk82GF3eTC0vzZUD"}, {"customAttributes": {"j9dzGgGVxo9OHgfH": {}, "umyfuBNisecYbcOp": {}, "R45VDlvSc0Mr7Imw": {}}, "inventoryId": "CwGqOf0bNs97KvKy", "serverCustomAttributes": {"j3MqS7Dcmtfh50eO": {}, "bbrmgjhWK0x0ZidA": {}, "J1CU1eD1La16Bw3J": {}}, "slotId": "bUnUDh5yGjjv4Mwr", "sourceItemId": "v2vancmR6Z7rb21A", "tags": ["2E9pX0BWCMqPsRk5", "htdM5T3fDSrSHrko", "qv2mM6soMaTvQq2a"], "type": "9YdFNtRVSO0js0hG"}, {"customAttributes": {"9xmSnzd7zgUxAogc": {}, "nGkXk17QPkJHRhmL": {}, "KQuQVFSKiXl8G2uf": {}}, "inventoryId": "6E8EajXLSAS8MKMa", "serverCustomAttributes": {"xQ1QyJCpKedhuzI7": {}, "G9NCKKXu1bqI2M5P": {}, "mXfKnQ7BYGjCUDMO": {}}, "slotId": "rbmoRvWnfmGFy0eU", "sourceItemId": "oOBd90h9EDqSTOfo", "tags": ["NewWjwMWDKEt6Jhb", "J0fwTDaq6b5RpMwh", "WPtndriXU9loOxpm"], "type": "EuwDVc12r0DVUGgG"}]}], "requestId": "HkapTCafFMdvYiCB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
$PYTHON -m $MODULE 'inventory-admin-list-integration-configurations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
$PYTHON -m $MODULE 'inventory-admin-create-integration-configuration' \
    '{"mapItemType": ["uzUUwyI6Vtd4v9k4", "fv3kMiuQ3DhsKLxj", "t5srPFxBgpFtDBmT"], "serviceName": "LH9kP9U53z6joBAh", "targetInventoryCode": "AlJGI2YYb6ajBjgq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-integration-configuration' \
    '{"mapItemType": ["6eY4PBNHKPx62tHx", "Db06ZFy3uglSp2Ux", "vF2uLXWilRD7HD6L"], "serviceName": "CgdFxRGj00RT6Lvc", "targetInventoryCode": "nGMJbJIYLssMvy9g"}' \
    'kfTMRrXVRcAVRDX6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-status-integration-configuration' \
    '{"status": "INIT"}' \
    '9r8eToFmkHJ6BPOK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
$PYTHON -m $MODULE 'inventory-admin-list-inventories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
$PYTHON -m $MODULE 'inventory-admin-create-inventory' \
    '{"inventoryConfigurationCode": "FLxIwKssw647YwDu", "userId": "dnGRufOUGfMjTU22"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
$PYTHON -m $MODULE 'inventory-admin-get-inventory' \
    '6l07jPlcYaqYM7Yf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
$PYTHON -m $MODULE 'inventory-admin-update-inventory' \
    '{"incMaxSlots": 57}' \
    'zO8AEl6A9sh2x2ur' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
$PYTHON -m $MODULE 'inventory-delete-inventory' \
    '{"message": "2ccp7R7OqPqIjS4i"}' \
    '0N9ytb3c8pVZ8GlU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
$PYTHON -m $MODULE 'inventory-admin-list-items' \
    '8962e6gtn5pUARJM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
$PYTHON -m $MODULE 'inventory-admin-get-inventory-item' \
    '1T8QwMNOAzXmyHEV' \
    '4g9P6a280S5RNB5d' \
    'VCsB7xL4axSPgPCi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
$PYTHON -m $MODULE 'inventory-admin-list-inventory-configurations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-create-inventory-configuration' \
    '{"code": "wLxCFLDixZwVtt3R", "description": "VTl0tR00oQgcHdGG", "initialMaxSlots": 75, "maxInstancesPerUser": 57, "maxUpgradeSlots": 87, "name": "x76U1EIcklttmrpg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-get-inventory-configuration' \
    'F5szl0sMY8es36r1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-inventory-configuration' \
    '{"code": "FgR70eNLHkVrEFd8", "description": "xArWJuCAIfNBSHgp", "initialMaxSlots": 65, "maxInstancesPerUser": 22, "maxUpgradeSlots": 81, "name": "7X9fHr6WvBxmBvNj"}' \
    '3ktaDf9B22HGgxak' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-delete-inventory-configuration' \
    'Pt7IYzaZUTmvsEzL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
$PYTHON -m $MODULE 'inventory-admin-list-item-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
$PYTHON -m $MODULE 'inventory-admin-create-item-type' \
    '{"name": "PnnGsnfmBerp84qj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
$PYTHON -m $MODULE 'inventory-admin-delete-item-type' \
    'wzWpCF1vyamjsEzw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
$PYTHON -m $MODULE 'inventory-admin-list-tags' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
$PYTHON -m $MODULE 'inventory-admin-create-tag' \
    '{"name": "tLPxK1os4qR8LaQz", "owner": "SERVER"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
$PYTHON -m $MODULE 'inventory-admin-delete-tag' \
    'L72WDyhBsCCbnfih' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
$PYTHON -m $MODULE 'inventory-admin-consume-user-item' \
    '{"options": ["nXKxGxaupnTTq9ih", "ZkvFKfSHQh8I9xk3", "sFl0cbuCRM69XKkL"], "qty": 46, "slotId": "c0aUvrKXDIjYC4df", "sourceItemId": "9qswSlpCI8DhjlxU"}' \
    'yrs3OSesE5p0DwUj' \
    '2HKUvPYUcQBxMSdO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-admin-bulk-update-my-items' \
    '[{"customAttributes": {"Osn2Nd8Jpa19GJDK": {}, "46Eehx7xasqMY9au": {}, "lsL6NOV5agpS6A5m": {}}, "serverCustomAttributes": {"kufBpWVxIK9D2bTc": {}, "gaKoccaSwWcZmzCW": {}, "GI1cIQcPWAShIhie": {}}, "slotId": "SKUf3zKbyQk2vQTY", "sourceItemId": "X1xsth28NZZgsXyc", "tags": ["uQNGIDeHlf6IcX1K", "9JrK6Or2xx7rLwrP", "oWiywnxuDLLuIaSx"], "type": "oloIH1gBCWVFrvls"}, {"customAttributes": {"0ZwosKhDlLfTKxpV": {}, "OXvGSrdkqddI3ezq": {}, "u6FB0sL2xt6fX9j7": {}}, "serverCustomAttributes": {"rhZCAlDlVKBsLZiB": {}, "RXszE7CL1cQCSoqH": {}, "vH7g63cOx6yrIw37": {}}, "slotId": "pKOLrF5i3gr3Cc4M", "sourceItemId": "2O7NrTQO7KLdZDGw", "tags": ["qx7T3l1ut2oyolli", "YsTJUmpscwLcUml3", "KuoMKh7tprnacA34"], "type": "xmIOjFLgKR4LjEWh"}, {"customAttributes": {"OScvtQ92iD02YMvE": {}, "UNfoL7JCcMo7GxxX": {}, "dbYCRexPekTsQxMT": {}}, "serverCustomAttributes": {"faSot7aohFYy4Vxw": {}, "HIJ9gzxqAw4vBGQA": {}, "eh0VTiTP4PSrXUS6": {}}, "slotId": "jYI9lsQFD43Df5qU", "sourceItemId": "ZOFzpFd6b5Jc5TET", "tags": ["Hcup8GG0VCMTFJ6s", "vTyo9RHget5hzB52", "BDFopxUwkMuSqQnK"], "type": "zDgDAtqE3kuybwTQ"}]' \
    'FYEJjIYwqfSRy8Gg' \
    'Vk77fd1GS5YkyhAi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
$PYTHON -m $MODULE 'inventory-admin-save-item-to-inventory' \
    '{"customAttributes": {"AItnWUmD225fp1eg": {}, "sx3ErheNwqd5pric": {}, "lNNqLyrlzrJ4QHbf": {}}, "qty": 28, "serverCustomAttributes": {"z86nc6jLF9DIW2nc": {}, "JJKpqmgvUTr8XAtp": {}, "OqUQxzqJZiWi3KQf": {}}, "slotId": "fT5Tn61A1xW6okIq", "slotUsed": 25, "source": "ECOMMERCE", "sourceItemId": "d87ir9op4YfGTno5", "tags": ["oHzqY3DgykA8zBJX", "0rkOHUkY5aSlqhYo", "SXbn6l5xAzc1nc3e"], "type": "Fm950dtVAo7w4e3v"}' \
    '5mh6Rum5pbgEt39u' \
    'JQpgEtchTe3nt7t9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
$PYTHON -m $MODULE 'inventory-admin-bulk-remove-items' \
    '[{"slotId": "ztprSfW9OutADrNG", "sourceItemId": "BWSJ1zQKxVmRTawj"}, {"slotId": "iZPMoZZcyGEHxAKD", "sourceItemId": "Qher3usApPdJPn9e"}, {"slotId": "IdhIBvTTupABJ4Rw", "sourceItemId": "H3EdKmYtbqQHNfIZ"}]' \
    'wrMxf3EnzZVnkLT0' \
    'Lb85nmpdN26BY5YI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
$PYTHON -m $MODULE 'inventory-admin-bulk-save-item-to-inventory' \
    '[{"customAttributes": {"0jeO2zMDSy4kyqyK": {}, "grtEPdXXlt8geCdi": {}, "Xu3iNvn7vLZ7h6al": {}}, "qty": 16, "serverCustomAttributes": {"Q4OZ2nDodm4TNs8m": {}, "Aj6IKSYFdJwgZsRP": {}, "OzwuDSdGl1A2vaNe": {}}, "slotId": "DiSqTfmAVg50kOdJ", "slotUsed": 1, "source": "ECOMMERCE", "sourceItemId": "iqhx6zv7EURTNIoG", "tags": ["1DBdoKH6sREmmfwU", "ZLZZS7snx0Q2Gd8m", "7Y3wiNloJfey3HXL"], "type": "6SjljNPTXA3qbg55"}, {"customAttributes": {"SyienCODZ0mnOpPT": {}, "VxEgBFzG8tlkxWKC": {}, "U1XN4gl7yHvEqpJS": {}}, "qty": 35, "serverCustomAttributes": {"F2PqUfbpMpRl6xRy": {}, "V19cborUHeCpqnZ5": {}, "NW623WWn2ZJY3QvR": {}}, "slotId": "a7CDRTcsAHzD3dZy", "slotUsed": 51, "source": "ECOMMERCE", "sourceItemId": "bUQpbcv3IwmL7a1K", "tags": ["3zIUYJmdF1YtWNSQ", "lcMzxfppNCrscDPb", "klTHcmgXsrVj3Mjm"], "type": "l6BpCODWGOLMmCZU"}, {"customAttributes": {"eelXYyNrXweiCnDl": {}, "dRPRfd6mLZ0GTJwE": {}, "joZrRtaeWKMC8wsO": {}}, "qty": 56, "serverCustomAttributes": {"w5UMa8ymxtEFLwEL": {}, "CY2vIddlxnA1Vyni": {}, "oJcAPwVHUGcs1ACM": {}}, "slotId": "voY4jWH9dFmOHW0j", "slotUsed": 37, "source": "ECOMMERCE", "sourceItemId": "uukPE4JwQONQ2vCb", "tags": ["Mn0Oia336uiiMTAd", "uctvUfVwLahtRedh", "1SiZlOpIQ8GL7jBF"], "type": "1R5OexAPzCG6ZKQC"}]' \
    'lGc1636nbfM3J9G4' \
    '0Y62bCo941ALznQu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
$PYTHON -m $MODULE 'inventory-admin-update-user-inventories-by-inventory-code' \
    '{"incMaxSlots": 69}' \
    'WObt6t0w8LOBxE15' \
    'JYj4IqWK09l4wkrz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
$PYTHON -m $MODULE 'inventory-admin-save-item' \
    '{"customAttributes": {"ahXR1sDEDVKDINE3": {}, "HjCiVR1dQ8kuhb4p": {}, "UwnGptHUplxzaDa9": {}}, "inventoryConfigurationCode": "PDwhu31d8eOdtrfq", "qty": 86, "serverCustomAttributes": {"ECDD6OGkuLs9gNpN": {}, "on6DKW9A6AmnQTNF": {}, "idImWONTvCPMGLdb": {}}, "slotId": "YEknHPKrZ7TiNBE0", "slotUsed": 68, "source": "ECOMMERCE", "sourceItemId": "sE0GHDOFjrfqJcyx", "tags": ["T2a7fCFAUzLELiM5", "73TdtWjfVciuLnLs", "BKGsALPuCOyphUUA"], "type": "V95708zaP0wpZgQE"}' \
    'vFzox9wHocX3DRWo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
$PYTHON -m $MODULE 'inventory-admin-bulk-save-item' \
    '[{"customAttributes": {"bEoGr8W97KBedcr6": {}, "PM51z7i0wQ9egK2t": {}, "46EG8I2lTviKbOgV": {}}, "inventoryConfigurationCode": "uN3nhkn6QIesNoYq", "qty": 43, "serverCustomAttributes": {"eidXRRnIAJfKVjOn": {}, "6rtILNJVv2DLLUyB": {}, "t5hDs45siG30Lv9i": {}}, "slotId": "Ga5mkZjnRXVcg6AB", "slotUsed": 50, "source": "ECOMMERCE", "sourceItemId": "pBo2JYkwLdmR97u9", "tags": ["MVUii4KpYcb1AUsE", "SaBOTHnbX9tC9PQl", "FAGbMtEybfcAl0mn"], "type": "sAkRT2k0AzdgIunR"}, {"customAttributes": {"kTxsGdrpNELM8Lfk": {}, "ut0wnT24wh59RGSb": {}, "BMh7jpszuVk6iPdJ": {}}, "inventoryConfigurationCode": "2boQqCCyJfThvCJi", "qty": 10, "serverCustomAttributes": {"BiHewZkwEeuzBBRS": {}, "knxyWkZObuvig8sM": {}, "uss76ezTrsDZNYUV": {}}, "slotId": "48Oh6I45X7HvUtPY", "slotUsed": 84, "source": "ECOMMERCE", "sourceItemId": "NZdFk75lkjQNHrja", "tags": ["boGomguUqeuZh5qt", "rRbNnGejdTGvZgN5", "hshSe5YmZXKEQLkM"], "type": "6o3eGSP4Htmr90Tq"}, {"customAttributes": {"Gf0OyqJ9ibJMmRgo": {}, "xNwp1lGkYoq8HP1T": {}, "M0tefVQPWX1NPO5W": {}}, "inventoryConfigurationCode": "n7rNG8rGp7Fadvo5", "qty": 63, "serverCustomAttributes": {"yQB1vR1mx6K17GL1": {}, "CrO4ZuoGZSxTzm8o": {}, "MSPIHPtqzIWIzg8p": {}}, "slotId": "bjnt1iBV8DpbjGts", "slotUsed": 6, "source": "ECOMMERCE", "sourceItemId": "ZDTfhAyZKhqilty9", "tags": ["NVlgxUmnfdOAmu1d", "X1NqD20RUvvYeJZw", "6QZFN7wFCnqpvNes"], "type": "GiVnt9p2to7Yja1s"}]' \
    'oDE1K0SvGrMYwPmP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
$PYTHON -m $MODULE 'inventory-admin-sync-user-entitlements' \
    'XC2LfL2m5rP2A20t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
$PYTHON -m $MODULE 'inventory-admin-purchasable' \
    '{"entitlementType": "6foPPH94SUinY5di", "inventoryConfig": {"slotUsed": 96}, "itemId": "LHYivmD0ekycMKlw", "itemType": "JTNL2UCWUtaAD7ZZ", "items": [{"bundledQty": 48, "entitlementType": "94HLvWFsXHtMP0k9", "inventoryConfig": {"slotUsed": 76}, "itemId": "z07xEJ40epssgJJC", "itemType": "3CX0hpB1ZGMMo5DS", "sku": "ozCuFsrBMtoOeLfM", "stackable": true, "useCount": 52}, {"bundledQty": 87, "entitlementType": "xSeeJOlxa395rghZ", "inventoryConfig": {"slotUsed": 46}, "itemId": "aFwwD7wecuQb4GNQ", "itemType": "HVZMKGBnzh4suaGI", "sku": "zttTncVBf5g3oeuH", "stackable": false, "useCount": 31}, {"bundledQty": 82, "entitlementType": "ItMt4GszRufkDFLY", "inventoryConfig": {"slotUsed": 49}, "itemId": "mIejozmG5HlrIfMA", "itemType": "vvpkAHRJHZyfrXZm", "sku": "iJX4CjKCeIRIr997", "stackable": true, "useCount": 76}], "quantity": 5, "sku": "pJXTLbYWpqeXjaf1", "stackable": false, "useCount": 1}' \
    '5fjNMZjKJ05puX31' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
$PYTHON -m $MODULE 'inventory-public-list-inventory-configurations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
$PYTHON -m $MODULE 'inventory-public-list-item-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
$PYTHON -m $MODULE 'inventory-public-list-tags' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
$PYTHON -m $MODULE 'inventory-public-list-inventories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
$PYTHON -m $MODULE 'inventory-public-consume-my-item' \
    '{"options": ["97WrMnJtovSMFw8X", "4zxbdfXgunt1oMNZ", "68eovHSH3xV3URIR"], "qty": 98, "slotId": "oMLnemwKAvgDXNrF", "sourceItemId": "EE4Jf4hQpsLOcLtZ"}' \
    'w0efmEVcW7mxbS5U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
$PYTHON -m $MODULE 'inventory-public-list-items' \
    'OoICxQMit8555Niy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-update-my-items' \
    '[{"customAttributes": {"4NNFpRE5pS85yTIR": {}, "WvLRy58UKWPv3F7S": {}, "0wCVlYQi9cfMCeNn": {}}, "slotId": "u6OIG1PPLRDEXLXZ", "sourceItemId": "WXvqNCHvNpeMjMzg", "tags": ["uq6HFIqaqwH9J6JL", "b5f3SBMyJUdwEBRr", "HAWUFqTooGGnPEgY"]}, {"customAttributes": {"0t7QQWl42byOwXgK": {}, "yPhXmcysae8HpWH4": {}, "xiz3fWthJSu2pUII": {}}, "slotId": "uPLFAtcWhjAP57Qb", "sourceItemId": "WvSSp71zEPPfmAQi", "tags": ["qRRC2caquMRtQOIL", "caDqUITBHQR5ISNo", "FR3GUxdMuvmL0UBf"]}, {"customAttributes": {"wzaaeP3Wd0Wrb8s3": {}, "GW0CY0vAfbq8xoCu": {}, "rq4lpHXrbVBh60NU": {}}, "slotId": "A2aKQwnXrmi6ya8u", "sourceItemId": "4sQPvaf1AcweR7tJ", "tags": ["W3MLMob1hUnIzIpU", "M8KK1kGFN0NUNGKx", "dlAUDFQuGPzAuT7M"]}]' \
    '6OBrNwioKnXPVZaD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-remove-my-items' \
    '[{"slotId": "cXsV1TnsZioDiBgp", "sourceItemId": "rzahPB0FKMa0YeyN"}, {"slotId": "BQWUHDBnBeePkqg6", "sourceItemId": "Zt1Lr5BlO8K6LH4d"}, {"slotId": "Saa8XYHug51ZTogG", "sourceItemId": "0N7Hvnuq1kJ1kpHc"}]' \
    'QtnIc9z70LFQMI0o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
$PYTHON -m $MODULE 'inventory-public-move-my-items' \
    '{"items": [{"qty": 98, "slotId": "uEjY0rNBbbB9txAv", "sourceItemId": "tRQvqJacXR2Rf4no"}, {"qty": 31, "slotId": "DFaEUkPUBnB0ZEJH", "sourceItemId": "3ebM71Tg922xiBgH"}, {"qty": 91, "slotId": "rEAYqRBeSc5uShoj", "sourceItemId": "3dGHMeoi5DBOsQ0G"}], "srcInventoryId": "ax0iX05IT9Agsjl5"}' \
    'NmnSHhxNmCe4txY0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
$PYTHON -m $MODULE 'inventory-public-get-item' \
    'MsPc9EMgf9JCJiEv' \
    'hL8ZfwCVJW9yspUO' \
    'yHC9eKeXzrvzBllw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
