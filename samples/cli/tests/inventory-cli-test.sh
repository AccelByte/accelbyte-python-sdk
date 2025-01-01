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
inventory-admin-create-chaining-operations '{"message": "EAxcVpFrttufHIRd", "operations": [{"consumeItems": [{"dateRangeValidation": true, "inventoryId": "9UzVRiXbqlAw7r6W", "options": ["2ktQG0h5JAav5kRa", "62WopBJHPtcDs8bB", "ZLCXLx8bbgorQeFb"], "qty": 87, "slotId": "hkspInrAip6lyzSx", "sourceItemId": "wElFHHdgs21Jub74"}, {"dateRangeValidation": true, "inventoryId": "qGj6oDLjWjkY1aXl", "options": ["FcDtgOjchIua5tWE", "IC32ogW7olvbTgrh", "RTcPiSuL0Sly6XM4"], "qty": 83, "slotId": "E3cwyALczNIicXm7", "sourceItemId": "agSrjJW2OQNOs1PX"}, {"dateRangeValidation": false, "inventoryId": "QVKNCWP75TB0i7pK", "options": ["xR8dl0zRVW4EZG9m", "0XcgGVbMqSszE8GH", "avj7AorKsxwkosAV"], "qty": 10, "slotId": "ecdKi5r6QEa1ysLE", "sourceItemId": "zth6mXhzkzWkFeZS"}], "createItems": [{"customAttributes": {"oEAcBdW19m4eu6d5": {}, "tA5jUmiTqpyhPFdx": {}, "LzFQN05MYzYiKWe5": {}}, "inventoryConfigurationCode": "dNRljv7IPrDQQRga", "inventoryId": "t0SevkLGMS0lyuI9", "qty": 0, "serverCustomAttributes": {"35llzQRaT5kPxUfo": {}, "fvnnSuB0y5WUlrMd": {}, "I4sNveabntBSxTeI": {}}, "slotId": "v53HGCiljvjKoyD6", "slotUsed": 92, "source": "OTHER", "sourceItemId": "okahFjkQsfCaTmt1", "tags": ["d67FXGk2s9Q0mPVo", "3twu0MesTCf9x4rt", "69lna7qxNeIxPz6M"], "toSpecificInventory": false, "type": "CTqGkE7wcWfDslpJ"}, {"customAttributes": {"SqGAXQ0yYoNRKd3I": {}, "L5TAQ6iiPlSC2uE4": {}, "o5Vwdo3fePqIJA8I": {}}, "inventoryConfigurationCode": "Htrkmu0hpDDWVAla", "inventoryId": "2l5BYNtIuS5S5XUd", "qty": 20, "serverCustomAttributes": {"HYzUOcEdscKHPEqg": {}, "A8yu7Vk6Jt4Ymos9": {}, "Jcdos4fYcTVU6RBt": {}}, "slotId": "0zYoMcHyCUEXlAvx", "slotUsed": 73, "source": "OTHER", "sourceItemId": "MdalwSyliWMNW5Ny", "tags": ["Lu0M3VHh2EI8JlDb", "PWbQ6Q9lNmqRBaAk", "LnvxkT1X68cmDc3f"], "toSpecificInventory": true, "type": "pjChB3V0v52Dlym6"}, {"customAttributes": {"puQ23xoJ8aeCnaLp": {}, "UKp44YUDjasWIPUv": {}, "mEejtGeoyIPa8ZRr": {}}, "inventoryConfigurationCode": "vjj7il35MXbN9oCM", "inventoryId": "Nqq98SjTvhZNkSQ7", "qty": 60, "serverCustomAttributes": {"X3ateEKDpADz1x3p": {}, "oD3Qgb3boLQQ1MzH": {}, "7Qm8bwbmXgdAPh1E": {}}, "slotId": "ThG96gAFKK2WDgCc", "slotUsed": 49, "source": "OTHER", "sourceItemId": "rvqAThuwjRHpKKTl", "tags": ["mVr9XuoJbRFQSKVP", "Hbn4Xxtu7LQRENjE", "Eztx1WsYSiZqan0n"], "toSpecificInventory": true, "type": "I39YBHqaTHeKtW18"}], "removeItems": [{"inventoryId": "iGeUlc9d9sogWa24", "slotId": "CKNS0GqVvUfHQvsH", "sourceItemId": "XNUNe4mhgo5QB65l"}, {"inventoryId": "SAiYnNjkfZrQvGgb", "slotId": "LdLsFzHkBMr1yrOM", "sourceItemId": "lNFSrUEirnjX9fDm"}, {"inventoryId": "IbeZxzfTcyiuATus", "slotId": "9hsfpFDcSDG8aMVG", "sourceItemId": "LiBNrDjqoxcwgGLX"}], "targetUserId": "pUL4pp2ncYAHdNzD", "updateItems": [{"customAttributes": {"meIP6rOvDz9KOsb3": {}, "92k6YmJFfRByjlBi": {}, "uFM3FIoVk8T3GpAn": {}}, "inventoryId": "kCmBUqg2SCnqntX9", "serverCustomAttributes": {"y1aZSWMiVi10sG6v": {}, "xkfUcmqRRbceJ5i0": {}, "EeDxOgBnhhqElIaD": {}}, "slotId": "ml48wdNFLTm5T50x", "sourceItemId": "9WT0GfH2rtOa4EXs", "tags": ["XzOXQAk4mqrxzTtu", "Ll4XlbGL8QOxtjzm", "8y2wNhmwoYZyI4EF"], "type": "ZKBcYrCEAE7WIsfm"}, {"customAttributes": {"x40NLRc6m8heKnWh": {}, "zfe2NubeoKFeIaFQ": {}, "CYoDPICpnduEEQlU": {}}, "inventoryId": "LdJz4mnRBkMNxvvK", "serverCustomAttributes": {"gAT8mJrYq6hRkloq": {}, "xM3gpwxcfMy9Xzjj": {}, "I5YbsKoADkzJEN2V": {}}, "slotId": "Hzih3bit0VWn3CO3", "sourceItemId": "9PXDNxtXgeO3FgkX", "tags": ["hjDzaQY3snn2ZkP7", "cFdP43e5dC9XIBud", "fZgrbHDIDm4hMzF4"], "type": "TxodenSrUTvfqU0b"}, {"customAttributes": {"foMm5cTtFWbotQyX": {}, "JRcQWsmqPNs92epx": {}, "k0i8VxsZNereSvf9": {}}, "inventoryId": "699mCEHThUJkETAs", "serverCustomAttributes": {"Sp7gh4TeUTkOkAYf": {}, "JB8AT9t4Tv207Y2Q": {}, "D3oD5fLCr3OOlXVv": {}}, "slotId": "8ZGF7uYnGzpipNDi", "sourceItemId": "gNJma1MbqqZtfNWq", "tags": ["l4nmwAft4gqkNNlW", "kD9eOziYRFOn0jJL", "HC9LxhvNXTwGBCto"], "type": "hLtl9Zuhytm5UDrT"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "QXCs5SPBbRPZTF6o", "options": ["QAXVG7tnsZg5QgXj", "vyGJPN4eXbJE5Vs2", "GcyomQoIXimBJehy"], "qty": 48, "slotId": "nmPZnGBt4P7WnbdS", "sourceItemId": "JtjX7ZshZyZl5x4b"}, {"dateRangeValidation": false, "inventoryId": "BHUTrDzZSKscfOcY", "options": ["u3dpCROYqUiGKXVF", "Cmpo6sPwVOEDSJsE", "K5QpNhlI2iS5EpGh"], "qty": 16, "slotId": "IKUkmkk9QM0NBMA9", "sourceItemId": "ORxpzwLR2AK6eXUG"}, {"dateRangeValidation": true, "inventoryId": "40V6Do5sYadCCFrH", "options": ["HC3DpZxkrQDXuNFv", "iMarv8mnfHK8CCmE", "2lPnsbD3SGEdlwuU"], "qty": 4, "slotId": "I1mX2tJoARtdbBe7", "sourceItemId": "udsMrok0WvGYYnx4"}], "createItems": [{"customAttributes": {"V709xbnGezKsDwG2": {}, "omOR2nvYI9TVqJdv": {}, "zcWbfUpaXp5JMl5L": {}}, "inventoryConfigurationCode": "L4bTxBmZjdrrIxsB", "inventoryId": "0NRsB1fPqqRRulpq", "qty": 31, "serverCustomAttributes": {"2wrS0uPdjhdinpng": {}, "5BLy8wbhMssAHjap": {}, "IkY9Rf4wP57dBZNR": {}}, "slotId": "88YbCtmKy8M9zVrj", "slotUsed": 11, "source": "ECOMMERCE", "sourceItemId": "GXZnqAQUoY1GjlII", "tags": ["k0iKoTTS1j02o7Jj", "TXAQN0qdskdQV0Tq", "I8EFnmDbxIxi4YKl"], "toSpecificInventory": true, "type": "Nk2Q5Y4Jvaizwiil"}, {"customAttributes": {"atuUjjt9lIMGql5E": {}, "lEa9EIIlGcHB3CfR": {}, "3ncDlwi3v3MFFJ1K": {}}, "inventoryConfigurationCode": "esKoELCpobBEG8X6", "inventoryId": "45xpdXpai0rYaT5h", "qty": 83, "serverCustomAttributes": {"iPX6ues1Hhhkg1yL": {}, "VbLFzHEP8cM4NTwr": {}, "0KHaAsmTej52WKi6": {}}, "slotId": "tArAURt9plCSVq8P", "slotUsed": 7, "source": "ECOMMERCE", "sourceItemId": "hJPUAc0RVwXgAgnt", "tags": ["LMCuaXBWQi6BqPg4", "xr0lCancUZGCHsZY", "oLfR1KtOv7Zy0b65"], "toSpecificInventory": true, "type": "xh4ijFnE3Tam69qS"}, {"customAttributes": {"Z7PC6f6QkmZXElW9": {}, "YfRSse6AAz3S4czz": {}, "0QKFlAVmVLu4AOec": {}}, "inventoryConfigurationCode": "0z8eBeeoip68J1ns", "inventoryId": "v4W2OJhtafxMSJlH", "qty": 9, "serverCustomAttributes": {"GlLKWUtDQs61OQAo": {}, "xyyQpRWCiiPDGQhN": {}, "PEwiJCf2XJVrlzqQ": {}}, "slotId": "ls1ozhLVA3kE8jKv", "slotUsed": 12, "source": "ECOMMERCE", "sourceItemId": "udE0OXudXgNne8kJ", "tags": ["ATwlc6esUp6Sw1I9", "8jeZQ7hfxnhLd3Kn", "aknoed9DHhLOqQGh"], "toSpecificInventory": true, "type": "nN7kAa7j0riFc5HT"}], "removeItems": [{"inventoryId": "HQIoVsGo7dwV9DBq", "slotId": "FKHQkETJyTlUrwDT", "sourceItemId": "noujQD4IEiH9Z5qX"}, {"inventoryId": "n3aoRtlqOECohViH", "slotId": "A5CzgFSy8X1A3PrI", "sourceItemId": "fapq5AAeMe4L3mDW"}, {"inventoryId": "ORBVXTIIJM9XsYII", "slotId": "ZxiXNMR9BgaWcFX3", "sourceItemId": "SUBhyoTsMWPAxUMk"}], "targetUserId": "awaGpAyrIwMif3BO", "updateItems": [{"customAttributes": {"dkocVTd4BxqGWV6m": {}, "TJ0sQs6XNbjvqhnU": {}, "VLWu8olKdxL6ozRm": {}}, "inventoryId": "DD0jJvlfV5OemPYd", "serverCustomAttributes": {"YT7DROCjtuzFMbAG": {}, "9YI89hmguB8FOTjM": {}, "Lo4b9rIzqYkEpsty": {}}, "slotId": "VTBcrM8rG0rH0zcs", "sourceItemId": "wwVeMK6MbGIVIu8v", "tags": ["vwLc7KY3uVoJXTIM", "tpgkieDyF97lGdMi", "HKxbWCYzo8yO2KTK"], "type": "9tmmOnYnOpas6ghP"}, {"customAttributes": {"1y4Zi7s7QBlk44Z4": {}, "4B1GZgKg4uKxaCgc": {}, "GLuC3brWdTYCfHkI": {}}, "inventoryId": "ySok5DiXZtLW87rG", "serverCustomAttributes": {"ysryod3dNQrmsApR": {}, "A6HX3RwrKt2ecozL": {}, "0TOg54vCE48L5oLF": {}}, "slotId": "6M4lNa4JUMSHNgqR", "sourceItemId": "qCV7usamANkZlOX9", "tags": ["Sfo95HgXqKhTPkwf", "LM9uSybRzWek2gZv", "Rrvr0n9d9lvccKML"], "type": "hrTrcBE2ItBS3KtK"}, {"customAttributes": {"ZWe8aoFzAyBME74H": {}, "UtipUWYhWV1qx8Cz": {}, "PML52faXUr9Sk4lq": {}}, "inventoryId": "2faBcAXXKlhvyH8p", "serverCustomAttributes": {"aOJtxqMPpcVfRwNj": {}, "547fH0XrKEDpEY8V": {}, "nocGAjci0V3tBf2j": {}}, "slotId": "nHGKXphn50c9tNLD", "sourceItemId": "ljhZ2jxLRX3z46OC", "tags": ["aGBeMfPlNos4yBRj", "rERHEonAZR8GmEu0", "q1p6QCyY6vSkVFWd"], "type": "sbYuVEGVxYheR3j5"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "aZPV87pna08gxefT", "options": ["YKhuxaEc7M4P7Uck", "SC6ePeN8i4GrFES9", "z7xueHpATHccee9G"], "qty": 31, "slotId": "hKcjmSEwdrkEnnqK", "sourceItemId": "zFsLfYalUlfwEQKj"}, {"dateRangeValidation": true, "inventoryId": "eHGebSVu0LQ40kep", "options": ["EaC4dfiOMZfEhHr3", "9pysFO3Zvc1BZG99", "LyvfvHEsJKQQewVL"], "qty": 78, "slotId": "hob44lONDDwMvgI0", "sourceItemId": "HlyPR7wZNiVsF6xG"}, {"dateRangeValidation": false, "inventoryId": "mXEQdbzIVy8alncV", "options": ["7vWgSHdfo07UctPE", "rqxyMyOK06MqQBEr", "xgjVBycvU4PbmRDc"], "qty": 36, "slotId": "KqymxLD1Lcvw6T6m", "sourceItemId": "ZEiwxxElpMYSWIeV"}], "createItems": [{"customAttributes": {"zm7z9noowmlTIKVo": {}, "wi0RY2VN4ZONJREd": {}, "UQ3z9F1BxNNgnke4": {}}, "inventoryConfigurationCode": "akncw7wu9TmXfJWB", "inventoryId": "Prx9Ns8eLzYEvwSW", "qty": 94, "serverCustomAttributes": {"dA3QhjCMW64f4XhI": {}, "jSoTB2NMKtezapPr": {}, "2QEPx3zTxBGtEJIY": {}}, "slotId": "ppuUSsKoHw2hyd12", "slotUsed": 41, "source": "OTHER", "sourceItemId": "0dW8rX2MVUGKSZ4G", "tags": ["cLkt4pK32sJxlZcC", "TpTdRtCHvuk6B6XT", "mSLyn50sigBVZxiK"], "toSpecificInventory": false, "type": "6x2PyYDo5R3hLiD5"}, {"customAttributes": {"sf5y1JsxJNGmyt0S": {}, "QDUDoWBZVGLlkUet": {}, "zCAWc9x1aMjgGim5": {}}, "inventoryConfigurationCode": "1T107XIZRZ7tZdIs", "inventoryId": "0xf4czdt7zqmSKxO", "qty": 62, "serverCustomAttributes": {"8nbLzvtCIW5ynMKq": {}, "uUicAeIVXtoWAXhM": {}, "lW4tLqX7OICf5oD1": {}}, "slotId": "e6oI9FmYel0kOw72", "slotUsed": 30, "source": "OTHER", "sourceItemId": "8Zkgk0jS6rDWUwfh", "tags": ["Kvrf2AaH4yCWrHSp", "pnIZkNnTn3rzH5Nv", "AtcvNedgS1fUfKmi"], "toSpecificInventory": false, "type": "a0sZoFS6xCOWMpyh"}, {"customAttributes": {"9pMsQgb64ELbzDMw": {}, "yo4nIRysQdbufXjY": {}, "nSoIFeouC2m38kXr": {}}, "inventoryConfigurationCode": "DZWlGVE9sJ4NpUtK", "inventoryId": "p6M9I6nEwnZhsjwJ", "qty": 9, "serverCustomAttributes": {"tDYBo4FUTH7CGfKS": {}, "yxgRR1DiCqSMzpqI": {}, "FGLkDs7ACC1RgBfo": {}}, "slotId": "NrHlFi2qJLgmBLE3", "slotUsed": 91, "source": "ECOMMERCE", "sourceItemId": "evO0TQNEI3kfabxJ", "tags": ["WWSI1ECUo1NPpeFh", "UztXDgB7n4C97uAP", "P8PATLpUpxeJlsBJ"], "toSpecificInventory": false, "type": "P0W9nBhvhf8Q0DtJ"}], "removeItems": [{"inventoryId": "McYQdN66bswAgt65", "slotId": "X4N1LQZmB61JMdtw", "sourceItemId": "CVUrYQue84dwmbwF"}, {"inventoryId": "EnAZaWsQJtRYoagR", "slotId": "JK5PX9UcOvhPyE11", "sourceItemId": "TRT2SKseoe8VLie0"}, {"inventoryId": "LBa36KNzjf005CXN", "slotId": "GehQ2aTjTDfKFDXC", "sourceItemId": "7eGL5YhJDWh9YWqc"}], "targetUserId": "0qgV6d9yOfIMLds2", "updateItems": [{"customAttributes": {"DbPcaoMdtRLTmSvT": {}, "kQQgB7exYvmHMxr5": {}, "hPCJJztJBg0tTJg4": {}}, "inventoryId": "6IewOXE2AkCh3QIZ", "serverCustomAttributes": {"sUf8lGFXcmwTERHc": {}, "lOdxIwqejxe18rNd": {}, "b8Otq6j1mqUav7k0": {}}, "slotId": "5HAQltnSojV4jT65", "sourceItemId": "yclX2FtAz0vJjFIY", "tags": ["WOaNdsimmkW2miH3", "xRHAKy4QxZkaXZ7v", "miEd0JPxVyQpshaD"], "type": "wNqTbbFMXAMfVXe0"}, {"customAttributes": {"GZeMgsRsmH1EQrYm": {}, "kPKTPOlhTtSiZNCx": {}, "uogFteTHJe4BhSSQ": {}}, "inventoryId": "kQD6WmOt6D7ufFVT", "serverCustomAttributes": {"OhvQpfbBke8aEdd3": {}, "6xj6wySoltDxsbzx": {}, "rlaKEfkoYjY2o6ou": {}}, "slotId": "RW9UtNquwC3Wgumr", "sourceItemId": "Iz4NhGztZpr4U4fw", "tags": ["QIiLXgmRasvjO4lj", "8m3XEwP2b4gd3xOe", "ii8Jnmssep2xD2NY"], "type": "0kABeGs9yxahld1p"}, {"customAttributes": {"O0Gyf5PO3COyMvcz": {}, "gEpzZ3FbtxfhcRC7": {}, "IVYa6iZ5uFRYNn3S": {}}, "inventoryId": "HiWxF0YbuU5ar5qT", "serverCustomAttributes": {"LWUCy0Afgc050XIZ": {}, "RW491e94mQjVOOBn": {}, "IWhunElqZUodp3Ih": {}}, "slotId": "tCSHy1ei1fIrPvfH", "sourceItemId": "nRN06EjRwEQlNapJ", "tags": ["Rfk4f9Zcw1pEHAyN", "FxcVTKuAQTGh5Bxj", "WOozGoDtsUuYo5p8"], "type": "ED5QZAufwNa8lzfj"}]}], "requestId": "v9oYMXMjlVHY1AHw"}' --login_with_auth "Bearer foo"
inventory-admin-list-integration-configurations --login_with_auth "Bearer foo"
inventory-admin-create-integration-configuration '{"mapItemType": ["F3vGoav7MK0PcLnE", "kcokKwcQ0baDT9Oy", "J2h23GUS2amU7syG"], "serviceName": "lElXdEAOrVSnLocL", "targetInventoryCode": "VVYamQc4wcG5nDBL"}' --login_with_auth "Bearer foo"
inventory-admin-update-integration-configuration '{"mapItemType": ["JoJHbiQ5duE5p4cf", "s2E41cK8QTwiIAvx", "SvNDlmM5nQFMGzs7"], "serviceName": "fzjgyc44mEh9tRk8", "targetInventoryCode": "knYSV30lnroQehMD"}' 'li6t9unQLYXxm09w' --login_with_auth "Bearer foo"
inventory-admin-update-status-integration-configuration '{"status": "INIT"}' 'qthRxTjQ7gkZEY8r' --login_with_auth "Bearer foo"
inventory-admin-list-inventories --login_with_auth "Bearer foo"
inventory-admin-create-inventory '{"inventoryConfigurationCode": "G0q0Q2Qd2JzRbkF2", "userId": "I03dIjvBbA6bfbYa"}' --login_with_auth "Bearer foo"
inventory-admin-get-inventory 'JCJjfk2TUvn95FhO' --login_with_auth "Bearer foo"
inventory-admin-update-inventory '{"incMaxSlots": 98}' 'TDm5GloFSKWM1eym' --login_with_auth "Bearer foo"
inventory-delete-inventory '{"message": "5ydC6p25xCWTqUOY"}' 'ZENJ1QHZQxPRXH7u' --login_with_auth "Bearer foo"
inventory-admin-list-items 'xBJEECQE1li3Bg7J' --login_with_auth "Bearer foo"
inventory-admin-get-inventory-item 'xc9pUnZmvhidwCkZ' 'wqjYLfTiCO1NDBvQ' 'vRPnAz4VzW0CpoBC' --login_with_auth "Bearer foo"
inventory-admin-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-admin-create-inventory-configuration '{"code": "byJsF5IjF1c0W338", "description": "HS6CBgVRyihYNZ84", "initialMaxSlots": 57, "maxInstancesPerUser": 97, "maxUpgradeSlots": 18, "name": "hziXV8HwSmvcvcDK"}' --login_with_auth "Bearer foo"
inventory-admin-get-inventory-configuration 'F19yVRafCjOuSYht' --login_with_auth "Bearer foo"
inventory-admin-update-inventory-configuration '{"code": "83AdvBaagTiRJ8da", "description": "GTVX3Bb7jlz5IfHg", "initialMaxSlots": 75, "maxInstancesPerUser": 19, "maxUpgradeSlots": 81, "name": "I9mwJSrN8jkIykR2"}' 'zbaI6PD7fEscShnG' --login_with_auth "Bearer foo"
inventory-admin-delete-inventory-configuration 'UGUtV9GJ279GDbLN' --login_with_auth "Bearer foo"
inventory-admin-list-item-types --login_with_auth "Bearer foo"
inventory-admin-create-item-type '{"name": "wjm3FK0nnX2poMfZ"}' --login_with_auth "Bearer foo"
inventory-admin-delete-item-type '1hDHtbh4HtMlFgvh' --login_with_auth "Bearer foo"
inventory-admin-list-tags --login_with_auth "Bearer foo"
inventory-admin-create-tag '{"name": "2Dp2SoiIPp1yvfAH", "owner": "CLIENT"}' --login_with_auth "Bearer foo"
inventory-admin-delete-tag '0VgLu11A3HTovFi4' --login_with_auth "Bearer foo"
inventory-admin-consume-user-item '{"options": ["tPAGfleyCA6jEtcq", "snzoVILjkwW61duF", "87aUyrdt4XSpWBAe"], "qty": 40, "slotId": "yOVgvnWbfRJtsB7c", "sourceItemId": "UQZ2QUAxJrINPXpp"}' 'PNO3AfmXcgwC3IN6' 'tvKgLB9QmJIOq9dP' --login_with_auth "Bearer foo"
inventory-admin-bulk-update-my-items '[{"customAttributes": {"5szG71utjsQ4CrRb": {}, "9gUCeVz7fWbZIdhe": {}, "vfZvyV7AcodcZwKj": {}}, "serverCustomAttributes": {"YDdmJOlzwm9Su4Fn": {}, "S98QqftSjq7sn8yr": {}, "eciPLfkVyyJsbGpO": {}}, "slotId": "6JgehDJxEN7JlZc8", "sourceItemId": "LMq1o2jZWu4yA3r0", "tags": ["u4q1bTHXIjfJKyFl", "M0u1uuoVdn9yVoSl", "KNchPHNL4X3LLaGP"], "type": "GdqLE8SohhhuiTnJ"}, {"customAttributes": {"arYYkHBDdSzBXdxa": {}, "pwhd5IQYBQuxLvPu": {}, "WYvE3fsNy9Z9OhxX": {}}, "serverCustomAttributes": {"vCp9y7fLD2qfCXnl": {}, "UnqxT1WsRNMZcA92": {}, "hzC7MNa8vVe4MHX6": {}}, "slotId": "AgMep90AyyUJyAK5", "sourceItemId": "PRMRMwdvl0hv6g62", "tags": ["GxBW2tQF5tkTjgJa", "MYvNQOsDa4bkcgep", "qtxjbrztee7QLTGA"], "type": "ak7Kaol01DK97D2x"}, {"customAttributes": {"nik42miteR5eQAe1": {}, "rzmmgqBPRmd6mO4o": {}, "I8KDqebm83raNBJ5": {}}, "serverCustomAttributes": {"y7axEkvI4oxZEDxG": {}, "iBnNbn0zaf7CaOSl": {}, "HXrUSA6sMJzA5mtq": {}}, "slotId": "ISQ83TTbtefXWznD", "sourceItemId": "e4LQdXfFBii2RAME", "tags": ["X5RMjBFVZGYzQqV8", "d9mDdUIoiIJFNxuN", "OmUSWw18T1IxVWCx"], "type": "dvPL9e4P01vxP8xj"}]' '1LyEirURERnEMzpI' 'mW6sjAHyCK5tNanG' --login_with_auth "Bearer foo"
inventory-admin-save-item-to-inventory '{"customAttributes": {"BrkzUvck3xTtmOFM": {}, "ebS4AdlNzwog2IhE": {}, "rkNhNcECWwchW6zL": {}}, "qty": 63, "serverCustomAttributes": {"SkbLlrNXnGanMazb": {}, "8jvRWenURH48aJuA": {}, "LEcSqcE15u6D31Dj": {}}, "slotId": "Osrs3CUYATdqnQGb", "slotUsed": 34, "source": "OTHER", "sourceItemId": "iqOkNeATj7eGjodd", "tags": ["7CcJUrI6MAugK5ky", "pNrp2nFe9FmN86sK", "5LOq4ft5jGcMICPU"], "type": "YnfG6jl9U4jReteI"}' 'MgzISomCsodJrhQW' '41q2OspCZbt3Uta5' --login_with_auth "Bearer foo"
inventory-admin-bulk-remove-items '[{"slotId": "I0uGcL1koyHjCH5o", "sourceItemId": "lYLETRpABAmO2EGv"}, {"slotId": "J4UMS93yOxNInDBy", "sourceItemId": "hnoluO6ti0QP2ssi"}, {"slotId": "J66OzOj84O6tgohj", "sourceItemId": "tC7bzjPpucddXJ5z"}]' 'ifF8y959anrNSley' 'wHbHig6IKWVZ77Ke' --login_with_auth "Bearer foo"
inventory-admin-bulk-save-item-to-inventory '[{"customAttributes": {"RWdECaFGzfZ2hxcJ": {}, "2Fnemn7M23SzUo4h": {}, "NBDh9ZFP1OW0nXOE": {}}, "qty": 35, "serverCustomAttributes": {"88ySNq4Mj7mulP4t": {}, "Q6R1OqKVOTniBgLs": {}, "NhdgQ0JWZjNRSzOT": {}}, "slotId": "qcVNX3ahvxw9gwwh", "slotUsed": 94, "source": "OTHER", "sourceItemId": "njN6wKZGW4y3f0R9", "tags": ["s2kndhhZhwAiLsZs", "4pmLDIQch4IjDq9a", "T3qZyI0rYsWucAkX"], "type": "sVJbXi7eRZa7WwIc"}, {"customAttributes": {"895ImqK6tVsaUq3s": {}, "tUh5J5Z9GiBiSAyl": {}, "X5cS0IeHpWCugmfO": {}}, "qty": 78, "serverCustomAttributes": {"tPfds1BYx0EaURyd": {}, "f8ZyyZeHAWGgJUbU": {}, "JRMbkcTglbU86FyO": {}}, "slotId": "jApNHBVfNOURcjY3", "slotUsed": 68, "source": "OTHER", "sourceItemId": "9oTynmfIuBWgJTNF", "tags": ["fM8M0IW4oe8KDgy0", "xZfAcNg14Ws8TIP1", "LKiFQoLDvumfqrgS"], "type": "fnx2h61X9dN1MGRX"}, {"customAttributes": {"BJ6mVV7JS9qjNLwv": {}, "I8JdiY3RRiLilmOG": {}, "F6dLLIeIVIjMcdlb": {}}, "qty": 7, "serverCustomAttributes": {"4X67tPZSTpPq3xjr": {}, "ElvvDgw0ag7kSWE0": {}, "Hiqm5IuLryiEXqvU": {}}, "slotId": "WDjU1G0EVjVZw1To", "slotUsed": 77, "source": "ECOMMERCE", "sourceItemId": "uPakQN1MpOs1RVFr", "tags": ["cg2CXxepx78fvsyh", "E2BKtyTDSIM7mkmv", "Z7Cmsh4US8o4jfMA"], "type": "NPpmZDdMiCxmuCCV"}]' 'uFjS1GC1d2b92B4v' 'Egj3HOmhcWm428Xe' --login_with_auth "Bearer foo"
inventory-admin-update-user-inventories-by-inventory-code '{"incMaxSlots": 20}' 'kz96vd80msqIm5bu' 'fnBqrpLeqhwVhjnn' --login_with_auth "Bearer foo"
inventory-admin-save-item '{"customAttributes": {"jKMEmtbiWsAQHbMr": {}, "KYi0Zxs5SWCqZXHL": {}, "La31oQf7BULnZDhu": {}}, "inventoryConfigurationCode": "tDM6BqguqD5xxGxB", "qty": 99, "serverCustomAttributes": {"hXu6opxQGRt6Pqlk": {}, "L0diRhLC10ih2EQf": {}, "Y3XCv4hdOa6FdZhN": {}}, "slotId": "Md1onFjGRbxtABPX", "slotUsed": 61, "source": "OTHER", "sourceItemId": "mgNEJBhgGq5GIDhN", "tags": ["C66szbCCf73IFbRk", "PSSITz4TjCrJHXGX", "ku2YVuOzhxHmnrrV"], "type": "9ZGWrZ05sxe6A6Rp"}' 'mKDebNkylbynkgT9' --login_with_auth "Bearer foo"
inventory-admin-bulk-save-item '[{"customAttributes": {"vayLLiizac7Ge6zK": {}, "Jdlt7rjF5RaJwvkW": {}, "Vco2LTo5ijlvDF8q": {}}, "inventoryConfigurationCode": "BWCQ9dLWYyS8zdhM", "qty": 9, "serverCustomAttributes": {"5anIloyj9lhbvuQd": {}, "W2jwKUckc794ryY9": {}, "1lX8DD4MYXlrJ81l": {}}, "slotId": "Hvv9rqvEoM8YmVjA", "slotUsed": 21, "source": "ECOMMERCE", "sourceItemId": "3HKsEp6KlqwW4djr", "tags": ["excbHdEtoQvpV344", "RctmTozCi8HeV6jb", "alHmqBBfi7sSF5Bo"], "type": "GiTCVsXsygWbjE2o"}, {"customAttributes": {"pXtdsJQeJ1too0qv": {}, "xphTLEEBGTtZyTjd": {}, "KNKgYazujsmSmylT": {}}, "inventoryConfigurationCode": "1YtxIq73aMb48jIS", "qty": 7, "serverCustomAttributes": {"ViEdqQpoGkUWNizk": {}, "5UcPAGv6c1ESC6hZ": {}, "YTYZbzf5aANNNs5k": {}}, "slotId": "gSZZNUHbIT9szApm", "slotUsed": 100, "source": "ECOMMERCE", "sourceItemId": "JO5vzzXZj08a6K1X", "tags": ["RVfriSpPFnZBJZkD", "nEiyfa2LrnpZxNnL", "RH36bqS2oFY76PU1"], "type": "AziBOHEAj1cT3u6Z"}, {"customAttributes": {"c2FbrTFznTgDIwZI": {}, "RWf6T3by2kYSCdnF": {}, "KLc0xcTjqjdcEfU6": {}}, "inventoryConfigurationCode": "1OJYMnW49rWynp1c", "qty": 21, "serverCustomAttributes": {"9vQe0dHJfF6KIuvn": {}, "RCa9JktyBdxkZKrE": {}, "WFw9GYxjiiOQAD77": {}}, "slotId": "ci0vfWVZoRRMPi57", "slotUsed": 70, "source": "OTHER", "sourceItemId": "kb5aBi9K9zyv6gFZ", "tags": ["XI5nXJ7hLi6Hwewe", "Rmyo91dIn7QqXBDX", "JcrqKmXDwoEV6tCd"], "type": "rxw1KOPhuvHuYrGW"}]' 'DK41uMOC0mRvSoaG' --login_with_auth "Bearer foo"
inventory-admin-sync-user-entitlements 'k4ktF5wnJDg9Q3WX' --login_with_auth "Bearer foo"
inventory-admin-purchasable '{"entitlementType": "iydCOInVolsr6CHm", "inventoryConfig": {"slotUsed": 19}, "itemId": "aGfsD1cfswmeFpvt", "itemType": "DtetoQVFL8LNW11v", "items": [{"bundledQty": 39, "entitlementType": "SFZ0LpupEi5DbkVs", "inventoryConfig": {"slotUsed": 2}, "itemId": "qFTi1t530Wj1WfzI", "itemType": "vc3VlSXrA3XUGud4", "sku": "tVjmxEf4XvVhFJTx", "stackable": true, "useCount": 70}, {"bundledQty": 97, "entitlementType": "ITBg9x4unq3eOMHI", "inventoryConfig": {"slotUsed": 74}, "itemId": "UDe4g7q6PHEaqbzH", "itemType": "vDDl1jiLw3XMGBA6", "sku": "JXDpA1tIC45C0oaG", "stackable": false, "useCount": 43}, {"bundledQty": 35, "entitlementType": "Fu4hXONgUwJnUpry", "inventoryConfig": {"slotUsed": 60}, "itemId": "BhrciryLm67rkadH", "itemType": "5Y41SLjCPrFa05Xl", "sku": "5TPC5GODS44bmm7j", "stackable": true, "useCount": 6}], "quantity": 89, "sku": "KLddfdsUqjXVzW1Q", "stackable": true, "useCount": 49}' 'xnWR5sheLgsAF4ct' --login_with_auth "Bearer foo"
inventory-public-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-public-list-item-types --login_with_auth "Bearer foo"
inventory-public-list-tags --login_with_auth "Bearer foo"
inventory-public-list-inventories --login_with_auth "Bearer foo"
inventory-public-consume-my-item '{"options": ["v5guycGiq9j2EyIk", "nfLDpgHnMOn8nc3g", "UZ8ZFyyEr0KBXuJB"], "qty": 34, "slotId": "v22M18uux9xBomQF", "sourceItemId": "PFWy5cwNPI6aFo0M"}' 'VwDZCIXFNEL3uWVR' --login_with_auth "Bearer foo"
inventory-public-list-items 'z3V7YbJM3bNLWHAb' --login_with_auth "Bearer foo"
inventory-public-bulk-update-my-items '[{"customAttributes": {"CZixe2cQ6O30lpzc": {}, "BQMAEcNcJqrKxnMz": {}, "SYoc4ZjiMY4H34B6": {}}, "slotId": "wVd8ipcKDwQeUWtj", "sourceItemId": "CC2UH6jzMO3AfmOS", "tags": ["5mQNyRPZFPNP56l1", "AT6OLKmZhCZxxPPd", "PwOtEuWBSO2jJepU"]}, {"customAttributes": {"nEEgja2mIE2kLTnJ": {}, "wc5XmkCuL5W4tKt6": {}, "G3j9LYdG7xVPqBqe": {}}, "slotId": "9RDQMBSYAFLqp8PF", "sourceItemId": "5hCcoukWpnbz4ys7", "tags": ["j6lxuU3u2HEG0qfK", "egvFTD1sPykS8YLm", "wtYgWGcA0h4G1LZ1"]}, {"customAttributes": {"HaX5UBMbsF44VTsL": {}, "DRzdq22cbnyK3ggF": {}, "Dh2kaZP7pnnVfxPw": {}}, "slotId": "c259HF9ejHaILQru", "sourceItemId": "AuYyJLYGqMv824ou", "tags": ["SgkpK70uJmUL0uzE", "lixc023dIvDiA0tQ", "WlHwBcTtztx3VAl6"]}]' 'tXFbnATCzUOIzVcy' --login_with_auth "Bearer foo"
inventory-public-bulk-remove-my-items '[{"slotId": "9k3ie64Vnwa0ClGQ", "sourceItemId": "JultJe32AiwKadEo"}, {"slotId": "IVmprwPsa9YD92CX", "sourceItemId": "0rITajpwHITGeHTn"}, {"slotId": "qRbzBB9ZFgJbQ3Fj", "sourceItemId": "1umx4ItzkMJ7cudf"}]' '4r916GPrhn2etVIQ' --login_with_auth "Bearer foo"
inventory-public-move-my-items '{"items": [{"qty": 45, "slotId": "lJ80YJ41U4ooQ980", "sourceItemId": "ywmg1pWpWit1QC7F"}, {"qty": 74, "slotId": "fyIlAwjTZdRZJJzW", "sourceItemId": "ZwvTX2bamSCvX1nw"}, {"qty": 44, "slotId": "mvK9gW596FwBNrFX", "sourceItemId": "t3TAuKBwBcD12ae6"}], "srcInventoryId": "r3hHwya4NpdOzg3h"}' 'r6ucHf7dbh2iKNUl' --login_with_auth "Bearer foo"
inventory-public-get-item '0qJqzoKMRMG541PA' 'iNjULsx4SnKNXLMU' 'aDSwwQlnNRZJHBSB' --login_with_auth "Bearer foo"
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
    '{"message": "4fZWEFIZs28Ff1kZ", "operations": [{"consumeItems": [{"dateRangeValidation": true, "inventoryId": "Rvae4f4lhBPbarbW", "options": ["Em8bVtZcfVCPdQhi", "m9QKUAFTVYelIlGJ", "g9wdc8bihhWjfZpf"], "qty": 4, "slotId": "v0BJ9Sgl7H1sdH2R", "sourceItemId": "IJz1eI7Q5pu9PutL"}, {"dateRangeValidation": false, "inventoryId": "hddMzMTQ9P7sYLDW", "options": ["AJOA75K4BYJ2fkqY", "JoF2FI3vyyqRzc20", "O7FdsJP1G9tyBTfE"], "qty": 89, "slotId": "KzuMYDUTLBeCidXj", "sourceItemId": "uGgx8ncXejmeZtzT"}, {"dateRangeValidation": true, "inventoryId": "qj0ltsqfiZrthVvy", "options": ["X0OCKDJE3RMUddwS", "SgxCu8zru1DhGAYO", "HR5BWa9VzIkaQEl1"], "qty": 17, "slotId": "weLlT2sY3SsTnDQY", "sourceItemId": "7kKU2u06Q4veujxt"}], "createItems": [{"customAttributes": {"yQENvJrBCqeg67d4": {}, "RWOqO4U0bitNQLzw": {}, "RoWnR0AbkCPY70Fm": {}}, "inventoryConfigurationCode": "vviVIBbcujF8Vk5q", "inventoryId": "b8NhWWwaxyMchkt8", "qty": 24, "serverCustomAttributes": {"PXM6XTUh2dJ90yqH": {}, "DNacl4F9G6Dl5TFw": {}, "BY6HKXAblkT8VGgS": {}}, "slotId": "H8MGZGwiVj7eDTak", "slotUsed": 1, "source": "OTHER", "sourceItemId": "3nTMtXSAyejnny0J", "tags": ["u13b6o5uB2XM6IHy", "7EEvHyLmcvrZZOdw", "e1x8RjU6Bi8JXE52"], "toSpecificInventory": true, "type": "JovgWSRxZ8N4UQ2f"}, {"customAttributes": {"g3V1o2x0hL5DuBDq": {}, "MyIAzWze94MEdJFA": {}, "y2JTllJkRGB8jqJE": {}}, "inventoryConfigurationCode": "d6eqqsBVyONV0JRt", "inventoryId": "ozI0jpliCFQ6WgJp", "qty": 67, "serverCustomAttributes": {"w5uBYeQZOzATNSV9": {}, "E9yyNb7yaLXzAVYy": {}, "mOuhCkZu4htrsf8e": {}}, "slotId": "IFSovTGXaMsq8ePN", "slotUsed": 32, "source": "ECOMMERCE", "sourceItemId": "tECGd5cdXC2Sesc6", "tags": ["y68whNBYl9iCqfW6", "rqGOQny4ij4ysYPo", "nb59gQffkNOmubxE"], "toSpecificInventory": true, "type": "Qr3RLOM1vEx4gqDY"}, {"customAttributes": {"6jwyKRxhkLe5zohg": {}, "9s9utRQt28b6o3K0": {}, "COF74tz6aeXZOYwb": {}}, "inventoryConfigurationCode": "wjMNdxKWlBfnRyFS", "inventoryId": "0Ed7gTM5AVrtBQiD", "qty": 94, "serverCustomAttributes": {"xN7HDPTUEDPN1Kb4": {}, "UTPWDXTSb55g8LST": {}, "s7Nf95lGlPrf6obI": {}}, "slotId": "dnI6Ag7eUYcYJ4Qz", "slotUsed": 46, "source": "OTHER", "sourceItemId": "0X8fBuBSKLSQ4GvL", "tags": ["tz50D3rpBfBovqLw", "XBuT30EYeRj17xGh", "aBKoUfiHjGmCyPsK"], "toSpecificInventory": true, "type": "etWsokvx3BHuTEcz"}], "removeItems": [{"inventoryId": "r9KjQ3ttz8MTBt1x", "slotId": "k9IyssSA8nP5PQjp", "sourceItemId": "zk2Tb7iYdmNZWosr"}, {"inventoryId": "sVBPZ64j0HUONsco", "slotId": "fwYLQcDvkaEIIPoJ", "sourceItemId": "T83zEGXmVBZLyrH9"}, {"inventoryId": "J7BoysmaORLkP5hc", "slotId": "2Fh04JTsqDTynCew", "sourceItemId": "qJligLlRxOelKykI"}], "targetUserId": "CRxF6HtlER2txs4q", "updateItems": [{"customAttributes": {"rNARATn6KXOutlYB": {}, "bLhL8KXx25FZfQIo": {}, "dVBqQsBpCJBIXLGY": {}}, "inventoryId": "cwWVRK6UKk5ozrXA", "serverCustomAttributes": {"4HZHNyq9odanhR1Z": {}, "rm3thUvV87yfkycL": {}, "SVdleSaAylsmLYe2": {}}, "slotId": "phYOgT5kDTyPl3dK", "sourceItemId": "F7NXEjrJMki8jvc3", "tags": ["P8Gwjg3IOH0SDHgY", "KqxJiFJdrmj5vhzg", "sJwex7wq8ZPlXNaU"], "type": "NgdY2vfJuje5cPnm"}, {"customAttributes": {"GjTvYa5Pqx1K7qcA": {}, "oijBPAp6EPb988Nz": {}, "xrDKVpULjjiw3NeV": {}}, "inventoryId": "G4DJi9DaMrc0WFgK", "serverCustomAttributes": {"jE945x2CPVYYG9Wv": {}, "oGmAmvaVV5YfxnUN": {}, "cwjr7gSGhnfuF4WZ": {}}, "slotId": "iQVICVpWd3UM08gM", "sourceItemId": "Xhdf3juXW4JprIb3", "tags": ["CJCAtvSG8Cfa9dzO", "JDGCTHIOFjeXbsSg", "R43kIDzxBwqRJTzr"], "type": "HNZWUsq5lQo2jy29"}, {"customAttributes": {"EJigqYhyVhURx1yP": {}, "eczRpdk0HATGylx2": {}, "JG2KNGfhzfCTxxrs": {}}, "inventoryId": "RRLee3TcJ7DQIi45", "serverCustomAttributes": {"aCDHN9mVug2zkVf6": {}, "KgpKOcn3tMD9UT67": {}, "bOwugFDa6wUQvehK": {}}, "slotId": "qwCh86XmRkCEcfHD", "sourceItemId": "Cdl59Wp9A3tXGve6", "tags": ["DdK6uvg8f2cIoByk", "9fxtvsgeAxo57nKA", "bZpsbJ4Iu5KJ0ynx"], "type": "GBlacDCdFe8ATUqV"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "CNlFoOcWQQy4bjmQ", "options": ["eEweoBHTdwAk7ZQn", "bqY1cQwVEtAr5kKK", "Ao9MM2Cqm84jVi9k"], "qty": 71, "slotId": "CpLCqPD9CeDEdCnn", "sourceItemId": "L6Kt1Bjj3b8QM8Rr"}, {"dateRangeValidation": false, "inventoryId": "ULqXQgvwD3PsKDJi", "options": ["WxQBwaS7rDBf2S54", "phbdyGDt47f9GWRl", "E9hqz6rjDNo4rhjx"], "qty": 96, "slotId": "osluiHZJ7O8sAQ32", "sourceItemId": "wj9uaDzsr9xYiWRu"}, {"dateRangeValidation": true, "inventoryId": "AqXUjNypF6MMqWpd", "options": ["EJsPoaIbYz8cK5jl", "pJdre5ur6yvWJDdv", "M7T7PX2vamIRZHzs"], "qty": 71, "slotId": "inxAM77eY9C14Fbf", "sourceItemId": "iI2NPvl1kCY5bEok"}], "createItems": [{"customAttributes": {"xXxkWZbjf7GZxaos": {}, "sQmjo69wohJFyTNk": {}, "5FGUPhR4LEZvz3Ej": {}}, "inventoryConfigurationCode": "FR7996Ug5m4axDV5", "inventoryId": "uTcYsoahUrELQ1bt", "qty": 19, "serverCustomAttributes": {"F7v3qbZu9M3OxqVA": {}, "T4H1lRZ9Z1JBrHRz": {}, "EOtIxzPqb6n73m0j": {}}, "slotId": "iaDH86d9rsKgzCsM", "slotUsed": 41, "source": "ECOMMERCE", "sourceItemId": "7Mluexk87b9Z5BTs", "tags": ["EA3EdmW8saabP4xR", "owfNojzPXI2v0prR", "3OEey0MkZwS6TYwN"], "toSpecificInventory": true, "type": "Yhic03qGEg5fNzBV"}, {"customAttributes": {"rjo3g8CfRwtyl1He": {}, "T7VEPgG40QyXzsOz": {}, "gck078IghoQBp2mW": {}}, "inventoryConfigurationCode": "AOYksczxBS0OBCa2", "inventoryId": "vWadLmQtYKmEMzic", "qty": 4, "serverCustomAttributes": {"wdOMdupwD4O3uNbc": {}, "IDcIyvZbOy1T4hfw": {}, "kuVykH4RpfmjIXFG": {}}, "slotId": "Z5PKdbabJIkNnt9P", "slotUsed": 94, "source": "ECOMMERCE", "sourceItemId": "km08luh4dpPRMDbU", "tags": ["XBWTbpAogG2wlZkL", "huU5FI8NijFI0GKw", "J3vfXlsAMy2Zp2UA"], "toSpecificInventory": false, "type": "xHnmSxvkG9UR5q9n"}, {"customAttributes": {"eoW6JBcGp9Rx2Rfc": {}, "RhXpmeeHdvphas9S": {}, "7ivHEoLbUMM47f1U": {}}, "inventoryConfigurationCode": "reUpxEkXIbE1ETzR", "inventoryId": "JZKMavu4Ul2IaieE", "qty": 3, "serverCustomAttributes": {"27bojDVaZLpx4kEW": {}, "YkO6KrKUMhJrASBh": {}, "61hmWKSSrF35anDG": {}}, "slotId": "vur19V18oIrUKXtt", "slotUsed": 12, "source": "OTHER", "sourceItemId": "oe0JaXFpff28uYbe", "tags": ["4Cf2HEHvVevhISjb", "tBJUK5fE3OufPSX3", "PdOU2V9yw94oa8UJ"], "toSpecificInventory": true, "type": "TIedV3HyoX4VnO2L"}], "removeItems": [{"inventoryId": "pBU08wfnlHBXFIqF", "slotId": "UmgUSMM5au8GJT0m", "sourceItemId": "kVPI6zUtf3QaJPGr"}, {"inventoryId": "TNcXXTUIggoH89QN", "slotId": "mI17UDb19R6H7r1t", "sourceItemId": "a3m7jK5pxe82pgFi"}, {"inventoryId": "AS6piIzmc8rKrKEP", "slotId": "GSAcong6eNERUf8k", "sourceItemId": "jci1Ctccv9Gv4tOc"}], "targetUserId": "bnuCqf0lm6WBkIzj", "updateItems": [{"customAttributes": {"oSV31tvmMB6jzrpR": {}, "GESmooHiCV4GUOnX": {}, "papXQGRakUbcG7Pc": {}}, "inventoryId": "R4eiU3Idi55jNrGN", "serverCustomAttributes": {"T2VHTKuIT5FwwHj0": {}, "Ur5F2PWGTTD81xhN": {}, "P4t6kYBUjyXAn3bW": {}}, "slotId": "QF6QcAiJpXIrgroi", "sourceItemId": "xptZhckUTGkcBOE4", "tags": ["qMcH1Kyi8ZFvGcV8", "DY0XOkDstxZcY1Hg", "AnZV4IOglVLqb9lG"], "type": "AJUg21Lt7JwgwMUS"}, {"customAttributes": {"uC3Bajy3BcEMCtQs": {}, "2FcEcvVAyId6Cp85": {}, "HVDsZBQgOnXuXsGT": {}}, "inventoryId": "hYZrmm0wrFMnPpWg", "serverCustomAttributes": {"rQD4hEk0OLjYsnig": {}, "nE7KcMF7fuDbzRRY": {}, "MNXWUsp1tOibJY9a": {}}, "slotId": "L9ie6vvMbiNURrlm", "sourceItemId": "88QlKyuoya4JgakZ", "tags": ["yUV7t73VnSFbuxd4", "KYZ0jk0UZdhtnKu9", "oTc8pVkiyGsj5JdX"], "type": "zRxfNEjUMTs8WIOb"}, {"customAttributes": {"JBTsvsw76uISRX0b": {}, "KVoWtoUW1P7ocuBA": {}, "ldDSUS7Haa6unq1y": {}}, "inventoryId": "QOSRvyiLBRVtIDi2", "serverCustomAttributes": {"piIQFVmzMidw70KS": {}, "ahpYZdKZRyR9AX7J": {}, "jxvNZhM84DiZk6yS": {}}, "slotId": "rB9SVFctW7YS0OkL", "sourceItemId": "78XeEAtALFI3v8yh", "tags": ["a4pd5A7MYcpBD6lK", "Nb8RxvN2u5J7baOe", "LH19fqBwNbNe1ffY"], "type": "RtIvQaKyevWYtZjK"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "9v8MpBSpo3AKRmnJ", "options": ["kzJHAckUyBksYQfD", "m0RNFwiz70tRVLMl", "Hi8i9gOVqajUWrgE"], "qty": 38, "slotId": "X2TZkil67kRngoUa", "sourceItemId": "83ECh1gqPeS193TN"}, {"dateRangeValidation": true, "inventoryId": "kFN7Tpkx6GcfyOg6", "options": ["ZUrrp9ubg9mndW2J", "KmQafUs2bxYztOEy", "VbKIf1ZbzgUwd8DH"], "qty": 30, "slotId": "xlgjzIhpgOoIOD74", "sourceItemId": "V21HWDAfvXwdxbyp"}, {"dateRangeValidation": false, "inventoryId": "HAPbBbNPStVBUpKg", "options": ["OssFkz0F36piDYXe", "HZ7FHls3nyvconqb", "HQqKLQKe3xmj6s0G"], "qty": 33, "slotId": "3FGQn3Ahu5wxq6oJ", "sourceItemId": "q4mChmQHQhO9IKBX"}], "createItems": [{"customAttributes": {"DFQfXFD58sG6uDhF": {}, "YlrzJBYSeMuJfQec": {}, "utjS029BiJWOG1m7": {}}, "inventoryConfigurationCode": "MKclr5igjNTVItrH", "inventoryId": "2X78hxJgaVfw5Vny", "qty": 33, "serverCustomAttributes": {"kxZSc6VbE0AGcekj": {}, "MNHuPXtz8tXxrmza": {}, "fMUguyDoN91uc28H": {}}, "slotId": "oSpGt1g0GGbT4Hf2", "slotUsed": 86, "source": "OTHER", "sourceItemId": "KOldkbgX9CWJKwXX", "tags": ["Sbv5eg9q86IaDFjj", "x6uZerWbtwTX9gNR", "ByjbE8lOLAfTXKLz"], "toSpecificInventory": false, "type": "v8q4Thmq09bBgPAY"}, {"customAttributes": {"xrBE9jlnTgtgW33w": {}, "DwD9RKvQX4yFQFdr": {}, "RoM6FoqCYw7AlxO6": {}}, "inventoryConfigurationCode": "qdFpc71sSck3ggZW", "inventoryId": "JlSlCQMDji329PfV", "qty": 36, "serverCustomAttributes": {"hwlY4lPzlsCR5rVs": {}, "yfcH7WjP7HuGz3b5": {}, "WAEvdRF9bqMj4ro5": {}}, "slotId": "B19VE838c7OydVw0", "slotUsed": 52, "source": "OTHER", "sourceItemId": "rW8i8krFWJhe03co", "tags": ["RFok5d3AyGrZO8Gu", "oXNSoVEBG7VbBPUW", "ipz9C05YabFX4FCK"], "toSpecificInventory": true, "type": "ucTFsAFzaO3yJpA3"}, {"customAttributes": {"KMxBlrRytER1qdTe": {}, "lFAadM9y66Drf4SS": {}, "GGt3MiBKohow3kKo": {}}, "inventoryConfigurationCode": "aP1K4CDuH1mMIfOC", "inventoryId": "DyVAHrHncR5dShqi", "qty": 56, "serverCustomAttributes": {"oHFJ9Q0vqsL9Somq": {}, "WsGA76yxi0QzZWfm": {}, "P2sx0KO5bEJaPnAF": {}}, "slotId": "jsodyJQVVBrShGbI", "slotUsed": 71, "source": "OTHER", "sourceItemId": "WId9WlalqshF9Rh2", "tags": ["o7GCQGPCxwEdkyuT", "3MgzReRq0112ISAr", "ROIodcmM6v2AEozW"], "toSpecificInventory": false, "type": "QTRekLfjmy8zosRC"}], "removeItems": [{"inventoryId": "RgVwbrQKmb01yA7U", "slotId": "7dGMjupZkZQY8CNy", "sourceItemId": "T4k3DIbfT22G5NpE"}, {"inventoryId": "130YWSgxpKWtdtdt", "slotId": "VW9anENmxb9e7vXZ", "sourceItemId": "V3ig8Jg5VByeI3yc"}, {"inventoryId": "McYYBixKJXCISQdw", "slotId": "ec1m8BusV9tUh74K", "sourceItemId": "Vo6Xqjz2xUKLNWSm"}], "targetUserId": "YyVvyelIJ8QgaLMq", "updateItems": [{"customAttributes": {"i836ULa7cfZl4VuY": {}, "6rsZyo6CBRRnoOik": {}, "IxXKKIR6kPmswm5T": {}}, "inventoryId": "CAU1cKApdJDnE73G", "serverCustomAttributes": {"LmSZns5owBhoUg4L": {}, "sGP6KLPXkvUv2XiX": {}, "aBzsmaxjTZPlLity": {}}, "slotId": "tGka7Kv5TacQKF4O", "sourceItemId": "lRGdmXxETLEQrr3K", "tags": ["CAV9alq3hK1G4kKo", "oSNNUZuiynZ64Iwn", "cZPk82GF3eTC0vzZ"], "type": "UDj9dzGgGVxo9OHg"}, {"customAttributes": {"fHumyfuBNisecYbc": {}, "OpR45VDlvSc0Mr7I": {}, "mwCwGqOf0bNs97Kv": {}}, "inventoryId": "Kyj3MqS7Dcmtfh50", "serverCustomAttributes": {"eObbrmgjhWK0x0Zi": {}, "dAJ1CU1eD1La16Bw": {}, "3JbUnUDh5yGjjv4M": {}}, "slotId": "wrv2vancmR6Z7rb2", "sourceItemId": "1A2E9pX0BWCMqPsR", "tags": ["k5htdM5T3fDSrSHr", "koqv2mM6soMaTvQq", "2a9YdFNtRVSO0js0"], "type": "hG9xmSnzd7zgUxAo"}, {"customAttributes": {"gcnGkXk17QPkJHRh": {}, "mLKQuQVFSKiXl8G2": {}, "uf6E8EajXLSAS8MK": {}}, "inventoryId": "MaxQ1QyJCpKedhuz", "serverCustomAttributes": {"I7G9NCKKXu1bqI2M": {}, "5PmXfKnQ7BYGjCUD": {}, "MOrbmoRvWnfmGFy0": {}}, "slotId": "eUoOBd90h9EDqSTO", "sourceItemId": "foNewWjwMWDKEt6J", "tags": ["hbJ0fwTDaq6b5RpM", "whWPtndriXU9loOx", "pmEuwDVc12r0DVUG"], "type": "gGHkapTCafFMdvYi"}]}], "requestId": "CBuzUUwyI6Vtd4v9"}' \
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
    '{"mapItemType": ["k4fv3kMiuQ3DhsKL", "xjt5srPFxBgpFtDB", "mTLH9kP9U53z6joB"], "serviceName": "AhAlJGI2YYb6ajBj", "targetInventoryCode": "gq6eY4PBNHKPx62t"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-integration-configuration' \
    '{"mapItemType": ["HxDb06ZFy3uglSp2", "UxvF2uLXWilRD7HD", "6LCgdFxRGj00RT6L"], "serviceName": "vcnGMJbJIYLssMvy", "targetInventoryCode": "9gkfTMRrXVRcAVRD"}' \
    'X6gmDfNfPGYYSTun' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-status-integration-configuration' \
    '{"status": "INIT"}' \
    'KFLxIwKssw647YwD' \
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
    '{"inventoryConfigurationCode": "udnGRufOUGfMjTU2", "userId": "26l07jPlcYaqYM7Y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
