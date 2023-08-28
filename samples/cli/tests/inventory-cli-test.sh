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
inventory-admin-get-inventory-item '4CUkNmKJfh5pUkHO' 'DpoMF78NY4YkHs1c' --login_with_auth "Bearer foo"
inventory-admin-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-admin-create-inventory-configuration '{"code": "nz1JSDgY1TXp38zs", "description": "CTCrbCbPOyNQkT7N", "initialMaxSlots": 44, "maxInstancesPerUser": 50, "maxUpgradeSlots": 83, "name": "E3cwyALczNIicXm7"}' --login_with_auth "Bearer foo"
inventory-admin-get-inventory-configuration 'agSrjJW2OQNOs1PX' --login_with_auth "Bearer foo"
inventory-admin-update-inventory-configuration '{"code": "hT5FvdiRilZ7oFgx", "description": "4c8OumKtPDKJDXn7", "initialMaxSlots": 96, "maxInstancesPerUser": 4, "maxUpgradeSlots": 14, "name": "8su8XfqlqNiTvB6S"}' 'dAdIhUDrwoZ5Mecd' --login_with_auth "Bearer foo"
inventory-admin-delete-inventory-configuration 'Ki5r6QEa1ysLEzth' --login_with_auth "Bearer foo"
inventory-admin-list-item-types --login_with_auth "Bearer foo"
inventory-admin-create-item-type '{"name": "6mXhzkzWkFeZSoEA"}' --login_with_auth "Bearer foo"
inventory-admin-delete-item-type 'cBdW19m4eu6d5tA5' --login_with_auth "Bearer foo"
inventory-admin-list-tags --login_with_auth "Bearer foo"
inventory-admin-create-tag '{"name": "jUmiTqpyhPFdxLzF", "owner": "CLIENT"}' --login_with_auth "Bearer foo"
inventory-admin-delete-tag 'N05MYzYiKWe5dNRl' --login_with_auth "Bearer foo"
inventory-admin-bulk-update-my-items '[{"customAttributes": {"jv7IPrDQQRgat0Se": {}, "vkLGMS0lyuI9a2I9": {}, "u6Vpbsx5w8hqUI06": {}}, "id": "UpOXGSLmCVuHOPlL", "serverCustomAttributes": {"lkvR8sKgnuRkgghG": {}, "oYupD391C2qtPYok": {}, "ahFjkQsfCaTmt1d6": {}}, "tags": ["7FXGk2s9Q0mPVo3t", "wu0MesTCf9x4rt69", "lna7qxNeIxPz6Mbw"], "type": "L6IY69z1UaLqYSYW"}, {"customAttributes": {"ytLPziZMdjxcBZuf": {}, "QxGiHPllG4cYEzfT": {}, "D1ZBm3MqHcUmLZZb": {}}, "id": "Sqb8RwNmn9HrNQy4", "serverCustomAttributes": {"uZAAiE0mit9RGCCH": {}, "YzUOcEdscKHPEqgA": {}, "8yu7Vk6Jt4Ymos9J": {}}, "tags": ["cdos4fYcTVU6RBt0", "zYoMcHyCUEXlAvxJ", "MdalwSyliWMNW5Ny"], "type": "Lu0M3VHh2EI8JlDb"}, {"customAttributes": {"PWbQ6Q9lNmqRBaAk": {}, "LnvxkT1X68cmDc3f": {}, "xU8MyKrQpM4hkkK6": {}}, "id": "KKXNB3Gv0IqmF51T", "serverCustomAttributes": {"khjYnaq6foWvXa3b": {}, "MrXsDr6kILsSSyDd": {}, "mykmoPYgc2L4jk4L": {}}, "tags": ["o0LSP0pf4IxjUkl5", "35X3ateEKDpADz1x", "3poD3Qgb3boLQQ1M"], "type": "zH7Qm8bwbmXgdAPh"}]' '1EThG96gAFKK2WDg' 'CcxvONZm3EeERmDn' --login_with_auth "Bearer foo"
inventory-admin-save-item-to-inventory '{"customAttributes": {"yeFoF7VSZ6pf3vne": {}, "SD2Tb3g7mSQUhAEt": {}, "rmjqU6YE3p4lSck0": {}}, "qty": 27, "serverCustomAttributes": {"Hn5GI39YBHqaTHeK": {}, "tW18iGeUlc9d9sog": {}, "Wa24CKNS0GqVvUfH": {}}, "sourceItemId": "QvsHXNUNe4mhgo5Q", "tags": ["B65lSAiYnNjkfZrQ", "vGgbLdLsFzHkBMr1", "yrOMlNFSrUEirnjX"], "type": "9fDmIbeZxzfTcyiu"}' 'ATus9hsfpFDcSDG8' 'aMVGLiBNrDjqoxcw' --login_with_auth "Bearer foo"
inventory-admin-bulk-remove-items '{"ids": ["gGLXpUL4pp2ncYAH", "dNzDmeIP6rOvDz9K", "Osb392k6YmJFfRBy"]}' 'jlBiuFM3FIoVk8T3' 'GpAnkCmBUqg2SCnq' --login_with_auth "Bearer foo"
inventory-admin-consume-user-item '{"qty": 27}' '4Yw20DOqOBSC2DKH' 'RuPMMWH8Yb33T5UB' 'JCjfcnLRfxeCSz9W' --login_with_auth "Bearer foo"
inventory-admin-save-item '{"customAttributes": {"Ei8KlloeH0JT1ydu": {}, "at2vQR3biBfsu4jm": {}, "sRE2w1yEkLgh3tIY": {}}, "inventoryConfigurationCode": "t4SqYUTLDx9gIiDa", "qty": 27, "serverCustomAttributes": {"jzm8y2wNhmwoYZyI": {}, "4EFZKBcYrCEAE7WI": {}, "sfmx40NLRc6m8heK": {}}, "sourceItemId": "nWhzfe2NubeoKFeI", "tags": ["aFQCYoDPICpnduEE", "QlULdJz4mnRBkMNx", "vvKgAT8mJrYq6hRk"], "type": "loqxM3gpwxcfMy9X"}' 'zjjI5YbsKoADkzJE' --login_with_auth "Bearer foo"
inventory-public-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-public-list-item-types --login_with_auth "Bearer foo"
inventory-public-list-tags --login_with_auth "Bearer foo"
inventory-public-list-inventories --login_with_auth "Bearer foo"
inventory-public-list-items 'N2VHzih3bit0VWn3' --login_with_auth "Bearer foo"
inventory-public-bulk-update-my-items '[{"customAttributes": {"CO39PXDNxtXgeO3F": {}, "gkXhjDzaQY3snn2Z": {}, "kP7cFdP43e5dC9XI": {}}, "id": "BudfZgrbHDIDm4hM", "tags": ["zF4TxodenSrUTvfq", "U0bfoMm5cTtFWbot", "QyXJRcQWsmqPNs92"]}, {"customAttributes": {"epxk0i8VxsZNereS": {}, "vf9699mCEHThUJkE": {}, "TAsSp7gh4TeUTkOk": {}}, "id": "AYfJB8AT9t4Tv207", "tags": ["Y2QD3oD5fLCr3OOl", "XVv8ZGF7uYnGzpip", "NDigNJma1MbqqZtf"]}, {"customAttributes": {"NWql4nmwAft4gqkN": {}, "NlWkD9eOziYRFOn0": {}, "jJLHC9LxhvNXTwGB": {}}, "id": "CtohLtl9Zuhytm5U", "tags": ["DrT6QXCs5SPBbRPZ", "TF6oQAXVG7tnsZg5", "QgXjvyGJPN4eXbJE"]}]' '5Vs2GcyomQoIXimB' --login_with_auth "Bearer foo"
inventory-public-bulk-remove-my-items '{"ids": ["JehyxlNsjUgxBkF6", "wFPoJeQediogEhhM", "2rIizGdKvOPdq5xr"]}' 'gxSmy1DN9LFkYW5D' --login_with_auth "Bearer foo"
inventory-public-move-my-items '{"items": [{"id": "Qyj4bj5Ro2ogaKt2", "qty": 42}, {"id": "EDSJsEK5QpNhlI2i", "qty": 91}, {"id": "p6iIaTIKUkmkk9QM", "qty": 95}], "srcInventoryId": "NBMA9ORxpzwLR2AK"}' '6eXUGPJsw1fiP80G' --login_with_auth "Bearer foo"
inventory-public-get-item '9Pclxcft2ulIJzPy' 'rVEiOG4UcqsuGKHh' --login_with_auth "Bearer foo"
inventory-public-consume-my-item '{"qty": 78}' 'HK8CCmE2lPnsbD3S' 'GEdlwuUccE536ugB' --login_with_auth "Bearer foo"
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
    '{"inventoryConfigurationCode": "p3HBvepnDCjgyJlX", "userId": "e36mgWjLfFmteue9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateInventory' test.out

