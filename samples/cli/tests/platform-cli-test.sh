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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "EAxcVpFrttufHIRd", "appType": "SOFTWARE", "baseAppId": "9UzVRiXbqlAw7r6W", "boothName": "2ktQG0h5JAav5kRa", "boundItemIds": ["Q1g7qbPngUNB1vRo", "ZLCXLx8bbgorQeFb", "62WopBJHPtcDs8bB"], "categoryPath": "dwpzS6DaDpv8N7ZQ", "clazz": "VqGj6oDLjWjkY1aX", "createdAt": "1977-05-08T00:00:00Z", "description": "FcDtgOjchIua5tWE", "displayOrder": 71, "entitlementType": "DURABLE", "ext": {"JSDgY1TXp38zsCTC": {}, "rbCbPOyNQkT7NvyE": {}, "3cwyALczNIicXm7a": {}}, "features": ["gSrjJW2OQNOs1PXh", "c8OumKtPDKJDXn7Z", "T5FvdiRilZ7oFgx4"], "fresh": false, "images": [{"as": "68su8XfqlqNiTvB6", "caption": "SdAdIhUDrwoZ5Mec", "height": 7, "imageUrl": "pc1C8XfwHuKeb9l3", "smallImageUrl": "rGN9A3sNm84hddSp", "width": 69}, {"as": "cBdW19m4eu6d5tA5", "caption": "jUmiTqpyhPFdxLzF", "height": 87, "imageUrl": "d8lDR6qVNPRZYdFL", "smallImageUrl": "IAjGGJddVCvu9vx5", "width": 76}, {"as": "vkLGMS0lyuI9a2I9", "caption": "u6Vpbsx5w8hqUI06", "height": 96, "imageUrl": "SuB0y5WUlrMdI4sN", "smallImageUrl": "veabntBSxTeIv53H", "width": 66}], "itemId": "YupD391C2qtPYoka", "itemIds": ["hFjkQsfCaTmt1d67", "FXGk2s9Q0mPVo3tw", "u0MesTCf9x4rt69l"], "itemQty": {"na7qxNeIxPz6MbwL": 67, "IY69z1UaLqYSYWyt": 77, "XQ0yYoNRKd3IL5TA": 87}, "itemType": "CODE", "language": "6iiPlSC2uE4o5Vwd", "listable": false, "localExt": {"m3MqHcUmLZZbSqb8": {}, "RwNmn9HrNQy4uZAA": {}, "iE0mit9RGCCHYzUO": {}}, "longDescription": "cEdscKHPEqgA8yu7", "lootBoxConfig": {"rewardCount": 98, "rewards": [{"lootBoxItems": [{"count": 94, "duration": 22, "endDate": "1994-05-19T00:00:00Z", "itemId": "Jt4Ymos9Jcdos4fY", "itemSku": "cTVU6RBt0zYoMcHy", "itemType": "CUEXlAvxJMdalwSy"}, {"count": 23, "duration": 85, "endDate": "1975-11-14T00:00:00Z", "itemId": "bOItRMvqtlB2jJCS", "itemSku": "QT279ZZPYGu0rdlg", "itemType": "dWyOtXi3choQrpOs"}, {"count": 61, "duration": 25, "endDate": "1985-08-26T00:00:00Z", "itemId": "U5SepjChB3V0v52D", "itemSku": "lym6puQ23xoJ8aeC", "itemType": "naLpUKp44YUDjasW"}], "name": "IPUvmEejtGeoyIPa", "odds": 0.9714507862859705, "type": "REWARD", "weight": 90}, {"lootBoxItems": [{"count": 7, "duration": 37, "endDate": "1977-06-26T00:00:00Z", "itemId": "ykmoPYgc2L4jk4Lo", "itemSku": "0LSP0pf4IxjUkl53", "itemType": "5X3ateEKDpADz1x3"}, {"count": 32, "duration": 30, "endDate": "1985-08-29T00:00:00Z", "itemId": "9xv32e8c5csSovoq", "itemSku": "sZNBdte9NDUPVJf6", "itemType": "c2Z0QZxfgPubTDIH"}, {"count": 36, "duration": 83, "endDate": "1982-11-17T00:00:00Z", "itemId": "qAThuwjRHpKKTlmV", "itemSku": "r9XuoJbRFQSKVPHb", "itemType": "n4Xxtu7LQRENjEEz"}], "name": "tx1WsYSiZqan0nSB", "odds": 0.5728983498865392, "type": "REWARD", "weight": 30}, {"lootBoxItems": [{"count": 0, "duration": 57, "endDate": "1981-10-04T00:00:00Z", "itemId": "91GXlvPG6bFYReVH", "itemSku": "QipcCx9Zw5D2L7vI", "itemType": "YhGGSyEW4ZJJ42d3"}, {"count": 85, "duration": 25, "endDate": "1985-03-04T00:00:00Z", "itemId": "ddN8S48l9lyNApfl", "itemSku": "xqMrj3oZk03QXcKM", "itemType": "DYDDxHSZjtqXyJ58"}, {"count": 10, "duration": 36, "endDate": "1977-09-29T00:00:00Z", "itemId": "jX9fDmIbeZxzfTcy", "itemSku": "iuATus9hsfpFDcSD", "itemType": "G8aMVGLiBNrDjqox"}], "name": "cwgGLXpUL4pp2ncY", "odds": 0.422365902819149, "type": "REWARD_GROUP", "weight": 21}], "rollFunction": "CUSTOM"}, "maxCount": 39, "maxCountPerUser": 82, "name": "fIovmv9gsR5cJcHm", "namespace": "3SZLxoRDFuuuySj2", "optionBoxConfig": {"boxItems": [{"count": 56, "duration": 1, "endDate": "1975-06-17T00:00:00Z", "itemId": "LJE8HoRS1X2PFAAM", "itemSku": "wzHPxB1UskYs4Yw2", "itemType": "0DOqOBSC2DKHRuPM"}, {"count": 80, "duration": 22, "endDate": "1995-02-07T00:00:00Z", "itemId": "H8Yb33T5UBJCjfcn", "itemSku": "LRfxeCSz9WEi8Kll", "itemType": "oeH0JT1yduat2vQR"}, {"count": 3, "duration": 66, "endDate": "1975-02-16T00:00:00Z", "itemId": "Bfsu4jmsRE2w1yEk", "itemSku": "Lgh3tIYt4SqYUTLD", "itemType": "x9gIiDandpGT2t24"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 83, "comparison": "isLessThan", "name": "Mh5eC3IHeHSKLCa3", "predicateType": "SeasonPassPredicate", "value": "AE7WIsfmx40NLRc6", "values": ["oKFeIaFQCYoDPICp", "m8heKnWhzfe2Nube", "nduEEQlULdJz4mnR"]}, {"anyOf": 56, "comparison": "is", "name": "CAcf80zfFyabWAgI", "predicateType": "SeasonTierPredicate", "value": "hRkloqxM3gpwxcfM", "values": ["Wn3CO39PXDNxtXge", "zJEN2VHzih3bit0V", "y9XzjjI5YbsKoADk"]}, {"anyOf": 83, "comparison": "isLessThanOrEqual", "name": "3FgkXhjDzaQY3snn", "predicateType": "EntitlementPredicate", "value": "ZkP7cFdP43e5dC9X", "values": ["MzF4TxodenSrUTvf", "IBudfZgrbHDIDm4h", "qU0bfoMm5cTtFWbo"]}]}, {"operator": "or", "predicates": [{"anyOf": 4, "comparison": "isLessThanOrEqual", "name": "6IjGa23YvYmmDg7V", "predicateType": "SeasonPassPredicate", "value": "PXIuvUYTZBRujIUE", "values": ["urjh2imdb4rbkXj0", "1Tq5jyAZvkRCMNFI", "ZwsVC0gL97ZVJSPq"]}, {"anyOf": 74, "comparison": "isNot", "name": "iwv1qlYB1RSKs6gQ", "predicateType": "SeasonPassPredicate", "value": "ZGF7uYnGzpipNDig", "values": ["D9eOziYRFOn0jJLH", "4nmwAft4gqkNNlWk", "NJma1MbqqZtfNWql"]}, {"anyOf": 58, "comparison": "isNot", "name": "LxhvNXTwGBCtohLt", "predicateType": "EntitlementPredicate", "value": "7MUBG7qtPu64yAtU", "values": ["m7Ta1PsKc50Kv6ec", "RKLRkb738HGS6rDg", "MdIIlhS1fSiM9331"]}]}, {"operator": "and", "predicates": [{"anyOf": 30, "comparison": "isNot", "name": "mQoIXimBJehyxlNs", "predicateType": "EntitlementPredicate", "value": "nGBt4P7WnbdSJtjX", "values": ["UTrDzZSKscfOcYu3", "7ZshZyZl5x4bRXBH", "dpCROYqUiGKXVFCm"]}, {"anyOf": 31, "comparison": "isGreaterThan", "name": "ogaKt2ujQSa3Zdb6", "predicateType": "SeasonTierPredicate", "value": "UXmy0Zp6iIaTIKUk", "values": ["zwLR2AK6eXUGPJsw", "mkk9QM0NBMA9ORxp", "1fiP80G9Pclxcft2"]}, {"anyOf": 42, "comparison": "is", "name": "DpZxkrQDXuNFviMa", "predicateType": "SeasonPassPredicate", "value": "uGKHhMRWLVd3DlhL", "values": ["Mrok0WvGYYnx4V70", "uIpomM8sm1MiaI1m", "X2tJoARtdbBe7uds"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 49, "fixedTrialCycles": 9, "graceDays": 2}, "region": "ue9nzJ6fH24T805t", "regionData": [{"currencyCode": "Vg8JqU0jZpjvsugA", "currencyNamespace": "OS7u8RiWyerCSa8S", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1997-06-30T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1980-01-29T00:00:00Z", "discountedPrice": 55, "expireAt": "1979-03-16T00:00:00Z", "price": 36, "purchaseAt": "1998-10-10T00:00:00Z", "trialPrice": 16}, {"currencyCode": "xsB0NRsB1fPqqRRu", "currencyNamespace": "lpqpymDkQhtrHWwR", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1977-07-07T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1995-08-07T00:00:00Z", "discountedPrice": 56, "expireAt": "1991-10-31T00:00:00Z", "price": 33, "purchaseAt": "1983-12-03T00:00:00Z", "trialPrice": 68}, {"currencyCode": "wbhMssAHjapIkY9R", "currencyNamespace": "f4wP57dBZNR88YbC", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1977-01-29T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1992-07-15T00:00:00Z", "discountedPrice": 82, "expireAt": "1977-11-12T00:00:00Z", "price": 10, "purchaseAt": "1984-07-26T00:00:00Z", "trialPrice": 4}], "saleConfig": {"currencyCode": "VrjfGXZnqAQUoY1G", "price": 20}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "Zp50CnPb71ORYcmQ", "stackable": false, "status": "INACTIVE", "tags": ["U5JX8ccLjMXJRk0e", "aKQDOJvrTefglSs6", "g4iY9u02aCNYIWek"], "targetCurrencyCode": "p18lOC3mNqF7Bl0L", "targetItemId": "cghVHfPEspxwhRON", "targetNamespace": "0bc1eMbEIjowLqc3", "thumbnailUrl": "ecjXJbZDKKoxLE1Y", "title": "3Dymtj3giPg4x4yi", "updatedAt": "1992-03-11T00:00:00Z", "useCount": 1}, "namespace": "6ues1Hhhkg1yLVbL", "order": {"currency": {"currencyCode": "FzHEP8cM4NTwr0KH", "currencySymbol": "aAsmTej52WKi6tAr", "currencyType": "VIRTUAL", "decimals": 46, "namespace": "URt9plCSVq8PdH6h"}, "ext": {"JPUAc0RVwXgAgntL": {}, "MCuaXBWQi6BqPg4x": {}, "r0lCancUZGCHsZYo": {}}, "free": false}, "source": "DLC"}, "script": "R1KtOv7Zy0b65uvu", "type": "grantDays"}' --login_with_auth "Bearer foo"
platform-get-fulfillment-script 'Nuy0ytZQ7M6Nzy1a' --login_with_auth "Bearer foo"
platform-create-fulfillment-script 'dnSKOLFKx1dX4LuW' --body '{"grantDays": "Ju3pDMUAeeZ97SBR"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script 'OPYuG6XqP6oo7G73' --login_with_auth "Bearer foo"
platform-update-fulfillment-script 'zdxTgOfnwIdlNa29' --body '{"grantDays": "fDLh741IslKHzGlL"}' --login_with_auth "Bearer foo"
platform-list-item-type-configs --login_with_auth "Bearer foo"
platform-create-item-type-config --body '{"clazz": "KWUtDQs61OQAoxyy", "dryRun": false, "fulfillmentUrl": "vWtND2tcBFpX8lNt", "itemType": "OPTIONBOX", "purchaseConditionUrl": "Cf2XJVrlzqQls1oz"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'BUNDLE' --login_with_auth "Bearer foo"
platform-get-item-type-config '2K2IzrBvvWm4udE0' --login_with_auth "Bearer foo"
platform-update-item-type-config 'OXudXgNne8kJATwl' --body '{"clazz": "c6esUp6Sw1I98jeZ", "dryRun": false, "fulfillmentUrl": "7hfxnhLd3Knaknoe", "purchaseConditionUrl": "d9DHhLOqQGhCUr6i"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config 'TrjyEgarAdNJOIG3' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "6I6tRbRcrEveMdAd", "items": [{"extraSubscriptionDays": 17, "itemId": "ETJyTlUrwDTnoujQ", "itemName": "D4IEiH9Z5qXn3aoR", "quantity": 40}, {"extraSubscriptionDays": 86, "itemId": "lqOECohViHA5CzgF", "itemName": "Sy8X1A3PrIfapq5A", "quantity": 54}, {"extraSubscriptionDays": 57, "itemId": "eMe4L3mDWORBVXTI", "itemName": "IJM9XsYIIZxiXNMR", "quantity": 100}], "maxRedeemCountPerCampaignPerUser": 56, "maxRedeemCountPerCode": 13, "maxRedeemCountPerCodePerUser": 67, "maxSaleCount": 1, "name": "4AvQkqsGnmyo5JJT", "redeemEnd": "1994-08-02T00:00:00Z", "redeemStart": "1995-07-10T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["MkawaGpAyrIwMif3", "BOdkocVTd4BxqGWV", "6mTJ0sQs6XNbjvqh"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'iTdSGv2LFjAKY7Cb' --login_with_auth "Bearer foo"
platform-update-campaign 'gsWqFWZX7kPBom8F' --body '{"description": "9GLLTG8phc3n4iLo", "items": [{"extraSubscriptionDays": 71, "itemId": "G9YI89hmguB8FOTj", "itemName": "MLo4b9rIzqYkEpst", "quantity": 49}, {"extraSubscriptionDays": 91, "itemId": "VTBcrM8rG0rH0zcs", "itemName": "wwVeMK6MbGIVIu8v", "quantity": 44}, {"extraSubscriptionDays": 39, "itemId": "wLc7KY3uVoJXTIMt", "itemName": "pgkieDyF97lGdMiH", "quantity": 74}], "maxRedeemCountPerCampaignPerUser": 95, "maxRedeemCountPerCode": 49, "maxRedeemCountPerCodePerUser": 32, "maxSaleCount": 3, "name": "d6FJtHJ1pyVwyKQL", "redeemEnd": "1996-11-23T00:00:00Z", "redeemStart": "1977-09-13T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["O65Rb3z7CYLM8Ils", "HqffnrfsGlfPaZKB", "wa3Ddb60ufPpzwj1"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'QGIFmlVf4jvapseE' --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category '9LN9bvhOrHflIOd6' --body '{"categoryPath": "X3viLvtEk4mTIpUA", "localizationDisplayNames": {"9gxo8SV38nEhoXmM": "2W7l6jHMA2rG3nak", "opAywelu01nryEJ0": "NqoTow0qiOiC4j0i", "ktm0ZPLkLOsp0LZ5": "njN86Hl8kUXzt6bS"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'c6bWvgpVyW9dD1kO' --login_with_auth "Bearer foo"
platform-update-category 'mvrAejcq2LgkQuaS' '7RBx3vim02jBOxrZ' --body '{"localizationDisplayNames": {"DyvpcLYOWA8NjxOn": "aEok4nOOCzfsflhj", "bngJOUn18G5MlfDT": "k8aG40NlncceIZSw", "gAIkgzh4pTU0Am4D": "Zhl0bQxFJ3sWCqQp"}}' --login_with_auth "Bearer foo"
platform-delete-category 'Q2FbKPFMycMSQ4qf' 'AacR0LgB5BUXvjcu' --login_with_auth "Bearer foo"
platform-get-child-categories '2s6w3VifnKqmTSoG' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'H1XEfY6QAYn6WQ5U' --login_with_auth "Bearer foo"
platform-query-codes 'BEU1QAOHfZiGhxOd' --login_with_auth "Bearer foo"
platform-create-codes 'cuDXSxSc3aZPV87p' --body '{"quantity": 27}' --login_with_auth "Bearer foo"
platform-download 'K8Asvt1j1Rx59hes' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'NWy2NvZ85DDKDAF8' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'KDsBZOuYQJ03BAHZ' --login_with_auth "Bearer foo"
platform-query-redeem-history '7c53q7akMpcmnnx6' --login_with_auth "Bearer foo"
platform-get-code 'RVBrop9v7aZK3h65' --login_with_auth "Bearer foo"
platform-disable-code 'hbN15zfQSfQrtfF3' --login_with_auth "Bearer foo"
platform-enable-code 'TQN0OcNDLr36vzoh' --login_with_auth "Bearer foo"
platform-get-service-plugin-config --login_with_auth "Bearer foo"
platform-update-service-plugin-config --body '{"grpcServerAddress": "ZyjMQAg5mPYhrLTy"}' --login_with_auth "Bearer foo"
platform-delete-service-plugin-config --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "U8OhgfY9JQYGF4bY", "currencySymbol": "XEcENx9xZlAchob4", "currencyType": "REAL", "decimals": 23, "localizationDescriptions": {"RcYp7FUjfIGaffof": "lEIByYqeKN0meGel", "YF5wWaDhukU4khGG": "4vZFTYnPkmSu4PWa", "m1jxR7SETWjteoc8": "fgvZDDhoO05oKqym"}}' --login_with_auth "Bearer foo"
platform-update-currency 'xLD1Lcvw6T6mZEiw' --body '{"localizationDescriptions": {"xxElpMYSWIeVzm7z": "9noowmlTIKVowi0R", "Y2VN4ZONJREdUQ3z": "9F1BxNNgnke4aknc", "w7wu9TmXfJWBPrx9": "Ns8eLzYEvwSWTaLQ"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'jctvrK2jhsYpKPlX' --login_with_auth "Bearer foo"
platform-get-currency-config 'n77AtYoFzLAATPY8' --login_with_auth "Bearer foo"
platform-get-currency-summary 'P8P3cfoivvQxevec' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "Ww7Rry0KK5rgAGO0", "rewards": [{"currency": {"currencyCode": "dW8rX2MVUGKSZ4Gc", "namespace": "Lkt4pK32sJxlZcCT"}, "item": {"itemId": "pTdRtCHvuk6B6XTm", "itemSku": "SLyn50sigBVZxiKd", "itemType": "V57GvRyd9UuL02Le"}, "quantity": 10, "type": "ITEM"}, {"currency": {"currencyCode": "CslsDd4M1F5qRIbl", "namespace": "S7Nz81GRazPAANjf"}, "item": {"itemId": "BoldFOyqA2clJ5gE", "itemSku": "OaCgM6Yn6RugbNEI", "itemType": "pGBFUjOn5mM7k8nb"}, "quantity": 78, "type": "CURRENCY"}, {"currency": {"currencyCode": "zvtCIW5ynMKquUic", "namespace": "AeIVXtoWAXhMlW4t"}, "item": {"itemId": "LqX7OICf5oD1e6oI", "itemSku": "9FmYel0kOw72o8Zk", "itemType": "gk0jS6rDWUwfhKvr"}, "quantity": 11, "type": "ITEM"}]}, {"id": "lxHv8SwyagYvDJ3w", "rewards": [{"currency": {"currencyCode": "3UNgIGj2jZtEYT8s", "namespace": "IPSE1XXPzySa0sZo"}, "item": {"itemId": "FS6xCOWMpyh9pMsQ", "itemSku": "gb64ELbzDMwyo4nI", "itemType": "RysQdbufXjYnSoIF"}, "quantity": 8, "type": "CURRENCY"}, {"currency": {"currencyCode": "ouC2m38kXrDZWlGV", "namespace": "E9sJ4NpUtKp6M9I6"}, "item": {"itemId": "nEwnZhsjwJeGwaPS", "itemSku": "DMZz95OYKiqaZD63", "itemType": "xe5rruJVfLGea0Zt"}, "quantity": 24, "type": "ITEM"}, {"currency": {"currencyCode": "ACC1RgBfoNrHlFi2", "namespace": "qJLgmBLE35YhyiDV"}, "item": {"itemId": "90SeI5yppBHoytVz", "itemSku": "nCgNyx9fbT63ShEh", "itemType": "8PbGikLjgjcj34uu"}, "quantity": 22, "type": "CURRENCY"}]}, {"id": "6FYBZsWFbr3RSP0W", "rewards": [{"currency": {"currencyCode": "9nBhvhf8Q0DtJMcY", "namespace": "QdN66bswAgt65X4N"}, "item": {"itemId": "1LQZmB61JMdtwCVU", "itemSku": "rYQue84dwmbwFEnA", "itemType": "ZaWsQJtRYoagRJK5"}, "quantity": 85, "type": "CURRENCY"}, {"currency": {"currencyCode": "9UcOvhPyE11TRT2S", "namespace": "Kseoe8VLie0LBa36"}, "item": {"itemId": "KNzjf005CXNGehQ2", "itemSku": "aTjTDfKFDXC7eGL5", "itemType": "YhJDWh9YWqc0qgV6"}, "quantity": 8, "type": "CURRENCY"}, {"currency": {"currencyCode": "yOfIMLds2DbPcaoM", "namespace": "dtRLTmSvTkQQgB7e"}, "item": {"itemId": "xYvmHMxr5hPCJJzt", "itemSku": "JBg0tTJg46IewOXE", "itemType": "2AkCh3QIZsUf8lGF"}, "quantity": 91, "type": "CURRENCY"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"mwTERHclOdxIwqej": "xe18rNdb8Otq6j1m", "qUav7k05HAQltnSo": "jV4jT65yclX2FtAz", "0vJjFIYWOaNdsimm": "kW2miH3xRHAKy4Qx"}}, {"platform": "STEAM", "platformDlcIdMap": {"kaXZ7vmiEd0JPxVy": "QpshaDwNqTbbFMXA", "MfVXe0GZeMgsRsmH": "1EQrYmkPKTPOlhTt", "SiZNCxuogFteTHJe": "4BhSSQkQD6WmOt6D"}}, {"platform": "PSN", "platformDlcIdMap": {"ufFVTOhvQpfbBke8": "aEdd36xj6wySoltD", "xsbzxrlaKEfkoYjY": "2o6ouRW9UtNquwC3", "WgumrIz4NhGztZpr": "4U4fwQIiLXgmRasv"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-query-entitlements-1 --login_with_auth "Bearer foo"
platform-grant-entitlements --body '{"entitlementGrantList": [{"endDate": "1975-01-02T00:00:00Z", "grantedCode": "O4lj8m3XEwP2b4gd", "itemId": "3xOeii8Jnmssep2x", "itemNamespace": "D2NY0kABeGs9yxah", "language": "Ex-NFFq-Pn", "quantity": 86, "region": "vczgEpzZ3Fbtxfhc", "source": "PURCHASE", "startDate": "1985-01-17T00:00:00Z", "storeId": "7IVYa6iZ5uFRYNn3"}, {"endDate": "1993-08-25T00:00:00Z", "grantedCode": "HiWxF0YbuU5ar5qT", "itemId": "LWUCy0Afgc050XIZ", "itemNamespace": "RW491e94mQjVOOBn", "language": "JxDI_fMqR", "quantity": 96, "region": "5N8WXBPp17PAewqS", "source": "OTHER", "startDate": "1988-05-20T00:00:00Z", "storeId": "x3B4t7WQnp8jXZed"}, {"endDate": "1974-11-24T00:00:00Z", "grantedCode": "t5cyNe27HLtwtVOa", "itemId": "xgP6Jbct8puMybYG", "itemNamespace": "xD9IPmmsLmu3kaPj", "language": "QafD_CVwF_662", "quantity": 11, "region": "FFCrn7djjs69FTFV", "source": "REWARD", "startDate": "1982-09-13T00:00:00Z", "storeId": "VhvKhJCmeisql14m"}], "userIds": ["AdMDcb4qlkiFAamq", "UHVbMPimNhcZsU3V", "vZI2KwjqPBiWXade"]}' --login_with_auth "Bearer foo"
platform-revoke-entitlements --body '["41s3rH34mB2yPlRp", "WjmHZAAvKTH8MuqI", "g0CzkguwuJCW7EEF"]' --login_with_auth "Bearer foo"
platform-get-entitlement 'B67AODbi9BzupBsF' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "pYc77GtRUcCFeY5g", "password": "4XgBsbfzqxBPNe8a"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "e1Il4aAtEbu4IjGd"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "qthRxTjQ7gkZEY8r", "serviceAccountId": "G0q0Q2Qd2JzRbkF2"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "I03dIjvBbA6bfbYa", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"7W65br34rBBN9tU6": "TDm5GloFSKWM1eym", "5ydC6p25xCWTqUOY": "ZENJ1QHZQxPRXH7u", "xBJEECQE1li3Bg7J": "xc9pUnZmvhidwCkZ"}}, {"itemIdentity": "wqjYLfTiCO1NDBvQ", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"W4pIDwdqXpmRmut9": "H9XyWI8bp8fQxRuX", "91uYmtrHJbEGTUj7": "YjERL1rEQG02zccA", "8wvLsWUNd6lPKvqD": "ejvqklTSvDwuOrP9"}}, {"itemIdentity": "lzpiX0VuFpZum7iz", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"gKjI9mwJSrN8jkIy": "kR2zbaI6PD7fEscS", "hnGUGUtV9GJ279GD": "bLNwjm3FK0nnX2po", "MfZ1hDHtbh4HtMlF": "gvh2Dp2SoiIPp1yv"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "fAHS0VgLu11A3HTo"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "vFi4tPAGfleyCA6j", "publisherAuthenticationKey": "EtcqsnzoVILjkwW6"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "1duF87aUyrdt4XSp", "clientSecret": "WBAetsanzqP8oxfr", "organizationId": "tbECD1CYPwaiBAxf"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "YL8Avt70ZUT2fSk3"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'LL0calqxEewuGS46' '9k2hG0WKt4sUmanY' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'xM0UHZVNYzGMNIpW' 'oSLkUrfuf4U3WeYe' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'A9t2ENKKWrFtHIi1' --body '{"categoryPath": "CMgKAOG5iDcCR5Pb", "targetItemId": "CvDLil8wj9cKM3Ar", "targetNamespace": "6MF35hCER4nGmWGg"}' --login_with_auth "Bearer foo"
platform-create-item 'TJfHlJl4tHGa4XfZ' --body '{"appId": "cd9CVnGqMX9FieeE", "appType": "GAME", "baseAppId": "KyFlM0u1uuoVdn9y", "boothName": "VoSlKNchPHNL4X3L", "categoryPath": "LaGPGdqLE8Sohhhu", "clazz": "iTnJarYYkHBDdSzB", "displayOrder": 8, "entitlementType": "DURABLE", "ext": {"GVPmv34h6T7Esufm": {}, "fxKYB4LM6H6QXmpZ": {}, "9X3fUSR1l9xLPBsm": {}}, "features": ["AUrD9L1IiD6MlcEP", "CXKlvIomU3pIxM9n", "hMDFzjHZ3sIhzOx2"], "images": [{"as": "8D2eLMe3lt9qfx2U", "caption": "DcgVE7L9FK6e0MrP", "height": 5, "imageUrl": "aMYvNQOsDa4bkcge", "smallImageUrl": "pqtxjbrztee7QLTG", "width": 53}, {"as": "ccIBnWyPw8mj7gyQ", "caption": "7XdIszGRj46COPip", "height": 68, "imageUrl": "rzmmgqBPRmd6mO4o", "smallImageUrl": "I8KDqebm83raNBJ5", "width": 51}, {"as": "SGSUOK68eqGJtWf1", "caption": "Ybgg8rdwY9bmrvHm", "height": 82, "imageUrl": "XrUSA6sMJzA5mtqI", "smallImageUrl": "SQ83TTbtefXWznDe", "width": 66}], "itemIds": ["LQdXfFBii2RAMEX5", "RMjBFVZGYzQqV8d9", "mDdUIoiIJFNxuNOm"], "itemQty": {"USWw18T1IxVWCxdv": 85, "6i38XQjLDRqkpiFK": 63, "BtiQ272Uo9UBJWod": 31}, "itemType": "CODE", "listable": false, "localizations": {"AHyCK5tNanGBrkzU": {"description": "vck3xTtmOFMebS4A", "localExt": {"dlNzwog2IhErkNhN": {}, "cECWwchW6zL9SkbL": {}, "lrNXnGanMazb8jvR": {}}, "longDescription": "WenURH48aJuALEcS", "title": "qcE15u6D31DjOsrs"}, "3CUYATdqnQGbqiqO": {"description": "kNeATj7eGjodd7Cc", "localExt": {"JUrI6MAugK5kypNr": {}, "p2nFe9FmN86sK5LO": {}, "q4ft5jGcMICPUYnf": {}}, "longDescription": "G6jl9U4jReteIMgz", "title": "ISomCsodJrhQW41q"}, "2OspCZbt3Uta5I0u": {"description": "GcL1koyHjCH5olYL", "localExt": {"ETRpABAmO2EGvJ4U": {}, "MS93yOxNInDByhno": {}, "luO6ti0QP2ssiJ66": {}}, "longDescription": "OzOj84O6tgohjtC7", "title": "bzjPpucddXJ5zifF"}}, "lootBoxConfig": {"rewardCount": 32, "rewards": [{"lootBoxItems": [{"count": 49, "duration": 48, "endDate": "1979-09-09T00:00:00Z", "itemId": "9anrNSleywHbHig6", "itemSku": "IKWVZ77KeRWdECaF", "itemType": "GzfZ2hxcJ2Fnemn7"}, {"count": 78, "duration": 10, "endDate": "1999-08-05T00:00:00Z", "itemId": "3SzUo4hNBDh9ZFP1", "itemSku": "OW0nXOErQPS4VsRo", "itemType": "YIK69yg9ADCGiXaL"}, {"count": 38, "duration": 93, "endDate": "1999-04-17T00:00:00Z", "itemId": "xjHkinOD975nARHC", "itemSku": "mhNHSXuqIHsxvaUo", "itemType": "XDmwWsukxncuD3Qx"}], "name": "CXMd00YBWCaVVmM4", "odds": 0.9198535266116655, "type": "PROBABILITY_GROUP", "weight": 17}, {"lootBoxItems": [{"count": 11, "duration": 76, "endDate": "1989-05-30T00:00:00Z", "itemId": "ZsWhkS476dGGJwJ0", "itemSku": "0UH197MJ6zU7JLMQ", "itemType": "yMWzYQCAaPJgoxGJ"}, {"count": 30, "duration": 71, "endDate": "1989-01-18T00:00:00Z", "itemId": "aSzUtY4ZD0Xtb0U4", "itemSku": "pH16NUsVY21NVIs7", "itemType": "NRen2Y3Ns0QJQeaW"}, {"count": 50, "duration": 78, "endDate": "1981-12-03T00:00:00Z", "itemId": "QQpxsuD8PGqku59e", "itemSku": "FJrOXyDYz9vMUOPG", "itemType": "0iHDT8QbF7gHPTPQ"}], "name": "bvLt2NRqJGIKzLyH", "odds": 0.8607116247239818, "type": "REWARD", "weight": 29}, {"lootBoxItems": [{"count": 93, "duration": 77, "endDate": "1983-04-16T00:00:00Z", "itemId": "3Ornyx34luLdvtsT", "itemSku": "KXMjiw6gYPvfn2Qt", "itemType": "9iyq3Nyk8ncu2Z3e"}, {"count": 59, "duration": 30, "endDate": "1988-11-03T00:00:00Z", "itemId": "H9WaVO4iKhDcJ7TC", "itemSku": "cNIsQ3PuppUxDSK8", "itemType": "aOTGMudcxlCV4cNb"}, {"count": 73, "duration": 89, "endDate": "1987-12-22T00:00:00Z", "itemId": "Q57lPdinpjS2DRfG", "itemSku": "t9GlyZVQ4X67tPZS", "itemType": "TpPq3xjrElvvDgw0"}], "name": "ag7kSWE0Hiqm5IuL", "odds": 0.2747778068719602, "type": "REWARD", "weight": 70}], "rollFunction": "CUSTOM"}, "maxCount": 39, "maxCountPerUser": 62, "name": "xDT8p4n4XCFkD1AJ", "optionBoxConfig": {"boxItems": [{"count": 77, "duration": 46, "endDate": "1985-07-03T00:00:00Z", "itemId": "ToLuPakQN1MpOs1R", "itemSku": "VFrcg2CXxepx78fv", "itemType": "syhE2BKtyTDSIM7m"}, {"count": 21, "duration": 29, "endDate": "1977-05-24T00:00:00Z", "itemId": "vZ7Cmsh4US8o4jfM", "itemSku": "ANPpmZDdMiCxmuCC", "itemType": "VuFjS1GC1d2b92B4"}, {"count": 43, "duration": 27, "endDate": "1986-02-20T00:00:00Z", "itemId": "BTxaTIz0jcgDI8Pk", "itemSku": "z96vd80msqIm5buf", "itemType": "nBqrpLeqhwVhjnnj"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 18, "fixedTrialCycles": 26, "graceDays": 40}, "regionData": {"fLcxDC9Ynd02mECI": [{"currencyCode": "QhfIhHtADUQ9zimQ", "currencyNamespace": "TQT95pFJUAJsyAfe", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1981-06-17T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1973-09-02T00:00:00Z", "expireAt": "1995-07-11T00:00:00Z", "price": 11, "purchaseAt": "1983-09-21T00:00:00Z", "trialPrice": 48}, {"currencyCode": "NohXu6opxQGRt6Pq", "currencyNamespace": "lkL0diRhLC10ih2E", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1997-04-27T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1985-06-22T00:00:00Z", "expireAt": "1998-12-05T00:00:00Z", "price": 16, "purchaseAt": "1999-01-27T00:00:00Z", "trialPrice": 48}, {"currencyCode": "Oa6FdZhNMd1onFjG", "currencyNamespace": "RbxtABPXDmgNEJBh", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1990-05-15T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1984-09-19T00:00:00Z", "expireAt": "1991-10-11T00:00:00Z", "price": 42, "purchaseAt": "1986-06-20T00:00:00Z", "trialPrice": 15}], "3zkUY0n0BAZkwbYk": [{"currencyCode": "BLyO6A0FqfhnaB3Y", "currencyNamespace": "xKNdOTacCcJfIfXs", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1981-11-01T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1988-03-26T00:00:00Z", "expireAt": "1996-05-22T00:00:00Z", "price": 100, "purchaseAt": "1997-01-22T00:00:00Z", "trialPrice": 32}, {"currencyCode": "5sxe6A6RpmKDebNk", "currencyNamespace": "ylbynkgT9vayLLii", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1971-01-22T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1975-09-29T00:00:00Z", "expireAt": "1979-02-09T00:00:00Z", "price": 52, "purchaseAt": "1975-10-31T00:00:00Z", "trialPrice": 79}, {"currencyCode": "Jdlt7rjF5RaJwvkW", "currencyNamespace": "Vco2LTo5ijlvDF8q", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1976-08-23T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1989-01-28T00:00:00Z", "expireAt": "1984-11-03T00:00:00Z", "price": 51, "purchaseAt": "1996-12-05T00:00:00Z", "trialPrice": 50}], "EUmUXGM5anIloyj9": [{"currencyCode": "lhbvuQdW2jwKUckc", "currencyNamespace": "794ryY91lX8DD4MY", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1979-03-13T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1985-04-23T00:00:00Z", "expireAt": "1998-02-03T00:00:00Z", "price": 24, "purchaseAt": "1985-09-30T00:00:00Z", "trialPrice": 43}, {"currencyCode": "weXJl7PeiMH8z8dV", "currencyNamespace": "ej8N2yv6VTnOK7xA", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1990-07-10T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1981-01-09T00:00:00Z", "expireAt": "1981-09-30T00:00:00Z", "price": 76, "purchaseAt": "1972-09-09T00:00:00Z", "trialPrice": 39}, {"currencyCode": "lsR7xxSVp3Gd2TK0", "currencyNamespace": "HzYviTgYmx82JVBR", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1997-05-29T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1988-09-16T00:00:00Z", "expireAt": "1984-08-15T00:00:00Z", "price": 40, "purchaseAt": "1978-04-17T00:00:00Z", "trialPrice": 67}]}, "saleConfig": {"currencyCode": "e5dbguBF6Gsvvdl8", "price": 20}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "9x7XZIjU4IK9lOLa", "stackable": false, "status": "INACTIVE", "tags": ["EEXBLIxGnNuhoJM3", "MphKCqTq3EVheJjo", "WWPvvCiCf33ViEdq"], "targetCurrencyCode": "QpoGkUWNizk5UcPA", "targetNamespace": "Gv6c1ESC6hZYTYZb", "thumbnailUrl": "zf5aANNNs5kgSZZN", "useCount": 96}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'MSBqabUXOGkkoMUZ' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'n1YXj5zFZeOCOR9N' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'vBQZSJPOIKrRBrYV' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'zi9ui3lvozTt9TsH' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items '7A0TuU2aL4bPkk11' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'sys6GdkDcos5uVJ0' --body '{"itemIds": ["BJfZ0jvA54CSqZFD", "sO1skRjOU1SMfQVQ", "a6blj9Rdd85bdYUu"]}' --login_with_auth "Bearer foo"
platform-bulk-update-region-data 'mPKVSZCg3XTc9vQe' --body '{"changes": [{"itemIdentities": ["0dHJfF6KIuvnRCa9", "JktyBdxkZKrEWFw9", "GYxjiiOQAD77ci0v"], "itemIdentityType": "ITEM_ID", "regionData": {"TU1TsxsChSclSkb5": [{"currencyCode": "aBi9K9zyv6gFZXI5", "currencyNamespace": "nXJ7hLi6HweweRmy", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1978-08-22T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1997-10-08T00:00:00Z", "discountedPrice": 78, "expireAt": "1977-09-06T00:00:00Z", "price": 87, "purchaseAt": "1983-05-19T00:00:00Z", "trialPrice": 57}, {"currencyCode": "pdX2QSPAd9sxoLnW", "currencyNamespace": "GP1PafIjLX8ce0Kb", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1972-04-06T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1989-11-10T00:00:00Z", "discountedPrice": 10, "expireAt": "1992-04-05T00:00:00Z", "price": 58, "purchaseAt": "1992-05-01T00:00:00Z", "trialPrice": 26}, {"currencyCode": "lvGjVQ4aebjfgGu4", "currencyNamespace": "72oWJlfglLM4xjfk", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1979-04-03T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1995-09-28T00:00:00Z", "discountedPrice": 26, "expireAt": "1975-03-20T00:00:00Z", "price": 1, "purchaseAt": "1988-02-10T00:00:00Z", "trialPrice": 37}], "vLwtYEJTSiXjcY5Z": [{"currencyCode": "Pkv90lyKSTWLxSFZ", "currencyNamespace": "0LpupEi5DbkVs3qF", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1992-02-11T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1989-04-27T00:00:00Z", "discountedPrice": 11, "expireAt": "1998-07-03T00:00:00Z", "price": 99, "purchaseAt": "1996-03-11T00:00:00Z", "trialPrice": 82}, {"currencyCode": "1WfzIvc3VlSXrA3X", "currencyNamespace": "UGud4tVjmxEf4XvV", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1988-10-14T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1994-08-28T00:00:00Z", "discountedPrice": 48, "expireAt": "1979-09-16T00:00:00Z", "price": 56, "purchaseAt": "1988-10-06T00:00:00Z", "trialPrice": 13}, {"currencyCode": "TBg9x4unq3eOMHIK", "currencyNamespace": "eTyBG5dCUoExnKfV", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1976-10-14T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1991-03-07T00:00:00Z", "discountedPrice": 76, "expireAt": "1995-07-01T00:00:00Z", "price": 82, "purchaseAt": "1996-01-20T00:00:00Z", "trialPrice": 78}], "hH4GVU7Exlkmc4xY": [{"currencyCode": "iLjLyZrXr9Bhtzn8", "currencyNamespace": "jAdTn6xBhrciryLm", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1976-08-23T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1998-01-22T00:00:00Z", "discountedPrice": 41, "expireAt": "1988-06-14T00:00:00Z", "price": 28, "purchaseAt": "1996-03-24T00:00:00Z", "trialPrice": 32}, {"currencyCode": "1SLjCPrFa05Xl5TP", "currencyNamespace": "C5GODS44bmm7jPdK", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1982-01-24T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1988-01-29T00:00:00Z", "discountedPrice": 92, "expireAt": "1980-12-04T00:00:00Z", "price": 96, "purchaseAt": "1999-05-14T00:00:00Z", "trialPrice": 100}, {"currencyCode": "jXVzW1QqxnWR5she", "currencyNamespace": "LgsAF4ctv5guycGi", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1981-03-19T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1998-12-06T00:00:00Z", "discountedPrice": 62, "expireAt": "1983-07-21T00:00:00Z", "price": 90, "purchaseAt": "1988-03-27T00:00:00Z", "trialPrice": 8}]}}, {"itemIdentities": ["nfLDpgHnMOn8nc3g", "UZ8ZFyyEr0KBXuJB", "qK4QtEydPWLPBYiR"], "itemIdentityType": "ITEM_ID", "regionData": {"Wy5cwNPI6aFo0MVw": [{"currencyCode": "DZCIXFNEL3uWVRz3", "currencyNamespace": "V7YbJM3bNLWHAbCZ", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1982-10-02T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1979-03-14T00:00:00Z", "discountedPrice": 5, "expireAt": "1999-12-14T00:00:00Z", "price": 93, "purchaseAt": "1991-01-18T00:00:00Z", "trialPrice": 57}, {"currencyCode": "0lpzcBQMAEcNcJqr", "currencyNamespace": "KxnMzSYoc4ZjiMY4", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1985-06-21T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1982-08-02T00:00:00Z", "discountedPrice": 98, "expireAt": "1997-01-20T00:00:00Z", "price": 19, "purchaseAt": "1975-05-06T00:00:00Z", "trialPrice": 4}, {"currencyCode": "acYHbrryHB6GO9zP", "currencyNamespace": "3FaepA3b3YJ9nJM6", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1987-12-03T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1992-07-07T00:00:00Z", "discountedPrice": 45, "expireAt": "1977-10-30T00:00:00Z", "price": 53, "purchaseAt": "1994-11-12T00:00:00Z", "trialPrice": 96}], "OLKmZhCZxxPPdPwO": [{"currencyCode": "tEuWBSO2jJepUnEE", "currencyNamespace": "gja2mIE2kLTnJwc5", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1974-03-26T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1977-06-18T00:00:00Z", "discountedPrice": 9, "expireAt": "1990-11-18T00:00:00Z", "price": 99, "purchaseAt": "1985-09-17T00:00:00Z", "trialPrice": 41}, {"currencyCode": "p62xlXvVcJerTPW0", "currencyNamespace": "2PWsHiKYArAxnKBf", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1992-08-28T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1977-05-22T00:00:00Z", "discountedPrice": 14, "expireAt": "1992-08-23T00:00:00Z", "price": 86, "purchaseAt": "1972-06-15T00:00:00Z", "trialPrice": 30}, {"currencyCode": "Ac10DjjwMv4vrIPR", "currencyNamespace": "tvhQIyLarjaLOKnX", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1980-08-02T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1985-07-17T00:00:00Z", "discountedPrice": 22, "expireAt": "1992-12-25T00:00:00Z", "price": 0, "purchaseAt": "1999-06-12T00:00:00Z", "trialPrice": 77}], "NGKhaLlJzJMSnJII": [{"currencyCode": "gsAVmaGYxUX1B9oV", "currencyNamespace": "uzG2CnYX2YBF2g7T", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1984-03-01T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1976-10-03T00:00:00Z", "discountedPrice": 0, "expireAt": "1995-04-23T00:00:00Z", "price": 86, "purchaseAt": "1972-02-29T00:00:00Z", "trialPrice": 32}, {"currencyCode": "3iUfBthbepUCTWiZ", "currencyNamespace": "1uqh7GAi4FEIu44u", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1999-12-23T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1978-06-14T00:00:00Z", "discountedPrice": 23, "expireAt": "1993-02-19T00:00:00Z", "price": 34, "purchaseAt": "1976-03-31T00:00:00Z", "trialPrice": 32}, {"currencyCode": "pq03BGdIk4oEogFV", "currencyNamespace": "GR71rJOBy6lsj1AK", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1972-03-23T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1977-06-06T00:00:00Z", "discountedPrice": 68, "expireAt": "1984-04-09T00:00:00Z", "price": 40, "purchaseAt": "1971-07-13T00:00:00Z", "trialPrice": 53}]}}, {"itemIdentities": ["3VAl6tXFbnATCzUO", "IzVcy9k3ie64Vnwa", "0ClGQJultJe32Aiw"], "itemIdentityType": "ITEM_SKU", "regionData": {"adEoIVmprwPsa9YD": [{"currencyCode": "92CX0rITajpwHITG", "currencyNamespace": "eHTnqRbzBB9ZFgJb", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1989-03-19T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1998-06-09T00:00:00Z", "discountedPrice": 97, "expireAt": "1977-07-14T00:00:00Z", "price": 61, "purchaseAt": "1989-10-09T00:00:00Z", "trialPrice": 24}, {"currencyCode": "tzkMJ7cudf4r916G", "currencyNamespace": "Prhn2etVIQvRkQJA", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1998-09-30T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1981-04-27T00:00:00Z", "discountedPrice": 49, "expireAt": "1992-07-29T00:00:00Z", "price": 10, "purchaseAt": "1983-02-27T00:00:00Z", "trialPrice": 47}, {"currencyCode": "Gz1ermJYXsYgL7Tf", "currencyNamespace": "yIlAwjTZdRZJJzWZ", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1982-02-15T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1973-07-23T00:00:00Z", "discountedPrice": 2, "expireAt": "1971-04-12T00:00:00Z", "price": 3, "purchaseAt": "1993-01-04T00:00:00Z", "trialPrice": 57}], "wMI4gGmvK9gW596F": [{"currencyCode": "wBNrFXt3TAuKBwBc", "currencyNamespace": "D12ae6r3hHwya4Np", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1992-07-28T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1974-10-30T00:00:00Z", "discountedPrice": 68, "expireAt": "1975-08-05T00:00:00Z", "price": 35, "purchaseAt": "1986-06-14T00:00:00Z", "trialPrice": 21}, {"currencyCode": "cHf7dbh2iKNUl0qJ", "currencyNamespace": "qzoKMRMG541PAiNj", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1983-10-29T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1995-04-14T00:00:00Z", "discountedPrice": 94, "expireAt": "1990-03-27T00:00:00Z", "price": 82, "purchaseAt": "1972-06-15T00:00:00Z", "trialPrice": 77}, {"currencyCode": "bkOFldMCQ98JH4n0", "currencyNamespace": "JtgqzZv5kVu4S95m", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1997-05-03T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1998-06-22T00:00:00Z", "discountedPrice": 0, "expireAt": "1976-02-07T00:00:00Z", "price": 39, "purchaseAt": "1999-07-11T00:00:00Z", "trialPrice": 11}], "3N7WNMYIfcDKbLu8": [{"currencyCode": "pnK34oA1keYXJvtg", "currencyNamespace": "gDdXjbdjMBahFZZG", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1975-01-18T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1979-03-03T00:00:00Z", "discountedPrice": 28, "expireAt": "1996-03-18T00:00:00Z", "price": 36, "purchaseAt": "1973-10-11T00:00:00Z", "trialPrice": 32}, {"currencyCode": "pfcFBUsnnDJlmD1i", "currencyNamespace": "EokbUiYzCQh2iNTw", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1977-11-07T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1973-03-02T00:00:00Z", "discountedPrice": 6, "expireAt": "1988-01-23T00:00:00Z", "price": 36, "purchaseAt": "1991-06-19T00:00:00Z", "trialPrice": 52}, {"currencyCode": "ZoBGQbO4S3rURGWU", "currencyNamespace": "zPAE6SdV4D5jftRl", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1977-07-21T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1983-12-14T00:00:00Z", "discountedPrice": 34, "expireAt": "1994-12-21T00:00:00Z", "price": 45, "purchaseAt": "1984-05-20T00:00:00Z", "trialPrice": 5}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'o8TWwXWsz9TVmdMK' 'EohKzuMYDUTLBeCi' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'dXjuGgx8ncXejmeZ' --login_with_auth "Bearer foo"
platform-update-item 'tzT0qj0ltsqfiZrt' 'hVvyX0OCKDJE3RMU' --body '{"appId": "ddwSSgxCu8zru1Dh", "appType": "DLC", "baseAppId": "AYOHR5BWa9VzIkaQ", "boothName": "El1iUProNB6hI6Ip", "categoryPath": "GcToWgFvdRhG9NwV", "clazz": "3zDuqVlVTypcYPK8", "displayOrder": 71, "entitlementType": "DURABLE", "ext": {"d4RWOqO4U0bitNQL": {}, "zwRoWnR0AbkCPY70": {}, "FmvviVIBbcujF8Vk": {}}, "features": ["Vw13NCo9yXlbQ52F", "t8l5IPSrwrJl7wYI", "5qb8NhWWwaxyMchk"], "images": [{"as": "THTCj6SEAzT7TOpy", "caption": "iuvvQUm29Iacq4XR", "height": 77, "imageUrl": "aka9ABfX1IByPEOu", "smallImageUrl": "PhGspRi3bhPQvBBJ", "width": 71}, {"as": "6IHy7EEvHyLmcvrZ", "caption": "ZOdwe1x8RjU6Bi8J", "height": 71, "imageUrl": "E52sUBBq2SimQQoL", "smallImageUrl": "be5YOJvxGRxUzrTw", "width": 1}, {"as": "BDqMyIAzWze94MEd", "caption": "JFAy2JTllJkRGB8j", "height": 34, "imageUrl": "qVpdiWo8SjDAM0Ri", "smallImageUrl": "w8wLYW3n4F3LD1ED", "width": 45}], "itemIds": ["JpGPigdc5VyC4qvW", "jVac1cQvSxgTNIUz", "xDgBlIbuzm7DzJ20"], "itemQty": {"NFRJIhFXR2dYprPm": 3, "PN1oco2jx8Upe8Sj": 79, "sc6y68whNBYl9iCq": 11}, "itemType": "MEDIA", "listable": false, "localizations": {"rqGOQny4ij4ysYPo": {"description": "nb59gQffkNOmubxE", "localExt": {"Jr2qEAuJbpZSrcbc": {}, "4LWfKaY5c1tP5TDu": {}, "I5f6m4KC07CnsZe3": {}}, "longDescription": "2hqEcB1ExYMBb3ck", "title": "voaJYdMqGegcg3eR"}, "vBZXN3cjIXmFWRJn": {"description": "j8xN7HDPTUEDPN1K", "localExt": {"b4UTPWDXTSb55g8L": {}, "STs7Nf95lGlPrf6o": {}, "bIdnI6Ag7eUYcYJ4": {}}, "longDescription": "QzXCmqr6gmPGaHP5", "title": "SVPvRLiDi0mNHb6L"}, "x8eq8SGNwEQO8dYX": {"description": "vBSYvJBwb6CjZUMR", "localExt": {"f2VJetWsokvx3BHu": {}, "TEczr9KjQ3ttz8MT": {}, "Bt1xk9IyssSA8nP5": {}}, "longDescription": "PQjpzk2Tb7iYdmNZ", "title": "WosrsVBPZ64j0HUO"}}, "lootBoxConfig": {"rewardCount": 80, "rewards": [{"lootBoxItems": [{"count": 41, "duration": 37, "endDate": "1976-01-17T00:00:00Z", "itemId": "xcCKAru8pOaAVLDB", "itemSku": "4k3JwkdaxR7GJpYm", "itemType": "uYCPG181q9GA5Dyd"}, {"count": 59, "duration": 4, "endDate": "1999-08-27T00:00:00Z", "itemId": "Fh04JTsqDTynCewq", "itemSku": "JligLlRxOelKykIC", "itemType": "RxF6HtlER2txs4qr"}, {"count": 80, "duration": 20, "endDate": "1984-08-14T00:00:00Z", "itemId": "RATn6KXOutlYBbLh", "itemSku": "L8KXx25FZfQIodVB", "itemType": "qQsBpCJBIXLGYcwW"}], "name": "VRK6UKk5ozrXA4HZ", "odds": 0.5379744371526379, "type": "REWARD_GROUP", "weight": 26}, {"lootBoxItems": [{"count": 49, "duration": 2, "endDate": "1979-03-12T00:00:00Z", "itemId": "9odanhR1Zrm3thUv", "itemSku": "V87yfkycLSVdleSa", "itemType": "AylsmLYe2phYOgT5"}, {"count": 22, "duration": 71, "endDate": "1986-10-27T00:00:00Z", "itemId": "TyPl3dKF7NXEjrJM", "itemSku": "ki8jvc3P8Gwjg3IO", "itemType": "H0SDHgYKqxJiFJdr"}, {"count": 25, "duration": 35, "endDate": "1975-07-27T00:00:00Z", "itemId": "5vhzgsJwex7wq8ZP", "itemSku": "lXNaUNgdY2vfJuje", "itemType": "5cPnmGjTvYa5Pqx1"}], "name": "K7qcAoijBPAp6EPb", "odds": 0.9856036502441055, "type": "PROBABILITY_GROUP", "weight": 78}, {"lootBoxItems": [{"count": 82, "duration": 84, "endDate": "1984-06-07T00:00:00Z", "itemId": "xrDKVpULjjiw3NeV", "itemSku": "G4DJi9DaMrc0WFgK", "itemType": "jE945x2CPVYYG9Wv"}, {"count": 30, "duration": 79, "endDate": "1987-10-08T00:00:00Z", "itemId": "mAmvaVV5YfxnUNcw", "itemSku": "jr7gSGhnfuF4WZiQ", "itemType": "VICVpWd3UM08gMXh"}, {"count": 7, "duration": 48, "endDate": "1973-12-28T00:00:00Z", "itemId": "3juXW4JprIb3CJCA", "itemSku": "tvSG8Cfa9dzOJDGC", "itemType": "THIOFjeXbsSgR43k"}], "name": "IDzxBwqRJTzrHNZW", "odds": 0.7456309140989167, "type": "REWARD", "weight": 34}], "rollFunction": "DEFAULT"}, "maxCount": 30, "maxCountPerUser": 23, "name": "4ETeCUYG9ccTt7Wx", "optionBoxConfig": {"boxItems": [{"count": 47, "duration": 14, "endDate": "1995-11-26T00:00:00Z", "itemId": "Rx1yPeczRpdk0HAT", "itemSku": "Gylx2JG2KNGfhzfC", "itemType": "TxxrsRRLee3TcJ7D"}, {"count": 86, "duration": 67, "endDate": "1988-01-27T00:00:00Z", "itemId": "i45aCDHN9mVug2zk", "itemSku": "Vf6KgpKOcn3tMD9U", "itemType": "T67bOwugFDa6wUQv"}, {"count": 9, "duration": 61, "endDate": "1974-08-11T00:00:00Z", "itemId": "KqwCh86XmRkCEcfH", "itemSku": "DCdl59Wp9A3tXGve", "itemType": "6DdK6uvg8f2cIoBy"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 45, "fixedTrialCycles": 11, "graceDays": 47}, "regionData": {"xLUcCEt0DzmkJq1s": [{"currencyCode": "ml5bYt76BNsi4giR", "currencyNamespace": "9434WpKKdzxoufCN", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1987-02-25T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1980-11-28T00:00:00Z", "expireAt": "1978-01-18T00:00:00Z", "price": 27, "purchaseAt": "1996-11-04T00:00:00Z", "trialPrice": 88}, {"currencyCode": "UBsnUfuQIcSbUt5U", "currencyNamespace": "GkInFGpuUsdtq4dO", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1991-07-31T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1979-12-29T00:00:00Z", "expireAt": "1984-03-28T00:00:00Z", "price": 59, "purchaseAt": "1990-09-08T00:00:00Z", "trialPrice": 75}, {"currencyCode": "W9dUVhZjLftC3sCS", "currencyNamespace": "8CpLCqPD9CeDEdCn", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1990-09-13T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1975-06-10T00:00:00Z", "expireAt": "1998-08-12T00:00:00Z", "price": 1, "purchaseAt": "1976-09-17T00:00:00Z", "trialPrice": 19}], "r8CDapjwNOl4k8rV": [{"currencyCode": "Nrm8drv8QD2JOe2N", "currencyNamespace": "tz7EFvowPgIGuetx", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1981-05-18T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1973-12-15T00:00:00Z", "expireAt": "1990-09-26T00:00:00Z", "price": 55, "purchaseAt": "1996-05-12T00:00:00Z", "trialPrice": 90}, {"currencyCode": "Q2ZRGzNtrThFa9XU", "currencyNamespace": "8mosluiHZJ7O8sAQ", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1982-04-16T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1971-06-17T00:00:00Z", "expireAt": "1976-01-07T00:00:00Z", "price": 59, "purchaseAt": "1979-08-01T00:00:00Z", "trialPrice": 35}, {"currencyCode": "sr9xYiWRuuzQJiLc", "currencyNamespace": "1eI9w3JEhxPGbEk7", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1997-02-14T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1982-01-20T00:00:00Z", "expireAt": "1989-09-15T00:00:00Z", "price": 23, "purchaseAt": "1975-04-27T00:00:00Z", "trialPrice": 23}], "unC3vJKBC7SwgoVi": [{"currencyCode": "PeIB4Ehy0Y5aSJVD", "currencyNamespace": "ginxAM77eY9C14Fb", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1975-01-28T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1983-11-20T00:00:00Z", "expireAt": "1973-12-11T00:00:00Z", "price": 70, "purchaseAt": "1982-01-13T00:00:00Z", "trialPrice": 24}, {"currencyCode": "a1sB0HsJ06DzfbzR", "currencyNamespace": "Yt4OVUyumBeIqdQG", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1978-02-26T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1989-11-08T00:00:00Z", "expireAt": "1987-07-20T00:00:00Z", "price": 94, "purchaseAt": "1988-11-17T00:00:00Z", "trialPrice": 69}, {"currencyCode": "k5FGUPhR4LEZvz3E", "currencyNamespace": "jFR7996Ug5m4axDV", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1976-01-22T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1980-04-30T00:00:00Z", "expireAt": "1972-01-06T00:00:00Z", "price": 15, "purchaseAt": "1995-07-22T00:00:00Z", "trialPrice": 35}]}, "saleConfig": {"currencyCode": "gZVl4gIF7v3qbZu9", "price": 79}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "2nHJzvw7tnYtGfv0", "stackable": true, "status": "INACTIVE", "tags": ["yjBu4EzwRjD7jmQJ", "eFPghqamSc5y0X48", "eT7Mluexk87b9Z5B"], "targetCurrencyCode": "TsEA3EdmW8saabP4", "targetNamespace": "xRowfNojzPXI2v0p", "thumbnailUrl": "rR3OEey0MkZwS6TY", "useCount": 46}' --login_with_auth "Bearer foo"
platform-delete-item 'v1M3qfch4SqIV6LQ' --login_with_auth "Bearer foo"
platform-acquire-item 'PHlaeYl4csFq65cU' --body '{"count": 23, "orderNo": "6yJaj4ovoKWE4EW0"}' --login_with_auth "Bearer foo"
platform-get-app 'sw8v5peiuxoBJATa' --login_with_auth "Bearer foo"
platform-update-app 'uyD3XCXVMiyEvMf9' 'yilUEujk6oqYo1HQ' --body '{"carousel": [{"alt": "YTFzwdOMdupwD4O3", "previewUrl": "uNbcIDcIyvZbOy1T", "thumbnailUrl": "4hfwkuVykH4Rpfmj", "type": "video", "url": "XFGZ5PKdbabJIkNn", "videoSource": "vimeo"}, {"alt": "fo74eg3Nt2c0r4Gq", "previewUrl": "F0NHglOVuNZ9LzNe", "thumbnailUrl": "JnBurh54CWbYb0Pe", "type": "image", "url": "0GKwJ3vfXlsAMy2Z", "videoSource": "generic"}, {"alt": "UgYwbaLvqvQ2NbmD", "previewUrl": "ITuymTBjn3d2sFzM", "thumbnailUrl": "S3QaVjZF7Ax6115K", "type": "image", "url": "as9S7ivHEoLbUMM4", "videoSource": "vimeo"}], "developer": "f1UreUpxEkXIbE1E", "forumUrl": "TzRJZKMavu4Ul2Ia", "genres": ["Casual", "Adventure", "Racing"], "localizations": {"N27bojDVaZLpx4kE": {"announcement": "WYkO6KrKUMhJrASB", "slogan": "h61hmWKSSrF35anD"}, "Gvur19V18oIrUKXt": {"announcement": "tgAI2QdWJFLmoPEg", "slogan": "d8EMspOs8nkic9gj"}, "5vyUMAAmIHYbsxG5": {"announcement": "N066FXb88SbLOa21", "slogan": "DiSFsm0XXQJWszvT"}}, "platformRequirements": {"QEuALzDNp1SZ58aD": [{"additionals": "llwzTRHak1MXxj7E", "directXVersion": "srg7900nml5BidsK", "diskSpace": "9dCEzhVnOv0PQbVI", "graphics": "aKiHfoeorY7A1otG", "label": "Fyv2SMjbEr50qGdC", "osVersion": "ZIc6EFqBKxbS7Q2O", "processor": "gRucL1jwRXzfjDZZ", "ram": "BmOau6syme06c6SK", "soundCard": "Lc2mEC3IXl5XCbkO"}, {"additionals": "fHaGr5kdazlypvt6", "directXVersion": "lSLfU7HByGXPMqxj", "diskSpace": "4hBgVY3YAxZLKbcO", "graphics": "dyjqf6Q4oiwoJcaR", "label": "MEb15LBlTVufc5Zy", "osVersion": "ODR2NVyn4PRqf3eR", "processor": "bZqBAoKGcVCdMiSN", "ram": "V4qBrt1kcLmRv6EJ", "soundCard": "tl5xWnsb8oWq94RI"}, {"additionals": "mNWVIJnhhwFDV1Vi", "directXVersion": "taomvWTzdsW4N70w", "diskSpace": "YS4Kj7Yi2VvoQNW8", "graphics": "Yc481dYdvGxJAMDR", "label": "A1LF7jdWlekFwO94", "osVersion": "VBCV9qJhWva2FPBu", "processor": "jX0geYCpGJM4sqsP", "ram": "NJMiZXXOFwmGWAvN", "soundCard": "F0Z0GkwxUNYyNwGi"}], "KrknH0Y5mrQgLC6D": [{"additionals": "2qsFiQHglUQMZi5W", "directXVersion": "jMZfOadpgegCUjTd", "diskSpace": "i1Ehr8OtqpNJ9R8T", "graphics": "uNy4ejmVA3vMCsGy", "label": "Pd12B8QNUz0hFFNb", "osVersion": "H6j2W4roZM2UKAXE", "processor": "EsL5D0oiFchQnVeq", "ram": "3g2AB2WIRUQmauIY", "soundCard": "5HXCZ0W4XmWP0HzS"}, {"additionals": "diylLhVYszm8xY33", "directXVersion": "OQbumu2QHLyZNuys", "diskSpace": "yM4OfCzdQCXMAWnf", "graphics": "87YPNOe9Eevf1fhM", "label": "g1E2k7QLFrVgtX7y", "osVersion": "0fPOieDCow2zXyFF", "processor": "VpM87yqEwEacQMTl", "ram": "qN4LKkxJ5v3SBafn", "soundCard": "KNiMPbFkFGA85W3H"}, {"additionals": "JkqgS2B37wwoPYOH", "directXVersion": "iIsxmsLBPBJuNLnW", "diskSpace": "RrtW870qD88ZcduZ", "graphics": "Se7W20UZcDaiq0nE", "label": "Z7PyhqFJkDClOsKm", "osVersion": "fsgJdmzsDPsWh1k0", "processor": "cQ08NG6dX2TZkil6", "ram": "7kRngoUa83ECh1gq", "soundCard": "PeS193TNNzot3sVl"}], "i3GN2XTrFibRAhzz": [{"additionals": "EWzWlTY70qdgJRvp", "directXVersion": "ZrSpWX3KEe2BjV00", "diskSpace": "ReCXFffjJJxlgjzI", "graphics": "hpgOoIOD74V21HWD", "label": "AfvXwdxbyp4HAPbB", "osVersion": "bNPStVBUpKgOssFk", "processor": "z0F36piDYXeHZ7FH", "ram": "ls3nyvconqbHQqKL", "soundCard": "QKe3xmj6s0GqsWnc"}, {"additionals": "p5LrqbiKudv9z75S", "directXVersion": "zoCV8ZMi2o1nR482", "diskSpace": "D6gNClk9c87hosaP", "graphics": "FC5zBW3ZgVZCj9Ob", "label": "VGT0Scwl4kNmCi15", "osVersion": "XTJTgCNNH7RtG5Xm", "processor": "o9Q0Wb07N17fkxZS", "ram": "c6VbE0AGcekjMNHu", "soundCard": "PXtz8tXxrmzafMUg"}, {"additionals": "uyDoN91uc28HoSpG", "directXVersion": "t1g0GGbT4Hf2PPKO", "diskSpace": "ldkbgX9CWJKwXXSb", "graphics": "v5eg9q86IaDFjjx6", "label": "uZerWbtwTX9gNRBy", "osVersion": "jbE8lOLAfTXKLzbr", "processor": "ddqcKLa7LevxNHOS", "ram": "EhQRZIp693lRwtc4", "soundCard": "3atCuCFxbfbz4aQE"}]}, "platforms": ["MacOS", "IOS", "Windows"], "players": ["Single", "CrossPlatformMulti", "Multi"], "primaryGenre": "Indie", "publisher": "4dHhOqG5KDdUvk0L", "releaseDate": "1986-05-27T00:00:00Z", "websiteUrl": "i26Ls7mjRxNmvvNt"}' --login_with_auth "Bearer foo"
platform-disable-item 'jJNQepUTGhwlY4lP' 'zlsCR5rVsyfcH7Wj' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'P7HuGz3b5WAEvdRF' --login_with_auth "Bearer foo"
platform-enable-item '9bqMj4ro5B19VE83' '8c7OydVw0zCqoMZv' --login_with_auth "Bearer foo"
platform-feature-item 'pIOO97DmQ5ZOzx6i' 'CJTu60IifzMhkk5P' 'xsjqbCKpMv2Yky9D' --login_with_auth "Bearer foo"
platform-defeature-item 'YkD2sIllFtBtXJKG' '3rqBmILhtWm8RQvR' 'UbUDSiefGEdLucrt' --login_with_auth "Bearer foo"
platform-get-locale-item 'O2gCQD057DrDlgC2' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'nzS9SiGUjVAw4v3q' '6JRHcn7KaoCEkRdo' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 33, "comparison": "isGreaterThan", "name": "YIZWnXqQ1oHFJ9Q0", "predicateType": "SeasonPassPredicate", "value": "XegSEhrPpK2q8kxR", "values": ["VeHv0L2Acm960EYQ", "4BuEksS2A9VOA8H9", "EuGJVl8xs1WId9Wl"]}, {"anyOf": 1, "comparison": "is", "name": "HgoXCR6XOMXwKdfq", "predicateType": "EntitlementPredicate", "value": "xwEdkyuT3MgzReRq", "values": ["6bpuJip8JyxJ39vr", "6v2AEozWWaYvBLE4", "0112ISArROIodcmM"]}, {"anyOf": 40, "comparison": "isLessThan", "name": "mb01yA7U7dGMjupZ", "predicateType": "EntitlementPredicate", "value": "gwhYzk33J34fiTxK", "values": ["63OHpnUCGBVfpctN", "euLAbBgejqc0apxq", "FUsUQ6ZXQcb2o1J5"]}]}, {"operator": "or", "predicates": [{"anyOf": 49, "comparison": "includes", "name": "9BySn8aUaGlAyvIs", "predicateType": "EntitlementPredicate", "value": "SQdwec1m8BusV9tU", "values": ["h74KVo6Xqjz2xUKL", "aLMqi836ULa7cfZl", "NWSmYyVvyelIJ8Qg"]}, {"anyOf": 61, "comparison": "isLessThan", "name": "ErA82FrR1GSogkew", "predicateType": "SeasonTierPredicate", "value": "kIxXKKIR6kPmswm5", "values": ["GLmSZns5owBhoUg4", "LsGP6KLPXkvUv2Xi", "TCAU1cKApdJDnE73"]}, {"anyOf": 0, "comparison": "isGreaterThanOrEqual", "name": "BzsmaxjTZPlLityt", "predicateType": "SeasonTierPredicate", "value": "yB7FTexsOZ0b2p3b", "values": ["it6boOLGCcg16Dqw", "63KrcwIcXMhGy83X", "dQPQ9HkSSV8e1MgT"]}]}, {"operator": "and", "predicates": [{"anyOf": 91, "comparison": "includes", "name": "F3eTC0vzZUDj9dzG", "predicateType": "EntitlementPredicate", "value": "j7qms9AGQExPhgr9", "values": ["Vpqn47GVghTH2wTo", "gGfC0GjvpgJfuBs1", "Onq9U5lyW89Xwt3w"]}, {"anyOf": 26, "comparison": "isNot", "name": "RTrDCjhnKvsHezWT", "predicateType": "SeasonPassPredicate", "value": "WK0x0ZidAJ1CU1eD", "values": ["yGjjv4Mwrv2vancm", "R6Z7rb21A2E9pX0B", "1La16Bw3JbUnUDh5"]}, {"anyOf": 100, "comparison": "isNot", "name": "dzA8bvXlDhG7Bror", "predicateType": "EntitlementPredicate", "value": "SrSHrkoqv2mM6soM", "values": ["gUxAogcnGkXk17QP", "O0js0hG9xmSnzd7z", "aTvQq2a9YdFNtRVS"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'kJHRhmLKQuQVFSKi' --body '{"orderNo": "Xl8G2uf6E8EajXLS"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "AS8MKMaxQ1QyJCpK", "name": "edhuzI7G9NCKKXu1", "status": "ACTIVE", "tags": ["CsSDspvgM16sZ6rj", "nkH4ExObppC6CMYD", "m5ge659UDEOF6gp5"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'UfmjtiVbqJnZcrqr' --login_with_auth "Bearer foo"
platform-update-key-group 'Pye7fCwi7Il2wIFl' --body '{"description": "Hm9N6owMHMtJy1Oq", "name": "n59tEGm9NYeUT5P0", "status": "ACTIVE", "tags": ["DVUGgGHkapTCafFM", "dvYiCBuzUUwyI6Vt", "d4v9k4fv3kMiuQ3D"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'hsKLxjt5srPFxBgp' --login_with_auth "Bearer foo"
platform-list-keys 'FtDBmTLH9kP9U53z' --login_with_auth "Bearer foo"
platform-upload-keys '6joBAhAlJGI2YYb6' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'ajBjgq6eY4PBNHKP' --login_with_auth "Bearer foo"
platform-refund-order 'x62tHxDb06ZFy3ug' --body '{"description": "lSp2UxvF2uLXWilR"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": true, "notifyUrl": "y9uxgVLGgK8aVSCN", "privateKey": "6oCETQ8gIDRdD2ww"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "MXwKVXGPhEJsc7rZ", "currencyNamespace": "pxaPHc9r8eToFmkH", "customParameters": {"J6BPOKFLxIwKssw6": {}, "47YwDudnGRufOUGf": {}, "MjTU226l07jPlcYa": {}}, "description": "qYM7YfBmhjI9Y28q", "extOrderNo": "VceS9UX48dKPCFUI", "extUserId": "eyYEymNXzNX6TGh4", "itemType": "APP", "language": "WhE", "metadata": {"U8962e6gtn5pUARJ": "M1T8QwMNOAzXmyHE", "V4g9P6a280S5RNB5": "dVCsB7xL4axSPgPC", "iwLxCFLDixZwVtt3": "RVTl0tR00oQgcHdG"}, "notifyUrl": "GK3x76U1EIcklttm", "omitNotification": true, "platform": "1oK3c4RVfjB0zi3X", "price": 36, "recurringPaymentOrderNo": "r1FgR70eNLHkVrEF", "region": "d8xArWJuCAIfNBSH", "returnUrl": "gpFNw9K9pmAIc6VS", "sandbox": false, "sku": "vNj3ktaDf9B22HGg", "subscriptionId": "xakPt7IYzaZUTmvs", "targetNamespace": "EzLPnnGsnfmBerp8", "targetUserId": "4qjwzWpCF1vyamjs", "title": "EzwtLPxK1os4qR8L"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'aQzEb39sZTdFfC8x' --login_with_auth "Bearer foo"
platform-get-payment-order '5aHLsXHlm1RJTTy9' --login_with_auth "Bearer foo"
platform-charge-payment-order 'JrNz1K5M1qgFddYv' --body '{"extTxId": "ifGHawNx6yhniEHL", "paymentMethod": "bEQKc0aUvrKXDIjY", "paymentProvider": "XSOLLA"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'BhYe2fJDS6T75Q4u' --body '{"description": "lonMFjmYqE1wJhfo"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'gWg2Apm0sUy18aWn' --body '{"amount": 91, "currencyCode": "5Co0vdCk8so6JSaZ", "notifyType": "REFUND", "paymentProvider": "XSOLLA", "salesTax": 71, "vat": 74}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'adKDEZywonA2SrEd' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'IOS' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Other' --body '{"allowedBalanceOrigins": ["Playstation", "Xbox", "Nintendo"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Playstation' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "S6A5mkufBpWVxIK9", "eventTopic": "D2bTcgaKoccaSwWc", "maxAwarded": 25, "maxAwardedPerUser": 42, "namespaceExpression": "zCWGI1cIQcPWAShI", "rewardCode": "hieSKUf3zKbyQk2v", "rewardConditions": [{"condition": "QTYX1xsth28NZZgs", "conditionName": "XycuQNGIDeHlf6Ic", "eventName": "X1K9JrK6Or2xx7rL", "rewardItems": [{"duration": 47, "endDate": "1980-05-23T00:00:00Z", "itemId": "XvpOjrpRo4mYrCeQ", "quantity": 95}, {"duration": 49, "endDate": "1977-05-02T00:00:00Z", "itemId": "YoID2UqO0iAXA9dB", "quantity": 18}, {"duration": 47, "endDate": "1971-05-01T00:00:00Z", "itemId": "8HDOJ8TNiP8KgEAj", "quantity": 91}]}, {"condition": "dbRTI0i6dO3zkbDs", "conditionName": "eh4tJdoGcwMBmegq", "eventName": "VUaWMJBjrV0p9A7t", "rewardItems": [{"duration": 5, "endDate": "1988-08-17T00:00:00Z", "itemId": "rV0MbJGr4drgkDuW", "quantity": 91}, {"duration": 83, "endDate": "1998-07-05T00:00:00Z", "itemId": "5m0pGzazM2BUXnzU", "quantity": 63}, {"duration": 13, "endDate": "1996-05-20T00:00:00Z", "itemId": "TiKMJAf6AgbiEDMf", "quantity": 59}]}, {"condition": "dZDGwqx7T3l1ut2o", "conditionName": "yolliYsTJUmpscwL", "eventName": "cUml3KuoMKh7tprn", "rewardItems": [{"duration": 0, "endDate": "1995-01-16T00:00:00Z", "itemId": "NIbJMJ9ABbKVWO2Y", "quantity": 63}, {"duration": 63, "endDate": "1985-03-11T00:00:00Z", "itemId": "hOScvtQ92iD02YMv", "quantity": 62}, {"duration": 85, "endDate": "1994-12-08T00:00:00Z", "itemId": "NfoL7JCcMo7GxxXd", "quantity": 2}]}], "userIdExpression": "B49Km4ClIQmkIdLC"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'Sot7aohFYy4VxwHI' --login_with_auth "Bearer foo"
platform-update-reward 'J9gzxqAw4vBGQAeh' --body '{"description": "0VTiTP4PSrXUS6jY", "eventTopic": "I9lsQFD43Df5qUZO", "maxAwarded": 65, "maxAwardedPerUser": 21, "namespaceExpression": "zpFd6b5Jc5TETHcu", "rewardCode": "p8GG0VCMTFJ6svTy", "rewardConditions": [{"condition": "o9RHget5hzB52BDF", "conditionName": "opxUwkMuSqQnKzDg", "eventName": "DAtqE3kuybwTQFYE", "rewardItems": [{"duration": 73, "endDate": "1975-11-20T00:00:00Z", "itemId": "IYwqfSRy8GgVk77f", "quantity": 8}, {"duration": 62, "endDate": "1998-10-23T00:00:00Z", "itemId": "GS5YkyhAiAItnWUm", "quantity": 60}, {"duration": 59, "endDate": "1999-09-01T00:00:00Z", "itemId": "5fp1egsx3ErheNwq", "quantity": 6}]}, {"condition": "IE1z3rDwZ1HKsOpy", "conditionName": "q8agQuz86nc6jLF9", "eventName": "DIW2ncJJKpqmgvUT", "rewardItems": [{"duration": 36, "endDate": "1985-02-27T00:00:00Z", "itemId": "XAtpOqUQxzqJZiWi", "quantity": 85}, {"duration": 74, "endDate": "1992-12-09T00:00:00Z", "itemId": "Lrt2t6bVpCgKvPXS", "quantity": 60}, {"duration": 33, "endDate": "1981-04-12T00:00:00Z", "itemId": "fmKh783cV54JsVBR", "quantity": 55}]}, {"condition": "oHzqY3DgykA8zBJX", "conditionName": "0rkOHUkY5aSlqhYo", "eventName": "SXbn6l5xAzc1nc3e", "rewardItems": [{"duration": 64, "endDate": "1973-04-14T00:00:00Z", "itemId": "5JSwjw2fE2g6jXV7", "quantity": 29}, {"duration": 15, "endDate": "1971-03-15T00:00:00Z", "itemId": "Rum5pbgEt39uJQpg", "quantity": 62}, {"duration": 96, "endDate": "1981-07-20T00:00:00Z", "itemId": "chTe3nt7t9ztprSf", "quantity": 78}]}], "userIdExpression": "9OutADrNGBWSJ1zQ"}' --login_with_auth "Bearer foo"
platform-delete-reward 'KxVmRTawjiZPMoZZ' --login_with_auth "Bearer foo"
platform-check-event-condition 'cyGEHxAKDQher3us' --body '{"payload": {"ApPdJPn9eIdhIBvT": {}, "TupABJ4RwH3EdKmY": {}, "tbqQHNfIZwrMxf3E": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'nzZVnkLT0Lb85nmp' --body '{"conditionName": "dN26BY5YI0jeO2zM", "userId": "DSy4kyqyKgrtEPdX"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'Xlt8geCdiXu3iNvn' --body '{"active": true, "displayOrder": 25, "endDate": "1990-06-18T00:00:00Z", "ext": {"Z7h6alhJNGZF07ls": {}, "PP5OfHbXzWnVO2U4": {}, "uyzZo1rj0ZrLQjk4": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 30, "itemCount": 43, "rule": "SEQUENCE"}, "items": [{"id": "aNeDiSqTfmAVg50k", "sku": "OdJagEmTuaxlxgyw"}, {"id": "kbdOsyxX1tfW488o", "sku": "YUT4jyCVJ0V8obTl"}, {"id": "GVThz4bm41oIcV33", "sku": "yjPxibDjfF7JkjCV"}], "localizations": {"pZKMxkFkBtXMU6KR": {"description": "Im5xBoIi99ctgFXa", "localExt": {"sxp5h780ktjQw2yX": {}, "zaQWaF2PqUfbpMpR": {}, "l6xRyV19cborUHeC": {}}, "longDescription": "pqnZ5NW623WWn2ZJ", "title": "Y3QvRa7CDRTcsAHz"}, "D3dZyyWbUQpbcv3I": {"description": "wmL7a1K3zIUYJmdF", "localExt": {"1YtWNSQlcMzxfppN": {}, "CrscDPbklTHcmgXs": {}, "rVj3Mjml6BpCODWG": {}}, "longDescription": "OLMmCZUeelXYyNrX", "title": "weiCnDldRPRfd6mL"}, "Z0GTJwEjoZrRtaeW": {"description": "KMC8wsOByQAMAgqF", "localExt": {"EzEt8umj5XhKnw7M": {}, "HDwFVKUC2ecnpUDq": {}, "vLQixPKVSmWa8TGk": {}}, "longDescription": "o16XTqHc0cM7ixq8", "title": "Tjnxp5Cl8ggaEmCc"}}, "name": "uK2hHviBEWpbusO6", "rotationType": "FIXED_PERIOD", "startDate": "1982-07-16T00:00:00Z", "viewId": "LahtRedh1SiZlOpI"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'Q8GL7jBF1R5OexAP' --login_with_auth "Bearer foo"
platform-get-section 'zCG6ZKQClGc1636n' --login_with_auth "Bearer foo"
platform-update-section 'bfM3J9G40Y62bCo9' '41ALznQuHVskfCjU' --body '{"active": false, "displayOrder": 56, "endDate": "1996-07-11T00:00:00Z", "ext": {"4Q0B2Cj0oOmBmXu1": {}, "KiTTiz7yrIvQj2is": {}, "N7bRwcr16lW5YwgZ": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 3, "itemCount": 19, "rule": "SEQUENCE"}, "items": [{"id": "pUwnGptHUplxzaDa", "sku": "9PDwhu31d8eOdtrf"}, {"id": "q6ECDD6OGkuLs9gN", "sku": "pNon6DKW9A6AmnQT"}, {"id": "NFidImWONTvCPMGL", "sku": "dbYEknHPKrZ7TiNB"}], "localizations": {"E0HRsE0GHDOFjrfq": {"description": "JcyxT2a7fCFAUzLE", "localExt": {"LiM573TdtWjfVciu": {}, "LnLsBKGsALPuCOyp": {}, "hUUAV95708zaP0wp": {}}, "longDescription": "ZgQEvFzox9wHocX3", "title": "DRWobEoGr8W97KBe"}, "dcr6PM51z7i0wQ9e": {"description": "gK2t46EG8I2lTviK", "localExt": {"bOgVuN3nhkn6QIes": {}, "NoYqvVsakylHikKk": {}, "pOjqwgKvfXXs8pDq": {}}, "longDescription": "m31AZSRkuw6q8Fgq", "title": "G46RsFK7eYlSU3vY"}, "cHZZjFegVnZOn0tk": {"description": "4IATSIefcqNEn4IZ", "localExt": {"0Dv6b8WtaMVvLbG0": {}, "4KKnh3jvW0Qp3kTy": {}, "L4CsLwiWUMcpxn4B": {}}, "longDescription": "6XoTNMuqZTHwo1IA", "title": "JQpb6r8ZeaSHwQui"}}, "name": "H3Ozu4G6bXxp0gYZ", "rotationType": "FIXED_PERIOD", "startDate": "1976-09-14T00:00:00Z", "viewId": "6iPdJ2boQqCCyJfT"}' --login_with_auth "Bearer foo"
platform-delete-section 'hvCJieqRSGN8Mm74' 'HlSZzp4aEW4GkHG5' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "OIVuGv47XJpkMiop", "defaultRegion": "QrVL3ZZTVxqa9XM2", "description": "gY14iWk12Jffk8dw", "supportedLanguages": ["KNPUOHNZxML3yoBM", "9qxd6PWz7sVnMxge", "2inL8fBFP1ABaIKr"], "supportedRegions": ["Et8d3o7cTS9OIIME", "rnNTLXHrsOFsbhRo", "w4iaYKy0IjsDgbJ3"], "title": "7DN2lDvdh7okHl1w"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'Mht2Izq7TCUJhDsD' --login_with_auth "Bearer foo"
platform-update-store 'efAS09VyQB1vR1mx' --body '{"defaultLanguage": "6K17GL1CrO4ZuoGZ", "defaultRegion": "SxTzm8oMSPIHPtqz", "description": "IWIzg8pbjnt1iBV8", "supportedLanguages": ["DpbjGts4UZDTfhAy", "ZKhqilty9NVlgxUm", "nfdOAmu1dX1NqD20"], "supportedRegions": ["RUvvYeJZw6QZFN7w", "FCnqpvNesGiVnt9p", "2to7Yja1soDE1K0S"], "title": "vGrMYwPmPXC2LfL2"}' --login_with_auth "Bearer foo"
platform-delete-store 'm5rP2A20t6foPPH9' --login_with_auth "Bearer foo"
platform-query-changes '4SUinY5diUlqgvY7' --login_with_auth "Bearer foo"
platform-publish-all 'dPPyahppgxJhk4Ed' --login_with_auth "Bearer foo"
platform-publish-selected 'TZ000rS92594HLvW' --login_with_auth "Bearer foo"
platform-select-all-records 'FsXHtMP0k9L5dREQ' --login_with_auth "Bearer foo"
platform-get-statistic 'bCqfh0gpABFBER6W' --login_with_auth "Bearer foo"
platform-unselect-all-records 'NcDOsRzBkf9A6HjC' --login_with_auth "Bearer foo"
platform-select-record 'nFRdSihcvszzQLZB' 'ktk0siMup01kyaFw' --login_with_auth "Bearer foo"
platform-unselect-record 'wD7wecuQb4GNQHVZ' 'MKGBnzh4suaGIztt' --login_with_auth "Bearer foo"
platform-clone-store 'TncVBf5g3oeuHiNy' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'LkfPQPmjUkvSs5Ym' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'IejozmG5HlrIfMAv' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'vpkAHRJHZyfrXZmi' --body '{"orderNo": "JX4CjKCeIRIr997K"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'KpJXTLbYWpqeXjaf' --login_with_auth "Bearer foo"
platform-increase-ticket-sale '1f5fjNMZjKJ05puX' --body '{"count": 49, "orderNo": "97WrMnJtovSMFw8X"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement '4zxbdfXgunt1oMNZ' --body '{"achievements": [{"id": "68eovHSH3xV3URIR", "value": 98}, {"id": "oMLnemwKAvgDXNrF", "value": 63}, {"id": "MH5Tu1ky1ZYvyeHm", "value": 11}], "steamUserId": "0efmEVcW7mxbS5UO"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'oICxQMit8555Niy4' 'NNFpRE5pS85yTIRW' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'vLRy58UKWPv3F7S0' --body '{"achievements": [{"id": "wCVlYQi9cfMCeNnu", "value": 84}, {"id": "3tCwv8H1f451FVZ6", "value": 33}, {"id": "0HNBYZSrz7pMjESL", "value": 77}], "serviceConfigId": "FIqaqwH9J6JLb5f3", "titleId": "SBMyJUdwEBRrHAWU", "xboxUserId": "FqTooGGnPEgY0t7Q"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'QWl42byOwXgKyPhX' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'mcysae8HpWH4xiz3' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'fWthJSu2pUIIuPLF' --login_with_auth "Bearer foo"
platform-anonymize-integration 'AtcWhjAP57QbWvSS' --login_with_auth "Bearer foo"
platform-anonymize-order 'p71zEPPfmAQiqRRC' --login_with_auth "Bearer foo"
platform-anonymize-payment '2caquMRtQOILcaDq' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'UITBHQR5ISNoFR3G' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'UxdMuvmL0UBfwzaa' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'eP3Wd0Wrb8s3GW0C' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'Y0vAfbq8xoCurq4l' 'PSN' --login_with_auth "Bearer foo"
platform-get-user-dlc 'OUpR3uUdgNlyU4IJ' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'nqtrjCOsE8VjvzhJ' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'wNX4bhqCjlwrmsSR' --body '[{"endDate": "1995-04-27T00:00:00Z", "grantedCode": "86iic1FIMyF7CcNu", "itemId": "2DYn6E9Gk51kOTJZ", "itemNamespace": "luTekDMCGUJvERxN", "language": "IP", "quantity": 27, "region": "Sb4Vt2vKQ5vlCdI5", "source": "OTHER", "startDate": "1986-12-07T00:00:00Z", "storeId": "iBgprzahPB0FKMa0"}, {"endDate": "1997-07-26T00:00:00Z", "grantedCode": "eyNBQWUHDBnBeePk", "itemId": "qg6Zt1Lr5BlO8K6L", "itemNamespace": "H4dSaa8XYHug51ZT", "language": "Gh_VzNU-Kk", "quantity": 90, "region": "1kpHcQtnIc9z70LF", "source": "REWARD", "startDate": "1986-04-28T00:00:00Z", "storeId": "WVPh0Z7YiGE2cyzT"}, {"endDate": "1990-06-26T00:00:00Z", "grantedCode": "BY7Xd0OoENg2Lw7u", "itemId": "epmahXojVZYz2zMU", "itemNamespace": "9jLzNV3GaG43R6nl", "language": "irtS_678", "quantity": 9, "region": "1WkIa0oZ1nXpW1l7", "source": "PROMOTION", "startDate": "1986-01-22T00:00:00Z", "storeId": "BOsQ0Gax0iX05IT9"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'Agsjl5NmnSHhxNmC' 'e4txY0MsPc9EMgf9' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'JCJiEvhL8ZfwCVJW' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'MeNmRocp400RZe8B' 'zx9aGEI22BTCZs97' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'TJI8GPrM24F3celF' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'gM62HQtgzQhO3nR8' 'j8DlP6OGbn8vmfMY' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'GLt1AjKhh3JMX7xS' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'rz1EH6X2SM3xzsNr' '["JzWBcdFlo7oAsOlf", "LB1J19b5rTfiL2P3", "r1a8KIJH33aKkPuW"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'D59MgTy1HA58Jt5N' 'aROjSKFEuZo2ElXY' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'SS4ezBRSiOyReviD' 'axlPdhwmcH03yoMx' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'zRR6xd9rTh3ureaI' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'bxM3Wev9pZQjWAN0' 'tny16ZHZtuSJGQCr' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'M7JEMRPkdTcAzkIl' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'ndN5xeayr3vUKMuI' 'iz2MiAAKcvAXnxnH' --login_with_auth "Bearer foo"
platform-get-user-entitlement '0QIhoJRY807VmBT4' 'wZXQZZrSsuYiIPei' --login_with_auth "Bearer foo"
platform-update-user-entitlement '0pXglJYnKkoCAZuo' 'lAWnxkImVbDP0QX3' --body '{"endDate": "1998-02-21T00:00:00Z", "nullFieldList": ["bcX435TDYpkk2Gza", "6DrSycophHw3EoEE", "ClTO9SDKnMlnKW9j"], "startDate": "1975-03-01T00:00:00Z", "status": "CONSUMED", "useCount": 79}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'mIt2nfhUaZGqjslu' '59GT2E6AacmZRXZm' --body '{"options": ["626POXWVj3KP1mX0", "iYHXBU3Uk2tQm307", "IORTyHnLYDAAg1YA"], "requestId": "4kZURmoGgxVRMPf8", "useCount": 13}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'lbtHvDU91DmHzwiq' 'VPCJ5j18Ou3aY8nc' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'eFU5GKmcEKp8AQwq' 'gJs6O0Qj0ccMkdz6' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'zPz3BVHAqp4O9XSj' 'ap24esyjh6Wc3mig' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'f2n6iQyr5cb5YL6f' 'wBiaVPmmn0T5uzlm' --login_with_auth "Bearer foo"
platform-revoke-use-count 'i2NY26xrkPPdg3pX' 'jmtpNfCrIj9ntYo3' --body '{"reason": "dupUHNu8abrVVOKx", "useCount": 35}' --login_with_auth "Bearer foo"
platform-sell-user-entitlement 'AUXkw36cr2WJQqS7' 'Tq4YIyZAFQ6lZfa2' --body '{"requestId": "jdNvpWf32JS1av9V", "useCount": 81}' --login_with_auth "Bearer foo"
platform-fulfill-item '3tZ506ERSVy5M3rr' --body '{"duration": 21, "endDate": "1975-07-11T00:00:00Z", "itemId": "Y5FvADb3GUQgci63", "itemSku": "2w6LUrHuKBoNTpPQ", "language": "XDNHto74GcmVf0fb", "order": {"currency": {"currencyCode": "CU9QdPuWeMEeL0EJ", "currencySymbol": "G67g4W1eAmDxP23q", "currencyType": "VIRTUAL", "decimals": 47, "namespace": "tMuikKc6VNU8570s"}, "ext": {"iWm3V9sirE0JOQxW": {}, "eHypqCWMDPRI2cCk": {}, "8zHR8VyCC0EQwE0c": {}}, "free": false}, "orderNo": "okXbwKDtVmrYQu7h", "origin": "Epic", "quantity": 43, "region": "JkjRevVYfiExpAgo", "source": "REWARD", "startDate": "1992-10-02T00:00:00Z", "storeId": "YDq1x3dkbJFDEBEO"}' --login_with_auth "Bearer foo"
platform-redeem-code 'OvJ5BKeipIldsgB4' --body '{"code": "hOxb88WgKSLIpneD", "language": "GdaF_tCUi", "region": "L3o2NstrL6TsJeRc"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'E7GuwKn63KIDTkUC' --body '{"origin": "Other", "rewards": [{"currency": {"currencyCode": "v2HZMIL2P2bh14Lr", "namespace": "oFTnAuujPeP9N0vd"}, "item": {"itemId": "VB5a2XkS3XQfMuzZ", "itemSku": "h4AhZRe2hgU56xty", "itemType": "JtnbTDXu7FbleSP5"}, "quantity": 85, "type": "CURRENCY"}, {"currency": {"currencyCode": "KWNy2tnF2MifJR4h", "namespace": "r4gdJDujYnVnFK6g"}, "item": {"itemId": "B6ZxC6yYUVUJYnQ3", "itemSku": "jOGmROIqxqQ0gcNe", "itemType": "TflyvUh3w5ZtfwmO"}, "quantity": 59, "type": "ITEM"}, {"currency": {"currencyCode": "KpFSMF0tfGIZCTNi", "namespace": "IRc9fEjkZhEpAJMC"}, "item": {"itemId": "xMp2J0hDg2kMgkvh", "itemSku": "oQe9gD9tGN0nE7M3", "itemType": "6mI9u3EeZtLQij2J"}, "quantity": 12, "type": "ITEM"}], "source": "OTHER"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'qdXfhZTTaCeqGv7m' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'euQhJuq1C6JHkWMS' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'UbqByWN2BCnRz9w2' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'nur0B9jKaunAcyls' --body '{"itemIdentityType": "ITEM_ID", "language": "VJ-sZNa_ms", "productId": "Xp3o4TDraEEaDNJb", "region": "Vd20FVHevCjthJUb", "type": "EPICGAMES"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'jKuMrFaoLulzp3sZ' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'xImVK5yh2LcM8LaM' --body '{"currencyCode": "W0ByjsRUrAHNRkIc", "currencyNamespace": "C4wNFzsbrtYvLh56", "discountedPrice": 54, "ext": {"tLsR2AGOiPhNt2Id": {}, "H8aYYUT6mma833TD": {}, "zk66ix88sAUrXr7M": {}}, "itemId": "XxCvyy7caxz4MQrO", "language": "DLNlxiEjQBCZx9DJ", "options": {"skipPriceValidation": false}, "platform": "Playstation", "price": 90, "quantity": 41, "region": "JLlrwXmIGamRCARu", "returnUrl": "FLx4rV4CXVMrDYKe", "sandbox": false, "sectionId": "WwU4Ty6Ch5QYyFju"}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'BquE7xssm4hxczsk' 'bSUbOZ9WNl3apJmN' --login_with_auth "Bearer foo"
platform-get-user-order 'Abl1g5ZmTTGYRbP4' 'QVey9pEz1TV5cUtP' --login_with_auth "Bearer foo"
platform-update-user-order-status 'Bsw01i5Mf7WvbNSe' 'eDNfUESLlwHv3Jgt' --body '{"status": "CHARGEBACK_REVERSED", "statusReason": "sw5Xl7ZZrDZdbuvC"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'FBaVcohewKkVuGv9' 'fQXkErF0drbYrrFQ' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'P6rW62CtetBW3pvA' 'JJieHhveGg97PY0t' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'xzvYwv7atn9EQv2O' 'j8TFNeGtJGjKbMgC' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'euAYuzrmbWofEaKS' 'tqdKu4ROnONpJ849' --body '{"additionalData": {"cardSummary": "chqeiUGQMwNwDlYS"}, "authorisedTime": "1976-09-19T00:00:00Z", "chargebackReversedTime": "1975-05-11T00:00:00Z", "chargebackTime": "1992-12-31T00:00:00Z", "chargedTime": "1980-08-05T00:00:00Z", "createdTime": "1985-01-29T00:00:00Z", "currency": {"currencyCode": "gM8o7lxXq7TkdM7F", "currencySymbol": "VDCBcvVegrZddP8l", "currencyType": "VIRTUAL", "decimals": 87, "namespace": "EPjbUy7F82Adu9BY"}, "customParameters": {"RHrVTehrqgvEtEs2": {}, "LpE0qfbvdU8hlDoC": {}, "9FnxqBlPBYJ7X6uV": {}}, "extOrderNo": "y7FWTSfMi2CPVGxj", "extTxId": "cdpdCqVeePMSqb8y", "extUserId": "8qJTUQY40Zrpn0vA", "issuedAt": "1986-06-12T00:00:00Z", "metadata": {"9YsPeDWrAVQZSvgW": "uCuLsUGrVQAbhS54", "ZuQHKersDmJLUHAK": "tfXCKOna8DdjtZhh", "6ofsUoRh6r0e0J6v": "yqPw7YlmV3kES0Hi"}, "namespace": "88UYgSV40OvY7apP", "nonceStr": "CrN5bEhmuHgKeWiz", "paymentMethod": "Epw1zN0mOYgGhHMz", "paymentMethodFee": 30, "paymentOrderNo": "dddLWJWDuSYtCaIv", "paymentProvider": "CHECKOUT", "paymentProviderFee": 77, "paymentStationUrl": "cSBdk7MwQzn28Le5", "price": 27, "refundedTime": "1990-02-01T00:00:00Z", "salesTax": 60, "sandbox": false, "sku": "AaUXSuBQdvdhJoT0", "status": "REQUEST_FOR_INFORMATION", "statusReason": "2G2N09VIbbsz24fQ", "subscriptionId": "KDZX6plErw0Gb0ce", "subtotalPrice": 58, "targetNamespace": "lavIiLxU2I1GyJS4", "targetUserId": "8Hxu8Ju4XSAnlXRY", "tax": 56, "totalPrice": 36, "totalTax": 73, "txEndTime": "1985-02-19T00:00:00Z", "type": "f5lwXvRNDBnmL1KQ", "userId": "n77hiP1lzkzjYDw6", "vat": 26}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt '7BiEUqnzxs2deMF8' 'UAJIHEZv5zyUUyNJ' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'kvA5xF3zHtZSd3Qz' --body '{"currencyCode": "XhkrN4pWryt4XTNw", "currencyNamespace": "pp0ni1YfIgLZ4YIz", "customParameters": {"ElrLZOBLHCKmLBaI": {}, "wlokbAFW8RgBUwBL": {}, "28BqM8UzvKqeoTiN": {}}, "description": "KGRUMrimGAz6OhmH", "extOrderNo": "OpCdr3WzDm3hJdd6", "extUserId": "uaO9TiTPnIh2iaIB", "itemType": "COINS", "language": "Sd-YRVM", "metadata": {"6VKYlNYYlHPwKDpJ": "mkeoAkp3Z4pgyJYw", "clb4gd4QgQut2hiP": "uDdOPHcN9drwqyti", "eXpIZfr5XDq9dGLH": "jtgE2bTXJxCCFqPN"}, "notifyUrl": "DqWrpkWnnova15WV", "omitNotification": true, "platform": "ge851PbK2MFKvw5T", "price": 99, "recurringPaymentOrderNo": "yq3I1BLtGEZDRNkk", "region": "4DJUofJXK8RGS0zC", "returnUrl": "YRVmbfzwUmsy0stU", "sandbox": false, "sku": "I9f2oLWDPSZexfKV", "subscriptionId": "xqdxmh5QWxuQuI7g", "title": "dDTDb3WdnOpzTrRz"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'CCafADJfWBspT3ML' 'wJZquMQSPp5XD4S1' --body '{"description": "ilfgff7Et4uY8nlB"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'wGNHgfgwZwVMvshG' --body '{"code": "msg6ZJYnkHDnHTlR", "orderNo": "ugM7a2UZgeesipbP"}' --login_with_auth "Bearer foo"
platform-do-revocation '027okM5E8tAajVSv' --body '{"meta": {"LRj306RDuaSixXEd": {}, "loYZBkatNLc42eq0": {}, "O6VsXtOlQwj5xPvm": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Epic", "currencyCode": "QboMHCtzEF9FSeg6", "namespace": "WYgtfuqJHrs4e3Rn"}, "entitlement": {"entitlementId": "WR30MdBZezfwc3H0"}, "item": {"itemIdentity": "qSbMq4GLj8aGsH0q", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 32, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "HIEqIFEcS0ynIMOY", "namespace": "WpUYUQMooiKT57rm"}, "entitlement": {"entitlementId": "bjEnimeR7EFBz43E"}, "item": {"itemIdentity": "9FkOPVu2fDtOjW1i", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 3, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "lEX42U0syrGNhBmg", "namespace": "T2q0kIbrJ2S5Pf1L"}, "entitlement": {"entitlementId": "vg8kYEVylINJpxFY"}, "item": {"itemIdentity": "8E6pU8eHjh0aTjIO", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 39, "type": "ITEM"}], "source": "ORDER", "transactionId": "9CU3fjSRaXD4HDmd"}' --login_with_auth "Bearer foo"
platform-register-xbl-sessions 'vhMXxiKR29LKIhNU' --body '{"gameSessionId": "43K8bihdw3prp0UH", "payload": {"lWUxkBefhxRtrqbv": {}, "56oqwnCLVc2qHZuu": {}, "edbBOd19DqZJRYV1": {}}, "scid": "oqNLmPAUIMwa2wYq", "sessionTemplateName": "6DsUq38bYvaWLoKz"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'HnngdfFnOfY9stXH' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities '6LYXXMndxBPKmHVB' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '7cNzHhvxc4xAPZ86' --body '{"grantDays": 99, "itemId": "KUYMimVLzAP6aOzs", "language": "TqEFXUhGAwpYq1Uq", "reason": "ZydOB0MThZW6LwcA", "region": "g57BYBVCbi0ifdPy", "source": "Kf3SwHekWIz4rXlH"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id '5jw99HxCjXWcaXBc' 'fXXeV7BXefsSgZxS' --login_with_auth "Bearer foo"
platform-get-user-subscription 'YnVwXqF6K0WA76Kl' '2mHHoz6qBQnEDgX4' --login_with_auth "Bearer foo"
platform-delete-user-subscription '9n1xTDFcmOm1sqdI' 'WU6ERylESgf5dXMr' --login_with_auth "Bearer foo"
platform-cancel-subscription 'PoYSohfrLyXMSrC6' '2xYtDwflNGfufW5c' --body '{"immediate": true, "reason": "eg6eSCypsceITTkJ"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'GGCVF6LrILDLviUC' 'zmDAaW5xz1c7ZuZX' --body '{"grantDays": 96, "reason": "ayPFcyUnKXA3mcyM"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'mX6WF8jtNAVOYqSH' '533YlJ93CCGBXv4f' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'P4VPzhcH4UJrrCKv' 'rOAi7lMgkVWJYzSC' --body '{"additionalData": {"cardSummary": "IDxWUxgOzeRNHIqK"}, "authorisedTime": "1990-12-03T00:00:00Z", "chargebackReversedTime": "1990-06-20T00:00:00Z", "chargebackTime": "1976-11-30T00:00:00Z", "chargedTime": "1980-04-10T00:00:00Z", "createdTime": "1993-09-14T00:00:00Z", "currency": {"currencyCode": "1fHUyirMVMOFES2J", "currencySymbol": "2OzNlJE3uqZz574g", "currencyType": "REAL", "decimals": 67, "namespace": "cA0PwZxTIZVSGQyT"}, "customParameters": {"zhs9Asy4d629N4Yn": {}, "olVWA2dWxBs056jk": {}, "PCUuE1pgdHvlQKiR": {}}, "extOrderNo": "7SDQUDavOlKT5EIH", "extTxId": "NhJQq94Re5IM1akN", "extUserId": "Kz9IltQUku3n32at", "issuedAt": "1985-07-03T00:00:00Z", "metadata": {"0QPQPEp5UtwUWGt6": "tooHP5kAww01zalT", "ddhAQ1pwqnybvUIf": "uulmeegRwPPbn7lt", "td21cS6IVE4fzwG3": "BHaRcZ8NK4gkLmvE"}, "namespace": "OaRcqTgF0xtQAXoD", "nonceStr": "oFkmA3fgzcwdgJMj", "paymentMethod": "IyGfiNBQy41M1gzG", "paymentMethodFee": 59, "paymentOrderNo": "St4v8ry8IyqNVv0K", "paymentProvider": "STRIPE", "paymentProviderFee": 79, "paymentStationUrl": "XJTMx3Y8Um1iqehO", "price": 4, "refundedTime": "1972-02-22T00:00:00Z", "salesTax": 23, "sandbox": false, "sku": "ENQopeHD6iKBGm5C", "status": "CHARGEBACK", "statusReason": "LfPngD83roOeqE7f", "subscriptionId": "cCAeExeQX43LpmdM", "subtotalPrice": 16, "targetNamespace": "35BWDoc3qNcQFFyH", "targetUserId": "v141NPqjRUMKSQjF", "tax": 6, "totalPrice": 87, "totalTax": 19, "txEndTime": "1998-05-11T00:00:00Z", "type": "sEHvSxjWoM1rNJLM", "userId": "0OOVG5cG6XxENbWq", "vat": 23}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'L0PJcZQaCeNLYxMI' 'D9pqZ5rryiMMt6fQ' --body '{"count": 40, "orderNo": "Inos5RK100yH89i8"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'ZDPXRL8cbTAntB1S' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'Taab1UeibXg7RCe5' 'BtKcwj6PqqOgCimr' --body '{"allowOverdraft": true, "amount": 88, "balanceOrigin": "System", "reason": "NBBkrXu9czsYr3cF"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'eVw70xdNTuOdLKK0' 'M2B2hbqJin37P69t' --login_with_auth "Bearer foo"
platform-credit-user-wallet '1KqeGz7qbPnXEuOz' 'zkoBmMR9C4qPqJrA' --body '{"amount": 7, "expireAt": "1980-03-02T00:00:00Z", "origin": "GooglePlay", "reason": "1HIk7vCEq7FQ2S5V", "source": "DLC"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'COguSq2A4R3wDdSk' 'NfHJtA3QiX9Zvtyd' --body '{"amount": 2, "walletPlatform": "Epic"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'I1SjkH42LtyZKrTJ' --body '{"displayOrder": 30, "localizations": {"2Ps3IVT5hUZ3cnDq": {"description": "0ddZG0EpfGAqHKcS", "localExt": {"xUc2YgRpk2IFGIgI": {}, "pscUpVAciu2XPPUx": {}, "zXHUvxhvTZcvRKoa": {}}, "longDescription": "M4ozSAg8FTLrByWO", "title": "JhbocoGlPzdfxcC3"}, "rpWhSpq0InxMLpP7": {"description": "n7M3JXjEvsj5WcQ9", "localExt": {"9M1yuXeqV31LX2eh": {}, "cMnM6QtjzQjDlUMC": {}, "GnxZwak7KHnzGASm": {}}, "longDescription": "VzePIroz41oQCuXe", "title": "TRyJQrNLTcqLVTN5"}, "Qf4tjPGpu27yxb1o": {"description": "f79zVTWIfgdNphqe", "localExt": {"9fS1m77MAg4KoZQP": {}, "LhDSJx9jzxaRKph4": {}, "kiIFgS4fLqlrKGiS": {}}, "longDescription": "3XxjkyNfj3XgTRTj", "title": "I9oNBzgQ4CRwg0sK"}}, "name": "VeSpMny0GrvKI5EV"}' --login_with_auth "Bearer foo"
platform-get-view 'B9ZFzLNsjdCFtKY0' --login_with_auth "Bearer foo"
platform-update-view 'KsxR0rCFkyiQZfMn' 'TbKdwNhiIP7dpJ8B' --body '{"displayOrder": 62, "localizations": {"VwFQnVco2oCn1KvJ": {"description": "mbjapW9UlEqtzDd7", "localExt": {"SgxdxB5kvtM8ah9b": {}, "PsksceGUEX8ERZcK": {}, "SYLo6y7yJMowQ6Lp": {}}, "longDescription": "HCvCYTgX9JQwErzj", "title": "tuP9pUUv7qefNMFs"}, "ZAIqak1zi0JSa5cR": {"description": "n31D8ubfdXi7BycD", "localExt": {"PckeGJUgU8bD5mGF": {}, "FmKTTUxG0mpmFxxD": {}, "NXGlGJvHf558h1lt": {}}, "longDescription": "yhiSGhfqXhxBJ7zL", "title": "XioAGkWgSDdDQvpR"}, "fGe3z2rtjWpJAlKH": {"description": "F0ebxhJ1176CeD4d", "localExt": {"WCp4wqlQJcZroNQi": {}, "efBnPluOIjZyvlGD": {}, "QGv6pNNowEuVVZM2": {}}, "longDescription": "8w4mnYvvlt1es7A4", "title": "PFduN4gx0UC6eWKC"}}, "name": "FGS97Si6XyLVPrkU"}' --login_with_auth "Bearer foo"
platform-delete-view 'xyZ1OH5Nn4nMT8QO' 'yTuUSD9ImtaPAocO' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 88, "expireAt": "1995-01-17T00:00:00Z", "origin": "Nintendo", "reason": "onwz27DWfGRVhbZT", "source": "PROMOTION"}, "currencyCode": "MmYyTGO07foRZ6Fu", "userIds": ["jpIWo0qJtqp4Q6Xg", "llYsONpp6QGW56CN", "ICLgMHcP1eE6sjWQ"]}, {"creditRequest": {"amount": 17, "expireAt": "1996-05-30T00:00:00Z", "origin": "Steam", "reason": "GwQkJuy9oLFcHHcr", "source": "ACHIEVEMENT"}, "currencyCode": "twaM2IoyY1wpIdjc", "userIds": ["AtTj1IMuuhxxlulf", "mya73hX0a8Ri85PA", "9wNpmrK5Y5heA2ew"]}, {"creditRequest": {"amount": 100, "expireAt": "1991-04-20T00:00:00Z", "origin": "Epic", "reason": "FcqHxXP3kRhtrBcB", "source": "IAP"}, "currencyCode": "SryWB4yRaDxvxwaL", "userIds": ["YZWPZTgKagTzdcYc", "ko7U3gH239LhRx2L", "M8HkVOW8PnLkgqkq"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "aa2RdtVb6VgA5yFI", "request": {"allowOverdraft": false, "amount": 38, "balanceOrigin": "System", "reason": "9UyeaFi8OE7BCK4F"}, "userIds": ["eVGrl5NpUG9zblWE", "iHaUjyTHb0sSlstb", "3slUe94NxhXsVcqT"]}, {"currencyCode": "Yi1TMBMzaOrxuKvt", "request": {"allowOverdraft": true, "amount": 45, "balanceOrigin": "Other", "reason": "kiU2jXSwsBBRopVl"}, "userIds": ["38d4NZGtk6EmWxC7", "e2IoPMSQKcg0OTT9", "5M88TKhFYkA9aRND"]}, {"currencyCode": "JA0ll1RimBCiQwuy", "request": {"allowOverdraft": true, "amount": 98, "balanceOrigin": "Xbox", "reason": "ok9sNK1ORg3tChsS"}, "userIds": ["PK2QiAUhIfi17Yrk", "WHNxiaNyqBfgw58H", "3fFpaS1uq1mH3oYf"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'x0XYL0fJOPYpnPqG' 'lPnhBDOWqDU8N3Dj' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["VUt0n0jfyDbtIXIC", "LkK8ZvbnTg3znlg8", "nmzQx1RsYhcRlv16"], "apiKey": "Wwe8YK3lZFslECI9", "authoriseAsCapture": true, "blockedPaymentMethods": ["zuQcsjFehD6uTDYn", "qyNgN7GoeMsezFZs", "TBHkgcJ0DcEt23pc"], "clientKey": "i6xEljer6aGJx5OF", "dropInSettings": "p3jKEx4aSGdwTPX4", "liveEndpointUrlPrefix": "ig3NVFFkP7O3F4vs", "merchantAccount": "ohRWDyGYIVFDbTvR", "notificationHmacKey": "YfpJ4wM9WZfOOxAz", "notificationPassword": "msbhi5QJuc2SNBaO", "notificationUsername": "lXfgsgBd7MYLLoPZ", "returnUrl": "rkjRm5Ki0orhXrIS", "settings": "EaPZHLQkTHvndQsC"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "KAO2JRz3CGwtujkz", "privateKey": "xidLcAQWGVRg6DVs", "publicKey": "o5TJCSugdo4XTm8t", "returnUrl": "1YTWqItjNWXm9sra"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "eMA78YSRS2fPy5fp", "secretKey": "bbbMIu9lu18jIMBU"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "M77XmemN8LO03mnF", "clientSecret": "Sq9jJTVFoFjxZjh5", "returnUrl": "qUR1Pq4a4uaMfd0S", "webHookId": "QAfYIyzHL8jxakuV"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["u5r5B08VZxI4TU3a", "pnZXoJ4gI4EQKO8x", "C4D0FsUo3IB2kX5R"], "publishableKey": "EQZsHyXzoIXNf0Kb", "secretKey": "L9HyJttdgfLGO3um", "webhookSecret": "mpllnV6B62P1Kazg"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "73c6UpmA4ehxNIIl", "key": "crZzgameT2mLkkAM", "mchid": "jHyI0e2Axj0nZHjm", "returnUrl": "oKHJngwMe1AnQVj6"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "QQjZtkNJCnDSrsSe", "flowCompletionUrl": "y2BqOxgwCymCDYsu", "merchantId": 12, "projectId": 63, "projectSecretKey": "f3b7G5FDX4mu0qPH"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'b9Ll2EFEb8Gnsthm' --login_with_auth "Bearer foo"
platform-update-adyen-config 'Q2Y6ZGOiqrg3lpqN' --body '{"allowedPaymentMethods": ["5bOfnqJ5bzDRzbhM", "xfEDE4TrtIHyyMq7", "9EdB9MxaF8QHGM2I"], "apiKey": "uQYBO8m0HgTth479", "authoriseAsCapture": false, "blockedPaymentMethods": ["8rXqwGVIRWgTNHCk", "a3Wb5kH1BrLWUetP", "7nmESQDV3BD1nnEz"], "clientKey": "oUlUWqP4ElzL44KE", "dropInSettings": "m3uHBMCP5ckjphUR", "liveEndpointUrlPrefix": "s4ksgsKJ2R6Jacww", "merchantAccount": "u8W1zvrKMRPvwA9k", "notificationHmacKey": "6yJz03NETdywPqYe", "notificationPassword": "rrpOm4M2pM4fIfcH", "notificationUsername": "BWZM50aHbPXRns3q", "returnUrl": "wYL6LwGlZGF7XQPL", "settings": "AcIL7FvAMWqhyyNZ"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'H1CducB5y5iMdeBG' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '7REG4meKEabfVXBJ' --body '{"appId": "PIZqZC5d6JuFdcfi", "privateKey": "Nf0DOHKwxDF5GJhC", "publicKey": "jVHiCn2hTefT8gPF", "returnUrl": "J4WndMpQhcLK0WTZ"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'btmQkwC8azx3IRWm' --login_with_auth "Bearer foo"
platform-update-checkout-config 'e3C6p2r4D3NQdjrj' --body '{"publicKey": "kX3AMgK3JgZufzss", "secretKey": "A284mG7uAojLYBsx"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id '8oqMzbE0ljQaBtb4' --login_with_auth "Bearer foo"
platform-update-pay-pal-config '7V691j0FZp2vjOXp' --body '{"clientID": "txzx6kkaZYpl52sQ", "clientSecret": "R9Znp5d1eSwrG2GB", "returnUrl": "BEWrDbQ1ZzhDuLHq", "webHookId": "9LTBstguOdN0O7l3"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'GbKPHdDTQDEEE2mT' --login_with_auth "Bearer foo"
platform-update-stripe-config 'sn1NwJ71szsNmnqZ' --body '{"allowedPaymentMethodTypes": ["SWdEyOVYrTdDq7Iq", "bTVv8BLsqQW8HSrE", "m5Y7jI232Sjktiji"], "publishableKey": "NzTUe8KdizXmrmK0", "secretKey": "sCUsqxKocHomtjoU", "webhookSecret": "1kUqRedwIu1TSRr6"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'r8mzfMedpcKhvHPl' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'vYanGqEkn9OEVwLW' --body '{"appId": "GT4MXhmzvRQb7c0v", "key": "mjWq9fQqzulLGfQM", "mchid": "qSLQDlRFYMVfiAMa", "returnUrl": "6Pco7MfvikslpyL9"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'BYLVVznF6hMYfksp' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id '8VQhYSFeBOp0ilGQ' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'FwHUtZugblT3aIDK' --body '{"apiKey": "n9qJXncm5igpAewb", "flowCompletionUrl": "mnWk0E7YaPblcWEy", "merchantId": 80, "projectId": 30, "projectSecretKey": "gvs5LEZrQXzSQRWR"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 's9EGnRPgYlJElgJ8' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'kx1WEeDbql13FtQM' --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "ADYEN", "namespace": "89rnNW1Yjfn8lY4D", "region": "nYRxY8ZhHeb0CaPF", "sandboxTaxJarApiToken": "DjrSotKnpJWALpTo", "specials": ["CHECKOUT", "WXPAY", "STRIPE"], "taxJarApiToken": "YJOCViHwunQwpC2e", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'FUAHZaYSvsWiNJtq' --body '{"aggregate": "ADYEN", "namespace": "xKOrfVfBRIfkStOq", "region": "dXqhDMQ6tBLljC7g", "sandboxTaxJarApiToken": "cT3M1DArk4L80aXF", "specials": ["CHECKOUT", "XSOLLA", "WALLET"], "taxJarApiToken": "kym9KvKMHK5fbqio", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'oLZbC3UJruU4uIXB' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "ZsEYogFWiH9z4E8z", "taxJarApiToken": "maZ5cg0REtUWY4fV", "taxJarEnabled": false, "taxJarProductCodesMapping": {"dqwCWF5wmbOubTxA": "AeDCowR3MeCNL1oN", "rF3SmgudQusJLsPl": "W7ZyORFkN9EbKbTb", "rDzNgVEcw0lxRam1": "6O6v4VjJf40LjUdO"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'RELVXUFQyVlt9jmx' 'mxpfp41k1uDg59Ph' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'dUXShabwyYCxTHrD' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'el8oThvr8CUEzw4z' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'L1QeR3EYXBFpUX9y' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id '4tY7o5FFi1n10vDg' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'yoHXIlrMl2RAukCL' --login_with_auth "Bearer foo"
platform-public-bulk-get-items '26ihdMy9YCLNJEkv' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["q6SUSt8xd8EgE15X", "Nuw6Y7sToQNkuZzJ", "1XBxw01iBBQukgQ9"]}' --login_with_auth "Bearer foo"
platform-public-search-items '4ZvPCWcMX0ov3U2s' 'KjIeyFS97dYD7Lkc' --login_with_auth "Bearer foo"
platform-public-get-app 'TKYpCfl6HPy5cJfA' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'V5iOfzwt3bpxRNt6' --login_with_auth "Bearer foo"
platform-public-get-item 'lKoMjCPtEKeBWTm7' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "8Fn8TvZVTe4L2lXr", "paymentProvider": "CHECKOUT", "returnUrl": "PX6r5ZTcnVVOKMAp", "ui": "TcWsFRUlWBp4gBs9", "zipCode": "UufgsVbG6TUe3jbu"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'Q7HMPO4ozK705ykR' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'qSPYZgPm4JLsXVtB' --login_with_auth "Bearer foo"
platform-pay 'OEetHsxAJ8Ny1LRk' --body '{"token": "PU9hrl5nkpEdBe8b"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'YWdok4UnUEOyP0cP' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'CHECKOUT' 'f5OvolfI0mqZctoh' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'LheRaQkfMLFW9B7j' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'HZro4hhwnANAGp8z' 'GqNGrcQyoA1TWPcy' 'CHECKOUT' 'fBPa6GOuV5z0p8ja' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'Js2duQqawPrxi6F4' 'ALIPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'F5yLnYSa8xFLvcYe' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'xMMMiDFh5RbW021c' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'HN3QbzVuJZH3k54c' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'ExxWKtdGTW4FILot' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'v5ycTa0i6ifYP1zf' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "gjsy3VRjX4qA4g9O", "language": "VOIx-357", "region": "mV4wAsd4ifGd0bkW"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'rlhtfTywRW4fmg6b' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'tk3mAO4EtB0hn2x1' --body '{"epicGamesJwtToken": "oTOX5gBQlVDx9neF"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'HWhDRJtyYEt7ygZl' --body '{"serviceLabel": 9}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels '93551nQBNKcqCkUX' --body '{"serviceLabels": [73, 90, 20]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc '8SY3qoogOxoPYvdI' --body '{"appId": "BJYyGURjEjnslEYM", "steamId": "8ngVT1ewVxvgAocO"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'qsd5v5n7eXCo9gZW' --body '{"xstsToken": "dxfIdW8fNAM5YdHi"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'vK2Q0WwolQy037hJ' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'MOEv5W0v25yAObZI' 'brA8XAKKWMDebehS' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'jpt0wrfWPXaI1Jb7' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'o2MFOa6xgPt69QRO' 'GDeJCyHvUsnLvXCS' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'gQHvs25eiQO3oWdg' 'Xdm1IxL1OtleUBqB' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'O0Ze049k9W6ZLVJz' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'RpUsITfVruDukun4' '2zPZvOd4yZyMKyED' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id '3qDO5HXp5oVkhESb' 'HQ7hvTlzf7XwQtVI' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'YU87NgjDMcJxfMfY' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'Flt3JvDgMiyBGygW' 'FTAY3Th5mOwPCPKV' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'PlOGfFBlu2ZP0Iki' 'YXGk6BoBmSLi0R7z' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'DFMoNTQmlS8lMlY8' 'UjprhCxhzW6ZM7Lk' --body '{"options": ["TVrtVJZVhxCVdjPu", "tJ8dkAVOJ5imghdf", "Vhjnjd66A1SQmWGS"], "requestId": "QLAVPAJ7zX5lB80k", "useCount": 81}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement 'smdkBS2MaIP7Pjng' 'EFggq91cpgvoDBgY' --body '{"requestId": "fLBdGNAZEvbvxqa0", "useCount": 75}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'CII156hIg0g8HIxp' --body '{"code": "zm9AcFhH4ZlYY3rE", "language": "Gin-oK", "region": "mCQmGCF963CbsOaw"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'lRBQJH6fNekhk077' --body '{"excludeOldTransactions": false, "language": "Xn", "productId": "SfpyJkJlmJmTkFvB", "receiptData": "7wkY6nuUEGJ3k0HG", "region": "tpK43uORGREOOwTu", "transactionId": "Y8dhNCDWWpN3B6te"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'dgFUzBm5vGA3itKa' --body '{"epicGamesJwtToken": "F9z3WWuv3j8T9g1f"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '6P3D3rVcC2g6t42j' --body '{"autoAck": true, "language": "xpAC_aR", "orderId": "2zHFGbN8AQaCaw9U", "packageName": "F7cdSDd99DQZ7vnT", "productId": "x8HDXTJWiyw17ogz", "purchaseTime": 26, "purchaseToken": "aD8AqsMCGBNhmUt6", "region": "fzYRn85brTu8F7cu"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'CPh1TGZJmgWNHWnv' --body '{"currencyCode": "OBRCt4onqRo2PnMS", "price": 0.696182373819467, "productId": "arKg4coy3AFpULIn", "serviceLabel": 67}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels '1Nf2FNgDWNC6yh7k' --body '{"currencyCode": "gTHlrxKbsV4XtrI7", "price": 0.7230753155215265, "productId": "FBEgkwHifMHYI581", "serviceLabels": [64, 2, 68]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'tfBS3ZIHofhwyM6B' --body '{"appId": "w2sFGQ5DQoDwzrKP", "currencyCode": "OZZnV3zR7YxSu6ad", "language": "SP", "price": 0.20299312545217563, "productId": "hSOEozGOv8D0iVxz", "region": "rec5kNwJAxm0Rdm9", "steamId": "l6nIhG5SilDDIsmj"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 '4h625dIsMKWBxF9R' --body '{"gameId": "AIrI81ZR2kNzh60R", "language": "BoAR-Mnkz", "region": "G6AUjBCdf0Rp5e5I"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'vFuN1oUsCnBmGMx5' --body '{"currencyCode": "F6EhM3dKvIG9MR0h", "price": 0.7365063642369832, "productId": "INvq1VR9SJUfQEX9", "xstsToken": "96Mh1sQ3Dw3uyjgQ"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'NAs9188Qm3W1De2M' --login_with_auth "Bearer foo"
platform-public-create-user-order 'cGd10wefF0CJlH55' --body '{"currencyCode": "RLEgeAsSpQdcmGHZ", "discountedPrice": 43, "ext": {"kSSt3CyDgf6eFAiq": {}, "SkHi0BR2ElF6z6eJ": {}, "KuOW61akRFizqxCm": {}}, "itemId": "udSXivAL3n478mhb", "language": "jZ-ekEd_Vv", "price": 42, "quantity": 36, "region": "yIagSSzEL8H4euLu", "returnUrl": "fhQj2KP3LLxl9Hs2", "sectionId": "L2wlpKBVURxHefz7"}' --login_with_auth "Bearer foo"
platform-public-get-user-order '7a9fntCNiHBRUNCP' 'Sre5GmZzCQwilS3I' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'xSjlyvR9PxG9Lji2' 'Vc88W8aLjIxVGpdO' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'qguxvRwI9ZBTipMR' 'lhK9DMMaI4ryVDvN' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'aruZxwTfh9gEs6GF' '247cbBLjUr5z03wx' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'B3E9hrE9f9COFrOr' --login_with_auth "Bearer foo"
platform-public-delete-payment-account '6wJDBwIDsJHNg6Tv' 'paypal' 'GjwI4TbTwBufUorJ' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'ouduhCEJ5XiKDIE9' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'YugcupLxVBcRkfhR' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'uqkOTHSia7oFd1fE' --body '{"currencyCode": "mDuyAsQGzwJR5poI", "itemId": "718RQnj4imu6XFfR", "language": "ye", "region": "yTTZG1LxLdySvyVq", "returnUrl": "Y8nxBZbHcPHEFuEV", "source": "P9bF07gnWDULkJPQ"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'R0UJMr8ouccGH0B4' 'LCe2h0iFCCZgFWs5' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 's0nT89A88GDOUClG' 'yzYgnYTdim6PkRoq' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account '5TO65KWh8ztRJkXx' 'UAj3jzZvEaY103YU' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'IMuSjDHz0zPWMZQN' 'NP2JqQqhISTBT1Go' --body '{"immediate": false, "reason": "PjUIosq1l6xo0D4J"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'RbNqO6IuP2PY5hhX' '6uNah9JoHPj7jFWx' --login_with_auth "Bearer foo"
platform-public-list-views 'Sv1lYylYAiZ8c7Zd' --login_with_auth "Bearer foo"
platform-public-get-wallet '7EUoezOLw8C1c5bB' 'B3XZ7ColKwlsNvtF' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'uunQsvdXGlD40xxI' 'yVwYjn6dlC9Kfh9g' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'Huloyce0cLJu4ljP' --body '{"itemIds": ["WlCWTuGO8MnfOQu3", "wdT4Aodp95o1RkX7", "iW7VpCngWAv5DAG8"]}' --login_with_auth "Bearer foo"
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
echo "1..397"

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

#- 3 TestFulfillmentScriptEval
$PYTHON -m $MODULE 'platform-test-fulfillment-script-eval' \
    --body '{"context": {"item": {"appId": "dPdkKgQqjyzUZR2r", "appType": "GAME", "baseAppId": "AuALNhNCyscsMBRL", "boothName": "sWadk2OQ421q7Nb1", "boundItemIds": ["vrKthVvU5on065Ap", "CkVN3QchuQ6pntxB", "648ss7rBnvQHAM8g"], "categoryPath": "SdIybKUByHBzfvgt", "clazz": "RTPPzwJmKaLCx3gc", "createdAt": "1975-01-23T00:00:00Z", "description": "dEALWe6RG5wWznu5", "displayOrder": 54, "entitlementType": "CONSUMABLE", "ext": {"b7jyfL3zMkklGCPI": {}, "SlsnVA6z0uSfNNpJ": {}, "UYzJxnOyvqmswrTo": {}}, "features": ["yBIQumxDfAxNqCUt", "izYM97ebZcYqwfIH", "PWMkOmrT5HL16jMw"], "fresh": true, "images": [{"as": "PlPgJcLbeQf9MICx", "caption": "X7xKyCfgwSPz14as", "height": 50, "imageUrl": "zOlZg30pagfP0FfO", "smallImageUrl": "MBOpeQT4zYIbU4i9", "width": 26}, {"as": "FH71VrhsISYtegQb", "caption": "NA2WQrHTkJT1VkCh", "height": 59, "imageUrl": "vXaG9LzHpMS53jll", "smallImageUrl": "opwirRo3A8WxnR0Y", "width": 0}, {"as": "LMehg047axU5ktNy", "caption": "wRIvO2Sgz30hejqd", "height": 20, "imageUrl": "IggmhfAzVdNYP7Ao", "smallImageUrl": "1z7FeJM2fWXGk7JO", "width": 2}], "itemId": "a1tUlFGcP6eL7EpW", "itemIds": ["tPifmO0JK4dP1aZF", "iSkmhwVVMGkXNwMY", "wFyljy5bYQdQ87hU"], "itemQty": {"HA0FJZwP8GslMpx3": 26, "MbhxkQdezbmf392e": 35, "oqT3adB48Jxp2zaI": 39}, "itemType": "COINS", "language": "g9jTNZvpFEUI21aS", "listable": false, "localExt": {"wSDHnyabk493I3pv": {}, "HKDaWhTN1qyxpUzW": {}, "IZWJTDzWguhujw1E": {}}, "longDescription": "oR58uCVldefonHJZ", "lootBoxConfig": {"rewardCount": 54, "rewards": [{"lootBoxItems": [{"count": 78, "duration": 16, "endDate": "1991-08-17T00:00:00Z", "itemId": "4abmqqi90KTWwZk0", "itemSku": "HGeJNaBjVdMB5kMz", "itemType": "KycYrhr4FnNzdT4p"}, {"count": 100, "duration": 26, "endDate": "1982-02-14T00:00:00Z", "itemId": "IVXp9avUr6IydpXW", "itemSku": "0MO0eT9okl6MlWOl", "itemType": "9feWO2bmOikTBJHT"}, {"count": 62, "duration": 14, "endDate": "1977-08-07T00:00:00Z", "itemId": "5PSeyod5L6OooYoQ", "itemSku": "n9iHEqWO1cVCUIOx", "itemType": "90FQdwLi3GOQkLtp"}], "name": "uRNeT1CULEMPaOU5", "odds": 0.2108094996178882, "type": "REWARD", "weight": 21}, {"lootBoxItems": [{"count": 92, "duration": 50, "endDate": "1974-01-18T00:00:00Z", "itemId": "lAJGyZS0I8FevJiT", "itemSku": "98HUBp56Q4WETxtG", "itemType": "Ms5tPKPuK0K4PiMD"}, {"count": 93, "duration": 44, "endDate": "1993-05-22T00:00:00Z", "itemId": "7LxihuOn57io0d9d", "itemSku": "G3yzaNbGeASX83SL", "itemType": "iIbAP2qyUnHnfrEd"}, {"count": 61, "duration": 82, "endDate": "1973-03-18T00:00:00Z", "itemId": "Y4TTxu8goZgsX4Rw", "itemSku": "fM4qnUdcQqZ9F1ui", "itemType": "vPob0YZEuXQACDDQ"}], "name": "ryNf9VGxbOeJe4n9", "odds": 0.07149849104073869, "type": "REWARD_GROUP", "weight": 10}, {"lootBoxItems": [{"count": 23, "duration": 40, "endDate": "1985-03-05T00:00:00Z", "itemId": "QZ2UGePWXbAyGiXa", "itemSku": "9nUsHCVicuJ7onrU", "itemType": "XVlB6xNel4Bxb9Kw"}, {"count": 65, "duration": 69, "endDate": "1997-02-04T00:00:00Z", "itemId": "qdhEVq3hbsApeASf", "itemSku": "R0ljKxqZcLuhwNDv", "itemType": "Valv3bkoMXNzl1yw"}, {"count": 63, "duration": 66, "endDate": "1992-03-07T00:00:00Z", "itemId": "tZU5SuIhMSaDRp17", "itemSku": "dUWHcjrb6qNeKpOx", "itemType": "PrlG9svdqsiVTqPb"}], "name": "zY1yxl7zeEpmSPO6", "odds": 0.5928162927324251, "type": "REWARD", "weight": 58}], "rollFunction": "CUSTOM"}, "maxCount": 6, "maxCountPerUser": 72, "name": "jaJuUzFIeqaVr1CE", "namespace": "1gu6cYuzC77J4irv", "optionBoxConfig": {"boxItems": [{"count": 37, "duration": 28, "endDate": "1981-10-25T00:00:00Z", "itemId": "ktWLtDdlmVGK6iol", "itemSku": "Ew6IIpDc9X5ijmtD", "itemType": "Gvd9ESdY0eTkBWA4"}, {"count": 7, "duration": 87, "endDate": "1979-11-14T00:00:00Z", "itemId": "si5yOjvl5sRN2ENn", "itemSku": "1RLi5iMPnbg7o1zY", "itemType": "pqUsliPyXZGYIW5Z"}, {"count": 61, "duration": 30, "endDate": "1980-12-29T00:00:00Z", "itemId": "WbdkzPP47RcUIi2C", "itemSku": "oNj4EG2emxKQk8cB", "itemType": "rt5E8k8rzDZ08j6I"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 43, "comparison": "excludes", "name": "gNCDd6jW6fjtBcO3", "predicateType": "EntitlementPredicate", "value": "85MxWxvW0veFl3uU", "values": ["1aMD0mczWxc8f1s2", "QPMMZsf2dvKZyHCh", "RPHvdkcKW21B5EFt"]}, {"anyOf": 60, "comparison": "isLessThanOrEqual", "name": "2pYaKTz1gcE2XCwT", "predicateType": "EntitlementPredicate", "value": "xc42HKv5wvtPJVsu", "values": ["GIQ1ZxVIefYlKBJy", "THoSVxgQCbpZx5yM", "zaBciSxwzuIpGBYH"]}, {"anyOf": 87, "comparison": "isGreaterThanOrEqual", "name": "7yPgG48bk6PwH1td", "predicateType": "SeasonPassPredicate", "value": "I6T0hvcAFTaSWR4V", "values": ["OGIY7hM6uhonkAe0", "w3nBTVmBFZ6TIs9b", "FdTSSEluBxM47BTw"]}]}, {"operator": "and", "predicates": [{"anyOf": 84, "comparison": "isGreaterThan", "name": "kEfkAcJTMS4pVRcC", "predicateType": "SeasonTierPredicate", "value": "FeExlOFjRh8mLFTJ", "values": ["vb7JcGUFgp6LkyXp", "Wia7yJ2d87XjA0aj", "LveQSDWnMQGaYRxF"]}, {"anyOf": 48, "comparison": "is", "name": "JeFxhgTwyO51CUpc", "predicateType": "EntitlementPredicate", "value": "W5fkl60ImLBv6nUU", "values": ["stwQFUEbTPQ8p7VM", "0r1rfX9stpvJUuyP", "dzx8BM2wEgTtLRT5"]}, {"anyOf": 22, "comparison": "isGreaterThan", "name": "xEXnqHwMyKpwphjU", "predicateType": "SeasonTierPredicate", "value": "vM1GqMkZ44UXgdBq", "values": ["tJaRyDlP9qIZJ5Kr", "x6KkHagEugKJxkU8", "Y58COtTNjnNSikJD"]}]}, {"operator": "and", "predicates": [{"anyOf": 71, "comparison": "isLessThan", "name": "1k4Gr7jVVx5l3yrH", "predicateType": "EntitlementPredicate", "value": "HR4reG0HwUXxQTf5", "values": ["WiCpVBwvAffJ3btt", "4qUiTkFcLBrg2JB0", "YpDUGYsJBEkYUrLv"]}, {"anyOf": 86, "comparison": "isLessThanOrEqual", "name": "pQY3Pnnic80yEO8d", "predicateType": "SeasonTierPredicate", "value": "leuV271bwZ4niLSz", "values": ["SYo9fY2EBZAHQXc4", "Xcae7VKl0ARzGEAr", "Qnv0C00dtNGGzbGY"]}, {"anyOf": 22, "comparison": "excludes", "name": "fE1NSmtcADoZvd0L", "predicateType": "EntitlementPredicate", "value": "w7C9Bx1LQOTCbAPL", "values": ["C3iqrkyJFOVaewFc", "v9h31YxuZnoSesWp", "LUHjGaIcZN28gH4C"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 57, "fixedTrialCycles": 42, "graceDays": 47}, "region": "ZK5GJlBncg8tQnJO", "regionData": [{"currencyCode": "KHC16xjJZ4kiU3N8", "currencyNamespace": "556ll2LQWpdESOBV", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1973-10-22T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1980-05-08T00:00:00Z", "discountedPrice": 13, "expireAt": "1971-05-11T00:00:00Z", "price": 46, "purchaseAt": "1992-02-28T00:00:00Z", "trialPrice": 45}, {"currencyCode": "sana0uXG7GUTV1Bw", "currencyNamespace": "gkLDj4pjVktyoNSs", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1976-07-31T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1983-06-10T00:00:00Z", "discountedPrice": 8, "expireAt": "1986-09-07T00:00:00Z", "price": 91, "purchaseAt": "1981-01-01T00:00:00Z", "trialPrice": 96}, {"currencyCode": "rkhltUxgbN5eElQN", "currencyNamespace": "ESFLD8hCc9onSNjb", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1979-09-13T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1987-12-22T00:00:00Z", "discountedPrice": 47, "expireAt": "1977-08-29T00:00:00Z", "price": 85, "purchaseAt": "1987-10-08T00:00:00Z", "trialPrice": 25}], "saleConfig": {"currencyCode": "kz4kvEv6tNjGRhrm", "price": 89}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "GeIKGlCJmDXpjyvL", "stackable": false, "status": "ACTIVE", "tags": ["uS0OG7ohiL2943Cl", "B1y3klHuAGnidOyG", "rNhEdxd24ZKfvMf1"], "targetCurrencyCode": "T5FzYMf1jaCgZosn", "targetItemId": "tPzP1vXXB92q150W", "targetNamespace": "EIetOXMt37MXy7Fp", "thumbnailUrl": "7lUfQqXrqGadwvKl", "title": "JFX1ZHV9yo9Ur1hf", "updatedAt": "1974-04-10T00:00:00Z", "useCount": 66}, "namespace": "NgJTxjtzgO7W3taR", "order": {"currency": {"currencyCode": "vJ6lKWJwHO65aOFD", "currencySymbol": "wpqy7XOU3DwglyMG", "currencyType": "REAL", "decimals": 23, "namespace": "gHtB9uTCiiIoMZCj"}, "ext": {"GiOZJpUf9RpcfEQn": {}, "0O6D8PGQuazAypgW": {}, "hTED5YmPTBUkm2Fy": {}}, "free": true}, "source": "ACHIEVEMENT"}, "script": "dguCYVqFyIKh1YtT", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    '4AejyQc5Dac7hSLl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'dWx5DyniVESUgrRO' \
    --body '{"grantDays": "rP1ip3jNG68DByf2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'UMPtigq9zOQOcAqB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'j0bXhOr9OHt6zx1i' \
    --body '{"grantDays": "2W3GY7tdh8hHlQyM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
$PYTHON -m $MODULE 'platform-list-item-type-configs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
$PYTHON -m $MODULE 'platform-create-item-type-config' \
    --body '{"clazz": "lgfkTsAThLyflAqq", "dryRun": true, "fulfillmentUrl": "mb1C9Al7eWrbNRE0", "itemType": "INGAMEITEM", "purchaseConditionUrl": "OywOxI4G6jZzoYIF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'LOOTBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'RJCUJpscOTkWETSJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    '04c5MGInO4yznh2Y' \
    --body '{"clazz": "pZvvmziSSiSpXeWO", "dryRun": false, "fulfillmentUrl": "ayfRkQvoN06SpNOn", "purchaseConditionUrl": "uSksfm7hcIFdkdrw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'AcK2lUda9h9Fgvfh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
$PYTHON -m $MODULE 'platform-query-campaigns' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
$PYTHON -m $MODULE 'platform-create-campaign' \
    --body '{"description": "iLEAkA7n6516ydoR", "items": [{"extraSubscriptionDays": 93, "itemId": "WIRpgjooaBVemsbk", "itemName": "aXZQ6nTj9rZpkSnt", "quantity": 41}, {"extraSubscriptionDays": 98, "itemId": "OeaPAyPeEGBepK1I", "itemName": "x4SwjCYjCHniVSn1", "quantity": 12}, {"extraSubscriptionDays": 97, "itemId": "YGal5NrBtT0om9Ol", "itemName": "GzpF25qu98RhktX6", "quantity": 33}], "maxRedeemCountPerCampaignPerUser": 78, "maxRedeemCountPerCode": 46, "maxRedeemCountPerCodePerUser": 16, "maxSaleCount": 20, "name": "vWqHHGlnAnEu6EKY", "redeemEnd": "1972-04-03T00:00:00Z", "redeemStart": "1973-02-22T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["0kxzFMq9ttbEHAEV", "7C65Ans9SquNSJIa", "y5VdUdYy9Y9OCSmm"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    '3WKijbqhT3uyQRXv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'vcUYDeWPZ8yhwQ0g' \
    --body '{"description": "Idj1lTJdNLmAvEdE", "items": [{"extraSubscriptionDays": 55, "itemId": "m6lQ5Ao8TITYiHSR", "itemName": "2SEJh1YDedZdNqkX", "quantity": 85}, {"extraSubscriptionDays": 99, "itemId": "WZfT8ZfdKp9q4nXu", "itemName": "K0tJAYror2XdtSCG", "quantity": 36}, {"extraSubscriptionDays": 97, "itemId": "ExOoIpWzacOvwUsn", "itemName": "IbQM3ZAtyEWKWoZR", "quantity": 95}], "maxRedeemCountPerCampaignPerUser": 2, "maxRedeemCountPerCode": 77, "maxRedeemCountPerCodePerUser": 28, "maxSaleCount": 5, "name": "wS3HaMTXAX6y0STT", "redeemEnd": "1991-11-14T00:00:00Z", "redeemStart": "1999-03-07T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["BEijjjpvSzGkED0o", "weFYDBPyd1jJBxbr", "buFay9PXgEQS4871"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'QSmsspn5sNfifK65' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
$PYTHON -m $MODULE 'platform-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
$PYTHON -m $MODULE 'platform-create-category' \
    'tvaH9jwcO48pthyY' \
    --body '{"categoryPath": "pBJDHIIxTIGI5Ess", "localizationDisplayNames": {"YllIqjJzuQ8GglVg": "xjOGQGlHm8VTN56t", "JKwD8O07L9GG1uen": "DihceaLdgPZI0fKW", "8LeQxItaK6s3Hha6": "9MgxjGJx62mkfVlu"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
$PYTHON -m $MODULE 'platform-list-categories-basic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
$PYTHON -m $MODULE 'platform-get-category' \
    '4bGB1pyk0PpxXZDy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '5Pmbu7RrD9a5mdlX' \
    'TCL467xHbAiD3Pr3' \
    --body '{"localizationDisplayNames": {"mXZO1PnbSlfVRlAI": "8F2f3mEv09kAA5hn", "Qtd4bcivHGIEplRp": "cHDWcIoJ45L0Ze3Y", "amxKDSZTl4UiJSCb": "G4UmG3TkMTzOcBIc"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'iiKwRs1E7sH2G9MJ' \
    '6F7Rr7O15jqeKssQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'pme6eyM48tE7eJRs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'XNeveQXqnFRYmEIX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    '40XOUoLOa7oDz00g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'xcoaH6u9TVf4DvEz' \
    --body '{"quantity": 31}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    'GDgiVsV2OttwJaMx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'PDIJ5hFQHumFvPKq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'upHj72TlLs964iAB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'OgTKtnaA7O35Iayt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'd9CsAMTZC37xPXxn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'fggnZ3EZp6wSAufw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'Yirs9lwvPKd925u3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'EnableCode' test.out

#- 36 GetServicePluginConfig
$PYTHON -m $MODULE 'platform-get-service-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetServicePluginConfig' test.out

#- 37 UpdateServicePluginConfig
$PYTHON -m $MODULE 'platform-update-service-plugin-config' \
    --body '{"grpcServerAddress": "fFLV0YeMrVaYSTRY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdateServicePluginConfig' test.out

#- 38 DeleteServicePluginConfig
$PYTHON -m $MODULE 'platform-delete-service-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteServicePluginConfig' test.out

#- 39 ListCurrencies
$PYTHON -m $MODULE 'platform-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'ListCurrencies' test.out

#- 40 CreateCurrency
$PYTHON -m $MODULE 'platform-create-currency' \
    --body '{"currencyCode": "GFzgLZ7gEypQf2Pn", "currencySymbol": "9A4gcbDJ0LmdnOPk", "currencyType": "VIRTUAL", "decimals": 93, "localizationDescriptions": {"i5JmzvM6JFKB8ikH": "pl3sNRaDEC2OkXA3", "WqypoOw0H2s0sibQ": "NBz81zRPntxpgi7t", "XIcNEcGJjOCXpuix": "5vnPeTu9evbRov7B"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'm40CtZiAxk43DGV1' \
    --body '{"localizationDescriptions": {"SCkw8U0d4FvVmPMt": "pRMWSQ8Szi1IrGid", "RmR5BGRJhFwxmkGf": "PI3j4luXQuuLtYa8", "6kvL6cBZQssUUXOs": "XMNdvW1hbvGenRbm"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    '3QtsY5WaKM5YY6pY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'rmeMIHLS8egV8Xhg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'Djbrum8UxcutmVg8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'GetCurrencySummary' test.out

#- 45 GetDLCItemConfig
$PYTHON -m $MODULE 'platform-get-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetDLCItemConfig' test.out

#- 46 UpdateDLCItemConfig
$PYTHON -m $MODULE 'platform-update-dlc-item-config' \
    --body '{"data": [{"id": "APWKxoj6MF68VuKD", "rewards": [{"currency": {"currencyCode": "oklYmkytCAH8Jiqe", "namespace": "7gfV1G6bYgIbVKp4"}, "item": {"itemId": "Kgew2mHDksA6Mv9N", "itemSku": "zs19eBq9a1L8S1yd", "itemType": "uOwscICro6P8FWIP"}, "quantity": 9, "type": "CURRENCY"}, {"currency": {"currencyCode": "qaBeD2uBAvIXEc2C", "namespace": "CgYcFo9A93o22UgO"}, "item": {"itemId": "bCOiBWdw2b031dm4", "itemSku": "N41MOpmm04BlZUAl", "itemType": "YnCT11qD03er5mdr"}, "quantity": 1, "type": "ITEM"}, {"currency": {"currencyCode": "K47FdxXisVlo3aVO", "namespace": "GARFDJcGWy826ilC"}, "item": {"itemId": "xAxQUM5DyrPfBmpZ", "itemSku": "IzSFUZqVR5FWGfH6", "itemType": "6eFCMTsLA8vYVvrI"}, "quantity": 53, "type": "ITEM"}]}, {"id": "EehUV0jsjAyVgxS5", "rewards": [{"currency": {"currencyCode": "4NNs3XdhMbQX9D1z", "namespace": "nEWw9p7g4UsQCTKD"}, "item": {"itemId": "h5n9yc34xF8qFllM", "itemSku": "1LTrl4MP3Nl4T3uj", "itemType": "vV7W6ADLtn7oInn1"}, "quantity": 56, "type": "CURRENCY"}, {"currency": {"currencyCode": "z3wM3BI51etn17Oc", "namespace": "mSVHZ6wtPVAwgvxY"}, "item": {"itemId": "xXJTduZp1nNYHREm", "itemSku": "m1cBuaRaGeM8yxRf", "itemType": "ejqSbVgLd1FoyNFG"}, "quantity": 31, "type": "ITEM"}, {"currency": {"currencyCode": "sjroKHPApA8GsGwy", "namespace": "ocvY9NePjLJQJXwU"}, "item": {"itemId": "ApJWohXn01RB7pu7", "itemSku": "BaONXyE5fIDbsMi4", "itemType": "8xOYVvEcEm53BYMB"}, "quantity": 1, "type": "ITEM"}]}, {"id": "cQBIuDVs7U0AJtWP", "rewards": [{"currency": {"currencyCode": "RteszMTd0R5Fsrf9", "namespace": "xbVfgvG617GmxzCl"}, "item": {"itemId": "kR3M6Twpwq3nLwxn", "itemSku": "JKjOo9fvfXF1Vsik", "itemType": "D3IphQQiRcOtsthU"}, "quantity": 46, "type": "CURRENCY"}, {"currency": {"currencyCode": "ng1D57FjYKlJiRIv", "namespace": "hej77OSPwdzMSmrS"}, "item": {"itemId": "vQdsAdTUGpd8KFrX", "itemSku": "KFA2gdjQCYoE8b0C", "itemType": "ZetLfpFNyp7375rh"}, "quantity": 83, "type": "CURRENCY"}, {"currency": {"currencyCode": "PKXjShM2DvesmMIb", "namespace": "iQfaHxl2YUNRLRjg"}, "item": {"itemId": "KqSSYgZnVfa8govt", "itemSku": "tlpFAq8oebnS4Y2z", "itemType": "kGYTr9yJIveX52r6"}, "quantity": 71, "type": "CURRENCY"}]}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UpdateDLCItemConfig' test.out

#- 47 DeleteDLCItemConfig
$PYTHON -m $MODULE 'platform-delete-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteDLCItemConfig' test.out

#- 48 GetPlatformDLCConfig
$PYTHON -m $MODULE 'platform-get-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetPlatformDLCConfig' test.out

#- 49 UpdatePlatformDLCConfig
$PYTHON -m $MODULE 'platform-update-platform-dlc-config' \
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"fB5ZwV25N7NAvZdG": "uyYEYZE3KaGSdhEG", "Kcp6g1A8O9N9cbYB": "K6XOBDpR7SH93AE1", "Toj5vygVvLSJvdsG": "pmmUeMikW3s54zff"}}, {"platform": "XBOX", "platformDlcIdMap": {"0O4rEZTbFDj2L2Mc": "vCrrR7h9uKLXDaRf", "3pxKtJbRY5luCwKr": "t6wn3yVrRCh6j7rp", "v8K8fBAeRa1R6ksx": "LYGkOLgReff5IHxL"}}, {"platform": "PSN", "platformDlcIdMap": {"emNHbzgAFjtjC7su": "vgIUkB2PAGJqOrkd", "lZB246OY0dPVMd2W": "DUVEQTpfyAIoF7qs", "ANBbEKQrgocpjGNe": "nRlDORLvP7ynTuXz"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdatePlatformDLCConfig' test.out

#- 50 DeletePlatformDLCConfig
$PYTHON -m $MODULE 'platform-delete-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeletePlatformDLCConfig' test.out

#- 51 QueryEntitlements
$PYTHON -m $MODULE 'platform-query-entitlements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 QueryEntitlements1
$PYTHON -m $MODULE 'platform-query-entitlements-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'QueryEntitlements1' test.out

#- 53 GrantEntitlements
$PYTHON -m $MODULE 'platform-grant-entitlements' \
    --body '{"entitlementGrantList": [{"endDate": "1971-09-05T00:00:00Z", "grantedCode": "fCqlMrrVIehVCf3A", "itemId": "wIzUdQ6sTrUg7Z0S", "itemNamespace": "LrZraV3NLBUSrFnz", "language": "RYa-wJDS_968", "quantity": 31, "region": "VrZRrOntm2KjbfCO", "source": "PURCHASE", "startDate": "1989-12-21T00:00:00Z", "storeId": "3dBmFwUO7Y0xhMLw"}, {"endDate": "1983-01-29T00:00:00Z", "grantedCode": "gRpTSUppvO3QG68K", "itemId": "eD7QJQEEVDAg045B", "itemNamespace": "vtPd7ibBA3sd51mD", "language": "aO-RBEQ", "quantity": 13, "region": "Qcrtt8L5dIebsw7E", "source": "IAP", "startDate": "1980-03-26T00:00:00Z", "storeId": "01gzH17IcfJyGulm"}, {"endDate": "1985-05-20T00:00:00Z", "grantedCode": "yN5rcDA3Wcv9ouAL", "itemId": "jgLZZzLU9w8MJRIz", "itemNamespace": "IgJKg9y86BgnBQtm", "language": "bXI_209", "quantity": 95, "region": "VJtE2dAeC7pF73y9", "source": "GIFT", "startDate": "1984-05-06T00:00:00Z", "storeId": "LKWinUJ7bAuUJ7Fx"}], "userIds": ["Fl3ZhSMLtrwnjTJV", "NCKWNkLU5ty3uQa7", "g5LijlQTVq8Bh1p0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GrantEntitlements' test.out

#- 54 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["Dlh112byTYCDBnAv", "f8JpFuJSZistM755", "44PDlVK8taScpV0N"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'RevokeEntitlements' test.out

#- 55 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'tCxDDz5rxt6LflBJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetEntitlement' test.out

#- 56 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'QueryFulfillmentHistories' test.out

#- 57 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetAppleIAPConfig' test.out

#- 58 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    --body '{"bundleId": "jokLAaL4oAF2lqx8", "password": "yneWKrOy4xcg30Bq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'UpdateAppleIAPConfig' test.out

#- 59 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'DeleteAppleIAPConfig' test.out

#- 60 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetEpicGamesIAPConfig' test.out

#- 61 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    --body '{"sandboxId": "C5W7g7hiwumJTI3j"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'UpdateEpicGamesIAPConfig' test.out

#- 62 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'DeleteEpicGamesIAPConfig' test.out

#- 63 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetGoogleIAPConfig' test.out

#- 64 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    --body '{"applicationName": "lZPjoCdGiIP6cB3P", "serviceAccountId": "j63MJXIuLWYb2iHH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'UpdateGoogleIAPConfig' test.out

#- 65 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'DeleteGoogleIAPConfig' test.out

#- 66 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'UpdateGoogleP12File' test.out

#- 67 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetIAPItemConfig' test.out

#- 68 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    --body '{"data": [{"itemIdentity": "VN0ZBgvrigXUT4fR", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Soi2X9SygvMG8QAa": "WUhIguMvKDOrx0wQ", "XKEroyKz2reP63EV": "HT72VuhoGP2IFXGU", "5hujEfCMt95DEjxq": "hgYqmMqIdlRrQmuI"}}, {"itemIdentity": "LkeRUafUDP5b6BWf", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"I8ecZSvzXYOytshB": "cKQytQagui6lsKF2", "8n7UC7y1MKYVeoGF": "rDb8unXv1iE7YgEZ", "spOJ0NiZl6OVLxKt": "kBpaCG8Nu5m4ctwU"}}, {"itemIdentity": "NV8ncebaJ0DCuIeE", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"aPyppR3ztPSALA8L": "lV2sccbVr6HSiXVz", "rG4EdKn8eypTzI49": "7DG0ZNoJvvi4Ys50", "iE7IjZoDzMmMgoMx": "ZZ9AutWDfVOINhql"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'UpdateIAPItemConfig' test.out

#- 69 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteIAPItemConfig' test.out

#- 70 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'GetPlayStationIAPConfig' test.out

#- 71 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    --body '{"environment": "9CdDX4xiHpdfKH35"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'UpdatePlaystationIAPConfig' test.out

#- 72 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'DeletePlaystationIAPConfig' test.out

#- 73 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetSteamIAPConfig' test.out

#- 74 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"appId": "RWUUVEHCB5wzF6oL", "publisherAuthenticationKey": "IrAwjAsgo51XHJBG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateSteamIAPConfig' test.out

#- 75 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteSteamIAPConfig' test.out

#- 76 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetTwitchIAPConfig' test.out

#- 77 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    --body '{"clientId": "2PmyeFaBiT3SyLHX", "clientSecret": "ZSyfjukWmkfkiF2G", "organizationId": "ZPuyWBVH66JU1IIC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UpdateTwitchIAPConfig' test.out

#- 78 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'DeleteTwitchIAPConfig' test.out

#- 79 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'GetXblIAPConfig' test.out

#- 80 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    --body '{"relyingPartyCert": "VNNRV4lBToTcn1l4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UpdateXblIAPConfig' test.out

#- 81 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteXblAPConfig' test.out

#- 82 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateXblBPCertFile' test.out

#- 83 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    '4ebrKEKdeo779KG5' \
    'yCz9jVs1lYK1Mx9r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'DownloadInvoiceDetails' test.out

#- 84 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'EFkDqb31AZzwiQBa' \
    'GdS41VRIyAHjYxVh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GenerateInvoiceSummary' test.out

#- 85 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'CbXbeBEoTlfR33jq' \
    --body '{"categoryPath": "IRoXcCPaLXJM2B9b", "targetItemId": "MohkWsFKIdycYHQc", "targetNamespace": "u7JkKBcLFRf50Y7M"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'SyncInGameItem' test.out

#- 86 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'E2QmYiYqap7masUc' \
    --body '{"appId": "ayqmp7vhz1T6cSrZ", "appType": "DEMO", "baseAppId": "2CgHxdmYDj9vZNgf", "boothName": "I1AeYHe8WPQGPclC", "categoryPath": "hxLfbXrH6f2GDrNb", "clazz": "LOjGz34ct0ctEeH4", "displayOrder": 78, "entitlementType": "DURABLE", "ext": {"EWGg1r4nW4pBcPPa": {}, "iaM1og5rxUjGPKKL": {}, "MoAy1stmxPFz0i1I": {}}, "features": ["AqyvjBy0NXg7zd6S", "9ss8b8udl6fLkxFn", "K3QzkcRwFPpXGlKR"], "images": [{"as": "FpkV7cAICgWFJZGn", "caption": "Na5yOM68r4W1fDZL", "height": 95, "imageUrl": "0oPQ0s7QhC8hgSgy", "smallImageUrl": "tNEojK3YgWH9l7rv", "width": 69}, {"as": "XUSINd4keCeiw7P2", "caption": "PtUrPawQPaHARrhj", "height": 2, "imageUrl": "vULYNIhs5PZGTJmg", "smallImageUrl": "ofq7nlF5Ch8J2Qs9", "width": 70}, {"as": "0APOU4hcdwlnsTap", "caption": "2RJpHtncLywP3WlL", "height": 25, "imageUrl": "WmCCIrP0lJXexseo", "smallImageUrl": "2e6BCNJTTRIHDKdV", "width": 12}], "itemIds": ["78GsJGLbnb4Nvw7f", "nm4MnOqnqNerQoHi", "DIJayvSNt8EQXsMb"], "itemQty": {"Yi1yEI9ychtyhjZS": 8, "OzoSyKttYwUUlMRG": 1, "vO0OSsJmhOJDUyya": 12}, "itemType": "OPTIONBOX", "listable": false, "localizations": {"aJMIjgzU02nZWwBd": {"description": "EFpfccauYDc86pxK", "localExt": {"9KhF4KRVPoIuzAuQ": {}, "NjAfvOE2cVjFp1Ce": {}, "CEfaV4ZGGwbqOB4m": {}}, "longDescription": "D3E7AFHqlTTkL8cm", "title": "pA0sZ0tgeR4UV5SM"}, "Z8GUvWZvoCmprkv7": {"description": "A8MRutCKCsqmx2zr", "localExt": {"iOGB8b5qTFp3cIxO": {}, "I33nt54i5hdAezed": {}, "cppbujZh1fYXF6R9": {}}, "longDescription": "Rz3HVP2Y9WqSRiwV", "title": "3UZg0UJLPMkeUwa6"}, "OVKxCMxuf0P9r5f6": {"description": "fdmyi4kQnOFbBtvB", "localExt": {"w81hUgtONCIoZ2rk": {}, "omSj52mAIMo6EW9Q": {}, "hzU8FwQtZpfUoyoi": {}}, "longDescription": "UjmqOyQ7ammFgHpr", "title": "dM9viFWmezrQOWH0"}}, "lootBoxConfig": {"rewardCount": 51, "rewards": [{"lootBoxItems": [{"count": 13, "duration": 50, "endDate": "1998-05-17T00:00:00Z", "itemId": "AkRh3NmbRhMxKeIg", "itemSku": "wq1NZmxa0ghRG020", "itemType": "QpWTNKsVyK8EU8JY"}, {"count": 4, "duration": 66, "endDate": "1997-10-19T00:00:00Z", "itemId": "PA2ef1jFeqQ8mBpT", "itemSku": "uvLTJUzwXJFaWW3J", "itemType": "VdYpfHOYoLva2c4J"}, {"count": 38, "duration": 84, "endDate": "1972-09-08T00:00:00Z", "itemId": "wxJZQpkeDHr0hjKB", "itemSku": "pDMIvK4qfQ0pQIcY", "itemType": "MBktqqAAF6YG1dD1"}], "name": "vECBb01VFFhO5Fcd", "odds": 0.7292425869208757, "type": "REWARD", "weight": 83}, {"lootBoxItems": [{"count": 71, "duration": 75, "endDate": "1985-01-17T00:00:00Z", "itemId": "QI2uIi2SNZKqlJZs", "itemSku": "dnY04DIyosprZPBa", "itemType": "ERb7U9kK4VctUmDh"}, {"count": 64, "duration": 76, "endDate": "1995-11-17T00:00:00Z", "itemId": "ZxOhUhl3Y0EshaG0", "itemSku": "uDiJNUuxK22saWaG", "itemType": "vrzBdLvFUBZDnVrc"}, {"count": 46, "duration": 14, "endDate": "1971-02-08T00:00:00Z", "itemId": "sD0RDLxWgEWwoHpV", "itemSku": "8E1xQZLa7Kw77UpC", "itemType": "xNyx1jjdxNePPAJ6"}], "name": "Z9UzqIhZZiK0QEG6", "odds": 0.4580897028054287, "type": "PROBABILITY_GROUP", "weight": 46}, {"lootBoxItems": [{"count": 24, "duration": 100, "endDate": "1976-04-05T00:00:00Z", "itemId": "VRNOF1Bg6OHZzvdZ", "itemSku": "HoIm4tKNhPjNIQGF", "itemType": "xGwgnSiZtChE0uof"}, {"count": 19, "duration": 55, "endDate": "1983-08-09T00:00:00Z", "itemId": "9ahS7h7XVlmc5Rs5", "itemSku": "FVQSIqObR55tV0Bl", "itemType": "N1iFvw0GSLBmie8S"}, {"count": 73, "duration": 61, "endDate": "1972-08-04T00:00:00Z", "itemId": "kSRbu7hgmUm7RVCU", "itemSku": "REDdoGatGQ1SeOXs", "itemType": "g4jofp9PvlQ1xdmr"}], "name": "4JDpvZgvPGHjV7MN", "odds": 0.7262698912544937, "type": "PROBABILITY_GROUP", "weight": 34}], "rollFunction": "CUSTOM"}, "maxCount": 6, "maxCountPerUser": 10, "name": "NZgfQyDVVkkqiMiR", "optionBoxConfig": {"boxItems": [{"count": 11, "duration": 40, "endDate": "1999-02-25T00:00:00Z", "itemId": "yCyM0Tp5GJHHbsLJ", "itemSku": "73mCPhhmUyIwgQS9", "itemType": "kVFUbeTeB9KgnFZQ"}, {"count": 13, "duration": 24, "endDate": "1993-08-20T00:00:00Z", "itemId": "MNyCiytnfMoO1I3K", "itemSku": "ISTbn4yEa2AaBRal", "itemType": "z5HEm4Gant6aqjKz"}, {"count": 100, "duration": 17, "endDate": "1986-01-14T00:00:00Z", "itemId": "AauqLKarcLQRQtC9", "itemSku": "27GneBM8LvzgyIVz", "itemType": "GFBLJ5vbC9NfLTFJ"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 52, "fixedTrialCycles": 88, "graceDays": 54}, "regionData": {"pUSnos6QiHyrcGeR": [{"currencyCode": "v27hj73EtufHuNIp", "currencyNamespace": "0GXpM4nbG7aww2TA", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1998-04-08T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1985-05-20T00:00:00Z", "expireAt": "1991-03-25T00:00:00Z", "price": 93, "purchaseAt": "1972-06-26T00:00:00Z", "trialPrice": 45}, {"currencyCode": "LoL0wwHoRMNexBOr", "currencyNamespace": "on8wIdUbp7xVMKfb", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1989-02-10T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1996-01-13T00:00:00Z", "expireAt": "1999-05-18T00:00:00Z", "price": 17, "purchaseAt": "1975-11-17T00:00:00Z", "trialPrice": 47}, {"currencyCode": "IC52NUedhhkME18q", "currencyNamespace": "GpSsyEPDWHcqfYp2", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1987-07-15T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1986-03-25T00:00:00Z", "expireAt": "1971-09-02T00:00:00Z", "price": 62, "purchaseAt": "1994-09-25T00:00:00Z", "trialPrice": 10}], "CGtg812NQb5Glh8s": [{"currencyCode": "rTlTj61WdV2XUo1B", "currencyNamespace": "O1rE7E12Fapao5jo", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1988-10-17T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1978-08-03T00:00:00Z", "expireAt": "1989-07-07T00:00:00Z", "price": 62, "purchaseAt": "1972-05-25T00:00:00Z", "trialPrice": 39}, {"currencyCode": "Tvew0WVDSMNr23LV", "currencyNamespace": "7xZEEv7O1lwxVTRl", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1998-09-20T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1988-06-03T00:00:00Z", "expireAt": "1986-04-05T00:00:00Z", "price": 95, "purchaseAt": "1973-10-20T00:00:00Z", "trialPrice": 85}, {"currencyCode": "tMC8NyV2HLHZT3oY", "currencyNamespace": "JlC4ie3InnSA22NH", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1992-04-04T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1976-10-26T00:00:00Z", "expireAt": "1996-12-08T00:00:00Z", "price": 51, "purchaseAt": "1991-10-15T00:00:00Z", "trialPrice": 46}], "UAlKlTwdJEPoemVt": [{"currencyCode": "mVXTs3tCu4F9IgDT", "currencyNamespace": "2tq2V2lMzfIQHCZ9", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1979-07-20T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1973-02-25T00:00:00Z", "expireAt": "1971-12-08T00:00:00Z", "price": 96, "purchaseAt": "1983-05-20T00:00:00Z", "trialPrice": 27}, {"currencyCode": "HFirnUpZ9UJ4N78q", "currencyNamespace": "HTGdn7gE4bwLzDEw", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1981-04-08T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1981-08-19T00:00:00Z", "expireAt": "1993-03-23T00:00:00Z", "price": 91, "purchaseAt": "1988-01-01T00:00:00Z", "trialPrice": 14}, {"currencyCode": "OZcEvG6KZh954Bmt", "currencyNamespace": "uIFllfSUnaUhC4x1", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1999-07-10T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1984-02-16T00:00:00Z", "expireAt": "1989-04-23T00:00:00Z", "price": 51, "purchaseAt": "1994-03-10T00:00:00Z", "trialPrice": 8}]}, "saleConfig": {"currencyCode": "y01FkEEXlKiTIDgP", "price": 59}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "wkz0nw2oxKye8jZq", "stackable": false, "status": "ACTIVE", "tags": ["8REDRuYBnWiEsOnD", "fIAN04f5kSONmw1B", "7k0YiLqOUSBuwR38"], "targetCurrencyCode": "DqqSctLL4WfGq8JC", "targetNamespace": "DnwGWgccuzuc6QDR", "thumbnailUrl": "MGdBPbUyHTYPS8CG", "useCount": 75}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'CreateItem' test.out

#- 87 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'DPdukc04j6rbfBuK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetItemByAppId' test.out

#- 88 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'QueryItems' test.out

#- 89 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'ListBasicItemsByFeatures' test.out

#- 90 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'Bco1AeO3yvvBLZPB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetItemBySku' test.out

#- 91 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'uekeBe4Tvb3fHCIJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetLocaleItemBySku' test.out

#- 92 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'ZkwEcCRi2U7s2ZQA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'GetItemIdBySku' test.out

#- 93 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetBulkItemIdBySkus' test.out

#- 94 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'arwH0c87v0PwZjyd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'BulkGetLocaleItems' test.out

#- 95 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'GetAvailablePredicateTypes' test.out

#- 96 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    'yzGDZM4zTTYI6O8c' \
    --body '{"itemIds": ["oYDWUfcL1qsegBsr", "NqeW5BxVe8iW7sGE", "LnMdXRqdGPzxXvZP"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'ValidateItemPurchaseCondition' test.out

#- 97 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'trhjeVBnTrsYihhg' \
    --body '{"changes": [{"itemIdentities": ["beAZoFncMUdmf8hD", "3nL1saQxLYrz08jh", "6Tyq7WUilXgtf5Uc"], "itemIdentityType": "ITEM_SKU", "regionData": {"n5s6DODBmrqEhGlk": [{"currencyCode": "EmGdCbwodVRjZJWu", "currencyNamespace": "CQpjuJzpPO7BPxVW", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1993-03-04T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1973-04-24T00:00:00Z", "discountedPrice": 37, "expireAt": "1989-01-31T00:00:00Z", "price": 0, "purchaseAt": "1976-05-20T00:00:00Z", "trialPrice": 35}, {"currencyCode": "KxCcNv8FQCyQBqKx", "currencyNamespace": "ayGvw7MqOsypCJmf", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1996-07-08T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1980-02-22T00:00:00Z", "discountedPrice": 31, "expireAt": "1990-02-16T00:00:00Z", "price": 20, "purchaseAt": "1981-03-19T00:00:00Z", "trialPrice": 25}, {"currencyCode": "t7eCLDu6PA3PRnQt", "currencyNamespace": "B410iWT0SILVGXCW", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1972-11-02T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1989-05-05T00:00:00Z", "discountedPrice": 23, "expireAt": "1992-04-12T00:00:00Z", "price": 33, "purchaseAt": "1992-09-14T00:00:00Z", "trialPrice": 42}], "lef1tSHJf6sVpwAA": [{"currencyCode": "KKqmTy0ZSyJ7IIUX", "currencyNamespace": "lBlZMQeSnOg5gf1S", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1979-01-10T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1978-02-11T00:00:00Z", "discountedPrice": 25, "expireAt": "1990-04-28T00:00:00Z", "price": 65, "purchaseAt": "1982-12-13T00:00:00Z", "trialPrice": 61}, {"currencyCode": "mahJlT5OUDEMwAjg", "currencyNamespace": "NZgto2EhOlnsuDnk", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1991-10-18T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1973-06-23T00:00:00Z", "discountedPrice": 22, "expireAt": "1999-01-09T00:00:00Z", "price": 94, "purchaseAt": "1991-04-09T00:00:00Z", "trialPrice": 38}, {"currencyCode": "HDVmCGFoD7aNFj9w", "currencyNamespace": "ORAVqRuNsXxRu4EQ", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1993-10-27T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1990-01-06T00:00:00Z", "discountedPrice": 83, "expireAt": "1997-02-10T00:00:00Z", "price": 99, "purchaseAt": "1987-06-09T00:00:00Z", "trialPrice": 65}], "FzplXVk36IpbGquP": [{"currencyCode": "nIPwR1BinZ4ULwAK", "currencyNamespace": "O8n42UuxEyfzZJsZ", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1980-08-11T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1976-08-24T00:00:00Z", "discountedPrice": 26, "expireAt": "1995-04-12T00:00:00Z", "price": 75, "purchaseAt": "1979-03-11T00:00:00Z", "trialPrice": 65}, {"currencyCode": "WkbdpGqWQIPK6mVy", "currencyNamespace": "tM5mBRT39gKYLk9D", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1976-12-13T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1977-03-03T00:00:00Z", "discountedPrice": 32, "expireAt": "1974-12-12T00:00:00Z", "price": 27, "purchaseAt": "1978-06-24T00:00:00Z", "trialPrice": 32}, {"currencyCode": "AWBSOr7zljUKyhKk", "currencyNamespace": "D7wAHMrv8zABDhYA", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1981-06-26T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1980-08-12T00:00:00Z", "discountedPrice": 59, "expireAt": "1981-01-27T00:00:00Z", "price": 13, "purchaseAt": "1974-11-24T00:00:00Z", "trialPrice": 52}]}}, {"itemIdentities": ["vvgI2k1P9nQxzj3A", "nmpWfje5cAtTDvwF", "HcoODi5oF1pccdjj"], "itemIdentityType": "ITEM_ID", "regionData": {"aZ6VzztnntoxwsNt": [{"currencyCode": "NxWoH5wVHJVaEnay", "currencyNamespace": "cYsKkgX0RMDxvlK9", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1994-01-17T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1996-07-04T00:00:00Z", "discountedPrice": 44, "expireAt": "1990-10-26T00:00:00Z", "price": 10, "purchaseAt": "1983-08-30T00:00:00Z", "trialPrice": 57}, {"currencyCode": "hCxwy85vlhWw1RCg", "currencyNamespace": "Hr3f6UqFGCvsMFEF", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1996-10-01T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1985-12-14T00:00:00Z", "discountedPrice": 84, "expireAt": "1971-10-28T00:00:00Z", "price": 75, "purchaseAt": "1998-12-17T00:00:00Z", "trialPrice": 79}, {"currencyCode": "qtKYVObVorIVWWLa", "currencyNamespace": "VJwe2KAca1aKeXUu", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1988-09-13T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1996-05-15T00:00:00Z", "discountedPrice": 77, "expireAt": "1989-06-20T00:00:00Z", "price": 53, "purchaseAt": "1978-04-16T00:00:00Z", "trialPrice": 54}], "Kio4M51vuaFyqjQs": [{"currencyCode": "TGmzItJIOkEIRsSW", "currencyNamespace": "OV8LyivYbMG9LXPb", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1974-12-27T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1986-10-21T00:00:00Z", "discountedPrice": 7, "expireAt": "1982-05-08T00:00:00Z", "price": 65, "purchaseAt": "1974-01-17T00:00:00Z", "trialPrice": 9}, {"currencyCode": "hP3zTymfVfny2M0K", "currencyNamespace": "sS08cY3fjI1YTT3q", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1983-10-10T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1997-05-29T00:00:00Z", "discountedPrice": 90, "expireAt": "1995-03-14T00:00:00Z", "price": 11, "purchaseAt": "1995-08-23T00:00:00Z", "trialPrice": 9}, {"currencyCode": "RhzfKDAGIAJuPhQc", "currencyNamespace": "ZwXRE9FOZUVTfDc3", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1998-06-06T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1984-12-02T00:00:00Z", "discountedPrice": 89, "expireAt": "1989-05-24T00:00:00Z", "price": 66, "purchaseAt": "1992-06-03T00:00:00Z", "trialPrice": 40}], "dXJGDsxRAR3NObYp": [{"currencyCode": "43YXMHqWeVjnOURx", "currencyNamespace": "GvOhz9s7ktWkJDaH", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1998-03-19T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1986-12-13T00:00:00Z", "discountedPrice": 97, "expireAt": "1980-03-14T00:00:00Z", "price": 78, "purchaseAt": "1983-08-16T00:00:00Z", "trialPrice": 15}, {"currencyCode": "QAdOfrtHWyGg5TU3", "currencyNamespace": "INkMgjsnP8itevmj", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1995-03-18T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1975-02-07T00:00:00Z", "discountedPrice": 40, "expireAt": "1981-01-21T00:00:00Z", "price": 12, "purchaseAt": "1981-09-12T00:00:00Z", "trialPrice": 55}, {"currencyCode": "Qv384ri6A7z0hsW0", "currencyNamespace": "IHIYvJ7PPgVaFwGh", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1976-07-29T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1983-03-30T00:00:00Z", "discountedPrice": 54, "expireAt": "1983-09-05T00:00:00Z", "price": 80, "purchaseAt": "1981-03-29T00:00:00Z", "trialPrice": 30}]}}, {"itemIdentities": ["1hVfVC7eLVWGk0Gj", "YReIZaDC2Au2bEpy", "mbJ4dPJmkdvyuDHF"], "itemIdentityType": "ITEM_SKU", "regionData": {"ykBuDJ0IPQeAL4MZ": [{"currencyCode": "wEVJe7waGyB6g2M5", "currencyNamespace": "JiwtMOfDfoMgU2yF", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1997-12-05T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1994-04-15T00:00:00Z", "discountedPrice": 64, "expireAt": "1977-05-10T00:00:00Z", "price": 11, "purchaseAt": "1987-11-20T00:00:00Z", "trialPrice": 92}, {"currencyCode": "5E20ORMCVBTrkvOb", "currencyNamespace": "siHQgt7OfL6AcBPj", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1993-12-25T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1985-12-17T00:00:00Z", "discountedPrice": 28, "expireAt": "1993-11-22T00:00:00Z", "price": 38, "purchaseAt": "1997-05-20T00:00:00Z", "trialPrice": 87}, {"currencyCode": "c0qvV8Gq1cw3ytGW", "currencyNamespace": "VKPoA1aKRZM1Ot0P", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1985-09-19T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1988-10-01T00:00:00Z", "discountedPrice": 68, "expireAt": "1978-03-12T00:00:00Z", "price": 91, "purchaseAt": "1976-05-02T00:00:00Z", "trialPrice": 72}], "9l5J0IOZmnpzwHhi": [{"currencyCode": "g9d6vdgfrNiGrH0h", "currencyNamespace": "DjH6IYpfINzNjk5V", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1982-05-02T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1992-06-06T00:00:00Z", "discountedPrice": 19, "expireAt": "1985-04-21T00:00:00Z", "price": 99, "purchaseAt": "1987-08-08T00:00:00Z", "trialPrice": 57}, {"currencyCode": "WT8PxL8674KYMeN2", "currencyNamespace": "W2CNqmO8JALtCiDu", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1999-04-23T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1994-07-02T00:00:00Z", "discountedPrice": 82, "expireAt": "1985-02-12T00:00:00Z", "price": 18, "purchaseAt": "1997-04-29T00:00:00Z", "trialPrice": 96}, {"currencyCode": "N9jkLCsMYyyhEyBf", "currencyNamespace": "FFZwkC1PRjBWzTuX", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1980-12-13T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1982-12-21T00:00:00Z", "discountedPrice": 9, "expireAt": "1986-03-08T00:00:00Z", "price": 61, "purchaseAt": "1985-04-25T00:00:00Z", "trialPrice": 2}], "2hB9u1v1POCjseK1": [{"currencyCode": "xaSbMjyFrYsITcyT", "currencyNamespace": "5AhNNH0Ht1yPtBwX", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1998-03-17T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1985-01-06T00:00:00Z", "discountedPrice": 7, "expireAt": "1992-01-17T00:00:00Z", "price": 28, "purchaseAt": "1981-02-20T00:00:00Z", "trialPrice": 63}, {"currencyCode": "8ps5XknDJZK5gFHy", "currencyNamespace": "IOnLu9WBAS0qUswy", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1977-05-27T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1996-12-15T00:00:00Z", "discountedPrice": 73, "expireAt": "1999-01-26T00:00:00Z", "price": 32, "purchaseAt": "1989-02-23T00:00:00Z", "trialPrice": 36}, {"currencyCode": "bHM0Svy3GRenDzwl", "currencyNamespace": "TE9Czhnck3GnyPFQ", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1989-04-17T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1974-03-20T00:00:00Z", "discountedPrice": 98, "expireAt": "1996-09-01T00:00:00Z", "price": 7, "purchaseAt": "1992-09-25T00:00:00Z", "trialPrice": 84}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateRegionData' test.out

#- 98 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'kZ8AVzeiaDi67E3r' \
    'TwN2LrT85Arfe6Ew' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'SearchItems' test.out

#- 99 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'QueryUncategorizedItems' test.out

#- 100 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'eJxWANt1bDay64En' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetItem' test.out

#- 101 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'FyFeW0oNhddKrrhz' \
    'wz2PFXC33KjLNUFQ' \
    --body '{"appId": "JgCWV7dj8I5eVnfl", "appType": "GAME", "baseAppId": "2hnMV6Yxtl5DKUhj", "boothName": "By9oWPcMIQc5lRQo", "categoryPath": "jhJgpXVCubdw0sPr", "clazz": "gDKqHCs5GTdTLCxJ", "displayOrder": 34, "entitlementType": "CONSUMABLE", "ext": {"dgsgrnpVE1acxZoD": {}, "XdPORkWkyTcJzvDU": {}, "lhTlBNpvkjg48iVK": {}}, "features": ["kZU3qtk0dM4GZGiS", "utb6wUxEikRyHC9V", "CqEqeZP1CFaMkJVB"], "images": [{"as": "WMnzbuNQNJxCbLEh", "caption": "frPxIRdbUwkN6Tr6", "height": 44, "imageUrl": "L6XOoO3WqBsbDmsT", "smallImageUrl": "k9UuiQwezvArAKJw", "width": 82}, {"as": "GVyknpOhuGhAnlnj", "caption": "yPBj7h3hncU5vgL6", "height": 74, "imageUrl": "RA2BI7knizQ4Jx8I", "smallImageUrl": "n4w8yRFOLeTQypls", "width": 5}, {"as": "rByjUr7w9w1xKUrL", "caption": "mQSkuEMRzyerpya2", "height": 29, "imageUrl": "9M22gRLsc6Jwt190", "smallImageUrl": "s6yFiDZs0wyldbDD", "width": 27}], "itemIds": ["3A8JeRMYUCgn7okl", "NewpAIwtlAooXZ7H", "Db8g2BhzW03O2pp9"], "itemQty": {"qVpZbsppRsBWQ7Rd": 61, "qZaQ8swcFOshiWEF": 60, "n8CjEhtRcnVsYOwy": 32}, "itemType": "CODE", "listable": true, "localizations": {"gZ773cdzYhgH24VR": {"description": "4hJnsU1m6zryXmvv", "localExt": {"vPmueVVC0ymY7ABW": {}, "gZVxM4rAqxlnHLAF": {}, "NEwXBsCkfqzKlzlL": {}}, "longDescription": "gHPF5iRWnREifOFJ", "title": "QwGPy5zGebVw9nLv"}, "Vm8UeFUbaGb5on2k": {"description": "vdeu5DfAxsrX7OiS", "localExt": {"Rs0z2RYA8fTlbfUO": {}, "SmR4F0p5g7b3Megx": {}, "V9JnAJSu3MX2yYJo": {}}, "longDescription": "pKxd9MtXYGoZGkBN", "title": "XT0feu7KKPXunBZi"}, "qYaReD04717oGCmr": {"description": "TUcZy3DDSxpWZV6J", "localExt": {"5QloYCaB5ImpxpHJ": {}, "CcuqJR2TT3HEYBW8": {}, "Aq2KVQNFGaJEyBVl": {}}, "longDescription": "Q5iHlTqgMzvj8sHL", "title": "F7s3hgmxOOzP7vte"}}, "lootBoxConfig": {"rewardCount": 96, "rewards": [{"lootBoxItems": [{"count": 57, "duration": 77, "endDate": "1983-11-09T00:00:00Z", "itemId": "njCbitEJNHwfW76v", "itemSku": "6GPVwWjIfhOXemeT", "itemType": "giENbhdRohucoiX0"}, {"count": 66, "duration": 55, "endDate": "1977-12-15T00:00:00Z", "itemId": "Z4eKHaAP4PYToJAM", "itemSku": "gJkC8UGlqb7cexeE", "itemType": "hHz7OKYNIMPTFnrb"}, {"count": 50, "duration": 37, "endDate": "1981-01-27T00:00:00Z", "itemId": "yRviPljDYddTDwgc", "itemSku": "6onXfoDvjI9jfJFT", "itemType": "HcHvAfosnCXqJplc"}], "name": "waBHILlCC7ovjEbj", "odds": 0.5879824917401919, "type": "REWARD", "weight": 69}, {"lootBoxItems": [{"count": 84, "duration": 20, "endDate": "1972-02-23T00:00:00Z", "itemId": "6IbWTfPplY43FQpf", "itemSku": "FWm8VMHjC8qrxvZs", "itemType": "Jd3RBYL4PAqdviBv"}, {"count": 93, "duration": 64, "endDate": "1978-02-23T00:00:00Z", "itemId": "SQ7EqHUhHn1qP3G2", "itemSku": "kSIurSOWI2donULQ", "itemType": "okdCSsp87x6Jfe5Y"}, {"count": 53, "duration": 73, "endDate": "1996-06-26T00:00:00Z", "itemId": "Jeb1GUdtB5G8NITA", "itemSku": "0g58cqZn79u2grir", "itemType": "dqELbdqXaPlAMGm4"}], "name": "h3PbLHDa7uqaaxqX", "odds": 0.6750445071182154, "type": "REWARD_GROUP", "weight": 38}, {"lootBoxItems": [{"count": 42, "duration": 44, "endDate": "1991-04-04T00:00:00Z", "itemId": "AeKKjcKgU263PawP", "itemSku": "B10d4KCtC9mqs8uX", "itemType": "BZ2Kxk4a5FeKFm3r"}, {"count": 0, "duration": 24, "endDate": "1996-05-01T00:00:00Z", "itemId": "JJwmCAjTwtCqKdh9", "itemSku": "2wuH9hLkAg90cQgX", "itemType": "eZnKRP6Gdv2QY9Ba"}, {"count": 6, "duration": 71, "endDate": "1989-09-01T00:00:00Z", "itemId": "Jj4HkL0mk4HHDzXc", "itemSku": "KJowQbOrgveLe4hY", "itemType": "QEGcivibNKS0tBFx"}], "name": "zru1A3ObcaijxlHr", "odds": 0.032895876369359534, "type": "REWARD", "weight": 4}], "rollFunction": "DEFAULT"}, "maxCount": 46, "maxCountPerUser": 99, "name": "Ggl1SyrFazP5g67z", "optionBoxConfig": {"boxItems": [{"count": 34, "duration": 11, "endDate": "1996-06-30T00:00:00Z", "itemId": "CHkJzmy6DtxvO3nU", "itemSku": "iVM7UfbH7Qv0Eyy6", "itemType": "G3n83Sb2WXmcXtuU"}, {"count": 41, "duration": 3, "endDate": "1997-03-19T00:00:00Z", "itemId": "JQ92BTViMMFji1Gm", "itemSku": "fmwhN25xGSRRZnwl", "itemType": "bMGheYVteLiiIKPj"}, {"count": 30, "duration": 66, "endDate": "1976-09-03T00:00:00Z", "itemId": "v6HMQOekLKHziTw5", "itemSku": "M3KvzpUEcp3cp4fW", "itemType": "JlLrbVQceKy5JZK1"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 97, "fixedTrialCycles": 96, "graceDays": 32}, "regionData": {"z9AKozXBA29DPhYa": [{"currencyCode": "8Ksjfnk7HKSWULkE", "currencyNamespace": "KqQ4ToqWjpaECYi7", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1985-04-14T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1983-01-03T00:00:00Z", "expireAt": "1977-08-18T00:00:00Z", "price": 82, "purchaseAt": "1999-05-23T00:00:00Z", "trialPrice": 85}, {"currencyCode": "5C2BOjUiOQVEbp3z", "currencyNamespace": "13pDy371QLVtDb6R", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1971-01-12T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1976-03-11T00:00:00Z", "expireAt": "1990-04-13T00:00:00Z", "price": 61, "purchaseAt": "1977-10-26T00:00:00Z", "trialPrice": 17}, {"currencyCode": "udqURkyz4E3EI1bS", "currencyNamespace": "CYaa8JSNQdhrnvuD", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1995-03-25T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1995-10-27T00:00:00Z", "expireAt": "1975-12-17T00:00:00Z", "price": 48, "purchaseAt": "1993-06-19T00:00:00Z", "trialPrice": 46}], "gslvMllaEVugbCEi": [{"currencyCode": "fQCe5eN88Z7U1e8C", "currencyNamespace": "1HnrPGydCRGPXLKN", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1987-08-22T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1983-01-18T00:00:00Z", "expireAt": "1984-08-28T00:00:00Z", "price": 72, "purchaseAt": "1976-05-01T00:00:00Z", "trialPrice": 1}, {"currencyCode": "MhSZgpx0HtzCgr8y", "currencyNamespace": "bpAO0Pgh6Uenz7Fj", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1993-12-25T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1988-11-24T00:00:00Z", "expireAt": "1989-01-03T00:00:00Z", "price": 6, "purchaseAt": "1995-06-20T00:00:00Z", "trialPrice": 98}, {"currencyCode": "E1N52PwdeTQhMz99", "currencyNamespace": "aZ3fza0rlzqNhVNw", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1996-08-09T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1985-04-01T00:00:00Z", "expireAt": "1997-11-10T00:00:00Z", "price": 35, "purchaseAt": "1975-07-03T00:00:00Z", "trialPrice": 25}], "g8OWAT7d65hchXzG": [{"currencyCode": "4ffz0lXBDbBGrYGl", "currencyNamespace": "eamVgjm0xqJhfraX", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1984-10-08T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1988-05-16T00:00:00Z", "expireAt": "1971-01-11T00:00:00Z", "price": 31, "purchaseAt": "1991-02-18T00:00:00Z", "trialPrice": 74}, {"currencyCode": "Jqlw441XUfp7AVnf", "currencyNamespace": "8BzBBqEvMtJopw2r", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1993-10-24T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1980-05-12T00:00:00Z", "expireAt": "1978-07-23T00:00:00Z", "price": 70, "purchaseAt": "1996-03-22T00:00:00Z", "trialPrice": 48}, {"currencyCode": "KH6MNrEsOlIFw6Fq", "currencyNamespace": "a6YXBlVXOvZUgW2Z", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1982-02-27T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1991-07-19T00:00:00Z", "expireAt": "1998-12-31T00:00:00Z", "price": 62, "purchaseAt": "1992-01-26T00:00:00Z", "trialPrice": 14}]}, "saleConfig": {"currencyCode": "sgnJF31EULHtVtkZ", "price": 35}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "tZmaZGxrhAPoREvG", "stackable": false, "status": "INACTIVE", "tags": ["mbGW3SttwZrmKkRE", "SjLdDyVf6irpvxpC", "JXucN3IEt8vZSqh6"], "targetCurrencyCode": "XFlM52jb80Nlw8ic", "targetNamespace": "wWRvvZB46NCiqdle", "thumbnailUrl": "q2jCNZAKjBlI9fsL", "useCount": 87}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateItem' test.out

#- 102 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'HEOiPcSKlQDo4ih3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DeleteItem' test.out

#- 103 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '58Lf5RXgVFrsR55c' \
    --body '{"count": 32, "orderNo": "lsH39PXWtk222GY7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'AcquireItem' test.out

#- 104 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'L58lP7drhfBjZFga' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'GetApp' test.out

#- 105 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'GUfhy5TZFoyfZ0Xf' \
    'CxPDcH66JWKmTRqr' \
    --body '{"carousel": [{"alt": "vfJIrFQWIDC6PHVs", "previewUrl": "nUueYd49OFDlbdIr", "thumbnailUrl": "xqxAtw8vLsYBHN6M", "type": "video", "url": "yxizWKQdVExukcKD", "videoSource": "vimeo"}, {"alt": "zhKKARjqJSWImXva", "previewUrl": "LXkvZvwk0v0OKy45", "thumbnailUrl": "dqId3gXUWVAmaDjr", "type": "image", "url": "gxMqM1wUdXsMjUbh", "videoSource": "youtube"}, {"alt": "4istsfrFqHu6f54m", "previewUrl": "L4hAfiqX3ThREYkn", "thumbnailUrl": "dZIrjnjuCHkx8hm2", "type": "video", "url": "8A4NUDAdwt7cj6v5", "videoSource": "vimeo"}], "developer": "MmdPXWaJRdn3WMdr", "forumUrl": "hlWqCc54JfyGzMMH", "genres": ["Casual", "Strategy", "MassivelyMultiplayer"], "localizations": {"covYDuI4l1d9YaLV": {"announcement": "uL1mLP65pId36F25", "slogan": "c13PNqPn7XRlnqiW"}, "P9WWQMGmm0biVjE8": {"announcement": "A3EsOz8LDnxgL0t7", "slogan": "Qhdw4vmSxnJcyaij"}, "SCsFa6ipRu1AaFjz": {"announcement": "0yLelzMzWiPzugdD", "slogan": "u6rxIv2ZMtZX5KZK"}}, "platformRequirements": {"53tX2oxmEDDgGBgP": [{"additionals": "WHmOLBLlsw2pDJDL", "directXVersion": "eJwzbVEEQ0D6RcLp", "diskSpace": "RxXCStzvOyY1tNKA", "graphics": "VWv5cGRm3WTx0oyO", "label": "rycewrnLBAZlvnOJ", "osVersion": "eNxZdT1fZJTutZpZ", "processor": "Zn6egDbFDXW3N42c", "ram": "cGURTnJUdR3MUQnE", "soundCard": "eANANjqBdfMMU89e"}, {"additionals": "6CIBWn2Q3kMtF5ti", "directXVersion": "wPCAxM9oFcQUp7hr", "diskSpace": "vKVNdGrr2TTTiTt8", "graphics": "oRoQRf0A1eAJUZSj", "label": "WUPA9vXrqLxUCyNQ", "osVersion": "UITTM8jU9tfr6NkP", "processor": "jb60b0Y8RDVgsQza", "ram": "eOv7xB8GlNYJeVVZ", "soundCard": "QH5C76GaeCobrGOA"}, {"additionals": "vaYctXd3jNOlJBjB", "directXVersion": "MsJisMu1kQcGm0x3", "diskSpace": "DmUahjPVDOEmwpWi", "graphics": "JYxvvQCHIreoYDgN", "label": "e1RyydtCBznu3BT2", "osVersion": "fe68sGXFylcwoCMa", "processor": "2D9QtE0TKRHukM2B", "ram": "VMu418S3o2DKmAp8", "soundCard": "kt8156L7Wl7UfG3P"}], "bsgYDgJ0JRrcPbe1": [{"additionals": "REA4kpxN9tCjk58n", "directXVersion": "5fBl9xiCZH2KBHwu", "diskSpace": "AW3jLkVq9bAefBF8", "graphics": "tiF7mi3iOrnB83a6", "label": "h6dNfg9f25YsZ1L6", "osVersion": "IGHuO7u2tOUpmu6z", "processor": "ULXQMirzwMshTQYU", "ram": "nfHWyBg5c3Wq2dGy", "soundCard": "gLo40eCb82j4OhaA"}, {"additionals": "iWk4TKx1WRjiCokz", "directXVersion": "g7q7bMwxVAujRx0p", "diskSpace": "yulY8igLWA7yUanM", "graphics": "I437Ne6WvRNtbN9E", "label": "os8o1PdTDqm0SXzX", "osVersion": "Nqw2oEptJsPYgvPn", "processor": "AlN2mJeW1LQJ8A7N", "ram": "ZLQPAny29oO2B8os", "soundCard": "fAcB6Pd2uPwzliHi"}, {"additionals": "PYuwUtR55gCTACz3", "directXVersion": "aLd0f0QGkwoIQo88", "diskSpace": "hLxgR5AJVEz4FiSP", "graphics": "gU3FLs6LbIwwxFBW", "label": "1RyUyU8GVL2TVivH", "osVersion": "bcJX1mqJ4BtZCHdl", "processor": "mOzx9DrwT5dJMDgZ", "ram": "PQtuRIVY69dhSr3J", "soundCard": "iNweUidBVB2vTyC4"}], "82FeT76mWyDrmG0F": [{"additionals": "HQOjtRg7ST2UVRJN", "directXVersion": "0qFJaGDiDmatCvCe", "diskSpace": "mbJFNyIwxPt19hjy", "graphics": "I7ALyZHQ8V4AejtU", "label": "M6llcl5hdZoPhVcQ", "osVersion": "4wXeArPe089cqMuV", "processor": "8MLxiTO3GhLJ2qx2", "ram": "h93yz3Y7YtgdQMhz", "soundCard": "pcpwawMF0j9IirMe"}, {"additionals": "P7fy5Y0RiyzWJZAZ", "directXVersion": "HklGmHH8I1l3xgoV", "diskSpace": "yEemJDvokY7UUVCH", "graphics": "GWcVrHG4ehIhJk59", "label": "7xUXpiOLFQFxY4AH", "osVersion": "LzQnClUtkXb0SoML", "processor": "qijtgLSGTnWHCZ6X", "ram": "wqnOeIUKAIvQjUxt", "soundCard": "k82oOOkHmCFldZ0X"}, {"additionals": "AvFitLhI0sqjfua9", "directXVersion": "x08SJmn2gM2q6wua", "diskSpace": "Hlnk9AFkbwVa7DCV", "graphics": "egPEDDuHxwEbPLfn", "label": "jlMfDJxP4S8TNhXB", "osVersion": "TiwS2sBodn1p1MJr", "processor": "Zv1itpBPRbtgUMFA", "ram": "cxhrY80cxjAXFOLY", "soundCard": "QX2ryH4oq6fdhzar"}]}, "platforms": ["Windows", "MacOS", "Linux"], "players": ["Multi", "CrossPlatformMulti", "CrossPlatformMulti"], "primaryGenre": "MassivelyMultiplayer", "publisher": "dpqtAlzVR0WqkbKY", "releaseDate": "1993-07-20T00:00:00Z", "websiteUrl": "r7IVc2WJyX67v7JT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'UpdateApp' test.out

#- 106 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'crppNGl78VMGk3b5' \
    'E1GgAqoQkgiht0ls' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'DisableItem' test.out

#- 107 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'g1U1DExMK4z32P13' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetItemDynamicData' test.out

#- 108 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'aQRTMzFLsBDzdO8I' \
    'wGdLKPo5zR4q58Tk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'EnableItem' test.out

#- 109 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'a2qLo5spq850ZKnX' \
    '3Inv5lG8WEklkFFk' \
    'JPn2yomTQth1iJOy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'FeatureItem' test.out

#- 110 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'DZJCwufYAURyXVoJ' \
    '9qEel6x5O5otpujf' \
    'w64GJDWklFkqhGFA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'DefeatureItem' test.out

#- 111 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'oxfL2vrevlUaCgxl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItem' test.out

#- 112 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '01oVwoWAbcskuBfc' \
    'vcoAMPzCXwpgD8MO' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 44, "comparison": "isGreaterThan", "name": "Xcljy6EB8dB8wCiY", "predicateType": "SeasonPassPredicate", "value": "lgtX87XuWOIpQwpt", "values": ["Vr6DpLOyrgsLZV9a", "9YdwqEszRnwVX2rv", "cvroohLb6q3F16PO"]}, {"anyOf": 35, "comparison": "isLessThanOrEqual", "name": "TxBgnOqH9lyv8wx2", "predicateType": "SeasonTierPredicate", "value": "HSXapFLiHZfwcmqp", "values": ["HRQcJzso1tgoqsyj", "2hT9UYbm2BWjzlqI", "uA8sqeXbV9I8yo0u"]}, {"anyOf": 54, "comparison": "excludes", "name": "8csXOpDTl6yIwkTT", "predicateType": "SeasonPassPredicate", "value": "IH1dyZPHtYHKqpl1", "values": ["6XXXuoJGXCyzA8a5", "uh1LdVOaWOjRinmM", "Xk1CdFvYqfoYzBc1"]}]}, {"operator": "or", "predicates": [{"anyOf": 62, "comparison": "isLessThanOrEqual", "name": "WhYLsAlPZs4v14XF", "predicateType": "SeasonTierPredicate", "value": "C3gIRiYFpDlAEyVu", "values": ["nOP02x00SvR2yNPm", "s1DdUL5bc6QMB9Tt", "vyXITMn2F86xZRHx"]}, {"anyOf": 69, "comparison": "isLessThan", "name": "XqeaYlaYm2XGN51w", "predicateType": "SeasonPassPredicate", "value": "p9aCLekZch7a3b0h", "values": ["rC6ho0XSsR3HPQNr", "FYqZQAUm9m9ht4Js", "tkf3M9oI3ymYms9f"]}, {"anyOf": 43, "comparison": "is", "name": "DJjPEF1LpvoOxT54", "predicateType": "SeasonPassPredicate", "value": "o5sDrk8BZ0jnV4jA", "values": ["AxGZ794ngDQya3dv", "yjxR120zHmDzxvCG", "S2mYl0sA87gQx9kL"]}]}, {"operator": "and", "predicates": [{"anyOf": 29, "comparison": "is", "name": "tEpNGaoJWjZSpZNj", "predicateType": "EntitlementPredicate", "value": "Jl9RPULWpWw5UQBl", "values": ["dfnMF2X9wbQz3euR", "Fdv5aDRSnCrIQ2kC", "4MhLQs8XliOoWqix"]}, {"anyOf": 15, "comparison": "isLessThanOrEqual", "name": "yafmo2nIKr9kryla", "predicateType": "EntitlementPredicate", "value": "aH49QFksDAGUgVcY", "values": ["dzd3mUKKxi2anNFp", "YXwE37QpBIY8LEEt", "CmsemV8gAHQaitMh"]}, {"anyOf": 24, "comparison": "excludes", "name": "eY83sh3B07O0XQWC", "predicateType": "SeasonPassPredicate", "value": "XaPi8oY6VkZP57Py", "values": ["BLX7knj7y5qEOp7h", "d3Y16uyKwJ713r4F", "zPCxvetFhAgAkkEh"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'UpdateItemPurchaseCondition' test.out

#- 113 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '9WC342Uggyr64isE' \
    --body '{"orderNo": "fxbFEabmT6MmgebE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'ReturnItem' test.out

#- 114 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'QueryKeyGroups' test.out

#- 115 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "kQ73QcKQldxIqMgf", "name": "2PaNJqIMDWJUW3I4", "status": "ACTIVE", "tags": ["h0R0RXJ6anzAeqD1", "HlhQ1rqjRECHyhLY", "GnvEdCjYsnh0Y0rQ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'CreateKeyGroup' test.out

#- 116 GetKeyGroupByBoothName
eval_tap 0 116 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 117 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'luvKziVTCPTrqHc7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'GetKeyGroup' test.out

#- 118 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'vqaXxxiGOrXbWC2k' \
    --body '{"description": "23JxAI3kOXwHnS2V", "name": "OESYx49M1JdtImLI", "status": "INACTIVE", "tags": ["eTuHqCNtVlNaGzoq", "pAFVT8PkW7ouFIdl", "TuousRcrhXNAh3Cu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'UpdateKeyGroup' test.out

#- 119 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    '4ou029lD9VLXNwkZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetKeyGroupDynamic' test.out

#- 120 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'WTbX0PZb0I9Qm4xK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'ListKeys' test.out

#- 121 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'ek7ZAZJCk1fizRJy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'UploadKeys' test.out

#- 122 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'QueryOrders' test.out

#- 123 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetOrderStatistics' test.out

#- 124 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    '5JoIlHjTZ4mDmXZI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'GetOrder' test.out

#- 125 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'BTi05akxBYozWzUW' \
    --body '{"description": "4RDVM8Y4PcXDH8RZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'RefundOrder' test.out

#- 126 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'GetPaymentCallbackConfig' test.out

#- 127 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": true, "notifyUrl": "I21znti03vAJizEo", "privateKey": "sjuIsTXKAQ4uWLCM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'UpdatePaymentCallbackConfig' test.out

#- 128 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'QueryPaymentNotifications' test.out

#- 129 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'QueryPaymentOrders' test.out

#- 130 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "gN7rU1yiWEODovRw", "currencyNamespace": "zU7QiANYIF1YbEZw", "customParameters": {"EzBNPCCnVKYp3EQx": {}, "9pSofiZZNcWBxK2S": {}, "cBMbpsjgGDmxpN0s": {}}, "description": "NW3RHxioyNedQ1E2", "extOrderNo": "lQg6rSZj7yw7aPU0", "extUserId": "DqhD5agSwSs0ORF2", "itemType": "EXTENSION", "language": "nkr-842", "metadata": {"mF8pQCrEqdstmoPJ": "urb0FVZK7sonuzTm", "1gseYPsB00G8moKb": "ti7cqKdwnwTyTyr1", "XXDYClbgXA2XATEc": "yKtSz6QsS6BHqs2Z"}, "notifyUrl": "5aknpCHXIr8JndNz", "omitNotification": false, "platform": "iCZiPRCujrja26Yg", "price": 7, "recurringPaymentOrderNo": "8TPWOixbTLfdOF3V", "region": "tCUZ0wN81CLC324P", "returnUrl": "82gdsOb5Jp6oxvvt", "sandbox": true, "sku": "lKFVsSfgNQjKhrrr", "subscriptionId": "StCg99ejNACAFAJl", "targetNamespace": "cWkS5jnhMZsQ8CVs", "targetUserId": "HXHYBx7KkpRAaivn", "title": "5yFNSoKf7tdmVppu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'CreatePaymentOrderByDedicated' test.out

#- 131 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'u6acpUdn8X5IZjtF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'ListExtOrderNoByExtTxId' test.out

#- 132 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'T6Bs8OO0CVqXF6bM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrder' test.out

#- 133 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'zRd2Z2WjutGAptSE' \
    --body '{"extTxId": "S09ZcFGPCokMwrtV", "paymentMethod": "vGhHzNdHMJys9gtF", "paymentProvider": "WXPAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'ChargePaymentOrder' test.out

#- 134 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'A5v9644D4d5jTjzZ' \
    --body '{"description": "8KpdOxrQ8r5te5Fk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'RefundPaymentOrderByDedicated' test.out

#- 135 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'J58wQyrAb67d9kC9' \
    --body '{"amount": 79, "currencyCode": "zvujT8aEay0LM1Ip", "notifyType": "REFUND", "paymentProvider": "ALIPAY", "salesTax": 42, "vat": 44}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'SimulatePaymentOrderNotification' test.out

#- 136 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'DLXNscwbXgdwQnMu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'GetPaymentOrderChargeStatus' test.out

#- 137 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Playstation' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'GetPlatformWalletConfig' test.out

#- 138 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["GooglePlay", "Nintendo", "Other"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdatePlatformWalletConfig' test.out

#- 139 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'ResetPlatformWalletConfig' test.out

#- 140 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetRevocationConfig' test.out

#- 141 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'UpdateRevocationConfig' test.out

#- 142 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteRevocationConfig' test.out

#- 143 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'QueryRevocationHistories' test.out

#- 144 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "ar5GRzOAfOXbaEHF", "eventTopic": "X0sySxhkhCpV5A2Z", "maxAwarded": 77, "maxAwardedPerUser": 75, "namespaceExpression": "HG60X6LS9dYe42oi", "rewardCode": "csvoF2EgsoZSKOzQ", "rewardConditions": [{"condition": "IDAf44vyeNIfF5Ri", "conditionName": "6ydoL4tB0FUpx5TL", "eventName": "iooOqRm1Mxf3Nfjn", "rewardItems": [{"duration": 100, "endDate": "1996-08-19T00:00:00Z", "itemId": "axvejxDQgdz6GmSz", "quantity": 79}, {"duration": 85, "endDate": "1992-07-21T00:00:00Z", "itemId": "WhfLYtrkZ2V3jzXz", "quantity": 16}, {"duration": 23, "endDate": "1990-05-31T00:00:00Z", "itemId": "OqX7FWHHlsxNkfgF", "quantity": 15}]}, {"condition": "XOEWI4jARIQkIiA4", "conditionName": "4zjyRqefUM764xXm", "eventName": "CkJL9p2OQ5Ll9C3f", "rewardItems": [{"duration": 92, "endDate": "1991-04-19T00:00:00Z", "itemId": "HZ2aWSL11msU7Qpc", "quantity": 32}, {"duration": 47, "endDate": "1976-07-22T00:00:00Z", "itemId": "ApFODOqz4FKRWcvJ", "quantity": 71}, {"duration": 29, "endDate": "1982-07-31T00:00:00Z", "itemId": "mG714ZA04yxGcMcY", "quantity": 49}]}, {"condition": "cnNAoxNPXPlSv6kW", "conditionName": "XBTTodpLcEI0mWFW", "eventName": "KlSwI38LyDyLTQxm", "rewardItems": [{"duration": 54, "endDate": "1973-04-18T00:00:00Z", "itemId": "s9J4OjFm6OQMQgWL", "quantity": 54}, {"duration": 16, "endDate": "1973-04-14T00:00:00Z", "itemId": "1CNRQX4T37n6lgMV", "quantity": 14}, {"duration": 39, "endDate": "1986-11-09T00:00:00Z", "itemId": "AKKLcKbPxGvL2c7K", "quantity": 0}]}], "userIdExpression": "T152zR0PBTEvM3Tg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'CreateReward' test.out

#- 145 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'QueryRewards' test.out

#- 146 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'ExportRewards' test.out

#- 147 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'ImportRewards' test.out

#- 148 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    '2MvexshOyL8KXBfL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'GetReward' test.out

#- 149 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'q1zWLmtFhefMqfbE' \
    --body '{"description": "0DZBwK4s4YGhc9qj", "eventTopic": "sGzedPNuJ4GH001y", "maxAwarded": 81, "maxAwardedPerUser": 60, "namespaceExpression": "AJbSLBzqs2u1EntD", "rewardCode": "zkQLgWQHXc3bRYKb", "rewardConditions": [{"condition": "JGFP8HZNLJ7aPbRM", "conditionName": "RrbKjoifZAWt13IS", "eventName": "gdwAum4b3t1Ph8xH", "rewardItems": [{"duration": 11, "endDate": "1973-09-07T00:00:00Z", "itemId": "7O061ScAQ7gSO3GH", "quantity": 29}, {"duration": 23, "endDate": "1993-09-07T00:00:00Z", "itemId": "UCJsDilWhSc6XIxh", "quantity": 86}, {"duration": 70, "endDate": "1989-05-13T00:00:00Z", "itemId": "AnmCFUZdH9CHHozR", "quantity": 42}]}, {"condition": "7fYvmiZxdNpmibPC", "conditionName": "LiJaHXEyuLQOO6qV", "eventName": "UihFznsLFP3013gs", "rewardItems": [{"duration": 70, "endDate": "1981-12-03T00:00:00Z", "itemId": "m6j0Apyricmsku6r", "quantity": 50}, {"duration": 2, "endDate": "1989-08-05T00:00:00Z", "itemId": "UKLhMA3DOG2TuIwx", "quantity": 7}, {"duration": 65, "endDate": "1989-11-23T00:00:00Z", "itemId": "6goe9uJ8PAnT6lHo", "quantity": 26}]}, {"condition": "ar8FKACMfaESKKo0", "conditionName": "RBtKDj9PgWnODMMs", "eventName": "wus0ykKyOTFH9npo", "rewardItems": [{"duration": 19, "endDate": "1976-05-26T00:00:00Z", "itemId": "2W89U6PA5Byr1VJK", "quantity": 38}, {"duration": 21, "endDate": "1991-09-27T00:00:00Z", "itemId": "pin9ZAg5mDVmepTM", "quantity": 17}, {"duration": 87, "endDate": "1977-05-17T00:00:00Z", "itemId": "trz0FUDXjV0GmcFS", "quantity": 20}]}], "userIdExpression": "z0JPLhBV8H4Rs8p9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'UpdateReward' test.out

#- 150 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'AflDjkRQna4afJC9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'DeleteReward' test.out

#- 151 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'mgf0blFr8NUmSdS4' \
    --body '{"payload": {"9CybTerX6wW5HLYx": {}, "M5DN6DJmnjBd7q6U": {}, "3V1i7ip9ibQlReTe": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'CheckEventCondition' test.out

#- 152 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'cqcbggfeYn1FnvTu' \
    --body '{"conditionName": "TrRI8Z87U0Y5R6IU", "userId": "WUGWDcgSJ29Tqsnb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'DeleteRewardConditionRecord' test.out

#- 153 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'QuerySections' test.out

#- 154 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    'tXNBeq2uoLHWsw0m' \
    --body '{"active": true, "displayOrder": 11, "endDate": "1984-04-11T00:00:00Z", "ext": {"KN5EzSmB6aO1Jqyp": {}, "ofIkM1Wvc2CcOra4": {}, "RXenU5naN6UuNARN": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 42, "itemCount": 54, "rule": "SEQUENCE"}, "items": [{"id": "4hpoNUAwafK1QxxK", "sku": "2sBBkQz8nIgoYpZY"}, {"id": "IYto2cpXUnj1kXAE", "sku": "nU9CvpIjJ6tB2fqN"}, {"id": "6D76apW4CsuQx2nM", "sku": "E1E8lGIgW2AWqhlJ"}], "localizations": {"fHgWSAjBmziLkAEW": {"description": "kqMo2uv4G0hb2TC5", "localExt": {"zbxqSMQf3ZXRgmEX": {}, "KPavNUDslWRgXzKc": {}, "DEz6ivQvlpRKagGd": {}}, "longDescription": "8OJWfXgBkof2DgN1", "title": "OHBaKIf5hoyD0oT4"}, "csEU6rwlyAZXRltX": {"description": "TRz9WtMMb9e3S9bi", "localExt": {"Xun5fD0BBCts02Kg": {}, "z1gL82ANle3vQP0F": {}, "7CVBRFOlmRZZrSiE": {}}, "longDescription": "7meOUBb0ZMyPVBow", "title": "pLOlv3wNvAi5e5Cp"}, "2Id8PqgbZMgBinMu": {"description": "WrJOAvHxG7UhRxqt", "localExt": {"eme7V0mE4XANjqP7": {}, "L1mgHDq7oo2SQp9U": {}, "XJYEGGpt55fVsBfr": {}}, "longDescription": "c4OJ06MAINAypeu3", "title": "ZwgLF3XSMYkGVjcY"}}, "name": "e2wwruEu9pKFWxMr", "rotationType": "NONE", "startDate": "1992-05-17T00:00:00Z", "viewId": "lD7N2GNQs0IgMAbR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'CreateSection' test.out

#- 155 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'c0I82pjV4UBb0pZr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'PurgeExpiredSection' test.out

#- 156 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'HFxE9EAcMe8RHXns' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetSection' test.out

#- 157 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'xazB0s0OGtkrGuIE' \
    'zLqOEqdEcHbFrNLq' \
    --body '{"active": true, "displayOrder": 52, "endDate": "1983-01-22T00:00:00Z", "ext": {"BzPWvDsw3y3noSTu": {}, "nCZN39o0vZqaSrHf": {}, "wrqqHXHpPnC56p62": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 63, "itemCount": 63, "rule": "SEQUENCE"}, "items": [{"id": "BMPDDNvuy4MWHW8Y", "sku": "W1euC0ubVpUB9WTn"}, {"id": "YHGmKeMnGn3hXTX6", "sku": "5W9y7jKRgCFKj2fp"}, {"id": "aEDgvMXedU0CtjH3", "sku": "UPJy3CnYG5ypxMPX"}], "localizations": {"Qb9Aa9QMoQgjOf0b": {"description": "yuj8Uxptb2o5jdTr", "localExt": {"eVKh6flE9FaNdFDC": {}, "H0BMCufX5Ln9YKDy": {}, "W9wNSXGvHGabfCge": {}}, "longDescription": "cNknWoEbRoZQ4VuK", "title": "eTQQXDNtjgypGgBt"}, "sGOxHfW3WBHUGCPE": {"description": "vc97uDKDBhngmXpN", "localExt": {"aXSgg2yJzaaUc8p8": {}, "7eTTm092rucPAhna": {}, "YqSLkr3tlvhwbpOw": {}}, "longDescription": "vWyVZbXXgvJKjvhZ", "title": "n4m8rgQUG1gDFutW"}, "edPpbBwcmRSOW5MF": {"description": "hNeBercY9DbSYPsK", "localExt": {"MU8ah8NJxYKZWUVW": {}, "9NyUUdkrKCCEaIUU": {}, "wPgILFEno141RnaY": {}}, "longDescription": "hr2WJyqCvAfWi7mD", "title": "pF9Uxmjutqgr8019"}}, "name": "aVHHRLK0fv936lSL", "rotationType": "NONE", "startDate": "1974-08-06T00:00:00Z", "viewId": "IEvU0JE2kLOQb2CB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'UpdateSection' test.out

#- 158 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'EoV5Nm182ykfY01G' \
    'cykfqRyXIVnis4SK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'DeleteSection' test.out

#- 159 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'ListStores' test.out

#- 160 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "jpYMZV5AVm0vOTpy", "defaultRegion": "2xyajHMUnKflmcC3", "description": "pOWLT8ckEy2SMQcm", "supportedLanguages": ["xebThGYrgNOimVrZ", "zkyKHvwa7cbRj2at", "5ZJSh02srNNRw3Y1"], "supportedRegions": ["j6viZbWeu0WyHCl9", "Xs4E416s1Oq4B0c6", "hcP5jLY1KxbFbyzO"], "title": "ePaXR3ub0i4catfN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'CreateStore' test.out

#- 161 ImportStore
eval_tap 0 161 'ImportStore # SKIP deprecated' test.out

#- 162 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetPublishedStore' test.out

#- 163 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'DeletePublishedStore' test.out

#- 164 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'GetPublishedStoreBackup' test.out

#- 165 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'RollbackPublishedStore' test.out

#- 166 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'OlhlYHQh4VgYhBaV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'GetStore' test.out

#- 167 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'DBRlLxoAzljrhdaW' \
    --body '{"defaultLanguage": "NQoeso9mKjTRboTL", "defaultRegion": "jWe4LfJee5PI5dFv", "description": "5buhIZ4eMnCDQFCY", "supportedLanguages": ["cyYCi2g6s9FQKCfc", "u923YpsdjtVRUIv3", "uIM3CoS6JahcK1Pr"], "supportedRegions": ["6BT8bcW21yKVRUAU", "f5lebfPenWUEBZC8", "keF5vI1QiMb8GRzC"], "title": "ETFWSfJvAnpvMcDH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'UpdateStore' test.out

#- 168 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'wA9mw8ujZZQUNi4N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'DeleteStore' test.out

#- 169 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'DzBP7mmM4ZrXjamc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'QueryChanges' test.out

#- 170 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    '3OX9fjEzscuFPv5t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'PublishAll' test.out

#- 171 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'NXWb8n1xyB1MxbBG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'PublishSelected' test.out

#- 172 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    '0waudrudTuIy3VLk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'SelectAllRecords' test.out

#- 173 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'd3YGg9Bzi8uluQOB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'GetStatistic' test.out

#- 174 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'uTuYNR4hzPkGOuDv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'UnselectAllRecords' test.out

#- 175 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'T1kGGvspIGcvW7T4' \
    'dk3MBzfrSZGlXPuk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'SelectRecord' test.out

#- 176 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'j7q5MjU2f4833bcU' \
    'oBfWLjRXOqaoDBgs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'UnselectRecord' test.out

#- 177 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'PHcNg0Bapd2WF3AC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'CloneStore' test.out

#- 178 ExportStore
eval_tap 0 178 'ExportStore # SKIP deprecated' test.out

#- 179 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'QuerySubscriptions' test.out

#- 180 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'WSPCOIejZfSnIavo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'RecurringChargeSubscription' test.out

#- 181 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'uuFpqcq4Gd9fk7fh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetTicketDynamic' test.out

#- 182 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'p8GNMEX4Ps5vorNX' \
    --body '{"orderNo": "6W3h8ItD6AFXbQvG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'DecreaseTicketSale' test.out

#- 183 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'bKVlE5VulHAZZ2SK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GetTicketBoothID' test.out

#- 184 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'o1C0ktvmekdbic6I' \
    --body '{"count": 24, "orderNo": "n5Hclx6xvlDEhlvz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'IncreaseTicketSale' test.out

#- 185 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'VBqt9fNnODJKrDdt' \
    --body '{"achievements": [{"id": "60vGd1u3lR0fkCW4", "value": 11}, {"id": "mwgELy9cxgDaEUFi", "value": 79}, {"id": "PolaFeEWrqYB9hLG", "value": 27}], "steamUserId": "4YMs1JCrpnpPPUyy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'UnlockSteamUserAchievement' test.out

#- 186 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'CN4MFXqnFzR6C20j' \
    'VL8heTq0Wmf80d7w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetXblUserAchievements' test.out

#- 187 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'zxTtcIyIFNDIRhPI' \
    --body '{"achievements": [{"id": "RCNW8MLBfGHJseAA", "value": 55}, {"id": "xQG5zPNH4eYMWbtv", "value": 21}, {"id": "030WDtRFRReZoX0e", "value": 78}], "serviceConfigId": "wpjuQPo1Bi27Mr8Q", "titleId": "iSBuE8WdxjHSrIco", "xboxUserId": "Ni9NFQFpBDG4baNq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'UpdateXblUserAchievement' test.out

#- 188 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'dGxNGcHil6iUOTWx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeCampaign' test.out

#- 189 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'f4GH0N4kVmTj683Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeEntitlement' test.out

#- 190 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'bw4TKyPTxRuzNfmv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeFulfillment' test.out

#- 191 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'BcfNBFiIw9mkjC9q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeIntegration' test.out

#- 192 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'XOVUNHtfbgUqbLQ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeOrder' test.out

#- 193 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'WTZF8gP7LgkxhkSS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AnonymizePayment' test.out

#- 194 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'ID9PxPyXJHsWipvZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AnonymizeRevocation' test.out

#- 195 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'ANpRXHVqJaiwkoaB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AnonymizeSubscription' test.out

#- 196 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'b8UYH2Pz5V5CtSrc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AnonymizeWallet' test.out

#- 197 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'X7aRP8vZ9a77wOP1' \
    'EPICGAMES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'GetUserDLCByPlatform' test.out

#- 198 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'AbpbjZo2dQM3ZXq9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'GetUserDLC' test.out

#- 199 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'atijyFT8B6hECr4z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'QueryUserEntitlements' test.out

#- 200 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'qhZ9lpllwasnryjx' \
    --body '[{"endDate": "1983-02-20T00:00:00Z", "grantedCode": "lwRVcy18iHO0dKNH", "itemId": "WBFM13F37X9HTu6c", "itemNamespace": "4mMUdJoKmyaU7qTg", "language": "iXHh-er", "quantity": 95, "region": "oSLUIzzQsIU3IZf9", "source": "PROMOTION", "startDate": "1974-12-17T00:00:00Z", "storeId": "6ERWyedt6rkPxW72"}, {"endDate": "1983-07-04T00:00:00Z", "grantedCode": "a2ruQcikSHwHPfyN", "itemId": "RUhMXX7FiB3X634i", "itemNamespace": "uF8pqhqsqRF4kqMb", "language": "IxT_Lf", "quantity": 93, "region": "WbQNFNB2IE43MBCG", "source": "OTHER", "startDate": "1983-03-15T00:00:00Z", "storeId": "CpF2z5O9ugNuq4uG"}, {"endDate": "1981-02-21T00:00:00Z", "grantedCode": "9km7KeyQB3SUe4ug", "itemId": "9J3KKHHaSwFS7fAG", "itemNamespace": "mA4gy2QBm02aTdgp", "language": "Dt-xD", "quantity": 76, "region": "OKQbXXiMg5RAaD5a", "source": "GIFT", "startDate": "1979-11-01T00:00:00Z", "storeId": "yakuryISjsrHy7SS"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GrantUserEntitlement' test.out

#- 201 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'arFsJyanoth2jhzr' \
    '7POOjzRzlmVmpfmM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'GetUserAppEntitlementByAppId' test.out

#- 202 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'q65nYpNAwv9UsvPa' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'QueryUserEntitlementsByAppType' test.out

#- 203 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    '8W0GvPN7gRfsySRn' \
    '2FX0Ac7CzuPXE90u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlementByItemId' test.out

#- 204 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'frBaS458bBTbcqQV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GetUserActiveEntitlementsByItemIds' test.out

#- 205 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'kSIXLGF8dtk8bqcP' \
    'fBJ9GOHxUkZCvqVR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementBySku' test.out

#- 206 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'e3F78EGvZd49hW95' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'ExistsAnyUserActiveEntitlement' test.out

#- 207 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'i4Rm9sBef6ymEEU6' \
    '["G6YVa5GGFvLtWl66", "DAEkAvXqNdnEfei5", "4fLtFTRx1fcfy4uT"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 208 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'Vbxv0l7RvPOKq8iN' \
    'NYLY5oWJPoo8QT5E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 209 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'B5GCOCowERMveDiI' \
    '5BYvV5LF22GlLe48' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'GetUserEntitlementOwnershipByItemId' test.out

#- 210 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'YQRsZpn4zsR2KwSI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'GetUserEntitlementOwnershipByItemIds' test.out

#- 211 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'l0Un3PT2bVzOt2J0' \
    'VxSVRWxJw7idbmOx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'GetUserEntitlementOwnershipBySku' test.out

#- 212 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    '0vyaMbcnlyBvXdpo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RevokeAllEntitlements' test.out

#- 213 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'YVZKx8oPBJncKdya' \
    'bXymlDvbcApuoA5P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'RevokeUserEntitlements' test.out

#- 214 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'CdXT4YD9fDzx1WPp' \
    'vLBMMNJG6TuQ90jh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GetUserEntitlement' test.out

#- 215 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'JCrrsBPvGhWiPLLd' \
    '5eChF7cgujItr2ZF' \
    --body '{"endDate": "1975-07-24T00:00:00Z", "nullFieldList": ["L5qUyimmVzOJYebI", "5Egye4CkNIFSC7Ic", "fdqOCaqFaXYK6AzV"], "startDate": "1979-05-07T00:00:00Z", "status": "INACTIVE", "useCount": 47}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'UpdateUserEntitlement' test.out

#- 216 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'O6RDUgilQHCts6SU' \
    'NxUWIGSkxjKL3EiP' \
    --body '{"options": ["6WeXWf3dBAVfIM2o", "LFaTIhv5XrQvTAdi", "sxP0DyxqSYeCl4gE"], "requestId": "ZgIMDALa4nsITUeF", "useCount": 75}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'ConsumeUserEntitlement' test.out

#- 217 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'uXt6TP1AE4lqnIwL' \
    'N2lGYqQSzIUdIqmV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'DisableUserEntitlement' test.out

#- 218 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'vmcAsPgT6XUEeRKS' \
    'DbomdWWRi7OHZeGP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'EnableUserEntitlement' test.out

#- 219 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    '4o1Tgbe8J8xso71U' \
    'LeHVV40sjQ8mtTN0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementHistories' test.out

#- 220 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    '8V3MMSrrV6FB8DFw' \
    'D7WXkw7te8pQfvxY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserEntitlement' test.out

#- 221 RevokeUseCount
$PYTHON -m $MODULE 'platform-revoke-use-count' \
    '5zPZKMd5ItnXbDbX' \
    'W9KlfgVvjjjExRk4' \
    --body '{"reason": "JHYGa2nnyqvFCYJO", "useCount": 72}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'RevokeUseCount' test.out

#- 222 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    '5vkAkZ8CS09fFrbd' \
    'regZfA6pBIXqoaoY' \
    --body '{"requestId": "oHcrIwc6qkDf3ciu", "useCount": 97}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'SellUserEntitlement' test.out

#- 223 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'uvLmou5AtB5J9XxY' \
    --body '{"duration": 34, "endDate": "1977-07-19T00:00:00Z", "itemId": "3uiEO9E03Jk5kBnu", "itemSku": "o4jR1HYLJjnydxAG", "language": "gqH3ytkroZ2tfFjN", "order": {"currency": {"currencyCode": "F99VixS5Es3u4km3", "currencySymbol": "iKiNLRNa01SihgZb", "currencyType": "VIRTUAL", "decimals": 80, "namespace": "mBdGrJY5J0e9jWcV"}, "ext": {"TCNxjdv8GxhJoB4l": {}, "Akbm1Abh9QxLBfhp": {}, "Op8UlDmFYNBSDEgs": {}}, "free": true}, "orderNo": "Mikj8NQNDlhAhwAc", "origin": "IOS", "quantity": 26, "region": "grqAIaKAUBfyFCxs", "source": "REWARD", "startDate": "1991-02-12T00:00:00Z", "storeId": "AbJnqDKuBGWmZti7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'FulfillItem' test.out

#- 224 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'VJ7O7dNzDBzVmGSh' \
    --body '{"code": "oll8uD1hpBtpd4eL", "language": "BN_igkp", "region": "PCECKSzHTT5beKYt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'RedeemCode' test.out

#- 225 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    '4CDlWZzqpJeQd6tN' \
    --body '{"origin": "Playstation", "rewards": [{"currency": {"currencyCode": "oH4E7JosGEpOKUFW", "namespace": "LtsLf278ybCNhF9R"}, "item": {"itemId": "CyMn5VX87u49Hsq4", "itemSku": "hLUkLLTNMnmlFzzw", "itemType": "pEZwbcCEsJIB0JkR"}, "quantity": 5, "type": "CURRENCY"}, {"currency": {"currencyCode": "2JeqNTxshoZJnsAk", "namespace": "X5sxny0WLYMNb0Qs"}, "item": {"itemId": "xPlx64IQUpSToD0b", "itemSku": "b0SXZUy9H0C213rn", "itemType": "YfZ8c8zURCckWWVl"}, "quantity": 94, "type": "CURRENCY"}, {"currency": {"currencyCode": "AkogbV1bNoJJUhL5", "namespace": "p56dnYHk1iLtAXL3"}, "item": {"itemId": "3WCBnIHoRNWTVvIN", "itemSku": "7c2uh7Ls9nxKiaoW", "itemType": "mrw6n7VYPrZA5UWN"}, "quantity": 34, "type": "ITEM"}], "source": "PROMOTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'FulfillRewards' test.out

#- 226 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'Tj5WST6JF9lLvPS5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'QueryUserIAPOrders' test.out

#- 227 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'jJ58vaRaaxVQeMUb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'QueryAllUserIAPOrders' test.out

#- 228 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    '1kvSj6jcjlxGsLgf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'QueryUserIAPConsumeHistory' test.out

#- 229 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'rhBTH1QV91XmB5Z6' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "Of_ADFw_004", "productId": "CAtuTx2FKoGRQ2i1", "region": "n2WJVJy6yBPVmpbw", "type": "STADIA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'MockFulfillIAPItem' test.out

#- 230 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    '3MwHy6yQU2RSNGWK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'QueryUserOrders' test.out

#- 231 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'nNDFZOok9snWC9CF' \
    --body '{"currencyCode": "iRmbELIzawfXvKu5", "currencyNamespace": "UsuFOUXohEHKCKph", "discountedPrice": 93, "ext": {"64x5pJSHZCzyWKP3": {}, "0KusyvaitTsWtL2A": {}, "AtjEKW31SlSm20Dz": {}}, "itemId": "dKk8FlVcy0hcEMFR", "language": "kn8SAQhtiWA2DHIo", "options": {"skipPriceValidation": false}, "platform": "Other", "price": 65, "quantity": 0, "region": "R98KOabgb0l3UURl", "returnUrl": "tNbDbdvc14DUjHqR", "sandbox": false, "sectionId": "rRJukMTkO00KLgdd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AdminCreateUserOrder' test.out

#- 232 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'r0UUiy5jm1w2g65J' \
    'kaoPuBsuSb0LePf5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'CountOfPurchasedItem' test.out

#- 233 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'b8MJ94DAh1Mc7VkH' \
    'xj8k5KSFtbEoEr5L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'GetUserOrder' test.out

#- 234 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'qKRRnKy17sBYlx7r' \
    'zEm3km2jjNrqEmuE' \
    --body '{"status": "CHARGEBACK_REVERSED", "statusReason": "8lPGFyb34DDyqvcw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'UpdateUserOrderStatus' test.out

#- 235 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'Q3uBzBm355IU5aZu' \
    '5bRvxm9KYr60SyfW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'FulfillUserOrder' test.out

#- 236 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'NB8u5Qlf4KGo0N4g' \
    '7UWRzPsMd90Jrkh4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'GetUserOrderGrant' test.out

#- 237 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'kaHSpxt9CW0WYKxA' \
    'YERGPWWPobC0FiwN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetUserOrderHistories' test.out

#- 238 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'mp1e9JzR7Bat3pdb' \
    'jxfK1P9wjSBBxjKN' \
    --body '{"additionalData": {"cardSummary": "vNPiwIMR5JsbLCG2"}, "authorisedTime": "1997-07-16T00:00:00Z", "chargebackReversedTime": "1985-11-25T00:00:00Z", "chargebackTime": "1990-02-10T00:00:00Z", "chargedTime": "1997-06-14T00:00:00Z", "createdTime": "1996-09-17T00:00:00Z", "currency": {"currencyCode": "hTiaE4WKnEeaUdAm", "currencySymbol": "gmnzKSVlXsRNMykb", "currencyType": "REAL", "decimals": 74, "namespace": "HTrHLmaTGFI1atDO"}, "customParameters": {"VS2F6Is27hn9TSwE": {}, "vJPZcYrXKMnNZIm0": {}, "ooHCnlq1H5IuOvaf": {}}, "extOrderNo": "RIdOXlxxdySywm5h", "extTxId": "2pCfHjg41ZhheDDG", "extUserId": "5HJEFQRX4iVg8TK1", "issuedAt": "1985-09-11T00:00:00Z", "metadata": {"L5o3htHW6Gx9FaoD": "IwGJ3pRyNwb9JgVZ", "ofu7lNuwrS7xf7Bi": "ZI9Jujxs7GKf2LOl", "VbEWajKUr3rx7Sdt": "80ugFtH5gSuRJLGk"}, "namespace": "ijLEJPCdahOY2goE", "nonceStr": "K35CZu7WE18eU5rt", "paymentMethod": "QUWRLvu3WEfwBn40", "paymentMethodFee": 38, "paymentOrderNo": "c4sbYVp7amyDRQk3", "paymentProvider": "WXPAY", "paymentProviderFee": 66, "paymentStationUrl": "iPPjJk44WHDDNDVg", "price": 63, "refundedTime": "1998-07-08T00:00:00Z", "salesTax": 95, "sandbox": false, "sku": "9LoHWS4koauo9jkT", "status": "INIT", "statusReason": "FI60uUrVMjqwLfyh", "subscriptionId": "5UUBSKyenhZ56H3l", "subtotalPrice": 19, "targetNamespace": "4gPPfiJZCSkIQI1h", "targetUserId": "6OjoUY4QXecerXxP", "tax": 29, "totalPrice": 65, "totalTax": 6, "txEndTime": "1996-12-04T00:00:00Z", "type": "an7LUfcQhcxynrF5", "userId": "qWYvJX1f7rYnPbkD", "vat": 22}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'ProcessUserOrderNotification' test.out

#- 239 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'Spxt0aZZr3SbJHkT' \
    'stBGTm2OFHVEoRlj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'DownloadUserOrderReceipt' test.out

#- 240 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'sGF5AYZlEYqTVSCL' \
    --body '{"currencyCode": "emvpJXl2drfGIgu0", "currencyNamespace": "ksPtzdXjtRaBOlhg", "customParameters": {"63PduP0G77oZV8BG": {}, "favVPOhaaf5eExcj": {}, "ABRx8qNMv4XLW0xl": {}}, "description": "b6yLTssmZXLvxRhf", "extOrderNo": "6ICrMr8z6e2UDByc", "extUserId": "YrDDg5iDNLOJJmzG", "itemType": "EXTENSION", "language": "dsk-UAag-BI", "metadata": {"BLbxxmghZp6iVAJ6": "lYOK3cwO9ln34fiL", "xPN5xKoNNYd5p2yV": "sBAv2ZVlrnlY8y91", "hD1ZHh1VjLqa0AOD": "LarMcrlOCtMCyPHn"}, "notifyUrl": "S8uePyiByYQOgKKv", "omitNotification": true, "platform": "kQYaSI3bbqZQkXAn", "price": 38, "recurringPaymentOrderNo": "jLP6zS6a5C6awft8", "region": "NPNJCopJg7IJTeOW", "returnUrl": "oVtcblaKlhxMNx5h", "sandbox": false, "sku": "D1mZ9rW6QdtPe4Yl", "subscriptionId": "eMg5NGs1Pmz6Ameb", "title": "h0FbOWyhAnMP6BdB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'CreateUserPaymentOrder' test.out

#- 241 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'w6d4UOI7Tr9NHcXe' \
    'EWIpyYx9wOuNquv2' \
    --body '{"description": "qkqRR9Nwd8OrgT5H"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'RefundUserPaymentOrder' test.out

#- 242 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'MaelKs3hdNcCPnrm' \
    --body '{"code": "ZDNctQe0IM586qYd", "orderNo": "NvmRITEU7usHknnf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'ApplyUserRedemption' test.out

#- 243 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'YNY7ZXicpAJw7Ct9' \
    --body '{"meta": {"AmEoUNlmQjebaV8c": {}, "13FZxX6qNntgmml0": {}, "ts1uw7WvaRDN6waX": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "BRT78fZc6LpvtY7B", "namespace": "k3j0Rt5ai8x1JHTP"}, "entitlement": {"entitlementId": "fATk2jDkPq7n0Vqg"}, "item": {"itemIdentity": "iBJsxKkXhiEo0RXg", "itemIdentityType": "ITEM_ID", "origin": "GooglePlay"}, "quantity": 3, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "Lk7pTvUfmra4esdZ", "namespace": "2v5vKHsJ5DezdlRl"}, "entitlement": {"entitlementId": "TTSLmDolGdb7yXLA"}, "item": {"itemIdentity": "gfgESHWCK8LccJJm", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 93, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "my1KDJtg9FwOewtM", "namespace": "PXhsCdeun9QN513G"}, "entitlement": {"entitlementId": "mIqfQ8mJbg0TSRxh"}, "item": {"itemIdentity": "I4XnmuQN65HKi5qv", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 76, "type": "ITEM"}], "source": "ORDER", "transactionId": "aYPpdsN55f9R3a5Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'DoRevocation' test.out

#- 244 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    'vIk8F6ffaPP2hJSG' \
    --body '{"gameSessionId": "fW6ap0wsdPdG1EQT", "payload": {"yBW6pf9Ni5L9Nkvu": {}, "qwvTTB6lW4R7V4J4": {}, "6ZNRNpLcI8Vh4bQO": {}}, "scid": "4Nc65zcFKgC0oMEp", "sessionTemplateName": "gLEiStlzCMldcic4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'RegisterXblSessions' test.out

#- 245 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'UcTKpdyvGEAo7B9g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'QueryUserSubscriptions' test.out

#- 246 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'Tsb09YBTADJQdJJb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'GetUserSubscriptionActivities' test.out

#- 247 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '27jRm1nyjO60S3gf' \
    --body '{"grantDays": 72, "itemId": "tl2wHKp1L42H1n3Z", "language": "vUrBoqK16btU6Soa", "reason": "oiAtMgNN8B4oo9jF", "region": "mBqiyicQHvr1zREq", "source": "WwsQaxbdG9IxEoxc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PlatformSubscribeSubscription' test.out

#- 248 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'gOEmGQpzN4HM3v5w' \
    'AiimBQXCxR1cObsy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 249 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    's0SaqnYIBTANshJc' \
    'dLEofyiS3dO8j3ta' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'GetUserSubscription' test.out

#- 250 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'WbShXMN0MRNkMX09' \
    'nQEwFSce6VsIsSSd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'DeleteUserSubscription' test.out

#- 251 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'kP3IqaPaXJc57cVP' \
    '8tXCteutO2hlDa0v' \
    --body '{"immediate": false, "reason": "jy1ei7AZBrLdMJG9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'CancelSubscription' test.out

#- 252 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    '12CJx1H9kC6LzFqk' \
    '7MSt4enxGbQr0GSt' \
    --body '{"grantDays": 28, "reason": "MuhHXzy6WjNeNYuV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'GrantDaysToSubscription' test.out

#- 253 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'WrqxrNDhsaw4vbDP' \
    'KG9aUuCw1ys0BxLb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'GetUserSubscriptionBillingHistories' test.out

#- 254 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'ujuXwWEJUvl8k6CN' \
    'RAfp1s21wulz8cb6' \
    --body '{"additionalData": {"cardSummary": "4KjGDHolxRGH5sQm"}, "authorisedTime": "1984-11-20T00:00:00Z", "chargebackReversedTime": "1996-03-21T00:00:00Z", "chargebackTime": "1990-06-09T00:00:00Z", "chargedTime": "1996-05-03T00:00:00Z", "createdTime": "1991-07-05T00:00:00Z", "currency": {"currencyCode": "3Led5r4J7MEwKxtP", "currencySymbol": "0SkagDcL89Pjvtwa", "currencyType": "VIRTUAL", "decimals": 29, "namespace": "i2fDyXlYJu8bIkkF"}, "customParameters": {"h5LqxA2jff0fTRIY": {}, "ip6c9di8JeefXJ2P": {}, "dIoHdoDHgvwcWxlm": {}}, "extOrderNo": "JoJSnhyf4L6dZ66Z", "extTxId": "i7azAJHL5PE9RVZO", "extUserId": "NAcvKXL23ppvor8g", "issuedAt": "1980-06-20T00:00:00Z", "metadata": {"cvFvYajtvdiqyZzx": "REBSrOk54EyWalLj", "CH6xr3vtL9JTQ5CW": "aR2DvfAXB1SrgLn5", "lUQ3Mt9iye7Sb3gS": "olD6u7wIciVVHoFt"}, "namespace": "t4AP9G3HyBugfRei", "nonceStr": "DLdSTRmElGhVQf22", "paymentMethod": "7V7ADaQHt78b3DT7", "paymentMethodFee": 33, "paymentOrderNo": "tGnH0h3TvkynRdR0", "paymentProvider": "ADYEN", "paymentProviderFee": 63, "paymentStationUrl": "TxgD0WOWAsThZ6Ln", "price": 34, "refundedTime": "1982-08-14T00:00:00Z", "salesTax": 87, "sandbox": true, "sku": "HEb66Bo3ALdAKAQU", "status": "CHARGEBACK_REVERSED", "statusReason": "JpfOhv1dFmmwcX8c", "subscriptionId": "RQpNggDqIfB0DPn1", "subtotalPrice": 58, "targetNamespace": "4CJBY63ASIuZtE2W", "targetUserId": "uycIdVm37lVyVYhb", "tax": 20, "totalPrice": 55, "totalTax": 4, "txEndTime": "1996-10-11T00:00:00Z", "type": "96t5WMLdod5DYqp6", "userId": "XDPJmYDZqWoL8k0j", "vat": 63}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'ProcessUserSubscriptionNotification' test.out

#- 255 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'GzjQQDw2Sc4DTber' \
    'gyuPtRgn6fWMWqZY' \
    --body '{"count": 25, "orderNo": "QEocUfUPAI2O4xXX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'AcquireUserTicket' test.out

#- 256 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'wCsNtkQh3rUUKaN6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'QueryUserCurrencyWallets' test.out

#- 257 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    '6Rjkt9zWkx2SjE4M' \
    'M82Qw4C7p4YKcL3q' \
    --body '{"allowOverdraft": true, "amount": 26, "balanceOrigin": "IOS", "reason": "hk6Ypn8KsMKfuARc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'DebitUserWalletByCurrencyCode' test.out

#- 258 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'HovGUZSzWfq3hqss' \
    'nqUPIJabCPMhqOeD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'ListUserCurrencyTransactions' test.out

#- 259 CheckWallet
eval_tap 0 259 'CheckWallet # SKIP deprecated' test.out

#- 260 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'Xc5LH8xN38dVbdD5' \
    'L9eqq8PstBnVeYTD' \
    --body '{"amount": 17, "expireAt": "1994-02-08T00:00:00Z", "origin": "GooglePlay", "reason": "qOSZxwOb5jkz9ihT", "source": "DLC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'CreditUserWallet' test.out

#- 261 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'GbEQA6nI1VhgTvfz' \
    'wfgRZntMhunn3jSC' \
    --body '{"amount": 61, "walletPlatform": "Steam"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PayWithUserWallet' test.out

#- 262 GetUserWallet
eval_tap 0 262 'GetUserWallet # SKIP deprecated' test.out

#- 263 DebitUserWallet
eval_tap 0 263 'DebitUserWallet # SKIP deprecated' test.out

#- 264 DisableUserWallet
eval_tap 0 264 'DisableUserWallet # SKIP deprecated' test.out

#- 265 EnableUserWallet
eval_tap 0 265 'EnableUserWallet # SKIP deprecated' test.out

#- 266 ListUserWalletTransactions
eval_tap 0 266 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 267 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'ListViews' test.out

#- 268 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    'aA57kR2ACNzI10tZ' \
    --body '{"displayOrder": 36, "localizations": {"01KuFbs8Iv2Ij9B7": {"description": "VD3SyR3UCMUtsTLo", "localExt": {"eVLjxbwUQUVEWE0x": {}, "tN3v8DgFUrjRGzth": {}, "YJKH9vhOLpoWOSJS": {}}, "longDescription": "0kU6fD66yb2MtSEi", "title": "Rgh67ylD9xIb44v7"}, "1qZ2QmEuNVKEmoFS": {"description": "me2B5xb6kbzroGyr", "localExt": {"FwTSdzLOXwPp0OS1": {}, "jOq8HtddVhZ7lfOi": {}, "LRYQkDw4MI4SEqiX": {}}, "longDescription": "Iaji4MOmP494vGlN", "title": "tuMUpS3K4kKGKct8"}, "SZQK7TEK4sZzj7oP": {"description": "P3OeZVILEaXbHnhR", "localExt": {"8gT3if17nsndhy0G": {}, "tga4xRRNit3ApyAv": {}, "kVtA8b9zvOaiSMHj": {}}, "longDescription": "VciAVrPuzKV1Wj7J", "title": "3QrgnhZMehNOncXN"}}, "name": "M18ZiBLaa5iN5b6O"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'CreateView' test.out

#- 269 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'Dd1kj4Qj6RS5aO25' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'GetView' test.out

#- 270 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    '6ceteBSz425Kp2PG' \
    'W8gpXu2mBdRvF84e' \
    --body '{"displayOrder": 60, "localizations": {"zpSeyGBLauvijI1v": {"description": "UPcP4XMNICniSwln", "localExt": {"SYTuNVajwq9onI9N": {}, "BO48v6DUJRe1Lpwu": {}, "ZIoLrVS0AcrY9Vdx": {}}, "longDescription": "zm1SnMFP7ijRI315", "title": "PPtar2LEaQgwjgNb"}, "qY9SXZMP793iEdDg": {"description": "NGO3Dfmm8Q8A03ov", "localExt": {"BcVCnifE0YS9KhgP": {}, "8rRhISjcIvS4I6tz": {}, "dbpIKoQhtOlKvnpf": {}}, "longDescription": "kWv9kQ9FRDgAEVfE", "title": "ZshgoviRWdaswUzf"}, "V36Hwf7gG4iNZfEJ": {"description": "6PGvsYDnaTT5U0e2", "localExt": {"LY7yB5EiqQhvZmCS": {}, "swSPGcfasR2Nrrm0": {}, "JBGkT1hNjHr2icYZ": {}}, "longDescription": "YjakKtgPfJHbuwF3", "title": "aZQrVPWyZpnVjbpo"}}, "name": "tD8HTOOdvA4UhdTY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'UpdateView' test.out

#- 271 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    '2DNsFuGcD5vraJ3W' \
    'ftgZ43r4ZLb7i2SZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'DeleteView' test.out

#- 272 QueryWallets
eval_tap 0 272 'QueryWallets # SKIP deprecated' test.out

#- 273 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 21, "expireAt": "1988-10-10T00:00:00Z", "origin": "GooglePlay", "reason": "aANvZ0I2EGVDWs67", "source": "PURCHASE"}, "currencyCode": "CeZXmSBfgrJcwR3q", "userIds": ["Uvez1lbenagh9kCP", "ktAdH94tziEpGVXs", "NSZTIlkM5IYJnbFp"]}, {"creditRequest": {"amount": 35, "expireAt": "1977-12-28T00:00:00Z", "origin": "GooglePlay", "reason": "WLjHPiPqvMMmYJeK", "source": "PROMOTION"}, "currencyCode": "dIk4I9TU6FvvEdqH", "userIds": ["K1wINqvFrAsrmYYu", "zEDtl5oR9m1dm3fG", "40w6szojkvjtacFS"]}, {"creditRequest": {"amount": 98, "expireAt": "1992-09-17T00:00:00Z", "origin": "Playstation", "reason": "UiqcJ2Jldy73ukTx", "source": "GIFT"}, "currencyCode": "3zAXk9qVrzEqsDwI", "userIds": ["XTWGIrWq2VvH0roA", "20Sfzrc9YYsgvVLN", "wRyHKWspPtJlLDOj"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'BulkCredit' test.out

#- 274 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "3usfhiyCf1FOddxt", "request": {"allowOverdraft": true, "amount": 13, "balanceOrigin": "GooglePlay", "reason": "2sFK1jNp3OwcrNR2"}, "userIds": ["jH7Xx7m8IqIRyUqa", "CbbMa2LqgJOAfFwv", "vgYPIFEVZLGzEglE"]}, {"currencyCode": "e95LWKrkj7TPuigp", "request": {"allowOverdraft": false, "amount": 17, "balanceOrigin": "Other", "reason": "JofgD4VypGT4cTfK"}, "userIds": ["QwS5kNxCPLeKM4cQ", "2UVIQMA6BOpxtYbm", "NrjPqUk0t9aquw2B"]}, {"currencyCode": "l8DlY91SXBeHwrkP", "request": {"allowOverdraft": true, "amount": 32, "balanceOrigin": "Epic", "reason": "7RKEcLehyAowu72o"}, "userIds": ["KCk0zbREElwdZORo", "CUdMES0mVVI1Filc", "O4pajEhkRLMvZnYZ"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'BulkDebit' test.out

#- 275 GetWallet
eval_tap 0 275 'GetWallet # SKIP deprecated' test.out

#- 276 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'cHSHulJHhAnY7QeD' \
    'SRroVkXb4xPPUmUi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'SyncOrders' test.out

#- 277 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["fQvfoZ7n3eRMzJEQ", "YwNGRl2gcWdDmIy4", "Ia2UtS4T1v2y9Je7"], "apiKey": "apQfNdDyT3a0EGpH", "authoriseAsCapture": false, "blockedPaymentMethods": ["0sR85DcnV5fUvb2O", "K8scK4MyIy9F8aBX", "zn8z72hf4D4NOpbU"], "clientKey": "DnyVmYotZCA9LADb", "dropInSettings": "jj6viKPQxoVP77Ru", "liveEndpointUrlPrefix": "EzCRLrZmVBFc2P68", "merchantAccount": "9TFuh1hFoX56gzos", "notificationHmacKey": "v2p6WtLfgPM8t1tg", "notificationPassword": "Whx94eFnxfKdptYc", "notificationUsername": "gxbMBZz4e7YZPuTk", "returnUrl": "hJH0gQxqxmEFytm0", "settings": "rZGlRUuJ7HggA1D8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'TestAdyenConfig' test.out

#- 278 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "DBtkE9JX7oDFoXpZ", "privateKey": "9sy7dEuiT7OrRdHj", "publicKey": "zNhfc3uokglAmxb5", "returnUrl": "eaYqdXkBqt2UfrBE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfig' test.out

#- 279 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "1JhOOdYFVxYR0Xha", "secretKey": "Q30cHb0re0TJwuS3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'TestCheckoutConfig' test.out

#- 280 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'DebugMatchedPaymentMerchantConfig' test.out

#- 281 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "NPZi6h1nN0txahdh", "clientSecret": "p0tmV4jjIkC8lqpB", "returnUrl": "9cbsDlreKfjfpUz3", "webHookId": "jtg1bKaDBROm6TJ2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'TestPayPalConfig' test.out

#- 282 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["qMul8cl55U4RB2xV", "HiARcFLzOW7Uz8Gz", "5TN3bJ6UVKAdNp2R"], "publishableKey": "eRw5WPjohGmJKCjb", "secretKey": "EtFKLGvBQOS81LpI", "webhookSecret": "h5QqEOKQXnUYMXvJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'TestStripeConfig' test.out

#- 283 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "JrO8K9yVaSV6MkQp", "key": "Pd0utGYDVGwpKCkO", "mchid": "gcVrMw1DAaC3oGYm", "returnUrl": "bE9E87RTBvlu7lo1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'TestWxPayConfig' test.out

#- 284 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "foXU28IE7EVvQkoq", "flowCompletionUrl": "OZIFeJQSrnPscIMJ", "merchantId": 89, "projectId": 90, "projectSecretKey": "StF3LRa7q49EdmhB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'TestXsollaConfig' test.out

#- 285 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'pI13Mh9tHYQilnHr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'GetPaymentMerchantConfig' test.out

#- 286 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'NI7XsRCD3YOzMK1Z' \
    --body '{"allowedPaymentMethods": ["WOxnVMpyEziAPi9d", "Bg5J0me0BhvZVrOs", "ZSqQjmdJGa6AahLv"], "apiKey": "hIfKDFkuldV3vhNC", "authoriseAsCapture": true, "blockedPaymentMethods": ["GV0JiE7ZbWP80Zct", "unIw8zzjr1oeY1p4", "P0xno1luSqciM4rf"], "clientKey": "qsoJ7AkLiYjJvlKh", "dropInSettings": "H1ccnrp3T2fKqq9C", "liveEndpointUrlPrefix": "zJlj0UGtCqJnqpau", "merchantAccount": "r75iSsLSqGKfGJDm", "notificationHmacKey": "zFepqpoIzofQ17bQ", "notificationPassword": "pOtqU8Y63DFSnh5I", "notificationUsername": "bdftTLRLUGwenKzX", "returnUrl": "RT99U5B5j9CT2YI1", "settings": "qt4AYI54fgXlDCLF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'UpdateAdyenConfig' test.out

#- 287 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'wNGzR7zvW33BLQ5N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'TestAdyenConfigById' test.out

#- 288 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'yteBZg7IM93LGdMK' \
    --body '{"appId": "ko1WdXcuqjnyBh93", "privateKey": "6FR7fT7f00EZw65i", "publicKey": "q4fnnFA4ieAeG0Jc", "returnUrl": "WHLxYckKH0j3mmJ2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'UpdateAliPayConfig' test.out

#- 289 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'Y5FsP84rgl0AQlBi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'TestAliPayConfigById' test.out

#- 290 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'keTeA9eq8hIKrzAU' \
    --body '{"publicKey": "sKqpjQGHI3Wkg4HI", "secretKey": "rEmqfnhjjtIQ7ipA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'UpdateCheckoutConfig' test.out

#- 291 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'fw6xTfJiEwGhGbMC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'TestCheckoutConfigById' test.out

#- 292 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'nu8NHDPiOQzKhR4x' \
    --body '{"clientID": "3pYj5be9x03hTzeU", "clientSecret": "aFK6P6yxOlFhdtyr", "returnUrl": "LQHkz1Es8nQbk4Sz", "webHookId": "tMOdFHQXjAZrDNCo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'UpdatePayPalConfig' test.out

#- 293 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'J22RroweT9Xanvbg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'TestPayPalConfigById' test.out

#- 294 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '8nAmHsrmzoPN3GJz' \
    --body '{"allowedPaymentMethodTypes": ["77wPralgkstRsUi0", "oaze9bInjdq27Rgg", "uQ45JSoDgfLayvPN"], "publishableKey": "WmvzOaDtopfGPnF4", "secretKey": "i8PP7jdmy3KsRDI0", "webhookSecret": "m4nKNGlXp2jJfLGd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'UpdateStripeConfig' test.out

#- 295 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    '0zQqYmGkk8Pcq83l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'TestStripeConfigById' test.out

#- 296 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    '2hWOuqsilAWXNFfx' \
    --body '{"appId": "IWM9jL08jtCIr8ST", "key": "Wuiyz2eOgny7d8WV", "mchid": "lcOTKoZimYNHB2ph", "returnUrl": "25oEsCRrlY6AX1ks"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'UpdateWxPayConfig' test.out

#- 297 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'mS6Cm75yFZVt1HZP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'UpdateWxPayConfigCert' test.out

#- 298 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'cFbl4XrKUphPevxF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'TestWxPayConfigById' test.out

#- 299 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'z1b7Q3NwVn8PU8Jf' \
    --body '{"apiKey": "FPiZpcqq8qH8MR9K", "flowCompletionUrl": "5kA67H3XOJlQfOCN", "merchantId": 21, "projectId": 71, "projectSecretKey": "eFNIQusmcAYWBLZg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'UpdateXsollaConfig' test.out

#- 300 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    '00dmqgWRmPnXpH8x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'TestXsollaConfigById' test.out

#- 301 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'ifqavEfKK0Dei3Ch' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'UpdateXsollaUIConfig' test.out

#- 302 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'QueryPaymentProviderConfig' test.out

#- 303 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "GKtgDjDah0UewhSy", "region": "u7JMOvmbqHpLDqY6", "sandboxTaxJarApiToken": "4bsfWMA6zIWiASra", "specials": ["STRIPE", "STRIPE", "CHECKOUT"], "taxJarApiToken": "xEEE1xE1teY5Ma16", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'CreatePaymentProviderConfig' test.out

#- 304 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'GetAggregatePaymentProviders' test.out

#- 305 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'DebugMatchedPaymentProviderConfig' test.out

#- 306 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'GetSpecialPaymentProviders' test.out

#- 307 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'UweJSX5gGRLc0R4v' \
    --body '{"aggregate": "XSOLLA", "namespace": "MPlJqY7ujDDLuoQJ", "region": "spLLZbnusI9Nty8K", "sandboxTaxJarApiToken": "pP0RHI8icuY92iMk", "specials": ["PAYPAL", "CHECKOUT", "XSOLLA"], "taxJarApiToken": "EKRgT1zZPaKlnIY3", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'UpdatePaymentProviderConfig' test.out

#- 308 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'GLET05JQWhwijC7y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'DeletePaymentProviderConfig' test.out

#- 309 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'GetPaymentTaxConfig' test.out

#- 310 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "dSFRQ4V5OyypfQ5i", "taxJarApiToken": "JtNrVbjnyYERw24T", "taxJarEnabled": true, "taxJarProductCodesMapping": {"zna0T42qYhPsMMX4": "Dg6kBhhmAmGWgONb", "saq6FR89FVcE5vUW": "RlOGzgjnghEeYuTA", "3fZ9naIn2EhpBnam": "OqQfF1i9lDi17Tuz"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'UpdatePaymentTaxConfig' test.out

#- 311 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'OCkfreVXF3F57a8i' \
    '8FBQVq8F8UHFjnV4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'SyncPaymentOrders' test.out

#- 312 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicGetRootCategories' test.out

#- 313 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'DownloadCategories' test.out

#- 314 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'a8qkT208c4Eqnacz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetCategory' test.out

#- 315 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'anLg5zKTtaPmN6tW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicGetChildCategories' test.out

#- 316 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'QqV1V78ZIjg1EtBZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicGetDescendantCategories' test.out

#- 317 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicListCurrencies' test.out

#- 318 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'GetIAPItemMapping' test.out

#- 319 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'bAWeHGdU9mllRGwL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicGetItemByAppId' test.out

#- 320 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicQueryItems' test.out

#- 321 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    '1hP0ILR0Ela7ZLwT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicGetItemBySku' test.out

#- 322 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'A0wt5op6F6Z1a1sB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicBulkGetItems' test.out

#- 323 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["mUaCx3pnw2UqOcXF", "VD0pboKkDZJufSvo", "XGyr43yZ4vipgYCZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicValidateItemPurchaseCondition' test.out

#- 324 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'iVhuUlRF8bgS0Z3T' \
    '7DC5TO5zuEOtCw7S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicSearchItems' test.out

#- 325 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    '3b8oIW8rduVEpRjb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicGetApp' test.out

#- 326 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'hlZ8rATgmfiV8x6L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicGetItemDynamicData' test.out

#- 327 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'tOu3SAtYQcZ2M0m2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicGetItem' test.out

#- 328 GetPaymentCustomization
eval_tap 0 328 'GetPaymentCustomization # SKIP deprecated' test.out

#- 329 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "eu4s6Vt77Z7VYCzM", "paymentProvider": "ADYEN", "returnUrl": "AxZUci2CC1SEp55T", "ui": "imgFFENNE15OyfCm", "zipCode": "3JLSdyxEkUrupaAg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicGetPaymentUrl' test.out

#- 330 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    '8X3qrN4NJQHucDPc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicGetPaymentMethods' test.out

#- 331 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'orTkEhvJJBHTf7gH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicGetUnpaidPaymentOrder' test.out

#- 332 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'QdNqoM8JpOKNAU33' \
    --body '{"token": "hDeba57ZY9YNNrTc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'Pay' test.out

#- 333 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'dcnzDvUHgR2bX5lx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicCheckPaymentOrderPaidStatus' test.out

#- 334 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'ALIPAY' \
    'AjwbpWgnIzWRtzH2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentPublicConfig' test.out

#- 335 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'wWVwIlnX0PYoF43q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicGetQRCode' test.out

#- 336 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'dlpBadznEopQjdlm' \
    'CKky8f25OS6EXRpH' \
    'CHECKOUT' \
    'zG1FmCCywXfHj329' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicNormalizePaymentReturnUrl' test.out

#- 337 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'WcNk8k8qK4gJrux6' \
    'WALLET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'GetPaymentTaxValue' test.out

#- 338 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'UcJCHbaM8I2sFnR0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'GetRewardByCode' test.out

#- 339 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'QueryRewards1' test.out

#- 340 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'i1EP6ekQzrmDqC82' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'GetReward1' test.out

#- 341 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicListStores' test.out

#- 342 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicExistsAnyMyActiveEntitlement' test.out

#- 343 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    '7Ayw8HdDdyIIR5cs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 344 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    '3jEJm9cqIJO6etrg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 345 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'PcoqdV16bQzZjJii' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 346 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicGetEntitlementOwnershipToken' test.out

#- 347 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "JFm6K0MsbekvKte7", "language": "yfmB-iKTZ", "region": "HWygfQVPPqE6XNxm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'SyncTwitchDropsEntitlement' test.out

#- 348 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'rOFx6AenNJCzeLqj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicGetMyWallet' test.out

#- 349 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'OhHMsieBzDBhi6oZ' \
    --body '{"epicGamesJwtToken": "hjEnbkZp3ZHkJnKJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'SyncEpicGameDLC' test.out

#- 350 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    '2ksygYZVyQIUbI6v' \
    --body '{"serviceLabel": 99}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicSyncPsnDlcInventory' test.out

#- 351 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'GvhR6HS643vgPdN2' \
    --body '{"serviceLabels": [24, 26, 99]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 352 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'T1Ois7OsTElVV8XJ' \
    --body '{"appId": "7Jg2JP8JKQ1Fia4j", "steamId": "QzEGsQTmKTeq9hsX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'SyncSteamDLC' test.out

#- 353 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    '0E1pSQzkJa95maQL' \
    --body '{"xstsToken": "AJLoGMHeP6XZjcdr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'SyncXboxDLC' test.out

#- 354 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'sSt4spX9eT2jwH7O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicQueryUserEntitlements' test.out

#- 355 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'DZfqj84XXtngQG9E' \
    '03eUwSRO9eoka5Uf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicGetUserAppEntitlementByAppId' test.out

#- 356 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    's9UTtAImWjuqib3n' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicQueryUserEntitlementsByAppType' test.out

#- 357 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    '34NGuMLQ7iPaGqel' \
    'c3lbrPkW2foKqIz9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicGetUserEntitlementByItemId' test.out

#- 358 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'z80ICxp4M7Opf9oR' \
    'lvBsYj4IcbdUz2cB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicGetUserEntitlementBySku' test.out

#- 359 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'WKIUuPLfvTFl9DbH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicExistsAnyUserActiveEntitlement' test.out

#- 360 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'QLYWCwsAVcQ0VGEU' \
    'xlcNQWOpRLETWMAv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 361 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    '0uJ30L51TxrdknW5' \
    '2x2o1yDO6bwcKYeF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 362 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'oxUWdvEBTwUyzq5b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 363 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'zdNEHv6GmaokUOIa' \
    'dEDAmp524IRplmKc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 364 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'wvGguz7SAcGvV4lC' \
    'JgcrAut2gYpuKbE8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicGetUserEntitlement' test.out

#- 365 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'ulWHoG1zC1K7oT3i' \
    'Ne5yhZbqmAgI6LUa' \
    --body '{"options": ["uh1GlEo4faeHIeXS", "ROEb0iXucFoRm7DF", "w5ArJzNAElybJSWL"], "requestId": "bZCdcwYHhOIGu0vX", "useCount": 77}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicConsumeUserEntitlement' test.out

#- 366 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    'pEZmtrpzaLfufFoH' \
    '0vIAAZ3D07rENh4L' \
    --body '{"requestId": "QyLj7QmX1ijJDLqj", "useCount": 51}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicSellUserEntitlement' test.out

#- 367 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '3o0r9VYIh3Jj15pf' \
    --body '{"code": "4bXUrytKH5rM54pV", "language": "nnQY_rjjr-236", "region": "q9UUur5zNNHf53CH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicRedeemCode' test.out

#- 368 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'NLzMNElAaW04oQXa' \
    --body '{"excludeOldTransactions": true, "language": "mAH_Sn", "productId": "ftyZklpNPl881jOS", "receiptData": "vCvj20fgU419HQGu", "region": "g3ApiXAivNHSVq7H", "transactionId": "y14PWQgyxy3AZ9Q2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicFulfillAppleIAPItem' test.out

#- 369 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    '9c3FLGnsacdakVuB' \
    --body '{"epicGamesJwtToken": "k3eUIeGfzqhOBhMJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'SyncEpicGamesInventory' test.out

#- 370 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '8BCR0Pr4lUceWJid' \
    --body '{"autoAck": true, "language": "eilO_IChR-142", "orderId": "25k1H2s4V2KN0PLl", "packageName": "R8cmHo3XR1GqcOtF", "productId": "ZDsjHNjL304sV2h9", "purchaseTime": 31, "purchaseToken": "0ibuYM4wRG0lN0X5", "region": "kMcmOdLuSZLYkIAB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicFulfillGoogleIAPItem' test.out

#- 371 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'Wq6LMyqmJBIayJYI' \
    --body '{"currencyCode": "YPCQLT4UtcQmxMnH", "price": 0.9360893084535981, "productId": "08ZzCha8xLBGlN6G", "serviceLabel": 67}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicReconcilePlayStationStore' test.out

#- 372 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'R08dqYhgjNEKxgig' \
    --body '{"currencyCode": "qjIaaftddfk3N3FU", "price": 0.531070749996369, "productId": "t7hRJWz66woOwujZ", "serviceLabels": [17, 36, 33]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 373 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'aDmZpx6FpqFAR1FP' \
    --body '{"appId": "2qDxqukQGmZ8QPR4", "currencyCode": "rrBu0xMLSZM2reG0", "language": "av_Gy", "price": 0.5368147847117882, "productId": "8U04S5FCpmYeCJwM", "region": "PHx5qbq2es6TWDRr", "steamId": "2bTPUxXfvsOwNGBX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'SyncSteamInventory' test.out

#- 374 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    '5w0CKM4KgSaTFkYq' \
    --body '{"gameId": "yDBVeKhVWlgMI2a4", "language": "sUyV", "region": "1fc6lGGfo4IJnwUy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'SyncTwitchDropsEntitlement1' test.out

#- 375 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'JDPc4Bi2BT8WWMNZ' \
    --body '{"currencyCode": "7MQ0xXiAUp37WFZG", "price": 0.8689987438922736, "productId": "bPREFnLFvdjVz0bF", "xstsToken": "4f5a8wwsXbVcGQFc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'SyncXboxInventory' test.out

#- 376 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'H3a88llB2KCetfPN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicQueryUserOrders' test.out

#- 377 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'aSebuaBm42ZRTd7o' \
    --body '{"currencyCode": "tFS5xUblp0GJFHhD", "discountedPrice": 56, "ext": {"bKgIoGvyLZGyV2nN": {}, "IKGyVatdlj1BAkRk": {}, "fD5QI95OctLxGf6S": {}}, "itemId": "ilVAgYAplPOe3Qpv", "language": "AdR-EEWf", "price": 1, "quantity": 19, "region": "83cvnj5Ut4YTxIBM", "returnUrl": "ay1sHQoxlbhfnh1l", "sectionId": "arFYcM0OoFV93hG5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicCreateUserOrder' test.out

#- 378 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'GVHrcfGpWAuflVB1' \
    'opvSUYD0K7Y5bCch' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserOrder' test.out

#- 379 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    '6ur33FthZ0FOWCXy' \
    '70cM2iJtgpMAKpwx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicCancelUserOrder' test.out

#- 380 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    '7WN70b3lBnY61oiT' \
    'LHdBClY8kIt120hK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserOrderHistories' test.out

#- 381 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'XcluepkD2cjAyU8t' \
    'hUL0rK6YlDgS7DF6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicDownloadUserOrderReceipt' test.out

#- 382 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'WHO4xKI3DzXlqZ97' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicGetPaymentAccounts' test.out

#- 383 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'UEX77J2ZaCgl5zfv' \
    'paypal' \
    'IlAkHgxsULSOBCWJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicDeletePaymentAccount' test.out

#- 384 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'H9jh3zB9JEYLPl0R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicListActiveSections' test.out

#- 385 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'jsq0yRuQRarSVoIl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicQueryUserSubscriptions' test.out

#- 386 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'eZ7PtbbcriinQEr7' \
    --body '{"currencyCode": "oILTomzVEdqAFGju", "itemId": "RaB4ccMpIH8Lan5N", "language": "UvR", "region": "qvd6is3iMkUYXGJ5", "returnUrl": "2LhrcYmNqU8FNr2S", "source": "f2vnHOZhdmTd8ENV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicSubscribeSubscription' test.out

#- 387 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'RZH8lmeTjzHxgwKa' \
    'MjUptGDH129SPAGK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 388 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    '8QxsXGgAK3QR9g0C' \
    '7nE1t58LdpQQXSvH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserSubscription' test.out

#- 389 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    '7kwH9PKAIEqRaoWk' \
    'dV23II0TEDjWcIzf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicChangeSubscriptionBillingAccount' test.out

#- 390 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'sSrF9JBbs3ioKOVc' \
    'rfhki2j4K5qHkvYS' \
    --body '{"immediate": false, "reason": "Qy5mWp1i7XAgvpl6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicCancelSubscription' test.out

#- 391 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'VM46gEFqwJcySobY' \
    'FsOpqr85xVvxj351' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserSubscriptionBillingHistories' test.out

#- 392 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'm51uwOolqmdu4KlK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicListViews' test.out

#- 393 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'Lptx5DKFWYNaRNbz' \
    'pFsjJLszOiHFs5xA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicGetWallet' test.out

#- 394 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'Vg39H5hnoP20tlph' \
    'ew85KPyj4EGRMQTe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicListUserWalletTransactions' test.out

#- 395 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'QueryItems1' test.out

#- 396 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'ImportStore1' test.out

#- 397 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'DUODYJlL3GEb7CgX' \
    --body '{"itemIds": ["WeXJrzNrt0fkjelr", "7hVgkvQdto2PuC14", "Lu2G4Mw4Mo4TirGD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
