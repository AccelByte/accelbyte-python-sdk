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
platform-list-fulfillment-scripts --login_with_auth "Bearer foo"
platform-get-fulfillment-script 'EAxcVpFrttufHIRd' --login_with_auth "Bearer foo"
platform-create-fulfillment-script 'H9UzVRiXbqlAw7r6' --body '{"grantDays": "W2ktQG0h5JAav5kR"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script 'a62WopBJHPtcDs8b' --login_with_auth "Bearer foo"
platform-update-fulfillment-script 'BZLCXLx8bbgorQeF' --body '{"grantDays": "bQ1g7qbPngUNB1vR"}' --login_with_auth "Bearer foo"
platform-list-item-type-configs --login_with_auth "Bearer foo"
platform-create-item-type-config --body '{"clazz": "odwpzS6DaDpv8N7Z", "dryRun": true, "fulfillmentUrl": "qGj6oDLjWjkY1aXl", "itemType": "OPTIONBOX", "purchaseConditionUrl": "oMF78NY4YkHs1cnz"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'MEDIA' --login_with_auth "Bearer foo"
platform-get-item-type-config 'JSDgY1TXp38zsCTC' --login_with_auth "Bearer foo"
platform-update-item-type-config 'rbCbPOyNQkT7NvyE' --body '{"clazz": "3cwyALczNIicXm7a", "dryRun": false, "fulfillmentUrl": "BZqxYG3aREAu2D6Q", "purchaseConditionUrl": "VKNCWP75TB0i7pKx"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config 'R8dl0zRVW4EZG9m0' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "XcgGVbMqSszE8GHa", "discountConfig": {"categories": [{"categoryPath": "vj7AorKsxwkosAVe", "includeSubCategories": true}, {"categoryPath": "cdKi5r6QEa1ysLEz", "includeSubCategories": true}, {"categoryPath": "3rGN9A3sNm84hddS", "includeSubCategories": false}], "currencyCode": "AcBdW19m4eu6d5tA", "currencyNamespace": "5jUmiTqpyhPFdxLz", "discountAmount": 65, "discountPercentage": 89, "discountType": "AMOUNT", "items": [{"itemId": "N05MYzYiKWe5dNRl", "itemName": "jv7IPrDQQRgat0Se"}, {"itemId": "vkLGMS0lyuI9a2I9", "itemName": "u6Vpbsx5w8hqUI06"}, {"itemId": "UpOXGSLmCVuHOPlL", "itemName": "lkvR8sKgnuRkgghG"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 42, "itemId": "iljvjKoyD6SCwGrn", "itemName": "cqmLtjQHAf8TgoNm", "quantity": 67}, {"extraSubscriptionDays": 20, "itemId": "VLisV6zwPuo3td6T", "itemName": "C6I3lMjGSWN2laRl", "quantity": 48}, {"extraSubscriptionDays": 48, "itemId": "fcjHfYakUCTqGkE7", "itemName": "wcWfDslpJSqGAXQ0", "quantity": 50}], "maxRedeemCountPerCampaignPerUser": 80, "maxRedeemCountPerCode": 30, "maxRedeemCountPerCodePerUser": 7, "maxSaleCount": 81, "name": "jxcBZufQxGiHPllG", "redeemEnd": "1985-01-19T00:00:00Z", "redeemStart": "1999-06-14T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["zfTD1ZBm3MqHcUmL", "ZZbSqb8RwNmn9HrN", "Qy4uZAAiE0mit9RG"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'djsoqwGyzzWi9gwQ' --login_with_auth "Bearer foo"
platform-update-campaign 'Yv7t1o7TTr1DmrhZ' --body '{"description": "v15T7quIOvBMcaYm", "discountConfig": {"categories": [{"categoryPath": "vCkGZ5dAgqxpBFma", "includeSubCategories": true}, {"categoryPath": "oxozr6wfNPX2bOIt", "includeSubCategories": true}, {"categoryPath": "MvqtlB2jJCSQT279", "includeSubCategories": false}], "currencyCode": "YGu0rdlgdWyOtXi3", "currencyNamespace": "choQrpOsDBU5Sepj", "discountAmount": 59, "discountPercentage": 79, "discountType": "AMOUNT", "items": [{"itemId": "yKrQpM4hkkK6KKXN", "itemName": "B3Gv0IqmF51TkhjY"}, {"itemId": "naq6foWvXa3bMrXs", "itemName": "Dr6kILsSSyDdmykm"}, {"itemId": "oPYgc2L4jk4Lo0LS", "itemName": "P0pf4IxjUkl535X3"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 57, "itemId": "eEKDpADz1x3poD3Q", "itemName": "gb3boLQQ1MzH7Qm8", "quantity": 4}, {"extraSubscriptionDays": 56, "itemId": "wbmXgdAPh1EThG96", "itemName": "gAFKK2WDgCcxvONZ", "quantity": 25}, {"extraSubscriptionDays": 94, "itemId": "3EeERmDnyeFoF7VS", "itemName": "Z6pf3vneSD2Tb3g7", "quantity": 26}], "maxRedeemCountPerCampaignPerUser": 48, "maxRedeemCountPerCode": 92, "maxRedeemCountPerCodePerUser": 39, "maxSaleCount": 87, "name": "u7LQRENjEEztx1Ws", "redeemEnd": "1996-03-28T00:00:00Z", "redeemStart": "1993-03-05T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["qan0nSBJroav91GX", "lvPG6bFYReVHQipc", "Cx9Zw5D2L7vIYhGG"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'SyEW4ZJJ42d3PBdd' --login_with_auth "Bearer foo"
platform-get-catalog-config --login_with_auth "Bearer foo"
platform-update-catalog-config --body '{"enableInventoryCheck": true}' --login_with_auth "Bearer foo"
platform-get-loot-box-plugin-config --login_with_auth "Bearer foo"
platform-update-loot-box-plugin-config --body '{"appConfig": {"appName": "48l9lyNApflxqMrj"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "gbLdLsFzHkBMr1yr"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-loot-box-plugin-config --login_with_auth "Bearer foo"
platform-uplod-loot-box-plugin-config-cert --login_with_auth "Bearer foo"
platform-get-loot-box-grpc-info --login_with_auth "Bearer foo"
platform-get-section-plugin-config --login_with_auth "Bearer foo"
platform-update-section-plugin-config --body '{"appConfig": {"appName": "lNFSrUEirnjX9fDm"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "VkydwYWQG26yUZNm"}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
platform-delete-section-plugin-config --login_with_auth "Bearer foo"
platform-upload-section-plugin-config-cert --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category 'BcvrbYCwZtxFHyPL' --body '{"categoryPath": "tI8ilbyDPUIj88ce", "localizationDisplayNames": {"kdqCt81P1ktfIovm": "v9gsR5cJcHm3SZLx", "oRDFuuuySj29a9LJ": "E8HoRS1X2PFAAMwz", "HPxB1UskYs4Yw20D": "OqOBSC2DKHRuPMMW"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'H8Yb33T5UBJCjfcn' --login_with_auth "Bearer foo"
platform-update-category 'LRfxeCSz9WEi8Kll' 'oeH0JT1yduat2vQR' --body '{"localizationDisplayNames": {"3biBfsu4jmsRE2w1": "yEkLgh3tIYt4SqYU", "TLDx9gIiDandpGT2": "t24aOMh5eC3IHeHS", "KLCa3xreNDUWehwH": "3q31A806DJgas4b6"}}' --login_with_auth "Bearer foo"
platform-delete-category 'z3LNUj7fdgLA84Z8' 'YYk6QEgJjBbEDoNf' --login_with_auth "Bearer foo"
platform-get-child-categories '3n0hEoRCAcf80zfF' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'yabWAgIUXiI07A68' --login_with_auth "Bearer foo"
platform-query-codes 'eaqC2J9jyEW6GLbc' --login_with_auth "Bearer foo"
platform-create-codes '0NaKDUL3sa13lk1d' --body '{"codeValue": "QBHO86IlBhnetU4R", "quantity": 46}' --login_with_auth "Bearer foo"
platform-download 'DNxtXgeO3FgkXhjD' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'zaQY3snn2ZkP7cFd' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'P43e5dC9XIBudfZg' --login_with_auth "Bearer foo"
platform-query-redeem-history 'rbHDIDm4hMzF4Txo' --login_with_auth "Bearer foo"
platform-get-code 'denSrUTvfqU0bfoM' --login_with_auth "Bearer foo"
platform-disable-code 'm5cTtFWbotQyXJRc' --login_with_auth "Bearer foo"
platform-enable-code 'QWsmqPNs92epxk0i' --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "8VxsZNereSvf9699", "currencySymbol": "mCEHThUJkETAsSp7", "currencyType": "REAL", "decimals": 15, "localizationDescriptions": {"imdb4rbkXj0ZwsVC": "0gL97ZVJSPqJiwv1", "qlYB1RSKs6gQxC3G": "b7S0o4zGYY7KQI1A", "eFgPqaOkvo1aolB4": "lkKB4EYOkQ1jMD3c"}}' --login_with_auth "Bearer foo"
platform-update-currency 'ym8xIfkOVW2grREO' --body '{"localizationDescriptions": {"Lx0KOww3HICQLfl7": "MUBG7qtPu64yAtUR", "KLRkb738HGS6rDgM": "dIIlhS1fSiM9331m", "7Ta1PsKc50Kv6ecn": "EevcAx2K2zkRenmP"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'ZnGBt4P7WnbdSJtj' --login_with_auth "Bearer foo"
platform-get-currency-config 'X7ZshZyZl5x4bRXB' --login_with_auth "Bearer foo"
platform-get-currency-summary 'HUTrDzZSKscfOcYu' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "3dpCROYqUiGKXVFC", "rewards": [{"currency": {"currencyCode": "mpo6sPwVOEDSJsEK", "namespace": "5QpNhlI2iS5EpGhh"}, "item": {"itemId": "vXYck0upMzUYnb76", "itemSku": "tFkEORV3bu1bNCtX", "itemType": "7W40V6Do5sYadCCF"}, "quantity": 36, "type": "CURRENCY"}, {"currency": {"currencyCode": "HHC3DpZxkrQDXuNF", "namespace": "viMarv8mnfHK8CCm"}, "item": {"itemId": "E2lPnsbD3SGEdlwu", "itemSku": "UccE536ugBp3HBve", "itemType": "pnDCjgyJlXe36mgW"}, "quantity": 19, "type": "CURRENCY"}, {"currency": {"currencyCode": "709xbnGezKsDwG2o", "namespace": "mOR2nvYI9TVqJdvz"}, "item": {"itemId": "cWbfUpaXp5JMl5LL", "itemSku": "4bTxBmZjdrrIxsB0", "itemType": "NRsB1fPqqRRulpqp"}, "quantity": 49, "type": "ITEM"}]}, {"id": "mDkQhtrHWwRVnwVB", "rewards": [{"currency": {"currencyCode": "OqOHi8pWGd1juYhi", "namespace": "qjRJOqB5F93zFQbJ"}, "item": {"itemId": "ndUDpdONneAczbBd", "itemSku": "Hb2slt71B1SmZp2J", "itemType": "Zp50CnPb71ORYcmQ"}, "quantity": 3, "type": "ITEM"}, {"currency": {"currencyCode": "U5JX8ccLjMXJRk0e", "namespace": "aKQDOJvrTefglSs6"}, "item": {"itemId": "g4iY9u02aCNYIWek", "itemSku": "p18lOC3mNqF7Bl0L", "itemType": "cghVHfPEspxwhRON"}, "quantity": 4, "type": "CURRENCY"}, {"currency": {"currencyCode": "Dlwi3v3MFFJ1KesK", "namespace": "oELCpobBEG8X645x"}, "item": {"itemId": "pdXpai0rYaT5hOPj", "itemSku": "af3H0tYighU0VUfc", "itemType": "YHJbBfAKSiPW3Vgs"}, "quantity": 0, "type": "ITEM"}]}, {"id": "iR1DJ7HVWqMkNSaw", "rewards": [{"currency": {"currencyCode": "QUWDFJvJBWic7UkB", "namespace": "eIXuqDuAXI66bQ71"}, "item": {"itemId": "w0deoV9Lx5RDA1l2", "itemSku": "XcrciYNEzvSZIPkh", "itemType": "SgORcz5S5BvmgBLx"}, "quantity": 15, "type": "ITEM"}, {"currency": {"currencyCode": "4ijFnE3Tam69qSZ7", "namespace": "PC6f6QkmZXElW9Yf"}, "item": {"itemId": "RSse6AAz3S4czz0Q", "itemSku": "KFlAVmVLu4AOec0z", "itemType": "8eBeeoip68J1nsv4"}, "quantity": 100, "type": "CURRENCY"}, {"currency": {"currencyCode": "OJhtafxMSJlHeb34", "namespace": "sZKHcl5LLLOexL4f"}, "item": {"itemId": "ZvWtND2tcBFpX8lN", "itemSku": "tFEJ7tnkY6Mca5af", "itemType": "j12K2IzrBvvWm4ud"}, "quantity": 62, "type": "ITEM"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"OXudXgNne8kJATwl": "c6esUp6Sw1I98jeZ", "Q7hfxnhLd3Knakno": "ed9DHhLOqQGhCUr6", "iTrjyEgarAdNJOIG": "36I6tRbRcrEveMdA"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"kETJyTlUrwDTnouj": "QD4IEiH9Z5qXn3ao", "RtlqOECohViHA5Cz": "gFSy8X1A3PrIfapq", "5AAeMe4L3mDWORBV": "XTIIJM9XsYIIZxiX"}}, {"platform": "XBOX", "platformDlcIdMap": {"71W9G4AvQkqsGnmy": "o5JJTUVmb8GEXFTl", "EMEsFzYqwgK1Np5n": "odqpLm7FhJBNXzAF", "dO0Khqf6kiTdSGv2": "LFjAKY7CbgsWqFWZ"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-query-entitlements-1 --login_with_auth "Bearer foo"
platform-enable-entitlement-origin-feature --login_with_auth "Bearer foo"
platform-get-entitlement-config-info --login_with_auth "Bearer foo"
platform-grant-entitlements --body '{"entitlementGrantList": [{"collectionId": "X7kPBom8F9GLLTG8", "endDate": "1979-08-23T00:00:00Z", "grantedCode": "hc3n4iLoIllKlpO2", "itemId": "pqiXJF3WGRaoQomS", "itemNamespace": "JC4DdrKF7SUQPLG5", "language": "EiK-zCSX-nw", "origin": "Twitch", "quantity": 24, "region": "6MbGIVIu8vvwLc7K", "source": "PROMOTION", "startDate": "1999-08-04T00:00:00Z", "storeId": "uVoJXTIMtpgkieDy"}, {"collectionId": "F97lGdMiHKxbWCYz", "endDate": "1978-10-06T00:00:00Z", "grantedCode": "8yO2KTK9tmmOnYnO", "itemId": "pas6ghP1y4Zi7s7Q", "itemNamespace": "Blk44Z44B1GZgKg4", "language": "leX", "origin": "Epic", "quantity": 59, "region": "60ufPpzwj1QGIFml", "source": "IAP", "startDate": "1974-10-09T00:00:00Z", "storeId": "4jvapseE9LN9bvhO"}, {"collectionId": "rHflIOd6X3viLvtE", "endDate": "1976-08-03T00:00:00Z", "grantedCode": "4mTIpUA9gxo8SV38", "itemId": "nEhoXmM2W7l6jHMA", "itemNamespace": "2rG3nakopAywelu0", "language": "OwR-TkAM-vP", "origin": "IOS", "quantity": 46, "region": "OX9Sfo95HgXqKhTP", "source": "IAP", "startDate": "1990-07-02T00:00:00Z", "storeId": "kLOsp0LZ5njN86Hl"}], "userIds": ["8kUXzt6bSc6bWvgp", "q2LgkQuaS7RBx3vi", "VyW9dD1kOmvrAejc"]}' --login_with_auth "Bearer foo"
platform-revoke-entitlements --body '["m02jBOxrZDyvpcLY", "OWA8NjxOnaEok4nO", "OCzfsflhjbngJOUn"]' --login_with_auth "Bearer foo"
platform-get-entitlement '18G5MlfDTk8aG40N' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-query-iap-clawback-history --login_with_auth "Bearer foo"
platform-mock-play-station-stream-event --body '{"body": {"account": "lncceIZSwgAIkgzh", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 97, "clientTransactionId": "pTU0Am4DZhl0bQxF"}, {"amountConsumed": 73, "clientTransactionId": "nHGKXphn50c9tNLD"}, {"amountConsumed": 24, "clientTransactionId": "cMSQ4qfAacR0LgB5"}], "entitlementId": "BUXvjcu2s6w3Vifn", "usageCount": 74}, {"clientTransaction": [{"amountConsumed": 63, "clientTransactionId": "qmTSoGH1XEfY6QAY"}, {"amountConsumed": 27, "clientTransactionId": "p6QCyY6vSkVFWdsb"}, {"amountConsumed": 67, "clientTransactionId": "uVEGVxYheR3j5mNZ"}], "entitlementId": "6vwv7K8Asvt1j1Rx", "usageCount": 41}, {"clientTransaction": [{"amountConsumed": 49, "clientTransactionId": "hesNWy2NvZ85DDKD"}, {"amountConsumed": 54, "clientTransactionId": "eN8i4GrFES9z7xue"}, {"amountConsumed": 68, "clientTransactionId": "HZ7c53q7akMpcmnn"}], "entitlementId": "x6RVBrop9v7aZK3h", "usageCount": 0}], "purpose": "hbN15zfQSfQrtfF3"}, "originalTitleName": "TQN0OcNDLr36vzoh", "paymentProductSKU": "ZyjMQAg5mPYhrLTy", "purchaseDate": "U8OhgfY9JQYGF4bY", "sourceOrderItemId": "XEcENx9xZlAchob4", "titleName": "4lONDDwMvgI0HlyP"}, "eventDomain": "R7wZNiVsF6xG2mXE", "eventSource": "QdbzIVy8alncV7vW", "eventType": "gSHdfo07UctPErqx", "eventVersion": 50, "id": "am1jxR7SETWjteoc", "timestamp": "8fgvZDDhoO05oKqy"}' --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "mxLD1Lcvw6T6mZEi", "password": "wxxElpMYSWIeVzm7"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "z9noowmlTIKVowi0"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "RY2VN4ZONJREdUQ3", "serviceAccountId": "z9F1BxNNgnke4akn"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "cw7wu9TmXfJWBPrx", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"Ns8eLzYEvwSWTaLQ": "jctvrK2jhsYpKPlX", "n77AtYoFzLAATPY8": "P8P3cfoivvQxevec", "Ww7Rry0KK5rgAGO0": "dW8rX2MVUGKSZ4Gc"}}, {"itemIdentity": "Lkt4pK32sJxlZcCT", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"qdg2FHcunsS1lnaO": "2m9vqjhbeK2qN8g6", "x2PyYDo5R3hLiD5s": "f5y1JsxJNGmyt0SQ", "DUDoWBZVGLlkUetz": "CAWc9x1aMjgGim51"}}, {"itemIdentity": "T107XIZRZ7tZdIs0", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"EIpGBFUjOn5mM7k8": "nbLzvtCIW5ynMKqu", "UicAeIVXtoWAXhMl": "W4tLqX7OICf5oD1e", "6oI9FmYel0kOw72o": "8Zkgk0jS6rDWUwfh"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-oculus-iap-config --login_with_auth "Bearer foo"
platform-update-oculus-iap-config --body '{"appId": "Kvrf2AaH4yCWrHSp", "appSecret": "pnIZkNnTn3rzH5Nv"}' --login_with_auth "Bearer foo"
platform-delete-oculus-iap-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"backOfficeServerClientId": "AtcvNedgS1fUfKmi", "backOfficeServerClientSecret": "hDbmu8ePWlQMVDXE", "enableStreamJob": false, "environment": "pMsQgb64ELbzDMwy", "streamName": "o4nIRysQdbufXjYn", "streamPartnerName": "SoIFeouC2m38kXrD"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-existed-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-playstation-iap-config --body '{"backOfficeServerClientId": "ZWlGVE9sJ4NpUtKp", "backOfficeServerClientSecret": "6M9I6nEwnZhsjwJe", "enableStreamJob": true, "environment": "waPSDMZz95OYKiqa", "streamName": "ZD63xe5rruJVfLGe", "streamPartnerName": "a0ZtlzUcuHAXz0UV"}' --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "31MfuGaXsAuGsZaS", "publisherAuthenticationKey": "HevO0TQNEI3kfabx"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "JWWSI1ECUo1NPpeF", "clientSecret": "hUztXDgB7n4C97uA", "organizationId": "PP8PATLpUpxeJlsB"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "JT6Hh3OMjAjq2mK8"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'lbSEEelxnb5QxWG2' 'HFnZlA6HKWW4fI1I' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'QcoBQELcNlZkqTZr' 'KgXNwvm4e5GX6H74' --login_with_auth "Bearer foo"
platform-sync-in-game-item '2OixhtAoKiVm6URT' --body '{"categoryPath": "95XhnUcvWB28Mpus", "targetItemId": "uhhDJ5slzgiWZEty", "targetNamespace": "d56LfxnbY97jjYgX"}' --login_with_auth "Bearer foo"
platform-create-item 'chCbkXX26uEdCfQa' --body '{"appId": "MAQuTKfC0I2kNjCM", "appType": "SOFTWARE", "baseAppId": "Lds2DbPcaoMdtRLT", "boothName": "mSvTkQQgB7exYvmH", "categoryPath": "Mxr5hPCJJztJBg0t", "clazz": "TJg46IewOXE2AkCh", "displayOrder": 87, "entitlementType": "CONSUMABLE", "ext": {"IZsUf8lGFXcmwTER": {}, "HclOdxIwqejxe18r": {}, "Ndb8Otq6j1mqUav7": {}}, "features": ["65yclX2FtAz0vJjF", "IYWOaNdsimmkW2mi", "k05HAQltnSojV4jT"], "flexible": true, "images": [{"as": "3xRHAKy4QxZkaXZ7", "caption": "vmiEd0JPxVyQpsha", "height": 59, "imageUrl": "V0dS6hIH9c4Vfkyr", "smallImageUrl": "wpuXxbaERbfgPmi0", "width": 8}, {"as": "kPKTPOlhTtSiZNCx", "caption": "uogFteTHJe4BhSSQ", "height": 21, "imageUrl": "0jr9b8MuYmmeKTmB", "smallImageUrl": "NvGYxEQdf3ewoGGo", "width": 47}, {"as": "7xmFNAmjDDCvs78m", "caption": "cMdiS76YApGJ9ufw", "height": 76, "imageUrl": "9UtNquwC3WgumrIz", "smallImageUrl": "4NhGztZpr4U4fwQI", "width": 18}], "inventoryConfig": {"customAttributes": {"fgCUYBn2xaOBdPF0": {}, "JmX8qwU1cTuHHPB5": {}, "S3DvPRCzBrVUxmDO": {}}, "serverCustomAttributes": {"j3cvRFaTC11W0TGT": {}, "Cm4fZWuk6pQxDQpK": {}, "qxLGeMvr9TsvcMQ7": {}}, "slotUsed": 6}, "itemIds": ["a6iZ5uFRYNn3SHiW", "xF0YbuU5ar5qTLWU", "Cy0Afgc050XIZRW4"], "itemQty": {"91e94mQjVOOBnIWh": 42, "7w0Oc15N8WXBPp17": 85, "y1ei1fIrPvfHnRN0": 32}, "itemType": "MEDIA", "listable": false, "localizations": {"jXZedgt5cyNe27HL": {"description": "twtVOaxgP6Jbct8p", "localExt": {"uMybYGxD9IPmmsLm": {}, "u3kaPj0O4zd8Tb7c": {}, "UNGPTBxiFFCrn7dj": {}}, "longDescription": "js69FTFVGUVhvKhJ", "title": "Cmeisql14mUHVbMP"}, "imNhcZsU3VAdMDcb": {"description": "4qlkiFAamqvZI2Kw", "localExt": {"jqPBiWXade41s3rH": {}, "34mB2yPlRpWjmHZA": {}, "AvKTH8MuqIg0Czkg": {}}, "longDescription": "uwuJCW7EEFB67AOD", "title": "bi9BzupBsFpYc77G"}, "tRUcCFeY5g4XgBsb": {"description": "fzqxBPNe8ae1Il4a", "localExt": {"AtEbu4IjGdqthRxT": {}, "jQ7gkZEY8rG0q0Q2": {}, "Qd2JzRbkF2I03dIj": {}}, "longDescription": "vBbA6bfbYaJCJjfk", "title": "2TUvn95FhO7VW3mb"}}, "lootBoxConfig": {"rewardCount": 61, "rewards": [{"lootBoxItems": [{"count": 23, "duration": 98, "endDate": "1978-11-11T00:00:00Z", "itemId": "FSKWM1eym5ydC6p2", "itemSku": "5xCWTqUOYZENJ1QH", "itemType": "ZQxPRXH7uxBJEECQ"}, {"count": 62, "duration": 87, "endDate": "1998-03-31T00:00:00Z", "itemId": "iZgbwwm5iGzXtckn", "itemSku": "rgidKupvXO6aj4hC", "itemType": "mTC34jxW4pIDwdqX"}, {"count": 31, "duration": 26, "endDate": "1985-12-20T00:00:00Z", "itemId": "poBCbyJsF5IjF1c0", "itemSku": "W338HS6CBgVRyihY", "itemType": "NZ84CVhziXV8HwSm"}], "name": "vcvcDKF19yVRafCj", "odds": 0.6489169268461396, "type": "REWARD", "weight": 44}, {"lootBoxItems": [{"count": 92, "duration": 34, "endDate": "1996-08-23T00:00:00Z", "itemId": "ht83AdvBaagTiRJ8", "itemSku": "daGTVX3Bb7jlz5If", "itemType": "HgKjI9mwJSrN8jkI"}, {"count": 50, "duration": 84, "endDate": "1976-07-09T00:00:00Z", "itemId": "R2zbaI6PD7fEscSh", "itemSku": "nGUGUtV9GJ279GDb", "itemType": "LNwjm3FK0nnX2poM"}, {"count": 11, "duration": 50, "endDate": "1998-02-25T00:00:00Z", "itemId": "Cz0YqCKUh5RD9vNA", "itemSku": "p4jinFpnQ5xF9wwb", "itemType": "vMZyeDeRnVfPUa6x"}], "name": "VVBcq3wZpFIYeAg7", "odds": 0.9951914937536336, "type": "REWARD_GROUP", "weight": 52}, {"lootBoxItems": [{"count": 4, "duration": 29, "endDate": "1990-10-14T00:00:00Z", "itemId": "ILjkwW61duF87aUy", "itemSku": "rdt4XSpWBAetsanz", "itemType": "qP8oxfrtbECD1CYP"}, {"count": 46, "duration": 96, "endDate": "1971-08-10T00:00:00Z", "itemId": "iBAxfYL8Avt70ZUT", "itemSku": "2fSk3LL0calqxEew", "itemType": "uGS469k2hG0WKt4s"}, {"count": 95, "duration": 39, "endDate": "1977-03-18T00:00:00Z", "itemId": "anYxM0UHZVNYzGMN", "itemSku": "IpWoSLkUrfuf4U3W", "itemType": "eYeA9t2ENKKWrFtH"}], "name": "Ii1CMgKAOG5iDcCR", "odds": 0.9310727661204582, "type": "REWARD_GROUP", "weight": 2}], "rollFunction": "DEFAULT"}, "maxCount": 59, "maxCountPerUser": 27, "name": "vDLil8wj9cKM3Ar6", "optionBoxConfig": {"boxItems": [{"count": 80, "duration": 66, "endDate": "1987-05-03T00:00:00Z", "itemId": "35hCER4nGmWGgTJf", "itemSku": "HlJl4tHGa4XfZcd9", "itemType": "CVnGqMX9FieeEssW"}, {"count": 63, "duration": 23, "endDate": "1995-11-08T00:00:00Z", "itemId": "l07bhwntCVqiYOJf", "itemSku": "5KwMZQjzvjSozv6C", "itemType": "TRDl0zp9CzHFwink"}, {"count": 56, "duration": 35, "endDate": "1991-03-07T00:00:00Z", "itemId": "YkHBDdSzBXdxapwh", "itemSku": "d5IQYBQuxLvPuWYv", "itemType": "E3fsNy9Z9OhxXvCp"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 23, "fixedTrialCycles": 76, "graceDays": 61}, "regionData": {"xLPBsmAUrD9L1IiD": [{"currencyCode": "6MlcEPhMDFzjHZ3s", "currencyNamespace": "IhzOx2CXKlvIomU3", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1989-07-13T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1990-07-19T00:00:00Z", "expireAt": "1984-04-22T00:00:00Z", "price": 74, "purchaseAt": "1986-12-04T00:00:00Z", "trialPrice": 90}, {"currencyCode": "eLMe3lt9qfx2UDcg", "currencyNamespace": "VE7L9FK6e0MrPc4v", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1983-11-18T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1993-11-30T00:00:00Z", "expireAt": "1974-06-04T00:00:00Z", "price": 98, "purchaseAt": "1986-10-30T00:00:00Z", "trialPrice": 0}, {"currencyCode": "lG56HlzGr7XjdyRJ", "currencyNamespace": "unZPkp6ccIBnWyPw", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1990-03-12T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1986-07-16T00:00:00Z", "expireAt": "1999-12-14T00:00:00Z", "price": 48, "purchaseAt": "1977-03-08T00:00:00Z", "trialPrice": 6}], "k42miteR5eQAe1rz": [{"currencyCode": "mmgqBPRmd6mO4oI8", "currencyNamespace": "KDqebm83raNBJ5y7", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1983-09-11T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1976-10-27T00:00:00Z", "expireAt": "1982-10-14T00:00:00Z", "price": 9, "purchaseAt": "1978-05-18T00:00:00Z", "trialPrice": 47}, {"currencyCode": "GJtWf1Ybgg8rdwY9", "currencyNamespace": "bmrvHmO07KNqX9LM", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1982-04-14T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1980-05-29T00:00:00Z", "expireAt": "1979-01-28T00:00:00Z", "price": 71, "purchaseAt": "1991-09-20T00:00:00Z", "trialPrice": 88}, {"currencyCode": "BXBwnzDX8v3xgC1G", "currencyNamespace": "e9PdbTTAJ2Gp1r0s", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1990-09-14T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1995-08-06T00:00:00Z", "expireAt": "1997-11-24T00:00:00Z", "price": 66, "purchaseAt": "1972-01-29T00:00:00Z", "trialPrice": 52}], "IL2l3hPjNDKv2LWf": [{"currencyCode": "Xqjr8fS79En3wYow", "currencyNamespace": "BdkaZ3y6i38XQjLD", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1983-05-06T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1975-09-21T00:00:00Z", "expireAt": "1990-10-29T00:00:00Z", "price": 50, "purchaseAt": "1986-08-16T00:00:00Z", "trialPrice": 16}, {"currencyCode": "tiQ272Uo9UBJWodp", "currencyNamespace": "dwsX1jorcyR0x3Yi", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1972-03-29T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1999-07-06T00:00:00Z", "expireAt": "1987-12-03T00:00:00Z", "price": 40, "purchaseAt": "1993-04-06T00:00:00Z", "trialPrice": 87}, {"currencyCode": "OFMebS4AdlNzwog2", "currencyNamespace": "IhErkNhNcECWwchW", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1990-10-31T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1986-06-07T00:00:00Z", "expireAt": "1976-07-31T00:00:00Z", "price": 3, "purchaseAt": "1995-10-29T00:00:00Z", "trialPrice": 22}]}, "saleConfig": {"currencyCode": "lrNXnGanMazb8jvR", "price": 99}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "92m3iRlfnBAk0Cwi", "stackable": true, "status": "INACTIVE", "tags": ["ATdqnQGbqiqOkNeA", "5u6D31DjOsrs3CUY", "Tj7eGjodd7CcJUrI"], "targetCurrencyCode": "6MAugK5kypNrp2nF", "targetNamespace": "e9FmN86sK5LOq4ft", "thumbnailUrl": "5jGcMICPUYnfG6jl", "useCount": 100}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'U4jReteIMgzISomC' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-items 'sodJrhQW41q2OspC' --login_with_auth "Bearer foo"
platform-get-item-by-sku 'Zbt3Uta5I0uGcL1k' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'oyHjCH5olYLETRpA' --login_with_auth "Bearer foo"
platform-get-estimated-price 'BAmO2EGvJ4UMS93y' 'OxNInDByhnoluO6t' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'i0QP2ssiJ66OzOj8' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items '4O6tgohjtC7bzjPp' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'ucddXJ5zifF8y959' --body '{"itemIds": ["anrNSleywHbHig6I", "KWVZ77KeRWdECaFG", "zfZ2hxcJ2Fnemn7M"]}' --login_with_auth "Bearer foo"
platform-bulk-update-region-data '23SzUo4hNBDh9ZFP' --body '{"changes": [{"itemIdentities": ["1OW0nXOErQPS4VsR", "oYIK69yg9ADCGiXa", "Ls2xjHkinOD975nA"], "itemIdentityType": "ITEM_ID", "regionData": {"CmhNHSXuqIHsxvaU": [{"currencyCode": "oXDmwWsukxncuD3Q", "currencyNamespace": "xCXMd00YBWCaVVmM", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1977-03-11T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1990-10-12T00:00:00Z", "discountedPrice": 38, "expireAt": "1997-05-24T00:00:00Z", "price": 38, "purchaseAt": "1995-02-28T00:00:00Z", "trialPrice": 32}, {"currencyCode": "kS476dGGJwJ00UH1", "currencyNamespace": "97MJ6zU7JLMQyMWz", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1996-07-29T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1971-12-07T00:00:00Z", "discountedPrice": 9, "expireAt": "1989-12-18T00:00:00Z", "price": 14, "purchaseAt": "1997-04-26T00:00:00Z", "trialPrice": 1}, {"currencyCode": "xGJoJaSzUtY4ZD0X", "currencyNamespace": "tb0U4pH16NUsVY21", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1993-10-06T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1980-07-20T00:00:00Z", "discountedPrice": 23, "expireAt": "1991-12-23T00:00:00Z", "price": 10, "purchaseAt": "1972-04-23T00:00:00Z", "trialPrice": 91}], "2Y3Ns0QJQeaWytPf": [{"currencyCode": "ds1BYx0EaURydf8Z", "currencyNamespace": "yyZeHAWGgJUbUJRM", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1976-09-04T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1994-02-17T00:00:00Z", "discountedPrice": 87, "expireAt": "1977-01-08T00:00:00Z", "price": 3, "purchaseAt": "1987-02-18T00:00:00Z", "trialPrice": 69}, {"currencyCode": "FyOjApNHBVfNOURc", "currencyNamespace": "jY3YYT9oTynmfIuB", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1977-06-18T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1990-09-11T00:00:00Z", "discountedPrice": 6, "expireAt": "1973-06-30T00:00:00Z", "price": 79, "purchaseAt": "1980-05-30T00:00:00Z", "trialPrice": 79}, {"currencyCode": "TKXMjiw6gYPvfn2Q", "currencyNamespace": "t9iyq3Nyk8ncu2Z3", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1985-04-30T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1990-09-28T00:00:00Z", "discountedPrice": 60, "expireAt": "1981-06-21T00:00:00Z", "price": 1, "purchaseAt": "1977-02-16T00:00:00Z", "trialPrice": 82}], "qrgSfnx2h61X9dN1": [{"currencyCode": "MGRXBJ6mVV7JS9qj", "currencyNamespace": "NLwvI8JdiY3RRiLi", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1977-01-28T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1975-09-29T00:00:00Z", "discountedPrice": 27, "expireAt": "1987-05-06T00:00:00Z", "price": 18, "purchaseAt": "1972-11-08T00:00:00Z", "trialPrice": 76}, {"currencyCode": "DRfGt9GlyZVQ4X67", "currencyNamespace": "tPZSTpPq3xjrElvv", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1974-10-02T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1973-01-08T00:00:00Z", "discountedPrice": 55, "expireAt": "1974-11-21T00:00:00Z", "price": 94, "purchaseAt": "1976-10-22T00:00:00Z", "trialPrice": 91}, {"currencyCode": "9Yk997XkGOdC6Itx", "currencyNamespace": "DT8p4n4XCFkD1AJL", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1994-05-27T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1984-11-05T00:00:00Z", "discountedPrice": 4, "expireAt": "1981-12-08T00:00:00Z", "price": 49, "purchaseAt": "1971-06-22T00:00:00Z", "trialPrice": 21}]}}, {"itemIdentities": ["HSgDOK8bjoF7bL26", "35KbtZTGJpqgl2Iz", "NXGTuQPIDpor7t1a"], "itemIdentityType": "ITEM_SKU", "regionData": {"LNNz6QIVC9Mfuc8V": [{"currencyCode": "OsnmnlVljdWYmELe", "currencyNamespace": "74p38vumnxAnYBTx", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1994-04-12T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1975-07-28T00:00:00Z", "discountedPrice": 6, "expireAt": "1998-03-13T00:00:00Z", "price": 26, "purchaseAt": "1972-02-21T00:00:00Z", "trialPrice": 61}, {"currencyCode": "8XejRF94NIY9nMrB", "currencyNamespace": "Zo0lNUBDShHD32vv", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1978-09-16T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1992-10-24T00:00:00Z", "discountedPrice": 46, "expireAt": "1990-09-04T00:00:00Z", "price": 18, "purchaseAt": "1977-06-10T00:00:00Z", "trialPrice": 10}, {"currencyCode": "biWsAQHbMrKYi0Zx", "currencyNamespace": "s5SWCqZXHLLa31oQ", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1994-08-07T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1990-05-03T00:00:00Z", "discountedPrice": 27, "expireAt": "1987-10-17T00:00:00Z", "price": 61, "purchaseAt": "1995-03-03T00:00:00Z", "trialPrice": 53}], "utDM6BqguqD5xxGx": [{"currencyCode": "BWtnTKUe2znsqPzP", "currencyNamespace": "kwCBo2SwCUsTag4M", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1997-04-27T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1985-06-22T00:00:00Z", "discountedPrice": 86, "expireAt": "1975-02-02T00:00:00Z", "price": 48, "purchaseAt": "1991-12-31T00:00:00Z", "trialPrice": 0}, {"currencyCode": "Nfmn8Onb1a9gMz0F", "currencyNamespace": "2UBRmMhAbUWmFhdY", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1984-09-19T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1988-06-14T00:00:00Z", "discountedPrice": 60, "expireAt": "1981-03-01T00:00:00Z", "price": 81, "purchaseAt": "1984-08-18T00:00:00Z", "trialPrice": 20}, {"currencyCode": "66szbCCf73IFbRkP", "currencyNamespace": "SSITz4TjCrJHXGXk", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1999-11-22T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1994-12-29T00:00:00Z", "discountedPrice": 41, "expireAt": "1972-12-02T00:00:00Z", "price": 57, "purchaseAt": "1984-01-23T00:00:00Z", "trialPrice": 16}], "JfIfXshuLUk5Wdpx": [{"currencyCode": "jZx5noXPhPUTKbon", "currencyNamespace": "oucNmzwOZOK56sDk", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1975-09-29T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1973-07-30T00:00:00Z", "discountedPrice": 16, "expireAt": "1989-11-11T00:00:00Z", "price": 72, "purchaseAt": "1976-02-02T00:00:00Z", "trialPrice": 83}, {"currencyCode": "lt7rjF5RaJwvkWVc", "currencyNamespace": "o2LTo5ijlvDF8qBW", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1989-01-28T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1990-07-23T00:00:00Z", "discountedPrice": 86, "expireAt": "1997-07-15T00:00:00Z", "price": 62, "purchaseAt": "1994-04-11T00:00:00Z", "trialPrice": 53}, {"currencyCode": "UXGM5anIloyj9lhb", "currencyNamespace": "vuQdW2jwKUckc794", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1991-10-29T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1998-04-03T00:00:00Z", "discountedPrice": 60, "expireAt": "1975-09-04T00:00:00Z", "price": 83, "purchaseAt": "1999-02-15T00:00:00Z", "trialPrice": 79}]}}, {"itemIdentities": ["2sVBiCoeC5weXJl7", "PeiMH8z8dVej8N2y", "v6VTnOK7xAvM7tuL"], "itemIdentityType": "ITEM_SKU", "regionData": {"1lsR7xxSVp3Gd2TK": [{"currencyCode": "0HzYviTgYmx82JVB", "currencyNamespace": "RLPZ6Iz8tne5dbgu", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1987-07-18T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1987-05-30T00:00:00Z", "discountedPrice": 2, "expireAt": "1982-03-16T00:00:00Z", "price": 44, "purchaseAt": "1986-01-29T00:00:00Z", "trialPrice": 23}, {"currencyCode": "opXtdsJQeJ1too0q", "currencyNamespace": "vxphTLEEBGTtZyTj", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1989-03-02T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1973-11-02T00:00:00Z", "discountedPrice": 72, "expireAt": "1974-03-16T00:00:00Z", "price": 30, "purchaseAt": "1971-09-10T00:00:00Z", "trialPrice": 53}, {"currencyCode": "EXBLIxGnNuhoJM3W", "currencyNamespace": "WPvvCiCf33ViEdqQ", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1978-07-09T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1994-03-24T00:00:00Z", "discountedPrice": 99, "expireAt": "1995-11-02T00:00:00Z", "price": 100, "purchaseAt": "1996-11-19T00:00:00Z", "trialPrice": 77}], "izk5UcPAGv6c1ESC": [{"currencyCode": "6hZYTYZbzf5aANNN", "currencyNamespace": "s5kgSZZNUHbIT9sz", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1979-09-26T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1976-03-30T00:00:00Z", "discountedPrice": 72, "expireAt": "1978-11-27T00:00:00Z", "price": 78, "purchaseAt": "1995-06-25T00:00:00Z", "trialPrice": 52}, {"currencyCode": "n1YXj5zFZeOCOR9N", "currencyNamespace": "vBQZSJPOIKrRBrYV", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1975-11-10T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1980-03-11T00:00:00Z", "discountedPrice": 27, "expireAt": "1999-05-04T00:00:00Z", "price": 24, "purchaseAt": "1997-06-18T00:00:00Z", "trialPrice": 48}, {"currencyCode": "ozTt9TsH7A0TuU2a", "currencyNamespace": "L4bPkk11sys6GdkD", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1978-06-05T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1981-09-13T00:00:00Z", "discountedPrice": 72, "expireAt": "1971-05-29T00:00:00Z", "price": 56, "purchaseAt": "1994-10-17T00:00:00Z", "trialPrice": 65}], "fZ0jvA54CSqZFDsO": [{"currencyCode": "1skRjOU1SMfQVQa6", "currencyNamespace": "blj9Rdd85bdYUumP", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1985-07-16T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1977-05-03T00:00:00Z", "discountedPrice": 92, "expireAt": "1972-01-22T00:00:00Z", "price": 21, "purchaseAt": "1998-06-21T00:00:00Z", "trialPrice": 43}, {"currencyCode": "Qe0dHJfF6KIuvnRC", "currencyNamespace": "a9JktyBdxkZKrEWF", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1980-09-27T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1996-07-07T00:00:00Z", "discountedPrice": 14, "expireAt": "1975-05-26T00:00:00Z", "price": 17, "purchaseAt": "1980-03-10T00:00:00Z", "trialPrice": 46}, {"currencyCode": "OQAD77ci0vfWVZoR", "currencyNamespace": "RMPi57HyKKz5nyI6", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1977-07-20T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1981-11-23T00:00:00Z", "discountedPrice": 75, "expireAt": "1974-04-28T00:00:00Z", "price": 65, "purchaseAt": "1996-01-03T00:00:00Z", "trialPrice": 71}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'dgx1JgjC56pda3Yh' 'tQxpCYME6x21pdX2' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'QSPAd9sxoLnWGP1P' --login_with_auth "Bearer foo"
platform-update-item 'afIjLX8ce0KbNN7Y' 'cl2JfmQplvGjVQ4a' --body '{"appId": "ebjfgGu472oWJlfg", "appType": "DLC", "baseAppId": "dCOInVolsr6CHmj7", "boothName": "63vLwtYEJTSiXjcY", "categoryPath": "5ZPkv90lyKSTWLxS", "clazz": "FZ0LpupEi5DbkVs3", "displayOrder": 34, "entitlementType": "DURABLE", "ext": {"FTi1t530Wj1WfzIv": {}, "c3VlSXrA3XUGud4t": {}, "VjmxEf4XvVhFJTxF": {}}, "features": ["fV3869IN4V1OdhH4", "IKeTyBG5dCUoExnK", "HITBg9x4unq3eOMH"], "flexible": true, "images": [{"as": "Exlkmc4xYiLjLyZr", "caption": "Xr9Bhtzn8jAdTn6x", "height": 56, "imageUrl": "eRcpUvlrw2MwC1uu", "smallImageUrl": "okpaIjL0Vxe5n9Lx", "width": 93}, {"as": "QcFo9gxOgvDc7xMr", "caption": "RKvw8ISP2WKmCRRX", "height": 56, "imageUrl": "qxnWR5sheLgsAF4c", "smallImageUrl": "tv5guycGiq9j2EyI", "width": 22}, {"as": "dvBVC5zgOKLTDmHe", "caption": "8c1eJ9sde7Ryt4ud", "height": 70, "imageUrl": "qK4QtEydPWLPBYiR", "smallImageUrl": "3UbJc1ZYapx7C477", "width": 9}], "inventoryConfig": {"customAttributes": {"VwDZCIXFNEL3uWVR": {}, "z3V7YbJM3bNLWHAb": {}, "CZixe2cQ6O30lpzc": {}}, "serverCustomAttributes": {"BQMAEcNcJqrKxnMz": {}, "SYoc4ZjiMY4H34B6": {}, "wVd8ipcKDwQeUWtj": {}}, "slotUsed": 58}, "itemIds": ["6GO9zP3FaepA3b3Y", "J9nJM6vtT27xv85K", "5MU2qmbeqaVemINd"], "itemQty": {"ClpF7OvlBIEgjse5": 21, "EEgja2mIE2kLTnJw": 4, "Loog4me2NBFp62xl": 20}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"YdG7xVPqBqe9RDQM": {"description": "BSYAFLqp8PF5hCco", "localExt": {"ukWpnbz4ys7j6lxu": {}, "U3u2HEG0qfKegvFT": {}, "D1sPykS8YLmwtYgW": {}}, "longDescription": "GcA0h4G1LZ1HaX5U", "title": "BMbsF44VTsLDRzdq"}, "22cbnyK3ggFDh2ka": {"description": "ZP7pnnVfxPwc259H", "localExt": {"F9ejHaILQruAuYyJ": {}, "LYGqMv824ouSgkpK": {}, "70uJmUL0uzElixc0": {}}, "longDescription": "23dIvDiA0tQWlHwB", "title": "cTtztx3VAl6tXFbn"}, "ATCzUOIzVcy9k3ie": {"description": "64Vnwa0ClGQJultJ", "localExt": {"e32AiwKadEoIVmpr": {}, "wPsa9YD92CX0rITa": {}, "jpwHITGeHTnqRbzB": {}}, "longDescription": "B9ZFgJbQ3Fj1umx4", "title": "ItzkMJ7cudf4r916"}}, "lootBoxConfig": {"rewardCount": 67, "rewards": [{"lootBoxItems": [{"count": 71, "duration": 86, "endDate": "1978-05-23T00:00:00Z", "itemId": "b1cIOJPS3lJ80YJ4", "itemSku": "1U4ooQ980ywmg1pW", "itemType": "pWit1QC7FKe0fnHU"}, {"count": 22, "duration": 93, "endDate": "1977-01-27T00:00:00Z", "itemId": "1unGKM0tgfeWy47b", "itemSku": "bwMI4gGmvK9gW596", "itemType": "FwBNrFXt3TAuKBwB"}, {"count": 4, "duration": 79, "endDate": "1986-07-18T00:00:00Z", "itemId": "12ae6r3hHwya4Npd", "itemSku": "Ozg3hr6ucHf7dbh2", "itemType": "iKNUl0qJqzoKMRMG"}], "name": "541PAiNjULsx4SnK", "odds": 0.6428365934541542, "type": "REWARD", "weight": 77}, {"lootBoxItems": [{"count": 3, "duration": 78, "endDate": "1976-12-04T00:00:00Z", "itemId": "aDSwwQlnNRZJHBSB", "itemSku": "4fZWEFIZs28Ff1kZ", "itemType": "p1Zktx3N7WNMYIfc"}, {"count": 61, "duration": 62, "endDate": "1989-04-08T00:00:00Z", "itemId": "bLu8pnK34oA1keYX", "itemSku": "JvtggDdXjbdjMBah", "itemType": "FZZGMTcqnWrIprOv"}, {"count": 56, "duration": 57, "endDate": "1995-10-16T00:00:00Z", "itemId": "snnDJlmD1iEokbUi", "itemSku": "YzCQh2iNTwtnohdd", "itemType": "MzMTQ9P7sYLDWAJO"}], "name": "A75K4BYJ2fkqYJoF", "odds": 0.8800866691756811, "type": "REWARD_GROUP", "weight": 70}, {"lootBoxItems": [{"count": 36, "duration": 43, "endDate": "1977-07-21T00:00:00Z", "itemId": "tQUvro8TWwXWsz9T", "itemSku": "VmdMKEohKzuMYDUT", "itemType": "LBeCidXjuGgx8ncX"}, {"count": 8, "duration": 48, "endDate": "1975-04-15T00:00:00Z", "itemId": "nEBhXtAVxCd3meTr", "itemSku": "T7cF9oVCh89wNOkK", "itemType": "YssVejcL3kR3hCGN"}, {"count": 12, "duration": 60, "endDate": "1971-03-08T00:00:00Z", "itemId": "JmuALlMQl9RLrthb", "itemSku": "fp0VgweLlT2sY3Ss", "itemType": "TnDQY7kKU2u06Q4v"}], "name": "eujxtyQENvJrBCqe", "odds": 0.10731136785427287, "type": "REWARD_GROUP", "weight": 48}], "rollFunction": "CUSTOM"}, "maxCount": 36, "maxCountPerUser": 92, "name": "RWOqO4U0bitNQLzw", "optionBoxConfig": {"boxItems": [{"count": 89, "duration": 29, "endDate": "1986-12-14T00:00:00Z", "itemId": "nR0AbkCPY70Fmvvi", "itemSku": "VIBbcujF8Vk5qb8N", "itemType": "hWWwaxyMchkt8l5I"}, {"count": 85, "duration": 91, "endDate": "1996-05-20T00:00:00Z", "itemId": "TUh2dJ90yqHDNacl", "itemSku": "4F9G6Dl5TFwBY6HK", "itemType": "XAblkT8VGgSH8MGZ"}, {"count": 66, "duration": 46, "endDate": "1988-03-05T00:00:00Z", "itemId": "acq4XRLaA643nTMt", "itemSku": "XSAyejnny0Ju13b6", "itemType": "o5uB2XM6IHy7EEvH"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 55, "fixedTrialCycles": 4, "graceDays": 96}, "regionData": {"vrZZOdwe1x8RjU6B": [{"currencyCode": "i8JXE52sUBBq2Sim", "currencyNamespace": "QQoLbe5YOJvxGRxU", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1980-09-01T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1981-01-04T00:00:00Z", "expireAt": "1985-02-22T00:00:00Z", "price": 61, "purchaseAt": "1988-05-15T00:00:00Z", "trialPrice": 80}, {"currencyCode": "BMT1IZKTdNFVBQ1c", "currencyNamespace": "rBXAupATO8uXsqVp", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1973-05-14T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1979-06-01T00:00:00Z", "expireAt": "1994-08-09T00:00:00Z", "price": 19, "purchaseAt": "1995-08-23T00:00:00Z", "trialPrice": 49}, {"currencyCode": "AM0Riw8wLYW3n4F3", "currencyNamespace": "LD1EDwBXw5uBYeQZ", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1984-05-11T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1981-11-23T00:00:00Z", "expireAt": "1995-12-25T00:00:00Z", "price": 19, "purchaseAt": "1995-01-02T00:00:00Z", "trialPrice": 62}], "c1cQvSxgTNIUzxDg": [{"currencyCode": "BlIbuzm7DzJ20NFR", "currencyNamespace": "JIhFXR2dYprPmbpu", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1981-01-22T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1978-08-21T00:00:00Z", "expireAt": "1999-09-18T00:00:00Z", "price": 20, "purchaseAt": "1972-07-12T00:00:00Z", "trialPrice": 5}, {"currencyCode": "Upe8SjMvpqM8pugg", "currencyNamespace": "OEdG47gD5i2Ni6An", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1999-03-18T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1999-01-26T00:00:00Z", "expireAt": "1983-09-09T00:00:00Z", "price": 38, "purchaseAt": "1992-02-29T00:00:00Z", "trialPrice": 85}, {"currencyCode": "NHSH7eKDfRcngEpT", "currencyNamespace": "nRUQr3RLOM1vEx4g", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1986-11-02T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1975-02-16T00:00:00Z", "expireAt": "1982-10-25T00:00:00Z", "price": 51, "purchaseAt": "1971-11-01T00:00:00Z", "trialPrice": 89}], "5c1tP5TDuI5f6m4K": [{"currencyCode": "C07CnsZe32hqEcB1", "currencyNamespace": "ExYMBb3ckvoaJYdM", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1987-02-08T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1974-08-12T00:00:00Z", "expireAt": "1972-02-12T00:00:00Z", "price": 14, "purchaseAt": "1978-12-25T00:00:00Z", "trialPrice": 9}, {"currencyCode": "yFS0Ed7gTM5AVrtB", "currencyNamespace": "QiDTcNnZa6Zuxk6u", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1972-03-08T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1985-08-30T00:00:00Z", "expireAt": "1997-08-27T00:00:00Z", "price": 93, "purchaseAt": "1975-01-13T00:00:00Z", "trialPrice": 62}, {"currencyCode": "55g8LSTs7Nf95lGl", "currencyNamespace": "Prf6obIdnI6Ag7eU", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1978-09-18T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1973-07-27T00:00:00Z", "expireAt": "1992-07-25T00:00:00Z", "price": 62, "purchaseAt": "1996-06-30T00:00:00Z", "trialPrice": 59}]}, "saleConfig": {"currencyCode": "0X8fBuBSKLSQ4GvL", "price": 39}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "D3rpBfBovqLwXBuT", "stackable": true, "status": "INACTIVE", "tags": ["iHjGmCyPsKCJTv1i", "c9gvagF2cSuztsJ5", "EYeRj17xGhaBKoUf"], "targetCurrencyCode": "tj64gV7nmDk29mcj", "targetNamespace": "Suz9vbNStqPtQmQN", "thumbnailUrl": "6eKAGiZFCftT0RWE", "useCount": 58}' --login_with_auth "Bearer foo"
platform-delete-item '4j0HUONscofwYLQc' --login_with_auth "Bearer foo"
platform-acquire-item 'DvkaEIIPoJT83zEG' --body '{"count": 48, "orderNo": "mVBZLyrH9J7Boysm"}' --login_with_auth "Bearer foo"
platform-get-app 'aORLkP5hc2Fh04JT' --login_with_auth "Bearer foo"
platform-update-app 'sqDTynCewqJligLl' 'RxOelKykICRxF6Ht' --body '{"carousel": [{"alt": "lER2txs4qrNARATn", "previewUrl": "6KXOutlYBbLhL8KX", "thumbnailUrl": "x25FZfQIodVBqQsB", "type": "video", "url": "Py0fGvTGgfLKsg0b", "videoSource": "youtube"}, {"alt": "Bq78cE5O5pmPnbiP", "previewUrl": "J9j4vxmbH3rVaauu", "thumbnailUrl": "fxkPHElug48TgfNu", "type": "image", "url": "rqXUOyToLPIREGIK", "videoSource": "generic"}, {"alt": "yPl3dKF7NXEjrJMk", "previewUrl": "i8jvc3P8Gwjg3IOH", "thumbnailUrl": "0SDHgYKqxJiFJdrm", "type": "image", "url": "zoiBnYi5UWs3tYlY", "videoSource": "generic"}], "developer": "lXNaUNgdY2vfJuje", "forumUrl": "5cPnmGjTvYa5Pqx1", "genres": ["Sports", "Simulation", "Adventure"], "localizations": {"qcAoijBPAp6EPb98": {"announcement": "8NzxrDKVpULjjiw3", "slogan": "NeVG4DJi9DaMrc0W"}, "FgKjE945x2CPVYYG": {"announcement": "9WvoGmAmvaVV5Yfx", "slogan": "nUNcwjr7gSGhnfuF"}, "4WZiQVICVpWd3UM0": {"announcement": "8gMXhdf3juXW4Jpr", "slogan": "Ib3CJCAtvSG8Cfa9"}}, "platformRequirements": {"dzOJDGCTHIOFjeXb": [{"additionals": "sSgR43kIDzxBwqRJ", "directXVersion": "TzrHNZWUsq5lQo2j", "diskSpace": "y29EJigqYhyVhURx", "graphics": "1yPeczRpdk0HATGy", "label": "lx2JG2KNGfhzfCTx", "osVersion": "xrsRRLee3TcJ7DQI", "processor": "i45aCDHN9mVug2zk", "ram": "Vf6KgpKOcn3tMD9U", "soundCard": "T67bOwugFDa6wUQv"}, {"additionals": "ehKqwCh86XmRkCEc", "directXVersion": "fHDCdl59Wp9A3tXG", "diskSpace": "ve6DdK6uvg8f2cIo", "graphics": "Byk9fxtvsgeAxo57", "label": "nKAbZpsbJ4Iu5KJ0", "osVersion": "ynxGBlacDCdFe8AT", "processor": "UqVxcSthrpnMUBsn", "ram": "UfuQIcSbUt5UGkIn", "soundCard": "FGpuUsdtq4dOwNES"}, {"additionals": "zCEW9dUVhZjLftC3", "directXVersion": "sCS8CpLCqPD9CeDE", "diskSpace": "dCnnL6Kt1Bjj3b8Q", "graphics": "M8Rr45ULqXQgvwD3", "label": "PsKDJiWxQBwaS7rD", "osVersion": "Bf2S54phbdyGDt47", "processor": "f9GWRlE9hqz6rjDN", "ram": "o4rhjxUdMM83Wekq", "soundCard": "fWv04vvn9bk5qr8q"}], "s2mqtnGAqXUjNypF": [{"additionals": "6MMqWpdEJsPoaIbY", "directXVersion": "z8cK5jlpJdre5ur6", "diskSpace": "yvWJDdvM7T7PX2va", "graphics": "mIRZHzsIYOCUoiCX", "label": "NjrdQL2jdx1eIba1", "osVersion": "sB0HsJ06DzfbzRYt", "processor": "4OVUyumBeIqdQGZC", "ram": "5kM03HHijsQRj7N8", "soundCard": "IAjmsonjj0ZR50BQ"}, {"additionals": "1U6aFD3O2kXQSc58", "directXVersion": "zgZVl4gIF7v3qbZu", "diskSpace": "9M3OxqVAT4H1lRZ9", "graphics": "Z1JBrHRzEOtIxzPq", "label": "b6n73m0jiaDH86d9", "osVersion": "rsKgzCsMulpB8HZU", "processor": "tVVaJCiLgKOwrSfW", "ram": "hT5B4WedopzwSluB", "soundCard": "tRFPKThyGnbjmPDK"}, {"additionals": "FS6u9FHuv1M3qfch", "directXVersion": "4SqIV6LQPHlaeYl4", "diskSpace": "csFq65cU66yJaj4o", "graphics": "voKWE4EW0sw8v5pe", "label": "iuxoBJATauyD3XCX", "osVersion": "VMiyEvMf9yilUEuj", "processor": "k6oqYo1HQYTFzwdO", "ram": "MdupwD4O3uNbcIDc", "soundCard": "IyvZbOy1T4hfwkuV"}], "ykH4RpfmjIXFGZ5P": [{"additionals": "KdbabJIkNnt9P1Tk", "directXVersion": "m08luh4dpPRMDbUX", "diskSpace": "BWTbpAogG2wlZkLh", "graphics": "uU5FI8NijFI0GKwJ", "label": "3vfXlsAMy2Zp2UAG", "osVersion": "xHnmSxvkG9UR5q9n", "processor": "eoW6JBcGp9Rx2Rfc", "ram": "RhXpmeeHdvphas9S", "soundCard": "7ivHEoLbUMM47f1U"}, {"additionals": "reUpxEkXIbE1ETzR", "directXVersion": "JZKMavu4Ul2IaieE", "diskSpace": "bPSE7TGkeHsYsW9o", "graphics": "GBN1pYMBwbPZTlMl", "label": "UvFEiGprcNSQ9kEe", "osVersion": "XBZ6FVrBzyhyhoS6", "processor": "a9oe0JaXFpff28uY", "ram": "be4Cf2HEHvVevhIS", "soundCard": "jbtBJUK5fE3OufPS"}, {"additionals": "X3PdOU2V9yw94oa8", "directXVersion": "UJ34TIedV3HyoX4V", "diskSpace": "nO2LpBU08wfnlHBX", "graphics": "FIqFUmgUSMM5au8G", "label": "JT0mkVPI6zUtf3Qa", "osVersion": "JPGrTNcXXTUIggoH", "processor": "89QNmI17UDb19R6H", "ram": "7r1ta3m7jK5pxe82", "soundCard": "pgFiAS6piIzmc8rK"}]}, "platforms": ["Linux", "Windows", "Linux"], "players": ["MMO", "Coop", "Single"], "primaryGenre": "Sports", "publisher": "GSAcong6eNERUf8k", "releaseDate": "1975-01-25T00:00:00Z", "websiteUrl": "syme06c6SKLc2mEC"}' --login_with_auth "Bearer foo"
platform-disable-item '3IXl5XCbkOfHaGr5' 'kdazlypvt6lSLfU7' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'HByGXPMqxj4hBgVY' --login_with_auth "Bearer foo"
platform-enable-item '3YAxZLKbcOdyjqf6' 'Q4oiwoJcaRMEb15L' --login_with_auth "Bearer foo"
platform-feature-item 'BlTVufc5ZyODR2NV' 'yn4PRqf3eRbZqBAo' 'KGcVCdMiSNV4qBrt' --login_with_auth "Bearer foo"
platform-defeature-item '1kcLmRv6EJtl5xWn' 'sb8oWq94RImNWVIJ' 'nhhwFDV1VitaomvW' --login_with_auth "Bearer foo"
platform-get-locale-item 'TzdsW4N70wYS4Kj7' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'Yi2VvoQNW8Yc481d' 'YdvGxJAMDRA1LF7j' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 100, "comparison": "isNot", "name": "lekFwO94VBCV9qJh", "predicateType": "EntitlementPredicate", "value": "va2FPBujX0geYCpG", "values": ["JM4sqsPNJMiZXXOF", "wmGWAvNF0Z0GkwxU", "NYyNwGiKrknH0Y5m"]}, {"anyOf": 35, "comparison": "includes", "name": "7fuDbzRRYMNXWUsp", "predicateType": "SeasonPassPredicate", "value": "i5WjMZfOadpgegCU", "values": ["sGyPd12B8QNUz0hF", "jTdi1Ehr8OtqpNJ9", "R8TuNy4ejmVA3vMC"]}, {"anyOf": 64, "comparison": "excludes", "name": "NbH6j2W4roZM2UKA", "predicateType": "SeasonPassPredicate", "value": "EEsL5D0oiFchQnVe", "values": ["SdiylLhVYszm8xY3", "Y5HXCZ0W4XmWP0Hz", "q3g2AB2WIRUQmauI"]}]}, {"operator": "or", "predicates": [{"anyOf": 84, "comparison": "isGreaterThan", "name": "Qbumu2QHLyZNuysy", "predicateType": "SeasonTierPredicate", "value": "Di2piIQFVmzMidw7", "values": ["0KSahpYZdKZRyR9A", "X7JjxvNZhM84DiZk", "6ySrB9SVFctW7YS0"]}, {"anyOf": 84, "comparison": "is", "name": "87yqEwEacQMTlqN4", "predicateType": "SeasonTierPredicate", "value": "ha4pd5A7MYcpBD6l", "values": ["eLH19fqBwNbNe1ff", "KNb8RxvN2u5J7baO", "YRtIvQaKyevWYtZj"]}, {"anyOf": 75, "comparison": "isGreaterThanOrEqual", "name": "9v8MpBSpo3AKRmnJ", "predicateType": "EntitlementPredicate", "value": "cDaiq0nEZ7PyhqFJ", "values": ["kDClOsKmfsgJdmzs", "X2TZkil67kRngoUa", "DPsWh1k0cQ08NG6d"]}]}, {"operator": "or", "predicates": [{"anyOf": 63, "comparison": "isNot", "name": "gbPzPFbrOMZMgWkF", "predicateType": "SeasonTierPredicate", "value": "3sVli3GN2XTrFibR", "values": ["JRvpZrSpWX3KEe2B", "AhzzEWzWlTY70qdg", "jV00ReCXFffjJJxl"]}, {"anyOf": 12, "comparison": "isLessThanOrEqual", "name": "jzIhpgOoIOD74V21", "predicateType": "SeasonTierPredicate", "value": "nPYQ9jNQN1di1ldh", "values": ["2ODiZhbfb8QqCyK1", "Oh6HvjnYuV7NfC4A", "XH9D6vl5eFdFfgK4"]}, {"anyOf": 76, "comparison": "is", "name": "QKe3xmj6s0GqsWnc", "predicateType": "EntitlementPredicate", "value": "3Ahu5wxq6oJq4mCh", "values": ["FD58sG6uDhFYlrzJ", "BYSeMuJfQecutjS0", "mQHQhO9IKBXDFQfX"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item '29BiJWOG1m7MKclr' --body '{"orderNo": "5igjNTVItrH2X78h"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "xJgaVfw5Vnyq8OzT", "name": "E89WDNoMcOmbfJrC", "status": "INACTIVE", "tags": ["Ij1haAosKglqaCXE", "9ytpIO8btO3OwNEG", "SW5TaW4to7QCY2NG"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'Gvi9kg3rMIzNmhJT' --login_with_auth "Bearer foo"
platform-update-key-group 'NQjKlwjfJ3TJ2xVp' --body '{"description": "ge70WsLfgbZieRvJ", "name": "I5sT9DH3DfLCv8q4", "status": "ACTIVE", "tags": ["hmq09bBgPAYxrBE9", "jlnTgtgW33wDwD9R", "KvQX4yFQFdrRoM6F"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'oqCYw7AlxO6qdFpc' --login_with_auth "Bearer foo"
platform-list-keys '71sSck3ggZWJlSlC' --login_with_auth "Bearer foo"
platform-upload-keys 'QMDji329PfVrvMEP' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'tpsSNcpK1QkB2Sy8' --login_with_auth "Bearer foo"
platform-refund-order 'Ww79LVeVskqeUB7R' --body '{"description": "SayqGFguhh3bvadR"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": true, "notifyUrl": "838c7OydVw0zCqoM", "privateKey": "ZvpIOO97DmQ5ZOzx"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "6iCJTu60IifzMhkk", "currencyNamespace": "5PxsjqbCKpMv2Yky", "customParameters": {"9DYkD2sIllFtBtXJ": {}, "KG3rqBmILhtWm8RQ": {}, "vRUbUDSiefGEdLuc": {}}, "description": "rtO2gCQD057DrDlg", "extOrderNo": "C2nzS9SiGUjVAw4v", "extUserId": "3q6JRHcn7KaoCEkR", "itemType": "APP", "language": "PiS_jsyD", "metadata": {"ShqiBUI9esSsXegS": "EhrPpK2q8kxR4BuE", "ksS2A9VOA8H9VeHv": "0L2Acm960EYQEuGJ", "Vl8xs1WId9Wlalqs": "hF9Rh2o7GCQGPCxw"}, "notifyUrl": "EdkyuT3MgzReRq01", "omitNotification": true, "platform": "ISArROIodcmM6v2A", "price": 62, "recurringPaymentOrderNo": "xShFVQTRekLfjmy8", "region": "zosRCRgVwbrQKmb0", "returnUrl": "1yA7U7dGMjupZkZQ", "sandbox": true, "sku": "CNyT4k3DIbfT22G5", "subscriptionId": "NpE130YWSgxpKWtd", "targetNamespace": "tdtVW9anENmxb9e7", "targetUserId": "vXZV3ig8Jg5VByeI", "title": "3ycMcYYBixKJXCIS"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'Qdwec1m8BusV9tUh' --login_with_auth "Bearer foo"
platform-get-payment-order '74KVo6Xqjz2xUKLN' --login_with_auth "Bearer foo"
platform-charge-payment-order 'WSmYyVvyelIJ8Qga' --body '{"extTxId": "LMqi836ULa7cfZl4", "paymentMethod": "VuY6rsZyo6CBRRno", "paymentProvider": "WALLET"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'ikIxXKKIR6kPmswm' --body '{"description": "5TCAU1cKApdJDnE7"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification '3GLmSZns5owBhoUg' --body '{"amount": 75, "currencyCode": "LsGP6KLPXkvUv2Xi", "notifyType": "CHARGE", "paymentProvider": "STRIPE", "salesTax": 56, "vat": 53}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'CbIJ7eHnVWOboMky' --login_with_auth "Bearer foo"
platform-get-platform-entitlement-config 'Steam' --login_with_auth "Bearer foo"
platform-update-platform-entitlement-config 'Epic' --body '{"allowedPlatformOrigins": ["System", "Twitch", "Other"]}' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'GooglePlay' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Playstation' --body '{"allowedBalanceOrigins": ["Oculus", "Epic", "Xbox"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Epic' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config --body '{"appConfig": {"appName": "mXxETLEQrr3KCAV9"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "boOLGCcg16DqwdQP"}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "HkSSV8e1MgTTLS2F", "eventTopic": "garY903INGIyEfRB", "maxAwarded": 62, "maxAwardedPerUser": 12, "namespaceExpression": "j7qms9AGQExPhgr9", "rewardCode": "gGfC0GjvpgJfuBs1", "rewardConditions": [{"condition": "Vpqn47GVghTH2wTo", "conditionName": "Onq9U5lyW89Xwt3w", "eventName": "mRTrDCjhnKvsHezW", "rewardItems": [{"duration": 93, "endDate": "1974-05-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "K0x0ZidAJ1CU1eD1", "quantity": 77, "sku": "mU96FLEak0mJqjRY"}, {"duration": 24, "endDate": "1976-01-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "cTpdeCD9XPRi4bAQ", "quantity": 77, "sku": "rb21A2E9pX0BWCMq"}, {"duration": 86, "endDate": "1980-01-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "k5htdM5T3fDSrSHr", "quantity": 21, "sku": "XJPm5ztrr09CDA8I"}]}, {"condition": "j5bGKSuopWQbaCvd", "conditionName": "PSq8Z27GpvHCDx55", "eventName": "JZ5z6gujpFzlPspQ", "rewardItems": [{"duration": 61, "endDate": "1990-10-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "IpDDubntPCFxfeoW", "quantity": 63, "sku": "NdSWzOXjO1NQUqWH"}, {"duration": 56, "endDate": "1983-10-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "8XREZCiTNAxq26gZ", "quantity": 37, "sku": "u1bqI2M5PmXfKnQ7"}, {"duration": 57, "endDate": "1980-03-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "jCUDMOrbmoRvWnfm", "quantity": 68, "sku": "5ge659UDEOF6gp5U"}]}, {"condition": "fmjtiVbqJnZcrqrP", "conditionName": "ye7fCwi7Il2wIFlH", "eventName": "m9N6owMHMtJy1Oqn", "rewardItems": [{"duration": 30, "endDate": "1991-06-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "EGm9NYeUT5P0nx8T", "quantity": 33, "sku": "gGHkapTCafFMdvYi"}, {"duration": 58, "endDate": "1979-08-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "uzUUwyI6Vtd4v9k4", "quantity": 11, "sku": "c9fBoU3RHNDFjLKF"}, {"duration": 35, "endDate": "1973-06-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "rPFxBgpFtDBmTLH9", "quantity": 21, "sku": "51c4MqJzDSvELgBe"}]}], "userIdExpression": "6dboSdhkBzAzPkt1"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'false' --login_with_auth "Bearer foo"
platform-get-reward 'PBNHKPx62tHxDb06' --login_with_auth "Bearer foo"
platform-update-reward 'ZFy3uglSp2UxvF2u' --body '{"description": "LXWilRD7HD6LCgdF", "eventTopic": "xRGj00RT6LvcnGMJ", "maxAwarded": 3, "maxAwardedPerUser": 89, "namespaceExpression": "JIYLssMvy9gkfTMR", "rewardCode": "rXVRcAVRDX6gmDfN", "rewardConditions": [{"condition": "fPGYYSTunMgt3C8h", "conditionName": "EguCqlMHiQN3HWJw", "eventName": "9zIWsiP2JQ24meDr", "rewardItems": [{"duration": 46, "endDate": "1992-09-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "uTyM2qohglzO8AEl", "quantity": 55, "sku": "8qVceS9UX48dKPCF"}, {"duration": 95, "endDate": "1979-10-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "qIjS4i0N9ytb3c8p", "quantity": 97, "sku": "dEweeBsJEvBbAvCm"}, {"duration": 23, "endDate": "1995-02-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "6Z1oz9BaixUUvmzb", "quantity": 0, "sku": "HEV4g9P6a280S5RN"}]}, {"condition": "B5dVCsB7xL4axSPg", "conditionName": "PCiwLxCFLDixZwVt", "eventName": "t3RVTl0tR00oQgcH", "rewardItems": [{"duration": 6, "endDate": "1992-09-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "K3x76U1EIcklttmr", "quantity": 32, "sku": "oK3c4RVfjB0zi3Xr"}, {"duration": 65, "endDate": "1994-02-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "R70eNLHkVrEFd8xA", "quantity": 35, "sku": "7ycJV5YqE2myQzl7"}, {"duration": 75, "endDate": "1973-10-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "r6WvBxmBvNj3ktaD", "quantity": 12, "sku": "v12ZSRJkujxbCu1H"}]}, {"condition": "Faj6Vxs3GuA4S1dS", "conditionName": "7H7yIS7b5TSDRIoM", "eventName": "g7Dc5APzfzXDELJF", "rewardItems": [{"duration": 1, "endDate": "1978-10-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "aEMW5bhJyL72WDyh", "quantity": 57, "sku": "FfC8x5aHLsXHlm1R"}, {"duration": 73, "endDate": "1978-04-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Tq9ihZkvFKfSHQh8", "quantity": 71, "sku": "vifGHawNx6yhniEH"}, {"duration": 77, "endDate": "1996-01-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "kLwioRaKnWhlh80B", "quantity": 15, "sku": "df9qswSlpCI8Dhjl"}]}], "userIdExpression": "xUyrs3OSesE5p0Dw"}' --login_with_auth "Bearer foo"
platform-delete-reward 'Uj2HKUvPYUcQBxMS' --login_with_auth "Bearer foo"
platform-check-event-condition 'dOOsn2Nd8Jpa19GJ' --body '{"payload": {"DK46Eehx7xasqMY9": {}, "aulsL6NOV5agpS6A": {}, "5mkufBpWVxIK9D2b": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'TcgaKoccaSwWcZmz' --body '{"conditionName": "CWGI1cIQcPWAShIh", "userId": "ieSKUf3zKbyQk2vQ"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'TYX1xsth28NZZgsX' --body '{"active": true, "displayOrder": 13, "endDate": "1972-10-09T00:00:00Z", "ext": {"uQNGIDeHlf6IcX1K": {}, "9JrK6Or2xx7rLwrP": {}, "oWiywnxuDLLuIaSx": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 23, "itemCount": 29, "rule": "SEQUENCE"}, "items": [{"id": "ID2UqO0iAXA9dB4i", "sku": "b8HDOJ8TNiP8KgEA"}, {"id": "j3dbRTI0i6dO3zkb", "sku": "Dseh4tJdoGcwMBme"}, {"id": "gqVUaWMJBjrV0p9A", "sku": "7tcHrV0MbJGr4drg"}], "localizations": {"kDuWS05m0pGzazM2": {"description": "BUXnzUEWTiKMJAf6", "localExt": {"AgbiEDMfCckWogE5": {}, "gcfF8AMGZ2FBS93M": {}, "g6TKwdRMraDLrwh3": {}}, "longDescription": "d0ykRGkgqUNIbJMJ", "title": "9ABbKVWO2YEDiqkw"}, "Kbpdk7wlDngNiPPj": {"description": "pSAlZwFGpea5ObBB", "localExt": {"49Km4ClIQmkIdLCv": {}, "NhZ6P8aqZ2yfrC1V": {}, "7ZpJZPHCMqvcYmeD": {}}, "longDescription": "LYEzs2SQUdKr6vgq", "title": "kjycqclNlBORlC8Z"}, "kjsxYtgxplHTPLzy": {"description": "njFZgF3erw7UsyHq", "localExt": {"4bBb0n1JhPUS8BRP": {}, "GV9n769zLJdKMexe": {}, "Jc7NvgTSgKjCxZjK": {}}, "longDescription": "f8NA4cGUaDfy9XnH", "title": "2r0EKrk5VlnKsWCP"}}, "name": "ccAFn5CEPoH6opK5", "rotationType": "FIXED_PERIOD", "startDate": "1986-05-22T00:00:00Z", "viewId": "O8JyX4IE1z3rDwZ1"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'HKsOpyq8agQuz86n' --login_with_auth "Bearer foo"
platform-get-section 'c6jLF9DIW2ncJJKp' --login_with_auth "Bearer foo"
platform-update-section 'qmgvUTr8XAtpOqUQ' 'xzqJZiWi3KQffT5T' --body '{"active": false, "displayOrder": 3, "endDate": "1995-05-06T00:00:00Z", "ext": {"A1xW6okIqmd87ir9": {}, "op4YfGTno5oHzqY3": {}, "DgykA8zBJX0rkOHU": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 83, "itemCount": 74, "rule": "SEQUENCE"}, "items": [{"id": "1k5ZM8btmGsgXNXb", "sku": "pqxh76Af5JSwjw2f"}, {"id": "E2g6jXV7oai2oDm9", "sku": "FaP0HJ98tE4UyoQg"}, {"id": "0b0sGOkzxVt15LKm", "sku": "kQ7YBhsOuJ0ypkkt"}], "localizations": {"2G4eFh2YNsdoxpLT": {"description": "BM9Q8t829Ido1Jyv", "localExt": {"eSRiBq23kyH9jQbH": {}, "WkcVk0X28GS54vl7": {}, "gIKBc7OYTylFRAJK": {}}, "longDescription": "ySnC0cfPl3Z2zSBb", "title": "s4PAV72u8AxE2IQe"}, "oxYV4UcYzswAGpXq": {"description": "QxctuVaqPJGAHEZm", "localExt": {"uQrZ8GaQ4OZ2nDod": {}, "m4TNs8mAj6IKSYFd": {}, "JwgZsRPOzwuDSdGl": {}}, "longDescription": "1A2vaNeDiSqTfmAV", "title": "g50kOdJagEmTuaxl"}, "xgywkbdOsyxX1tfW": {"description": "488oYUT4jyCVJ0V8", "localExt": {"obTlGVThz4bm41oI": {}, "cV33yjPxibDjfF7J": {}, "kjCVpZKMxkFkBtXM": {}}, "longDescription": "U6KRIm5xBoIi99ct", "title": "gFXasxp5h780ktjQ"}}, "name": "w2yXzaQWaF2PqUfb", "rotationType": "CUSTOM", "startDate": "1991-11-09T00:00:00Z", "viewId": "Q161TFjROYJm75VI"}' --login_with_auth "Bearer foo"
platform-delete-section 'uCOCkt2W1DfI8Qtg' 'ODk9K6DcMnyCPn1F' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "ylWdaNV1VaZTkbbu", "defaultRegion": "WiiA4UTDgS2SVEo5", "description": "M80LLbku9GYH4ijq", "supportedLanguages": ["OVM50tCqkZfsSxAb", "DJ7sHCLup8pmEosO", "XglQwwdeLVpmXqRw"], "supportedRegions": ["Vjc3W2ANmE3VVsQ1", "fm9EUdiaRjuLsKZo", "qnpKwhpZVdw5UMa8"], "title": "ymxtEFLwELCY2vId"}' --login_with_auth "Bearer foo"
platform-get-catalog-definition 'APP' --login_with_auth "Bearer foo"
platform-download-csv-templates --login_with_auth "Bearer foo"
platform-export-store-by-csv --body '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["MHDwFVKUC2ecnpUD", "qvLQixPKVSmWa8TG", "ko16XTqHc0cM7ixq"], "idsToBeExported": ["8Tjnxp5Cl8ggaEmC", "cuK2hHviBEWpbusO", "6EyVqstpgZpbz77y"], "storeId": "88rUFum2ZcA8iKcF"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store '0bkfjcTEFXcTwEtn' --login_with_auth "Bearer foo"
platform-update-store 'HxP5pVtN4jNVIdru' --body '{"defaultLanguage": "EA39uCJzsE8WObt6", "defaultRegion": "t0w8LOBxE15JYj4I", "description": "qWK09l4wkrzahXR1", "supportedLanguages": ["sDEDVKDINE3HjCiV", "R1dQ8kuhb4pUwnGp", "tHUplxzaDa9PDwhu"], "supportedRegions": ["31d8eOdtrfq6ECDD", "6OGkuLs9gNpNon6D", "KW9A6AmnQTNFidIm"], "title": "WONTvCPMGLdbYEkn"}' --login_with_auth "Bearer foo"
platform-delete-store 'HPKrZ7TiNBE0HRsE' --login_with_auth "Bearer foo"
platform-query-changes '0GHDOFjrfqJcyxT2' --login_with_auth "Bearer foo"
platform-publish-all 'a7fCFAUzLELiM573' --login_with_auth "Bearer foo"
platform-publish-selected 'TdtWjfVciuLnLsBK' --login_with_auth "Bearer foo"
platform-select-all-records 'GsALPuCOyphUUAV9' --login_with_auth "Bearer foo"
platform-select-all-records-by-criteria '5708zaP0wpZgQEvF' --login_with_auth "Bearer foo"
platform-get-statistic 'zox9wHocX3DRWobE' --login_with_auth "Bearer foo"
platform-unselect-all-records 'oGr8W97KBedcr6PM' --login_with_auth "Bearer foo"
platform-select-record '51z7i0wQ9egK2t46' 'EG8I2lTviKbOgVuN' --login_with_auth "Bearer foo"
platform-unselect-record '3nhkn6QIesNoYqvV' 'sakylHikKkpOjqwg' --login_with_auth "Bearer foo"
platform-clone-store 'KvfXXs8pDqm31AZS' --login_with_auth "Bearer foo"
platform-query-import-history 'Rkuw6q8FgqG46RsF' --login_with_auth "Bearer foo"
platform-import-store-by-csv 'K7eYlSU3vYcHZZjF' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'egVnZOn0tk4IATSI' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'efcqNEn4IZ0Dv6b8' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'WtaMVvLbG04KKnh3' --body '{"orderNo": "jvW0Qp3kTyL4CsLw"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'iWUMcpxn4B6XoTNM' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'uqZTHwo1IAJQpb6r' --body '{"count": 41, "orderNo": "ZeaSHwQuiH3Ozu4G"}' --login_with_auth "Bearer foo"
platform-commit --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Twitch", "count": 4, "currencyCode": "h7jpszuVk6iPdJ2b", "expireAt": "1978-11-27T00:00:00Z"}, "debitPayload": {"count": 86, "currencyCode": "rF9Dg4FcDwBGyBiH", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 66, "entitlementCollectionId": "wZkwEeuzBBRSknxy", "entitlementOrigin": "IOS", "itemIdentity": "GkHG5OIVuGv47XJp", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 52, "entitlementId": "MiopQrVL3ZZTVxqa"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 95, "currencyCode": "14iWk12Jffk8dwKN", "expireAt": "1992-09-25T00:00:00Z"}, "debitPayload": {"count": 96, "currencyCode": "rjaboGomguUqeuZh", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 85, "entitlementCollectionId": "trRbNnGejdTGvZgN", "entitlementOrigin": "Steam", "itemIdentity": "hshSe5YmZXKEQLkM", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 30, "entitlementId": "TS9OIIMErnNTLXHr"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 83, "currencyCode": "FsbhRow4iaYKy0Ij", "expireAt": "1980-08-29T00:00:00Z"}, "debitPayload": {"count": 23, "currencyCode": "gbJ37DN2lDvdh7ok", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 86, "entitlementCollectionId": "l1wMht2Izq7TCUJh", "entitlementOrigin": "Steam", "itemIdentity": "Gp7Fadvo5EzpX0It", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 26, "entitlementId": "sRezyY9GB5sf94AL"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "ZSxTzm8oMSPIHPtq"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 71, "currencyCode": "bww15zZsaYrJAe5K", "expireAt": "1972-05-12T00:00:00Z"}, "debitPayload": {"count": 2, "currencyCode": "QB96ndlO6iPGC9Rh", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 33, "entitlementCollectionId": "MC7V8BEphnRXnSpC", "entitlementOrigin": "Playstation", "itemIdentity": "Amu1dX1NqD20RUvv", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 73, "entitlementId": "8pQswqKLutINusOs"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 38, "currencyCode": "2F6iwkJIYOLarmpW", "expireAt": "1983-04-26T00:00:00Z"}, "debitPayload": {"count": 44, "currencyCode": "DE1K0SvGrMYwPmPX", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 69, "entitlementCollectionId": "LfL2m5rP2A20t6fo", "entitlementOrigin": "Xbox", "itemIdentity": "bf2F9EXOBj7v8LHY", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 44, "entitlementId": "vmD0ekycMKlwJTNL"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 57, "currencyCode": "TZ000rS92594HLvW", "expireAt": "1987-05-29T00:00:00Z"}, "debitPayload": {"count": 5, "currencyCode": "XHtMP0k9L5dREQbC", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 9, "entitlementCollectionId": "fh0gpABFBER6WNcD", "entitlementOrigin": "Xbox", "itemIdentity": "GMMo5DSozCuFsrBM", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 90, "entitlementId": "oOeLfMCYxSeeJOlx"}, "type": "CREDIT_WALLET"}], "userId": "iMup01kyaFwwD7we"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 15, "currencyCode": "uQb4GNQHVZMKGBnz", "expireAt": "1974-06-08T00:00:00Z"}, "debitPayload": {"count": 2, "currencyCode": "suaGIzttTncVBf5g", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 9, "entitlementCollectionId": "GWKpItMt4GszRufk", "entitlementOrigin": "Steam", "itemIdentity": "Ss5YmIejozmG5Hlr", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 11, "entitlementId": "MuV5phhU315LUC6H"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 16, "currencyCode": "32UznXNd6ve29lqq", "expireAt": "1980-10-30T00:00:00Z"}, "debitPayload": {"count": 5, "currencyCode": "pJXTLbYWpqeXjaf1", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 1, "entitlementCollectionId": "5fjNMZjKJ05puX31", "entitlementOrigin": "Oculus", "itemIdentity": "RQGnnW4ugGX6mKBb", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 7, "entitlementId": "TD9xL07ZzzIs3Jke"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Other", "count": 43, "currencyCode": "V3URIRVDYBd6hMB0", "expireAt": "1977-02-23T00:00:00Z"}, "debitPayload": {"count": 59, "currencyCode": "sg7IfMH5Tu1ky1ZY", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 5, "entitlementCollectionId": "yeHmfoFkUDP864sh", "entitlementOrigin": "Epic", "itemIdentity": "S5UOoICxQMit8555", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 18, "entitlementId": "X4Kpi8CJ88aMPGFF"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "RWvLRy58UKWPv3F7"}], "metadata": {"S0wCVlYQi9cfMCeN": {}, "nu6OIG1PPLRDEXLX": {}, "ZWXvqNCHvNpeMjMz": {}}, "needPreCheck": false, "transactionId": "jESLLMPKDXLki6Oz", "type": "5Bygt8Q0RjSf1srB"}' --login_with_auth "Bearer foo"
platform-get-trade-history-by-criteria --login_with_auth "Bearer foo"
platform-get-trade-history-by-transaction-id '7hGwGbUmQmJHNffZ' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'ENs9X0hFMdzryvhc' --body '{"achievements": [{"id": "1YjHmmulSBIElc2C", "value": 6}, {"id": "xiz3fWthJSu2pUII", "value": 42}, {"id": "b5sbX6asrjV7XJUO", "value": 41}], "steamUserId": "vSSp71zEPPfmAQiq"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'RRC2caquMRtQOILc' 'aDqUITBHQR5ISNoF' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'R3GUxdMuvmL0UBfw' --body '{"achievements": [{"id": "zaaeP3Wd0Wrb8s3G", "percentComplete": 100}, {"id": "nnCA5tfK5ushaKTP", "percentComplete": 98}, {"id": "4lpHXrbVBh60NUA2", "percentComplete": 0}], "serviceConfigId": "IJnqtrjCOsE8Vjvz", "titleId": "hJwNX4bhqCjlwrms", "xboxUserId": "SRV86iic1FIMyF7C"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'cNu2DYn6E9Gk51kO' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'TJZluTekDMCGUJvE' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'RxNg8djSb4Vt2vKQ' --login_with_auth "Bearer foo"
platform-anonymize-integration '5vlCdI519Pf2iogw' --login_with_auth "Bearer foo"
platform-anonymize-order 'xM5DZM0dgozmco41' --login_with_auth "Bearer foo"
platform-anonymize-payment '750xdYQg34WUV0Wp' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'msQnp1n4YGumTKOl' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'DOy5vhSkxERZ2AQ1' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'jvXYBar5RMmmGdWl' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform '0wpj5tVfKU3D8WVP' 'EPICGAMES' --login_with_auth "Bearer foo"
platform-get-user-dlc 'jY0rNBbbB9txAvtR' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'QvqJacXR2Rf4noXD' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'FaEUkPUBnB0ZEJH3' --body '[{"collectionId": "ebM71Tg922xiBgHS", "endDate": "1976-09-04T00:00:00Z", "grantedCode": "a0Pz7I1WkIa0oZ1n", "itemId": "XpW1l70pcZgIn4lP", "itemNamespace": "ghHyMEHBzArbyW10", "language": "NKtk-978", "origin": "GooglePlay", "quantity": 28, "region": "4txY0MsPc9EMgf9J", "source": "REFERRAL_BONUS", "startDate": "1992-10-19T00:00:00Z", "storeId": "JU2wEzUYUTmZ8JSM"}, {"collectionId": "eNmRocp400RZe8Bz", "endDate": "1983-04-06T00:00:00Z", "grantedCode": "9aGEI22BTCZs97TJ", "itemId": "I8GPrM24F3celFgM", "itemNamespace": "62HQtgzQhO3nR8j8", "language": "MrV", "origin": "Nintendo", "quantity": 37, "region": "8vmfMYGLt1AjKhh3", "source": "REDEEM_CODE", "startDate": "1996-05-20T00:00:00Z", "storeId": "huAIzBPWBYKAEFTd"}, {"collectionId": "lKNh6GTzKjsCqxx2", "endDate": "1985-12-15T00:00:00Z", "grantedCode": "1J19b5rTfiL2P3r1", "itemId": "a8KIJH33aKkPuWD5", "itemNamespace": "9MgTy1HA58Jt5NaR", "language": "EJtV-Pwhf", "origin": "GooglePlay", "quantity": 56, "region": "YSS4ezBRSiOyRevi", "source": "REFERRAL_BONUS", "startDate": "1986-01-02T00:00:00Z", "storeId": "JiUiDGXgh8BKcLqt"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'RZ93LuR8OEyICvwg' 'wBFehwtdJLdn3R2w' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'o8beVQvgeP9qOHaL' 'GAME' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id '7JEMRPkdTcAzkIln' 'dN5xeayr3vUKMuIi' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'z2MiAAKcvAXnxnH0' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'QIhoJRY807VmBT4w' 'ZXQZZrSsuYiIPei0' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'pXglJYnKkoCAZuol' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'AWnxkImVbDP0QX31' '["gI7VmnGIRMvXe6Bi", "phIFe2bzr6qQw6fS", "ESkM19OPMBb12gpm"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'ShlmIt2nfhUaZGqj' 'slu59GT2E6AacmZR' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'XZm626POXWVj3KP1' 'mX0iYHXBU3Uk2tQm' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids '307IORTyHnLYDAAg' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku '1YA4kZURmoGgxVRM' 'Pf8g1rbhfIMStMnS' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'qrKWYOuITlYS2RYa' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'D9WNKGhbLhjz1v0R' 'BIO2rkJGmPaK6HEV' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'IQJd3930TGewjRyf' 'o4nWVZZbKFsKOmgE' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'hjH2wFzCpxxJLfAg' '5cFT0gHAkltcR3eH' --body '{"collectionId": "FbiAluHv7Hssd05p", "endDate": "1988-08-10T00:00:00Z", "nullFieldList": ["pXjmtpNfCrIj9ntY", "o3dupUHNu8abrVVO", "Kxr9Pa315FKDjG2A"], "origin": "Oculus", "reason": "S7Tq4YIyZAFQ6lZf", "startDate": "1971-08-06T00:00:00Z", "status": "ACTIVE", "useCount": 19}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'VwSaoj1ugjr8mPkr' '3tZ506ERSVy5M3rr' --body '{"options": ["kxu0U9h9gCNVZxHG", "xhZqNXJ6JXSh0Z3S", "WISs1dYrJKmx1BT6"], "platform": "iLFQejNZJNF2hm0T", "requestId": "qBQprHn3whPKU5ab", "useCount": 28}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'qstMuikKc6VNU857' '0siWm3V9sirE0JOQ' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'xWeHypqCWMDPRI2c' 'Ck8zHR8VyCC0EQwE' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories '0cXokXbwKDtVmrYQ' 'u7hZvHfiT9s9pK8H' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'uUY1QQHQ0NCEddJt' 'x6GV01vD7lNLxlpv' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement-by-use-count 'qaB9P9GaukfCEIeS' 'BLhTfzigzHcRuJgY' --body '{"reason": "aj4I8Dzyh1N0JEKN", "useCount": 30}' --login_with_auth "Bearer foo"
platform-pre-check-revoke-user-entitlement-by-use-count 'GuwKn63KIDTkUCqb' 'bHGJGOTvKKRTHDnt' '1' --login_with_auth "Bearer foo"
platform-sell-user-entitlement 'TnAuujPeP9N0vdVB' '5a2XkS3XQfMuzZh4' --body '{"platform": "AhZRe2hgU56xtyJt", "requestId": "nbTDXu7FbleSP5Pc", "useCount": 8}' --login_with_auth "Bearer foo"
platform-fulfill-item 'WNy2tnF2MifJR4hr' --body '{"duration": 20, "endDate": "1974-11-07T00:00:00Z", "entitlementCollectionId": "dJDujYnVnFK6gB6Z", "entitlementOrigin": "Playstation", "itemId": "d2BGBXjNyRCtPOr1", "itemSku": "FU3QZy3gdDms3kb1", "language": "htW0UGJpwQZlXuzu", "metadata": {"3m9u67JjCDwg186h": {}, "GWKfO9MnoT3t99Hm": {}, "cxzjDhTrcBKtU956": {}}, "order": {"currency": {"currencyCode": "hOg8oukDVdweG0sF", "currencySymbol": "HxTHa2k60SzCqUgq", "currencyType": "REAL", "decimals": 13, "namespace": "XfhZTTaCeqGv7meu"}, "ext": {"QhJuq1C6JHkWMSUb": {}, "qByWN2BCnRz9w2nu": {}, "r0B9jKaunAcylsau": {}}, "free": true}, "orderNo": "tsyzC4QaLXp3o4TD", "origin": "Oculus", "overrideBundleItemQty": {"1I4lwXqwPfq3VzHQ": 19, "vCjthJUb7jKuMrFa": 30, "GqxMnoAXRlcq0mYW": 74}, "quantity": 88, "region": "LcM8LaMW0ByjsRUr", "source": "REFERRAL_BONUS", "startDate": "1992-10-02T00:00:00Z", "storeId": "aq1cT88H6RCW8gJm"}' --login_with_auth "Bearer foo"
platform-redeem-code 'GzDlqxtLsR2AGOiP' --body '{"code": "hNt2IdH8aYYUT6mm", "language": "Aw-262", "region": "qxVWlIMY5tTJw4KV"}' --login_with_auth "Bearer foo"
platform-pre-check-fulfill-item '104MtMhKHmSjqPuQ' --body '{"itemId": "ZX5KjdNrEwfWo2Mw", "itemSku": "ulLg4bsO4YHEYLjT", "quantity": 91}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'FLx4rV4CXVMrDYKe' --body '{"entitlementCollectionId": "2eTf1axo16GqT2vS", "entitlementOrigin": "Twitch", "metadata": {"uBquE7xssm4hxczs": {}, "kbSUbOZ9WNl3apJm": {}, "NAbl1g5ZmTTGYRbP": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "8AgyZJ16MMd2bzOr", "namespace": "Tn2huwPgyUzBUWiK"}, "item": {"itemId": "oNGtvyk5xEfrJDxK", "itemSku": "sw5Xl7ZZrDZdbuvC", "itemType": "FBaVcohewKkVuGv9"}, "quantity": 11, "type": "ITEM"}, {"currency": {"currencyCode": "QXkErF0drbYrrFQP", "namespace": "6rW62CtetBW3pvAJ"}, "item": {"itemId": "JieHhveGg97PY0tx", "itemSku": "zvYwv7atn9EQv2Oj", "itemType": "8TFNeGtJGjKbMgCe"}, "quantity": 42, "type": "ITEM"}, {"currency": {"currencyCode": "AYuzrmbWofEaKStq", "namespace": "dKu4ROnONpJ849ch"}, "item": {"itemId": "qeiUGQMwNwDlYSli", "itemSku": "3p8YaAdel3hHMSLA", "itemType": "iscGRWzkCl1ZKuPx"}, "quantity": 20, "type": "ITEM"}], "source": "CONSUME_ENTITLEMENT", "transactionId": "UGRGcCEPjbUy7F82"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'Adu9BYRHrVTehrqg' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'vEtEs2LpE0qfbvdU' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history '8hlDoC9FnxqBlPBY' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'J7X6uVy7FWTSfMi2' --body '{"itemIdentityType": "ITEM_SKU", "language": "qhxA-JOCM", "productId": "PoiYoQ1f1AYq306P", "region": "ysv4VPaZWolXypwu", "transactionId": "cUqqqff2iWi4yP3u", "type": "PLAYSTATION"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'CuLsUGrVQAbhS54Z' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'uQHKersDmJLUHAKt' --body '{"currencyCode": "fXCKOna8DdjtZhh6", "currencyNamespace": "ofsUoRh6r0e0J6vy", "discountCodes": ["rN5bEhmuHgKeWizE", "qPw7YlmV3kES0Hi8", "8UYgSV40OvY7apPC"], "discountedPrice": 32, "entitlementPlatform": "Other", "ext": {"PX04uEIdAwgDobop": {}, "bdJeVCiKs2vLyH9k": {}, "cSBdk7MwQzn28Le5": {}}, "itemId": "neohqhCzroAzWQDv", "language": "e0Z2G2N09VIbbsz2", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 84, "quantity": 87, "region": "GUbSaA00nKxQjYU6", "returnUrl": "KlavIiLxU2I1GyJS", "sandbox": true, "sectionId": "8Hxu8Ju4XSAnlXRY"}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'B9BgSZBvkehRn83B' '0nrW1qx3NJTugVWX' --login_with_auth "Bearer foo"
platform-get-user-order 'z8dv7BiEUqnzxs2d' 'eMF8UAJIHEZv5zyU' --login_with_auth "Bearer foo"
platform-update-user-order-status 'UyNJkvA5xF3zHtZS' 'd3QzXhkrN4pWryt4' --body '{"status": "DELETED", "statusReason": "Nwpp0ni1YfIgLZ4Y"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'IzElrLZOBLHCKmLB' 'aIwlokbAFW8RgBUw' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'BL28BqM8UzvKqeoT' 'iNKGRUMrimGAz6Oh' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'mHOpCdr3WzDm3hJd' 'd6uaO9TiTPnIh2ia' --body '{"additionalData": {"cardSummary": "IBpYC4txul6VKYlN"}, "authorisedTime": "1997-10-20T00:00:00Z", "chargebackReversedTime": "1997-06-25T00:00:00Z", "chargebackTime": "1977-06-07T00:00:00Z", "chargedTime": "1988-12-07T00:00:00Z", "createdTime": "1993-06-28T00:00:00Z", "currency": {"currencyCode": "CPMjr5M3vw1GqUjj", "currencySymbol": "Fp6R8mYZwKftVqSE", "currencyType": "VIRTUAL", "decimals": 38, "namespace": "hiPuDdOPHcN9drwq"}, "customParameters": {"ytieXpIZfr5XDq9d": {}, "GLHjtgE2bTXJxCCF": {}, "qPNDqWrpkWnnova1": {}}, "extOrderNo": "5WVuE5cYVP9tQSa2", "extTxId": "7BnPyq3I1BLtGEZD", "extUserId": "RNkk4DJUofJXK8RG", "issuedAt": "1993-05-12T00:00:00Z", "metadata": {"0zCYRVmbfzwUmsy0": "stUmKdXiiTObNdqk", "Wa13g3pgHx6uPf6j": "QZcYerH933X7iXEE", "M2KOusNEHcI95GGd": "JvucDbs6UdccuM2y"}, "namespace": "kRj3WnyAaUaQBKFe", "nonceStr": "dL2uduXvZUbQQ13F", "paymentMethod": "hD3NExUFipJsUiDa", "paymentMethodFee": 47, "paymentOrderNo": "TlRugM7a2UZgeesi", "paymentProvider": "STRIPE", "paymentProviderFee": 96, "paymentStationUrl": "bP027okM5E8tAajV", "price": 92, "refundedTime": "1998-06-21T00:00:00Z", "salesTax": 5, "sandbox": true, "sku": "j306RDuaSixXEdlo", "status": "CHARGED", "statusReason": "ZBkatNLc42eq0O6V", "subscriptionId": "sXtOlQwj5xPvm7c5", "subtotalPrice": 27, "targetNamespace": "oMHCtzEF9FSeg6WY", "targetUserId": "gtfuqJHrs4e3RnWR", "tax": 91, "totalPrice": 29, "totalTax": 78, "txEndTime": "1995-01-27T00:00:00Z", "type": "xoMrj2J4JGQZAtyj", "userId": "TxnlmSyjEaFH2DRN", "vat": 0}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'HIEqIFEcS0ynIMOY' 'WpUYUQMooiKT57rm' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'bjEnimeR7EFBz43E' --body '{"currencyCode": "9FkOPVu2fDtOjW1i", "currencyNamespace": "SYQbcebBd5wb5H3q", "customParameters": {"ppoCiHMD4iBK2O7q": {}, "YtOHV5hnpjc5CNLn": {}, "nEvo25aEtdjls5oa": {}}, "description": "dseJg7y4Q9CU3fjS", "extOrderNo": "RaXD4HDmdvhMXxiK", "extUserId": "R29LKIhNU43K8bih", "itemType": "APP", "language": "WjHP-Yx", "metadata": {"QTAYGfE6hXZ7XLoW": "CGf0dZEeXBd6mGG6", "SHcZbX2wNnT6A9zo": "smDnXoncy7NZQ4Pk", "APXBCfkE1Fb0y94e": "P7yh0zsKhR60HZwU"}, "notifyUrl": "wk48XK7MXHbEwAvv", "omitNotification": false, "platform": "NzHhvxc4xAPZ86WN", "price": 27, "recurringPaymentOrderNo": "YMimVLzAP6aOzsTq", "region": "EFXUhGAwpYq1UqZy", "returnUrl": "dOB0MThZW6LwcAg5", "sandbox": false, "sku": "BYBVCbi0ifdPyKf3", "subscriptionId": "SwHekWIz4rXlH5jw", "title": "99HxCjXWcaXBcfXX"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'eV7BXefsSgZxSYnV' 'wXqF6K0WA76Kl2mH' --body '{"description": "Hoz6qBQnEDgX49n1"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'xTDFcmOm1sqdIWU6' --body '{"code": "ERylESgf5dXMrPoY", "orderNo": "SohfrLyXMSrC62xY"}' --login_with_auth "Bearer foo"
platform-do-revocation 'tDwflNGfufW5cWeg' --body '{"meta": {"6eSCypsceITTkJGG": {}, "CVF6LrILDLviUCzm": {}, "DAaW5xz1c7ZuZXUC": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Steam", "currencyCode": "PFcyUnKXA3mcyMmX", "namespace": "6WF8jtNAVOYqSH53"}, "entitlement": {"entitlementId": "3YlJ93CCGBXv4fP4"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "PzhcH4UJrrCKvrOA", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 23, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "73jAevOnES6YJLlb", "namespace": "2AfUEEBbqMMKvkOs"}, "entitlement": {"entitlementId": "R1fHUyirMVMOFES2"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "LsYKTmUnKlrOsJmE", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 67, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "N8VNPXNsmwTV8imJ", "namespace": "HNI0l6jJVzF1Oi2s"}, "entitlement": {"entitlementId": "QuWUBBHZonSmzF83"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "uE1pgdHvlQKiR7SD", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 75, "type": "CURRENCY"}], "source": "ORDER", "transactionId": "vOlKT5EIHNhJQq94"}' --login_with_auth "Bearer foo"
platform-register-xbl-sessions 'Re5IM1akNKz9IltQ' --body '{"gameSessionId": "Uku3n32atB0QPQPE", "payload": {"p5UtwUWGt6tooHP5": {}, "kAww01zalTddhAQ1": {}, "pwqnybvUIfuulmee": {}}, "scid": "gRwPPbn7lttd21cS", "sessionTemplateName": "6IVE4fzwG3BHaRcZ"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions '8NK4gkLmvEOaRcqT' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'gF0xtQAXoDoFkmA3' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'fgzcwdgJMjIyGfiN' --body '{"grantDays": 56, "itemId": "uMomEHcU15St4v8r", "language": "y8IyqNVv0KVpXJTM", "reason": "x3Y8Um1iqehObg3O", "region": "Z9j0HDtbqMFlgHKQ", "source": "IRtLfPngD83roOeq"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'E7fcCAeExeQX43Lp' 'mdMiZeyIrA4QUKSJ' --login_with_auth "Bearer foo"
platform-get-user-subscription 'gECzvaWUCA7wKru7' 'ry3AQ2sEHvSxjWoM' --login_with_auth "Bearer foo"
platform-delete-user-subscription '1rNJLM0OOVG5cG6X' 'xENbWqlX7idzjpKD' --login_with_auth "Bearer foo"
platform-cancel-subscription 'fwl6XlCF6YxFMD8t' 'JQwZvUVInos5RK10' --body '{"immediate": false, "reason": "yH89i8ZDPXRL8cbT"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'AntB1STaab1UeibX' 'g7RCe5BtKcwj6Pqq' --body '{"grantDays": 83, "reason": "vS3TfKx6ByTygbtO"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'tcQS4Cmgw1wRUnIV' 'YxY6OhdkrYiCinoV' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'Ozo4Plv1IlTpEhjT' 'FYdzsUNvQAn2LuMj' --body '{"additionalData": {"cardSummary": "LqwmVz3zKsfjz1mF"}, "authorisedTime": "1976-08-24T00:00:00Z", "chargebackReversedTime": "1983-09-09T00:00:00Z", "chargebackTime": "1983-05-11T00:00:00Z", "chargedTime": "1978-09-13T00:00:00Z", "createdTime": "1984-12-18T00:00:00Z", "currency": {"currencyCode": "fMFoXCOguSq2A4R3", "currencySymbol": "wDdSkNfHJtA3QiX9", "currencyType": "VIRTUAL", "decimals": 18, "namespace": "tydbaVb0scd97A0G"}, "customParameters": {"P6djn2Ps3IVT5hUZ": {}, "3cnDq0ddZG0EpfGA": {}, "qHKcSxUc2YgRpk2I": {}}, "extOrderNo": "FGIgIpscUpVAciu2", "extTxId": "XPPUxzXHUvxhvTZc", "extUserId": "vRKoaM4ozSAg8FTL", "issuedAt": "1979-04-30T00:00:00Z", "metadata": {"ByWOJhbocoGlPzdf": "xcC3rpWhSpq0InxM", "LpP7n7M3JXjEvsj5": "WcQ99M1yuXeqV31L", "X2ehcMnM6QtjzQjD": "lUMCGnxZwak7KHnz"}, "namespace": "GASmVzePIroz41oQ", "nonceStr": "CuXeTRyJQrNLTcqL", "paymentMethod": "VTN5Qf4tjPGpu27y", "paymentMethodFee": 47, "paymentOrderNo": "8wTi1v2abpCWytPE", "paymentProvider": "CHECKOUT", "paymentProviderFee": 16, "paymentStationUrl": "9Ze0hL9rPkV5GkSr", "price": 4, "refundedTime": "1992-04-02T00:00:00Z", "salesTax": 85, "sandbox": false, "sku": "47XVzU7qlNVk7qnm", "status": "INIT", "statusReason": "IFgS4fLqlrKGiS3X", "subscriptionId": "xjkyNfj3XgTRTjI9", "subtotalPrice": 29, "targetNamespace": "lh775AQfzNjQ7IuM", "targetUserId": "SY2epRDJjDyMDKQh", "tax": 41, "totalPrice": 64, "totalTax": 92, "txEndTime": "1984-03-17T00:00:00Z", "type": "LNsjdCFtKY0KsxR0", "userId": "rCFkyiQZfMnTbKdw", "vat": 80}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'bQaKFrTv4JWElmOC' 'xqPrq9I3XJWBxTLc' --body '{"count": 83, "orderNo": "W9UlEqtzDd7Sgxdx"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'B5kvtM8ah9bPsksc' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'eGUEX8ERZcKSYLo6' 'y7yJMowQ6LpHCvCY' --body '{"allowOverdraft": true, "amount": 14, "balanceOrigin": "GooglePlay", "balanceSource": "TRADE", "metadata": {"JQwErzjtuP9pUUv7": {}, "qefNMFsZAIqak1zi": {}, "0JSa5cRn31D8ubfd": {}}, "reason": "Xi7BycDPckeGJUgU"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions '8bD5mGFFmKTTUxG0' 'mpmFxxDNXGlGJvHf' --login_with_auth "Bearer foo"
platform-check-balance '{"amount": 60, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"8h1ltyhiSGhfqXhx": {}, "BJ7zLXioAGkWgSDd": {}, "DQvpRfGe3z2rtjWp": {}}, "reason": "JAlKHF0ebxhJ1176", "walletPlatform": "Steam"}' 'WSGyDCKF0LLhO3lG' 'Z7eGOPj2XoFug8BU' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'QUmPHnPumcazKAna' '0ji757aNDFeKnQP2' --body '{"amount": 19, "expireAt": "1980-08-08T00:00:00Z", "metadata": {"sQImTwYkiuxzLrbJ": {}, "0BkGzCNgesQlZZHI": {}, "ZH0iks6kx0adnimP": {}}, "origin": "Playstation", "reason": "OyTuUSD9ImtaPAoc", "source": "REFERRAL_BONUS"}' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform '{"amount": 6, "debitBalanceSource": "PAYMENT", "metadata": {"VVonwz27DWfGRVhb": {}, "ZTvCPrrZCTU5WUJi": {}, "zF69PSsquWUafwbF": {}}, "reason": "PX15633pFgA7i9tq", "walletPlatform": "Other"}' 'WQllYsONpp6QGW56' 'CNiszHE69D1MMoaf' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet '6KlgRtwaM2IoyY1w' 'pIdjcAtTj1IMuuhx' --body '{"amount": 48, "metadata": {"eJjZPAkiWumllU31": {}, "uXPwYxedGHCIkmt4": {}, "bfJOhNaIT0pv7Xeq": {}}, "walletPlatform": "IOS"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view '8gY3c4SryWB4yRaD' --body '{"displayOrder": 47, "localizations": {"ioL8VvEzHGTt9emd": {"description": "CLmzJbdkykVAnmnR", "localExt": {"fUilcKA84d9pMsl7": {}, "zrNJvDiP2hNNEI8Q": {}, "rQ6H1ro5CtU8Ujgy": {}}, "longDescription": "CUpM1JBcTzf4dz1B", "title": "ojPoQg976409vFd5"}, "z9r4nJWUvLp1wxGF": {"description": "747468MXUq3uIffk", "localExt": {"IpPmrWVxNZUvkiU2": {}, "jXSwsBBRopVl38d4": {}, "NZGtk6EmWxC75M88": {}}, "longDescription": "TKhFYkA9aRNDe2Io", "title": "PMSQKcg0OTT9JA0l"}, "l1RimBCiQwuyrI87": {"description": "uSyXP6C0jXS8au2w", "localExt": {"cWYyj3JvHqXp4JR7": {}, "xI59Z9tfGVsglnOx": {}, "OXBfgBLuglkd9LIo": {}}, "longDescription": "shGnFSuHmrqej8PR", "title": "ppYY1vlV0M2g6ore"}}, "name": "qyBzWzCgMMWZuD6t"}' --login_with_auth "Bearer foo"
platform-get-view 'mIR28xVxbtpSKOfi' --login_with_auth "Bearer foo"
platform-update-view 'IP3S6pypZqISn3ms' 'rykQFtW8QGKFZLrI' --body '{"displayOrder": 10, "localizations": {"QcsjFehD6uTDYnqy": {"description": "NgN7GoeMsezFZsTB", "localExt": {"HkgcJ0DcEt23pci6": {}, "xEljer6aGJx5OFp3": {}, "jKEx4aSGdwTPX4ig": {}}, "longDescription": "3NVFFkP7O3F4vsoh", "title": "RWDyGYIVFDbTvRYf"}, "pJ4wM9WZfOOxAzms": {"description": "bhi5QJuc2SNBaOlX", "localExt": {"fgsgBd7MYLLoPZrk": {}, "jRm5Ki0orhXrISEa": {}, "PZHLQkTHvndQsCKA": {}}, "longDescription": "O2JRz3CGwtujkzxi", "title": "dLcAQWGVRg6DVso5"}, "TJCSugdo4XTm8t1Y": {"description": "TWqItjNWXm9sraeM", "localExt": {"A78YSRS2fPy5fpbb": {}, "bMIu9lu18jIMBUM7": {}, "7XmemN8LO03mnFSq": {}}, "longDescription": "9jJTVFoFjxZjh5qU", "title": "R1Pq4a4uaMfd0SQA"}}, "name": "fYIyzHL8jxakuVu5"}' --login_with_auth "Bearer foo"
platform-delete-view 'r5B08VZxI4TU3apn' 'ZXoJ4gI4EQKO8xC4' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 61, "expireAt": "1998-10-05T00:00:00Z", "metadata": {"FsUo3IB2kX5REQZs": {}, "HyXzoIXNf0KbL9Hy": {}, "JttdgfLGO3ummpll": {}}, "origin": "Nintendo", "reason": "GpdobYun8hcO55hV", "source": "DLC"}, "currencyCode": "pmA4ehxNIIlcrZzg", "userIds": ["ameT2mLkkAMjHyI0", "gwMe1AnQVj6QQjZt", "e2Axj0nZHjmoKHJn"]}, {"creditRequest": {"amount": 22, "expireAt": "1980-11-20T00:00:00Z", "metadata": {"C5mxxse4eeuMgEct": {}, "VEux2MSuwsEHlwde": {}, "JyhsHS6YqPudWviQ": {}}, "origin": "Oculus", "reason": "FEb8GnsthmQ2Y6ZG", "source": "REFERRAL_BONUS"}, "currencyCode": "oIcFN5JL9M53Mg0M", "userIds": ["zWS9usxxnMhjv66D", "Mzjv1gSj8kcNhoqc", "yED4prRVibTATxd7"]}, {"creditRequest": {"amount": 89, "expireAt": "1998-09-26T00:00:00Z", "metadata": {"RNATojM7daV0VwR3": {}, "yNKDtMqMrAGpdyF6": {}, "WDHn3ePBxQNz2IUE": {}}, "origin": "System", "reason": "3BD1nnEzoUlUWqP4", "source": "PROMOTION"}, "currencyCode": "50eoaIBrTh0EKkJi", "userIds": ["gaMu07Zek8WObpf0", "UvCnfqsPGgJZyRwi", "oUpvGnkcHgCfaWzP"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "FHYfViEj70KYKIfF", "request": {"allowOverdraft": true, "amount": 80, "balanceOrigin": "System", "balanceSource": "DLC_REVOCATION", "metadata": {"YjUt4F1ZVy2qFfSr": {}, "3psWjOyHLyKe2foq": {}, "sVIfgBTr8RcxRQR0": {}}, "reason": "NYdJzf3TMhSaynVs"}, "userIds": ["ARSG3QQNGNH2K0Uu", "JdeGNquQnaXpDQ5r", "05nZC4Os7hqIH2Ng"]}, {"currencyCode": "U2taDWh9JV5oc5IF", "request": {"allowOverdraft": true, "amount": 15, "balanceOrigin": "Oculus", "balanceSource": "PAYMENT", "metadata": {"wHqFqwVA5mozeeOj": {}, "IFQfXV3YW3ug3nCX": {}, "hD7FUz1iOe0pHa0L": {}}, "reason": "mseIRXeoerZAxbDP"}, "userIds": ["vLfa4b4hTaZBGdX6", "CmSiKPjcwAw5Gdxp", "XU5xJBhIpJ9b0Ap7"]}, {"currencyCode": "6DqPTdurR3MYda0Y", "request": {"allowOverdraft": true, "amount": 89, "balanceOrigin": "Steam", "balanceSource": "PAYMENT", "metadata": {"Znp5d1eSwrG2GBBE": {}, "WrDbQ1ZzhDuLHq9L": {}, "TBstguOdN0O7l3Gb": {}}, "reason": "KPHdDTQDEEE2mTsn"}, "userIds": ["1NwJ71szsNmnqZSW", "dEyOVYrTdDq7IqbT", "Vv8BLsqQW8HSrEm5"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'Y7jI232SjktijiNz' 'TUe8KdizXmrmK0sC' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["UsqxKocHomtjoU1k", "UqRedwIu1TSRr6r8", "mzfMedpcKhvHPlvY"], "apiKey": "anGqEkn9OEVwLWGT", "authoriseAsCapture": false, "blockedPaymentMethods": ["7PauXTrpWAjwatSv", "tPbAFn8oWQcmFkkR", "X6EqadAEIzxld80Y"], "clientKey": "nss7hc3VUxxZIgkT", "dropInSettings": "LqMeJPCbs8jWmTte", "liveEndpointUrlPrefix": "JhwNbwHGG39YAZJ4", "merchantAccount": "HuLfeTfFBTOFFMJ9", "notificationHmacKey": "pq511jZcTK8zmMfy", "notificationPassword": "shYk3b5cAFVo85r1", "notificationUsername": "b8Yp2QnuhQuIdvZd", "returnUrl": "j6AspWBfRnLcLbp7", "settings": "OmcrDJ7u1rrRPcnG"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "89rnNW1Yjfn8lY4D", "privateKey": "nYRxY8ZhHeb0CaPF", "publicKey": "DjrSotKnpJWALpTo", "returnUrl": "j9rgr5RffM5JXvPd"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "zEpDln04F8BQjzob", "secretKey": "hDa8VxKOrfVfBRIf"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "kStOqdXqhDMQ6tBL", "clientSecret": "ljC7gcT3M1DArk4L", "returnUrl": "80aXFY7SQkym9KvK", "webHookId": "MHK5fbqioeoRIplY"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["0DIzRCNAO6ZpqXJm", "PJso6M11LLZWKgWx", "n9YL16HQdtAneXGg"], "publishableKey": "xNg33ZIUrIkfmdXV", "secretKey": "vaPQzzKdFg7N7piT", "webhookSecret": "8VcrXLZnuMNpKEIs"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "3GC9VTK7tkJWFpHt", "key": "7MdKu9Xwn5GHJDGa", "mchid": "trYOMO91CYEjX867", "returnUrl": "n9PT9fR7mMuBXPDK"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "CriRKzTZ7TXAVRnU", "flowCompletionUrl": "VbxEJcKHE764EwhQ", "merchantId": 12, "projectId": 15, "projectSecretKey": "xFKIOGT1WKSmLoA0"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'ILaESC1GJXsoBwqh' --login_with_auth "Bearer foo"
platform-update-adyen-config '0TQXa2j7v3zQJoQL' --body '{"allowedPaymentMethods": ["TAlW75icIKUpXazs", "FrmaGNoi3RPTgWot", "LNz0u8ySxA0yrjz4"], "apiKey": "q7e0EJnADXC2y0DY", "authoriseAsCapture": true, "blockedPaymentMethods": ["iBBQukgQ94ZvPCWc", "MX0ov3U2sKjIeyFS", "97dYD7LkcTKYpCfl"], "clientKey": "6HPy5cJfAV5iOfzw", "dropInSettings": "t3bpxRNt6lKoMjCP", "liveEndpointUrlPrefix": "tEKeBWTm78Fn8TvZ", "merchantAccount": "VTe4L2lXrVPX6r5Z", "notificationHmacKey": "TcnVVOKMApTcWsFR", "notificationPassword": "UlWBp4gBs9UufgsV", "notificationUsername": "bG6TUe3jbuQ7HMPO", "returnUrl": "4ozK705ykRqSPYZg", "settings": "Pm4JLsXVtBOEetHs"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'xAJ8Ny1LRkPU9hrl' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '5nkpEdBe8bYWdok4' --body '{"appId": "UnUEOyP0cPZf5Ovo", "privateKey": "lfI0mqZctohLheRa", "publicKey": "QkfMLFW9B7jHZro4", "returnUrl": "hhwnANAGp8zGqNGr"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'cQyoA1TWPcy83iXf' --login_with_auth "Bearer foo"
platform-update-checkout-config 'YXNdMkdg9TMwxNcQ' --body '{"publicKey": "6CkVi8fqVPRqNbF5", "secretKey": "yLnYSa8xFLvcYexM"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'MMiDFh5RbW021cHN' --login_with_auth "Bearer foo"
platform-update-pay-pal-config '3QbzVuJZH3k54cEx' --body '{"clientID": "xWKtdGTW4FILotv5", "clientSecret": "ycTa0i6ifYP1zfgj", "returnUrl": "sy3VRjX4qA4g9OGo", "webHookId": "Ww1qnCAvdnAcokJ0"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'rzqX2KJcYHgiFDxc' --login_with_auth "Bearer foo"
platform-update-stripe-config 'lBXap6j73doCWxhu' --body '{"allowedPaymentMethodTypes": ["bMXbxNvT6wAffv4u", "zKAwiI4wTxNIefCm", "trxWu293551nQBNK"], "publishableKey": "cqCkUXRj8gQHEe4C", "secretKey": "O370OsbzRKKPd6mj", "webhookSecret": "zLxllUrFYn7cSuO7"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'NxKHUHg0c4X7fHdI' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'TmN9opaF0kh3pCRB' --body '{"appId": "3infEVxArF7TB6A6", "key": "a71zAJpaPeudUtKP", "mchid": "JUmAvxBxJNPlvvYZ", "returnUrl": "w4MWzWFTuNPf5JCS"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'DyYy4e5qoTZxSoZb' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'QUnUxS6m68WL3HDL' --login_with_auth "Bearer foo"
platform-update-xsolla-config '4yx5I0euBsccHPA2' --body '{"apiKey": "v9XP9enfEX7lloLg", "flowCompletionUrl": "IYqxFfSNJlHCjxLN", "merchantId": 27, "projectId": 100, "projectSecretKey": "UlGQsFpy9ZVlLIFw"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'LgT78nootfUs9559' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'ilm3cauhrw9Yn2z5' --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "ADYEN", "namespace": "m7z2Aa24yBTw3wfN", "region": "GyWf3VujS7Bq5bcf", "sandboxTaxJarApiToken": "PW4pPZB9YXltCxyz", "specials": ["STRIPE", "WXPAY", "ALIPAY"], "taxJarApiToken": "nj17t3gHBXvjvzie", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'PlOGfFBlu2ZP0Iki' --body '{"aggregate": "XSOLLA", "namespace": "XGk6BoBmSLi0R7zD", "region": "FMoNTQmlS8lMlY8U", "sandboxTaxJarApiToken": "jprhCxhzW6ZM7LkT", "specials": ["STRIPE", "WXPAY", "WALLET"], "taxJarApiToken": "0sYCnYPT4i4mxc14", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'RfzJwKuc7EpiQEzz' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "5N5osRYO7wbYh7q0", "taxJarApiToken": "2W8tkTURUFmqNc8x", "taxJarEnabled": false, "taxJarProductCodesMapping": {"BS2MaIP7PjngEFgg": "q91cpgvoDBgYfLBd", "GNAZEvbvxqa0K7VU": "bjUnzirnEsxSE4vB", "zG7VK8sWEshmZf5f": "EdvjbyJPQ1qdRcJj"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'sme1OukIfIZVH8q8' 'svV5hMOSfpyJkJlm' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'JmTkFvB7wkY6nuUE' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'GJ3k0HGtpK43uORG' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'REOOwTuY8dhNCDWW' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'PSN' --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'dTiKdva2UREoBSFt' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'CLy2CqgCG7JwJCDq' --login_with_auth "Bearer foo"
platform-public-get-estimated-price 'kzOdFwLJpIPxzLE1' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'V9U1NgpH7Oc44yjR' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["dfqZgv34GqqjelcN", "0GJmPwUTWMx0MiPA", "jnWIhFrqSn4erXEt"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'U1CaD8AqsMCGBNhm' 'Ut6fzYRn85brTu8F' --login_with_auth "Bearer foo"
platform-public-get-app '7cuCPh1TGZJmgWNH' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'WnvOBRCt4onqRo2P' --login_with_auth "Bearer foo"
platform-public-get-item 'nMSRarKg4coy3AFp' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "ULIn21Nf2FNgDWNC", "paymentProvider": "WALLET", "returnUrl": "yh7kgTHlrxKbsV4X", "ui": "trI7SFBEgkwHifMH", "zipCode": "YI581HbF7fMX9lDX"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'YxGRJM92eX42WW2W' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'Kf5urEOpASBicX3Z' --login_with_auth "Bearer foo"
platform-pay 'wzZ7aVhrkmhSOEoz' --body '{"token": "GOv8D0iVxzrec5kN"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'wJAxm0Rdm9l6nIhG' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'WALLET' 'SilDDIsmj4h625dI' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'sMKWBxF9RAIrI81Z' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'R2kNzh60RQNaTEhM' 'XMepgzY9jLiAdMiQ' 'ALIPAY' 'IvFuN1oUsCnBmGMx' --login_with_auth "Bearer foo"
platform-get-payment-tax-value '5F6EhM3dKvIG9MR0' 'ALIPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'c1NgZaoYAaCCeRgt' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'stsU3Qecxo4bQZO3' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'P2f8TTOVf6jrr1OL' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id '606QpqCgxt0NgDSj' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku '1T6EdeYFmrLT0Hbv' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "S4kSSt3CyDgf6eFA", "language": "Qi", "region": "3BfjkFd6MHo6gGQ5"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'mChYoKD7yqCR03Ro' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'vQZhwfjkq9iyTbyD' --body '{"epicGamesJwtToken": "3D01tRpuuyIagSSz"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'EL8H4euLufhQj2KP' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory '3LLxl9Hs2L2wlpKB' --body '{"serviceLabel": 97}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'rfqaoMsGyv1RuSNd' --body '{"serviceLabels": [17, 50, 4]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'HBRUNCPSre5GmZzC' --body '{"appId": "QwilS3IxSjlyvR9P", "steamId": "xG9Lji2Vc88W8aLj"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'IxVGpdOqguxvRwI9' --body '{"xstsToken": "ZBTipMRlhK9DMMaI"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements '4ryVDvNaruZxwTfh' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id '9gEs6GF247cbBLjU' 'r5z03wxB3E9hrE9f' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type '9COFrOr6wJDBwIDs' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlements-by-ids 'HNg6TvNGjwI4TbTw' --login_with_auth "Bearer foo"
platform-public-user-entitlement-history 'BufUorJouduhCEJ5' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'XiKDIE9YugcupLxV' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'BcRkfhRuqkOTHSia' '7oFd1fEmDuyAsQGz' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'wJR5poI718RQnj4i' 'mu6XFfRcWDXhq1Ym' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'Geygr2S4Yw8NmPaB' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'eryzX2hOPVVFqVqx' 'jq1iG3TySOh8SI75' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'oXbyq8FBbur80Qwn' 'lgAVfqz6gQJh8sn0' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'bVWRkvmAemh8lioB' 'R7xTXcEIFod3lCzv' --body '{"options": ["jHzDHOrSJ1vbB7LR", "Hd96dGLgkfrZveFM", "WAFT7l0l1jaOAMCz"], "requestId": "bsoIgmKwwMDQPjUI", "useCount": 29}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement 'aZ8yCB9TVZnuzgvA' 'ZJRm71EC3ENuvD8O' --body '{"requestId": "Psp5Z3ez84KVB7He", "useCount": 99}' --login_with_auth "Bearer foo"
platform-public-split-user-entitlement 'ylYAiZ8c7Zd7EUoe' 'zOLw8C1c5bBB3XZ7' --body '{"useCount": 58}' --login_with_auth "Bearer foo"
platform-public-transfer-user-entitlement 'gqEmXn6U2VeV2emK' '3JecJA4skqCbPxRk' --body '{"entitlementId": "IAFQh9yDdoLE2s7m", "useCount": 36}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'e0cLJu4ljPWlCWTu' --body '{"code": "GO8MnfOQu3wdT4Ao", "language": "sP-ORet", "region": "Slo54zSnRN0zGMwo"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'rzym1z3ZdetOic9A' --body '{"excludeOldTransactions": true, "language": "gyjQ_jbTm_dl", "productId": "yscsMBRLsWadk2OQ", "receiptData": "421q7Nb1vrKthVvU", "region": "5on065ApCkVN3Qch", "transactionId": "uQ6pntxB648ss7rB"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'nvQHAM8gSdIybKUB' --body '{"epicGamesJwtToken": "yHBzfvgtRTPPzwJm"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'KaLCx3gcidEALWe6' --body '{"autoAck": true, "language": "JIXT-NUjS_tK", "orderId": "1Z4fU7ICcaQtuuKU", "packageName": "w3dUwWHhQW3I1y9t", "productId": "jRLVOXBMa0JiIe1A", "purchaseTime": 88, "purchaseToken": "0tUA7EKASk3USNLh", "region": "OBlxRBLgohp8ByTi"}' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements '2F6AyUX8w77riPlP' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'gJcLbeQf9MICxX7x' --body '{"currencyCode": "KyCfgwSPz14asyOd", "price": 0.09804613022608522, "productId": "n77gN8K1FlNkgbFE", "serviceLabel": 9}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'U4meK5grmPBsFH71' --body '{"currencyCode": "VrhsISYtegQbNA2W", "price": 0.6830055055677645, "productId": "rHTkJT1VkChD3n0c", "serviceLabels": [35, 52, 78]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'yAkRvdPR8gx2rX5d' --body '{"appId": "ck8NFKPgT6LMehg0", "currencyCode": "47axU5ktNywRIvO2", "language": "qGac", "price": 0.11779755981609474, "productId": "ejqdktHIO1VdtMSe", "region": "ws1TrU4FhAfKDcDG", "steamId": "5bMTba1tUlFGcP6e"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 'L7EpWtPifmO0JK4d' --body '{"gameId": "P1aZFiSkmhwVVMGk", "language": "ptXc_CgNZ", "region": "ljy5bYQdQ87hUHA0"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'FJZwP8GslMpx3m7l' --body '{"currencyCode": "EXTmnTbtjK9Rsyoq", "price": 0.734985253406141, "productId": "3adB48Jxp2zaItg9", "xstsToken": "jTNZvpFEUI21aSaI"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'sMyLKPPIZx0zdNAa' --login_with_auth "Bearer foo"
platform-public-create-user-order 'gipZwiaBrFrXtGMj' --body '{"currencyCode": "ujfHZB1gMI1B8DXb", "discountCodes": ["NCjIySe36SA5dxAT", "Lv5PkLvraRzChdjD", "37DffTZ7yQz337LL"], "discountedPrice": 66, "ext": {"zKycYrhr4FnNzdT4": {}, "pWwIVXp9avUr6Iyd": {}, "pXW0MO0eT9okl6Ml": {}}, "itemId": "WOl9feWO2bmOikTB", "language": "ibuQ_bqcu", "price": 31, "quantity": 50, "region": "KYgF9OuigDP0Vjmy", "returnUrl": "7j2BrdCAm3slCwaB", "sectionId": "qHpE55sjxBGijw0d"}' --login_with_auth "Bearer foo"
platform-public-preview-order-price 'QtZNonMrPkzUe9Sg' --body '{"currencyCode": "lAJGyZS0I8FevJiT", "discountCodes": ["TR7LxihuOn57io0d", "98HUBp56Q4WETxtG", "Ms5tPKPuK0K4PiMD"], "discountedPrice": 90, "itemId": "dG3yzaNbGeASX83S", "price": 78, "quantity": 3}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'iIbAP2qyUnHnfrEd' 'DfY4TTxu8goZgsX4' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'RwfM4qnUdcQqZ9F1' 'uivPob0YZEuXQACD' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'DQryNf9VGxbOeJe4' 'n9eUlBQZ2UGePWXb' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'AyGiXa9nUsHCVicu' 'J7onrUXVlB6xNel4' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'Bxb9KwFYqdhEVq3h' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'bsApeASfR0ljKxqZ' 'card' 'i8pkn98VtLNkaIQJ' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'fkFDhSeSGXtZU5Su' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'IhMSaDRp17dUWHcj' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'rb6qNeKpOxPrlG9s' --body '{"currencyCode": "vdqsiVTqPbzY1yxl", "itemId": "7zeEpmSPO6KwlJQl", "language": "Vw_EaRs", "region": "wzowk9OoiPdnq9KB", "returnUrl": "qBwiNCsnK8CcO1OH", "source": "bpQZtwW3EwLre1bL"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id '4dJnkRLJbMvOGSd7' 'uMrmQ2SaLd6M7TM3' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'wnJyExuo5z9RAcYg' 'YZb7cAakJpqN6eub' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'dp49JFwXG0EvoSHN' 'C97eEyhnL1QH5AlY' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'RAqCAC2gy1WF9QLN' 'gDxAkwgfB8jIecOx' --body '{"immediate": true, "reason": "cm8YDChFi3zLvfQW"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'C85MxWxvW0veFl3u' 'U1aMD0mczWxc8f1s' --login_with_auth "Bearer foo"
platform-public-list-views '2QPMMZsf2dvKZyHC' --login_with_auth "Bearer foo"
platform-public-get-wallet 'hRPHvdkcKW21B5EF' 'tD2pYaKTz1gcE2XC' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'wTkRUIX6IFHNmB9m' 'YBvtOwxjqyrjDApe' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'N5eAfRqSgH5xIuBT' --body '{"itemIds": ["YOdsvNyk52MQFkVV", "Ef36S7yPgG48bk6P", "wH1tdEAJSqXA0Wv0"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 'zWGvkc6byp3mvyYT' --body '{"entitlementCollectionId": "3GuaZVTxBlw1IWeX", "entitlementOrigin": "Twitch", "metadata": {"47BTww3nBTVmBFZ6": {}, "TIs9bTi2m7eNsYEq": {}, "KkeuLWDfeFeExlOF": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "r9ACnI2sMrEgl7ZR", "namespace": "1HCkf2Sw78lLGKjD"}, "item": {"itemId": "HuXt358gzqRMuMPr", "itemSku": "Iekxq58fikq83hqJ", "itemType": "7HP63Se6kVW5fkl6"}, "quantity": 60, "type": "CURRENCY"}, {"currency": {"currencyCode": "mLBv6nUU0r1rfX9s", "namespace": "tpvJUuyPdzx8BM2w"}, "item": {"itemId": "EgTtLRT5stwQFUEb", "itemSku": "TPQ8p7VMlxEXnqHw", "itemType": "MyKpwphjUXvM1GqM"}, "quantity": 22, "type": "CURRENCY"}, {"currency": {"currencyCode": "Z44UXgdBqtJaRyDl", "namespace": "P9qIZJ5Krx6KkHag"}, "item": {"itemId": "EugKJxkU8Y58COtT", "itemSku": "NjnNSikJDg6ujKvq", "itemType": "0CIa1YCK9PlMeQpr"}, "quantity": 10, "type": "CURRENCY"}], "source": "EXPIRATION", "transactionId": "G0HwUXxQTf5YpDUG"}' --login_with_auth "Bearer foo"
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
echo "1..448"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ListFulfillmentScripts
$PYTHON -m $MODULE 'platform-list-fulfillment-scripts' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ListFulfillmentScripts' test.out

#- 3 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'YsJBEkYUrLv4qUiT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'kFcLBrg2JB0WiCpV' \
    --body '{"grantDays": "BwvAffJ3btt0PpQY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    '3Pnnic80yEO8dL6J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'h10XMUGeDavCKrad' \
    --body '{"grantDays": "JmJFUsU418vAlmfG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
$PYTHON -m $MODULE 'platform-list-item-type-configs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
$PYTHON -m $MODULE 'platform-create-item-type-config' \
    --body '{"clazz": "g9NO1Z2DvnAxH3pS", "dryRun": false, "fulfillmentUrl": "jyCkGKltBNE2UbhN", "itemType": "INGAMEITEM", "purchaseConditionUrl": "NSmtcADoZvd0La7P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'SEASON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'Bx1LQOTCbAPLC3iq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'rkyJFOVaewFcv9h3' \
    --body '{"clazz": "1YxuZnoSesWpLUHj", "dryRun": false, "fulfillmentUrl": "txnvZZeAf7QBuZK5", "purchaseConditionUrl": "GJlBncg8tQnJOKHC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    '16xjJZ4kiU3N8556' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
$PYTHON -m $MODULE 'platform-query-campaigns' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
$PYTHON -m $MODULE 'platform-create-campaign' \
    --body '{"description": "ll2LQWpdESOBV7wZ", "discountConfig": {"categories": [{"categoryPath": "Jsg7wSv9lyRyTdYB", "includeSubCategories": false}, {"categoryPath": "TV1BwgkLDj4pjVkt", "includeSubCategories": true}, {"categoryPath": "18cQ677SotDEtU2x", "includeSubCategories": true}], "currencyCode": "ltUxgbN5eElQNESF", "currencyNamespace": "LD8hCc9onSNjbQEq", "discountAmount": 64, "discountPercentage": 44, "discountType": "PERCENTAGE", "items": [{"itemId": "69PImy6CcwlqJ4MO", "itemName": "3L8x1H5OgzHypgsS"}, {"itemId": "eKCvtPz7jagBG9a1", "itemName": "TZ87ltClc3RDXF50"}, {"itemId": "55tUlenimjIbm0ri", "itemName": "CaNp8dUBDinAB6Hq"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 17, "itemId": "aCgZosntPzP1vXXB", "itemName": "92q150WEIetOXMt3", "quantity": 100}, {"extraSubscriptionDays": 78, "itemId": "3U2Mu9ZGMWou1U0R", "itemName": "VCf3gMWDAodCKqfq", "quantity": 52}, {"extraSubscriptionDays": 96, "itemId": "eexHA70NgJTxjtzg", "itemName": "O7W3taRvJ6lKWJwH", "quantity": 82}], "maxRedeemCountPerCampaignPerUser": 40, "maxRedeemCountPerCode": 34, "maxRedeemCountPerCodePerUser": 39, "maxSaleCount": 1, "name": "SUN4zvBzGh3mhIDN", "redeemEnd": "1981-07-21T00:00:00Z", "redeemStart": "1990-11-08T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["ll4O8ELahcNJqRje", "pck1l0qxRyQ2pi7x", "uAufJakIPXOQznHZ"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'j8oYfWObyNJKVSQs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'aCokoGynp6xcqNKJ' \
    --body '{"description": "nAhrSt96OaARAjHL", "discountConfig": {"categories": [{"categoryPath": "GV3sNxS8uLBZiVRY", "includeSubCategories": true}, {"categoryPath": "rP1ip3jNG68DByf2", "includeSubCategories": true}, {"categoryPath": "MPtigq9zOQOcAqBj", "includeSubCategories": false}], "currencyCode": "bXhOr9OHt6zx1i2W", "currencyNamespace": "3GY7tdh8hHlQyMlg", "discountAmount": 11, "discountPercentage": 12, "discountType": "AMOUNT", "items": [{"itemId": "iUaiyy0aWrshpmb1", "itemName": "C9Al7eWrbNRE0xyY"}, {"itemId": "PUZHyLGQ52IjGpRJ", "itemName": "CUJpscOTkWETSJ04"}, {"itemId": "c5MGInO4yznh2YpZ", "itemName": "vvmziSSiSpXeWOGa"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 11, "itemId": "MyeNRsjQuDEgO3ME", "itemName": "QNL6ijLRvQOgoaBo", "quantity": 29}, {"extraSubscriptionDays": 94, "itemId": "lUda9h9FgvfhiLEA", "itemName": "kA7n6516ydoRT1qZ", "quantity": 57}, {"extraSubscriptionDays": 14, "itemId": "rdTnGrwHeWoQXPFW", "itemName": "FaKbDgrGkv8SVwLy", "quantity": 92}], "maxRedeemCountPerCampaignPerUser": 54, "maxRedeemCountPerCode": 51, "maxRedeemCountPerCodePerUser": 98, "maxSaleCount": 86, "name": "bHJvD0lL7aZUY9d1", "redeemEnd": "1988-03-14T00:00:00Z", "redeemStart": "1973-08-20T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["niVSn1gYGal5NrBt", "T0om9OlGzpF25qu9", "8RhktX6qwkXbCLbh"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    '8t0zPkQWRUlgE0kx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetCampaignDynamic' test.out

#- 18 GetCatalogConfig
$PYTHON -m $MODULE 'platform-get-catalog-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetCatalogConfig' test.out

#- 19 UpdateCatalogConfig
$PYTHON -m $MODULE 'platform-update-catalog-config' \
    --body '{"enableInventoryCheck": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateCatalogConfig' test.out

#- 20 GetLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-get-loot-box-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetLootBoxPluginConfig' test.out

#- 21 UpdateLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-update-loot-box-plugin-config' \
    --body '{"appConfig": {"appName": "dHlA4AxeEIfUxJ2x"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "SNNBxCeN3pGn46fG"}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateLootBoxPluginConfig' test.out

#- 22 DeleteLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-delete-loot-box-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteLootBoxPluginConfig' test.out

#- 23 UplodLootBoxPluginConfigCert
$PYTHON -m $MODULE 'platform-uplod-loot-box-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UplodLootBoxPluginConfigCert' test.out

#- 24 GetLootBoxGrpcInfo
$PYTHON -m $MODULE 'platform-get-loot-box-grpc-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetLootBoxGrpcInfo' test.out

#- 25 GetSectionPluginConfig
$PYTHON -m $MODULE 'platform-get-section-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetSectionPluginConfig' test.out

#- 26 UpdateSectionPluginConfig
$PYTHON -m $MODULE 'platform-update-section-plugin-config' \
    --body '{"appConfig": {"appName": "dYy9Y9OCSmmT3WKi"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "Nv2Ar8yXV6qf6v5S"}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateSectionPluginConfig' test.out

#- 27 DeleteSectionPluginConfig
$PYTHON -m $MODULE 'platform-delete-section-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'DeleteSectionPluginConfig' test.out

#- 28 UploadSectionPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-section-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'UploadSectionPluginConfigCert' test.out

#- 29 GetRootCategories
$PYTHON -m $MODULE 'platform-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetRootCategories' test.out

#- 30 CreateCategory
$PYTHON -m $MODULE 'platform-create-category' \
    'eWPZ8yhwQ0gIdj1l' \
    --body '{"categoryPath": "TJdNLmAvEdEBVAU3", "localizationDisplayNames": {"rbkv8V98cupW0L5W": "siuITRMSPOUfWQwr", "4PYf48r66MaToxBi": "liy2vtRkpqL6KrVc", "Nz83J57t6OcYPQ5b": "k5IeuAi3zWFGorCb"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreateCategory' test.out

#- 31 ListCategoriesBasic
$PYTHON -m $MODULE 'platform-list-categories-basic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'ListCategoriesBasic' test.out

#- 32 GetCategory
$PYTHON -m $MODULE 'platform-get-category' \
    'ncoj5RvEtXiKyUGd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetCategory' test.out

#- 33 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'NfMiwgSvsTRmJsOm' \
    '0wVFyHvFhRMCFJuA' \
    --body '{"localizationDisplayNames": {"0DEMgykqqjoHTpIP": "MSRAuPI7mSZQ5UDm", "1q51PlW2HG8LAiIz": "uo321Ll90IBFsSb3", "FsV2PnCs9R0D5jZE": "wxcow6L7c3COEP4A"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateCategory' test.out

#- 34 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'Zx70uwV4XgvGTMHk' \
    'XeEwuFJf7tbq5Kik' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeleteCategory' test.out

#- 35 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'DE7hWvT5bzcfzIpL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetChildCategories' test.out

#- 36 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    '2pWB4XsdrxIF6kEA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetDescendantCategories' test.out

#- 37 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'mKGNEmFPcUALNziO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryCodes' test.out

#- 38 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    '9Bz2wx4kDAm8XIle' \
    --body '{"codeValue": "iujtv2NdQTYoHZog", "quantity": 99}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'CreateCodes' test.out

#- 39 Download
$PYTHON -m $MODULE 'platform-download' \
    '3Pr3mXZO1PnbSlfV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'Download' test.out

#- 40 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'RlAI8F2f3mEv09kA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkDisableCodes' test.out

#- 41 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'A5hnQtd4bcivHGIE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'BulkEnableCodes' test.out

#- 42 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'plRpcHDWcIoJ45L0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'QueryRedeemHistory' test.out

#- 43 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'Ze3YamxKDSZTl4Ui' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetCode' test.out

#- 44 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'JSCbG4UmG3TkMTzO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DisableCode' test.out

#- 45 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'cBIciiKwRs1E7sH2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'EnableCode' test.out

#- 46 GetServicePluginConfig
eval_tap 0 46 'GetServicePluginConfig # SKIP deprecated' test.out

#- 47 UpdateServicePluginConfig
eval_tap 0 47 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 48 DeleteServicePluginConfig
eval_tap 0 48 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 49 ListCurrencies
$PYTHON -m $MODULE 'platform-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'ListCurrencies' test.out

#- 50 CreateCurrency
$PYTHON -m $MODULE 'platform-create-currency' \
    --body '{"currencyCode": "G9MJ6F7Rr7O15jqe", "currencySymbol": "KssQpme6eyM48tE7", "currencyType": "REAL", "decimals": 95, "localizationDescriptions": {"JRsXNeveQXqnFRYm": "EIX40XOUoLOa7oDz", "00gxcoaH6u9TVf4D": "vEzpoPRiClZ6rlwX", "99AHMLHqguYykVWz": "NwPcvGyieBsRUduW"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'CreateCurrency' test.out

#- 51 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    '5lxSlorWEGN5bPGS' \
    --body '{"localizationDescriptions": {"OSiiItrSrEJMBAIw": "TLkrMDFQfpQ9o0GJ", "MTfqRRaZozM8xCBo": "aS2FMwfWNCbN5Gel", "VOU0hHnsCl5k6Jxh": "5mkmQzKg0jWCjpGw"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdateCurrency' test.out

#- 52 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'h7pLAi5JmzvM6JFK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteCurrency' test.out

#- 53 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'B8ikHpl3sNRaDEC2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetCurrencyConfig' test.out

#- 54 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'OkXA3WqypoOw0H2s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetCurrencySummary' test.out

#- 55 GetDLCItemConfig
$PYTHON -m $MODULE 'platform-get-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetDLCItemConfig' test.out

#- 56 UpdateDLCItemConfig
$PYTHON -m $MODULE 'platform-update-dlc-item-config' \
    --body '{"data": [{"id": "0sibQNBz81zRPntx", "rewards": [{"currency": {"currencyCode": "pgi7tXIcNEcGJjOC", "namespace": "Xpuix5vnPeTu9evb"}, "item": {"itemId": "Rov7Bm40CtZiAxk4", "itemSku": "3DGV1SCkw8U0d4Fv", "itemType": "VmPMtpRMWSQ8Szi1"}, "quantity": 71, "type": "CURRENCY"}, {"currency": {"currencyCode": "rGidRmR5BGRJhFwx", "namespace": "mkGfPI3j4luXQuuL"}, "item": {"itemId": "tYa86kvL6cBZQssU", "itemSku": "UXOsXMNdvW1hbvGe", "itemType": "nRbm3QtsY5WaKM5Y"}, "quantity": 1, "type": "CURRENCY"}, {"currency": {"currencyCode": "pYrmeMIHLS8egV8X", "namespace": "hgDjbrum8UxcutmV"}, "item": {"itemId": "g8APWKxoj6MF68Vu", "itemSku": "KDoklYmkytCAH8Ji", "itemType": "qe7gfV1G6bYgIbVK"}, "quantity": 32, "type": "CURRENCY"}]}, {"id": "Kgew2mHDksA6Mv9N", "rewards": [{"currency": {"currencyCode": "zs19eBq9a1L8S1yd", "namespace": "uOwscICro6P8FWIP"}, "item": {"itemId": "eqaBeD2uBAvIXEc2", "itemSku": "CCgYcFo9A93o22Ug", "itemType": "ObCOiBWdw2b031dm"}, "quantity": 68, "type": "CURRENCY"}, {"currency": {"currencyCode": "1MOpmm04BlZUAlYn", "namespace": "CT11qD03er5mdraK"}, "item": {"itemId": "47FdxXisVlo3aVOG", "itemSku": "ARFDJcGWy826ilCx", "itemType": "AxQUM5DyrPfBmpZI"}, "quantity": 53, "type": "ITEM"}, {"currency": {"currencyCode": "UZqVR5FWGfH66eFC", "namespace": "MTsLA8vYVvrIAEeh"}, "item": {"itemId": "UV0jsjAyVgxS54NN", "itemSku": "s3XdhMbQX9D1znEW", "itemType": "w9p7g4UsQCTKDh5n"}, "quantity": 50, "type": "CURRENCY"}]}, {"id": "yo9tUptiyZzRX8Y4", "rewards": [{"currency": {"currencyCode": "rxRWZPe4ZLAQWuBJ", "namespace": "wxObZqMGxhffy9cH"}, "item": {"itemId": "rLYfftad99JDcnn7", "itemSku": "f2d8SOWP2dw6Uy88", "itemType": "WpQalG38VOo82aLD"}, "quantity": 0, "type": "CURRENCY"}, {"currency": {"currencyCode": "RaGeM8yxRfejqSbV", "namespace": "gLd1FoyNFGpu5r2K"}, "item": {"itemId": "0IvVg5LwUygH98dz", "itemSku": "TL8azKCCNBZpwRFN", "itemType": "Yxx2dr6DDuDHXcfv"}, "quantity": 50, "type": "ITEM"}, {"currency": {"currencyCode": "XJURX3XwhOlgcpcO", "namespace": "IxqCMSpZxby2J9vG"}, "item": {"itemId": "OUeSeGb02vDPUpv5", "itemSku": "VEdIG82dpIbfxVFf", "itemType": "dvKQVgPQw3MVXe4x"}, "quantity": 57, "type": "ITEM"}]}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'UpdateDLCItemConfig' test.out

#- 57 DeleteDLCItemConfig
$PYTHON -m $MODULE 'platform-delete-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'DeleteDLCItemConfig' test.out

#- 58 GetPlatformDLCConfig
$PYTHON -m $MODULE 'platform-get-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetPlatformDLCConfig' test.out

#- 59 UpdatePlatformDLCConfig
$PYTHON -m $MODULE 'platform-update-platform-dlc-config' \
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"DWHRHCCVDBRjPUQW": "YVxGQVFJlDDJ7z4P", "b5jyGID39Ung1D57": "FjYKlJiRIvhej77O", "SPwdzMSmrSvQdsAd": "TUGpd8KFrXKFA2gd"}}, {"platform": "OCULUS", "platformDlcIdMap": {"YBaRC7T5qSl7WN3n": "cPkqiTKzz72PKXjS", "hM2DvesmMIbiQfaH": "xl2YUNRLRjgKqSSY", "gZnVfa8govttlpFA": "q8oebnS4Y2zkGYTr"}}, {"platform": "OCULUS", "platformDlcIdMap": {"yJIveX52r6Inl9VT": "JB9Al3mn2DsHDHzS", "VJzhU5Z44zgZ1fie": "Ldl3Y82DOj5kPuNR", "ZZaUccuBYep9n7b1": "7fsblalJrwQiU3DD"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'UpdatePlatformDLCConfig' test.out

#- 60 DeletePlatformDLCConfig
$PYTHON -m $MODULE 'platform-delete-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeletePlatformDLCConfig' test.out

#- 61 QueryEntitlements
$PYTHON -m $MODULE 'platform-query-entitlements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'QueryEntitlements' test.out

#- 62 QueryEntitlements1
$PYTHON -m $MODULE 'platform-query-entitlements-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'QueryEntitlements1' test.out

#- 63 EnableEntitlementOriginFeature
$PYTHON -m $MODULE 'platform-enable-entitlement-origin-feature' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'EnableEntitlementOriginFeature' test.out

#- 64 GetEntitlementConfigInfo
$PYTHON -m $MODULE 'platform-get-entitlement-config-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetEntitlementConfigInfo' test.out

#- 65 GrantEntitlements
$PYTHON -m $MODULE 'platform-grant-entitlements' \
    --body '{"entitlementGrantList": [{"collectionId": "0xZFH1fHFLSr0O4r", "endDate": "1986-02-21T00:00:00Z", "grantedCode": "TbFDj2L2McvCrrR7", "itemId": "h9uKLXDaRf3pxKtJ", "itemNamespace": "bRY5luCwKrt6wn3y", "language": "XsQ_CJOz-pf", "origin": "Twitch", "quantity": 67, "region": "8fBAeRa1R6ksxLYG", "source": "IAP", "startDate": "1985-12-01T00:00:00Z", "storeId": "OJfvV6SuHovoQlk5"}, {"collectionId": "wL2oXDZ20Bw2H4tz", "endDate": "1995-10-24T00:00:00Z", "grantedCode": "kB2PAGJqOrkdlZB2", "itemId": "46OY0dPVMd2WDUVE", "itemNamespace": "QTpfyAIoF7qsANBb", "language": "dlh-qOCH_131", "origin": "IOS", "quantity": 60, "region": "imVMh3i7j095rDL6", "source": "IAP", "startDate": "1977-09-09T00:00:00Z", "storeId": "MrrVIehVCf3AwIzU"}, {"collectionId": "dQ6sTrUg7Z0SLrZr", "endDate": "1971-06-14T00:00:00Z", "grantedCode": "NLBUSrFnzE6yR1wL", "itemId": "TgjsnB2LFVrZRrOn", "itemNamespace": "tm2KjbfCOuW3dBmF", "language": "uvK-InmB-132", "origin": "Oculus", "quantity": 95, "region": "TSUppvO3QG68KeD7", "source": "GIFT", "startDate": "1992-03-16T00:00:00Z", "storeId": "EEVDAg045BvtPd7i"}], "userIds": ["ibq3Qcrtt8L5dIeb", "sw7EjkMnJSziEA43", "bBA3sd51mDooH53v"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GrantEntitlements' test.out

#- 66 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["WqIMJdrqHIsJ98WR", "jqYieXRthQZvzRi7", "pqpajYEHs9TIkcnr"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'RevokeEntitlements' test.out

#- 67 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'J64BOKqywS6DKNSe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetEntitlement' test.out

#- 68 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'QueryFulfillmentHistories' test.out

#- 69 QueryIAPClawbackHistory
$PYTHON -m $MODULE 'platform-query-iap-clawback-history' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'QueryIAPClawbackHistory' test.out

#- 70 MockPlayStationStreamEvent
$PYTHON -m $MODULE 'platform-mock-play-station-stream-event' \
    --body '{"body": {"account": "b2UMWOgVeYkCvqq0", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 39, "clientTransactionId": "y9eALKWinUJ7bAuU"}, {"amountConsumed": 74, "clientTransactionId": "L7DJCxvzZnh8oBAk"}, {"amountConsumed": 79, "clientTransactionId": "p0NCKWNkLU5ty3uQ"}], "entitlementId": "a7Fl3ZhSMLtrwnjT", "usageCount": 73}, {"clientTransaction": [{"amountConsumed": 3, "clientTransactionId": "VDlh112byTYCDBnA"}, {"amountConsumed": 45, "clientTransactionId": "7WJQFzBCD9S03D7J"}, {"amountConsumed": 76, "clientTransactionId": "44PDlVK8taScpV0N"}], "entitlementId": "tCxDDz5rxt6LflBJ", "usageCount": 19}, {"clientTransaction": [{"amountConsumed": 2, "clientTransactionId": "okLAaL4oAF2lqx8y"}, {"amountConsumed": 27, "clientTransactionId": "DjSWiSXsV5rJ8eZX"}, {"amountConsumed": 100, "clientTransactionId": "1TLMZnNL3DQK45IA"}], "entitlementId": "tbyUDDSJSV8pzl1l", "usageCount": 11}], "purpose": "MJXIuLWYb2iHHVN0"}, "originalTitleName": "ZBgvrigXUT4fRbaw", "paymentProductSKU": "D5yOvjgOopQfbXmt", "purchaseDate": "F0WFH7F2InhxtynU", "sourceOrderItemId": "juBCxkb2oF99xI1V", "titleName": "VtVrVT6Hn8B2d1hZ"}, "eventDomain": "UnoQwg5uqgoHaFyo", "eventSource": "czck0qJsgZPfuelA", "eventType": "iZBZcQGHHGI7csI8", "eventVersion": 9, "id": "YCpDIJG42ILhUoCh", "timestamp": "8lmKKocC5Ea29Jhf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'MockPlayStationStreamEvent' test.out

#- 71 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'GetAppleIAPConfig' test.out

#- 72 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    --body '{"bundleId": "FGN964J8WOgsAj2R", "password": "mf1DXvAIkzTRNRVy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'UpdateAppleIAPConfig' test.out

#- 73 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'DeleteAppleIAPConfig' test.out

#- 74 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'GetEpicGamesIAPConfig' test.out

#- 75 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    --body '{"sandboxId": "eEGu1ICOCmLAmcaE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UpdateEpicGamesIAPConfig' test.out

#- 76 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteEpicGamesIAPConfig' test.out

#- 77 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'GetGoogleIAPConfig' test.out

#- 78 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    --body '{"applicationName": "FBKgy92LYqtQcDN7", "serviceAccountId": "OMCehk42acy8wsWa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UpdateGoogleIAPConfig' test.out

#- 79 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'DeleteGoogleIAPConfig' test.out

#- 80 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UpdateGoogleP12File' test.out

#- 81 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GetIAPItemConfig' test.out

#- 82 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    --body '{"data": [{"itemIdentity": "PyppR3ztPSALA8Ll", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"NEpAPedzI2Adlqiy": "EJIQcbZJJ3AhkrMi", "0bnppEJFISze88rG": "Er3cilJWhaW6jNsM", "94E2FQb6S0VmaTR7": "E3mkDSQkgVMhLbM6"}}, {"itemIdentity": "H1MnNSKd0KStITvG", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"tzwjGtGTr238G8Ae": "vk3k14782W2oNo3X", "4m6wms9SPaHlqtDP": "ry2vMON7sdhlilfp", "DT8o2iFrYtGfCZCc": "rvsV2I4X26p21iDB"}}, {"itemIdentity": "ZGJ8ZMLwPJ871nV5", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"b31AZzwiQBaGdS41": "VRIyAHjYxVhCbXbe", "BEoTlfR33jqIRoXc": "CPaLXJM2B9bMohkW", "sFKIdycYHQcu7JkK": "BcLFRf50Y7ME2QmY"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateIAPItemConfig' test.out

#- 83 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'DeleteIAPItemConfig' test.out

#- 84 GetOculusIAPConfig
$PYTHON -m $MODULE 'platform-get-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetOculusIAPConfig' test.out

#- 85 UpdateOculusIAPConfig
$PYTHON -m $MODULE 'platform-update-oculus-iap-config' \
    --body '{"appId": "iYqap7masUcayqmp", "appSecret": "7vhz1T6cSrZL2CgH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'UpdateOculusIAPConfig' test.out

#- 86 DeleteOculusIAPConfig
$PYTHON -m $MODULE 'platform-delete-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'DeleteOculusIAPConfig' test.out

#- 87 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetPlayStationIAPConfig' test.out

#- 88 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    --body '{"backOfficeServerClientId": "xdmYDj9vZNgfI1Ae", "backOfficeServerClientSecret": "YHe8WPQGPclChxLf", "enableStreamJob": false, "environment": "HGGAhfWaXqkA5fuV", "streamName": "YOsMFo9tnqa4LEWG", "streamPartnerName": "g1r4nW4pBcPPaiaM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdatePlaystationIAPConfig' test.out

#- 89 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'DeletePlaystationIAPConfig' test.out

#- 90 ValidateExistedPlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-existed-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'ValidateExistedPlaystationIAPConfig' test.out

#- 91 ValidatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-playstation-iap-config' \
    --body '{"backOfficeServerClientId": "1og5rxUjGPKKLMoA", "backOfficeServerClientSecret": "y1stmxPFz0i1IK3Q", "enableStreamJob": true, "environment": "2OwFSebBkXkaxtY9", "streamName": "7TMJH8bO4GDHT6Za", "streamPartnerName": "UUkvlTKAhrxqHw7f"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'ValidatePlaystationIAPConfig' test.out

#- 92 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'GetSteamIAPConfig' test.out

#- 93 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"appId": "813qNjzlcxXsmGGc", "publisherAuthenticationKey": "JhauxfhVKIbRvUny"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'UpdateSteamIAPConfig' test.out

#- 94 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'DeleteSteamIAPConfig' test.out

#- 95 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'GetTwitchIAPConfig' test.out

#- 96 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    --body '{"clientId": "ElHPuQE3Gc8bY4IH", "clientSecret": "0OXHZP6VVB7qjDHM", "organizationId": "S49dkv8vxyg6giNK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'UpdateTwitchIAPConfig' test.out

#- 97 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'DeleteTwitchIAPConfig' test.out

#- 98 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'GetXblIAPConfig' test.out

#- 99 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    --body '{"relyingPartyCert": "zeFnlgGRgYK3SeYv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblIAPConfig' test.out

#- 100 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'DeleteXblAPConfig' test.out

#- 101 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateXblBPCertFile' test.out

#- 102 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'ULYNIhs5PZGTJmgo' \
    'fq7nlF5Ch8J2Qs99' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DownloadInvoiceDetails' test.out

#- 103 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    '0APOU4hcdwlnsTap' \
    '2RJpHtncLywP3WlL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GenerateInvoiceSummary' test.out

#- 104 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'mNdQGk6vneHoB1PX' \
    --body '{"categoryPath": "O1vT1AonFO3syvkY", "targetItemId": "d78GsJGLbnb4Nvw7", "targetNamespace": "fnm4MnOqnqNerQoH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'SyncInGameItem' test.out

#- 105 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'iDIJayvSNt8EQXsM' \
    --body '{"appId": "bYi1yEI9ychtyhjZ", "appType": "DEMO", "baseAppId": "eDCKT4ilZB8apDTR", "boothName": "3aL9sunWp7V1s8Lm", "categoryPath": "Xm0FaJMIjgzU02nZ", "clazz": "WwBdEFpfccauYDc8", "displayOrder": 80, "entitlementType": "CONSUMABLE", "ext": {"rUBL6dDTVwPIt1hr": {}, "g2mhbI0NDshb7ZzQ": {}, "uBPyNi1GhZHEj6p5": {}}, "features": ["tQoIrpvmM19X4zFO", "vdRTpGmBUjfEU9vL", "grjk5wzdksOUku8d"], "flexible": true, "images": [{"as": "H96tuVfQwYIqDWqb", "caption": "PmwQw8J7na1POTXh", "height": 83, "imageUrl": "LRU5prAdqnnPOiTV", "smallImageUrl": "zAeQq6rnWJoTpYoe", "width": 90}, {"as": "uHaWnO98YwqHZnED", "caption": "kfmNbDTMGgET2yS6", "height": 58, "imageUrl": "VKxCMxuf0P9r5f6f", "smallImageUrl": "dmyi4kQnOFbBtvBw", "width": 54}, {"as": "1hUgtONCIoZ2rkom", "caption": "Sj52mAIMo6EW9Qhz", "height": 96, "imageUrl": "Nalwgvju62rPFMbE", "smallImageUrl": "1cW57GaNZLT1z0Gq", "width": 60}], "inventoryConfig": {"customAttributes": {"viFWmezrQOWH03zy": {}, "r7kRbC31YMJfRiD7": {}, "djt1VeOFBDA3gvCR": {}}, "serverCustomAttributes": {"foBijpbMblGWnp94": {}, "a6GKY0BrHiWs0B0R": {}, "hxQtgVgbN8kr872h": {}}, "slotUsed": 74}, "itemIds": ["W3JVdYpfHOYoLva2", "c4JscEQfBFZXcSXp", "U81S5H9XsZyvZOFJ"], "itemQty": {"5RrFZYcwfQ1Q2Bbc": 19, "G1dD1vECBb01VFFh": 82, "4bmK8kOKcEoCRjQJ": 23}, "itemType": "SUBSCRIPTION", "listable": true, "localizations": {"p42OS9iGNElTpMlv": {"description": "RDZSIuM0OXOHPluv", "localExt": {"sry8AKSZxOhUhl3Y": {}, "0EshaG0uDiJNUuxK": {}, "22saWaGvrzBdLvFU": {}}, "longDescription": "BZDnVrcwbsD0RDLx", "title": "WgEWwoHpV8E1xQZL"}, "a7Kw77UpCxNyx1jj": {"description": "dxNePPAJ6Z9UzqIh", "localExt": {"ZZiK0QEG6C9w4lVR": {}, "NOF1Bg6OHZzvdZHo": {}, "Im4tKNhPjNIQGFxG": {}}, "longDescription": "wgnSiZtChE0uof77", "title": "AAPI5tdPeFz9pGYs"}, "LNEGrfy9qHKufJfk": {"description": "0MeG3qYJr6PuCVK9", "localExt": {"WmDAdpLVTVsj9pDi": {}, "yybXY4v7JRFMRaeI": {}, "aQuPWPlkxeotrNak": {}}, "longDescription": "KGvOSvpmZZdlNXdx", "title": "2kWmSqodNZgfQyDV"}}, "lootBoxConfig": {"rewardCount": 97, "rewards": [{"lootBoxItems": [{"count": 94, "duration": 21, "endDate": "1998-03-21T00:00:00Z", "itemId": "aWj58Othvd3jzMDA", "itemSku": "f40gKSizvmxts5HS", "itemType": "QvRAPG9JoVSLrbs5"}, {"count": 28, "duration": 17, "endDate": "1989-02-19T00:00:00Z", "itemId": "kjpkOgRCC7qfz5jV", "itemSku": "7NTRYld9FJJ10goN", "itemType": "q8uq79Du28SRRAMa"}, {"count": 87, "duration": 40, "endDate": "1987-09-07T00:00:00Z", "itemId": "aqjKzWDAauqLKarc", "itemSku": "LQRQtC927GneBM8L", "itemType": "vzgyIVzGFBLJ5vbC"}], "name": "9NfLTFJGOzAIAqpm", "odds": 0.17639617578945144, "type": "REWARD", "weight": 87}, {"lootBoxItems": [{"count": 7, "duration": 17, "endDate": "1987-09-29T00:00:00Z", "itemId": "Ss4s7u1VUuLmenyx", "itemSku": "TQVkEg5wouUKa35m", "itemType": "8oH9zCfw7mCMkbvS"}, {"count": 70, "duration": 76, "endDate": "1977-07-04T00:00:00Z", "itemId": "JROcwVmGyrBpnTPF", "itemSku": "4VrRiFSPs2ZMcVFc", "itemType": "rixULzSeTnUWGxxf"}, {"count": 28, "duration": 78, "endDate": "1979-10-07T00:00:00Z", "itemId": "GpSsyEPDWHcqfYp2", "itemSku": "EFxEaEHCGtg812NQ", "itemType": "b5Glh8srTlTj61Wd"}], "name": "V2XUo1BO1rE7E12F", "odds": 0.00798297106662349, "type": "PROBABILITY_GROUP", "weight": 54}, {"lootBoxItems": [{"count": 0, "duration": 31, "endDate": "1978-08-02T00:00:00Z", "itemId": "5jo9nJoKEb8tHmFw", "itemSku": "LGan2SrKckNxLWH6", "itemType": "rjhRL9uxoV5Oe8kt"}, {"count": 24, "duration": 95, "endDate": "1973-10-20T00:00:00Z", "itemId": "PEo1xBuRSv6Vizgt", "itemSku": "OXZy9cQ6B074dTJZ", "itemType": "qeOllKQNwJUGtC0t"}, {"count": 55, "duration": 72, "endDate": "1974-09-12T00:00:00Z", "itemId": "xn1ay6ruu7PYWHOD", "itemSku": "Rb6skOj0lfYFGnQC", "itemType": "AWidWPjYgyebU6rH"}], "name": "FirnUpZ9UJ4N78qH", "odds": 0.7301042354825429, "type": "REWARD_GROUP", "weight": 99}], "rollFunction": "CUSTOM"}, "maxCount": 86, "maxCountPerUser": 27, "name": "xd1gqlwx9CE4Wcsm", "optionBoxConfig": {"boxItems": [{"count": 48, "duration": 40, "endDate": "1985-12-27T00:00:00Z", "itemId": "kIgcwiDWQFghmIi6", "itemSku": "fphDw3p9QWqwTF2p", "itemType": "OJsY86xAf5y1iy01"}, {"count": 64, "duration": 41, "endDate": "1976-11-24T00:00:00Z", "itemId": "EEXlKiTIDgP7wuXQ", "itemSku": "dfW99JglScoOlkkB", "itemType": "xiXf8OBQRqXWXQ3J"}, {"count": 7, "duration": 62, "endDate": "1996-08-28T00:00:00Z", "itemId": "dFz8pc0EEziE5yIv", "itemSku": "ijq9ix16vo60jgvw", "itemType": "V3C9hJ1kSZonK02W"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 75, "fixedTrialCycles": 5, "graceDays": 61}, "regionData": {"uzuc6QDRMGdBPbUy": [{"currencyCode": "HTYPS8CGKXGon2ec", "currencyNamespace": "c65YAFLweD9Z7U2l", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1982-05-02T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1979-08-18T00:00:00Z", "expireAt": "1980-11-08T00:00:00Z", "price": 45, "purchaseAt": "1997-12-03T00:00:00Z", "trialPrice": 88}, {"currencyCode": "BuekeBe4Tvb3fHCI", "currencyNamespace": "JZkwEcCRi2U7s2ZQ", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1977-05-26T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1982-12-03T00:00:00Z", "expireAt": "1988-09-16T00:00:00Z", "price": 5, "purchaseAt": "1995-06-21T00:00:00Z", "trialPrice": 72}, {"currencyCode": "0PwZjydyzGDZM4zT", "currencyNamespace": "TYI6O8coYDWUfcL1", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1974-02-07T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1974-06-22T00:00:00Z", "expireAt": "1985-05-31T00:00:00Z", "price": 35, "purchaseAt": "1991-09-29T00:00:00Z", "trialPrice": 34}], "02yOVN1h41jIPOMX": [{"currencyCode": "ufZPWSe20JfNvtNc", "currencyNamespace": "WtpUkw98x3tMM1bF", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1997-10-09T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1979-09-16T00:00:00Z", "expireAt": "1989-04-15T00:00:00Z", "price": 60, "purchaseAt": "1972-11-15T00:00:00Z", "trialPrice": 68}, {"currencyCode": "Udmf8hD3nL1saQxL", "currencyNamespace": "Yrz08jh6Tyq7WUil", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1971-02-18T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1985-10-21T00:00:00Z", "expireAt": "1972-06-14T00:00:00Z", "price": 27, "purchaseAt": "1983-06-01T00:00:00Z", "trialPrice": 1}, {"currencyCode": "DODBmrqEhGlkEmGd", "currencyNamespace": "CbwodVRjZJWuCQpj", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1989-02-07T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1978-04-17T00:00:00Z", "expireAt": "1992-09-22T00:00:00Z", "price": 83, "purchaseAt": "1985-04-18T00:00:00Z", "trialPrice": 57}], "PjiIbJifs0arKxCc": [{"currencyCode": "Nv8FQCyQBqKxayGv", "currencyNamespace": "w7MqOsypCJmfRnW0", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1978-11-09T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1976-06-24T00:00:00Z", "expireAt": "1999-03-15T00:00:00Z", "price": 25, "purchaseAt": "1981-08-25T00:00:00Z", "trialPrice": 92}, {"currencyCode": "eCLDu6PA3PRnQtB4", "currencyNamespace": "10iWT0SILVGXCWRu", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1993-10-19T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1976-12-09T00:00:00Z", "expireAt": "1996-04-11T00:00:00Z", "price": 33, "purchaseAt": "1992-09-14T00:00:00Z", "trialPrice": 42}, {"currencyCode": "lef1tSHJf6sVpwAA", "currencyNamespace": "KKqmTy0ZSyJ7IIUX", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1985-02-12T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1990-11-12T00:00:00Z", "expireAt": "1973-12-19T00:00:00Z", "price": 17, "purchaseAt": "1973-04-19T00:00:00Z", "trialPrice": 84}]}, "saleConfig": {"currencyCode": "raaRG1Fg0hfM5vQm", "price": 1}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "wo9IAxV5C71gTw8B", "stackable": true, "status": "ACTIVE", "tags": ["ctwUMCRdxXOBu3TW", "mHDVmCGFoD7aNFj9", "wORAVqRuNsXxRu4E"], "targetCurrencyCode": "QqR3KbYWtFzplXVk", "targetNamespace": "36IpbGquPnIPwR1B", "thumbnailUrl": "inZ4ULwAKO8n42Uu", "useCount": 48}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'CreateItem' test.out

#- 106 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'GvDSE2F7Ad69Dln4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'GetItemByAppId' test.out

#- 107 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'QueryItems' test.out

#- 108 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'ListBasicItemsByFeatures' test.out

#- 109 GetItems
$PYTHON -m $MODULE 'platform-get-items' \
    'mqFhgKKcGohdjQUw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'GetItems' test.out

#- 110 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'VdPsArkepfK0DE3I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GetItemBySku' test.out

#- 111 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'ibPSQnphnvAWBSOr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItemBySku' test.out

#- 112 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    '7zljUKyhKkD7wAHM' \
    'rv8zABDhYAVxvs3u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'GetEstimatedPrice' test.out

#- 113 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'gNvvgI2k1P9nQxzj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'GetItemIdBySku' test.out

#- 114 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'GetBulkItemIdBySkus' test.out

#- 115 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    '3AnmpWfje5cAtTDv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'BulkGetLocaleItems' test.out

#- 116 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetAvailablePredicateTypes' test.out

#- 117 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    'wFHcoODi5oF1pccd' \
    --body '{"itemIds": ["jjZpFnVLb7xerpjV", "PfktNnl8UYH5kesu", "OtYHLqcdy05YrqdF"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'ValidateItemPurchaseCondition' test.out

#- 118 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'n8sQ7yc8xLKyBfGL' \
    --body '{"changes": [{"itemIdentities": ["HEAKhp612Y2ncRf7", "tEGzYqRoHm6EtyXq", "QbKWMJ0aODiWn6bP"], "itemIdentityType": "ITEM_ID", "regionData": {"WWLaVJwe2KAca1aK": [{"currencyCode": "eXUu9hINqKvoYKio", "currencyNamespace": "4M51vuaFyqjQsTGm", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1989-03-27T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1981-10-20T00:00:00Z", "discountedPrice": 99, "expireAt": "1988-11-30T00:00:00Z", "price": 20, "purchaseAt": "1976-03-17T00:00:00Z", "trialPrice": 63}, {"currencyCode": "ofc6itDEsq0dHfYG", "currencyNamespace": "6k853GERdJdphepF", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1994-02-06T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1980-04-14T00:00:00Z", "discountedPrice": 27, "expireAt": "1973-02-20T00:00:00Z", "price": 98, "purchaseAt": "1973-09-19T00:00:00Z", "trialPrice": 28}, {"currencyCode": "GGjJ0hRPUBFxM2Fr", "currencyNamespace": "3olO10RAyIZs2VfC", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1984-11-14T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1999-10-25T00:00:00Z", "discountedPrice": 60, "expireAt": "1984-02-19T00:00:00Z", "price": 67, "purchaseAt": "1977-10-11T00:00:00Z", "trialPrice": 55}], "2lizsWGrtIgVPb7h": [{"currencyCode": "oo8YkNPW8mWOJGtd", "currencyNamespace": "XJGDsxRAR3NObYp4", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1990-07-29T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1986-05-13T00:00:00Z", "discountedPrice": 100, "expireAt": "1982-02-04T00:00:00Z", "price": 50, "purchaseAt": "1995-01-05T00:00:00Z", "trialPrice": 20}, {"currencyCode": "VjqOKrqYGxcBxfjL", "currencyNamespace": "UZHK0OO1yQsMBQAd", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1973-05-27T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1980-05-26T00:00:00Z", "discountedPrice": 69, "expireAt": "1979-08-22T00:00:00Z", "price": 51, "purchaseAt": "1973-09-28T00:00:00Z", "trialPrice": 72}, {"currencyCode": "g5TU3INkMgjsnP8i", "currencyNamespace": "tevmjTJjj5tfFQv3", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1975-01-30T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1984-05-15T00:00:00Z", "discountedPrice": 52, "expireAt": "1989-04-23T00:00:00Z", "price": 14, "purchaseAt": "1994-05-29T00:00:00Z", "trialPrice": 61}], "W0IHIYvJ7PPgVaFw": [{"currencyCode": "Ghl5zqkzEu41hVfV", "currencyNamespace": "C7eLVWGk0GjYReIZ", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1986-08-14T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1979-01-03T00:00:00Z", "discountedPrice": 53, "expireAt": "1999-06-17T00:00:00Z", "price": 72, "purchaseAt": "1999-01-05T00:00:00Z", "trialPrice": 75}, {"currencyCode": "EpymbJ4dPJmkdvyu", "currencyNamespace": "DHFFstLhZzletCqa", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1990-11-08T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1982-09-06T00:00:00Z", "discountedPrice": 38, "expireAt": "1995-09-20T00:00:00Z", "price": 72, "purchaseAt": "1977-02-06T00:00:00Z", "trialPrice": 10}, {"currencyCode": "7waGyB6g2M5JiwtM", "currencyNamespace": "OfDfoMgU2yFBTPfn", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1973-09-16T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1994-08-22T00:00:00Z", "discountedPrice": 63, "expireAt": "1980-05-19T00:00:00Z", "price": 14, "purchaseAt": "1991-12-25T00:00:00Z", "trialPrice": 67}]}}, {"itemIdentities": ["MCVBTrkvObsiHQgt", "7OfL6AcBPjUYURB3", "Rsrc0qvV8Gq1cw3y"], "itemIdentityType": "ITEM_SKU", "regionData": {"WVjM3iVKjr5VDqak": [{"currencyCode": "KdW767GAH1oiS1Ju", "currencyNamespace": "O7MNoFPtRhYYIpNq", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1971-06-27T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1972-08-26T00:00:00Z", "discountedPrice": 13, "expireAt": "1995-02-07T00:00:00Z", "price": 45, "purchaseAt": "1980-01-10T00:00:00Z", "trialPrice": 80}, {"currencyCode": "itD5tWXZVvjYqrEX", "currencyNamespace": "KUDlmtixw9FtBVAW", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1978-07-11T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1990-06-17T00:00:00Z", "discountedPrice": 7, "expireAt": "1973-10-28T00:00:00Z", "price": 12, "purchaseAt": "1997-11-11T00:00:00Z", "trialPrice": 82}, {"currencyCode": "eN2W2CNqmO8JALtC", "currencyNamespace": "iDuGQQsvWV3NSjXU", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1976-10-27T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1997-08-16T00:00:00Z", "discountedPrice": 38, "expireAt": "1990-07-09T00:00:00Z", "price": 49, "purchaseAt": "1994-07-20T00:00:00Z", "trialPrice": 75}], "hEyBfFFZwkC1PRjB": [{"currencyCode": "WzTuXttDREDWbOM3", "currencyNamespace": "xQaraaEVt3vsBCXp", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1993-07-17T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1987-03-22T00:00:00Z", "discountedPrice": 37, "expireAt": "1995-07-23T00:00:00Z", "price": 37, "purchaseAt": "1972-10-13T00:00:00Z", "trialPrice": 56}, {"currencyCode": "TcyT5AhNNH0Ht1yP", "currencyNamespace": "tBwXIuYrbPUcvEOJ", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1975-04-25T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1986-05-31T00:00:00Z", "discountedPrice": 73, "expireAt": "1971-01-06T00:00:00Z", "price": 74, "purchaseAt": "1994-02-27T00:00:00Z", "trialPrice": 14}, {"currencyCode": "W37NTbz8HiRmuknv", "currencyNamespace": "XiTP0KrWQ3pgbHM0", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1983-09-21T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1987-12-26T00:00:00Z", "discountedPrice": 5, "expireAt": "1973-04-25T00:00:00Z", "price": 60, "purchaseAt": "1980-07-28T00:00:00Z", "trialPrice": 73}], "wlTE9Czhnck3GnyP": [{"currencyCode": "FQHgn9jVE6QGkZ8A", "currencyNamespace": "VzeiaDi67E3rTwN2", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1994-02-03T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1979-08-05T00:00:00Z", "discountedPrice": 61, "expireAt": "1979-02-12T00:00:00Z", "price": 72, "purchaseAt": "1973-03-16T00:00:00Z", "trialPrice": 62}, {"currencyCode": "uJsVjhLgaFeFJ5QR", "currencyNamespace": "uvEsU5QkmsmfFhPT", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1996-06-30T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1984-07-31T00:00:00Z", "discountedPrice": 92, "expireAt": "1992-09-16T00:00:00Z", "price": 15, "purchaseAt": "1996-09-08T00:00:00Z", "trialPrice": 58}, {"currencyCode": "UXbdYU08BQZXTcZn", "currencyNamespace": "HoYaII5c5UqVvKR3", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1983-06-10T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1976-01-15T00:00:00Z", "discountedPrice": 61, "expireAt": "1981-10-28T00:00:00Z", "price": 36, "purchaseAt": "1994-12-05T00:00:00Z", "trialPrice": 15}]}}, {"itemIdentities": ["jqlB5c8a78gp4BGN", "4NAydb6GgyFczEOM", "XF1T1sU9xsmACLFH"], "itemIdentityType": "ITEM_SKU", "regionData": {"JqK7dgsgrnpVE1ac": [{"currencyCode": "xZoDXdPORkWkyTcJ", "currencyNamespace": "zvDUlhTlBNpvkjg4", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1995-10-26T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1985-05-16T00:00:00Z", "discountedPrice": 97, "expireAt": "1986-12-16T00:00:00Z", "price": 33, "purchaseAt": "1978-02-06T00:00:00Z", "trialPrice": 54}, {"currencyCode": "ZP1CFaMkJVBkZU3q", "currencyNamespace": "tk0dM4GZGiSutb6w", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1986-05-23T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1976-11-17T00:00:00Z", "discountedPrice": 90, "expireAt": "1987-07-19T00:00:00Z", "price": 69, "purchaseAt": "1992-08-23T00:00:00Z", "trialPrice": 39}, {"currencyCode": "9VWMnzbuNQNJxCbL", "currencyNamespace": "EhfrPxIRdbUwkN6T", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1971-06-29T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1993-04-15T00:00:00Z", "discountedPrice": 9, "expireAt": "1991-08-22T00:00:00Z", "price": 30, "purchaseAt": "1992-10-14T00:00:00Z", "trialPrice": 100}], "mpKyZGtqWw67LheL": [{"currencyCode": "DvwZjthGMOB4HFIz", "currencyNamespace": "TlGBnpLBd02br9Of", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1977-03-20T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1974-07-01T00:00:00Z", "discountedPrice": 13, "expireAt": "1975-11-07T00:00:00Z", "price": 7, "purchaseAt": "1981-10-23T00:00:00Z", "trialPrice": 89}, {"currencyCode": "ixzScfrHzGYC1TdL", "currencyNamespace": "VDBDxK6laOkeLBcp", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1985-05-30T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1997-03-15T00:00:00Z", "discountedPrice": 44, "expireAt": "1994-06-23T00:00:00Z", "price": 36, "purchaseAt": "1995-05-02T00:00:00Z", "trialPrice": 45}, {"currencyCode": "CMJRliFCmFC9uUxS", "currencyNamespace": "xI4yyrZIV9M22gRL", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1972-09-13T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1982-07-23T00:00:00Z", "discountedPrice": 39, "expireAt": "1998-12-06T00:00:00Z", "price": 82, "purchaseAt": "1998-10-03T00:00:00Z", "trialPrice": 38}], "zbnPB5wG65f3ACfS": [{"currencyCode": "3A8JeRMYUCgn7okl", "currencyNamespace": "NewpAIwtlAooXZ7H", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1971-12-25T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1974-05-21T00:00:00Z", "discountedPrice": 57, "expireAt": "1978-03-01T00:00:00Z", "price": 66, "purchaseAt": "1983-05-01T00:00:00Z", "trialPrice": 55}, {"currencyCode": "O2pp9qVpZbsppRsB", "currencyNamespace": "WQ7RdYqZaQ8swcFO", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1975-08-03T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1995-04-29T00:00:00Z", "discountedPrice": 61, "expireAt": "1994-09-11T00:00:00Z", "price": 9, "purchaseAt": "1986-04-19T00:00:00Z", "trialPrice": 80}, {"currencyCode": "8CjEhtRcnVsYOwyp", "currencyNamespace": "w6F21uYowkPNGANj", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1975-10-21T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1997-05-30T00:00:00Z", "discountedPrice": 21, "expireAt": "1994-01-06T00:00:00Z", "price": 36, "purchaseAt": "1977-03-29T00:00:00Z", "trialPrice": 15}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'BulkUpdateRegionData' test.out

#- 119 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'zryXmvvvPmueVVC0' \
    'ymY7ABWgZVxM4rAq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'SearchItems' test.out

#- 120 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'QueryUncategorizedItems' test.out

#- 121 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'xlnHLAFNEwXBsCkf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetItem' test.out

#- 122 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'qzKlzlLgHPF5iRWn' \
    'REifOFJQwGPy5zGe' \
    --body '{"appId": "bVw9nLvVm8UeFUba", "appType": "DLC", "baseAppId": "b5on2kvdeu5DfAxs", "boothName": "rX7OiSRs0z2RYA8f", "categoryPath": "TlbfUOSmR4F0p5g7", "clazz": "b3MegxV9JnAJSu3M", "displayOrder": 62, "entitlementType": "DURABLE", "ext": {"ihx6IJwMzUqM16MY": {}, "Y2MVvo3MMCL4aV6o": {}, "MUzpMmsvvKTljWsp": {}}, "features": ["HLHx7FCWn7iOmKIN", "MrC4TeRTNUYz7N4w", "2roJNZmgEGzqDHdL"], "flexible": true, "images": [{"as": "BW8Aq2KVQNFGaJEy", "caption": "BVlQ5iHlTqgMzvj8", "height": 39, "imageUrl": "KRTVR95IwPCb2qOu", "smallImageUrl": "IRbBL0njCbitEJNH", "width": 45}, {"as": "ueQLLJPh6Hpodpzu", "caption": "BQwTS66qr03Mp14S", "height": 4, "imageUrl": "HG9ID7mZ4eKHaAP4", "smallImageUrl": "PYToJAMgJkC8UGlq", "width": 3}, {"as": "0WCXd8GX7ygT5qlB", "caption": "ekxw9pO3vyRviPlj", "height": 60, "imageUrl": "rVtIQyxp17b8SHvR", "smallImageUrl": "IiJgGrdz6Ar6ZMGU", "width": 70}], "inventoryConfig": {"customAttributes": {"nCXqJplcwaBHILlC": {}, "C7ovjEbjKrZ2d6Ib": {}, "WTfPplY43FQpfFWm": {}}, "serverCustomAttributes": {"8VMHjC8qrxvZsJd3": {}, "RBYL4PAqdviBvToS": {}, "Q7EqHUhHn1qP3G2k": {}}, "slotUsed": 92}, "itemIds": ["mqqwoT441DX6xwuD", "6giqKLavCF9yVeJJ", "wyaY7Ho61RoV0VH7"], "itemQty": {"thk8lnCROZodh1gb": 20, "dqELbdqXaPlAMGm4": 15, "A5061CF9079hQA91": 5}, "itemType": "SEASON", "listable": true, "localizations": {"uNAeKKjcKgU263Pa": {"description": "wPB10d4KCtC9mqs8", "localExt": {"uXBZ2Kxk4a5FeKFm": {}, "3raYpWl0MfF3iAQb": {}, "4Iiy26m51AwCv4UK": {}}, "longDescription": "mP7eczfnYgOqXhJZ", "title": "6DIokID1ZFk9fRCH"}, "fId0Dhnin8RxnO0q": {"description": "s4FykFXDdcUuEE9w", "localExt": {"h4CEOrPY29A1L1Xi": {}, "jb7GTIFWcZWKcGHG": {}, "9MBp1AEcNUzfWwpd": {}}, "longDescription": "raZO1lfHzX5CHNiY", "title": "aLYUlRZSLj5xwmP8"}, "QMJJJn2Lqw6aiKZb": {"description": "UJQ92BTViMMFji1G", "localExt": {"mfmwhN25xGSRRZnw": {}, "lbMGheYVteLiiIKP": {}, "jokv6HMQOekLKHzi": {}}, "longDescription": "Tw5M3KvzpUEcp3cp", "title": "4fWJlLrbVQceKy5J"}}, "lootBoxConfig": {"rewardCount": 10, "rewards": [{"lootBoxItems": [{"count": 75, "duration": 24, "endDate": "1998-05-19T00:00:00Z", "itemId": "aUz9AKozXBA29DPh", "itemSku": "Ya8Ksjfnk7HKSWUL", "itemType": "kEKqQ4ToqWjpaECY"}, {"count": 17, "duration": 62, "endDate": "1995-02-07T00:00:00Z", "itemId": "NmymBNr5C2BOjUiO", "itemSku": "QVEbp3z13pDy371Q", "itemType": "LVtDb6RZXatSimmK"}, {"count": 41, "duration": 85, "endDate": "1972-12-25T00:00:00Z", "itemId": "qURkyz4E3EI1bSCY", "itemSku": "aa8JSNQdhrnvuDGF", "itemType": "iT4U6WQQwsTHCgTv"}], "name": "rGllrcttK4WgzdUh", "odds": 0.4511086417461512, "type": "PROBABILITY_GROUP", "weight": 96}, {"lootBoxItems": [{"count": 74, "duration": 99, "endDate": "1973-03-12T00:00:00Z", "itemId": "8C1HnrPGydCRGPXL", "itemSku": "KNNfCxcAJoMhSZgp", "itemType": "x0HtzCgr8ybpAO0P"}, {"count": 14, "duration": 41, "endDate": "1974-02-08T00:00:00Z", "itemId": "yBmb2Ir2yOaVvE1N", "itemSku": "52PwdeTQhMz99aZ3", "itemType": "fza0rlzqNhVNwgXB"}, {"count": 58, "duration": 23, "endDate": "1997-11-10T00:00:00Z", "itemId": "r4m1UpizE7fm00IB", "itemSku": "0YnQ5xpjcMxUGokG", "itemType": "4VQKR0ItcCnXFRjh"}], "name": "k7tzIHqZpgJqlw44", "odds": 0.8657709499031238, "type": "PROBABILITY_GROUP", "weight": 96}, {"lootBoxItems": [{"count": 10, "duration": 8, "endDate": "1978-02-23T00:00:00Z", "itemId": "AVnf8BzBBqEvMtJo", "itemSku": "pw2r5pKsXnIYkKH6", "itemType": "MNrEsOlIFw6Fqa6Y"}, {"count": 57, "duration": 52, "endDate": "1976-01-03T00:00:00Z", "itemId": "XOvZUgW2ZMVJhOyV", "itemSku": "aO1sgnJF31EULHtV", "itemType": "tkZrE0YPmtE6fcv3"}, {"count": 27, "duration": 15, "endDate": "1992-08-02T00:00:00Z", "itemId": "ROvD1FiqEUhsD6Qx", "itemSku": "KzbZ7xvbLKNa3OJM", "itemType": "FdrQmX2OFLws9RV6"}], "name": "lY9IGsZjUsSUE7Nu", "odds": 0.4521244081862017, "type": "REWARD_GROUP", "weight": 62}], "rollFunction": "CUSTOM"}, "maxCount": 84, "maxCountPerUser": 45, "name": "WNkgUfe6pVMS5m8a", "optionBoxConfig": {"boxItems": [{"count": 89, "duration": 6, "endDate": "1988-04-03T00:00:00Z", "itemId": "ev5s4q7UwwraCDr3", "itemSku": "26Q66cxtjNTXsCsf", "itemType": "A2pIWzC6nrUavXt7"}, {"count": 40, "duration": 5, "endDate": "1976-05-10T00:00:00Z", "itemId": "lsH39PXWtk222GY7", "itemSku": "L58lP7drhfBjZFga", "itemType": "GUfhy5TZFoyfZ0Xf"}, {"count": 59, "duration": 49, "endDate": "1974-12-11T00:00:00Z", "itemId": "twNaVCqf0vP284yQ", "itemSku": "AbudR95sQ1FygQvo", "itemType": "X9pEJ3R0cuQGjCSh"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 81, "fixedTrialCycles": 47, "graceDays": 51}, "regionData": {"8vLsYBHN6M7OpcFq": [{"currencyCode": "K4FBJG8BfuSzytkP", "currencyNamespace": "E6mw3Zv0zD14WsQt", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1997-03-05T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1977-07-04T00:00:00Z", "expireAt": "1984-03-22T00:00:00Z", "price": 12, "purchaseAt": "1998-06-18T00:00:00Z", "trialPrice": 92}, {"currencyCode": "OKy45dqId3gXUWVA", "currencyNamespace": "maDjrn0iZsIfqeLf", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1998-03-15T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1993-12-30T00:00:00Z", "expireAt": "1971-01-21T00:00:00Z", "price": 14, "purchaseAt": "1982-12-26T00:00:00Z", "trialPrice": 20}, {"currencyCode": "istsfrFqHu6f54mL", "currencyNamespace": "4hAfiqX3ThREYknd", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1995-04-16T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1996-06-16T00:00:00Z", "expireAt": "1982-08-25T00:00:00Z", "price": 64, "purchaseAt": "1988-03-27T00:00:00Z", "trialPrice": 58}], "x8hm2178A4NUDAdw": [{"currencyCode": "t7cj6v5DLEk9Rkum", "currencyNamespace": "krnY4LksFD2le3UG", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1992-07-15T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1987-04-16T00:00:00Z", "expireAt": "1984-04-10T00:00:00Z", "price": 80, "purchaseAt": "1991-11-13T00:00:00Z", "trialPrice": 13}, {"currencyCode": "HiVQ6covYDuI4l1d", "currencyNamespace": "9YaLVuL1mLP65pId", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1990-08-17T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1992-11-18T00:00:00Z", "expireAt": "1994-05-12T00:00:00Z", "price": 88, "purchaseAt": "1992-09-20T00:00:00Z", "trialPrice": 28}, {"currencyCode": "7AUUES36bRVaiOL6", "currencyNamespace": "Q5N2egLXRiNNV5Fy", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1978-04-04T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1990-02-19T00:00:00Z", "expireAt": "1971-11-11T00:00:00Z", "price": 75, "purchaseAt": "1997-07-28T00:00:00Z", "trialPrice": 40}], "QFBHQ0FHWOul5WKk": [{"currencyCode": "zjzRnLLFKGFSUC1s", "currencyNamespace": "ZtVitkoRyEXWrhLN", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1981-06-22T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1979-05-21T00:00:00Z", "expireAt": "1983-11-26T00:00:00Z", "price": 71, "purchaseAt": "1984-06-28T00:00:00Z", "trialPrice": 47}, {"currencyCode": "MtZX5KZK53tX2oxm", "currencyNamespace": "EDDgGBgPWHmOLBLl", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1982-06-27T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1979-08-29T00:00:00Z", "expireAt": "1975-10-25T00:00:00Z", "price": 12, "purchaseAt": "1985-11-10T00:00:00Z", "trialPrice": 77}, {"currencyCode": "wJPOcRFJTeKbAMIJ", "currencyNamespace": "ChPyIhVPmMs1zqz6", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1983-06-21T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1974-01-23T00:00:00Z", "expireAt": "1977-09-23T00:00:00Z", "price": 1, "purchaseAt": "1993-01-05T00:00:00Z", "trialPrice": 26}]}, "saleConfig": {"currencyCode": "XGs0qawVMpRu5wP9", "price": 58}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "xi1BjFMOIsJO7EUY", "stackable": false, "status": "INACTIVE", "tags": ["sMTHGgaQ2UErhcMp", "uZW4KtmXptKHAev0", "UqYpD2R7YqidgD0w"], "targetCurrencyCode": "xHpQyntHsI11lC6B", "targetNamespace": "XyQW3eG0BvuCoP1h", "thumbnailUrl": "IpdIWajZTyB7k7Q9", "useCount": 52}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'UpdateItem' test.out

#- 123 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'Tt8oRoQRf0A1eAJU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'DeleteItem' test.out

#- 124 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'ZSjWUPA9vXrqLxUC' \
    --body '{"count": 51, "orderNo": "yQvciFGxJNOaveGz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AcquireItem' test.out

#- 125 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'kTPehZVmZi1UYM7B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'GetApp' test.out

#- 126 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'ApA1YByiGkJR30lA' \
    'inKfKXqYE8GuKFRw' \
    --body '{"carousel": [{"alt": "AkAyYY8hSNUTpzSm", "previewUrl": "7jdrPdkMMoylrI7D", "thumbnailUrl": "pmCIb5JWu7DAXtIe", "type": "video", "url": "WiJYxvvQCHIreoYD", "videoSource": "generic"}, {"alt": "cqdtNaFO3ABy1AeD", "previewUrl": "ryAFewcN6U8vRJ3e", "thumbnailUrl": "bbfa3ep8cKNlb024", "type": "video", "url": "zQsBlwn2pN8vqhPm", "videoSource": "generic"}, {"alt": "kt8156L7Wl7UfG3P", "previewUrl": "bsgYDgJ0JRrcPbe1", "thumbnailUrl": "REA4kpxN9tCjk58n", "type": "image", "url": "7CWEoHK3yLZSpydG", "videoSource": "generic"}], "developer": "3jLkVq9bAefBF8ti", "forumUrl": "F7mi3iOrnB83a6h6", "genres": ["Adventure", "Simulation", "Strategy"], "localizations": {"8YhyHkINdPYamt1N": {"announcement": "Nvdmy7qa1StMbwcU", "slogan": "su3gJ0yHA6KDH87A"}, "mGMvChuhxZJsDNCQ": {"announcement": "EtOnYVE7i77NKczg", "slogan": "6MaoVcixj92JkMWu"}, "Fc2x9p8sArSRypvu": {"announcement": "88WyRMMRloXySTO9", "slogan": "W3BEI4eB0PHoEfId"}}, "platformRequirements": {"FP0QarAdoCQoVI26": [{"additionals": "D2IdXV2RNnCRn6sp", "directXVersion": "zE0Dj97Arjpd7IRv", "diskSpace": "eArOFED1MAfVZhAD", "graphics": "FM15pfl1N2CNDu3D", "label": "pGXJrOgVnrneQPU3", "osVersion": "5uuCoR3Wc6j3UqRI", "processor": "CnmZxob6vepvgW3V", "ram": "mnz3WsgPS6R3Uev7", "soundCard": "bCsylPZDz1fiXmZR"}, {"additionals": "eVZ4inDP7o0Aeler", "directXVersion": "4oEJEmHHU4T74Nkr", "diskSpace": "oVwJFRFLnsSyJhQA", "graphics": "pjt9Vvn7MyjPjMUo", "label": "UC9cUOeLu9OVb7aB", "osVersion": "ijwHPyvaMEDKGCxm", "processor": "JgOQkViutBjVUos6", "ram": "ZMGM14H49GbRHeTM", "soundCard": "H4jK8hWOlHrqyBEl"}, {"additionals": "A4m1Ywb6nMhhSCXG", "directXVersion": "zZMdNwUYOkFXnGtw", "diskSpace": "8AuvUND3dJ4hbxnI", "graphics": "uxtrWKvmz0RzwVRh", "label": "RmllqqWYgDWbrtw6", "osVersion": "qiRU6n8IKPZ1kpSe", "processor": "Rooa84wgi9Qjy4Lt", "ram": "kYsyCJFj0ayzojVN", "soundCard": "IrqZCtbJmJSU0agO"}], "0PXHCyo70kyuutjj": [{"additionals": "QDfdr0GXMgSK5Yx6", "directXVersion": "dbDNBB9LNziCP1xQ", "diskSpace": "ygVqAioKka1tx56A", "graphics": "wxAJU0XOoXFpKZ7s", "label": "mOvhTDIdO6ugOFZP", "osVersion": "tLUvuPK7wBmEY4lD", "processor": "14f0XIJh3uxrBGEu", "ram": "meTG434DmlbwWuZp", "soundCard": "KPB4rzvo2R5Q7tM4"}, {"additionals": "YbPsF33KhfoL7PlF", "directXVersion": "t47mQAQQzQAxQ8GR", "diskSpace": "gWKOBJYYXgFmEZ8k", "graphics": "WtzrSIfMjxzBwWKz", "label": "JldpqtAlzVR0Wqkb", "osVersion": "KYSr7IVc2WJyX67v", "processor": "7JTcrppNGl78VMGk", "ram": "3b5E1GgAqoQkgiht", "soundCard": "0lsg1U1DExMK4z32"}, {"additionals": "P13aQRTMzFLsBDzd", "directXVersion": "O8IwGdLKPo5zR4q5", "diskSpace": "8Tka2qLo5spq850Z", "graphics": "KnX3Inv5lG8WEklk", "label": "FFkJPn2yomTQth1i", "osVersion": "JOyDZJCwufYAURyX", "processor": "VoJ9qEel6x5O5otp", "ram": "ujfw64GJDWklFkqh", "soundCard": "GFAoxfL2vrevlUaC"}], "gxl01oVwoWAbcsku": [{"additionals": "BfcvcoAMPzCXwpgD", "directXVersion": "8MOfYXcljy6EB8dB", "diskSpace": "8wCiYq2y16Jp7HjP", "graphics": "DG07XwughkPLKDhd", "label": "Mf1o4pweyQyv10mR", "osVersion": "O0tK1CH6ozETFSgu", "processor": "96JYKhAD9xM9T3Yc", "ram": "YFOYmaaHSXapFLiH", "soundCard": "ZfwcmqpHRQcJzso1"}, {"additionals": "tgoqsyjuA8sqeXbV", "directXVersion": "9I8yo0u2hT9UYbm2", "diskSpace": "BWjzlqIA8csXOpDT", "graphics": "l6yIwkTTCLlRCEQS", "label": "p3XwOSNJT3B5f3yn", "osVersion": "PDyKkSYIIOqTjadq", "processor": "7tSbuLamxL9Ltl0k", "ram": "2ZOJHBnYPNYKWhYL", "soundCard": "sAlPZs4v14XFGIVe"}, {"additionals": "BHRe7JBlzH9CrXX7", "directXVersion": "cBfnjlfFFTD6KSEe", "diskSpace": "AEd96gzUY6EuVZzn", "graphics": "qQVYO5728Ri3CuA2", "label": "GelFQyuDWvfe4Hp9", "osVersion": "aCLekZch7a3b0hFY", "processor": "qZQAUm9m9ht4JsrC", "ram": "6ho0XSsR3HPQNrtk", "soundCard": "f3M9oI3ymYms9fui"}]}, "platforms": ["Android", "Windows", "IOS"], "players": ["Single", "Multi", "MMO"], "primaryGenre": "Sports", "publisher": "F1LpvoOxT54t5Ffn", "releaseDate": "1971-03-26T00:00:00Z", "websiteUrl": "72ji4B86NKZ0tkEW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'UpdateApp' test.out

#- 127 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'AqM0EZhtIp1XL7HL' \
    '2nKoPXxLMtU6hLli' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'DisableItem' test.out

#- 128 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'y7em6ox8O9f2ojEQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetItemDynamicData' test.out

#- 129 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'rZ645LOpaGFJniJl' \
    '9RPULWpWw5UQBldf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'EnableItem' test.out

#- 130 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'nMF2X9wbQz3euR4M' \
    'hLQs8XliOoWqixFd' \
    'v5aDRSnCrIQ2kChy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'FeatureItem' test.out

#- 131 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'afmo2nIKr9krylal' \
    'bZWuO0OVwGUgR3PE' \
    'WI0N4k2W2caqaRVd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'DefeatureItem' test.out

#- 132 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'R05rSilF29Lpg0zA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetLocaleItem' test.out

#- 133 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'Uzpliq50demc4rS3' \
    'd2v2ibO04gNmB9r9' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 0, "comparison": "is", "name": "Pi8oY6VkZP57PyBL", "predicateType": "EntitlementPredicate", "value": "iFOu0ybeoERsKMCP", "values": ["NL7EbburWcSjdGGq", "mtnE1aHAuVZKYNaK", "hi81nO4RNjvO8rZ5"]}, {"anyOf": 6, "comparison": "excludes", "name": "31L6KqJTL11T4vlB", "predicateType": "SeasonTierPredicate", "value": "KQldxIqMgf2PaNJq", "values": ["Oc5dWAES7S7wBqBe", "4F2z2u3wwUBB3Kkz", "IMDWJUW3I4SKjp0N"]}, {"anyOf": 71, "comparison": "excludes", "name": "Bx4VA9ZxbKQDqG7U", "predicateType": "SeasonTierPredicate", "value": "iVTCPTrqHc7vqaXx", "values": ["xiGOrXbWC2k23JxA", "49M1JdtImLI5eTuH", "I3kOXwHnS2VOESYx"]}]}, {"operator": "or", "predicates": [{"anyOf": 4, "comparison": "isNot", "name": "Sa260P2hpjhYQEdy", "predicateType": "SeasonTierPredicate", "value": "PkW7ouFIdlTuousR", "values": ["lD9VLXNwkZWTbX0P", "Zb0I9Qm4xKek7ZAZ", "crhXNAh3Cu4ou029"]}, {"anyOf": 73, "comparison": "isNot", "name": "FF9ucrEcYD5hjgrx", "predicateType": "EntitlementPredicate", "value": "Z4mDmXZIBTi05akx", "values": ["PcXDH8RZqUjELC82", "BYozWzUW4RDVM8Y4", "uP1nMUDAKQEkOvO5"]}, {"anyOf": 54, "comparison": "isLessThan", "name": "FFuLWL0HQkTuy4fU", "predicateType": "EntitlementPredicate", "value": "Ejumf9ltGde7x4lu", "values": ["TsEk9TNqSiFJyMBy", "oRKUrvfixr7UFzLz", "GaWok215MnSNTPMR"]}]}, {"operator": "and", "predicates": [{"anyOf": 81, "comparison": "includes", "name": "sNW3RHxioyNedQ1E", "predicateType": "SeasonTierPredicate", "value": "lQg6rSZj7yw7aPU0", "values": ["DqhD5agSwSs0ORF2", "pLQCqPGUmF8pQCrE", "qdstmoPJurb0FVZK"]}, {"anyOf": 92, "comparison": "isGreaterThanOrEqual", "name": "uKMr6e9VKi3lHZdn", "predicateType": "SeasonTierPredicate", "value": "zFYEnOA6gFO3zfSv", "values": ["FIESxo8uFqKtoZiV", "vmLgxlU5MdUdF7gH", "dIf6eMd0iVUmBrFw"]}, {"anyOf": 85, "comparison": "isGreaterThanOrEqual", "name": "ndNzIiCZiPRCujrj", "predicateType": "EntitlementPredicate", "value": "KYKp18TPWOixbTLf", "values": ["oxvvtB4aireJSZc7", "C324P82gdsOb5Jp6", "dOF3VtCUZ0wN81CL"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'UpdateItemPurchaseCondition' test.out

#- 134 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'Cojp07DFR7IvEhnK' \
    --body '{"orderNo": "AMSw1WGHPO22mCj7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'ReturnItem' test.out

#- 135 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'QueryKeyGroups' test.out

#- 136 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "yFmbpItmTcMVUlRo", "name": "YFks2ULHooisOHhy", "status": "ACTIVE", "tags": ["mVppuu6acpUdn8X5", "IZjtFT6Bs8OO0CVq", "XF6bMzRd2Z2WjutG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'CreateKeyGroup' test.out

#- 137 GetKeyGroupByBoothName
eval_tap 0 137 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 138 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'AptSES09ZcFGPCok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroup' test.out

#- 139 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'MwrtVvGhHzNdHMJy' \
    --body '{"description": "s9gtFxWSkvzQZjQr", "name": "gnXc87G37jhABEz5", "status": "INACTIVE", "tags": ["57ICJiWEPnZsQ3Ns", "S8VgyzvujT8aEay0", "LM1IpMDZuDLXNscw"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'UpdateKeyGroup' test.out

#- 140 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'bXgdwQnMuReen3aY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetKeyGroupDynamic' test.out

#- 141 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'jhar5GRzOAfOXbaE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'ListKeys' test.out

#- 142 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'HFX0sySxhkhCpV5A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'UploadKeys' test.out

#- 143 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'QueryOrders' test.out

#- 144 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'GetOrderStatistics' test.out

#- 145 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    '2ZLHG60X6LS9dYe4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'GetOrder' test.out

#- 146 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    '2oicsvoF2EgsoZSK' \
    --body '{"description": "OzQIDAf44vyeNIfF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'RefundOrder' test.out

#- 147 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'GetPaymentCallbackConfig' test.out

#- 148 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": false, "notifyUrl": "3VRydtvWZZFDNIc8", "privateKey": "6TKj3grgVdqSpg9x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'UpdatePaymentCallbackConfig' test.out

#- 149 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'QueryPaymentNotifications' test.out

#- 150 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'QueryPaymentOrders' test.out

#- 151 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "pXCh79kxpJyTba2S", "currencyNamespace": "x7lPUWhfLYtrkZ2V", "customParameters": {"3jzXzilslRzP96yJ": {}, "7RbX8fkG3hcRbcSu": {}, "Skd72wzQJjmhy4f9": {}}, "description": "F9usH1ByGD8DDRW0", "extOrderNo": "KNwlKcveutOHZ2aW", "extUserId": "SL11msU7QpcpkApF", "itemType": "SUBSCRIPTION", "language": "mqs_ehgY", "metadata": {"RWcvJIwzW53tKi9m": "xhR8RWtFcnNAoxNP", "XPlSv6kWXBTTodpL": "cEI0mWFWKlSwI38L", "yDyLTQxmA6nDD3EF": "feJdwskeVjYAe1CN"}, "notifyUrl": "RQX4T37n6lgMV9tM", "omitNotification": false, "platform": "cKbPxGvL2c7KalLF", "price": 100, "recurringPaymentOrderNo": "zR0PBTEvM3TgMsAS", "region": "5t3TYXNAGl1xy1H8", "returnUrl": "Ag2XY2TnyPCVsWzh", "sandbox": true, "sku": "IeHkoUSeT3lv51D9", "subscriptionId": "Vwsfzatv4JzfVNAJ", "targetNamespace": "bSLBzqs2u1EntDzk", "targetUserId": "QLgWQHXc3bRYKbJG", "title": "FP8HZNLJ7aPbRMRr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'CreatePaymentOrderByDedicated' test.out

#- 152 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'bKjoifZAWt13ISgd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'ListExtOrderNoByExtTxId' test.out

#- 153 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'wAum4b3t1Ph8xHfE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'GetPaymentOrder' test.out

#- 154 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'Alyda8FPutbAgA4O' \
    --body '{"extTxId": "lQUCJsDilWhSc6XI", "paymentMethod": "xh1HqBg5FhY2vclq", "paymentProvider": "PAYPAL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'ChargePaymentOrder' test.out

#- 155 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'HozRud9g15dSBhpL' \
    --body '{"description": "RxydIE1CQFSQS3RD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'RefundPaymentOrderByDedicated' test.out

#- 156 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '8Q6YcgyTtSOU4FdU' \
    --body '{"amount": 5, "currencyCode": "13gsIOArelbYwYTt", "notifyType": "REFUND", "paymentProvider": "STRIPE", "salesTax": 21, "vat": 89}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'SimulatePaymentOrderNotification' test.out

#- 157 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'u6ryZK7UKLhMA3DO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetPaymentOrderChargeStatus' test.out

#- 158 GetPlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-get-platform-entitlement-config' \
    'Xbox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformEntitlementConfig' test.out

#- 159 UpdatePlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-update-platform-entitlement-config' \
    'Other' \
    --body '{"allowedPlatformOrigins": ["Playstation", "Other", "Oculus"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformEntitlementConfig' test.out

#- 160 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Oculus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'GetPlatformWalletConfig' test.out

#- 161 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Other' \
    --body '{"allowedBalanceOrigins": ["Playstation", "Epic", "System"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'UpdatePlatformWalletConfig' test.out

#- 162 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'GooglePlay' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'ResetPlatformWalletConfig' test.out

#- 163 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'GetRevocationConfig' test.out

#- 164 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'UpdateRevocationConfig' test.out

#- 165 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'DeleteRevocationConfig' test.out

#- 166 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'QueryRevocationHistories' test.out

#- 167 GetRevocationPluginConfig
$PYTHON -m $MODULE 'platform-get-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'GetRevocationPluginConfig' test.out

#- 168 UpdateRevocationPluginConfig
$PYTHON -m $MODULE 'platform-update-revocation-plugin-config' \
    --body '{"appConfig": {"appName": "uJ8PAnT6lHom6RSj"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "xFFFrIQFWJ2aMIxq"}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'UpdateRevocationPluginConfig' test.out

#- 169 DeleteRevocationPluginConfig
$PYTHON -m $MODULE 'platform-delete-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'DeleteRevocationPluginConfig' test.out

#- 170 UploadRevocationPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'UploadRevocationPluginConfigCert' test.out

#- 171 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "PgWnODMMswus0ykK", "eventTopic": "yOTFH9npo1k2W89U", "maxAwarded": 94, "maxAwardedPerUser": 85, "namespaceExpression": "Qp6NklXSUYkHNYqe", "rewardCode": "padIS0zRgire2ntr", "rewardConditions": [{"condition": "z0FUDXjV0GmcFSjm", "conditionName": "JGQU5YRHjMz3bo23", "eventName": "SF3XkwdkgeNE7pA2", "rewardItems": [{"duration": 55, "endDate": "1973-04-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "blFr8NUmSdS49Cyb", "quantity": 94, "sku": "dXz2NXfbCObijIWd"}, {"duration": 89, "endDate": "1986-10-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "mnjBd7q6U3V1i7ip", "quantity": 14, "sku": "ibQlReTecqcbggfe"}, {"duration": 70, "endDate": "1978-09-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "nvTuTrRI8Z87U0Y5", "quantity": 90, "sku": "GNieMe0c6eA8xCvV"}]}, {"condition": "NgS0wUvETmRwwaH2", "conditionName": "1xuey3fB1KN5EzSm", "eventName": "B6aO1JqypofIkM1W", "rewardItems": [{"duration": 44, "endDate": "1985-01-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "zvOh61wCAYs9Qae7", "quantity": 93, "sku": "uNARNfA4hpoNUAwa"}, {"duration": 11, "endDate": "1984-10-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "QxxK2sBBkQz8nIgo", "quantity": 25, "sku": "pZYIYto2cpXUnj1k"}, {"duration": 72, "endDate": "1984-10-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "V0W2K8alZaxyEak0", "quantity": 35, "sku": "D76apW4CsuQx2nME"}]}, {"condition": "1E8lGIgW2AWqhlJf", "conditionName": "HgWSAjBmziLkAEWk", "eventName": "qMo2uv4G0hb2TC5z", "rewardItems": [{"duration": 3, "endDate": "1983-05-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "SMQf3ZXRgmEXKPav", "quantity": 81, "sku": "NLSVOdqFxY9j8P8I"}, {"duration": 65, "endDate": "1982-07-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Kh0Zni7P6ZfRFkQo", "quantity": 24, "sku": "kof2DgN1OHBaKIf5"}, {"duration": 15, "endDate": "1971-04-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Er69zjnPKVLZ59Qu", "quantity": 45, "sku": "XRltXTRz9WtMMb9e"}]}], "userIdExpression": "3S9biXun5fD0BBCt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'CreateReward' test.out

#- 172 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'QueryRewards' test.out

#- 173 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'ExportRewards' test.out

#- 174 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'ImportRewards' test.out

#- 175 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    '7xNIxMniv6VDtGhP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'GetReward' test.out

#- 176 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'Qu5IgTlvO4wr8D7A' \
    --body '{"description": "PHhihwdNSBKpqJ8V", "eventTopic": "1kQHisGldXgqa99U", "maxAwarded": 81, "maxAwardedPerUser": 10, "namespaceExpression": "yHIlnrLOesUoAwwC", "rewardCode": "O2c7aEAHcpdx91Ua", "rewardConditions": [{"condition": "bvNvRaUrUqTcFsGX", "conditionName": "xjR7vTeNdfPVWmEd", "eventName": "VFXX02sJsXg7AKOu", "rewardItems": [{"duration": 56, "endDate": "1996-02-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "rc4OJ06MAINAypeu", "quantity": 50, "sku": "ZwgLF3XSMYkGVjcY"}, {"duration": 8, "endDate": "1998-06-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "mHvpaJ6EFG9wLOlD", "quantity": 25, "sku": "N2GNQs0IgMAbRc0I"}, {"duration": 1, "endDate": "1999-05-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "jV4UBb0pZrHFxE9E", "quantity": 55, "sku": "OE3PKy2vHH6XrTj3"}]}, {"condition": "i1nC0J9A8DUtbT9N", "conditionName": "imqnzt0awizcaXFF", "eventName": "kKf2QcbDNp9wVglo", "rewardItems": [{"duration": 85, "endDate": "1979-04-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0vZqaSrHfwrqqHXH", "quantity": 32, "sku": "oeCULsEptE9wdseb"}, {"duration": 25, "endDate": "1991-10-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "kQbE3nPbd7YNYQJL", "quantity": 3, "sku": "jGfdMvM0zEHmThs6"}, {"duration": 83, "endDate": "1987-07-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "dk9jSSY0aqjjeExT", "quantity": 30, "sku": "FKj2fpaEDgvMXedU"}]}, {"condition": "0CtjH3UPJy3CnYG5", "conditionName": "ypxMPXQb9Aa9QMoQ", "eventName": "gjOf0byuj8Uxptb2", "rewardItems": [{"duration": 29, "endDate": "1993-03-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "R4zJKYxouzcD0pPX", "quantity": 20, "sku": "DCH0BMCufX5Ln9YK"}, {"duration": 61, "endDate": "1981-07-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "9wNSXGvHGabfCgec", "quantity": 81, "sku": "oyLHG52kcFEHKN66"}, {"duration": 94, "endDate": "1992-11-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "XDNtjgypGgBtsGOx", "quantity": 70, "sku": "oGOS84jEVRGn0aQH"}]}], "userIdExpression": "rmMgGX6WiX9WPUEw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'UpdateReward' test.out

#- 177 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'P8KagnEKkfRnTAD7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'DeleteReward' test.out

#- 178 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'nNuqrknaj1Fks8Oh' \
    --body '{"payload": {"mWshFK5hyfwqkxFe": {}, "K2HSaUyXEOQUwXDX": {}, "8MGlijaR3VVk7nD0": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'CheckEventCondition' test.out

#- 179 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    '9WBTm7Hy1AvjH8TO' \
    --body '{"conditionName": "5OIzshGgQ4ThugQF", "userId": "OWwlpo3MnSMNdjVt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'DeleteRewardConditionRecord' test.out

#- 180 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'QuerySections' test.out

#- 181 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    'Lt8CrUFIkcZk3UEa' \
    --body '{"active": true, "displayOrder": 63, "endDate": "1981-04-18T00:00:00Z", "ext": {"aXtLCGf6Pjb7W28X": {}, "F9eX2LXwaZwDM1CY": {}, "DLmaPDEUbDvBUnl1": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 84, "itemCount": 44, "rule": "SEQUENCE"}, "items": [{"id": "36lSL3gAK6QqFlWl", "sku": "AR1frDQIVwmefiYR"}, {"id": "ytVWtyJI7ujeL0gj", "sku": "x8jAfmTLOwiBSSe1"}, {"id": "E9DWrTYLcDOMWy0w", "sku": "efl1KKxNl1Bu8GE1"}], "localizations": {"5JzEvFlzpDnYuSqy": {"description": "nNlJACpHVndrAR7z", "localExt": {"9J0bNuepqWsDLjzo": {}, "w7MvJGnWbcVqeQS6": {}, "8NcKrOSqAvumNXdN": {}}, "longDescription": "oD6gTOf0jHAc8PGn", "title": "cBz3SqYUIQnwGbMT"}, "iA96lnb5gdT3QnV1": {"description": "lkyfpfTo2MX3YvlK", "localExt": {"KTkjhbq0eRvkBW48": {}, "O77tNIBYTFfPUrNU": {}, "OX0haxwoUd3ezYAd": {}}, "longDescription": "ypb6oWXYIQqBIhw3", "title": "NQXGJDWtQNJFHNbg"}, "t9uaoCeP9rZK0m4w": {"description": "hjNMB89Aoh6Jk84k", "localExt": {"7R0603b1ChdDIpRn": {}, "2HgPRevBMjempE90": {}, "i47qjDQAAvYZZABK": {}}, "longDescription": "OA0L11TgHUfODRoc", "title": "sLmBbV1sCNpADwyp"}}, "name": "koh2Ufv88v1ngAJI", "rotationType": "FIXED_PERIOD", "startDate": "1972-06-22T00:00:00Z", "viewId": "T5AL1og70bKW5QYt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'CreateSection' test.out

#- 182 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'GAVQvqyIVadq2JIT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'PurgeExpiredSection' test.out

#- 183 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'EaFYCmQEyL35Lh1c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GetSection' test.out

#- 184 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'CBgg2D4HUqIhXDNw' \
    'seD5BbL13OgHZysy' \
    --body '{"active": false, "displayOrder": 44, "endDate": "1983-01-24T00:00:00Z", "ext": {"axRFeMgIQdJNm52k": {}, "6wEP9rj7lO6vs4tM": {}, "fHLoSkvb8lbFBtF0": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 27, "itemCount": 81, "rule": "SEQUENCE"}, "items": [{"id": "g0Bapd2WF3ACWSPC", "sku": "OIejZfSnIavouuFp"}, {"id": "qcq4Gd9fk7fhp8GN", "sku": "MEX4Ps5vorNX6W3h"}, {"id": "8ItD6AFXbQvGbKVl", "sku": "E5VulHAZZ2SKo1C0"}], "localizations": {"ktvmekdbic6I2n5H": {"description": "clx6xvlDEhlvzVBq", "localExt": {"t9fNnODJKrDdt60v": {}, "Gd1u3lR0fkCW4fYJ": {}, "AHmuYyTZt7v3mvPo": {}}, "longDescription": "laFeEWrqYB9hLG74", "title": "YMs1JCrpnpPPUyyC"}, "N4MFXqnFzR6C20jV": {"description": "L8heTq0Wmf80d7wz", "localExt": {"xTtcIyIFNDIRhPIR": {}, "CNW8MLBfGHJseAA3": {}, "xQG5zPNH4eYMWbtv": {}}, "longDescription": "k7OoIixOGXwFzXjp", "title": "SLyjqaJnmx4p5ShR"}, "3fI6ZeDWbxHSLn6k": {"description": "QxqK7yxoQHX7Xexj", "localExt": {"vW4rZ57Ra4Wlon8Z": {}, "zeHgabbmT81jfik6": {}, "ShLjJbf174MCR5Zp": {}}, "longDescription": "vlWXRfEoUuNmQrq6", "title": "p7WrYOBpl77LsKN4"}}, "name": "6XLNfQ0SXyMTygZR", "rotationType": "FIXED_PERIOD", "startDate": "1993-07-22T00:00:00Z", "viewId": "ID9PxPyXJHsWipvZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'UpdateSection' test.out

#- 185 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'ANpRXHVqJaiwkoaB' \
    'b8UYH2Pz5V5CtSrc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'DeleteSection' test.out

#- 186 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'ListStores' test.out

#- 187 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "X7aRP8vZ9a77wOP1", "defaultRegion": "0AbpbjZo2dQM3ZXq", "description": "9atijyFT8B6hECr4", "supportedLanguages": ["zqhZ9lpllwasnryj", "xylwRVcy18iHO0dK", "NHWBFM13F37X9HTu"], "supportedRegions": ["6c4mMUdJoKmyaU7q", "TgHxGQ4Dm2YoSLUI", "zzQsIU3IZf93pQmm"], "title": "WWhMnRSn6PRk0DwX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'CreateStore' test.out

#- 188 GetCatalogDefinition
$PYTHON -m $MODULE 'platform-get-catalog-definition' \
    'CATEGORY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'GetCatalogDefinition' test.out

#- 189 DownloadCSVTemplates
$PYTHON -m $MODULE 'platform-download-csv-templates' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'DownloadCSVTemplates' test.out

#- 190 ExportStoreByCSV
$PYTHON -m $MODULE 'platform-export-store-by-csv' \
    --body '{"catalogType": "ITEM", "fieldsToBeIncluded": ["YJ6aX6XRSXg6OXqw", "h2Uj0IZZFXv7pY5c", "NIYdQRni6IfH05hV"], "idsToBeExported": ["dagEETj8DNzQF9Yw", "a1VlJBmSCpF2z5O9", "ugNuq4uGu9km7Key"], "storeId": "QB3SUe4ug9J3KKHH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'ExportStoreByCSV' test.out

#- 191 ImportStore
eval_tap 0 191 'ImportStore # SKIP deprecated' test.out

#- 192 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'GetPublishedStore' test.out

#- 193 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'DeletePublishedStore' test.out

#- 194 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetPublishedStoreBackup' test.out

#- 195 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'RollbackPublishedStore' test.out

#- 196 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'aSwFS7fAGmA4gy2Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'GetStore' test.out

#- 197 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'Bm02aTdgp0WcRdrr' \
    --body '{"defaultLanguage": "dOKQbXXiMg5RAaD5", "defaultRegion": "a0gqyakuryISjsrH", "description": "y7SSarFsJyanoth2", "supportedLanguages": ["jhzr7POOjzRzlmVm", "pfmMq65nYpNAwv9U", "svPaX8W0GvPN7gRf"], "supportedRegions": ["sySRn2FX0Ac7CzuP", "XE90ufrBaS458bBT", "bcqQVkSIXLGF8dtk"], "title": "8bqcPfBJ9GOHxUkZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'UpdateStore' test.out

#- 198 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'CvqVRe3F78EGvZd4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'DeleteStore' test.out

#- 199 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    '9hW95i4Rm9sBef6y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'QueryChanges' test.out

#- 200 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'mEEU6G6YVa5GGFvL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'PublishAll' test.out

#- 201 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'tWl66DAEkAvXqNdn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'PublishSelected' test.out

#- 202 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'Efei54fLtFTRx1fc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'SelectAllRecords' test.out

#- 203 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    'fy4uTVbxv0l7RvPO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'SelectAllRecordsByCriteria' test.out

#- 204 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'Kq8iNNYLY5oWJPoo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GetStatistic' test.out

#- 205 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    '8QT5EB5GCOCowERM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'UnselectAllRecords' test.out

#- 206 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'veDiI5BYvV5LF22G' \
    'lLe48YQRsZpn4zsR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'SelectRecord' test.out

#- 207 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    '2KwSIl0Un3PT2bVz' \
    'Ot2J0VxSVRWxJw7i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'UnselectRecord' test.out

#- 208 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'dbmOx0vyaMbcnlyB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'CloneStore' test.out

#- 209 ExportStore
eval_tap 0 209 'ExportStore # SKIP deprecated' test.out

#- 210 QueryImportHistory
$PYTHON -m $MODULE 'platform-query-import-history' \
    'vXdpoYVZKx8oPBJn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'QueryImportHistory' test.out

#- 211 ImportStoreByCSV
$PYTHON -m $MODULE 'platform-import-store-by-csv' \
    'cKdyabXymlDvbcAp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'ImportStoreByCSV' test.out

#- 212 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'QuerySubscriptions' test.out

#- 213 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'uoA5PCdXT4YD9fDz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'RecurringChargeSubscription' test.out

#- 214 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'x1WPpvLBMMNJG6Tu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GetTicketDynamic' test.out

#- 215 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'Q90jhJCrrsBPvGhW' \
    --body '{"orderNo": "iPLLd5eChF7cgujI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'DecreaseTicketSale' test.out

#- 216 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'tr2ZFjL5qUyimmVz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'GetTicketBoothID' test.out

#- 217 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'OJYebI5Egye4CkNI' \
    --body '{"count": 64, "orderNo": "wnnpoM2KSoHlpDFI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'IncreaseTicketSale' test.out

#- 218 Commit
$PYTHON -m $MODULE 'platform-commit' \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 75, "currencyCode": "JNovlZq1O6RDUgil", "expireAt": "1993-10-02T00:00:00Z"}, "debitPayload": {"count": 57, "currencyCode": "owJEG08jO7JMvkh0", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 87, "entitlementCollectionId": "iP6WeXWf3dBAVfIM", "entitlementOrigin": "Playstation", "itemIdentity": "oLFaTIhv5XrQvTAd", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 73, "entitlementId": "sxP0DyxqSYeCl4gE"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 95, "currencyCode": "IMDALa4nsITUeFKN", "expireAt": "1975-06-11T00:00:00Z"}, "debitPayload": {"count": 20, "currencyCode": "TP1AE4lqnIwLN2lG", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 37, "entitlementCollectionId": "QSzIUdIqmVvmcAsP", "entitlementOrigin": "GooglePlay", "itemIdentity": "wMgZPR9Q5Lstog0e", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 89, "entitlementId": "jEmcjJzkf7rNu3ZA"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 29, "currencyCode": "yuJsfxI3zuYwCYQw", "expireAt": "1994-12-24T00:00:00Z"}, "debitPayload": {"count": 80, "currencyCode": "r3lmeyijwD3pYZEo", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 12, "entitlementCollectionId": "D7WXkw7te8pQfvxY", "entitlementOrigin": "Steam", "itemIdentity": "zPZKMd5ItnXbDbXW", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 75, "entitlementId": "qGPOCMPGtRg0HGzS"}, "type": "FULFILL_ITEM"}], "userId": "a2nnyqvFCYJOJl9l"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 22, "currencyCode": "s9WPwxzICEykNJeE", "expireAt": "1978-08-10T00:00:00Z"}, "debitPayload": {"count": 9, "currencyCode": "pBIXqoaoYoHcrIwc", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 95, "entitlementCollectionId": "kDf3ciuVB7vM6wSq", "entitlementOrigin": "Other", "itemIdentity": "B5J9XxYqy0HcWUCc", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 15, "entitlementId": "Jk5kBnuo4jR1HYLJ"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 28, "currencyCode": "nuoHm9foRLP4zSxA", "expireAt": "1978-06-06T00:00:00Z"}, "debitPayload": {"count": 73, "currencyCode": "fFjNF99VixS5Es3u", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 22, "entitlementCollectionId": "YwjvKhxwtaxd74bE", "entitlementOrigin": "IOS", "itemIdentity": "Zby9mBdGrJY5J0e9", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 1, "entitlementId": "WcVTCNxjdv8GxhJo"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 25, "currencyCode": "lAkbm1Abh9QxLBfh", "expireAt": "1978-12-02T00:00:00Z"}, "debitPayload": {"count": 83, "currencyCode": "KyfAbdUB1OM5oKTX", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 80, "entitlementCollectionId": "NlenFuUeRc2SCqQ9", "entitlementOrigin": "IOS", "itemIdentity": "mPZRllengCdfKGCB", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 55, "entitlementId": "yos4fOD6B14cwUNB"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "J7O7dNzDBzVmGSho"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 14, "currencyCode": "l8uD1hpBtpd4eLc1", "expireAt": "1992-06-10T00:00:00Z"}, "debitPayload": {"count": 31, "currencyCode": "aFNPCECKSzHTT5be", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 10, "entitlementCollectionId": "t4CDlWZzqpJeQd6t", "entitlementOrigin": "Xbox", "itemIdentity": "kuGKVQWNOUAh5VXa", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 39, "entitlementId": "2d31zPHg6tXTsGmv"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 97, "currencyCode": "6sr8tSaA0g0OCIEQ", "expireAt": "1997-11-20T00:00:00Z"}, "debitPayload": {"count": 78, "currencyCode": "pHU7Kjrz4HAGIJOS", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 73, "entitlementCollectionId": "oJdIIw70J2JeqNTx", "entitlementOrigin": "Oculus", "itemIdentity": "Ok2aKaj7wqr7wwPC", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 77, "entitlementId": "ByCnljJ7CYvapWO5"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "System", "count": 91, "currencyCode": "co1tRG98viuYwQTH", "expireAt": "1989-12-02T00:00:00Z"}, "debitPayload": {"count": 4, "currencyCode": "3rnYfZ8c8zURCckW", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 41, "entitlementCollectionId": "TYAkogbV1bNoJJUh", "entitlementOrigin": "Twitch", "itemIdentity": "xkRSajXSTpU3aCkz", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 37, "entitlementId": "3WCBnIHoRNWTVvIN"}, "type": "FULFILL_ITEM"}], "userId": "c2uh7Ls9nxKiaoWm"}], "metadata": {"rw6n7VYPrZA5UWNq": {}, "6yTj5WST6JF9lLvP": {}, "S5jJ58vaRaaxVQeM": {}}, "needPreCheck": false, "transactionId": "uZeQkRBv8hh81CTY", "type": "PYD0WHJ0JzaJpqg9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'Commit' test.out

#- 219 GetTradeHistoryByCriteria
$PYTHON -m $MODULE 'platform-get-trade-history-by-criteria' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'GetTradeHistoryByCriteria' test.out

#- 220 GetTradeHistoryByTransactionId
$PYTHON -m $MODULE 'platform-get-trade-history-by-transaction-id' \
    'JgEy7Iad7fAMCaXs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'GetTradeHistoryByTransactionId' test.out

#- 221 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'ZoyeqN5ouEcXRhWb' \
    --body '{"achievements": [{"id": "ROnhOUSnN2KpfXJ9", "value": 67}, {"id": "sJUnv5BwzKyxJqBC", "value": 1}, {"id": "nNDFZOok9snWC9CF", "value": 17}], "steamUserId": "4KjUJVMedBEWe14k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'UnlockSteamUserAchievement' test.out

#- 222 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'mPIGCrJozIio8nWa' \
    '64x5pJSHZCzyWKP3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'GetXblUserAchievements' test.out

#- 223 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '0KusyvaitTsWtL2A' \
    --body '{"achievements": [{"id": "AtjEKW31SlSm20Dz", "percentComplete": 7}, {"id": "LbAXxxeatall18E5", "percentComplete": 72}, {"id": "n8SAQhtiWA2DHIoc", "percentComplete": 65}], "serviceConfigId": "aiZN3MPuYWk5lHvw", "titleId": "9RXrx8aUB1xXuK2M", "xboxUserId": "wrRJukMTkO00KLgd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'UpdateXblUserAchievement' test.out

#- 224 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'dr0UUiy5jm1w2g65' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeCampaign' test.out

#- 225 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'JkaoPuBsuSb0LePf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeEntitlement' test.out

#- 226 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    '5b8MJ94DAh1Mc7Vk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'AnonymizeFulfillment' test.out

#- 227 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'Hxj8k5KSFtbEoEr5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'AnonymizeIntegration' test.out

#- 228 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'LqKRRnKy17sBYlx7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeOrder' test.out

#- 229 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'rzEm3km2jjNrqEmu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AnonymizePayment' test.out

#- 230 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'Ef6JRpqZEUH2Rr5l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeRevocation' test.out

#- 231 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'kfHjqVCMpunzeSPk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AnonymizeSubscription' test.out

#- 232 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'f8Y5ksiqVvcGZxTP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'AnonymizeWallet' test.out

#- 233 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    '7pduqX3e9tt0zz5g' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'GetUserDLCByPlatform' test.out

#- 234 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'g7UWRzPsMd90Jrkh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'GetUserDLC' test.out

#- 235 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    '4kaHSpxt9CW0WYKx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'QueryUserEntitlements' test.out

#- 236 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'AYERGPWWPobC0Fiw' \
    --body '[{"collectionId": "Nmp1e9JzR7Bat3pd", "endDate": "1971-03-05T00:00:00Z", "grantedCode": "jxfK1P9wjSBBxjKN", "itemId": "vNPiwIMR5JsbLCG2", "itemNamespace": "0BKfuTGRLmLwLS7d", "language": "EcAv", "origin": "System", "quantity": 53, "region": "jtNbryvmkemouOe0", "source": "REWARD", "startDate": "1972-03-01T00:00:00Z", "storeId": "nHTrHLmaTGFI1atD"}, {"collectionId": "OVS2F6Is27hn9TSw", "endDate": "1986-10-11T00:00:00Z", "grantedCode": "vJPZcYrXKMnNZIm0", "itemId": "ooHCnlq1H5IuOvaf", "itemNamespace": "RIdOXlxxdySywm5h", "language": "PPdY", "origin": "IOS", "quantity": 72, "region": "g41ZhheDDG5HJEFQ", "source": "REWARD", "startDate": "1996-09-22T00:00:00Z", "storeId": "4iVg8TK1CF9X9mTm"}, {"collectionId": "MVfQaiQKdHknLotp", "endDate": "1976-07-25T00:00:00Z", "grantedCode": "fBOvsb9aicyajUNH", "itemId": "4cyuoR5YkRhK1PGf", "itemNamespace": "mAnDGtInmyZkHQxU", "language": "SwS_FUeh-gy", "origin": "Other", "quantity": 14, "region": "H5gSuRJLGkijLEJP", "source": "REFERRAL_BONUS", "startDate": "1987-01-27T00:00:00Z", "storeId": "MDAkWOP9y3eP20aR"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'GrantUserEntitlement' test.out

#- 237 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'JVXYPkIGnj7nGzgS' \
    'kTy0cIm2Tc4sbYVp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetUserAppEntitlementByAppId' test.out

#- 238 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    '7amyDRQk3QGp0uzz' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'QueryUserEntitlementsByAppType' test.out

#- 239 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    '44WHDDNDVgExcmm4' \
    'fkoNMVNk6z4A3FI6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementByItemId' test.out

#- 240 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    '0uUrVMjqwLfyh5UU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GetUserActiveEntitlementsByItemIds' test.out

#- 241 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'BSKyenhZ56H3l3jc' \
    '1060kqFKNcGHYIXD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetUserEntitlementBySku' test.out

#- 242 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'qQpOY256yQcC8CPF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'ExistsAnyUserActiveEntitlement' test.out

#- 243 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'Xan7LUfcQhcxynrF' \
    '["5qWYvJX1f7rYnPbk", "Dk5g9y47AVCmFD0n", "KyUwcI9KJZt31la1"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 244 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'wZgpPXxtcOPw0UBm' \
    '7wccELVo9RYTquwI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 245 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'rGgk3eqgOf7WwNZW' \
    'yYuM3y1TjdcOVw94' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementOwnershipByItemId' test.out

#- 246 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'gqQYOWGw7LSW6Kb9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'GetUserEntitlementOwnershipByItemIds' test.out

#- 247 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'otdVBjacY5doQGhc' \
    '8zSCeJ4Q8PHY6vGz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'GetUserEntitlementOwnershipBySku' test.out

#- 248 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'NfPWTQ1pJMwPVAUN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'RevokeAllEntitlements' test.out

#- 249 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'YFOg7TplEkOZy73b' \
    'RBtWCJCJuzB1jbh9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'RevokeUserEntitlements' test.out

#- 250 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '5vj0V2ccQ60lub80' \
    '7E0PGhia3QvaFIVf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlement' test.out

#- 251 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'HyAiTeDDuvgKTfrZ' \
    '6TfrQrFIsYsZ1dTn' \
    --body '{"collectionId": "2pA64FJuEPymbIAw", "endDate": "1986-05-21T00:00:00Z", "nullFieldList": ["AyNBagGD33WMVj7b", "fdfxyqKQ4YNnTTwZ", "euX7f9iY3skbk25j"], "origin": "Twitch", "reason": "VrdNH8v1oP98hanh", "startDate": "1986-11-18T00:00:00Z", "status": "SOLD", "useCount": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'UpdateUserEntitlement' test.out

#- 252 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'UbY1Zkrfk0Xn6jwf' \
    'R02GfMrXzI7oWD1m' \
    --body '{"options": ["Z9rW6QdtPe4YleMg", "5NGs1Pmz6Amebh0F", "bOWyhAnMP6BdBw6d"], "platform": "4UOI7Tr9NHcXeEWI", "requestId": "pyYx9wOuNquv2qkq", "useCount": 88}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'ConsumeUserEntitlement' test.out

#- 253 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    '08QVF9gKmJBuqEpg' \
    'nV3xNdP3uQJ2ZdCS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'DisableUserEntitlement' test.out

#- 254 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'tanvPwuBVifTkfle' \
    'gYoVHYdQPAsGfQVa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'EnableUserEntitlement' test.out

#- 255 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'wbSlqUfFfZytHO4x' \
    'rQvXR88ArNPkMbfh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'GetUserEntitlementHistories' test.out

#- 256 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'brTb4ZPG4R5dqhre' \
    'Kq9si5LTZGjfJI0G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'RevokeUserEntitlement' test.out

#- 257 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    'RPR9FWa3sAlKnzZ5' \
    'Joq98jWszWZxmbhM' \
    --body '{"reason": "r5aDNyd7VDhThmXA", "useCount": 38}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'RevokeUserEntitlementByUseCount' test.out

#- 258 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'sxKkXhiEo0RXgJkW' \
    'elLk7pTvUfmra4es' \
    '8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 259 RevokeUseCount
eval_tap 0 259 'RevokeUseCount # SKIP deprecated' test.out

#- 260 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    'HVwE86VYnuoHevgj' \
    '9ralh2tjIEDpjLJD' \
    --body '{"platform": "7E0dh077pXU34waI", "requestId": "IRxeTkl27M6AggzK", "useCount": 83}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'SellUserEntitlement' test.out

#- 261 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    '3nqWutrpjBOnBeqw' \
    --body '{"duration": 57, "endDate": "1978-09-20T00:00:00Z", "entitlementCollectionId": "3GmIqfQ8mJbg0TSR", "entitlementOrigin": "Playstation", "itemId": "6ePpjPG4iKj1VxNo", "itemSku": "FLwY2aYPpdsN55f9", "language": "R3a5ZvIk8F6ffaPP", "metadata": {"2hJSGfW6ap0wsdPd": {}, "G1EQTyBW6pf9Ni5L": {}, "9NkvuqwvTTB6lW4R": {}}, "order": {"currency": {"currencyCode": "7V4J46ZNRNpLcI8V", "currencySymbol": "h4bQO4Nc65zcFKgC", "currencyType": "REAL", "decimals": 13, "namespace": "MEpgLEiStlzCMldc"}, "ext": {"ic4UcTKpdyvGEAo7": {}, "B9gTsb09YBTADJQd": {}, "JJb27jRm1nyjO60S": {}}, "free": false}, "orderNo": "RIJearztP7sqwrac", "origin": "Epic", "overrideBundleItemQty": {"3ZvUrBoqK16btU6S": 30, "ocWBq1VspKjs4jxj": 93, "FmBqiyicQHvr1zRE": 34}, "quantity": 90, "region": "WwsQaxbdG9IxEoxc", "source": "EXPIRATION", "startDate": "1990-11-24T00:00:00Z", "storeId": "KHle3po9nK2MnWIS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'FulfillItem' test.out

#- 262 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'Z8LUxYanMQUFaZF7' \
    --body '{"code": "4RbeEi4WAntBdOLV", "language": "fS", "region": "fyiS3dO8j3taWbSh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'RedeemCode' test.out

#- 263 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    'XMN0MRNkMX09nQEw' \
    --body '{"itemId": "FSce6VsIsSSdkP3I", "itemSku": "qaPaXJc57cVP8tXC", "quantity": 39}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PreCheckFulfillItem' test.out

#- 264 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'i2FDgx1gJONPjy1e' \
    --body '{"entitlementCollectionId": "i7AZBrLdMJG912CJ", "entitlementOrigin": "Playstation", "metadata": {"lSQiwrmWKb8IhCNJ": {}, "qtCtGvxKwuL3MuhH": {}, "Xzy6WjNeNYuVWrqx": {}}, "origin": "Oculus", "rewards": [{"currency": {"currencyCode": "8zvapmS8p27dvzUW", "namespace": "Mz6IheEap1PhjtZk"}, "item": {"itemId": "nu6Ke0rhmQrBLti0", "itemSku": "OZtmm5xYReY6SgfT", "itemType": "y3HUPSrR6V6wTNkt"}, "quantity": 100, "type": "ITEM"}, {"currency": {"currencyCode": "OwGcqmkqou4IX6yn", "namespace": "Cg7jZBPZUjh5Id1W"}, "item": {"itemId": "wN3o2LnIKn5bM9rW", "itemSku": "10Xi6WV5MHuvBu2Q", "itemType": "QOXQatBE5QBIDADP"}, "quantity": 94, "type": "CURRENCY"}, {"currency": {"currencyCode": "2PdIoHdoDHgvwcWx", "namespace": "lmJoJSnhyf4L6dZ6"}, "item": {"itemId": "6Zi7azAJHL5PE9RV", "itemSku": "ZONAcvKXL23ppvor", "itemType": "8grcvFvYajtvdiqy"}, "quantity": 58, "type": "ITEM"}], "source": "REDEEM_CODE", "transactionId": "He2xJmIQ7lG3SSfJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'FulfillRewards' test.out

#- 265 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'b7YC46l63YRc0T3d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'QueryUserIAPOrders' test.out

#- 266 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    '9XaFEWXtvTExHo1H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'QueryAllUserIAPOrders' test.out

#- 267 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'liWVA9kYxDaegAgX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'QueryUserIAPConsumeHistory' test.out

#- 268 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'I2ciZ5FWoyqYl8KD' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "Mbg_CigY-xF", "productId": "e0VJQksEtHq5KHA9", "region": "baTP1jNjpn8azMyT", "transactionId": "BLnxtGnH0h3Tvkyn", "type": "XBOX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'MockFulfillIAPItem' test.out

#- 269 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'dR0cTxgD0WOWAsTh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'QueryUserOrders' test.out

#- 270 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'Z6Ln6xBAApmumWxY' \
    --body '{"currencyCode": "TfEEm2g8JpfOhv1d", "currencyNamespace": "FmmwcX8cRQpNggDq", "discountCodes": ["IfB0DPn1CZrBaO9y", "4CHHaydtaKJNujTv", "CDwyDu1QGAcJRAK1"], "discountedPrice": 25, "entitlementPlatform": "GooglePlay", "ext": {"Ldod5DYqp6XDPJmY": {}, "DZqWoL8k0jEDj1R6": {}, "73CfYbn53kIRN1df": {}}, "itemId": "13EvjSbGYcLQEocU", "language": "fUPAI2O4xXXwCsNt", "options": {"skipPriceValidation": false}, "platform": "Oculus", "price": 88, "quantity": 10, "region": "h3rUUKaN66Rjkt9z", "returnUrl": "Wkx2SjE4MM82Qw4C", "sandbox": true, "sectionId": "p4YKcL3qt4lUCjpl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'AdminCreateUserOrder' test.out

#- 271 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'pfxQDpz3ka75GSPr' \
    'ezfQIy1FsYo03H0H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'CountOfPurchasedItem' test.out

#- 272 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'WXeUSuTJRHgBRpSb' \
    '3GL7YAU5AnUkmfVW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'GetUserOrder' test.out

#- 273 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    '93ZW1tXAOpK37SfS' \
    'PivmYx19GWm87P1G' \
    --body '{"status": "CHARGEBACK", "statusReason": "6sjHoBLGz2Km7DEt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'UpdateUserOrderStatus' test.out

#- 274 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'ivDSv0mmNGIWjV9L' \
    '9aA57kR2ACNzI10t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'FulfillUserOrder' test.out

#- 275 GetUserOrderGrant
eval_tap 0 275 'GetUserOrderGrant # SKIP deprecated' test.out

#- 276 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'Zr3AjmwxrpjfgamO' \
    'ka0iwQFwqJrWlE1x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'GetUserOrderHistories' test.out

#- 277 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'E0AgbtqawrlckTgu' \
    'otHZZnBkb1WomHQ2' \
    --body '{"additionalData": {"cardSummary": "3RrmGI0fa4tSghRE"}, "authorisedTime": "1978-08-10T00:00:00Z", "chargebackReversedTime": "1976-06-25T00:00:00Z", "chargebackTime": "1994-08-20T00:00:00Z", "chargedTime": "1976-02-11T00:00:00Z", "createdTime": "1980-09-01T00:00:00Z", "currency": {"currencyCode": "zrUTJgBjWwZMcxIc", "currencySymbol": "mhutMHEeUDIyZ6bU", "currencyType": "REAL", "decimals": 62, "namespace": "6Q4DAwzeZS20lWbI"}, "customParameters": {"y7iWsAEY3T2YDXuJ": {}, "SzkSZfZ5duijZETi": {}, "zaQixMgpWQ9PgUcB": {}}, "extOrderNo": "3N69aWeqMy8NAiT9", "extTxId": "jmCgwDPgvbhdCorB", "extUserId": "gPIEGgJfwbFJ8VUx", "issuedAt": "1982-10-23T00:00:00Z", "metadata": {"8qZiALIoUy5BK25P": "GFQBJJHKR8nXRVh3", "6pW5RFN9k93aNy4v": "vrPXP6Snc4UqgNJc", "VC0MQnjUphnyKSPg": "LrITdqgHGJd9AlCq"}, "namespace": "ccvcf4aG26GboaJ6", "nonceStr": "3McAoV2wACiUOAYJ", "paymentMethod": "UhwTgl0tvWir64fq", "paymentMethodFee": 31, "paymentOrderNo": "425Kp2PGW8gpXu2m", "paymentProvider": "WXPAY", "paymentProviderFee": 7, "paymentStationUrl": "FWbYOy7zpSeyGBLa", "price": 42, "refundedTime": "1979-06-26T00:00:00Z", "salesTax": 67, "sandbox": false, "sku": "lfgrzLifZvRPXjiY", "status": "INIT", "statusReason": "SwlnSYTuNVajwq9o", "subscriptionId": "nI9NBO48v6DUJRe1", "subtotalPrice": 76, "targetNamespace": "yVC7JcK5UdheuW7H", "targetUserId": "OMooXzmW321H7CGe", "tax": 56, "totalPrice": 24, "totalTax": 67, "txEndTime": "1992-01-09T00:00:00Z", "type": "Ptar2LEaQgwjgNbq", "userId": "Y9SXZMP793iEdDgN", "vat": 67}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'ProcessUserOrderNotification' test.out

#- 278 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'TGmF087BWKC6wzHg' \
    'wFqS6c2YCA1r312B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'DownloadUserOrderReceipt' test.out

#- 279 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'KDvA3YyGsBgTJCc6' \
    --body '{"currencyCode": "734MnrbjAM32RlQ3", "currencyNamespace": "Wpg0XNZCsESCHRPA", "customParameters": {"5OQX8twQrDu49JFX": {}, "jPc1tJBaHYTZ2Idg": {}, "UYmmt7HXJCUjwNMn": {}}, "description": "mrmR9dDVbvyNupYC", "extOrderNo": "zyYEaMgXsszL7hps", "extUserId": "SwAQxtDEUm4PnTTy", "itemType": "OPTIONBOX", "language": "HL-RGHq", "metadata": {"fJHbuwF3aZQrVPWy": "ZpnVjbpotD8HTOOd", "vA4UhdTY2DNsFuGc": "D5vraJ3WftgZ43r4", "ZLb7i2SZkIaANvZ0": "I2EGVDWs67zwXLLD"}, "notifyUrl": "tNRfmo1w8aAcuRQz", "omitNotification": false, "platform": "4tziEpGVXsUvez1l", "price": 2, "recurringPaymentOrderNo": "U4YHfMpHxEcJG7c7", "region": "6AToup2zhRng3Kib", "returnUrl": "PdtHZPKb8CPLdIk4", "sandbox": true, "sku": "9TU6FvvEdqHzEDtl", "subscriptionId": "5oR9m1dm3fGK1wIN", "title": "qvFrAsrmYYu40w6s"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'CreateUserPaymentOrder' test.out

#- 280 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'zojkvjtacFSVTvgh' \
    '23BGEa5ftmSBKQ3z' \
    --body '{"description": "AXk9qVrzEqsDwIwR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'RefundUserPaymentOrder' test.out

#- 281 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'yHKWspPtJlLDOjXT' \
    --body '{"code": "WGIrWq2VvH0roA20", "orderNo": "Sfzrc9YYsgvVLN3u"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'ApplyUserRedemption' test.out

#- 282 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'sfhiyCf1FOddxtE5' \
    --body '{"meta": {"2sFK1jNp3OwcrNR2": {}, "jH7Xx7m8IqIRyUqa": {}, "CbbMa2LqgJOAfFwv": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Other", "currencyCode": "SpGmf8BXosNylCwc", "namespace": "f2iVxv9QtivQqeRy"}, "entitlement": {"entitlementId": "PorhTuFn3W0qApZ9"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "a9g9AjLDQL5jZbyj", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 28, "type": "ITEM"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "VIQMA6BOpxtYbmQw", "namespace": "S5kNxCPLeKM4cQl8"}, "entitlement": {"entitlementId": "DlY91SXBeHwrkPCa"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "RKEcLehyAowu72oC", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 50, "type": "ITEM"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "ES0mVVI1FilcO4pa", "namespace": "jEhkRLMvZnYZKCk0"}, "entitlement": {"entitlementId": "zbREElwdZORocHSH"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "1Rzb4MCHH4aATHwP", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 3, "type": "ITEM"}], "source": "DLC", "transactionId": "xPPUmUifQvfoZ7n3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'DoRevocation' test.out

#- 283 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    'eRMzJEQYwNGRl2gc' \
    --body '{"gameSessionId": "WdDmIy4Ia2UtS4T1", "payload": {"v2y9Je7apQfNdDyT": {}, "3a0EGpHgGLUqdG3k": {}, "BfGvwjwttys4GvDv": {}}, "scid": "s1H5juf5Cq950Xti", "sessionTemplateName": "MxQDIHnPin3vZc9b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'RegisterXblSessions' test.out

#- 284 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'UYgwdNmcpdldDn2Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'QueryUserSubscriptions' test.out

#- 285 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    '2l1kZWnqjJaGGTFa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'GetUserSubscriptionActivities' test.out

#- 286 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'JHecFy9m5s6oIWMn' \
    --body '{"grantDays": 21, "itemId": "X56gzosv2p6WtLfg", "language": "PM8t1tgWhx94eFnx", "reason": "fKdptYcgxbMBZz4e", "region": "7YZPuTkhJH0gQxqx", "source": "mEFytm0rZGlRUuJ7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PlatformSubscribeSubscription' test.out

#- 287 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'HggA1D8DBtkE9JX7' \
    'oDFoXpZ9sy7dEuiT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 288 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    '7OrRdHjzNhfc3uok' \
    'glAmxb5eaYqdXkBq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'GetUserSubscription' test.out

#- 289 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    't2UfrBE1JhOOdYFV' \
    'xYR0XhaQ30cHb0re' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'DeleteUserSubscription' test.out

#- 290 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    '0TJwuS3NPZi6h1nN' \
    '0txahdhp0tmV4jjI' \
    --body '{"immediate": false, "reason": "MOHEhe6apnthJsQp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'CancelSubscription' test.out

#- 291 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'zHxEsiEsZH3UVmVc' \
    'OxU0GsP6oBsZy1nI' \
    --body '{"grantDays": 9, "reason": "4RB2xVHiARcFLzOW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'GrantDaysToSubscription' test.out

#- 292 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    '7Uz8Gz5TN3bJ6UVK' \
    'AdNp2ReRw5WPjohG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'GetUserSubscriptionBillingHistories' test.out

#- 293 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'mJKCjbEtFKLGvBQO' \
    'S81LpIh5QqEOKQXn' \
    --body '{"additionalData": {"cardSummary": "UYMXvJJrO8K9yVaS"}, "authorisedTime": "1995-01-21T00:00:00Z", "chargebackReversedTime": "1978-11-15T00:00:00Z", "chargebackTime": "1992-03-25T00:00:00Z", "chargedTime": "1993-12-15T00:00:00Z", "createdTime": "1980-05-10T00:00:00Z", "currency": {"currencyCode": "SlMOoEllCitDiZDB", "currencySymbol": "LqmmiE0hD2A6L9zZ", "currencyType": "REAL", "decimals": 31, "namespace": "E9E87RTBvlu7lo1f"}, "customParameters": {"oXU28IE7EVvQkoqO": {}, "ZIFeJQSrnPscIMJR": {}, "StF3LRa7q49EdmhB": {}}, "extOrderNo": "pI13Mh9tHYQilnHr", "extTxId": "NI7XsRCD3YOzMK1Z", "extUserId": "WOxnVMpyEziAPi9d", "issuedAt": "1985-11-30T00:00:00Z", "metadata": {"g5J0me0BhvZVrOsZ": "SqQjmdJGa6AahLvh", "IfKDFkuldV3vhNCA": "UQUVGJTsED5tFgDM", "luY685drsUwaWMLd": "LGDjtirdqDck0QFo"}, "namespace": "velKxdFe87vTbT1y", "nonceStr": "kevWiIoubexJQ22u", "paymentMethod": "V5cRj529cEGlYlBT", "paymentMethodFee": 65, "paymentOrderNo": "75iSsLSqGKfGJDmz", "paymentProvider": "ADYEN", "paymentProviderFee": 9, "paymentStationUrl": "kIORjbuZi76GDzks", "price": 79, "refundedTime": "1979-10-09T00:00:00Z", "salesTax": 34, "sandbox": true, "sku": "G598WdAhvjsHqU3m", "status": "REFUND_FAILED", "statusReason": "wenKzXRT99U5B5j9", "subscriptionId": "CT2YI1qt4AYI54fg", "subtotalPrice": 13, "targetNamespace": "lDCLFwNGzR7zvW33", "targetUserId": "BLQ5NyteBZg7IM93", "tax": 78, "totalPrice": 38, "totalTax": 66, "txEndTime": "1972-11-30T00:00:00Z", "type": "MKko1WdXcuqjnyBh", "userId": "936FR7fT7f00EZw6", "vat": 69}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'ProcessUserSubscriptionNotification' test.out

#- 294 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'iq4fnnFA4ieAeG0J' \
    'cWHLxYckKH0j3mmJ' \
    --body '{"count": 32, "orderNo": "Y5FsP84rgl0AQlBi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AcquireUserTicket' test.out

#- 295 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'keTeA9eq8hIKrzAU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'QueryUserCurrencyWallets' test.out

#- 296 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'sKqpjQGHI3Wkg4HI' \
    'rEmqfnhjjtIQ7ipA' \
    --body '{"allowOverdraft": false, "amount": 30, "balanceOrigin": "Other", "balanceSource": "ORDER_REVOCATION", "metadata": {"6xTfJiEwGhGbMCnu": {}, "8NHDPiOQzKhR4x3p": {}, "Yj5be9x03hTzeUaF": {}}, "reason": "K6P6yxOlFhdtyrLQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'DebitUserWalletByCurrencyCode' test.out

#- 297 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'Hkz1Es8nQbk4SztM' \
    'OdFHQXjAZrDNCoJ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'ListUserCurrencyTransactions' test.out

#- 298 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 44, "debitBalanceSource": "PAYMENT", "metadata": {"B7TOu2FcuLwU5IJt": {}, "4pAasYNW28u3UZ3q": {}, "6QdMAL9IC4460Wck": {}}, "reason": "2oK2mLwkxgJXK2Oj", "walletPlatform": "Playstation"}' \
    'SoDgfLayvPNWmvzO' \
    'aDtopfGPnF4i8PP7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'CheckBalance' test.out

#- 299 CheckWallet
eval_tap 0 299 'CheckWallet # SKIP deprecated' test.out

#- 300 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'jdmy3KsRDI0m4nKN' \
    'GlXp2jJfLGd0zQqY' \
    --body '{"amount": 26, "expireAt": "1998-09-21T00:00:00Z", "metadata": {"I3ypoEAwuriKcfEb": {}, "erKsmttvFw6Ev28m": {}, "tO5isAId2vIIeRmF": {}}, "origin": "Xbox", "reason": "2TQ2rE5Ugf8q6zX7", "source": "REDEEM_CODE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'CreditUserWallet' test.out

#- 301 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 26, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"YNHB2ph25oEsCRrl": {}, "Y6AX1ksmS6Cm75yF": {}, "ZVt1HZPcFbl4XrKU": {}}, "reason": "phPevxFz1b7Q3NwV", "walletPlatform": "Nintendo"}' \
    'r3yS6PcP3N8ee3aF' \
    'SyZkpxzyGW3kHAKN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'DebitByWalletPlatform' test.out

#- 302 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'zH5cJ1x2IhHEQwW4' \
    '4r5yXnevZsdD9Iip' \
    --body '{"amount": 24, "metadata": {"5t7Rgtj7pKnbtPAZ": {}, "sNwKWlHT7wmvO6YD": {}, "gQ4TLdkZgouTEi19": {}}, "walletPlatform": "Epic"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PayWithUserWallet' test.out

#- 303 GetUserWallet
eval_tap 0 303 'GetUserWallet # SKIP deprecated' test.out

#- 304 DebitUserWallet
eval_tap 0 304 'DebitUserWallet # SKIP deprecated' test.out

#- 305 DisableUserWallet
eval_tap 0 305 'DisableUserWallet # SKIP deprecated' test.out

#- 306 EnableUserWallet
eval_tap 0 306 'EnableUserWallet # SKIP deprecated' test.out

#- 307 ListUserWalletTransactions
eval_tap 0 307 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 308 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'ListViews' test.out

#- 309 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    'vmbqHpLDqY64bsfW' \
    --body '{"displayOrder": 79, "localizations": {"YszqB4U4xH3NpxEE": {"description": "E1xE1teY5Ma16Sr2", "localExt": {"B137kVZhkISgONgr": {}, "rElIGGV8sY9ZaFaH": {}, "BtEtzzbIbJ6nsmYA": {}}, "longDescription": "LYAas29PBhKjKkXD", "title": "nEXVzzBDNoUXOIkG"}, "hmAMgJu6c1uzCA65": {"description": "7ulArgYuyjFEveRv", "localExt": {"l0xjoSZYArBlpKXp": {}, "e1zYzna0T42qYhPs": {}, "MMX4Dg6kBhhmAmGW": {}}, "longDescription": "gONbsaq6FR89FVcE", "title": "5vUWRlOGzgjnghEe"}, "YuTA3fZ9naIn2Ehp": {"description": "BnamOqQfF1i9lDi1", "localExt": {"7TuzOCkfreVXF3F5": {}, "7a8i8FBQVq8F8UHF": {}, "jnV4a8qkT208c4Eq": {}}, "longDescription": "naczanLg5zKTtaPm", "title": "N6tWQqV1V78ZIjg1"}}, "name": "EtBZbAWeHGdU9mll"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'CreateView' test.out

#- 310 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'RGwL1hP0ILR0Ela7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'GetView' test.out

#- 311 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'ZLwTA0wt5op6F6Z1' \
    'a1sBmUaCx3pnw2Uq' \
    --body '{"displayOrder": 82, "localizations": {"svdGlmWWA02nKwO7": {"description": "XUNrraxsHn4uKhXV", "localExt": {"FTTx0TcboB98Gf5P": {}, "cmWICZpV13Vxw1In": {}, "WyY5J5tCY01FkbWf": {}}, "longDescription": "SwD66Xg5Qbc0Ejxx", "title": "zLQLRh64Y1jopYiT"}, "RZEzq26aXSjyAQ2Q": {"description": "sMJlAxZUci2CC1SE", "localExt": {"p55TimgFFENNE15O": {}, "yfCm3JLSdyxEkUru": {}, "paAg8X3qrN4NJQHu": {}}, "longDescription": "cDPcorTkEhvJJBHT", "title": "f7gHQdNqoM8JpOKN"}, "AU33hDeba57ZY9YN": {"description": "NrTcdcnzDvUHgR2b", "localExt": {"X5lx9AjwbpWgnIzW": {}, "RtzH2wWVwIlnX0PY": {}, "oF43qdlpBadznEop": {}}, "longDescription": "QjdlmCKky8f25OS6", "title": "EXRpHjQ4hViJ1Z0G"}}, "name": "tE9ePlbHeBy2yYQJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'UpdateView' test.out

#- 312 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'sEZNAnUcJCHbaM8I' \
    '2sFnR0i1EP6ekQzr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'DeleteView' test.out

#- 313 QueryWallets
eval_tap 0 313 'QueryWallets # SKIP deprecated' test.out

#- 314 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 26, "expireAt": "1995-08-29T00:00:00Z", "metadata": {"BcDGudQQm98BKOds": {}, "oaTqFhdLfBWZeRFQ": {}, "vrB1lsWaPGfJVUla": {}}, "origin": "IOS", "reason": "UlMM4Cc3k5J2qbHY", "source": "REFERRAL_BONUS"}, "currencyCode": "te7LEbOajs9HWygf", "userIds": ["QVPPqE6XNxmrOFx6", "ieBzDBhi6oZhjEnb", "AenNJCzeLqjOhHMs"]}, {"creditRequest": {"amount": 22, "expireAt": "1973-05-10T00:00:00Z", "metadata": {"EWndhcek3atmhTw5": {}, "TDjWYgm2yGvhR6HS": {}, "643vgPdN21mWwtuq": {}}, "origin": "Xbox", "reason": "7OsTElVV8XJ7Jg2J", "source": "REFERRAL_BONUS"}, "currencyCode": "MZ9NeyZ5n02q1qbb", "userIds": ["V658ZBVGgxlpGxhD", "4CdsniSJKrJ4Brdf", "j3sLmfYzDVAVhXts"]}, {"creditRequest": {"amount": 21, "expireAt": "1989-02-05T00:00:00Z", "metadata": {"X2uBUIh1pfP8bRBV": {}, "oq807roCNo3Qw4Z5": {}, "4sNMs82e3yxhkTFf": {}}, "origin": "Xbox", "reason": "juqib3nbPkju9PQ5", "source": "IAP"}, "currencyCode": "iPaGqelc3lbrPkW2", "userIds": ["7Opf9oRlvBsYj4Ic", "bdUz2cBWKIUuPLfv", "foKqIz9z80ICxp4M"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'BulkCredit' test.out

#- 315 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "TFl9DbHQLYWCwsAV", "request": {"allowOverdraft": false, "amount": 59, "balanceOrigin": "Xbox", "balanceSource": "DLC_REVOCATION", "metadata": {"0VGEUxlcNQWOpRLE": {}, "TWMAv0uJ30L51Txr": {}, "dknW52x2o1yDO6bw": {}}, "reason": "cKYeFoxUWdvEBTwU"}, "userIds": ["kUOIadEDAmp524IR", "plmKcwvGguz7SAcG", "yzq5bzdNEHv6Gmao"]}, {"currencyCode": "vV4lCJgcrAut2gYp", "request": {"allowOverdraft": true, "amount": 27, "balanceOrigin": "Twitch", "balanceSource": "IAP_REVOCATION", "metadata": {"bE8ulWHoG1zC1K7o": {}, "T3iNe5yhZbqmAgI6": {}, "LUauh1GlEo4faeHI": {}}, "reason": "eXSROEb0iXucFoRm"}, "userIds": ["0vXLFZoXt8k5ZtRJ", "SWLbZCdcwYHhOIGu", "7DFw5ArJzNAElybJ"]}, {"currencyCode": "Gwh0BPRCWdTnytxm", "request": {"allowOverdraft": false, "amount": 17, "balanceOrigin": "Oculus", "balanceSource": "OTHER", "metadata": {"LQyLj7QmX1ijJDLq": {}, "jyW5nSpi08dnnmoW": {}, "GbDOWBzflDPp8sE7": {}}, "reason": "bcL6xy49IPWxqs6j"}, "userIds": ["JPNo4VIzCxIBQt7B", "AQJWL8Yc3AKtQffB", "EsLhZnLrMlvvXDmz"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'BulkDebit' test.out

#- 316 GetWallet
eval_tap 0 316 'GetWallet # SKIP deprecated' test.out

#- 317 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    '8vDIkHRMj2pIYdQh' \
    'OINS631eYxKFwpR5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'SyncOrders' test.out

#- 318 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["ukyHmVB2oTqRWbK0", "ubDt08F3Ptynki71", "NZANUG3XywOPxcLT"], "apiKey": "U0y3maqZGwBZAszr", "authoriseAsCapture": true, "blockedPaymentMethods": ["lUceWJidPUCDHoZP", "OFJliGQwzPSicmKe", "5tLTY4T61Ztjv4Hj"], "clientKey": "tKUJ2g5iKvkb6yaN", "dropInSettings": "0rJRTtAoroj50ibu", "liveEndpointUrlPrefix": "YM4wRG0lN0X5kMcm", "merchantAccount": "OdLuSZLYkIABWq6L", "notificationHmacKey": "MyqmJBIayJYIYPCQ", "notificationPassword": "LT4UtcQmxMnH608Z", "notificationUsername": "zCha8xLBGlN6GGKX", "returnUrl": "lt1XAswrMMjtufus", "settings": "ABAiEcZPc54ZoDD5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'TestAdyenConfig' test.out

#- 319 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "6c8ZJFga6qXT5618", "privateKey": "6aDmZpx6FpqFAR1F", "publicKey": "P2qDxqukQGmZ8QPR", "returnUrl": "4rrBu0xMLSZM2reG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'TestAliPayConfig' test.out

#- 320 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "0eUsKe4gH8U04S5F", "secretKey": "CpmYeCJwMPHx5qbq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'TestCheckoutConfig' test.out

#- 321 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'DebugMatchedPaymentMerchantConfig' test.out

#- 322 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "2es6TWDRr2bTPUxX", "clientSecret": "fvsOwNGBX5w0CKM4", "returnUrl": "KgSaTFkYqyDBVeKh", "webHookId": "VWlgMI2a4HuuQiMf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'TestPayPalConfig' test.out

#- 323 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["3ZtSRaKTvnYQcQK3", "OLU5xNeaLjRoNMmf", "yuSugV63aIt0NDFE"], "publishableKey": "cKEQaxvtIGC9xYvH", "secretKey": "bX0ptwZqHLOEqFcF", "webhookSecret": "lBmznrLziwCnnibC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'TestStripeConfig' test.out

#- 324 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "jn2uxoSkuKry9iZZ", "key": "vtreyTjGpaUSGjv2", "mchid": "AbKgIoGvyLZGyV2n", "returnUrl": "NIKGyVatdlj1BAkR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'TestWxPayConfig' test.out

#- 325 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "kfD5QI95OctLxGf6", "flowCompletionUrl": "SilVAgYAplPOe3Qp", "merchantId": 43, "projectId": 49, "projectSecretKey": "YCsDe0la83cvnj5U"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'TestXsollaConfig' test.out

#- 326 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    't4YTxIBMay1sHQox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'GetPaymentMerchantConfig' test.out

#- 327 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'lbhfnh1larFYcM0O' \
    --body '{"allowedPaymentMethods": ["oFV93hG5GVHrcfGp", "WAuflVB1opvSUYD0", "K7Y5bCch6ur33Fth"], "apiKey": "Z0FOWCXy70cM2iJt", "authoriseAsCapture": false, "blockedPaymentMethods": ["s5bsovjmmxHjjlqu", "ESAZpAC3MEgBrVUo", "MCPYZARtb3TsS5jO"], "clientKey": "BRYgnvYu1vzXsMr4", "dropInSettings": "3ycE5A2fFKAWLe45", "liveEndpointUrlPrefix": "nohGKrvpCUuClhTn", "merchantAccount": "LjG2riY5IlAkHgxs", "notificationHmacKey": "ULSOBCWJH9jh3zB9", "notificationPassword": "JEYLPl0Rjsq0yRuQ", "notificationUsername": "RarSVoIleZ7Ptbbc", "returnUrl": "riinQEr7oILTomzV", "settings": "EdqAFGjuRaB4ccMp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'UpdateAdyenConfig' test.out

#- 328 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'IH8Lan5Ny9rMiD8s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'TestAdyenConfigById' test.out

#- 329 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'eoTU64hQTXu9MixC' \
    --body '{"appId": "LkCkF4GsByu7ccqH", "privateKey": "PLY7ScjfHWvp5yxo", "publicKey": "HDN8wbZhTBvAeHGP", "returnUrl": "8MEJHjkHXgaYcrI4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'UpdateAliPayConfig' test.out

#- 330 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    '7DABOUyTgLqcqWj2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'TestAliPayConfigById' test.out

#- 331 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '5jcDQ7S4nZymFu9H' \
    --body '{"publicKey": "Dayb3pUN53xwUDji", "secretKey": "BHCt3VKh9NaXK6yI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'UpdateCheckoutConfig' test.out

#- 332 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'nDEdr3JfyFO9PUA6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'TestCheckoutConfigById' test.out

#- 333 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '1ceL94UMGbnwR8NQ' \
    --body '{"clientID": "y5mWp1i7XAgvpl6V", "clientSecret": "M46gEFqwJcySobYF", "returnUrl": "sOpqr85xVvxj351m", "webHookId": "51uwOolqmdu4KlKL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'UpdatePayPalConfig' test.out

#- 334 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'ptx5DKFWYNaRNbzp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'TestPayPalConfigById' test.out

#- 335 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'FsjJLszOiHFs5xAV' \
    --body '{"allowedPaymentMethodTypes": ["g39H5hnoP20tlphe", "w85KPyj4EGRMQTeD", "UODYJlL3GEb7CgXW"], "publishableKey": "eXJrzNrt0fkjelr7", "secretKey": "hVgkvQdto2PuC14L", "webhookSecret": "u2G4Mw4Mo4TirGDZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'UpdateStripeConfig' test.out

#- 336 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    '6OUYrf6N5BjG6bEL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'TestStripeConfigById' test.out

#- 337 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'ZwjEmKgZXlgbV3dB' \
    --body '{"appId": "wrK8hpKlmw63co2e", "key": "rbchkQ7n0C9lJb5W", "mchid": "lmAWYUtevQ8XsaIO", "returnUrl": "TUAVhHL0RrUev0iu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'UpdateWxPayConfig' test.out

#- 338 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    '9PIqi1GB1ZASgNby' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'UpdateWxPayConfigCert' test.out

#- 339 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'IgL74DNNIekar0ZU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'TestWxPayConfigById' test.out

#- 340 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'ahrGZV8WpFG2gRMk' \
    --body '{"apiKey": "dKgCuxFa4ix8vdZv", "flowCompletionUrl": "wAMOmTtBEJjCyABy", "merchantId": 61, "projectId": 74, "projectSecretKey": "phVMsbw6Rv3XZ4Xg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'UpdateXsollaConfig' test.out

#- 341 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'IfTmvZDu1OaoVmtg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'TestXsollaConfigById' test.out

#- 342 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'O5YP56VohkMQrBSO' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'UpdateXsollaUIConfig' test.out

#- 343 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'QueryPaymentProviderConfig' test.out

#- 344 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "mFyZH05CCwf21Y2T", "region": "az2uFpz174OkRp3B", "sandboxTaxJarApiToken": "kdVbqgNrZPytIR58", "specials": ["STRIPE", "ALIPAY", "ADYEN"], "taxJarApiToken": "pt4RpqpKk9toELRS", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'CreatePaymentProviderConfig' test.out

#- 345 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'GetAggregatePaymentProviders' test.out

#- 346 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'DebugMatchedPaymentProviderConfig' test.out

#- 347 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'GetSpecialPaymentProviders' test.out

#- 348 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'cMw2Lh6XTFr1d0v5' \
    --body '{"aggregate": "ADYEN", "namespace": "iCVrY2QOMJmNbAv9", "region": "VCU7hdDbGzcJKa1w", "sandboxTaxJarApiToken": "sM434xCGXTsh5xyd", "specials": ["ALIPAY", "WXPAY", "XSOLLA"], "taxJarApiToken": "Qm5GiVkyg2ApoZoz", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'UpdatePaymentProviderConfig' test.out

#- 349 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    '8sHEbX4mIdomBVyo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'DeletePaymentProviderConfig' test.out

#- 350 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'GetPaymentTaxConfig' test.out

#- 351 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "rRK73vbWSNBzkiEH", "taxJarApiToken": "yJEOg3iIjU3AAg7W", "taxJarEnabled": true, "taxJarProductCodesMapping": {"eTsmDaTzm1iyRQNy": "7RFRXuzS7oKchq3H", "FDAp8snTqP81J1c6": "C2wvWDhsYWwX5hKx", "gCMD1qRyNe4g5DST": "BpRPaWHEoCnndVYq"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'UpdatePaymentTaxConfig' test.out

#- 352 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'gBPmwdNn0rosYXZ8' \
    'eImgQ2x0SgQXdYwR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'SyncPaymentOrders' test.out

#- 353 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicGetRootCategories' test.out

#- 354 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'DownloadCategories' test.out

#- 355 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'iDuKo24S6RgeY6mx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicGetCategory' test.out

#- 356 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'arVsr09JpliIbzDd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicGetChildCategories' test.out

#- 357 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'A20g9UeCPSEkHvpI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicGetDescendantCategories' test.out

#- 358 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicListCurrencies' test.out

#- 359 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'EPICGAMES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'GeDLCDurableRewardShortMap' test.out

#- 360 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'GetIAPItemMapping' test.out

#- 361 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'pfGr7q4J4HRfPSSh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicGetItemByAppId' test.out

#- 362 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicQueryItems' test.out

#- 363 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'guxCFDvHcOou9G8l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicGetItemBySku' test.out

#- 364 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'XxC3R0xIfzLRFel1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicGetEstimatedPrice' test.out

#- 365 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'aMfEV5ZvvwEDVOZ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicBulkGetItems' test.out

#- 366 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["VOwnn6MrDyExIjLv", "TJkl9WnxI3c4i8HD", "HZe4XLK8QPEA7MUc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicValidateItemPurchaseCondition' test.out

#- 367 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'U28Tjo0XKr5KBD3Y' \
    'wTJ4Hn5XqA2kk1A3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicSearchItems' test.out

#- 368 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'H3rxXt6ggKwWIYIm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicGetApp' test.out

#- 369 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    '0ypwg4VTJpu64It1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicGetItemDynamicData' test.out

#- 370 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'R6axg5VLrk3KBNBA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicGetItem' test.out

#- 371 GetPaymentCustomization
eval_tap 0 371 'GetPaymentCustomization # SKIP deprecated' test.out

#- 372 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "pNgT5fUWdp4LE1Vn", "paymentProvider": "ADYEN", "returnUrl": "FgkytfX1NqG3h3im", "ui": "EWxUgMEW1S9JMbrm", "zipCode": "E7zBsX3PYLNcayR3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicGetPaymentUrl' test.out

#- 373 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    '4iibMmlb6vlF1mVr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicGetPaymentMethods' test.out

#- 374 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'cAyqXXnKEtSQkLh1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUnpaidPaymentOrder' test.out

#- 375 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '0xq2zgtaigOB2XWL' \
    --body '{"token": "XBkH6l2KW0sSf0vJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'Pay' test.out

#- 376 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'S3l5sWDcfVxx8PSj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicCheckPaymentOrderPaidStatus' test.out

#- 377 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'ADYEN' \
    'WOjy0XInTSZSMKJY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'GetPaymentPublicConfig' test.out

#- 378 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'cE585zPfpDiAo4zA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicGetQRCode' test.out

#- 379 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'j1AgjctQkNA6tPxc' \
    'pOjecMqPJvYXVa62' \
    'XSOLLA' \
    'TGlaOPmEdjp63KfN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicNormalizePaymentReturnUrl' test.out

#- 380 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'pB5Un5ObPhEk6MRN' \
    'WXPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'GetPaymentTaxValue' test.out

#- 381 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'XgkcUGG5hRGIRsqJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'GetRewardByCode' test.out

#- 382 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'QueryRewards1' test.out

#- 383 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'TdlIm2TA1uiNbPsW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'GetReward1' test.out

#- 384 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicListStores' test.out

#- 385 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicExistsAnyMyActiveEntitlement' test.out

#- 386 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'P4dql0EDA4cU4Wst' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 387 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'dHC5KGE92n4sFIM7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 388 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'AWUdPJvJivl1uU4D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 389 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicGetEntitlementOwnershipToken' test.out

#- 390 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "MwBdaNaGlQD7ToPl", "language": "uhtb", "region": "PboL66XhyfKhLtqZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'SyncTwitchDropsEntitlement' test.out

#- 391 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'R2r4RfVOg9ZWFBw7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicGetMyWallet' test.out

#- 392 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'Tk0E680aIGz1A2cX' \
    --body '{"epicGamesJwtToken": "ngjJWPf2xqt2uL9E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'SyncEpicGameDLC' test.out

#- 393 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'tENwWqOZUVxd7bZp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'SyncOculusDLC' test.out

#- 394 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'S2i4gNvHnKuaNhVE' \
    --body '{"serviceLabel": 1}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicSyncPsnDlcInventory' test.out

#- 395 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'tQ7LhwHqc9mwHFQ3' \
    --body '{"serviceLabels": [72, 32, 87]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 396 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'S6gLd7l7OF4v4RTL' \
    --body '{"appId": "nsM4wpXhdaJDB3MX", "steamId": "GMrRfpSxf1BnhjtA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'SyncSteamDLC' test.out

#- 397 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'ikWfrrIadsWMmGap' \
    --body '{"xstsToken": "PUenPlT7QiPDEUKB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'SyncXboxDLC' test.out

#- 398 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'KA2vpqA4MSD0izLT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserEntitlements' test.out

#- 399 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'URYUzEglKz4HU03X' \
    '04OxvZytaM4c4qTI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserAppEntitlementByAppId' test.out

#- 400 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'V7vRV6x146gCIrSk' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicQueryUserEntitlementsByAppType' test.out

#- 401 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    'EMchjQ84nuG9DGOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicGetUserEntitlementsByIds' test.out

#- 402 PublicGetUserEntitlementByItemId
eval_tap 0 402 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 403 PublicGetUserEntitlementBySku
eval_tap 0 403 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 404 PublicUserEntitlementHistory
$PYTHON -m $MODULE 'platform-public-user-entitlement-history' \
    '5kQvK7NHpsIBYlUo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicUserEntitlementHistory' test.out

#- 405 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'EWZPawFVpfXqbM5r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicExistsAnyUserActiveEntitlement' test.out

#- 406 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'NHQHEfoYiLFQBUx7' \
    '3FrGG1NypPAy9Zqa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 407 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'NySvpXwMac489Y6N' \
    '0H6yn3PYiqbIBvNb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 408 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'RcU7z56hvDaSIChG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 409 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'ku6gm1tuTKBNwhTZ' \
    'L6vJfgPEZmTs18vZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 410 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'nFstnJ5mnLz7c4rY' \
    'nurB4du28xKiygvn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicGetUserEntitlement' test.out

#- 411 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '2QBdHQt8RwdG0MnC' \
    'L6kKYCj9livHcRCM' \
    --body '{"options": ["Fbd8VDJQUNNivS5r", "4NDhqj2sHH7hGbYO", "jo5zLgQb3hA8P6Xc"], "requestId": "QUNHo5ZFndtlgufb", "useCount": 91}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicConsumeUserEntitlement' test.out

#- 412 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    '2hPYkRArSfExoJMA' \
    'RmEC7Kyhtx4sYsq0' \
    --body '{"requestId": "CbA1NZZ58G8Xryw8", "useCount": 3}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicSellUserEntitlement' test.out

#- 413 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    'DwOSuSEBEXGahhtx' \
    'fa1XwrrRMEWbPuYt' \
    --body '{"useCount": 57}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicSplitUserEntitlement' test.out

#- 414 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    'YDeDceMEtPkjYd9P' \
    'NBi79WHorOJPVoTC' \
    --body '{"entitlementId": "RV5enPlVeOc8uDGu", "useCount": 54}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicTransferUserEntitlement' test.out

#- 415 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'ValgZcNJSYGVxi7A' \
    --body '{"code": "CWF50CSEIj98y965", "language": "KAMX-JsuQ", "region": "zkOZE6sOGLtoFJvw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicRedeemCode' test.out

#- 416 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'z5yKIpwoaQavSCZf' \
    --body '{"excludeOldTransactions": true, "language": "kCF-LvFk", "productId": "tA9Ei7lNOS1nzf1J", "receiptData": "GU0AqSFsHZyeSTGy", "region": "sStop5Pu3KNnlg5a", "transactionId": "QvtZqOqyYqukNu3I"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicFulfillAppleIAPItem' test.out

#- 417 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'iEoeAhwgfo77M8FJ' \
    --body '{"epicGamesJwtToken": "YRhM0dJBA4b3QbH3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'SyncEpicGamesInventory' test.out

#- 418 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'tCVfHKGFiQvPyj1F' \
    --body '{"autoAck": true, "language": "KV_GE", "orderId": "QztAjYiUb5SlpeaM", "packageName": "DVE3ODebYRPEkmK5", "productId": "ePPaacnQTuUibmiz", "purchaseTime": 54, "purchaseToken": "bxo2XjwMhbcaFVUw", "region": "JJdMacFatm236DRy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicFulfillGoogleIAPItem' test.out

#- 419 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'TtXhEPzahVXYKrbl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'SyncOculusConsumableEntitlements' test.out

#- 420 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'Yxb89S0lysrMEifh' \
    --body '{"currencyCode": "jrwrJGqlmyy5EAtM", "price": 0.012777557105069115, "productId": "JvnkbpELCCQEX7Dl", "serviceLabel": 54}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicReconcilePlayStationStore' test.out

#- 421 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'AJ0xdAPFrw8ssJej' \
    --body '{"currencyCode": "Q7qSiyUPY0Gnwcv8", "price": 0.6441553153446745, "productId": "FIJFlyo9htDZjjGZ", "serviceLabels": [81, 35, 53]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 422 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'cLBzqSh3UQrHYlWF' \
    --body '{"appId": "x0rb4eSExhChscwh", "currencyCode": "8P6pejiRuUjCpBUL", "language": "slm-129", "price": 0.1077900048013839, "productId": "kEKZZQfGQJPF97t3", "region": "thMfA2pxZ7ocAtgW", "steamId": "GRZGmCEL7IaqoDDi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'SyncSteamInventory' test.out

#- 423 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'Q322lITGdQLjygzd' \
    --body '{"gameId": "LTAC4I9fqjfISERa", "language": "JFk-Cn", "region": "uTMYiBESlCYdNui4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'SyncTwitchDropsEntitlement1' test.out

#- 424 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'AfrJuSaiOYxuj6n1' \
    --body '{"currencyCode": "UTUHsgjv4O66qvH3", "price": 0.9770732683718482, "productId": "lYKeEiUS3GYxZHMK", "xstsToken": "3ybnM1cQEihWjWNw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'SyncXboxInventory' test.out

#- 425 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'YN6xeNeZMtT7f2d2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicQueryUserOrders' test.out

#- 426 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'NhlIgGSvbXe1Hyw3' \
    --body '{"currencyCode": "mylk3Hwg4Wtj5wR9", "discountCodes": ["o07ypJFcZroi0QeG", "7pBAbAKLICuRvKGI", "6cD8trKjrFSu4MOj"], "discountedPrice": 90, "ext": {"zJWUj0IhAuSR15xU": {}, "gtPxWpU3njfM3MLL": {}, "EwpsdD0knPNT7MZM": {}}, "itemId": "5TUkTp46Y9LTNtGN", "language": "Rbv-YkVL-577", "price": 72, "quantity": 73, "region": "5h9Aa4tLrATtqIhJ", "returnUrl": "QruDfpefgGxk7jqf", "sectionId": "RNpfhafmEghm1K6F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicCreateUserOrder' test.out

#- 427 PublicPreviewOrderPrice
$PYTHON -m $MODULE 'platform-public-preview-order-price' \
    'fhGrYgU3tXTmZUKa' \
    --body '{"currencyCode": "u7dzs6uA891lcyZT", "discountCodes": ["XiAJVwzchoABehdY", "vksiAtxe6FuXv7wM", "nItLay1ITOwqgFDt"], "discountedPrice": 72, "itemId": "qt5yxg5LXtD40Rsi", "price": 4, "quantity": 56}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicPreviewOrderPrice' test.out

#- 428 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'RBputNAcV0wHVw4O' \
    'JZ9KRfK3ElT6izH6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'PublicGetUserOrder' test.out

#- 429 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'Pdx5D1ZrPFTEv91K' \
    'nFOHx4QGVt5sQ7M7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'PublicCancelUserOrder' test.out

#- 430 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    '4MHRwGWuXrmWB81v' \
    'pVnNLvfxMVPORdXW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'PublicGetUserOrderHistories' test.out

#- 431 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'vsGZrPVAZ2ZLrDa1' \
    'xpqIziihTn1qm3WY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'PublicDownloadUserOrderReceipt' test.out

#- 432 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'Y19InV7B8tHIYiWB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'PublicGetPaymentAccounts' test.out

#- 433 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'gIkW9QrR9bMgSr1O' \
    'paypal' \
    '7V3CTRYI1Nyon9lv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicDeletePaymentAccount' test.out

#- 434 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'A8o43VZXjofWhPJj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicListActiveSections' test.out

#- 435 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'qdf6RBiYws6MPqsS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicQueryUserSubscriptions' test.out

#- 436 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'Ky9SsYw3NP5yL2qI' \
    --body '{"currencyCode": "rhx90T4EDNbgre3E", "itemId": "whoEBW0FNQL1GY5C", "language": "ifga_AAEA", "region": "REKfKrgrQb1IEYi9", "returnUrl": "kZKg0DnxN18EaQxh", "source": "uWhajv4y7mpuDenM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'PublicSubscribeSubscription' test.out

#- 437 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'HvCJxPolhQomjBGE' \
    'e1V7Qe1VtpXfKrTU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 438 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'd4eK4cPdj9IYCmOO' \
    'skIKiuKPVqNdfcba' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserSubscription' test.out

#- 439 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'rmjmzkYQMLffgy1m' \
    'pc59V2qKD8lNq4hO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'PublicChangeSubscriptionBillingAccount' test.out

#- 440 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'jr98OLoHszOIdSWI' \
    'paLpZwnDkDw7Zril' \
    --body '{"immediate": false, "reason": "WYfQ5eExWeqj0EGy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'PublicCancelSubscription' test.out

#- 441 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'RTt1yUKDmgURbZe3' \
    'BXyDfCse1Idjn7UT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 441 'PublicGetUserSubscriptionBillingHistories' test.out

#- 442 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'JHBJE3tOlW5QYRcQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'PublicListViews' test.out

#- 443 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'cxJjxgx0It94BuLj' \
    'ZOmtY6jje5osrYAf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'PublicGetWallet' test.out

#- 444 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    '28mqvM4LzAMy18Az' \
    '6wAqGqaSmwDvoaPb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'PublicListUserWalletTransactions' test.out

#- 445 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'QueryItems1' test.out

#- 446 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 446 'ImportStore1' test.out

#- 447 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'cj2JPPSWbsPzR9vQ' \
    --body '{"itemIds": ["iwMdHSV2fA6M7yIg", "ULctkrQt7UdVDHgE", "yEMT17gAkJ9ZOyUy"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 447 'ExportStore1' test.out

#- 448 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    'KXZ4gnJD0btvfiaL' \
    --body '{"entitlementCollectionId": "otp8rjTOGuuZKYSb", "entitlementOrigin": "Nintendo", "metadata": {"g4h5oxaA4ecsKGNr": {}, "uoLw9nJkDd0eeHTK": {}, "cUcujMld5XM0y0hA": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "uAIGJlt6gj5YD523", "namespace": "2JusteSb6Rq9qeFk"}, "item": {"itemId": "tXeu9Xij04Bqjp8L", "itemSku": "L57sci4swWJ6ouP7", "itemType": "mWY1ug8s10bVJXCs"}, "quantity": 46, "type": "ITEM"}, {"currency": {"currencyCode": "9P66amF5l35onaRK", "namespace": "2kOt01My99Nzxfq4"}, "item": {"itemId": "jTsNihBMEN4c79eX", "itemSku": "bUHmcvCVohS9cZeN", "itemType": "hZq7LKZkGycl5oKG"}, "quantity": 100, "type": "CURRENCY"}, {"currency": {"currencyCode": "3tzAjekCOilOpoou", "namespace": "Kkx1qj85bRrVwuOn"}, "item": {"itemId": "qEPcdhXj214NDtW9", "itemSku": "jjIhrEmkNYBheQNR", "itemType": "4zCS89KqvbOl0Day"}, "quantity": 2, "type": "ITEM"}], "source": "OTHER", "transactionId": "BS6MQ3orSyb3fSoG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 448 'FulfillRewardsV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
