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
inventory-admin-create-chaining-operations '{"message": "EAxcVpFrttufHIRd", "operations": [{"consumeItems": [{"inventoryId": "H9UzVRiXbqlAw7r6", "qty": 100, "slotId": "7eHpzSn3ZPUdc0qh", "sourceItemId": "4n8mzZ0m8SAMTwE6"}, {"inventoryId": "I56IaRDBXxyaNoMR", "qty": 87, "slotId": "hkspInrAip6lyzSx", "sourceItemId": "wElFHHdgs21Jub74"}, {"inventoryId": "CUkNmKJfh5pUkHOD", "qty": 32, "slotId": "FcDtgOjchIua5tWE", "sourceItemId": "IC32ogW7olvbTgrh"}], "createItems": [{"customAttributes": {"RTcPiSuL0Sly6XM4": {}, "OI18mAQLnzjMf8GZ": {}, "2WBZqxYG3aREAu2D": {}}, "inventoryConfigurationCode": "6QVKNCWP75TB0i7p", "inventoryId": "KxR8dl0zRVW4EZG9", "qty": 25, "serverCustomAttributes": {"Z4U68su8XfqlqNiT": {}, "vB6SdAdIhUDrwoZ5": {}, "MecdKi5r6QEa1ysL": {}}, "slotId": "Ezth6mXhzkzWkFeZ", "slotUsed": 90, "sourceItemId": "dSpHt0P7MIIR7Cky", "tags": ["F6C7duuyZ0GhDogq", "rhBRd8lDR6qVNPRZ", "YdFLIAjGGJddVCvu"], "toSpecificInventory": true, "type": "vx5KQ7KYnIuMBvaO"}, {"customAttributes": {"35llzQRaT5kPxUfo": {}, "fvnnSuB0y5WUlrMd": {}, "I4sNveabntBSxTeI": {}}, "inventoryConfigurationCode": "v53HGCiljvjKoyD6", "inventoryId": "SCwGrncqmLtjQHAf", "qty": 93, "serverCustomAttributes": {"d67FXGk2s9Q0mPVo": {}, "3twu0MesTCf9x4rt": {}, "69lna7qxNeIxPz6M": {}}, "slotId": "bwL6IY69z1UaLqYS", "slotUsed": 91, "sourceItemId": "WytLPziZMdjxcBZu", "tags": ["fQxGiHPllG4cYEzf", "TD1ZBm3MqHcUmLZZ", "bSqb8RwNmn9HrNQy"], "toSpecificInventory": false, "type": "uZAAiE0mit9RGCCH"}, {"customAttributes": {"YzUOcEdscKHPEqgA": {}, "8yu7Vk6Jt4Ymos9J": {}, "cdos4fYcTVU6RBt0": {}}, "inventoryConfigurationCode": "zYoMcHyCUEXlAvxJ", "inventoryId": "MdalwSyliWMNW5Ny", "qty": 77, "serverCustomAttributes": {"vqtlB2jJCSQT279Z": {}, "ZPYGu0rdlgdWyOtX": {}, "i3choQrpOsDBU5Se": {}}, "slotId": "pjChB3V0v52Dlym6", "slotUsed": 31, "sourceItemId": "KXNB3Gv0IqmF51Tk", "tags": ["hjYnaq6foWvXa3bM", "rXsDr6kILsSSyDdm", "ykmoPYgc2L4jk4Lo"], "toSpecificInventory": true, "type": "LSP0pf4IxjUkl535"}], "removeItems": [{"inventoryId": "X3ateEKDpADz1x3p", "slotId": "oD3Qgb3boLQQ1MzH", "sourceItemId": "7Qm8bwbmXgdAPh1E"}, {"inventoryId": "ThG96gAFKK2WDgCc", "slotId": "xvONZm3EeERmDnye", "sourceItemId": "FoF7VSZ6pf3vneSD"}, {"inventoryId": "2Tb3g7mSQUhAEtrm", "slotId": "jqU6YE3p4lSck0ZH", "sourceItemId": "n5GI39YBHqaTHeKt"}], "targetUserId": "W18iGeUlc9d9sogW", "updateItems": [{"customAttributes": {"a24CKNS0GqVvUfHQ": {}, "vsHXNUNe4mhgo5QB": {}, "65lSAiYnNjkfZrQv": {}}, "inventoryId": "GgbLdLsFzHkBMr1y", "serverCustomAttributes": {"rOMlNFSrUEirnjX9": {}, "fDmIbeZxzfTcyiuA": {}, "Tus9hsfpFDcSDG8a": {}}, "slotId": "MVGLiBNrDjqoxcwg", "sourceItemId": "GLXpUL4pp2ncYAHd", "tags": ["NzDmeIP6rOvDz9KO", "sb392k6YmJFfRByj", "lBiuFM3FIoVk8T3G"], "type": "pAnkCmBUqg2SCnqn"}, {"customAttributes": {"tX9y1aZSWMiVi10s": {}, "G6vxkfUcmqRRbceJ": {}, "5i0EeDxOgBnhhqEl": {}}, "inventoryId": "IaDml48wdNFLTm5T", "serverCustomAttributes": {"50x9WT0GfH2rtOa4": {}, "EXsXzOXQAk4mqrxz": {}, "TtuLl4XlbGL8QOxt": {}}, "slotId": "jzm8y2wNhmwoYZyI", "sourceItemId": "4EFZKBcYrCEAE7WI", "tags": ["sfmx40NLRc6m8heK", "nWhzfe2NubeoKFeI", "aFQCYoDPICpnduEE"], "type": "QlULdJz4mnRBkMNx"}, {"customAttributes": {"vvKgAT8mJrYq6hRk": {}, "loqxM3gpwxcfMy9X": {}, "zjjI5YbsKoADkzJE": {}}, "inventoryId": "N2VHzih3bit0VWn3", "serverCustomAttributes": {"CO39PXDNxtXgeO3F": {}, "gkXhjDzaQY3snn2Z": {}, "kP7cFdP43e5dC9XI": {}}, "slotId": "BudfZgrbHDIDm4hM", "sourceItemId": "zF4TxodenSrUTvfq", "tags": ["U0bfoMm5cTtFWbot", "QyXJRcQWsmqPNs92", "epxk0i8VxsZNereS"], "type": "vf9699mCEHThUJkE"}]}, {"consumeItems": [{"inventoryId": "TAsSp7gh4TeUTkOk", "qty": 53, "slotId": "j0ZwsVC0gL97ZVJS", "sourceItemId": "PqJiwv1qlYB1RSKs"}, {"inventoryId": "6gQxC3Gb7S0o4zGY", "qty": 61, "slotId": "7KQI1AeFgPqaOkvo", "sourceItemId": "1aolB4lkKB4EYOkQ"}, {"inventoryId": "1jMD3cym8xIfkOVW", "qty": 76, "slotId": "grREOLx0KOww3HIC", "sourceItemId": "QLfl7MUBG7qtPu64"}], "createItems": [{"customAttributes": {"yAtURKLRkb738HGS": {}, "6rDgMdIIlhS1fSiM": {}, "9331m7Ta1PsKc50K": {}}, "inventoryConfigurationCode": "v6ecnEevcAx2K2zk", "inventoryId": "RenmPZnGBt4P7Wnb", "qty": 7, "serverCustomAttributes": {"oJeQediogEhhM2rI": {}, "izGdKvOPdq5xrgxS": {}, "my1DN9LFkYW5DQyj": {}}, "slotId": "4bj5Ro2ogaKt2ujQ", "slotUsed": 92, "sourceItemId": "JsEK5QpNhlI2iS5E", "tags": ["pGhhvXYck0upMzUY", "nb76tFkEORV3bu1b", "NCtX7W40V6Do5sYa"], "toSpecificInventory": false, "type": "clxcft2ulIJzPyrV"}, {"customAttributes": {"EiOG4UcqsuGKHhMR": {}, "WLVd3DlhLuIpomM8": {}, "sm1MiaI1mX2tJoAR": {}}, "inventoryConfigurationCode": "tdbBe7udsMrok0Wv", "inventoryId": "GYYnx4V709xbnGez", "qty": 75, "serverCustomAttributes": {"J6fH24T805tVg8Jq": {}, "U0jZpjvsugAOS7u8": {}, "RiWyerCSa8SRgwsA": {}}, "slotId": "j1ik1jglaDXTvKCW", "slotUsed": 46, "sourceItemId": "RulpqpymDkQhtrHW", "tags": ["wRVnwVBOqOHi8pWG", "d1juYhiqjRJOqB5F", "93zFQbJndUDpdONn"], "toSpecificInventory": false, "type": "9zVrjfGXZnqAQUoY"}, {"customAttributes": {"1GjlIIk0iKoTTS1j": {}, "02o7JjTXAQN0qdsk": {}, "dQV0TqI8EFnmDbxI": {}}, "inventoryConfigurationCode": "xi4YKlONk2Q5Y4Jv", "inventoryId": "aizwiilatuUjjt9l", "qty": 70, "serverCustomAttributes": {"NqF7Bl0LcghVHfPE": {}, "spxwhRON0bc1eMbE": {}, "IjowLqc3ecjXJbZD": {}}, "slotId": "KKoxLE1Y3Dymtj3g", "slotUsed": 16, "sourceItemId": "rYaT5hOPjaf3H0tY", "tags": ["ighU0VUfcYHJbBfA", "KSiPW3VgsZXiR1DJ", "7HVWqMkNSawQUWDF"], "toSpecificInventory": true, "type": "vJBWic7UkBeIXuqD"}], "removeItems": [{"inventoryId": "uAXI66bQ71w0deoV", "slotId": "9Lx5RDA1l2XcrciY", "sourceItemId": "NEzvSZIPkhSgORcz"}, {"inventoryId": "5S5BvmgBLxh4ijFn", "slotId": "E3Tam69qSZ7PC6f6", "sourceItemId": "QkmZXElW9YfRSse6"}, {"inventoryId": "AAz3S4czz0QKFlAV", "slotId": "mVLu4AOec0z8eBee", "sourceItemId": "oip68J1nsv4W2OJh"}], "targetUserId": "tafxMSJlHeb34sZK", "updateItems": [{"customAttributes": {"Hcl5LLLOexL4fZvW": {}, "tND2tcBFpX8lNtFE": {}, "J7tnkY6Mca5afj12": {}}, "inventoryId": "K2IzrBvvWm4udE0O", "serverCustomAttributes": {"XudXgNne8kJATwlc": {}, "6esUp6Sw1I98jeZQ": {}, "7hfxnhLd3Knaknoe": {}}, "slotId": "d9DHhLOqQGhCUr6i", "sourceItemId": "TrjyEgarAdNJOIG3", "tags": ["6I6tRbRcrEveMdAd", "iPKDUVSC00PYeDca", "gginxnFIna3yddcb"], "type": "sPheTH26IUJNvYuG"}, {"customAttributes": {"RUvpZaHCuESOiIZs": {}, "MfB4ZH3mtgWgU4pC": {}, "AKxeE70CaunQNxot": {}}, "inventoryId": "371W9G4AvQkqsGnm", "serverCustomAttributes": {"yo5JJTUVmb8GEXFT": {}, "lEMEsFzYqwgK1Np5": {}, "nodqpLm7FhJBNXzA": {}}, "slotId": "FdO0Khqf6kiTdSGv", "sourceItemId": "2LFjAKY7CbgsWqFW", "tags": ["ZX7kPBom8F9GLLTG", "8phc3n4iLoIllKlp", "O2pqiXJF3WGRaoQo"], "type": "mSJC4DdrKF7SUQPL"}, {"customAttributes": {"G59e0k5ZtX6wK7Pp": {}, "UlcIW32iK7MGt1ix": {}, "Y5rA1WoVeJIePF8Z": {}}, "inventoryId": "rQzP4zvtdxdbZUpd", "serverCustomAttributes": {"6FJtHJ1pyVwyKQLY": {}, "6FEO65Rb3z7CYLM8": {}, "IlsHqffnrfsGlfPa": {}}, "slotId": "ZKBwa3Ddb60ufPpz", "sourceItemId": "wj1QGIFmlVf4jvap", "tags": ["seE9LN9bvhOrHflI", "Od6X3viLvtEk4mTI", "pUA9gxo8SV38nEho"], "type": "XmM2W7l6jHMA2rG3"}]}, {"consumeItems": [{"inventoryId": "nakopAywelu01nry", "qty": 62, "slotId": "samANkZlOX9Sfo95", "sourceItemId": "HgXqKhTPkwfLM9uS"}, {"inventoryId": "ybRzWek2gZvRrvr0", "qty": 28, "slotId": "bSc6bWvgpVyW9dD1", "sourceItemId": "kOmvrAejcq2LgkQu"}, {"inventoryId": "aS7RBx3vim02jBOx", "qty": 36, "slotId": "YhWV1qx8CzPML52f", "sourceItemId": "aXUr9Sk4lq2faBcA"}], "createItems": [{"customAttributes": {"XXKlhvyH8paOJtxq": {}, "MPpcVfRwNj547fH0": {}, "XrKEDpEY8VnocGAj": {}}, "inventoryConfigurationCode": "ci0V3tBf2jnHGKXp", "inventoryId": "hn50c9tNLDljhZ2j", "qty": 48, "serverCustomAttributes": {"fAacR0LgB5BUXvjc": {}, "u2s6w3VifnKqmTSo": {}, "GH1XEfY6QAYn6WQ5": {}}, "slotId": "UBEU1QAOHfZiGhxO", "slotUsed": 6, "sourceItemId": "VxYheR3j5mNZ6vwv", "tags": ["7K8Asvt1j1Rx59he", "sNWy2NvZ85DDKDAF", "8KDsBZOuYQJ03BAH"], "toSpecificInventory": true, "type": "7c53q7akMpcmnnx6"}, {"customAttributes": {"RVBrop9v7aZK3h65": {}, "hbN15zfQSfQrtfF3": {}, "TQN0OcNDLr36vzoh": {}}, "inventoryConfigurationCode": "ZyjMQAg5mPYhrLTy", "inventoryId": "U8OhgfY9JQYGF4bY", "qty": 68, "serverCustomAttributes": {"EcENx9xZlAchob44": {}, "lONDDwMvgI0HlyPR": {}, "7wZNiVsF6xG2mXEQ": {}}, "slotId": "dbzIVy8alncV7vWg", "slotUsed": 91, "sourceItemId": "4vZFTYnPkmSu4PWa", "tags": ["m1jxR7SETWjteoc8", "fgvZDDhoO05oKqym", "xLD1Lcvw6T6mZEiw"], "toSpecificInventory": true, "type": "FRZ3ZprZ60zMjhTH"}, {"customAttributes": {"eh94TSenE5hCFkIf": {}, "5weqZ18MH57l2Zsr": {}, "h90ETtYmGukz3Mnl": {}}, "inventoryConfigurationCode": "rjcHp6B8Vj7rXFgD", "inventoryId": "nDkdZ9bpjb1tdA3Q", "qty": 15, "serverCustomAttributes": {"ctvrK2jhsYpKPlXn": {}, "77AtYoFzLAATPY8P": {}, "8P3cfoivvQxevecW": {}}, "slotId": "w7Rry0KK5rgAGO0d", "slotUsed": 100, "sourceItemId": "Ev3aevq6iohU1cg4", "tags": ["W1IS3Uv1BpWoJBaq", "dg2FHcunsS1lnaO2", "m9vqjhbeK2qN8g6x"], "toSpecificInventory": true, "type": "vRyd9UuL02Le8HSC"}], "removeItems": [{"inventoryId": "slsDd4M1F5qRIblS", "slotId": "7Nz81GRazPAANjfB", "sourceItemId": "oldFOyqA2clJ5gEO"}, {"inventoryId": "aCgM6Yn6RugbNEIp", "slotId": "GBFUjOn5mM7k8nbL", "sourceItemId": "zvtCIW5ynMKquUic"}, {"inventoryId": "AeIVXtoWAXhMlW4t", "slotId": "LqX7OICf5oD1e6oI", "sourceItemId": "9FmYel0kOw72o8Zk"}], "targetUserId": "gk0jS6rDWUwfhKvr", "updateItems": [{"customAttributes": {"f2AaH4yCWrHSppnI": {}, "ZkNnTn3rzH5NvAtc": {}, "vNedgS1fUfKmihDb": {}}, "inventoryId": "mu8ePWlQMVDXEHei", "serverCustomAttributes": {"GTnwyEw6hIWDZrpP": {}, "7rz3ISW510kHr4is": {}, "TKWjmv67nuHCXWfw": {}}, "slotId": "nwGioVwVzmmBVVFf", "sourceItemId": "pqx1AeLtzcPJ3jtD", "tags": ["YBo4FUTH7CGfKSyx", "gRR1DiCqSMzpqIFG", "LkDs7ACC1RgBfoNr"], "type": "HlFi2qJLgmBLE35Y"}, {"customAttributes": {"hyiDV90SeI5yppBH": {}, "oytVznCgNyx9fbT6": {}, "3ShEh8PbGikLjgjc": {}}, "inventoryId": "j34uulU6FYBZsWFb", "serverCustomAttributes": {"r3RSP0W9nBhvhf8Q": {}, "0DtJMcYQdN66bswA": {}, "gt65X4N1LQZmB61J": {}}, "slotId": "MdtwCVUrYQue84dw", "sourceItemId": "mbwFEnAZaWsQJtRY", "tags": ["oagRJK5PX9UcOvhP", "yE11TRT2SKseoe8V", "Lie0LBa36KNzjf00"], "type": "5CXNGehQ2aTjTDfK"}, {"customAttributes": {"FDXC7eGL5YhJDWh9": {}, "YWqc0qgV6d9yOfIM": {}, "Lds2DbPcaoMdtRLT": {}}, "inventoryId": "mSvTkQQgB7exYvmH", "serverCustomAttributes": {"Mxr5hPCJJztJBg0t": {}, "TJg46IewOXE2AkCh": {}, "3QIZsUf8lGFXcmwT": {}}, "slotId": "ERHclOdxIwqejxe1", "sourceItemId": "8rNdb8Otq6j1mqUa", "tags": ["v7k05HAQltnSojV4", "jT65yclX2FtAz0vJ", "jFIYWOaNdsimmkW2"], "type": "miH3xRHAKy4QxZka"}]}], "requestId": "XZ7vmiEd0JPxVyQp"}' --login_with_auth "Bearer foo"
inventory-admin-list-integration-configurations --login_with_auth "Bearer foo"
inventory-admin-create-integration-configuration '{"mapItemType": ["shaDwNqTbbFMXAMf", "VXe0GZeMgsRsmH1E", "QrYmkPKTPOlhTtSi"], "serviceName": "ZNCxuogFteTHJe4B", "targetInventoryCode": "hSSQkQD6WmOt6D7u"}' --login_with_auth "Bearer foo"
inventory-admin-update-integration-configuration '{"mapItemType": ["fFVTOhvQpfbBke8a", "Edd36xj6wySoltDx", "sbzxrlaKEfkoYjY2"], "serviceName": "o6ouRW9UtNquwC3W", "targetInventoryCode": "gumrIz4NhGztZpr4"}' 'U4fwQIiLXgmRasvj' --login_with_auth "Bearer foo"
inventory-admin-update-status-integration-configuration '{"status": "TIED"}' 'lj8m3XEwP2b4gd3x' --login_with_auth "Bearer foo"
inventory-admin-list-inventories --login_with_auth "Bearer foo"
inventory-admin-create-inventory '{"inventoryConfigurationCode": "Oeii8Jnmssep2xD2", "userId": "NY0kABeGs9yxahld"}' --login_with_auth "Bearer foo"
inventory-admin-get-inventory '1pO0Gyf5PO3COyMv' --login_with_auth "Bearer foo"
inventory-admin-update-inventory '{"incMaxSlots": 4}' 'DQpKqxLGeMvr9Tsv' --login_with_auth "Bearer foo"
inventory-delete-inventory '{"message": "cMQ7dBsaIecRxIsZ"}' 'vD6rmzVr5XT1Nxw0' --login_with_auth "Bearer foo"
inventory-admin-list-items 'v1dMQ9Rrbk6C2cVW' --login_with_auth "Bearer foo"
inventory-admin-get-inventory-item 'f6ttvbU1PO6ApCD2' 'VXidT7w0Oc15N8WX' 'BPp17PAewqSm5x3B' --login_with_auth "Bearer foo"
inventory-admin-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-admin-create-inventory-configuration '{"code": "4t7WQnp8jXZedgt5", "description": "cyNe27HLtwtVOaxg", "initialMaxSlots": 86, "maxInstancesPerUser": 81, "maxUpgradeSlots": 64, "name": "Jbct8puMybYGxD9I"}' --login_with_auth "Bearer foo"
inventory-admin-get-inventory-configuration 'PmmsLmu3kaPj0O4z' --login_with_auth "Bearer foo"
inventory-admin-update-inventory-configuration '{"code": "d8Tb7cUNGPTBxiFF", "description": "Crn7djjs69FTFVGU", "initialMaxSlots": 98, "maxInstancesPerUser": 16, "maxUpgradeSlots": 44, "name": "vKhJCmeisql14mUH"}' 'VbMPimNhcZsU3VAd' --login_with_auth "Bearer foo"
inventory-admin-delete-inventory-configuration 'MDcb4qlkiFAamqvZ' --login_with_auth "Bearer foo"
inventory-admin-list-item-types --login_with_auth "Bearer foo"
inventory-admin-create-item-type '{"name": "I2KwjqPBiWXade41"}' --login_with_auth "Bearer foo"
inventory-admin-delete-item-type 's3rH34mB2yPlRpWj' --login_with_auth "Bearer foo"
inventory-admin-list-tags --login_with_auth "Bearer foo"
inventory-admin-create-tag '{"name": "mHZAAvKTH8MuqIg0", "owner": "SERVER"}' --login_with_auth "Bearer foo"
inventory-admin-delete-tag '41cK8QTwiIAvxSvN' --login_with_auth "Bearer foo"
inventory-admin-consume-user-item '{"qty": 60, "slotId": "AODbi9BzupBsFpYc", "sourceItemId": "77GtRUcCFeY5g4Xg"}' 'BsbfzqxBPNe8ae1I' 'l4aAtEbu4IjGdqth' --login_with_auth "Bearer foo"
inventory-admin-bulk-update-my-items '[{"customAttributes": {"RxTjQ7gkZEY8rG0q": {}, "0Q2Qd2JzRbkF2I03": {}, "dIjvBbA6bfbYaJCJ": {}}, "serverCustomAttributes": {"jfk2TUvn95FhO7VW": {}, "3mbDVMDu87t0ldWf": {}, "7iSGIiKFtWtn4Yr2": {}}, "slotId": "svKM6pqLGZ0TBujE", "sourceItemId": "LAUK6mQ5iZgbwwm5", "tags": ["iGzXtcknrgidKupv", "XO6aj4hCmTC34jxW", "4pIDwdqXpmRmut9H"], "type": "9XyWI8bp8fQxRuX9"}, {"customAttributes": {"1uYmtrHJbEGTUj7Y": {}, "jERL1rEQG02zccA8": {}, "wvLsWUNd6lPKvqDe": {}}, "serverCustomAttributes": {"jvqklTSvDwuOrP9l": {}, "zpiX0VuFpZum7izx": {}, "e7NPzjOa8E7wY76P": {}}, "slotId": "xLv9HBEUe89AwEw1", "sourceItemId": "HO4FnKtx4XLKAmlD", "tags": ["r19uJ3nq6VerzVCc", "I8y3Cz0YqCKUh5RD", "9vNAp4jinFpnQ5xF"], "type": "9wwbvMZyeDeRnVfP"}, {"customAttributes": {"Ua6xVVBcq3wZpFIY": {}, "eAg79HcLJXJ7mpVI": {}, "6eTYAjdPlCiQQC35": {}}, "serverCustomAttributes": {"cj4KyOVgvnWbfRJt": {}, "sB7cUQZ2QUAxJrIN": {}, "PXppPNO3AfmXcgwC": {}}, "slotId": "3IN6tvKgLB9QmJIO", "sourceItemId": "q9dP5szG71utjsQ4", "tags": ["CrRb9gUCeVz7fWbZ", "IdhevfZvyV7Acodc", "ZwKjYDdmJOlzwm9S"], "type": "u4FnS98QqftSjq7s"}]' 'n8yreciPLfkVyyJs' 'bGpO6JgehDJxEN7J' --login_with_auth "Bearer foo"
inventory-admin-save-item-to-inventory '{"customAttributes": {"lZc8LMq1o2jZWu4y": {}, "A3r0u4q1bTHXIjfJ": {}, "KyFlM0u1uuoVdn9y": {}}, "qty": 97, "serverCustomAttributes": {"YOJf5KwMZQjzvjSo": {}, "zv6CTRDl0zp9CzHF": {}, "winkBNi4gvqgl6TZ": {}}, "slotId": "9TGVPmv34h6T7Esu", "slotUsed": 11, "source": "OTHER", "sourceItemId": "mfxKYB4LM6H6QXmp", "tags": ["Z9X3fUSR1l9xLPBs", "mAUrD9L1IiD6MlcE", "PhMDFzjHZ3sIhzOx"], "type": "2CXKlvIomU3pIxM9"}' 'n8D2eLMe3lt9qfx2' 'UDcgVE7L9FK6e0Mr' --login_with_auth "Bearer foo"
inventory-admin-bulk-remove-items '[{"slotId": "Pc4vtxk9hVKlG56H", "sourceItemId": "lzGr7XjdyRJunZPk"}, {"slotId": "p6ccIBnWyPw8mj7g", "sourceItemId": "yQ7XdIszGRj46COP"}, {"slotId": "ipH1MWVTHG0qHJCW", "sourceItemId": "EfOJpZm9yEYWNGMy"}]' '2pgSGSUOK68eqGJt' 'Wf1Ybgg8rdwY9bmr' --login_with_auth "Bearer foo"
inventory-admin-save-item '{"customAttributes": {"vHmO07KNqX9LM2Iw": {}, "EsdOGBXBwnzDX8v3": {}, "xgC1Ge9PdbTTAJ2G": {}}, "inventoryConfigurationCode": "p1r0sVZ6LJAOddIL", "qty": 98, "serverCustomAttributes": {"l3hPjNDKv2LWfXqj": {}, "r8fS79En3wYowBdk": {}, "aZ3y6i38XQjLDRqk": {}}, "slotId": "piFK5BtiQ272Uo9U", "slotUsed": 57, "source": "ECOMMERCE", "sourceItemId": "WodpdwsX1jorcyR0", "tags": ["x3YiHF8ITGPRQBCg", "Is1Q2lzxl0yF5m77", "TTh4gUoj8u2WRcLi"], "type": "EtzVlnkflfn7pHY4"}' '8F1dl1q92m3iRlfn' --login_with_auth "Bearer foo"
inventory-admin-sync-user-entitlements 'BAk0CwiAsR65yQ9s' --login_with_auth "Bearer foo"
inventory-admin-purchasable '{"entitlementType": "suHdGmxncCEr0Kcg", "inventoryConfig": {"slotUsed": 9}, "itemId": "qiqOkNeATj7eGjod", "itemType": "d7CcJUrI6MAugK5k", "items": [{"bundledQty": 50, "entitlementType": "2yqPsMFxKybPkbuS", "inventoryConfig": {"slotUsed": 47}, "itemId": "LOq4ft5jGcMICPUY", "itemType": "nfG6jl9U4jReteIM", "sku": "gzISomCsodJrhQW4", "useCount": 34}, {"bundledQty": 33, "entitlementType": "FHLbyXmgCNiXH8ue", "inventoryConfig": {"slotUsed": 27}, "itemId": "GcL1koyHjCH5olYL", "itemType": "ETRpABAmO2EGvJ4U", "sku": "MS93yOxNInDByhno", "useCount": 23}, {"bundledQty": 21, "entitlementType": "uO6ti0QP2ssiJ66O", "inventoryConfig": {"slotUsed": 53}, "itemId": "4xQye7HqnVK3YVeO", "itemType": "Ws9mfVQh3jLBtn9p", "sku": "xpE7BYtzB0B4CxyQ", "useCount": 36}], "quantity": 13, "sku": "UpIFvORxTi79DpSj", "useCount": 2}' 'FGzfZ2hxcJ2Fnemn' --login_with_auth "Bearer foo"
inventory-public-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-public-list-item-types --login_with_auth "Bearer foo"
inventory-public-list-tags --login_with_auth "Bearer foo"
inventory-public-list-inventories --login_with_auth "Bearer foo"
inventory-public-consume-my-item '{"qty": 70, "slotId": "M23SzUo4hNBDh9ZF", "sourceItemId": "P1OW0nXOErQPS4Vs"}' 'RoYIK69yg9ADCGiX' --login_with_auth "Bearer foo"
inventory-public-list-items 'aLs2xjHkinOD975n' --login_with_auth "Bearer foo"
inventory-public-bulk-update-my-items '[{"customAttributes": {"ARHCmhNHSXuqIHsx": {}, "vaUoXDmwWsukxncu": {}, "D3QxCXMd00YBWCaV": {}}, "slotId": "VmM45mfIZsWhkS47", "sourceItemId": "6dGGJwJ00UH197MJ", "tags": ["6zU7JLMQyMWzYQCA", "aPJgoxGJoJaSzUtY", "4ZD0Xtb0U4pH16NU"]}, {"customAttributes": {"sVY21NVIs7NRen2Y": {}, "3Ns0QJQeaWytPfds": {}, "1BYx0EaURydf8Zyy": {}}, "slotId": "ZeHAWGgJUbUJRMbk", "sourceItemId": "cTglbU86FyOjApNH", "tags": ["BVfNOURcjY3YYT9o", "TynmfIuBWgJTNFfM", "8M0IW4oe8KDgy0xZ"]}, {"customAttributes": {"fAcNg14Ws8TIP1LK": {}, "iFQoLDvumfqrgSfn": {}, "x2h61X9dN1MGRXBJ": {}}, "slotId": "6mVV7JS9qjNLwvI8", "sourceItemId": "JdiY3RRiLilmOGF6", "tags": ["dLLIeIVIjMcdlbdR", "XTGIrdNL5gJPqTAj", "gqaTHf1ANTJ9Yk99"]}]' '7XkGOdC6ItxDT8p4' --login_with_auth "Bearer foo"
inventory-public-bulk-remove-my-items '[{"slotId": "n4XCFkD1AJLCwszb", "sourceItemId": "ZxuHSgDOK8bjoF7b"}, {"slotId": "L2635KbtZTGJpqgl", "sourceItemId": "2IzNXGTuQPIDpor7"}, {"slotId": "t1aJLNNz6QIVC9Mf", "sourceItemId": "uc8VOsnmnlVljdWY"}]' 'mELe74p38vumnxAn' --login_with_auth "Bearer foo"
inventory-public-move-my-items '{"items": [{"qty": 13, "slotId": "BTxaTIz0jcgDI8Pk", "sourceItemId": "z96vd80msqIm5buf"}, {"qty": 27, "slotId": "UBDShHD32vvL28FP", "sourceItemId": "wTiXfLcxDC9Ynd02"}, {"qty": 25, "slotId": "i0Zxs5SWCqZXHLLa", "sourceItemId": "31oQf7BULnZDhutD"}], "srcInventoryId": "M6BqguqD5xxGxBWt"}' 'nTKUe2znsqPzPkwC' --login_with_auth "Bearer foo"
inventory-public-get-item 'Bo2SwCUsTag4MLAo' '3m61P2xaNfmn8Onb' '1a9gMz0F2UBRmMhA' --login_with_auth "Bearer foo"
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
    '{"message": "bUWmFhdYLWzMuv3z", "operations": [{"consumeItems": [{"inventoryId": "kUY0n0BAZkwbYkBL", "qty": 49, "slotId": "SSITz4TjCrJHXGXk", "sourceItemId": "u2YVuOzhxHmnrrV9"}, {"inventoryId": "ZGWrZ05sxe6A6Rpm", "qty": 74, "slotId": "PUTKbonoucNmzwOZ", "sourceItemId": "OK56sDkci5rZ8iMl"}, {"inventoryId": "OuksQJCiRFiZWwJ7", "qty": 81, "slotId": "o2LTo5ijlvDF8qBW", "sourceItemId": "CQ9dLWYyS8zdhMeB"}], "createItems": [{"customAttributes": {"XH8x6HdVfZVDAiU6": {}, "iJOF7JKZFNk2NKy5": {}, "9X8iOg2sVBiCoeC5": {}}, "inventoryConfigurationCode": "weXJl7PeiMH8z8dV", "inventoryId": "ej8N2yv6VTnOK7xA", "qty": 44, "serverCustomAttributes": {"excbHdEtoQvpV344": {}, "RctmTozCi8HeV6jb": {}, "alHmqBBfi7sSF5Bo": {}}, "slotId": "GiTCVsXsygWbjE2o", "slotUsed": 30, "sourceItemId": "jHz9x7XZIjU4IK9l", "tags": ["OLaZaMphKCqTq3EV", "heJjoEEXBLIxGnNu", "hoJM3WWPvvCiCf33"], "toSpecificInventory": false, "type": "7KORRhxSWLWLNfHR"}, {"customAttributes": {"D3V15QaGGL46LuxJ": {}, "F3sbeqWBdQuWfgBA": {}, "Kx27MSBqabUXOGkk": {}}, "inventoryConfigurationCode": "oMUZn1YXj5zFZeOC", "inventoryId": "OR9NvBQZSJPOIKrR", "qty": 56, "serverCustomAttributes": {"Eiyfa2LrnpZxNnLR": {}, "H36bqS2oFY76PU1A": {}, "ziBOHEAj1cT3u6Zc": {}}, "slotId": "2FbrTFznTgDIwZIR", "slotUsed": 100, "sourceItemId": "ZFDsO1skRjOU1SMf", "tags": ["QVQa6blj9Rdd85bd", "YUumPKVSZCg3XTc9", "vQe0dHJfF6KIuvnR"], "toSpecificInventory": true, "type": "bUmulhe98oaFKlQi"}, {"customAttributes": {"cdrxVhrtwSd9QWVM": {}, "Yz7TU1TsxsChSclS": {}, "kb5aBi9K9zyv6gFZ": {}}, "inventoryConfigurationCode": "XI5nXJ7hLi6Hwewe", "inventoryId": "Rmyo91dIn7QqXBDX", "qty": 72, "serverCustomAttributes": {"2QSPAd9sxoLnWGP1": {}, "PafIjLX8ce0KbNN7": {}, "Ycl2JfmQplvGjVQ4": {}}, "slotId": "aebjfgGu472oWJlf", "slotUsed": 12, "sourceItemId": "ydCOInVolsr6CHmj", "tags": ["763vLwtYEJTSiXjc", "Y5ZPkv90lyKSTWLx", "SFZ0LpupEi5DbkVs"], "toSpecificInventory": false, "type": "qFTi1t530Wj1WfzI"}], "removeItems": [{"inventoryId": "vc3VlSXrA3XUGud4", "slotId": "tVjmxEf4XvVhFJTx", "sourceItemId": "FHITBg9x4unq3eOM"}, {"inventoryId": "HIKeTyBG5dCUoExn", "slotId": "KfV3869IN4V1OdhH", "sourceItemId": "4GVU7Exlkmc4xYiL"}, {"inventoryId": "jLyZrXr9Bhtzn8jA", "slotId": "dTn6xBhrciryLm67", "sourceItemId": "rkadH5Y41SLjCPrF"}], "targetUserId": "a05Xl5TPC5GODS44", "updateItems": [{"customAttributes": {"bmm7jPdKLddfdsUq": {}, "jXVzW1QqxnWR5she": {}, "LgsAF4ctv5guycGi": {}}, "inventoryId": "q9j2EyIknfLDpgHn", "serverCustomAttributes": {"MOn8nc3gUZ8ZFyyE": {}, "r0KBXuJBqK4QtEyd": {}, "PWLPBYiR3UbJc1ZY": {}}, "slotId": "apx7C477etqgfOJD", "sourceItemId": "UT0uKAPrARya2IMl", "tags": ["NiXpF4qvsUUpHqi3", "3TcBGkc0HjUcnkpU", "9oVzl2kBuLFXIeCE"], "type": "KZUTz3GvCAZ5j24a"}, {"customAttributes": {"cYHbrryHB6GO9zP3": {}, "FaepA3b3YJ9nJM6v": {}, "tT27xv85K5MU2qmb": {}}, "inventoryId": "eqaVemINdClpF7Ov", "serverCustomAttributes": {"lBIEgjse5kd6GEDo": {}, "08yq5E5HleLoog4m": {}, "e2NBFp62xlXvVcJe": {}}, "slotId": "rTPW02PWsHiKYArA", "sourceItemId": "xnKBfBfDlrQQuAc1", "tags": ["0DjjwMv4vrIPRtvh", "QIyLarjaLOKnX51y", "AB8Pa3uNGKhaLlJz"], "type": "JMSnJIIgsAVmaGYx"}, {"customAttributes": {"UX1B9oVuzG2CnYX2": {}, "YBF2g7TVtzYEHUod": {}, "h3iUfBthbepUCTWi": {}}, "inventoryId": "Z1uqh7GAi4FEIu44", "serverCustomAttributes": {"u83ZLRxYlYqlpq03": {}, "BGdIk4oEogFVGR71": {}, "rJOBy6lsj1AKGBjn": {}}, "slotId": "HmaAu4YK87DYAWWc", "sourceItemId": "bcbGWmKgE8CZ4AEL", "tags": ["r5lraa5v5P5Cj8hg", "FsqHC9h5JPiMEtgK", "uiGTYgwWv5XldL6r"], "type": "OVGcRAn51rVAQSxp"}]}, {"consumeItems": [{"inventoryId": "4qTB54mKA3V9DKlC", "qty": 10, "slotId": "kMJ7cudf4r916GPr", "sourceItemId": "hn2etVIQvRkQJAtD"}, {"inventoryId": "UH9tx60AehGz1erm", "qty": 73, "slotId": "Wit1QC7FKe0fnHUl", "sourceItemId": "mU1unGKM0tgfeWy4"}, {"inventoryId": "7bbwMI4gGmvK9gW5", "qty": 99, "slotId": "6FwBNrFXt3TAuKBw", "sourceItemId": "BcD12ae6r3hHwya4"}], "createItems": [{"customAttributes": {"NpdOzg3hr6ucHf7d": {}, "bh2iKNUl0qJqzoKM": {}, "RMG541PAiNjULsx4": {}}, "inventoryConfigurationCode": "SnKNXLMUaDSwwQln", "inventoryId": "NRZJHBSB4fZWEFIZ", "qty": 38, "serverCustomAttributes": {"4S95mj8YRvae4f4l": {}, "hBPbarbWEm8bVtZc": {}, "fVCPdQhim9QKUAFT": {}}, "slotId": "VYelIlGJg9wdc8bi", "slotUsed": 16, "sourceItemId": "qnWrIprOv0BJ9Sgl", "tags": ["7H1sdH2RIJz1eI7Q", "5pu9PutLf6IrvZoB", "GQbO4S3rURGWUzPA"], "toSpecificInventory": true, "type": "BYJ2fkqYJoF2FI3v"}, {"customAttributes": {"yyqRzc20O7FdsJP1": {}, "G9tyBTfERXdvgD1Q": {}, "f7Ot2DkUt3yexZBR": {}}, "inventoryConfigurationCode": "vxYnEBhXtAVxCd3m", "inventoryId": "eTrT7cF9oVCh89wN", "qty": 84, "serverCustomAttributes": {"E3RMUddwSSgxCu8z": {}, "ru1DhGAYOHR5BWa9": {}, "VzIkaQEl1iUProNB": {}}, "slotId": "6hI6IpGcToWgFvdR", "slotUsed": 15, "sourceItemId": "6Q4veujxtyQENvJr", "tags": ["BCqeg67d4RWOqO4U", "0bitNQLzwRoWnR0A", "bkCPY70FmvviVIBb"], "toSpecificInventory": false, "type": "GVL5KLTxahWlS6Xd"}, {"customAttributes": {"BaKSLCgOOPXM6XTU": {}, "h2dJ90yqHDNacl4F": {}, "9G6Dl5TFwBY6HKXA": {}}, "inventoryConfigurationCode": "blkT8VGgSH8MGZGw", "inventoryId": "iVj7eDTaka9ABfX1", "qty": 71, "serverCustomAttributes": {"XSAyejnny0Ju13b6": {}, "o5uB2XM6IHy7EEvH": {}, "yLmcvrZZOdwe1x8R": {}}, "slotId": "jU6Bi8JXE52sUBBq", "slotUsed": 91, "sourceItemId": "SimQQoLbe5YOJvxG", "tags": ["RxUzrTwagH7BMT1I", "ZKTdNFVBQ1crBXAu", "pATO8uXsqVpdiWo8"], "toSpecificInventory": true, "type": "jDAM0Riw8wLYW3n4"}], "removeItems": [{"inventoryId": "F3LD1EDwBXw5uBYe", "slotId": "QZOzATNSV9E9yyNb", "sourceItemId": "7yaLXzAVYymOuhCk"}, {"inventoryId": "Zu4htrsf8eIFSovT", "slotId": "GXaMsq8ePN1oco2j", "sourceItemId": "x8Upe8SjMvpqM8pu"}, {"inventoryId": "ggOEdG47gD5i2Ni6", "slotId": "AnWn3NdEPhNHSH7e", "sourceItemId": "KDfRcngEpTnRUQr3"}], "targetUserId": "RLOM1vEx4gqDY6jw", "updateItems": [{"customAttributes": {"yKRxhkLe5zohg9s9": {}, "utRQt28b6o3K0COF": {}, "74tz6aeXZOYwbwjM": {}}, "inventoryId": "NdxKWlBfnRyFS0Ed", "serverCustomAttributes": {"7gTM5AVrtBQiDTcN": {}, "nZa6Zuxk6u6HXXdi": {}, "C9ZDj4E4mv12FNXy": {}}, "slotId": "poOLl13j84P0Kqir", "sourceItemId": "J4PkMFtsnFfz8Ew0", "tags": ["X8fBuBSKLSQ4GvLt", "z50D3rpBfBovqLwX", "BuT30EYeRj17xGha"], "type": "BKoUfiHjGmCyPsKC"}, {"customAttributes": {"JTv1ic9gvagF2cSu": {}, "ztsJ5tj64gV7nmDk": {}, "29mcjSuz9vbNStqP": {}}, "inventoryId": "tQmQN6eKAGiZFCft", "serverCustomAttributes": {"T0RWECdjWYrnulxc": {}, "CKAru8pOaAVLDB4k": {}, "3JwkdaxR7GJpYmuY": {}}, "slotId": "CPG181q9GA5DydC2", "sourceItemId": "D8UT6KOc4VPDUR9a", "tags": ["yazqXRqegIUicYXX", "zxsBFrUs9BYp6TgC", "ejBd5o7iTST7R3Kb"], "type": "bQGERMNpqWb51y5R"}, {"customAttributes": {"UzvMfTkPy0fGvTGg": {}, "fLKsg0b1Bq78cE5O": {}, "5pmPnbiPJ9j4vxmb": {}}, "inventoryId": "H3rVaauufxkPHElu", "serverCustomAttributes": {"g48TgfNu0rqXUOyT": {}, "oLPIREGIKlJt3EP9": {}, "kKwkENQ8VOHGwbAD": {}}, "slotId": "MfuOmh0lciRhVZ2D", "sourceItemId": "eoODXMzLSrzoiBnY", "tags": ["i5UWs3tYlYeMoCim", "JySocRvUWDOrFZKP", "NoN9AWtLK9TFgi9j"], "type": "2XMh9WpifqjNjLOt"}]}, {"consumeItems": [{"inventoryId": "NQts2yxf6MLZJ2jZ", "qty": 11, "slotId": "4DJi9DaMrc0WFgKj", "sourceItemId": "E945x2CPVYYG9Wvo"}, {"inventoryId": "GmAmvaVV5YfxnUNc", "qty": 47, "slotId": "4ILNDvhB4Eoes9a6", "sourceItemId": "XaJeRbzTPwD3jxF7"}, {"inventoryId": "vxRUY0ilrNoFT98S", "qty": 12, "slotId": "CAtvSG8Cfa9dzOJD", "sourceItemId": "GCTHIOFjeXbsSgR4"}], "createItems": [{"customAttributes": {"3kIDzxBwqRJTzrHN": {}, "ZWUsq5lQo2jy29EJ": {}, "igqYhyVhURx1yPec": {}}, "inventoryConfigurationCode": "zRpdk0HATGylx2JG", "inventoryId": "2KNGfhzfCTxxrsRR", "qty": 78, "serverCustomAttributes": {"ISyXtHzoWGdYohxM": {}, "p3uOQIybqWfG9BJ6": {}, "FVKlbYHtbPtaxvag": {}}, "slotId": "SlpGgVTF6VeDAPOG", "slotUsed": 56, "sourceItemId": "h86XmRkCEcfHDCdl", "tags": ["59Wp9A3tXGve6DdK", "6uvg8f2cIoByk9fx", "tvsgeAxo57nKAbZp"], "toSpecificInventory": true, "type": "l5bYt76BNsi4giR9"}, {"customAttributes": {"434WpKKdzxoufCNl": {}, "FoOcWQQy4bjmQeEw": {}, "eoBHTdwAk7ZQnbqY": {}}, "inventoryConfigurationCode": "1cQwVEtAr5kKKAo9", "inventoryId": "MM2Cqm84jVi9kIpq", "qty": 14, "serverCustomAttributes": {"CqPD9CeDEdCnnL6K": {}, "t1Bjj3b8QM8Rr45U": {}, "LqXQgvwD3PsKDJiW": {}}, "slotId": "xQBwaS7rDBf2S54p", "slotUsed": 15, "sourceItemId": "uetxFMqXCQMAqQ2Z", "tags": ["RGzNtrThFa9XU8mo", "sluiHZJ7O8sAQ32w", "j9uaDzsr9xYiWRuu"], "toSpecificInventory": true, "type": "qXUjNypF6MMqWpdE"}, {"customAttributes": {"JsPoaIbYz8cK5jlp": {}, "Jdre5ur6yvWJDdvM": {}, "7T7PX2vamIRZHzsI": {}}, "inventoryConfigurationCode": "YOCUoiCXNjrdQL2j", "inventoryId": "dx1eIba1sB0HsJ06", "qty": 59, "serverCustomAttributes": {"XxkWZbjf7GZxaoss": {}, "Qmjo69wohJFyTNk5": {}, "FGUPhR4LEZvz3EjF": {}}, "slotId": "R7996Ug5m4axDV5u", "slotUsed": 93, "sourceItemId": "kXQSc58zgZVl4gIF", "tags": ["7v3qbZu9M3OxqVAT", "4H1lRZ9Z1JBrHRzE", "OtIxzPqb6n73m0ji"], "toSpecificInventory": false, "type": "PghqamSc5y0X48eT"}], "removeItems": [{"inventoryId": "7Mluexk87b9Z5BTs", "slotId": "EA3EdmW8saabP4xR", "sourceItemId": "owfNojzPXI2v0prR"}, {"inventoryId": "3OEey0MkZwS6TYwN", "slotId": "N3UYhic03qGEg5fN", "sourceItemId": "zBVrjo3g8CfRwtyl"}, {"inventoryId": "1HeT7VEPgG40QyXz", "slotId": "sOzgck078IghoQBp", "sourceItemId": "2mWAOYksczxBS0OB"}], "targetUserId": "Ca2vWadLmQtYKmEM", "updateItems": [{"customAttributes": {"zicbuL2S3RiW8dLT": {}, "CBfGUdVEdvdQL7sV": {}, "wcZ2PofaJoSqtrEO": {}}, "inventoryId": "qxH46fRTSZoDdT0f", "serverCustomAttributes": {"efo74eg3Nt2c0r4G": {}, "qF0NHglOVuNZ9LzN": {}, "eJnBurh54CWbYb0P": {}}, "slotId": "ebyt8b4DGscjwriz", "sourceItemId": "sFUgYwbaLvqvQ2Nb", "tags": ["mDITuymTBjn3d2sF", "zMS3QaVjZF7Ax611", "5Kg9U8vrQJXQxoIb"], "type": "Vi2CLEk277Ivjj1A"}, {"customAttributes": {"647XQ3koaAfZIim0": {}, "sFPm1YN27bojDVaZ": {}, "Lpx4kEWYkO6KrKUM": {}}, "inventoryId": "hJrASBh61hmWKSSr", "serverCustomAttributes": {"F35anDGvur19V18o": {}, "IrUKXttgAI2QdWJF": {}, "LmoPEgd8EMspOs8n": {}}, "slotId": "kic9gj5vyUMAAmIH", "sourceItemId": "YbsxG5N066FXb88S", "tags": ["bLOa21DiSFsm0XXQ", "JWszvTQEuALzDNp1", "SZ58aDllwzTRHak1"], "type": "MXxj7Esrg7900nml"}, {"customAttributes": {"5BidsK9dCEzhVnOv": {}, "0PQbVIaKiHfoeorY": {}, "7A1otGFyv2SMjbEr": {}}, "inventoryId": "50qGdCZIc6EFqBKx", "serverCustomAttributes": {"bS7Q2OgRucL1jwRX": {}, "zfjDZZBmOau6syme": {}, "06c6SKLc2mEC3IXl": {}}, "slotId": "5XCbkOfHaGr5kdaz", "sourceItemId": "lypvt6lSLfU7HByG", "tags": ["XPMqxj4hBgVY3YAx", "ZLKbcOdyjqf6Q4oi", "woJcaRMEb15LBlTV"], "type": "ufc5ZyODR2NVyn4P"}]}], "requestId": "Rqf3eRbZqBAoKGcV"}' \
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
    '{"mapItemType": ["CdMiSNV4qBrt1kcL", "mRv6EJtl5xWnsb8o", "Wq94RImNWVIJnhhw"], "serviceName": "FDV1VitaomvWTzds", "targetInventoryCode": "W4N70wYS4Kj7Yi2V"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-integration-configuration' \
    '{"mapItemType": ["voQNW8Yc481dYdvG", "xJAMDRA1LF7jdWle", "kFwO94VBCV9qJhWv"], "serviceName": "a2FPBujX0geYCpGJ", "targetInventoryCode": "M4sqsPNJMiZXXOFw"}' \
    'mGWAvNF0Z0GkwxUN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-status-integration-configuration' \
    '{"status": "INIT"}' \
    'yNwGiKrknH0Y5mrQ' \
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
    '{"inventoryConfigurationCode": "gLC6D2qsFiQHglUQ", "userId": "MZi5WjMZfOadpgeg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
