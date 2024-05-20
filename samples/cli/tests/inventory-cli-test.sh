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
inventory-admin-purchasable '{"entitlementType": "suHdGmxncCEr0Kcg", "inventoryConfig": {"slotUsed": 9}, "itemId": "qiqOkNeATj7eGjod", "itemType": "d7CcJUrI6MAugK5k", "items": [{"bundledQty": 50, "entitlementType": "2yqPsMFxKybPkbuS", "inventoryConfig": {"slotUsed": 47}, "itemId": "LOq4ft5jGcMICPUY", "itemType": "nfG6jl9U4jReteIM", "sku": "gzISomCsodJrhQW4", "stackable": true, "useCount": 33}, {"bundledQty": 65, "entitlementType": "2OspCZbt3Uta5I0u", "inventoryConfig": {"slotUsed": 67}, "itemId": "bC5CphgMweexsIAP", "itemType": "5vHLjBJ9iqMcBL4B", "sku": "zhDUjhKPwbwcvQU5", "stackable": false, "useCount": 41}, {"bundledQty": 66, "entitlementType": "O6ti0QP2ssiJ66Oz", "inventoryConfig": {"slotUsed": 83}, "itemId": "xQye7HqnVK3YVeOW", "itemType": "s9mfVQh3jLBtn9px", "sku": "pE7BYtzB0B4CxyQr", "stackable": true, "useCount": 71}], "quantity": 72, "sku": "KWVZ77KeRWdECaFG", "stackable": true, "useCount": 41}' 'fZ2hxcJ2Fnemn7M2' --login_with_auth "Bearer foo"
inventory-public-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-public-list-item-types --login_with_auth "Bearer foo"
inventory-public-list-tags --login_with_auth "Bearer foo"
inventory-public-list-inventories --login_with_auth "Bearer foo"
inventory-public-consume-my-item '{"qty": 75, "slotId": "SzUo4hNBDh9ZFP1O", "sourceItemId": "W0nXOErQPS4VsRoY"}' 'IK69yg9ADCGiXaLs' --login_with_auth "Bearer foo"
inventory-public-list-items '2xjHkinOD975nARH' --login_with_auth "Bearer foo"
inventory-public-bulk-update-my-items '[{"customAttributes": {"CmhNHSXuqIHsxvaU": {}, "oXDmwWsukxncuD3Q": {}, "xCXMd00YBWCaVVmM": {}}, "slotId": "45mfIZsWhkS476dG", "sourceItemId": "GJwJ00UH197MJ6zU", "tags": ["7JLMQyMWzYQCAaPJ", "goxGJoJaSzUtY4ZD", "0Xtb0U4pH16NUsVY"]}, {"customAttributes": {"21NVIs7NRen2Y3Ns": {}, "0QJQeaWytPfds1BY": {}, "x0EaURydf8ZyyZeH": {}}, "slotId": "AWGgJUbUJRMbkcTg", "sourceItemId": "lbU86FyOjApNHBVf", "tags": ["NOURcjY3YYT9oTyn", "mfIuBWgJTNFfM8M0", "IW4oe8KDgy0xZfAc"]}, {"customAttributes": {"Ng14Ws8TIP1LKiFQ": {}, "oLDvumfqrgSfnx2h": {}, "61X9dN1MGRXBJ6mV": {}}, "slotId": "V7JS9qjNLwvI8Jdi", "sourceItemId": "Y3RRiLilmOGF6dLL", "tags": ["IeIVIjMcdlbdRXTG", "IrdNL5gJPqTAjgqa", "THf1ANTJ9Yk997Xk"]}]' 'GOdC6ItxDT8p4n4X' --login_with_auth "Bearer foo"
inventory-public-bulk-remove-my-items '[{"slotId": "CFkD1AJLCwszbZxu", "sourceItemId": "HSgDOK8bjoF7bL26"}, {"slotId": "35KbtZTGJpqgl2Iz", "sourceItemId": "NXGTuQPIDpor7t1a"}, {"slotId": "JLNNz6QIVC9Mfuc8", "sourceItemId": "VOsnmnlVljdWYmEL"}]' 'e74p38vumnxAnYBT' --login_with_auth "Bearer foo"
inventory-public-move-my-items '{"items": [{"qty": 47, "slotId": "HOmhcWm428XejRF9", "sourceItemId": "4NIY9nMrBZo0lNUB"}, {"qty": 60, "slotId": "rpLeqhwVhjnnjKME", "sourceItemId": "mtbiWsAQHbMrKYi0"}, {"qty": 70, "slotId": "xs5SWCqZXHLLa31o", "sourceItemId": "Qf7BULnZDhutDM6B"}], "srcInventoryId": "qguqD5xxGxBWtnTK"}' 'Ue2znsqPzPkwCBo2' --login_with_auth "Bearer foo"
inventory-public-get-item 'SwCUsTag4MLAo3m6' '1P2xaNfmn8Onb1a9' 'gMz0F2UBRmMhAbUW' --login_with_auth "Bearer foo"
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
    '{"message": "mFhdYLWzMuv3zkUY", "operations": [{"consumeItems": [{"inventoryId": "0n0BAZkwbYkBLyO6", "qty": 55, "slotId": "Tz4TjCrJHXGXku2Y", "sourceItemId": "VuOzhxHmnrrV9ZGW"}, {"inventoryId": "rZ05sxe6A6RpmKDe", "qty": 3, "slotId": "KbonoucNmzwOZOK5", "sourceItemId": "6sDkci5rZ8iMlOuk"}, {"inventoryId": "sQJCiRFiZWwJ7NrT", "qty": 2, "slotId": "To5ijlvDF8qBWCQ9", "sourceItemId": "dLWYyS8zdhMeBXH8"}], "createItems": [{"customAttributes": {"x6HdVfZVDAiU6iJO": {}, "F7JKZFNk2NKy59X8": {}, "iOg2sVBiCoeC5weX": {}}, "inventoryConfigurationCode": "Jl7PeiMH8z8dVej8", "inventoryId": "N2yv6VTnOK7xAvM7", "qty": 41, "serverCustomAttributes": {"bHdEtoQvpV344Rct": {}, "mTozCi8HeV6jbalH": {}, "mqBBfi7sSF5BoGiT": {}}, "slotId": "CVsXsygWbjE2opXt", "slotUsed": 6, "sourceItemId": "9x7XZIjU4IK9lOLa", "tags": ["ZaMphKCqTq3EVheJ", "joEEXBLIxGnNuhoJ", "M3WWPvvCiCf33ViE"], "toSpecificInventory": false, "type": "ORRhxSWLWLNfHRD3"}, {"customAttributes": {"V15QaGGL46LuxJF3": {}, "sbeqWBdQuWfgBAKx": {}, "27MSBqabUXOGkkoM": {}}, "inventoryConfigurationCode": "UZn1YXj5zFZeOCOR", "inventoryId": "9NvBQZSJPOIKrRBr", "qty": 51, "serverCustomAttributes": {"Vzi9ui3lvozTt9Ts": {}, "H7A0TuU2aL4bPkk1": {}, "1sys6GdkDcos5uVJ": {}}, "slotId": "0BJfZ0jvA54CSqZF", "slotUsed": 61, "sourceItemId": "T3by2kYSCdnFKLc0", "tags": ["xcTjqjdcEfU61OJY", "MnW49rWynp1ck1vT", "90C6o86cSRL9cgbU"], "toSpecificInventory": false, "type": "JktyBdxkZKrEWFw9"}, {"customAttributes": {"GYxjiiOQAD77ci0v": {}, "fWVZoRRMPi57HyKK": {}, "z5nyI6ulKNKoXa0d": {}}, "inventoryConfigurationCode": "gx1JgjC56pda3Yht", "inventoryId": "QxpCYME6x21pdX2Q", "qty": 91, "serverCustomAttributes": {"qKmXDwoEV6tCdrxw": {}, "1KOPhuvHuYrGWDK4": {}, "1uMOC0mRvSoaGk4k": {}}, "slotId": "tF5wnJDg9Q3WXiyd", "slotUsed": 57, "sourceItemId": "M4xjfkNL4lU6jaGf", "tags": ["sD1cfswmeFpvtDte", "toQVFL8LNW11vtpa", "Txi7k489jRCn48bv"], "toSpecificInventory": false, "type": "Ti1t530Wj1WfzIvc"}], "removeItems": [{"inventoryId": "3VlSXrA3XUGud4tV", "slotId": "jmxEf4XvVhFJTxFH", "sourceItemId": "ITBg9x4unq3eOMHI"}, {"inventoryId": "KeTyBG5dCUoExnKf", "slotId": "V3869IN4V1OdhH4G", "sourceItemId": "VU7Exlkmc4xYiLjL"}, {"inventoryId": "yZrXr9Bhtzn8jAdT", "slotId": "n6xBhrciryLm67rk", "sourceItemId": "adH5Y41SLjCPrFa0"}], "targetUserId": "5Xl5TPC5GODS44bm", "updateItems": [{"customAttributes": {"m7jPdKLddfdsUqjX": {}, "VzW1QqxnWR5sheLg": {}, "sAF4ctv5guycGiq9": {}}, "inventoryId": "j2EyIknfLDpgHnMO", "serverCustomAttributes": {"n8nc3gUZ8ZFyyEr0": {}, "KBXuJBqK4QtEydPW": {}, "LPBYiR3UbJc1ZYap": {}}, "slotId": "x7C477etqgfOJDUT", "sourceItemId": "0uKAPrARya2IMlNi", "tags": ["XpF4qvsUUpHqi33T", "cBGkc0HjUcnkpU9o", "Vzl2kBuLFXIeCEKZ"], "type": "UTz3GvCAZ5j24acY"}, {"customAttributes": {"HbrryHB6GO9zP3Fa": {}, "epA3b3YJ9nJM6vtT": {}, "27xv85K5MU2qmbeq": {}}, "inventoryId": "aVemINdClpF7OvlB", "serverCustomAttributes": {"IEgjse5kd6GEDo08": {}, "yq5E5HleLoog4me2": {}, "NBFp62xlXvVcJerT": {}}, "slotId": "PW02PWsHiKYArAxn", "sourceItemId": "KBfBfDlrQQuAc10D", "tags": ["jjwMv4vrIPRtvhQI", "yLarjaLOKnX51yAB", "8Pa3uNGKhaLlJzJM"], "type": "SnJIIgsAVmaGYxUX"}, {"customAttributes": {"1B9oVuzG2CnYX2YB": {}, "F2g7TVtzYEHUodh3": {}, "iUfBthbepUCTWiZ1": {}}, "inventoryId": "uqh7GAi4FEIu44u8", "serverCustomAttributes": {"3ZLRxYlYqlpq03BG": {}, "dIk4oEogFVGR71rJ": {}, "OBy6lsj1AKGBjnHm": {}}, "slotId": "aAu4YK87DYAWWcbc", "sourceItemId": "bGWmKgE8CZ4AELr5", "tags": ["lraa5v5P5Cj8hgFs", "qHC9h5JPiMEtgKui", "GTYgwWv5XldL6rOV"], "type": "GcRAn51rVAQSxp4q"}]}, {"consumeItems": [{"inventoryId": "TB54mKA3V9DKlCeZ", "qty": 73, "slotId": "mLYsHooOIaxIpb1c", "sourceItemId": "IOJPS3lJ80YJ41U4"}, {"inventoryId": "ooQ980ywmg1pWpWi", "qty": 40, "slotId": "sYgL7TfyIlAwjTZd", "sourceItemId": "RZJJzWZwvTX2bamS"}, {"inventoryId": "CvX1nwvSWdDwD7WJ", "qty": 68, "slotId": "wBNrFXt3TAuKBwBc", "sourceItemId": "D12ae6r3hHwya4Np"}], "createItems": [{"customAttributes": {"dOzg3hr6ucHf7dbh": {}, "2iKNUl0qJqzoKMRM": {}, "G541PAiNjULsx4Sn": {}}, "inventoryConfigurationCode": "KNXLMUaDSwwQlnNR", "inventoryId": "ZJHBSB4fZWEFIZs2", "qty": 64, "serverCustomAttributes": {"5mj8YRvae4f4lhBP": {}, "barbWEm8bVtZcfVC": {}, "PdQhim9QKUAFTVYe": {}}, "slotId": "lIlGJg9wdc8bihhW", "slotUsed": 20, "sourceItemId": "rIprOv0BJ9Sgl7H1", "tags": ["sdH2RIJz1eI7Q5pu", "9PutLf6IrvZoBGQb", "O4S3rURGWUzPAE6S"], "toSpecificInventory": false, "type": "2fkqYJoF2FI3vyyq"}, {"customAttributes": {"Rzc20O7FdsJP1G9t": {}, "yBTfERXdvgD1Qf7O": {}, "t2DkUt3yexZBRvxY": {}}, "inventoryConfigurationCode": "nEBhXtAVxCd3meTr", "inventoryId": "T7cF9oVCh89wNOkK", "qty": 80, "serverCustomAttributes": {"ssVejcL3kR3hCGNg": {}, "aJmuALlMQl9RLrth": {}, "bfp0VgweLlT2sY3S": {}}, "slotId": "sTnDQY7kKU2u06Q4", "slotUsed": 43, "sourceItemId": "wV3zDuqVlVTypcYP", "tags": ["K8IxrSZuxWl0Je4f", "JIyFAm3DQht4JwnP", "S2urJqerobWMZGVL"], "toSpecificInventory": false, "type": "TxahWlS6XdBaKSLC"}, {"customAttributes": {"gOOPXM6XTUh2dJ90": {}, "yqHDNacl4F9G6Dl5": {}, "TFwBY6HKXAblkT8V": {}}, "inventoryConfigurationCode": "GgSH8MGZGwiVj7eD", "inventoryId": "Taka9ABfX1IByPEO", "qty": 42, "serverCustomAttributes": {"nny0Ju13b6o5uB2X": {}, "M6IHy7EEvHyLmcvr": {}, "ZZOdwe1x8RjU6Bi8": {}}, "slotId": "JXE52sUBBq2SimQQ", "slotUsed": 29, "sourceItemId": "4UQ2fg3V1o2x0hL5", "tags": ["DuBDqMyIAzWze94M", "EdJFAy2JTllJkRGB", "8jqJEd6eqqsBVyON"], "toSpecificInventory": false, "type": "JRtozI0jpliCFQ6W"}], "removeItems": [{"inventoryId": "gJpGPigdc5VyC4qv", "slotId": "WjVac1cQvSxgTNIU", "sourceItemId": "zxDgBlIbuzm7DzJ2"}, {"inventoryId": "0NFRJIhFXR2dYprP", "slotId": "mbpuptECGd5cdXC2", "sourceItemId": "Sesc6y68whNBYl9i"}, {"inventoryId": "CqfW6rqGOQny4ij4", "slotId": "ysYPonb59gQffkNO", "sourceItemId": "mubxEJr2qEAuJbpZ"}], "targetUserId": "Srcbc4LWfKaY5c1t", "updateItems": [{"customAttributes": {"P5TDuI5f6m4KC07C": {}, "nsZe32hqEcB1ExYM": {}, "Bb3ckvoaJYdMqGeg": {}}, "inventoryId": "cg3eRvBZXN3cjIXm", "serverCustomAttributes": {"FWRJnj8xN7HDPTUE": {}, "DPN1Kb4UTPWDXTSb": {}, "55g8LSTs7Nf95lGl": {}}, "slotId": "Prf6obIdnI6Ag7eU", "sourceItemId": "YcYJ4QzXCmqr6gmP", "tags": ["GaHP5SVPvRLiDi0m", "NHb6Lx8eq8SGNwEQ", "O8dYXvBSYvJBwb6C"], "type": "jZUMRf2VJetWsokv"}, {"customAttributes": {"x3BHuTEczr9KjQ3t": {}, "tz8MTBt1xk9IyssS": {}, "A8nP5PQjpzk2Tb7i": {}}, "inventoryId": "YdmNZWosrsVBPZ64", "serverCustomAttributes": {"j0HUONscofwYLQcD": {}, "vkaEIIPoJT83zEGX": {}, "mVBZLyrH9J7Boysm": {}}, "slotId": "aORLkP5hc2Fh04JT", "sourceItemId": "sqDTynCewqJligLl", "tags": ["RxOelKykICRxF6Ht", "lER2txs4qrNARATn", "6KXOutlYBbLhL8KX"], "type": "x25FZfQIodVBqQsB"}, {"customAttributes": {"pCJBIXLGYcwWVRK6": {}, "UKk5ozrXA4HZHNyq": {}, "9odanhR1Zrm3thUv": {}}, "inventoryId": "V87yfkycLSVdleSa", "serverCustomAttributes": {"AylsmLYe2phYOgT5": {}, "kDTyPl3dKF7NXEjr": {}, "JMki8jvc3P8Gwjg3": {}}, "slotId": "IOH0SDHgYKqxJiFJ", "sourceItemId": "drmj5vhzgsJwex7w", "tags": ["q8ZPlXNaUNgdY2vf", "Juje5cPnmGjTvYa5", "Pqx1K7qcAoijBPAp"], "type": "6EPb988NzxrDKVpU"}]}, {"consumeItems": [{"inventoryId": "Ljjiw3NeVG4DJi9D", "qty": 0, "slotId": "zzriCDWXT59SRu0Y", "sourceItemId": "qUxKDc84OMIzvTSc"}, {"inventoryId": "dbKBsAyJMz4ILNDv", "qty": 15, "slotId": "hnfuF4WZiQVICVpW", "sourceItemId": "d3UM08gMXhdf3juX"}, {"inventoryId": "W4JprIb3CJCAtvSG", "qty": 12, "slotId": "Cfa9dzOJDGCTHIOF", "sourceItemId": "jeXbsSgR43kIDzxB"}], "createItems": [{"customAttributes": {"wqRJTzrHNZWUsq5l": {}, "Qo2jy29EJigqYhyV": {}, "hURx1yPeczRpdk0H": {}}, "inventoryConfigurationCode": "ATGylx2JG2KNGfhz", "inventoryId": "fCTxxrsRRLee3TcJ", "qty": 30, "serverCustomAttributes": {"DQIi45aCDHN9mVug": {}, "2zkVf6KgpKOcn3tM": {}, "D9UT67bOwugFDa6w": {}}, "slotId": "UQvehKqwCh86XmRk", "slotUsed": 59, "sourceItemId": "EOEAEtbag82KgBgy", "tags": ["Cd5vjkfz3eR4DtNp", "129hzBw3xLUcCEt0", "DzmkJq1sml5bYt76"], "toSpecificInventory": true, "type": "J0ynxGBlacDCdFe8"}, {"customAttributes": {"ATUqVxcSthrpnMUB": {}, "snUfuQIcSbUt5UGk": {}, "InFGpuUsdtq4dOwN": {}}, "inventoryConfigurationCode": "ESzCEW9dUVhZjLft", "inventoryId": "C3sCS8CpLCqPD9Ce", "qty": 61, "serverCustomAttributes": {"BWydXV0Fi02aFr8C": {}, "DapjwNOl4k8rVNrm": {}, "8drv8QD2JOe2Ntz7": {}}, "slotId": "EFvowPgIGuetxFMq", "slotUsed": 59, "sourceItemId": "f9GWRlE9hqz6rjDN", "tags": ["o4rhjxUdMM83Wekq", "fWv04vvn9bk5qr8q", "s2mqtnGAqXUjNypF"], "toSpecificInventory": true, "type": "MqWpdEJsPoaIbYz8"}, {"customAttributes": {"cK5jlpJdre5ur6yv": {}, "WJDdvM7T7PX2vamI": {}, "RZHzsIYOCUoiCXNj": {}}, "inventoryConfigurationCode": "rdQL2jdx1eIba1sB", "inventoryId": "0HsJ06DzfbzRYt4O", "qty": 97, "serverCustomAttributes": {"ZxaossQmjo69wohJ": {}, "FyTNk5FGUPhR4LEZ": {}, "vz3EjFR7996Ug5m4": {}}, "slotId": "axDV5uTcYsoahUrE", "slotUsed": 77, "sourceItemId": "Vl4gIF7v3qbZu9M3", "tags": ["OxqVAT4H1lRZ9Z1J", "BrHRzEOtIxzPqb6n", "73m0jiaDH86d9rsK"], "toSpecificInventory": false, "type": "0X48eT7Mluexk87b"}], "removeItems": [{"inventoryId": "9Z5BTsEA3EdmW8sa", "slotId": "abP4xRowfNojzPXI", "sourceItemId": "2v0prR3OEey0MkZw"}, {"inventoryId": "S6TYwNN3UYhic03q", "slotId": "GEg5fNzBVrjo3g8C", "sourceItemId": "fRwtyl1HeT7VEPgG"}, {"inventoryId": "40QyXzsOzgck078I", "slotId": "ghoQBp2mWAOYkscz", "sourceItemId": "xBS0OBCa2vWadLmQ"}], "targetUserId": "tYKmEMzicbuL2S3R", "updateItems": [{"customAttributes": {"iW8dLTCBfGUdVEdv": {}, "dQL7sVwcZ2PofaJo": {}, "SqtrEOqxH46fRTSZ": {}}, "inventoryId": "oDdT0fefo74eg3Nt", "serverCustomAttributes": {"2c0r4GqF0NHglOVu": {}, "NZ9LzNeJnBurh54C": {}, "WbYb0Pebyt8b4DGs": {}}, "slotId": "cjwrizsFUgYwbaLv", "sourceItemId": "qvQ2NbmDITuymTBj", "tags": ["n3d2sFzMS3QaVjZF", "7Ax6115Kg9U8vrQJ", "XQxoIbVi2CLEk277"], "type": "Ivjj1A647XQ3koaA"}, {"customAttributes": {"fZIim0sFPm1YN27b": {}, "ojDVaZLpx4kEWYkO": {}, "6KrKUMhJrASBh61h": {}}, "inventoryId": "mWKSSrF35anDGvur", "serverCustomAttributes": {"19V18oIrUKXttgAI": {}, "2QdWJFLmoPEgd8EM": {}, "spOs8nkic9gj5vyU": {}}, "slotId": "MAAmIHYbsxG5N066", "sourceItemId": "FXb88SbLOa21DiSF", "tags": ["sm0XXQJWszvTQEuA", "LzDNp1SZ58aDllwz", "TRHak1MXxj7Esrg7"], "type": "900nml5BidsK9dCE"}, {"customAttributes": {"zhVnOv0PQbVIaKiH": {}, "foeorY7A1otGFyv2": {}, "SMjbEr50qGdCZIc6": {}}, "inventoryId": "EFqBKxbS7Q2OgRuc", "serverCustomAttributes": {"L1jwRXzfjDZZBmOa": {}, "u6syme06c6SKLc2m": {}, "EC3IXl5XCbkOfHaG": {}}, "slotId": "r5kdazlypvt6lSLf", "sourceItemId": "U7HByGXPMqxj4hBg", "tags": ["VY3YAxZLKbcOdyjq", "f6Q4oiwoJcaRMEb1", "5LBlTVufc5ZyODR2"], "type": "NVyn4PRqf3eRbZqB"}]}], "requestId": "AoKGcVCdMiSNV4qB"}' \
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
    '{"mapItemType": ["rt1kcLmRv6EJtl5x", "Wnsb8oWq94RImNWV", "IJnhhwFDV1Vitaom"], "serviceName": "vWTzdsW4N70wYS4K", "targetInventoryCode": "j7Yi2VvoQNW8Yc48"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-integration-configuration' \
    '{"mapItemType": ["1dYdvGxJAMDRA1LF", "7jdWlekFwO94VBCV", "9qJhWva2FPBujX0g"], "serviceName": "eYCpGJM4sqsPNJMi", "targetInventoryCode": "ZXXOFwmGWAvNF0Z0"}' \
    'GkwxUNYyNwGiKrkn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-status-integration-configuration' \
    '{"status": "INIT"}' \
    '0Y5mrQgLC6D2qsFi' \
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
    '{"inventoryConfigurationCode": "QHglUQMZi5WjMZfO", "userId": "adpgegCUjTdi1Ehr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
