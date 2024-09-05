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
inventory-admin-create-chaining-operations '{"message": "EAxcVpFrttufHIRd", "operations": [{"consumeItems": [{"inventoryId": "H9UzVRiXbqlAw7r6", "qty": 100, "slotId": "7eHpzSn3ZPUdc0qh", "sourceItemId": "4n8mzZ0m8SAMTwE6"}, {"inventoryId": "I56IaRDBXxyaNoMR", "qty": 87, "slotId": "hkspInrAip6lyzSx", "sourceItemId": "wElFHHdgs21Jub74"}, {"inventoryId": "CUkNmKJfh5pUkHOD", "qty": 32, "slotId": "FcDtgOjchIua5tWE", "sourceItemId": "IC32ogW7olvbTgrh"}], "createItems": [{"customAttributes": {"RTcPiSuL0Sly6XM4": {}, "OI18mAQLnzjMf8GZ": {}, "2WBZqxYG3aREAu2D": {}}, "inventoryConfigurationCode": "6QVKNCWP75TB0i7p", "inventoryId": "KxR8dl0zRVW4EZG9", "qty": 25, "serverCustomAttributes": {"Z4U68su8XfqlqNiT": {}, "vB6SdAdIhUDrwoZ5": {}, "MecdKi5r6QEa1ysL": {}}, "slotId": "Ezth6mXhzkzWkFeZ", "slotUsed": 90, "source": "ECOMMERCE", "sourceItemId": "oEAcBdW19m4eu6d5", "tags": ["tA5jUmiTqpyhPFdx", "LzFQN05MYzYiKWe5", "dNRljv7IPrDQQRga"], "toSpecificInventory": true, "type": "vx5KQ7KYnIuMBvaO"}, {"customAttributes": {"35llzQRaT5kPxUfo": {}, "fvnnSuB0y5WUlrMd": {}, "I4sNveabntBSxTeI": {}}, "inventoryConfigurationCode": "v53HGCiljvjKoyD6", "inventoryId": "SCwGrncqmLtjQHAf", "qty": 93, "serverCustomAttributes": {"d67FXGk2s9Q0mPVo": {}, "3twu0MesTCf9x4rt": {}, "69lna7qxNeIxPz6M": {}}, "slotId": "bwL6IY69z1UaLqYS", "slotUsed": 91, "source": "OTHER", "sourceItemId": "ytLPziZMdjxcBZuf", "tags": ["QxGiHPllG4cYEzfT", "D1ZBm3MqHcUmLZZb", "Sqb8RwNmn9HrNQy4"], "toSpecificInventory": true, "type": "5BYNtIuS5S5XUdjs"}, {"customAttributes": {"oqwGyzzWi9gwQYv7": {}, "t1o7TTr1DmrhZv15": {}, "T7quIOvBMcaYmvCk": {}}, "inventoryConfigurationCode": "GZ5dAgqxpBFmaLox", "inventoryId": "ozr6wfNPX2bOItRM", "qty": 43, "serverCustomAttributes": {"u0M3VHh2EI8JlDbP": {}, "WbQ6Q9lNmqRBaAkL": {}, "nvxkT1X68cmDc3fx": {}}, "slotId": "U8MyKrQpM4hkkK6K", "slotUsed": 75, "source": "OTHER", "sourceItemId": "XNB3Gv0IqmF51Tkh", "tags": ["jYnaq6foWvXa3bMr", "XsDr6kILsSSyDdmy", "kmoPYgc2L4jk4Lo0"], "toSpecificInventory": true, "type": "SP0pf4IxjUkl535X"}], "removeItems": [{"inventoryId": "3ateEKDpADz1x3po", "slotId": "D3Qgb3boLQQ1MzH7", "sourceItemId": "Qm8bwbmXgdAPh1ET"}, {"inventoryId": "hG96gAFKK2WDgCcx", "slotId": "vONZm3EeERmDnyeF", "sourceItemId": "oF7VSZ6pf3vneSD2"}, {"inventoryId": "Tb3g7mSQUhAEtrmj", "slotId": "qU6YE3p4lSck0ZHn", "sourceItemId": "5GI39YBHqaTHeKtW"}], "targetUserId": "18iGeUlc9d9sogWa", "updateItems": [{"customAttributes": {"24CKNS0GqVvUfHQv": {}, "sHXNUNe4mhgo5QB6": {}, "5lSAiYnNjkfZrQvG": {}}, "inventoryId": "gbLdLsFzHkBMr1yr", "serverCustomAttributes": {"OMlNFSrUEirnjX9f": {}, "DmIbeZxzfTcyiuAT": {}, "us9hsfpFDcSDG8aM": {}}, "slotId": "VGLiBNrDjqoxcwgG", "sourceItemId": "LXpUL4pp2ncYAHdN", "tags": ["zDmeIP6rOvDz9KOs", "b392k6YmJFfRByjl", "BiuFM3FIoVk8T3Gp"], "type": "AnkCmBUqg2SCnqnt"}, {"customAttributes": {"X9y1aZSWMiVi10sG": {}, "6vxkfUcmqRRbceJ5": {}, "i0EeDxOgBnhhqElI": {}}, "inventoryId": "aDml48wdNFLTm5T5", "serverCustomAttributes": {"0x9WT0GfH2rtOa4E": {}, "XsXzOXQAk4mqrxzT": {}, "tuLl4XlbGL8QOxtj": {}}, "slotId": "zm8y2wNhmwoYZyI4", "sourceItemId": "EFZKBcYrCEAE7WIs", "tags": ["fmx40NLRc6m8heKn", "Whzfe2NubeoKFeIa", "FQCYoDPICpnduEEQ"], "type": "lULdJz4mnRBkMNxv"}, {"customAttributes": {"vKgAT8mJrYq6hRkl": {}, "oqxM3gpwxcfMy9Xz": {}, "jjI5YbsKoADkzJEN": {}}, "inventoryId": "2VHzih3bit0VWn3C", "serverCustomAttributes": {"O39PXDNxtXgeO3Fg": {}, "kXhjDzaQY3snn2Zk": {}, "P7cFdP43e5dC9XIB": {}}, "slotId": "udfZgrbHDIDm4hMz", "sourceItemId": "F4TxodenSrUTvfqU", "tags": ["0bfoMm5cTtFWbotQ", "yXJRcQWsmqPNs92e", "pxk0i8VxsZNereSv"], "type": "f9699mCEHThUJkET"}]}, {"consumeItems": [{"inventoryId": "AsSp7gh4TeUTkOkA", "qty": 10, "slotId": "ZwsVC0gL97ZVJSPq", "sourceItemId": "Jiwv1qlYB1RSKs6g"}, {"inventoryId": "QxC3Gb7S0o4zGYY7", "qty": 75, "slotId": "gNJma1MbqqZtfNWq", "sourceItemId": "l4nmwAft4gqkNNlW"}, {"inventoryId": "kD9eOziYRFOn0jJL", "qty": 68, "slotId": "rREOLx0KOww3HICQ", "sourceItemId": "Lfl7MUBG7qtPu64y"}], "createItems": [{"customAttributes": {"AtURKLRkb738HGS6": {}, "rDgMdIIlhS1fSiM9": {}, "331m7Ta1PsKc50Kv": {}}, "inventoryConfigurationCode": "6ecnEevcAx2K2zkR", "inventoryId": "enmPZnGBt4P7Wnbd", "qty": 91, "serverCustomAttributes": {"JeQediogEhhM2rIi": {}, "zGdKvOPdq5xrgxSm": {}, "y1DN9LFkYW5DQyj4": {}}, "slotId": "bj5Ro2ogaKt2ujQS", "slotUsed": 0, "source": "OTHER", "sourceItemId": "3Zdb65UXmy0Zp6iI", "tags": ["aTIKUkmkk9QM0NBM", "A9ORxpzwLR2AK6eX", "UGPJsw1fiP80G9Pc"], "toSpecificInventory": false, "type": "CFrHHC3DpZxkrQDX"}, {"customAttributes": {"uNFviMarv8mnfHK8": {}, "CCmE2lPnsbD3SGEd": {}, "lwuUccE536ugBp3H": {}}, "inventoryConfigurationCode": "BvepnDCjgyJlXe36", "inventoryId": "mgWjLfFmteue9nzJ", "qty": 60, "serverCustomAttributes": {"fH24T805tVg8JqU0": {}, "jZpjvsugAOS7u8Ri": {}, "WyerCSa8SRgwsAj1": {}}, "slotId": "ik1jglaDXTvKCWwN", "slotUsed": 94, "source": "ECOMMERCE", "sourceItemId": "Ahd2wrS0uPdjhdin", "tags": ["png5BLy8wbhMssAH", "japIkY9Rf4wP57dB", "ZNR88YbCtmKy8M9z"], "toSpecificInventory": true, "type": "rjfGXZnqAQUoY1Gj"}, {"customAttributes": {"lIIk0iKoTTS1j02o": {}, "7JjTXAQN0qdskdQV": {}, "0TqI8EFnmDbxIxi4": {}}, "inventoryConfigurationCode": "YKlONk2Q5Y4Jvaiz", "inventoryId": "wiilatuUjjt9lIMG", "qty": 33, "serverCustomAttributes": {"7Bl0LcghVHfPEspx": {}, "whRON0bc1eMbEIjo": {}, "wLqc3ecjXJbZDKKo": {}}, "slotId": "xLE1Y3Dymtj3giPg", "slotUsed": 94, "source": "OTHER", "sourceItemId": "5hOPjaf3H0tYighU", "tags": ["0VUfcYHJbBfAKSiP", "W3VgsZXiR1DJ7HVW", "qMkNSawQUWDFJvJB"], "toSpecificInventory": false, "type": "PdH6hJPUAc0RVwXg"}], "removeItems": [{"inventoryId": "AgntLMCuaXBWQi6B", "slotId": "qPg4xr0lCancUZGC", "sourceItemId": "HsZYoLfR1KtOv7Zy"}, {"inventoryId": "0b65uvuKNuy0ytZQ", "slotId": "7M6Nzy1adnSKOLFK", "sourceItemId": "x1dX4LuWJu3pDMUA"}, {"inventoryId": "eeZ97SBROPYuG6Xq", "slotId": "P6oo7G73zdxTgOfn", "sourceItemId": "wIdlNa29fDLh741I"}], "targetUserId": "slKHzGlLKWUtDQs6", "updateItems": [{"customAttributes": {"1OQAoxyyQpRWCiiP": {}, "DGQhNPEwiJCf2XJV": {}, "rlzqQls1ozhLVA3k": {}}, "inventoryId": "E8jKvgatOEBM70Td", "serverCustomAttributes": {"lNBJYOmpu1VCarzB": {}, "sV6xnZ5Jrzzjrcau": {}, "g6CWVG8SWP3glU6m": {}}, "slotId": "uswVJnNnN7kAa7j0", "sourceItemId": "riFc5HTHQIoVsGo7", "tags": ["dwV9DBqFKHQkETJy", "TlUrwDTnoujQD4IE", "iH9Z5qXn3aoRtlqO"], "type": "ECohViHA5CzgFSy8"}, {"customAttributes": {"X1A3PrIfapq5AAeM": {}, "e4L3mDWORBVXTIIJ": {}, "M9XsYIIZxiXNMR9B": {}}, "inventoryId": "gaWcFX3SUBhyoTsM", "serverCustomAttributes": {"WPAxUMkawaGpAyrI": {}, "wMif3BOdkocVTd4B": {}, "xqGWV6mTJ0sQs6XN": {}}, "slotId": "bjvqhnUVLWu8olKd", "sourceItemId": "xL6ozRmDD0jJvlfV", "tags": ["5OemPYdYT7DROCjt", "uzFMbAG9YI89hmgu", "B8FOTjMLo4b9rIzq"], "type": "YkEpstyVTBcrM8rG"}, {"customAttributes": {"0rH0zcswwVeMK6Mb": {}, "GIVIu8vvwLc7KY3u": {}, "VoJXTIMtpgkieDyF": {}}, "inventoryId": "97lGdMiHKxbWCYzo", "serverCustomAttributes": {"8yO2KTK9tmmOnYnO": {}, "pas6ghP1y4Zi7s7Q": {}, "Blk44Z44B1GZgKg4": {}}, "slotId": "uKxaCgcGLuC3brWd", "sourceItemId": "TYCfHkIySok5DiXZ", "tags": ["tLW87rGysryod3dN", "QrmsApRA6HX3RwrK", "t2ecozL0TOg54vCE"], "type": "48L5oLF6M4lNa4JU"}]}, {"consumeItems": [{"inventoryId": "MSHNgqRqCV7usamA", "qty": 81, "slotId": "oTow0qiOiC4j0ikt", "sourceItemId": "m0ZPLkLOsp0LZ5nj"}, {"inventoryId": "N86Hl8kUXzt6bSc6", "qty": 2, "slotId": "vccKMLhrTrcBE2It", "sourceItemId": "BS3KtKZWe8aoFzAy"}, {"inventoryId": "BME74HUtipUWYhWV", "qty": 32, "slotId": "qx8CzPML52faXUr9", "sourceItemId": "Sk4lq2faBcAXXKlh"}], "createItems": [{"customAttributes": {"vyH8paOJtxqMPpcV": {}, "fRwNj547fH0XrKED": {}, "pEY8VnocGAjci0V3": {}}, "inventoryConfigurationCode": "tBf2jnHGKXphn50c", "inventoryId": "9tNLDljhZ2jxLRX3", "qty": 52, "serverCustomAttributes": {"0LgB5BUXvjcu2s6w": {}, "3VifnKqmTSoGH1XE": {}, "fY6QAYn6WQ5UBEU1": {}}, "slotId": "QAOHfZiGhxOdcuDX", "slotUsed": 92, "source": "OTHER", "sourceItemId": "3j5mNZ6vwv7K8Asv", "tags": ["t1j1Rx59hesNWy2N", "vZ85DDKDAF8KDsBZ", "OuYQJ03BAHZ7c53q"], "toSpecificInventory": false, "type": "akMpcmnnx6RVBrop"}, {"customAttributes": {"9v7aZK3h65hbN15z": {}, "fQSfQrtfF3TQN0Oc": {}, "NDLr36vzohZyjMQA": {}}, "inventoryConfigurationCode": "g5mPYhrLTyU8Ohgf", "inventoryId": "Y9JQYGF4bYXEcENx", "qty": 87, "serverCustomAttributes": {"xZlAchob44lONDDw": {}, "MvgI0HlyPR7wZNiV": {}, "sF6xG2mXEQdbzIVy": {}}, "slotId": "8alncV7vWgSHdfo0", "slotUsed": 27, "source": "ECOMMERCE", "sourceItemId": "kmSu4PWam1jxR7SE", "tags": ["TWjteoc8fgvZDDho", "O05oKqymxLD1Lcvw", "6T6mZEiwxxElpMYS"], "toSpecificInventory": false, "type": "zMjhTHeh94TSenE5"}, {"customAttributes": {"hCFkIf5weqZ18MH5": {}, "7l2Zsrh90ETtYmGu": {}, "kz3MnlrjcHp6B8Vj": {}}, "inventoryConfigurationCode": "7rXFgDnDkdZ9bpjb", "inventoryId": "1tdA3QhjCMW64f4X", "qty": 15, "serverCustomAttributes": {"pKPlXn77AtYoFzLA": {}, "ATPY8P8P3cfoivvQ": {}, "xevecWw7Rry0KK5r": {}}, "slotId": "gAGO0dW8rX2MVUGK", "slotUsed": 91, "source": "ECOMMERCE", "sourceItemId": "Z4GcLkt4pK32sJxl", "tags": ["ZcCTpTdRtCHvuk6B", "6XTmSLyn50sigBVZ", "xiKdV57GvRyd9UuL"], "toSpecificInventory": false, "type": "2Le8HSCslsDd4M1F"}], "removeItems": [{"inventoryId": "5qRIblS7Nz81GRaz", "slotId": "PAANjfBoldFOyqA2", "sourceItemId": "clJ5gEOaCgM6Yn6R"}, {"inventoryId": "ugbNEIpGBFUjOn5m", "slotId": "M7k8nbLzvtCIW5yn", "sourceItemId": "MKquUicAeIVXtoWA"}, {"inventoryId": "XhMlW4tLqX7OICf5", "slotId": "oD1e6oI9FmYel0kO", "sourceItemId": "w72o8Zkgk0jS6rDW"}], "targetUserId": "UwfhKvrf2AaH4yCW", "updateItems": [{"customAttributes": {"rHSppnIZkNnTn3rz": {}, "H5NvAtcvNedgS1fU": {}, "fKmihDbmu8ePWlQM": {}}, "inventoryId": "VDXEHeiGTnwyEw6h", "serverCustomAttributes": {"IWDZrpP7rz3ISW51": {}, "0kHr4isTKWjmv67n": {}, "uHCXWfwnwGioVwVz": {}}, "slotId": "mmBVVFfpqx1AeLtz", "sourceItemId": "cPJ3jtDYBo4FUTH7", "tags": ["CGfKSyxgRR1DiCqS", "MzpqIFGLkDs7ACC1", "RgBfoNrHlFi2qJLg"], "type": "mBLE35YhyiDV90Se"}, {"customAttributes": {"I5yppBHoytVznCgN": {}, "yx9fbT63ShEh8PbG": {}, "ikLjgjcj34uulU6F": {}}, "inventoryId": "YBZsWFbr3RSP0W9n", "serverCustomAttributes": {"Bhvhf8Q0DtJMcYQd": {}, "N66bswAgt65X4N1L": {}, "QZmB61JMdtwCVUrY": {}}, "slotId": "Que84dwmbwFEnAZa", "sourceItemId": "WsQJtRYoagRJK5PX", "tags": ["9UcOvhPyE11TRT2S", "Kseoe8VLie0LBa36", "KNzjf005CXNGehQ2"], "type": "aTjTDfKFDXC7eGL5"}, {"customAttributes": {"YhJDWh9YWqc0qgV6": {}, "d9yOfIMLds2DbPca": {}, "oMdtRLTmSvTkQQgB": {}}, "inventoryId": "7exYvmHMxr5hPCJJ", "serverCustomAttributes": {"ztJBg0tTJg46IewO": {}, "XE2AkCh3QIZsUf8l": {}, "GFXcmwTERHclOdxI": {}}, "slotId": "wqejxe18rNdb8Otq", "sourceItemId": "6j1mqUav7k05HAQl", "tags": ["tnSojV4jT65yclX2", "FtAz0vJjFIYWOaNd", "simmkW2miH3xRHAK"], "type": "y4QxZkaXZ7vmiEd0"}]}], "requestId": "JPxVyQpshaDwNqTb"}' --login_with_auth "Bearer foo"
inventory-admin-list-integration-configurations --login_with_auth "Bearer foo"
inventory-admin-create-integration-configuration '{"mapItemType": ["bFMXAMfVXe0GZeMg", "sRsmH1EQrYmkPKTP", "OlhTtSiZNCxuogFt"], "serviceName": "eTHJe4BhSSQkQD6W", "targetInventoryCode": "mOt6D7ufFVTOhvQp"}' --login_with_auth "Bearer foo"
inventory-admin-update-integration-configuration '{"mapItemType": ["fbBke8aEdd36xj6w", "ySoltDxsbzxrlaKE", "fkoYjY2o6ouRW9Ut"], "serviceName": "NquwC3WgumrIz4Nh", "targetInventoryCode": "GztZpr4U4fwQIiLX"}' 'gmRasvjO4lj8m3XE' --login_with_auth "Bearer foo"
inventory-admin-update-status-integration-configuration '{"status": "TIED"}' '8qwU1cTuHHPB5S3D' --login_with_auth "Bearer foo"
inventory-admin-list-inventories --login_with_auth "Bearer foo"
inventory-admin-create-inventory '{"inventoryConfigurationCode": "vPRCzBrVUxmDOj3c", "userId": "vRFaTC11W0TGTCm4"}' --login_with_auth "Bearer foo"
inventory-admin-get-inventory 'fZWuk6pQxDQpKqxL' --login_with_auth "Bearer foo"
inventory-admin-update-inventory '{"incMaxSlots": 68}' 'FbtxfhcRC7IVYa6i' --login_with_auth "Bearer foo"
inventory-delete-inventory '{"message": "Z5uFRYNn3SHiWxF0"}' 'YbuU5ar5qTLWUCy0' --login_with_auth "Bearer foo"
inventory-admin-list-items 'Afgc050XIZRW491e' --login_with_auth "Bearer foo"
inventory-admin-get-inventory-item '94mQjVOOBnIWhunE' 'lqZUodp3IhtCSHy1' 'ei1fIrPvfHnRN06E' --login_with_auth "Bearer foo"
inventory-admin-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-admin-create-inventory-configuration '{"code": "jRwEQlNapJRfk4f9", "description": "Zcw1pEHAyNFxcVTK", "initialMaxSlots": 43, "maxInstancesPerUser": 41, "maxUpgradeSlots": 54, "name": "MybYGxD9IPmmsLmu"}' --login_with_auth "Bearer foo"
inventory-admin-get-inventory-configuration '3kaPj0O4zd8Tb7cU' --login_with_auth "Bearer foo"
inventory-admin-update-inventory-configuration '{"code": "NGPTBxiFFCrn7djj", "description": "s69FTFVGUVhvKhJC", "initialMaxSlots": 26, "maxInstancesPerUser": 79, "maxUpgradeSlots": 9, "name": "K0PcLnEkcokKwcQ0"}' 'baDT9OyJ2h23GUS2' --login_with_auth "Bearer foo"
inventory-admin-delete-inventory-configuration 'amU7syGlElXdEAOr' --login_with_auth "Bearer foo"
inventory-admin-list-item-types --login_with_auth "Bearer foo"
inventory-admin-create-item-type '{"name": "VSnLocLVVYamQc4w"}' --login_with_auth "Bearer foo"
inventory-admin-delete-item-type 'cG5nDBLJoJHbiQ5d' --login_with_auth "Bearer foo"
inventory-admin-list-tags --login_with_auth "Bearer foo"
inventory-admin-create-tag '{"name": "uE5p4cfs2E41cK8Q", "owner": "SERVER"}' --login_with_auth "Bearer foo"
inventory-admin-delete-tag 'CW7EEFB67AODbi9B' --login_with_auth "Bearer foo"
inventory-admin-consume-user-item '{"qty": 51, "slotId": "MGzs7fzjgyc44mEh", "sourceItemId": "9tRk8knYSV30lnro"}' 'QehMDli6t9unQLYX' 'xm09wpGAbpEmDY9v' --login_with_auth "Bearer foo"
inventory-admin-bulk-update-my-items '[{"customAttributes": {"Lh3u6EDsUmrV6kH4": {}, "OotKwG3UC6XCnnZx": {}, "F8CmQr17W65br34r": {}}, "serverCustomAttributes": {"BBN9tU6TDm5GloFS": {}, "KWM1eym5ydC6p25x": {}, "CWTqUOYZENJ1QHZQ": {}}, "slotId": "xPRXH7uxBJEECQE1", "sourceItemId": "li3Bg7Jxc9pUnZmv", "tags": ["hidwCkZwqjYLfTiC", "O1NDBvQvRPnAz4Vz", "W0CpoBCbyJsF5IjF"], "type": "1c0W338HS6CBgVRy"}, {"customAttributes": {"ihYNZ84CVhziXV8H": {}, "wSmvcvcDKF19yVRa": {}, "fCjOuSYht83AdvBa": {}}, "serverCustomAttributes": {"agTiRJ8daGTVX3Bb": {}, "7jlz5IfHgKjI9mwJ": {}, "SrN8jkIykR2zbaI6": {}}, "slotId": "PD7fEscShnGUGUtV", "sourceItemId": "9GJ279GDbLNwjm3F", "tags": ["K0nnX2poMfZ1hDHt", "bh4HtMlFgvh2Dp2S", "oiIPp1yvfAHS0VgL"], "type": "u11A3HTovFi4tPAG"}, {"customAttributes": {"fleyCA6jEtcqsnzo": {}, "VILjkwW61duF87aU": {}, "yrdt4XSpWBAetsan": {}}, "serverCustomAttributes": {"zqP8oxfrtbECD1CY": {}, "PwaiBAxfYL8Avt70": {}, "ZUT2fSk3LL0calqx": {}}, "slotId": "EewuGS469k2hG0WK", "sourceItemId": "t4sUmanYxM0UHZVN", "tags": ["YzGMNIpWoSLkUrfu", "f4U3WeYeA9t2ENKK", "WrFtHIi1CMgKAOG5"], "type": "iDcCR5PbCvDLil8w"}]' 'j9cKM3Ar6MF35hCE' 'R4nGmWGgTJfHlJl4' --login_with_auth "Bearer foo"
inventory-admin-save-item-to-inventory '{"customAttributes": {"tHGa4XfZcd9CVnGq": {}, "MX9FieeEssWEUl07": {}, "bhwntCVqiYOJf5Kw": {}}, "qty": 78, "serverCustomAttributes": {"PHNL4X3LLaGPGdqL": {}, "E8SohhhuiTnJarYY": {}, "kHBDdSzBXdxapwhd": {}}, "slotId": "5IQYBQuxLvPuWYvE", "slotUsed": 76, "source": "ECOMMERCE", "sourceItemId": "M6H6QXmpZ9X3fUSR", "tags": ["1l9xLPBsmAUrD9L1", "IiD6MlcEPhMDFzjH", "Z3sIhzOx2CXKlvIo"], "type": "mU3pIxM9n8D2eLMe"}' '3lt9qfx2UDcgVE7L' '9FK6e0MrPc4vtxk9' --login_with_auth "Bearer foo"
inventory-admin-bulk-remove-items '[{"slotId": "hVKlG56HlzGr7Xjd", "sourceItemId": "yRJunZPkp6ccIBnW"}, {"slotId": "yPw8mj7gyQ7XdIsz", "sourceItemId": "GRj46COPipH1MWVT"}, {"slotId": "HG0qHJCWEfOJpZm9", "sourceItemId": "yEYWNGMy2pgSGSUO"}]' 'K68eqGJtWf1Ybgg8' 'rdwY9bmrvHmO07KN' --login_with_auth "Bearer foo"
inventory-admin-bulk-save-item-to-inventory '[{"customAttributes": {"qX9LM2IwEsdOGBXB": {}, "wnzDX8v3xgC1Ge9P": {}, "dbTTAJ2Gp1r0sVZ6": {}}, "qty": 78, "serverCustomAttributes": {"FVZGYzQqV8d9mDdU": {}, "IoiIJFNxuNOmUSWw": {}, "18T1IxVWCxdvPL9e": {}}, "slotId": "4P01vxP8xj1LyEir", "slotUsed": 95, "source": "OTHER", "sourceItemId": "72Uo9UBJWodpdwsX", "tags": ["1jorcyR0x3YiHF8I", "TGPRQBCgIs1Q2lzx", "l0yF5m77TTh4gUoj"], "type": "8u2WRcLiEtzVlnkf"}, {"customAttributes": {"lfn7pHY48F1dl1q9": {}, "2m3iRlfnBAk0CwiA": {}, "sR65yQ9ssuHdGmxn": {}}, "qty": 6, "serverCustomAttributes": {"ATdqnQGbqiqOkNeA": {}, "Tj7eGjodd7CcJUrI": {}, "6MAugK5kypNrp2nF": {}}, "slotId": "e9FmN86sK5LOq4ft", "slotUsed": 86, "source": "ECOMMERCE", "sourceItemId": "nNlsa2bRBr27fVMW", "tags": ["uAfDqLMR919IZPKO", "KiAVQXXOmqFHLbyX", "mgCNiXH8uenbC5Cp"], "type": "hgMweexsIAP5vHLj"}, {"customAttributes": {"BJ9iqMcBL4BzhDUj": {}, "hKPwbwcvQU5kG8bX": {}, "GFmPAnOkDiJq4xQy": {}}, "qty": 9, "serverCustomAttributes": {"O6tgohjtC7bzjPpu": {}, "cddXJ5zifF8y959a": {}, "nrNSleywHbHig6IK": {}}, "slotId": "WVZ77KeRWdECaFGz", "slotUsed": 11, "source": "ECOMMERCE", "sourceItemId": "Z2hxcJ2Fnemn7M23", "tags": ["SzUo4hNBDh9ZFP1O", "W0nXOErQPS4VsRoY", "IK69yg9ADCGiXaLs"], "type": "2xjHkinOD975nARH"}]' 'CmhNHSXuqIHsxvaU' 'oXDmwWsukxncuD3Q' --login_with_auth "Bearer foo"
inventory-admin-update-user-inventories-by-inventory-code '{"incMaxSlots": 49}' '4y3f0R9s2kndhhZh' 'wAiLsZs4pmLDIQch' --login_with_auth "Bearer foo"
inventory-admin-save-item '{"customAttributes": {"4IjDq9aT3qZyI0rY": {}, "sWucAkXsVJbXi7eR": {}, "Za7WwIc895ImqK6t": {}}, "inventoryConfigurationCode": "VsaUq3stUh5J5Z9G", "qty": 18, "serverCustomAttributes": {"1NVIs7NRen2Y3Ns0": {}, "QJQeaWytPfds1BYx": {}, "0EaURydf8ZyyZeHA": {}}, "slotId": "WGgJUbUJRMbkcTgl", "slotUsed": 3, "source": "ECOMMERCE", "sourceItemId": "6FyOjApNHBVfNOUR", "tags": ["cjY3YYT9oTynmfIu", "BWgJTNFfM8M0IW4o", "e8KDgy0xZfAcNg14"], "type": "Ws8TIP1LKiFQoLDv"}' 'umfqrgSfnx2h61X9' --login_with_auth "Bearer foo"
inventory-admin-bulk-save-item '[{"customAttributes": {"dN1MGRXBJ6mVV7JS": {}, "9qjNLwvI8JdiY3RR": {}, "iLilmOGF6dLLIeIV": {}}, "inventoryConfigurationCode": "IjMcdlbdRXTGIrdN", "qty": 77, "serverCustomAttributes": {"pPq3xjrElvvDgw0a": {}, "g7kSWE0Hiqm5IuLr": {}, "yiEXqvUWDjU1G0EV": {}}, "slotId": "jVZw1ToLuPakQN1M", "slotUsed": 31, "source": "OTHER", "sourceItemId": "bjoF7bL2635KbtZT", "tags": ["GJpqgl2IzNXGTuQP", "IDpor7t1aJLNNz6Q", "IVC9Mfuc8VOsnmnl"], "type": "VljdWYmELe74p38v"}, {"customAttributes": {"umnxAnYBTxaTIz0j": {}, "cgDI8Pkz96vd80ms": {}, "qIm5bufnBqrpLeqh": {}}, "inventoryConfigurationCode": "wVhjnnjKMEmtbiWs", "qty": 55, "serverCustomAttributes": {"C9Ynd02mECIQhfIh": {}, "HtADUQ9zimQTQT95": {}, "pFJUAJsyAfeKOufV": {}}, "slotId": "4f15NohXu6opxQGR", "slotUsed": 40, "source": "OTHER", "sourceItemId": "6PqlkL0diRhLC10i", "tags": ["h2EQfY3XCv4hdOa6", "FdZhNMd1onFjGRbx", "tABPXDmgNEJBhgGq"], "type": "5GIDhNC66szbCCf7"}, {"customAttributes": {"3IFbRkPSSITz4TjC": {}, "rJHXGXku2YVuOzhx": {}, "HmnrrV9ZGWrZ05sx": {}}, "inventoryConfigurationCode": "e6A6RpmKDebNkylb", "qty": 51, "serverCustomAttributes": {"cNmzwOZOK56sDkci": {}, "5rZ8iMlOuksQJCiR": {}, "FiZWwJ7NrTb1XTB9": {}}, "slotId": "YQzUJ9XlYJ8BzP6E", "slotUsed": 95, "source": "ECOMMERCE", "sourceItemId": "zdhMeBXH8x6HdVfZ", "tags": ["VDAiU6iJOF7JKZFN", "k2NKy59X8iOg2sVB", "iCoeC5weXJl7PeiM"], "type": "H8z8dVej8N2yv6VT"}]' 'nOK7xAvM7tuL81ls' --login_with_auth "Bearer foo"
inventory-admin-sync-user-entitlements 'R7xxSVp3Gd2TK0Hz' --login_with_auth "Bearer foo"
inventory-admin-purchasable '{"entitlementType": "YviTgYmx82JVBRLP", "inventoryConfig": {"slotUsed": 38}, "itemId": "6Iz8tne5dbguBF6G", "itemType": "svvdl8jHz9x7XZIj", "items": [{"bundledQty": 96, "entitlementType": "oo0qvxphTLEEBGTt", "inventoryConfig": {"slotUsed": 94}, "itemId": "yTjdKNKgYazujsmS", "itemType": "mylT1YtxIq73aMb4", "sku": "8jISd97KORRhxSWL", "stackable": false, "useCount": 82}, {"bundledQty": 53, "entitlementType": "fHRD3V15QaGGL46L", "inventoryConfig": {"slotUsed": 41}, "itemId": "ZYTYZbzf5aANNNs5", "itemType": "kgSZZNUHbIT9szAp", "sku": "mWJO5vzzXZj08a6K", "stackable": true, "useCount": 90}, {"bundledQty": 84, "entitlementType": "VfriSpPFnZBJZkDn", "inventoryConfig": {"slotUsed": 62}, "itemId": "rYVzi9ui3lvozTt9", "itemType": "TsH7A0TuU2aL4bPk", "sku": "k11sys6GdkDcos5u", "stackable": false, "useCount": 36}], "quantity": 56, "sku": "TFznTgDIwZIRWf6T", "stackable": false, "useCount": 51}' 'skRjOU1SMfQVQa6b' --login_with_auth "Bearer foo"
inventory-public-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-public-list-item-types --login_with_auth "Bearer foo"
inventory-public-list-tags --login_with_auth "Bearer foo"
inventory-public-list-inventories --login_with_auth "Bearer foo"
inventory-public-consume-my-item '{"qty": 22, "slotId": "qjdcEfU61OJYMnW4", "sourceItemId": "9rWynp1ck1vT90C6"}' 'o86cSRL9cgbUmulh' --login_with_auth "Bearer foo"
inventory-public-list-items 'e98oaFKlQicdrxVh' --login_with_auth "Bearer foo"
inventory-public-bulk-update-my-items '[{"customAttributes": {"rtwSd9QWVMYz7TU1": {}, "TsxsChSclSkb5aBi": {}, "9K9zyv6gFZXI5nXJ": {}}, "slotId": "7hLi6HweweRmyo91", "sourceItemId": "dIn7QqXBDXJcrqKm", "tags": ["XDwoEV6tCdrxw1KO", "PhuvHuYrGWDK41uM", "OC0mRvSoaGk4ktF5"]}, {"customAttributes": {"wnJDg9Q3WXiydCOI": {}, "nVolsr6CHmj763vL": {}, "wtYEJTSiXjcY5ZPk": {}}, "slotId": "v90lyKSTWLxSFZ0L", "sourceItemId": "pupEi5DbkVs3qFTi", "tags": ["1t530Wj1WfzIvc3V", "lSXrA3XUGud4tVjm", "xEf4XvVhFJTxFHIT"]}, {"customAttributes": {"Bg9x4unq3eOMHIKe": {}, "TyBG5dCUoExnKfV3": {}, "869IN4V1OdhH4GVU": {}}, "slotId": "7Exlkmc4xYiLjLyZ", "sourceItemId": "rXr9Bhtzn8jAdTn6", "tags": ["xBhrciryLm67rkad", "H5Y41SLjCPrFa05X", "l5TPC5GODS44bmm7"]}]' 'jPdKLddfdsUqjXVz' --login_with_auth "Bearer foo"
inventory-public-bulk-remove-my-items '[{"slotId": "W1QqxnWR5sheLgsA", "sourceItemId": "F4ctv5guycGiq9j2"}, {"slotId": "EyIknfLDpgHnMOn8", "sourceItemId": "nc3gUZ8ZFyyEr0KB"}, {"slotId": "XuJBqK4QtEydPWLP", "sourceItemId": "BYiR3UbJc1ZYapx7"}]' 'C477etqgfOJDUT0u' --login_with_auth "Bearer foo"
inventory-public-move-my-items '{"items": [{"qty": 74, "slotId": "uWVRz3V7YbJM3bNL", "sourceItemId": "WHAbCZixe2cQ6O30"}, {"qty": 22, "slotId": "kc0HjUcnkpU9oVzl", "sourceItemId": "2kBuLFXIeCEKZUTz"}, {"qty": 67, "slotId": "B6wVd8ipcKDwQeUW", "sourceItemId": "tjCC2UH6jzMO3Afm"}], "srcInventoryId": "OS5mQNyRPZFPNP56"}' 'l1AT6OLKmZhCZxxP' --login_with_auth "Bearer foo"
inventory-public-get-item 'PdPwOtEuWBSO2jJe' 'pUnEEgja2mIE2kLT' 'nJwc5XmkCuL5W4tK' --login_with_auth "Bearer foo"
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
    '{"message": "t6G3j9LYdG7xVPqB", "operations": [{"consumeItems": [{"inventoryId": "qe9RDQMBSYAFLqp8", "qty": 84, "slotId": "DlrQQuAc10DjjwMv", "sourceItemId": "4vrIPRtvhQIyLarj"}, {"inventoryId": "aLOKnX51yAB8Pa3u", "qty": 81, "slotId": "mwtYgWGcA0h4G1LZ", "sourceItemId": "1HaX5UBMbsF44VTs"}, {"inventoryId": "LDRzdq22cbnyK3gg", "qty": 64, "slotId": "tzYEHUodh3iUfBth", "sourceItemId": "bepUCTWiZ1uqh7GA"}], "createItems": [{"customAttributes": {"i4FEIu44u83ZLRxY": {}, "lYqlpq03BGdIk4oE": {}, "ogFVGR71rJOBy6ls": {}}, "inventoryConfigurationCode": "j1AKGBjnHmaAu4YK", "inventoryId": "87DYAWWcbcbGWmKg", "qty": 63, "serverCustomAttributes": {"9k3ie64Vnwa0ClGQ": {}, "JultJe32AiwKadEo": {}, "IVmprwPsa9YD92CX": {}}, "slotId": "0rITajpwHITGeHTn", "slotUsed": 34, "source": "OTHER", "sourceItemId": "RbzBB9ZFgJbQ3Fj1", "tags": ["umx4ItzkMJ7cudf4", "r916GPrhn2etVIQv", "RkQJAtDUH9tx60Ae"], "toSpecificInventory": false, "type": "wmg1pWpWit1QC7FK"}, {"customAttributes": {"e0fnHUlmU1unGKM0": {}, "tgfeWy47bbwMI4gG": {}, "mvK9gW596FwBNrFX": {}}, "inventoryConfigurationCode": "t3TAuKBwBcD12ae6", "inventoryId": "r3hHwya4NpdOzg3h", "qty": 35, "serverCustomAttributes": {"9DkaSOWgtg8yw8lH": {}, "EbVDwBAqanOlscRI": {}, "Ww82k5K5VTkdubkO": {}}, "slotId": "FldMCQ98JH4n0Jtg", "slotUsed": 34, "source": "ECOMMERCE", "sourceItemId": "zZv5kVu4S95mj8YR", "tags": ["vae4f4lhBPbarbWE", "m8bVtZcfVCPdQhim", "9QKUAFTVYelIlGJg"], "toSpecificInventory": true, "type": "ZZGMTcqnWrIprOv0"}, {"customAttributes": {"BJ9Sgl7H1sdH2RIJ": {}, "z1eI7Q5pu9PutLf6": {}, "IrvZoBGQbO4S3rUR": {}}, "inventoryConfigurationCode": "GWUzPAE6SdV4D5jf", "inventoryId": "tRl9rZmtQUvro8TW", "qty": 45, "serverCustomAttributes": {"FdsJP1G9tyBTfERX": {}, "dvgD1Qf7Ot2DkUt3": {}, "yexZBRvxYnEBhXtA": {}}, "slotId": "VxCd3meTrT7cF9oV", "slotUsed": 58, "source": "ECOMMERCE", "sourceItemId": "OCKDJE3RMUddwSSg", "tags": ["xCu8zru1DhGAYOHR", "5BWa9VzIkaQEl1iU", "ProNB6hI6IpGcToW"], "toSpecificInventory": false, "type": "KU2u06Q4veujxtyQ"}], "removeItems": [{"inventoryId": "ENvJrBCqeg67d4RW", "slotId": "OqO4U0bitNQLzwRo", "sourceItemId": "WnR0AbkCPY70Fmvv"}, {"inventoryId": "iVIBbcujF8Vk5qb8", "slotId": "NhWWwaxyMchkt8l5", "sourceItemId": "IPSrwrJl7wYIVw13"}, {"inventoryId": "NCo9yXlbQ52FTHTC", "slotId": "j6SEAzT7TOpyiuvv", "sourceItemId": "QUm29Iacq4XRLaA6"}], "targetUserId": "43nTMtXSAyejnny0", "updateItems": [{"customAttributes": {"Ju13b6o5uB2XM6IH": {}, "y7EEvHyLmcvrZZOd": {}, "we1x8RjU6Bi8JXE5": {}}, "inventoryId": "2sUBBq2SimQQoLbe", "serverCustomAttributes": {"5YOJvxGRxUzrTwag": {}, "H7BMT1IZKTdNFVBQ": {}, "1crBXAupATO8uXsq": {}}, "slotId": "VpdiWo8SjDAM0Riw", "sourceItemId": "8wLYW3n4F3LD1EDw", "tags": ["BXw5uBYeQZOzATNS", "V9E9yyNb7yaLXzAV", "YymOuhCkZu4htrsf"], "type": "8eIFSovTGXaMsq8e"}, {"customAttributes": {"PN1oco2jx8Upe8Sj": {}, "MvpqM8puggOEdG47": {}, "gD5i2Ni6AnWn3NdE": {}}, "inventoryId": "PhNHSH7eKDfRcngE", "serverCustomAttributes": {"pTnRUQr3RLOM1vEx": {}, "4gqDY6jwyKRxhkLe": {}, "5zohg9s9utRQt28b": {}}, "slotId": "6o3K0COF74tz6aeX", "sourceItemId": "ZOYwbwjMNdxKWlBf", "tags": ["nRyFS0Ed7gTM5AVr", "tBQiDTcNnZa6Zuxk", "6u6HXXdiC9ZDj4E4"], "type": "mv12FNXypoOLl13j"}, {"customAttributes": {"84P0KqirJ4PkMFts": {}, "nFfz8Ew0X8fBuBSK": {}, "LSQ4GvLtz50D3rpB": {}}, "inventoryId": "fBovqLwXBuT30EYe", "serverCustomAttributes": {"Rj17xGhaBKoUfiHj": {}, "GmCyPsKCJTv1ic9g": {}, "vagF2cSuztsJ5tj6": {}}, "slotId": "4gV7nmDk29mcjSuz", "sourceItemId": "9vbNStqPtQmQN6eK", "tags": ["AGiZFCftT0RWECdj", "WYrnulxcCKAru8pO", "aAVLDB4k3JwkdaxR"], "type": "7GJpYmuYCPG181q9"}]}, {"consumeItems": [{"inventoryId": "GA5DydC2D8UT6KOc", "qty": 60, "slotId": "VPDUR9ayazqXRqeg", "sourceItemId": "IUicYXXzxsBFrUs9"}, {"inventoryId": "BYp6TgCejBd5o7iT", "qty": 92, "slotId": "OutlYBbLhL8KXx25", "sourceItemId": "FZfQIodVBqQsBpCJ"}, {"inventoryId": "BIXLGYcwWVRK6UKk", "qty": 29, "slotId": "8cE5O5pmPnbiPJ9j", "sourceItemId": "4vxmbH3rVaauufxk"}], "createItems": [{"customAttributes": {"PHElug48TgfNu0rq": {}, "XUOyToLPIREGIKlJ": {}, "t3EP9kKwkENQ8VOH": {}}, "inventoryConfigurationCode": "GwbADMfuOmh0lciR", "inventoryId": "hVZ2DeoODXMzLSrz", "qty": 29, "serverCustomAttributes": {"vhzgsJwex7wq8ZPl": {}, "XNaUNgdY2vfJuje5": {}, "cPnmGjTvYa5Pqx1K": {}}, "slotId": "7qcAoijBPAp6EPb9", "slotUsed": 19, "source": "OTHER", "sourceItemId": "tNQts2yxf6MLZJ2j", "tags": ["ZfZbpTJezzriCDWX", "T59SRu0YqUxKDc84", "OMIzvTScdbKBsAyJ"], "toSpecificInventory": false, "type": "z4ILNDvhB4Eoes9a"}, {"customAttributes": {"6XaJeRbzTPwD3jxF": {}, "7vxRUY0ilrNoFT98": {}, "SgtJd4Z5f8nfaKqd": {}}, "inventoryConfigurationCode": "ZFLbZEHxsDxeR6d7", "inventoryId": "r1SQw80JfMpPrSqY", "qty": 49, "serverCustomAttributes": {"NZWUsq5lQo2jy29E": {}, "JigqYhyVhURx1yPe": {}, "czRpdk0HATGylx2J": {}}, "slotId": "G2KNGfhzfCTxxrsR", "slotUsed": 89, "source": "ECOMMERCE", "sourceItemId": "Lee3TcJ7DQIi45aC", "tags": ["DHN9mVug2zkVf6Kg", "pKOcn3tMD9UT67bO", "wugFDa6wUQvehKqw"], "toSpecificInventory": true, "type": "BwweyFfXEOEAEtba"}, {"customAttributes": {"g82KgBgyCd5vjkfz": {}, "3eR4DtNp129hzBw3": {}, "xLUcCEt0DzmkJq1s": {}}, "inventoryConfigurationCode": "ml5bYt76BNsi4giR", "inventoryId": "9434WpKKdzxoufCN", "qty": 24, "serverCustomAttributes": {"thrpnMUBsnUfuQIc": {}, "SbUt5UGkInFGpuUs": {}, "dtq4dOwNESzCEW9d": {}}, "slotId": "UVhZjLftC3sCS8Cp", "slotUsed": 77, "source": "ECOMMERCE", "sourceItemId": "CqPD9CeDEdCnnL6K", "tags": ["t1Bjj3b8QM8Rr45U", "LqXQgvwD3PsKDJiW", "xQBwaS7rDBf2S54p"], "toSpecificInventory": false, "type": "uetxFMqXCQMAqQ2Z"}], "removeItems": [{"inventoryId": "RGzNtrThFa9XU8mo", "slotId": "sluiHZJ7O8sAQ32w", "sourceItemId": "j9uaDzsr9xYiWRuu"}, {"inventoryId": "zQJiLc1eI9w3JEhx", "slotId": "PGbEk7s7gw07Flou", "sourceItemId": "nC3vJKBC7SwgoViP"}, {"inventoryId": "eIB4Ehy0Y5aSJVDg", "slotId": "inxAM77eY9C14Fbf", "sourceItemId": "iI2NPvl1kCY5bEok"}], "targetUserId": "xXxkWZbjf7GZxaos", "updateItems": [{"customAttributes": {"sQmjo69wohJFyTNk": {}, "5FGUPhR4LEZvz3Ej": {}, "FR7996Ug5m4axDV5": {}}, "inventoryId": "uTcYsoahUrELQ1bt", "serverCustomAttributes": {"jJOqQMgZWAU6E92n": {}, "HJzvw7tnYtGfv0EJ": {}, "yjBu4EzwRjD7jmQJ": {}}, "slotId": "eFPghqamSc5y0X48", "sourceItemId": "eT7Mluexk87b9Z5B", "tags": ["TsEA3EdmW8saabP4", "xRowfNojzPXI2v0p", "rR3OEey0MkZwS6TY"], "type": "wNN3UYhic03qGEg5"}, {"customAttributes": {"fNzBVrjo3g8CfRwt": {}, "yl1HeT7VEPgG40Qy": {}, "XzsOzgck078IghoQ": {}}, "inventoryId": "Bp2mWAOYksczxBS0", "serverCustomAttributes": {"OBCa2vWadLmQtYKm": {}, "EMzicbuL2S3RiW8d": {}, "LTCBfGUdVEdvdQL7": {}}, "slotId": "sVwcZ2PofaJoSqtr", "sourceItemId": "EOqxH46fRTSZoDdT", "tags": ["0fefo74eg3Nt2c0r", "4GqF0NHglOVuNZ9L", "zNeJnBurh54CWbYb"], "type": "0Pebyt8b4DGscjwr"}, {"customAttributes": {"izsFUgYwbaLvqvQ2": {}, "NbmDITuymTBjn3d2": {}, "sFzMS3QaVjZF7Ax6": {}}, "inventoryId": "115Kg9U8vrQJXQxo", "serverCustomAttributes": {"IbVi2CLEk277Ivjj": {}, "1A647XQ3koaAfZIi": {}, "m0sFPm1YN27bojDV": {}}, "slotId": "aZLpx4kEWYkO6KrK", "sourceItemId": "UMhJrASBh61hmWKS", "tags": ["SrF35anDGvur19V1", "8oIrUKXttgAI2QdW", "JFLmoPEgd8EMspOs"], "type": "8nkic9gj5vyUMAAm"}]}, {"consumeItems": [{"inventoryId": "IHYbsxG5N066FXb8", "qty": 90, "slotId": "yw94oa8UJ34TIedV", "sourceItemId": "3HyoX4VnO2LpBU08"}, {"inventoryId": "wfnlHBXFIqFUmgUS", "qty": 79, "slotId": "MXxj7Esrg7900nml", "sourceItemId": "5BidsK9dCEzhVnOv"}, {"inventoryId": "0PQbVIaKiHfoeorY", "qty": 3, "slotId": "A1otGFyv2SMjbEr5", "sourceItemId": "0qGdCZIc6EFqBKxb"}], "createItems": [{"customAttributes": {"S7Q2OgRucL1jwRXz": {}, "fjDZZBmOau6syme0": {}, "6c6SKLc2mEC3IXl5": {}}, "inventoryConfigurationCode": "XCbkOfHaGr5kdazl", "inventoryId": "ypvt6lSLfU7HByGX", "qty": 85, "serverCustomAttributes": {"iCV4GUOnXpapXQGR": {}, "akUbcG7PcR4eiU3I": {}, "di55jNrGNT2VHTKu": {}}, "slotId": "IT5FwwHj0Ur5F2PW", "slotUsed": 67, "source": "ECOMMERCE", "sourceItemId": "TTD81xhNP4t6kYBU", "tags": ["jyXAn3bWQF6QcAiJ", "pXIrgroixptZhckU", "TGkcBOE4qMcH1Kyi"], "toSpecificInventory": false, "type": "vGcV8DY0XOkDstxZ"}, {"customAttributes": {"cY1HgAnZV4IOglVL": {}, "qb9lGAJUg21Lt7Jw": {}, "gwMUSuC3Bajy3BcE": {}}, "inventoryConfigurationCode": "MCtQs2FcEcvVAyId", "inventoryId": "6Cp85HVDsZBQgOnX", "qty": 41, "serverCustomAttributes": {"NJMiZXXOFwmGWAvN": {}, "F0Z0GkwxUNYyNwGi": {}, "KrknH0Y5mrQgLC6D": {}}, "slotId": "2qsFiQHglUQMZi5W", "slotUsed": 20, "source": "ECOMMERCE", "sourceItemId": "aL9ie6vvMbiNURrl", "tags": ["m88QlKyuoya4Jgak", "ZyUV7t73VnSFbuxd", "4KYZ0jk0UZdhtnKu"], "toSpecificInventory": false, "type": "4roZM2UKAXEEsL5D"}, {"customAttributes": {"0oiFchQnVeq3g2AB": {}, "2WIRUQmauIY5HXCZ": {}, "0W4XmWP0HzSdiylL": {}}, "inventoryConfigurationCode": "hVYszm8xY33OQbum", "inventoryId": "u2QHLyZNuysyM4Of", "qty": 59, "serverCustomAttributes": {"iIQFVmzMidw70KSa": {}, "hpYZdKZRyR9AX7Jj": {}, "xvNZhM84DiZk6ySr": {}}, "slotId": "B9SVFctW7YS0OkL7", "slotUsed": 35, "source": "OTHER", "sourceItemId": "eEAtALFI3v8yha4p", "tags": ["d5A7MYcpBD6lKNb8", "RxvN2u5J7baOeLH1", "9fqBwNbNe1ffYRtI"], "toSpecificInventory": true, "type": "PBJuNLnWRrtW870q"}], "removeItems": [{"inventoryId": "D88ZcduZSe7W20UZ", "slotId": "cDaiq0nEZ7PyhqFJ", "sourceItemId": "kDClOsKmfsgJdmzs"}, {"inventoryId": "DPsWh1k0cQ08NG6d", "slotId": "X2TZkil67kRngoUa", "sourceItemId": "83ECh1gqPeS193TN"}, {"inventoryId": "Nzot3sVli3GN2XTr", "slotId": "FibRAhzzEWzWlTY7", "sourceItemId": "0qdgJRvpZrSpWX3K"}], "targetUserId": "Ee2BjV00ReCXFffj", "updateItems": [{"customAttributes": {"JJxlgjzIhpgOoIOD": {}, "74V21HWDAfvXwdxb": {}, "yp4HAPbBbNPStVBU": {}}, "inventoryId": "pKgOssFkz0F36piD", "serverCustomAttributes": {"YXeHZ7FHls3nyvco": {}, "nqbHQqKLQKe3xmj6": {}, "s0GqsWncp5LrqbiK": {}}, "slotId": "udv9z75SzoCV8ZMi", "sourceItemId": "2o1nR482D6gNClk9", "tags": ["c87hosaPFC5zBW3Z", "gVZCj9ObVGT0Scwl", "4kNmCi15XTJTgCNN"], "type": "H7RtG5Xmo9Q0Wb07"}, {"customAttributes": {"N17fkxZSc6VbE0AG": {}, "cekjMNHuPXtz8tXx": {}, "rmzafMUguyDoN91u": {}}, "inventoryId": "c28HoSpGt1g0GGbT", "serverCustomAttributes": {"4Hf2PPKOldkbgX9C": {}, "WJKwXXSbv5eg9q86": {}, "IaDFjjx6uZerWbtw": {}}, "slotId": "TX9gNRByjbE8lOLA", "sourceItemId": "fTXKLzbrddqcKLa7", "tags": ["LevxNHOSEhQRZIp6", "93lRwtc43atCuCFx", "bfbz4aQERziPL4dH"], "type": "hOqG5KDdUvk0LEi2"}, {"customAttributes": {"6Ls7mjRxNmvvNtjJ": {}, "NQepUTGhwlY4lPzl": {}, "sCR5rVsyfcH7WjP7": {}}, "inventoryId": "HuGz3b5WAEvdRF9b", "serverCustomAttributes": {"qMj4ro5B19VE838c": {}, "7OydVw0zCqoMZvpI": {}, "OO97DmQ5ZOzx6iCJ": {}}, "slotId": "Tu60IifzMhkk5Pxs", "sourceItemId": "jqbCKpMv2Yky9DYk", "tags": ["D2sIllFtBtXJKG3r", "qBmILhtWm8RQvRUb", "UDSiefGEdLucrtO2"], "type": "gCQD057DrDlgC2nz"}]}], "requestId": "S9SiGUjVAw4v3q6J"}' \
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
    '{"mapItemType": ["RHcn7KaoCEkRdo6q", "HYIZWnXqQ1oHFJ9Q", "0vqsL9SomqWsGA76"], "serviceName": "yxi0QzZWfmP2sx0K", "targetInventoryCode": "O5bEJaPnAFjsodyJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-integration-configuration' \
    '{"mapItemType": ["QVVBrShGbIIuqK8C", "403HgoXCR6XOMXwK", "dfqk8T4QHK30EX0F"], "serviceName": "clpDl5HsuracO5Mn", "targetInventoryCode": "jnxD1OXkxShFVQTR"}' \
    'ekLfjmy8zosRCRgV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-status-integration-configuration' \
    '{"status": "TIED"}' \
    '9vrtuWWrqTZbSqBS' \
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
    '{"inventoryConfigurationCode": "Kp8AmgwhYzk33J34", "userId": "fiTxK63OHpnUCGBV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
