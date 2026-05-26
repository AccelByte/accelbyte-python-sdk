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
inventory-admin-list-integration-configurations --login_with_auth "Bearer foo"
inventory-admin-create-integration-configuration '{"mapItemType": ["EAxcVpFrttufHIRd", "H9UzVRiXbqlAw7r6", "W2ktQG0h5JAav5kR"], "serviceName": "a62WopBJHPtcDs8b", "targetInventoryCode": "BZLCXLx8bbgorQeF"}' --login_with_auth "Bearer foo"
inventory-admin-update-integration-configuration '{"mapItemType": ["bQ1g7qbPngUNB1vR", "odwpzS6DaDpv8N7Z", "QVqGj6oDLjWjkY1a"], "serviceName": "XlFcDtgOjchIua5t", "targetInventoryCode": "WEIC32ogW7olvbTg"}' 'rhRTcPiSuL0Sly6X' --login_with_auth "Bearer foo"
inventory-admin-update-status-integration-configuration '{"status": "TIED"}' '4OI18mAQLnzjMf8G' --login_with_auth "Bearer foo"
inventory-admin-list-inventories --login_with_auth "Bearer foo"
inventory-admin-create-inventory '{"inventoryConfigurationCode": "Z2WBZqxYG3aREAu2", "userId": "D6QVKNCWP75TB0i7"}' --login_with_auth "Bearer foo"
inventory-admin-get-inventory 'pKxR8dl0zRVW4EZG' --login_with_auth "Bearer foo"
inventory-admin-update-inventory '{"incMaxSlots": 25}' 'Z4U68su8XfqlqNiT' --login_with_auth "Bearer foo"
inventory-delete-inventory '{"message": "vB6SdAdIhUDrwoZ5"}' 'MecdKi5r6QEa1ysL' --login_with_auth "Bearer foo"
inventory-admin-list-items 'Ezth6mXhzkzWkFeZ' --login_with_auth "Bearer foo"
inventory-admin-get-inventory-item 'SoEAcBdW19m4eu6d' '5tA5jUmiTqpyhPFd' 'xLzFQN05MYzYiKWe' --login_with_auth "Bearer foo"
inventory-admin-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-admin-create-inventory-configuration '{"code": "5dNRljv7IPrDQQRg", "description": "at0SevkLGMS0lyuI", "initialMaxSlots": 84, "maxInstancesPerUser": 0, "maxUpgradeSlots": 71, "name": "llzQRaT5kPxUfofv"}' --login_with_auth "Bearer foo"
inventory-admin-get-inventory-configuration 'nnSuB0y5WUlrMdI4' --login_with_auth "Bearer foo"
inventory-admin-update-inventory-configuration '{"code": "sNveabntBSxTeIv5", "description": "3HGCiljvjKoyD6SC", "initialMaxSlots": 46, "maxInstancesPerUser": 22, "maxUpgradeSlots": 67, "name": "ahFjkQsfCaTmt1d6"}' '7FXGk2s9Q0mPVo3t' --login_with_auth "Bearer foo"
inventory-admin-delete-inventory-configuration 'wu0MesTCf9x4rt69' --login_with_auth "Bearer foo"
inventory-admin-list-item-types --login_with_auth "Bearer foo"
inventory-admin-create-item-type '{"name": "lna7qxNeIxPz6Mbw"}' --login_with_auth "Bearer foo"
inventory-admin-delete-item-type 'L6IY69z1UaLqYSYW' --login_with_auth "Bearer foo"
inventory-admin-list-tags --login_with_auth "Bearer foo"
inventory-admin-create-tag '{"name": "ytLPziZMdjxcBZuf", "owner": "SERVER"}' --login_with_auth "Bearer foo"
inventory-admin-delete-tag 'AQ6iiPlSC2uE4o5V' --login_with_auth "Bearer foo"
inventory-admin-consume-user-item '{"options": ["wdo3fePqIJA8IHtr", "kmu0hpDDWVAla2l5", "BYNtIuS5S5XUdjso"], "qty": 34, "slotId": "UOcEdscKHPEqgA8y", "sourceItemId": "u7Vk6Jt4Ymos9Jcd"}' 'os4fYcTVU6RBt0zY' 'oMcHyCUEXlAvxJMd' --login_with_auth "Bearer foo"
inventory-admin-bulk-update-my-items '[{"customAttributes": {"alwSyliWMNW5NyLu": {}, "0M3VHh2EI8JlDbPW": {}, "bQ6Q9lNmqRBaAkLn": {}}, "serverCustomAttributes": {"vxkT1X68cmDc3fxU": {}, "8MyKrQpM4hkkK6KK": {}, "XNB3Gv0IqmF51Tkh": {}}, "slotId": "jYnaq6foWvXa3bMr", "sourceItemId": "XsDr6kILsSSyDdmy", "tags": ["kmoPYgc2L4jk4Lo0", "LSP0pf4IxjUkl535", "X3ateEKDpADz1x3p"], "type": "oD3Qgb3boLQQ1MzH"}, {"customAttributes": {"7Qm8bwbmXgdAPh1E": {}, "ThG96gAFKK2WDgCc": {}, "xvONZm3EeERmDnye": {}}, "serverCustomAttributes": {"FoF7VSZ6pf3vneSD": {}, "2Tb3g7mSQUhAEtrm": {}, "jqU6YE3p4lSck0ZH": {}}, "slotId": "n5GI39YBHqaTHeKt", "sourceItemId": "W18iGeUlc9d9sogW", "tags": ["a24CKNS0GqVvUfHQ", "vsHXNUNe4mhgo5QB", "65lSAiYnNjkfZrQv"], "type": "GgbLdLsFzHkBMr1y"}, {"customAttributes": {"rOMlNFSrUEirnjX9": {}, "fDmIbeZxzfTcyiuA": {}, "Tus9hsfpFDcSDG8a": {}}, "serverCustomAttributes": {"MVGLiBNrDjqoxcwg": {}, "GLXpUL4pp2ncYAHd": {}, "NzDmeIP6rOvDz9KO": {}}, "slotId": "sb392k6YmJFfRByj", "sourceItemId": "lBiuFM3FIoVk8T3G", "tags": ["pAnkCmBUqg2SCnqn", "tX9y1aZSWMiVi10s", "G6vxkfUcmqRRbceJ"], "type": "5i0EeDxOgBnhhqEl"}]' 'IaDml48wdNFLTm5T' '50x9WT0GfH2rtOa4' --login_with_auth "Bearer foo"
inventory-admin-save-item-to-inventory '{"customAttributes": {"EXsXzOXQAk4mqrxz": {}, "TtuLl4XlbGL8QOxt": {}, "jzm8y2wNhmwoYZyI": {}}, "qty": 71, "serverCustomAttributes": {"EFZKBcYrCEAE7WIs": {}, "fmx40NLRc6m8heKn": {}, "Whzfe2NubeoKFeIa": {}}, "slotId": "FQCYoDPICpnduEEQ", "slotUsed": 22, "source": "OTHER", "sourceItemId": "ULdJz4mnRBkMNxvv", "tags": ["KgAT8mJrYq6hRklo", "qxM3gpwxcfMy9Xzj", "jI5YbsKoADkzJEN2"], "type": "VHzih3bit0VWn3CO"}' '39PXDNxtXgeO3Fgk' 'XhjDzaQY3snn2ZkP' --login_with_auth "Bearer foo"
inventory-admin-bulk-remove-items '[{"slotId": "7cFdP43e5dC9XIBu", "sourceItemId": "dfZgrbHDIDm4hMzF"}, {"slotId": "4TxodenSrUTvfqU0", "sourceItemId": "bfoMm5cTtFWbotQy"}, {"slotId": "XJRcQWsmqPNs92ep", "sourceItemId": "xk0i8VxsZNereSvf"}]' '9699mCEHThUJkETA' 'sSp7gh4TeUTkOkAY' --login_with_auth "Bearer foo"
inventory-admin-bulk-save-item-to-inventory '[{"customAttributes": {"fJB8AT9t4Tv207Y2": {}, "QD3oD5fLCr3OOlXV": {}, "v8ZGF7uYnGzpipND": {}}, "qty": 17, "serverCustomAttributes": {"KQI1AeFgPqaOkvo1": {}, "aolB4lkKB4EYOkQ1": {}, "jMD3cym8xIfkOVW2": {}}, "slotId": "grREOLx0KOww3HIC", "slotUsed": 88, "source": "ECOMMERCE", "sourceItemId": "Lfl7MUBG7qtPu64y", "tags": ["AtURKLRkb738HGS6", "rDgMdIIlhS1fSiM9", "331m7Ta1PsKc50Kv"], "type": "6ecnEevcAx2K2zkR"}, {"customAttributes": {"enmPZnGBt4P7Wnbd": {}, "SJtjX7ZshZyZl5x4": {}, "bRXBHUTrDzZSKscf": {}}, "qty": 82, "serverCustomAttributes": {"y1DN9LFkYW5DQyj4": {}, "bj5Ro2ogaKt2ujQS": {}, "a3Zdb65UXmy0Zp6i": {}}, "slotId": "IaTIKUkmkk9QM0NB", "slotUsed": 79, "source": "ECOMMERCE", "sourceItemId": "A9ORxpzwLR2AK6eX", "tags": ["UGPJsw1fiP80G9Pc", "lxcft2ulIJzPyrVE", "iOG4UcqsuGKHhMRW"], "type": "LVd3DlhLuIpomM8s"}, {"customAttributes": {"m1MiaI1mX2tJoARt": {}, "dbBe7udsMrok0WvG": {}, "YYnx4V709xbnGezK": {}}, "qty": 38, "serverCustomAttributes": {"6fH24T805tVg8JqU": {}, "0jZpjvsugAOS7u8R": {}, "iWyerCSa8SRgwsAj": {}}, "slotId": "1ik1jglaDXTvKCWw", "slotUsed": 82, "source": "OTHER", "sourceItemId": "TAhd2wrS0uPdjhdi", "tags": ["npng5BLy8wbhMssA", "HjapIkY9Rf4wP57d", "BZNR88YbCtmKy8M9"], "type": "zVrjfGXZnqAQUoY1"}]' 'GjlIIk0iKoTTS1j0' '2o7JjTXAQN0qdskd' --login_with_auth "Bearer foo"
inventory-admin-update-user-inventories-by-inventory-code '{"incMaxSlots": 87}' 'MXJRk0eaKQDOJvrT' 'efglSs6g4iY9u02a' --login_with_auth "Bearer foo"
inventory-admin-save-item '{"customAttributes": {"CNYIWekp18lOC3mN": {}, "qF7Bl0LcghVHfPEs": {}, "pxwhRON0bc1eMbEI": {}}, "inventoryConfigurationCode": "jowLqc3ecjXJbZDK", "qty": 75, "serverCustomAttributes": {"EG8X645xpdXpai0r": {}, "YaT5hOPjaf3H0tYi": {}, "ghU0VUfcYHJbBfAK": {}}, "slotId": "SiPW3VgsZXiR1DJ7", "slotUsed": 69, "source": "OTHER", "sourceItemId": "i6tArAURt9plCSVq", "tags": ["8PdH6hJPUAc0RVwX", "gAgntLMCuaXBWQi6", "BqPg4xr0lCancUZG"], "type": "CHsZYoLfR1KtOv7Z"}' 'y0b65uvuKNuy0ytZ' --login_with_auth "Bearer foo"
inventory-admin-bulk-save-item '[{"customAttributes": {"Q7M6Nzy1adnSKOLF": {}, "Kx1dX4LuWJu3pDMU": {}, "AeeZ97SBROPYuG6X": {}}, "inventoryConfigurationCode": "qP6oo7G73zdxTgOf", "qty": 27, "serverCustomAttributes": {"8J1nsv4W2OJhtafx": {}, "MSJlHeb34sZKHcl5": {}, "LLLOexL4fZvWtND2": {}}, "slotId": "tcBFpX8lNtFEJ7tn", "slotUsed": 20, "source": "OTHER", "sourceItemId": "Y6Mca5afj12K2Izr", "tags": ["BvvWm4udE0OXudXg", "Nne8kJATwlc6esUp", "6Sw1I98jeZQ7hfxn"], "type": "hLd3Knaknoed9DHh"}, {"customAttributes": {"LOqQGhCUr6iTrjyE": {}, "garAdNJOIG36I6tR": {}, "bRcrEveMdAdiPKDU": {}}, "inventoryConfigurationCode": "VSC00PYeDcagginx", "qty": 27, "serverCustomAttributes": {"H9Z5qXn3aoRtlqOE": {}, "CohViHA5CzgFSy8X": {}, "1A3PrIfapq5AAeMe": {}}, "slotId": "4L3mDWORBVXTIIJM", "slotUsed": 58, "source": "OTHER", "sourceItemId": "aunQNxot371W9G4A", "tags": ["vQkqsGnmyo5JJTUV", "mb8GEXFTlEMEsFzY", "qwgK1Np5nodqpLm7"], "type": "FhJBNXzAFdO0Khqf"}, {"customAttributes": {"6kiTdSGv2LFjAKY7": {}, "CbgsWqFWZX7kPBom": {}, "8F9GLLTG8phc3n4i": {}}, "inventoryConfigurationCode": "LoIllKlpO2pqiXJF", "qty": 93, "serverCustomAttributes": {"WGRaoQomSJC4DdrK": {}, "F7SUQPLG59e0k5Zt": {}, "X6wK7PpUlcIW32iK": {}}, "slotId": "7MGt1ixY5rA1WoVe", "slotUsed": 73, "source": "ECOMMERCE", "sourceItemId": "tpgkieDyF97lGdMi", "tags": ["HKxbWCYzo8yO2KTK", "9tmmOnYnOpas6ghP", "1y4Zi7s7QBlk44Z4"], "type": "4B1GZgKg4uKxaCgc"}]' 'GLuC3brWdTYCfHkI' --login_with_auth "Bearer foo"
inventory-admin-sync-user-entitlements 'ySok5DiXZtLW87rG' --login_with_auth "Bearer foo"
inventory-admin-purchasable '{"entitlementType": "ysryod3dNQrmsApR", "inventoryConfig": {"slotUsed": 53}, "itemId": "4mTIpUA9gxo8SV38", "itemType": "nEhoXmM2W7l6jHMA", "items": [{"bundledQty": 79, "entitlementType": "rG3nakopAywelu01", "inventoryConfig": {"slotUsed": 28}, "itemId": "V7usamANkZlOX9Sf", "itemType": "o95HgXqKhTPkwfLM", "sku": "9uSybRzWek2gZvRr", "stackable": true, "useCount": 53}, {"bundledQty": 36, "entitlementType": "t6bSc6bWvgpVyW9d", "inventoryConfig": {"slotUsed": 61}, "itemId": "cBE2ItBS3KtKZWe8", "itemType": "aoFzAyBME74HUtip", "sku": "UWYhWV1qx8CzPML5", "stackable": true, "useCount": 11}, {"bundledQty": 83, "entitlementType": "aXUr9Sk4lq2faBcA", "inventoryConfig": {"slotUsed": 18}, "itemId": "XKlhvyH8paOJtxqM", "itemType": "PpcVfRwNj547fH0X", "sku": "rKEDpEY8VnocGAjc", "stackable": false, "useCount": 14}], "quantity": 98, "sku": "l0bQxFJ3sWCqQpQ2", "stackable": false, "useCount": 2}' '9tNLDljhZ2jxLRX3' --login_with_auth "Bearer foo"
inventory-public-list-inventory-configurations --login_with_auth "Bearer foo"
inventory-public-list-item-types --login_with_auth "Bearer foo"
inventory-public-list-tags --login_with_auth "Bearer foo"
inventory-public-list-inventories --login_with_auth "Bearer foo"
inventory-public-consume-my-item '{"options": ["z46OCaGBeMfPlNos", "4yBRjrERHEonAZR8", "GmEu0q1p6QCyY6vS"], "qty": 21, "slotId": "QAOHfZiGhxOdcuDX", "sourceItemId": "SxSc3aZPV87pna08"}' 'gxefTYKhuxaEc7M4' --login_with_auth "Bearer foo"
inventory-public-list-items 'P7UckSC6ePeN8i4G' --login_with_auth "Bearer foo"
inventory-public-bulk-update-my-items '[{"customAttributes": {"rFES9z7xueHpATHc": {}, "cee9GXhKcjmSEwdr": {}, "kEnnqKzFsLfYalUl": {}}, "slotId": "fwEQKjU7eHGebSVu", "sourceItemId": "0LQ40kepEaC4dfiO", "tags": ["MZfEhHr39pysFO3Z", "vc1BZG99LyvfvHEs", "JKQQewVLMUoAnaRc"]}, {"customAttributes": {"Yp7FUjfIGaffoflE": {}, "IByYqeKN0meGelYF": {}, "5wWaDhukU4khGG4v": {}}, "slotId": "ZFTYnPkmSu4PWam1", "sourceItemId": "jxR7SETWjteoc8fg", "tags": ["vZDDhoO05oKqymxL", "D1Lcvw6T6mZEiwxx", "ElpMYSWIeVzm7z9n"]}, {"customAttributes": {"oowmlTIKVowi0RY2": {}, "VN4ZONJREdUQ3z9F": {}, "1BxNNgnke4akncw7": {}}, "slotId": "wu9TmXfJWBPrx9Ns", "sourceItemId": "8eLzYEvwSWTaLQjc", "tags": ["tvrK2jhsYpKPlXn7", "7AtYoFzLAATPY8P8", "P3cfoivvQxevecWw"]}]' '7Rry0KK5rgAGO0dW' --login_with_auth "Bearer foo"
inventory-public-bulk-remove-my-items '[{"slotId": "8rX2MVUGKSZ4GcLk", "sourceItemId": "t4pK32sJxlZcCTpT"}, {"slotId": "dRtCHvuk6B6XTmSL", "sourceItemId": "yn50sigBVZxiKdV5"}, {"slotId": "7GvRyd9UuL02Le8H", "sourceItemId": "SCslsDd4M1F5qRIb"}]' 'lS7Nz81GRazPAANj' --login_with_auth "Bearer foo"
inventory-public-move-my-items '{"items": [{"qty": 11, "slotId": "Wc9x1aMjgGim51T1", "sourceItemId": "07XIZRZ7tZdIs0xf"}, {"qty": 32, "slotId": "czdt7zqmSKxOEQlV", "sourceItemId": "cx6GqsBq8vdhWVnu"}, {"qty": 54, "slotId": "LgpZehK0G2nmyuVi", "sourceItemId": "B9kRTcSQdTnNYGeA"}], "srcInventoryId": "fYFG3wSkHKufBdS3"}' 'ZOokZB4cXnAXyuGz' --login_with_auth "Bearer foo"
inventory-public-get-item '6LlxHv8SwyagYvDJ' '3w3UNgIGj2jZtEYT' '8sIPSE1XXPzySa0s' --login_with_auth "Bearer foo"
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
eval_tap 0 2 'AdminCreateChainingOperations # SKIP deprecated' test.out

