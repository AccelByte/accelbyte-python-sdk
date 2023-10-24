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
inventory-admin-list-inventories --login_with_auth "Bearer foo"
inventory-admin-create-inventory '{"inventoryConfigurationCode": "shaDwNqTbbFMXAMf", "userId": "VXe0GZeMgsRsmH1E"}' --login_with_auth "Bearer foo"
inventory-admin-get-inventory 'QrYmkPKTPOlhTtSi' --login_with_auth "Bearer foo"
inventory-admin-update-inventory '{"incMaxSlots": 81}' 'dnWIYN2NVL70Iw15' --login_with_auth "Bearer foo"
inventory-delete-inventory '{"message": "7g00jr9b8MuYmmeK"}' 'TmBNvGYxEQdf3ewo' --login_with_auth "Bearer foo"
inventory-admin-list-items 'GGoY7xmFNAmjDDCv' --login_with_auth "Bearer foo"
inventory-admin-get-inventory-item 's78mcMdiS76YApGJ' '9ufwLYkqIgLuZS6h' 'sQryiEtOAbpeUNf2' --login_with_auth "Bearer foo"
inventory-admin-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-admin-create-inventory-configuration '{"code": "6UqkCfgCUYBn2xaO", "description": "BdPF0JmX8qwU1cTu", "initialMaxSlots": 68, "maxInstancesPerUser": 83, "maxUpgradeSlots": 70, "name": "eii8Jnmssep2xD2N"}' --login_with_auth "Bearer foo"
inventory-admin-get-inventory-configuration 'Y0kABeGs9yxahld1' --login_with_auth "Bearer foo"
inventory-admin-update-inventory-configuration '{"code": "pO0Gyf5PO3COyMvc", "description": "zgEpzZ3FbtxfhcRC", "initialMaxSlots": 79, "maxInstancesPerUser": 70, "maxUpgradeSlots": 87, "name": "VYa6iZ5uFRYNn3SH"}' 'iWxF0YbuU5ar5qTL' --login_with_auth "Bearer foo"
inventory-admin-delete-inventory-configuration 'WUCy0Afgc050XIZR' --login_with_auth "Bearer foo"
inventory-admin-list-item-types --login_with_auth "Bearer foo"
inventory-admin-create-item-type '{"name": "W491e94mQjVOOBnI"}' --login_with_auth "Bearer foo"
inventory-admin-delete-item-type 'WhunElqZUodp3Iht' --login_with_auth "Bearer foo"
inventory-admin-list-tags --login_with_auth "Bearer foo"
inventory-admin-create-tag '{"name": "CSHy1ei1fIrPvfHn", "owner": "CLIENT"}' --login_with_auth "Bearer foo"
inventory-admin-delete-tag '6EjRwEQlNapJRfk4' --login_with_auth "Bearer foo"
inventory-admin-consume-user-item '{"qty": 10, "slotId": "HLtwtVOaxgP6Jbct", "sourceItemId": "8puMybYGxD9IPmms"}' 'Lmu3kaPj0O4zd8Tb' '7cUNGPTBxiFFCrn7' --login_with_auth "Bearer foo"
inventory-admin-bulk-update-my-items '[{"customAttributes": {"djjs69FTFVGUVhvK": {}, "hJCmeisql14mUHVb": {}, "MPimNhcZsU3VAdMD": {}}, "serverCustomAttributes": {"cb4qlkiFAamqvZI2": {}, "KwjqPBiWXade41s3": {}, "rH34mB2yPlRpWjmH": {}}, "slotId": "ZAAvKTH8MuqIg0Cz", "sourceItemId": "kguwuJCW7EEFB67A", "tags": ["ODbi9BzupBsFpYc7", "7GtRUcCFeY5g4XgB", "sbfzqxBPNe8ae1Il"], "type": "4aAtEbu4IjGdqthR"}, {"customAttributes": {"xTjQ7gkZEY8rG0q0": {}, "Q2Qd2JzRbkF2I03d": {}, "IjvBbA6bfbYaJCJj": {}}, "serverCustomAttributes": {"fk2TUvn95FhO7VW3": {}, "mbDVMDu87t0ldWf7": {}, "iSGIiKFtWtn4Yr2s": {}}, "slotId": "vKM6pqLGZ0TBujEL", "sourceItemId": "AUK6mQ5iZgbwwm5i", "tags": ["GzXtcknrgidKupvX", "O6aj4hCmTC34jxW4", "pIDwdqXpmRmut9H9"], "type": "XyWI8bp8fQxRuX91"}, {"customAttributes": {"uYmtrHJbEGTUj7Yj": {}, "ERL1rEQG02zccA8w": {}, "vLsWUNd6lPKvqDej": {}}, "serverCustomAttributes": {"vqklTSvDwuOrP9lz": {}, "piX0VuFpZum7izxe": {}, "7NPzjOa8E7wY76Px": {}}, "slotId": "Lv9HBEUe89AwEw1H", "sourceItemId": "O4FnKtx4XLKAmlDr", "tags": ["19uJ3nq6VerzVCcI", "8y3Cz0YqCKUh5RD9", "vNAp4jinFpnQ5xF9"], "type": "wwbvMZyeDeRnVfPU"}]' 'a6xVVBcq3wZpFIYe' 'Ag79HcLJXJ7mpVI6' --login_with_auth "Bearer foo"
inventory-admin-save-item-to-inventory '{"customAttributes": {"eTYAjdPlCiQQC35c": {}, "j4KyOVgvnWbfRJts": {}, "B7cUQZ2QUAxJrINP": {}}, "qty": 31, "serverCustomAttributes": {"Avt70ZUT2fSk3LL0": {}, "calqxEewuGS469k2": {}, "hG0WKt4sUmanYxM0": {}}, "slotId": "UHZVNYzGMNIpWoSL", "slotUsed": 22, "sourceItemId": "evfZvyV7AcodcZwK", "tags": ["jYDdmJOlzwm9Su4F", "nS98QqftSjq7sn8y", "reciPLfkVyyJsbGp"], "type": "O6JgehDJxEN7JlZc"}' '8LMq1o2jZWu4yA3r' '0u4q1bTHXIjfJKyF' --login_with_auth "Bearer foo"
inventory-admin-bulk-remove-items '[{"slotId": "lM0u1uuoVdn9yVoS", "sourceItemId": "lKNchPHNL4X3LLaG"}, {"slotId": "PGdqLE8SohhhuiTn", "sourceItemId": "JarYYkHBDdSzBXdx"}, {"slotId": "apwhd5IQYBQuxLvP", "sourceItemId": "uWYvE3fsNy9Z9Ohx"}]' 'XvCp9y7fLD2qfCXn' 'lUnqxT1WsRNMZcA9' --login_with_auth "Bearer foo"
inventory-admin-save-item '{"customAttributes": {"2hzC7MNa8vVe4MHX": {}, "6AgMep90AyyUJyAK": {}, "5PRMRMwdvl0hv6g6": {}}, "inventoryConfigurationCode": "2GxBW2tQF5tkTjgJ", "qty": 0, "serverCustomAttributes": {"4vtxk9hVKlG56Hlz": {}, "Gr7XjdyRJunZPkp6": {}, "ccIBnWyPw8mj7gyQ": {}}, "slotId": "7XdIszGRj46COPip", "slotUsed": 68, "sourceItemId": "rzmmgqBPRmd6mO4o", "tags": ["I8KDqebm83raNBJ5", "y7axEkvI4oxZEDxG", "iBnNbn0zaf7CaOSl"], "type": "HXrUSA6sMJzA5mtq"}' 'ISQ83TTbtefXWznD' --login_with_auth "Bearer foo"
inventory-public-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-public-list-item-types --login_with_auth "Bearer foo"
inventory-public-list-tags --login_with_auth "Bearer foo"
inventory-public-list-inventories --login_with_auth "Bearer foo"
inventory-public-consume-my-item '{"qty": 9, "slotId": "1Ge9PdbTTAJ2Gp1r", "sourceItemId": "0sVZ6LJAOddIL2l3"}' 'hPjNDKv2LWfXqjr8' --login_with_auth "Bearer foo"
inventory-public-list-items 'fS79En3wYowBdkaZ' --login_with_auth "Bearer foo"
inventory-public-bulk-update-my-items '[{"customAttributes": {"3y6i38XQjLDRqkpi": {}, "FK5BtiQ272Uo9UBJ": {}, "WodpdwsX1jorcyR0": {}}, "slotId": "x3YiHF8ITGPRQBCg", "sourceItemId": "Is1Q2lzxl0yF5m77", "tags": ["TTh4gUoj8u2WRcLi", "EtzVlnkflfn7pHY4", "8F1dl1q92m3iRlfn"]}, {"customAttributes": {"BAk0CwiAsR65yQ9s": {}, "suHdGmxncCEr0Kcg": {}, "eqzGbruNB72HHMkj": {}}, "slotId": "zyBB4UFKiaoV0VOe", "sourceItemId": "m2yqPsMFxKybPkbu", "tags": ["S6x9cLJ1APnNlsa2", "bRBr27fVMWuAfDqL", "MR919IZPKOKiAVQX"]}, {"customAttributes": {"XOmqFHLbyXmgCNiX": {}, "H8uenbC5CphgMwee": {}, "xsIAP5vHLjBJ9iqM": {}}, "slotId": "cBL4BzhDUjhKPwbw", "sourceItemId": "cvQU5kG8bXGFmPAn", "tags": ["OkDiJq4xQye7HqnV", "K3YVeOWs9mfVQh3j", "LBtn9pxpE7BYtzB0"]}]' 'B4CxyQrUpIFvORxT' --login_with_auth "Bearer foo"
inventory-public-bulk-remove-my-items '[{"slotId": "i79DpSjb39ukcR6c", "sourceItemId": "2E2r3vk3IfAKEbqc"}, {"slotId": "NXSGCCvNowNmdpcJ", "sourceItemId": "gF88ySNq4Mj7mulP"}, {"slotId": "4tQ6R1OqKVOTniBg", "sourceItemId": "LsNhdgQ0JWZjNRSz"}]' 'OTqcVNX3ahvxw9gw' --login_with_auth "Bearer foo"
inventory-public-move-my-items '{"items": [{"qty": 46, "slotId": "WsukxncuD3QxCXMd", "sourceItemId": "00YBWCaVVmM45mfI"}, {"qty": 37, "slotId": "s4pmLDIQch4IjDq9", "sourceItemId": "aT3qZyI0rYsWucAk"}, {"qty": 100, "slotId": "sVJbXi7eRZa7WwIc", "sourceItemId": "895ImqK6tVsaUq3s"}], "srcInventoryId": "tUh5J5Z9GiBiSAyl"}' 'X5cS0IeHpWCugmfO' --login_with_auth "Bearer foo"
inventory-public-get-item 'L0QQpxsuD8PGqku5' '9eFJrOXyDYz9vMUO' 'PG0iHDT8QbF7gHPT' --login_with_auth "Bearer foo"
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
echo "1..35"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminCreateChainingOperations
$PYTHON -m $MODULE 'inventory-admin-create-chaining-operations' \
    '{"message": "PQbvLt2NRqJGIKzL", "operations": [{"consumeItems": [{"inventoryId": "yH1y72L13Ornyx34", "qty": 24, "slotId": "TNFfM8M0IW4oe8KD", "sourceItemId": "gy0xZfAcNg14Ws8T"}, {"inventoryId": "IP1LKiFQoLDvumfq", "qty": 35, "slotId": "iKhDcJ7TCcNIsQ3P", "sourceItemId": "uppUxDSK8aOTGMud"}, {"inventoryId": "cxlCV4cNbJGQ57lP", "qty": 7, "slotId": "OGF6dLLIeIVIjMcd", "sourceItemId": "lbdRXTGIrdNL5gJP"}], "createItems": [{"customAttributes": {"qTAjgqaTHf1ANTJ9": {}, "Yk997XkGOdC6ItxD": {}, "T8p4n4XCFkD1AJLC": {}}, "inventoryConfigurationCode": "wszbZxuHSgDOK8bj", "inventoryId": "oF7bL2635KbtZTGJ", "qty": 32, "serverCustomAttributes": {"syhE2BKtyTDSIM7m": {}, "kmvZ7Cmsh4US8o4j": {}, "fMANPpmZDdMiCxmu": {}}, "slotId": "CCVuFjS1GC1d2b92", "slotUsed": 56, "sourceItemId": "xAnYBTxaTIz0jcgD", "tags": ["I8Pkz96vd80msqIm", "5bufnBqrpLeqhwVh", "jnnjKMEmtbiWsAQH"], "toSpecificInventory": false, "type": "nd02mECIQhfIhHtA"}, {"customAttributes": {"DUQ9zimQTQT95pFJ": {}, "UAJsyAfeKOufV4f1": {}, "5NohXu6opxQGRt6P": {}}, "inventoryConfigurationCode": "qlkL0diRhLC10ih2", "inventoryId": "EQfY3XCv4hdOa6Fd", "qty": 14, "serverCustomAttributes": {"Onb1a9gMz0F2UBRm": {}, "MhAbUWmFhdYLWzMu": {}, "v3zkUY0n0BAZkwbY": {}}, "slotId": "kBLyO6A0FqfhnaB3", "slotUsed": 67, "sourceItemId": "xKNdOTacCcJfIfXs", "tags": ["huLUk5WdpxjZx5no", "XPhPUTKbonoucNmz", "wOZOK56sDkci5rZ8"], "toSpecificInventory": false, "type": "KJdlt7rjF5RaJwvk"}, {"customAttributes": {"WVco2LTo5ijlvDF8": {}, "qBWCQ9dLWYyS8zdh": {}, "MeBXH8x6HdVfZVDA": {}}, "inventoryConfigurationCode": "iU6iJOF7JKZFNk2N", "inventoryId": "Ky59X8iOg2sVBiCo", "qty": 9, "serverCustomAttributes": {"lHvv9rqvEoM8YmVj": {}, "AkO3HKsEp6KlqwW4": {}, "djrexcbHdEtoQvpV": {}}, "slotId": "344RctmTozCi8HeV", "slotUsed": 14, "sourceItemId": "jbalHmqBBfi7sSF5", "tags": ["BoGiTCVsXsygWbjE", "2opXtdsJQeJ1too0", "qvxphTLEEBGTtZyT"], "toSpecificInventory": false, "type": "EVheJjoEEXBLIxGn"}], "removeItems": [{"inventoryId": "NuhoJM3WWPvvCiCf", "slotId": "33ViEdqQpoGkUWNi", "sourceItemId": "zk5UcPAGv6c1ESC6"}, {"inventoryId": "hZYTYZbzf5aANNNs", "slotId": "5kgSZZNUHbIT9szA", "sourceItemId": "pmWJO5vzzXZj08a6"}, {"inventoryId": "K1XRVfriSpPFnZBJ", "slotId": "ZkDnEiyfa2LrnpZx", "sourceItemId": "NnLRH36bqS2oFY76"}], "targetUserId": "PU1AziBOHEAj1cT3", "updateItems": [{"customAttributes": {"u6Zc2FbrTFznTgDI": {}, "wZIRWf6T3by2kYSC": {}, "dnFKLc0xcTjqjdcE": {}}, "inventoryId": "fU61OJYMnW49rWyn", "serverCustomAttributes": {"p1ck1vT90C6o86cS": {}, "RL9cgbUmulhe98oa": {}, "FKlQicdrxVhrtwSd": {}}, "slotId": "9QWVMYz7TU1TsxsC", "sourceItemId": "hSclSkb5aBi9K9zy", "tags": ["v6gFZXI5nXJ7hLi6", "HweweRmyo91dIn7Q", "qXBDXJcrqKmXDwoE"], "type": "V6tCdrxw1KOPhuvH"}, {"customAttributes": {"uYrGWDK41uMOC0mR": {}, "vSoaGk4ktF5wnJDg": {}, "9Q3WXiydCOInVols": {}}, "inventoryId": "r6CHmj763vLwtYEJ", "serverCustomAttributes": {"TSiXjcY5ZPkv90ly": {}, "KSTWLxSFZ0LpupEi": {}, "5DbkVs3qFTi1t530": {}}, "slotId": "Wj1WfzIvc3VlSXrA", "sourceItemId": "3XUGud4tVjmxEf4X", "tags": ["vVhFJTxFHITBg9x4", "unq3eOMHIKeTyBG5", "dCUoExnKfV3869IN"], "type": "4V1OdhH4GVU7Exlk"}, {"customAttributes": {"mc4xYiLjLyZrXr9B": {}, "htzn8jAdTn6xBhrc": {}, "iryLm67rkadH5Y41": {}}, "inventoryId": "SLjCPrFa05Xl5TPC", "serverCustomAttributes": {"5GODS44bmm7jPdKL": {}, "ddfdsUqjXVzW1Qqx": {}, "nWR5sheLgsAF4ctv": {}}, "slotId": "5guycGiq9j2EyIkn", "sourceItemId": "fLDpgHnMOn8nc3gU", "tags": ["Z8ZFyyEr0KBXuJBq", "K4QtEydPWLPBYiR3", "UbJc1ZYapx7C477e"], "type": "tqgfOJDUT0uKAPrA"}]}, {"consumeItems": [{"inventoryId": "Rya2IMlNiXpF4qvs", "qty": 96, "slotId": "Zixe2cQ6O30lpzcB", "sourceItemId": "QMAEcNcJqrKxnMzS"}, {"inventoryId": "Yoc4ZjiMY4H34B6w", "qty": 98, "slotId": "Z5j24acYHbrryHB6", "sourceItemId": "GO9zP3FaepA3b3YJ"}, {"inventoryId": "9nJM6vtT27xv85K5", "qty": 80, "slotId": "6OLKmZhCZxxPPdPw", "sourceItemId": "OtEuWBSO2jJepUnE"}], "createItems": [{"customAttributes": {"Egja2mIE2kLTnJwc": {}, "5XmkCuL5W4tKt6G3": {}, "j9LYdG7xVPqBqe9R": {}}, "inventoryConfigurationCode": "DQMBSYAFLqp8PF5h", "inventoryId": "CcoukWpnbz4ys7j6", "qty": 24, "serverCustomAttributes": {"PRtvhQIyLarjaLOK": {}, "nX51yAB8Pa3uNGKh": {}, "aLlJzJMSnJIIgsAV": {}}, "slotId": "maGYxUX1B9oVuzG2", "slotUsed": 59, "sourceItemId": "dq22cbnyK3ggFDh2", "tags": ["kaZP7pnnVfxPwc25", "9HF9ejHaILQruAuY", "yJLYGqMv824ouSgk"], "toSpecificInventory": true, "type": "pq03BGdIk4oEogFV"}, {"customAttributes": {"GR71rJOBy6lsj1AK": {}, "GBjnHmaAu4YK87DY": {}, "AWWcbcbGWmKgE8CZ": {}}, "inventoryConfigurationCode": "4AELr5lraa5v5P5C", "inventoryId": "j8hgFsqHC9h5JPiM", "qty": 63, "serverCustomAttributes": {"rwPsa9YD92CX0rIT": {}, "ajpwHITGeHTnqRbz": {}, "BB9ZFgJbQ3Fj1umx": {}}, "slotId": "4ItzkMJ7cudf4r91", "slotUsed": 48, "sourceItemId": "GPrhn2etVIQvRkQJ", "tags": ["AtDUH9tx60AehGz1", "ermJYXsYgL7TfyIl", "AwjTZdRZJJzWZwvT"], "toSpecificInventory": true, "type": "bamSCvX1nwvSWdDw"}, {"customAttributes": {"D7WJHzgNZUKsI5y0": {}, "mR3zMyTsftKqnsIJ": {}, "ctAdxyZVKHA9DkaS": {}}, "inventoryConfigurationCode": "OWgtg8yw8lHEbVDw", "inventoryId": "BAqanOlscRIWw82k", "qty": 48, "serverCustomAttributes": {"K5VTkdubkOFldMCQ": {}, "98JH4n0JtgqzZv5k": {}, "Vu4S95mj8YRvae4f": {}}, "slotId": "4lhBPbarbWEm8bVt", "slotUsed": 28, "sourceItemId": "cfVCPdQhim9QKUAF", "tags": ["TVYelIlGJg9wdc8b", "ihhWjfZpfcFBUsnn", "DJlmD1iEokbUiYzC"], "toSpecificInventory": false, "type": "5pu9PutLf6IrvZoB"}], "removeItems": [{"inventoryId": "GQbO4S3rURGWUzPA", "slotId": "E6SdV4D5jftRl9rZ", "sourceItemId": "mtQUvro8TWwXWsz9"}, {"inventoryId": "TVmdMKEohKzuMYDU", "slotId": "TLBeCidXjuGgx8nc", "sourceItemId": "XejmeZtzT0qj0lts"}, {"inventoryId": "qfiZrthVvyX0OCKD", "slotId": "JE3RMUddwSSgxCu8", "sourceItemId": "zru1DhGAYOHR5BWa"}], "targetUserId": "9VzIkaQEl1iUProN", "updateItems": [{"customAttributes": {"B6hI6IpGcToWgFvd": {}, "RhG9NwV3zDuqVlVT": {}, "ypcYPK8IxrSZuxWl": {}}, "inventoryId": "0Je4fJIyFAm3DQht", "serverCustomAttributes": {"4JwnPS2urJqerobW": {}, "MZGVL5KLTxahWlS6": {}, "XdBaKSLCgOOPXM6X": {}}, "slotId": "TUh2dJ90yqHDNacl", "sourceItemId": "4F9G6Dl5TFwBY6HK", "tags": ["XAblkT8VGgSH8MGZ", "GwiVj7eDTaka9ABf", "X1IByPEOuPhGspRi"], "type": "3bhPQvBBJI5Jxytp"}, {"customAttributes": {"cubN4AUUPFPscZsX": {}, "eJOD4DMtqfIGiGJo": {}, "vgWSRxZ8N4UQ2fg3": {}}, "inventoryId": "V1o2x0hL5DuBDqMy", "serverCustomAttributes": {"IAzWze94MEdJFAy2": {}, "JTllJkRGB8jqJEd6": {}, "eqqsBVyONV0JRtoz": {}}, "slotId": "I0jpliCFQ6WgJpGP", "sourceItemId": "igdc5VyC4qvWjVac", "tags": ["1cQvSxgTNIUzxDgB", "lIbuzm7DzJ20NFRJ", "IhFXR2dYprPmbpup"], "type": "tECGd5cdXC2Sesc6"}, {"customAttributes": {"y68whNBYl9iCqfW6": {}, "rqGOQny4ij4ysYPo": {}, "nb59gQffkNOmubxE": {}}, "inventoryId": "Jr2qEAuJbpZSrcbc", "serverCustomAttributes": {"4LWfKaY5c1tP5TDu": {}, "I5f6m4KC07CnsZe3": {}, "2hqEcB1ExYMBb3ck": {}}, "slotId": "voaJYdMqGegcg3eR", "sourceItemId": "vBZXN3cjIXmFWRJn", "tags": ["j8xN7HDPTUEDPN1K", "b4UTPWDXTSb55g8L", "STs7Nf95lGlPrf6o"], "type": "bIdnI6Ag7eUYcYJ4"}]}, {"consumeItems": [{"inventoryId": "QzXCmqr6gmPGaHP5", "qty": 92, "slotId": "GvLtz50D3rpBfBov", "sourceItemId": "qLwXBuT30EYeRj17"}, {"inventoryId": "xGhaBKoUfiHjGmCy", "qty": 86, "slotId": "2VJetWsokvx3BHuT", "sourceItemId": "Eczr9KjQ3ttz8MTB"}, {"inventoryId": "t1xk9IyssSA8nP5P", "qty": 86, "slotId": "tqPtQmQN6eKAGiZF", "sourceItemId": "CftT0RWECdjWYrnu"}], "createItems": [{"customAttributes": {"lxcCKAru8pOaAVLD": {}, "B4k3JwkdaxR7GJpY": {}, "muYCPG181q9GA5Dy": {}}, "inventoryConfigurationCode": "dC2D8UT6KOc4VPDU", "inventoryId": "R9ayazqXRqegIUic", "qty": 22, "serverCustomAttributes": {"XXzxsBFrUs9BYp6T": {}, "gCejBd5o7iTST7R3": {}, "KbbQGERMNpqWb51y": {}}, "slotId": "5RUzvMfTkPy0fGvT", "slotUsed": 66, "sourceItemId": "YcwWVRK6UKk5ozrX", "tags": ["A4HZHNyq9odanhR1", "Zrm3thUvV87yfkyc", "LSVdleSaAylsmLYe"], "toSpecificInventory": true, "type": "oLPIREGIKlJt3EP9"}, {"customAttributes": {"kKwkENQ8VOHGwbAD": {}, "MfuOmh0lciRhVZ2D": {}, "eoODXMzLSrzoiBnY": {}}, "inventoryConfigurationCode": "i5UWs3tYlYeMoCim", "inventoryId": "JySocRvUWDOrFZKP", "qty": 82, "serverCustomAttributes": {"jTvYa5Pqx1K7qcAo": {}, "ijBPAp6EPb988Nzx": {}, "rDKVpULjjiw3NeVG": {}}, "slotId": "4DJi9DaMrc0WFgKj", "slotUsed": 63, "sourceItemId": "9SRu0YqUxKDc84OM", "tags": ["IzvTScdbKBsAyJMz", "4ILNDvhB4Eoes9a6", "XaJeRbzTPwD3jxF7"], "toSpecificInventory": true, "type": "df3juXW4JprIb3CJ"}, {"customAttributes": {"CAtvSG8Cfa9dzOJD": {}, "GCTHIOFjeXbsSgR4": {}, "3kIDzxBwqRJTzrHN": {}}, "inventoryConfigurationCode": "ZWUsq5lQo2jy29EJ", "inventoryId": "igqYhyVhURx1yPec", "qty": 52, "serverCustomAttributes": {"w6zQuoZcXQpoTOxe": {}, "8y1jorNsg9ZKYCKo": {}, "ISyXtHzoWGdYohxM": {}}, "slotId": "p3uOQIybqWfG9BJ6", "slotUsed": 65, "sourceItemId": "KOcn3tMD9UT67bOw", "tags": ["ugFDa6wUQvehKqwC", "h86XmRkCEcfHDCdl", "59Wp9A3tXGve6DdK"], "toSpecificInventory": false, "type": "uvg8f2cIoByk9fxt"}], "removeItems": [{"inventoryId": "vsgeAxo57nKAbZps", "slotId": "bJ4Iu5KJ0ynxGBla", "sourceItemId": "cDCdFe8ATUqVxcSt"}, {"inventoryId": "hrpnMUBsnUfuQIcS", "slotId": "bUt5UGkInFGpuUsd", "sourceItemId": "tq4dOwNESzCEW9dU"}, {"inventoryId": "VhZjLftC3sCS8CpL", "slotId": "CqPD9CeDEdCnnL6K", "sourceItemId": "t1Bjj3b8QM8Rr45U"}], "targetUserId": "LqXQgvwD3PsKDJiW", "updateItems": [{"customAttributes": {"xQBwaS7rDBf2S54p": {}, "hbdyGDt47f9GWRlE": {}, "9hqz6rjDNo4rhjxU": {}}, "inventoryId": "dMM83WekqfWv04vv", "serverCustomAttributes": {"n9bk5qr8qs2mqtnG": {}, "AqXUjNypF6MMqWpd": {}, "EJsPoaIbYz8cK5jl": {}}, "slotId": "pJdre5ur6yvWJDdv", "sourceItemId": "M7T7PX2vamIRZHzs", "tags": ["IYOCUoiCXNjrdQL2", "jdx1eIba1sB0HsJ0", "6DzfbzRYt4OVUyum"], "type": "BeIqdQGZC5kM03HH"}, {"customAttributes": {"ijsQRj7N8IAjmson": {}, "jj0ZR50BQ1U6aFD3": {}, "O2kXQSc58zgZVl4g": {}}, "inventoryId": "IF7v3qbZu9M3OxqV", "serverCustomAttributes": {"AT4H1lRZ9Z1JBrHR": {}, "zEOtIxzPqb6n73m0": {}, "jiaDH86d9rsKgzCs": {}}, "slotId": "MulpB8HZUtVVaJCi", "sourceItemId": "LgKOwrSfWhT5B4We", "tags": ["dopzwSluBtRFPKTh", "yGnbjmPDKFS6u9FH", "uv1M3qfch4SqIV6L"], "type": "QPHlaeYl4csFq65c"}, {"customAttributes": {"U66yJaj4ovoKWE4E": {}, "W0sw8v5peiuxoBJA": {}, "TauyD3XCXVMiyEvM": {}}, "inventoryId": "f9yilUEujk6oqYo1", "serverCustomAttributes": {"HQYTFzwdOMdupwD4": {}, "O3uNbcIDcIyvZbOy": {}, "1T4hfwkuVykH4Rpf": {}}, "slotId": "mjIXFGZ5PKdbabJI", "sourceItemId": "kNnt9P1Tkm08luh4", "tags": ["dpPRMDbUXBWTbpAo", "gG2wlZkLhuU5FI8N", "ijFI0GKwJ3vfXlsA"], "type": "My2Zp2UAGxHnmSxv"}]}], "requestId": "kG9UR5q9neoW6JBc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