$PYTHON -m $MODULE 'inventory-admin-get-inventory' \
    'fBmhjI9Y28qVceS9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
$PYTHON -m $MODULE 'inventory-admin-update-inventory' \
    '{"incMaxSlots": 96}' \
    'r2ccp7R7OqPqIjS4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
$PYTHON -m $MODULE 'inventory-delete-inventory' \
    '{"message": "i0N9ytb3c8pVZ8Gl"}' \
    'U8962e6gtn5pUARJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
$PYTHON -m $MODULE 'inventory-admin-list-items' \
    'M1T8QwMNOAzXmyHE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
$PYTHON -m $MODULE 'inventory-admin-get-inventory-item' \
    'V4g9P6a280S5RNB5' \
    'dVCsB7xL4axSPgPC' \
    'iwLxCFLDixZwVtt3' \
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
    '{"code": "RVTl0tR00oQgcHdG", "description": "GK3x76U1EIcklttm", "initialMaxSlots": 35, "maxInstancesPerUser": 32, "maxUpgradeSlots": 29, "name": "gF5szl0sMY8es36r"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-get-inventory-configuration' \
    '1FgR70eNLHkVrEFd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-inventory-configuration' \
    '{"code": "8xArWJuCAIfNBSHg", "description": "pFNw9K9pmAIc6VSf", "initialMaxSlots": 63, "maxInstancesPerUser": 81, "maxUpgradeSlots": 19, "name": "nbE2PMv12ZSRJkuj"}' \
    'xbCu1HFaj6Vxs3Gu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-delete-inventory-configuration' \
    'A4S1dS7H7yIS7b5T' \
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
    '{"name": "SDRIoMg7Dc5APzfz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