$PYTHON -m $MODULE 'inventory-admin-get-inventory' \
    'CUjTdi1Ehr8OtqpN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
$PYTHON -m $MODULE 'inventory-admin-update-inventory' \
    '{"incMaxSlots": 74}' \
    'oya4JgakZyUV7t73' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
$PYTHON -m $MODULE 'inventory-delete-inventory' \
    '{"message": "VnSFbuxd4KYZ0jk0"}' \
    'UZdhtnKu9oTc8pVk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
$PYTHON -m $MODULE 'inventory-admin-list-items' \
    'iyGsj5JdXzRxfNEj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
$PYTHON -m $MODULE 'inventory-admin-get-inventory-item' \
    'UMTs8WIObJBTsvsw' \
    '76uISRX0bKVoWtoU' \
    'W1P7ocuBAldDSUS7' \
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
    '{"code": "Haa6unq1yQOSRvyi", "description": "LBRVtIDi2piIQFVm", "initialMaxSlots": 52, "maxInstancesPerUser": 55, "maxUpgradeSlots": 80, "name": "Wnf87YPNOe9Eevf1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-get-inventory-configuration' \
    'fhMg1E2k7QLFrVgt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-inventory-configuration' \
    '{"code": "X7y0fPOieDCow2zX", "description": "yFFVpM87yqEwEacQ", "initialMaxSlots": 79, "maxInstancesPerUser": 64, "maxUpgradeSlots": 93, "name": "I3v8yha4pd5A7MYc"}' \
    'pBD6lKNb8RxvN2u5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-delete-inventory-configuration' \
    'J7baOeLH19fqBwNb' \
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
    '{"name": "Ne1ffYRtIvQaKyev"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
