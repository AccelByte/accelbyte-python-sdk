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
inventory-admin-create-chaining-operations '{"message": "EAxcVpFrttufHIRd", "operations": [{"consumeItems": [{"inventoryId": "H9UzVRiXbqlAw7r6", "qty": 100, "slotId": "7eHpzSn3ZPUdc0qh", "sourceItemId": "4n8mzZ0m8SAMTwE6"}, {"inventoryId": "I56IaRDBXxyaNoMR", "qty": 87, "slotId": "hkspInrAip6lyzSx", "sourceItemId": "wElFHHdgs21Jub74"}, {"inventoryId": "CUkNmKJfh5pUkHOD", "qty": 32, "slotId": "FcDtgOjchIua5tWE", "sourceItemId": "IC32ogW7olvbTgrh"}], "createItems": [{"customAttributes": {"RTcPiSuL0Sly6XM4": {}, "OI18mAQLnzjMf8GZ": {}, "2WBZqxYG3aREAu2D": {}}, "inventoryConfigurationCode": "6QVKNCWP75TB0i7p", "inventoryId": "KxR8dl0zRVW4EZG9", "qty": 25, "serverCustomAttributes": {"Z4U68su8XfqlqNiT": {}, "vB6SdAdIhUDrwoZ5": {}, "MecdKi5r6QEa1ysL": {}}, "slotId": "Ezth6mXhzkzWkFeZ", "slotUsed": 90, "source": "dSpHt0P7MIIR7Cky", "sourceItemId": "F6C7duuyZ0GhDogq", "tags": ["rhBRd8lDR6qVNPRZ", "YdFLIAjGGJddVCvu", "9vx5KQ7KYnIuMBva"], "toSpecificInventory": false, "type": "35llzQRaT5kPxUfo"}, {"customAttributes": {"fvnnSuB0y5WUlrMd": {}, "I4sNveabntBSxTeI": {}, "v53HGCiljvjKoyD6": {}}, "inventoryConfigurationCode": "SCwGrncqmLtjQHAf", "inventoryId": "8TgoNm03VLisV6zw", "qty": 86, "serverCustomAttributes": {"o3twu0MesTCf9x4r": {}, "t69lna7qxNeIxPz6": {}, "MbwL6IY69z1UaLqY": {}}, "slotId": "SYWytLPziZMdjxcB", "slotUsed": 70, "source": "ufQxGiHPllG4cYEz", "sourceItemId": "fTD1ZBm3MqHcUmLZ", "tags": ["ZbSqb8RwNmn9HrNQ", "y4uZAAiE0mit9RGC", "CHYzUOcEdscKHPEq"], "toSpecificInventory": false, "type": "v7t1o7TTr1DmrhZv"}, {"customAttributes": {"15T7quIOvBMcaYmv": {}, "CkGZ5dAgqxpBFmaL": {}, "oxozr6wfNPX2bOIt": {}}, "inventoryConfigurationCode": "RMvqtlB2jJCSQT27", "inventoryId": "9ZZPYGu0rdlgdWyO", "qty": 39, "serverCustomAttributes": {"kLnvxkT1X68cmDc3": {}, "fxU8MyKrQpM4hkkK": {}, "6KKXNB3Gv0IqmF51": {}}, "slotId": "TkhjYnaq6foWvXa3", "slotUsed": 3, "source": "vmEejtGeoyIPa8ZR", "sourceItemId": "rvjj7il35MXbN9oC", "tags": ["MNqq98SjTvhZNkSQ", "70D0H6BXksUC9b6i", "5lZC9xv32e8c5csS"], "toSpecificInventory": false, "type": "zH7Qm8bwbmXgdAPh"}], "removeItems": [{"inventoryId": "1EThG96gAFKK2WDg", "slotId": "CcxvONZm3EeERmDn", "sourceItemId": "yeFoF7VSZ6pf3vne"}, {"inventoryId": "SD2Tb3g7mSQUhAEt", "slotId": "rmjqU6YE3p4lSck0", "sourceItemId": "ZHn5GI39YBHqaTHe"}, {"inventoryId": "KtW18iGeUlc9d9so", "slotId": "gWa24CKNS0GqVvUf", "sourceItemId": "HQvsHXNUNe4mhgo5"}], "targetUserId": "QB65lSAiYnNjkfZr", "updateItems": [{"customAttributes": {"QvGgbLdLsFzHkBMr": {}, "1yrOMlNFSrUEirnj": {}, "X9fDmIbeZxzfTcyi": {}}, "inventoryId": "uATus9hsfpFDcSDG", "serverCustomAttributes": {"8aMVGLiBNrDjqoxc": {}, "wgGLXpUL4pp2ncYA": {}, "HdNzDmeIP6rOvDz9": {}}, "slotId": "KOsb392k6YmJFfRB", "sourceItemId": "yjlBiuFM3FIoVk8T", "tags": ["3GpAnkCmBUqg2SCn", "qntX9y1aZSWMiVi1", "0sG6vxkfUcmqRRbc"], "type": "eJ5i0EeDxOgBnhhq"}, {"customAttributes": {"ElIaDml48wdNFLTm": {}, "5T50x9WT0GfH2rtO": {}, "a4EXsXzOXQAk4mqr": {}}, "inventoryId": "xzTtuLl4XlbGL8QO", "serverCustomAttributes": {"xtjzm8y2wNhmwoYZ": {}, "yI4EFZKBcYrCEAE7": {}, "WIsfmx40NLRc6m8h": {}}, "slotId": "eKnWhzfe2NubeoKF", "sourceItemId": "eIaFQCYoDPICpndu", "tags": ["EEQlULdJz4mnRBkM", "NxvvKgAT8mJrYq6h", "RkloqxM3gpwxcfMy"], "type": "9XzjjI5YbsKoADkz"}, {"customAttributes": {"JEN2VHzih3bit0VW": {}, "n3CO39PXDNxtXgeO": {}, "3FgkXhjDzaQY3snn": {}}, "inventoryId": "2ZkP7cFdP43e5dC9", "serverCustomAttributes": {"XIBudfZgrbHDIDm4": {}, "hMzF4TxodenSrUTv": {}, "fqU0bfoMm5cTtFWb": {}}, "slotId": "otQyXJRcQWsmqPNs", "sourceItemId": "92epxk0i8VxsZNer", "tags": ["eSvf9699mCEHThUJ", "kETAsSp7gh4TeUTk", "OkAYfJB8AT9t4Tv2"], "type": "07Y2QD3oD5fLCr3O"}]}, {"consumeItems": [{"inventoryId": "OlXVv8ZGF7uYnGzp", "qty": 18, "slotId": "GYY7KQI1AeFgPqaO", "sourceItemId": "kvo1aolB4lkKB4EY"}, {"inventoryId": "OkQ1jMD3cym8xIfk", "qty": 83, "slotId": "0jJLHC9LxhvNXTwG", "sourceItemId": "BCtohLtl9Zuhytm5"}, {"inventoryId": "UDrT6QXCs5SPBbRP", "qty": 69, "slotId": "TF6oQAXVG7tnsZg5", "sourceItemId": "QgXjvyGJPN4eXbJE"}], "createItems": [{"customAttributes": {"5Vs2GcyomQoIXimB": {}, "JehyxlNsjUgxBkF6": {}, "wFPoJeQediogEhhM": {}}, "inventoryConfigurationCode": "2rIizGdKvOPdq5xr", "inventoryId": "gxSmy1DN9LFkYW5D", "qty": 88, "serverCustomAttributes": {"iGKXVFCmpo6sPwVO": {}, "EDSJsEK5QpNhlI2i": {}, "S5EpGhhvXYck0upM": {}}, "slotId": "zUYnb76tFkEORV3b", "slotUsed": 41, "source": "K6eXUGPJsw1fiP80", "sourceItemId": "G9Pclxcft2ulIJzP", "tags": ["yrVEiOG4UcqsuGKH", "hMRWLVd3DlhLuIpo", "mM8sm1MiaI1mX2tJ"], "toSpecificInventory": false, "type": "Bp3HBvepnDCjgyJl"}, {"customAttributes": {"Xe36mgWjLfFmteue": {}, "9nzJ6fH24T805tVg": {}, "8JqU0jZpjvsugAOS": {}}, "inventoryConfigurationCode": "7u8RiWyerCSa8SRg", "inventoryId": "wsAj1ik1jglaDXTv", "qty": 75, "serverCustomAttributes": {"qqRRulpqpymDkQht": {}, "rHWwRVnwVBOqOHi8": {}, "pWGd1juYhiqjRJOq": {}}, "slotId": "B5F93zFQbJndUDpd", "slotUsed": 84, "source": "y8M9zVrjfGXZnqAQ", "sourceItemId": "UoY1GjlIIk0iKoTT", "tags": ["S1j02o7JjTXAQN0q", "dskdQV0TqI8EFnmD", "bxIxi4YKlONk2Q5Y"], "toSpecificInventory": true, "type": "JvaizwiilatuUjjt"}, {"customAttributes": {"9lIMGql5ElEa9EII": {}, "lGcHB3CfR3ncDlwi": {}, "3v3MFFJ1KesKoELC": {}}, "inventoryConfigurationCode": "pobBEG8X645xpdXp", "inventoryId": "ai0rYaT5hOPjaf3H", "qty": 39, "serverCustomAttributes": {"Hhhkg1yLVbLFzHEP": {}, "8cM4NTwr0KHaAsmT": {}, "ej52WKi6tArAURt9": {}}, "slotId": "plCSVq8PdH6hJPUA", "slotUsed": 5, "source": "qDuAXI66bQ71w0de", "sourceItemId": "oV9Lx5RDA1l2Xcrc", "tags": ["iYNEzvSZIPkhSgOR", "cz5S5BvmgBLxh4ij", "FnE3Tam69qSZ7PC6"], "toSpecificInventory": false, "type": "SKOLFKx1dX4LuWJu"}], "removeItems": [{"inventoryId": "3pDMUAeeZ97SBROP", "slotId": "YuG6XqP6oo7G73zd", "sourceItemId": "xTgOfnwIdlNa29fD"}, {"inventoryId": "Lh741IslKHzGlLKW", "slotId": "UtDQs61OQAoxyyQp", "sourceItemId": "RWCiiPDGQhNPEwiJ"}, {"inventoryId": "Cf2XJVrlzqQls1oz", "slotId": "hLVA3kE8jKvgatOE", "sourceItemId": "BM70TdlNBJYOmpu1"}], "targetUserId": "VCarzBsV6xnZ5Jrz", "updateItems": [{"customAttributes": {"zjrcaug6CWVG8SWP": {}, "3glU6muswVJnNnN7": {}, "kAa7j0riFc5HTHQI": {}}, "inventoryId": "oVsGo7dwV9DBqFKH", "serverCustomAttributes": {"QkETJyTlUrwDTnou": {}, "jQD4IEiH9Z5qXn3a": {}, "oRtlqOECohViHA5C": {}}, "slotId": "zgFSy8X1A3PrIfap", "sourceItemId": "q5AAeMe4L3mDWORB", "tags": ["VXTIIJM9XsYIIZxi", "XNMR9BgaWcFX3SUB", "hyoTsMWPAxUMkawa"], "type": "GpAyrIwMif3BOdko"}, {"customAttributes": {"cVTd4BxqGWV6mTJ0": {}, "sQs6XNbjvqhnUVLW": {}, "u8olKdxL6ozRmDD0": {}}, "inventoryId": "jJvlfV5OemPYdYT7", "serverCustomAttributes": {"DROCjtuzFMbAG9YI": {}, "89hmguB8FOTjMLo4": {}, "b9rIzqYkEpstyVTB": {}}, "slotId": "crM8rG0rH0zcswwV", "sourceItemId": "eMK6MbGIVIu8vvwL", "tags": ["c7KY3uVoJXTIMtpg", "kieDyF97lGdMiHKx", "bWCYzo8yO2KTK9tm"], "type": "mOnYnOpas6ghP1y4"}, {"customAttributes": {"Zi7s7QBlk44Z44B1": {}, "GZgKg4uKxaCgcGLu": {}, "C3brWdTYCfHkIySo": {}}, "inventoryId": "k5DiXZtLW87rGysr", "serverCustomAttributes": {"yod3dNQrmsApRA6H": {}, "X3RwrKt2ecozL0TO": {}, "g54vCE48L5oLF6M4": {}}, "slotId": "lNa4JUMSHNgqRqCV", "sourceItemId": "7usamANkZlOX9Sfo", "tags": ["95HgXqKhTPkwfLM9", "uSybRzWek2gZvRrv", "r0n9d9lvccKMLhrT"], "type": "rcBE2ItBS3KtKZWe"}]}, {"consumeItems": [{"inventoryId": "8aoFzAyBME74HUti", "qty": 32, "slotId": "OxrZDyvpcLYOWA8N", "sourceItemId": "jxOnaEok4nOOCzfs"}, {"inventoryId": "flhjbngJOUn18G5M", "qty": 23, "slotId": "xqMPpcVfRwNj547f", "sourceItemId": "H0XrKEDpEY8VnocG"}, {"inventoryId": "Ajci0V3tBf2jnHGK", "qty": 33, "slotId": "phn50c9tNLDljhZ2", "sourceItemId": "jxLRX3z46OCaGBeM"}], "createItems": [{"customAttributes": {"fPlNos4yBRjrERHE": {}, "onAZR8GmEu0q1p6Q": {}, "CyY6vSkVFWdsbYuV": {}}, "inventoryConfigurationCode": "EGVxYheR3j5mNZ6v", "inventoryId": "wv7K8Asvt1j1Rx59", "qty": 14, "serverCustomAttributes": {"aEc7M4P7UckSC6eP": {}, "eN8i4GrFES9z7xue": {}, "HpATHccee9GXhKcj": {}}, "slotId": "mSEwdrkEnnqKzFsL", "slotUsed": 11, "source": "65hbN15zfQSfQrtf", "sourceItemId": "F3TQN0OcNDLr36vz", "tags": ["ohZyjMQAg5mPYhrL", "TyU8OhgfY9JQYGF4", "bYXEcENx9xZlAcho"], "toSpecificInventory": false, "type": "AnaRcYp7FUjfIGaf"}, {"customAttributes": {"foflEIByYqeKN0me": {}, "GelYF5wWaDhukU4k": {}, "hGG4vZFTYnPkmSu4": {}}, "inventoryConfigurationCode": "PWam1jxR7SETWjte", "inventoryId": "oc8fgvZDDhoO05oK", "qty": 34, "serverCustomAttributes": {"0DjQjBECXvea7H1m": {}, "2lJFRZ3ZprZ60zMj": {}, "hTHeh94TSenE5hCF": {}}, "slotId": "kIf5weqZ18MH57l2", "slotUsed": 39, "source": "z9F1BxNNgnke4akn", "sourceItemId": "cw7wu9TmXfJWBPrx", "tags": ["9Ns8eLzYEvwSWTaL", "QjctvrK2jhsYpKPl", "Xn77AtYoFzLAATPY"], "toSpecificInventory": true, "type": "8P3cfoivvQxevecW"}, {"customAttributes": {"w7Rry0KK5rgAGO0d": {}, "W8rX2MVUGKSZ4GcL": {}, "kt4pK32sJxlZcCTp": {}}, "inventoryConfigurationCode": "TdRtCHvuk6B6XTmS", "inventoryId": "Lyn50sigBVZxiKdV", "qty": 85, "serverCustomAttributes": {"GvRyd9UuL02Le8HS": {}, "CslsDd4M1F5qRIbl": {}, "S7Nz81GRazPAANjf": {}}, "slotId": "BoldFOyqA2clJ5gE", "slotUsed": 84, "source": "7XIZRZ7tZdIs0xf4", "sourceItemId": "czdt7zqmSKxOEQlV", "tags": ["cx6GqsBq8vdhWVnu", "YLgpZehK0G2nmyuV", "iB9kRTcSQdTnNYGe"], "toSpecificInventory": true, "type": "9FmYel0kOw72o8Zk"}], "removeItems": [{"inventoryId": "gk0jS6rDWUwfhKvr", "slotId": "f2AaH4yCWrHSppnI", "sourceItemId": "ZkNnTn3rzH5NvAtc"}, {"inventoryId": "vNedgS1fUfKmihDb", "slotId": "mu8ePWlQMVDXEHei", "sourceItemId": "GTnwyEw6hIWDZrpP"}, {"inventoryId": "7rz3ISW510kHr4is", "slotId": "TKWjmv67nuHCXWfw", "sourceItemId": "nwGioVwVzmmBVVFf"}], "targetUserId": "pqx1AeLtzcPJ3jtD", "updateItems": [{"customAttributes": {"YBo4FUTH7CGfKSyx": {}, "gRR1DiCqSMzpqIFG": {}, "LkDs7ACC1RgBfoNr": {}}, "inventoryId": "HlFi2qJLgmBLE35Y", "serverCustomAttributes": {"hyiDV90SeI5yppBH": {}, "oytVznCgNyx9fbT6": {}, "3ShEh8PbGikLjgjc": {}}, "slotId": "j34uulU6FYBZsWFb", "sourceItemId": "r3RSP0W9nBhvhf8Q", "tags": ["0DtJMcYQdN66bswA", "gt65X4N1LQZmB61J", "MdtwCVUrYQue84dw"], "type": "mbwFEnAZaWsQJtRY"}, {"customAttributes": {"oagRJK5PX9UcOvhP": {}, "yE11TRT2SKseoe8V": {}, "Lie0LBa36KNzjf00": {}}, "inventoryId": "5CXNGehQ2aTjTDfK", "serverCustomAttributes": {"FDXC7eGL5YhJDWh9": {}, "YWqc0qgV6d9yOfIM": {}, "Lds2DbPcaoMdtRLT": {}}, "slotId": "mSvTkQQgB7exYvmH", "sourceItemId": "Mxr5hPCJJztJBg0t", "tags": ["TJg46IewOXE2AkCh", "3QIZsUf8lGFXcmwT", "ERHclOdxIwqejxe1"], "type": "8rNdb8Otq6j1mqUa"}, {"customAttributes": {"v7k05HAQltnSojV4": {}, "jT65yclX2FtAz0vJ": {}, "jFIYWOaNdsimmkW2": {}}, "inventoryId": "miH3xRHAKy4QxZka", "serverCustomAttributes": {"XZ7vmiEd0JPxVyQp": {}, "shaDwNqTbbFMXAMf": {}, "VXe0GZeMgsRsmH1E": {}}, "slotId": "QrYmkPKTPOlhTtSi", "sourceItemId": "ZNCxuogFteTHJe4B", "tags": ["hSSQkQD6WmOt6D7u", "fFVTOhvQpfbBke8a", "Edd36xj6wySoltDx"], "type": "sbzxrlaKEfkoYjY2"}]}], "requestId": "o6ouRW9UtNquwC3W"}' --login_with_auth "Bearer foo"
inventory-admin-list-integration-configurations --login_with_auth "Bearer foo"
inventory-admin-create-integration-configuration '{"mapItemType": ["gumrIz4NhGztZpr4", "U4fwQIiLXgmRasvj", "O4lj8m3XEwP2b4gd"], "serviceName": "3xOeii8Jnmssep2x", "targetInventoryCode": "D2NY0kABeGs9yxah"}' --login_with_auth "Bearer foo"
inventory-admin-update-integration-configuration '{"mapItemType": ["ld1pO0Gyf5PO3COy", "MvczgEpzZ3Fbtxfh", "cRC7IVYa6iZ5uFRY"], "serviceName": "Nn3SHiWxF0YbuU5a", "targetInventoryCode": "r5qTLWUCy0Afgc05"}' '0XIZRW491e94mQjV' --login_with_auth "Bearer foo"
inventory-admin-update-status-integration-configuration '{"status": "TIED"}' 'OBnIWhunElqZUodp' --login_with_auth "Bearer foo"
inventory-admin-list-inventories --login_with_auth "Bearer foo"
inventory-admin-create-inventory '{"inventoryConfigurationCode": "3IhtCSHy1ei1fIrP", "userId": "vfHnRN06EjRwEQlN"}' --login_with_auth "Bearer foo"
inventory-admin-get-inventory 'apJRfk4f9Zcw1pEH' --login_with_auth "Bearer foo"
inventory-admin-update-inventory '{"incMaxSlots": 55}' 'gP6Jbct8puMybYGx' --login_with_auth "Bearer foo"
inventory-delete-inventory '{"message": "D9IPmmsLmu3kaPj0"}' 'O4zd8Tb7cUNGPTBx' --login_with_auth "Bearer foo"
inventory-admin-list-items 'iFFCrn7djjs69FTF' --login_with_auth "Bearer foo"
inventory-admin-get-inventory-item 'VGUVhvKhJCmeisql' '14mUHVbMPimNhcZs' 'U3VAdMDcb4qlkiFA' --login_with_auth "Bearer foo"
inventory-admin-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-admin-create-inventory-configuration '{"code": "amqvZI2KwjqPBiWX", "description": "ade41s3rH34mB2yP", "initialMaxSlots": 23, "maxInstancesPerUser": 57, "maxUpgradeSlots": 89, "name": "LJoJHbiQ5duE5p4c"}' --login_with_auth "Bearer foo"
inventory-admin-get-inventory-configuration 'fs2E41cK8QTwiIAv' --login_with_auth "Bearer foo"
inventory-admin-update-inventory-configuration '{"code": "xSvNDlmM5nQFMGzs", "description": "7fzjgyc44mEh9tRk", "initialMaxSlots": 12, "maxInstancesPerUser": 21, "maxUpgradeSlots": 27, "name": "XgBsbfzqxBPNe8ae"}' '1Il4aAtEbu4IjGdq' --login_with_auth "Bearer foo"
inventory-admin-delete-inventory-configuration 'thRxTjQ7gkZEY8rG' --login_with_auth "Bearer foo"
inventory-admin-list-item-types --login_with_auth "Bearer foo"
inventory-admin-create-item-type '{"name": "0q0Q2Qd2JzRbkF2I"}' --login_with_auth "Bearer foo"
inventory-admin-delete-item-type '03dIjvBbA6bfbYaJ' --login_with_auth "Bearer foo"
inventory-admin-list-tags --login_with_auth "Bearer foo"
inventory-admin-create-tag '{"name": "CJjfk2TUvn95FhO7", "owner": "SERVER"}' --login_with_auth "Bearer foo"
inventory-admin-delete-tag '3mbDVMDu87t0ldWf' --login_with_auth "Bearer foo"
inventory-admin-consume-user-item '{"qty": 7, "slotId": "iSGIiKFtWtn4Yr2s", "sourceItemId": "vKM6pqLGZ0TBujEL"}' 'AUK6mQ5iZgbwwm5i' 'GzXtcknrgidKupvX' --login_with_auth "Bearer foo"
inventory-admin-bulk-update-my-items '[{"customAttributes": {"O6aj4hCmTC34jxW4": {}, "pIDwdqXpmRmut9H9": {}, "XyWI8bp8fQxRuX91": {}}, "serverCustomAttributes": {"uYmtrHJbEGTUj7Yj": {}, "ERL1rEQG02zccA8w": {}, "vLsWUNd6lPKvqDej": {}}, "slotId": "vqklTSvDwuOrP9lz", "sourceItemId": "piX0VuFpZum7izxe", "tags": ["7NPzjOa8E7wY76Px", "Lv9HBEUe89AwEw1H", "O4FnKtx4XLKAmlDr"], "type": "19uJ3nq6VerzVCcI"}, {"customAttributes": {"8y3Cz0YqCKUh5RD9": {}, "vNAp4jinFpnQ5xF9": {}, "wwbvMZyeDeRnVfPU": {}}, "serverCustomAttributes": {"a6xVVBcq3wZpFIYe": {}, "Ag79HcLJXJ7mpVI6": {}, "eTYAjdPlCiQQC35c": {}}, "slotId": "j4KyOVgvnWbfRJts", "sourceItemId": "B7cUQZ2QUAxJrINP", "tags": ["XppPNO3AfmXcgwC3", "IN6tvKgLB9QmJIOq", "9dP5szG71utjsQ4C"], "type": "rRb9gUCeVz7fWbZI"}, {"customAttributes": {"dhevfZvyV7AcodcZ": {}, "wKjYDdmJOlzwm9Su": {}, "4FnS98QqftSjq7sn": {}}, "serverCustomAttributes": {"8yreciPLfkVyyJsb": {}, "GpO6JgehDJxEN7Jl": {}, "Zc8LMq1o2jZWu4yA": {}}, "slotId": "3r0u4q1bTHXIjfJK", "sourceItemId": "yFlM0u1uuoVdn9yV", "tags": ["oSlKNchPHNL4X3LL", "aGPGdqLE8Sohhhui", "TnJarYYkHBDdSzBX"], "type": "dxapwhd5IQYBQuxL"}]' 'vPuWYvE3fsNy9Z9O' 'hxXvCp9y7fLD2qfC' --login_with_auth "Bearer foo"
inventory-admin-save-item-to-inventory '{"customAttributes": {"XnlUnqxT1WsRNMZc": {}, "A92hzC7MNa8vVe4M": {}, "HX6AgMep90AyyUJy": {}}, "qty": 55, "serverCustomAttributes": {"n8D2eLMe3lt9qfx2": {}, "UDcgVE7L9FK6e0Mr": {}, "Pc4vtxk9hVKlG56H": {}}, "slotId": "lzGr7XjdyRJunZPk", "slotUsed": 31, "source": "OTHER", "sourceItemId": "ccIBnWyPw8mj7gyQ", "tags": ["7XdIszGRj46COPip", "H1MWVTHG0qHJCWEf", "OJpZm9yEYWNGMy2p"], "type": "gSGSUOK68eqGJtWf"}' '1Ybgg8rdwY9bmrvH' 'mO07KNqX9LM2IwEs' --login_with_auth "Bearer foo"
inventory-admin-bulk-remove-items '[{"slotId": "dOGBXBwnzDX8v3xg", "sourceItemId": "C1Ge9PdbTTAJ2Gp1"}, {"slotId": "r0sVZ6LJAOddIL2l", "sourceItemId": "3hPjNDKv2LWfXqjr"}, {"slotId": "8fS79En3wYowBdka", "sourceItemId": "Z3y6i38XQjLDRqkp"}]' 'iFK5BtiQ272Uo9UB' 'JWodpdwsX1jorcyR' --login_with_auth "Bearer foo"
inventory-admin-save-item '{"customAttributes": {"0x3YiHF8ITGPRQBC": {}, "gIs1Q2lzxl0yF5m7": {}, "7TTh4gUoj8u2WRcL": {}}, "inventoryConfigurationCode": "iEtzVlnkflfn7pHY", "qty": 3, "serverCustomAttributes": {"8F1dl1q92m3iRlfn": {}, "BAk0CwiAsR65yQ9s": {}, "suHdGmxncCEr0Kcg": {}}, "slotId": "eqzGbruNB72HHMkj", "slotUsed": 53, "source": "ECOMMERCE", "sourceItemId": "yBB4UFKiaoV0VOem", "tags": ["2yqPsMFxKybPkbuS", "6x9cLJ1APnNlsa2b", "RBr27fVMWuAfDqLM"], "type": "R919IZPKOKiAVQXX"}' 'OmqFHLbyXmgCNiXH' --login_with_auth "Bearer foo"
inventory-admin-sync-user-entitlements '8uenbC5CphgMweex' --login_with_auth "Bearer foo"
inventory-admin-purchasable '{"entitlementType": "sIAP5vHLjBJ9iqMc", "inventoryConfig": {"slotUsed": 56}, "itemId": "J4UMS93yOxNInDBy", "itemType": "hnoluO6ti0QP2ssi", "items": [{"bundledQty": 74, "entitlementType": "DiJq4xQye7HqnVK3", "inventoryConfig": {"slotUsed": 58}, "itemId": "VeOWs9mfVQh3jLBt", "itemType": "n9pxpE7BYtzB0B4C", "sku": "xyQrUpIFvORxTi79", "stackable": true, "useCount": 7}, {"bundledQty": 32, "entitlementType": "ECaFGzfZ2hxcJ2Fn", "inventoryConfig": {"slotUsed": 9}, "itemId": "vk3IfAKEbqcNXSGC", "itemType": "CvNowNmdpcJgF88y", "sku": "SNq4Mj7mulP4tQ6R", "stackable": false, "useCount": 34}, {"bundledQty": 75, "entitlementType": "aLs2xjHkinOD975n", "inventoryConfig": {"slotUsed": 54}, "itemId": "WZjNRSzOTqcVNX3a", "itemType": "hvxw9gwwhTnjN6wK", "sku": "ZGW4y3f0R9s2kndh", "stackable": false, "useCount": 26}], "quantity": 78, "sku": "hwAiLsZs4pmLDIQc", "stackable": false, "useCount": 66}' '4IjDq9aT3qZyI0rY' --login_with_auth "Bearer foo"
inventory-public-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-public-list-item-types --login_with_auth "Bearer foo"
inventory-public-list-tags --login_with_auth "Bearer foo"
inventory-public-list-inventories --login_with_auth "Bearer foo"
inventory-public-consume-my-item '{"qty": 37, "slotId": "JLMQyMWzYQCAaPJg", "sourceItemId": "oxGJoJaSzUtY4ZD0"}' 'Xtb0U4pH16NUsVY2' --login_with_auth "Bearer foo"
inventory-public-list-items '1NVIs7NRen2Y3Ns0' --login_with_auth "Bearer foo"
inventory-public-bulk-update-my-items '[{"customAttributes": {"QJQeaWytPfds1BYx": {}, "0EaURydf8ZyyZeHA": {}, "WGgJUbUJRMbkcTgl": {}}, "slotId": "bU86FyOjApNHBVfN", "sourceItemId": "OURcjY3YYT9oTynm", "tags": ["fIuBWgJTNFfM8M0I", "W4oe8KDgy0xZfAcN", "g14Ws8TIP1LKiFQo"]}, {"customAttributes": {"LDvumfqrgSfnx2h6": {}, "1X9dN1MGRXBJ6mVV": {}, "7JS9qjNLwvI8JdiY": {}}, "slotId": "3RRiLilmOGF6dLLI", "sourceItemId": "eIVIjMcdlbdRXTGI", "tags": ["rdNL5gJPqTAjgqaT", "Hf1ANTJ9Yk997XkG", "OdC6ItxDT8p4n4XC"]}, {"customAttributes": {"FkD1AJLCwszbZxuH": {}, "SgDOK8bjoF7bL263": {}, "5KbtZTGJpqgl2IzN": {}}, "slotId": "XGTuQPIDpor7t1aJ", "sourceItemId": "LNNz6QIVC9Mfuc8V", "tags": ["OsnmnlVljdWYmELe", "74p38vumnxAnYBTx", "aTIz0jcgDI8Pkz96"]}]' 'vd80msqIm5bufnBq' --login_with_auth "Bearer foo"
inventory-public-bulk-remove-my-items '[{"slotId": "rpLeqhwVhjnnjKME", "sourceItemId": "mtbiWsAQHbMrKYi0"}, {"slotId": "Zxs5SWCqZXHLLa31", "sourceItemId": "oQf7BULnZDhutDM6"}, {"slotId": "BqguqD5xxGxBWtnT", "sourceItemId": "KUe2znsqPzPkwCBo"}]' '2SwCUsTag4MLAo3m' --login_with_auth "Bearer foo"
inventory-public-move-my-items '{"items": [{"qty": 43, "slotId": "1P2xaNfmn8Onb1a9", "sourceItemId": "gMz0F2UBRmMhAbUW"}, {"qty": 25, "slotId": "JBhgGq5GIDhNC66s", "sourceItemId": "zbCCf73IFbRkPSSI"}, {"qty": 93, "slotId": "0FqfhnaB3YxKNdOT", "sourceItemId": "acCcJfIfXshuLUk5"}], "srcInventoryId": "WdpxjZx5noXPhPUT"}' 'KbonoucNmzwOZOK5' --login_with_auth "Bearer foo"
inventory-public-get-item '6sDkci5rZ8iMlOuk' 'sQJCiRFiZWwJ7NrT' 'b1XTB9YQzUJ9XlYJ' --login_with_auth "Bearer foo"
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
echo "1..41"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminCreateChainingOperations
$PYTHON -m $MODULE 'inventory-admin-create-chaining-operations' \
    '{"message": "8BzP6EUmUXGM5anI", "operations": [{"consumeItems": [{"inventoryId": "loyj9lhbvuQdW2jw", "qty": 75, "slotId": "F7JKZFNk2NKy59X8", "sourceItemId": "iOg2sVBiCoeC5weX"}, {"inventoryId": "Jl7PeiMH8z8dVej8", "qty": 81, "slotId": "sEp6KlqwW4djrexc", "sourceItemId": "bHdEtoQvpV344Rct"}, {"inventoryId": "mTozCi8HeV6jbalH", "qty": 25, "slotId": "JVBRLPZ6Iz8tne5d", "sourceItemId": "bguBF6Gsvvdl8jHz"}], "createItems": [{"customAttributes": {"9x7XZIjU4IK9lOLa": {}, "ZaMphKCqTq3EVheJ": {}, "joEEXBLIxGnNuhoJ": {}}, "inventoryConfigurationCode": "M3WWPvvCiCf33ViE", "inventoryId": "dqQpoGkUWNizk5Uc", "qty": 85, "serverCustomAttributes": {"V15QaGGL46LuxJF3": {}, "sbeqWBdQuWfgBAKx": {}, "27MSBqabUXOGkkoM": {}}, "slotId": "UZn1YXj5zFZeOCOR", "slotUsed": 36, "source": "NvBQZSJPOIKrRBrY", "sourceItemId": "Vzi9ui3lvozTt9Ts", "tags": ["H7A0TuU2aL4bPkk1", "1sys6GdkDcos5uVJ", "0BJfZ0jvA54CSqZF"], "toSpecificInventory": true, "type": "T3by2kYSCdnFKLc0"}, {"customAttributes": {"xcTjqjdcEfU61OJY": {}, "MnW49rWynp1ck1vT": {}, "90C6o86cSRL9cgbU": {}}, "inventoryConfigurationCode": "mulhe98oaFKlQicd", "inventoryId": "rxVhrtwSd9QWVMYz", "qty": 10, "serverCustomAttributes": {"TU1TsxsChSclSkb5": {}, "aBi9K9zyv6gFZXI5": {}, "nXJ7hLi6HweweRmy": {}}, "slotId": "o91dIn7QqXBDXJcr", "slotUsed": 34, "source": "PAd9sxoLnWGP1Paf", "sourceItemId": "IjLX8ce0KbNN7Ycl", "tags": ["2JfmQplvGjVQ4aeb", "jfgGu472oWJlfglL", "M4xjfkNL4lU6jaGf"], "toSpecificInventory": true, "type": "vLwtYEJTSiXjcY5Z"}, {"customAttributes": {"Pkv90lyKSTWLxSFZ": {}, "0LpupEi5DbkVs3qF": {}, "Ti1t530Wj1WfzIvc": {}}, "inventoryConfigurationCode": "3VlSXrA3XUGud4tV", "inventoryId": "jmxEf4XvVhFJTxFH", "qty": 70, "serverCustomAttributes": {"g6NuDZvPb1kuUfNf": {}, "UDe4g7q6PHEaqbzH": {}, "vDDl1jiLw3XMGBA6": {}}, "slotId": "JXDpA1tIC45C0oaG", "slotUsed": 30, "source": "ZrXr9Bhtzn8jAdTn", "sourceItemId": "6xBhrciryLm67rka", "tags": ["dH5Y41SLjCPrFa05", "Xl5TPC5GODS44bmm", "7jPdKLddfdsUqjXV"], "toSpecificInventory": true, "type": "RRXBxlalCHtWlKxL"}], "removeItems": [{"inventoryId": "pS8fLWoQ5nuJhatQ", "slotId": "PxR7dvBVC5zgOKLT", "sourceItemId": "DmHe8c1eJ9sde7Ry"}, {"inventoryId": "t4udIv22M18uux9x", "slotId": "BomQFPFWy5cwNPI6", "sourceItemId": "aFo0MVwDZCIXFNEL"}, {"inventoryId": "3uWVRz3V7YbJM3bN", "slotId": "LWHAbCZixe2cQ6O3", "sourceItemId": "0lpzcBQMAEcNcJqr"}], "targetUserId": "KxnMzSYoc4ZjiMY4", "updateItems": [{"customAttributes": {"H34B6wVd8ipcKDwQ": {}, "eUWtjCC2UH6jzMO3": {}, "AfmOS5mQNyRPZFPN": {}}, "inventoryId": "P56l1AT6OLKmZhCZ", "serverCustomAttributes": {"xxPPdPwOtEuWBSO2": {}, "jJepUnEEgja2mIE2": {}, "kLTnJwc5XmkCuL5W": {}}, "slotId": "4tKt6G3j9LYdG7xV", "sourceItemId": "PqBqe9RDQMBSYAFL", "tags": ["qp8PF5hCcoukWpnb", "z4ys7j6lxuU3u2HE", "G0qfKegvFTD1sPyk"], "type": "S8YLmwtYgWGcA0h4"}, {"customAttributes": {"G1LZ1HaX5UBMbsF4": {}, "4VTsLDRzdq22cbny": {}, "K3ggFDh2kaZP7pnn": {}}, "inventoryId": "VfxPwc259HF9ejHa", "serverCustomAttributes": {"ILQruAuYyJLYGqMv": {}, "824ouSgkpK70uJmU": {}, "L0uzElixc023dIvD": {}}, "slotId": "iA0tQWlHwBcTtztx", "sourceItemId": "3VAl6tXFbnATCzUO", "tags": ["IzVcy9k3ie64Vnwa", "0ClGQJultJe32Aiw", "KadEoIVmprwPsa9Y"], "type": "D92CX0rITajpwHIT"}, {"customAttributes": {"GeHTnqRbzBB9ZFgJ": {}, "bQ3Fj1umx4ItzkMJ": {}, "7cudf4r916GPrhn2": {}}, "inventoryId": "etVIQvRkQJAtDUH9", "serverCustomAttributes": {"tx60AehGz1ermJYX": {}, "sYgL7TfyIlAwjTZd": {}, "RZJJzWZwvTX2bamS": {}}, "slotId": "CvX1nwvSWdDwD7WJ", "sourceItemId": "HzgNZUKsI5y0mR3z", "tags": ["MyTsftKqnsIJctAd", "xyZVKHA9DkaSOWgt", "g8yw8lHEbVDwBAqa"], "type": "nOlscRIWw82k5K5V"}]}, {"consumeItems": [{"inventoryId": "TkdubkOFldMCQ98J", "qty": 69, "slotId": "ZJHBSB4fZWEFIZs2", "sourceItemId": "8Ff1kZp1Zktx3N7W"}, {"inventoryId": "NMYIfcDKbLu8pnK3", "qty": 58, "slotId": "oA1keYXJvtggDdXj", "sourceItemId": "bdjMBahFZZGMTcqn"}, {"inventoryId": "WrIprOv0BJ9Sgl7H", "qty": 60, "slotId": "sdH2RIJz1eI7Q5pu", "sourceItemId": "9PutLf6IrvZoBGQb"}], "createItems": [{"customAttributes": {"O4S3rURGWUzPAE6S": {}, "dV4D5jftRl9rZmtQ": {}, "Uvro8TWwXWsz9TVm": {}}, "inventoryConfigurationCode": "dMKEohKzuMYDUTLB", "inventoryId": "eCidXjuGgx8ncXej", "qty": 26, "serverCustomAttributes": {"nEBhXtAVxCd3meTr": {}, "T7cF9oVCh89wNOkK": {}, "YssVejcL3kR3hCGN": {}}, "slotId": "gaJmuALlMQl9RLrt", "slotUsed": 14, "source": "kaQEl1iUProNB6hI", "sourceItemId": "6IpGcToWgFvdRhG9", "tags": ["NwV3zDuqVlVTypcY", "PK8IxrSZuxWl0Je4", "fJIyFAm3DQht4Jwn"], "toSpecificInventory": true, "type": "0FmvviVIBbcujF8V"}, {"customAttributes": {"k5qb8NhWWwaxyMch": {}, "kt8l5IPSrwrJl7wY": {}, "IVw13NCo9yXlbQ52": {}}, "inventoryConfigurationCode": "FTHTCj6SEAzT7TOp", "inventoryId": "yiuvvQUm29Iacq4X", "qty": 90, "serverCustomAttributes": {"Taka9ABfX1IByPEO": {}, "uPhGspRi3bhPQvBB": {}, "JI5JxytpcubN4AUU": {}}, "slotId": "PFPscZsXeJOD4DMt", "slotUsed": 33, "source": "JXE52sUBBq2SimQQ", "sourceItemId": "oLbe5YOJvxGRxUzr", "tags": ["TwagH7BMT1IZKTdN", "FVBQ1crBXAupATO8", "uXsqVpdiWo8SjDAM"], "toSpecificInventory": false, "type": "JRtozI0jpliCFQ6W"}, {"customAttributes": {"gJpGPigdc5VyC4qv": {}, "WjVac1cQvSxgTNIU": {}, "zxDgBlIbuzm7DzJ2": {}}, "inventoryConfigurationCode": "0NFRJIhFXR2dYprP", "inventoryId": "mbpuptECGd5cdXC2", "qty": 91, "serverCustomAttributes": {"jMvpqM8puggOEdG4": {}, "7gD5i2Ni6AnWn3Nd": {}, "EPhNHSH7eKDfRcng": {}}, "slotId": "EpTnRUQr3RLOM1vE", "slotUsed": 47, "source": "rcbc4LWfKaY5c1tP", "sourceItemId": "5TDuI5f6m4KC07Cn", "tags": ["sZe32hqEcB1ExYMB", "b3ckvoaJYdMqGegc", "g3eRvBZXN3cjIXmF"], "toSpecificInventory": true, "type": "RJnj8xN7HDPTUEDP"}], "removeItems": [{"inventoryId": "N1Kb4UTPWDXTSb55", "slotId": "g8LSTs7Nf95lGlPr", "sourceItemId": "f6obIdnI6Ag7eUYc"}, {"inventoryId": "YJ4QzXCmqr6gmPGa", "slotId": "HP5SVPvRLiDi0mNH", "sourceItemId": "b6Lx8eq8SGNwEQO8"}, {"inventoryId": "dYXvBSYvJBwb6CjZ", "slotId": "UMRf2VJetWsokvx3", "sourceItemId": "BHuTEczr9KjQ3ttz"}], "targetUserId": "8MTBt1xk9IyssSA8", "updateItems": [{"customAttributes": {"nP5PQjpzk2Tb7iYd": {}, "mNZWosrsVBPZ64j0": {}, "HUONscofwYLQcDvk": {}}, "inventoryId": "aEIIPoJT83zEGXmV", "serverCustomAttributes": {"BZLyrH9J7BoysmaO": {}, "RLkP5hc2Fh04JTsq": {}, "DTynCewqJligLlRx": {}}, "slotId": "OelKykICRxF6HtlE", "sourceItemId": "R2txs4qrNARATn6K", "tags": ["XOutlYBbLhL8KXx2", "5FZfQIodVBqQsBpC", "JBIXLGYcwWVRK6UK"], "type": "k5ozrXA4HZHNyq9o"}, {"customAttributes": {"danhR1Zrm3thUvV8": {}, "7yfkycLSVdleSaAy": {}, "lsmLYe2phYOgT5kD": {}}, "inventoryId": "TyPl3dKF7NXEjrJM", "serverCustomAttributes": {"ki8jvc3P8Gwjg3IO": {}, "H0SDHgYKqxJiFJdr": {}, "mj5vhzgsJwex7wq8": {}}, "slotId": "ZPlXNaUNgdY2vfJu", "sourceItemId": "je5cPnmGjTvYa5Pq", "tags": ["x1K7qcAoijBPAp6E", "Pb988NzxrDKVpULj", "jiw3NeVG4DJi9DaM"], "type": "rc0WFgKjE945x2CP"}, {"customAttributes": {"VYYG9WvoGmAmvaVV": {}, "5YfxnUNcwjr7gSGh": {}, "nfuF4WZiQVICVpWd": {}}, "inventoryId": "3UM08gMXhdf3juXW", "serverCustomAttributes": {"4JprIb3CJCAtvSG8": {}, "Cfa9dzOJDGCTHIOF": {}, "jeXbsSgR43kIDzxB": {}}, "slotId": "wqRJTzrHNZWUsq5l", "sourceItemId": "Qo2jy29EJigqYhyV", "tags": ["hURx1yPeczRpdk0H", "ATGylx2JG2KNGfhz", "fCTxxrsRRLee3TcJ"], "type": "7DQIi45aCDHN9mVu"}]}, {"consumeItems": [{"inventoryId": "g2zkVf6KgpKOcn3t", "qty": 78, "slotId": "tbPtaxvagSlpGgVT", "sourceItemId": "F6VeDAPOGBwweyFf"}, {"inventoryId": "XEOEAEtbag82KgBg", "qty": 49, "slotId": "tXGve6DdK6uvg8f2", "sourceItemId": "cIoByk9fxtvsgeAx"}, {"inventoryId": "o57nKAbZpsbJ4Iu5", "qty": 75, "slotId": "BNsi4giR9434WpKK", "sourceItemId": "dzxoufCNlFoOcWQQ"}], "createItems": [{"customAttributes": {"y4bjmQeEweoBHTdw": {}, "Ak7ZQnbqY1cQwVEt": {}, "Ar5kKKAo9MM2Cqm8": {}}, "inventoryConfigurationCode": "4jVi9kIpqgrzpUkN", "inventoryId": "OBWydXV0Fi02aFr8", "qty": 58, "serverCustomAttributes": {"8QM8Rr45ULqXQgvw": {}, "D3PsKDJiWxQBwaS7": {}, "rDBf2S54phbdyGDt": {}}, "slotId": "47f9GWRlE9hqz6rj", "slotUsed": 61, "source": "hFa9XU8mosluiHZJ", "sourceItemId": "7O8sAQ32wj9uaDzs", "tags": ["r9xYiWRuuzQJiLc1", "eI9w3JEhxPGbEk7s", "7gw07FlounC3vJKB"], "toSpecificInventory": true, "type": "6yvWJDdvM7T7PX2v"}, {"customAttributes": {"amIRZHzsIYOCUoiC": {}, "XNjrdQL2jdx1eIba": {}, "1sB0HsJ06DzfbzRY": {}}, "inventoryConfigurationCode": "t4OVUyumBeIqdQGZ", "inventoryId": "C5kM03HHijsQRj7N", "qty": 78, "serverCustomAttributes": {"IAjmsonjj0ZR50BQ": {}, "1U6aFD3O2kXQSc58": {}, "zgZVl4gIF7v3qbZu": {}}, "slotId": "9M3OxqVAT4H1lRZ9", "slotUsed": 39, "source": "1JBrHRzEOtIxzPqb", "sourceItemId": "6n73m0jiaDH86d9r", "tags": ["sKgzCsMulpB8HZUt", "VVaJCiLgKOwrSfWh", "T5B4WedopzwSluBt"], "toSpecificInventory": true, "type": "ThyGnbjmPDKFS6u9"}, {"customAttributes": {"FHuv1M3qfch4SqIV": {}, "6LQPHlaeYl4csFq6": {}, "5cU66yJaj4ovoKWE": {}}, "inventoryConfigurationCode": "4EW0sw8v5peiuxoB", "inventoryId": "JATauyD3XCXVMiyE", "qty": 43, "serverCustomAttributes": {"S0OBCa2vWadLmQtY": {}, "KmEMzicbuL2S3RiW": {}, "8dLTCBfGUdVEdvdQ": {}}, "slotId": "L7sVwcZ2PofaJoSq", "slotUsed": 39, "source": "fmjIXFGZ5PKdbabJ", "sourceItemId": "IkNnt9P1Tkm08luh", "tags": ["4dpPRMDbUXBWTbpA", "ogG2wlZkLhuU5FI8", "NijFI0GKwJ3vfXls"], "toSpecificInventory": true, "type": "rizsFUgYwbaLvqvQ"}], "removeItems": [{"inventoryId": "2NbmDITuymTBjn3d", "slotId": "2sFzMS3QaVjZF7Ax", "sourceItemId": "6115Kg9U8vrQJXQx"}, {"inventoryId": "oIbVi2CLEk277Ivj", "slotId": "j1A647XQ3koaAfZI", "sourceItemId": "im0sFPm1YN27bojD"}, {"inventoryId": "VaZLpx4kEWYkO6Kr", "slotId": "KUMhJrASBh61hmWK", "sourceItemId": "SSrF35anDGvur19V"}], "targetUserId": "18oIrUKXttgAI2Qd", "updateItems": [{"customAttributes": {"WJFLmoPEgd8EMspO": {}, "s8nkic9gj5vyUMAA": {}, "mIHYbsxG5N066FXb": {}}, "inventoryId": "88SbLOa21DiSFsm0", "serverCustomAttributes": {"XXQJWszvTQEuALzD": {}, "Np1SZ58aDllwzTRH": {}, "ak1MXxj7Esrg7900": {}}, "slotId": "nml5BidsK9dCEzhV", "sourceItemId": "nOv0PQbVIaKiHfoe", "tags": ["orY7A1otGFyv2SMj", "bEr50qGdCZIc6EFq", "BKxbS7Q2OgRucL1j"], "type": "wRXzfjDZZBmOau6s"}, {"customAttributes": {"yme06c6SKLc2mEC3": {}, "IXl5XCbkOfHaGr5k": {}, "dazlypvt6lSLfU7H": {}}, "inventoryId": "ByGXPMqxj4hBgVY3", "serverCustomAttributes": {"YAxZLKbcOdyjqf6Q": {}, "4oiwoJcaRMEb15LB": {}, "lTVufc5ZyODR2NVy": {}}, "slotId": "n4PRqf3eRbZqBAoK", "sourceItemId": "GcVCdMiSNV4qBrt1", "tags": ["kcLmRv6EJtl5xWns", "b8oWq94RImNWVIJn", "hhwFDV1VitaomvWT"], "type": "zdsW4N70wYS4Kj7Y"}, {"customAttributes": {"i2VvoQNW8Yc481dY": {}, "dvGxJAMDRA1LF7jd": {}, "WlekFwO94VBCV9qJ": {}}, "inventoryId": "hWva2FPBujX0geYC", "serverCustomAttributes": {"pGJM4sqsPNJMiZXX": {}, "OFwmGWAvNF0Z0Gkw": {}, "xUNYyNwGiKrknH0Y": {}}, "slotId": "5mrQgLC6D2qsFiQH", "sourceItemId": "glUQMZi5WjMZfOad", "tags": ["pgegCUjTdi1Ehr8O", "tqpNJ9R8TuNy4ejm", "VA3vMCsGyPd12B8Q"], "type": "NUz0hFFNbH6j2W4r"}]}], "requestId": "oZM2UKAXEEsL5D0o"}' \
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
    '{"mapItemType": ["iFchQnVeq3g2AB2W", "IRUQmauIY5HXCZ0W", "4XmWP0HzSdiylLhV"], "serviceName": "Yszm8xY33OQbumu2", "targetInventoryCode": "QHLyZNuysyM4OfCz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-integration-configuration' \
    '{"mapItemType": ["dQCXMAWnf87YPNOe", "9Eevf1fhMg1E2k7Q", "LFrVgtX7y0fPOieD"], "serviceName": "Cow2zXyFFVpM87yq", "targetInventoryCode": "EwEacQMTlqN4LKkx"}' \
    'J5v3SBafnKNiMPbF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-status-integration-configuration' \
    '{"status": "INIT"}' \
    'RxvN2u5J7baOeLH1' \
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
    '{"inventoryConfigurationCode": "9fqBwNbNe1ffYRtI", "userId": "vQaKyevWYtZjK6J2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