$PYTHON -m $MODULE 'inventory-admin-delete-item-type' \
    'XDELJFaIaEMW5bhJ' \
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
    '{"name": "yL72WDyhBsCCbnfi", "owner": "CLIENT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
$PYTHON -m $MODULE 'inventory-admin-delete-tag' \
    'LsXHlm1RJTTy9JrN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
$PYTHON -m $MODULE 'inventory-admin-consume-user-item' \
    '{"options": ["z1K5M1qgFddYvifG", "HawNx6yhniEHLbEQ", "Kc0aUvrKXDIjYC4d"], "qty": 12, "slotId": "e2fJDS6T75Q4ulon", "sourceItemId": "MFjmYqE1wJhfogWg"}' \
    '2Apm0sUy18aWn65C' \
    'o0vdCk8so6JSaZAI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-admin-bulk-update-my-items' \
    '[{"customAttributes": {"adKDEZywonA2SrEd": {}, "N2tmGuX6r0gBVUUe": {}, "KKlPKtE6gnYxmkmC": {}}, "serverCustomAttributes": {"Wbs5qugklBUS6uwW": {}, "rCQt86Jrg8tLAJWp": {}, "cyNkUvqn6eXr6FNb": {}}, "slotId": "KJ05Orya6LSSUlug", "sourceItemId": "IAknXcSaVYcAYp7q", "tags": ["SiDvsfMUOpWv46sX", "vpOjrpRo4mYrCeQU", "nYoID2UqO0iAXA9d"], "type": "B4ib8HDOJ8TNiP8K"}, {"customAttributes": {"gEAj3dbRTI0i6dO3": {}, "zkbDseh4tJdoGcwM": {}, "BmegqVUaWMJBjrV0": {}}, "serverCustomAttributes": {"p9A7tcHrV0MbJGr4": {}, "drgkDuWS05m0pGza": {}, "zM2BUXnzUEWTiKMJ": {}}, "slotId": "Af6AgbiEDMfCckWo", "sourceItemId": "gE5gcfF8AMGZ2FBS", "tags": ["93Mg6TKwdRMraDLr", "wh3d0ykRGkgqUNIb", "JMJ9ABbKVWO2YEDi"], "type": "qkwKbpdk7wlDngNi"}, {"customAttributes": {"PPjpSAlZwFGpea5O": {}, "bBB49Km4ClIQmkId": {}, "LCvNhZ6P8aqZ2yfr": {}}, "serverCustomAttributes": {"C1V7ZpJZPHCMqvcY": {}, "meDLYEzs2SQUdKr6": {}, "vgqkjycqclNlBORl": {}}, "slotId": "C8ZkjsxYtgxplHTP", "sourceItemId": "LzynjFZgF3erw7Us", "tags": ["yHq4bBb0n1JhPUS8", "BRPGV9n769zLJdKM", "exeJc7NvgTSgKjCx"], "type": "ZjKf8NA4cGUaDfy9"}]' \
    'XnH2r0EKrk5VlnKs' \
    'WCPccAFn5CEPoH6o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