$PYTHON -m $MODULE 'inventory-admin-get-inventory' \
    'fpctNFUsUQ6ZXQcb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
$PYTHON -m $MODULE 'inventory-admin-update-inventory' \
    '{"incMaxSlots": 28}' \
    'o1J5euLAbBgejqc0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
$PYTHON -m $MODULE 'inventory-delete-inventory' \
    '{"message": "apxqZ209BySn8aUa"}' \
    'GlAyvIslt7N1qcxK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
$PYTHON -m $MODULE 'inventory-admin-list-items' \
    's4nlf1MfqUZXkjHv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
$PYTHON -m $MODULE 'inventory-admin-get-inventory-item' \
    'cUOTlxNf09pefgFI' \
    'iJssShBKsQjXvfQg' \
    'QDt6ce8NDMErA82F' \
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
    '{"code": "rR1GSogkewIzTOqK", "description": "kcjRh3l2gAJOTCbx", "initialMaxSlots": 74, "maxInstancesPerUser": 72, "maxUpgradeSlots": 53, "name": "3gNLIlTk3Bpclrk4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-get-inventory-configuration' \
    'hIRn0znIKzAEAHQp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-inventory-configuration' \
    '{"code": "BOgHEP5l94s7CbIJ", "description": "7eHnVWOboMkyB7FT", "initialMaxSlots": 8, "maxInstancesPerUser": 49, "maxUpgradeSlots": 94, "name": "sOZ0b2p3b63KrcwI"}' \
    'cXMhGy83Xit6boOL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-delete-inventory-configuration' \
    'GCcg16DqwdQPQ9Hk' \
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
    '{"name": "SSV8e1MgTTLS2Fga"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
