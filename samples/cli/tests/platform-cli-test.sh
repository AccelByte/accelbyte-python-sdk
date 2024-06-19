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
platform-grant-entitlements --body '{"entitlementGrantList": [{"collectionId": "X7kPBom8F9GLLTG8", "endDate": "1979-08-23T00:00:00Z", "grantedCode": "hc3n4iLoIllKlpO2", "itemId": "pqiXJF3WGRaoQomS", "itemNamespace": "JC4DdrKF7SUQPLG5", "language": "EiK-zCSX-nw", "origin": "Twitch", "quantity": 24, "region": "6MbGIVIu8vvwLc7K", "source": "PROMOTION", "startDate": "1999-08-04T00:00:00Z", "storeId": "uVoJXTIMtpgkieDy"}, {"collectionId": "F97lGdMiHKxbWCYz", "endDate": "1978-10-06T00:00:00Z", "grantedCode": "8yO2KTK9tmmOnYnO", "itemId": "pas6ghP1y4Zi7s7Q", "itemNamespace": "Blk44Z44B1GZgKg4", "language": "leX", "origin": "Epic", "quantity": 59, "region": "60ufPpzwj1QGIFml", "source": "IAP", "startDate": "1974-10-09T00:00:00Z", "storeId": "4jvapseE9LN9bvhO"}, {"collectionId": "rHflIOd6X3viLvtE", "endDate": "1976-08-03T00:00:00Z", "grantedCode": "4mTIpUA9gxo8SV38", "itemId": "nEhoXmM2W7l6jHMA", "itemNamespace": "2rG3nakopAywelu0", "language": "OwR-TkAM-vP", "origin": "IOS", "quantity": 46, "region": "OX9Sfo95HgXqKhTP", "source": "IAP", "startDate": "1990-07-02T00:00:00Z", "storeId": "kLOsp0LZ5njN86Hl"}], "userIds": ["q2LgkQuaS7RBx3vi", "VyW9dD1kOmvrAejc", "8kUXzt6bSc6bWvgp"]}' --login_with_auth "Bearer foo"
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
platform-create-item 'chCbkXX26uEdCfQa' --body '{"appId": "MAQuTKfC0I2kNjCM", "appType": "SOFTWARE", "baseAppId": "Lds2DbPcaoMdtRLT", "boothName": "mSvTkQQgB7exYvmH", "categoryPath": "Mxr5hPCJJztJBg0t", "clazz": "TJg46IewOXE2AkCh", "displayOrder": 87, "entitlementType": "CONSUMABLE", "ext": {"IZsUf8lGFXcmwTER": {}, "HclOdxIwqejxe18r": {}, "Ndb8Otq6j1mqUav7": {}}, "features": ["65yclX2FtAz0vJjF", "IYWOaNdsimmkW2mi", "k05HAQltnSojV4jT"], "flexible": true, "images": [{"as": "3xRHAKy4QxZkaXZ7", "caption": "vmiEd0JPxVyQpsha", "height": 59, "imageUrl": "V0dS6hIH9c4Vfkyr", "smallImageUrl": "wpuXxbaERbfgPmi0", "width": 8}, {"as": "kPKTPOlhTtSiZNCx", "caption": "uogFteTHJe4BhSSQ", "height": 21, "imageUrl": "0jr9b8MuYmmeKTmB", "smallImageUrl": "NvGYxEQdf3ewoGGo", "width": 47}, {"as": "7xmFNAmjDDCvs78m", "caption": "cMdiS76YApGJ9ufw", "height": 76, "imageUrl": "9UtNquwC3WgumrIz", "smallImageUrl": "4NhGztZpr4U4fwQI", "width": 18}], "inventoryConfig": {"customAttributes": {"fgCUYBn2xaOBdPF0": {}, "JmX8qwU1cTuHHPB5": {}, "S3DvPRCzBrVUxmDO": {}}, "serverCustomAttributes": {"j3cvRFaTC11W0TGT": {}, "Cm4fZWuk6pQxDQpK": {}, "qxLGeMvr9TsvcMQ7": {}}, "slotUsed": 6}, "itemIds": ["a6iZ5uFRYNn3SHiW", "xF0YbuU5ar5qTLWU", "Cy0Afgc050XIZRW4"], "itemQty": {"91e94mQjVOOBnIWh": 42, "7w0Oc15N8WXBPp17": 85, "y1ei1fIrPvfHnRN0": 32}, "itemType": "MEDIA", "listable": false, "localizations": {"jXZedgt5cyNe27HL": {"description": "twtVOaxgP6Jbct8p", "localExt": {"uMybYGxD9IPmmsLm": {}, "u3kaPj0O4zd8Tb7c": {}, "UNGPTBxiFFCrn7dj": {}}, "longDescription": "js69FTFVGUVhvKhJ", "title": "Cmeisql14mUHVbMP"}, "imNhcZsU3VAdMDcb": {"description": "4qlkiFAamqvZI2Kw", "localExt": {"jqPBiWXade41s3rH": {}, "34mB2yPlRpWjmHZA": {}, "AvKTH8MuqIg0Czkg": {}}, "longDescription": "uwuJCW7EEFB67AOD", "title": "bi9BzupBsFpYc77G"}, "tRUcCFeY5g4XgBsb": {"description": "fzqxBPNe8ae1Il4a", "localExt": {"AtEbu4IjGdqthRxT": {}, "jQ7gkZEY8rG0q0Q2": {}, "Qd2JzRbkF2I03dIj": {}}, "longDescription": "vBbA6bfbYaJCJjfk", "title": "2TUvn95FhO7VW3mb"}}, "lootBoxConfig": {"rewardCount": 61, "rewards": [{"lootBoxItems": [{"count": 23, "duration": 98, "endDate": "1978-11-11T00:00:00Z", "itemId": "FSKWM1eym5ydC6p2", "itemSku": "5xCWTqUOYZENJ1QH", "itemType": "ZQxPRXH7uxBJEECQ"}, {"count": 62, "duration": 87, "endDate": "1998-03-31T00:00:00Z", "itemId": "iZgbwwm5iGzXtckn", "itemSku": "rgidKupvXO6aj4hC", "itemType": "mTC34jxW4pIDwdqX"}, {"count": 31, "duration": 26, "endDate": "1985-12-20T00:00:00Z", "itemId": "poBCbyJsF5IjF1c0", "itemSku": "W338HS6CBgVRyihY", "itemType": "NZ84CVhziXV8HwSm"}], "name": "vcvcDKF19yVRafCj", "odds": 0.6489169268461396, "type": "REWARD", "weight": 44}, {"lootBoxItems": [{"count": 92, "duration": 34, "endDate": "1996-08-23T00:00:00Z", "itemId": "ht83AdvBaagTiRJ8", "itemSku": "daGTVX3Bb7jlz5If", "itemType": "HgKjI9mwJSrN8jkI"}, {"count": 50, "duration": 84, "endDate": "1976-07-09T00:00:00Z", "itemId": "R2zbaI6PD7fEscSh", "itemSku": "nGUGUtV9GJ279GDb", "itemType": "LNwjm3FK0nnX2poM"}, {"count": 11, "duration": 50, "endDate": "1998-02-25T00:00:00Z", "itemId": "Cz0YqCKUh5RD9vNA", "itemSku": "p4jinFpnQ5xF9wwb", "itemType": "vMZyeDeRnVfPUa6x"}], "name": "VVBcq3wZpFIYeAg7", "odds": 0.9951914937536336, "type": "REWARD_GROUP", "weight": 52}, {"lootBoxItems": [{"count": 4, "duration": 29, "endDate": "1990-10-14T00:00:00Z", "itemId": "ILjkwW61duF87aUy", "itemSku": "rdt4XSpWBAetsanz", "itemType": "qP8oxfrtbECD1CYP"}, {"count": 46, "duration": 96, "endDate": "1971-08-10T00:00:00Z", "itemId": "iBAxfYL8Avt70ZUT", "itemSku": "2fSk3LL0calqxEew", "itemType": "uGS469k2hG0WKt4s"}, {"count": 95, "duration": 39, "endDate": "1977-03-18T00:00:00Z", "itemId": "anYxM0UHZVNYzGMN", "itemSku": "IpWoSLkUrfuf4U3W", "itemType": "eYeA9t2ENKKWrFtH"}], "name": "Ii1CMgKAOG5iDcCR", "odds": 0.9310727661204582, "type": "REWARD_GROUP", "weight": 2}], "rollFunction": "DEFAULT"}, "maxCount": 59, "maxCountPerUser": 27, "name": "vDLil8wj9cKM3Ar6", "optionBoxConfig": {"boxItems": [{"count": 80, "duration": 66, "endDate": "1987-05-03T00:00:00Z", "itemId": "35hCER4nGmWGgTJf", "itemSku": "HlJl4tHGa4XfZcd9", "itemType": "CVnGqMX9FieeEssW"}, {"count": 63, "duration": 23, "endDate": "1995-11-08T00:00:00Z", "itemId": "l07bhwntCVqiYOJf", "itemSku": "5KwMZQjzvjSozv6C", "itemType": "TRDl0zp9CzHFwink"}, {"count": 56, "duration": 35, "endDate": "1991-03-07T00:00:00Z", "itemId": "YkHBDdSzBXdxapwh", "itemSku": "d5IQYBQuxLvPuWYv", "itemType": "E3fsNy9Z9OhxXvCp"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 23, "fixedTrialCycles": 76, "graceDays": 61}, "regionData": {"xLPBsmAUrD9L1IiD": [{"currencyCode": "6MlcEPhMDFzjHZ3s", "currencyNamespace": "IhzOx2CXKlvIomU3", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1989-07-13T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1990-07-19T00:00:00Z", "expireAt": "1984-04-22T00:00:00Z", "price": 74, "purchaseAt": "1986-12-04T00:00:00Z", "trialPrice": 90}, {"currencyCode": "eLMe3lt9qfx2UDcg", "currencyNamespace": "VE7L9FK6e0MrPc4v", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1983-11-18T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1993-11-30T00:00:00Z", "expireAt": "1974-06-04T00:00:00Z", "price": 98, "purchaseAt": "1986-10-30T00:00:00Z", "trialPrice": 0}, {"currencyCode": "lG56HlzGr7XjdyRJ", "currencyNamespace": "unZPkp6ccIBnWyPw", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1990-03-12T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1986-07-16T00:00:00Z", "expireAt": "1999-12-14T00:00:00Z", "price": 48, "purchaseAt": "1977-03-08T00:00:00Z", "trialPrice": 6}], "k42miteR5eQAe1rz": [{"currencyCode": "mmgqBPRmd6mO4oI8", "currencyNamespace": "KDqebm83raNBJ5y7", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1983-09-11T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1976-10-27T00:00:00Z", "expireAt": "1982-10-14T00:00:00Z", "price": 9, "purchaseAt": "1978-05-18T00:00:00Z", "trialPrice": 47}, {"currencyCode": "GJtWf1Ybgg8rdwY9", "currencyNamespace": "bmrvHmO07KNqX9LM", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1982-04-14T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1980-05-29T00:00:00Z", "expireAt": "1979-01-28T00:00:00Z", "price": 71, "purchaseAt": "1991-09-20T00:00:00Z", "trialPrice": 88}, {"currencyCode": "BXBwnzDX8v3xgC1G", "currencyNamespace": "e9PdbTTAJ2Gp1r0s", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1990-09-14T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1995-08-06T00:00:00Z", "expireAt": "1997-11-24T00:00:00Z", "price": 66, "purchaseAt": "1972-01-29T00:00:00Z", "trialPrice": 52}], "IL2l3hPjNDKv2LWf": [{"currencyCode": "Xqjr8fS79En3wYow", "currencyNamespace": "BdkaZ3y6i38XQjLD", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1983-05-06T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1975-09-21T00:00:00Z", "expireAt": "1990-10-29T00:00:00Z", "price": 50, "purchaseAt": "1986-08-16T00:00:00Z", "trialPrice": 16}, {"currencyCode": "tiQ272Uo9UBJWodp", "currencyNamespace": "dwsX1jorcyR0x3Yi", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1972-03-29T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1999-07-06T00:00:00Z", "expireAt": "1987-12-03T00:00:00Z", "price": 40, "purchaseAt": "1993-04-06T00:00:00Z", "trialPrice": 87}, {"currencyCode": "OFMebS4AdlNzwog2", "currencyNamespace": "IhErkNhNcECWwchW", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1990-10-31T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1986-06-07T00:00:00Z", "expireAt": "1976-07-31T00:00:00Z", "price": 3, "purchaseAt": "1995-10-29T00:00:00Z", "trialPrice": 22}]}, "saleConfig": {"currencyCode": "lrNXnGanMazb8jvR", "price": 99}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "92m3iRlfnBAk0Cwi", "stackable": true, "status": "INACTIVE", "tags": ["ATdqnQGbqiqOkNeA", "Tj7eGjodd7CcJUrI", "5u6D31DjOsrs3CUY"], "targetCurrencyCode": "6MAugK5kypNrp2nF", "targetNamespace": "e9FmN86sK5LOq4ft", "thumbnailUrl": "5jGcMICPUYnfG6jl", "useCount": 100}' --login_with_auth "Bearer foo"
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
platform-update-item 'afIjLX8ce0KbNN7Y' 'cl2JfmQplvGjVQ4a' --body '{"appId": "ebjfgGu472oWJlfg", "appType": "DLC", "baseAppId": "dCOInVolsr6CHmj7", "boothName": "63vLwtYEJTSiXjcY", "categoryPath": "5ZPkv90lyKSTWLxS", "clazz": "FZ0LpupEi5DbkVs3", "displayOrder": 34, "entitlementType": "DURABLE", "ext": {"FTi1t530Wj1WfzIv": {}, "c3VlSXrA3XUGud4t": {}, "VjmxEf4XvVhFJTxF": {}}, "features": ["IKeTyBG5dCUoExnK", "fV3869IN4V1OdhH4", "HITBg9x4unq3eOMH"], "flexible": true, "images": [{"as": "Exlkmc4xYiLjLyZr", "caption": "Xr9Bhtzn8jAdTn6x", "height": 56, "imageUrl": "eRcpUvlrw2MwC1uu", "smallImageUrl": "okpaIjL0Vxe5n9Lx", "width": 93}, {"as": "QcFo9gxOgvDc7xMr", "caption": "RKvw8ISP2WKmCRRX", "height": 56, "imageUrl": "qxnWR5sheLgsAF4c", "smallImageUrl": "tv5guycGiq9j2EyI", "width": 22}, {"as": "dvBVC5zgOKLTDmHe", "caption": "8c1eJ9sde7Ryt4ud", "height": 70, "imageUrl": "qK4QtEydPWLPBYiR", "smallImageUrl": "3UbJc1ZYapx7C477", "width": 9}], "inventoryConfig": {"customAttributes": {"VwDZCIXFNEL3uWVR": {}, "z3V7YbJM3bNLWHAb": {}, "CZixe2cQ6O30lpzc": {}}, "serverCustomAttributes": {"BQMAEcNcJqrKxnMz": {}, "SYoc4ZjiMY4H34B6": {}, "wVd8ipcKDwQeUWtj": {}}, "slotUsed": 58}, "itemIds": ["6GO9zP3FaepA3b3Y", "J9nJM6vtT27xv85K", "5MU2qmbeqaVemINd"], "itemQty": {"ClpF7OvlBIEgjse5": 21, "EEgja2mIE2kLTnJw": 4, "Loog4me2NBFp62xl": 20}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"YdG7xVPqBqe9RDQM": {"description": "BSYAFLqp8PF5hCco", "localExt": {"ukWpnbz4ys7j6lxu": {}, "U3u2HEG0qfKegvFT": {}, "D1sPykS8YLmwtYgW": {}}, "longDescription": "GcA0h4G1LZ1HaX5U", "title": "BMbsF44VTsLDRzdq"}, "22cbnyK3ggFDh2ka": {"description": "ZP7pnnVfxPwc259H", "localExt": {"F9ejHaILQruAuYyJ": {}, "LYGqMv824ouSgkpK": {}, "70uJmUL0uzElixc0": {}}, "longDescription": "23dIvDiA0tQWlHwB", "title": "cTtztx3VAl6tXFbn"}, "ATCzUOIzVcy9k3ie": {"description": "64Vnwa0ClGQJultJ", "localExt": {"e32AiwKadEoIVmpr": {}, "wPsa9YD92CX0rITa": {}, "jpwHITGeHTnqRbzB": {}}, "longDescription": "B9ZFgJbQ3Fj1umx4", "title": "ItzkMJ7cudf4r916"}}, "lootBoxConfig": {"rewardCount": 67, "rewards": [{"lootBoxItems": [{"count": 71, "duration": 86, "endDate": "1978-05-23T00:00:00Z", "itemId": "b1cIOJPS3lJ80YJ4", "itemSku": "1U4ooQ980ywmg1pW", "itemType": "pWit1QC7FKe0fnHU"}, {"count": 22, "duration": 93, "endDate": "1977-01-27T00:00:00Z", "itemId": "1unGKM0tgfeWy47b", "itemSku": "bwMI4gGmvK9gW596", "itemType": "FwBNrFXt3TAuKBwB"}, {"count": 4, "duration": 79, "endDate": "1986-07-18T00:00:00Z", "itemId": "12ae6r3hHwya4Npd", "itemSku": "Ozg3hr6ucHf7dbh2", "itemType": "iKNUl0qJqzoKMRMG"}], "name": "541PAiNjULsx4SnK", "odds": 0.6428365934541542, "type": "REWARD", "weight": 77}, {"lootBoxItems": [{"count": 3, "duration": 78, "endDate": "1976-12-04T00:00:00Z", "itemId": "aDSwwQlnNRZJHBSB", "itemSku": "4fZWEFIZs28Ff1kZ", "itemType": "p1Zktx3N7WNMYIfc"}, {"count": 61, "duration": 62, "endDate": "1989-04-08T00:00:00Z", "itemId": "bLu8pnK34oA1keYX", "itemSku": "JvtggDdXjbdjMBah", "itemType": "FZZGMTcqnWrIprOv"}, {"count": 56, "duration": 57, "endDate": "1995-10-16T00:00:00Z", "itemId": "snnDJlmD1iEokbUi", "itemSku": "YzCQh2iNTwtnohdd", "itemType": "MzMTQ9P7sYLDWAJO"}], "name": "A75K4BYJ2fkqYJoF", "odds": 0.8800866691756811, "type": "REWARD_GROUP", "weight": 70}, {"lootBoxItems": [{"count": 36, "duration": 43, "endDate": "1977-07-21T00:00:00Z", "itemId": "tQUvro8TWwXWsz9T", "itemSku": "VmdMKEohKzuMYDUT", "itemType": "LBeCidXjuGgx8ncX"}, {"count": 8, "duration": 48, "endDate": "1975-04-15T00:00:00Z", "itemId": "nEBhXtAVxCd3meTr", "itemSku": "T7cF9oVCh89wNOkK", "itemType": "YssVejcL3kR3hCGN"}, {"count": 12, "duration": 60, "endDate": "1971-03-08T00:00:00Z", "itemId": "JmuALlMQl9RLrthb", "itemSku": "fp0VgweLlT2sY3Ss", "itemType": "TnDQY7kKU2u06Q4v"}], "name": "eujxtyQENvJrBCqe", "odds": 0.10731136785427287, "type": "REWARD_GROUP", "weight": 48}], "rollFunction": "CUSTOM"}, "maxCount": 36, "maxCountPerUser": 92, "name": "RWOqO4U0bitNQLzw", "optionBoxConfig": {"boxItems": [{"count": 89, "duration": 29, "endDate": "1986-12-14T00:00:00Z", "itemId": "nR0AbkCPY70Fmvvi", "itemSku": "VIBbcujF8Vk5qb8N", "itemType": "hWWwaxyMchkt8l5I"}, {"count": 85, "duration": 91, "endDate": "1996-05-20T00:00:00Z", "itemId": "TUh2dJ90yqHDNacl", "itemSku": "4F9G6Dl5TFwBY6HK", "itemType": "XAblkT8VGgSH8MGZ"}, {"count": 66, "duration": 46, "endDate": "1988-03-05T00:00:00Z", "itemId": "acq4XRLaA643nTMt", "itemSku": "XSAyejnny0Ju13b6", "itemType": "o5uB2XM6IHy7EEvH"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 55, "fixedTrialCycles": 4, "graceDays": 96}, "regionData": {"vrZZOdwe1x8RjU6B": [{"currencyCode": "i8JXE52sUBBq2Sim", "currencyNamespace": "QQoLbe5YOJvxGRxU", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1980-09-01T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1981-01-04T00:00:00Z", "expireAt": "1985-02-22T00:00:00Z", "price": 61, "purchaseAt": "1988-05-15T00:00:00Z", "trialPrice": 80}, {"currencyCode": "BMT1IZKTdNFVBQ1c", "currencyNamespace": "rBXAupATO8uXsqVp", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1973-05-14T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1979-06-01T00:00:00Z", "expireAt": "1994-08-09T00:00:00Z", "price": 19, "purchaseAt": "1995-08-23T00:00:00Z", "trialPrice": 49}, {"currencyCode": "AM0Riw8wLYW3n4F3", "currencyNamespace": "LD1EDwBXw5uBYeQZ", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1984-05-11T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1981-11-23T00:00:00Z", "expireAt": "1995-12-25T00:00:00Z", "price": 19, "purchaseAt": "1995-01-02T00:00:00Z", "trialPrice": 62}], "c1cQvSxgTNIUzxDg": [{"currencyCode": "BlIbuzm7DzJ20NFR", "currencyNamespace": "JIhFXR2dYprPmbpu", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1981-01-22T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1978-08-21T00:00:00Z", "expireAt": "1999-09-18T00:00:00Z", "price": 20, "purchaseAt": "1972-07-12T00:00:00Z", "trialPrice": 5}, {"currencyCode": "Upe8SjMvpqM8pugg", "currencyNamespace": "OEdG47gD5i2Ni6An", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1999-03-18T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1999-01-26T00:00:00Z", "expireAt": "1983-09-09T00:00:00Z", "price": 38, "purchaseAt": "1992-02-29T00:00:00Z", "trialPrice": 85}, {"currencyCode": "NHSH7eKDfRcngEpT", "currencyNamespace": "nRUQr3RLOM1vEx4g", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1986-11-02T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1975-02-16T00:00:00Z", "expireAt": "1982-10-25T00:00:00Z", "price": 51, "purchaseAt": "1971-11-01T00:00:00Z", "trialPrice": 89}], "5c1tP5TDuI5f6m4K": [{"currencyCode": "C07CnsZe32hqEcB1", "currencyNamespace": "ExYMBb3ckvoaJYdM", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1987-02-08T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1974-08-12T00:00:00Z", "expireAt": "1972-02-12T00:00:00Z", "price": 14, "purchaseAt": "1978-12-25T00:00:00Z", "trialPrice": 9}, {"currencyCode": "yFS0Ed7gTM5AVrtB", "currencyNamespace": "QiDTcNnZa6Zuxk6u", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1972-03-08T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1985-08-30T00:00:00Z", "expireAt": "1997-08-27T00:00:00Z", "price": 93, "purchaseAt": "1975-01-13T00:00:00Z", "trialPrice": 62}, {"currencyCode": "55g8LSTs7Nf95lGl", "currencyNamespace": "Prf6obIdnI6Ag7eU", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1978-09-18T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1973-07-27T00:00:00Z", "expireAt": "1992-07-25T00:00:00Z", "price": 62, "purchaseAt": "1996-06-30T00:00:00Z", "trialPrice": 59}]}, "saleConfig": {"currencyCode": "0X8fBuBSKLSQ4GvL", "price": 39}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "D3rpBfBovqLwXBuT", "stackable": true, "status": "INACTIVE", "tags": ["c9gvagF2cSuztsJ5", "iHjGmCyPsKCJTv1i", "EYeRj17xGhaBKoUf"], "targetCurrencyCode": "tj64gV7nmDk29mcj", "targetNamespace": "Suz9vbNStqPtQmQN", "thumbnailUrl": "6eKAGiZFCftT0RWE", "useCount": 58}' --login_with_auth "Bearer foo"
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
platform-update-item-purchase-condition 'Yi2VvoQNW8Yc481d' 'YdvGxJAMDRA1LF7j' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 100, "comparison": "isNot", "name": "lekFwO94VBCV9qJh", "predicateType": "EntitlementPredicate", "value": "va2FPBujX0geYCpG", "values": ["NYyNwGiKrknH0Y5m", "wmGWAvNF0Z0GkwxU", "JM4sqsPNJMiZXXOF"]}, {"anyOf": 35, "comparison": "includes", "name": "7fuDbzRRYMNXWUsp", "predicateType": "SeasonPassPredicate", "value": "i5WjMZfOadpgegCU", "values": ["R8TuNy4ejmVA3vMC", "jTdi1Ehr8OtqpNJ9", "sGyPd12B8QNUz0hF"]}, {"anyOf": 64, "comparison": "excludes", "name": "NbH6j2W4roZM2UKA", "predicateType": "SeasonPassPredicate", "value": "EEsL5D0oiFchQnVe", "values": ["Y5HXCZ0W4XmWP0Hz", "SdiylLhVYszm8xY3", "q3g2AB2WIRUQmauI"]}]}, {"operator": "or", "predicates": [{"anyOf": 84, "comparison": "isGreaterThan", "name": "Qbumu2QHLyZNuysy", "predicateType": "SeasonTierPredicate", "value": "Di2piIQFVmzMidw7", "values": ["6ySrB9SVFctW7YS0", "X7JjxvNZhM84DiZk", "0KSahpYZdKZRyR9A"]}, {"anyOf": 84, "comparison": "is", "name": "87yqEwEacQMTlqN4", "predicateType": "SeasonTierPredicate", "value": "ha4pd5A7MYcpBD6l", "values": ["eLH19fqBwNbNe1ff", "KNb8RxvN2u5J7baO", "YRtIvQaKyevWYtZj"]}, {"anyOf": 75, "comparison": "isGreaterThanOrEqual", "name": "9v8MpBSpo3AKRmnJ", "predicateType": "EntitlementPredicate", "value": "cDaiq0nEZ7PyhqFJ", "values": ["kDClOsKmfsgJdmzs", "DPsWh1k0cQ08NG6d", "X2TZkil67kRngoUa"]}]}, {"operator": "or", "predicates": [{"anyOf": 63, "comparison": "isNot", "name": "gbPzPFbrOMZMgWkF", "predicateType": "SeasonTierPredicate", "value": "3sVli3GN2XTrFibR", "values": ["AhzzEWzWlTY70qdg", "jV00ReCXFffjJJxl", "JRvpZrSpWX3KEe2B"]}, {"anyOf": 12, "comparison": "isLessThanOrEqual", "name": "jzIhpgOoIOD74V21", "predicateType": "SeasonTierPredicate", "value": "nPYQ9jNQN1di1ldh", "values": ["XH9D6vl5eFdFfgK4", "Oh6HvjnYuV7NfC4A", "2ODiZhbfb8QqCyK1"]}, {"anyOf": 76, "comparison": "is", "name": "QKe3xmj6s0GqsWnc", "predicateType": "EntitlementPredicate", "value": "3Ahu5wxq6oJq4mCh", "values": ["BYSeMuJfQecutjS0", "FD58sG6uDhFYlrzJ", "mQHQhO9IKBXDFQfX"]}]}]}}' --login_with_auth "Bearer foo"
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
platform-get-payment-merchant-config --login_with_auth "Bearer foo"
platform-update-payment-domain-whitelist-config --body '{"domains": ["6iCJTu60IifzMhkk", "5PxsjqbCKpMv2Yky", "9DYkD2sIllFtBtXJ"]}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "KG3rqBmILhtWm8RQ", "currencyNamespace": "vRUbUDSiefGEdLuc", "customParameters": {"rtO2gCQD057DrDlg": {}, "C2nzS9SiGUjVAw4v": {}, "3q6JRHcn7KaoCEkR": {}}, "description": "do6qHYIZWnXqQ1oH", "extOrderNo": "FJ9Q0vqsL9SomqWs", "extUserId": "GA76yxi0QzZWfmP2", "itemType": "EXTENSION", "language": "Ybmi", "metadata": {"EJaPnAFjsodyJQVV": "BrShGbIIuqK8C403", "HgoXCR6XOMXwKdfq": "k8T4QHK30EX0Fclp", "Dl5HsuracO5Mnjnx": "D1OXkxShFVQTRekL"}, "notifyUrl": "fjmy8zosRCRgVwbr", "omitNotification": true, "platform": "Kmb01yA7U7dGMjup", "price": 25, "recurringPaymentOrderNo": "kZQY8CNyT4k3DIbf", "region": "T22G5NpE130YWSgx", "returnUrl": "pKWtdtdtVW9anENm", "sandbox": true, "sku": "euLAbBgejqc0apxq", "subscriptionId": "Z209BySn8aUaGlAy", "targetNamespace": "vIslt7N1qcxKs4nl", "targetUserId": "f1MfqUZXkjHvcUOT", "title": "lxNf09pefgFIiJss"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'ShBKsQjXvfQgQDt6' --login_with_auth "Bearer foo"
platform-get-payment-order 'ce8NDMErA82FrR1G' --login_with_auth "Bearer foo"
platform-charge-payment-order 'SogkewIzTOqKkcjR' --body '{"extTxId": "h3l2gAJOTCbx7J3g", "paymentMethod": "NLIlTk3Bpclrk4hI", "paymentProvider": "WXPAY"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'n0znIKzAEAHQpBOg' --body '{"description": "HEP5l94s7CbIJ7eH"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'nVWOboMkyB7FTexs' --body '{"amount": 83, "currencyCode": "cQKF4OlRGdmXxETL", "notifyType": "REFUND", "paymentProvider": "ALIPAY", "salesTax": 35, "vat": 66}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'r3KCAV9alq3hK1G4' --login_with_auth "Bearer foo"
platform-get-psn-entitlement-ownership 'kKooSNNUZuiynZ64' --body '{"accessToken": "IwncZPk82GF3eTC0", "serviceLabel": 44}' --login_with_auth "Bearer foo"
platform-get-xbox-entitlement-ownership 'INGIyEfRBEj7qms9' --body '{"delegationToken": "AGQExPhgr9gGfC0G", "sandboxId": "jvpgJfuBs1Vpqn47"}' --login_with_auth "Bearer foo"
platform-get-platform-entitlement-config 'Xbox' --login_with_auth "Bearer foo"
platform-update-platform-entitlement-config 'Xbox' --body '{"allowedPlatformOrigins": ["GooglePlay", "Nintendo", "IOS"]}' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Other' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Steam' --body '{"allowedBalanceOrigins": ["System", "Other", "System"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Other' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config --body '{"appConfig": {"appName": "Ns97KvKyj3MqS7Dc"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "rDCjhnKvsHezWTqg"}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "ixtHk6lWq6tEeUmU", "eventTopic": "96FLEak0mJqjRYld", "maxAwarded": 5, "maxAwardedPerUser": 43, "namespaceExpression": "TpdeCD9XPRi4bAQL", "rewardCode": "7VE2wL8Y4JFVUdzA", "rewardConditions": [{"condition": "8bvXlDhG7BrorbKI", "conditionName": "KuOXJPm5ztrr09CD", "eventName": "A8Ij5bGKSuopWQba", "rewardItems": [{"duration": 59, "endDate": "1980-06-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "hG9xmSnzd7zgUxAo", "quantity": 12, "sku": "JZ5z6gujpFzlPspQ"}, {"duration": 61, "endDate": "1990-10-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "IpDDubntPCFxfeoW", "quantity": 63, "sku": "NdSWzOXjO1NQUqWH"}, {"duration": 56, "endDate": "1983-10-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "8XREZCiTNAxq26gZ", "quantity": 37, "sku": "u1bqI2M5PmXfKnQ7"}]}, {"condition": "BYGjCUDMOrbmoRvW", "conditionName": "nfmGFy0eUoOBd90h", "eventName": "9EDqSTOfoNewWjwM", "rewardItems": [{"duration": 99, "endDate": "1979-09-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "KEt6JhbJ0fwTDaq6", "quantity": 2, "sku": "Hm9N6owMHMtJy1Oq"}, {"duration": 28, "endDate": "1977-05-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "xpmEuwDVc12r0DVU", "quantity": 66, "sku": "qSZdZ5C8mFI9Tnvz"}, {"duration": 62, "endDate": "1985-05-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "BNMF9CZvPxT5zbre", "quantity": 80, "sku": "fv3kMiuQ3DhsKLxj"}]}, {"condition": "t5srPFxBgpFtDBmT", "conditionName": "LH9kP9U53z6joBAh", "eventName": "AlJGI2YYb6ajBjgq", "rewardItems": [{"duration": 21, "endDate": "1973-06-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "PBNHKPx62tHxDb06", "quantity": 48, "sku": "Fy3uglSp2UxvF2uL"}, {"duration": 99, "endDate": "1996-03-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "lRD7HD6LCgdFxRGj", "quantity": 58, "sku": "0RT6LvcnGMJbJIYL"}, {"duration": 37, "endDate": "1982-06-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "wKVXGPhEJsc7rZpx", "quantity": 0, "sku": "DX6gmDfNfPGYYSTu"}]}], "userIdExpression": "nMgt3C8hEguCqlMH"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'false' --login_with_auth "Bearer foo"
platform-get-reward 'wDudnGRufOUGfMjT' --login_with_auth "Bearer foo"
platform-update-reward 'U226l07jPlcYaqYM' --body '{"description": "7YfBmhjI9Y28qVce", "eventTopic": "S9UX48dKPCFUIeyY", "maxAwarded": 63, "maxAwardedPerUser": 90, "namespaceExpression": "ymNXzNX6TGh4UdEw", "rewardCode": "eeBsJEvBbAvCmlh6", "rewardConditions": [{"condition": "Z1oz9BaixUUvmzba", "conditionName": "jE2gjooiDnc1NUb5", "eventName": "1lEgUwQ9tkWaMOH4", "rewardItems": [{"duration": 59, "endDate": "1985-03-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "wLxCFLDixZwVtt3R", "quantity": 98, "sku": "766LUnBBR84iAO7s"}, {"duration": 57, "endDate": "1999-12-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "t6YJ2tWwF7RnP1oK", "quantity": 5, "sku": "szl0sMY8es36r1Fg"}, {"duration": 89, "endDate": "1991-02-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "NLHkVrEFd8xArWJu", "quantity": 59, "sku": "V5YqE2myQzl7X9fH"}]}, {"condition": "r6WvBxmBvNj3ktaD", "conditionName": "f9B22HGgxakPt7IY", "eventName": "zaZUTmvsEzLPnnGs", "rewardItems": [{"duration": 27, "endDate": "1973-10-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "7yIS7b5TSDRIoMg7", "quantity": 61, "sku": "yamjsEzwtLPxK1os"}, {"duration": 62, "endDate": "1979-11-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "aQzEb39sZTdFfC8x", "quantity": 11, "sku": "aHLsXHlm1RJTTy9J"}, {"duration": 35, "endDate": "1975-11-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "z1K5M1qgFddYvifG", "quantity": 68, "sku": "sFl0cbuCRM69XKkL"}]}, {"condition": "wioRaKnWhlh80BhY", "conditionName": "e2fJDS6T75Q4ulon", "eventName": "MFjmYqE1wJhfogWg", "rewardItems": [{"duration": 55, "endDate": "1988-05-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "UvPYUcQBxMSdOOsn", "quantity": 59, "sku": "Nd8Jpa19GJDK46Ee"}, {"duration": 14, "endDate": "1997-07-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "7xasqMY9aulsL6NO", "quantity": 98, "sku": "6r0gBVUUeKKlPKtE"}, {"duration": 48, "endDate": "1974-10-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "K9D2bTcgaKoccaSw", "quantity": 100, "sku": "US6uwWrCQt86Jrg8"}]}], "userIdExpression": "tLAJWpcyNkUvqn6e"}' --login_with_auth "Bearer foo"
platform-delete-reward 'Xr6FNbKJ05Orya6L' --login_with_auth "Bearer foo"
platform-check-event-condition 'SSUlugIAknXcSaVY' --body '{"payload": {"cAYp7qSiDvsfMUOp": {}, "Wv46sXvpOjrpRo4m": {}, "YrCeQUnYoID2UqO0": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'iAXA9dB4ib8HDOJ8' --body '{"conditionName": "TNiP8KgEAj3dbRTI", "userId": "0i6dO3zkbDseh4tJ"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'doGcwMBmegqVUaWM' --body '{"active": true, "displayOrder": 55, "endDate": "1980-03-18T00:00:00Z", "ext": {"LZiBRXszE7CL1cQC": {}, "SoqHvH7g63cOx6yr": {}, "Iw37pKOLrF5i3gr3": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 75, "itemCount": 6, "rule": "SEQUENCE"}, "items": [{"id": "2O7NrTQO7KLdZDGw", "sku": "qx7T3l1ut2oyolli"}, {"id": "YsTJUmpscwLcUml3", "sku": "KuoMKh7tprnacA34"}, {"id": "xmIOjFLgKR4LjEWh", "sku": "OScvtQ92iD02YMvE"}], "localizations": {"UNfoL7JCcMo7GxxX": {"description": "dbYCRexPekTsQxMT", "localExt": {"faSot7aohFYy4Vxw": {}, "HIJ9gzxqAw4vBGQA": {}, "eh0VTiTP4PSrXUS6": {}}, "longDescription": "jYI9lsQFD43Df5qU", "title": "ZOFzpFd6b5Jc5TET"}, "Hcup8GG0VCMTFJ6s": {"description": "vTyo9RHget5hzB52", "localExt": {"BDFopxUwkMuSqQnK": {}, "zDgDAtqE3kuybwTQ": {}, "FYEJjIYwqfSRy8Gg": {}}, "longDescription": "Vk77fd1GS5YkyhAi", "title": "AItnWUmD225fp1eg"}, "sx3ErheNwqd5pric": {"description": "lNNqLyrlzrJ4QHbf", "localExt": {"nAdtkujxHff7n1ya": {}, "NCcjgFhS0URBhl0L": {}, "5FCbOn46W2B2uPQL": {}}, "longDescription": "rt2t6bVpCgKvPXSD", "title": "ufmKh783cV54JsVB"}}, "name": "RB0rY0xfWddACyHS", "rotationType": "CUSTOM", "startDate": "1996-04-28T00:00:00Z", "viewId": "0rkOHUkY5aSlqhYo"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'SXbn6l5xAzc1nc3e' --login_with_auth "Bearer foo"
platform-get-section 'Fm950dtVAo7w4e3v' --login_with_auth "Bearer foo"
platform-update-section '5mh6Rum5pbgEt39u' 'JQpgEtchTe3nt7t9' --body '{"active": true, "displayOrder": 53, "endDate": "1981-07-14T00:00:00Z", "ext": {"prSfW9OutADrNGBW": {}, "SJ1zQKxVmRTawjiZ": {}, "PMoZZcyGEHxAKDQh": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 70, "itemCount": 36, "rule": "SEQUENCE"}, "items": [{"id": "3usApPdJPn9eIdhI", "sku": "BvTTupABJ4RwH3Ed"}, {"id": "KmYtbqQHNfIZwrMx", "sku": "f3EnzZVnkLT0Lb85"}, {"id": "nmpdN26BY5YI0jeO", "sku": "2zMDSy4kyqyKgrtE"}], "localizations": {"PdXXlt8geCdiXu3i": {"description": "Nvn7vLZ7h6alhJNG", "localExt": {"ZF07lsPP5OfHbXzW": {}, "nVO2U4uyzZo1rj0Z": {}, "rLQjk4VoYfIksth2": {}}, "longDescription": "4cZBpdDFfvzeU5iq", "title": "hx6zv7EURTNIoG1D"}, "BdoKH6sREmmfwUZL": {"description": "ZZS7snx0Q2Gd8m7Y", "localExt": {"3wiNloJfey3HXL6S": {}, "jljNPTXA3qbg55Sy": {}, "ienCODZ0mnOpPTVx": {}}, "longDescription": "EgBFzG8tlkxWKCU1", "title": "XN4gl7yHvEqpJSrD"}, "XVwCkhOQ161TFjRO": {"description": "YJm75VIuCOCkt2W1", "localExt": {"DfI8QtgODk9K6DcM": {}, "nyCPn1FylWdaNV1V": {}, "aZTkbbuWiiA4UTDg": {}}, "longDescription": "S2SVEo5M80LLbku9", "title": "GYH4ijqOVM50tCqk"}}, "name": "ZfsSxAbDJ7sHCLup", "rotationType": "CUSTOM", "startDate": "1979-04-11T00:00:00Z", "viewId": "BpCODWGOLMmCZUee"}' --login_with_auth "Bearer foo"
platform-delete-section 'lXYyNrXweiCnDldR' 'PRfd6mLZ0GTJwEjo' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "ZrRtaeWKMC8wsOBy", "defaultRegion": "QAMAgqFEzEt8umj5", "description": "XhKnw7MHDwFVKUC2", "supportedLanguages": ["ecnpUDqvLQixPKVS", "mWa8TGko16XTqHc0", "cM7ixq8Tjnxp5Cl8"], "supportedRegions": ["ggaEmCcuK2hHviBE", "WpbusO6EyVqstpgZ", "pbz77y88rUFum2Zc"], "title": "A8iKcF0bkfjcTEFX"}' --login_with_auth "Bearer foo"
platform-get-catalog-definition 'APP' --login_with_auth "Bearer foo"
platform-download-csv-templates --login_with_auth "Bearer foo"
platform-export-store-by-csv --body '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["TwEtnHxP5pVtN4jN", "VIdruEA39uCJzsE8", "WObt6t0w8LOBxE15"], "idsToBeExported": ["JYj4IqWK09l4wkrz", "ahXR1sDEDVKDINE3", "HjCiVR1dQ8kuhb4p"], "storeId": "UwnGptHUplxzaDa9"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'PDwhu31d8eOdtrfq' --login_with_auth "Bearer foo"
platform-update-store '6ECDD6OGkuLs9gNp' --body '{"defaultLanguage": "Non6DKW9A6AmnQTN", "defaultRegion": "FidImWONTvCPMGLd", "description": "bYEknHPKrZ7TiNBE", "supportedLanguages": ["0HRsE0GHDOFjrfqJ", "cyxT2a7fCFAUzLEL", "iM573TdtWjfVciuL"], "supportedRegions": ["nLsBKGsALPuCOyph", "UUAV95708zaP0wpZ", "gQEvFzox9wHocX3D"], "title": "RWobEoGr8W97KBed"}' --login_with_auth "Bearer foo"
platform-delete-store 'cr6PM51z7i0wQ9eg' --login_with_auth "Bearer foo"
platform-query-changes 'K2t46EG8I2lTviKb' --login_with_auth "Bearer foo"
platform-publish-all 'OgVuN3nhkn6QIesN' --login_with_auth "Bearer foo"
platform-publish-selected 'oYqvVsakylHikKkp' --login_with_auth "Bearer foo"
platform-select-all-records 'OjqwgKvfXXs8pDqm' --login_with_auth "Bearer foo"
platform-select-all-records-by-criteria '31AZSRkuw6q8FgqG' --login_with_auth "Bearer foo"
platform-get-statistic '46RsFK7eYlSU3vYc' --login_with_auth "Bearer foo"
platform-unselect-all-records 'HZZjFegVnZOn0tk4' --login_with_auth "Bearer foo"
platform-select-record 'IATSIefcqNEn4IZ0' 'Dv6b8WtaMVvLbG04' --login_with_auth "Bearer foo"
platform-unselect-record 'KKnh3jvW0Qp3kTyL' '4CsLwiWUMcpxn4B6' --login_with_auth "Bearer foo"
platform-clone-store 'XoTNMuqZTHwo1IAJ' --login_with_auth "Bearer foo"
platform-query-import-history 'Qpb6r8ZeaSHwQuiH' --login_with_auth "Bearer foo"
platform-import-store-by-csv '3Ozu4G6bXxp0gYZy' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'F9fJBJkSOrF9Dg4F' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'cDwBGyBiHewZkwEe' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'uzBBRSknxyWkZObu' --body '{"orderNo": "vig8sMuss76ezTrs"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'DZNYUV48Oh6I45X7' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'HvUtPYONZdFk75lk' --body '{"count": 19, "orderNo": "KNPUOHNZxML3yoBM"}' --login_with_auth "Bearer foo"
platform-commit --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 34, "currencyCode": "Zh5qtrRbNnGejdTG", "expireAt": "1981-04-20T00:00:00Z"}, "debitPayload": {"count": 77, "currencyCode": "gN5hshSe5YmZXKEQ", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 29, "entitlementCollectionId": "M6o3eGSP4Htmr90T", "entitlementOrigin": "Oculus", "itemIdentity": "HrsOFsbhRow4iaYK", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 49, "entitlementId": "0IjsDgbJ37DN2lDv"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 39, "currencyCode": "7okHl1wMht2Izq7T", "expireAt": "1985-11-20T00:00:00Z"}, "debitPayload": {"count": 95, "currencyCode": "G8rGp7Fadvo5EzpX", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 71, "entitlementCollectionId": "R1mx6K17GL1CrO4Z", "entitlementOrigin": "Other", "itemIdentity": "ALBmvdncQkcZb8cW", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "VH9bww15zZsaYrJA"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 60, "currencyCode": "d5QB96ndlO6iPGC9", "expireAt": "1993-10-24T00:00:00Z"}, "debitPayload": {"count": 16, "currencyCode": "hqilty9NVlgxUmnf", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 59, "entitlementCollectionId": "OAmu1dX1NqD20RUv", "entitlementOrigin": "Other", "itemIdentity": "7K58pQswqKLutINu", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 32, "entitlementId": "Osa92F6iwkJIYOLa"}, "type": "FULFILL_ITEM"}], "userId": "ja1soDE1K0SvGrMY"}, {"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 23, "currencyCode": "PmPXC2LfL2m5rP2A", "expireAt": "1998-06-26T00:00:00Z"}, "debitPayload": {"count": 22, "currencyCode": "t6foPPH94SUinY5d", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 96, "entitlementCollectionId": "LHYivmD0ekycMKlw", "entitlementOrigin": "Twitch", "itemIdentity": "Jhk4EdTZ000rS925", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 69, "entitlementId": "efATWcDSqGYRMdz0"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 63, "currencyCode": "QbCqfh0gpABFBER6", "expireAt": "1996-05-02T00:00:00Z"}, "debitPayload": {"count": 81, "currencyCode": "B1ZGMMo5DSozCuFs", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 65, "entitlementCollectionId": "BMtoOeLfMCYxSeeJ", "entitlementOrigin": "Xbox", "itemIdentity": "k0siMup01kyaFwwD", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 46, "entitlementId": "kGhYvXYMIyaEMEqO"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 45, "currencyCode": "zh4suaGIzttTncVB", "expireAt": "1973-09-01T00:00:00Z"}, "debitPayload": {"count": 12, "currencyCode": "g3oeuHiNyLkfPQPm", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 42, "entitlementCollectionId": "UkvSs5YmIejozmG5", "entitlementOrigin": "System", "itemIdentity": "9SGcMuV5phhU315L", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 58, "entitlementId": "frXZmiJX4CjKCeIR"}, "type": "FULFILL_ITEM"}], "userId": "9lqqtcLJW9eTJvKN"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 64, "currencyCode": "jaf1f5fjNMZjKJ05", "expireAt": "1979-01-16T00:00:00Z"}, "debitPayload": {"count": 43, "currencyCode": "xh0x7T6RQGnnW4ug", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 46, "entitlementCollectionId": "X6mKBbgTD9xL07Zz", "entitlementOrigin": "Playstation", "itemIdentity": "NZ68eovHSH3xV3UR", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 98, "entitlementId": "oMLnemwKAvgDXNrF"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 63, "currencyCode": "H5Tu1ky1ZYvyeHmf", "expireAt": "1978-02-08T00:00:00Z"}, "debitPayload": {"count": 64, "currencyCode": "fmEVcW7mxbS5UOoI", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 43, "entitlementCollectionId": "xQMit8555Niy4NNF", "entitlementOrigin": "Nintendo", "itemIdentity": "CJ88aMPGFFAQZbfb", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 97, "entitlementId": "8UKWPv3F7S0wCVlY"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 98, "currencyCode": "cfMCeNnu6OIG1PPL", "expireAt": "1993-08-30T00:00:00Z"}, "debitPayload": {"count": 10, "currencyCode": "EXLXZWXvqNCHvNpe", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 20, "entitlementCollectionId": "7pMjESLLMPKDXLki", "entitlementOrigin": "Xbox", "itemIdentity": "JLb5f3SBMyJUdwEB", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 35, "entitlementId": "7hGwGbUmQmJHNffZ"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "0t7QQWl42byOwXgK"}], "metadata": {"yPhXmcysae8HpWH4": {}, "xiz3fWthJSu2pUII": {}, "uPLFAtcWhjAP57Qb": {}}, "needPreCheck": true, "transactionId": "vSSp71zEPPfmAQiq", "type": "RRC2caquMRtQOILc"}' --login_with_auth "Bearer foo"
platform-get-trade-history-by-criteria --login_with_auth "Bearer foo"
platform-get-trade-history-by-transaction-id 'aDqUITBHQR5ISNoF' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'R3GUxdMuvmL0UBfw' --body '{"achievements": [{"id": "zaaeP3Wd0Wrb8s3G", "value": 100}, {"id": "nnCA5tfK5ushaKTP", "value": 98}, {"id": "4lpHXrbVBh60NUA2", "value": 0}], "steamUserId": "IJnqtrjCOsE8Vjvz"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'hJwNX4bhqCjlwrms' 'SRV86iic1FIMyF7C' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'cNu2DYn6E9Gk51kO' --body '{"achievements": [{"id": "TJZluTekDMCGUJvE", "percentComplete": 89}, {"id": "rNwioKnXPVZaDcXs", "percentComplete": 97}, {"id": "vlCdI519Pf2iogwx", "percentComplete": 79}], "serviceConfigId": "PB0FKMa0YeyNBQWU", "titleId": "HDBnBeePkqg6Zt1L", "xboxUserId": "r5BlO8K6LH4dSaa8"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'XYHug51ZTogG0N7H' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'vnuq1kJ1kpHcQtnI' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'c9z70LFQMI0oZuEj' --login_with_auth "Bearer foo"
platform-anonymize-integration 'Y0rNBbbB9txAvtRQ' --login_with_auth "Bearer foo"
platform-anonymize-order 'vqJacXR2Rf4noXDF' --login_with_auth "Bearer foo"
platform-anonymize-payment 'aEUkPUBnB0ZEJH3e' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'bM71Tg922xiBgHSk' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'a0Pz7I1WkIa0oZ1n' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'XpW1l70pcZgIn4lP' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'ghHyMEHBzArbyW10' 'OCULUS' --login_with_auth "Bearer foo"
platform-get-user-dlc 'kJFQxuMHnfOlX6HY' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'VEiaereFCPJU2wEz' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'UYUTmZ8JSMeNmRoc' --body '[{"collectionId": "p400RZe8Bzx9aGEI", "endDate": "1998-12-26T00:00:00Z", "grantedCode": "BTCZs97TJI8GPrM2", "itemId": "4F3celFgM62HQtgz", "itemNamespace": "QhO3nR8j8DlP6OGb", "language": "Sj_FnHD-Jp", "origin": "Twitch", "quantity": 10, "region": "hh3JMX7xSrz1EH6X", "source": "REDEEM_CODE", "startDate": "1990-10-26T00:00:00Z", "storeId": "xzsNrJzWBcdFlo7o"}, {"collectionId": "AsOlfLB1J19b5rTf", "endDate": "1975-09-27T00:00:00Z", "grantedCode": "L2P3r1a8KIJH33aK", "itemId": "kPuWD59MgTy1HA58", "itemNamespace": "Jt5NaROjSKFEuZo2", "language": "iME-WFYZ_pK", "origin": "Playstation", "quantity": 6, "region": "ReviDaxlPdhwmcH0", "source": "REDEEM_CODE", "startDate": "1972-04-27T00:00:00Z", "storeId": "LqtRZ93LuR8OEyIC"}, {"collectionId": "vwgwBFehwtdJLdn3", "endDate": "1993-11-16T00:00:00Z", "grantedCode": "2wo8beVQvgeP9qOH", "itemId": "aLwYnXxrz7sLmP70", "itemNamespace": "LxN0f3JA27Qz5Sjz", "language": "kFIp-bpbm", "origin": "Xbox", "quantity": 44, "region": "Ozz9p57qSpHerzO8", "source": "ACHIEVEMENT", "startDate": "1995-02-18T00:00:00Z", "storeId": "mBT4wZXQZZrSsuYi"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'IPei0pXglJYnKkoC' 'AZuolAWnxkImVbDP' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type '0QX31gI7VmnGIRMv' 'DLC' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'e6BiphIFe2bzr6qQ' 'w6fSESkM19OPMBb1' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids '2gpmShlmIt2nfhUa' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'ZGqjslu59GT2E6Aa' 'cmZRXZm626POXWVj' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement '3KP1mX0iYHXBU3Uk' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids '2tQm307IORTyHnLY' '["DAAg1YA4kZURmoGg", "xVRMPf8g1rbhfIMS", "tMnSqrKWYOuITlYS"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id '2RYaD9WNKGhbLhjz' '1v0RBIO2rkJGmPaK' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id '6HEVIQJd3930TGew' 'jRyfo4nWVZZbKFsK' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'OmgEhjH2wFzCpxxJ' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'LfAg5cFT0gHAkltc' 'R3eHFbiAluHv7Hss' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'd05pHBJX5ln8PZbY' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'VD8RiaTsdD4d3kSb' 'TkHPMUvOAUXkw36c' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'r2WJQqS7Tq4YIyZA' 'FQ6lZfa2jdNvpWf3' --login_with_auth "Bearer foo"
platform-update-user-entitlement '2JS1av9VNpVLT0Lv' 'qcfSdO1nAjY5FvAD' --body '{"collectionId": "b3GUQgci632w6LUr", "endDate": "1988-10-16T00:00:00Z", "nullFieldList": ["uKBoNTpPQXDNHto7", "4GcmVf0fbCU9QdPu", "WeMEeL0EJG67g4W1"], "origin": "GooglePlay", "reason": "hPKU5abnqw8fFa30", "startDate": "1979-01-09T00:00:00Z", "status": "ACTIVE", "useCount": 95}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'r1BHh1arZAyuLcZo' 'EkPpqKhP2jWnRTgl' --body '{"options": ["w0gdWoE4esuiDrqu", "ccz4J6fFQezJ5E3i", "YHIknvPcJkjRevVY"], "platform": "fiExpAgoK9YDq1x3", "requestId": "dkbJFDEBEOOvJ5BK", "useCount": 9}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'lpvqaB9P9GaukfCE' 'IeSBLhTfzigzHcRu' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'JgYaj4I8Dzyh1N0J' 'EKNoMtHvjM7X1fjz' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'knv2HZMIL2P2bh14' 'LroFTnAuujPeP9N0' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'vdVB5a2XkS3XQfMu' 'zZh4AhZRe2hgU56x' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement-by-use-count 'tyJtnbTDXu7FbleS' 'P5PcdOuq0m0rvakR' --body '{"reason": "8rcwojLRjhcaJ56n", "useCount": 66}' --login_with_auth "Bearer foo"
platform-pre-check-revoke-user-entitlement-by-use-count 'K6gB6ZxC6yYUVUJY' 'nQ3jOGmROIqxqQ0g' '4' --login_with_auth "Bearer foo"
platform-sell-user-entitlement 'ms3kb1htW0UGJpwQ' 'ZlXuzu3m9u67JjCD' --body '{"platform": "wg186hGWKfO9MnoT", "requestId": "3t99HmcxzjDhTrcB", "useCount": 75}' --login_with_auth "Bearer foo"
platform-fulfill-item 'kvhoQe9gD9tGN0nE' --body '{"duration": 8, "endDate": "1991-09-26T00:00:00Z", "entitlementCollectionId": "36mI9u3EeZtLQij2", "entitlementOrigin": "Twitch", "itemId": "Ugq1gLbcIMevTmC6", "itemSku": "31p7q794bu49lINF", "language": "TtERAXT2h3hcQ2wV", "metadata": {"3ZbBTnNQnVUhA5Wn": {}, "zVZdj8tsyzC4QaLX": {}, "p3o4TDraEEaDNJbV": {}}, "order": {"currency": {"currencyCode": "d20FVHevCjthJUb7", "currencySymbol": "jKuMrFaoLulzp3sZ", "currencyType": "VIRTUAL", "decimals": 23, "namespace": "ImVK5yh2LcM8LaMW"}, "ext": {"0ByjsRUrAHNRkIcC": {}, "4wNFzsbrtYvLh56A": {}, "WXoMiowdWSs9DQ0V": {}}, "free": false}, "orderNo": "HED9CGo9aUXj3rh0", "origin": "Playstation", "overrideBundleItemQty": {"ix88sAUrXr7MXxCv": 50, "104MtMhKHmSjqPuQ": 18, "X5KjdNrEwfWo2Mwu": 24}, "quantity": 76, "region": "Lg4bsO4YHEYLjTSN", "source": "SELL_BACK", "startDate": "1983-02-09T00:00:00Z", "storeId": "4rV4CXVMrDYKe2eT"}' --login_with_auth "Bearer foo"
platform-redeem-code 'f1axo16GqT2vSLLi' --body '{"code": "Mvcu39YZJypWzpNX", "language": "vO", "region": "OZ9WNl3apJmNAbl1"}' --login_with_auth "Bearer foo"
platform-pre-check-fulfill-item 'g5ZmTTGYRbP4QVey' --body '{"itemId": "9pEz1TV5cUtPBsw0", "itemSku": "1i5Mf7WvbNSeeDNf", "quantity": 95}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'vyk5xEfrJDxKsw5X' --body '{"entitlementCollectionId": "l7ZZrDZdbuvCFBaV", "entitlementOrigin": "Epic", "metadata": {"kO6aIYqftw1SrM2n": {}, "hSEanfUYrMU6A43U": {}, "KGpvC1cr5T1PSXhd": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "hveGg97PY0txzvYw", "namespace": "v7atn9EQv2Oj8TFN"}, "item": {"itemId": "eGtJGjKbMgCeuAYu", "itemSku": "zrmbWofEaKStqdKu", "itemType": "4ROnONpJ849chqei"}, "quantity": 96, "type": "CURRENCY"}, {"currency": {"currencyCode": "GQMwNwDlYSli3p8Y", "namespace": "aAdel3hHMSLAiscG"}, "item": {"itemId": "RWzkCl1ZKuPxjDUG", "itemSku": "RGcCEPjbUy7F82Ad", "itemType": "u9BYRHrVTehrqgvE"}, "quantity": 40, "type": "ITEM"}, {"currency": {"currencyCode": "Es2LpE0qfbvdU8hl", "namespace": "DoC9FnxqBlPBYJ7X"}, "item": {"itemId": "6uVy7FWTSfMi2CPV", "itemSku": "GxjcdpdCqVeePMSq", "itemType": "b8y8qJTUQY40Zrpn"}, "quantity": 51, "type": "ITEM"}], "source": "ORDER_REVOCATION", "transactionId": "AD9YsPeDWrAVQZSv"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'gWuCuLsUGrVQAbhS' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders '54ZuQHKersDmJLUH' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'AKtfXCKOna8DdjtZ' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'hh6ofsUoRh6r0e0J' --body '{"itemIdentityType": "ITEM_SKU", "language": "ZfQu_sMcx_fu", "productId": "K2Cy1tJcPAEkCeV2", "region": "9QsQk100eu5UcxuX", "transactionId": "Xpt0YSPX04uEIdAw", "type": "EPICGAMES"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'HMz9dddLWJWDuSYt' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'CaIv4Lp91wYUJPbv' --body '{"currencyCode": "zn8TYoMDAaUXSuBQ", "currencyNamespace": "dvdhJoT0WK5ngNUx", "discountCodes": ["U2I1GyJS48Hxu8Ju", "nKxQjYU6KlavIiLx", "DKfZYofPGUbSaA00"], "discountedPrice": 35, "entitlementPlatform": "IOS", "ext": {"AnlXRYB9BgSZBvke": {}, "hRn83B0nrW1qx3NJ": {}, "TugVWXz8dv7BiEUq": {}}, "itemId": "nzxs2deMF8UAJIHE", "language": "Zv5zyUUyNJkvA5xF", "options": {"skipPriceValidation": false}, "platform": "Playstation", "price": 23, "quantity": 69, "region": "qMnE9Wj90EQzOidr", "returnUrl": "WnLrXqImgDf3GaJs", "sandbox": false, "sectionId": "gLZ4YIzElrLZOBLH"}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'CKmLBaIwlokbAFW8' 'RgBUwBL28BqM8Uzv' --login_with_auth "Bearer foo"
platform-get-user-order 'KqeoTiNKGRUMrimG' 'Az6OhmHOpCdr3WzD' --login_with_auth "Bearer foo"
platform-update-user-order-status 'm3hJdd6uaO9TiTPn' 'Ih2iaIBpYC4txul6' --body '{"status": "CLOSED", "statusReason": "KYlNYYlHPwKDpJmk"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'eoAkp3Z4pgyJYwcl' 'b4gd4QgQut2hiPuD' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'dOPHcN9drwqytieX' 'pIZfr5XDq9dGLHjt' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'gE2bTXJxCCFqPNDq' 'WrpkWnnova15WVuE' --body '{"additionalData": {"cardSummary": "5cYVP9tQSa27BnPy"}, "authorisedTime": "1979-08-09T00:00:00Z", "chargebackReversedTime": "1999-02-27T00:00:00Z", "chargebackTime": "1988-02-22T00:00:00Z", "chargedTime": "1985-07-21T00:00:00Z", "createdTime": "1990-06-07T00:00:00Z", "currency": {"currencyCode": "1LLzQ2IjY5PeNr4J", "currencySymbol": "mYxH2qs28hePJjMp", "currencyType": "REAL", "decimals": 75, "namespace": "sy0stUmKdXiiTObN"}, "customParameters": {"dqkWa13g3pgHx6uP": {}, "f6jQZcYerH933X7i": {}, "XEEM2KOusNEHcI95": {}}, "extOrderNo": "GGdJvucDbs6Udccu", "extTxId": "M2ykRj3WnyAaUaQB", "extUserId": "KFedL2uduXvZUbQQ", "issuedAt": "1998-11-06T00:00:00Z", "metadata": {"FhD3NExUFipJsUiD": "awAjgHFQk0VzWRNF", "NiUn2yXMSCcHADYp": "S861c0CJ7LzpFvOS", "F6xKA6yrnvXY5dDw": "neac75C6S2eHsH4Y"}, "namespace": "84hL75QboMHCtzEF", "nonceStr": "9FSeg6WYgtfuqJHr", "paymentData": {"subtotalPrice": 37, "tax": 87, "totalPrice": 40}, "paymentMethod": "e3RnWR30MdBZezfw", "paymentMethodFee": 6, "paymentOrderNo": "4JGQZAtyjTxnlmSy", "paymentProvider": "CHECKOUT", "paymentProviderFee": 70, "paymentStationUrl": "EaFH2DRN6HIEqIFE", "price": 4, "refundedTime": "1972-10-16T00:00:00Z", "salesTax": 50, "sandbox": true, "sku": "nIMOYWpUYUQMooiK", "status": "REFUND_FAILED", "statusReason": "M2XizikCh6q0yq2W", "subscriptionId": "AHtL7IWE3MFqvfDG", "subtotalPrice": 19, "targetNamespace": "jvMOaXrDlEX42U0s", "targetUserId": "yrGNhBmgT2q0kIbr", "tax": 73, "totalPrice": 82, "totalTax": 92, "txEndTime": "1979-12-06T00:00:00Z", "type": "tOHV5hnpjc5CNLnn", "userId": "Evo25aEtdjls5oad", "vat": 38}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'jIOaQt0snbE0yMvq' 'F7TJ9uB0zypjJiu7' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'BIimNuwB3hBVhuSM' --body '{"currencyCode": "Hhf5R2MkxQTAYGfE", "currencyNamespace": "6hXZ7XLoWCGf0dZE", "customParameters": {"eXBd6mGG6SHcZbX2": {}, "wNnT6A9zosmDnXon": {}, "cy7NZQ4PkAPXBCfk": {}}, "description": "E1Fb0y94eP7yh0zs", "extOrderNo": "KhR60HZwUwk48XK7", "extUserId": "MXHbEwAvvpEeHhXi", "itemType": "SEASON", "language": "Yk-xxlp", "metadata": {"YMimVLzAP6aOzsTq": "EFXUhGAwpYq1UqZy", "dOB0MThZW6LwcAg5": "7BYBVCbi0ifdPyKf", "3SwHekWIz4rXlH5j": "w99HxCjXWcaXBcfX"}, "notifyUrl": "XeV7BXefsSgZxSYn", "omitNotification": true, "platform": "aGXEbnmWR0H3EkrH", "price": 33, "recurringPaymentOrderNo": "oz6qBQnEDgX49n1x", "region": "TDFcmOm1sqdIWU6E", "returnUrl": "RylESgf5dXMrPoYS", "sandbox": false, "sku": "emsp7o3F2LQw7Y2V", "subscriptionId": "dSxgXez7VvS0C9JL", "title": "VQQPa7PPx4Zi6WaC"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order '8wk7HMbJhNwZgf5n' 'lMDORYuXnPNJgayP' --body '{"description": "FcyUnKXA3mcyMmX6"}' --login_with_auth "Bearer foo"
platform-get-user-platform-account-closure-histories 'WF8jtNAVOYqSH533' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'YlJ93CCGBXv4fP4V' --body '{"code": "PzhcH4UJrrCKvrOA", "orderNo": "i7lMgkVWJYzSCIDx"}' --login_with_auth "Bearer foo"
platform-do-revocation 'WUxgOzeRNHIqK5PT' --body '{"meta": {"404mFw4HJv5T2kIQ": {}, "OecfLsYKTmUnKlrO": {}, "sJmEwjGYN8VNPXNs": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Nintendo", "currencyCode": "VSGQyTzhs9Asy4d6", "namespace": "29N4YnolVWA2dWxB"}, "entitlement": {"entitlementId": "s056jkPCUuE1pgdH"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "CWMXxVh8HTrKqVwn", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 28, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "System", "currencyCode": "N5xMRgU7cPqNZrLC", "namespace": "RRUysya4J3rvTzMT"}, "entitlement": {"entitlementId": "MSwrNov2GW9i54JY"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "3AUWFTLq0W1JqwKs", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 83, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "0L7IOHlf6j8PZOzU", "namespace": "iQKZqz5NSp0B7LOD"}, "entitlement": {"entitlementId": "N3Boi2sSAO2n4MZQ"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "RcZ8NK4gkLmvEOaR", "itemIdentityType": "ITEM_ID", "origin": "Oculus"}, "quantity": 3, "type": "ITEM"}], "source": "DLC", "transactionId": "zc1RDVhs2lhdzxxg"}' --login_with_auth "Bearer foo"
platform-register-xbl-sessions 'ibuqUuyW3cMz9Yyd' --body '{"gameSessionId": "uMomEHcU15St4v8r", "payload": {"y8IyqNVv0KVpXJTM": {}, "x3Y8Um1iqehObg3O": {}, "Z9j0HDtbqMFlgHKQ": {}}, "scid": "IRtLfPngD83roOeq", "sessionTemplateName": "E7fcCAeExeQX43Lp"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'mdMiZeyIrA4QUKSJ' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'gECzvaWUCA7wKru7' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'ry3AQ2sEHvSxjWoM' --body '{"grantDays": 94, "itemId": "rNJLM0OOVG5cG6Xx", "language": "ENbWqlX7idzjpKDf", "reason": "wl6XlCF6YxFMD8tJ", "region": "QwZvUVInos5RK100", "source": "yH89i8ZDPXRL8cbT"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'AntB1STaab1UeibX' 'g7RCe5BtKcwj6Pqq' --login_with_auth "Bearer foo"
platform-get-user-subscription 'OgCimr3ZQNBBkrXu' '9czsYr3cFeVw70xd' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'NTuOdLKK0M2B2hbq' 'Jin37P69t1KqeGz7' --login_with_auth "Bearer foo"
platform-cancel-subscription 'qbPnXEuOzzkoBmMR' '9C4qPqJrAdh1HIk7' --body '{"immediate": true, "reason": "kyxoUzfMFoXCOguS"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'q2A4R3wDdSkNfHJt' 'A3QiX9ZvtydbaVb0' --body '{"grantDays": 37, "reason": "kH42LtyZKrTJo0L5"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'sHil4Q0mqa8Gatrj' 'bJ5YT7uvqarTvrG1' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'DXZAWlvz3c3XALMr' 'esGFfsH4aXCDhshv' --body '{"additionalData": {"cardSummary": "EF8rHd250nyihcUV"}, "authorisedTime": "1987-09-29T00:00:00Z", "chargebackReversedTime": "1984-12-15T00:00:00Z", "chargebackTime": "1974-01-20T00:00:00Z", "chargedTime": "1983-09-19T00:00:00Z", "createdTime": "1988-11-04T00:00:00Z", "currency": {"currencyCode": "ZoTRUkjGoRkPs2SO", "currencySymbol": "9XrgXNIaU11cBXLw", "currencyType": "REAL", "decimals": 78, "namespace": "opqeZtHJnRgaGfLM"}, "customParameters": {"FbvyI5PZGzVLcmZK": {}, "KKYARape2tsNczam": {}, "4Cdd1QYvww4XDokl": {}}, "extOrderNo": "tgq2vXtUnY6UhDJ4", "extTxId": "pe0s0Cuhl3dU9b4s", "extUserId": "eYCyiB4tDCWx3cEX", "issuedAt": "1971-07-07T00:00:00Z", "metadata": {"1of79zVTWIfgdNph": "qe9fS1m77MAg4KoZ", "QPLhDSJx9jzxaRKp": "h4kiIFgS4fLqlrKG", "iS3XxjkyNfj3XgTR": "TjI9oNBzgQ4CRwg0"}, "namespace": "sKVeSpMny0GrvKI5", "nonceStr": "EVB9ZFzLNsjdCFtK", "paymentData": {"subtotalPrice": 77, "tax": 75, "totalPrice": 2}, "paymentMethod": "sxR0rCFkyiQZfMnT", "paymentMethodFee": 4, "paymentOrderNo": "N4UWbQaKFrTv4JWE", "paymentProvider": "CHECKOUT", "paymentProviderFee": 46, "paymentStationUrl": "mOCxqPrq9I3XJWBx", "price": 93, "refundedTime": "1976-11-05T00:00:00Z", "salesTax": 1, "sandbox": false, "sku": "pW9UlEqtzDd7Sgxd", "status": "DELETED", "statusReason": "SJCe2ksG3nZE13H2", "subscriptionId": "fILFzOlAZbDQAEJL", "subtotalPrice": 3, "targetNamespace": "y7yJMowQ6LpHCvCY", "targetUserId": "TgX9JQwErzjtuP9p", "tax": 96, "totalPrice": 96, "totalTax": 44, "txEndTime": "1981-05-11T00:00:00Z", "type": "NNfQSYLFKSl3FNFF", "userId": "Jnt3rIwZdW02Su6a", "vat": 59}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'i7BycDPckeGJUgU8' 'bD5mGFFmKTTUxG0m' --body '{"count": 31, "orderNo": "ILI42BJMPkZmay4C"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'sye3iJLtjsu6ZJRC' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'oDq3geuHFFaZzPIj' 'ETqcKN1gaQ4Bn0cP' --body '{"allowOverdraft": true, "amount": 55, "balanceOrigin": "Twitch", "balanceSource": "EXPIRATION", "metadata": {"aJlw31pdDrXQ47WS": {}, "GyDCKF0LLhO3lGZ7": {}, "eGOPj2XoFug8BUQU": {}}, "reason": "mPHnPumcazKAna0j"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'i757aNDFeKnQP2j2' 'WsQImTwYkiuxzLrb' --login_with_auth "Bearer foo"
platform-check-balance '{"amount": 74, "debitBalanceSource": "OTHER", "metadata": {"0BkGzCNgesQlZZHI": {}, "ZH0iks6kx0adnimP": {}, "yyzezsHdFftHHR6x": {}}, "reason": "bcVVonwz27DWfGRV", "walletPlatform": "GooglePlay"}' 'ojkCMmYyTGO07foR' 'Z6FujpIWo0qJtqp4' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'Q6XgICLgMHcP1eE6' 'sjWQllYsONpp6QGW' --body '{"amount": 46, "expireAt": "1985-11-23T00:00:00Z", "metadata": {"OXSGwQkJuy9oLFcH": {}, "HcraLXR2n9JQvq7N": {}, "KWIHYsii3fCh7sie": {}}, "origin": "Twitch", "reason": "ulfmya73hX0a8Ri8", "source": "TRADE"}' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform '{"amount": 87, "debitBalanceSource": "PAYMENT", "metadata": {"wYxedGHCIkmt4bfJ": {}, "OhNaIT0pv7XeqO8g": {}, "Y3c4SryWB4yRaDxv": {}}, "reason": "xwaLM8HkVOW8PnLk", "walletPlatform": "GooglePlay"}' 'mzJbdkykVAnmnRfU' 'ilcKA84d9pMsl7zr' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'NJvDiP2hNNEI8QrQ' '6H1ro5CtU8UjgyCU' --body '{"amount": 31, "metadata": {"7BCK4FeVGrl5NpUG": {}, "9zblWEiHaUjyTHb0": {}, "sSlstb3slUe94Nxh": {}}, "walletPlatform": "Oculus"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view '68MXUq3uIffkIpPm' --body '{"displayOrder": 36, "localizations": {"uKvtUVtqbDWnJ2i9": {"description": "TRmJOqIl7U12hO5v", "localExt": {"pk9DOSgbsdGVPLD9": {}, "A5NmuZDUV3yHurgO": {}, "fba1XeoHYTNoRol8": {}}, "longDescription": "4UlkxtP5Vok9sNK1", "title": "ORg3tChsS3fFpaS1"}, "uq1mH3oYfPK2QiAU": {"description": "hIfi17YrkWHNxiaN", "localExt": {"yqBfgw58Hx0XYL0f": {}, "JOPYpnPqGlPnhBDO": {}, "WqDU8N3DjVUt0n0j": {}}, "longDescription": "fyDbtIXICLkK8Zvb", "title": "nTg3znlg8nmzQx1R"}, "sYhcRlv16Wwe8YK3": {"description": "lZFslECI9QzuQcsj", "localExt": {"FehD6uTDYnqyNgN7": {}, "GoeMsezFZsTBHkgc": {}, "J0DcEt23pci6xElj": {}}, "longDescription": "er6aGJx5OFp3jKEx", "title": "4aSGdwTPX4ig3NVF"}}, "name": "FkP7O3F4vsohRWDy"}' --login_with_auth "Bearer foo"
platform-get-view 'GYIVFDbTvRYfpJ4w' --login_with_auth "Bearer foo"
platform-update-view 'M9WZfOOxAzmsbhi5' 'QJuc2SNBaOlXfgsg' --body '{"displayOrder": 56, "localizations": {"08jKedx0CVRpd7Sw": {"description": "Zw2UkjDzJ4NuMMgI", "localExt": {"13nplXaUQV5QEvKE": {}, "lLfbB7gwwAR1xFrn": {}, "yirw3iJt5iA3JS2x": {}}, "longDescription": "eaJ08JrSHPqdhKHn", "title": "6ZjZMdr1C2TIQzRJ"}, "Y7UfYSrdN0JVz4U4": {"description": "3EcV1FRyeeqehMNe", "localExt": {"RYKeMbL0G4v5D6yl": {}, "ZguO918X7rLoexHB": {}, "MBMMAYokSWFwajRG": {}}, "longDescription": "UyklfLVY6g3PO4hK", "title": "AeF4GUV5m96qcCJs"}, "VOWtu5RPsqd66ImB": {"description": "EuhnaxZVf6MD9r1y", "localExt": {"5Ihr531Kajxq7lzu": {}, "VRVEvhKIbrq1xsGp": {}, "dobYun8hcO55hVjf": {}}, "longDescription": "WyK02w5QytAmkanu", "title": "kAzAMaRvIUhUwguG"}}, "name": "gbLLN3O7CEYjxqEl"}' --login_with_auth "Bearer foo"
platform-delete-view 'P5lA2FJ0iGLRTXGs' 'C5mxxse4eeuMgEct' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 98, "expireAt": "1982-09-04T00:00:00Z", "metadata": {"CymCDYsuff3b7G5F": {}, "DX4mu0qPHb9Ll2EF": {}, "Eb8GnsthmQ2Y6ZGO": {}}, "origin": "IOS", "reason": "IcFN5JL9M53Mg0Mz", "source": "REWARD"}, "currencyCode": "bzDRzbhMxfEDE4Tr", "userIds": ["F8QHGM2IuQYBO8m0", "HgTth479W8rXqwGV", "tIHyyMq79EdB9Mxa"]}, {"creditRequest": {"amount": 72, "expireAt": "1983-12-26T00:00:00Z", "metadata": {"NKDtMqMrAGpdyF6W": {}, "DHn3ePBxQNz2IUEH": {}, "Mzl5jhwVDsuzwJ4v": {}}, "origin": "IOS", "reason": "0eoaIBrTh0EKkJio", "source": "REWARD"}, "currencyCode": "kjphURs4ksgsKJ2R", "userIds": ["PvwA9k6yJz03NETd", "6Jacwwu8W1zvrKMR", "ywPqYerrpOm4M2pM"]}, {"creditRequest": {"amount": 67, "expireAt": "1973-10-15T00:00:00Z", "metadata": {"jUt4F1ZVy2qFfSr3": {}, "psWjOyHLyKe2foqs": {}, "VIfgBTr8RcxRQR0N": {}}, "origin": "Playstation", "reason": "dJzf3TMhSaynVs05", "source": "GIFT"}, "currencyCode": "BG7REG4meKEabfVX", "userIds": ["fiNf0DOHKwxDF5GJ", "BJPIZqZC5d6JuFdc", "hCjVHiCn2hTefT8g"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "PFJ4WndMpQhcLK0W", "request": {"allowOverdraft": false, "amount": 89, "balanceOrigin": "Other", "balanceSource": "DLC_REVOCATION", "metadata": {"mQkwC8azx3IRWme3": {}, "C6p2r4D3NQdjrjkX": {}, "3AMgK3JgZufzssA2": {}}, "reason": "84mG7uAojLYBsx8o"}, "userIds": ["691j0FZp2vjOXptx", "qMzbE0ljQaBtb47V", "zx6kkaZYpl52sQR9"]}, {"currencyCode": "Znp5d1eSwrG2GBBE", "request": {"allowOverdraft": true, "amount": 62, "balanceOrigin": "Other", "balanceSource": "DLC_REVOCATION", "metadata": {"ZNwKjnX7vDIqpcjm": {}, "aq5KBCsHlwNrfKJr": {}, "kzwR40tfd9GFXCht": {}}, "reason": "xB10d4Q8nlBthUSu"}, "userIds": ["Zs9lSQVDp16qVIqX", "4WNfTvD5UcES1eLM", "CK9dS5JTbdJEe6mn"]}, {"currencyCode": "kYAfw61kyKk0UXUF", "request": {"allowOverdraft": false, "amount": 5, "balanceOrigin": "System", "balanceSource": "PAYMENT", "metadata": {"omtjoU1kUqRedwIu": {}, "1TSRr6r8mzfMedpc": {}, "KhvHPlvYanGqEkn9": {}}, "reason": "OEVwLWGT4MXhmzvR"}, "userIds": ["VfiAMa6Pco7Mfvik", "Qb7c0vmjWq9fQqzu", "lLGfQMqSLQDlRFYM"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'slpyL9BYLVVznF6h' 'MYfksp8VQhYSFeBO' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["p0ilGQFwHUtZugbl", "T3aIDKn9qJXncm5i", "gpAewbmnWk0E7YaP"], "apiKey": "blcWEyNgvs5LEZrQ", "authoriseAsCapture": true, "blockedPaymentMethods": ["nuhQuIdvZdj6AspW", "BfRnLcLbp7OmcrDJ", "7u1rrRPcnG89rnNW"], "clientKey": "1Yjfn8lY4DnYRxY8", "dropInSettings": "ZhHeb0CaPFDjrSot", "liveEndpointUrlPrefix": "KnpJWALpToj9rgr5", "merchantAccount": "RffM5JXvPdzEpDln", "notificationHmacKey": "04F8BQjzobhDa8Vx", "notificationPassword": "KOrfVfBRIfkStOqd", "notificationUsername": "XqhDMQ6tBLljC7gc", "returnUrl": "T3M1DArk4L80aXFY", "settings": "7SQkym9KvKMHK5fb"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "qioeoRIplY0DIzRC", "privateKey": "NAO6ZpqXJmPJso6M", "publicKey": "11LLZWKgWxn9YL16", "returnUrl": "HQdtAneXGgxNg33Z"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "IUrIkfmdXVvaPQzz", "secretKey": "KdFg7N7piT8VcrXL"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-neon-pay-config --body '{"apiKey": "ZnuMNpKEIs3GC9VT", "webhookSecretKey": "K7tkJWFpHt7MdKu9"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "Xwn5GHJDGatrYOMO", "clientSecret": "91CYEjX867n9PT9f", "returnUrl": "R7mMuBXPDKCriRKz", "webHookId": "TZ7TXAVRnUVbxEJc"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["KHE764EwhQfxFKIO", "GT1WKSmLoA0ILaES", "C1GJXsoBwqh0TQXa"], "publishableKey": "2j7v3zQJoQLTAlW7", "secretKey": "5icIKUpXazsFrmaG", "webhookSecret": "Noi3RPTgWotLNz0u"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "8ySxA0yrjz4q7e0E", "key": "JnADXC2y0DY1E1SM", "mchid": "K9oA4vK56dsYI5SK", "returnUrl": "V5pDANyJ184miBhd"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "VJt81fmLSyGuu5rb", "flowCompletionUrl": "JVIwRMtwApGbXnR3", "merchantId": 51, "projectId": 47, "projectSecretKey": "C6f2MHGGedk0KzXR"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config-1 'clOXdPYZQxBnttu4' --login_with_auth "Bearer foo"
platform-update-adyen-config 'yW5etl4Xk8Hd1lRt' --body '{"allowedPaymentMethods": ["oPMvsu9oswEPTvzw", "wGnpbx8MCIjKzylq", "W8auyseP9wEEyYAn"], "apiKey": "HPp4XzVL5McglFCr", "authoriseAsCapture": false, "blockedPaymentMethods": ["sXVtBOEetHsxAJ8N", "y1LRkPU9hrl5nkpE", "dBe8bYWdok4UnUEO"], "clientKey": "yP0cPZf5OvolfI0m", "dropInSettings": "qZctohLheRaQkfML", "liveEndpointUrlPrefix": "FW9B7jHZro4hhwnA", "merchantAccount": "NAGp8zGqNGrcQyoA", "notificationHmacKey": "1TWPcy83iXfYXNdM", "notificationPassword": "kdg9TMwxNcQ6CkVi", "notificationUsername": "8fqVPRqNbF5yLnYS", "returnUrl": "a8xFLvcYexMMMiDF", "settings": "h5RbW021cHN3QbzV"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'uJZH3k54cExxWKtd' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'GTW4FILotv5ycTa0' --body '{"appId": "i6ifYP1zfgjsy3VR", "privateKey": "jX4qA4g9OGoWw1qn", "publicKey": "CAvdnAcokJ0rzqX2", "returnUrl": "KJcYHgiFDxclBXap"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id '6j73doCWxhubMXbx' --login_with_auth "Bearer foo"
platform-update-checkout-config 'NvT6wAffv4uzKAwi' --body '{"publicKey": "I4wTxNIefCmtrxWu", "secretKey": "293551nQBNKcqCkU"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'XRj8gQHEe4CO370O' --login_with_auth "Bearer foo"
platform-update-neon-pay-config 'sbzRKKPd6mjzLxll' --body '{"apiKey": "UrFYn7cSuO7NxKHU", "webhookSecretKey": "Hg0c4X7fHdITmN9o"}' --login_with_auth "Bearer foo"
platform-test-neon-pay-config-by-id 'paF0kh3pCRB3infE' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'VxArF7TB6A6a71zA' --body '{"clientID": "JpaPeudUtKPJUmAv", "clientSecret": "xBxJNPlvvYZw4MWz", "returnUrl": "WFTuNPf5JCSDyYy4", "webHookId": "e5qoTZxSoZbQUnUx"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'S6m68WL3HDL4yx5I' --login_with_auth "Bearer foo"
platform-update-stripe-config '0euBsccHPA2v9XP9' --body '{"allowedPaymentMethodTypes": ["enfEX7lloLgIYqxF", "fSNJlHCjxLNnYUlG", "QsFpy9ZVlLIFwLgT"], "publishableKey": "78nootfUs9559ilm", "secretKey": "3cauhrw9Yn2z5cnb", "webhookSecret": "m7z2Aa24yBTw3wfN"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'GyWf3VujS7Bq5bcf' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'PW4pPZB9YXltCxyz' --body '{"appId": "tUnj17t3gHBXvjvz", "key": "iexzOLbOWbtcJUxM", "mchid": "3AWyDkA5LmART6ku", "returnUrl": "lpM4SRtUE5P4kxmH"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'tFbjqurHix0QYycD' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'H5we2Mx0sYCnYPT4' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'i4mxc14iRfzJwKuc' --body '{"apiKey": "7EpiQEzz5N5osRYO", "flowCompletionUrl": "7wbYh7q02W8tkTUR", "merchantId": 95, "projectId": 64, "projectSecretKey": "0k2smdkBS2MaIP7P"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'jngEFggq91cpgvoD' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'BgYfLBdGNAZEvbvx' --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "K7VUbjUnzirnEsxS", "region": "E4vBzG7VK8sWEshm", "sandboxTaxJarApiToken": "Zf5fEdvjbyJPQ1qd", "specials": ["ADYEN", "WXPAY", "ADYEN"], "taxJarApiToken": "jsme1OukIfIZVH8q", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config '077gxaj55huTA6Av' --body '{"aggregate": "CHECKOUT", "namespace": "mTkFvB7wkY6nuUEG", "region": "J3k0HGtpK43uORGR", "sandboxTaxJarApiToken": "EOOwTuY8dhNCDWWp", "specials": ["CHECKOUT", "WXPAY", "ALIPAY"], "taxJarApiToken": "tedgFUzBm5vGA3it", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'gCG7JwJCDqkzOdFw' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "LJpIPxzLE1V9U1Ng", "taxJarApiToken": "pH7Oc44yjRdfqZgv", "taxJarEnabled": false, "taxJarProductCodesMapping": {"GqqjelcN0GJmPwUT": "WMx0MiPAjnWIhFrq", "Sn4erXEtU1CaD8Aq": "sMCGBNhmUt6fzYRn", "85brTu8F7cuCPh1T": "GZJmgWNHWnvOBRCt"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders '4onqRo2PnMSRarKg' '4coy3AFpULIn21Nf' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category '2FNgDWNC6yh7kgTH' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'lrxKbsV4XtrI7SFB' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'EgkwHifMHYI581Hb' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'XBOX' --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'fBS3ZIHofhwyM6Bw' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku '2sFGQ5DQoDwzrKPO' --login_with_auth "Bearer foo"
platform-public-get-estimated-price 'ZZnV3zR7YxSu6add' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'ocg10Hy9jx7gBHTO' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["HHArjld0LnREsrrB", "2pJ7V8BSrucjO3zv", "SM5KeVNHU9GcOivI"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'fcCJt4U8VSgXoi9F' 'w25b9qXzlIK2G6AU' --login_with_auth "Bearer foo"
platform-public-get-app 'jBCdf0Rp5e5IvFuN' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data '1oUsCnBmGMx5F6Eh' --login_with_auth "Bearer foo"
platform-public-get-item 'M3dKvIG9MR0hTINv' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"neonPayConfig": {"cancelUrl": "q1VR9SJUfQEX996M", "successUrl": "h1sQ3Dw3uyjgQNAs"}, "paymentOrderNo": "9188Qm3W1De2McGd", "paymentProvider": "PAYPAL", "returnUrl": "0wefF0CJlH55RLEg", "ui": "eAsSpQdcmGHZuRVQ", "zipCode": "8tzwqMayP8A3HGNI"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods '3BfjkFd6MHo6gGQ5' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'mChYoKD7yqCR03Ro' --login_with_auth "Bearer foo"
platform-pay 'vQZhwfjkq9iyTbyD' --body '{"token": "3D01tRpuuyIagSSz"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'EL8H4euLufhQj2KP' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'WALLET' 'Lxl9Hs2L2wlpKBVU' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'RxHefz77a9fntCNi' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'HBRUNCPSre5GmZzC' 'QwilS3IxSjlyvR9P' 'STRIPE' 'KC1h6h45u0wuh9pY' --login_with_auth "Bearer foo"
platform-get-payment-tax-value '0011jSmHFTtfM2mG' 'WXPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'Upq3ix7Am7W1fwJn' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'V94BrMSP31wAkVH7' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id '5UcmNXK5RqcIo9lp' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'z9oM52vHPlwVV3jl' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'PKDEYahnlLJaLCvj' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "RKKX1brmkJDfdngb", "language": "UeFv", "region": "O8U3W94Z8IW2MAL9"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'gYHEV3wnTZTvYYf4' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'ZFuV6L2AldoWWRN5' --body '{"epicGamesJwtToken": "wNYlFiliYmBrqrOc"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc '0NIligBrOkBljwRE' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'Njt04ZpyTTZG1LxL' --body '{"serviceLabel": 8}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels '2S4Yw8NmPaBeryzX' --body '{"serviceLabels": [68, 62, 15]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'OPVVFqVqxjq1iG3T' --body '{"appId": "ySOh8SI75oXbyq8F", "steamId": "Bbur80QwnlgAVfqz"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc '6gQJh8sn0bVWRkvm' --body '{"xstsToken": "Aemh8lioBR7xTXcE"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'IFod3lCzvjHzDHOr' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'SJ1vbB7LRHd96dGL' 'gkfrZveFMWAFT7l0' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'l1jaOAMCzbsoIgmK' 'GAME' --login_with_auth "Bearer foo"
platform-public-get-user-entitlements-by-ids 'T1Gofv4SuaZ8yCB9' --login_with_auth "Bearer foo"
platform-public-user-entitlement-history 'TVZnuzgvAZJRm71E' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'C3ENuvD8OPsp5Z3e' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'z84KVB7HeWPnVeFd' 'y5ezlCU6SGzkMpTL' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id '2wxobjxAbagqEmXn' '6U2VeV2emK3JecJA' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids '4skqCbPxRkIAFQh9' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'yDdoLE2s7mrVrmTJ' 'wtBTzQTrNo1LcWNf' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement '7xHpi1JZJjIRtCfq' 'DHSlo54zSnRN0zGM' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'worzym1z3ZdetOic' '9AQOFWpdItLBhvKJ' --body '{"options": ["q9tWz9yui8a6jOfl", "FJlZEhz1QDeh05hj", "92bwVVxJ62Q5AOAO"], "requestId": "yL65cPaOZA8BG8Kc", "useCount": 98}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement 'QHAM8gSdIybKUByH' 'BzfvgtRTPPzwJmKa' --body '{"requestId": "LCx3gcidEALWe6RG", "useCount": 16}' --login_with_auth "Bearer foo"
platform-public-split-user-entitlement 'wWznu5AjwR1Z4fU7' 'ICcaQtuuKUw3dUwW' --body '{"useCount": 70}' --login_with_auth "Bearer foo"
platform-public-transfer-user-entitlement 'uSfNNpJUYzJxnOyv' 'qmswrToyBIQumxDf' --body '{"entitlementId": "AxNqCUtizYM97ebZ", "useCount": 4}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'Lgohp8ByTi2F6AyU' --body '{"code": "X8w77riPlPgJcLbe", "language": "QFUa_aXzx_771", "region": "HzJ2v9K8c1zOlZg3"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item '0pagfP0FfOMBOpeQ' --body '{"excludeOldTransactions": false, "language": "al", "productId": "rmPBsFH71VrhsISY", "receiptData": "tegQbNA2WQrHTkJT", "region": "1VkChD3n0c1ryAkR", "transactionId": "vdPR8gx2rX5dck8N"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'FKPgT6LMehg047ax' --body '{"epicGamesJwtToken": "U5ktNywRIvO2Sgz3"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '0hejqdktHIO1VdtM' --body '{"autoAck": false, "language": "rSb-bk", "orderId": "fKDcDG5bMTba1tUl", "packageName": "FGcP6eL7EpWtPifm", "productId": "O0JK4dP1aZFiSkmh", "purchaseTime": 46, "purchaseToken": "l7GbG1ISBCkcnpxK", "region": "UxLjmxhBS6YypRW7"}' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'fNntaIEtDI6Mbhxk' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'Qdezbmf392ersoZ2' --body '{"currencyCode": "KbMb5jal0ruZmBXl", "price": 0.5292035016729647, "productId": "Sp85q6fuGfo5wSDH", "serviceLabel": 27}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'LKPPIZx0zdNAagip' --body '{"currencyCode": "ZwiaBrFrXtGMjujf", "price": 0.5355675851785076, "productId": "ZB1gMI1B8DXb37Df", "serviceLabels": [98, 11, 94]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'ldefonHJZAiX4abm' --body '{"appId": "qqi90KTWwZk0HGeJ", "currencyCode": "NaBjVdMB5kMzKycY", "language": "HKS_835", "price": 0.24787486367246436, "productId": "WwIVXp9avUr6Iydp", "region": "XW0MO0eT9okl6MlW", "steamId": "Ol9feWO2bmOikTBJ"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 'HTEm5PSeyod5L6Oo' --body '{"gameId": "oYoQn9iHEqWO1cVC", "language": "jp-dWhA_894", "region": "i3GOQkLtpuRNeT1C"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'ULEMPaOU5nukycAU' --body '{"currencyCode": "lkUSZKUrsxNRzF3N", "price": 0.009475184635936884, "productId": "UuCyQyze6zPKu5sE", "xstsToken": "89JW8UU0RsB6dvrp"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'mInhHYzVVlHGFSwj' --login_with_auth "Bearer foo"
platform-public-create-user-order 'by6rMYkVQnZDUAbI' --body '{"currencyCode": "NRKQsxUO1YMxAndO", "discountCodes": ["JyqwFVBd1ZjaRXEd", "j5O6IBwXJjgQjgLo", "WgS12bSbPgOCWUog"], "discountedPrice": 18, "ext": {"ryNf9VGxbOeJe4n9": {}, "eUlBQZ2UGePWXbAy": {}, "GiXa9nUsHCVicuJ7": {}}, "itemId": "onrUXVlB6xNel4Bx", "language": "qv-giFR", "price": 7, "quantity": 15, "region": "o7gOFVLZCBWuVIRO", "returnUrl": "ZuqdJBi8pkn98VtL", "sectionId": "NkaIQJfkFDhSeSGX"}' --login_with_auth "Bearer foo"
platform-public-preview-order-price 'tZU5SuIhMSaDRp17' --body '{"currencyCode": "dUWHcjrb6qNeKpOx", "discountCodes": ["KwlJQlj9Ii2jARwz", "PrlG9svdqsiVTqPb", "zY1yxl7zeEpmSPO6"], "discountedPrice": 29, "itemId": "1CE1gu6cYuzC77J4", "price": 16, "quantity": 18}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'rvZ9tktWLtDdlmVG' 'K6iolEw6IIpDc9X5' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'ijmtDGvd9ESdY0eT' 'kBWA44Qqsi5yOjvl' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories '5sRN2ENn1RLi5iMP' 'nbg7o1zYpqUsliPy' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'XZGYIW5ZDtWbdkzP' 'P47RcUIi2CoNj4EG' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts '2emxKQk8cBrt5E8k' --login_with_auth "Bearer foo"
platform-public-delete-payment-account '8rzDZ08j6ICP75cm' 'paypal' 'YDChFi3zLvfQWC85' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'MxWxvW0veFl3uU1a' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'MD0mczWxc8f1s2QP' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'MMZsf2dvKZyHChRP' --body '{"currencyCode": "HvdkcKW21B5EFtD2", "itemId": "pYaKTz1gcE2XCwTk", "language": "Cvjz-MTcq", "region": "VsuzaBciSxwzuIpG", "returnUrl": "BYHTHoSVxgQCbpZx", "source": "5yMGIQ1ZxVIefYlK"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'BJyQMqUEfDikX6yO' 'lgZrn0I6T0hvcAFT' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'aSWR4VOGIY7hM6uh' 'onkAe0FdTSSEluBx' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'M47BTww3nBTVmBFZ' '6TIs9bTi2m7eNsYE' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'qKkeuLWDfeFeExlO' 'FjRh8mLFTJLveQSD' --body '{"immediate": false, "reason": "1HCkf2Sw78lLGKjD"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'HuXt358gzqRMuMPr' 'Iekxq58fikq83hqJ' --login_with_auth "Bearer foo"
platform-public-list-views '7HP63Se6kVW5fkl6' --login_with_auth "Bearer foo"
platform-public-get-wallet '0ImLBv6nUU0r1rfX' '9stpvJUuyPdzx8BM' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions '2wEgTtLRT5stwQFU' 'EbTPQ8p7VMlxEXnq' --login_with_auth "Bearer foo"
platform-query-items-v2 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'HwMyKpwphjUXvM1G' --body '{"itemIds": ["qMkZ44UXgdBqtJaR", "yDlP9qIZJ5Krx6Kk", "HagEugKJxkU8Y58C"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 'OtTNjnNSikJDg6uj' --body '{"entitlementCollectionId": "Kvq0CIa1YCK9PlMe", "entitlementOrigin": "Nintendo", "metadata": {"4reG0HwUXxQTf5Yp": {}, "DUGYsJBEkYUrLv4q": {}, "UiTkFcLBrg2JB0Wi": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "cUVq2XPljTZj5R0y", "namespace": "ZSVQ8SSeJ4qy4PIK"}, "item": {"itemId": "leuV271bwZ4niLSz", "itemSku": "Qnv0C00dtNGGzbGY", "itemType": "SYo9fY2EBZAHQXc4"}, "quantity": 31, "type": "CURRENCY"}, {"currency": {"currencyCode": "S3jyCkGKltBNE2Ub", "namespace": "hNtH3yYg4Qnn2uhd"}, "item": {"itemId": "w7C9Bx1LQOTCbAPL", "itemSku": "C3iqrkyJFOVaewFc", "itemType": "v9h31YxuZnoSesWp"}, "quantity": 77, "type": "ITEM"}, {"currency": {"currencyCode": "UHjGaIcZN28gH4Cd", "namespace": "9xTdt2K1CzpQWslN"}, "item": {"itemId": "GnLYUYR0yOvJhUjz", "itemSku": "cMtwINUlrhIpnlam", "itemType": "2EefVopbpPhsana0"}, "quantity": 41, "type": "CURRENCY"}], "source": "REFERRAL_BONUS", "transactionId": "GUTV1BwgkLDj4pjV"}' --login_with_auth "Bearer foo"
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
echo "1..456"

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
    'ktyoNSsEHlzyd0Sa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'rkhltUxgbN5eElQN' \
    --body '{"grantDays": "ESFLD8hCc9onSNjb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'QEqFGwnDG8kz4kvE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'v6tNjGRhrmRAxRGe' \
    --body '{"grantDays": "IKGlCJmDXpjyvLSH"}' \
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
    --body '{"clazz": "B1y3klHuAGnidOyG", "dryRun": true, "fulfillmentUrl": "DXF5055tUlenimjI", "itemType": "APP", "purchaseConditionUrl": "NhEdxd24ZKfvMf1T"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'MEDIA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'FzYMf1jaCgZosntP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'zP1vXXB92q150WEI' \
    --body '{"clazz": "etOXMt37MXy7Fp7l", "dryRun": false, "fulfillmentUrl": "Wou1U0RVCf3gMWDA", "purchaseConditionUrl": "odCKqfqzeexHA70N"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'gJTxjtzgO7W3taRv' \
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
    --body '{"description": "J6lKWJwHO65aOFDw", "discountConfig": {"categories": [{"categoryPath": "pqy7XOU3DwglyMGN", "includeSubCategories": false}, {"categoryPath": "gHtB9uTCiiIoMZCj", "includeSubCategories": false}, {"categoryPath": "iOZJpUf9RpcfEQn0", "includeSubCategories": true}], "currencyCode": "6D8PGQuazAypgWhT", "currencyNamespace": "ED5YmPTBUkm2Fyvd", "discountAmount": 13, "discountPercentage": 29, "discountType": "PERCENTAGE", "items": [{"itemId": "koGynp6xcqNKJnAh", "itemName": "rSt96OaARAjHLGV3"}, {"itemId": "sNxS8uLBZiVRYIyQ", "itemName": "LcslTEqgVNG8Aqkt"}, {"itemId": "gvjwNJAwIpEy2ZNp", "itemName": "ojZ24I2n25smsrmJ"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 28, "itemId": "dh8hHlQyMlgfkTsA", "itemName": "ThLyflAqqAP4M78s", "quantity": 26}, {"extraSubscriptionDays": 10, "itemId": "dyge6DroOywOxI4G", "itemName": "6jZzoYIFAvYfT8XQ", "quantity": 46}, {"extraSubscriptionDays": 83, "itemId": "2EOq6BFjmN4OqKGL", "itemName": "RpNWzKZtZnxgywmr", "quantity": 18}], "maxRedeemCountPerCampaignPerUser": 58, "maxRedeemCountPerCode": 92, "maxRedeemCountPerCodePerUser": 32, "maxSaleCount": 81, "name": "XeWOGayfRkQvoN06", "redeemEnd": "1993-08-26T00:00:00Z", "redeemStart": "1979-09-07T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["3MEQNL6ijLRvQOgo", "aBooTawHLMxhx9nC", "3o6pXU5MDJLCB6Wb"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'RpgjooaBVemsbkaX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'ZQ6nTj9rZpkSntuO' \
    --body '{"description": "eaPAyPeEGBepK1Ix", "discountConfig": {"categories": [{"categoryPath": "4SwjCYjCHniVSn1g", "includeSubCategories": true}, {"categoryPath": "al5NrBtT0om9OlGz", "includeSubCategories": true}, {"categoryPath": "EmoIYwSxxAsfwDMi", "includeSubCategories": true}], "currencyCode": "XbCLbh8t0zPkQWRU", "currencyNamespace": "lgE0kxzFMq9ttbEH", "discountAmount": 53, "discountPercentage": 10, "discountType": "PERCENTAGE", "items": [{"itemId": "UxJ2xMSNNBxCeN3p", "itemName": "Gn46fGvodt413MRd"}, {"itemId": "G8qAPiANv2Ar8yXV", "itemName": "6qf6v5SgcJPZPUh2"}, {"itemId": "nHQwpWi8HZ6C0VJ0", "itemName": "fK2m6lQ5Ao8TITYi"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 90, "itemId": "W0L5WsiuITRMSPOU", "itemName": "fWQwr4PYf48r66Ma", "quantity": 93}, {"extraSubscriptionDays": 42, "itemId": "oxBiliy2vtRkpqL6", "itemName": "KrVcNz83J57t6OcY", "quantity": 84}, {"extraSubscriptionDays": 37, "itemId": "Q5bk5IeuAi3zWFGo", "itemName": "rCbncoj5RvEtXiKy", "quantity": 95}], "maxRedeemCountPerCampaignPerUser": 67, "maxRedeemCountPerCode": 90, "maxRedeemCountPerCodePerUser": 7, "maxSaleCount": 94, "name": "NfMiwgSvsTRmJsOm", "redeemEnd": "1998-09-01T00:00:00Z", "redeemStart": "1982-08-30T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["weFYDBPyd1jJBxbr", "buFay9PXgEQS4871", "QSmsspn5sNfifK65"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'tvaH9jwcO48pthyY' \
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
    --body '{"enableInventoryCheck": false}' \
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
    --body '{"appConfig": {"appName": "Ll90IBFsSb3FsV2P"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "llIqjJzuQ8GglVgx"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "L7c3COEP4AZx70uw"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "4XgvGTMHkXeEwuFJ"}, "extendType": "APP"}' \
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
    'ceaLdgPZI0fKW8Le' \
    --body '{"categoryPath": "QxItaK6s3Hha69Mg", "localizationDisplayNames": {"xjGJx62mkfVlu4bG": "B1pyk0PpxXZDy5Pm", "bu7RrD9a5mdlXTCL": "467xHbAiD3Pr3mXZ", "O1PnbSlfVRlAI8F2": "f3mEv09kAA5hnQtd"}}' \
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
    '4bcivHGIEplRpcHD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetCategory' test.out

#- 33 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'WcIoJ45L0Ze3Yamx' \
    'KDSZTl4UiJSCbG4U' \
    --body '{"localizationDisplayNames": {"mG3TkMTzOcBIciiK": "wRs1E7sH2G9MJ6F7", "Rr7O15jqeKssQpme": "6eyM48tE7eJRsXNe", "veQXqnFRYmEIX40X": "OUoLOa7oDz00gxco"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateCategory' test.out

#- 34 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'aH6u9TVf4DvEzpoP' \
    'RiClZ6rlwX99AHML' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeleteCategory' test.out

#- 35 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'HqguYykVWzNwPcvG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetChildCategories' test.out

#- 36 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'yieBsRUduW5lxSlo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetDescendantCategories' test.out

#- 37 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'rWEGN5bPGSOSiiIt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryCodes' test.out

#- 38 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'rSrEJMBAIwTLkrMD' \
    --body '{"codeValue": "FQfpQ9o0GJMTfqRR", "quantity": 0}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'CreateCodes' test.out

#- 39 Download
$PYTHON -m $MODULE 'platform-download' \
    's9lwvPKd925u3fFL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'Download' test.out

#- 40 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'V0YeMrVaYSTRYGFz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkDisableCodes' test.out

#- 41 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'gLZ7gEypQf2Pn9A4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'BulkEnableCodes' test.out

#- 42 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'gcbDJ0LmdnOPkIT1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'QueryRedeemHistory' test.out

#- 43 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'C6KGTpA7JZ6xullP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetCode' test.out

#- 44 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'ROSfiW9zcxmgNfTH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DisableCode' test.out

#- 45 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'u3vkZt9FgWckjNpH' \
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
    --body '{"currencyCode": "hM2ZXp4N0ROmUCTr", "currencySymbol": "S7Gi9Iigk9vamO7Q", "currencyType": "REAL", "decimals": 99, "localizationDescriptions": {"PeTu9evbRov7Bm40": "CtZiAxk43DGV1SCk", "w8U0d4FvVmPMtpRM": "WSQ8Szi1IrGidRmR", "5BGRJhFwxmkGfPI3": "j4luXQuuLtYa86kv"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'CreateCurrency' test.out

#- 51 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'L6cBZQssUUXOsXMN' \
    --body '{"localizationDescriptions": {"dvW1hbvGenRbm3Qt": "sY5WaKM5YY6pYrme", "MIHLS8egV8XhgDjb": "rum8UxcutmVg8APW", "Kxoj6MF68VuKDokl": "YmkytCAH8Jiqe7gf"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdateCurrency' test.out

#- 52 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'V1G6bYgIbVKp4Kge' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteCurrency' test.out

#- 53 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'w2mHDksA6Mv9Nzs1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetCurrencyConfig' test.out

#- 54 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    '9eBq9a1L8S1yduOw' \
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
    --body '{"data": [{"id": "scICro6P8FWIPeqa", "rewards": [{"currency": {"currencyCode": "BeD2uBAvIXEc2CCg", "namespace": "YcFo9A93o22UgObC"}, "item": {"itemId": "OiBWdw2b031dm4N4", "itemSku": "1MOpmm04BlZUAlYn", "itemType": "CT11qD03er5mdraK"}, "quantity": 66, "type": "CURRENCY"}, {"currency": {"currencyCode": "FdxXisVlo3aVOGAR", "namespace": "FDJcGWy826ilCxAx"}, "item": {"itemId": "QUM5DyrPfBmpZIzS", "itemSku": "FUZqVR5FWGfH66eF", "itemType": "CMTsLA8vYVvrIAEe"}, "quantity": 15, "type": "CURRENCY"}, {"currency": {"currencyCode": "UV0jsjAyVgxS54NN", "namespace": "s3XdhMbQX9D1znEW"}, "item": {"itemId": "w9p7g4UsQCTKDh5n", "itemSku": "9yc34xF8qFllM1LT", "itemType": "rl4MP3Nl4T3ujvV7"}, "quantity": 99, "type": "ITEM"}]}, {"id": "6ADLtn7oInn1Bz3w", "rewards": [{"currency": {"currencyCode": "M3BI51etn17OcmSV", "namespace": "HZ6wtPVAwgvxYxXJ"}, "item": {"itemId": "TduZp1nNYHREmm1c", "itemSku": "BuaRaGeM8yxRfejq", "itemType": "SbVgLd1FoyNFGpu5"}, "quantity": 35, "type": "ITEM"}, {"currency": {"currencyCode": "2K0IvVg5LwUygH98", "namespace": "dzTL8azKCCNBZpwR"}, "item": {"itemId": "FNYxx2dr6DDuDHXc", "itemSku": "fvXPXJURX3XwhOlg", "itemType": "cpcOIxqCMSpZxby2"}, "quantity": 73, "type": "ITEM"}, {"currency": {"currencyCode": "9vGOUeSeGb02vDPU", "namespace": "pv5VEdIG82dpIbfx"}, "item": {"itemId": "VFfdvKQVgPQw3MVX", "itemSku": "e4xBPDWHRHCCVDBR", "itemType": "jPUQWYVxGQVFJlDD"}, "quantity": 73, "type": "CURRENCY"}]}, {"id": "7z4Pb5jyGID39Ung", "rewards": [{"currency": {"currencyCode": "1D57FjYKlJiRIvhe", "namespace": "j77OSPwdzMSmrSvQ"}, "item": {"itemId": "dsAdTUGpd8KFrXKF", "itemSku": "A2gdjQCYoE8b0CZe", "itemType": "tLfpFNyp7375rhOm"}, "quantity": 89, "type": "ITEM"}, {"currency": {"currencyCode": "jShM2DvesmMIbiQf", "namespace": "aHxl2YUNRLRjgKqS"}, "item": {"itemId": "SYgZnVfa8govttlp", "itemSku": "FAq8oebnS4Y2zkGY", "itemType": "Tr9yJIveX52r6Inl"}, "quantity": 97, "type": "ITEM"}, {"currency": {"currencyCode": "JB9Al3mn2DsHDHzS", "namespace": "VJzhU5Z44zgZ1fie"}, "item": {"itemId": "Ldl3Y82DOj5kPuNR", "itemSku": "ZZaUccuBYep9n7b1", "itemType": "7fsblalJrwQiU3DD"}, "quantity": 79, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"ZFH1fHFLSr0O4rEZ": "TbFDj2L2McvCrrR7", "h9uKLXDaRf3pxKtJ": "bRY5luCwKrt6wn3y", "VrRCh6j7rpv8K8fB": "AeRa1R6ksxLYGkOL"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"fvV6SuHovoQlk5wL": "2oXDZ20Bw2H4tz6K", "UC4jXGj2G0GZ3JBY": "i9bBKBRpdbLCiwxO", "x2XQn94xPqXhqeNM": "DGA3O5hQAl6U2g9i"}}, {"platform": "OCULUS", "platformDlcIdMap": {"RLvP7ynTuXzafCql": "MrrVIehVCf3AwIzU", "dQ6sTrUg7Z0SLrZr": "aV3NLBUSrFnzE6yR", "1wLTgjsnB2LFVrZR": "rOntm2KjbfCOuW3d"}}]}' \
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
    --body '{"entitlementGrantList": [{"collectionId": "BmFwUO7Y0xhMLwxg", "endDate": "1993-03-12T00:00:00Z", "grantedCode": "pTSUppvO3QG68KeD", "itemId": "7QJQEEVDAg045Bvt", "itemNamespace": "Pd7ibBA3sd51mDoo", "language": "czWv_FG", "origin": "Xbox", "quantity": 26, "region": "crtt8L5dIebsw7Ej", "source": "IAP", "startDate": "1998-11-10T00:00:00Z", "storeId": "1gzH17IcfJyGulmB"}, {"collectionId": "yN5rcDA3Wcv9ouAL", "endDate": "1975-06-14T00:00:00Z", "grantedCode": "gLZZzLU9w8MJRIzI", "itemId": "gJKg9y86BgnBQtm5", "itemNamespace": "AilVhASFlYMVJtE2", "language": "Eb", "origin": "Steam", "quantity": 58, "region": "7pF73y9eALKWinUJ", "source": "GIFT", "startDate": "1971-07-16T00:00:00Z", "storeId": "AuUJ7Fxg5LijlQTV"}, {"collectionId": "q8Bh1p0NCKWNkLU5", "endDate": "1981-07-21T00:00:00Z", "grantedCode": "u5VbjwPa9rYgHaxe", "itemId": "TT3ebuaYPNBp9wA4", "itemNamespace": "LxO2n7WJQFzBCD9S", "language": "nel-xxpl-tQ", "origin": "Epic", "quantity": 21, "region": "pV0NtCxDDz5rxt6L", "source": "GIFT", "startDate": "1971-04-04T00:00:00Z", "storeId": "th4b4HtwEYX55pJN"}], "userIds": ["K45IAtbyUDDSJSV8", "TX1sDjSWiSXsV5rJ", "8eZXZ1TLMZnNL3DQ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GrantEntitlements' test.out

#- 66 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["pzl1lfIR7jnetIJP", "GObyWCLyFPHaxkKx", "EDvSoi2X9SygvMG8"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'RevokeEntitlements' test.out

#- 67 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'QAaWUhIguMvKDOrx' \
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
    --body '{"body": {"account": "0wQXKEroyKz2reP6", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 63, "clientTransactionId": "xI1VVtVrVT6Hn8B2"}, {"amountConsumed": 6, "clientTransactionId": "U5hujEfCMt95DEjx"}, {"amountConsumed": 34, "clientTransactionId": "Fyoczck0qJsgZPfu"}], "entitlementId": "elAiZBZcQGHHGI7c", "usageCount": 37}, {"clientTransaction": [{"amountConsumed": 25, "clientTransactionId": "I8ecZSvzXYOytshB"}, {"amountConsumed": 5, "clientTransactionId": "Ch8lmKKocC5Ea29J"}, {"amountConsumed": 14, "clientTransactionId": "n7UC7y1MKYVeoGFr"}], "entitlementId": "Db8unXv1iE7YgEZs", "usageCount": 32}, {"clientTransaction": [{"amountConsumed": 51, "clientTransactionId": "OJ0NiZl6OVLxKtkB"}, {"amountConsumed": 31, "clientTransactionId": "FBKgy92LYqtQcDN7"}, {"amountConsumed": 83, "clientTransactionId": "ncebaJ0DCuIeEStt"}], "entitlementId": "3PbyctX7HC2haQwV", "usageCount": 100}], "purpose": "2sccbVr6HSiXVzrG"}, "originalTitleName": "4EdKn8eypTzI497D", "paymentProductSKU": "G0ZNoJvvi4Ys50iE", "purchaseDate": "7IjZoDzMmMgoMxZZ", "sourceOrderItemId": "9AutWDfVOINhql9C", "titleName": "dDX4xiHpdfKH35RW"}, "eventDomain": "UUVEHCB5wzF6oLIr", "eventSource": "AwjAsgo51XHJBG2P", "eventType": "myeFaBiT3SyLHXZS", "eventVersion": 51, "id": "3X4m6wms9SPaHlqt", "timestamp": "DPry2vMON7sdhlil"}' \
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
    --body '{"bundleId": "fpDT8o2iFrYtGfCZ", "password": "CcrvsV2I4X26p21i"}' \
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
    --body '{"sandboxId": "DBZGJ8ZMLwPJ871n"}' \
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
    --body '{"applicationName": "V5ALS7cneNLItUJg", "serviceAccountId": "h74tyxkTR8ZCVJtk"}' \
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
    --body '{"data": [{"itemIdentity": "xjBJrNeQRsqkkKK2", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"XcCPaLXJM2B9bMoh": "kWsFKIdycYHQcu7J", "kKBcLFRf50Y7ME2Q": "mYiYqap7masUcayq", "mp7vhz1T6cSrZL2C": "gHxdmYDj9vZNgfI1"}}, {"itemIdentity": "AeYHe8WPQGPclChx", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"fbXrH6f2GDrNbLOj": "Gz34ct0ctEeH43wY", "uLnI7cTzIUERPlQI": "99hMc4NbiJWP5r9E", "wbIGMGJ70P9IqAyN": "lZ2OwFSebBkXkaxt"}}, {"itemIdentity": "Y97TMJH8bO4GDHT6", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"aUUkvlTKAhrxqHw7": "f813qNjzlcxXsmGG", "cJhauxfhVKIbRvUn": "yElHPuQE3Gc8bY4I", "H0OXHZP6VVB7qjDH": "MS49dkv8vxyg6giN"}}]}' \
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
    --body '{"appId": "KzeFnlgGRgYK3SeY", "appSecret": "vULYNIhs5PZGTJmg"}' \
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
    --body '{"backOfficeServerClientId": "ofq7nlF5Ch8J2Qs9", "backOfficeServerClientSecret": "90APOU4hcdwlnsTa", "enableStreamJob": false, "environment": "X6TN5ctYX1sZnYF3", "streamName": "hWmCCIrP0lJXexse", "streamPartnerName": "o2e6BCNJTTRIHDKd"}' \
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
    --body '{"backOfficeServerClientId": "VfOUr14yZH00n8Ms", "backOfficeServerClientSecret": "RjaB8iurBWW5jSJi", "enableStreamJob": false, "environment": "seeGJIqnatME8GnN", "streamName": "WfAY1yY6D1Euusf0", "streamPartnerName": "eOzoSyKttYwUUlMR"}' \
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
    --body '{"appId": "G8vO0OSsJmhOJDUy", "publisherAuthenticationKey": "yag9jBDJFJGOEiWJ"}' \
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
    --body '{"clientId": "8cLrryS5a6A4tL8Y", "clientSecret": "KMrUBL6dDTVwPIt1", "organizationId": "hrg2mhbI0NDshb7Z"}' \
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
    --body '{"relyingPartyCert": "zQuBPyNi1GhZHEj6"}' \
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
    'p5grjk5wzdksOUku' \
    '8dtQoIrpvmM19X4z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DownloadInvoiceDetails' test.out

#- 103 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'FOvdRTpGmBUjfEU9' \
    'vL8H96tuVfQwYIqD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GenerateInvoiceSummary' test.out

#- 104 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'WqbPmwQw8J7na1PO' \
    --body '{"categoryPath": "TXhXLRU5prAdqnnP", "targetItemId": "OiTVzAeQq6rnWJoT", "targetNamespace": "pYoe2uHaWnO98Ywq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'SyncInGameItem' test.out

#- 105 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'HZnEDkfmNbDTMGgE' \
    --body '{"appId": "T2yS6C8a8L0vQDS4", "appType": "SOFTWARE", "baseAppId": "r5f6fdmyi4kQnOFb", "boothName": "BtvBw81hUgtONCIo", "categoryPath": "Z2rkomSj52mAIMo6", "clazz": "EW9QhzU8FwQtZpfU", "displayOrder": 29, "entitlementType": "DURABLE", "ext": {"yoiUjmqOyQ7ammFg": {}, "HprdM9viFWmezrQO": {}, "WH03zyr7kRbC31YM": {}}, "features": ["A3gvCRfoBijpbMbl", "GWnp94a6GKY0BrHi", "JfRiD7djt1VeOFBD"], "flexible": true, "images": [{"as": "eqQ8mBpTuvLTJUzw", "caption": "XJFaWW3JVdYpfHOY", "height": 30, "imageUrl": "t3uQ5nFrPXwxJZQp", "smallImageUrl": "keDHr0hjKBpDMIvK", "width": 33}, {"as": "OFJ5RrFZYcwfQ1Q2", "caption": "BbcjSpv6Nt1oz4td", "height": 13, "imageUrl": "FFhO5FcdTvIDQI2u", "smallImageUrl": "Ii2SNZKqlJZsdnY0", "width": 62}, {"as": "DIyosprZPBaERb7U", "caption": "9kK4VctUmDhFVNa0", "height": 73, "imageUrl": "hUhl3Y0EshaG0uDi", "smallImageUrl": "JNUuxK22saWaGvrz", "width": 56}], "inventoryConfig": {"customAttributes": {"NIITUJGj5FYaSgew": {}, "LWHcBxz5LpdkRCAU": {}, "8HhmXC68JFPdxhvB": {}}, "serverCustomAttributes": {"Kee6wG66YPD4vNdE": {}, "NY1r1rI0T97qA1Oi": {}, "blWlz2LXQNqcONcJ": {}}, "slotUsed": 71}, "itemIds": ["vdZHoIm4tKNhPjNI", "QGFxGwgnSiZtChE0", "uof77AAPI5tdPeFz"], "itemQty": {"9pGYsLNEGrfy9qHK": 42, "5tV0BlN1iFvw0GSL": 57, "CVK9WmDAdpLVTVsj": 95}, "itemType": "COINS", "listable": false, "localizations": {"DiyybXY4v7JRFMRa": {"description": "eIaQuPWPlkxeotrN", "localExt": {"akKGvOSvpmZZdlNX": {}, "dx2kWmSqodNZgfQy": {}, "DVVkkqiMiRf2yCyM": {}}, "longDescription": "0Tp5GJHHbsLJ73mC", "title": "PhhmUyIwgQS9kVFU"}, "beTeB9KgnFZQ9lVM": {"description": "NyCiytnfMoO1I3KI", "localExt": {"STbn4yEa2AaBRalz": {}, "5HEm4Gant6aqjKzW": {}, "DAauqLKarcLQRQtC": {}}, "longDescription": "927GneBM8LvzgyIV", "title": "zGFBLJ5vbC9NfLTF"}, "JGOzAIAqpmkDdFSs": {"description": "4s7u1VUuLmenyxTQ", "localExt": {"VkEg5wouUKa35m8o": {}, "H9zCfw7mCMkbvSIm": {}, "7JROcwVmGyrBpnTP": {}}, "longDescription": "F4VrRiFSPs2ZMcVF", "title": "crixULzSeTnUWGxx"}}, "lootBoxConfig": {"rewardCount": 12, "rewards": [{"lootBoxItems": [{"count": 28, "duration": 78, "endDate": "1979-10-07T00:00:00Z", "itemId": "GpSsyEPDWHcqfYp2", "itemSku": "EFxEaEHCGtg812NQ", "itemType": "b5Glh8srTlTj61Wd"}, {"count": 98, "duration": 36, "endDate": "1999-04-13T00:00:00Z", "itemId": "Uo1BO1rE7E12Fapa", "itemSku": "o5jo9nJoKEb8tHmF", "itemType": "wLGan2SrKckNxLWH"}, {"count": 62, "duration": 36, "endDate": "1982-03-16T00:00:00Z", "itemId": "7O1lwxVTRll0GIEU", "itemSku": "JtMC8NyV2HLHZT3o", "itemType": "YJlC4ie3InnSA22N"}], "name": "HTb4qXYyJUAlKlTw", "odds": 0.058324541381526984, "type": "REWARD_GROUP", "weight": 15}, {"lootBoxItems": [{"count": 63, "duration": 48, "endDate": "1992-04-20T00:00:00Z", "itemId": "oemVtmVXTs3tCu4F", "itemSku": "9IgDT2tq2V2lMzfI", "itemType": "QHCZ90DqQgP6ynrQ"}, {"count": 19, "duration": 36, "endDate": "1997-04-16T00:00:00Z", "itemId": "H0N2loTnRa0KiQWP", "itemSku": "xd1gqlwx9CE4Wcsm", "itemType": "YtCkIgcwiDWQFghm"}, {"count": 71, "duration": 17, "endDate": "1985-02-09T00:00:00Z", "itemId": "mtuIFllfSUnaUhC4", "itemSku": "x11AS2jTKoTYeHaC", "itemType": "uN7zpX9vp4QJdCrw"}], "name": "kz0nw2oxKye8jZqj", "odds": 0.9575381014101229, "type": "PROBABILITY_GROUP", "weight": 49}, {"lootBoxItems": [{"count": 16, "duration": 17, "endDate": "1973-11-10T00:00:00Z", "itemId": "8OBQRqXWXQ3JdXdF", "itemSku": "z8pc0EEziE5yIvij", "itemType": "q9ix16vo60jgvwV3"}, {"count": 59, "duration": 76, "endDate": "1990-02-27T00:00:00Z", "itemId": "4WfGq8JCDnwGWgcc", "itemSku": "uzuc6QDRMGdBPbUy", "itemType": "HTYPS8CGKXGon2ec"}, {"count": 4, "duration": 19, "endDate": "1979-01-12T00:00:00Z", "itemId": "AFLweD9Z7U2lNkor", "itemSku": "rw9QH3rNhDepQum4", "itemType": "Dj7pR05RTGXGRkYX"}], "name": "ifTd5nAOF9VV7JgC", "odds": 0.6564091580056857, "type": "PROBABILITY_GROUP", "weight": 19}], "rollFunction": "DEFAULT"}, "maxCount": 46, "maxCountPerUser": 7, "name": "L729Hma0nCdCEFcf", "optionBoxConfig": {"boxItems": [{"count": 30, "duration": 7, "endDate": "1997-04-26T00:00:00Z", "itemId": "DWUfcL1qsegBsrNq", "itemSku": "eW5BxVe8iW7sGELn", "itemType": "MdXRqdGPzxXvZPtr"}, {"count": 14, "duration": 40, "endDate": "1975-05-11T00:00:00Z", "itemId": "eVBnTrsYihhgbeAZ", "itemSku": "oFncMUdmf8hD3nL1", "itemType": "saQxLYrz08jh6Tyq"}, {"count": 85, "duration": 99, "endDate": "1990-01-16T00:00:00Z", "itemId": "ilXgtf5UctyV3aSw", "itemSku": "4twReM5DcHde3fkH", "itemType": "f7tH8WTOTeBOcYhf"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 85, "fixedTrialCycles": 67, "graceDays": 83}, "regionData": {"CnPjiIbJifs0arKx": [{"currencyCode": "CcNv8FQCyQBqKxay", "currencyNamespace": "Gvw7MqOsypCJmfRn", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1980-02-22T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1990-02-16T00:00:00Z", "expireAt": "1976-06-24T00:00:00Z", "price": 19, "purchaseAt": "1977-06-11T00:00:00Z", "trialPrice": 59}, {"currencyCode": "7eCLDu6PA3PRnQtB", "currencyNamespace": "410iWT0SILVGXCWR", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1972-11-02T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1989-05-05T00:00:00Z", "expireAt": "1976-12-09T00:00:00Z", "price": 100, "purchaseAt": "1998-04-11T00:00:00Z", "trialPrice": 33}, {"currencyCode": "QFlef1tSHJf6sVpw", "currencyNamespace": "AAKKqmTy0ZSyJ7II", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1985-02-12T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1990-11-12T00:00:00Z", "expireAt": "1973-12-19T00:00:00Z", "price": 17, "purchaseAt": "1973-04-19T00:00:00Z", "trialPrice": 84}], "raaRG1Fg0hfM5vQm": [{"currencyCode": "ahJlT5OUDEMwAjgN", "currencyNamespace": "Zgto2EhOlnsuDnku", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1981-03-29T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1994-11-24T00:00:00Z", "expireAt": "1996-04-07T00:00:00Z", "price": 38, "purchaseAt": "1988-03-22T00:00:00Z", "trialPrice": 61}, {"currencyCode": "7o1z37uuqLDQF12k", "currencyNamespace": "YfBqeQxos58kVk7F", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1997-02-10T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1987-06-09T00:00:00Z", "expireAt": "1987-09-11T00:00:00Z", "price": 76, "purchaseAt": "1984-06-24T00:00:00Z", "trialPrice": 32}, {"currencyCode": "ER3xqCwUgKa4oCBo", "currencyNamespace": "JDxGa1UuSr4ehnV8", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1998-04-09T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1983-09-25T00:00:00Z", "expireAt": "1986-06-22T00:00:00Z", "price": 50, "purchaseAt": "1986-02-12T00:00:00Z", "trialPrice": 91}], "zZJsZd9sB6CV9KiW": [{"currencyCode": "kbdpGqWQIPK6mVyt", "currencyNamespace": "M5mBRT39gKYLk9Dm", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1989-04-18T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1979-02-27T00:00:00Z", "expireAt": "1992-04-15T00:00:00Z", "price": 28, "purchaseAt": "1981-05-07T00:00:00Z", "trialPrice": 53}, {"currencyCode": "TXWAUt8lgqNM4poG", "currencyNamespace": "EvIKCe3MrLxmnjml", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1981-06-26T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1980-08-12T00:00:00Z", "expireAt": "1999-08-21T00:00:00Z", "price": 41, "purchaseAt": "1972-02-24T00:00:00Z", "trialPrice": 15}, {"currencyCode": "NvvgI2k1P9nQxzj3", "currencyNamespace": "AnmpWfje5cAtTDvw", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1978-03-06T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1987-09-01T00:00:00Z", "expireAt": "1978-03-12T00:00:00Z", "price": 24, "purchaseAt": "1987-05-01T00:00:00Z", "trialPrice": 52}]}, "saleConfig": {"currencyCode": "F1pccdjjZpFnVLb7", "price": 47}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "rpjVPfktNnl8UYH5", "stackable": false, "status": "ACTIVE", "tags": ["VaEnaycYsKkgX0RM", "DxvlK9RnTEYv5eDh", "Cxwy85vlhWw1RCgH"], "targetCurrencyCode": "r3f6UqFGCvsMFEFl", "targetNamespace": "XHBOK1RqtKYVObVo", "thumbnailUrl": "rIVWWLaVJwe2KAca", "useCount": 15}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'CreateItem' test.out

#- 106 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'aKeXUu9hINqKvoYK' \
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
    'io4M51vuaFyqjQsT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'GetItems' test.out

#- 110 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'GmzItJIOkEIRsSWO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GetItemBySku' test.out

#- 111 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'V8LyivYbMG9LXPbB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItemBySku' test.out

#- 112 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'h2E3wFchP3zTymfV' \
    'fny2M0KsS08cY3fj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'GetEstimatedPrice' test.out

#- 113 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'I1YTT3qUMd0U73Rj' \
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
    'VeYSM479gn62lizs' \
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
    'WGrtIgVPb7hoo8Yk' \
    --body '{"itemIds": ["NPW8mWOJGtdXJGDs", "xRAR3NObYp43YXMH", "qWeVjnOURxGvOhz9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'ValidateItemPurchaseCondition' test.out

#- 118 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    's7ktWkJDaHg6kDVj' \
    --body '{"changes": [{"itemIdentities": ["xhxRxjeDrqCfJEjr", "qJkFoZFZex0eOw31", "PXkVnetcvAuim14W"], "itemIdentityType": "ITEM_ID", "regionData": {"6A7z0hsW0IHIYvJ7": [{"currencyCode": "PPgVaFwGhl5zqkzE", "currencyNamespace": "u41hVfVC7eLVWGk0", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1997-03-10T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1979-02-07T00:00:00Z", "discountedPrice": 0, "expireAt": "1988-07-30T00:00:00Z", "price": 0, "purchaseAt": "1993-08-27T00:00:00Z", "trialPrice": 57}, {"currencyCode": "C2Au2bEpymbJ4dPJ", "currencyNamespace": "mkdvyuDHFFstLhZz", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1988-06-04T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1985-12-13T00:00:00Z", "discountedPrice": 33, "expireAt": "1973-01-04T00:00:00Z", "price": 55, "purchaseAt": "1999-11-01T00:00:00Z", "trialPrice": 22}, {"currencyCode": "4MZwEVJe7waGyB6g", "currencyNamespace": "2M5JiwtMOfDfoMgU", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1983-09-16T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1985-12-08T00:00:00Z", "discountedPrice": 11, "expireAt": "1994-04-15T00:00:00Z", "price": 64, "purchaseAt": "1977-05-10T00:00:00Z", "trialPrice": 11}], "FSCsrhSGeeExZYnG": [{"currencyCode": "crZHMKoTcIXeKZzZ", "currencyNamespace": "Bo6ARaQnNZQ1R0PG", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1987-05-12T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1998-04-14T00:00:00Z", "discountedPrice": 4, "expireAt": "1972-07-09T00:00:00Z", "price": 49, "purchaseAt": "1971-06-14T00:00:00Z", "trialPrice": 100}, {"currencyCode": "GWVKPoA1aKRZM1Ot", "currencyNamespace": "0PWppB2H0G8Xko9l", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1987-12-03T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1980-04-23T00:00:00Z", "discountedPrice": 90, "expireAt": "1979-03-01T00:00:00Z", "price": 53, "purchaseAt": "1997-06-30T00:00:00Z", "trialPrice": 68}, {"currencyCode": "IpNqVHbbCVwbitD5", "currencyNamespace": "tWXZVvjYqrEXKUDl", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1995-03-04T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1994-07-03T00:00:00Z", "discountedPrice": 30, "expireAt": "1987-12-13T00:00:00Z", "price": 40, "purchaseAt": "1975-08-16T00:00:00Z", "trialPrice": 28}], "VAWT8PxL8674KYMe": [{"currencyCode": "N2W2CNqmO8JALtCi", "currencyNamespace": "DuGQQsvWV3NSjXUX", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1976-10-27T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1997-08-16T00:00:00Z", "discountedPrice": 38, "expireAt": "1990-07-09T00:00:00Z", "price": 49, "purchaseAt": "1994-07-20T00:00:00Z", "trialPrice": 75}, {"currencyCode": "hEyBfFFZwkC1PRjB", "currencyNamespace": "WzTuXttDREDWbOM3", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1993-01-02T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1980-01-02T00:00:00Z", "discountedPrice": 86, "expireAt": "1971-12-04T00:00:00Z", "price": 62, "purchaseAt": "1985-03-19T00:00:00Z", "trialPrice": 40}, {"currencyCode": "seK1xaSbMjyFrYsI", "currencyNamespace": "TcyT5AhNNH0Ht1yP", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1985-08-10T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1989-01-01T00:00:00Z", "discountedPrice": 71, "expireAt": "1983-06-19T00:00:00Z", "price": 20, "purchaseAt": "1979-08-17T00:00:00Z", "trialPrice": 2}]}}, {"itemIdentities": ["d6Yng8ps5XknDJZK", "5gFHyIOnLu9WBAS0", "qUswy0AnJZJdKrIn"], "itemIdentityType": "ITEM_ID", "regionData": {"Svy3GRenDzwlTE9C": [{"currencyCode": "zhnck3GnyPFQHgn9", "currencyNamespace": "jVE6QGkZ8AVzeiaD", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1976-01-11T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1994-10-30T00:00:00Z", "discountedPrice": 35, "expireAt": "1994-03-07T00:00:00Z", "price": 47, "purchaseAt": "1973-11-21T00:00:00Z", "trialPrice": 96}, {"currencyCode": "2LrT85Arfe6EweJx", "currencyNamespace": "WANt1bDay64EnFyF", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1992-03-25T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1977-11-22T00:00:00Z", "discountedPrice": 37, "expireAt": "1975-04-13T00:00:00Z", "price": 7, "purchaseAt": "1973-02-01T00:00:00Z", "trialPrice": 66}, {"currencyCode": "Krrhzwz2PFXC33Kj", "currencyNamespace": "LNUFQJgCWV7dj8I5", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1995-04-15T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1973-04-04T00:00:00Z", "discountedPrice": 95, "expireAt": "1988-05-09T00:00:00Z", "price": 98, "purchaseAt": "1974-06-27T00:00:00Z", "trialPrice": 28}], "KR3ydSEb2trPjqlB": [{"currencyCode": "5c8a78gp4BGN4NAy", "currencyNamespace": "db6GgyFczEOMXF1T", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1988-08-20T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1983-06-01T00:00:00Z", "discountedPrice": 68, "expireAt": "1977-08-06T00:00:00Z", "price": 6, "purchaseAt": "1985-11-01T00:00:00Z", "trialPrice": 78}, {"currencyCode": "FHrXWFobqnDkfPAH", "currencyNamespace": "NgVss4JzVKSusdLu", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1978-10-21T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1984-03-02T00:00:00Z", "discountedPrice": 43, "expireAt": "1986-12-16T00:00:00Z", "price": 22, "purchaseAt": "1995-02-26T00:00:00Z", "trialPrice": 94}, {"currencyCode": "k2vD3mUDwtTF1ATV", "currencyNamespace": "QnAexrRomTZFHX4c", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1979-03-25T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1983-03-22T00:00:00Z", "discountedPrice": 62, "expireAt": "1998-07-10T00:00:00Z", "price": 6, "purchaseAt": "1990-06-08T00:00:00Z", "trialPrice": 24}], "GZGiSutb6wUxEikR": [{"currencyCode": "yHC9VWMnzbuNQNJx", "currencyNamespace": "CbLEhfrPxIRdbUwk", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1994-09-17T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1972-01-05T00:00:00Z", "discountedPrice": 44, "expireAt": "1990-12-18T00:00:00Z", "price": 27, "purchaseAt": "1996-02-01T00:00:00Z", "trialPrice": 82}, {"currencyCode": "C9JYmpKyZGtqWw67", "currencyNamespace": "LheLDvwZjthGMOB4", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1978-10-12T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1984-12-01T00:00:00Z", "discountedPrice": 93, "expireAt": "1974-04-05T00:00:00Z", "price": 43, "purchaseAt": "1987-09-21T00:00:00Z", "trialPrice": 56}, {"currencyCode": "hAnlnjyPBj7h3hnc", "currencyNamespace": "U5vgL62RA2BI7kni", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1992-08-18T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1998-07-06T00:00:00Z", "discountedPrice": 94, "expireAt": "1972-10-14T00:00:00Z", "price": 77, "purchaseAt": "1977-08-27T00:00:00Z", "trialPrice": 46}]}}, {"itemIdentities": ["BDxK6laOkeLBcprB", "yjUr7w9w1xKUrLmQ", "SkuEMRzyerpya2oB"], "itemIdentityType": "ITEM_ID", "regionData": {"22gRLsc6Jwt190s6": [{"currencyCode": "yFiDZs0wyldbDDnt", "currencyNamespace": "sSQ8DEsKT6Mw5xDz", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1978-06-05T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1984-10-13T00:00:00Z", "discountedPrice": 89, "expireAt": "1982-06-12T00:00:00Z", "price": 39, "purchaseAt": "1988-04-01T00:00:00Z", "trialPrice": 55}, {"currencyCode": "TVV2QmlqRK5roG1o", "currencyNamespace": "ZArFJBUmMx7nzK8r", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1995-12-16T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1982-12-23T00:00:00Z", "discountedPrice": 50, "expireAt": "1973-04-22T00:00:00Z", "price": 61, "purchaseAt": "1979-12-05T00:00:00Z", "trialPrice": 73}, {"currencyCode": "aQ8swcFOshiWEFDM", "currencyNamespace": "G99v5LSSkkEoAark", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1998-06-11T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1997-01-25T00:00:00Z", "discountedPrice": 28, "expireAt": "1984-06-30T00:00:00Z", "price": 21, "purchaseAt": "1975-12-09T00:00:00Z", "trialPrice": 14}], "NGANjli9XZkbrkh3": [{"currencyCode": "dQNtIEwCcfPmWjX5", "currencyNamespace": "40aN2pvOi5UG7agV", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1996-09-30T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1990-02-15T00:00:00Z", "discountedPrice": 55, "expireAt": "1978-09-18T00:00:00Z", "price": 69, "purchaseAt": "1991-09-01T00:00:00Z", "trialPrice": 63}, {"currencyCode": "9eEvIyV2DqxWhSV3", "currencyNamespace": "r9vk4HQDiwqJUZHP", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1984-08-15T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1999-02-01T00:00:00Z", "discountedPrice": 84, "expireAt": "1971-07-07T00:00:00Z", "price": 19, "purchaseAt": "1997-04-18T00:00:00Z", "trialPrice": 15}, {"currencyCode": "LvVm8UeFUbaGb5on", "currencyNamespace": "2kvdeu5DfAxsrX7O", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1980-12-20T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1980-10-08T00:00:00Z", "discountedPrice": 53, "expireAt": "1995-07-02T00:00:00Z", "price": 90, "purchaseAt": "1988-06-20T00:00:00Z", "trialPrice": 54}], "84zQjc88fKtDQSbD": [{"currencyCode": "QN21JlwPxpuUZm1G", "currencyNamespace": "VuI2Eihx6IJwMzUq", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1997-09-18T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1998-08-09T00:00:00Z", "discountedPrice": 78, "expireAt": "1991-06-25T00:00:00Z", "price": 93, "purchaseAt": "1978-02-15T00:00:00Z", "trialPrice": 80}, {"currencyCode": "eu7KKPXunBZiqYaR", "currencyNamespace": "eD04717oGCmrTUcZ", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1999-08-26T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1984-12-27T00:00:00Z", "discountedPrice": 48, "expireAt": "1991-05-05T00:00:00Z", "price": 46, "purchaseAt": "1997-09-24T00:00:00Z", "trialPrice": 98}, {"currencyCode": "LHx7FCWn7iOmKIN2", "currencyNamespace": "roJNZmgEGzqDHdLp", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1976-11-09T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1988-05-14T00:00:00Z", "discountedPrice": 14, "expireAt": "1998-06-21T00:00:00Z", "price": 74, "purchaseAt": "1985-11-18T00:00:00Z", "trialPrice": 87}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'BulkUpdateRegionData' test.out

#- 119 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'lBRcFsa03Nqu13Lg' \
    'D6kOUZXQKRTVR95I' \
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
    'wPCb2qOuIRbBL0nj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetItem' test.out

#- 122 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'CbitEJNHwfW76v6G' \
    'PVwWjIfhOXemeTgi' \
    --body '{"appId": "ENbhdRohucoiX0GA", "appType": "SOFTWARE", "baseAppId": "eKHaAP4PYToJAMgJ", "boothName": "kC8UGlqb7cexeEhH", "categoryPath": "z7OKYNIMPTFnrbys", "clazz": "dru1PotArVtIQyxp", "displayOrder": 29, "entitlementType": "CONSUMABLE", "ext": {"nXfoDvjI9jfJFTHc": {}, "HvAfosnCXqJplcwa": {}, "BHILlCC7ovjEbjKr": {}}, "features": ["vZsJd3RBYL4PAqdv", "QpfFWm8VMHjC8qrx", "Z2d6IbWTfPplY43F"], "flexible": false, "images": [{"as": "WYgFgw3mGmogCJXj", "caption": "HTGhyemqqwoT441D", "height": 27, "imageUrl": "6xwuD6giqKLavCF9", "smallImageUrl": "yVeJJwyaY7Ho61Ro", "width": 98}, {"as": "8NITA0g58cqZn79u", "caption": "2grirdqELbdqXaPl", "height": 55, "imageUrl": "4zPvxA5061CF9079", "smallImageUrl": "hQA91csvlQSS6PyD", "width": 3}, {"as": "U263PawPB10d4KCt", "caption": "C9mqs8uXBZ2Kxk4a", "height": 95, "imageUrl": "FeKFm3raYpWl0MfF", "smallImageUrl": "3iAQb4Iiy26m51Aw", "width": 59}], "inventoryConfig": {"customAttributes": {"kAg90cQgXeZnKRP6": {}, "Gdv2QY9BadKJj4Hk": {}, "L0mk4HHDzXcKJowQ": {}}, "serverCustomAttributes": {"bOrgveLe4hYQEGci": {}, "vibNKS0tBFxzru1A": {}, "3ObcaijxlHrcqzwG": {}}, "slotUsed": 13}, "itemIds": ["cGHG9MBp1AEcNUzf", "WwpdraZO1lfHzX5C", "HNiYaLYUlRZSLj5x"], "itemQty": {"wmP8QMJJJn2Lqw6a": 16, "UYtYkPAHldms0Nwl": 48, "i1GmfmwhN25xGSRR": 28}, "itemType": "CODE", "listable": true, "localizations": {"gFvKO2erV4ccUhiQ": {"description": "nHGDNXw2L4mp580s", "localExt": {"USlEfC6ckbV2y32k": {}, "G5QTZnpxYa2jDp3L": {}, "zelXaUz9AKozXBA2": {}}, "longDescription": "9DPhYa8Ksjfnk7HK", "title": "SWULkEKqQ4ToqWjp"}, "aECYi7fBJaU43PzO": {"description": "ITmqjrcuIH9i4ICw", "localExt": {"RHM518oPa2glj6rH": {}, "bkWMDSiPRcEyfbUs": {}, "wXLyVVZqZpYAdyPa": {}}, "longDescription": "fGBlwnYRpUkTKjXx", "title": "vgslvMllaEVugbCE"}, "ifQCe5eN88Z7U1e8": {"description": "C1HnrPGydCRGPXLK", "localExt": {"NNfCxcAJoMhSZgpx": {}, "0HtzCgr8ybpAO0Pg": {}, "h6Uenz7FjcRRIKcT": {}}, "longDescription": "VvsormCNHH08vEf2", "title": "WSsLchLBElch9a9K"}}, "lootBoxConfig": {"rewardCount": 28, "rewards": [{"lootBoxItems": [{"count": 12, "duration": 4, "endDate": "1996-08-09T00:00:00Z", "itemId": "glMjwg8OWAT7d65h", "itemSku": "chXzG4ffz0lXBDbB", "itemType": "GrYGleamVgjm0xqJ"}, {"count": 16, "duration": 18, "endDate": "1973-03-07T00:00:00Z", "itemId": "raXwzn0bbNK5rhgy", "itemSku": "51k1e1gZ8QCEx41n", "itemType": "hN2NMDXEHz2uROYq"}, {"count": 51, "duration": 70, "endDate": "1996-03-22T00:00:00Z", "itemId": "xPhtIM8Rw0xHZOUW", "itemSku": "3jlXYz8azHYdzaYe", "itemType": "7WjwoU21EdgoOvT1"}], "name": "3nFPxMy9YNTBZTR5", "odds": 0.3176172622472966, "type": "REWARD", "weight": 26}, {"lootBoxItems": [{"count": 1, "duration": 12, "endDate": "1997-01-16T00:00:00Z", "itemId": "GxrhAPoREvGmmbGW", "itemSku": "3SttwZrmKkREJXuc", "itemType": "N3IEt8vZSqh6SjLd"}, {"count": 60, "duration": 51, "endDate": "1993-02-13T00:00:00Z", "itemId": "6lY9IGsZjUsSUE7N", "itemSku": "uCYEOWNkgUfe6pVM", "itemType": "S5m8aRIev5s4q7Uw"}, {"count": 46, "duration": 18, "endDate": "1980-08-16T00:00:00Z", "itemId": "aCDr326Q66cxtjNT", "itemSku": "XsCsfA2pIWzC6nrU", "itemType": "avXt7t0llsH39PXW"}], "name": "tk222GY7L58lP7dr", "odds": 0.11881422243404649, "type": "PROBABILITY_GROUP", "weight": 70}, {"lootBoxItems": [{"count": 57, "duration": 99, "endDate": "1976-09-30T00:00:00Z", "itemId": "ZFgaGUfhy5TZFoyf", "itemSku": "Z0XfCxPDcH66JWKm", "itemType": "TRqrvfJIrFQWIDC6"}, {"count": 85, "duration": 64, "endDate": "1988-07-16T00:00:00Z", "itemId": "VsnUueYd49OFDlbd", "itemSku": "IrxqxAtw8vLsYBHN", "itemType": "6M7OpcFqK4FBJG8B"}, {"count": 12, "duration": 21, "endDate": "1981-01-21T00:00:00Z", "itemId": "SzytkPE6mw3Zv0zD", "itemSku": "14WsQt5oimAfS3Sh", "itemType": "33TufYVdPwYmvZkT"}], "name": "3zo8gxMqM1wUdXsM", "odds": 0.15611155606082994, "type": "REWARD_GROUP", "weight": 0}], "rollFunction": "CUSTOM"}, "maxCount": 4, "maxCountPerUser": 14, "name": "x4istsfrFqHu6f54", "optionBoxConfig": {"boxItems": [{"count": 26, "duration": 76, "endDate": "1972-02-29T00:00:00Z", "itemId": "NP5nNvzIlwtYI9wK", "itemSku": "X9V1XxF2CFfEpf0q", "itemType": "N2twLYXq4HSEGpaU"}, {"count": 79, "duration": 77, "endDate": "1977-09-11T00:00:00Z", "itemId": "dPXWaJRdn3WMdrhl", "itemSku": "WqCc54JfyGzMMHiV", "itemType": "Q6covYDuI4l1d9Ya"}, {"count": 76, "duration": 18, "endDate": "1995-06-12T00:00:00Z", "itemId": "GQTjQVaJ9ioRZ1Hv", "itemSku": "MCIXTQG7AUUES36b", "itemType": "RVaiOL6Q5N2egLXR"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 80, "fixedTrialCycles": 38, "graceDays": 97}, "regionData": {"Oz8LDnxgL0t7Qhdw": [{"currencyCode": "4vmSxnJcyaijSCsF", "currencyNamespace": "a6ipRu1AaFjz0yLe", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1984-12-22T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1983-07-28T00:00:00Z", "expireAt": "1986-03-12T00:00:00Z", "price": 99, "purchaseAt": "1992-05-23T00:00:00Z", "trialPrice": 51}, {"currencyCode": "hLNPUvlrOA50xGdl", "currencyNamespace": "q3Dkm52TA4zLBSh2", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1974-02-22T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1996-06-22T00:00:00Z", "expireAt": "1988-10-05T00:00:00Z", "price": 26, "purchaseAt": "1997-11-21T00:00:00Z", "trialPrice": 67}, {"currencyCode": "LBLlsw2pDJDLeJwz", "currencyNamespace": "bVEEQ0D6RcLpRxXC", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1995-07-27T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1982-04-13T00:00:00Z", "expireAt": "1991-11-07T00:00:00Z", "price": 50, "purchaseAt": "1980-07-27T00:00:00Z", "trialPrice": 40}], "qz6exSNhnabXGs0q": [{"currencyCode": "awVMpRu5wP9CTLKx", "currencyNamespace": "i1BjFMOIsJO7EUYa", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1978-09-29T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1977-02-19T00:00:00Z", "expireAt": "1971-02-06T00:00:00Z", "price": 88, "purchaseAt": "1974-08-29T00:00:00Z", "trialPrice": 96}, {"currencyCode": "bFDXW3N42ccGURTn", "currencyNamespace": "JUdR3MUQnEeANANj", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1985-01-28T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1974-02-12T00:00:00Z", "expireAt": "1986-11-08T00:00:00Z", "price": 80, "purchaseAt": "1982-07-14T00:00:00Z", "trialPrice": 69}, {"currencyCode": "9e6CIBWn2Q3kMtF5", "currencyNamespace": "tiwPCAxM9oFcQUp7", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1979-10-12T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1995-10-22T00:00:00Z", "expireAt": "1971-03-23T00:00:00Z", "price": 81, "purchaseAt": "1997-01-23T00:00:00Z", "trialPrice": 93}], "Grr2TTTiTt8oRoQR": [{"currencyCode": "f0A1eAJUZSjWUPA9", "currencyNamespace": "vXrqLxUCyNQUITTM", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1994-11-24T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1981-06-26T00:00:00Z", "expireAt": "1973-02-05T00:00:00Z", "price": 37, "purchaseAt": "1987-07-28T00:00:00Z", "trialPrice": 81}, {"currencyCode": "kTPehZVmZi1UYM7B", "currencyNamespace": "ApA1YByiGkJR30lA", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1977-10-28T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1974-10-05T00:00:00Z", "expireAt": "1989-08-22T00:00:00Z", "price": 35, "purchaseAt": "1996-09-06T00:00:00Z", "trialPrice": 66}, {"currencyCode": "8GuKFRwAkAyYY8hS", "currencyNamespace": "NUTpzSm7jdrPdkMM", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1976-04-01T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1979-01-16T00:00:00Z", "expireAt": "1988-09-23T00:00:00Z", "price": 26, "purchaseAt": "1986-05-04T00:00:00Z", "trialPrice": 47}]}, "saleConfig": {"currencyCode": "mCIb5JWu7DAXtIes", "price": 24}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "lJQMDxu7Auj8cqdt", "stackable": true, "status": "ACTIVE", "tags": ["tE0TKRHukM2BVMu4", "sGXFylcwoCMa2D9Q", "ydtCBznu3BT2fe68"], "targetCurrencyCode": "18S3o2DKmAp8kt81", "targetNamespace": "56L7Wl7UfG3PbsgY", "thumbnailUrl": "DgJ0JRrcPbe1REA4", "useCount": 21}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'UpdateItem' test.out

#- 123 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'J8JZ6lV9zpsDX7CW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'DeleteItem' test.out

#- 124 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'EoHK3yLZSpydGfNn' \
    --body '{"count": 81, "orderNo": "kVq9bAefBF8tiF7m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AcquireItem' test.out

#- 125 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'i3iOrnB83a6h6dNf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'GetApp' test.out

#- 126 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'g9f25YsZ1L6IGHuO' \
    '7u2tOUpmu6zULXQM' \
    --body '{"carousel": [{"alt": "irzwMshTQYUnfHWy", "previewUrl": "Bg5c3Wq2dGygLo40", "thumbnailUrl": "eCb82j4OhaAiWk4T", "type": "image", "url": "x1WRjiCokzg7q7bM", "videoSource": "vimeo"}, {"alt": "x9p8sArSRypvu88W", "previewUrl": "yRMMRloXySTO9W3B", "thumbnailUrl": "EI4eB0PHoEfIdFP0", "type": "image", "url": "Dqm0SXzXNqw2oEpt", "videoSource": "youtube"}, {"alt": "V2RNnCRn6spzE0Dj", "previewUrl": "97Arjpd7IRveArOF", "thumbnailUrl": "ED1MAfVZhADFM15p", "type": "image", "url": "PwzliHiPYuwUtR55", "videoSource": "generic"}], "developer": "gVnrneQPU35uuCoR", "forumUrl": "3Wc6j3UqRICnmZxo", "genres": ["Action", "RPG", "MassivelyMultiplayer"], "localizations": {"FiSPgU3FLs6LbIww": {"announcement": "xFBW1RyUyU8GVL2T", "slogan": "VivHbcJX1mqJ4BtZ"}, "CHdlmOzx9DrwT5dJ": {"announcement": "MDgZPQtuRIVY69dh", "slogan": "Sr3JiNweUidBVB2v"}, "TyC482FeT76mWyDr": {"announcement": "mG0FHQOjtRg7ST2U", "slogan": "VRJN0qFJaGDiDmat"}}, "platformRequirements": {"CvCembJFNyIwxPt1": [{"additionals": "9hjyI7ALyZHQ8V4A", "directXVersion": "ejtUM6llcl5hdZoP", "diskSpace": "hVcQ4wXeArPe089c", "graphics": "qMuV8MLxiTO3GhLJ", "label": "2qx2h93yz3Y7Ytgd", "osVersion": "QMhzpcpwawMF0j9I", "processor": "irMeP7fy5Y0RiyzW", "ram": "JZAZHklGmHH8I1l3", "soundCard": "xgoVyEemJDvokY7U"}, {"additionals": "UVCHGWcVrHG4ehIh", "directXVersion": "Jk597xUXpiOLFQFx", "diskSpace": "Y4AHLzQnClUtkXb0", "graphics": "SoMLqijtgLSGTnWH", "label": "CZ6XwqnOeIUKAIvQ", "osVersion": "jUxtk82oOOkHmCFl", "processor": "dZ0XAvFitLhI0sqj", "ram": "fua9x08SJmn2gM2q", "soundCard": "6wuaHlnk9AFkbwVa"}, {"additionals": "7DCVegPEDDuHxwEb", "directXVersion": "PLfnjlMfDJxP4S8T", "diskSpace": "NhXBTiwS2sBodn1p", "graphics": "1MJrZv1itpBPRbtg", "label": "UMFAcxhrY80cxjAX", "osVersion": "FOLYQX2ryH4oq6fd", "processor": "hzarU0VtmwcYLuVx", "ram": "qvaL6vdJr0yQVV1r", "soundCard": "0LACcKuAd2SElOn1"}], "6dw0nzH9XMG2c5BW": [{"additionals": "rzKJ0Lj0VNzr8kTl", "directXVersion": "05oiubu5HHlb7VI1", "diskSpace": "cHNU3pvbpyJTgwl3", "graphics": "ZOMpzNQDtQNlDFMa", "label": "zvRX5v3UCobMU8bz", "osVersion": "caf0Qv0dFMnEcDHu", "processor": "eqAKTjdRpgYeuitq", "ram": "LYJ7E9mP2Be9WZ9k", "soundCard": "uWMnRcGzbD5iC34s"}, {"additionals": "0kTiXwPjN8E3wXz4", "directXVersion": "Q1L3hAG9xOOi4DVU", "diskSpace": "Yo37I8Mgh1DJARpi", "graphics": "5KzpbDPfXdGvodrl", "label": "6UOwYZJq3OJhzlgt", "osVersion": "X87XuWOIpQwptcvr", "processor": "oohLb6q3F16PO9Yd", "ram": "wqEszRnwVX2rvVr6", "soundCard": "DpLOyrgsLZV9arTx"}, {"additionals": "BgnOqH9lyv8wx2Jo", "directXVersion": "sSHLipk5N6e79zCf", "diskSpace": "L2ar4zJmB2wifDA7", "graphics": "LpND5zXLhrmEeBwT", "label": "zs9QmLReEZ0r6n6a", "osVersion": "nryoVkl4tChuDibB", "processor": "IH1dyZPHtYHKqpl1", "ram": "Xk1CdFvYqfoYzBc1", "soundCard": "6XXXuoJGXCyzA8a5"}], "uh1LdVOaWOjRinmM": [{"additionals": "TxEz6bdDFDqRMyTZ", "directXVersion": "OXYRC3gIRiYFpDlA", "diskSpace": "EyVuvyXITMn2F86x", "graphics": "ZRHxnOP02x00SvR2", "label": "yNPms1DdUL5bc6QM", "osVersion": "B9TtHXqeaYlaYm2X", "processor": "GN51wxYTCHYaW7BA", "ram": "FZnpxmzs0AQYJnB9", "soundCard": "w4rkop7LL7Yqjh4l"}, {"additionals": "gGGsrJv0EyLkZej5", "directXVersion": "voHh0KRDJjPEF1Lp", "diskSpace": "voOxT54t5Ffna72j", "graphics": "i4B86NKZ0tkEWAqM", "label": "0EZhtIp1XL7HL2nK", "osVersion": "oPXxLMtU6hLliy7e", "processor": "m6ox8O9f2ojEQrZ6", "ram": "45LOpaGFJniJl9RP", "soundCard": "ULWpWw5UQBldfnMF"}, {"additionals": "2X9wbQz3euR4MhLQ", "directXVersion": "s8XliOoWqixFdv5a", "diskSpace": "DRSnCrIQ2kChyafm", "graphics": "o2nIKr9krylalbZW", "label": "uO0OVwGUgR3PEWI0", "osVersion": "N4k2W2caqaRVdR05", "processor": "rSilF29Lpg0zAUzp", "ram": "liq50demc4rS3d2v", "soundCard": "2ibO04gNmB9r9MA5"}]}, "platforms": ["IOS", "MacOS", "IOS"], "players": ["LocalCoop", "CrossPlatformMulti", "CrossPlatformMulti"], "primaryGenre": "Casual", "publisher": "6PWsrsxYq77iFOu0", "releaseDate": "1983-05-11T00:00:00Z", "websiteUrl": "beoERsKMCPmtnE1a"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'UpdateApp' test.out

#- 127 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'HAuVZKYNaKhi81nO' \
    '4RNjvO8rZ5NL7Ebb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'DisableItem' test.out

#- 128 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'urWcSjdGGqd31L6K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetItemDynamicData' test.out

#- 129 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'qJTL11T4vlBRDjj3' \
    'FKvRIguqDEJfdxsQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'EnableItem' test.out

#- 130 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'XLRJRONKh0R0RXJ6' \
    'anzAeqD1HlhQ1rqj' \
    'RECHyhLYGnvEdCjY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'FeatureItem' test.out

#- 131 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'snh0Y0rQluvKziVT' \
    'CPTrqHc7vqaXxxiG' \
    'OrXbWC2k23JxAI3k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'DefeatureItem' test.out

#- 132 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'OXwHnS2VOESYx49M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetLocaleItem' test.out

#- 133 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '1JdtImLI5eTuHqCN' \
    'tVlNaGzoqpAFVT8P' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 100, "comparison": "includes", "name": "ouFIdlTuousRcrhX", "predicateType": "SeasonTierPredicate", "value": "9BT2QqCxWZGjDRc2", "values": ["7d9a3AaZO1VcAqwH", "ucrEcYD5hjgrxoEV", "JEyMrwNINM4zHFF9"]}, {"anyOf": 62, "comparison": "isNot", "name": "IkvpWupGhtaU3oC1", "predicateType": "SeasonTierPredicate", "value": "WzUW4RDVM8Y4PcXD", "values": ["FFuLWL0HQkTuy4fU", "MUDAKQEkOvO52VTP", "H8RZqUjELC82uP1n"]}, {"anyOf": 29, "comparison": "isNot", "name": "vRwzU7QiANYIF1Yb", "predicateType": "SeasonPassPredicate", "value": "sEk9TNqSiFJyMByo", "values": ["aWok215MnSNTPMRa", "RKUrvfixr7UFzLzG", "Yf8Chh5tiLsXIOSE"]}]}, {"operator": "or", "predicates": [{"anyOf": 73, "comparison": "is", "name": "DRlSX5uOgZ3Msm86", "predicateType": "SeasonTierPredicate", "value": "qhD5agSwSs0ORF2p", "values": ["dstmoPJurb0FVZK7", "sonuzTm1gseYPsB0", "LQCqPGUmF8pQCrEq"]}, {"anyOf": 66, "comparison": "isLessThanOrEqual", "name": "8moKbti7cqKdwnwT", "predicateType": "SeasonPassPredicate", "value": "mLgxlU5MdUdF7gHd", "values": ["If6eMd0iVUmBrFwF", "IESxo8uFqKtoZiVP", "twECFgcQRsqYFtxb"]}, {"anyOf": 31, "comparison": "excludes", "name": "KYKp18TPWOixbTLf", "predicateType": "EntitlementPredicate", "value": "g6kfRgfnBT7OdjPn", "values": ["ywuIoLpkJEPfnaES", "KhrrrStCg99ejNAC", "uOM4olKFVsSfgNQj"]}]}, {"operator": "or", "predicates": [{"anyOf": 79, "comparison": "isLessThanOrEqual", "name": "w1WGHPO22mCj7yFm", "predicateType": "EntitlementPredicate", "value": "VsHXHYBx7KkpRAai", "values": ["puu6acpUdn8X5IZj", "tFT6Bs8OO0CVqXF6", "vn5yFNSoKf7tdmVp"]}, {"anyOf": 3, "comparison": "isLessThanOrEqual", "name": "BiPScmfoBQ1VO5Tr", "predicateType": "EntitlementPredicate", "value": "09ZcFGPCokMwrtVv", "values": ["GhHzNdHMJys9gtFx", "G37jhABEz5T57ICJ", "WSkvzQZjQrgnXc87"]}, {"anyOf": 17, "comparison": "isNot", "name": "wQyrAb67d9kC9MEh", "predicateType": "SeasonTierPredicate", "value": "jT8aEay0LM1IpMDZ", "values": ["uReen3aYjhar5GRz", "OAfOXbaEHFX0sySx", "uDLXNscwbXgdwQnM"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'UpdateItemPurchaseCondition' test.out

#- 134 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'hkhCpV5A2ZLHG60X' \
    --body '{"orderNo": "6LS9dYe42oicsvoF"}' \
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
    --body '{"description": "2EgsoZSKOzQIDAf4", "name": "4vyeNIfF5Ri6ydoL", "status": "INACTIVE", "tags": ["tB0FUpx5TLiooOqR", "m1Mxf3NfjnW9axve", "jxDQgdz6GmSzMPzB"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'CreateKeyGroup' test.out

#- 137 GetKeyGroupByBoothName
eval_tap 0 137 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 138 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    '5ZP4mdsjnGGtbn27' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroup' test.out

#- 139 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'LOqX7FWHHlsxNkfg' \
    --body '{"description": "F88XOEWI4jARIQkI", "name": "iA44zjyRqefUM764", "status": "INACTIVE", "tags": ["yGD8DDRW0KNwlKcv", "eutOHZ2aWSL11msU", "7QpcpkApFODOqz4F"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'UpdateKeyGroup' test.out

#- 140 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'KRWcvJIwzW53tKi9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetKeyGroupDynamic' test.out

#- 141 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'mxhR8RWtFcnNAoxN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'ListKeys' test.out

#- 142 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'PXPlSv6kWXBTTodp' \
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
    'LcEI0mWFWKlSwI38' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'GetOrder' test.out

#- 146 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'LyDyLTQxmA6nDD3E' \
    --body '{"description": "FfeJdwskeVjYAe1C"}' \
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
    --body '{"dryRun": true, "notifyUrl": "RQX4T37n6lgMV9tM", "privateKey": "XN2kDg7INFTJO4FU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'UpdatePaymentCallbackConfig' test.out

#- 149 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentMerchantConfig' test.out

#- 150 UpdatePaymentDomainWhitelistConfig
$PYTHON -m $MODULE 'platform-update-payment-domain-whitelist-config' \
    --body '{"domains": ["T152zR0PBTEvM3Tg", "MsAS5t3TYXNAGl1x", "y1H8Ag2XY2TnyPCV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'UpdatePaymentDomainWhitelistConfig' test.out

#- 151 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'QueryPaymentNotifications' test.out

#- 152 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'QueryPaymentOrders' test.out

#- 153 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "sWzhPIeHkoUSeT3l", "currencyNamespace": "v51D9Vwsfzatv4Jz", "customParameters": {"fVNAJbSLBzqs2u1E": {}, "ntDzkQLgWQHXc3bR": {}, "YKbJGFP8HZNLJ7aP": {}}, "description": "bRMRrbKjoifZAWt1", "extOrderNo": "3ISgdwAum4b3t1Ph", "extUserId": "8xHfEAlyda8FPutb", "itemType": "LOOTBOX", "language": "Gbhi", "metadata": {"6ESwn8otu3o1B2P8": "cdPJAnmCFUZdH9CH", "HozRud9g15dSBhpL": "RxydIE1CQFSQS3RD", "8Q6YcgyTtSOU4FdU": "ceGtntm6j0Apyric"}, "notifyUrl": "msku6ryZK7UKLhMA", "omitNotification": true, "platform": "3JvA3stZ6FN0omme", "price": 72, "recurringPaymentOrderNo": "HiOrbuq9cXar8FKA", "region": "CMfaESKKo0RBtKDj", "returnUrl": "9PgWnODMMswus0yk", "sandbox": true, "sku": "uKlQjnj5QjrVi62I", "subscriptionId": "TQp6NklXSUYkHNYq", "targetNamespace": "epadIS0zRgire2nt", "targetUserId": "rz0FUDXjV0GmcFSj", "title": "mJGQU5YRHjMz3bo2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'CreatePaymentOrderByDedicated' test.out

#- 154 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    '3SF3XkwdkgeNE7pA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'ListExtOrderNoByExtTxId' test.out

#- 155 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    '2BmAcotg9A9VvbcA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrder' test.out

#- 156 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'i4ZmdXz2NXfbCObi' \
    --body '{"extTxId": "jIWdRSDSq6oIY8wq", "paymentMethod": "c2OcvjggLVwAQMWo", "paymentProvider": "WXPAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'ChargePaymentOrder' test.out

#- 157 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'qcbggfeYn1FnvTuT' \
    --body '{"description": "rRI8Z87U0Y5R6IUW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'RefundPaymentOrderByDedicated' test.out

#- 158 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'UGWDcgSJ29Tqsnbt' \
    --body '{"amount": 96, "currencyCode": "NBeq2uoLHWsw0m7Z", "notifyType": "CHARGE", "paymentProvider": "WALLET", "salesTax": 25, "vat": 76}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'SimulatePaymentOrderNotification' test.out

#- 159 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'jkOA84jougrIsaMH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetPaymentOrderChargeStatus' test.out

#- 160 GetPsnEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-psn-entitlement-ownership' \
    'mzafNaxCNIzvOh61' \
    --body '{"accessToken": "wCAYs9Qae7TEBnzF", "serviceLabel": 42}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'GetPsnEntitlementOwnership' test.out

#- 161 GetXboxEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-xbox-entitlement-ownership' \
    'A4hpoNUAwafK1Qxx' \
    --body '{"delegationToken": "K2sBBkQz8nIgoYpZ", "sandboxId": "YIYto2cpXUnj1kXA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'GetXboxEntitlementOwnership' test.out

#- 162 GetPlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-get-platform-entitlement-config' \
    'Steam' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetPlatformEntitlementConfig' test.out

#- 163 UpdatePlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-update-platform-entitlement-config' \
    'Nintendo' \
    --body '{"allowedPlatformOrigins": ["Steam", "Twitch", "Other"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'UpdatePlatformEntitlementConfig' test.out

#- 164 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Oculus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'GetPlatformWalletConfig' test.out

#- 165 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Epic' \
    --body '{"allowedBalanceOrigins": ["System", "IOS", "IOS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'UpdatePlatformWalletConfig' test.out

#- 166 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'ResetPlatformWalletConfig' test.out

#- 167 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'GetRevocationConfig' test.out

#- 168 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'UpdateRevocationConfig' test.out

#- 169 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'DeleteRevocationConfig' test.out

#- 170 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'QueryRevocationHistories' test.out

#- 171 GetRevocationPluginConfig
$PYTHON -m $MODULE 'platform-get-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'GetRevocationPluginConfig' test.out

#- 172 UpdateRevocationPluginConfig
$PYTHON -m $MODULE 'platform-update-revocation-plugin-config' \
    --body '{"appConfig": {"appName": "fqN6D76apW4CsuQx"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "nME1E8lGIgW2AWqh"}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'UpdateRevocationPluginConfig' test.out

#- 173 DeleteRevocationPluginConfig
$PYTHON -m $MODULE 'platform-delete-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'DeleteRevocationPluginConfig' test.out

#- 174 UploadRevocationPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'UploadRevocationPluginConfigCert' test.out

#- 175 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "LSqDVnEtbqHnY6D1", "eventTopic": "Z2oKGmRbhR6rnSjF", "maxAwarded": 88, "maxAwardedPerUser": 10, "namespaceExpression": "zbxqSMQf3ZXRgmEX", "rewardCode": "KPavNUDslWRgXzKc", "rewardConditions": [{"condition": "DEz6ivQvlpRKagGd", "conditionName": "8OJWfXgBkof2DgN1", "eventName": "OHBaKIf5hoyD0oT4", "rewardItems": [{"duration": 4, "endDate": "1978-05-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "KVLZ59QuwBbW2xX9", "quantity": 93, "sku": "WtMMb9e3S9biXun5"}, {"duration": 11, "endDate": "1987-08-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "BBCts02Kgz1gL82A", "quantity": 81, "sku": "tGhPQu5IgTlvO4wr"}, {"duration": 26, "endDate": "1986-12-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ZrSiE7meOUBb0ZMy", "quantity": 86, "sku": "1kQHisGldXgqa99U"}]}, {"condition": "NyHIlnrLOesUoAww", "conditionName": "CO2c7aEAHcpdx91U", "eventName": "abvNvRaUrUqTcFsG", "rewardItems": [{"duration": 20, "endDate": "1983-05-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "P7L1mgHDq7oo2SQp", "quantity": 95, "sku": "X02sJsXg7AKOu2Xk"}, {"duration": 4, "endDate": "1994-11-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "J06MAINAypeu3Zwg", "quantity": 78, "sku": "woBSfRPMdPXru40V"}, {"duration": 25, "endDate": "1979-09-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "vpaJ6EFG9wLOlD7N", "quantity": 11, "sku": "GNQs0IgMAbRc0I82"}]}, {"condition": "pjV4UBb0pZrHFxE9", "conditionName": "EAcMe8RHXnsxazB0", "eventName": "s0OGtkrGuIEzLqOE", "rewardItems": [{"duration": 35, "endDate": "1991-01-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "EcHbFrNLqqyBzPWv", "quantity": 60, "sku": "Kf2QcbDNp9wVgloP"}, {"duration": 33, "endDate": "1978-06-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "vZqaSrHfwrqqHXHp", "quantity": 85, "sku": "eCULsEptE9wdsebm"}, {"duration": 71, "endDate": "1982-03-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "QbE3nPbd7YNYQJL8", "quantity": 19, "sku": "VpUB9WTnYHGmKeMn"}]}], "userIdExpression": "Gn3hXTX65W9y7jKR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'CreateReward' test.out

#- 176 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'QueryRewards' test.out

#- 177 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'ExportRewards' test.out

#- 178 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'ImportRewards' test.out

#- 179 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'To07XGD7r4dvtuyi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'GetReward' test.out

#- 180 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'pF1FB9RNF3G6sPwe' \
    --body '{"description": "MmOIXU6IcFkTWMTX", "eventTopic": "NI4WIT2qYutqii44", "maxAwarded": 70, "maxAwardedPerUser": 74, "namespaceExpression": "o5jdTreVKh6flE9F", "rewardCode": "aNdFDCH0BMCufX5L", "rewardConditions": [{"condition": "n9YKDyW9wNSXGvHG", "conditionName": "abfCgecNknWoEbRo", "eventName": "ZQ4VuKeTQQXDNtjg", "rewardItems": [{"duration": 50, "endDate": "1988-05-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "GgBtsGOxHfW3WBHU", "quantity": 66, "sku": "VRGn0aQHrmMgGX6W"}, {"duration": 18, "endDate": "1996-05-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "PUEwP8KagnEKkfRn", "quantity": 93, "sku": "eTTm092rucPAhnaY"}, {"duration": 34, "endDate": "1993-11-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "kr3tlvhwbpOwvWyV", "quantity": 74, "sku": "bXXgvJKjvhZn4m8r"}]}, {"condition": "gQUG1gDFutWedPpb", "conditionName": "BwcmRSOW5MFhNeBe", "eventName": "rcY9DbSYPsKMU8ah", "rewardItems": [{"duration": 100, "endDate": "1991-07-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "xYKZWUVW9NyUUdkr", "quantity": 74, "sku": "rUFIkcZk3UEaPsta"}, {"duration": 40, "endDate": "1999-11-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "RnaYhr2WJyqCvAfW", "quantity": 18, "sku": "LXwaZwDM1CYDLmaP"}, {"duration": 60, "endDate": "1998-09-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "aVHHRLK0fv936lSL", "quantity": 89, "sku": "gAK6QqFlWlAR1frD"}]}, {"condition": "QIVwmefiYRytVWty", "conditionName": "JI7ujeL0gjx8jAfm", "eventName": "TLOwiBSSe1E9DWrT", "rewardItems": [{"duration": 50, "endDate": "1990-01-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "DOMWy0wefl1KKxNl", "quantity": 100, "sku": "Bu8GE15JzEvFlzpD"}, {"duration": 27, "endDate": "1994-02-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "GYrgNOimVrZzkyKH", "quantity": 45, "sku": "R7z9J0bNuepqWsDL"}, {"duration": 20, "endDate": "1999-07-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ow7MvJGnWbcVqeQS", "quantity": 42, "sku": "8NcKrOSqAvumNXdN"}]}], "userIdExpression": "oD6gTOf0jHAc8PGn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'UpdateReward' test.out

#- 181 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'cBz3SqYUIQnwGbMT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'DeleteReward' test.out

#- 182 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'iA96lnb5gdT3QnV1' \
    --body '{"payload": {"lkyfpfTo2MX3YvlK": {}, "KTkjhbq0eRvkBW48": {}, "O77tNIBYTFfPUrNU": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'CheckEventCondition' test.out

#- 183 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'OX0haxwoUd3ezYAd' \
    --body '{"conditionName": "ypb6oWXYIQqBIhw3", "userId": "NQXGJDWtQNJFHNbg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'DeleteRewardConditionRecord' test.out

#- 184 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'QuerySections' test.out

#- 185 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    't9uaoCeP9rZK0m4w' \
    --body '{"active": false, "displayOrder": 1, "endDate": "1975-03-06T00:00:00Z", "ext": {"NMB89Aoh6Jk84k7R": {}, "0603b1ChdDIpRn2H": {}, "gPRevBMjempE90i4": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 67, "itemCount": 19, "rule": "SEQUENCE"}, "items": [{"id": "zCETFWSfJvAnpvMc", "sku": "DHwA9mw8ujZZQUNi"}, {"id": "4NDzBP7mmM4ZrXja", "sku": "mc3OX9fjEzscuFPv"}, {"id": "5tNXWb8n1xyB1Mxb", "sku": "BG0waudrudTuIy3V"}], "localizations": {"Lkd3YGg9Bzi8uluQ": {"description": "OBuTuYNR4hzPkGOu", "localExt": {"DvT1kGGvspIGcvW7": {}, "T4dk3MBzfrSZGlXP": {}, "ukj7q5MjU2f4833b": {}}, "longDescription": "cUoBfWLjRXOqaoDB", "title": "gsPHcNg0Bapd2WF3"}, "ACWSPCOIejZfSnIa": {"description": "vouuFpqcq4Gd9fk7", "localExt": {"fhp8GNMEX4Ps5vor": {}, "NX6W3h8ItD6AFXbQ": {}, "vGbKVlE5VulHAZZ2": {}}, "longDescription": "SKo1C0ktvmekdbic", "title": "6I2n5Hclx6xvlDEh"}, "lvzVBqt9fNnODJKr": {"description": "Ddt60vGd1u3lR0fk", "localExt": {"CW4fYJAHmuYyTZt7": {}, "v3mvPolaFeEWrqYB": {}, "9hLG74YMs1JCrpnp": {}}, "longDescription": "PPUyyCN4MFXqnFzR", "title": "6C20jVL8heTq0Wmf"}}, "name": "80d7wzxTtcIyIFND", "rotationType": "NONE", "startDate": "1976-12-21T00:00:00Z", "viewId": "HHFFRxJPvHewpv9I"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'CreateSection' test.out

#- 186 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'eC6LAtGzNwZUe0kR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'PurgeExpiredSection' test.out

#- 187 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'nfBio030WDtRFRRe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'GetSection' test.out

#- 188 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'ZoX0eYwpjuQPo1Bi' \
    '27Mr8QiSBuE8Wdxj' \
    --body '{"active": false, "displayOrder": 35, "endDate": "1988-03-25T00:00:00Z", "ext": {"coNi9NFQFpBDG4ba": {}, "NqdGxNGcHil6iUOT": {}, "Wxf4GH0N4kVmTj68": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 2, "itemCount": 77, "rule": "SEQUENCE"}, "items": [{"id": "jJbf174MCR5ZpvlW", "sku": "XRfEoUuNmQrq6p7W"}, {"id": "rYOBpl77LsKN46XL", "sku": "NfQ0SXyMTygZRBzJ"}, {"id": "UpXr5ZkwYPLnvikB", "sku": "np1ILBujZh8S62GO"}], "localizations": {"32C73RnfIDxg4Dkm": {"description": "nJtxZgIUMxGfQHmg", "localExt": {"4I1PJybUmpLmiuZG": {}, "k2Gg0Um3ITROznZA": {}, "6EVEXEqkFFyGp6Xh": {}}, "longDescription": "gI2SuEyr4hactAHd", "title": "K0X7OZKu6MmVxEFp"}, "tfSFU0F8qXSfSkxh": {"description": "rHhjWxkDQUTY21m1", "localExt": {"9Eiqpyu9P7Yh6ERW": {}, "yedt6rkPxW72ya2r": {}, "uQcikSHwHPfyNRUh": {}}, "longDescription": "MXX7FiB3X634iuF8", "title": "pqhqsqRF4kqMbz4s"}, "xPUl2WbQNFNB2IE4": {"description": "3MBCGNyjqnDuWD1q", "localExt": {"iZzXQxSDgH9L20T6": {}, "fVxvK30nHMYxf8xO": {}, "R1DEgYR3iOynLLtq": {}}, "longDescription": "SmaHvUExz8o7TwcW", "title": "L7fNlyGuj0EkM7M8"}}, "name": "G78KZj2jWyKAzXYP", "rotationType": "CUSTOM", "startDate": "1994-11-27T00:00:00Z", "viewId": "SarFsJyanoth2jhz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'UpdateSection' test.out

#- 189 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'r7POOjzRzlmVmpfm' \
    'Mq65nYpNAwv9UsvP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'DeleteSection' test.out

#- 190 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'ListStores' test.out

#- 191 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "aX8W0GvPN7gRfsyS", "defaultRegion": "Rn2FX0Ac7CzuPXE9", "description": "0ufrBaS458bBTbcq", "supportedLanguages": ["QVkSIXLGF8dtk8bq", "cPfBJ9GOHxUkZCvq", "VRe3F78EGvZd49hW"], "supportedRegions": ["95i4Rm9sBef6ymEE", "U6G6YVa5GGFvLtWl", "66DAEkAvXqNdnEfe"], "title": "i54fLtFTRx1fcfy4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'CreateStore' test.out

#- 192 GetCatalogDefinition
$PYTHON -m $MODULE 'platform-get-catalog-definition' \
    'ITEM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'GetCatalogDefinition' test.out

#- 193 DownloadCSVTemplates
$PYTHON -m $MODULE 'platform-download-csv-templates' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'DownloadCSVTemplates' test.out

#- 194 ExportStoreByCSV
$PYTHON -m $MODULE 'platform-export-store-by-csv' \
    --body '{"catalogType": "VIEW", "fieldsToBeIncluded": ["TVbxv0l7RvPOKq8i", "NNYLY5oWJPoo8QT5", "EB5GCOCowERMveDi"], "idsToBeExported": ["I5BYvV5LF22GlLe4", "8YQRsZpn4zsR2KwS", "Il0Un3PT2bVzOt2J"], "storeId": "0VxSVRWxJw7idbmO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'ExportStoreByCSV' test.out

#- 195 ImportStore
eval_tap 0 195 'ImportStore # SKIP deprecated' test.out

#- 196 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'GetPublishedStore' test.out

#- 197 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'DeletePublishedStore' test.out

#- 198 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'GetPublishedStoreBackup' test.out

#- 199 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'RollbackPublishedStore' test.out

#- 200 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'x0vyaMbcnlyBvXdp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetStore' test.out

#- 201 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'oYVZKx8oPBJncKdy' \
    --body '{"defaultLanguage": "abXymlDvbcApuoA5", "defaultRegion": "PCdXT4YD9fDzx1WP", "description": "pvLBMMNJG6TuQ90j", "supportedLanguages": ["hJCrrsBPvGhWiPLL", "d5eChF7cgujItr2Z", "FjL5qUyimmVzOJYe"], "supportedRegions": ["bI5Egye4CkNIFSC7", "IcfdqOCaqFaXYK6A", "zVrp3wn2BlIfmyT5"], "title": "owJEG08jO7JMvkh0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'UpdateStore' test.out

#- 202 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '8NQQhBIt2H2PvWFn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'DeleteStore' test.out

#- 203 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'JMiszwcYW9Jy4n5q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'QueryChanges' test.out

#- 204 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    '4WgYvJS0xuVskVlA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'PublishAll' test.out

#- 205 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    '0TNAcmfUmAzc5JVu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'PublishSelected' test.out

#- 206 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'c5LBd3uXt6TP1AE4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'SelectAllRecords' test.out

#- 207 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    'lqnIwLN2lGYqQSzI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'SelectAllRecordsByCriteria' test.out

#- 208 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'UdIqmVvmcAsPgT6X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetStatistic' test.out

#- 209 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'UEeRKSDbomdWWRi7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'UnselectAllRecords' test.out

#- 210 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'OHZeGP4o1Tgbe8J8' \
    'xso71ULeHVV40sjQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'SelectRecord' test.out

#- 211 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    '8mtTN08V3MMSrrV6' \
    'FB8DFwD7WXkw7te8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'UnselectRecord' test.out

#- 212 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'pQfvxY5zPZKMd5It' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'CloneStore' test.out

#- 213 ExportStore
eval_tap 0 213 'ExportStore # SKIP deprecated' test.out

#- 214 QueryImportHistory
$PYTHON -m $MODULE 'platform-query-import-history' \
    'nXbDbXW9KlfgVvjj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'QueryImportHistory' test.out

#- 215 ImportStoreByCSV
$PYTHON -m $MODULE 'platform-import-store-by-csv' \
    'jExRk4JHYGa2nnyq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'ImportStoreByCSV' test.out

#- 216 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'QuerySubscriptions' test.out

#- 217 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'vFCYJOJl9ljs9WPw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'RecurringChargeSubscription' test.out

#- 218 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'xzICEykNJeEn6eio' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'GetTicketDynamic' test.out

#- 219 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'soCvrGeDygOZbA1U' \
    --body '{"orderNo": "GLox4eJuvLmou5At"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'DecreaseTicketSale' test.out

#- 220 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'B5J9XxYqy0HcWUCc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'GetTicketBoothID' test.out

#- 221 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'ahA1tjiBugkSmA8p' \
    --body '{"count": 35, "orderNo": "JjnydxAGgqH3ytkr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'IncreaseTicketSale' test.out

#- 222 Commit
$PYTHON -m $MODULE 'platform-commit' \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 48, "currencyCode": "Z2tfFjNF99VixS5E", "expireAt": "1980-04-24T00:00:00Z"}, "debitPayload": {"count": 46, "currencyCode": "u4km3iKiNLRNa01S", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 2, "entitlementCollectionId": "hgZby9mBdGrJY5J0", "entitlementOrigin": "GooglePlay", "itemIdentity": "Sja5TxqN8RXvgNzo", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 57, "entitlementId": "Km851zHcDdphWEIl"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 27, "currencyCode": "pOp8UlDmFYNBSDEg", "expireAt": "1980-08-05T00:00:00Z"}, "debitPayload": {"count": 80, "currencyCode": "NlenFuUeRc2SCqQ9", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 26, "entitlementCollectionId": "grqAIaKAUBfyFCxs", "entitlementOrigin": "Twitch", "itemIdentity": "MAbJnqDKuBGWmZti", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 97, "entitlementId": "yHqsS7t8WUpg0equ"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 23, "currencyCode": "7wIz8o3rFWvlE7bm", "expireAt": "1981-05-04T00:00:00Z"}, "debitPayload": {"count": 0, "currencyCode": "HJmrL7AZ1MKcHBB1", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 10, "entitlementCollectionId": "t4CDlWZzqpJeQd6t", "entitlementOrigin": "Xbox", "itemIdentity": "kuGKVQWNOUAh5VXa", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 39, "entitlementId": "2d31zPHg6tXTsGmv"}, "type": "DEBIT_WALLET"}], "userId": "XM6sr8tSaA0g0OCI"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 77, "currencyCode": "QYU4pHU7Kjrz4HAG", "expireAt": "1988-01-16T00:00:00Z"}, "debitPayload": {"count": 73, "currencyCode": "CEsJIB0JkRcYhCT3", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 81, "entitlementCollectionId": "UMiOk2aKaj7wqr7w", "entitlementOrigin": "Other", "itemIdentity": "y0WLYMNb0QsxPlx6", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 66, "entitlementId": "SToD0bb0SXZUy9H0"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 84, "currencyCode": "13rnYfZ8c8zURCck", "expireAt": "1995-03-28T00:00:00Z"}, "debitPayload": {"count": 41, "currencyCode": "TYAkogbV1bNoJJUh", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 22, "entitlementCollectionId": "p56dnYHk1iLtAXL3", "entitlementOrigin": "GooglePlay", "itemIdentity": "CBnIHoRNWTVvIN7c", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 41, "entitlementId": "F6HtcJbqjCZkEvdW"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 98, "currencyCode": "SHYsva1jk545vt1V", "expireAt": "1981-01-27T00:00:00Z"}, "debitPayload": {"count": 38, "currencyCode": "JF9lLvPS5jJ58vaR", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 90, "entitlementCollectionId": "axVQeMUb1kvSj6jc", "entitlementOrigin": "IOS", "itemIdentity": "hh81CTYPYD0WHJ0J", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 0, "entitlementId": "XmB5Z6en6c5d620U"}, "type": "CREDIT_WALLET"}], "userId": "CaXsZoyeqN5ouEcX"}, {"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 16, "currencyCode": "WbROnhOUSnN2KpfX", "expireAt": "1989-06-27T00:00:00Z"}, "debitPayload": {"count": 97, "currencyCode": "6sJUnv5BwzKyxJqB", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 74, "entitlementCollectionId": "aof96NNQPxPe1HYk", "entitlementOrigin": "GooglePlay", "itemIdentity": "iRmbELIzawfXvKu5", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 37, "entitlementId": "PIGCrJozIio8nWa6"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 39, "currencyCode": "5pJSHZCzyWKP30Ku", "expireAt": "1980-08-10T00:00:00Z"}, "debitPayload": {"count": 51, "currencyCode": "e3Cvn1QymYMLAdBS", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 85, "entitlementCollectionId": "1SlSm20DzdKk8FlV", "entitlementOrigin": "Epic", "itemIdentity": "atall18E5J9knaLM", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 17, "entitlementId": "veXWFZqotaiZN3MP"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 2, "currencyCode": "Wk5lHvw9RXrx8aUB", "expireAt": "1998-07-12T00:00:00Z"}, "debitPayload": {"count": 60, "currencyCode": "XuK2MwrRJukMTkO0", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 75, "entitlementCollectionId": "fxRIUU3K7sjvHHFm", "entitlementOrigin": "Epic", "itemIdentity": "g65JkaoPuBsuSb0L", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 86, "entitlementId": "qgslinTPbY1473RF"}, "type": "DEBIT_WALLET"}], "userId": "lwtoen6TTQtwMX4Q"}], "metadata": {"AE2aV1l1P0cjdc49": {}, "Ah8hoDWRw7XYzZLl": {}, "Lq8lPGFyb34DDyqv": {}}, "needPreCheck": false, "transactionId": "kfHjqVCMpunzeSPk", "type": "f8Y5ksiqVvcGZxTP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'Commit' test.out

#- 223 GetTradeHistoryByCriteria
$PYTHON -m $MODULE 'platform-get-trade-history-by-criteria' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'GetTradeHistoryByCriteria' test.out

#- 224 GetTradeHistoryByTransactionId
$PYTHON -m $MODULE 'platform-get-trade-history-by-transaction-id' \
    '7pduqX3e9tt0zz5g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'GetTradeHistoryByTransactionId' test.out

#- 225 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    's7YuyxJLe1TkfLiM' \
    --body '{"achievements": [{"id": "9EqyhFh7mq6sgk5c", "value": 69}, {"id": "AYERGPWWPobC0Fiw", "value": 80}, {"id": "ry1MM9eo43Qi5cRe", "value": 15}], "steamUserId": "jxfK1P9wjSBBxjKN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'UnlockSteamUserAchievement' test.out

#- 226 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'vNPiwIMR5JsbLCG2' \
    '0BKfuTGRLmLwLS7d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'GetXblUserAchievements' test.out

#- 227 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'IB0aGjtNbryvmkem' \
    --body '{"achievements": [{"id": "ouOe0GhKNxavCN2N", "percentComplete": 65}, {"id": "7HbR5lY76lAzKbyH", "percentComplete": 32}, {"id": "n9TSwEvJPZcYrXKM", "percentComplete": 27}], "serviceConfigId": "5rvBRXJxUvm1xIvC", "titleId": "ywA95KVla3LCTgTk", "xboxUserId": "PtcVfRHox2lJjo1I"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'UpdateXblUserAchievement' test.out

#- 228 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    '9gluGDrbO6CoGGaG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeCampaign' test.out

#- 229 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'BbMIhMZL5o3htHW6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeEntitlement' test.out

#- 230 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'Gx9FaoDIwGJ3pRyN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeFulfillment' test.out

#- 231 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'wb9JgVZofu7lNuwr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AnonymizeIntegration' test.out

#- 232 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'S7xf7BiZI9Jujxs7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'AnonymizeOrder' test.out

#- 233 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'GKf2LOlVbEWajKUr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'AnonymizePayment' test.out

#- 234 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    '3rx7Sdt80ugFtH5g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'AnonymizeRevocation' test.out

#- 235 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'SuRJLGkijLEJPCda' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'AnonymizeSubscription' test.out

#- 236 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'hOY2goEK35CZu7WE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeWallet' test.out

#- 237 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    '18eU5rtQUWRLvu3W' \
    'STEAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetUserDLCByPlatform' test.out

#- 238 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'y0cIm2Tc4sbYVp7a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'GetUserDLC' test.out

#- 239 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'myDRQk3QGp0uzzvA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'QueryUserEntitlements' test.out

#- 240 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'fa6BW7oGw2U9LoHW' \
    --body '[{"collectionId": "S4koauo9jkTEI52B", "endDate": "1994-10-31T00:00:00Z", "grantedCode": "rVMjqwLfyh5UUBSK", "itemId": "yenhZ56H3l3jc106", "itemNamespace": "0kqFKNcGHYIXDqQp", "language": "ryFZ", "origin": "Epic", "quantity": 35, "region": "C8CPFXan7LUfcQhc", "source": "PURCHASE", "startDate": "1989-07-17T00:00:00Z", "storeId": "dSIbTi8dxU11tPBl"}, {"collectionId": "MCz6SSpxt0aZZr3S", "endDate": "1971-09-02T00:00:00Z", "grantedCode": "JHkTstBGTm2OFHVE", "itemId": "oRljsGF5AYZlEYqT", "itemNamespace": "VSCLemvpJXl2drfG", "language": "XGjV_TKqU", "origin": "Playstation", "quantity": 34, "region": "dXjtRaBOlhg63Pdu", "source": "IAP", "startDate": "1987-01-26T00:00:00Z", "storeId": "77oZV8BGfavVPOha"}, {"collectionId": "af5eExcjABRx8qNM", "endDate": "1982-01-28T00:00:00Z", "grantedCode": "4XLW0xlb6yLTssmZ", "itemId": "XLvxRhf6ICrMr8z6", "itemNamespace": "e2UDBycYrDDg5iDN", "language": "qZkk", "origin": "Playstation", "quantity": 89, "region": "GW9AQMDnaFw1u7BL", "source": "ACHIEVEMENT", "startDate": "1981-07-14T00:00:00Z", "storeId": "j0V2ccQ60lub807E"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GrantUserEntitlement' test.out

#- 241 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    '0PGhia3QvaFIVfHy' \
    'AiTeDDuvgKTfrZ6T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetUserAppEntitlementByAppId' test.out

#- 242 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'frQrFIsYsZ1dTn2p' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'QueryUserEntitlementsByAppType' test.out

#- 243 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'Hh1VjLqa0AODLarM' \
    'crlOCtMCyPHnS8ue' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementByItemId' test.out

#- 244 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'PyiByYQOgKKv9kQY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetUserActiveEntitlementsByItemIds' test.out

#- 245 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'aSI3bbqZQkXAns7V' \
    'rdNH8v1oP98hanhE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementBySku' test.out

#- 246 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    '18UbY1Zkrfk0Xn6j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'ExistsAnyUserActiveEntitlement' test.out

#- 247 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'wfR02GfMrXzI7oWD' \
    '["1mZ9rW6QdtPe4Yle", "Mg5NGs1Pmz6Amebh", "0FbOWyhAnMP6BdBw"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 248 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    '6d4UOI7Tr9NHcXeE' \
    'WIpyYx9wOuNquv2q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 249 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'kqRR9Nwd8OrgT5HM' \
    'aelKs3hdNcCPnrmZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'GetUserEntitlementOwnershipByItemId' test.out

#- 250 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'DNctQe0IM586qYdN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlementOwnershipByItemIds' test.out

#- 251 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'vmRITEU7usHknnfY' \
    'NY7ZXicpAJw7Ct9A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'GetUserEntitlementOwnershipBySku' test.out

#- 252 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'mEoUNlmQjebaV8c1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'RevokeAllEntitlements' test.out

#- 253 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    '3FZxX6qNntgmml0t' \
    's1uw7WvaRDN6waXR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserEntitlements' test.out

#- 254 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'BRT78fZc6LpvtY7B' \
    'k3j0Rt5ai8x1JHTP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'GetUserEntitlement' test.out

#- 255 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'fATk2jDkPq7n0Vqg' \
    'iBJsxKkXhiEo0RXg' \
    --body '{"collectionId": "JkWelLk7pTvUfmra", "endDate": "1999-02-03T00:00:00Z", "nullFieldList": ["zJHVwE86VYnuoHev", "gj9ralh2tjIEDpjL", "JD7E0dh077pXU34w"], "origin": "Epic", "reason": "JJmXX0pmy1KDJtg9", "startDate": "1987-10-26T00:00:00Z", "status": "INACTIVE", "useCount": 83}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'UpdateUserEntitlement' test.out

#- 256 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '3nqWutrpjBOnBeqw' \
    'BnFdy01mQjVblM1G' \
    --body '{"options": ["nFG6ePpjPG4iKj1V", "xNoFLwY2aYPpdsN5", "5f9R3a5ZvIk8F6ff"], "platform": "aPP2hJSGfW6ap0ws", "requestId": "dPdG1EQTyBW6pf9N", "useCount": 16}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'ConsumeUserEntitlement' test.out

#- 257 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'en8keuXuWuitb85N' \
    's7DhXCIneqddStnB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'DisableUserEntitlement' test.out

#- 258 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'NigsnBpu24ga0d3N' \
    'vXvIgvIynEaAcX7f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'EnableUserEntitlement' test.out

#- 259 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'XbKWmraqNIKPX6gP' \
    'HT29wkZwM8cvObRj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementHistories' test.out

#- 260 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'Kxi25l9mb1mSJffU' \
    'aLwOsYRIJearztP7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'RevokeUserEntitlement' test.out

#- 261 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    'sqwracbiPrT7cARn' \
    'ySCNlQCocWBq1Vsp' \
    --body '{"reason": "Kjs4jxjTNe3vK6XX", "useCount": 76}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'RevokeUserEntitlementByUseCount' test.out

#- 262 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'Hvr1zREqWwsQaxbd' \
    'G9IxEoxcgOEmGQpz' \
    '80' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 263 RevokeUseCount
eval_tap 0 263 'RevokeUseCount # SKIP deprecated' test.out

#- 264 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    '9nK2MnWISZ8LUxYa' \
    'nMQUFaZF74RbeEi4' \
    --body '{"platform": "WAntBdOLVnsl61rz", "requestId": "qSDNeQF7Q3XLgdI7", "useCount": 40}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'SellUserEntitlement' test.out

#- 265 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'RNkMX09nQEwFSce6' \
    --body '{"duration": 98, "endDate": "1995-05-29T00:00:00Z", "entitlementCollectionId": "Z6xFNiFC0HSIZAGh", "entitlementOrigin": "System", "itemId": "57cVP8tXCteutO2h", "itemSku": "lDa0voH7Al8vuxWT", "language": "aiUJpIgLrblSQiwr", "metadata": {"mWKb8IhCNJqtCtGv": {}, "xKwuL3MuhHXzy6Wj": {}, "NeNYuVWrqxrNDhsa": {}}, "order": {"currency": {"currencyCode": "w4vbDPKG9aUuCw1y", "currencySymbol": "s0BxLbujuXwWEJUv", "currencyType": "REAL", "decimals": 35, "namespace": "8k6CNRAfp1s21wul"}, "ext": {"z8cb64KjGDHolxRG": {}, "H5sQmA6XL9p83Led": {}, "5r4J7MEwKxtP0Ska": {}}, "free": false}, "orderNo": "PZUjh5Id1WwN3o2L", "origin": "Nintendo", "overrideBundleItemQty": {"DyXlYJu8bIkkFh5L": 33, "5MHuvBu2QQOXQatB": 62, "9di8JeefXJ2PdIoH": 7}, "quantity": 59, "region": "oDHgvwcWxlmJoJSn", "source": "EXPIRATION", "startDate": "1976-07-21T00:00:00Z", "storeId": "4T5By0AqALCR39RH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'FulfillItem' test.out

#- 266 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '5UcRubJZYIgyBXZf' \
    --body '{"code": "TmD5U7RTvIuyjoeX", "language": "JfTg-sIRw-817", "region": "2xJmIQ7lG3SSfJb7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'RedeemCode' test.out

#- 267 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    'YC46l63YRc0T3d9X' \
    --body '{"itemId": "aFEWXtvTExHo1Hli", "itemSku": "WVA9kYxDaegAgXI2", "quantity": 4}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PreCheckFulfillItem' test.out

#- 268 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'D6u7wIciVVHoFtt4' \
    --body '{"entitlementCollectionId": "AP9G3HyBugfReiDL", "entitlementOrigin": "Epic", "metadata": {"sEtHq5KHA9baTP1j": {}, "Njpn8azMyTBLnxtG": {}, "nH0h3TvkynRdR0cT": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "8XzmjXX4csMlaBkq", "namespace": "9QHEb66Bo3ALdAKA"}, "item": {"itemId": "QUoGDOUFK4BcWOxn", "itemSku": "werZoIJ2JMtHAD8g", "itemType": "JdK4CJBY63ASIuZt"}, "quantity": 62, "type": "CURRENCY"}, {"currency": {"currencyCode": "2WuycIdVm37lVyVY", "namespace": "hbj7X96t5WMLdod5"}, "item": {"itemId": "DYqp6XDPJmYDZqWo", "itemSku": "L8k0jEDj1R673CfY", "itemType": "bn53kIRN1df13Evj"}, "quantity": 92, "type": "CURRENCY"}, {"currency": {"currencyCode": "WqZYmAvVETTsjp3k", "namespace": "TD5DUdBvhgsfcLUR"}, "item": {"itemId": "AHqkEpmWErwMkbsC", "itemSku": "K44WEKYCuqx8xzh9", "itemType": "bTsHGm5hk6Ypn8Ks"}, "quantity": 80, "type": "ITEM"}], "source": "ORDER_REVOCATION", "transactionId": "fuARcHovGUZSzWfq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'FulfillRewards' test.out

#- 269 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    '3hqssnqUPIJabCPM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'QueryUserIAPOrders' test.out

#- 270 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'hqOeDXc5LH8xN38d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'QueryAllUserIAPOrders' test.out

#- 271 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'VbdD5L9eqq8PstBn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'QueryUserIAPConsumeHistory' test.out

#- 272 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'VeYTD7i7fqOSZxwO' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "hL_HqvE", "productId": "6sjHoBLGz2Km7DEt", "region": "ivDSv0mmNGIWjV9L", "transactionId": "9aA57kR2ACNzI10t", "type": "PLAYSTATION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'MockFulfillIAPItem' test.out

#- 273 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    '01KuFbs8Iv2Ij9B7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'QueryUserOrders' test.out

#- 274 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'VD3SyR3UCMUtsTLo' \
    --body '{"currencyCode": "eVLjxbwUQUVEWE0x", "currencyNamespace": "tN3v8DgFUrjRGzth", "discountCodes": ["YJKH9vhOLpoWOSJS", "Rgh67ylD9xIb44v7", "0kU6fD66yb2MtSEi"], "discountedPrice": 51, "entitlementPlatform": "Oculus", "ext": {"Z6bUl6Q4DAwzeZS2": {}, "0lWbIy7iWsAEY3T2": {}, "YDXuJSzkSZfZ5dui": {}}, "itemId": "jZETizaQixMgpWQ9", "language": "PgUcB3N69aWeqMy8", "options": {"skipPriceValidation": false}, "platform": "Playstation", "price": 17, "quantity": 18, "region": "4MOmP494vGlNtuMU", "returnUrl": "pS3K4kKGKct8SZQK", "sandbox": true, "sectionId": "EK4sZzj7oPP3OeZV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'AdminCreateUserOrder' test.out

#- 275 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'ILEaXbHnhR8gT3if' \
    '17nsndhy0Gtga4xR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'CountOfPurchasedItem' test.out

#- 276 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'RNit3ApyAvkVtA8b' \
    '9zvOaiSMHjVciAVr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'GetUserOrder' test.out

#- 277 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'PuzKV1Wj7J3Qrgnh' \
    'ZMehNOncXNM18ZiB' \
    --body '{"status": "REFUNDING", "statusReason": "63McAoV2wACiUOAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'UpdateUserOrderStatus' test.out

#- 278 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'JUhwTgl0tvWir64f' \
    'qpyffEz0xbTHKA2Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'FulfillUserOrder' test.out

#- 279 GetUserOrderGrant
eval_tap 0 279 'GetUserOrderGrant # SKIP deprecated' test.out

#- 280 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'qU0FWbYOy7zpSeyG' \
    'BLauvijI1vUPcP4X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'GetUserOrderHistories' test.out

#- 281 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'MNICniSwlnSYTuNV' \
    'ajwq9onI9NBO48v6' \
    --body '{"additionalData": {"cardSummary": "DUJRe1LpwuZIoLrV"}, "authorisedTime": "1993-02-26T00:00:00Z", "chargebackReversedTime": "1998-02-05T00:00:00Z", "chargebackTime": "1984-06-20T00:00:00Z", "chargedTime": "1972-05-24T00:00:00Z", "createdTime": "1996-09-25T00:00:00Z", "currency": {"currencyCode": "9Vdxzm1SnMFP7ijR", "currencySymbol": "I315PPtar2LEaQgw", "currencyType": "REAL", "decimals": 22, "namespace": "gNbqY9SXZMP793iE"}, "customParameters": {"dDgNGO3Dfmm8Q8A0": {}, "3ovBcVCnifE0YS9K": {}, "hgP8rRhISjcIvS4I": {}}, "extOrderNo": "6tzdbpIKoQhtOlKv", "extTxId": "npfkWv9kQ9FRDgAE", "extUserId": "VfEZshgoviRWdasw", "issuedAt": "1994-07-24T00:00:00Z", "metadata": {"JFXjPc1tJBaHYTZ2": "IdgUYmmt7HXJCUjw", "NMnmrmR9dDVbvyNu": "pYCzyYEaMgXsszL7", "hpsSwAQxtDEUm4Pn": "TTyHhBvqhixMPjP9"}, "namespace": "lZT5O6iUdCh9M0KC", "nonceStr": "9zNZRaWXjMCSId4t", "paymentData": {"subtotalPrice": 60, "tax": 23, "totalPrice": 71}, "paymentMethod": "DNsFuGcD5vraJ3Wf", "paymentMethodFee": 39, "paymentOrderNo": "aPgdCvQwz6hdCMrH", "paymentProvider": "ALIPAY", "paymentProviderFee": 0, "paymentStationUrl": "pPD12BS4Q8u6QqK4", "price": 59, "refundedTime": "1982-02-03T00:00:00Z", "salesTax": 77, "sandbox": false, "sku": "DtNRfmo1w8aAcuRQ", "status": "DELETED", "statusReason": "94tziEpGVXsUvez1", "subscriptionId": "lbenagh9kCPNSZTI", "subtotalPrice": 23, "targetNamespace": "76AToup2zhRng3Ki", "targetUserId": "bPdtHZPKb8CPLdIk", "tax": 7, "totalPrice": 71, "totalTax": 63, "txEndTime": "1994-06-14T00:00:00Z", "type": "6FvvEdqHzEDtl5oR", "userId": "9m1dm3fGK1wINqvF", "vat": 35}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'ProcessUserOrderNotification' test.out

#- 282 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'EOkn4KNYWbvsmtsO' \
    'VvpKYJyOQGUiqcJ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'DownloadUserOrderReceipt' test.out

#- 283 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'Jldy73ukTxjfHXQQ' \
    --body '{"currencyCode": "VmxHmCVmuzoO2qep", "currencyNamespace": "49tDHFl18cQlJCgK", "customParameters": {"FmN851YX8ylpv3hD": {}, "DLL1n4On03mToMhB": {}, "jPD6aztTyMQghPWO": {}}, "description": "OAzTmCVFEHDMT1eD", "extOrderNo": "VbcvyxtTxuptcOYS", "extUserId": "Tj2AWA5f61ztkSpG", "itemType": "COINS", "language": "Fgfc-217", "metadata": {"lEe95LWKrkj7TPui": "gp3RiJofgD4VypGT", "4cTfKNrjPqUk0t9a": "quw2B2UVIQMA6BOp", "xtYbmQwS5kNxCPLe": "KM4cQl8DlY91SXBe"}, "notifyUrl": "HwrkPCaAycmEvk3r", "omitNotification": false, "platform": "TLjZT9qayJJtW8sq", "price": 22, "recurringPaymentOrderNo": "1FilcO4pajEhkRLM", "region": "vZnYZKCk0zbREElw", "returnUrl": "dZORocHSHulJHhAn", "sandbox": false, "sku": "aATHwPTM0LfcjvOk", "subscriptionId": "o7332ZZa1YfuaQ7g", "title": "Pgiz2EBME5ikH5iU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'CreateUserPaymentOrder' test.out

#- 284 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'T9GB4bGcYzy0T6Q8' \
    '9155mM6RsYxtVcgA' \
    --body '{"description": "1q0sR85DcnV5fUvb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'RefundUserPaymentOrder' test.out

#- 285 GetUserPlatformAccountClosureHistories
$PYTHON -m $MODULE 'platform-get-user-platform-account-closure-histories' \
    '2OK8scK4MyIy9F8a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'GetUserPlatformAccountClosureHistories' test.out

#- 286 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'BXzn8z72hf4D4NOp' \
    --body '{"code": "bUDnyVmYotZCA9LA", "orderNo": "Dbjj6viKPQxoVP77"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'ApplyUserRedemption' test.out

#- 287 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'RuEzCRLrZmVBFc2P' \
    --body '{"meta": {"689TFuh1hFoX56gz": {}, "osv2p6WtLfgPM8t1": {}, "tgWhx94eFnxfKdpt": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "cgxbMBZz4e7YZPuT", "namespace": "khJH0gQxqxmEFytm"}, "entitlement": {"entitlementId": "0rZGlRUuJ7HggA1D"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "DBtkE9JX7oDFoXpZ", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 51, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "Z9i1ml0sbgQ5zPZb", "namespace": "llwvt3TjGezRRUjC"}, "entitlement": {"entitlementId": "NiQauO5Cfja0qWoq"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "rZJAMVQaCd4UgSRs", "itemIdentityType": "ITEM_ID", "origin": "Oculus"}, "quantity": 8, "type": "ITEM"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "TJwuS3NPZi6h1nN0", "namespace": "txahdhp0tmV4jjIk"}, "entitlement": {"entitlementId": "C8lqpB9cbsDlreKf"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "HxEsiEsZH3UVmVcO", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 96, "type": "ITEM"}], "source": "ORDER", "transactionId": "2qMul8cl55U4RB2x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'DoRevocation' test.out

#- 288 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    'VHiARcFLzOW7Uz8G' \
    --body '{"gameSessionId": "z5TN3bJ6UVKAdNp2", "payload": {"ReRw5WPjohGmJKCj": {}, "bEtFKLGvBQOS81Lp": {}, "Ih5QqEOKQXnUYMXv": {}}, "scid": "JJrO8K9yVaSV6MkQ", "sessionTemplateName": "pPd0utGYDVGwpKCk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'RegisterXblSessions' test.out

#- 289 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'OgcVrMw1DAaC3oGY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'QueryUserSubscriptions' test.out

#- 290 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'mbE9E87RTBvlu7lo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionActivities' test.out

#- 291 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '1foXU28IE7EVvQko' \
    --body '{"grantDays": 33, "itemId": "WD1svihoAZBd4hky", "language": "kRLwN2LHFkXjhDf4", "reason": "RPTS1xmIM78uco5d", "region": "i3sJNayfJakaJtAF", "source": "semukeOnQqvXAFVK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PlatformSubscribeSubscription' test.out

#- 292 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'LeOpEjPJDBPU8LPr' \
    '0bjy4nFkl8n6PSoX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 293 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'Yb9tc6rYyOiaUKC8' \
    't4GV0JiE7ZbWP80Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'GetUserSubscription' test.out

#- 294 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'ctunIw8zzjr1oeY1' \
    'p4P0xno1luSqciM4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'DeleteUserSubscription' test.out

#- 295 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'rfqsoJ7AkLiYjJvl' \
    'KhH1ccnrp3T2fKqq' \
    --body '{"immediate": true, "reason": "uV5cRj529cEGlYlB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'CancelSubscription' test.out

#- 296 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'TFD4MBzAgdtJfakt' \
    'aCbkIORjbuZi76GD' \
    --body '{"grantDays": 51, "reason": "pOtqU8Y63DFSnh5I"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'GrantDaysToSubscription' test.out

#- 297 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'bdftTLRLUGwenKzX' \
    'RT99U5B5j9CT2YI1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'GetUserSubscriptionBillingHistories' test.out

#- 298 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'qt4AYI54fgXlDCLF' \
    'wNGzR7zvW33BLQ5N' \
    --body '{"additionalData": {"cardSummary": "yteBZg7IM93LGdMK"}, "authorisedTime": "1976-12-28T00:00:00Z", "chargebackReversedTime": "1978-07-10T00:00:00Z", "chargebackTime": "1998-06-12T00:00:00Z", "chargedTime": "1996-01-24T00:00:00Z", "createdTime": "1972-01-22T00:00:00Z", "currency": {"currencyCode": "FtJZeinW64n9q4as", "currencySymbol": "Ifg6qpRvHGYNAfvl", "currencyType": "VIRTUAL", "decimals": 16, "namespace": "pbw9yPFofHSVjTbM"}, "customParameters": {"9IHL2JcpnLuindE3": {}, "Ucg05FtWiuP1xyPe": {}, "Wov5pJJdyu2TxbDT": {}}, "extOrderNo": "PkZkYfTO2Gg00JcX", "extTxId": "GaIUaL3FoA27eK2U", "extUserId": "3IHpgmmQaQj7hyQj", "issuedAt": "1996-12-15T00:00:00Z", "metadata": {"qzvHab6b9t7DWTaU": "GBJRTcrm3mIBuPZx", "qlGGOe2VYsej3cSW": "6YWXMTlqVrGyQYDn", "bzj7Xg2lcvB7TOu2": "FcuLwU5IJt4pAasY"}, "namespace": "NW28u3UZ3q6QdMAL", "nonceStr": "9IC4460Wck2oK2mL", "paymentData": {"subtotalPrice": 46, "tax": 33, "totalPrice": 21}, "paymentMethod": "27RgguQ45JSoDgfL", "paymentMethodFee": 1, "paymentOrderNo": "Iy0lnTniV8j7XmR8", "paymentProvider": "XSOLLA", "paymentProviderFee": 84, "paymentStationUrl": "UW42wLu5tQBUE3k2", "price": 26, "refundedTime": "1986-10-06T00:00:00Z", "salesTax": 44, "sandbox": true, "sku": "m4nKNGlXp2jJfLGd", "status": "REFUNDING", "statusReason": "zQqYmGkk8Pcq83l2", "subscriptionId": "hWOuqsilAWXNFfxI", "subtotalPrice": 100, "targetNamespace": "Ev28mtO5isAId2vI", "targetUserId": "IeRmFR2TQ2rE5Ugf", "tax": 83, "totalPrice": 33, "totalTax": 93, "txEndTime": "1989-07-29T00:00:00Z", "type": "oZimYNHB2ph25oEs", "userId": "CRrlY6AX1ksmS6Cm", "vat": 12}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'ProcessUserSubscriptionNotification' test.out

#- 299 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    '5yFZVt1HZPcFbl4X' \
    'rKUphPevxFz1b7Q3' \
    --body '{"count": 80, "orderNo": "vCur3yS6PcP3N8ee"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AcquireUserTicket' test.out

#- 300 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    '3aFSyZkpxzyGW3kH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'QueryUserCurrencyWallets' test.out

#- 301 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'AKNzH5cJ1x2IhHEQ' \
    'wW44r5yXnevZsdD9' \
    --body '{"allowOverdraft": false, "amount": 19, "balanceOrigin": "Nintendo", "balanceSource": "PAYMENT", "metadata": {"75t7Rgtj7pKnbtPA": {}, "ZsNwKWlHT7wmvO6Y": {}, "DgQ4TLdkZgouTEi1": {}}, "reason": "9doNSCRrqi0F1FGx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'DebitUserWalletByCurrencyCode' test.out

#- 302 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'hrYszqB4U4xH3Npx' \
    'EEE1xE1teY5Ma16S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'ListUserCurrencyTransactions' test.out

#- 303 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 37, "debitBalanceSource": "TRADE", "metadata": {"2B137kVZhkISgONg": {}, "rrElIGGV8sY9ZaFa": {}, "HBtEtzzbIbJ6nsmY": {}}, "reason": "ALYAas29PBhKjKkX", "walletPlatform": "Steam"}' \
    'PiEKRgT1zZPaKlnI' \
    'Y3vGLET05JQWhwij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'CheckBalance' test.out

#- 304 CheckWallet
eval_tap 0 304 'CheckWallet # SKIP deprecated' test.out

#- 305 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'C7ydSFRQ4V5Oyypf' \
    'Q5iJtNrVbjnyYERw' \
    --body '{"amount": 9, "expireAt": "1998-07-22T00:00:00Z", "metadata": {"1DBdzzVbhZKnh9Ff": {}, "HsuwhOtgOWtZuhAp": {}, "0yxLpfWB0inH8xFD": {}}, "origin": "Xbox", "reason": "WRlOGzgjnghEeYuT", "source": "OTHER"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'CreditUserWallet' test.out

#- 306 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 12, "debitBalanceSource": "PAYMENT", "metadata": {"Z9naIn2EhpBnamOq": {}, "QfF1i9lDi17TuzOC": {}, "kfreVXF3F57a8i8F": {}}, "reason": "BQVq8F8UHFjnV4a8", "walletPlatform": "Oculus"}' \
    'Q6h4G1JwgwqyIOpm' \
    'NMgpfDY1FR9rKaxa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'DebitByWalletPlatform' test.out

#- 307 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'WsCGgI79Hr331Yip' \
    'wCDOc9FNs0rjVHzs' \
    --body '{"amount": 59, "metadata": {"ILR0Ela7ZLwTA0wt": {}, "5op6F6Z1a1sBmUaC": {}, "x3pnw2UqOcXFVD0p": {}}, "walletPlatform": "Epic"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PayWithUserWallet' test.out

#- 308 GetUserWallet
eval_tap 0 308 'GetUserWallet # SKIP deprecated' test.out

#- 309 DebitUserWallet
eval_tap 0 309 'DebitUserWallet # SKIP deprecated' test.out

#- 310 DisableUserWallet
eval_tap 0 310 'DisableUserWallet # SKIP deprecated' test.out

#- 311 EnableUserWallet
eval_tap 0 311 'EnableUserWallet # SKIP deprecated' test.out

#- 312 ListUserWalletTransactions
eval_tap 0 312 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 313 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'ListViews' test.out

#- 314 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    'A02nKwO7XUNrraxs' \
    --body '{"displayOrder": 69, "localizations": {"3yZ4vipgYCZiVhuU": {"description": "lRF8bgS0Z3T7DC5T", "localExt": {"O5zuEOtCw7S3b8oI": {}, "W8rduVEpRjbhlZ8r": {}, "ATgmfiV8x6LtOu3S": {}}, "longDescription": "AtYQcZ2M0m2eu4s6", "title": "Vt77Z7VYCzMbz1C3"}, "ZtjGu9CxaM7nweO9": {"description": "MSckJNZeDhfW7AVH", "localExt": {"VE6TamhtDUacOPwP": {}, "czqMDbsgiaaxIpP9": {}, "oAICocQql5YfBZVQ": {}}, "longDescription": "cDD4zf1BZvQIrbCQ", "title": "Ws1jZYqrf4bxOoik"}, "ruHKYKNEVJSzeli2": {"description": "Uey4fuSj1kSeWA37", "localExt": {"02McnnKWV37CLHYv": {}, "ul2IsFExmn4GV4MH": {}, "5mOZyTMMDazz0zG1": {}}, "longDescription": "FmCCywXfHj329WcN", "title": "k8k8qK4gJrux6tlQ"}}, "name": "DfleFLBKj8h7ZrO4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'CreateView' test.out

#- 315 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'pTU7jATbVBcDGudQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'GetView' test.out

#- 316 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'Qm98BKOdsoaTqFhd' \
    'LfBWZeRFQvrB1lsW' \
    --body '{"displayOrder": 1, "localizations": {"qdV16bQzZjJiiJFm": {"description": "6K0MsbekvKte7LEb", "localExt": {"Oajs9HWygfQVPPqE": {}, "6XNxmrOFx6AenNJC": {}, "zeLqjOhHMsieBzDB": {}}, "longDescription": "hi6oZhjEnbkZp3ZH", "title": "kJnKJ2ksygYZVyQI"}, "UbI6vW6lvytcmR4Q": {"description": "RN7ybL3lT1Ois7Os", "localExt": {"TElVV8XJ7Jg2JP8J": {}, "KQ1Fia4jQzEGsQTm": {}, "KTeq9hsX0E1pSQzk": {}}, "longDescription": "Ja95maQLAJLoGMHe", "title": "P6XZjcdrsSt4spX9"}, "eT2jwH7ODZfqj84X": {"description": "XtngQG9E03eUwSRO", "localExt": {"9eoka5Ufs9UTtAIm": {}, "Wjuqib3nbPkju9PQ": {}, "5pN0XXmk4owknspU": {}}, "longDescription": "KyKWqOaF8En9Ut2q", "title": "FCzvpinQCQg8fidw"}}, "name": "t7qJ1Y75wS8MCmOe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'UpdateView' test.out

#- 317 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'pp9Tx45YPBPqcYNE' \
    'bLCaeCuMBokWfuz2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'DeleteView' test.out

#- 318 QueryWallets
eval_tap 0 318 'QueryWallets # SKIP deprecated' test.out

#- 319 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 91, "expireAt": "1980-11-05T00:00:00Z", "metadata": {"kdg2b5IpRSAi9TY3": {}, "ZiKfpU2gMmaHuaBz": {}, "eu4NPuT03UI8xXkO": {}}, "origin": "Playstation", "reason": "PX2RbN68q9XjuvxG", "source": "REFUND"}, "currencyCode": "UOIadEDAmp524IRp", "userIds": ["lmKcwvGguz7SAcGv", "KbE8ulWHoG1zC1K7", "V4lCJgcrAut2gYpu"]}, {"creditRequest": {"amount": 30, "expireAt": "1996-07-16T00:00:00Z", "metadata": {"3iNe5yhZbqmAgI6L": {}, "Uauh1GlEo4faeHIe": {}, "XSROEb0iXucFoRm7": {}}, "origin": "Steam", "reason": "bh3agt9HQKHNhlzY", "source": "REFUND"}, "currencyCode": "LbZCdcwYHhOIGu0v", "userIds": ["J8JDDcPDev3e8oc7", "h0BPRCWdTnytxmes", "XLFZoXt8k5ZtRJGw"]}, {"creditRequest": {"amount": 39, "expireAt": "1976-03-06T00:00:00Z", "metadata": {"yW5nSpi08dnnmoWG": {}, "bDOWBzflDPp8sE7b": {}, "cL6xy49IPWxqs6jA": {}}, "origin": "Xbox", "reason": "9UUur5zNNHf53CHN", "source": "REDEEM_CODE"}, "currencyCode": "No4VIzCxIBQt7BEs", "userIds": ["NS631eYxKFwpR5uk", "LhZnLrMlvvXDmz8v", "DIkHRMj2pIYdQhOI"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'BulkCredit' test.out

#- 320 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "yHmVB2oTqRWbK0ub", "request": {"allowOverdraft": true, "amount": 41, "balanceOrigin": "Playstation", "balanceSource": "TRADE", "metadata": {"Z9Q29c3FLGnsacda": {}, "kVuBk3eUIeGfzqhO": {}, "BhMJ8BCR0Pr4lUce": {}}, "reason": "WJidPUCDHoZPOFJl"}, "userIds": ["iGQwzPSicmKe5tLT", "2g5iKvkb6yaN0rJR", "Y4T61Ztjv4HjtKUJ"]}, {"currencyCode": "TtAoroj50ibuYM4w", "request": {"allowOverdraft": true, "amount": 68, "balanceOrigin": "Nintendo", "balanceSource": "TRADE", "metadata": {"UseNuEx7YDEkdFOw": {}, "34ZkvghT5B0olJY1": {}, "qewjIDEZedb90DCS": {}}, "reason": "oLAgeUljuQXNi35z"}, "userIds": ["fk3N3FUGt7hRJWz6", "NEKxgigqjIaaftdd", "75tQmcrR08dqYhgj"]}, {"currencyCode": "6woOwujZiqrVmhfR", "request": {"allowOverdraft": false, "amount": 32, "balanceOrigin": "Oculus", "balanceSource": "DLC_REVOCATION", "metadata": {"FAR1FP2qDxqukQGm": {}, "Z8QPR4rrBu0xMLSZ": {}, "M2reG0eUsKe4gH8U": {}}, "reason": "04S5FCpmYeCJwMPH"}, "userIds": ["x5qbq2es6TWDRr2b", "0CKM4KgSaTFkYqyD", "TPUxXfvsOwNGBX5w"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'BulkDebit' test.out

#- 321 GetWallet
eval_tap 0 321 'GetWallet # SKIP deprecated' test.out

#- 322 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'BVeKhVWlgMI2a4Hu' \
    'uQiMf3ZtSRaKTvnY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'SyncOrders' test.out

#- 323 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["QcQK3OLU5xNeaLjR", "oNMmfyuSugV63aIt", "0NDFEcKEQaxvtIGC"], "apiKey": "9xYvHbX0ptwZqHLO", "authoriseAsCapture": true, "blockedPaymentMethods": ["cGQFcH3a88llB2KC", "etfPNaSebuaBm42Z", "RTd7otFS5xUblp0G"], "clientKey": "JFHhDBbjdusCtKYo", "dropInSettings": "61c23RG7T7E4yKJU", "liveEndpointUrlPrefix": "PzM18zammJN39lhB", "merchantAccount": "PiRxSSC369UVGTnt", "notificationHmacKey": "s7qK33YCsDe0la83", "notificationPassword": "cvnj5Ut4YTxIBMay", "notificationUsername": "1sHQoxlbhfnh1lar", "returnUrl": "FYcM0OoFV93hG5GV", "settings": "HrcfGpWAuflVB1op"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'TestAdyenConfig' test.out

#- 324 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "vSUYD0K7Y5bCch6u", "privateKey": "r33FthZ0FOWCXy70", "publicKey": "cM2iJtgpMAKpwx7W", "returnUrl": "N70b3lBnY61oiTLH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'TestAliPayConfig' test.out

#- 325 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "dBClY8kIt120hKXc", "secretKey": "luepkD2cjAyU8thU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'TestCheckoutConfig' test.out

#- 326 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'DebugMatchedPaymentMerchantConfig' test.out

#- 327 TestNeonPayConfig
$PYTHON -m $MODULE 'platform-test-neon-pay-config' \
    --body '{"apiKey": "L0rK6YlDgS7DF6WH", "webhookSecretKey": "O4xKI3DzXlqZ97UE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'TestNeonPayConfig' test.out

#- 328 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "X77J2ZaCgl5zfvvm", "clientSecret": "60VIJWtArjNf9Clz", "returnUrl": "JiLrK8iwSKwTNINv", "webHookId": "7MbR3h7N9mLvImrG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'TestPayPalConfig' test.out

#- 329 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["FR73LVKd3lHIIZTn", "ztswBHIOUcpBs05S", "6VCRgcpqzF0Wdx4t"], "publishableKey": "TiOqvd6is3iMkUYX", "secretKey": "GJ52LhrcYmNqU8FN", "webhookSecret": "r2Sf2vnHOZhdmTd8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'TestStripeConfig' test.out

#- 330 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "ENVRZH8lmeTjzHxg", "key": "wKaMjUptGDH129SP", "mchid": "AGK8QxsXGgAK3QR9", "returnUrl": "g0C7nE1t58LdpQQX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'TestWxPayConfig' test.out

#- 331 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "SvH7kwH9PKAIEqRa", "flowCompletionUrl": "oWkdV23II0TEDjWc", "merchantId": 71, "projectId": 1, "projectSecretKey": "zfsSrF9JBbs3ioKO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'TestXsollaConfig' test.out

#- 332 GetPaymentMerchantConfig1
$PYTHON -m $MODULE 'platform-get-payment-merchant-config-1' \
    'Vcrfhki2j4K5qHkv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'GetPaymentMerchantConfig1' test.out

#- 333 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'YSU2i8wpPg4f6Cyt' \
    --body '{"allowedPaymentMethods": ["NOpTcy8nFxnyUhq8", "QCACdn9QBrEBZ0FG", "cSF09VMOBfFhgytL"], "apiKey": "5jv2cyVSXxh4A5aA", "authoriseAsCapture": false, "blockedPaymentMethods": ["NbzpFsjJLszOiHFs", "5xAVg39H5hnoP20t", "lphew85KPyj4EGRM"], "clientKey": "QTeDUODYJlL3GEb7", "dropInSettings": "CgXWeXJrzNrt0fkj", "liveEndpointUrlPrefix": "elr7hVgkvQdto2Pu", "merchantAccount": "C14Lu2G4Mw4Mo4Ti", "notificationHmacKey": "rGDZ6OUYrf6N5BjG", "notificationPassword": "6bELZwjEmKgZXlgb", "notificationUsername": "V3dBwrK8hpKlmw63", "returnUrl": "co2erbchkQ7n0C9l", "settings": "Jb5WlmAWYUtevQ8X"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'UpdateAdyenConfig' test.out

#- 334 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'saIOTUAVhHL0RrUe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'TestAdyenConfigById' test.out

#- 335 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'v0iu9PIqi1GB1ZAS' \
    --body '{"appId": "gNbyIgL74DNNIeka", "privateKey": "r0ZUahrGZV8WpFG2", "publicKey": "gRMkdKgCuxFa4ix8", "returnUrl": "vdZvwAMOmTtBEJjC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'UpdateAliPayConfig' test.out

#- 336 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'yABy7DKD883wae7z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'TestAliPayConfigById' test.out

#- 337 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '4E6bRC4ufnScsyhW' \
    --body '{"publicKey": "e6QJ1Ov7wz26xkkY", "secretKey": "YxgGLN3OJhmFyZH0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'UpdateCheckoutConfig' test.out

#- 338 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    '5CCwf21Y2Taz2uFp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'TestCheckoutConfigById' test.out

#- 339 UpdateNeonPayConfig
$PYTHON -m $MODULE 'platform-update-neon-pay-config' \
    'z174OkRp3BkdVbqg' \
    --body '{"apiKey": "NrZPytIR58rTLNpt", "webhookSecretKey": "4RpqpKk9toELRS24"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'UpdateNeonPayConfig' test.out

#- 340 TestNeonPayConfigById
$PYTHON -m $MODULE 'platform-test-neon-pay-config-by-id' \
    'cMw2Lh6XTFr1d0v5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'TestNeonPayConfigById' test.out

#- 341 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'MiCVrY2QOMJmNbAv' \
    --body '{"clientID": "9VCU7hdDbGzcJKa1", "clientSecret": "wsM434xCGXTsh5xy", "returnUrl": "deZADSKQFv0tnP05", "webHookId": "L7Nwx1i8sHEbX4mI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'UpdatePayPalConfig' test.out

#- 342 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'domBVyorRK73vbWS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'TestPayPalConfigById' test.out

#- 343 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'NBzkiEHyJEOg3iIj' \
    --body '{"allowedPaymentMethodTypes": ["U3AAg7WG2eTsmDaT", "zm1iyRQNy7RFRXuz", "S7oKchq3HFDAp8sn"], "publishableKey": "TqP81J1c6C2wvWDh", "secretKey": "sYWwX5hKxgCMD1qR", "webhookSecret": "yNe4g5DSTBpRPaWH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'UpdateStripeConfig' test.out

#- 344 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'EoCnndVYqgBPmwdN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'TestStripeConfigById' test.out

#- 345 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'n0rosYXZ8eImgQ2x' \
    --body '{"appId": "0SgQXdYwRiDuKo24", "key": "S6RgeY6mxarVsr09", "mchid": "JpliIbzDdA20g9Ue", "returnUrl": "CPSEkHvpI9pfGr7q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'UpdateWxPayConfig' test.out

#- 346 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    '4J4HRfPSShguxCFD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'UpdateWxPayConfigCert' test.out

#- 347 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'vHcOou9G8lXxC3R0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'TestWxPayConfigById' test.out

#- 348 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'xIfzLRFel1aMfEV5' \
    --body '{"apiKey": "ZvvwEDVOZ5VOwnn6", "flowCompletionUrl": "MrDyExIjLvTJkl9W", "merchantId": 28, "projectId": 5, "projectSecretKey": "xI3c4i8HDHZe4XLK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'UpdateXsollaConfig' test.out

#- 349 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    '8QPEA7MUcU28Tjo0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'TestXsollaConfigById' test.out

#- 350 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'XKr5KBD3YwTJ4Hn5' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'UpdateXsollaUIConfig' test.out

#- 351 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'QueryPaymentProviderConfig' test.out

#- 352 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "2kk1A3H3rxXt6ggK", "region": "wWIYIm0ypwg4VTJp", "sandboxTaxJarApiToken": "u64It1R6axg5VLrk", "specials": ["WXPAY", "WXPAY", "WXPAY"], "taxJarApiToken": "BApNgT5fUWdp4LE1", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'CreatePaymentProviderConfig' test.out

#- 353 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'GetAggregatePaymentProviders' test.out

#- 354 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'DebugMatchedPaymentProviderConfig' test.out

#- 355 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'GetSpecialPaymentProviders' test.out

#- 356 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'FgkytfX1NqG3h3im' \
    --body '{"aggregate": "STRIPE", "namespace": "eCv1Rj0emRqo5yTU", "region": "CEJDyanAifsUA6fK", "sandboxTaxJarApiToken": "zeVIHcetoKKyITDG", "specials": ["ADYEN", "WALLET", "XSOLLA"], "taxJarApiToken": "yqXXnKEtSQkLh10x", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'UpdatePaymentProviderConfig' test.out

#- 357 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'zgtaigOB2XWLXBkH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'DeletePaymentProviderConfig' test.out

#- 358 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'GetPaymentTaxConfig' test.out

#- 359 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "6l2KW0sSf0vJS3l5", "taxJarApiToken": "sWDcfVxx8PSjamcb", "taxJarEnabled": true, "taxJarProductCodesMapping": {"0XInTSZSMKJYcE58": "5zPfpDiAo4zAj1Ag", "jctQkNA6tPxcpOje": "cMqPJvYXVa6273TG", "laOPmEdjp63KfNpB": "5Un5ObPhEk6MRN6z"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'UpdatePaymentTaxConfig' test.out

#- 360 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'zKPZLWVB4YH2roup' \
    'mMfATapsn4uvJaBh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'SyncPaymentOrders' test.out

#- 361 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicGetRootCategories' test.out

#- 362 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'DownloadCategories' test.out

#- 363 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'PA5LWJipgrvQaTdi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicGetCategory' test.out

#- 364 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'KmmlpHUD2h7I7UbU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicGetChildCategories' test.out

#- 365 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'Nrp02FBwxeZXuYnl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicGetDescendantCategories' test.out

#- 366 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicListCurrencies' test.out

#- 367 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'GeDLCDurableRewardShortMap' test.out

#- 368 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'GetIAPItemMapping' test.out

#- 369 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'wBdaNaGlQD7ToPlT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicGetItemByAppId' test.out

#- 370 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicQueryItems' test.out

#- 371 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'TR6ePboL66XhyfKh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicGetItemBySku' test.out

#- 372 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'LtqZR2r4RfVOg9ZW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicGetEstimatedPrice' test.out

#- 373 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'FBw7Tk0E680aIGz1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicBulkGetItems' test.out

#- 374 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["A2cXngjJWPf2xqt2", "uL9EtENwWqOZUVxd", "7bZpS2i4gNvHnKua"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicValidateItemPurchaseCondition' test.out

#- 375 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'NhVEaIWElcUTlMDb' \
    'UWJ5spS6gLd7l7OF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicSearchItems' test.out

#- 376 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    '4v4RTLnsM4wpXhda' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicGetApp' test.out

#- 377 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'JDB3MXGMrRfpSxf1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicGetItemDynamicData' test.out

#- 378 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'BnhjtAikWfrrIads' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicGetItem' test.out

#- 379 GetPaymentCustomization
eval_tap 0 379 'GetPaymentCustomization # SKIP deprecated' test.out

#- 380 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"neonPayConfig": {"cancelUrl": "WMmGapPUenPlT7Qi", "successUrl": "PDEUKBKA2vpqA4MS"}, "paymentOrderNo": "D0izLTURYUzEglKz", "paymentProvider": "XSOLLA", "returnUrl": "QkADYHyER3eNCfqy", "ui": "J435IkibSzJGQtaP", "zipCode": "FC2SxEMchjQ84nuG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicGetPaymentUrl' test.out

#- 381 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    '9DGOS5kQvK7NHpsI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicGetPaymentMethods' test.out

#- 382 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'BYlUoEWZPawFVpfX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicGetUnpaidPaymentOrder' test.out

#- 383 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'qbM5rNHQHEfoYiLF' \
    --body '{"token": "QBUx73FrGG1NypPA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'Pay' test.out

#- 384 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'y9ZqaNySvpXwMac4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicCheckPaymentOrderPaidStatus' test.out

#- 385 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'CHECKOUT' \
    'Y6N0H6yn3PYiqbIB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'GetPaymentPublicConfig' test.out

#- 386 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'vNbRcU7z56hvDaSI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicGetQRCode' test.out

#- 387 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'ChGku6gm1tuTKBNw' \
    'hTZL6vJfgPEZmTs1' \
    'WALLET' \
    'vZnFstnJ5mnLz7c4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicNormalizePaymentReturnUrl' test.out

#- 388 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'rYnurB4du28xKiyg' \
    'STRIPE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'GetPaymentTaxValue' test.out

#- 389 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'm4NorN2PP1hXmALw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'GetRewardByCode' test.out

#- 390 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'QueryRewards1' test.out

#- 391 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'nidAmiLFK5Dwak0R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'GetReward1' test.out

#- 392 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicListStores' test.out

#- 393 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicExistsAnyMyActiveEntitlement' test.out

#- 394 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    '9n1WBVWp96bYrG5A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 395 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'NSRCXWy9C2oM6ZVd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 396 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'GQt7ed5WKQJkzGQP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 397 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicGetEntitlementOwnershipToken' test.out

#- 398 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "BQoXpXVvDLulelX3", "language": "tt", "region": "QgTPPO9giI7gI536"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'SyncTwitchDropsEntitlement' test.out

#- 399 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'KVAx0UzIc4Ou1Spo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicGetMyWallet' test.out

#- 400 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'Ewl9NhPbf7Fy05sD' \
    --body '{"epicGamesJwtToken": "wOSuSEBEXGahhtxf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'SyncEpicGameDLC' test.out

#- 401 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'a1XwrrRMEWbPuYtB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'SyncOculusDLC' test.out

#- 402 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'YRa3zvDFLgLp1g9E' \
    --body '{"serviceLabel": 14}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicSyncPsnDlcInventory' test.out

#- 403 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'Bi79WHorOJPVoTCR' \
    --body '{"serviceLabels": [81, 83, 99]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 404 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'enPlVeOc8uDGuA9Z' \
    --body '{"appId": "VtPuyxsPGoUCgc3B", "steamId": "sZJVlVlewocIRWjm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'SyncSteamDLC' test.out

#- 405 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'J81aRTbDoFbYLVqx' \
    --body '{"xstsToken": "K4NVV4KPvi1IDd9h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'SyncXboxDLC' test.out

#- 406 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    '3DkrqAqSqczq4VIq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicQueryUserEntitlements' test.out

#- 407 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'U80fLtA9Ei7lNOS1' \
    'nzf1JGU0AqSFsHZy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserAppEntitlementByAppId' test.out

#- 408 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'eSTGysStop5Pu3KN' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicQueryUserEntitlementsByAppType' test.out

#- 409 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    '6EQr9lk8teEugVd3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserEntitlementsByIds' test.out

#- 410 PublicGetUserEntitlementByItemId
eval_tap 0 410 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 411 PublicGetUserEntitlementBySku
eval_tap 0 411 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 412 PublicUserEntitlementHistory
$PYTHON -m $MODULE 'platform-public-user-entitlement-history' \
    'X7cq2K0e7A1xHVzx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicUserEntitlementHistory' test.out

#- 413 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'mePZ06tOqoxMhyqI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicExistsAnyUserActiveEntitlement' test.out

#- 414 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'yPdnz3ReXTrC2sNA' \
    'NyInXnunWNxg0gQz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 415 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'tAjYiUb5SlpeaMDV' \
    'E3ODebYRPEkmK5eP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 416 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'PaacnQTuUibmiz8A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 417 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'hOGRIwwo9w06X6Xz' \
    'Jiljntx5TSAxNBch' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 418 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'tcaaoKZYk4GlikyI' \
    '0LGO0eNNgl7jdIf7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicGetUserEntitlement' test.out

#- 419 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'ptoc5rPRsGFfGRRK' \
    'Q4tLERFGopzQ87Cb' \
    --body '{"options": ["xAJ0xdAPFrw8ssJe", "jQ7qSiyUPY0Gnwcv", "8NFIJFlyo9htDZjj"], "requestId": "GZzNcLBzqSh3UQrH", "useCount": 22}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicConsumeUserEntitlement' test.out

#- 420 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    'rL3ZEZRH0Pkkc62P' \
    '13ItOBeXpRUTmAHf' \
    --body '{"requestId": "O9FrQ9lwzAWiJH28", "useCount": 83}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicSellUserEntitlement' test.out

#- 421 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    'ZQfGQJPF97t3thMf' \
    'A2pxZ7ocAtgWGRZG' \
    --body '{"useCount": 25}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicSplitUserEntitlement' test.out

#- 422 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    'hnubnROvA1CxkXWI' \
    'lkrF4cf9E2pKWkX7' \
    --body '{"entitlementId": "et7rl9ow7BDniJH2", "useCount": 52}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicTransferUserEntitlement' test.out

#- 423 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'zL9gMSge48h6WQOL' \
    --body '{"code": "VImJDNd0LTI6thfW", "language": "Kvl", "region": "1UTUHsgjv4O66qvH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicRedeemCode' test.out

#- 424 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '38lYKeEiUS3GYxZH' \
    --body '{"excludeOldTransactions": true, "language": "BNN", "productId": "zDKwFxpxbYvPCvcq", "receiptData": "kfowSDA1NKgkK4hu", "region": "DhAO8zhoVbnYs36U", "transactionId": "SYZPYliicANHhXNQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicFulfillAppleIAPItem' test.out

#- 425 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'ESalqimMMSci9xEE' \
    --body '{"epicGamesJwtToken": "xP9jva13uRBo7tIu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'SyncEpicGamesInventory' test.out

#- 426 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'LW7T1d689kzJWUj0' \
    --body '{"autoAck": true, "language": "ba_DvGQ-708", "orderId": "njfM3MLLEwpsdD0k", "packageName": "nPNT7MZM5TUkTp46", "productId": "Y9LTNtGN9WUqYyTx", "purchaseTime": 42, "purchaseToken": "3Y8spu5S6I5h9Aa4", "region": "tLrATtqIhJQruDfp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicFulfillGoogleIAPItem' test.out

#- 427 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'efgGxk7jqfRNpfha' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'SyncOculusConsumableEntitlements' test.out

#- 428 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'fmEghm1K6FfhGrYg' \
    --body '{"currencyCode": "U3tXTmZUKau7dzs6", "price": 0.3353873333031837, "productId": "A891lcyZTXiAJVwz", "serviceLabel": 4}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'PublicReconcilePlayStationStore' test.out

#- 429 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    '52OktaS7Id9oPGer' \
    --body '{"currencyCode": "povdmW3j3eSpo6vh", "price": 0.3592131043054472, "productId": "drFa4npr0qt5yxg5", "serviceLabels": [83, 76, 77]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 430 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'tD40RsibRBputNAc' \
    --body '{"appId": "V0wHVw4OJZ9KRfK3", "currencyCode": "ElT6izH6Pdx5D1Zr", "language": "Fgmv-OugN-rB", "price": 0.5251385086280026, "productId": "Vt5sQ7M74MHRwGWu", "region": "XrmWB81vpVnNLvfx", "steamId": "MVPORdXWvsGZrPVA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'SyncSteamInventory' test.out

#- 431 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'Z2ZLrDa1xpqIziih' \
    --body '{"gameId": "Tn1qm3WYY19InV7B", "language": "UiOj", "region": "iWBgIkW9QrR9bMgS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'SyncTwitchDropsEntitlement1' test.out

#- 432 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'r1OTY7V3CTRYI1Ny' \
    --body '{"currencyCode": "on9lvA8o43VZXjof", "price": 0.7786596100752706, "productId": "hPJjqdf6RBiYws6M", "xstsToken": "PqsSKy9SsYw3NP5y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'SyncXboxInventory' test.out

#- 433 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'L2qIrhx90T4EDNbg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicQueryUserOrders' test.out

#- 434 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    're3EwhoEBW0FNQL1' \
    --body '{"currencyCode": "GY5CSEzZsaak9MNj", "discountCodes": ["fGrbc2jP3wtM1fSo", "KOwz2mKAvkSzld2v", "0mKis5KQHhwB99zM"], "discountedPrice": 22, "ext": {"PolhQomjBGEe1V7Q": {}, "e1VtpXfKrTUd4eK4": {}, "cPdj9IYCmOOskIKi": {}}, "itemId": "uKPVqNdfcbarmjmz", "language": "Vz", "price": 78, "quantity": 83, "region": "ffgy1mpc59V2qKD8", "returnUrl": "lNq4hOjr98OLoHsz", "sectionId": "OIdSWIpaLpZwnDkD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicCreateUserOrder' test.out

#- 435 PublicPreviewOrderPrice
$PYTHON -m $MODULE 'platform-public-preview-order-price' \
    'w7Zrilk8Q803RjC4' \
    --body '{"currencyCode": "wycgOIphhydYZ7NE", "discountCodes": ["wrSsI3cSyJGEsS9J", "UwrktKue5lw0m8Ev", "nHfbeKOjYbpVv23J"], "discountedPrice": 50, "itemId": "94BuLjZOmtY6jje5", "price": 29, "quantity": 98}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicPreviewOrderPrice' test.out

#- 436 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'srYAf28mqvM4LzAM' \
    'y18Az6wAqGqaSmwD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserOrder' test.out

#- 437 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'voaPbcj2JPPSWbsP' \
    'zR9vQiwMdHSV2fA6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicCancelUserOrder' test.out

#- 438 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'M7yIgULctkrQt7Ud' \
    'VDHgEyEMT17gAkJ9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserOrderHistories' test.out

#- 439 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'ZOyUyKXZ4gnJD0bt' \
    'vfiaLotp8rjTOGuu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'PublicDownloadUserOrderReceipt' test.out

#- 440 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'ZKYSboPR01QNJxA5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'PublicGetPaymentAccounts' test.out

#- 441 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'bUgJyfyqZXsJXmWa' \
    'card' \
    'eeHTKcUcujMld5XM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 441 'PublicDeletePaymentAccount' test.out

#- 442 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    '0y0hA8uAIGJlt6gj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'PublicListActiveSections' test.out

#- 443 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    '5YD5232JusteSb6R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'PublicQueryUserSubscriptions' test.out

#- 444 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'q9qeFktXeu9Xij04' \
    --body '{"currencyCode": "Bqjp8LL57sci4swW", "itemId": "J6ouP7mWY1ug8s10", "language": "uw-QirM_Uy", "region": "5onaRK2kOt01My99", "returnUrl": "Nzxfq4jTsNihBMEN", "source": "4c79eXbUHmcvCVoh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'PublicSubscribeSubscription' test.out

#- 445 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'S9cZeNhZq7LKZkGy' \
    'cl5oKG2FV9jHnWg7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 446 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'dx8OSOJ9EFaxeDD8' \
    'oVvwa87YrbanFFAR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserSubscription' test.out

#- 447 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'SHMaf8ayqvkXvHfj' \
    '2e4dQJLp4KMIcg74' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 447 'PublicChangeSubscriptionBillingAccount' test.out

#- 448 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'z6KA7qyrdGdWMrPt' \
    'ZSPUCJfnrl3yUawI' \
    --body '{"immediate": false, "reason": "1hRJUWYF9TbCR4qG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 448 'PublicCancelSubscription' test.out

#- 449 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'KgfhTaBBmPDLRa6m' \
    'zkhzzfqsSgeEUzau' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserSubscriptionBillingHistories' test.out

#- 450 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'X2BiTkHqFomi9qMK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 450 'PublicListViews' test.out

#- 451 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'O7v11iTPPXFNeZn2' \
    'vRR0BflNL8jjbsyH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 451 'PublicGetWallet' test.out

#- 452 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'ugFLvZcTCEMbloZs' \
    'rrwFc43BEFzGxzXR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 452 'PublicListUserWalletTransactions' test.out

#- 453 QueryItemsV2
$PYTHON -m $MODULE 'platform-query-items-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 453 'QueryItemsV2' test.out

#- 454 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 454 'ImportStore1' test.out

#- 455 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'z9ek9cTfklLvhREH' \
    --body '{"itemIds": ["XR9ZyR0gYn2o0Usg", "X0kqqfQGB8T8wu0H", "yqob2hEKozEd4P5A"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 455 'ExportStore1' test.out

#- 456 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    'uq8Vd4w6txSKD5jH' \
    --body '{"entitlementCollectionId": "XOt6NIhH6zSxo8OY", "entitlementOrigin": "Nintendo", "metadata": {"B5I8W0zaXLBbr6dE": {}, "vFXUrJEtc0XkTqZC": {}, "dBgcQYrtBw2f7cfd": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "Mk5seGmbg5yaV5Lt", "namespace": "dtmXxubnK90It1WE"}, "item": {"itemId": "pBd8W8yL5eZhTnha", "itemSku": "9eiJsMlXtygrzG2Q", "itemType": "UljK667R7aO0dO8D"}, "quantity": 8, "type": "CURRENCY"}, {"currency": {"currencyCode": "TNy1fFdZFpgDZL5c", "namespace": "gPFdfkkemcXh4pNS"}, "item": {"itemId": "6sh71nsTcYAqRmpQ", "itemSku": "J4iKsMRzrkq6bbxR", "itemType": "OX48x3z6oqsbyJVZ"}, "quantity": 18, "type": "ITEM"}, {"currency": {"currencyCode": "nLIVPccaYI6l6fKr", "namespace": "VA93qreneWTQ0fb8"}, "item": {"itemId": "ClHBQXSaPIU1SAfA", "itemSku": "fEzm7orhTTcA4tRZ", "itemType": "drCvasM0LBo8pp2W"}, "quantity": 48, "type": "ITEM"}], "source": "DLC", "transactionId": "CDgXIN2T2y2ghUM2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 456 'FulfillRewardsV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