$PYTHON -m $MODULE 'inventory-admin-get-inventory' \
    '8OtqpNJ9R8TuNy4e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
$PYTHON -m $MODULE 'inventory-admin-update-inventory' \
    '{"incMaxSlots": 19}' \
    'UV7t73VnSFbuxd4K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
$PYTHON -m $MODULE 'inventory-delete-inventory' \
    '{"message": "YZ0jk0UZdhtnKu9o"}' \
    'Tc8pVkiyGsj5JdXz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
$PYTHON -m $MODULE 'inventory-admin-list-items' \
    'RxfNEjUMTs8WIObJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
$PYTHON -m $MODULE 'inventory-admin-get-inventory-item' \
    'BTsvsw76uISRX0bK' \
    'VoWtoUW1P7ocuBAl' \
    'dDSUS7Haa6unq1yQ' \
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
    '{"code": "OSRvyiLBRVtIDi2p", "description": "iIQFVmzMidw70KSa", "initialMaxSlots": 15, "maxInstancesPerUser": 9, "maxUpgradeSlots": 31, "name": "9Eevf1fhMg1E2k7Q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-get-inventory-configuration' \
    'LFrVgtX7y0fPOieD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-inventory-configuration' \
    '{"code": "Cow2zXyFFVpM87yq", "description": "EwEacQMTlqN4LKkx", "initialMaxSlots": 73, "maxInstancesPerUser": 6, "maxUpgradeSlots": 44, "name": "A7MYcpBD6lKNb8Rx"}' \
    'vN2u5J7baOeLH19f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-delete-inventory-configuration' \
    'qBwNbNe1ffYRtIvQ' \
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
    '{"name": "aKyevWYtZjK6J29v"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