$PYTHON -m $MODULE 'inventory-admin-delete-item-type' \
    'rY903INGIyEfRBEj' \
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
    '{"name": "7qms9AGQExPhgr9g", "owner": "CLIENT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
$PYTHON -m $MODULE 'inventory-admin-delete-tag' \
    'fC0GjvpgJfuBs1Vp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
$PYTHON -m $MODULE 'inventory-admin-consume-user-item' \
    '{"qty": 33, "slotId": "c0Mr7ImwCwGqOf0b", "sourceItemId": "Ns97KvKyj3MqS7Dc"}' \
    'mtfh50eObbrmgjhW' \
    'K0x0ZidAJ1CU1eD1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-admin-bulk-update-my-items' \
    '[{"customAttributes": {"La16Bw3JbUnUDh5y": {}, "Gjjv4Mwrv2vancmR": {}, "6Z7rb21A2E9pX0BW": {}}, "serverCustomAttributes": {"CMqPsRk5htdM5T3f": {}, "DSrSHrkoqv2mM6so": {}, "MaTvQq2a9YdFNtRV": {}}, "slotId": "SO0js0hG9xmSnzd7", "sourceItemId": "zgUxAogcnGkXk17Q", "tags": ["PkJHRhmLKQuQVFSK", "iXl8G2uf6E8EajXL", "SAS8MKMaxQ1QyJCp"], "type": "KedhuzI7G9NCKKXu"}, {"customAttributes": {"1bqI2M5PmXfKnQ7B": {}, "YGjCUDMOrbmoRvWn": {}, "fmGFy0eUoOBd90h9": {}}, "serverCustomAttributes": {"EDqSTOfoNewWjwMW": {}, "DKEt6JhbJ0fwTDaq": {}, "6b5RpMwhWPtndriX": {}}, "slotId": "U9loOxpmEuwDVc12", "sourceItemId": "r0DVUGgGHkapTCaf", "tags": ["FMdvYiCBuzUUwyI6", "Vtd4v9k4fv3kMiuQ", "3DhsKLxjt5srPFxB"], "type": "gpFtDBmTLH9kP9U5"}, {"customAttributes": {"3z6joBAhAlJGI2YY": {}, "b6ajBjgq6eY4PBNH": {}, "KPx62tHxDb06ZFy3": {}}, "serverCustomAttributes": {"uglSp2UxvF2uLXWi": {}, "lRD7HD6LCgdFxRGj": {}, "00RT6LvcnGMJbJIY": {}}, "slotId": "LssMvy9gkfTMRrXV", "sourceItemId": "RcAVRDX6gmDfNfPG", "tags": ["YYSTunMgt3C8hEgu", "CqlMHiQN3HWJw9zI", "WsiP2JQ24meDrwEu"], "type": "TyM2qohglzO8AEl6"}]' \
    'A9sh2x2ur2ccp7R7' \
    'OqPqIjS4i0N9ytb3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
