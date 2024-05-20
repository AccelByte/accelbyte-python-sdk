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
platform-create-item 'chCbkXX26uEdCfQa' --body '{"appId": "MAQuTKfC0I2kNjCM", "appType": "SOFTWARE", "baseAppId": "Lds2DbPcaoMdtRLT", "boothName": "mSvTkQQgB7exYvmH", "categoryPath": "Mxr5hPCJJztJBg0t", "clazz": "TJg46IewOXE2AkCh", "displayOrder": 87, "entitlementType": "CONSUMABLE", "ext": {"IZsUf8lGFXcmwTER": {}, "HclOdxIwqejxe18r": {}, "Ndb8Otq6j1mqUav7": {}}, "features": ["IYWOaNdsimmkW2mi", "k05HAQltnSojV4jT", "65yclX2FtAz0vJjF"], "flexible": true, "images": [{"as": "3xRHAKy4QxZkaXZ7", "caption": "vmiEd0JPxVyQpsha", "height": 59, "imageUrl": "V0dS6hIH9c4Vfkyr", "smallImageUrl": "wpuXxbaERbfgPmi0", "width": 8}, {"as": "kPKTPOlhTtSiZNCx", "caption": "uogFteTHJe4BhSSQ", "height": 21, "imageUrl": "0jr9b8MuYmmeKTmB", "smallImageUrl": "NvGYxEQdf3ewoGGo", "width": 47}, {"as": "7xmFNAmjDDCvs78m", "caption": "cMdiS76YApGJ9ufw", "height": 76, "imageUrl": "9UtNquwC3WgumrIz", "smallImageUrl": "4NhGztZpr4U4fwQI", "width": 18}], "inventoryConfig": {"customAttributes": {"fgCUYBn2xaOBdPF0": {}, "JmX8qwU1cTuHHPB5": {}, "S3DvPRCzBrVUxmDO": {}}, "serverCustomAttributes": {"j3cvRFaTC11W0TGT": {}, "Cm4fZWuk6pQxDQpK": {}, "qxLGeMvr9TsvcMQ7": {}}, "slotUsed": 6}, "itemIds": ["a6iZ5uFRYNn3SHiW", "xF0YbuU5ar5qTLWU", "Cy0Afgc050XIZRW4"], "itemQty": {"91e94mQjVOOBnIWh": 42, "7w0Oc15N8WXBPp17": 85, "y1ei1fIrPvfHnRN0": 32}, "itemType": "MEDIA", "listable": false, "localizations": {"jXZedgt5cyNe27HL": {"description": "twtVOaxgP6Jbct8p", "localExt": {"uMybYGxD9IPmmsLm": {}, "u3kaPj0O4zd8Tb7c": {}, "UNGPTBxiFFCrn7dj": {}}, "longDescription": "js69FTFVGUVhvKhJ", "title": "Cmeisql14mUHVbMP"}, "imNhcZsU3VAdMDcb": {"description": "4qlkiFAamqvZI2Kw", "localExt": {"jqPBiWXade41s3rH": {}, "34mB2yPlRpWjmHZA": {}, "AvKTH8MuqIg0Czkg": {}}, "longDescription": "uwuJCW7EEFB67AOD", "title": "bi9BzupBsFpYc77G"}, "tRUcCFeY5g4XgBsb": {"description": "fzqxBPNe8ae1Il4a", "localExt": {"AtEbu4IjGdqthRxT": {}, "jQ7gkZEY8rG0q0Q2": {}, "Qd2JzRbkF2I03dIj": {}}, "longDescription": "vBbA6bfbYaJCJjfk", "title": "2TUvn95FhO7VW3mb"}}, "lootBoxConfig": {"rewardCount": 61, "rewards": [{"lootBoxItems": [{"count": 23, "duration": 98, "endDate": "1978-11-11T00:00:00Z", "itemId": "FSKWM1eym5ydC6p2", "itemSku": "5xCWTqUOYZENJ1QH", "itemType": "ZQxPRXH7uxBJEECQ"}, {"count": 62, "duration": 87, "endDate": "1998-03-31T00:00:00Z", "itemId": "iZgbwwm5iGzXtckn", "itemSku": "rgidKupvXO6aj4hC", "itemType": "mTC34jxW4pIDwdqX"}, {"count": 31, "duration": 26, "endDate": "1985-12-20T00:00:00Z", "itemId": "poBCbyJsF5IjF1c0", "itemSku": "W338HS6CBgVRyihY", "itemType": "NZ84CVhziXV8HwSm"}], "name": "vcvcDKF19yVRafCj", "odds": 0.6489169268461396, "type": "REWARD", "weight": 44}, {"lootBoxItems": [{"count": 92, "duration": 34, "endDate": "1996-08-23T00:00:00Z", "itemId": "ht83AdvBaagTiRJ8", "itemSku": "daGTVX3Bb7jlz5If", "itemType": "HgKjI9mwJSrN8jkI"}, {"count": 50, "duration": 84, "endDate": "1976-07-09T00:00:00Z", "itemId": "R2zbaI6PD7fEscSh", "itemSku": "nGUGUtV9GJ279GDb", "itemType": "LNwjm3FK0nnX2poM"}, {"count": 11, "duration": 50, "endDate": "1998-02-25T00:00:00Z", "itemId": "Cz0YqCKUh5RD9vNA", "itemSku": "p4jinFpnQ5xF9wwb", "itemType": "vMZyeDeRnVfPUa6x"}], "name": "VVBcq3wZpFIYeAg7", "odds": 0.9951914937536336, "type": "REWARD_GROUP", "weight": 52}, {"lootBoxItems": [{"count": 4, "duration": 29, "endDate": "1990-10-14T00:00:00Z", "itemId": "ILjkwW61duF87aUy", "itemSku": "rdt4XSpWBAetsanz", "itemType": "qP8oxfrtbECD1CYP"}, {"count": 46, "duration": 96, "endDate": "1971-08-10T00:00:00Z", "itemId": "iBAxfYL8Avt70ZUT", "itemSku": "2fSk3LL0calqxEew", "itemType": "uGS469k2hG0WKt4s"}, {"count": 95, "duration": 39, "endDate": "1977-03-18T00:00:00Z", "itemId": "anYxM0UHZVNYzGMN", "itemSku": "IpWoSLkUrfuf4U3W", "itemType": "eYeA9t2ENKKWrFtH"}], "name": "Ii1CMgKAOG5iDcCR", "odds": 0.9310727661204582, "type": "REWARD_GROUP", "weight": 2}], "rollFunction": "DEFAULT"}, "maxCount": 59, "maxCountPerUser": 27, "name": "vDLil8wj9cKM3Ar6", "optionBoxConfig": {"boxItems": [{"count": 80, "duration": 66, "endDate": "1987-05-03T00:00:00Z", "itemId": "35hCER4nGmWGgTJf", "itemSku": "HlJl4tHGa4XfZcd9", "itemType": "CVnGqMX9FieeEssW"}, {"count": 63, "duration": 23, "endDate": "1995-11-08T00:00:00Z", "itemId": "l07bhwntCVqiYOJf", "itemSku": "5KwMZQjzvjSozv6C", "itemType": "TRDl0zp9CzHFwink"}, {"count": 56, "duration": 35, "endDate": "1991-03-07T00:00:00Z", "itemId": "YkHBDdSzBXdxapwh", "itemSku": "d5IQYBQuxLvPuWYv", "itemType": "E3fsNy9Z9OhxXvCp"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 23, "fixedTrialCycles": 76, "graceDays": 61}, "regionData": {"xLPBsmAUrD9L1IiD": [{"currencyCode": "6MlcEPhMDFzjHZ3s", "currencyNamespace": "IhzOx2CXKlvIomU3", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1989-07-13T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1990-07-19T00:00:00Z", "expireAt": "1984-04-22T00:00:00Z", "price": 74, "purchaseAt": "1986-12-04T00:00:00Z", "trialPrice": 90}, {"currencyCode": "eLMe3lt9qfx2UDcg", "currencyNamespace": "VE7L9FK6e0MrPc4v", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1983-11-18T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1993-11-30T00:00:00Z", "expireAt": "1974-06-04T00:00:00Z", "price": 98, "purchaseAt": "1986-10-30T00:00:00Z", "trialPrice": 0}, {"currencyCode": "lG56HlzGr7XjdyRJ", "currencyNamespace": "unZPkp6ccIBnWyPw", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1990-03-12T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1986-07-16T00:00:00Z", "expireAt": "1999-12-14T00:00:00Z", "price": 48, "purchaseAt": "1977-03-08T00:00:00Z", "trialPrice": 6}], "k42miteR5eQAe1rz": [{"currencyCode": "mmgqBPRmd6mO4oI8", "currencyNamespace": "KDqebm83raNBJ5y7", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1983-09-11T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1976-10-27T00:00:00Z", "expireAt": "1982-10-14T00:00:00Z", "price": 9, "purchaseAt": "1978-05-18T00:00:00Z", "trialPrice": 47}, {"currencyCode": "GJtWf1Ybgg8rdwY9", "currencyNamespace": "bmrvHmO07KNqX9LM", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1982-04-14T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1980-05-29T00:00:00Z", "expireAt": "1979-01-28T00:00:00Z", "price": 71, "purchaseAt": "1991-09-20T00:00:00Z", "trialPrice": 88}, {"currencyCode": "BXBwnzDX8v3xgC1G", "currencyNamespace": "e9PdbTTAJ2Gp1r0s", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1990-09-14T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1995-08-06T00:00:00Z", "expireAt": "1997-11-24T00:00:00Z", "price": 66, "purchaseAt": "1972-01-29T00:00:00Z", "trialPrice": 52}], "IL2l3hPjNDKv2LWf": [{"currencyCode": "Xqjr8fS79En3wYow", "currencyNamespace": "BdkaZ3y6i38XQjLD", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1983-05-06T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1975-09-21T00:00:00Z", "expireAt": "1990-10-29T00:00:00Z", "price": 50, "purchaseAt": "1986-08-16T00:00:00Z", "trialPrice": 16}, {"currencyCode": "tiQ272Uo9UBJWodp", "currencyNamespace": "dwsX1jorcyR0x3Yi", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1972-03-29T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1999-07-06T00:00:00Z", "expireAt": "1987-12-03T00:00:00Z", "price": 40, "purchaseAt": "1993-04-06T00:00:00Z", "trialPrice": 87}, {"currencyCode": "OFMebS4AdlNzwog2", "currencyNamespace": "IhErkNhNcECWwchW", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1990-10-31T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1986-06-07T00:00:00Z", "expireAt": "1976-07-31T00:00:00Z", "price": 3, "purchaseAt": "1995-10-29T00:00:00Z", "trialPrice": 22}]}, "saleConfig": {"currencyCode": "lrNXnGanMazb8jvR", "price": 99}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "92m3iRlfnBAk0Cwi", "stackable": true, "status": "INACTIVE", "tags": ["5u6D31DjOsrs3CUY", "Tj7eGjodd7CcJUrI", "ATdqnQGbqiqOkNeA"], "targetCurrencyCode": "6MAugK5kypNrp2nF", "targetNamespace": "e9FmN86sK5LOq4ft", "thumbnailUrl": "5jGcMICPUYnfG6jl", "useCount": 100}' --login_with_auth "Bearer foo"
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
platform-update-item 'afIjLX8ce0KbNN7Y' 'cl2JfmQplvGjVQ4a' --body '{"appId": "ebjfgGu472oWJlfg", "appType": "DLC", "baseAppId": "dCOInVolsr6CHmj7", "boothName": "63vLwtYEJTSiXjcY", "categoryPath": "5ZPkv90lyKSTWLxS", "clazz": "FZ0LpupEi5DbkVs3", "displayOrder": 34, "entitlementType": "DURABLE", "ext": {"FTi1t530Wj1WfzIv": {}, "c3VlSXrA3XUGud4t": {}, "VjmxEf4XvVhFJTxF": {}}, "features": ["IKeTyBG5dCUoExnK", "HITBg9x4unq3eOMH", "fV3869IN4V1OdhH4"], "flexible": true, "images": [{"as": "Exlkmc4xYiLjLyZr", "caption": "Xr9Bhtzn8jAdTn6x", "height": 56, "imageUrl": "eRcpUvlrw2MwC1uu", "smallImageUrl": "okpaIjL0Vxe5n9Lx", "width": 93}, {"as": "QcFo9gxOgvDc7xMr", "caption": "RKvw8ISP2WKmCRRX", "height": 56, "imageUrl": "qxnWR5sheLgsAF4c", "smallImageUrl": "tv5guycGiq9j2EyI", "width": 22}, {"as": "dvBVC5zgOKLTDmHe", "caption": "8c1eJ9sde7Ryt4ud", "height": 70, "imageUrl": "qK4QtEydPWLPBYiR", "smallImageUrl": "3UbJc1ZYapx7C477", "width": 9}], "inventoryConfig": {"customAttributes": {"VwDZCIXFNEL3uWVR": {}, "z3V7YbJM3bNLWHAb": {}, "CZixe2cQ6O30lpzc": {}}, "serverCustomAttributes": {"BQMAEcNcJqrKxnMz": {}, "SYoc4ZjiMY4H34B6": {}, "wVd8ipcKDwQeUWtj": {}}, "slotUsed": 58}, "itemIds": ["6GO9zP3FaepA3b3Y", "J9nJM6vtT27xv85K", "5MU2qmbeqaVemINd"], "itemQty": {"ClpF7OvlBIEgjse5": 21, "EEgja2mIE2kLTnJw": 4, "Loog4me2NBFp62xl": 20}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"YdG7xVPqBqe9RDQM": {"description": "BSYAFLqp8PF5hCco", "localExt": {"ukWpnbz4ys7j6lxu": {}, "U3u2HEG0qfKegvFT": {}, "D1sPykS8YLmwtYgW": {}}, "longDescription": "GcA0h4G1LZ1HaX5U", "title": "BMbsF44VTsLDRzdq"}, "22cbnyK3ggFDh2ka": {"description": "ZP7pnnVfxPwc259H", "localExt": {"F9ejHaILQruAuYyJ": {}, "LYGqMv824ouSgkpK": {}, "70uJmUL0uzElixc0": {}}, "longDescription": "23dIvDiA0tQWlHwB", "title": "cTtztx3VAl6tXFbn"}, "ATCzUOIzVcy9k3ie": {"description": "64Vnwa0ClGQJultJ", "localExt": {"e32AiwKadEoIVmpr": {}, "wPsa9YD92CX0rITa": {}, "jpwHITGeHTnqRbzB": {}}, "longDescription": "B9ZFgJbQ3Fj1umx4", "title": "ItzkMJ7cudf4r916"}}, "lootBoxConfig": {"rewardCount": 67, "rewards": [{"lootBoxItems": [{"count": 71, "duration": 86, "endDate": "1978-05-23T00:00:00Z", "itemId": "b1cIOJPS3lJ80YJ4", "itemSku": "1U4ooQ980ywmg1pW", "itemType": "pWit1QC7FKe0fnHU"}, {"count": 22, "duration": 93, "endDate": "1977-01-27T00:00:00Z", "itemId": "1unGKM0tgfeWy47b", "itemSku": "bwMI4gGmvK9gW596", "itemType": "FwBNrFXt3TAuKBwB"}, {"count": 4, "duration": 79, "endDate": "1986-07-18T00:00:00Z", "itemId": "12ae6r3hHwya4Npd", "itemSku": "Ozg3hr6ucHf7dbh2", "itemType": "iKNUl0qJqzoKMRMG"}], "name": "541PAiNjULsx4SnK", "odds": 0.6428365934541542, "type": "REWARD", "weight": 77}, {"lootBoxItems": [{"count": 3, "duration": 78, "endDate": "1976-12-04T00:00:00Z", "itemId": "aDSwwQlnNRZJHBSB", "itemSku": "4fZWEFIZs28Ff1kZ", "itemType": "p1Zktx3N7WNMYIfc"}, {"count": 61, "duration": 62, "endDate": "1989-04-08T00:00:00Z", "itemId": "bLu8pnK34oA1keYX", "itemSku": "JvtggDdXjbdjMBah", "itemType": "FZZGMTcqnWrIprOv"}, {"count": 56, "duration": 57, "endDate": "1995-10-16T00:00:00Z", "itemId": "snnDJlmD1iEokbUi", "itemSku": "YzCQh2iNTwtnohdd", "itemType": "MzMTQ9P7sYLDWAJO"}], "name": "A75K4BYJ2fkqYJoF", "odds": 0.8800866691756811, "type": "REWARD_GROUP", "weight": 70}, {"lootBoxItems": [{"count": 36, "duration": 43, "endDate": "1977-07-21T00:00:00Z", "itemId": "tQUvro8TWwXWsz9T", "itemSku": "VmdMKEohKzuMYDUT", "itemType": "LBeCidXjuGgx8ncX"}, {"count": 8, "duration": 48, "endDate": "1975-04-15T00:00:00Z", "itemId": "nEBhXtAVxCd3meTr", "itemSku": "T7cF9oVCh89wNOkK", "itemType": "YssVejcL3kR3hCGN"}, {"count": 12, "duration": 60, "endDate": "1971-03-08T00:00:00Z", "itemId": "JmuALlMQl9RLrthb", "itemSku": "fp0VgweLlT2sY3Ss", "itemType": "TnDQY7kKU2u06Q4v"}], "name": "eujxtyQENvJrBCqe", "odds": 0.10731136785427287, "type": "REWARD_GROUP", "weight": 48}], "rollFunction": "CUSTOM"}, "maxCount": 36, "maxCountPerUser": 92, "name": "RWOqO4U0bitNQLzw", "optionBoxConfig": {"boxItems": [{"count": 89, "duration": 29, "endDate": "1986-12-14T00:00:00Z", "itemId": "nR0AbkCPY70Fmvvi", "itemSku": "VIBbcujF8Vk5qb8N", "itemType": "hWWwaxyMchkt8l5I"}, {"count": 85, "duration": 91, "endDate": "1996-05-20T00:00:00Z", "itemId": "TUh2dJ90yqHDNacl", "itemSku": "4F9G6Dl5TFwBY6HK", "itemType": "XAblkT8VGgSH8MGZ"}, {"count": 66, "duration": 46, "endDate": "1988-03-05T00:00:00Z", "itemId": "acq4XRLaA643nTMt", "itemSku": "XSAyejnny0Ju13b6", "itemType": "o5uB2XM6IHy7EEvH"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 55, "fixedTrialCycles": 4, "graceDays": 96}, "regionData": {"vrZZOdwe1x8RjU6B": [{"currencyCode": "i8JXE52sUBBq2Sim", "currencyNamespace": "QQoLbe5YOJvxGRxU", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1980-09-01T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1981-01-04T00:00:00Z", "expireAt": "1985-02-22T00:00:00Z", "price": 61, "purchaseAt": "1988-05-15T00:00:00Z", "trialPrice": 80}, {"currencyCode": "BMT1IZKTdNFVBQ1c", "currencyNamespace": "rBXAupATO8uXsqVp", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1973-05-14T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1979-06-01T00:00:00Z", "expireAt": "1994-08-09T00:00:00Z", "price": 19, "purchaseAt": "1995-08-23T00:00:00Z", "trialPrice": 49}, {"currencyCode": "AM0Riw8wLYW3n4F3", "currencyNamespace": "LD1EDwBXw5uBYeQZ", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1984-05-11T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1981-11-23T00:00:00Z", "expireAt": "1995-12-25T00:00:00Z", "price": 19, "purchaseAt": "1995-01-02T00:00:00Z", "trialPrice": 62}], "c1cQvSxgTNIUzxDg": [{"currencyCode": "BlIbuzm7DzJ20NFR", "currencyNamespace": "JIhFXR2dYprPmbpu", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1981-01-22T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1978-08-21T00:00:00Z", "expireAt": "1999-09-18T00:00:00Z", "price": 20, "purchaseAt": "1972-07-12T00:00:00Z", "trialPrice": 5}, {"currencyCode": "Upe8SjMvpqM8pugg", "currencyNamespace": "OEdG47gD5i2Ni6An", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1999-03-18T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1999-01-26T00:00:00Z", "expireAt": "1983-09-09T00:00:00Z", "price": 38, "purchaseAt": "1992-02-29T00:00:00Z", "trialPrice": 85}, {"currencyCode": "NHSH7eKDfRcngEpT", "currencyNamespace": "nRUQr3RLOM1vEx4g", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1986-11-02T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1975-02-16T00:00:00Z", "expireAt": "1982-10-25T00:00:00Z", "price": 51, "purchaseAt": "1971-11-01T00:00:00Z", "trialPrice": 89}], "5c1tP5TDuI5f6m4K": [{"currencyCode": "C07CnsZe32hqEcB1", "currencyNamespace": "ExYMBb3ckvoaJYdM", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1987-02-08T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1974-08-12T00:00:00Z", "expireAt": "1972-02-12T00:00:00Z", "price": 14, "purchaseAt": "1978-12-25T00:00:00Z", "trialPrice": 9}, {"currencyCode": "yFS0Ed7gTM5AVrtB", "currencyNamespace": "QiDTcNnZa6Zuxk6u", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1972-03-08T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1985-08-30T00:00:00Z", "expireAt": "1997-08-27T00:00:00Z", "price": 93, "purchaseAt": "1975-01-13T00:00:00Z", "trialPrice": 62}, {"currencyCode": "55g8LSTs7Nf95lGl", "currencyNamespace": "Prf6obIdnI6Ag7eU", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1978-09-18T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1973-07-27T00:00:00Z", "expireAt": "1992-07-25T00:00:00Z", "price": 62, "purchaseAt": "1996-06-30T00:00:00Z", "trialPrice": 59}]}, "saleConfig": {"currencyCode": "0X8fBuBSKLSQ4GvL", "price": 39}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "D3rpBfBovqLwXBuT", "stackable": true, "status": "INACTIVE", "tags": ["EYeRj17xGhaBKoUf", "iHjGmCyPsKCJTv1i", "c9gvagF2cSuztsJ5"], "targetCurrencyCode": "tj64gV7nmDk29mcj", "targetNamespace": "Suz9vbNStqPtQmQN", "thumbnailUrl": "6eKAGiZFCftT0RWE", "useCount": 58}' --login_with_auth "Bearer foo"
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
platform-update-item-purchase-condition 'Yi2VvoQNW8Yc481d' 'YdvGxJAMDRA1LF7j' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 100, "comparison": "isNot", "name": "lekFwO94VBCV9qJh", "predicateType": "EntitlementPredicate", "value": "va2FPBujX0geYCpG", "values": ["JM4sqsPNJMiZXXOF", "wmGWAvNF0Z0GkwxU", "NYyNwGiKrknH0Y5m"]}, {"anyOf": 35, "comparison": "includes", "name": "7fuDbzRRYMNXWUsp", "predicateType": "SeasonPassPredicate", "value": "i5WjMZfOadpgegCU", "values": ["jTdi1Ehr8OtqpNJ9", "sGyPd12B8QNUz0hF", "R8TuNy4ejmVA3vMC"]}, {"anyOf": 64, "comparison": "excludes", "name": "NbH6j2W4roZM2UKA", "predicateType": "SeasonPassPredicate", "value": "EEsL5D0oiFchQnVe", "values": ["SdiylLhVYszm8xY3", "q3g2AB2WIRUQmauI", "Y5HXCZ0W4XmWP0Hz"]}]}, {"operator": "or", "predicates": [{"anyOf": 84, "comparison": "isGreaterThan", "name": "Qbumu2QHLyZNuysy", "predicateType": "SeasonTierPredicate", "value": "Di2piIQFVmzMidw7", "values": ["X7JjxvNZhM84DiZk", "0KSahpYZdKZRyR9A", "6ySrB9SVFctW7YS0"]}, {"anyOf": 84, "comparison": "is", "name": "87yqEwEacQMTlqN4", "predicateType": "SeasonTierPredicate", "value": "ha4pd5A7MYcpBD6l", "values": ["eLH19fqBwNbNe1ff", "KNb8RxvN2u5J7baO", "YRtIvQaKyevWYtZj"]}, {"anyOf": 75, "comparison": "isGreaterThanOrEqual", "name": "9v8MpBSpo3AKRmnJ", "predicateType": "EntitlementPredicate", "value": "cDaiq0nEZ7PyhqFJ", "values": ["DPsWh1k0cQ08NG6d", "kDClOsKmfsgJdmzs", "X2TZkil67kRngoUa"]}]}, {"operator": "or", "predicates": [{"anyOf": 63, "comparison": "isNot", "name": "gbPzPFbrOMZMgWkF", "predicateType": "SeasonTierPredicate", "value": "3sVli3GN2XTrFibR", "values": ["JRvpZrSpWX3KEe2B", "AhzzEWzWlTY70qdg", "jV00ReCXFffjJJxl"]}, {"anyOf": 12, "comparison": "isLessThanOrEqual", "name": "jzIhpgOoIOD74V21", "predicateType": "SeasonTierPredicate", "value": "nPYQ9jNQN1di1ldh", "values": ["Oh6HvjnYuV7NfC4A", "2ODiZhbfb8QqCyK1", "XH9D6vl5eFdFfgK4"]}, {"anyOf": 76, "comparison": "is", "name": "QKe3xmj6s0GqsWnc", "predicateType": "EntitlementPredicate", "value": "3Ahu5wxq6oJq4mCh", "values": ["FD58sG6uDhFYlrzJ", "mQHQhO9IKBXDFQfX", "BYSeMuJfQecutjS0"]}]}]}}' --login_with_auth "Bearer foo"
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
platform-get-user-platform-account-closure-histories 'xTDFcmOm1sqdIWU6' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'ERylESgf5dXMrPoY' --body '{"code": "SohfrLyXMSrC62xY", "orderNo": "tDwflNGfufW5cWeg"}' --login_with_auth "Bearer foo"
platform-do-revocation '6eSCypsceITTkJGG' --body '{"meta": {"CVF6LrILDLviUCzm": {}, "DAaW5xz1c7ZuZXUC": {}, "BYnkY0LEBSYBdUSi": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Xbox", "currencyCode": "WF8jtNAVOYqSH533", "namespace": "YlJ93CCGBXv4fP4V"}, "entitlement": {"entitlementId": "PzhcH4UJrrCKvrOA"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "H4f73jAevOnES6YJ", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 2, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "AfUEEBbqMMKvkOsR", "namespace": "1fHUyirMVMOFES2J"}, "entitlement": {"entitlementId": "2OzNlJE3uqZz574g"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "1cA0PwZxTIZVSGQy", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 73, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "System", "currencyCode": "s9Asy4d629N4Ynol", "namespace": "VWA2dWxBs056jkPC"}, "entitlement": {"entitlementId": "UuE1pgdHvlQKiR7S"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "HTrKqVwnpPn8N5xM", "itemIdentityType": "ITEM_ID", "origin": "Oculus"}, "quantity": 95, "type": "CURRENCY"}], "source": "DLC", "transactionId": "qNZrLCRRUysya4J3"}' --login_with_auth "Bearer foo"
platform-register-xbl-sessions 'rvTzMTMSwrNov2GW' --body '{"gameSessionId": "9i54JY23AUWFTLq0", "payload": {"W1JqwKs1mO80L7IO": {}, "Hlf6j8PZOzUiQKZq": {}, "z5NSp0B7LODN3Boi": {}}, "scid": "2sSAO2n4MZQt753X", "sessionTemplateName": "QB93rOW0guPoQbYz"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'c1RDVhs2lhdzxxgi' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'buqUuyW3cMz9Yydu' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'MomEHcU15St4v8ry' --body '{"grantDays": 82, "itemId": "IyqNVv0KVpXJTMx3", "language": "Y8Um1iqehObg3OZ9", "reason": "j0HDtbqMFlgHKQIR", "region": "tLfPngD83roOeqE7", "source": "fcCAeExeQX43Lpmd"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'MiZeyIrA4QUKSJgE' 'CzvaWUCA7wKru7ry' --login_with_auth "Bearer foo"
platform-get-user-subscription '3AQ2sEHvSxjWoM1r' 'NJLM0OOVG5cG6XxE' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'NbWqlX7idzjpKDfw' 'l6XlCF6YxFMD8tJQ' --login_with_auth "Bearer foo"
platform-cancel-subscription 'wZvUVInos5RK100y' 'H89i8ZDPXRL8cbTA' --body '{"immediate": false, "reason": "ahGw7XcF1Qwzz606"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'UGXPhoNZlXMef7Av' 'S3TfKx6ByTygbtOt' --body '{"grantDays": 5, "reason": "zsYr3cFeVw70xdNT"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'uOdLKK0M2B2hbqJi' 'n37P69t1KqeGz7qb' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'PnXEuOzzkoBmMR9C' '4qPqJrAdh1HIk7vC' --body '{"additionalData": {"cardSummary": "Eq7FQ2S5VeW9ddxz"}, "authorisedTime": "1990-08-04T00:00:00Z", "chargebackReversedTime": "1992-12-22T00:00:00Z", "chargebackTime": "1999-06-26T00:00:00Z", "chargedTime": "1982-09-03T00:00:00Z", "createdTime": "1986-03-20T00:00:00Z", "currency": {"currencyCode": "dSkNfHJtA3QiX9Zv", "currencySymbol": "tydbaVb0scd97A0G", "currencyType": "VIRTUAL", "decimals": 7, "namespace": "TJo0L5sHil4Q0mqa"}, "customParameters": {"8GatrjbJ5YT7uvqa": {}, "rTvrG1DXZAWlvz3c": {}, "3XALMresGFfsH4aX": {}}, "extOrderNo": "CDhshvEF8rHd250n", "extTxId": "yihcUVGHQczI5ZoT", "extUserId": "RUkjGoRkPs2SO9Xr", "issuedAt": "1974-08-28T00:00:00Z", "metadata": {"XNIaU11cBXLwTfop": "qeZtHJnRgaGfLMFb", "vyI5PZGzVLcmZKKK": "YARape2tsNczam4C", "dd1QYvww4XDokltg": "q2vXtUnY6UhDJ4pe"}, "namespace": "0s0Cuhl3dU9b4seY", "nonceStr": "CyiB4tDCWx3cEX8w", "paymentMethod": "Ti1v2abpCWytPEi9", "paymentMethodFee": 10, "paymentOrderNo": "e0hL9rPkV5GkSrcl", "paymentProvider": "ALIPAY", "paymentProviderFee": 61, "paymentStationUrl": "7XVzU7qlNVk7qnmB", "price": 91, "refundedTime": "1987-02-17T00:00:00Z", "salesTax": 92, "sandbox": true, "sku": "fLqlrKGiS3XxjkyN", "status": "AUTHORISE_FAILED", "statusReason": "hj0LaXgQ94flh775", "subscriptionId": "AQfzNjQ7IuMSY2ep", "subtotalPrice": 90, "targetNamespace": "GrvKI5EVB9ZFzLNs", "targetUserId": "jdCFtKY0KsxR0rCF", "tax": 21, "totalPrice": 43, "totalTax": 50, "txEndTime": "1975-09-02T00:00:00Z", "type": "QZfMnTbKdwNhiIP7", "userId": "dpJ8B8VwFQnVco2o", "vat": 59}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'I3XJWBxTLcOef8Mg' 'IwkrKFEtwESJCe2k' --body '{"count": 38, "orderNo": "8ah9bPsksceGUEX8"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'ERZcKSYLo6y7yJMo' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'wQ6LpHCvCYTgX9JQ' 'wErzjtuP9pUUv7qe' --body '{"allowOverdraft": false, "amount": 13, "balanceOrigin": "Xbox", "balanceSource": "PAYMENT", "metadata": {"MFsZAIqak1zi0JSa": {}, "5cRn31D8ubfdXi7B": {}, "ycDPckeGJUgU8bD5": {}}, "reason": "mGFFmKTTUxG0mpmF"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'xxDNXGlGJvHf558h' '1ltyhiSGhfqXhxBJ' --login_with_auth "Bearer foo"
platform-check-balance '{"amount": 53, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"LXioAGkWgSDdDQvp": {}, "RfGe3z2rtjWpJAlK": {}, "HF0ebxhJ1176CeD4": {}}, "reason": "dWCp4wqlQJcZroNQ", "walletPlatform": "IOS"}' 'OPj2XoFug8BUQUmP' 'HnPumcazKAna0ji7' --login_with_auth "Bearer foo"
platform-credit-user-wallet '57aNDFeKnQP2j2Ws' 'QImTwYkiuxzLrbJ0' --body '{"amount": 58, "expireAt": "1987-03-28T00:00:00Z", "metadata": {"GS97Si6XyLVPrkUx": {}, "yZ1OH5Nn4nMT8QOy": {}, "TuUSD9ImtaPAocOQ": {}}, "origin": "Epic", "reason": "Vonwz27DWfGRVhbZ", "source": "REFUND"}' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform '{"amount": 60, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"MmYyTGO07foRZ6Fu": {}, "jpIWo0qJtqp4Q6Xg": {}, "ICLgMHcP1eE6sjWQ": {}}, "reason": "llYsONpp6QGW56CN", "walletPlatform": "IOS"}' 'XSGwQkJuy9oLFcHH' 'craLXR2n9JQvq7NK' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'WIHYsii3fCh7sieJ' 'jZPAkiWumllU31uX' --body '{"amount": 86, "metadata": {"PA9wNpmrK5Y5heA2": {}, "ewWnFcqHxXP3kRht": {}, "rBcBofWTGYx2ihgi": {}}, "walletPlatform": "Nintendo"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'xwaLM8HkVOW8PnLk' --body '{"displayOrder": 12, "localizations": {"mzJbdkykVAnmnRfU": {"description": "ilcKA84d9pMsl7zr", "localExt": {"NJvDiP2hNNEI8QrQ": {}, "6H1ro5CtU8UjgyCU": {}, "pM1JBcTzf4dz1Boj": {}}, "longDescription": "PoQg976409vFd5z9", "title": "r4nJWUvLp1wxGF74"}, "7468MXUq3uIffkIp": {"description": "PmrWVxNZUvkiU2jX", "localExt": {"SwsBBRopVl38d4NZ": {}, "Gtk6EmWxC75M88TK": {}, "hFYkA9aRNDe2IoPM": {}}, "longDescription": "SQKcg0OTT9JA0ll1", "title": "RimBCiQwuyrI87uS"}, "yXP6C0jXS8au2wcW": {"description": "Yyj3JvHqXp4JR7xI", "localExt": {"59Z9tfGVsglnOxOX": {}, "BfgBLuglkd9LIosh": {}, "GnFSuHmrqej8PRpp": {}}, "longDescription": "YY1vlV0M2g6oreqy", "title": "BzWzCgMMWZuD6tmI"}}, "name": "R28xVxbtpSKOfiIP"}' --login_with_auth "Bearer foo"
platform-get-view '3S6pypZqISn3msry' --login_with_auth "Bearer foo"
platform-update-view 'kQFtW8QGKFZLrIfq' 'rZuu7IwKcT7sAsv2' --body '{"displayOrder": 94, "localizations": {"N7GoeMsezFZsTBHk": {"description": "gcJ0DcEt23pci6xE", "localExt": {"ljer6aGJx5OFp3jK": {}, "Ex4aSGdwTPX4ig3N": {}, "VFFkP7O3F4vsohRW": {}}, "longDescription": "DyGYIVFDbTvRYfpJ", "title": "4wM9WZfOOxAzmsbh"}, "i5QJuc2SNBaOlXfg": {"description": "sgBd7MYLLoPZrkjR", "localExt": {"m5Ki0orhXrISEaPZ": {}, "HLQkTHvndQsCKAO2": {}, "JRz3CGwtujkzxidL": {}}, "longDescription": "cAQWGVRg6DVso5TJ", "title": "CSugdo4XTm8t1YTW"}, "qItjNWXm9sraeMA7": {"description": "8YSRS2fPy5fpbbbM", "localExt": {"Iu9lu18jIMBUM77X": {}, "memN8LO03mnFSq9j": {}, "JTVFoFjxZjh5qUR1": {}}, "longDescription": "Pq4a4uaMfd0SQAfY", "title": "IyzHL8jxakuVu5r5"}}, "name": "B08VZxI4TU3apnZX"}' --login_with_auth "Bearer foo"
platform-delete-view 'oJ4gI4EQKO8xC4D0' 'FsUo3IB2kX5REQZs' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 69, "expireAt": "1998-07-14T00:00:00Z", "metadata": {"y5Ihr531Kajxq7lz": {}, "uVRVEvhKIbrq1xsG": {}, "pdobYun8hcO55hVj": {}}, "origin": "GooglePlay", "reason": "mA4ehxNIIlcrZzga", "source": "GIFT"}, "currencyCode": "kAzAMaRvIUhUwguG", "userIds": ["C5mxxse4eeuMgEct", "P5lA2FJ0iGLRTXGs", "gbLLN3O7CEYjxqEl"]}, {"creditRequest": {"amount": 98, "expireAt": "1982-09-04T00:00:00Z", "metadata": {"CymCDYsuff3b7G5F": {}, "DX4mu0qPHb9Ll2EF": {}, "Eb8GnsthmQ2Y6ZGO": {}}, "origin": "IOS", "reason": "IcFN5JL9M53Mg0Mz", "source": "REWARD"}, "currencyCode": "bzDRzbhMxfEDE4Tr", "userIds": ["HgTth479W8rXqwGV", "F8QHGM2IuQYBO8m0", "tIHyyMq79EdB9Mxa"]}, {"creditRequest": {"amount": 72, "expireAt": "1983-12-26T00:00:00Z", "metadata": {"NKDtMqMrAGpdyF6W": {}, "DHn3ePBxQNz2IUEH": {}, "Mzl5jhwVDsuzwJ4v": {}}, "origin": "IOS", "reason": "0eoaIBrTh0EKkJio", "source": "REWARD"}, "currencyCode": "kjphURs4ksgsKJ2R", "userIds": ["6Jacwwu8W1zvrKMR", "PvwA9k6yJz03NETd", "ywPqYerrpOm4M2pM"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "4fIfcHBWZM50aHbP", "request": {"allowOverdraft": true, "amount": 91, "balanceOrigin": "Nintendo", "balanceSource": "EXPIRATION", "metadata": {"s3qwYL6LwGlZGF7X": {}, "QPLAcIL7FvAMWqhy": {}, "yNZH1CducB5y5iMd": {}}, "reason": "eBG7REG4meKEabfV"}, "userIds": ["cfiNf0DOHKwxDF5G", "XBJPIZqZC5d6JuFd", "JhCjVHiCn2hTefT8"]}, {"currencyCode": "gPFJ4WndMpQhcLK0", "request": {"allowOverdraft": false, "amount": 94, "balanceOrigin": "System", "balanceSource": "TRADE", "metadata": {"FQfXV3YW3ug3nCXh": {}, "D7FUz1iOe0pHa0Lm": {}, "seIRXeoerZAxbDPX": {}}, "reason": "U5xJBhIpJ9b0Ap7C"}, "userIds": ["mSiKPjcwAw5Gdxpv", "DqPTdurR3MYda0Y0", "Lfa4b4hTaZBGdX66"]}, {"currencyCode": "BCO4qPnvxERWjKas", "request": {"allowOverdraft": true, "amount": 57, "balanceOrigin": "Steam", "balanceSource": "ORDER_REVOCATION", "metadata": {"WrDbQ1ZzhDuLHq9L": {}, "TBstguOdN0O7l3Gb": {}, "KPHdDTQDEEE2mTsn": {}}, "reason": "1NwJ71szsNmnqZSW"}, "userIds": ["dEyOVYrTdDq7IqbT", "Y7jI232SjktijiNz", "Vv8BLsqQW8HSrEm5"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'TUe8KdizXmrmK0sC' 'UsqxKocHomtjoU1k' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["UqRedwIu1TSRr6r8", "mzfMedpcKhvHPlvY", "anGqEkn9OEVwLWGT"], "apiKey": "4MXhmzvRQb7c0vmj", "authoriseAsCapture": true, "blockedPaymentMethods": ["q9fQqzulLGfQMqSL", "QDlRFYMVfiAMa6Pc", "o7MfvikslpyL9BYL"], "clientKey": "VVznF6hMYfksp8VQ", "dropInSettings": "hYSFeBOp0ilGQFwH", "liveEndpointUrlPrefix": "UtZugblT3aIDKn9q", "merchantAccount": "JXncm5igpAewbmnW", "notificationHmacKey": "k0E7YaPblcWEyNgv", "notificationPassword": "s5LEZrQXzSQRWRs9", "notificationUsername": "EGnRPgYlJElgJ8kx", "returnUrl": "1WEeDbql13FtQMu4", "settings": "1rnOzbsFBqg6dziW"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "vdNcwfUBMdNuTaiL", "privateKey": "xFMXRpDP9xutntU8", "publicKey": "xHw4yYJOCViHwunQ", "returnUrl": "wpC2eCFUAHZaYSvs"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "WiNJtqXltZF6aSRm", "secretKey": "HU5iR3hXIbzWPKOk"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "zftOgDQAWhulbrDf", "clientSecret": "7q4cAnpmLiEu4CNt", "returnUrl": "X2lnqi7cHTSdGoLZ", "webHookId": "bC3UJruU4uIXBZsE"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["YogFWiH9z4E8zmaZ", "5cg0REtUWY4fVIdq", "wCWF5wmbOubTxAAe"], "publishableKey": "DCowR3MeCNL1oNrF", "secretKey": "3SmgudQusJLsPlW7", "webhookSecret": "ZyORFkN9EbKbTbrD"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "zNgVEcw0lxRam16O", "key": "6v4VjJf40LjUdORE", "mchid": "LVXUFQyVlt9jmxmx", "returnUrl": "pfp41k1uDg59PhdU"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "XShabwyYCxTHrDel", "flowCompletionUrl": "8oThvr8CUEzw4zL1", "merchantId": 86, "projectId": 29, "projectSecretKey": "eR3EYXBFpUX9y4tY"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config '7o5FFi1n10vDgyoH' --login_with_auth "Bearer foo"
platform-update-adyen-config 'XIlrMl2RAukCL26i' --body '{"allowedPaymentMethods": ["hdMy9YCLNJEkvq6S", "USt8xd8EgE15XNuw", "6Y7sToQNkuZzJ1XB"], "apiKey": "xw01iBBQukgQ94Zv", "authoriseAsCapture": false, "blockedPaymentMethods": ["CWcMX0ov3U2sKjIe", "yFS97dYD7LkcTKYp", "Cfl6HPy5cJfAV5iO"], "clientKey": "fzwt3bpxRNt6lKoM", "dropInSettings": "jCPtEKeBWTm78Fn8", "liveEndpointUrlPrefix": "TvZVTe4L2lXrVPX6", "merchantAccount": "r5ZTcnVVOKMApTcW", "notificationHmacKey": "sFRUlWBp4gBs9Uuf", "notificationPassword": "gsVbG6TUe3jbuQ7H", "notificationUsername": "MPO4ozK705ykRqSP", "returnUrl": "YZgPm4JLsXVtBOEe", "settings": "tHsxAJ8Ny1LRkPU9"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'hrl5nkpEdBe8bYWd' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'ok4UnUEOyP0cPZf5' --body '{"appId": "OvolfI0mqZctohLh", "privateKey": "eRaQkfMLFW9B7jHZ", "publicKey": "ro4hhwnANAGp8zGq", "returnUrl": "NGrcQyoA1TWPcy83"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'iXfYXNdMkdg9TMwx' --login_with_auth "Bearer foo"
platform-update-checkout-config 'NcQ6CkVi8fqVPRqN' --body '{"publicKey": "bF5yLnYSa8xFLvcY", "secretKey": "exMMMiDFh5RbW021"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'cHN3QbzVuJZH3k54' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'cExxWKtdGTW4FILo' --body '{"clientID": "tv5ycTa0i6ifYP1z", "clientSecret": "fgjsy3VRjX4qA4g9", "returnUrl": "OGoWw1qnCAvdnAco", "webHookId": "kJ0rzqX2KJcYHgiF"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'DxclBXap6j73doCW' --login_with_auth "Bearer foo"
platform-update-stripe-config 'xhubMXbxNvT6wAff' --body '{"allowedPaymentMethodTypes": ["v4uzKAwiI4wTxNIe", "fCmtrxWu293551nQ", "BNKcqCkUXRj8gQHE"], "publishableKey": "e4CO370OsbzRKKPd", "secretKey": "6mjzLxllUrFYn7cS", "webhookSecret": "uO7NxKHUHg0c4X7f"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'HdITmN9opaF0kh3p' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'CRB3infEVxArF7TB' --body '{"appId": "6A6a71zAJpaPeudU", "key": "tKPJUmAvxBxJNPlv", "mchid": "vYZw4MWzWFTuNPf5", "returnUrl": "JCSDyYy4e5qoTZxS"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'oZbQUnUxS6m68WL3' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'HDL4yx5I0euBsccH' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'PA2v9XP9enfEX7ll' --body '{"apiKey": "oLgIYqxFfSNJlHCj", "flowCompletionUrl": "xLNnYUlGQsFpy9ZV", "merchantId": 24, "projectId": 93, "projectSecretKey": "LIFwLgT78nootfUs"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id '9559ilm3cauhrw9Y' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'n2z5cnbm7z2Aa24y' --body '{"device": "MOBILE", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "f7XwQtVIYU87NgjD", "region": "McJxfMfYFlt3JvDg", "sandboxTaxJarApiToken": "MiyBGygWFTAY3Th5", "specials": ["PAYPAL", "WALLET", "CHECKOUT"], "taxJarApiToken": "wPCPKVPlOGfFBlu2", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'kiYXGk6BoBmSLi0R' --body '{"aggregate": "XSOLLA", "namespace": "4SRtUE5P4kxmHtFb", "region": "jqurHix0QYycDH5w", "sandboxTaxJarApiToken": "e2Mx0sYCnYPT4i4m", "specials": ["WALLET", "STRIPE", "ADYEN"], "taxJarApiToken": "J8dkAVOJ5imghdfV", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'jnjd66A1SQmWGSQL' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "AVPAJ7zX5lB80k2s", "taxJarApiToken": "mdkBS2MaIP7PjngE", "taxJarEnabled": true, "taxJarProductCodesMapping": {"ggq91cpgvoDBgYfL": "BdGNAZEvbvxqa0K7", "VUbjUnzirnEsxSE4": "vBzG7VK8sWEshmZf", "5fEdvjbyJPQ1qdRc": "Jjsme1OukIfIZVH8"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'q8svV5hMOSfpyJkJ' 'lmJmTkFvB7wkY6nu' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'UEGJ3k0HGtpK43uO' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'RGREOOwTuY8dhNCD' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'WWpN3B6tedgFUzBm' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'XBOX' --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'vGA3itKaF9z3WWuv' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku '3j8T9g1f6P3D3rVc' --login_with_auth "Bearer foo"
platform-public-get-estimated-price 'C2g6t42jE1Wad232' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'YV7A2zHFGbN8AQaC' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["aw9UF7cdSDd99DQZ", "7vnTx8HDXTJWiyw1", "7ogzmbj4SLYDrZJv"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'DLGvn6qtroZcp16H' 'KXX1ft5nBA9xNIJV' --login_with_auth "Bearer foo"
platform-public-get-app 'uMz04evSdE2FMcKd' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data '7c94rEmIYuAT5OAc' --login_with_auth "Bearer foo"
platform-public-get-item 'UwYHGmG5rNDBF1oU' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "37vjfyX5YLaM0wmi", "paymentProvider": "CHECKOUT", "returnUrl": "XtrI7SFBEgkwHifM", "ui": "HYI581HbF7fMX9lD", "zipCode": "XYxGRJM92eX42WW2"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'WKf5urEOpASBicX3' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'ZwzZ7aVhrkmhSOEo' --login_with_auth "Bearer foo"
platform-pay 'zGOv8D0iVxzrec5k' --body '{"token": "NwJAxm0Rdm9l6nIh"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'G5SilDDIsmj4h625' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'ADYEN' 'U9GcOivIfcCJt4U8' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'VSgXoi9Fw25b9qXz' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'lIK2G6AUjBCdf0Rp' '5e5IvFuN1oUsCnBm' 'WXPAY' 'Mx5F6EhM3dKvIG9M' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'R0hTINvq1VR9SJUf' 'ALIPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'EX996Mh1sQ3Dw3uy' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'jgQNAs9188Qm3W1D' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'e2McGd10wefF0CJl' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'H55RLEgeAsSpQdcm' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'GHZuRVQ8tzwqMayP' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "8A3HGNI3BfjkFd6M", "language": "PEkG_HAzK", "region": "RFizqxCmudSXivAL"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet '3n478mhb2I2yBJeC' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'JghTrk68FWFzuLBd' --body '{"epicGamesJwtToken": "lrKjUbgZQfw6Zys3"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'mN8fIcC9Ckharfqa' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'oMsGyv1RuSNdycDs' --body '{"serviceLabel": 37}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'UNCPSre5GmZzCQwi' --body '{"serviceLabels": [16, 92, 22]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'dbnXdMSwmkBkKC1h' --body '{"appId": "6h45u0wuh9pY0011", "steamId": "jSmHFTtfM2mGUUpq"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc '3ix7Am7W1fwJnV94' --body '{"xstsToken": "BrMSP31wAkVH75Uc"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'mNXK5RqcIo9lpz9o' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'M52vHPlwVV3jlPKD' 'EYahnlLJaLCvjRKK' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'X1brmkJDfdngbQD3' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlements-by-ids 'orJouduhCEJ5XiKD' --login_with_auth "Bearer foo"
platform-public-user-entitlement-history 'IE9YugcupLxVBcRk' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'fhRuqkOTHSia7oFd' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id '1fEmDuyAsQGzwJR5' 'poI718RQnj4imu6X' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'FfRcWDXhq1YmGeyg' 'r2S4Yw8NmPaBeryz' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'X2hOPVVFqVqxjq1i' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'G3TySOh8SI75oXby' 'q8FBbur80QwnlgAV' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'fqz6gQJh8sn0bVWR' 'kvmAemh8lioBR7xT' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'XcEIFod3lCzvjHzD' 'HOrSJ1vbB7LRHd96' --body '{"options": ["dGLgkfrZveFMWAFT", "7l0l1jaOAMCzbsoI", "gmKwwMDQPjUIosq1"], "requestId": "l6xo0D4JRbNqO6Iu", "useCount": 86}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement '71EC3ENuvD8OPsp5' 'Z3ez84KVB7HeWPnV' --body '{"requestId": "eFdy5ezlCU6SGzkM", "useCount": 32}' --login_with_auth "Bearer foo"
platform-public-split-user-entitlement '8C1c5bBB3XZ7ColK' 'wlsNvtFuunQsvdXG' --body '{"useCount": 24}' --login_with_auth "Bearer foo"
platform-public-transfer-user-entitlement 'JA4skqCbPxRkIAFQ' 'h9yDdoLE2s7mrVrm' --body '{"entitlementId": "TJwtBTzQTrNo1LcW", "useCount": 80}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'nfOQu3wdT4Aodp95' --body '{"code": "o1RkX7iW7VpCngWA", "language": "nXe-030", "region": "z3ZdetOic9AQOFWp"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'dItLBhvKJq9tWz9y' --body '{"excludeOldTransactions": true, "language": "AD", "productId": "6jOflFJlZEhz1QDe", "receiptData": "h05hj92bwVVxJ62Q", "region": "5AOAOyL65cPaOZA8", "transactionId": "BG8KcVWOX9n3YsjJ"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'exnFA9Umz3KPICya' --body '{"epicGamesJwtToken": "5Fk5TPaEbX29cV8v"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '7MXctihtxMnIr4b7' --body '{"autoAck": false, "language": "FmF_KCLA-934", "orderId": "w3dUwWHhQW3I1y9t", "packageName": "jRLVOXBMa0JiIe1A", "productId": "Y0tUA7EKASk3USNL", "purchaseTime": 15, "purchaseToken": "M97ebZcYqwfIHPWM", "region": "kOmrT5HL16jMwECn"}' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'mwJv4rpqtzDaz0WU' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'JlBCHzJ2v9K8c1zO' --body '{"currencyCode": "lZg30pagfP0FfOMB", "price": 0.6482475213204211, "productId": "peQT4zYIbU4i9mLy", "serviceLabel": 98}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels '6Alt08rrnG8y2ScX' --body '{"currencyCode": "kwjpAp82pGcxvXaG", "price": 0.9933101972026194, "productId": "LzHpMS53jllopwir", "serviceLabels": [90, 30, 7]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'ck8NFKPgT6LMehg0' --body '{"appId": "47axU5ktNywRIvO2", "currencyCode": "Sgz30hejqdktHIO1", "language": "DaU", "price": 0.8211732235461232, "productId": "P7Ao1z7FeJM2fWXG", "region": "k7JObSHksRkabpmv", "steamId": "Rsc7ZYvXCT6m6mRZ"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 'AlLBczJVeil7GbG1' --body '{"gameId": "ISBCkcnpxKUxLjmx", "language": "ct-535", "region": "GslMpx3m7lEXTmnT"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'btjK9RsyoqT3adB4' --body '{"currencyCode": "8Jxp2zaItg9jTNZv", "price": 0.24739068697234445, "productId": "FEUI21aSaIsMyLKP", "xstsToken": "PIZx0zdNAagipZwi"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'aBrFrXtGMjujfHZB' --login_with_auth "Bearer foo"
platform-public-create-user-order '1gMI1B8DXb37DffT' --body '{"currencyCode": "Z7yQz337LLNCjIyS", "discountCodes": ["e36SA5dxATLv5PkL", "vraRzChdjDGdlk2A", "2jHbAPNGInvbnf4e"], "discountedPrice": 47, "ext": {"p9avUr6IydpXW0MO": {}, "0eT9okl6MlWOl9fe": {}, "WO2bmOikTBJHTEm5": {}}, "itemId": "PSeyod5L6OooYoQn", "language": "IM-Jypc_ca", "price": 96, "quantity": 25, "region": "IOx90FQdwLi3GOQk", "returnUrl": "LtpuRNeT1CULEMPa", "sectionId": "OU5nukycAUlkUSZK"}' --login_with_auth "Bearer foo"
platform-public-preview-order-price 'UrsxNRzF3NaUuCyQ' --body '{"currencyCode": "yze6zPKu5sE89JW8", "discountCodes": ["YkVQnZDUAbINRKQs", "YzVVlHGFSwjby6rM", "UU0RsB6dvrpmInhH"], "discountedPrice": 47, "itemId": "yUnHnfrEdDfY4TTx", "price": 41, "quantity": 45}' --login_with_auth "Bearer foo"
platform-public-get-user-order '8goZgsX4RwfM4qnU' 'dcQqZ9F1uivPob0Y' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'ZEuXQACDDQryNf9V' 'GxbOeJe4n9eUlBQZ' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories '2UGePWXbAyGiXa9n' 'UsHCVicuJ7onrUXV' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'lB6xNel4Bxb9KwFY' 'qdhEVq3hbsApeASf' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'R0ljKxqZcLuhwNDv' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'Valv3bkoMXNzl1yw' 'paypal' 'GXtZU5SuIhMSaDRp' --login_with_auth "Bearer foo"
platform-public-list-active-sections '17dUWHcjrb6qNeKp' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'OxPrlG9svdqsiVTq' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'PbzY1yxl7zeEpmSP' --body '{"currencyCode": "O6KwlJQlj9Ii2jAR", "itemId": "wzowk9OoiPdnq9KB", "language": "kcX", "region": "rvZ9tktWLtDdlmVG", "returnUrl": "K6iolEw6IIpDc9X5", "source": "ijmtDGvd9ESdY0eT"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'kBWA44Qqsi5yOjvl' '5sRN2ENn1RLi5iMP' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'nbg7o1zYpqUsliPy' 'XZGYIW5ZDtWbdkzP' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'P47RcUIi2CoNj4EG' '2emxKQk8cBrt5E8k' --login_with_auth "Bearer foo"
platform-public-cancel-subscription '8rzDZ08j6ICP75cm' '8YDChFi3zLvfQWC8' --body '{"immediate": true, "reason": "MxWxvW0veFl3uU1a"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'MD0mczWxc8f1s2QP' 'MMZsf2dvKZyHChRP' --login_with_auth "Bearer foo"
platform-public-list-views 'HvdkcKW21B5EFtD2' --login_with_auth "Bearer foo"
platform-public-get-wallet 'pYaKTz1gcE2XCwTk' 'RUIX6IFHNmB9mYBv' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'tOwxjqyrjDApeN5e' 'AfRqSgH5xIuBTYOd' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'svNyk52MQFkVVEf3' --body '{"itemIds": ["6S7yPgG48bk6PwH1", "tdEAJSqXA0Wv0zWG", "vkc6byp3mvyYT3Gu"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 'aZVTxBlw1IWeXKFT' --body '{"entitlementCollectionId": "4rfSbbSlDPGf9Fn3", "entitlementOrigin": "Epic", "metadata": {"JNPZkEfkAcJTMS4p": {}, "VRcCHIGfmCMTr9AC": {}, "nI2sMrEgl7ZR1HCk": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "YRxFWia7yJ2d87Xj", "namespace": "A0ajvb7JcGUFgp6L"}, "item": {"itemId": "kyXpxJeFxhgTwyO5", "itemSku": "1CUpcdxL0a9VDhrq", "itemType": "WCTXOxQUpyFgZhNp"}, "quantity": 83, "type": "ITEM"}, {"currency": {"currencyCode": "uyPdzx8BM2wEgTtL", "namespace": "RT5stwQFUEbTPQ8p"}, "item": {"itemId": "7VMlxEXnqHwMyKpw", "itemSku": "phjUXvM1GqMkZ44U", "itemType": "XgdBqtJaRyDlP9qI"}, "quantity": 66, "type": "CURRENCY"}, {"currency": {"currencyCode": "5Krx6KkHagEugKJx", "namespace": "kU8Y58COtTNjnNSi"}, "item": {"itemId": "kJDg6ujKvq0CIa1Y", "itemSku": "CK9PlMeQprfgLGkH", "itemType": "X1tdBjKmCBXETZwq"}, "quantity": 6, "type": "CURRENCY"}], "source": "REFERRAL_BONUS", "transactionId": "YUrLv4qUiTkFcLBr"}' --login_with_auth "Bearer foo"
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
echo "1..449"

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
    'g2JB0WiCpVBwvAff' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'J3btt0PpQY3Pnnic' \
    --body '{"grantDays": "80yEO8dL6Jh10XMU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'GeDavCKradJmJFUs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'U418vAlmfGg9NO1Z' \
    --body '{"grantDays": "2DvnAxH3pS3jyCkG"}' \
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
    --body '{"clazz": "KltBNE2UbhNtH3yY", "dryRun": false, "fulfillmentUrl": "ADoZvd0La7P4JI4H", "itemType": "SUBSCRIPTION", "purchaseConditionUrl": "uDzkOHTdnUtdrRcs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'SUBSCRIPTION' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'GeOsKPNlG7rEXi6L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'EqJERpbxEq07txnv' \
    --body '{"clazz": "ZZeAf7QBuZK5GJlB", "dryRun": false, "fulfillmentUrl": "zpQWslNGnLYUYR0y", "purchaseConditionUrl": "OvJhUjzcMtwINUlr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'hIpnlam2EefVopbp' \
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
    --body '{"description": "Phsana0uXG7GUTV1", "discountConfig": {"categories": [{"categoryPath": "BwgkLDj4pjVktyoN", "includeSubCategories": true}, {"categoryPath": "677SotDEtU2xBSEQ", "includeSubCategories": false}, {"categoryPath": "rBKc2K6oJXxVEfna", "includeSubCategories": true}], "currencyCode": "c9onSNjbQEqFGwnD", "currencyNamespace": "G8kz4kvEv6tNjGRh", "discountAmount": 36, "discountPercentage": 49, "discountType": "AMOUNT", "items": [{"itemId": "1H5OgzHypgsSeKCv", "itemName": "tPz7jagBG9a1TZ87"}, {"itemId": "ltClc3RDXF5055tU", "itemName": "lenimjIbm0riCaNp"}, {"itemId": "8dUBDinAB6HqIWIi", "itemName": "5Bvb1rcuEtWAF763"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 33, "itemId": "i7lT62BOHaso53W3", "itemName": "U2Mu9ZGMWou1U0RV", "quantity": 59}, {"extraSubscriptionDays": 46, "itemId": "f3gMWDAodCKqfqze", "itemName": "exHA70NgJTxjtzgO", "quantity": 90}, {"extraSubscriptionDays": 99, "itemId": "GataPrcgTcA71dtq", "itemName": "tSUN4zvBzGh3mhID", "quantity": 82}], "maxRedeemCountPerCampaignPerUser": 23, "maxRedeemCountPerCode": 41, "maxRedeemCountPerCodePerUser": 50, "maxSaleCount": 79, "name": "MGNll4O8ELahcNJq", "redeemEnd": "1993-03-16T00:00:00Z", "redeemStart": "1985-02-02T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["GiOZJpUf9RpcfEQn", "0O6D8PGQuazAypgW", "hTED5YmPTBUkm2Fy"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'aCokoGynp6xcqNKJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'nAhrSt96OaARAjHL' \
    --body '{"description": "GV3sNxS8uLBZiVRY", "discountConfig": {"categories": [{"categoryPath": "IyQLcslTEqgVNG8A", "includeSubCategories": true}, {"categoryPath": "2UMPtigq9zOQOcAq", "includeSubCategories": true}, {"categoryPath": "NpojZ24I2n25smsr", "includeSubCategories": false}], "currencyCode": "2W3GY7tdh8hHlQyM", "currencyNamespace": "lgfkTsAThLyflAqq", "discountAmount": 54, "discountPercentage": 25, "discountType": "AMOUNT", "items": [{"itemId": "4M78smYdyge6DroO", "itemName": "ywOxI4G6jZzoYIFA"}, {"itemId": "vYfT8XQw2EOq6BFj", "itemName": "mN4OqKGLRpNWzKZt"}, {"itemId": "Znxgywmr4CYNGm7T", "itemName": "k1mMyeNRsjQuDEgO"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 21, "itemId": "QNL6ijLRvQOgoaBo", "itemName": "oTawHLMxhx9nC3o6", "quantity": 32}, {"extraSubscriptionDays": 53, "itemId": "XU5MDJLCB6WbXWIR", "itemName": "pgjooaBVemsbkaXZ", "quantity": 87}, {"extraSubscriptionDays": 99, "itemId": "6nTj9rZpkSntuOea", "itemName": "PAyPeEGBepK1Ix4S", "quantity": 46}], "maxRedeemCountPerCampaignPerUser": 20, "maxRedeemCountPerCode": 7, "maxRedeemCountPerCodePerUser": 59, "maxSaleCount": 70, "name": "jCHniVSn1gYGal5N", "redeemEnd": "1980-04-14T00:00:00Z", "redeemStart": "1985-12-19T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["T0om9OlGzpF25qu9", "8RhktX6qwkXbCLbh", "8t0zPkQWRUlgE0kx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'zFMq9ttbEHAEV7C6' \
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
    --body '{"appConfig": {"appName": "SNNBxCeN3pGn46fG"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "dYy9Y9OCSmmT3WKi"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "Nv2Ar8yXV6qf6v5S"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "eWPZ8yhwQ0gIdj1l"}, "extendType": "APP"}' \
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
    '6C0VJ0fK2m6lQ5Ao' \
    --body '{"categoryPath": "8TITYiHSR2SEJh1Y", "localizationDisplayNames": {"DedZdNqkXPWZfT8Z": "fdKp9q4nXuK0tJAY", "ror2XdtSCG7ZExOo": "IpWzacOvwUsnIbQM", "3ZAtyEWKWoZRUL7w": "S3HaMTXAX6y0STTN"}}' \
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
    '2sBEijjjpvSzGkED' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetCategory' test.out

#- 33 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '0oweFYDBPyd1jJBx' \
    'brbuFay9PXgEQS48' \
    --body '{"localizationDisplayNames": {"71QSmsspn5sNfifK": "65tvaH9jwcO48pth", "yYpBJDHIIxTIGI5E": "ssYllIqjJzuQ8Ggl", "VgxjOGQGlHm8VTN5": "6tJKwD8O07L9GG1u"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateCategory' test.out

#- 34 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'enDihceaLdgPZI0f' \
    'KW8LeQxItaK6s3Hh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeleteCategory' test.out

#- 35 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'a69MgxjGJx62mkfV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetChildCategories' test.out

#- 36 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'lu4bGB1pyk0PpxXZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetDescendantCategories' test.out

#- 37 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'Dy5Pmbu7RrD9a5md' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryCodes' test.out

#- 38 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'lXTCL467xHbAiD3P' \
    --body '{"codeValue": "r3mXZO1PnbSlfVRl", "quantity": 54}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'CreateCodes' test.out

#- 39 Download
$PYTHON -m $MODULE 'platform-download' \
    '3GYO94ZOo94gS5DH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'Download' test.out

#- 40 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'LB65fxQ06GwTmobi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkDisableCodes' test.out

#- 41 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'Bnfrnq9kOFBWhUTP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'BulkEnableCodes' test.out

#- 42 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'iKR3qcbHLGplYsS3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'QueryRedeemHistory' test.out

#- 43 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'jsRZffCd00VrgPuN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetCode' test.out

#- 44 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'tOv3jbhGBuW8KcyP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DisableCode' test.out

#- 45 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'MfDWSEEpKoJlmhMQ' \
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
    --body '{"currencyCode": "UCx70QjYbzemOTUR", "currencySymbol": "zzAOIBarB7kcer5S", "currencyType": "VIRTUAL", "decimals": 85, "localizationDescriptions": {"40XOUoLOa7oDz00g": "xcoaH6u9TVf4DvEz", "poPRiClZ6rlwX99A": "HMLHqguYykVWzNwP", "cvGyieBsRUduW5lx": "SlorWEGN5bPGSOSi"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'CreateCurrency' test.out

#- 51 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'iItrSrEJMBAIwTLk' \
    --body '{"localizationDescriptions": {"rMDFQfpQ9o0GJMTf": "qRRaZozM8xCBoaS2", "FMwfWNCbN5GelVOU": "0hHnsCl5k6Jxh5mk", "mQzKg0jWCjpGwh7p": "LAi5JmzvM6JFKB8i"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdateCurrency' test.out

#- 52 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'kHpl3sNRaDEC2OkX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteCurrency' test.out

#- 53 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'A3WqypoOw0H2s0si' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetCurrencyConfig' test.out

#- 54 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'bQNBz81zRPntxpgi' \
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
    --body '{"data": [{"id": "7tXIcNEcGJjOCXpu", "rewards": [{"currency": {"currencyCode": "ix5vnPeTu9evbRov", "namespace": "7Bm40CtZiAxk43DG"}, "item": {"itemId": "V1SCkw8U0d4FvVmP", "itemSku": "MtpRMWSQ8Szi1IrG", "itemType": "idRmR5BGRJhFwxmk"}, "quantity": 66, "type": "CURRENCY"}, {"currency": {"currencyCode": "fPI3j4luXQuuLtYa", "namespace": "86kvL6cBZQssUUXO"}, "item": {"itemId": "sXMNdvW1hbvGenRb", "itemSku": "m3QtsY5WaKM5YY6p", "itemType": "YrmeMIHLS8egV8Xh"}, "quantity": 13, "type": "ITEM"}, {"currency": {"currencyCode": "Djbrum8UxcutmVg8", "namespace": "APWKxoj6MF68VuKD"}, "item": {"itemId": "oklYmkytCAH8Jiqe", "itemSku": "7gfV1G6bYgIbVKp4", "itemType": "Kgew2mHDksA6Mv9N"}, "quantity": 52, "type": "ITEM"}]}, {"id": "FMbzZoeKagnKf2Yi", "rewards": [{"currency": {"currencyCode": "fzvr9OqTsInGzHFp", "namespace": "FXYJtHtqwoIwQBeI"}, "item": {"itemId": "ALI8JNIII4jrzrPs", "itemSku": "uMziNM8AB7RRxiZH", "itemType": "3ngnitURdMjZLYCa"}, "quantity": 8, "type": "CURRENCY"}, {"currency": {"currencyCode": "klQcFY1QIk1h5EKv", "namespace": "MGd6hQ2mHjmLu4oF"}, "item": {"itemId": "lReHy0JyZv7honqe", "itemSku": "iGTTqpgVsY1kPNdJ", "itemType": "iJXB3yjNUPIfvoXR"}, "quantity": 84, "type": "CURRENCY"}, {"currency": {"currencyCode": "0CkW1ZcgUSbbnffB", "namespace": "WRaJN1SjCFLDNJfA"}, "item": {"itemId": "hJGwSYEZjEb0Pv35", "itemSku": "fEk9s11bFXkf7rQJ", "itemType": "4Kj7Qyo9tUptiyZz"}, "quantity": 90, "type": "ITEM"}]}, {"id": "Y4rxRWZPe4ZLAQWu", "rewards": [{"currency": {"currencyCode": "BJwxObZqMGxhffy9", "namespace": "cHrLYfftad99JDcn"}, "item": {"itemId": "n7f2d8SOWP2dw6Uy", "itemSku": "88WpQalG38VOo82a", "itemType": "LD9jUjuDITjifWRb"}, "quantity": 25, "type": "ITEM"}, {"currency": {"currencyCode": "bVgLd1FoyNFGpu5r", "namespace": "2K0IvVg5LwUygH98"}, "item": {"itemId": "dzTL8azKCCNBZpwR", "itemSku": "FNYxx2dr6DDuDHXc", "itemType": "fvXPXJURX3XwhOlg"}, "quantity": 4, "type": "ITEM"}, {"currency": {"currencyCode": "VvEcEm53BYMBacQB", "namespace": "IuDVs7U0AJtWPRte"}, "item": {"itemId": "szMTd0R5Fsrf9xbV", "itemSku": "fgvG617GmxzClkR3", "itemType": "M6Twpwq3nLwxnJKj"}, "quantity": 83, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"WYVxGQVFJlDDJ7z4": "Pb5jyGID39Ung1D5", "7FjYKlJiRIvhej77": "OSPwdzMSmrSvQdsA", "dTUGpd8KFrXKFA2g": "djQCYoE8b0CZetLf"}}, {"platform": "PSN", "platformDlcIdMap": {"ncPkqiTKzz72PKXj": "ShM2DvesmMIbiQfa", "Hxl2YUNRLRjgKqSS": "YgZnVfa8govttlpF", "Aq8oebnS4Y2zkGYT": "r9yJIveX52r6Inl9"}}, {"platform": "PSN", "platformDlcIdMap": {"JB9Al3mn2DsHDHzS": "VJzhU5Z44zgZ1fie", "Ldl3Y82DOj5kPuNR": "ZZaUccuBYep9n7b1", "7fsblalJrwQiU3DD": "0xZFH1fHFLSr0O4r"}}]}' \
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
    --body '{"entitlementGrantList": [{"collectionId": "EZTbFDj2L2McvCrr", "endDate": "1993-04-20T00:00:00Z", "grantedCode": "7h9uKLXDaRf3pxKt", "itemId": "JbRY5luCwKrt6wn3", "itemNamespace": "yVrRCh6j7rpv8K8f", "language": "bGE", "origin": "Xbox", "quantity": 89, "region": "o2K3dN3YBOJfvV6S", "source": "PURCHASE", "startDate": "1988-10-03T00:00:00Z", "storeId": "HxLJIemNHbzgAFjt"}, {"collectionId": "jC7suvgIUkB2PAGJ", "endDate": "1979-12-04T00:00:00Z", "grantedCode": "G0GZ3JBYi9bBKBRp", "itemId": "dbLCiwxOx2XQn94x", "itemNamespace": "PqXhqeNMDGA3O5hQ", "language": "hMo", "origin": "GooglePlay", "quantity": 23, "region": "9imVMh3i7j095rDL", "source": "PROMOTION", "startDate": "1976-04-08T00:00:00Z", "storeId": "EuB1ZIMIs1dFvYok"}, {"collectionId": "H9t2u8ZZnyHKkk6G", "endDate": "1974-01-06T00:00:00Z", "grantedCode": "25tEcX9GegDnrYz0", "itemId": "GFpSVdxFsXAp1roc", "itemNamespace": "lyXllFitPamSKRzD", "language": "MgGX-990", "origin": "Other", "quantity": 61, "region": "xgRpTSUppvO3QG68", "source": "ACHIEVEMENT", "startDate": "1973-08-04T00:00:00Z", "storeId": "D7QJQEEVDAg045Bv"}], "userIds": ["oH53vibq3Qcrtt8L", "5dIebsw7EjkMnJSz", "tPd7ibBA3sd51mDo"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GrantEntitlements' test.out

#- 66 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["iEA43WqIMJdrqHIs", "J98WRjqYieXRthQZ", "vzRi7pqpajYEHs9T"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'RevokeEntitlements' test.out

#- 67 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'IkcnrJ64BOKqywS6' \
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
    --body '{"body": {"account": "DKNSeb2UMWOgVeYk", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 58, "clientTransactionId": "7pF73y9eALKWinUJ"}, {"amountConsumed": 14, "clientTransactionId": "bAuUJ7Fxg5LijlQT"}, {"amountConsumed": 97, "clientTransactionId": "oBAk1MNCAUmdnLaV"}], "entitlementId": "RUu5VbjwPa9rYgHa", "usageCount": 48}, {"clientTransaction": [{"amountConsumed": 36, "clientTransactionId": "eTT3ebuaYPNBp9wA"}, {"amountConsumed": 59, "clientTransactionId": "LxO2n7WJQFzBCD9S"}, {"amountConsumed": 40, "clientTransactionId": "3D7JLsIM3VOMRvvq"}], "entitlementId": "kXDMPzOB08tpk0qh", "usageCount": 11}, {"clientTransaction": [{"amountConsumed": 1, "clientTransactionId": "lBJjokLAaL4oAF2l"}, {"amountConsumed": 33, "clientTransactionId": "TX1sDjSWiSXsV5rJ"}, {"amountConsumed": 55, "clientTransactionId": "eZXZ1TLMZnNL3DQK"}], "entitlementId": "45IAtbyUDDSJSV8p", "usageCount": 53}], "purpose": "Pj63MJXIuLWYb2iH"}, "originalTitleName": "HVN0ZBgvrigXUT4f", "paymentProductSKU": "RbawD5yOvjgOopQf", "purchaseDate": "bXmtF0WFH7F2Inhx", "sourceOrderItemId": "tynUjuBCxkb2oF99", "titleName": "xI1VVtVrVT6Hn8B2"}, "eventDomain": "d1hZUnoQwg5uqgoH", "eventSource": "aFyoczck0qJsgZPf", "eventType": "uelAiZBZcQGHHGI7", "eventVersion": 5, "id": "fm7cYCpDIJG42ILh", "timestamp": "UoCh8lmKKocC5Ea2"}' \
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
    --body '{"bundleId": "9JhfFGN964J8WOgs", "password": "Aj2Rmf1DXvAIkzTR"}' \
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
    --body '{"sandboxId": "NRVyeEGu1ICOCmLA"}' \
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
    --body '{"applicationName": "mcaEFBKgy92LYqtQ", "serviceAccountId": "cDN7OMCehk42acy8"}' \
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
    --body '{"data": [{"itemIdentity": "wsWaPyppR3ztPSAL", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"aQwVWONEpAPedzI2": "AdlqiyEJIQcbZJJ3", "AhkrMi0bnppEJFIS": "ze88rGEr3cilJWha", "W6jNsM94E2FQb6S0": "VmaTR7E3mkDSQkgV"}}, {"itemIdentity": "MhLbM6H1MnNSKd0K", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"tITvGQtzwjGtGTr2": "38G8Aevk3k14782W", "2oNo3X4m6wms9SPa": "HlqtDPry2vMON7sd", "hlilfpDT8o2iFrYt": "GfCZCcrvsV2I4X26"}}, {"itemIdentity": "p21iDBZGJ8ZMLwPJ", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"71nV5ALS7cneNLIt": "UJgh74tyxkTR8ZCV", "JtkxjBJrNeQRsqkk": "KK2qxqzy4KSA5UtS", "XWjANSWIT9TLnuML": "NJAEk3A6A6rYiIu8"}}]}' \
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
    --body '{"appId": "eLdWykhBxLFnKnSY", "appSecret": "C9yyBYepIqtrikdA"}' \
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
    --body '{"backOfficeServerClientId": "bdOT6iSRdEg8NYuc", "backOfficeServerClientSecret": "4q5sJVzaKGDOULJb", "enableStreamJob": false, "environment": "ChxLfbXrH6f2GDrN", "streamName": "bLOjGz34ct0ctEeH", "streamPartnerName": "43wYuLnI7cTzIUER"}' \
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
    --body '{"backOfficeServerClientId": "PlQI99hMc4NbiJWP", "backOfficeServerClientSecret": "5r9EwbIGMGJ70P9I", "enableStreamJob": true, "environment": "1IK3QzkcRwFPpXGl", "streamName": "KR9ss8b8udl6fLkx", "streamPartnerName": "FnAqyvjBy0NXg7zd"}' \
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
    --body '{"appId": "6SFpkV7cAICgWFJZ", "publisherAuthenticationKey": "GnNa5yOM68r4W1fD"}' \
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
    --body '{"clientId": "ZL80oPQ0s7QhC8hg", "clientSecret": "SgytNEojK3YgWH9l", "organizationId": "7rv6XUSINd4keCei"}' \
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
    --body '{"relyingPartyCert": "w7P2PtUrPawQPaHA"}' \
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
    'RrhjbEU5n0PNuFyK' \
    'W95dJsGoBIjCKlD3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DownloadInvoiceDetails' test.out

#- 103 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'axSivItV1txLINmd' \
    'HTGLtX6TN5ctYX1s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GenerateInvoiceSummary' test.out

#- 104 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'ZnYF3hWmCCIrP0lJ' \
    --body '{"categoryPath": "Xexseo2e6BCNJTTR", "targetItemId": "IHDKdVfOUr14yZH0", "targetNamespace": "0n8MsRjaB8iurBWW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'SyncInGameItem' test.out

#- 105 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '5jSJi0seeGJIqnat' \
    --body '{"appId": "ME8GnNWfAY1yY6D1", "appType": "SOFTWARE", "baseAppId": "tyhjZSeDCKT4ilZB", "boothName": "8apDTR3aL9sunWp7", "categoryPath": "V1s8LmXm0FaJMIjg", "clazz": "zU02nZWwBdEFpfcc", "displayOrder": 0, "entitlementType": "DURABLE", "ext": {"tL8YKMrUBL6dDTVw": {}, "PIt1hrg2mhbI0NDs": {}, "hb7ZzQuBPyNi1GhZ": {}}, "features": ["HEj6p5grjk5wzdks", "9X4zFOvdRTpGmBUj", "OUku8dtQoIrpvmM1"], "flexible": false, "images": [{"as": "oCmprkv7A8MRutCK", "caption": "Csqmx2zriOGB8b5q", "height": 94, "imageUrl": "1POTXhXLRU5prAdq", "smallImageUrl": "nnPOiTVzAeQq6rnW", "width": 73}, {"as": "fYXF6R9Rz3HVP2Y9", "caption": "WqSRiwV3UZg0UJLP", "height": 80, "imageUrl": "gET2yS6C8a8L0vQD", "smallImageUrl": "S4EVpBmsUzx64Gr4", "width": 65}, {"as": "Em0uYYuAmqhftIfe", "caption": "2zdqZ7ht1vUiJ7jB", "height": 50, "imageUrl": "EW9QhzU8FwQtZpfU", "smallImageUrl": "oyoiUjmqOyQ7ammF", "width": 13}], "inventoryConfig": {"customAttributes": {"T1z0GqDZN7ftHOhV": {}, "y48YYg1AkRh3NmbR": {}, "hMxKeIgwq1NZmxa0": {}}, "serverCustomAttributes": {"ghRG020QpWTNKsVy": {}, "K8EU8JYc00PA2ef1": {}, "jFeqQ8mBpTuvLTJU": {}}, "slotUsed": 52}, "itemIds": ["kr872hJvrOCdAEZ2", "RHt3uQ5nFrPXwxJZ", "QpkeDHr0hjKBpDMI"], "itemQty": {"vK4qfQ0pQIcYMBkt": 33, "1Q2BbcjSpv6Nt1oz": 40, "1VFFhO5FcdTvIDQI": 57}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"i2SNZKqlJZsdnY04": {"description": "DIyosprZPBaERb7U", "localExt": {"9kK4VctUmDhFVNa0": {}, "JYzTbdnOnEarWP4n": {}, "rJ5fNESRVGeswvkz": {}}, "longDescription": "LNIITUJGj5FYaSge", "title": "wLWHcBxz5LpdkRCA"}, "U8HhmXC68JFPdxhv": {"description": "BKee6wG66YPD4vNd", "localExt": {"ENY1r1rI0T97qA1O": {}, "iblWlz2LXQNqcONc": {}, "JIsYRQz97fRWI17e": {}}, "longDescription": "NP3Y2nWlS9Sfjh0h", "title": "tyVaGj4y9ahS7h7X"}, "Vlmc5Rs5FVQSIqOb": {"description": "R55tV0BlN1iFvw0G", "localExt": {"SLBmie8SJckSRbu7": {}, "hgmUm7RVCUREDdoG": {}, "atGQ1SeOXsg4jofp": {}}, "longDescription": "9PvlQ1xdmr4JDpvZ", "title": "gvPGHjV7MNTpM7fS"}}, "lootBoxConfig": {"rewardCount": 30, "rewards": [{"lootBoxItems": [{"count": 14, "duration": 6, "endDate": "1973-05-29T00:00:00Z", "itemId": "QyDVVkkqiMiRf2yC", "itemSku": "yM0Tp5GJHHbsLJ73", "itemType": "mCPhhmUyIwgQS9kV"}, {"count": 64, "duration": 92, "endDate": "1995-11-03T00:00:00Z", "itemId": "beTeB9KgnFZQ9lVM", "itemSku": "NyCiytnfMoO1I3KI", "itemType": "STbn4yEa2AaBRalz"}, {"count": 69, "duration": 92, "endDate": "1986-12-26T00:00:00Z", "itemId": "m4Gant6aqjKzWDAa", "itemSku": "uqLKarcLQRQtC927", "itemType": "GneBM8LvzgyIVzGF"}], "name": "BLJ5vbC9NfLTFJGO", "odds": 0.4109580270439601, "type": "REWARD", "weight": 31}, {"lootBoxItems": [{"count": 70, "duration": 95, "endDate": "1984-05-16T00:00:00Z", "itemId": "nos6QiHyrcGeRv27", "itemSku": "hj73EtufHuNIp0GX", "itemType": "pM4nbG7aww2TANW1"}, {"count": 84, "duration": 59, "endDate": "1979-11-16T00:00:00Z", "itemId": "7TvLoL0wwHoRMNex", "itemSku": "BOron8wIdUbp7xVM", "itemType": "KfbAJfW4iMIC52NU"}, {"count": 9, "duration": 28, "endDate": "1972-03-03T00:00:00Z", "itemId": "WGxxfnMIDSCPr1m1", "itemSku": "Fg6tc250c2okDTem", "itemType": "6o62xFY6TNqoLFFS"}], "name": "4wB6Um7ir0n6O3vb", "odds": 0.8126078268885351, "type": "REWARD", "weight": 19}, {"lootBoxItems": [{"count": 36, "duration": 63, "endDate": "1972-09-10T00:00:00Z", "itemId": "2Fapao5jo9nJoKEb", "itemSku": "8tHmFwLGan2SrKck", "itemType": "NxLWH6rjhRL9uxoV"}, {"count": 24, "duration": 83, "endDate": "1977-02-03T00:00:00Z", "itemId": "0GIEUJtMC8NyV2HL", "itemSku": "HZT3oYJlC4ie3Inn", "itemType": "SA22NHTb4qXYyJUA"}, {"count": 23, "duration": 66, "endDate": "1989-06-03T00:00:00Z", "itemId": "lTwdJEPoemVtmVXT", "itemSku": "s3tCu4F9IgDT2tq2", "itemType": "V2lMzfIQHCZ90DqQ"}], "name": "gP6ynrQjYH0N2loT", "odds": 0.22519007053825602, "type": "REWARD_GROUP", "weight": 0}], "rollFunction": "DEFAULT"}, "maxCount": 75, "maxCountPerUser": 68, "name": "iQWPxd1gqlwx9CE4", "optionBoxConfig": {"boxItems": [{"count": 99, "duration": 86, "endDate": "1972-06-05T00:00:00Z", "itemId": "t8x9SSaOZcEvG6KZ", "itemSku": "h954BmtuIFllfSUn", "itemType": "aUhC4x11AS2jTKoT"}, {"count": 18, "duration": 8, "endDate": "1983-10-02T00:00:00Z", "itemId": "01FkEEXlKiTIDgP7", "itemSku": "wuXQdfW99JglScoO", "itemType": "lkkBxiXf8OBQRqXW"}, {"count": 86, "duration": 72, "endDate": "1993-01-24T00:00:00Z", "itemId": "EDRuYBnWiEsOnDfI", "itemSku": "AN04f5kSONmw1BDq", "itemType": "qSctLL4WfGq8JCDn"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 99, "fixedTrialCycles": 5, "graceDays": 75}, "regionData": {"cuzuc6QDRMGdBPbU": [{"currencyCode": "yHTYPS8CGKXGon2e", "currencyNamespace": "cc65YAFLweD9Z7U2", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1983-03-25T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1978-06-27T00:00:00Z", "expireAt": "1979-08-18T00:00:00Z", "price": 36, "purchaseAt": "1990-06-27T00:00:00Z", "trialPrice": 85}, {"currencyCode": "QH3rNhDepQum4Dj7", "currencyNamespace": "pR05RTGXGRkYXifT", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1971-04-20T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1984-06-30T00:00:00Z", "expireAt": "1992-10-03T00:00:00Z", "price": 65, "purchaseAt": "1998-01-17T00:00:00Z", "trialPrice": 97}, {"currencyCode": "87v0PwZjydyzGDZM", "currencyNamespace": "4zTTYI6O8coYDWUf", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1990-10-01T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1996-05-30T00:00:00Z", "expireAt": "1974-02-07T00:00:00Z", "price": 44, "purchaseAt": "1974-06-22T00:00:00Z", "trialPrice": 56}], "496H02yOVN1h41jI": [{"currencyCode": "POMXufZPWSe20JfN", "currencyNamespace": "vtNcWtpUkw98x3tM", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1971-01-12T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1973-09-21T00:00:00Z", "expireAt": "1984-08-30T00:00:00Z", "price": 71, "purchaseAt": "1978-05-16T00:00:00Z", "trialPrice": 64}, {"currencyCode": "KD8HJ4X0DetCeJ4x", "currencyNamespace": "0wf5mQx6Hs7M5apP", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1976-12-22T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1999-06-05T00:00:00Z", "expireAt": "1971-02-18T00:00:00Z", "price": 84, "purchaseAt": "1985-10-21T00:00:00Z", "trialPrice": 5}, {"currencyCode": "5n5s6DODBmrqEhGl", "currencyNamespace": "kEmGdCbwodVRjZJW", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1985-08-11T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1992-05-02T00:00:00Z", "expireAt": "1972-03-21T00:00:00Z", "price": 42, "purchaseAt": "1975-10-24T00:00:00Z", "trialPrice": 10}], "zpPO7BPxVWlRFnIe": [{"currencyCode": "krQ99ecmenxguw5b", "currencyNamespace": "O8Vh4JaKYAsoMlLJ", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1993-03-28T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1996-07-08T00:00:00Z", "expireAt": "1998-09-15T00:00:00Z", "price": 38, "purchaseAt": "1974-05-07T00:00:00Z", "trialPrice": 78}, {"currencyCode": "gvjt7eCLDu6PA3PR", "currencyNamespace": "nQtB410iWT0SILVG", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1996-04-21T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1988-06-14T00:00:00Z", "expireAt": "1994-01-15T00:00:00Z", "price": 76, "purchaseAt": "1993-10-19T00:00:00Z", "trialPrice": 32}, {"currencyCode": "lWXmQFlef1tSHJf6", "currencyNamespace": "sVpwAAKKqmTy0ZSy", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1988-03-23T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1998-12-11T00:00:00Z", "expireAt": "1996-10-29T00:00:00Z", "price": 23, "purchaseAt": "1981-08-14T00:00:00Z", "trialPrice": 11}]}, "saleConfig": {"currencyCode": "lZMQeSnOg5gf1Swr", "price": 2}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "moF4DvNA1wo9IAxV", "stackable": true, "status": "INACTIVE", "tags": ["z37uuqLDQF12kYfB", "DnkuOJekbO0sk7o1", "AjgNZgto2EhOlnsu"], "targetCurrencyCode": "qeQxos58kVk7F1KK", "targetNamespace": "OfFFLvER3xqCwUgK", "thumbnailUrl": "a4oCBoJDxGa1UuSr", "useCount": 46}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'CreateItem' test.out

#- 106 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'ehnV8Aw9m6GvDSE2' \
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
    'F7Ad69Dln4mqFhgK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'GetItems' test.out

#- 110 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'KcGohdjQUwVdPsAr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GetItemBySku' test.out

#- 111 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'kepfK0DE3IibPSQn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItemBySku' test.out

#- 112 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'phnvAWBSOr7zljUK' \
    'yhKkD7wAHMrv8zAB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'GetEstimatedPrice' test.out

#- 113 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'DhYAVxvs3ugNvvgI' \
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
    '2k1P9nQxzj3AnmpW' \
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
    'fje5cAtTDvwFHcoO' \
    --body '{"itemIds": ["Di5oF1pccdjjZpFn", "VLb7xerpjVPfktNn", "l8UYH5kesuOtYHLq"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'ValidateItemPurchaseCondition' test.out

#- 118 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'cdy05YrqdFn8sQ7y' \
    --body '{"changes": [{"itemIdentities": ["c8xLKyBfGLHEAKhp", "612Y2ncRf7tEGzYq", "RoHm6EtyXqQbKWMJ"], "itemIdentityType": "ITEM_ID", "regionData": {"YVObVorIVWWLaVJw": [{"currencyCode": "e2KAca1aKeXUu9hI", "currencyNamespace": "NqKvoYKio4M51vua", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1979-03-20T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1992-04-08T00:00:00Z", "discountedPrice": 38, "expireAt": "1999-12-15T00:00:00Z", "price": 66, "purchaseAt": "1980-04-15T00:00:00Z", "trialPrice": 52}, {"currencyCode": "IkuW6jjofc6itDEs", "currencyNamespace": "q0dHfYG6k853GERd", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1979-09-17T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1972-02-10T00:00:00Z", "discountedPrice": 14, "expireAt": "1978-12-05T00:00:00Z", "price": 65, "purchaseAt": "1999-07-27T00:00:00Z", "trialPrice": 6}, {"currencyCode": "TymfVfny2M0KsS08", "currencyNamespace": "cY3fjI1YTT3qUMd0", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1995-03-14T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1995-08-23T00:00:00Z", "discountedPrice": 9, "expireAt": "1993-02-22T00:00:00Z", "price": 92, "purchaseAt": "1984-11-14T00:00:00Z", "trialPrice": 12}], "479gn62lizsWGrtI": [{"currencyCode": "gVPb7hoo8YkNPW8m", "currencyNamespace": "WOJGtdXJGDsxRAR3", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1996-09-13T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1990-12-28T00:00:00Z", "discountedPrice": 4, "expireAt": "1990-07-29T00:00:00Z", "price": 68, "purchaseAt": "1986-05-13T00:00:00Z", "trialPrice": 100}, {"currencyCode": "wybVjqOKrqYGxcBx", "currencyNamespace": "fjLUZHK0OO1yQsMB", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1993-01-28T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1992-03-15T00:00:00Z", "discountedPrice": 11, "expireAt": "1973-05-27T00:00:00Z", "price": 60, "purchaseAt": "1980-05-26T00:00:00Z", "trialPrice": 69}, {"currencyCode": "qCfJEjrqJkFoZFZe", "currencyNamespace": "x0eOw31PXkVnetcv", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1981-06-22T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1999-04-09T00:00:00Z", "discountedPrice": 37, "expireAt": "1995-03-08T00:00:00Z", "price": 7, "purchaseAt": "1975-08-09T00:00:00Z", "trialPrice": 34}], "z0hsW0IHIYvJ7PPg": [{"currencyCode": "VaFwGhl5zqkzEu41", "currencyNamespace": "hVfVC7eLVWGk0GjY", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1971-10-11T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1971-12-23T00:00:00Z", "discountedPrice": 60, "expireAt": "1985-08-23T00:00:00Z", "price": 35, "purchaseAt": "1998-12-29T00:00:00Z", "trialPrice": 53}, {"currencyCode": "3I4K9iBdljXtowif", "currencyNamespace": "BfAw30kOykBuDJ0I", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1979-02-09T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1984-11-04T00:00:00Z", "discountedPrice": 22, "expireAt": "1989-11-12T00:00:00Z", "price": 78, "purchaseAt": "1997-12-14T00:00:00Z", "trialPrice": 45}, {"currencyCode": "1sGlfqjDBzOjNeq8", "currencyNamespace": "JJhbi7QD0RW0qgxO", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1977-09-13T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1979-02-15T00:00:00Z", "discountedPrice": 64, "expireAt": "1991-08-23T00:00:00Z", "price": 63, "purchaseAt": "1980-05-19T00:00:00Z", "trialPrice": 14}]}}, {"itemIdentities": ["ORMCVBTrkvObsiHQ", "gt7OfL6AcBPjUYUR", "B3Rsrc0qvV8Gq1cw"], "itemIdentityType": "ITEM_SKU", "regionData": {"aWVjM3iVKjr5VDqa": [{"currencyCode": "kKdW767GAH1oiS1J", "currencyNamespace": "uO7MNoFPtRhYYIpN", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1972-10-02T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1982-01-07T00:00:00Z", "discountedPrice": 7, "expireAt": "1985-02-20T00:00:00Z", "price": 98, "purchaseAt": "1973-07-02T00:00:00Z", "trialPrice": 36}, {"currencyCode": "bitD5tWXZVvjYqrE", "currencyNamespace": "XKUDlmtixw9FtBVA", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1978-07-11T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1990-06-17T00:00:00Z", "discountedPrice": 7, "expireAt": "1973-10-28T00:00:00Z", "price": 12, "purchaseAt": "1997-11-11T00:00:00Z", "trialPrice": 82}, {"currencyCode": "eN2W2CNqmO8JALtC", "currencyNamespace": "iDuGQQsvWV3NSjXU", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1976-10-27T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1997-08-16T00:00:00Z", "discountedPrice": 38, "expireAt": "1990-07-09T00:00:00Z", "price": 49, "purchaseAt": "1994-07-20T00:00:00Z", "trialPrice": 75}], "hEyBfFFZwkC1PRjB": [{"currencyCode": "WzTuXttDREDWbOM3", "currencyNamespace": "xQaraaEVt3vsBCXp", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1993-07-17T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1987-03-22T00:00:00Z", "discountedPrice": 37, "expireAt": "1995-07-23T00:00:00Z", "price": 37, "purchaseAt": "1972-10-13T00:00:00Z", "trialPrice": 56}, {"currencyCode": "TcyT5AhNNH0Ht1yP", "currencyNamespace": "tBwXIuYrbPUcvEOJ", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1975-04-25T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1986-05-31T00:00:00Z", "discountedPrice": 73, "expireAt": "1971-01-06T00:00:00Z", "price": 74, "purchaseAt": "1994-02-27T00:00:00Z", "trialPrice": 14}, {"currencyCode": "W37NTbz8HiRmuknv", "currencyNamespace": "XiTP0KrWQ3pgbHM0", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1983-09-21T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1987-12-26T00:00:00Z", "discountedPrice": 5, "expireAt": "1973-04-25T00:00:00Z", "price": 60, "purchaseAt": "1980-07-28T00:00:00Z", "trialPrice": 73}], "wlTE9Czhnck3GnyP": [{"currencyCode": "FQHgn9jVE6QGkZ8A", "currencyNamespace": "VzeiaDi67E3rTwN2", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1994-02-03T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1979-08-05T00:00:00Z", "discountedPrice": 61, "expireAt": "1979-02-12T00:00:00Z", "price": 72, "purchaseAt": "1973-03-16T00:00:00Z", "trialPrice": 62}, {"currencyCode": "uJsVjhLgaFeFJ5QR", "currencyNamespace": "uvEsU5QkmsmfFhPT", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1996-06-30T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1984-07-31T00:00:00Z", "discountedPrice": 92, "expireAt": "1992-09-16T00:00:00Z", "price": 15, "purchaseAt": "1996-09-08T00:00:00Z", "trialPrice": 58}, {"currencyCode": "UXbdYU08BQZXTcZn", "currencyNamespace": "HoYaII5c5UqVvKR3", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1983-06-10T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1976-01-15T00:00:00Z", "discountedPrice": 61, "expireAt": "1981-10-28T00:00:00Z", "price": 36, "purchaseAt": "1994-12-05T00:00:00Z", "trialPrice": 15}]}}, {"itemIdentities": ["jqlB5c8a78gp4BGN", "4NAydb6GgyFczEOM", "XF1T1sU9xsmACLFH"], "itemIdentityType": "ITEM_SKU", "regionData": {"JqK7dgsgrnpVE1ac": [{"currencyCode": "xZoDXdPORkWkyTcJ", "currencyNamespace": "zvDUlhTlBNpvkjg4", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1995-10-26T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1985-05-16T00:00:00Z", "discountedPrice": 97, "expireAt": "1986-12-16T00:00:00Z", "price": 33, "purchaseAt": "1978-02-06T00:00:00Z", "trialPrice": 54}, {"currencyCode": "ZP1CFaMkJVBkZU3q", "currencyNamespace": "tk0dM4GZGiSutb6w", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1986-05-23T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1976-11-17T00:00:00Z", "discountedPrice": 90, "expireAt": "1987-07-19T00:00:00Z", "price": 69, "purchaseAt": "1992-08-23T00:00:00Z", "trialPrice": 39}, {"currencyCode": "9VWMnzbuNQNJxCbL", "currencyNamespace": "EhfrPxIRdbUwkN6T", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1971-06-29T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1993-04-15T00:00:00Z", "discountedPrice": 9, "expireAt": "1991-08-22T00:00:00Z", "price": 30, "purchaseAt": "1992-10-14T00:00:00Z", "trialPrice": 100}], "mpKyZGtqWw67LheL": [{"currencyCode": "DvwZjthGMOB4HFIz", "currencyNamespace": "TlGBnpLBd02br9Of", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1977-03-20T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1974-07-01T00:00:00Z", "discountedPrice": 13, "expireAt": "1975-11-07T00:00:00Z", "price": 7, "purchaseAt": "1981-10-23T00:00:00Z", "trialPrice": 89}, {"currencyCode": "ixzScfrHzGYC1TdL", "currencyNamespace": "VDBDxK6laOkeLBcp", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1985-05-30T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1997-03-15T00:00:00Z", "discountedPrice": 44, "expireAt": "1994-06-23T00:00:00Z", "price": 36, "purchaseAt": "1995-05-02T00:00:00Z", "trialPrice": 45}, {"currencyCode": "CMJRliFCmFC9uUxS", "currencyNamespace": "xI4yyrZIV9M22gRL", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1972-09-13T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1982-07-23T00:00:00Z", "discountedPrice": 39, "expireAt": "1998-12-06T00:00:00Z", "price": 82, "purchaseAt": "1998-10-03T00:00:00Z", "trialPrice": 38}], "zbnPB5wG65f3ACfS": [{"currencyCode": "3A8JeRMYUCgn7okl", "currencyNamespace": "NewpAIwtlAooXZ7H", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1971-12-25T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1974-05-21T00:00:00Z", "discountedPrice": 57, "expireAt": "1978-03-01T00:00:00Z", "price": 66, "purchaseAt": "1983-05-01T00:00:00Z", "trialPrice": 55}, {"currencyCode": "O2pp9qVpZbsppRsB", "currencyNamespace": "WQ7RdYqZaQ8swcFO", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1975-08-03T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1995-04-29T00:00:00Z", "discountedPrice": 61, "expireAt": "1994-09-11T00:00:00Z", "price": 9, "purchaseAt": "1986-04-19T00:00:00Z", "trialPrice": 80}, {"currencyCode": "8CjEhtRcnVsYOwyp", "currencyNamespace": "w6F21uYowkPNGANj", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1975-10-21T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1997-05-30T00:00:00Z", "discountedPrice": 21, "expireAt": "1994-01-06T00:00:00Z", "price": 36, "purchaseAt": "1977-03-29T00:00:00Z", "trialPrice": 15}]}}]}' \
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
    --body '{"appId": "bVw9nLvVm8UeFUba", "appType": "DLC", "baseAppId": "b5on2kvdeu5DfAxs", "boothName": "rX7OiSRs0z2RYA8f", "categoryPath": "TlbfUOSmR4F0p5g7", "clazz": "b3MegxV9JnAJSu3M", "displayOrder": 62, "entitlementType": "DURABLE", "ext": {"ihx6IJwMzUqM16MY": {}, "Y2MVvo3MMCL4aV6o": {}, "MUzpMmsvvKTljWsp": {}}, "features": ["HLHx7FCWn7iOmKIN", "MrC4TeRTNUYz7N4w", "2roJNZmgEGzqDHdL"], "flexible": true, "images": [{"as": "BW8Aq2KVQNFGaJEy", "caption": "BVlQ5iHlTqgMzvj8", "height": 39, "imageUrl": "KRTVR95IwPCb2qOu", "smallImageUrl": "IRbBL0njCbitEJNH", "width": 45}, {"as": "ueQLLJPh6Hpodpzu", "caption": "BQwTS66qr03Mp14S", "height": 4, "imageUrl": "HG9ID7mZ4eKHaAP4", "smallImageUrl": "PYToJAMgJkC8UGlq", "width": 3}, {"as": "0WCXd8GX7ygT5qlB", "caption": "ekxw9pO3vyRviPlj", "height": 60, "imageUrl": "rVtIQyxp17b8SHvR", "smallImageUrl": "IiJgGrdz6Ar6ZMGU", "width": 70}], "inventoryConfig": {"customAttributes": {"nCXqJplcwaBHILlC": {}, "C7ovjEbjKrZ2d6Ib": {}, "WTfPplY43FQpfFWm": {}}, "serverCustomAttributes": {"8VMHjC8qrxvZsJd3": {}, "RBYL4PAqdviBvToS": {}, "Q7EqHUhHn1qP3G2k": {}}, "slotUsed": 92}, "itemIds": ["mqqwoT441DX6xwuD", "6giqKLavCF9yVeJJ", "wyaY7Ho61RoV0VH7"], "itemQty": {"thk8lnCROZodh1gb": 20, "dqELbdqXaPlAMGm4": 15, "A5061CF9079hQA91": 5}, "itemType": "SEASON", "listable": true, "localizations": {"uNAeKKjcKgU263Pa": {"description": "wPB10d4KCtC9mqs8", "localExt": {"uXBZ2Kxk4a5FeKFm": {}, "3raYpWl0MfF3iAQb": {}, "4Iiy26m51AwCv4UK": {}}, "longDescription": "mP7eczfnYgOqXhJZ", "title": "6DIokID1ZFk9fRCH"}, "fId0Dhnin8RxnO0q": {"description": "s4FykFXDdcUuEE9w", "localExt": {"h4CEOrPY29A1L1Xi": {}, "jb7GTIFWcZWKcGHG": {}, "9MBp1AEcNUzfWwpd": {}}, "longDescription": "raZO1lfHzX5CHNiY", "title": "aLYUlRZSLj5xwmP8"}, "QMJJJn2Lqw6aiKZb": {"description": "UJQ92BTViMMFji1G", "localExt": {"mfmwhN25xGSRRZnw": {}, "lbMGheYVteLiiIKP": {}, "jokv6HMQOekLKHzi": {}}, "longDescription": "Tw5M3KvzpUEcp3cp", "title": "4fWJlLrbVQceKy5J"}}, "lootBoxConfig": {"rewardCount": 10, "rewards": [{"lootBoxItems": [{"count": 75, "duration": 24, "endDate": "1998-05-19T00:00:00Z", "itemId": "aUz9AKozXBA29DPh", "itemSku": "Ya8Ksjfnk7HKSWUL", "itemType": "kEKqQ4ToqWjpaECY"}, {"count": 17, "duration": 62, "endDate": "1995-02-07T00:00:00Z", "itemId": "NmymBNr5C2BOjUiO", "itemSku": "QVEbp3z13pDy371Q", "itemType": "LVtDb6RZXatSimmK"}, {"count": 41, "duration": 85, "endDate": "1972-12-25T00:00:00Z", "itemId": "qURkyz4E3EI1bSCY", "itemSku": "aa8JSNQdhrnvuDGF", "itemType": "iT4U6WQQwsTHCgTv"}], "name": "rGllrcttK4WgzdUh", "odds": 0.4511086417461512, "type": "PROBABILITY_GROUP", "weight": 96}, {"lootBoxItems": [{"count": 74, "duration": 99, "endDate": "1973-03-12T00:00:00Z", "itemId": "8C1HnrPGydCRGPXL", "itemSku": "KNNfCxcAJoMhSZgp", "itemType": "x0HtzCgr8ybpAO0P"}, {"count": 14, "duration": 41, "endDate": "1974-02-08T00:00:00Z", "itemId": "yBmb2Ir2yOaVvE1N", "itemSku": "52PwdeTQhMz99aZ3", "itemType": "fza0rlzqNhVNwgXB"}, {"count": 58, "duration": 23, "endDate": "1997-11-10T00:00:00Z", "itemId": "r4m1UpizE7fm00IB", "itemSku": "0YnQ5xpjcMxUGokG", "itemType": "4VQKR0ItcCnXFRjh"}], "name": "k7tzIHqZpgJqlw44", "odds": 0.8657709499031238, "type": "PROBABILITY_GROUP", "weight": 96}, {"lootBoxItems": [{"count": 10, "duration": 8, "endDate": "1978-02-23T00:00:00Z", "itemId": "AVnf8BzBBqEvMtJo", "itemSku": "pw2r5pKsXnIYkKH6", "itemType": "MNrEsOlIFw6Fqa6Y"}, {"count": 57, "duration": 52, "endDate": "1976-01-03T00:00:00Z", "itemId": "XOvZUgW2ZMVJhOyV", "itemSku": "aO1sgnJF31EULHtV", "itemType": "tkZrE0YPmtE6fcv3"}, {"count": 27, "duration": 15, "endDate": "1992-08-02T00:00:00Z", "itemId": "ROvD1FiqEUhsD6Qx", "itemSku": "KzbZ7xvbLKNa3OJM", "itemType": "FdrQmX2OFLws9RV6"}], "name": "lY9IGsZjUsSUE7Nu", "odds": 0.4521244081862017, "type": "REWARD_GROUP", "weight": 62}], "rollFunction": "CUSTOM"}, "maxCount": 84, "maxCountPerUser": 45, "name": "WNkgUfe6pVMS5m8a", "optionBoxConfig": {"boxItems": [{"count": 89, "duration": 6, "endDate": "1988-04-03T00:00:00Z", "itemId": "ev5s4q7UwwraCDr3", "itemSku": "26Q66cxtjNTXsCsf", "itemType": "A2pIWzC6nrUavXt7"}, {"count": 40, "duration": 5, "endDate": "1976-05-10T00:00:00Z", "itemId": "lsH39PXWtk222GY7", "itemSku": "L58lP7drhfBjZFga", "itemType": "GUfhy5TZFoyfZ0Xf"}, {"count": 59, "duration": 49, "endDate": "1974-12-11T00:00:00Z", "itemId": "twNaVCqf0vP284yQ", "itemSku": "AbudR95sQ1FygQvo", "itemType": "X9pEJ3R0cuQGjCSh"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 81, "fixedTrialCycles": 47, "graceDays": 51}, "regionData": {"8vLsYBHN6M7OpcFq": [{"currencyCode": "K4FBJG8BfuSzytkP", "currencyNamespace": "E6mw3Zv0zD14WsQt", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1997-03-05T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1977-07-04T00:00:00Z", "expireAt": "1984-03-22T00:00:00Z", "price": 12, "purchaseAt": "1998-06-18T00:00:00Z", "trialPrice": 92}, {"currencyCode": "OKy45dqId3gXUWVA", "currencyNamespace": "maDjrn0iZsIfqeLf", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1998-03-15T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1993-12-30T00:00:00Z", "expireAt": "1971-01-21T00:00:00Z", "price": 14, "purchaseAt": "1982-12-26T00:00:00Z", "trialPrice": 20}, {"currencyCode": "istsfrFqHu6f54mL", "currencyNamespace": "4hAfiqX3ThREYknd", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1995-04-16T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1996-06-16T00:00:00Z", "expireAt": "1982-08-25T00:00:00Z", "price": 64, "purchaseAt": "1988-03-27T00:00:00Z", "trialPrice": 58}], "x8hm2178A4NUDAdw": [{"currencyCode": "t7cj6v5DLEk9Rkum", "currencyNamespace": "krnY4LksFD2le3UG", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1992-07-15T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1987-04-16T00:00:00Z", "expireAt": "1984-04-10T00:00:00Z", "price": 80, "purchaseAt": "1991-11-13T00:00:00Z", "trialPrice": 13}, {"currencyCode": "HiVQ6covYDuI4l1d", "currencyNamespace": "9YaLVuL1mLP65pId", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1990-08-17T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1992-11-18T00:00:00Z", "expireAt": "1994-05-12T00:00:00Z", "price": 88, "purchaseAt": "1992-09-20T00:00:00Z", "trialPrice": 28}, {"currencyCode": "7AUUES36bRVaiOL6", "currencyNamespace": "Q5N2egLXRiNNV5Fy", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1978-04-04T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1990-02-19T00:00:00Z", "expireAt": "1971-11-11T00:00:00Z", "price": 75, "purchaseAt": "1997-07-28T00:00:00Z", "trialPrice": 40}], "QFBHQ0FHWOul5WKk": [{"currencyCode": "zjzRnLLFKGFSUC1s", "currencyNamespace": "ZtVitkoRyEXWrhLN", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1981-06-22T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1979-05-21T00:00:00Z", "expireAt": "1983-11-26T00:00:00Z", "price": 71, "purchaseAt": "1984-06-28T00:00:00Z", "trialPrice": 47}, {"currencyCode": "MtZX5KZK53tX2oxm", "currencyNamespace": "EDDgGBgPWHmOLBLl", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1982-06-27T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1979-08-29T00:00:00Z", "expireAt": "1975-10-25T00:00:00Z", "price": 12, "purchaseAt": "1985-11-10T00:00:00Z", "trialPrice": 77}, {"currencyCode": "wJPOcRFJTeKbAMIJ", "currencyNamespace": "ChPyIhVPmMs1zqz6", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1983-06-21T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1974-01-23T00:00:00Z", "expireAt": "1977-09-23T00:00:00Z", "price": 1, "purchaseAt": "1993-01-05T00:00:00Z", "trialPrice": 26}]}, "saleConfig": {"currencyCode": "XGs0qawVMpRu5wP9", "price": 58}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "xi1BjFMOIsJO7EUY", "stackable": false, "status": "INACTIVE", "tags": ["UqYpD2R7YqidgD0w", "sMTHGgaQ2UErhcMp", "uZW4KtmXptKHAev0"], "targetCurrencyCode": "xHpQyntHsI11lC6B", "targetNamespace": "XyQW3eG0BvuCoP1h", "thumbnailUrl": "IpdIWajZTyB7k7Q9", "useCount": 52}' \
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
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 0, "comparison": "is", "name": "Pi8oY6VkZP57PyBL", "predicateType": "EntitlementPredicate", "value": "iFOu0ybeoERsKMCP", "values": ["mtnE1aHAuVZKYNaK", "NL7EbburWcSjdGGq", "hi81nO4RNjvO8rZ5"]}, {"anyOf": 6, "comparison": "excludes", "name": "31L6KqJTL11T4vlB", "predicateType": "SeasonTierPredicate", "value": "KQldxIqMgf2PaNJq", "values": ["IMDWJUW3I4SKjp0N", "Oc5dWAES7S7wBqBe", "4F2z2u3wwUBB3Kkz"]}, {"anyOf": 71, "comparison": "excludes", "name": "Bx4VA9ZxbKQDqG7U", "predicateType": "SeasonTierPredicate", "value": "iVTCPTrqHc7vqaXx", "values": ["xiGOrXbWC2k23JxA", "49M1JdtImLI5eTuH", "I3kOXwHnS2VOESYx"]}]}, {"operator": "or", "predicates": [{"anyOf": 4, "comparison": "isNot", "name": "Sa260P2hpjhYQEdy", "predicateType": "SeasonTierPredicate", "value": "PkW7ouFIdlTuousR", "values": ["lD9VLXNwkZWTbX0P", "crhXNAh3Cu4ou029", "Zb0I9Qm4xKek7ZAZ"]}, {"anyOf": 73, "comparison": "isNot", "name": "FF9ucrEcYD5hjgrx", "predicateType": "EntitlementPredicate", "value": "Z4mDmXZIBTi05akx", "values": ["PcXDH8RZqUjELC82", "BYozWzUW4RDVM8Y4", "uP1nMUDAKQEkOvO5"]}, {"anyOf": 54, "comparison": "isLessThan", "name": "FFuLWL0HQkTuy4fU", "predicateType": "EntitlementPredicate", "value": "Ejumf9ltGde7x4lu", "values": ["TsEk9TNqSiFJyMBy", "GaWok215MnSNTPMR", "oRKUrvfixr7UFzLz"]}]}, {"operator": "and", "predicates": [{"anyOf": 81, "comparison": "includes", "name": "sNW3RHxioyNedQ1E", "predicateType": "SeasonTierPredicate", "value": "lQg6rSZj7yw7aPU0", "values": ["pLQCqPGUmF8pQCrE", "DqhD5agSwSs0ORF2", "qdstmoPJurb0FVZK"]}, {"anyOf": 92, "comparison": "isGreaterThanOrEqual", "name": "uKMr6e9VKi3lHZdn", "predicateType": "SeasonTierPredicate", "value": "zFYEnOA6gFO3zfSv", "values": ["dIf6eMd0iVUmBrFw", "vmLgxlU5MdUdF7gH", "FIESxo8uFqKtoZiV"]}, {"anyOf": 85, "comparison": "isGreaterThanOrEqual", "name": "ndNzIiCZiPRCujrj", "predicateType": "EntitlementPredicate", "value": "KYKp18TPWOixbTLf", "values": ["C324P82gdsOb5Jp6", "dOF3VtCUZ0wN81CL", "oxvvtB4aireJSZc7"]}]}]}}' \
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
    --body '{"currencyCode": "TfEEm2g8JpfOhv1d", "currencyNamespace": "FmmwcX8cRQpNggDq", "discountCodes": ["CDwyDu1QGAcJRAK1", "IfB0DPn1CZrBaO9y", "4CHHaydtaKJNujTv"], "discountedPrice": 25, "entitlementPlatform": "GooglePlay", "ext": {"Ldod5DYqp6XDPJmY": {}, "DZqWoL8k0jEDj1R6": {}, "73CfYbn53kIRN1df": {}}, "itemId": "13EvjSbGYcLQEocU", "language": "fUPAI2O4xXXwCsNt", "options": {"skipPriceValidation": false}, "platform": "Oculus", "price": 88, "quantity": 10, "region": "h3rUUKaN66Rjkt9z", "returnUrl": "Wkx2SjE4MM82Qw4C", "sandbox": true, "sectionId": "p4YKcL3qt4lUCjpl"}' \
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

#- 281 GetUserPlatformAccountClosureHistories
$PYTHON -m $MODULE 'platform-get-user-platform-account-closure-histories' \
    'yHKWspPtJlLDOjXT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'GetUserPlatformAccountClosureHistories' test.out

#- 282 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'WGIrWq2VvH0roA20' \
    --body '{"code": "Sfzrc9YYsgvVLN3u", "orderNo": "sfhiyCf1FOddxtE5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'ApplyUserRedemption' test.out

#- 283 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    '2sFK1jNp3OwcrNR2' \
    --body '{"meta": {"jH7Xx7m8IqIRyUqa": {}, "CbbMa2LqgJOAfFwv": {}, "vgYPIFEVZLGzEglE": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "f2iVxv9QtivQqeRy", "namespace": "PorhTuFn3W0qApZ9"}, "entitlement": {"entitlementId": "8a9g9AjLDQL5jZby"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "2B2UVIQMA6BOpxtY", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 26, "type": "ITEM"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "awQPbbbHLcaHmXRd", "namespace": "PvQLVuKpiiZ4Imog"}, "entitlement": {"entitlementId": "p7RKEcLehyAowu72"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "9qayJJtW8sqkuIBd", "itemIdentityType": "ITEM_SKU", "origin": "Oculus"}, "quantity": 67, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "PVvOhMTdfTjLVxzj", "namespace": "yQsgv5n6Vn7Tiakc"}, "entitlement": {"entitlementId": "1Rzb4MCHH4aATHwP"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "M0LfcjvOko7332ZZ", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 11, "type": "CURRENCY"}], "source": "ORDER", "transactionId": "RMzJEQYwNGRl2gcW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'DoRevocation' test.out

#- 284 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    'dDmIy4Ia2UtS4T1v' \
    --body '{"gameSessionId": "2y9Je7apQfNdDyT3", "payload": {"a0EGpHgGLUqdG3kB": {}, "fGvwjwttys4GvDvs": {}, "1H5juf5Cq950XtiM": {}}, "scid": "xQDIHnPin3vZc9bU", "sessionTemplateName": "YgwdNmcpdldDn2Y2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'RegisterXblSessions' test.out

#- 285 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'l1kZWnqjJaGGTFaJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'QueryUserSubscriptions' test.out

#- 286 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'HecFy9m5s6oIWMnk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'GetUserSubscriptionActivities' test.out

#- 287 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '88GXMrS82vN0N223' \
    --body '{"grantDays": 79, "itemId": "tI7v0x9St2EFfU2F", "language": "byIXierPr2qLKBXR", "reason": "Yt7v7Wfg2omS11Yy", "region": "IWGPc92PcmK9zTgG", "source": "Qs1FIKxCXUhNdJ4c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PlatformSubscribeSubscription' test.out

#- 288 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'K7rz2VPJ8AZ9i1ml' \
    '0sbgQ5zPZbllwvt3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 289 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'TjGezRRUjCNiQauO' \
    '5Cfja0qWoqWrZJAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'GetUserSubscription' test.out

#- 290 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'VQaCd4UgSRsFc8FK' \
    'z1j1HfaNk1P4hC8w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'DeleteUserSubscription' test.out

#- 291 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'gvaTIntj0rekmCKM' \
    'OHEhe6apnthJsQpz' \
    --body '{"immediate": false, "reason": "xEsiEsZH3UVmVcOx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'CancelSubscription' test.out

#- 292 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'U0GsP6oBsZy1nIea' \
    'vdWM4UiM8xE2iHgK' \
    --body '{"grantDays": 60, "reason": "z8Gz5TN3bJ6UVKAd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'GrantDaysToSubscription' test.out

#- 293 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'Np2ReRw5WPjohGmJ' \
    'KCjbEtFKLGvBQOS8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'GetUserSubscriptionBillingHistories' test.out

#- 294 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    '1LpIh5QqEOKQXnUY' \
    'MXvJJrO8K9yVaSV6' \
    --body '{"additionalData": {"cardSummary": "MkQpPd0utGYDVGwp"}, "authorisedTime": "1989-08-22T00:00:00Z", "chargebackReversedTime": "1986-03-24T00:00:00Z", "chargebackTime": "1985-11-27T00:00:00Z", "chargedTime": "1990-02-15T00:00:00Z", "createdTime": "1979-01-18T00:00:00Z", "currency": {"currencyCode": "mmiE0hD2A6L9zZJp", "currencySymbol": "I7J4njh6wMyuNtA5", "currencyType": "REAL", "decimals": 79, "namespace": "U28IE7EVvQkoqOZI"}, "customParameters": {"FeJQSrnPscIMJRSt": {}, "F3LRa7q49EdmhBpI": {}, "13Mh9tHYQilnHrNI": {}}, "extOrderNo": "7XsRCD3YOzMK1ZWO", "extTxId": "xnVMpyEziAPi9dBg", "extUserId": "5J0me0BhvZVrOsZS", "issuedAt": "1979-12-14T00:00:00Z", "metadata": {"nFkl8n6PSoXYb9tc": "6rYyOiaUKC8t4GV0", "JiE7ZbWP80ZctunI": "w8zzjr1oeY1p4P0x", "no1luSqciM4rfqso": "J7AkLiYjJvlKhH1c"}, "namespace": "cnrp3T2fKqq9CzJl", "nonceStr": "j0UGtCqJnqpaur75", "paymentMethod": "iSsLSqGKfGJDmzFe", "paymentMethodFee": 31, "paymentOrderNo": "IORjbuZi76GDzksM", "paymentProvider": "STRIPE", "paymentProviderFee": 71, "paymentStationUrl": "DFSnh5IbdftTLRLU", "price": 67, "refundedTime": "1994-06-27T00:00:00Z", "salesTax": 3, "sandbox": false, "sku": "QzxkHXSiDFpwgjtH", "status": "CHARGEBACK", "statusReason": "2YI1qt4AYI54fgXl", "subscriptionId": "DCLFwNGzR7zvW33B", "subtotalPrice": 78, "targetNamespace": "qpSaqBWWsEePoWos", "targetUserId": "4O5MRxu5cYFtJZei", "tax": 27, "totalPrice": 14, "totalTax": 100, "txEndTime": "1999-04-13T00:00:00Z", "type": "FR7fT7f00EZw65iq", "userId": "4fnnFA4ieAeG0JcW", "vat": 68}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'ProcessUserSubscriptionNotification' test.out

#- 295 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'HSVjTbM9IHL2Jcpn' \
    'LuindE3Ucg05FtWi' \
    --body '{"count": 41, "orderNo": "TeA9eq8hIKrzAUsK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AcquireUserTicket' test.out

#- 296 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'qpjQGHI3Wkg4HIrE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'QueryUserCurrencyWallets' test.out

#- 297 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'mqfnhjjtIQ7ipAfw' \
    '6xTfJiEwGhGbMCnu' \
    --body '{"allowOverdraft": false, "amount": 82, "balanceOrigin": "System", "balanceSource": "EXPIRATION", "metadata": {"DPiOQzKhR4x3pYj5": {}, "be9x03hTzeUaFK6P": {}, "6yxOlFhdtyrLQHkz": {}}, "reason": "1Es8nQbk4SztMOdF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'DebitUserWalletByCurrencyCode' test.out

#- 298 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'HQXjAZrDNCoJ22Rr' \
    'oweT9Xanvbg8nAmH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'ListUserCurrencyTransactions' test.out

#- 299 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 38, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"rmzoPN3GJz77wPra": {}, "lgkstRsUi0oaze9b": {}, "Injdq27RgguQ45JS": {}}, "reason": "oDgfLayvPNWmvzOa", "walletPlatform": "Steam"}' \
    '7XmR8FUW42wLu5tQ' \
    'BUE3k2mUvrQPFxSa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'CheckBalance' test.out

#- 300 CheckWallet
eval_tap 0 300 'CheckWallet # SKIP deprecated' test.out

#- 301 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'RrDsF1CKYcMJnrn1' \
    'I3ypoEAwuriKcfEb' \
    --body '{"amount": 11, "expireAt": "1975-05-28T00:00:00Z", "metadata": {"lAWXNFfxIWM9jL08": {}, "jtCIr8STWuiyz2eO": {}, "gny7d8WVlcOTKoZi": {}}, "origin": "Nintendo", "reason": "c7TK5xO3LzmzW8Oj", "source": "TRADE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'CreditUserWallet' test.out

#- 302 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 70, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"AX1ksmS6Cm75yFZV": {}, "t1HZPcFbl4XrKUph": {}, "PevxFz1b7Q3NwVn8": {}}, "reason": "PU8JfFPiZpcqq8qH", "walletPlatform": "IOS"}' \
    'R9K5kA67H3XOJlQf' \
    'OCN2keFNIQusmcAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'DebitByWalletPlatform' test.out

#- 303 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'WBLZg00dmqgWRmPn' \
    'XpH8xifqavEfKK0D' \
    --body '{"amount": 10, "metadata": {"KWlHT7wmvO6YDgQ4": {}, "TLdkZgouTEi19doN": {}, "SCRrqi0F1FGxhrYs": {}}, "walletPlatform": "Playstation"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PayWithUserWallet' test.out

#- 304 GetUserWallet
eval_tap 0 304 'GetUserWallet # SKIP deprecated' test.out

#- 305 DebitUserWallet
eval_tap 0 305 'DebitUserWallet # SKIP deprecated' test.out

#- 306 DisableUserWallet
eval_tap 0 306 'DisableUserWallet # SKIP deprecated' test.out

#- 307 EnableUserWallet
eval_tap 0 307 'EnableUserWallet # SKIP deprecated' test.out

#- 308 ListUserWalletTransactions
eval_tap 0 308 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 309 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'ListViews' test.out

#- 310 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    'zIWiASrarIiILeXO' \
    --body '{"displayOrder": 63, "localizations": {"8VYOBdYdQraUweJS": {"description": "X5gGRLc0R4vMMPlJ", "localExt": {"qY7ujDDLuoQJspLL": {}, "ZbnusI9Nty8KpP0R": {}, "HI8icuY92iMkPiEK": {}}, "longDescription": "RgT1zZPaKlnIY3vG", "title": "LET05JQWhwijC7yd"}, "SFRQ4V5OyypfQ5iJ": {"description": "tNrVbjnyYERw24T1", "localExt": {"DBdzzVbhZKnh9FfH": {}, "suwhOtgOWtZuhAp0": {}, "yxLpfWB0inH8xFDM": {}}, "longDescription": "oqbLU4KGsevVGPnq", "title": "XXPustpaZz47mZuZ"}, "ptSindV4KpifmfS9": {"description": "4ybYG4wLaPxhpGOD", "localExt": {"mwJCF4HCv6DG2Dfo": {}, "gFpQ6h4G1JwgwqyI": {}, "OpmNMgpfDY1FR9rK": {}}, "longDescription": "axaWsCGgI79Hr331", "title": "YipwCDOc9FNs0rjV"}}, "name": "Hzs9C25B5DYIkGco"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'CreateView' test.out

#- 311 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'YjLN4VPTXzknDz9Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'GetView' test.out

#- 312 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'RB0KErE7XXTkVsvd' \
    'GlmWWA02nKwO7XUN' \
    --body '{"displayOrder": 36, "localizations": {"XGyr43yZ4vipgYCZ": {"description": "iVhuUlRF8bgS0Z3T", "localExt": {"7DC5TO5zuEOtCw7S": {}, "3b8oIW8rduVEpRjb": {}, "hlZ8rATgmfiV8x6L": {}}, "longDescription": "tOu3SAtYQcZ2M0m2", "title": "eu4s6Vt77Z7VYCzM"}, "bz1C3ZtjGu9CxaM7": {"description": "nweO9MSckJNZeDhf", "localExt": {"W7AVHVE6TamhtDUa": {}, "cOPwPczqMDbsgiaa": {}, "xIpP9oAICocQql5Y": {}}, "longDescription": "fBZVQcDD4zf1BZvQ", "title": "IrbCQWs1jZYqrf4b"}, "xOoikruHKYKNEVJS": {"description": "zeli2Uey4fuSj1kS", "localExt": {"eWA3702McnnKWV37": {}, "CLHYvul2IsFExmn4": {}, "GV4MH5mOZyTMMDaz": {}}, "longDescription": "z0zG1FmCCywXfHj3", "title": "29WcNk8k8qK4gJru"}}, "name": "x6tlQDfleFLBKj8h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'UpdateView' test.out

#- 313 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    '7ZrO4pTU7jATbVBc' \
    'DGudQQm98BKOdsoa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'DeleteView' test.out

#- 314 QueryWallets
eval_tap 0 314 'QueryWallets # SKIP deprecated' test.out

#- 315 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 94, "expireAt": "1972-05-14T00:00:00Z", "metadata": {"s3jEJm9cqIJO6etr": {}, "gPcoqdV16bQzZjJi": {}, "iJFm6K0MsbekvKte": {}}, "origin": "Playstation", "reason": "LEbOajs9HWygfQVP", "source": "REFERRAL_BONUS"}, "currencyCode": "bbaFfchju2kAuott", "userIds": ["OSwo884abNDjMPiZ", "Wndhcek3atmhTw5T", "HxhFeo51XVDI8f5E"]}, {"creditRequest": {"amount": 62, "expireAt": "1993-03-14T00:00:00Z", "metadata": {"IUbI6vW6lvytcmR4": {}, "QRN7ybL3lT1Ois7O": {}, "sTElVV8XJ7Jg2JP8": {}}, "origin": "Twitch", "reason": "9NeyZ5n02q1qbbj3", "source": "IAP"}, "currencyCode": "KTeq9hsX0E1pSQzk", "userIds": ["Ja95maQLAJLoGMHe", "eT2jwH7ODZfqj84X", "P6XZjcdrsSt4spX9"]}, {"creditRequest": {"amount": 30, "expireAt": "1981-05-18T00:00:00Z", "metadata": {"ngQG9E03eUwSRO9e": {}, "oka5Ufs9UTtAImWj": {}, "uqib3nbPkju9PQ5p": {}}, "origin": "Xbox", "reason": "PaGqelc3lbrPkW2f", "source": "GIFT"}, "currencyCode": "WqOaF8En9Ut2qFCz", "userIds": ["J1Y75wS8MCmOepp9", "Tx45YPBPqcYNEbLC", "vpinQCQg8fidwt7q"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'BulkCredit' test.out

#- 316 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "aeCuMBokWfuz2Zsk", "request": {"allowOverdraft": false, "amount": 95, "balanceOrigin": "GooglePlay", "balanceSource": "TRADE", "metadata": {"2b5IpRSAi9TY3ZiK": {}, "fpU2gMmaHuaBzeu4": {}, "NPuT03UI8xXkOTRP": {}}, "reason": "X2RbN68q9XjuvxGS"}, "userIds": ["wlGi9OKYqmnMdDOY", "BmDL91zfHvKnS4TB", "MCkcE680jXshhArm"]}, {"currencyCode": "rrsTXqjhryZuWF0a", "request": {"allowOverdraft": true, "amount": 55, "balanceOrigin": "IOS", "balanceSource": "DLC_REVOCATION", "metadata": {"Ne5yhZbqmAgI6LUa": {}, "uh1GlEo4faeHIeXS": {}, "ROEb0iXucFoRm7DF": {}}, "reason": "w5ArJzNAElybJSWL"}, "userIds": ["bZCdcwYHhOIGu0vX", "LFZoXt8k5ZtRJGwh", "0BPRCWdTnytxmesJ"]}, {"currencyCode": "8JDDcPDev3e8oc7s", "request": {"allowOverdraft": false, "amount": 52, "balanceOrigin": "Nintendo", "balanceSource": "TRADE", "metadata": {"nSpi08dnnmoWGbDO": {}, "WBzflDPp8sE7bcL6": {}, "xy49IPWxqs6jAQJW": {}}, "reason": "L8Yc3AKtQffBJPNo"}, "userIds": ["ZnLrMlvvXDmz8vDI", "4VIzCxIBQt7BEsLh", "kHRMj2pIYdQhOINS"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'BulkDebit' test.out

#- 317 GetWallet
eval_tap 0 317 'GetWallet # SKIP deprecated' test.out

#- 318 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    '631eYxKFwpR5ukyH' \
    'mVB2oTqRWbK0ubDt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'SyncOrders' test.out

#- 319 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["08F3Ptynki71NZAN", "UG3XywOPxcLTU0y3", "maqZGwBZAszrs6F6"], "apiKey": "qWE8F5UT7Jy1J0W4", "authoriseAsCapture": true, "blockedPaymentMethods": ["iGQwzPSicmKe5tLT", "Y4T61Ztjv4HjtKUJ", "2g5iKvkb6yaN0rJR"], "clientKey": "TtAoroj50ibuYM4w", "dropInSettings": "RG0lN0X5kMcmOdLu", "liveEndpointUrlPrefix": "SZLYkIABWq6LMyqm", "merchantAccount": "JBIayJYIYPCQLT4U", "notificationHmacKey": "tcQmxMnH608ZzCha", "notificationPassword": "8xLBGlN6GGKXlt1X", "notificationUsername": "AswrMMjtufusABAi", "returnUrl": "EcZPc54ZoDD56c8Z", "settings": "JFga6qXT56186aDm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'TestAdyenConfig' test.out

#- 320 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "Zpx6FpqFAR1FP2qD", "privateKey": "xqukQGmZ8QPR4rrB", "publicKey": "u0xMLSZM2reG0eUs", "returnUrl": "Ke4gH8U04S5FCpmY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'TestAliPayConfig' test.out

#- 321 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "eCJwMPHx5qbq2es6", "secretKey": "TWDRr2bTPUxXfvsO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'TestCheckoutConfig' test.out

#- 322 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'DebugMatchedPaymentMerchantConfig' test.out

#- 323 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "wNGBX5w0CKM4KgSa", "clientSecret": "TFkYqyDBVeKhVWlg", "returnUrl": "MI2a4HuuQiMf3ZtS", "webHookId": "RaKTvnYQcQK3OLU5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'TestPayPalConfig' test.out

#- 324 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["xNeaLjRoNMmfyuSu", "gV63aIt0NDFEcKEQ", "axvtIGC9xYvHbX0p"], "publishableKey": "twZqHLOEqFcFlBmz", "secretKey": "nrLziwCnnibCjn2u", "webhookSecret": "xoSkuKry9iZZvtre"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'TestStripeConfig' test.out

#- 325 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "yTjGpaUSGjv2AbKg", "key": "IoGvyLZGyV2nNIKG", "mchid": "yVatdlj1BAkRkfD5", "returnUrl": "QI95OctLxGf6SilV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'TestWxPayConfig' test.out

#- 326 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "AgYAplPOe3Qpvyaq", "flowCompletionUrl": "uevE8jhAM4C34bBP", "merchantId": 2, "projectId": 94, "projectSecretKey": "ifHDiBMsRy1ZmFMV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'TestXsollaConfig' test.out

#- 327 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'lAhaDsIMEFd3SDQ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'GetPaymentMerchantConfig' test.out

#- 328 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'zyrZOMqd75oCp2u2' \
    --body '{"allowedPaymentMethods": ["A2ZLrkeWbmcgfplQ", "TNIZctTysFM89BCA", "F2MVozVctDaMus5b"], "apiKey": "sovjmmxHjjlquESA", "authoriseAsCapture": false, "blockedPaymentMethods": ["oiTLHdBClY8kIt12", "0hKXcluepkD2cjAy", "U8thUL0rK6YlDgS7"], "clientKey": "DF6WHO4xKI3DzXlq", "dropInSettings": "Z97UEX77J2ZaCgl5", "liveEndpointUrlPrefix": "zfvvm60VIJWtArjN", "merchantAccount": "f9ClzJiLrK8iwSKw", "notificationHmacKey": "TNINv7MbR3h7N9mL", "notificationPassword": "vImrGFR73LVKd3lH", "notificationUsername": "IIZTnztswBHIOUcp", "returnUrl": "Bs05S6VCRgcpqzF0", "settings": "Wdx4tTiOqvd6is3i"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'UpdateAdyenConfig' test.out

#- 329 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'MkUYXGJ52LhrcYmN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'TestAdyenConfigById' test.out

#- 330 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'qU8FNr2Sf2vnHOZh' \
    --body '{"appId": "dmTd8ENVRZH8lmeT", "privateKey": "jzHxgwKaMjUptGDH", "publicKey": "129SPAGK8QxsXGgA", "returnUrl": "K3QR9g0C7nE1t58L"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'UpdateAliPayConfig' test.out

#- 331 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'dpQQXSvH7kwH9PKA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'TestAliPayConfigById' test.out

#- 332 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'IEqRaoWkdV23II0T' \
    --body '{"publicKey": "EDjWcIzfsSrF9JBb", "secretKey": "s3ioKOVcrfhki2j4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'UpdateCheckoutConfig' test.out

#- 333 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'K5qHkvYSU2i8wpPg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'TestCheckoutConfigById' test.out

#- 334 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '4f6CytNOpTcy8nFx' \
    --body '{"clientID": "nyUhq8QCACdn9QBr", "clientSecret": "EBZ0FGcSF09VMOBf", "returnUrl": "FhgytL5jv2cyVSXx", "webHookId": "h4A5aA1bEwNCWytx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'UpdatePayPalConfig' test.out

#- 335 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'JKphKxkJ5Y2qNwo7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'TestPayPalConfigById' test.out

#- 336 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'fOIEm4CCHTjiJTcJ' \
    --body '{"allowedPaymentMethodTypes": ["CNU9JxdozQjrd9h3", "KvseGTWQwYHbgonX", "MWBgwAHBLENBGh8m"], "publishableKey": "zbI7UUQoj40AF05z", "secretKey": "6BC0fH4BlyXE2K4u", "webhookSecret": "NJRgQ3CCklU97Kko"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'UpdateStripeConfig' test.out

#- 337 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'mnjFaT7NQeCqpaKP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'TestStripeConfigById' test.out

#- 338 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'JkOezU2RemXA27tg' \
    --body '{"appId": "6bypXmwZRpU8Qcrm", "key": "p46NHHKuQExWorl4", "mchid": "PYKJ1GJKlZ26mxx5", "returnUrl": "rFWCDjFeol1Ra8c5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'UpdateWxPayConfig' test.out

#- 339 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'c3F5otSicHNAFf6X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'UpdateWxPayConfigCert' test.out

#- 340 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'oFjTyGzUy7Gy3lIb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'TestWxPayConfigById' test.out

#- 341 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'JD3ko0KsF8jqH84W' \
    --body '{"apiKey": "95YMkpzkat1qYXph", "flowCompletionUrl": "VMsbw6Rv3XZ4XgIf", "merchantId": 93, "projectId": 28, "projectSecretKey": "mvZDu1OaoVmtgO5Y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'UpdateXsollaConfig' test.out

#- 342 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'P56VohkMQrBSOet1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'TestXsollaConfigById' test.out

#- 343 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'EcW3bKxXuYOn0ULO' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'UpdateXsollaUIConfig' test.out

#- 344 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'QueryPaymentProviderConfig' test.out

#- 345 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "ADYEN", "namespace": "uFpz174OkRp3BkdV", "region": "bqgNrZPytIR58rTL", "sandboxTaxJarApiToken": "Npt4RpqpKk9toELR", "specials": ["WALLET", "ADYEN", "ADYEN"], "taxJarApiToken": "xrSepYwXWbcBNnyB", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'CreatePaymentProviderConfig' test.out

#- 346 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'GetAggregatePaymentProviders' test.out

#- 347 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'DebugMatchedPaymentProviderConfig' test.out

#- 348 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'GetSpecialPaymentProviders' test.out

#- 349 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'WMRvISdcF4Db7Maq' \
    --body '{"aggregate": "ADYEN", "namespace": "CU7hdDbGzcJKa1ws", "region": "M434xCGXTsh5xyde", "sandboxTaxJarApiToken": "ZADSKQFv0tnP05L7", "specials": ["PAYPAL", "WALLET", "WXPAY"], "taxJarApiToken": "x1i8sHEbX4mIdomB", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'UpdatePaymentProviderConfig' test.out

#- 350 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'orRK73vbWSNBzkiE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'DeletePaymentProviderConfig' test.out

#- 351 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'GetPaymentTaxConfig' test.out

#- 352 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "HyJEOg3iIjU3AAg7", "taxJarApiToken": "WG2eTsmDaTzm1iyR", "taxJarEnabled": false, "taxJarProductCodesMapping": {"Ny7RFRXuzS7oKchq": "3HFDAp8snTqP81J1", "c6C2wvWDhsYWwX5h": "KxgCMD1qRyNe4g5D", "STBpRPaWHEoCnndV": "YqgBPmwdNn0rosYX"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'UpdatePaymentTaxConfig' test.out

#- 353 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'Z8eImgQ2x0SgQXdY' \
    'wRiDuKo24S6RgeY6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'SyncPaymentOrders' test.out

#- 354 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGetRootCategories' test.out

#- 355 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'DownloadCategories' test.out

#- 356 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'mxarVsr09JpliIbz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicGetCategory' test.out

#- 357 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'DdA20g9UeCPSEkHv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicGetChildCategories' test.out

#- 358 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'pI9pfGr7q4J4HRfP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicGetDescendantCategories' test.out

#- 359 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicListCurrencies' test.out

#- 360 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'EPICGAMES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'GeDLCDurableRewardShortMap' test.out

#- 361 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'GetIAPItemMapping' test.out

#- 362 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'AqkG2jU9DouFSA3C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicGetItemByAppId' test.out

#- 363 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicQueryItems' test.out

#- 364 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'LtlE5PpY0ZXXFyG4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicGetItemBySku' test.out

#- 365 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    '988DpkyITbfvPjkp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicGetEstimatedPrice' test.out

#- 366 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'dcTxG4LMLOAiZC06' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicBulkGetItems' test.out

#- 367 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["KMQoJCvczbpTe8wn", "vbAKMlJZvUxYzYBS", "zriljJODaZNFJFbz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicValidateItemPurchaseCondition' test.out

#- 368 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'IchkAZmUviJbcnsW' \
    '6uK889Ccm0VWwNdN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicSearchItems' test.out

#- 369 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'aPLrz9N2oRxNd2x7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicGetApp' test.out

#- 370 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'bzAMbnc0ESgND3Bz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicGetItemDynamicData' test.out

#- 371 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'n0RXiwLSoaZygiLJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicGetItem' test.out

#- 372 GetPaymentCustomization
eval_tap 0 372 'GetPaymentCustomization # SKIP deprecated' test.out

#- 373 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "4dBRmXwqKSWTRuDB", "paymentProvider": "PAYPAL", "returnUrl": "veCv1Rj0emRqo5yT", "ui": "UCEJDyanAifsUA6f", "zipCode": "KzeVIHcetoKKyITD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicGetPaymentUrl' test.out

#- 374 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'GaFUZsvAcQqJMBsp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicGetPaymentMethods' test.out

#- 375 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'eHcHhz8Ok8bgV76h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUnpaidPaymentOrder' test.out

#- 376 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '8tj65I0OW9DhwNHd' \
    --body '{"token": "Sw93IumFyH8gFezb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'Pay' test.out

#- 377 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    '1WOjy0XInTSZSMKJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicCheckPaymentOrderPaidStatus' test.out

#- 378 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'ADYEN' \
    '9Xv4bnujVOhaDvf3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'GetPaymentPublicConfig' test.out

#- 379 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'evXo0m3jJ0xtenPX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicGetQRCode' test.out

#- 380 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'W0Eog3qNqoLr5uxN' \
    'WDT3hlTaFfn4ThPY' \
    'PAYPAL' \
    'pB5Un5ObPhEk6MRN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicNormalizePaymentReturnUrl' test.out

#- 381 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    '6zzKPZLWVB4YH2ro' \
    'WALLET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'GetPaymentTaxValue' test.out

#- 382 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'JTdlIm2TA1uiNbPs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'GetRewardByCode' test.out

#- 383 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'QueryRewards1' test.out

#- 384 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'WP4dql0EDA4cU4Ws' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'GetReward1' test.out

#- 385 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicListStores' test.out

#- 386 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicExistsAnyMyActiveEntitlement' test.out

#- 387 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'tdHC5KGE92n4sFIM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 388 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    '7AWUdPJvJivl1uU4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 389 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'DMwBdaNaGlQD7ToP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 390 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicGetEntitlementOwnershipToken' test.out

#- 391 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "lTTR6ePboL66Xhyf", "language": "FHDm_zhsP-415", "region": "9ZWFBw7Tk0E680aI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'SyncTwitchDropsEntitlement' test.out

#- 392 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'Gz1A2cXngjJWPf2x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicGetMyWallet' test.out

#- 393 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'qt2uL9EtENwWqOZU' \
    --body '{"epicGamesJwtToken": "Vxd7bZpS2i4gNvHn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'SyncEpicGameDLC' test.out

#- 394 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'KuaNhVEaIWElcUTl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'SyncOculusDLC' test.out

#- 395 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'MDbUWJ5spS6gLd7l' \
    --body '{"serviceLabel": 83}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicSyncPsnDlcInventory' test.out

#- 396 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'OF4v4RTLnsM4wpXh' \
    --body '{"serviceLabels": [8, 1, 94]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 397 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'hrZy4bUEBAVPV9L4' \
    --body '{"appId": "ILPJqDbKXtFPmTQO", "steamId": "O3dJd2YP1XIUKL9g"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'SyncSteamDLC' test.out

#- 398 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    '3ACu1VGeRPwa2XfZ' \
    --body '{"xstsToken": "7wxA0lvXbcZY7zXT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'SyncXboxDLC' test.out

#- 399 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'dKQkADYHyER3eNCf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicQueryUserEntitlements' test.out

#- 400 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'qyJ435IkibSzJGQt' \
    'aPFC2SxEMchjQ84n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUserAppEntitlementByAppId' test.out

#- 401 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'uG9DGOS5kQvK7NHp' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicQueryUserEntitlementsByAppType' test.out

#- 402 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    'Q5qXZd41KiSlLVmN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicGetUserEntitlementsByIds' test.out

#- 403 PublicGetUserEntitlementByItemId
eval_tap 0 403 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 404 PublicGetUserEntitlementBySku
eval_tap 0 404 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 405 PublicUserEntitlementHistory
$PYTHON -m $MODULE 'platform-public-user-entitlement-history' \
    '9KSbiFMGQMewQlUn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicUserEntitlementHistory' test.out

#- 406 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'kcE3UYV2aj9PL4PQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicExistsAnyUserActiveEntitlement' test.out

#- 407 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'GJJokFeKLbBQG16A' \
    't6ZhNxuLFAW37EUw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 408 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'OviFJi304rwbySnV' \
    'TSdmqyftEYQl2xFF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 409 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'tZWlWKmQH3tI9yHx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 410 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'uaa0zbT4NGP7Xy3g' \
    'YPJQEukOcBtFyzW1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 411 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'aKe15m4NorN2PP1h' \
    'XmALwnidAmiLFK5D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicGetUserEntitlement' test.out

#- 412 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'wak0R9n1WBVWp96b' \
    'YrG5ANSRCXWy9C2o' \
    --body '{"options": ["M6ZVdGQt7ed5WKQJ", "kzGQPBQoXpXVvDLu", "lelX30R2hPYkRArS"], "requestId": "fExoJMARmEC7Kyht", "useCount": 48}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicConsumeUserEntitlement' test.out

#- 413 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    'c4Ou1SpoEwl9NhPb' \
    'f7Fy05sDwOSuSEBE' \
    --body '{"requestId": "XGahhtxfa1XwrrRM", "useCount": 62}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicSellUserEntitlement' test.out

#- 414 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    'Ll2ciimYDeDceMEt' \
    'PkjYd9PNBi79WHor' \
    --body '{"useCount": 84}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicSplitUserEntitlement' test.out

#- 415 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    '7fDSvD2JNOQnrQjY' \
    'IugFoF3ValgZcNJS' \
    --body '{"entitlementId": "YGVxi7ACWF50CSEI", "useCount": 19}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicTransferUserEntitlement' test.out

#- 416 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'ewocIRWjmJ81aRTb' \
    --body '{"code": "DoFbYLVqxK4NVV4K", "language": "WYJl-DOAH", "region": "DkrqAqSqczq4VIqU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicRedeemCode' test.out

#- 417 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '80fLtA9Ei7lNOS1n' \
    --body '{"excludeOldTransactions": true, "language": "AZ", "productId": "0AqSFsHZyeSTGysS", "receiptData": "top5Pu3KNnlg5aQv", "region": "tZqOqyYqukNu3IiE", "transactionId": "oeAhwgfo77M8FJYR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicFulfillAppleIAPItem' test.out

#- 418 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'hM0dJBA4b3QbH3tC' \
    --body '{"epicGamesJwtToken": "VfHKGFiQvPyj1FCk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'SyncEpicGamesInventory' test.out

#- 419 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '4QM8cZueXeYkC0oo' \
    --body '{"autoAck": false, "language": "vLHQ", "orderId": "7UFGXrkXmmckOjWh", "packageName": "Mg8bi8TTnK6au871", "productId": "df3bxo2XjwMhbcaF", "purchaseTime": 97, "purchaseToken": "6XzJiljntx5TSAxN", "region": "BchtcaaoKZYk4Gli"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicFulfillGoogleIAPItem' test.out

#- 420 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'kyI0LGO0eNNgl7jd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'SyncOculusConsumableEntitlements' test.out

#- 421 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'If7ptoc5rPRsGFfG' \
    --body '{"currencyCode": "RRKQ4tLERFGopzQ8", "price": 0.9561427828791257, "productId": "CbxAJ0xdAPFrw8ss", "serviceLabel": 73}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicReconcilePlayStationStore' test.out

#- 422 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'R4Bp38TGeyfWQESV' \
    --body '{"currencyCode": "LLj435Tsq6xxQZBG", "price": 0.14167624821968705, "productId": "if91rgOdzASMsVBi", "serviceLabels": [37, 45, 22]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 423 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'WFx0rb4eSExhChsc' \
    --body '{"appId": "wh8P6pejiRuUjCpB", "currencyCode": "UL68KLWODgQ2gkEK", "language": "ksIF-EFUn", "price": 0.9103415728762299, "productId": "7AsxVCXefUThofls", "region": "BWhnubnROvA1CxkX", "steamId": "WIlkrF4cf9E2pKWk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'SyncSteamInventory' test.out

#- 424 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'X7et7rl9ow7BDniJ' \
    --body '{"gameId": "H2zFRgcuTMYiBESl", "language": "pzn_bo", "region": "frJuSaiOYxuj6n1U"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'SyncTwitchDropsEntitlement1' test.out

#- 425 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'TUHsgjv4O66qvH38' \
    --body '{"currencyCode": "lYKeEiUS3GYxZHMK", "price": 0.8956017181890132, "productId": "ybnM1cQEihWjWNwY", "xstsToken": "N6xeNeZMtT7f2d2N"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'SyncXboxInventory' test.out

#- 426 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'hlIgGSvbXe1Hyw3m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicQueryUserOrders' test.out

#- 427 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'ylk3Hwg4Wtj5wR9o' \
    --body '{"currencyCode": "07ypJFcZroi0QeG6", "discountCodes": ["3uSMSyy1zY8VkZd3", "cD8trKjrFSu4MOj7", "pBAbAKLICuRvKGIR"], "discountedPrice": 33, "ext": {"tPxWpU3njfM3MLLE": {}, "wpsdD0knPNT7MZM5": {}, "TUkTp46Y9LTNtGN9": {}}, "itemId": "WUqYyTxul6u3RuXC", "language": "kku", "price": 54, "quantity": 26, "region": "a4tLrATtqIhJQruD", "returnUrl": "fpefgGxk7jqfRNpf", "sectionId": "hafmEghm1K6FfhGr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicCreateUserOrder' test.out

#- 428 PublicPreviewOrderPrice
$PYTHON -m $MODULE 'platform-public-preview-order-price' \
    'YgU3tXTmZUKau7dz' \
    --body '{"currencyCode": "s6uA891lcyZTXiAJ", "discountCodes": ["VwzchoABehdYvksi", "Atxe6FuXv7wMnItL", "ay1ITOwqgFDt8J1s"], "discountedPrice": 62, "itemId": "yxg5LXtD40RsibRB", "price": 32, "quantity": 40}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'PublicPreviewOrderPrice' test.out

#- 429 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'utNAcV0wHVw4OJZ9' \
    'KRfK3ElT6izH6Pdx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'PublicGetUserOrder' test.out

#- 430 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    '5D1ZrPFTEv91KnFO' \
    'Hx4QGVt5sQ7M74MH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'PublicCancelUserOrder' test.out

#- 431 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'RwGWuXrmWB81vpVn' \
    'NLvfxMVPORdXWvsG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'PublicGetUserOrderHistories' test.out

#- 432 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'ZrPVAZ2ZLrDa1xpq' \
    'IziihTn1qm3WYY19' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'PublicDownloadUserOrderReceipt' test.out

#- 433 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'InV7B8tHIYiWBgIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicGetPaymentAccounts' test.out

#- 434 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'W9QrR9bMgSr1OTY7' \
    'paypal' \
    'vO0IGH5aAxTCbwpH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicDeletePaymentAccount' test.out

#- 435 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'q5b9TYQLU6VNGYuz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicListActiveSections' test.out

#- 436 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'awgheBGV6FopCasH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'PublicQueryUserSubscriptions' test.out

#- 437 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'zSLbZZFVIz8Axh7D' \
    --body '{"currencyCode": "6vDwgTWzfQZmZcPH", "itemId": "cdeyMGra3yLwQHFx", "language": "SA", "region": "ak9MNj0mKis5KQHh", "returnUrl": "wB99zMKOwz2mKAvk", "source": "Szld2vfGrbc2jP3w"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicSubscribeSubscription' test.out

#- 438 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'tM1fSokFngc559mM' \
    'ToWdIIC6lFVoAXWU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 439 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'BY9BL1BmvNwKXwiU' \
    'Q1QS5fveJC1Tg5xt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'PublicGetUserSubscription' test.out

#- 440 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'zTqaSWZu4moOYd8X' \
    'dHELjymTcNfNb4CI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'PublicChangeSubscriptionBillingAccount' test.out

#- 441 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'iJp9P8xb23hdj17C' \
    'LEa8QbsGBZrZxDKJ' \
    --body '{"immediate": false, "reason": "eWYfQ5eExWeqj0EG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 441 'PublicCancelSubscription' test.out

#- 442 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'yRTt1yUKDmgURbZe' \
    '3BXyDfCse1Idjn7U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'PublicGetUserSubscriptionBillingHistories' test.out

#- 443 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'TJHBJE3tOlW5QYRc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'PublicListViews' test.out

#- 444 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'QcxJjxgx0It94BuL' \
    'jZOmtY6jje5osrYA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'PublicGetWallet' test.out

#- 445 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'f28mqvM4LzAMy18A' \
    'z6wAqGqaSmwDvoaP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'PublicListUserWalletTransactions' test.out

#- 446 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 446 'QueryItems1' test.out

#- 447 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 447 'ImportStore1' test.out

#- 448 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'bcj2JPPSWbsPzR9v' \
    --body '{"itemIds": ["QiwMdHSV2fA6M7yI", "gULctkrQt7UdVDHg", "EyEMT17gAkJ9ZOyU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 448 'ExportStore1' test.out

#- 449 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    'yKXZ4gnJD0btvfia' \
    --body '{"entitlementCollectionId": "Lotp8rjTOGuuZKYS", "entitlementOrigin": "Epic", "metadata": {"Ig4h5oxaA4ecsKGN": {}, "ruoLw9nJkDd0eeHT": {}, "KcUcujMld5XM0y0h": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "RGZxhbon95Kr4kAB", "namespace": "VvvoyJHCJBXauQb7"}, "item": {"itemId": "rZO3cLAcITU9eaHQ", "itemSku": "K6btDxqspEHxJ7HI", "itemType": "ZTmr9S9JzIoTTXKT"}, "quantity": 88, "type": "ITEM"}, {"currency": {"currencyCode": "2Z9P66amF5l35ona", "namespace": "RK2kOt01My99Nzxf"}, "item": {"itemId": "q4jTsNihBMEN4c79", "itemSku": "eXbUHmcvCVohS9cZ", "itemType": "eNhZq7LKZkGycl5o"}, "quantity": 75, "type": "CURRENCY"}, {"currency": {"currencyCode": "3tzAjekCOilOpoou", "namespace": "Kkx1qj85bRrVwuOn"}, "item": {"itemId": "qEPcdhXj214NDtW9", "itemSku": "jjIhrEmkNYBheQNR", "itemType": "4zCS89KqvbOl0Day"}, "quantity": 2, "type": "ITEM"}], "source": "OTHER", "transactionId": "BS6MQ3orSyb3fSoG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 449 'FulfillRewardsV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