$PYTHON -m $MODULE 'inventory-admin-get-inventory' \
    '9v8MpBSpo3AKRmnJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
$PYTHON -m $MODULE 'inventory-admin-update-inventory' \
    '{"incMaxSlots": 21}' \
    'cDaiq0nEZ7PyhqFJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
$PYTHON -m $MODULE 'inventory-delete-inventory' \
    '{"message": "kDClOsKmfsgJdmzs"}' \
    'DPsWh1k0cQ08NG6d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
$PYTHON -m $MODULE 'inventory-admin-list-items' \
    'X2TZkil67kRngoUa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
$PYTHON -m $MODULE 'inventory-admin-get-inventory-item' \
    '83ECh1gqPeS193TN' \
    'Nzot3sVli3GN2XTr' \
    'FibRAhzzEWzWlTY7' \
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
    '{"code": "0qdgJRvpZrSpWX3K", "description": "Ee2BjV00ReCXFffj", "initialMaxSlots": 73, "maxInstancesPerUser": 68, "maxUpgradeSlots": 72, "name": "oCQykmXHYmkRlg7g"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-get-inventory-configuration' \
    'Ys6unPYQ9jNQN1di' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-inventory-configuration' \
    '{"code": "1ldhOh6HvjnYuV7N", "description": "fC4A2ODiZhbfb8Qq", "initialMaxSlots": 59, "maxInstancesPerUser": 8, "maxUpgradeSlots": 50, "name": "HZ7FHls3nyvconqb"}' \
    'HQqKLQKe3xmj6s0G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-delete-inventory-configuration' \
    'qsWncp5LrqbiKudv' \
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
    '{"name": "9z75SzoCV8ZMi2o1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