$PYTHON -m $MODULE 'inventory-admin-save-item-to-inventory' \
    '{"customAttributes": {"c8pVZ8GlU8962e6g": {}, "tn5pUARJM1T8QwMN": {}, "OAzXmyHEV4g9P6a2": {}}, "qty": 6, "serverCustomAttributes": {"0S5RNB5dVCsB7xL4": {}, "axSPgPCiwLxCFLDi": {}, "xZwVtt3RVTl0tR00": {}}, "slotId": "oQgcHdGGK3x76U1E", "slotUsed": 71, "source": "ECOMMERCE", "sourceItemId": "wF7RnP1oK3c4RVfj", "tags": ["B0zi3XrYZUiN24ol", "1qqbalgizL97ycJV", "5YqE2myQzl7X9fHr"], "type": "6WvBxmBvNj3ktaDf"}' \
    '9B22HGgxakPt7IYz' \
    'aZUTmvsEzLPnnGsn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
$PYTHON -m $MODULE 'inventory-admin-bulk-remove-items' \
    '[{"slotId": "fmBerp84qjwzWpCF", "sourceItemId": "1vyamjsEzwtLPxK1"}, {"slotId": "os4qR8LaQzEb39sZ", "sourceItemId": "TdFfC8x5aHLsXHlm"}, {"slotId": "1RJTTy9JrNz1K5M1", "sourceItemId": "qgFddYvifGHawNx6"}]' \
    'yhniEHLbEQKc0aUv' \
    'rKXDIjYC4df9qswS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