$PYTHON -m $MODULE 'inventory-admin-delete-item-type' \
    'WYtZjK6J29v8MpBS' \
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
    '{"name": "po3AKRmnJkzJHAck", "owner": "SERVER"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
$PYTHON -m $MODULE 'inventory-admin-delete-tag' \
    'yBksYQfDm0RNFwiz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
$PYTHON -m $MODULE 'inventory-admin-consume-user-item' \
    '{"qty": 12, "slotId": "0tRVLMlHi8i9gOVq", "sourceItemId": "ajUWrgEsWDtaKzn8"}' \
    'dZwnnGeZsZVgbPzP' \
    'FbrOMZMgWkFN7Tpk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-admin-bulk-update-my-items' \
    '[{"customAttributes": {"x6GcfyOg6ZUrrp9u": {}, "bg9mndW2JKmQafUs": {}, "2bxYztOEyVbKIf1Z": {}}, "serverCustomAttributes": {"bzgUwd8DHoCQykmX": {}, "HYmkRlg7gYs6unPY": {}, "Q9jNQN1di1ldhOh6": {}}, "slotId": "HvjnYuV7NfC4A2OD", "sourceItemId": "iZhbfb8QqCyK1XH9", "tags": ["D6vl5eFdFfgK46Gj", "CWaP8huTmnq3FGQn", "3Ahu5wxq6oJq4mCh"], "type": "mQHQhO9IKBXDFQfX"}, {"customAttributes": {"FD58sG6uDhFYlrzJ": {}, "BYSeMuJfQecutjS0": {}, "29BiJWOG1m7MKclr": {}}, "serverCustomAttributes": {"5igjNTVItrH2X78h": {}, "xJgaVfw5Vnyq8OzT": {}, "E89WDNoMcOmbfJrC": {}}, "slotId": "JQIj1haAosKglqaC", "sourceItemId": "XE9ytpIO8btO3OwN", "tags": ["EGSW5TaW4to7QCY2", "NGGvi9kg3rMIzNmh", "JTNQjKlwjfJ3TJ2x"], "type": "Vpge70WsLfgbZieR"}, {"customAttributes": {"vJI5sT9DH3DfLCv8": {}, "q4Thmq09bBgPAYxr": {}, "BE9jlnTgtgW33wDw": {}}, "serverCustomAttributes": {"D9RKvQX4yFQFdrRo": {}, "M6FoqCYw7AlxO6qd": {}, "Fpc71sSck3ggZWJl": {}}, "slotId": "SlCQMDji329PfVrv", "sourceItemId": "MEPtpsSNcpK1QkB2", "tags": ["Sy8Ww79LVeVskqeU", "B7RSayqGFguhh3bv", "adRthdbVApebRA09"], "type": "rW8i8krFWJhe03co"}]' \
    'RFok5d3AyGrZO8Gu' \
    'oXNSoVEBG7VbBPUW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