$PYTHON -m $MODULE 'inventory-admin-save-item-to-inventory' \
    '{"customAttributes": {"pK5DSO8JyX4IE1z3": {}, "rDwZ1HKsOpyq8agQ": {}, "uz86nc6jLF9DIW2n": {}}, "qty": 4, "serverCustomAttributes": {"NCcjgFhS0URBhl0L": {}, "5FCbOn46W2B2uPQL": {}, "rt2t6bVpCgKvPXSD": {}}, "slotId": "ufmKh783cV54JsVB", "slotUsed": 90, "source": "OTHER", "sourceItemId": "oHzqY3DgykA8zBJX", "tags": ["0rkOHUkY5aSlqhYo", "SXbn6l5xAzc1nc3e", "Fm950dtVAo7w4e3v"], "type": "5mh6Rum5pbgEt39u"}' \
    'JQpgEtchTe3nt7t9' \
    'ztprSfW9OutADrNG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
$PYTHON -m $MODULE 'inventory-admin-bulk-remove-items' \
    '[{"slotId": "BWSJ1zQKxVmRTawj", "sourceItemId": "iZPMoZZcyGEHxAKD"}, {"slotId": "Qher3usApPdJPn9e", "sourceItemId": "IdhIBvTTupABJ4Rw"}, {"slotId": "H3EdKmYtbqQHNfIZ", "sourceItemId": "wrMxf3EnzZVnkLT0"}]' \
    'Lb85nmpdN26BY5YI' \
    '0jeO2zMDSy4kyqyK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