$PYTHON -m $MODULE 'inventory-admin-list-inventories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
$PYTHON -m $MODULE 'inventory-admin-create-inventory' \
    '{"inventoryConfigurationCode": "Gp9Rx2RfcRhXpmee", "userId": "Hdvphas9S7ivHEoL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
$PYTHON -m $MODULE 'inventory-admin-get-inventory' \
    'bUMM47f1UreUpxEk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
$PYTHON -m $MODULE 'inventory-admin-update-inventory' \
    '{"incMaxSlots": 72}' \
    'A647XQ3koaAfZIim' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
$PYTHON -m $MODULE 'inventory-delete-inventory' \
    '{"message": "0sFPm1YN27bojDVa"}' \
    'ZLpx4kEWYkO6KrKU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
$PYTHON -m $MODULE 'inventory-admin-list-items' \
    'MhJrASBh61hmWKSS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
$PYTHON -m $MODULE 'inventory-admin-get-inventory-item' \
    'rF35anDGvur19V18' \
    'oIrUKXttgAI2QdWJ' \
    'FLmoPEgd8EMspOs8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
$PYTHON -m $MODULE 'inventory-admin-list-inventory-configurations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-create-inventory-configuration' \
    '{"code": "nkic9gj5vyUMAAmI", "description": "HYbsxG5N066FXb88", "initialMaxSlots": 90, "maxInstancesPerUser": 50, "maxUpgradeSlots": 3, "name": "w94oa8UJ34TIedV3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-get-inventory-configuration' \
    'HyoX4VnO2LpBU08w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-inventory-configuration' \
    '{"code": "fnlHBXFIqFUmgUSM", "description": "M5au8GJT0mkVPI6z", "initialMaxSlots": 96, "maxInstancesPerUser": 56, "maxUpgradeSlots": 39, "name": "idsK9dCEzhVnOv0P"}' \
    'QbVIaKiHfoeorY7A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-delete-inventory-configuration' \
    '1otGFyv2SMjbEr50' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