#- 3 AdminListIntegrationConfigurations
$PYTHON -m $MODULE 'inventory-admin-list-integration-configurations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
$PYTHON -m $MODULE 'inventory-admin-create-integration-configuration' \
    '{"mapItemType": ["ZoFS6xCOWMpyh9pM", "sQgb64ELbzDMwyo4", "nIRysQdbufXjYnSo"], "serviceName": "IFeouC2m38kXrDZW", "targetInventoryCode": "lGVE9sJ4NpUtKp6M"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-integration-configuration' \
    '{"mapItemType": ["9I6nEwnZhsjwJeGw", "aPSDMZz95OYKiqaZ", "D63xe5rruJVfLGea"], "serviceName": "0ZtlzUcuHAXz0UV3", "targetInventoryCode": "1MfuGaXsAuGsZaSH"}' \
    'evO0TQNEI3kfabxJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-status-integration-configuration' \
    '{"status": "TIED"}' \
    'WSI1ECUo1NPpeFhU' \
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
    '{"inventoryConfigurationCode": "ztXDgB7n4C97uAPP", "userId": "8PATLpUpxeJlsBJT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
$PYTHON -m $MODULE 'inventory-admin-get-inventory' \
    '6Hh3OMjAjq2mK8lb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
$PYTHON -m $MODULE 'inventory-admin-update-inventory' \
    '{"incMaxSlots": 91}' \
    'tJMcYQdN66bswAgt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