#- 4 AdminGetInventory
$PYTHON -m $MODULE 'inventory-admin-get-inventory' \
    'nzJ6fH24T805tVg8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetInventory' test.out

#- 5 AdminUpdateInventory
$PYTHON -m $MODULE 'inventory-admin-update-inventory' \
    '{"incMaxSlots": 73}' \
    '9TVqJdvzcWbfUpaX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateInventory' test.out

#- 6 DeleteInventory
$PYTHON -m $MODULE 'inventory-delete-inventory' \
    '{"message": "p5JMl5LL4bTxBmZj"}' \
    'drrIxsB0NRsB1fPq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteInventory' test.out

#- 7 AdminListItems
$PYTHON -m $MODULE 'inventory-admin-list-items' \
    'qRRulpqpymDkQhtr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminListItems' test.out

#- 8 AdminGetInventoryItem
$PYTHON -m $MODULE 'inventory-admin-get-inventory-item' \
    'HWwRVnwVBOqOHi8p' \
    'WGd1juYhiqjRJOqB' \
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
    '{"code": "5F93zFQbJndUDpdO", "description": "NneAczbBdHb2slt7", "initialMaxSlots": 30, "maxInstancesPerUser": 56, "maxUpgradeSlots": 92, "name": "GjlIIk0iKoTTS1j0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateInventoryConfiguration' test.out