$PYTHON -m $MODULE 'inventory-admin-list-item-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
$PYTHON -m $MODULE 'inventory-admin-create-item-type' \
    '{"name": "qGdCZIc6EFqBKxbS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
$PYTHON -m $MODULE 'inventory-admin-delete-item-type' \
    '7Q2OgRucL1jwRXzf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
$PYTHON -m $MODULE 'inventory-admin-list-tags' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
$PYTHON -m $MODULE 'inventory-admin-create-tag' \
    '{"name": "jDZZBmOau6syme06", "owner": "CLIENT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
$PYTHON -m $MODULE 'inventory-admin-delete-tag' \
    'v9Gv4tOcbnuCqf0l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
$PYTHON -m $MODULE 'inventory-admin-consume-user-item' \
    '{"qty": 26, "slotId": "bkOfHaGr5kdazlyp", "sourceItemId": "vt6lSLfU7HByGXPM"}' \
    'qxj4hBgVY3YAxZLK' \
    'bcOdyjqf6Q4oiwoJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-admin-bulk-update-my-items' \
    '[{"customAttributes": {"caRMEb15LBlTVufc": {}, "5ZyODR2NVyn4PRqf": {}, "3eRbZqBAoKGcVCdM": {}}, "serverCustomAttributes": {"iSNV4qBrt1kcLmRv": {}, "6EJtl5xWnsb8oWq9": {}, "4RImNWVIJnhhwFDV": {}}, "slotId": "1VitaomvWTzdsW4N", "sourceItemId": "70wYS4Kj7Yi2VvoQ", "tags": ["NW8Yc481dYdvGxJA", "MDRA1LF7jdWlekFw", "O94VBCV9qJhWva2F"], "type": "PBujX0geYCpGJM4s"}, {"customAttributes": {"qsPNJMiZXXOFwmGW": {}, "AvNF0Z0GkwxUNYyN": {}, "wGiKrknH0Y5mrQgL": {}}, "serverCustomAttributes": {"C6D2qsFiQHglUQMZ": {}, "i5WjMZfOadpgegCU": {}, "jTdi1Ehr8OtqpNJ9": {}}, "slotId": "R8TuNy4ejmVA3vMC", "sourceItemId": "sGyPd12B8QNUz0hF", "tags": ["FNbH6j2W4roZM2UK", "AXEEsL5D0oiFchQn", "Veq3g2AB2WIRUQma"], "type": "uIY5HXCZ0W4XmWP0"}, {"customAttributes": {"HzSdiylLhVYszm8x": {}, "Y33OQbumu2QHLyZN": {}, "uysyM4OfCzdQCXMA": {}}, "serverCustomAttributes": {"Wnf87YPNOe9Eevf1": {}, "fhMg1E2k7QLFrVgt": {}, "X7y0fPOieDCow2zX": {}}, "slotId": "yFFVpM87yqEwEacQ", "sourceItemId": "MTlqN4LKkxJ5v3SB", "tags": ["afnKNiMPbFkFGA85", "W3HJkqgS2B37wwoP", "YOHiIsxmsLBPBJuN"], "type": "LnWRrtW870qD88Zc"}]' \
    'duZSe7W20UZcDaiq' \
    '0nEZ7PyhqFJkDClO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