$PYTHON -m $MODULE 'inventory-delete-inventory' \
    '{"message": "65X4N1LQZmB61JMd"}' \
    'twCVUrYQue84dwmb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
$PYTHON -m $MODULE 'inventory-admin-list-items' \
    'wFEnAZaWsQJtRYoa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
$PYTHON -m $MODULE 'inventory-admin-get-inventory-item' \
    'gRJK5PX9UcOvhPyE' \
    '11TRT2SKseoe8VLi' \
    'e0LBa36KNzjf005C' \
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
    '{"code": "XNGehQ2aTjTDfKFD", "description": "XC7eGL5YhJDWh9YW", "initialMaxSlots": 33, "maxInstancesPerUser": 42, "maxUpgradeSlots": 5, "name": "TKfC0I2kNjCMDtDM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-get-inventory-configuration' \
    'rentgn3DhqciwIeS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-update-inventory-configuration' \
    '{"code": "hF9RKb9vvxuJlhXb", "description": "WhbwPwToC6knjVwV", "initialMaxSlots": 27, "maxInstancesPerUser": 52, "maxUpgradeSlots": 71, "name": "aqSfJiQFC2gXoda0"}' \
    'kg16yUSpSOAjHJWw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
$PYTHON -m $MODULE 'inventory-admin-delete-inventory-configuration' \
    'fCjYwWkLob9gKLqs' \
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
    '{"name": "2nEZhpByfHZinxNf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