$PYTHON -m $MODULE 'inventory-admin-delete-item-type' \
    'nR482D6gNClk9c87' \
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
    '{"name": "hosaPFC5zBW3ZgVZ", "owner": "SERVER"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
$PYTHON -m $MODULE 'inventory-admin-delete-tag' \
    'utjS029BiJWOG1m7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
$PYTHON -m $MODULE 'inventory-admin-consume-user-item' \
    '{"qty": 79, "slotId": "Ci15XTJTgCNNH7Rt", "sourceItemId": "G5Xmo9Q0Wb07N17f"}' \
    'kxZSc6VbE0AGcekj' \
    'MNHuPXtz8tXxrmza' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-admin-bulk-update-my-items' \
    '[{"customAttributes": {"fMUguyDoN91uc28H": {}, "oSpGt1g0GGbT4Hf2": {}, "PPKOldkbgX9CWJKw": {}}, "serverCustomAttributes": {"XXSbv5eg9q86IaDF": {}, "jjx6uZerWbtwTX9g": {}, "NRByjbE8lOLAfTXK": {}}, "slotId": "LzbrddqcKLa7Levx", "sourceItemId": "NHOSEhQRZIp693lR", "tags": ["wtc43atCuCFxbfbz", "4aQERziPL4dHhOqG", "5KDdUvk0LEi26Ls7"], "type": "mjRxNmvvNtjJNQep"}, {"customAttributes": {"UTGhwlY4lPzlsCR5": {}, "rVsyfcH7WjP7HuGz": {}, "3b5WAEvdRF9bqMj4": {}}, "serverCustomAttributes": {"ro5B19VE838c7Oyd": {}, "Vw0zCqoMZvpIOO97": {}, "DmQ5ZOzx6iCJTu60": {}}, "slotId": "IifzMhkk5PxsjqbC", "sourceItemId": "KpMv2Yky9DYkD2sI", "tags": ["llFtBtXJKG3rqBmI", "LhtWm8RQvRUbUDSi", "efGEdLucrtO2gCQD"], "type": "057DrDlgC2nzS9Si"}, {"customAttributes": {"GUjVAw4v3q6JRHcn": {}, "7KaoCEkRdo6qHYIZ": {}, "WnXqQ1oHFJ9Q0vqs": {}}, "serverCustomAttributes": {"L9SomqWsGA76yxi0": {}, "QzZWfmP2sx0KO5bE": {}, "JaPnAFjsodyJQVVB": {}}, "slotId": "rShGbIIuqK8C403H", "sourceItemId": "goXCR6XOMXwKdfqk", "tags": ["8T4QHK30EX0FclpD", "l5HsuracO5MnjnxD", "1OXkxShFVQTRekLf"], "type": "jmy8zosRCRgVwbrQ"}]' \
    'Kmb01yA7U7dGMjup' \
    'ZkZQY8CNyT4k3DIb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
