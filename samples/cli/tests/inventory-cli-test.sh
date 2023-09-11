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
inventory-admin-list-inventories --login_with_auth "Bearer foo"
inventory-admin-create-inventory '{"inventoryConfigurationCode": "EAxcVpFrttufHIRd", "userId": "H9UzVRiXbqlAw7r6"}' --login_with_auth "Bearer foo"
inventory-admin-get-inventory 'W2ktQG0h5JAav5kR' --login_with_auth "Bearer foo"
inventory-admin-update-inventory '{"incMaxSlots": 0}' '4n8mzZ0m8SAMTwE6' --login_with_auth "Bearer foo"
inventory-delete-inventory '{"message": "I56IaRDBXxyaNoMR"}' '6hkspInrAip6lyzS' --login_with_auth "Bearer foo"
inventory-admin-list-items 'xwElFHHdgs21Jub7' --login_with_auth "Bearer foo"
inventory-admin-get-inventory-item '4CUkNmKJfh5pUkHO' 'DpoMF78NY4YkHs1c' 'nz1JSDgY1TXp38zs' --login_with_auth "Bearer foo"
inventory-admin-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-admin-create-inventory-configuration '{"code": "CTCrbCbPOyNQkT7N", "description": "vyE3cwyALczNIicX", "initialMaxSlots": 25, "maxInstancesPerUser": 0, "maxUpgradeSlots": 100, "name": "gSrjJW2OQNOs1PXh"}' --login_with_auth "Bearer foo"
inventory-admin-get-inventory-configuration 'T5FvdiRilZ7oFgx4' --login_with_auth "Bearer foo"
inventory-admin-update-inventory-configuration '{"code": "c8OumKtPDKJDXn7Z", "description": "4U68su8XfqlqNiTv", "initialMaxSlots": 56, "maxInstancesPerUser": 43, "maxUpgradeSlots": 20, "name": "SdAdIhUDrwoZ5Mec"}' 'dKi5r6QEa1ysLEzt' --login_with_auth "Bearer foo"
inventory-admin-delete-inventory-configuration 'h6mXhzkzWkFeZSoE' --login_with_auth "Bearer foo"
inventory-admin-list-item-types --login_with_auth "Bearer foo"
inventory-admin-create-item-type '{"name": "AcBdW19m4eu6d5tA"}' --login_with_auth "Bearer foo"
inventory-admin-delete-item-type '5jUmiTqpyhPFdxLz' --login_with_auth "Bearer foo"
inventory-admin-list-tags --login_with_auth "Bearer foo"
inventory-admin-create-tag '{"name": "FQN05MYzYiKWe5dN", "owner": "CLIENT"}' --login_with_auth "Bearer foo"
inventory-admin-delete-tag 'IAjGGJddVCvu9vx5' --login_with_auth "Bearer foo"
inventory-admin-consume-user-item '{"qty": 76, "slotId": "vkLGMS0lyuI9a2I9", "sourceItemId": "u6Vpbsx5w8hqUI06"}' 'UpOXGSLmCVuHOPlL' 'lkvR8sKgnuRkgghG' --login_with_auth "Bearer foo"
inventory-admin-bulk-update-my-items '[{"customAttributes": {"oYupD391C2qtPYok": {}, "ahFjkQsfCaTmt1d6": {}, "7FXGk2s9Q0mPVo3t": {}}, "serverCustomAttributes": {"wu0MesTCf9x4rt69": {}, "lna7qxNeIxPz6Mbw": {}, "L6IY69z1UaLqYSYW": {}}, "slotId": "ytLPziZMdjxcBZuf", "sourceItemId": "QxGiHPllG4cYEzfT", "tags": ["D1ZBm3MqHcUmLZZb", "Sqb8RwNmn9HrNQy4", "uZAAiE0mit9RGCCH"], "type": "YzUOcEdscKHPEqgA"}, {"customAttributes": {"8yu7Vk6Jt4Ymos9J": {}, "cdos4fYcTVU6RBt0": {}, "zYoMcHyCUEXlAvxJ": {}}, "serverCustomAttributes": {"MdalwSyliWMNW5Ny": {}, "Lu0M3VHh2EI8JlDb": {}, "PWbQ6Q9lNmqRBaAk": {}}, "slotId": "LnvxkT1X68cmDc3f", "sourceItemId": "xU8MyKrQpM4hkkK6", "tags": ["KKXNB3Gv0IqmF51T", "khjYnaq6foWvXa3b", "MrXsDr6kILsSSyDd"], "type": "mykmoPYgc2L4jk4L"}, {"customAttributes": {"o0LSP0pf4IxjUkl5": {}, "35X3ateEKDpADz1x": {}, "3poD3Qgb3boLQQ1M": {}}, "serverCustomAttributes": {"zH7Qm8bwbmXgdAPh": {}, "1EThG96gAFKK2WDg": {}, "CcxvONZm3EeERmDn": {}}, "slotId": "yeFoF7VSZ6pf3vne", "sourceItemId": "SD2Tb3g7mSQUhAEt", "tags": ["rmjqU6YE3p4lSck0", "ZHn5GI39YBHqaTHe", "KtW18iGeUlc9d9so"], "type": "gWa24CKNS0GqVvUf"}]' 'HQvsHXNUNe4mhgo5' 'QB65lSAiYnNjkfZr' --login_with_auth "Bearer foo"
inventory-admin-save-item-to-inventory '{"customAttributes": {"QvGgbLdLsFzHkBMr": {}, "1yrOMlNFSrUEirnj": {}, "X9fDmIbeZxzfTcyi": {}}, "qty": 41, "serverCustomAttributes": {"6yUZNmTBcvrbYCwZ": {}, "txFHyPLtI8ilbyDP": {}, "UIj88cekdqCt81P1": {}}, "slotId": "ktfIovmv9gsR5cJc", "slotUsed": 69, "sourceItemId": "Osb392k6YmJFfRBy", "tags": ["jlBiuFM3FIoVk8T3", "GpAnkCmBUqg2SCnq", "ntX9y1aZSWMiVi10"], "type": "sG6vxkfUcmqRRbce"}' 'J5i0EeDxOgBnhhqE' 'lIaDml48wdNFLTm5' --login_with_auth "Bearer foo"
inventory-admin-bulk-remove-items '[{"slotId": "T50x9WT0GfH2rtOa", "sourceItemId": "4EXsXzOXQAk4mqrx"}, {"slotId": "zTtuLl4XlbGL8QOx", "sourceItemId": "tjzm8y2wNhmwoYZy"}, {"slotId": "I4EFZKBcYrCEAE7W", "sourceItemId": "Isfmx40NLRc6m8he"}]' 'KnWhzfe2NubeoKFe' 'IaFQCYoDPICpnduE' --login_with_auth "Bearer foo"
inventory-admin-save-item '{"customAttributes": {"EQlULdJz4mnRBkMN": {}, "xvvKgAT8mJrYq6hR": {}, "kloqxM3gpwxcfMy9": {}}, "inventoryConfigurationCode": "XzjjI5YbsKoADkzJ", "qty": 62, "serverCustomAttributes": {"13lk1dQBHO86IlBh": {}, "netU4RwTqUXlTDBz": {}, "OuYsaZA2yyd4mbqo": {}}, "slotId": "OfADMMAXFaY9eKa6", "slotUsed": 56, "sourceItemId": "9bRVhyaKwwrAP2aM", "tags": ["lu7WtjCtoYetOO84", "7g8OudOfjnCuHZ3c", "46IjGa23YvYmmDg7"], "type": "VYPXIuvUYTZBRujI"}' 'UE1Tq5jyAZvkRCMN' --login_with_auth "Bearer foo"
inventory-public-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-public-list-item-types --login_with_auth "Bearer foo"
inventory-public-list-tags --login_with_auth "Bearer foo"
inventory-public-list-inventories --login_with_auth "Bearer foo"
inventory-public-consume-my-item '{"qty": 66, "slotId": "AsSp7gh4TeUTkOkA", "sourceItemId": "YfJB8AT9t4Tv207Y"}' '2QD3oD5fLCr3OOlX' --login_with_auth "Bearer foo"
inventory-public-list-items 'Vv8ZGF7uYnGzpipN' --login_with_auth "Bearer foo"
inventory-public-bulk-update-my-items '[{"customAttributes": {"DigNJma1MbqqZtfN": {}, "Wql4nmwAft4gqkNN": {}, "lWkD9eOziYRFOn0j": {}}, "slotId": "JLHC9LxhvNXTwGBC", "sourceItemId": "tohLtl9Zuhytm5UD", "tags": ["rT6QXCs5SPBbRPZT", "F6oQAXVG7tnsZg5Q", "gXjvyGJPN4eXbJE5"]}, {"customAttributes": {"Vs2GcyomQoIXimBJ": {}, "ehyxlNsjUgxBkF6w": {}, "FPoJeQediogEhhM2": {}}, "slotId": "rIizGdKvOPdq5xrg", "sourceItemId": "xSmy1DN9LFkYW5DQ", "tags": ["yj4bj5Ro2ogaKt2u", "jQSa3Zdb65UXmy0Z", "p6iIaTIKUkmkk9QM"]}, {"customAttributes": {"0NBMA9ORxpzwLR2A": {}, "K6eXUGPJsw1fiP80": {}, "G9Pclxcft2ulIJzP": {}}, "slotId": "yrVEiOG4UcqsuGKH", "sourceItemId": "hMRWLVd3DlhLuIpo", "tags": ["mM8sm1MiaI1mX2tJ", "oARtdbBe7udsMrok", "0WvGYYnx4V709xbn"]}]' 'GezKsDwG2omOR2nv' --login_with_auth "Bearer foo"
inventory-public-bulk-remove-my-items '[{"slotId": "YI9TVqJdvzcWbfUp", "sourceItemId": "aXp5JMl5LL4bTxBm"}, {"slotId": "ZjdrrIxsB0NRsB1f", "sourceItemId": "PqqRRulpqpymDkQh"}, {"slotId": "trHWwRVnwVBOqOHi", "sourceItemId": "8pWGd1juYhiqjRJO"}]' 'qB5F93zFQbJndUDp' --login_with_auth "Bearer foo"
inventory-public-move-my-items '{"items": [{"qty": 7, "slotId": "Ky8M9zVrjfGXZnqA", "sourceItemId": "QUoY1GjlIIk0iKoT"}, {"qty": 94, "slotId": "Pb71ORYcmQbTU5JX", "sourceItemId": "8ccLjMXJRk0eaKQD"}, {"qty": 82, "slotId": "bxIxi4YKlONk2Q5Y", "sourceItemId": "4JvaizwiilatuUjj"}], "srcInventoryId": "t9lIMGql5ElEa9EI"}' 'IlGcHB3CfR3ncDlw' --login_with_auth "Bearer foo"
inventory-public-get-item 'i3v3MFFJ1KesKoEL' 'CpobBEG8X645xpdX' 'pai0rYaT5hOPjaf3' --login_with_auth "Bearer foo"
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
echo "1..34"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminListInventories
$PYTHON -m $MODULE 'inventory-admin-list-inventories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminListInventories' test.out