$PYTHON -m $MODULE 'inventory-admin-save-item-to-inventory' \
    '{"customAttributes": {"ipz9C05YabFX4FCK": {}, "5ucTFsAFzaO3yJpA": {}, "3KMxBlrRytER1qdT": {}}, "qty": 9, "serverCustomAttributes": {"LucrtO2gCQD057Dr": {}, "DlgC2nzS9SiGUjVA": {}, "w4v3q6JRHcn7KaoC": {}}, "slotId": "EkRdo6qHYIZWnXqQ", "slotUsed": 56, "source": "ECOMMERCE", "sourceItemId": "UI9esSsXegSEhrPp", "tags": ["K2q8kxR4BuEksS2A", "9VOA8H9VeHv0L2Ac", "m960EYQEuGJVl8xs"], "type": "1WId9WlalqshF9Rh"}' \
    '2o7GCQGPCxwEdkyu' \
    'T3MgzReRq0112ISA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
$PYTHON -m $MODULE 'inventory-admin-bulk-remove-items' \
    '[{"slotId": "rROIodcmM6v2AEoz", "sourceItemId": "WWaYvBLE46bpuJip"}, {"slotId": "8JyxJ39vrtuWWrqT", "sourceItemId": "ZbSqBSKp8AmgwhYz"}, {"slotId": "k33J34fiTxK63OHp", "sourceItemId": "nUCGBVfpctNFUsUQ"}]' \
    '6ZXQcb2o1J5euLAb' \
    'Bgejqc0apxqZ209B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminSaveItem
$PYTHON -m $MODULE 'inventory-admin-save-item' \
    '{"customAttributes": {"ySn8aUaGlAyvIslt": {}, "7N1qcxKs4nlf1Mfq": {}, "UZXkjHvcUOTlxNf0": {}}, "inventoryConfigurationCode": "9pefgFIiJssShBKs", "qty": 87, "serverCustomAttributes": {"Mqi836ULa7cfZl4V": {}, "uY6rsZyo6CBRRnoO": {}, "ikIxXKKIR6kPmswm": {}}, "slotId": "5TCAU1cKApdJDnE7", "slotUsed": 66, "source": "OTHER", "sourceItemId": "LmSZns5owBhoUg4L", "tags": ["sGP6KLPXkvUv2XiX", "aBzsmaxjTZPlLity", "tGka7Kv5TacQKF4O"], "type": "lRGdmXxETLEQrr3K"}' \
    'CAV9alq3hK1G4kKo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminSaveItem' test.out

#- 30 AdminSyncUserEntitlements
$PYTHON -m $MODULE 'inventory-admin-sync-user-entitlements' \
    'oSNNUZuiynZ64Iwn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminSyncUserEntitlements' test.out

#- 31 AdminPurchasable
$PYTHON -m $MODULE 'inventory-admin-purchasable' \
    '{"entitlementType": "cZPk82GF3eTC0vzZ", "inventoryConfig": {"slotUsed": 95}, "itemId": "IyEfRBEj7qms9AGQ", "itemType": "ExPhgr9gGfC0Gjvp", "items": [{"bundledQty": 12, "entitlementType": "pR45VDlvSc0Mr7Im", "inventoryConfig": {"slotUsed": 46}, "itemId": "TH2wToOnq9U5lyW8", "itemType": "9Xwt3wmRTrDCjhnK", "sku": "vsHezWTqgYPixtHk", "useCount": 73}, {"bundledQty": 23, "entitlementType": "1CU1eD1La16Bw3Jb", "inventoryConfig": {"slotUsed": 96}, "itemId": "0mJqjRYldcTpdeCD", "itemType": "9XPRi4bAQL7VE2wL", "sku": "8Y4JFVUdzA8bvXlD", "useCount": 16}, {"bundledQty": 7, "entitlementType": "G7BrorbKIKuOXJPm", "inventoryConfig": {"slotUsed": 25}, "itemId": "ztrr09CDA8Ij5bGK", "itemType": "SuopWQbaCvdPSq8Z", "sku": "27GpvHCDx55JZ5z6", "useCount": 13}], "quantity": 21, "sku": "ujpFzlPspQD9IRIp", "useCount": 61}' \
    'FSKiXl8G2uf6E8Ea' \
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
    '{"qty": 19, "slotId": "SWzOXjO1NQUqWHBW", "sourceItemId": "78XREZCiTNAxq26g"}' \
    'ZrPqCsSDspvgM16s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicConsumeMyItem' test.out