$PYTHON -m $MODULE 'inventory-admin-save-item-to-inventory' \
    '{"customAttributes": {"fT22G5NpE130YWSg": {}, "xpKWtdtdtVW9anEN": {}, "mxb9e7vXZV3ig8Jg": {}}, "qty": 34, "serverCustomAttributes": {"VByeI3ycMcYYBixK": {}, "JXCISQdwec1m8Bus": {}, "V9tUh74KVo6Xqjz2": {}}, "slotId": "xUKLNWSmYyVvyelI", "slotUsed": 73, "source": "ECOMMERCE", "sourceItemId": "QgaLMqi836ULa7cf", "tags": ["Zl4VuY6rsZyo6CBR", "RnoOikIxXKKIR6kP", "mswm5TCAU1cKApdJ"], "type": "DnE73GLmSZns5owB"}' \
    'hoUg4LsGP6KLPXkv' \
    'Uv2XiXaBzsmaxjTZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
$PYTHON -m $MODULE 'inventory-admin-bulk-remove-items' \
    '[{"slotId": "PlLitytGka7Kv5Ta", "sourceItemId": "cQKF4OlRGdmXxETL"}, {"slotId": "EQrr3KCAV9alq3hK", "sourceItemId": "1G4kKooSNNUZuiyn"}, {"slotId": "Z64IwncZPk82GF3e", "sourceItemId": "TC0vzZUDj9dzGgGV"}]' \
    'xo9OHgfHumyfuBNi' \
    'secYbcOpR45VDlvS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminSaveItem
$PYTHON -m $MODULE 'inventory-admin-save-item' \
    '{"customAttributes": {"c0Mr7ImwCwGqOf0b": {}, "Ns97KvKyj3MqS7Dc": {}, "mtfh50eObbrmgjhW": {}}, "inventoryConfigurationCode": "K0x0ZidAJ1CU1eD1", "qty": 77, "serverCustomAttributes": {"mU96FLEak0mJqjRY": {}, "ldcTpdeCD9XPRi4b": {}, "AQL7VE2wL8Y4JFVU": {}}, "slotId": "dzA8bvXlDhG7Bror", "slotUsed": 3, "source": "OTHER", "sourceItemId": "IKuOXJPm5ztrr09C", "tags": ["DA8Ij5bGKSuopWQb", "aCvdPSq8Z27GpvHC", "Dx55JZ5z6gujpFzl"], "type": "PspQD9IRIpDDubnt"}' \
    'PCFxfeoW2NdSWzOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminSaveItem' test.out

#- 30 AdminSyncUserEntitlements
$PYTHON -m $MODULE 'inventory-admin-sync-user-entitlements' \
    'jO1NQUqWHBW78XRE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminSyncUserEntitlements' test.out

#- 31 AdminPurchasable
$PYTHON -m $MODULE 'inventory-admin-purchasable' \
    '{"entitlementType": "ZCiTNAxq26gZrPqC", "inventoryConfig": {"slotUsed": 38}, "itemId": "I2M5PmXfKnQ7BYGj", "itemType": "CUDMOrbmoRvWnfmG", "items": [{"bundledQty": 64, "entitlementType": "ge659UDEOF6gp5Uf", "inventoryConfig": {"slotUsed": 24}, "itemId": "TOfoNewWjwMWDKEt", "itemType": "6JhbJ0fwTDaq6b5R", "sku": "pMwhWPtndriXU9lo", "stackable": true, "useCount": 47}, {"bundledQty": 63, "entitlementType": "pmEuwDVc12r0DVUG", "inventoryConfig": {"slotUsed": 13}, "itemId": "SZdZ5C8mFI9TnvzE", "itemType": "qBNMF9CZvPxT5zbr", "sku": "eMc9fBoU3RHNDFjL", "stackable": false, "useCount": 64}, {"bundledQty": 40, "entitlementType": "repy56eW1kmb15Qe", "inventoryConfig": {"slotUsed": 72}, "itemId": "H9kP9U53z6joBAhA", "itemType": "lJGI2YYb6ajBjgq6", "sku": "eY4PBNHKPx62tHxD", "stackable": false, "useCount": 41}], "quantity": 6, "sku": "ZFy3uglSp2UxvF2u", "stackable": false, "useCount": 99}' \
    'WilRD7HD6LCgdFxR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminPurchasable' test.out