#- 3 AdminCreateInventory
$PYTHON -m $MODULE 'inventory-admin-create-inventory' \
    '{"inventoryConfigurationCode": "H0tYighU0VUfcYHJ", "userId": "bBfAKSiPW3VgsZXi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateInventory' test.out

#- 4 AdminGetInventory
$PYTHON -m $MODULE 'inventory-admin-get-inventory' \
    'R1DJ7HVWqMkNSawQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetInventory' test.out

#- 5 AdminUpdateInventory
$PYTHON -m $MODULE 'inventory-admin-update-inventory' \
    '{"incMaxSlots": 95}' \
    't9plCSVq8PdH6hJP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateInventory' test.out

#- 6 DeleteInventory
$PYTHON -m $MODULE 'inventory-delete-inventory' \
    '{"message": "UAc0RVwXgAgntLMC"}' \
    'uaXBWQi6BqPg4xr0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteInventory' test.out

#- 7 AdminListItems
$PYTHON -m $MODULE 'inventory-admin-list-items' \
    'lCancUZGCHsZYoLf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminListItems' test.out

#- 8 AdminGetInventoryItem
$PYTHON -m $MODULE 'inventory-admin-get-inventory-item' \
    'R1KtOv7Zy0b65uvu' \
    'KNuy0ytZQ7M6Nzy1' \
    'adnSKOLFKx1dX4Lu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminGetInventoryItem' test.out