#- 11 AdminGetInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-get-inventory-configuration' \
    '2o7JjTXAQN0qdskd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetInventoryConfiguration' test.out

#- 12 AdminUpdateInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-inventory-configuration' \
    '{"code": "QV0TqI8EFnmDbxIx", "description": "i4YKlONk2Q5Y4Jva", "initialMaxSlots": 18, "maxInstancesPerUser": 59, "maxUpgradeSlots": 53, "name": "NYIWekp18lOC3mNq"}' \
    'F7Bl0LcghVHfPEsp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateInventoryConfiguration' test.out

#- 13 AdminDeleteInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-delete-inventory-configuration' \
    'xwhRON0bc1eMbEIj' \
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
    '{"name": "owLqc3ecjXJbZDKK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateItemType' test.out

#- 16 AdminDeleteItemType
$PYTHON -m $MODULE 'inventory-admin-delete-item-type' \
    'oxLE1Y3Dymtj3giP' \
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
    '{"name": "g4x4yiPX6ues1Hhh", "owner": "CLIENT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminCreateTag' test.out

#- 19 AdminDeleteTag
$PYTHON -m $MODULE 'inventory-admin-delete-tag' \
    'hU0VUfcYHJbBfAKS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteTag' test.out

#- 20 AdminBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-admin-bulk-update-my-items' \
    '[{"customAttributes": {"iPW3VgsZXiR1DJ7H": {}, "VWqMkNSawQUWDFJv": {}, "JBWic7UkBeIXuqDu": {}}, "id": "AXI66bQ71w0deoV9", "serverCustomAttributes": {"Lx5RDA1l2XcrciYN": {}, "EzvSZIPkhSgORcz5": {}, "S5BvmgBLxh4ijFnE": {}}, "tags": ["3Tam69qSZ7PC6f6Q", "kmZXElW9YfRSse6A", "Az3S4czz0QKFlAVm"], "type": "VLu4AOec0z8eBeeo"}, {"customAttributes": {"ip68J1nsv4W2OJht": {}, "afxMSJlHeb34sZKH": {}, "cl5LLLOexL4fZvWt": {}}, "id": "ND2tcBFpX8lNtFEJ", "serverCustomAttributes": {"7tnkY6Mca5afj12K": {}, "2IzrBvvWm4udE0OX": {}, "udXgNne8kJATwlc6": {}}, "tags": ["esUp6Sw1I98jeZQ7", "hfxnhLd3Knaknoed", "9DHhLOqQGhCUr6iT"], "type": "rjyEgarAdNJOIG36"}, {"customAttributes": {"I6tRbRcrEveMdAdi": {}, "PKDUVSC00PYeDcag": {}, "ginxnFIna3yddcbs": {}}, "id": "PheTH26IUJNvYuGR", "serverCustomAttributes": {"UvpZaHCuESOiIZsM": {}, "fB4ZH3mtgWgU4pCA": {}, "KxeE70CaunQNxot3": {}}, "tags": ["71W9G4AvQkqsGnmy", "o5JJTUVmb8GEXFTl", "EMEsFzYqwgK1Np5n"], "type": "odqpLm7FhJBNXzAF"}]' \
    'dO0Khqf6kiTdSGv2' \
    'LFjAKY7CbgsWqFWZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminBulkUpdateMyItems' test.out

#- 21 AdminSaveItemToInventory
$PYTHON -m $MODULE 'inventory-admin-save-item-to-inventory' \
    '{"customAttributes": {"X7kPBom8F9GLLTG8": {}, "phc3n4iLoIllKlpO": {}, "2pqiXJF3WGRaoQom": {}}, "qty": 92, "serverCustomAttributes": {"IzqYkEpstyVTBcrM": {}, "8rG0rH0zcswwVeMK": {}, "6MbGIVIu8vvwLc7K": {}}, "sourceItemId": "Y3uVoJXTIMtpgkie", "tags": ["DyF97lGdMiHKxbWC", "Yzo8yO2KTK9tmmOn", "YnOpas6ghP1y4Zi7"], "type": "s7QBlk44Z44B1GZg"}' \
    'Kg4uKxaCgcGLuC3b' \
    'rWdTYCfHkIySok5D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminSaveItemToInventory' test.out