#- 32 PublicListInventoryConfigurations
$PYTHON -m $MODULE 'inventory-public-list-inventory-configurations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicListInventoryConfigurations' test.out

#- 33 PublicListItemTypes
$PYTHON -m $MODULE 'inventory-public-list-item-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicListItemTypes' test.out

#- 34 PublicListTags
$PYTHON -m $MODULE 'inventory-public-list-tags' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicListTags' test.out

#- 35 PublicListInventories
$PYTHON -m $MODULE 'inventory-public-list-inventories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventories' test.out

#- 36 PublicConsumeMyItem
$PYTHON -m $MODULE 'inventory-public-consume-my-item' \
    '{"qty": 66, "slotId": "VSCN6oCETQ8gIDRd", "sourceItemId": "D2wwMXwKVXGPhEJs"}' \
    'c7rZpxaPHc9r8eTo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicConsumeMyItem' test.out

#- 37 PublicListItems
$PYTHON -m $MODULE 'inventory-public-list-items' \
    'FmkHJ6BPOKFLxIwK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicListItems' test.out

#- 38 PublicBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-update-my-items' \
    '[{"customAttributes": {"ssw647YwDudnGRuf": {}, "OUGfMjTU226l07jP": {}, "lcYaqYM7YfBmhjI9": {}}, "slotId": "Y28qVceS9UX48dKP", "sourceItemId": "CFUIeyYEymNXzNX6", "tags": ["TGh4UdEweeBsJEvB", "bAvCmlh6Z1oz9Bai", "xUUvmzbajE2gjooi"]}, {"customAttributes": {"Dnc1NUb51lEgUwQ9": {}, "tkWaMOH47CAT7cBP": {}, "0918JaEBQBP766LU": {}}, "slotId": "nBBR84iAO7sBQt6Y", "sourceItemId": "J2tWwF7RnP1oK3c4", "tags": ["RVfjB0zi3XrYZUiN", "24ol1qqbalgizL97", "ycJV5YqE2myQzl7X"]}, {"customAttributes": {"9fHr6WvBxmBvNj3k": {}, "taDf9B22HGgxakPt": {}, "7IYzaZUTmvsEzLPn": {}}, "slotId": "nGsnfmBerp84qjwz", "sourceItemId": "WpCF1vyamjsEzwtL", "tags": ["PxK1os4qR8LaQzEb", "39sZTdFfC8x5aHLs", "XHlm1RJTTy9JrNz1"]}]' \
    'K5M1qgFddYvifGHa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicBulkUpdateMyItems' test.out