$PYTHON -m $MODULE 'inventory-admin-save-item-to-inventory' \
    '{"customAttributes": {"sKmfsgJdmzsDPsWh": {}, "1k0cQ08NG6dX2TZk": {}, "il67kRngoUa83ECh": {}}, "qty": 84, "serverCustomAttributes": {"gqPeS193TNNzot3s": {}, "Vli3GN2XTrFibRAh": {}, "zzEWzWlTY70qdgJR": {}}, "slotId": "vpZrSpWX3KEe2BjV", "slotUsed": 90, "sourceItemId": "bzgUwd8DHoCQykmX", "tags": ["HYmkRlg7gYs6unPY", "Q9jNQN1di1ldhOh6", "HvjnYuV7NfC4A2OD"], "type": "iZhbfb8QqCyK1XH9"}' \
    'D6vl5eFdFfgK46Gj' \
    'CWaP8huTmnq3FGQn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
$PYTHON -m $MODULE 'inventory-admin-bulk-remove-items' \
    '[{"slotId": "3Ahu5wxq6oJq4mCh", "sourceItemId": "mQHQhO9IKBXDFQfX"}, {"slotId": "FD58sG6uDhFYlrzJ", "sourceItemId": "BYSeMuJfQecutjS0"}, {"slotId": "29BiJWOG1m7MKclr", "sourceItemId": "5igjNTVItrH2X78h"}]' \
    'xJgaVfw5Vnyq8OzT' \
    'E89WDNoMcOmbfJrC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