$PYTHON -m $MODULE 'inventory-admin-delete-item-type' \
    '8MpBSpo3AKRmnJkz' \
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
    '{"name": "JHAckUyBksYQfDm0", "owner": "SERVER"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
$PYTHON -m $MODULE 'inventory-admin-delete-tag' \
    'NFwiz70tRVLMlHi8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
$PYTHON -m $MODULE 'inventory-admin-consume-user-item' \
    '{"qty": 16, "slotId": "Wh1k0cQ08NG6dX2T", "sourceItemId": "Zkil67kRngoUa83E"}' \
    'Ch1gqPeS193TNNzo' \
    't3sVli3GN2XTrFib' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-admin-bulk-update-my-items' \
    '[{"customAttributes": {"RAhzzEWzWlTY70qd": {}, "gJRvpZrSpWX3KEe2": {}, "BjV00ReCXFffjJJx": {}}, "serverCustomAttributes": {"lgjzIhpgOoIOD74V": {}, "21HWDAfvXwdxbyp4": {}, "HAPbBbNPStVBUpKg": {}}, "slotId": "OssFkz0F36piDYXe", "sourceItemId": "HZ7FHls3nyvconqb", "tags": ["HQqKLQKe3xmj6s0G", "qsWncp5LrqbiKudv", "9z75SzoCV8ZMi2o1"], "type": "nR482D6gNClk9c87"}, {"customAttributes": {"hosaPFC5zBW3ZgVZ": {}, "Cj9ObVGT0Scwl4kN": {}, "mCi15XTJTgCNNH7R": {}}, "serverCustomAttributes": {"tG5Xmo9Q0Wb07N17": {}, "fkxZSc6VbE0AGcek": {}, "jMNHuPXtz8tXxrmz": {}}, "slotId": "afMUguyDoN91uc28", "sourceItemId": "HoSpGt1g0GGbT4Hf", "tags": ["2PPKOldkbgX9CWJK", "wXXSbv5eg9q86IaD", "Fjjx6uZerWbtwTX9"], "type": "gNRByjbE8lOLAfTX"}, {"customAttributes": {"KLzbrddqcKLa7Lev": {}, "xNHOSEhQRZIp693l": {}, "Rwtc43atCuCFxbfb": {}}, "serverCustomAttributes": {"z4aQERziPL4dHhOq": {}, "G5KDdUvk0LEi26Ls": {}, "7mjRxNmvvNtjJNQe": {}}, "slotId": "pUTGhwlY4lPzlsCR", "sourceItemId": "5rVsyfcH7WjP7HuG", "tags": ["z3b5WAEvdRF9bqMj", "4ro5B19VE838c7Oy", "dVw0zCqoMZvpIOO9"], "type": "7DmQ5ZOzx6iCJTu6"}]' \
    '0IifzMhkk5Pxsjqb' \
    'CKpMv2Yky9DYkD2s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