#- 39 PublicBulkRemoveMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-remove-my-items' \
    '[{"slotId": "wNx6yhniEHLbEQKc", "sourceItemId": "0aUvrKXDIjYC4df9"}, {"slotId": "qswSlpCI8DhjlxUy", "sourceItemId": "rs3OSesE5p0DwUj2"}, {"slotId": "HKUvPYUcQBxMSdOO", "sourceItemId": "sn2Nd8Jpa19GJDK4"}]' \
    '6Eehx7xasqMY9aul' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicBulkRemoveMyItems' test.out

#- 40 PublicMoveMyItems
$PYTHON -m $MODULE 'inventory-public-move-my-items' \
    '{"items": [{"qty": 38, "slotId": "tmGuX6r0gBVUUeKK", "sourceItemId": "lPKtE6gnYxmkmCWb"}, {"qty": 37, "slotId": "KoccaSwWcZmzCWGI", "sourceItemId": "1cIQcPWAShIhieSK"}, {"qty": 96, "slotId": "kUvqn6eXr6FNbKJ0", "sourceItemId": "5Orya6LSSUlugIAk"}], "srcInventoryId": "nXcSaVYcAYp7qSiD"}' \
    'vsfMUOpWv46sXvpO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicMoveMyItems' test.out

#- 41 PublicGetItem
$PYTHON -m $MODULE 'inventory-public-get-item' \
    'jrpRo4mYrCeQUnYo' \
    'ID2UqO0iAXA9dB4i' \
    'b8HDOJ8TNiP8KgEA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetItem' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