$PYTHON -m $MODULE 'inventory-admin-bulk-save-item-to-inventory' \
    '[{"customAttributes": {"lpCI8DhjlxUyrs3O": {}, "SesE5p0DwUj2HKUv": {}, "PYUcQBxMSdOOsn2N": {}}, "qty": 6, "serverCustomAttributes": {"8so6JSaZAIadKDEZ": {}, "ywonA2SrEdN2tmGu": {}, "X6r0gBVUUeKKlPKt": {}}, "slotId": "E6gnYxmkmCWbs5qu", "slotUsed": 14, "source": "ECOMMERCE", "sourceItemId": "klBUS6uwWrCQt86J", "tags": ["rg8tLAJWpcyNkUvq", "n6eXr6FNbKJ05Ory", "a6LSSUlugIAknXcS"], "type": "aVYcAYp7qSiDvsfM"}, {"customAttributes": {"UOpWv46sXvpOjrpR": {}, "o4mYrCeQUnYoID2U": {}, "qO0iAXA9dB4ib8HD": {}}, "qty": 83, "serverCustomAttributes": {"DlLfTKxpVOXvGSrd": {}, "kqddI3ezqu6FB0sL": {}, "2xt6fX9j7rhZCAlD": {}}, "slotId": "lVKBsLZiBRXszE7C", "slotUsed": 76, "source": "ECOMMERCE", "sourceItemId": "MbJGr4drgkDuWS05", "tags": ["m0pGzazM2BUXnzUE", "WTiKMJAf6AgbiEDM", "fCckWogE5gcfF8AM"], "type": "GZ2FBS93Mg6TKwdR"}, {"customAttributes": {"MraDLrwh3d0ykRGk": {}, "gqUNIbJMJ9ABbKVW": {}, "O2YEDiqkwKbpdk7w": {}}, "qty": 24, "serverCustomAttributes": {"02YMvEUNfoL7JCcM": {}, "o7GxxXdbYCRexPek": {}, "TsQxMTfaSot7aohF": {}}, "slotId": "Yy4VxwHIJ9gzxqAw", "slotUsed": 78, "source": "OTHER", "sourceItemId": "qvcYmeDLYEzs2SQU", "tags": ["dKr6vgqkjycqclNl", "BORlC8ZkjsxYtgxp", "lHTPLzynjFZgF3er"], "type": "w7UsyHq4bBb0n1Jh"}]' \
    'PUS8BRPGV9n769zL' \
    'JdKMexeJc7NvgTSg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