#- 22 AdminBulkRemoveItems
$PYTHON -m $MODULE 'inventory-admin-bulk-remove-items' \
    '{"ids": ["iXZtLW87rGysryod", "3dNQrmsApRA6HX3R", "wrKt2ecozL0TOg54"]}' \
    'vCE48L5oLF6M4lNa' \
    '4JUMSHNgqRqCV7us' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkRemoveItems' test.out

#- 23 AdminConsumeUserItem
$PYTHON -m $MODULE 'inventory-admin-consume-user-item' \
    '{"qty": 1}' \
    '0NqoTow0qiOiC4j0' \
    'iktm0ZPLkLOsp0LZ' \
    '5njN86Hl8kUXzt6b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminConsumeUserItem' test.out

#- 24 AdminSaveItem
$PYTHON -m $MODULE 'inventory-admin-save-item' \
    '{"customAttributes": {"Sc6bWvgpVyW9dD1k": {}, "OmvrAejcq2LgkQua": {}, "S7RBx3vim02jBOxr": {}}, "inventoryConfigurationCode": "ZDyvpcLYOWA8NjxO", "qty": 28, "serverCustomAttributes": {"XUr9Sk4lq2faBcAX": {}, "XKlhvyH8paOJtxqM": {}, "PpcVfRwNj547fH0X": {}}, "sourceItemId": "rKEDpEY8VnocGAjc", "tags": ["i0V3tBf2jnHGKXph", "n50c9tNLDljhZ2jx", "LRX3z46OCaGBeMfP"], "type": "lNos4yBRjrERHEon"}' \
    'AZR8GmEu0q1p6QCy' \
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

#- 29 PublicListItems
$PYTHON -m $MODULE 'inventory-public-list-items' \
    'Y6vSkVFWdsbYuVEG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicListItems' test.out

#- 30 PublicBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-update-my-items' \
    '[{"customAttributes": {"VxYheR3j5mNZ6vwv": {}, "7K8Asvt1j1Rx59he": {}, "sNWy2NvZ85DDKDAF": {}}, "id": "8KDsBZOuYQJ03BAH", "tags": ["Z7c53q7akMpcmnnx", "6RVBrop9v7aZK3h6", "5hbN15zfQSfQrtfF"]}, {"customAttributes": {"3TQN0OcNDLr36vzo": {}, "hZyjMQAg5mPYhrLT": {}, "yU8OhgfY9JQYGF4b": {}}, "id": "YXEcENx9xZlAchob", "tags": ["44lONDDwMvgI0Hly", "PR7wZNiVsF6xG2mX", "EQdbzIVy8alncV7v"]}, {"customAttributes": {"WgSHdfo07UctPErq": {}, "xyMyOK06MqQBErxg": {}, "jVBycvU4PbmRDcrg": {}}, "id": "0DjQjBECXvea7H1m", "tags": ["2lJFRZ3ZprZ60zMj", "hTHeh94TSenE5hCF", "kIf5weqZ18MH57l2"]}]' \
    'Zsrh90ETtYmGukz3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicBulkUpdateMyItems' test.out

#- 31 PublicBulkRemoveMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-remove-my-items' \
    '{"ids": ["MnlrjcHp6B8Vj7rX", "FgDnDkdZ9bpjb1td", "A3QhjCMW64f4XhIj"]}' \
    'SoTB2NMKtezapPr2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicBulkRemoveMyItems' test.out

#- 32 PublicMoveMyItems
$PYTHON -m $MODULE 'inventory-public-move-my-items' \
    '{"items": [{"id": "QEPx3zTxBGtEJIYp", "qty": 31}, {"id": "ecWw7Rry0KK5rgAG", "qty": 83}, {"id": "E7BEv3aevq6iohU1", "qty": 4}], "srcInventoryId": "cLkt4pK32sJxlZcC"}' \
    'TpTdRtCHvuk6B6XT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicMoveMyItems' test.out

#- 33 PublicGetItem
$PYTHON -m $MODULE 'inventory-public-get-item' \
    'mSLyn50sigBVZxiK' \
    'dV57GvRyd9UuL02L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicGetItem' test.out

#- 34 PublicConsumeMyItem
$PYTHON -m $MODULE 'inventory-public-consume-my-item' \
    '{"qty": 8}' \
    'sf5y1JsxJNGmyt0S' \
    'QDUDoWBZVGLlkUet' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicConsumeMyItem' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