$PYTHON -m $MODULE 'inventory-admin-bulk-save-item-to-inventory' \
    '[{"customAttributes": {"grtEPdXXlt8geCdi": {}, "Xu3iNvn7vLZ7h6al": {}, "hJNGZF07lsPP5OfH": {}}, "qty": 3, "serverCustomAttributes": {"Aj6IKSYFdJwgZsRP": {}, "OzwuDSdGl1A2vaNe": {}, "DiSqTfmAVg50kOdJ": {}}, "slotId": "agEmTuaxlxgywkbd", "slotUsed": 83, "source": "OTHER", "sourceItemId": "1DBdoKH6sREmmfwU", "tags": ["ZLZZS7snx0Q2Gd8m", "7Y3wiNloJfey3HXL", "6SjljNPTXA3qbg55"], "type": "SyienCODZ0mnOpPT"}, {"customAttributes": {"VxEgBFzG8tlkxWKC": {}, "U1XN4gl7yHvEqpJS": {}, "rDXVwCkhOQ161TFj": {}}, "qty": 90, "serverCustomAttributes": {"V19cborUHeCpqnZ5": {}, "NW623WWn2ZJY3QvR": {}, "a7CDRTcsAHzD3dZy": {}}, "slotId": "yWbUQpbcv3IwmL7a", "slotUsed": 13, "source": "OTHER", "sourceItemId": "SVEo5M80LLbku9GY", "tags": ["H4ijqOVM50tCqkZf", "sSxAbDJ7sHCLup8p", "mEosOXglQwwdeLVp"], "type": "mXqRwVjc3W2ANmE3"}, {"customAttributes": {"VVsQ1fm9EUdiaRju": {}, "LsKZoqnpKwhpZVdw": {}, "5UMa8ymxtEFLwELC": {}}, "qty": 15, "serverCustomAttributes": {"vIddlxnA1VynioJc": {}, "APwVHUGcs1ACMvoY": {}, "4jWH9dFmOHW0j9su": {}}, "slotId": "ukPE4JwQONQ2vCbM", "slotUsed": 27, "source": "ECOMMERCE", "sourceItemId": "0Oia336uiiMTAduc", "tags": ["tvUfVwLahtRedh1S", "iZlOpIQ8GL7jBF1R", "5OexAPzCG6ZKQClG"], "type": "c1636nbfM3J9G40Y"}]' \
    '62bCo941ALznQuHV' \
    'skfCjUK8GeX4Q0B2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