$PYTHON -m $MODULE 'inventory-admin-delete-item-type' \
    'gPAwkMBsznlBUqnL' \
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
    '{"name": "T4AbGptKaWNvPbpg", "owner": "CLIENT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
$PYTHON -m $MODULE 'inventory-admin-delete-tag' \
    'yrRvXfZ6rvgvEY3H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
$PYTHON -m $MODULE 'inventory-admin-consume-user-item' \
    '{"options": ["ht1SwqTsKKKo37NH", "DOQe91Ps3ztUIV0d", "S6hIH9c4Vfkyrwpu"], "qty": 79, "slotId": "xbaERbfgPmi0eHkt", "sourceItemId": "1mr9EOIFg0dnWIYN"}' \
    '2NVL70Iw157g00jr' \
    '9b8MuYmmeKTmBNvG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-admin-bulk-update-my-items' \
    '[{"customAttributes": {"YxEQdf3ewoGGoY7x": {}, "mFNAmjDDCvs78mcM": {}, "diS76YApGJ9ufwLY": {}}, "serverCustomAttributes": {"kqIgLuZS6hsQryiE": {}, "tOAbpeUNf26UqkCf": {}, "gCUYBn2xaOBdPF0J": {}}, "slotId": "mX8qwU1cTuHHPB5S", "sourceItemId": "3DvPRCzBrVUxmDOj", "tags": ["3cvRFaTC11W0TGTC", "m4fZWuk6pQxDQpKq", "xLGeMvr9TsvcMQ7d"], "type": "BsaIecRxIsZvD6rm"}, {"customAttributes": {"zVr5XT1Nxw0v1dMQ": {}, "9Rrbk6C2cVWf6ttv": {}, "bU1PO6ApCD2VXidT": {}}, "serverCustomAttributes": {"7w0Oc15N8WXBPp17": {}, "PAewqSm5x3B4t7WQ": {}, "np8jXZedgt5cyNe2": {}}, "slotId": "7HLtwtVOaxgP6Jbc", "sourceItemId": "t8puMybYGxD9IPmm", "tags": ["sLmu3kaPj0O4zd8T", "b7cUNGPTBxiFFCrn", "7djjs69FTFVGUVhv"], "type": "KhJCmeisql14mUHV"}, {"customAttributes": {"bMPimNhcZsU3VAdM": {}, "Dcb4qlkiFAamqvZI": {}, "2KwjqPBiWXade41s": {}}, "serverCustomAttributes": {"3rH34mB2yPlRpWjm": {}, "HZAAvKTH8MuqIg0C": {}, "zkguwuJCW7EEFB67": {}}, "slotId": "AODbi9BzupBsFpYc", "sourceItemId": "77GtRUcCFeY5g4Xg", "tags": ["BsbfzqxBPNe8ae1I", "l4aAtEbu4IjGdqth", "RxTjQ7gkZEY8rG0q"], "type": "0Q2Qd2JzRbkF2I03"}]' \
    'dIjvBbA6bfbYaJCJ' \
    'jfk2TUvn95FhO7VW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