$PYTHON -m $MODULE 'inventory-admin-update-user-inventories-by-inventory-code' \
    '{"incMaxSlots": 74}' \
    'bwTQFYEJjIYwqfSR' \
    'y8GgVk77fd1GS5Yk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
$PYTHON -m $MODULE 'inventory-admin-save-item' \
    '{"customAttributes": {"yhAiAItnWUmD225f": {}, "p1egsx3ErheNwqd5": {}, "priclNNqLyrlzrJ4": {}}, "inventoryConfigurationCode": "QHbfnAdtkujxHff7", "qty": 28, "serverCustomAttributes": {"W2ncJJKpqmgvUTr8": {}, "XAtpOqUQxzqJZiWi": {}, "3KQffT5Tn61A1xW6": {}}, "slotId": "okIqmd87ir9op4Yf", "slotUsed": 67, "source": "OTHER", "sourceItemId": "Tno5oHzqY3DgykA8", "tags": ["zBJX0rkOHUkY5aSl", "qhYoSXbn6l5xAzc1", "nc3eFm950dtVAo7w"], "type": "4e3v5mh6Rum5pbgE"}' \
    't39uJQpgEtchTe3n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
$PYTHON -m $MODULE 'inventory-admin-bulk-save-item' \
    '[{"customAttributes": {"t7t9ztprSfW9OutA": {}, "DrNGBWSJ1zQKxVmR": {}, "TawjiZPMoZZcyGEH": {}}, "inventoryConfigurationCode": "xAKDQher3usApPdJ", "qty": 86, "serverCustomAttributes": {"iBq23kyH9jQbHWkc": {}, "Vk0X28GS54vl7gIK": {}, "Bc7OYTylFRAJKySn": {}}, "slotId": "C0cfPl3Z2zSBbs4P", "slotUsed": 55, "source": "OTHER", "sourceItemId": "jeO2zMDSy4kyqyKg", "tags": ["rtEPdXXlt8geCdiX", "u3iNvn7vLZ7h6alh", "JNGZF07lsPP5OfHb"], "type": "XzWnVO2U4uyzZo1r"}, {"customAttributes": {"j0ZrLQjk4VoYfIks": {}, "th24cZBpdDFfvzeU": {}, "5iqhx6zv7EURTNIo": {}}, "inventoryConfigurationCode": "G1DBdoKH6sREmmfw", "qty": 95, "serverCustomAttributes": {"jyCVJ0V8obTlGVTh": {}, "z4bm41oIcV33yjPx": {}, "ibDjfF7JkjCVpZKM": {}}, "slotId": "xkFkBtXMU6KRIm5x", "slotUsed": 55, "source": "ECOMMERCE", "sourceItemId": "xEgBFzG8tlkxWKCU", "tags": ["1XN4gl7yHvEqpJSr", "DXVwCkhOQ161TFjR", "OYJm75VIuCOCkt2W"], "type": "1DfI8QtgODk9K6Dc"}, {"customAttributes": {"MnyCPn1FylWdaNV1": {}, "VaZTkbbuWiiA4UTD": {}, "gS2SVEo5M80LLbku": {}}, "inventoryConfigurationCode": "9GYH4ijqOVM50tCq", "qty": 22, "serverCustomAttributes": {"bklTHcmgXsrVj3Mj": {}, "ml6BpCODWGOLMmCZ": {}, "UeelXYyNrXweiCnD": {}}, "slotId": "ldRPRfd6mLZ0GTJw", "slotUsed": 62, "source": "ECOMMERCE", "sourceItemId": "joZrRtaeWKMC8wsO", "tags": ["ByQAMAgqFEzEt8um", "j5XhKnw7MHDwFVKU", "C2ecnpUDqvLQixPK"], "type": "VSmWa8TGko16XTqH"}]' \
    'c0cM7ixq8Tjnxp5C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