#- 9 AdminListInventoryConfigurations
$PYTHON -m $MODULE 'inventory-admin-list-inventory-configurations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminListInventoryConfigurations' test.out

#- 10 AdminCreateInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-create-inventory-configuration' \
    '{"code": "WJu3pDMUAeeZ97SB", "description": "ROPYuG6XqP6oo7G7", "initialMaxSlots": 8, "maxInstancesPerUser": 53, "maxUpgradeSlots": 57, "name": "dxTgOfnwIdlNa29f"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateInventoryConfiguration' test.out

#- 11 AdminGetInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-get-inventory-configuration' \
    'DLh741IslKHzGlLK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetInventoryConfiguration' test.out

#- 12 AdminUpdateInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-inventory-configuration' \
    '{"code": "WUtDQs61OQAoxyyQ", "description": "pRWCiiPDGQhNPEwi", "initialMaxSlots": 72, "maxInstancesPerUser": 64, "maxUpgradeSlots": 59, "name": "EJ7tnkY6Mca5afj1"}' \
    '2K2IzrBvvWm4udE0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateInventoryConfiguration' test.out

#- 13 AdminDeleteInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-delete-inventory-configuration' \
    'OXudXgNne8kJATwl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteInventoryConfiguration' test.out

#- 14 AdminListItemTypes
$PYTHON -m $MODULE 'inventory-admin-list-item-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminListItemTypes' test.out