$PYTHON -m $MODULE 'inventory-admin-save-item-to-inventory' \
    '{"customAttributes": {"3mbDVMDu87t0ldWf": {}, "7iSGIiKFtWtn4Yr2": {}, "svKM6pqLGZ0TBujE": {}}, "qty": 77, "serverCustomAttributes": {"JEECQE1li3Bg7Jxc": {}, "9pUnZmvhidwCkZwq": {}, "jYLfTiCO1NDBvQvR": {}}, "slotId": "PnAz4VzW0CpoBCby", "slotUsed": 72, "source": "OTHER", "sourceItemId": "yWI8bp8fQxRuX91u", "tags": ["YmtrHJbEGTUj7YjE", "RL1rEQG02zccA8wv", "LsWUNd6lPKvqDejv"], "type": "qklTSvDwuOrP9lzp"}' \
    'iX0VuFpZum7izxe7' \
    'NPzjOa8E7wY76PxL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
$PYTHON -m $MODULE 'inventory-admin-bulk-remove-items' \
    '[{"slotId": "v9HBEUe89AwEw1HO", "sourceItemId": "4FnKtx4XLKAmlDr1"}, {"slotId": "9uJ3nq6VerzVCcI8", "sourceItemId": "y3Cz0YqCKUh5RD9v"}, {"slotId": "NAp4jinFpnQ5xF9w", "sourceItemId": "wbvMZyeDeRnVfPUa"}]' \
    '6xVVBcq3wZpFIYeA' \
    'g79HcLJXJ7mpVI6e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