$PYTHON -m $MODULE 'inventory-admin-save-item-to-inventory' \
    '{"customAttributes": {"IllFtBtXJKG3rqBm": {}, "ILhtWm8RQvRUbUDS": {}, "iefGEdLucrtO2gCQ": {}}, "qty": 59, "serverCustomAttributes": {"Drf4SSGGt3MiBKoh": {}, "ow3kKoaP1K4CDuH1": {}, "mMIfOCDyVAHrHncR": {}}, "slotId": "5dShqiBUI9esSsXe", "slotUsed": 14, "source": "OTHER", "sourceItemId": "SomqWsGA76yxi0Qz", "tags": ["ZWfmP2sx0KO5bEJa", "PnAFjsodyJQVVBrS", "hGbIIuqK8C403Hgo"], "type": "XCR6XOMXwKdfqk8T"}' \
    '4QHK30EX0FclpDl5' \
    'HsuracO5MnjnxD1O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
$PYTHON -m $MODULE 'inventory-admin-bulk-remove-items' \
    '[{"slotId": "XkxShFVQTRekLfjm", "sourceItemId": "y8zosRCRgVwbrQKm"}, {"slotId": "b01yA7U7dGMjupZk", "sourceItemId": "ZQY8CNyT4k3DIbfT"}, {"slotId": "22G5NpE130YWSgxp", "sourceItemId": "KWtdtdtVW9anENmx"}]' \
    'b9e7vXZV3ig8Jg5V' \
    'ByeI3ycMcYYBixKJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminSaveItem
$PYTHON -m $MODULE 'inventory-admin-save-item' \
    '{"customAttributes": {"XCISQdwec1m8BusV": {}, "9tUh74KVo6Xqjz2x": {}, "UKLNWSmYyVvyelIJ": {}}, "inventoryConfigurationCode": "8QgaLMqi836ULa7c", "qty": 11, "serverCustomAttributes": {"e8NDMErA82FrR1GS": {}, "ogkewIzTOqKkcjRh": {}, "3l2gAJOTCbx7J3gN": {}}, "slotId": "LIlTk3Bpclrk4hIR", "slotUsed": 28, "source": "ECOMMERCE", "sourceItemId": "0znIKzAEAHQpBOgH", "tags": ["EP5l94s7CbIJ7eHn", "VWOboMkyB7FTexsO", "Z0b2p3b63KrcwIcX"], "type": "MhGy83Xit6boOLGC"}' \
    'cg16DqwdQPQ9HkSS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminSaveItem' test.out

#- 30 AdminSyncUserEntitlements
$PYTHON -m $MODULE 'inventory-admin-sync-user-entitlements' \
    'V8e1MgTTLS2FgarY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminSyncUserEntitlements' test.out

#- 31 AdminPurchasable
$PYTHON -m $MODULE 'inventory-admin-purchasable' \
    '{"entitlementType": "903INGIyEfRBEj7q", "inventoryConfig": {"slotUsed": 25}, "itemId": "o9OHgfHumyfuBNis", "itemType": "ecYbcOpR45VDlvSc", "items": [{"bundledQty": 80, "entitlementType": "7GVghTH2wToOnq9U", "inventoryConfig": {"slotUsed": 23}, "itemId": "KvKyj3MqS7Dcmtfh", "itemType": "50eObbrmgjhWK0x0", "sku": "ZidAJ1CU1eD1La16", "stackable": true, "useCount": 64}, {"bundledQty": 46, "entitlementType": "LEak0mJqjRYldcTp", "inventoryConfig": {"slotUsed": 6}, "itemId": "wrv2vancmR6Z7rb2", "itemType": "1A2E9pX0BWCMqPsR", "sku": "k5htdM5T3fDSrSHr", "stackable": false, "useCount": 30}, {"bundledQty": 74, "entitlementType": "qv2mM6soMaTvQq2a", "inventoryConfig": {"slotUsed": 2}, "itemId": "YdFNtRVSO0js0hG9", "itemType": "xmSnzd7zgUxAogcn", "sku": "GkXk17QPkJHRhmLK", "stackable": true, "useCount": 71}], "quantity": 88, "sku": "pDDubntPCFxfeoW2", "stackable": false, "useCount": 6}' \
    'jXLSAS8MKMaxQ1Qy' \
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
    '{"qty": 73, "slotId": "78XREZCiTNAxq26g", "sourceItemId": "ZrPqCsSDspvgM16s"}' \
    'Z6rjnkH4ExObppC6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicConsumeMyItem' test.out