$PYTHON -m $MODULE 'inventory-admin-save-item' \
    '{"customAttributes": {"JQIj1haAosKglqaC": {}, "XE9ytpIO8btO3OwN": {}, "EGSW5TaW4to7QCY2": {}}, "inventoryConfigurationCode": "NGGvi9kg3rMIzNmh", "qty": 72, "serverCustomAttributes": {"5eg9q86IaDFjjx6u": {}, "ZerWbtwTX9gNRByj": {}, "bE8lOLAfTXKLzbrd": {}}, "slotId": "dqcKLa7LevxNHOSE", "slotUsed": 14, "sourceItemId": "E9jlnTgtgW33wDwD", "tags": ["9RKvQX4yFQFdrRoM", "6FoqCYw7AlxO6qdF", "pc71sSck3ggZWJlS"], "type": "lCQMDji329PfVrvM"}' \
    'EPtpsSNcpK1QkB2S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
$PYTHON -m $MODULE 'inventory-public-list-inventory-configurations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
$PYTHON -m $MODULE 'inventory-public-list-item-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
$PYTHON -m $MODULE 'inventory-public-list-tags' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
$PYTHON -m $MODULE 'inventory-public-list-inventories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
$PYTHON -m $MODULE 'inventory-public-consume-my-item' \
    '{"qty": 51, "slotId": "H7WjP7HuGz3b5WAE", "sourceItemId": "vdRF9bqMj4ro5B19"}' \
    'VE838c7OydVw0zCq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