$PYTHON -m $MODULE 'inventory-admin-bulk-save-item-to-inventory' \
    '[{"customAttributes": {"TYAjdPlCiQQC35cj": {}, "4KyOVgvnWbfRJtsB": {}, "7cUQZ2QUAxJrINPX": {}}, "qty": 31, "serverCustomAttributes": {"Avt70ZUT2fSk3LL0": {}, "calqxEewuGS469k2": {}, "hG0WKt4sUmanYxM0": {}}, "slotId": "UHZVNYzGMNIpWoSL", "slotUsed": 22, "source": "ECOMMERCE", "sourceItemId": "Urfuf4U3WeYeA9t2", "tags": ["ENKKWrFtHIi1CMgK", "AOG5iDcCR5PbCvDL", "il8wj9cKM3Ar6MF3"], "type": "5hCER4nGmWGgTJfH"}, {"customAttributes": {"lJl4tHGa4XfZcd9C": {}, "VnGqMX9FieeEssWE": {}, "Ul07bhwntCVqiYOJ": {}}, "qty": 11, "serverCustomAttributes": {"KNchPHNL4X3LLaGP": {}, "GdqLE8SohhhuiTnJ": {}, "arYYkHBDdSzBXdxa": {}}, "slotId": "pwhd5IQYBQuxLvPu", "slotUsed": 99, "source": "OTHER", "sourceItemId": "B4LM6H6QXmpZ9X3f", "tags": ["USR1l9xLPBsmAUrD", "9L1IiD6MlcEPhMDF", "zjHZ3sIhzOx2CXKl"], "type": "vIomU3pIxM9n8D2e"}, {"customAttributes": {"LMe3lt9qfx2UDcgV": {}, "E7L9FK6e0MrPc4vt": {}, "xk9hVKlG56HlzGr7": {}}, "qty": 19, "serverCustomAttributes": {"jdyRJunZPkp6ccIB": {}, "nWyPw8mj7gyQ7XdI": {}, "szGRj46COPipH1MW": {}}, "slotId": "VTHG0qHJCWEfOJpZ", "slotUsed": 24, "source": "OTHER", "sourceItemId": "9yEYWNGMy2pgSGSU", "tags": ["OK68eqGJtWf1Ybgg", "8rdwY9bmrvHmO07K", "NqX9LM2IwEsdOGBX"], "type": "BwnzDX8v3xgC1Ge9"}]' \
    'PdbTTAJ2Gp1r0sVZ' \
    '6LJAOddIL2l3hPjN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