#- 37 PublicListItems
$PYTHON -m $MODULE 'inventory-public-list-items' \
    'Z6rjnkH4ExObppC6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicListItems' test.out

#- 38 PublicBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-update-my-items' \
    '[{"customAttributes": {"CMYDm5ge659UDEOF": {}, "6gp5UfmjtiVbqJnZ": {}, "crqrPye7fCwi7Il2": {}}, "slotId": "wIFlHm9N6owMHMtJ", "sourceItemId": "y1Oqn59tEGm9NYeU", "tags": ["T5P0nx8TqSZdZ5C8", "mFI9TnvzEqBNMF9C", "ZvPxT5zbreMc9fBo"]}, {"customAttributes": {"U3RHNDFjLKFrepy5": {}, "6eW1kmb15QeIQF51": {}, "c4MqJzDSvELgBe6d": {}}, "slotId": "boSdhkBzAzPkt1ef", "sourceItemId": "GJeJaxyHYutgXucx", "tags": ["85vHA009FAb21jxe", "WXk80y9uxgVLGgK8", "aVSCN6oCETQ8gIDR"]}, {"customAttributes": {"dD2wwMXwKVXGPhEJ": {}, "sc7rZpxaPHc9r8eT": {}, "oFmkHJ6BPOKFLxIw": {}}, "slotId": "Kssw647YwDudnGRu", "sourceItemId": "fOUGfMjTU226l07j", "tags": ["PlcYaqYM7YfBmhjI", "9Y28qVceS9UX48dK", "PCFUIeyYEymNXzNX"]}]' \
    '6TGh4UdEweeBsJEv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicBulkUpdateMyItems' test.out