$PYTHON -m $MODULE 'inventory-public-list-items' \
    'oMZvpIOO97DmQ5ZO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-update-my-items' \
    '[{"customAttributes": {"zx6iCJTu60IifzMh": {}, "kk5PxsjqbCKpMv2Y": {}, "ky9DYkD2sIllFtBt": {}}, "slotId": "XJKG3rqBmILhtWm8", "sourceItemId": "RQvRUbUDSiefGEdL", "tags": ["ucrtO2gCQD057DrD", "lgC2nzS9SiGUjVAw", "4v3q6JRHcn7KaoCE"]}, {"customAttributes": {"kRdo6qHYIZWnXqQ1": {}, "oHFJ9Q0vqsL9Somq": {}, "WsGA76yxi0QzZWfm": {}}, "slotId": "P2sx0KO5bEJaPnAF", "sourceItemId": "jsodyJQVVBrShGbI", "tags": ["IuqK8C403HgoXCR6", "XOMXwKdfqk8T4QHK", "30EX0FclpDl5Hsur"]}, {"customAttributes": {"acO5MnjnxD1OXkxS": {}, "hFVQTRekLfjmy8zo": {}, "sRCRgVwbrQKmb01y": {}}, "slotId": "A7U7dGMjupZkZQY8", "sourceItemId": "CNyT4k3DIbfT22G5", "tags": ["NpE130YWSgxpKWtd", "tdtVW9anENmxb9e7", "vXZV3ig8Jg5VByeI"]}]' \
    '3ycMcYYBixKJXCIS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-remove-my-items' \
    '[{"slotId": "Qdwec1m8BusV9tUh", "sourceItemId": "74KVo6Xqjz2xUKLN"}, {"slotId": "WSmYyVvyelIJ8Qga", "sourceItemId": "LMqi836ULa7cfZl4"}, {"slotId": "VuY6rsZyo6CBRRno", "sourceItemId": "OikIxXKKIR6kPmsw"}]' \
    'm5TCAU1cKApdJDnE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
$PYTHON -m $MODULE 'inventory-public-move-my-items' \
    '{"items": [{"qty": 22, "slotId": "3GLmSZns5owBhoUg", "sourceItemId": "4LsGP6KLPXkvUv2X"}, {"qty": 17, "slotId": "94s7CbIJ7eHnVWOb", "sourceItemId": "oMkyB7FTexsOZ0b2"}, {"qty": 31, "slotId": "OlRGdmXxETLEQrr3", "sourceItemId": "KCAV9alq3hK1G4kK"}], "srcInventoryId": "ooSNNUZuiynZ64Iw"}' \
    'ncZPk82GF3eTC0vz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
$PYTHON -m $MODULE 'inventory-public-get-item' \
    'ZUDj9dzGgGVxo9OH' \
    'gfHumyfuBNisecYb' \
    'cOpR45VDlvSc0Mr7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