$PYTHON -m $MODULE 'inventory-admin-update-user-inventories-by-inventory-code' \
    '{"incMaxSlots": 60}' \
    'UIoiIJFNxuNOmUSW' \
    'w18T1IxVWCxdvPL9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
$PYTHON -m $MODULE 'inventory-admin-save-item' \
    '{"customAttributes": {"e4P01vxP8xj1LyEi": {}, "rURERnEMzpImW6sj": {}, "AHyCK5tNanGBrkzU": {}}, "inventoryConfigurationCode": "vck3xTtmOFMebS4A", "qty": 7, "serverCustomAttributes": {"lzxl0yF5m77TTh4g": {}, "Uoj8u2WRcLiEtzVl": {}, "nkflfn7pHY48F1dl": {}}, "slotId": "1q92m3iRlfnBAk0C", "slotUsed": 46, "source": "ECOMMERCE", "sourceItemId": "iAsR65yQ9ssuHdGm", "tags": ["xncCEr0KcgeqzGbr", "uNB72HHMkjzyBB4U", "FKiaoV0VOem2yqPs"], "type": "MFxKybPkbuS6x9cL"}' \
    'J1APnNlsa2bRBr27' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
$PYTHON -m $MODULE 'inventory-admin-bulk-save-item' \
    '[{"customAttributes": {"fVMWuAfDqLMR919I": {}, "ZPKOKiAVQXXOmqFH": {}, "LbyXmgCNiXH8uenb": {}}, "inventoryConfigurationCode": "C5CphgMweexsIAP5", "qty": 43, "serverCustomAttributes": {"RpABAmO2EGvJ4UMS": {}, "93yOxNInDByhnolu": {}, "O6ti0QP2ssiJ66Oz": {}}, "slotId": "Oj84O6tgohjtC7bz", "slotUsed": 20, "source": "OTHER", "sourceItemId": "PpucddXJ5zifF8y9", "tags": ["59anrNSleywHbHig", "6IKWVZ77KeRWdECa", "FGzfZ2hxcJ2Fnemn"], "type": "7M23SzUo4hNBDh9Z"}, {"customAttributes": {"FP1OW0nXOErQPS4V": {}, "sRoYIK69yg9ADCGi": {}, "XaLs2xjHkinOD975": {}}, "inventoryConfigurationCode": "nARHCmhNHSXuqIHs", "qty": 48, "serverCustomAttributes": {"ahvxw9gwwhTnjN6w": {}, "KZGW4y3f0R9s2knd": {}, "hhZhwAiLsZs4pmLD": {}}, "slotId": "IQch4IjDq9aT3qZy", "slotUsed": 71, "source": "OTHER", "sourceItemId": "rYsWucAkXsVJbXi7", "tags": ["eRZa7WwIc895ImqK", "6tVsaUq3stUh5J5Z", "9GiBiSAylX5cS0Ie"], "type": "HpWCugmfOL0QQpxs"}, {"customAttributes": {"uD8PGqku59eFJrOX": {}, "yDYz9vMUOPG0iHDT": {}, "8QbF7gHPTPQbvLt2": {}}, "inventoryConfigurationCode": "NRqJGIKzLyH1y72L", "qty": 26, "serverCustomAttributes": {"3Ornyx34luLdvtsT": {}, "KXMjiw6gYPvfn2Qt": {}, "9iyq3Nyk8ncu2Z3e": {}}, "slotId": "DHH9WaVO4iKhDcJ7", "slotUsed": 94, "source": "OTHER", "sourceItemId": "1X9dN1MGRXBJ6mVV", "tags": ["7JS9qjNLwvI8JdiY", "3RRiLilmOGF6dLLI", "eIVIjMcdlbdRXTGI"], "type": "rdNL5gJPqTAjgqaT"}]' \
    'Hf1ANTJ9Yk997XkG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
$PYTHON -m $MODULE 'inventory-admin-sync-user-entitlements' \
    'OdC6ItxDT8p4n4XC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