$PYTHON -m $MODULE 'inventory-admin-update-user-inventories-by-inventory-code' \
    '{"incMaxSlots": 58}' \
    'j4IqWK09l4wkrzah' \
    'XR1sDEDVKDINE3Hj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
$PYTHON -m $MODULE 'inventory-admin-save-item' \
    '{"customAttributes": {"CiVR1dQ8kuhb4pUw": {}, "nGptHUplxzaDa9PD": {}, "whu31d8eOdtrfq6E": {}}, "inventoryConfigurationCode": "CDD6OGkuLs9gNpNo", "qty": 26, "serverCustomAttributes": {"jMBhs0kDP6d3nuUZ": {}, "41mSeS9SnGqhJOvy": {}, "kBcDpzD9zh6dtPK4": {}}, "slotId": "fVHLMvrCsH3RYxH2", "slotUsed": 95, "source": "OTHER", "sourceItemId": "2a7fCFAUzLELiM57", "tags": ["3TdtWjfVciuLnLsB", "KGsALPuCOyphUUAV", "95708zaP0wpZgQEv"], "type": "Fzox9wHocX3DRWob"}' \
    'EoGr8W97KBedcr6P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
$PYTHON -m $MODULE 'inventory-admin-bulk-save-item' \
    '[{"customAttributes": {"M51z7i0wQ9egK2t4": {}, "6EG8I2lTviKbOgVu": {}, "N3nhkn6QIesNoYqv": {}}, "inventoryConfigurationCode": "VsakylHikKkpOjqw", "qty": 12, "serverCustomAttributes": {"rtILNJVv2DLLUyBt": {}, "5hDs45siG30Lv9iG": {}, "a5mkZjnRXVcg6ABy": {}}, "slotId": "NpBo2JYkwLdmR97u", "slotUsed": 8, "source": "ECOMMERCE", "sourceItemId": "VUii4KpYcb1AUsES", "tags": ["aBOTHnbX9tC9PQlF", "AGbMtEybfcAl0mns", "AkRT2k0AzdgIunRk"], "type": "TxsGdrpNELM8Lfku"}, {"customAttributes": {"t0wnT24wh59RGSbB": {}, "Mh7jpszuVk6iPdJ2": {}, "boQqCCyJfThvCJie": {}}, "inventoryConfigurationCode": "qRSGN8Mm74HlSZzp", "qty": 27, "serverCustomAttributes": {"aEW4GkHG5OIVuGv4": {}, "7XJpkMiopQrVL3ZZ": {}, "TVxqa9XM2gY14iWk": {}}, "slotId": "12Jffk8dwKNPUOHN", "slotUsed": 29, "source": "OTHER", "sourceItemId": "GomguUqeuZh5qtrR", "tags": ["bNnGejdTGvZgN5hs", "hSe5YmZXKEQLkM6o", "3eGSP4Htmr90TqGf"], "type": "0OyqJ9ibJMmRgoxN"}, {"customAttributes": {"wp1lGkYoq8HP1TM0": {}, "tefVQPWX1NPO5Wn7": {}, "rNG8rGp7Fadvo5Ez": {}}, "inventoryConfigurationCode": "pX0IttsRezyY9GB5", "qty": 38, "serverCustomAttributes": {"O4ZuoGZSxTzm8oMS": {}, "PIHPtqzIWIzg8pbj": {}, "nt1iBV8DpbjGts4U": {}}, "slotId": "ZDTfhAyZKhqilty9", "slotUsed": 81, "source": "OTHER", "sourceItemId": "VlgxUmnfdOAmu1dX", "tags": ["1NqD20RUvvYeJZw6", "QZFN7wFCnqpvNesG", "iVnt9p2to7Yja1so"], "type": "DE1K0SvGrMYwPmPX"}]' \
    'C2LfL2m5rP2A20t6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