$PYTHON -m $MODULE 'inventory-admin-sync-user-entitlements' \
    'l8ggaEmCcuK2hHvi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
$PYTHON -m $MODULE 'inventory-admin-purchasable' \
    '{"entitlementType": "BEWpbusO6EyVqstp", "inventoryConfig": {"slotUsed": 14}, "itemId": "dh1SiZlOpIQ8GL7j", "itemType": "BF1R5OexAPzCG6ZK", "items": [{"bundledQty": 86, "entitlementType": "XcTwEtnHxP5pVtN4", "inventoryConfig": {"slotUsed": 18}, "itemId": "40Y62bCo941ALznQ", "itemType": "uHVskfCjUK8GeX4Q", "sku": "0B2Cj0oOmBmXu1Ki", "stackable": true, "useCount": 93}, {"bundledQty": 1, "entitlementType": "iz7yrIvQj2isN7bR", "inventoryConfig": {"slotUsed": 46}, "itemId": "jCiVR1dQ8kuhb4pU", "itemType": "wnGptHUplxzaDa9P", "sku": "Dwhu31d8eOdtrfq6", "stackable": true, "useCount": 34}, {"bundledQty": 59, "entitlementType": "m9wM7mgTtUdPVcQi", "inventoryConfig": {"slotUsed": 18}, "itemId": "6DKW9A6AmnQTNFid", "itemType": "ImWONTvCPMGLdbYE", "sku": "knHPKrZ7TiNBE0HR", "stackable": true, "useCount": 98}], "quantity": 63, "sku": "HLMvrCsH3RYxH2Up", "stackable": false, "useCount": 99}' \
    '7fCFAUzLELiM573T' \
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
    '{"qty": 7, "slotId": "DgUPShG8wwFKY9AM", "sourceItemId": "pcwJd4SrigIxAhbF"}' \
    'MZfxaznlDQbzTiFr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