#- 39 PublicBulkRemoveMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-remove-my-items' \
    '[{"slotId": "BbAvCmlh6Z1oz9Ba", "sourceItemId": "ixUUvmzbajE2gjoo"}, {"slotId": "iDnc1NUb51lEgUwQ", "sourceItemId": "9tkWaMOH47CAT7cB"}, {"slotId": "P0918JaEBQBP766L", "sourceItemId": "UnBBR84iAO7sBQt6"}]' \
    'YJ2tWwF7RnP1oK3c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicBulkRemoveMyItems' test.out

#- 40 PublicMoveMyItems
$PYTHON -m $MODULE 'inventory-public-move-my-items' \
    '{"items": [{"qty": 52, "slotId": "RVfjB0zi3XrYZUiN", "sourceItemId": "24ol1qqbalgizL97"}, {"qty": 49, "slotId": "JuCAIfNBSHgpFNw9", "sourceItemId": "K9pmAIc6VSfE9nbE"}, {"qty": 1, "slotId": "PMv12ZSRJkujxbCu", "sourceItemId": "1HFaj6Vxs3GuA4S1"}], "srcInventoryId": "dS7H7yIS7b5TSDRI"}' \
    'oMg7Dc5APzfzXDEL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicMoveMyItems' test.out

#- 41 PublicGetItem
$PYTHON -m $MODULE 'inventory-public-get-item' \
    'JFaIaEMW5bhJyL72' \
    'WDyhBsCCbnfihnXK' \
    'xGxaupnTTq9ihZkv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetItem' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