$PYTHON -m $MODULE 'inventory-admin-sync-user-entitlements' \
    'foPPH94SUinY5diU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
$PYTHON -m $MODULE 'inventory-admin-purchasable' \
    '{"entitlementType": "lqgvY7dPPyahppgx", "inventoryConfig": {"slotUsed": 73}, "itemId": "TNL2UCWUtaAD7ZZx", "itemType": "1iefATWcDSqGYRMd", "items": [{"bundledQty": 52, "entitlementType": "5dREQbCqfh0gpABF", "inventoryConfig": {"slotUsed": 57}, "itemId": "CX0hpB1ZGMMo5DSo", "itemType": "zCuFsrBMtoOeLfMC", "sku": "YxSeeJOlxa395rgh", "stackable": true, "useCount": 46}, {"bundledQty": 0, "entitlementType": "GhdZJkkGhYvXYMIy", "inventoryConfig": {"slotUsed": 1}, "itemId": "VZMKGBnzh4suaGIz", "itemType": "ttTncVBf5g3oeuHi", "sku": "NyLkfPQPmjUkvSs5", "stackable": true, "useCount": 25}, {"bundledQty": 80, "entitlementType": "IejozmG5HlrIfMAv", "inventoryConfig": {"slotUsed": 44}, "itemId": "phhU315LUC6HSMQ3", "itemType": "2UznXNd6ve29lqqt", "sku": "cLJW9eTJvKNDFrx6", "stackable": false, "useCount": 1}], "quantity": 3, "sku": "fjNMZjKJ05puX319", "stackable": true, "useCount": 89}' \
    'MnJtovSMFw8X4zxb' \
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
    '{"options": ["dfXgunt1oMNZ68eo", "vHSH3xV3URIRVDYB", "d6hMB0l7sg7IfMH5"], "qty": 92, "slotId": "f4hQpsLOcLtZw0ef", "sourceItemId": "mEVcW7mxbS5UOoIC"}' \
    'xQMit8555Niy4NNF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