$PYTHON -m $MODULE 'inventory-admin-purchasable' \
    '{"entitlementType": "FkD1AJLCwszbZxuH", "inventoryConfig": {"slotUsed": 91}, "itemId": "N1MpOs1RVFrcg2CX", "itemType": "xepx78fvsyhE2BKt", "items": [{"bundledQty": 50, "entitlementType": "GTuQPIDpor7t1aJL", "inventoryConfig": {"slotUsed": 82}, "itemId": "4US8o4jfMANPpmZD", "itemType": "dMiCxmuCCVuFjS1G", "sku": "C1d2b92B4vEgj3HO", "stackable": false, "useCount": 71}, {"bundledQty": 16, "entitlementType": "z0jcgDI8Pkz96vd8", "inventoryConfig": {"slotUsed": 26}, "itemId": "nMrBZo0lNUBDShHD", "itemType": "32vvL28FPwTiXfLc", "sku": "xDC9Ynd02mECIQhf", "stackable": false, "useCount": 58}, {"bundledQty": 68, "entitlementType": "qZXHLLa31oQf7BUL", "inventoryConfig": {"slotUsed": 27}, "itemId": "FJUAJsyAfeKOufV4", "itemType": "f15NohXu6opxQGRt", "sku": "6PqlkL0diRhLC10i", "stackable": false, "useCount": 12}], "quantity": 63, "sku": "MLAo3m61P2xaNfmn", "stackable": false, "useCount": 83}' \
    'NMd1onFjGRbxtABP' \
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
    '{"options": ["XDmgNEJBhgGq5GID", "hNC66szbCCf73IFb", "RkPSSITz4TjCrJHX"], "qty": 67, "slotId": "xKNdOTacCcJfIfXs", "sourceItemId": "huLUk5WdpxjZx5no"}' \
    'XPhPUTKbonoucNmz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
$PYTHON -m $MODULE 'inventory-public-list-items' \
    'wOZOK56sDkci5rZ8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-update-my-items' \
    '[{"customAttributes": {"iMlOuksQJCiRFiZW": {}, "wJ7NrTb1XTB9YQzU": {}, "J9XlYJ8BzP6EUmUX": {}}, "slotId": "GM5anIloyj9lhbvu", "sourceItemId": "QdW2jwKUckc794ry", "tags": ["Y91lX8DD4MYXlrJ8", "1lHvv9rqvEoM8YmV", "jAkO3HKsEp6KlqwW"]}, {"customAttributes": {"4djrexcbHdEtoQvp": {}, "V344RctmTozCi8He": {}, "V6jbalHmqBBfi7sS": {}}, "slotId": "F5BoGiTCVsXsygWb", "sourceItemId": "jE2opXtdsJQeJ1to", "tags": ["o0qvxphTLEEBGTtZ", "yTjdKNKgYazujsmS", "mylT1YtxIq73aMb4"]}, {"customAttributes": {"8jISd97KORRhxSWL": {}, "WLNfHRD3V15QaGGL": {}, "46LuxJF3sbeqWBdQ": {}}, "slotId": "uWfgBAKx27MSBqab", "sourceItemId": "UXOGkkoMUZn1YXj5", "tags": ["zFZeOCOR9NvBQZSJ", "POIKrRBrYVzi9ui3", "lvozTt9TsH7A0TuU"]}]' \
    '2aL4bPkk11sys6Gd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
$PYTHON -m $MODULE 'inventory-public-bulk-remove-my-items' \
    '[{"slotId": "kDcos5uVJ0BJfZ0j", "sourceItemId": "vA54CSqZFDsO1skR"}, {"slotId": "jOU1SMfQVQa6blj9", "sourceItemId": "Rdd85bdYUumPKVSZ"}, {"slotId": "Cg3XTc9vQe0dHJfF", "sourceItemId": "6KIuvnRCa9JktyBd"}]' \
    'xkZKrEWFw9GYxjii' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
$PYTHON -m $MODULE 'inventory-public-move-my-items' \
    '{"items": [{"qty": 83, "slotId": "Sd9QWVMYz7TU1Tsx", "sourceItemId": "sChSclSkb5aBi9K9"}, {"qty": 51, "slotId": "lKNKoXa0dgx1JgjC", "sourceItemId": "56pda3YhtQxpCYME"}, {"qty": 87, "slotId": "x21pdX2QSPAd9sxo", "sourceItemId": "LnWGP1PafIjLX8ce"}], "srcInventoryId": "0KbNN7Ycl2JfmQpl"}' \
    'vGjVQ4aebjfgGu47' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
$PYTHON -m $MODULE 'inventory-public-get-item' \
    '2oWJlfglLM4xjfkN' \
    'L4lU6jaGfsD1cfsw' \
    'meFpvtDtetoQVFL8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