#- 37 PublicListItems
$PYTHON -m $MODULE 'inventory-public-list-items' \
    'CMYDm5ge659UDEOF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicListItems' test.out

#- 38 PublicBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-update-my-items' \
    '[{"customAttributes": {"6gp5UfmjtiVbqJnZ": {}, "crqrPye7fCwi7Il2": {}, "wIFlHm9N6owMHMtJ": {}}, "slotId": "y1Oqn59tEGm9NYeU", "sourceItemId": "T5P0nx8TqSZdZ5C8", "tags": ["mFI9TnvzEqBNMF9C", "ZvPxT5zbreMc9fBo", "U3RHNDFjLKFrepy5"]}, {"customAttributes": {"6eW1kmb15QeIQF51": {}, "c4MqJzDSvELgBe6d": {}, "boSdhkBzAzPkt1ef": {}}, "slotId": "GJeJaxyHYutgXucx", "sourceItemId": "85vHA009FAb21jxe", "tags": ["WXk80y9uxgVLGgK8", "aVSCN6oCETQ8gIDR", "dD2wwMXwKVXGPhEJ"]}, {"customAttributes": {"sc7rZpxaPHc9r8eT": {}, "oFmkHJ6BPOKFLxIw": {}, "Kssw647YwDudnGRu": {}}, "slotId": "fOUGfMjTU226l07j", "sourceItemId": "PlcYaqYM7YfBmhjI", "tags": ["9Y28qVceS9UX48dK", "PCFUIeyYEymNXzNX", "6TGh4UdEweeBsJEv"]}]' \
    'BbAvCmlh6Z1oz9Ba' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicBulkUpdateMyItems' test.out