#- 15 AdminCreateItemType
$PYTHON -m $MODULE 'inventory-admin-create-item-type' \
    '{"name": "c6esUp6Sw1I98jeZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateItemType' test.out

#- 16 AdminDeleteItemType
$PYTHON -m $MODULE 'inventory-admin-delete-item-type' \
    'Q7hfxnhLd3Knakno' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteItemType' test.out

#- 17 AdminListTags
$PYTHON -m $MODULE 'inventory-admin-list-tags' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminListTags' test.out

#- 18 AdminCreateTag
$PYTHON -m $MODULE 'inventory-admin-create-tag' \
    '{"name": "ed9DHhLOqQGhCUr6", "owner": "CLIENT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminCreateTag' test.out

#- 19 AdminDeleteTag
$PYTHON -m $MODULE 'inventory-admin-delete-tag' \
    'Aa7j0riFc5HTHQIo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteTag' test.out

#- 20 AdminConsumeUserItem
$PYTHON -m $MODULE 'inventory-admin-consume-user-item' \
    '{"qty": 97, "slotId": "6I6tRbRcrEveMdAd", "sourceItemId": "iPKDUVSC00PYeDca"}' \
    'gginxnFIna3yddcb' \
    'sPheTH26IUJNvYuG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminConsumeUserItem' test.out