$PYTHON -m $MODULE 'inventory-public-list-items' \
    'QB1yUonirH4URx3N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-update-my-items' \
    '[{"customAttributes": {"kKQBYrlUaMiFEWUT": {}, "8cAFO5zEw8GENEJY": {}, "PKxxOw7xNQ98IEbc": {}}, "slotId": "9YITN98j4P2AGeid", "sourceItemId": "XRRnIAJfKVjOn6rt", "tags": ["ILNJVv2DLLUyBt5h", "Ds45siG30Lv9iGa5", "mkZjnRXVcg6AByNp"]}, {"customAttributes": {"Bo2JYkwLdmR97u9M": {}, "VUii4KpYcb1AUsES": {}, "aBOTHnbX9tC9PQlF": {}}, "slotId": "AGbMtEybfcAl0mns", "sourceItemId": "AkRT2k0AzdgIunRk", "tags": ["TxsGdrpNELM8Lfku", "t0wnT24wh59RGSbB", "Mh7jpszuVk6iPdJ2"]}, {"customAttributes": {"boQqCCyJfThvCJie": {}, "qRSGN8Mm74HlSZzp": {}, "4aEW4GkHG5OIVuGv": {}}, "slotId": "47XJpkMiopQrVL3Z", "sourceItemId": "ZTVxqa9XM2gY14iW", "tags": ["k12Jffk8dwKNPUOH", "NZxML3yoBM9qxd6P", "Wz7sVnMxge2inL8f"]}]' \
    'BFP1ABaIKrEt8d3o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-remove-my-items' \
    '[{"slotId": "7cTS9OIIMErnNTLX", "sourceItemId": "HrsOFsbhRow4iaYK"}, {"slotId": "y0IjsDgbJ37DN2lD", "sourceItemId": "vdh7okHl1wMht2Iz"}, {"slotId": "q7TCUJhDsDefAS09", "sourceItemId": "VyQB1vR1mx6K17GL"}]' \
    '1CrO4ZuoGZSxTzm8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
$PYTHON -m $MODULE 'inventory-public-move-my-items' \
    '{"items": [{"qty": 29, "slotId": "cZb8cWdVH9bww15z", "sourceItemId": "ZsaYrJAe5Kd5QB96"}, {"qty": 27, "slotId": "4UZDTfhAyZKhqilt", "sourceItemId": "y9NVlgxUmnfdOAmu"}, {"qty": 65, "slotId": "dX1NqD20RUvvYeJZ", "sourceItemId": "w6QZFN7wFCnqpvNe"}], "srcInventoryId": "sGiVnt9p2to7Yja1"}' \
    'soDE1K0SvGrMYwPm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
$PYTHON -m $MODULE 'inventory-public-get-item' \
    'PXC2LfL2m5rP2A20' \
    't6foPPH94SUinY5d' \
    'iUlqgvY7dPPyahpp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