#- 39 PublicBulkRemoveMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-remove-my-items' \
    '[{"slotId": "ixUUvmzbajE2gjoo", "sourceItemId": "iDnc1NUb51lEgUwQ"}, {"slotId": "9tkWaMOH47CAT7cB", "sourceItemId": "P0918JaEBQBP766L"}, {"slotId": "UnBBR84iAO7sBQt6", "sourceItemId": "YJ2tWwF7RnP1oK3c"}]' \
    '4RVfjB0zi3XrYZUi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicBulkRemoveMyItems' test.out

#- 40 PublicMoveMyItems
$PYTHON -m $MODULE 'inventory-public-move-my-items' \
    '{"items": [{"qty": 81, "slotId": "70eNLHkVrEFd8xAr", "sourceItemId": "WJuCAIfNBSHgpFNw"}, {"qty": 75, "slotId": "fHr6WvBxmBvNj3kt", "sourceItemId": "aDf9B22HGgxakPt7"}, {"qty": 71, "slotId": "1HFaj6Vxs3GuA4S1", "sourceItemId": "dS7H7yIS7b5TSDRI"}], "srcInventoryId": "oMg7Dc5APzfzXDEL"}' \
    'JFaIaEMW5bhJyL72' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicMoveMyItems' test.out

#- 41 PublicGetItem
$PYTHON -m $MODULE 'inventory-public-get-item' \
    'WDyhBsCCbnfihnXK' \
    'xGxaupnTTq9ihZkv' \
    'FKfSHQh8I9xk3sFl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetItem' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