#- 21 AdminBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-admin-bulk-update-my-items' \
    '[{"customAttributes": {"RUvpZaHCuESOiIZs": {}, "MfB4ZH3mtgWgU4pC": {}, "AKxeE70CaunQNxot": {}}, "serverCustomAttributes": {"371W9G4AvQkqsGnm": {}, "yo5JJTUVmb8GEXFT": {}, "lEMEsFzYqwgK1Np5": {}}, "slotId": "nodqpLm7FhJBNXzA", "sourceItemId": "FdO0Khqf6kiTdSGv", "tags": ["2LFjAKY7CbgsWqFW", "ZX7kPBom8F9GLLTG", "8phc3n4iLoIllKlp"], "type": "O2pqiXJF3WGRaoQo"}, {"customAttributes": {"mSJC4DdrKF7SUQPL": {}, "G59e0k5ZtX6wK7Pp": {}, "UlcIW32iK7MGt1ix": {}}, "serverCustomAttributes": {"Y5rA1WoVeJIePF8Z": {}, "rQzP4zvtdxdbZUpd": {}, "6FJtHJ1pyVwyKQLY": {}}, "slotId": "6FEO65Rb3z7CYLM8", "sourceItemId": "IlsHqffnrfsGlfPa", "tags": ["ZKBwa3Ddb60ufPpz", "wj1QGIFmlVf4jvap", "seE9LN9bvhOrHflI"], "type": "Od6X3viLvtEk4mTI"}, {"customAttributes": {"pUA9gxo8SV38nEho": {}, "XmM2W7l6jHMA2rG3": {}, "nakopAywelu01nry": {}}, "serverCustomAttributes": {"EJ0NqoTow0qiOiC4": {}, "j0iktm0ZPLkLOsp0": {}, "LZ5njN86Hl8kUXzt": {}}, "slotId": "6bSc6bWvgpVyW9dD", "sourceItemId": "1kOmvrAejcq2LgkQ", "tags": ["uaS7RBx3vim02jBO", "xrZDyvpcLYOWA8Nj", "xOnaEok4nOOCzfsf"], "type": "lhjbngJOUn18G5Ml"}]' \
    'fDTk8aG40NlncceI' \
    'ZSwgAIkgzh4pTU0A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminBulkUpdateMyItems' test.out

#- 22 AdminSaveItemToInventory
$PYTHON -m $MODULE 'inventory-admin-save-item-to-inventory' \
    '{"customAttributes": {"m4DZhl0bQxFJ3sWC": {}, "qQpQ2FbKPFMycMSQ": {}, "4qfAacR0LgB5BUXv": {}}, "qty": 20, "serverCustomAttributes": {"fPlNos4yBRjrERHE": {}, "onAZR8GmEu0q1p6Q": {}, "CyY6vSkVFWdsbYuV": {}}, "slotId": "EGVxYheR3j5mNZ6v", "slotUsed": 45, "sourceItemId": "7pna08gxefTYKhux", "tags": ["aEc7M4P7UckSC6eP", "eN8i4GrFES9z7xue", "HpATHccee9GXhKcj"], "type": "mSEwdrkEnnqKzFsL"}' \
    'fYalUlfwEQKjU7eH' \
    'GebSVu0LQ40kepEa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminSaveItemToInventory' test.out

#- 23 AdminBulkRemoveItems
$PYTHON -m $MODULE 'inventory-admin-bulk-remove-items' \
    '[{"slotId": "C4dfiOMZfEhHr39p", "sourceItemId": "ysFO3Zvc1BZG99Ly"}, {"slotId": "vfvHEsJKQQewVLMU", "sourceItemId": "oAnaRcYp7FUjfIGa"}, {"slotId": "ffoflEIByYqeKN0m", "sourceItemId": "eGelYF5wWaDhukU4"}]' \
    'khGG4vZFTYnPkmSu' \
    '4PWam1jxR7SETWjt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminBulkRemoveItems' test.out

#- 24 AdminSaveItem
$PYTHON -m $MODULE 'inventory-admin-save-item' \
    '{"customAttributes": {"eoc8fgvZDDhoO05o": {}, "KqymxLD1Lcvw6T6m": {}, "ZEiwxxElpMYSWIeV": {}}, "inventoryConfigurationCode": "zm7z9noowmlTIKVo", "qty": 47, "serverCustomAttributes": {"FkIf5weqZ18MH57l": {}, "2Zsrh90ETtYmGukz": {}, "3MnlrjcHp6B8Vj7r": {}}, "slotId": "XFgDnDkdZ9bpjb1t", "slotUsed": 6, "sourceItemId": "aLQjctvrK2jhsYpK", "tags": ["PlXn77AtYoFzLAAT", "PY8P8P3cfoivvQxe", "vecWw7Rry0KK5rgA"], "type": "GO0dW8rX2MVUGKSZ"}' \
    '4GcLkt4pK32sJxlZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminSaveItem' test.out