$PYTHON -m $MODULE 'inventory-public-list-items' \
    'pRE5pS85yTIRWvLR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-update-my-items' \
    '[{"customAttributes": {"y58UKWPv3F7S0wCV": {}, "lYQi9cfMCeNnu6OI": {}, "G1PPLRDEXLXZWXvq": {}}, "slotId": "NCHvNpeMjMzguq6H", "sourceItemId": "FIqaqwH9J6JLb5f3", "tags": ["SBMyJUdwEBRrHAWU", "FqTooGGnPEgY0t7Q", "QWl42byOwXgKyPhX"]}, {"customAttributes": {"mcysae8HpWH4xiz3": {}, "fWthJSu2pUIIuPLF": {}, "AtcWhjAP57QbWvSS": {}}, "slotId": "p71zEPPfmAQiqRRC", "sourceItemId": "2caquMRtQOILcaDq", "tags": ["UITBHQR5ISNoFR3G", "UxdMuvmL0UBfwzaa", "eP3Wd0Wrb8s3GW0C"]}, {"customAttributes": {"Y0vAfbq8xoCurq4l": {}, "pHXrbVBh60NUA2aK": {}, "QwnXrmi6ya8u4sQP": {}}, "slotId": "vaf1AcweR7tJW3ML", "sourceItemId": "Mob1hUnIzIpUM8KK", "tags": ["1kGFN0NUNGKxdlAU", "DFQuGPzAuT7M6OBr", "NwioKnXPVZaDcXsV"]}]' \
    '1TnsZioDiBgprzah' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-remove-my-items' \
    '[{"slotId": "PB0FKMa0YeyNBQWU", "sourceItemId": "HDBnBeePkqg6Zt1L"}, {"slotId": "r5BlO8K6LH4dSaa8", "sourceItemId": "XYHug51ZTogG0N7H"}, {"slotId": "vnuq1kJ1kpHcQtnI", "sourceItemId": "c9z70LFQMI0oZuEj"}]' \
    'Y0rNBbbB9txAvtRQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
$PYTHON -m $MODULE 'inventory-public-move-my-items' \
    '{"items": [{"qty": 43, "slotId": "d0OoENg2Lw7uepma", "sourceItemId": "hXojVZYz2zMU9jLz"}, {"qty": 81, "slotId": "M71Tg922xiBgHSka", "sourceItemId": "0Pz7I1WkIa0oZ1nX"}, {"qty": 32, "slotId": "HMeoi5DBOsQ0Gax0", "sourceItemId": "iX05IT9Agsjl5Nmn"}], "srcInventoryId": "SHhxNmCe4txY0MsP"}' \
    'c9EMgf9JCJiEvhL8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
$PYTHON -m $MODULE 'inventory-public-get-item' \
    'ZfwCVJW9yspUOyHC' \
    '9eKeXzrvzBllwzyC' \
    '1aTWEmPgoy4TkpEw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