#- 25 PublicListInventoryConfigurations
$PYTHON -m $MODULE 'inventory-public-list-inventory-configurations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicListInventoryConfigurations' test.out

#- 26 PublicListItemTypes
$PYTHON -m $MODULE 'inventory-public-list-item-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicListItemTypes' test.out

#- 27 PublicListTags
$PYTHON -m $MODULE 'inventory-public-list-tags' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicListTags' test.out

#- 28 PublicListInventories
$PYTHON -m $MODULE 'inventory-public-list-inventories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicListInventories' test.out

#- 29 PublicConsumeMyItem
$PYTHON -m $MODULE 'inventory-public-consume-my-item' \
    '{"qty": 5, "slotId": "JBaqdg2FHcunsS1l", "sourceItemId": "naO2m9vqjhbeK2qN"}' \
    '8g6x2PyYDo5R3hLi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicConsumeMyItem' test.out

#- 30 PublicListItems
$PYTHON -m $MODULE 'inventory-public-list-items' \
    'D5sf5y1JsxJNGmyt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicListItems' test.out

#- 31 PublicBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-update-my-items' \
    '[{"customAttributes": {"0SQDUDoWBZVGLlkU": {}, "etzCAWc9x1aMjgGi": {}, "m51T107XIZRZ7tZd": {}}, "slotId": "Is0xf4czdt7zqmSK", "sourceItemId": "xOEQlVcx6GqsBq8v", "tags": ["dhWVnuYLgpZehK0G", "2nmyuViB9kRTcSQd", "TnNYGeAfYFG3wSkH"]}, {"customAttributes": {"KufBdS3ZOokZB4cX": {}, "nAXyuGz6LlxHv8Sw": {}, "yagYvDJ3w3UNgIGj": {}}, "slotId": "2jZtEYT8sIPSE1XX", "sourceItemId": "PzySa0sZoFS6xCOW", "tags": ["Mpyh9pMsQgb64ELb", "zDMwyo4nIRysQdbu", "fXjYnSoIFeouC2m3"]}, {"customAttributes": {"8kXrDZWlGVE9sJ4N": {}, "pUtKp6M9I6nEwnZh": {}, "sjwJeGwaPSDMZz95": {}}, "slotId": "OYKiqaZD63xe5rru", "sourceItemId": "JVfLGea0ZtlzUcuH", "tags": ["AXz0UV31MfuGaXsA", "uGsZaSHevO0TQNEI", "3kfabxJWWSI1ECUo"]}]' \
    '1NPpeFhUztXDgB7n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicBulkUpdateMyItems' test.out

#- 32 PublicBulkRemoveMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-remove-my-items' \
    '[{"slotId": "4C97uAPP8PATLpUp", "sourceItemId": "xeJlsBJT6Hh3OMjA"}, {"slotId": "jq2mK8lbSEEelxnb", "sourceItemId": "5QxWG2HFnZlA6HKW"}, {"slotId": "W4fI1IQcoBQELcNl", "sourceItemId": "ZkqTZrKgXNwvm4e5"}]' \
    'GX6H742OixhtAoKi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkRemoveMyItems' test.out

#- 33 PublicMoveMyItems
$PYTHON -m $MODULE 'inventory-public-move-my-items' \
    '{"items": [{"qty": 97, "slotId": "UcOvhPyE11TRT2SK", "sourceItemId": "seoe8VLie0LBa36K"}, {"qty": 81, "slotId": "WZEtyd56LfxnbY97", "sourceItemId": "jjYgXchCbkXX26uE"}, {"qty": 6, "slotId": "JDWh9YWqc0qgV6d9", "sourceItemId": "yOfIMLds2DbPcaoM"}], "srcInventoryId": "dtRLTmSvTkQQgB7e"}' \
    'xYvmHMxr5hPCJJzt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicMoveMyItems' test.out

#- 34 PublicGetItem
$PYTHON -m $MODULE 'inventory-public-get-item' \
    'JBg0tTJg46IewOXE' \
    '2AkCh3QIZsUf8lGF' \
    'XcmwTERHclOdxIwq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicGetItem' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
