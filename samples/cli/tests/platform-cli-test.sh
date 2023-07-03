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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "EAxcVpFrttufHIRd", "appType": "SOFTWARE", "baseAppId": "9UzVRiXbqlAw7r6W", "boothName": "2ktQG0h5JAav5kRa", "boundItemIds": ["Q1g7qbPngUNB1vRo", "62WopBJHPtcDs8bB", "ZLCXLx8bbgorQeFb"], "categoryPath": "dwpzS6DaDpv8N7ZQ", "clazz": "VqGj6oDLjWjkY1aX", "createdAt": "1977-05-08T00:00:00Z", "description": "FcDtgOjchIua5tWE", "displayOrder": 71, "entitlementType": "DURABLE", "ext": {"JSDgY1TXp38zsCTC": {}, "rbCbPOyNQkT7NvyE": {}, "3cwyALczNIicXm7a": {}}, "features": ["T5FvdiRilZ7oFgx4", "gSrjJW2OQNOs1PXh", "c8OumKtPDKJDXn7Z"], "fresh": false, "images": [{"as": "68su8XfqlqNiTvB6", "caption": "SdAdIhUDrwoZ5Mec", "height": 7, "imageUrl": "pc1C8XfwHuKeb9l3", "smallImageUrl": "rGN9A3sNm84hddSp", "width": 69}, {"as": "cBdW19m4eu6d5tA5", "caption": "jUmiTqpyhPFdxLzF", "height": 87, "imageUrl": "d8lDR6qVNPRZYdFL", "smallImageUrl": "IAjGGJddVCvu9vx5", "width": 76}, {"as": "vkLGMS0lyuI9a2I9", "caption": "u6Vpbsx5w8hqUI06", "height": 96, "imageUrl": "SuB0y5WUlrMdI4sN", "smallImageUrl": "veabntBSxTeIv53H", "width": 66}], "itemId": "YupD391C2qtPYoka", "itemIds": ["hFjkQsfCaTmt1d67", "FXGk2s9Q0mPVo3tw", "u0MesTCf9x4rt69l"], "itemQty": {"na7qxNeIxPz6MbwL": 67, "IY69z1UaLqYSYWyt": 77, "XQ0yYoNRKd3IL5TA": 87}, "itemType": "CODE", "language": "6iiPlSC2uE4o5Vwd", "listable": false, "localExt": {"m3MqHcUmLZZbSqb8": {}, "RwNmn9HrNQy4uZAA": {}, "iE0mit9RGCCHYzUO": {}}, "longDescription": "cEdscKHPEqgA8yu7", "lootBoxConfig": {"rewardCount": 98, "rewards": [{"lootBoxItems": [{"count": 94, "duration": 22, "endDate": "1994-05-19T00:00:00Z", "itemId": "Jt4Ymos9Jcdos4fY", "itemSku": "cTVU6RBt0zYoMcHy", "itemType": "CUEXlAvxJMdalwSy"}, {"count": 23, "duration": 85, "endDate": "1975-11-14T00:00:00Z", "itemId": "bOItRMvqtlB2jJCS", "itemSku": "QT279ZZPYGu0rdlg", "itemType": "dWyOtXi3choQrpOs"}, {"count": 61, "duration": 25, "endDate": "1985-08-26T00:00:00Z", "itemId": "U5SepjChB3V0v52D", "itemSku": "lym6puQ23xoJ8aeC", "itemType": "naLpUKp44YUDjasW"}], "name": "IPUvmEejtGeoyIPa", "odds": 0.9714507862859705, "type": "REWARD", "weight": 90}, {"lootBoxItems": [{"count": 7, "duration": 37, "endDate": "1977-06-26T00:00:00Z", "itemId": "ykmoPYgc2L4jk4Lo", "itemSku": "0LSP0pf4IxjUkl53", "itemType": "5X3ateEKDpADz1x3"}, {"count": 32, "duration": 30, "endDate": "1985-08-29T00:00:00Z", "itemId": "9xv32e8c5csSovoq", "itemSku": "sZNBdte9NDUPVJf6", "itemType": "c2Z0QZxfgPubTDIH"}, {"count": 36, "duration": 83, "endDate": "1982-11-17T00:00:00Z", "itemId": "qAThuwjRHpKKTlmV", "itemSku": "r9XuoJbRFQSKVPHb", "itemType": "n4Xxtu7LQRENjEEz"}], "name": "tx1WsYSiZqan0nSB", "odds": 0.5728983498865392, "type": "REWARD", "weight": 30}, {"lootBoxItems": [{"count": 0, "duration": 57, "endDate": "1981-10-04T00:00:00Z", "itemId": "91GXlvPG6bFYReVH", "itemSku": "QipcCx9Zw5D2L7vI", "itemType": "YhGGSyEW4ZJJ42d3"}, {"count": 85, "duration": 25, "endDate": "1985-03-04T00:00:00Z", "itemId": "ddN8S48l9lyNApfl", "itemSku": "xqMrj3oZk03QXcKM", "itemType": "DYDDxHSZjtqXyJ58"}, {"count": 10, "duration": 36, "endDate": "1977-09-29T00:00:00Z", "itemId": "jX9fDmIbeZxzfTcy", "itemSku": "iuATus9hsfpFDcSD", "itemType": "G8aMVGLiBNrDjqox"}], "name": "cwgGLXpUL4pp2ncY", "odds": 0.422365902819149, "type": "REWARD_GROUP", "weight": 21}], "rollFunction": "CUSTOM"}, "maxCount": 39, "maxCountPerUser": 82, "name": "fIovmv9gsR5cJcHm", "namespace": "3SZLxoRDFuuuySj2", "optionBoxConfig": {"boxItems": [{"count": 56, "duration": 1, "endDate": "1975-06-17T00:00:00Z", "itemId": "LJE8HoRS1X2PFAAM", "itemSku": "wzHPxB1UskYs4Yw2", "itemType": "0DOqOBSC2DKHRuPM"}, {"count": 80, "duration": 22, "endDate": "1995-02-07T00:00:00Z", "itemId": "H8Yb33T5UBJCjfcn", "itemSku": "LRfxeCSz9WEi8Kll", "itemType": "oeH0JT1yduat2vQR"}, {"count": 3, "duration": 66, "endDate": "1975-02-16T00:00:00Z", "itemId": "Bfsu4jmsRE2w1yEk", "itemSku": "Lgh3tIYt4SqYUTLD", "itemType": "x9gIiDandpGT2t24"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 83, "comparison": "isLessThan", "name": "Mh5eC3IHeHSKLCa3", "predicateType": "SeasonPassPredicate", "value": "AE7WIsfmx40NLRc6", "values": ["nduEEQlULdJz4mnR", "oKFeIaFQCYoDPICp", "m8heKnWhzfe2Nube"]}, {"anyOf": 56, "comparison": "is", "name": "CAcf80zfFyabWAgI", "predicateType": "SeasonTierPredicate", "value": "hRkloqxM3gpwxcfM", "values": ["zJEN2VHzih3bit0V", "y9XzjjI5YbsKoADk", "Wn3CO39PXDNxtXge"]}, {"anyOf": 83, "comparison": "isLessThanOrEqual", "name": "3FgkXhjDzaQY3snn", "predicateType": "EntitlementPredicate", "value": "ZkP7cFdP43e5dC9X", "values": ["IBudfZgrbHDIDm4h", "MzF4TxodenSrUTvf", "qU0bfoMm5cTtFWbo"]}]}, {"operator": "or", "predicates": [{"anyOf": 4, "comparison": "isLessThanOrEqual", "name": "6IjGa23YvYmmDg7V", "predicateType": "SeasonPassPredicate", "value": "PXIuvUYTZBRujIUE", "values": ["urjh2imdb4rbkXj0", "1Tq5jyAZvkRCMNFI", "ZwsVC0gL97ZVJSPq"]}, {"anyOf": 74, "comparison": "isNot", "name": "iwv1qlYB1RSKs6gQ", "predicateType": "SeasonPassPredicate", "value": "ZGF7uYnGzpipNDig", "values": ["NJma1MbqqZtfNWql", "D9eOziYRFOn0jJLH", "4nmwAft4gqkNNlWk"]}, {"anyOf": 58, "comparison": "isNot", "name": "LxhvNXTwGBCtohLt", "predicateType": "EntitlementPredicate", "value": "7MUBG7qtPu64yAtU", "values": ["RKLRkb738HGS6rDg", "MdIIlhS1fSiM9331", "m7Ta1PsKc50Kv6ec"]}]}, {"operator": "and", "predicates": [{"anyOf": 30, "comparison": "isNot", "name": "mQoIXimBJehyxlNs", "predicateType": "EntitlementPredicate", "value": "nGBt4P7WnbdSJtjX", "values": ["7ZshZyZl5x4bRXBH", "UTrDzZSKscfOcYu3", "dpCROYqUiGKXVFCm"]}, {"anyOf": 31, "comparison": "isGreaterThan", "name": "ogaKt2ujQSa3Zdb6", "predicateType": "SeasonTierPredicate", "value": "UXmy0Zp6iIaTIKUk", "values": ["zwLR2AK6eXUGPJsw", "mkk9QM0NBMA9ORxp", "1fiP80G9Pclxcft2"]}, {"anyOf": 42, "comparison": "is", "name": "DpZxkrQDXuNFviMa", "predicateType": "SeasonPassPredicate", "value": "uGKHhMRWLVd3DlhL", "values": ["Mrok0WvGYYnx4V70", "uIpomM8sm1MiaI1m", "X2tJoARtdbBe7uds"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 49, "fixedTrialCycles": 9, "graceDays": 2}, "region": "ue9nzJ6fH24T805t", "regionData": [{"currencyCode": "Vg8JqU0jZpjvsugA", "currencyNamespace": "OS7u8RiWyerCSa8S", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1997-06-30T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1980-01-29T00:00:00Z", "discountedPrice": 55, "expireAt": "1979-03-16T00:00:00Z", "price": 36, "purchaseAt": "1998-10-10T00:00:00Z", "trialPrice": 16}, {"currencyCode": "xsB0NRsB1fPqqRRu", "currencyNamespace": "lpqpymDkQhtrHWwR", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1977-07-07T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1995-08-07T00:00:00Z", "discountedPrice": 56, "expireAt": "1991-10-31T00:00:00Z", "price": 33, "purchaseAt": "1983-12-03T00:00:00Z", "trialPrice": 68}, {"currencyCode": "wbhMssAHjapIkY9R", "currencyNamespace": "f4wP57dBZNR88YbC", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1977-01-29T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1992-07-15T00:00:00Z", "discountedPrice": 82, "expireAt": "1977-11-12T00:00:00Z", "price": 10, "purchaseAt": "1984-07-26T00:00:00Z", "trialPrice": 4}], "saleConfig": {"currencyCode": "VrjfGXZnqAQUoY1G", "price": 20}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "Zp50CnPb71ORYcmQ", "stackable": false, "status": "INACTIVE", "tags": ["aKQDOJvrTefglSs6", "g4iY9u02aCNYIWek", "U5JX8ccLjMXJRk0e"], "targetCurrencyCode": "p18lOC3mNqF7Bl0L", "targetItemId": "cghVHfPEspxwhRON", "targetNamespace": "0bc1eMbEIjowLqc3", "thumbnailUrl": "ecjXJbZDKKoxLE1Y", "title": "3Dymtj3giPg4x4yi", "updatedAt": "1992-03-11T00:00:00Z", "useCount": 1}, "namespace": "6ues1Hhhkg1yLVbL", "order": {"currency": {"currencyCode": "FzHEP8cM4NTwr0KH", "currencySymbol": "aAsmTej52WKi6tAr", "currencyType": "VIRTUAL", "decimals": 46, "namespace": "URt9plCSVq8PdH6h"}, "ext": {"JPUAc0RVwXgAgntL": {}, "MCuaXBWQi6BqPg4x": {}, "r0lCancUZGCHsZYo": {}}, "free": false}, "source": "DLC"}, "script": "R1KtOv7Zy0b65uvu", "type": "grantDays"}' --login_with_auth "Bearer foo"
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
platform-get-loot-box-plugin-config --login_with_auth "Bearer foo"
platform-update-loot-box-plugin-config --body '{"appConfig": {"appName": "9LN9bvhOrHflIOd6"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "rmsApRA6HX3RwrKt"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-loot-box-plugin-config --login_with_auth "Bearer foo"
platform-uplod-loot-box-plugin-config-cert --login_with_auth "Bearer foo"
platform-get-loot-box-grpc-info --login_with_auth "Bearer foo"
platform-get-section-plugin-config --login_with_auth "Bearer foo"
platform-update-section-plugin-config --body '{"appConfig": {"appName": "ecozL0TOg54vCE48"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "oLF6M4lNa4JUMSHN"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-section-plugin-config --login_with_auth "Bearer foo"
platform-upload-section-plugin-config-cert --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category 'lu01nryEJ0NqoTow' --body '{"categoryPath": "0qiOiC4j0iktm0ZP", "localizationDisplayNames": {"LkLOsp0LZ5njN86H": "l8kUXzt6bSc6bWvg", "pVyW9dD1kOmvrAej": "cq2LgkQuaS7RBx3v", "im02jBOxrZDyvpcL": "YOWA8NjxOnaEok4n"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'OOCzfsflhjbngJOU' --login_with_auth "Bearer foo"
platform-update-category 'n18G5MlfDTk8aG40' 'NlncceIZSwgAIkgz' --body '{"localizationDisplayNames": {"h4pTU0Am4DZhl0bQ": "xFJ3sWCqQpQ2FbKP", "FMycMSQ4qfAacR0L": "gB5BUXvjcu2s6w3V", "ifnKqmTSoGH1XEfY": "6QAYn6WQ5UBEU1QA"}}' --login_with_auth "Bearer foo"
platform-delete-category 'OHfZiGhxOdcuDXSx' 'Sc3aZPV87pna08gx' --login_with_auth "Bearer foo"
platform-get-child-categories 'efTYKhuxaEc7M4P7' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'UckSC6ePeN8i4GrF' --login_with_auth "Bearer foo"
platform-query-codes 'ES9z7xueHpATHcce' --login_with_auth "Bearer foo"
platform-create-codes 'e9GXhKcjmSEwdrkE' --body '{"quantity": 27}' --login_with_auth "Bearer foo"
platform-download '9v7aZK3h65hbN15z' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'fQSfQrtfF3TQN0Oc' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'NDLr36vzohZyjMQA' --login_with_auth "Bearer foo"
platform-query-redeem-history 'g5mPYhrLTyU8Ohgf' --login_with_auth "Bearer foo"
platform-get-code 'Y9JQYGF4bYXEcENx' --login_with_auth "Bearer foo"
platform-disable-code '9xZlAchob44lONDD' --login_with_auth "Bearer foo"
platform-enable-code 'wMvgI0HlyPR7wZNi' --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "VsF6xG2mXEQdbzIV", "currencySymbol": "y8alncV7vWgSHdfo", "currencyType": "REAL", "decimals": 95, "localizationDescriptions": {"PkmSu4PWam1jxR7S": "ETWjteoc8fgvZDDh", "oO05oKqymxLD1Lcv": "w6T6mZEiwxxElpMY", "SWIeVzm7z9noowml": "TIKVowi0RY2VN4ZO"}}' --login_with_auth "Bearer foo"
platform-update-currency 'NJREdUQ3z9F1BxNN' --body '{"localizationDescriptions": {"gnke4akncw7wu9Tm": "XfJWBPrx9Ns8eLzY", "EvwSWTaLQjctvrK2": "jhsYpKPlXn77AtYo", "FzLAATPY8P8P3cfo": "ivvQxevecWw7Rry0"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'KK5rgAGO0dW8rX2M' --login_with_auth "Bearer foo"
platform-get-currency-config 'VUGKSZ4GcLkt4pK3' --login_with_auth "Bearer foo"
platform-get-currency-summary '2sJxlZcCTpTdRtCH' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "vuk6B6XTmSLyn50s", "rewards": [{"currency": {"currencyCode": "igBVZxiKdV57GvRy", "namespace": "d9UuL02Le8HSCsls"}, "item": {"itemId": "Dd4M1F5qRIblS7Nz", "itemSku": "81GRazPAANjfBold", "itemType": "FOyqA2clJ5gEOaCg"}, "quantity": 80, "type": "CURRENCY"}, {"currency": {"currencyCode": "tZdIs0xf4czdt7zq", "namespace": "mSKxOEQlVcx6GqsB"}, "item": {"itemId": "q8vdhWVnuYLgpZeh", "itemSku": "K0G2nmyuViB9kRTc", "itemType": "SQdTnNYGeAfYFG3w"}, "quantity": 91, "type": "CURRENCY"}, {"currency": {"currencyCode": "kHKufBdS3ZOokZB4", "namespace": "cXnAXyuGz6LlxHv8"}, "item": {"itemId": "SwyagYvDJ3w3UNgI", "itemSku": "Gj2jZtEYT8sIPSE1", "itemType": "XXPzySa0sZoFS6xC"}, "quantity": 84, "type": "ITEM"}]}, {"id": "pyh9pMsQgb64ELbz", "rewards": [{"currency": {"currencyCode": "DMwyo4nIRysQdbuf", "namespace": "XjYnSoIFeouC2m38"}, "item": {"itemId": "kXrDZWlGVE9sJ4Np", "itemSku": "UtKp6M9I6nEwnZhs", "itemType": "jwJeGwaPSDMZz95O"}, "quantity": 10, "type": "CURRENCY"}, {"currency": {"currencyCode": "SyxgRR1DiCqSMzpq", "namespace": "IFGLkDs7ACC1RgBf"}, "item": {"itemId": "oNrHlFi2qJLgmBLE", "itemSku": "35YhyiDV90SeI5yp", "itemType": "pBHoytVznCgNyx9f"}, "quantity": 3, "type": "CURRENCY"}, {"currency": {"currencyCode": "T63ShEh8PbGikLjg", "namespace": "jcj34uulU6FYBZsW"}, "item": {"itemId": "Fbr3RSP0W9nBhvhf", "itemSku": "8Q0DtJMcYQdN66bs", "itemType": "wAgt65X4N1LQZmB6"}, "quantity": 70, "type": "CURRENCY"}]}, {"id": "dtwCVUrYQue84dwm", "rewards": [{"currency": {"currencyCode": "bwFEnAZaWsQJtRYo", "namespace": "agRJK5PX9UcOvhPy"}, "item": {"itemId": "E11TRT2SKseoe8VL", "itemSku": "ie0LBa36KNzjf005", "itemType": "CXNGehQ2aTjTDfKF"}, "quantity": 61, "type": "ITEM"}, {"currency": {"currencyCode": "XC7eGL5YhJDWh9YW", "namespace": "qc0qgV6d9yOfIMLd"}, "item": {"itemId": "s2DbPcaoMdtRLTmS", "itemSku": "vTkQQgB7exYvmHMx", "itemType": "r5hPCJJztJBg0tTJ"}, "quantity": 12, "type": "CURRENCY"}, {"currency": {"currencyCode": "6IewOXE2AkCh3QIZ", "namespace": "sUf8lGFXcmwTERHc"}, "item": {"itemId": "lOdxIwqejxe18rNd", "itemSku": "b8Otq6j1mqUav7k0", "itemType": "5HAQltnSojV4jT65"}, "quantity": 49, "type": "CURRENCY"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"4AbGptKaWNvPbpg7": "yrRvXfZ6rvgvEY3H", "ht1SwqTsKKKo37NH": "DOQe91Ps3ztUIV0d", "S6hIH9c4Vfkyrwpu": "XxbaERbfgPmi0eHk"}}, {"platform": "STEAM", "platformDlcIdMap": {"TPOlhTtSiZNCxuog": "FteTHJe4BhSSQkQD", "6WmOt6D7ufFVTOhv": "QpfbBke8aEdd36xj", "6wySoltDxsbzxrla": "KEfkoYjY2o6ouRW9"}}, {"platform": "PSN", "platformDlcIdMap": {"tNquwC3WgumrIz4N": "hGztZpr4U4fwQIiL", "XgmRasvjO4lj8m3X": "EwP2b4gd3xOeii8J", "nmssep2xD2NY0kAB": "eGs9yxahld1pO0Gy"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-query-entitlements-1 --login_with_auth "Bearer foo"
platform-grant-entitlements --body '{"entitlementGrantList": [{"endDate": "1973-02-13T00:00:00Z", "grantedCode": "PO3COyMvczgEpzZ3", "itemId": "FbtxfhcRC7IVYa6i", "itemNamespace": "Z5uFRYNn3SHiWxF0", "language": "yV-590", "quantity": 99, "region": "MQ9Rrbk6C2cVWf6t", "source": "PURCHASE", "startDate": "1982-01-10T00:00:00Z", "storeId": "1e94mQjVOOBnIWhu"}, {"endDate": "1978-07-02T00:00:00Z", "grantedCode": "ElqZUodp3IhtCSHy", "itemId": "1ei1fIrPvfHnRN06", "itemNamespace": "EjRwEQlNapJRfk4f", "language": "TCXW-AiXb", "quantity": 50, "region": "P6Jbct8puMybYGxD", "source": "IAP", "startDate": "1989-12-03T00:00:00Z", "storeId": "OozGoDtsUuYo5p8E"}, {"endDate": "1986-12-12T00:00:00Z", "grantedCode": "b7cUNGPTBxiFFCrn", "itemId": "7djjs69FTFVGUVhv", "itemNamespace": "KhJCmeisql14mUHV", "language": "ln_sMoB", "quantity": 0, "region": "cZsU3VAdMDcb4qlk", "source": "IAP", "startDate": "1995-09-14T00:00:00Z", "storeId": "7syGlElXdEAOrVSn"}], "userIds": ["LocLVVYamQc4wcG5", "p4cfs2E41cK8QTwi", "nDBLJoJHbiQ5duE5"]}' --login_with_auth "Bearer foo"
platform-revoke-entitlements --body '["IAvxSvNDlmM5nQFM", "Gzs7fzjgyc44mEh9", "tRk8knYSV30lnroQ"]' --login_with_auth "Bearer foo"
platform-get-entitlement 'ehMDli6t9unQLYXx' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "m09wpGAbpEmDY9vL", "password": "h3u6EDsUmrV6kH4O"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "otKwG3UC6XCnnZxF"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "8CmQr17W65br34rB", "serviceAccountId": "BN9tU6TDm5GloFSK"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "WM1eym5ydC6p25xC", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"qUOYZENJ1QHZQxPR": "XH7uxBJEECQE1li3", "Bg7Jxc9pUnZmvhid": "wCkZwqjYLfTiCO1N", "DBvQvRPnAz4VzW0C": "poBCbyJsF5IjF1c0"}}, {"itemIdentity": "W338HS6CBgVRyihY", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"4CVhziXV8HwSmvcv": "cDKF19yVRafCjOuS", "Yht83AdvBaagTiRJ": "8daGTVX3Bb7jlz5I", "fHgKjI9mwJSrN8jk": "IykR2zbaI6PD7fEs"}}, {"itemIdentity": "cShnGUGUtV9GJ279", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"DbLNwjm3FK0nnX2p": "oMfZ1hDHtbh4HtMl", "Fgvh2Dp2SoiIPp1y": "vfAHS0VgLu11A3HT", "ovFi4tPAGfleyCA6": "jEtcqsnzoVILjkwW"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "61duF87aUyrdt4XS"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "pWBAetsanzqP8oxf", "publisherAuthenticationKey": "rtbECD1CYPwaiBAx"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "fYL8Avt70ZUT2fSk", "clientSecret": "3LL0calqxEewuGS4", "organizationId": "69k2hG0WKt4sUman"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "YxM0UHZVNYzGMNIp"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'WoSLkUrfuf4U3WeY' 'eA9t2ENKKWrFtHIi' --login_with_auth "Bearer foo"
platform-generate-invoice-summary '1CMgKAOG5iDcCR5P' 'bCvDLil8wj9cKM3A' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'r6MF35hCER4nGmWG' --body '{"categoryPath": "gTJfHlJl4tHGa4Xf", "targetItemId": "Zcd9CVnGqMX9Fiee", "targetNamespace": "EssWEUl07bhwntCV"}' --login_with_auth "Bearer foo"
platform-create-item 'qiYOJf5KwMZQjzvj' --body '{"appId": "Sozv6CTRDl0zp9Cz", "appType": "GAME", "baseAppId": "FwinkBNi4gvqgl6T", "boothName": "Z9TGVPmv34h6T7Es", "categoryPath": "ufmfxKYB4LM6H6QX", "clazz": "mpZ9X3fUSR1l9xLP", "displayOrder": 57, "entitlementType": "DURABLE", "ext": {"smAUrD9L1IiD6Mlc": {}, "EPhMDFzjHZ3sIhzO": {}, "x2CXKlvIomU3pIxM": {}}, "features": ["rPc4vtxk9hVKlG56", "2UDcgVE7L9FK6e0M", "9n8D2eLMe3lt9qfx"], "images": [{"as": "HlzGr7XjdyRJunZP", "caption": "kp6ccIBnWyPw8mj7", "height": 12, "imageUrl": "D2xnik42miteR5eQ", "smallImageUrl": "Ae1rzmmgqBPRmd6m", "width": 82}, {"as": "EfOJpZm9yEYWNGMy", "caption": "2pgSGSUOK68eqGJt", "height": 49, "imageUrl": "f1Ybgg8rdwY9bmrv", "smallImageUrl": "HmO07KNqX9LM2IwE", "width": 37}, {"as": "qISQ83TTbtefXWzn", "caption": "De4LQdXfFBii2RAM", "height": 62, "imageUrl": "r0sVZ6LJAOddIL2l", "smallImageUrl": "3hPjNDKv2LWfXqjr", "width": 83}], "itemIds": ["fS79En3wYowBdkaZ", "3y6i38XQjLDRqkpi", "FK5BtiQ272Uo9UBJ"], "itemQty": {"WodpdwsX1jorcyR0": 47, "rkzUvck3xTtmOFMe": 3, "s1Q2lzxl0yF5m77T": 93}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"hNcECWwchW6zL9Sk": {"description": "bLlrNXnGanMazb8j", "localExt": {"vRWenURH48aJuALE": {}, "cSqcE15u6D31DjOs": {}, "rs3CUYATdqnQGbqi": {}}, "longDescription": "qOkNeATj7eGjodd7", "title": "CcJUrI6MAugK5kyp"}, "Nrp2nFe9FmN86sK5": {"description": "LOq4ft5jGcMICPUY", "localExt": {"nfG6jl9U4jReteIM": {}, "gzISomCsodJrhQW4": {}, "1q2OspCZbt3Uta5I": {}}, "longDescription": "0uGcL1koyHjCH5ol", "title": "YLETRpABAmO2EGvJ"}, "4UMS93yOxNInDByh": {"description": "noluO6ti0QP2ssiJ", "localExt": {"66OzOj84O6tgohjt": {}, "C7bzjPpucddXJ5zi": {}, "fF8y959anrNSleyw": {}}, "longDescription": "HbHig6IKWVZ77KeR", "title": "WdECaFGzfZ2hxcJ2"}}, "lootBoxConfig": {"rewardCount": 64, "rewards": [{"lootBoxItems": [{"count": 36, "duration": 27, "endDate": "1999-01-31T00:00:00Z", "itemId": "vk3IfAKEbqcNXSGC", "itemSku": "CvNowNmdpcJgF88y", "itemType": "SNq4Mj7mulP4tQ6R"}, {"count": 66, "duration": 84, "endDate": "1975-05-19T00:00:00Z", "itemId": "XaLs2xjHkinOD975", "itemSku": "nARHCmhNHSXuqIHs", "itemType": "xvaUoXDmwWsukxnc"}, {"count": 42, "duration": 75, "endDate": "1986-09-26T00:00:00Z", "itemId": "QxCXMd00YBWCaVVm", "itemSku": "M45mfIZsWhkS476d", "itemType": "GGJwJ00UH197MJ6z"}], "name": "U7JLMQyMWzYQCAaP", "odds": 0.5738013960011612, "type": "PROBABILITY_GROUP", "weight": 30}, {"lootBoxItems": [{"count": 1, "duration": 47, "endDate": "1987-10-19T00:00:00Z", "itemId": "wIc895ImqK6tVsaU", "itemSku": "q3stUh5J5Z9GiBiS", "itemType": "AylX5cS0IeHpWCug"}, {"count": 25, "duration": 1, "endDate": "1973-12-04T00:00:00Z", "itemId": "ytPfds1BYx0EaURy", "itemSku": "df8ZyyZeHAWGgJUb", "itemType": "UJRMbkcTglbU86Fy"}, {"count": 83, "duration": 84, "endDate": "1975-12-15T00:00:00Z", "itemId": "ApNHBVfNOURcjY3Y", "itemSku": "YT9oTynmfIuBWgJT", "itemType": "NFfM8M0IW4oe8KDg"}], "name": "y0xZfAcNg14Ws8TI", "odds": 0.6768546032626787, "type": "REWARD", "weight": 76}, {"lootBoxItems": [{"count": 75, "duration": 17, "endDate": "1999-09-13T00:00:00Z", "itemId": "eDHH9WaVO4iKhDcJ", "itemSku": "7TCcNIsQ3PuppUxD", "itemType": "SK8aOTGMudcxlCV4"}, {"count": 5, "duration": 18, "endDate": "1991-01-07T00:00:00Z", "itemId": "3RRiLilmOGF6dLLI", "itemSku": "eIVIjMcdlbdRXTGI", "itemType": "rdNL5gJPqTAjgqaT"}, {"count": 68, "duration": 46, "endDate": "1973-01-08T00:00:00Z", "itemId": "ANTJ9Yk997XkGOdC", "itemSku": "6ItxDT8p4n4XCFkD", "itemType": "1AJLCwszbZxuHSgD"}], "name": "OK8bjoF7bL2635Kb", "odds": 0.3146049259021626, "type": "REWARD_GROUP", "weight": 67}], "rollFunction": "CUSTOM"}, "maxCount": 74, "maxCountPerUser": 43, "name": "pqgl2IzNXGTuQPID", "optionBoxConfig": {"boxItems": [{"count": 31, "duration": 21, "endDate": "1978-04-16T00:00:00Z", "itemId": "r7t1aJLNNz6QIVC9", "itemSku": "Mfuc8VOsnmnlVljd", "itemType": "WYmELe74p38vumnx"}, {"count": 53, "duration": 43, "endDate": "1977-09-05T00:00:00Z", "itemId": "YBTxaTIz0jcgDI8P", "itemSku": "kz96vd80msqIm5bu", "itemType": "fnBqrpLeqhwVhjnn"}, {"count": 19, "duration": 84, "endDate": "1989-07-01T00:00:00Z", "itemId": "MEmtbiWsAQHbMrKY", "itemSku": "i0Zxs5SWCqZXHLLa", "itemType": "31oQf7BULnZDhutD"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 55, "fixedTrialCycles": 8, "graceDays": 33}, "regionData": {"KOufV4f15NohXu6o": [{"currencyCode": "pxQGRt6PqlkL0diR", "currencyNamespace": "hLC10ih2EQfY3XCv", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1983-12-01T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1971-11-22T00:00:00Z", "expireAt": "1973-09-17T00:00:00Z", "price": 25, "purchaseAt": "1972-04-23T00:00:00Z", "trialPrice": 14}, {"currencyCode": "Onb1a9gMz0F2UBRm", "currencyNamespace": "MhAbUWmFhdYLWzMu", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1999-11-17T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1985-03-21T00:00:00Z", "expireAt": "1994-06-01T00:00:00Z", "price": 52, "purchaseAt": "1978-01-09T00:00:00Z", "trialPrice": 59}, {"currencyCode": "BAZkwbYkBLyO6A0F", "currencyNamespace": "qfhnaB3YxKNdOTac", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1972-03-07T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1983-02-14T00:00:00Z", "expireAt": "1988-10-04T00:00:00Z", "price": 26, "purchaseAt": "1974-04-19T00:00:00Z", "trialPrice": 36}], "shuLUk5WdpxjZx5n": [{"currencyCode": "oXPhPUTKbonoucNm", "currencyNamespace": "zwOZOK56sDkci5rZ", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1989-11-11T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1976-02-02T00:00:00Z", "expireAt": "1991-03-29T00:00:00Z", "price": 41, "purchaseAt": "1981-03-24T00:00:00Z", "trialPrice": 39}, {"currencyCode": "rjF5RaJwvkWVco2L", "currencyNamespace": "To5ijlvDF8qBWCQ9", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1990-07-23T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1997-07-15T00:00:00Z", "expireAt": "1986-04-13T00:00:00Z", "price": 53, "purchaseAt": "1994-01-24T00:00:00Z", "trialPrice": 14}, {"currencyCode": "GM5anIloyj9lhbvu", "currencyNamespace": "QdW2jwKUckc794ry", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1996-08-24T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1986-11-28T00:00:00Z", "expireAt": "1999-02-15T00:00:00Z", "price": 79, "purchaseAt": "1999-05-26T00:00:00Z", "trialPrice": 97}], "lrJ81lHvv9rqvEoM": [{"currencyCode": "8YmVjAkO3HKsEp6K", "currencyNamespace": "lqwW4djrexcbHdEt", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1992-12-17T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1978-07-14T00:00:00Z", "expireAt": "1995-07-07T00:00:00Z", "price": 91, "purchaseAt": "1995-05-02T00:00:00Z", "trialPrice": 90}, {"currencyCode": "3Gd2TK0HzYviTgYm", "currencyNamespace": "x82JVBRLPZ6Iz8tn", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1994-01-25T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1971-02-22T00:00:00Z", "expireAt": "1980-06-13T00:00:00Z", "price": 55, "purchaseAt": "1980-09-16T00:00:00Z", "trialPrice": 50}, {"currencyCode": "6Gsvvdl8jHz9x7XZ", "currencyNamespace": "IjU4IK9lOLaZaMph", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1979-07-22T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1994-03-16T00:00:00Z", "expireAt": "1986-01-26T00:00:00Z", "price": 98, "purchaseAt": "1989-03-02T00:00:00Z", "trialPrice": 82}]}, "saleConfig": {"currencyCode": "eJjoEEXBLIxGnNuh", "price": 29}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "WWPvvCiCf33ViEdq", "stackable": false, "status": "ACTIVE", "tags": ["oGkUWNizk5UcPAGv", "5aANNNs5kgSZZNUH", "6c1ESC6hZYTYZbzf"], "targetCurrencyCode": "bIT9szApmWJO5vzz", "targetNamespace": "XZj08a6K1XRVfriS", "thumbnailUrl": "pPFnZBJZkDnEiyfa", "useCount": 78}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'ui3lvozTt9TsH7A0' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'TuU2aL4bPkk11sys' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku '6GdkDcos5uVJ0BJf' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'Z0jvA54CSqZFDsO1' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'skRjOU1SMfQVQa6b' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'lj9Rdd85bdYUumPK' --body '{"itemIds": ["VSZCg3XTc9vQe0dH", "JfF6KIuvnRCa9Jkt", "yBdxkZKrEWFw9GYx"]}' --login_with_auth "Bearer foo"
platform-bulk-update-region-data 'jiiOQAD77ci0vfWV' --body '{"changes": [{"itemIdentities": ["ZoRRMPi57HyKKz5n", "yI6ulKNKoXa0dgx1", "JgjC56pda3YhtQxp"], "itemIdentityType": "ITEM_SKU", "regionData": {"dIn7QqXBDXJcrqKm": [{"currencyCode": "XDwoEV6tCdrxw1KO", "currencyNamespace": "PhuvHuYrGWDK41uM", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1992-05-01T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1976-12-22T00:00:00Z", "discountedPrice": 45, "expireAt": "1982-09-21T00:00:00Z", "price": 92, "purchaseAt": "1975-05-01T00:00:00Z", "trialPrice": 97}, {"currencyCode": "aGk4ktF5wnJDg9Q3", "currencyNamespace": "WXiydCOInVolsr6C", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1975-01-06T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1973-06-01T00:00:00Z", "discountedPrice": 43, "expireAt": "1986-11-07T00:00:00Z", "price": 46, "purchaseAt": "1972-06-10T00:00:00Z", "trialPrice": 11}, {"currencyCode": "YEJTSiXjcY5ZPkv9", "currencyNamespace": "0lyKSTWLxSFZ0Lpu", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1975-03-16T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1993-01-12T00:00:00Z", "discountedPrice": 58, "expireAt": "1976-04-21T00:00:00Z", "price": 97, "purchaseAt": "1980-01-08T00:00:00Z", "trialPrice": 34}], "vkCPfKofwXOIZZQA": [{"currencyCode": "Jza84lKKmVOaTS6x", "currencyNamespace": "BbNrSUAW2ak7ISDr", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1995-10-05T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1994-08-14T00:00:00Z", "discountedPrice": 82, "expireAt": "1974-06-20T00:00:00Z", "price": 60, "purchaseAt": "1983-06-27T00:00:00Z", "trialPrice": 41}, {"currencyCode": "Pb1kuUfNfUDe4g7q", "currencyNamespace": "6PHEaqbzHvDDl1ji", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1996-01-20T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1974-09-27T00:00:00Z", "discountedPrice": 69, "expireAt": "1985-08-01T00:00:00Z", "price": 66, "purchaseAt": "1995-10-19T00:00:00Z", "trialPrice": 95}, {"currencyCode": "XDpA1tIC45C0oaGo", "currencyNamespace": "uFu4hXONgUwJnUpr", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1986-08-10T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1974-12-27T00:00:00Z", "discountedPrice": 35, "expireAt": "1972-01-25T00:00:00Z", "price": 32, "purchaseAt": "1975-05-27T00:00:00Z", "trialPrice": 45}], "yLm67rkadH5Y41SL": [{"currencyCode": "jCPrFa05Xl5TPC5G", "currencyNamespace": "ODS44bmm7jPdKLdd", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1972-05-29T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1995-05-15T00:00:00Z", "discountedPrice": 100, "expireAt": "1975-10-26T00:00:00Z", "price": 25, "purchaseAt": "1995-08-23T00:00:00Z", "trialPrice": 53}, {"currencyCode": "RRXBxlalCHtWlKxL", "currencyNamespace": "pS8fLWoQ5nuJhatQ", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1983-12-26T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1976-02-02T00:00:00Z", "discountedPrice": 27, "expireAt": "1982-02-10T00:00:00Z", "price": 56, "purchaseAt": "1990-08-29T00:00:00Z", "trialPrice": 58}, {"currencyCode": "pgHnMOn8nc3gUZ8Z", "currencyNamespace": "FyyEr0KBXuJBqK4Q", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1983-06-18T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1981-12-05T00:00:00Z", "discountedPrice": 49, "expireAt": "1996-10-27T00:00:00Z", "price": 47, "purchaseAt": "1992-08-13T00:00:00Z", "trialPrice": 56}]}}, {"itemIdentities": ["omQFPFWy5cwNPI6a", "Fo0MVwDZCIXFNEL3", "uWVRz3V7YbJM3bNL"], "itemIdentityType": "ITEM_SKU", "regionData": {"AbCZixe2cQ6O30lp": [{"currencyCode": "zcBQMAEcNcJqrKxn", "currencyNamespace": "MzSYoc4ZjiMY4H34", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1985-06-30T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1995-01-21T00:00:00Z", "discountedPrice": 19, "expireAt": "1975-05-06T00:00:00Z", "price": 4, "purchaseAt": "1971-10-31T00:00:00Z", "trialPrice": 4}, {"currencyCode": "DwQeUWtjCC2UH6jz", "currencyNamespace": "MO3AfmOS5mQNyRPZ", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1977-10-30T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1994-11-12T00:00:00Z", "discountedPrice": 96, "expireAt": "1991-10-30T00:00:00Z", "price": 34, "purchaseAt": "1989-04-11T00:00:00Z", "trialPrice": 26}, {"currencyCode": "beqaVemINdClpF7O", "currencyNamespace": "vlBIEgjse5kd6GED", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1998-10-10T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1983-05-13T00:00:00Z", "discountedPrice": 22, "expireAt": "1990-09-08T00:00:00Z", "price": 93, "purchaseAt": "1978-10-05T00:00:00Z", "trialPrice": 73}], "leLoog4me2NBFp62": [{"currencyCode": "xlXvVcJerTPW02PW", "currencyNamespace": "sHiKYArAxnKBfBfD", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1974-12-14T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1992-01-17T00:00:00Z", "discountedPrice": 41, "expireAt": "1978-08-10T00:00:00Z", "price": 42, "purchaseAt": "1972-03-27T00:00:00Z", "trialPrice": 99}, {"currencyCode": "0DjjwMv4vrIPRtvh", "currencyNamespace": "QIyLarjaLOKnX51y", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1985-07-17T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1992-12-25T00:00:00Z", "discountedPrice": 0, "expireAt": "1999-06-12T00:00:00Z", "price": 77, "purchaseAt": "1991-04-13T00:00:00Z", "trialPrice": 66}, {"currencyCode": "wtYgWGcA0h4G1LZ1", "currencyNamespace": "HaX5UBMbsF44VTsL", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1993-07-27T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1972-04-24T00:00:00Z", "discountedPrice": 34, "expireAt": "1996-01-19T00:00:00Z", "price": 2, "purchaseAt": "1985-04-21T00:00:00Z", "trialPrice": 64}], "yK3ggFDh2kaZP7pn": [{"currencyCode": "nVfxPwc259HF9ejH", "currencyNamespace": "aILQruAuYyJLYGqM", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1999-12-23T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1978-06-14T00:00:00Z", "discountedPrice": 23, "expireAt": "1993-02-19T00:00:00Z", "price": 34, "purchaseAt": "1976-03-31T00:00:00Z", "trialPrice": 32}, {"currencyCode": "pq03BGdIk4oEogFV", "currencyNamespace": "GR71rJOBy6lsj1AK", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1972-03-23T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1977-06-06T00:00:00Z", "discountedPrice": 68, "expireAt": "1984-04-09T00:00:00Z", "price": 40, "purchaseAt": "1971-07-13T00:00:00Z", "trialPrice": 53}, {"currencyCode": "3VAl6tXFbnATCzUO", "currencyNamespace": "IzVcy9k3ie64Vnwa", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1971-04-08T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1981-12-16T00:00:00Z", "discountedPrice": 73, "expireAt": "1992-06-13T00:00:00Z", "price": 23, "purchaseAt": "1985-06-10T00:00:00Z", "trialPrice": 19}]}}, {"itemIdentities": ["Je32AiwKadEoIVmp", "rwPsa9YD92CX0rIT", "ajpwHITGeHTnqRbz"], "itemIdentityType": "ITEM_SKU", "regionData": {"Sxp4qTB54mKA3V9D": [{"currencyCode": "KlCeZ7mLYsHooOIa", "currencyNamespace": "xIpb1cIOJPS3lJ80", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1980-09-01T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1994-10-01T00:00:00Z", "discountedPrice": 29, "expireAt": "1981-04-27T00:00:00Z", "price": 49, "purchaseAt": "1992-07-29T00:00:00Z", "trialPrice": 10}, {"currencyCode": "ywmg1pWpWit1QC7F", "currencyNamespace": "Ke0fnHUlmU1unGKM", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1974-07-01T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1994-02-02T00:00:00Z", "discountedPrice": 50, "expireAt": "1971-01-05T00:00:00Z", "price": 25, "purchaseAt": "1972-01-01T00:00:00Z", "trialPrice": 2}, {"currencyCode": "CvX1nwvSWdDwD7WJ", "currencyNamespace": "HzgNZUKsI5y0mR3z", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1998-05-28T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1974-02-10T00:00:00Z", "discountedPrice": 41, "expireAt": "1989-05-23T00:00:00Z", "price": 33, "purchaseAt": "1999-04-16T00:00:00Z", "trialPrice": 15}], "sIJctAdxyZVKHA9D": [{"currencyCode": "kaSOWgtg8yw8lHEb", "currencyNamespace": "VDwBAqanOlscRIWw", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1983-10-29T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1995-04-14T00:00:00Z", "discountedPrice": 94, "expireAt": "1990-03-27T00:00:00Z", "price": 82, "purchaseAt": "1972-06-15T00:00:00Z", "trialPrice": 77}, {"currencyCode": "bkOFldMCQ98JH4n0", "currencyNamespace": "JtgqzZv5kVu4S95m", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1997-05-03T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1998-06-22T00:00:00Z", "discountedPrice": 0, "expireAt": "1976-02-07T00:00:00Z", "price": 39, "purchaseAt": "1999-07-11T00:00:00Z", "trialPrice": 11}, {"currencyCode": "3N7WNMYIfcDKbLu8", "currencyNamespace": "pnK34oA1keYXJvtg", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1986-01-25T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1996-03-13T00:00:00Z", "discountedPrice": 10, "expireAt": "1971-04-06T00:00:00Z", "price": 8, "purchaseAt": "1989-03-14T00:00:00Z", "trialPrice": 24}], "MBahFZZGMTcqnWrI": [{"currencyCode": "prOv0BJ9Sgl7H1sd", "currencyNamespace": "H2RIJz1eI7Q5pu9P", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1981-04-18T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1978-02-12T00:00:00Z", "discountedPrice": 15, "expireAt": "1972-10-13T00:00:00Z", "price": 6, "purchaseAt": "1980-11-16T00:00:00Z", "trialPrice": 43}, {"currencyCode": "zMTQ9P7sYLDWAJOA", "currencyNamespace": "75K4BYJ2fkqYJoF2", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1977-07-21T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1983-12-14T00:00:00Z", "discountedPrice": 34, "expireAt": "1994-12-21T00:00:00Z", "price": 45, "purchaseAt": "1984-05-20T00:00:00Z", "trialPrice": 5}, {"currencyCode": "o8TWwXWsz9TVmdMK", "currencyNamespace": "EohKzuMYDUTLBeCi", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1996-03-18T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1981-09-27T00:00:00Z", "discountedPrice": 51, "expireAt": "1974-02-09T00:00:00Z", "price": 47, "purchaseAt": "1982-04-17T00:00:00Z", "trialPrice": 56}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'cXejmeZtzT0qj0lt' 'sqfiZrthVvyX0OCK' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'DJE3RMUddwSSgxCu' --login_with_auth "Bearer foo"
platform-update-item '8zru1DhGAYOHR5BW' 'a9VzIkaQEl1iUPro' --body '{"appId": "NB6hI6IpGcToWgFv", "appType": "DEMO", "baseAppId": "u06Q4veujxtyQENv", "boothName": "JrBCqeg67d4RWOqO", "categoryPath": "4U0bitNQLzwRoWnR", "clazz": "0AbkCPY70FmvviVI", "displayOrder": 56, "entitlementType": "CONSUMABLE", "ext": {"ZGVL5KLTxahWlS6X": {}, "dBaKSLCgOOPXM6XT": {}, "Uh2dJ90yqHDNacl4": {}}, "features": ["F9G6Dl5TFwBY6HKX", "wiVj7eDTaka9ABfX", "AblkT8VGgSH8MGZG"], "images": [{"as": "1IByPEOuPhGspRi3", "caption": "bhPQvBBJI5Jxytpc", "height": 42, "imageUrl": "HyLmcvrZZOdwe1x8", "smallImageUrl": "RjU6Bi8JXE52sUBB", "width": 34}, {"as": "WSRxZ8N4UQ2fg3V1", "caption": "o2x0hL5DuBDqMyIA", "height": 52, "imageUrl": "IZKTdNFVBQ1crBXA", "smallImageUrl": "upATO8uXsqVpdiWo", "width": 38}, {"as": "SjDAM0Riw8wLYW3n", "caption": "4F3LD1EDwBXw5uBY", "height": 8, "imageUrl": "5VyC4qvWjVac1cQv", "smallImageUrl": "SxgTNIUzxDgBlIbu", "width": 52}], "itemIds": ["Zu4htrsf8eIFSovT", "GXaMsq8ePN1oco2j", "x8Upe8SjMvpqM8pu"], "itemQty": {"ggOEdG47gD5i2Ni6": 54, "ny4ij4ysYPonb59g": 87, "DfRcngEpTnRUQr3R": 76}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"1vEx4gqDY6jwyKRx": {"description": "hkLe5zohg9s9utRQ", "localExt": {"t28b6o3K0COF74tz": {}, "6aeXZOYwbwjMNdxK": {}, "WlBfnRyFS0Ed7gTM": {}}, "longDescription": "5AVrtBQiDTcNnZa6", "title": "Zuxk6u6HXXdiC9ZD"}, "j4E4mv12FNXypoOL": {"description": "l13j84P0KqirJ4Pk", "localExt": {"MFtsnFfz8Ew0X8fB": {}, "uBSKLSQ4GvLtz50D": {}, "3rpBfBovqLwXBuT3": {}}, "longDescription": "0EYeRj17xGhaBKoU", "title": "fiHjGmCyPsKCJTv1"}, "ic9gvagF2cSuztsJ": {"description": "5tj64gV7nmDk29mc", "localExt": {"jSuz9vbNStqPtQmQ": {}, "N6eKAGiZFCftT0RW": {}, "ECdjWYrnulxcCKAr": {}}, "longDescription": "u8pOaAVLDB4k3Jwk", "title": "daxR7GJpYmuYCPG1"}}, "lootBoxConfig": {"rewardCount": 38, "rewards": [{"lootBoxItems": [{"count": 26, "duration": 33, "endDate": "1971-12-02T00:00:00Z", "itemId": "GA5DydC2D8UT6KOc", "itemSku": "4VPDUR9ayazqXRqe", "itemType": "gIUicYXXzxsBFrUs"}, {"count": 90, "duration": 55, "endDate": "1999-06-05T00:00:00Z", "itemId": "p6TgCejBd5o7iTST", "itemSku": "7R3KbbQGERMNpqWb", "itemType": "51y5RUzvMfTkPy0f"}, {"count": 66, "duration": 44, "endDate": "1990-09-25T00:00:00Z", "itemId": "GgfLKsg0b1Bq78cE", "itemSku": "5O5pmPnbiPJ9j4vx", "itemType": "mbH3rVaauufxkPHE"}], "name": "lug48TgfNu0rqXUO", "odds": 0.39075852839157743, "type": "REWARD_GROUP", "weight": 32}, {"lootBoxItems": [{"count": 30, "duration": 15, "endDate": "1990-12-09T00:00:00Z", "itemId": "OgT5kDTyPl3dKF7N", "itemSku": "XEjrJMki8jvc3P8G", "itemType": "wjg3IOH0SDHgYKqx"}, {"count": 72, "duration": 59, "endDate": "1975-09-20T00:00:00Z", "itemId": "MzLSrzoiBnYi5UWs", "itemSku": "3tYlYeMoCimJySoc", "itemType": "RvUWDOrFZKPNoN9A"}, {"count": 100, "duration": 40, "endDate": "1992-11-02T00:00:00Z", "itemId": "qx1K7qcAoijBPAp6", "itemSku": "EPb988NzxrDKVpUL", "itemType": "jjiw3NeVG4DJi9Da"}], "name": "Mrc0WFgKjE945x2C", "odds": 0.6661221068682333, "type": "REWARD", "weight": 75}, {"lootBoxItems": [{"count": 61, "duration": 67, "endDate": "1972-06-27T00:00:00Z", "itemId": "OMIzvTScdbKBsAyJ", "itemSku": "Mz4ILNDvhB4Eoes9", "itemType": "a6XaJeRbzTPwD3jx"}, {"count": 64, "duration": 14, "endDate": "1981-01-27T00:00:00Z", "itemId": "xRUY0ilrNoFT98Sg", "itemSku": "tJd4Z5f8nfaKqdZF", "itemType": "LbZEHxsDxeR6d7r1"}, {"count": 92, "duration": 21, "endDate": "1993-10-11T00:00:00Z", "itemId": "w80JfMpPrSqYypRU", "itemSku": "nq5o4ETeCUYG9ccT", "itemType": "t7Wxw8OQ13t3uTw6"}], "name": "zQuoZcXQpoTOxe8y", "odds": 0.8582687267555881, "type": "PROBABILITY_GROUP", "weight": 11}], "rollFunction": "CUSTOM"}, "maxCount": 16, "maxCountPerUser": 35, "name": "zfCTxxrsRRLee3Tc", "optionBoxConfig": {"boxItems": [{"count": 73, "duration": 52, "endDate": "1978-08-29T00:00:00Z", "itemId": "WGdYohxMp3uOQIyb", "itemSku": "qWfG9BJ6FVKlbYHt", "itemType": "bPtaxvagSlpGgVTF"}, {"count": 88, "duration": 97, "endDate": "1981-02-05T00:00:00Z", "itemId": "ehKqwCh86XmRkCEc", "itemSku": "fHDCdl59Wp9A3tXG", "itemType": "ve6DdK6uvg8f2cIo"}, {"count": 57, "duration": 15, "endDate": "1983-07-31T00:00:00Z", "itemId": "k9fxtvsgeAxo57nK", "itemSku": "AbZpsbJ4Iu5KJ0yn", "itemType": "xGBlacDCdFe8ATUq"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 59, "fixedTrialCycles": 4, "graceDays": 82}, "regionData": {"SthrpnMUBsnUfuQI": [{"currencyCode": "cSbUt5UGkInFGpuU", "currencyNamespace": "sdtq4dOwNESzCEW9", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1991-11-13T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1999-08-20T00:00:00Z", "expireAt": "1976-05-18T00:00:00Z", "price": 77, "purchaseAt": "1977-02-13T00:00:00Z", "trialPrice": 40}, {"currencyCode": "4jVi9kIpqgrzpUkN", "currencyNamespace": "OBWydXV0Fi02aFr8", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1992-01-04T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1979-03-18T00:00:00Z", "expireAt": "1993-06-29T00:00:00Z", "price": 35, "purchaseAt": "1991-11-23T00:00:00Z", "trialPrice": 23}, {"currencyCode": "ULqXQgvwD3PsKDJi", "currencyNamespace": "WxQBwaS7rDBf2S54", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1974-06-21T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1973-01-27T00:00:00Z", "expireAt": "1980-07-19T00:00:00Z", "price": 49, "purchaseAt": "1987-09-18T00:00:00Z", "trialPrice": 60}], "MqXCQMAqQ2ZRGzNt": [{"currencyCode": "rThFa9XU8mosluiH", "currencyNamespace": "ZJ7O8sAQ32wj9uaD", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1980-05-23T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1980-07-08T00:00:00Z", "expireAt": "1999-04-04T00:00:00Z", "price": 17, "purchaseAt": "1979-06-10T00:00:00Z", "trialPrice": 90}, {"currencyCode": "nGAqXUjNypF6MMqW", "currencyNamespace": "pdEJsPoaIbYz8cK5", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1976-06-14T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1977-10-17T00:00:00Z", "expireAt": "1985-01-26T00:00:00Z", "price": 35, "purchaseAt": "1982-02-02T00:00:00Z", "trialPrice": 72}, {"currencyCode": "5ur6yvWJDdvM7T7P", "currencyNamespace": "X2vamIRZHzsIYOCU", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1985-02-02T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1976-08-24T00:00:00Z", "expireAt": "1979-01-31T00:00:00Z", "price": 88, "purchaseAt": "1987-11-03T00:00:00Z", "trialPrice": 3}], "2jdx1eIba1sB0HsJ": [{"currencyCode": "06DzfbzRYt4OVUyu", "currencyNamespace": "mBeIqdQGZC5kM03H", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1976-09-17T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1987-12-13T00:00:00Z", "expireAt": "1995-12-21T00:00:00Z", "price": 85, "purchaseAt": "1976-03-01T00:00:00Z", "trialPrice": 90}, {"currencyCode": "N8IAjmsonjj0ZR50", "currencyNamespace": "BQ1U6aFD3O2kXQSc", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1983-05-22T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1986-11-03T00:00:00Z", "expireAt": "1995-12-13T00:00:00Z", "price": 23, "purchaseAt": "1998-01-08T00:00:00Z", "trialPrice": 14}, {"currencyCode": "tjJOqQMgZWAU6E92", "currencyNamespace": "nHJzvw7tnYtGfv0E", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1986-03-21T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1984-06-10T00:00:00Z", "expireAt": "1981-10-14T00:00:00Z", "price": 48, "purchaseAt": "1986-07-31T00:00:00Z", "trialPrice": 52}]}, "saleConfig": {"currencyCode": "Pqb6n73m0jiaDH86", "price": 8}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "sKgzCsMulpB8HZUt", "stackable": false, "status": "ACTIVE", "tags": ["9Z5BTsEA3EdmW8sa", "abP4xRowfNojzPXI", "2v0prR3OEey0MkZw"], "targetCurrencyCode": "S6TYwNN3UYhic03q", "targetNamespace": "GEg5fNzBVrjo3g8C", "thumbnailUrl": "fRwtyl1HeT7VEPgG", "useCount": 62}' --login_with_auth "Bearer foo"
platform-delete-item '0QyXzsOzgck078Ig' --login_with_auth "Bearer foo"
platform-acquire-item 'hoQBp2mWAOYksczx' --body '{"count": 56, "orderNo": "vMf9yilUEujk6oqY"}' --login_with_auth "Bearer foo"
platform-get-app 'o1HQYTFzwdOMdupw' --login_with_auth "Bearer foo"
platform-update-app 'D4O3uNbcIDcIyvZb' 'Oy1T4hfwkuVykH4R' --body '{"carousel": [{"alt": "pfmjIXFGZ5PKdbab", "previewUrl": "JIkNnt9P1Tkm08lu", "thumbnailUrl": "h4dpPRMDbUXBWTbp", "type": "video", "url": "9LzNeJnBurh54CWb", "videoSource": "youtube"}, {"alt": "b0Pebyt8b4DGscjw", "previewUrl": "rizsFUgYwbaLvqvQ", "thumbnailUrl": "2NbmDITuymTBjn3d", "type": "video", "url": "p9Rx2RfcRhXpmeeH", "videoSource": "generic"}, {"alt": "15Kg9U8vrQJXQxoI", "previewUrl": "bVi2CLEk277Ivjj1", "thumbnailUrl": "A647XQ3koaAfZIim", "type": "image", "url": "sFPm1YN27bojDVaZ", "videoSource": "youtube"}], "developer": "sYsW9oGBN1pYMBwb", "forumUrl": "PZTlMlUvFEiGprcN", "genres": ["Strategy", "Action", "Casual"], "localizations": {"nDGvur19V18oIrUK": {"announcement": "XttgAI2QdWJFLmoP", "slogan": "Egd8EMspOs8nkic9"}, "gj5vyUMAAmIHYbsx": {"announcement": "G5N066FXb88SbLOa", "slogan": "21DiSFsm0XXQJWsz"}, "vTQEuALzDNp1SZ58": {"announcement": "aDllwzTRHak1MXxj", "slogan": "7Esrg7900nml5Bid"}}, "platformRequirements": {"sK9dCEzhVnOv0PQb": [{"additionals": "VIaKiHfoeorY7A1o", "directXVersion": "tGFyv2SMjbEr50qG", "diskSpace": "dCZIc6EFqBKxbS7Q", "graphics": "2OgRucL1jwRXzfjD", "label": "ZZBmOau6syme06c6", "osVersion": "SKLc2mEC3IXl5XCb", "processor": "kOfHaGr5kdazlypv", "ram": "t6lSLfU7HByGXPMq", "soundCard": "xj4hBgVY3YAxZLKb"}, {"additionals": "cOdyjqf6Q4oiwoJc", "directXVersion": "aRMEb15LBlTVufc5", "diskSpace": "ZyODR2NVyn4PRqf3", "graphics": "eRbZqBAoKGcVCdMi", "label": "SNV4qBrt1kcLmRv6", "osVersion": "EJtl5xWnsb8oWq94", "processor": "RImNWVIJnhhwFDV1", "ram": "VitaomvWTzdsW4N7", "soundCard": "0wYS4Kj7Yi2VvoQN"}, {"additionals": "W8Yc481dYdvGxJAM", "directXVersion": "DRA1LF7jdWlekFwO", "diskSpace": "94VBCV9qJhWva2FP", "graphics": "BujX0geYCpGJM4sq", "label": "sPNJMiZXXOFwmGWA", "osVersion": "vNF0Z0GkwxUNYyNw", "processor": "GiKrknH0Y5mrQgLC", "ram": "6D2qsFiQHglUQMZi", "soundCard": "5WjMZfOadpgegCUj"}], "Tdi1Ehr8OtqpNJ9R": [{"additionals": "8TuNy4ejmVA3vMCs", "directXVersion": "GyPd12B8QNUz0hFF", "diskSpace": "NbH6j2W4roZM2UKA", "graphics": "XEEsL5D0oiFchQnV", "label": "eq3g2AB2WIRUQmau", "osVersion": "IY5HXCZ0W4XmWP0H", "processor": "zSdiylLhVYszm8xY", "ram": "33OQbumu2QHLyZNu", "soundCard": "ysyM4OfCzdQCXMAW"}, {"additionals": "nf87YPNOe9Eevf1f", "directXVersion": "hMg1E2k7QLFrVgtX", "diskSpace": "7y0fPOieDCow2zXy", "graphics": "FFVpM87yqEwEacQM", "label": "TlqN4LKkxJ5v3SBa", "osVersion": "fnKNiMPbFkFGA85W", "processor": "3HJkqgS2B37wwoPY", "ram": "OHiIsxmsLBPBJuNL", "soundCard": "nWRrtW870qD88Zcd"}, {"additionals": "uZSe7W20UZcDaiq0", "directXVersion": "nEZ7PyhqFJkDClOs", "diskSpace": "KmfsgJdmzsDPsWh1", "graphics": "k0cQ08NG6dX2TZki", "label": "l67kRngoUa83ECh1", "osVersion": "gqPeS193TNNzot3s", "processor": "Vli3GN2XTrFibRAh", "ram": "zzEWzWlTY70qdgJR", "soundCard": "vpZrSpWX3KEe2BjV"}], "00ReCXFffjJJxlgj": [{"additionals": "zIhpgOoIOD74V21H", "directXVersion": "WDAfvXwdxbyp4HAP", "diskSpace": "bBbNPStVBUpKgOss", "graphics": "Fkz0F36piDYXeHZ7", "label": "FHls3nyvconqbHQq", "osVersion": "KLQKe3xmj6s0GqsW", "processor": "ncp5LrqbiKudv9z7", "ram": "5SzoCV8ZMi2o1nR4", "soundCard": "82D6gNClk9c87hos"}, {"additionals": "aPFC5zBW3ZgVZCj9", "directXVersion": "ObVGT0Scwl4kNmCi", "diskSpace": "15XTJTgCNNH7RtG5", "graphics": "Xmo9Q0Wb07N17fkx", "label": "ZSc6VbE0AGcekjMN", "osVersion": "HuPXtz8tXxrmzafM", "processor": "UguyDoN91uc28HoS", "ram": "pGt1g0GGbT4Hf2PP", "soundCard": "KOldkbgX9CWJKwXX"}, {"additionals": "Sbv5eg9q86IaDFjj", "directXVersion": "x6uZerWbtwTX9gNR", "diskSpace": "ByjbE8lOLAfTXKLz", "graphics": "brddqcKLa7LevxNH", "label": "OSEhQRZIp693lRwt", "osVersion": "c43atCuCFxbfbz4a", "processor": "QERziPL4dHhOqG5K", "ram": "DdUvk0LEi26Ls7mj", "soundCard": "RxNmvvNtjJNQepUT"}]}, "platforms": ["Windows", "Linux", "Android"], "players": ["LocalCoop", "LocalCoop", "Multi"], "primaryGenre": "Casual", "publisher": "EPtpsSNcpK1QkB2S", "releaseDate": "1983-09-29T00:00:00Z", "websiteUrl": "8Ww79LVeVskqeUB7"}' --login_with_auth "Bearer foo"
platform-disable-item 'RSayqGFguhh3bvad' 'RthdbVApebRA09rW' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data '8i8krFWJhe03coRF' --login_with_auth "Bearer foo"
platform-enable-item 'ok5d3AyGrZO8GuoX' 'NSoVEBG7VbBPUWip' --login_with_auth "Bearer foo"
platform-feature-item 'z9C05YabFX4FCK5u' 'cTFsAFzaO3yJpA3K' 'MxBlrRytER1qdTel' --login_with_auth "Bearer foo"
platform-defeature-item 'FAadM9y66Drf4SSG' 'Gt3MiBKohow3kKoa' 'P1K4CDuH1mMIfOCD' --login_with_auth "Bearer foo"
platform-get-locale-item 'yVAHrHncR5dShqiB' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'UI9esSsXegSEhrPp' 'K2q8kxR4BuEksS2A' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 83, "comparison": "isLessThanOrEqual", "name": "A8H9VeHv0L2Acm96", "predicateType": "SeasonPassPredicate", "value": "EYQEuGJVl8xs1WId", "values": ["9WlalqshF9Rh2o7G", "zReRq0112ISArROI", "CQGPCxwEdkyuT3Mg"]}, {"anyOf": 30, "comparison": "isGreaterThan", "name": "dcmM6v2AEozWWaYv", "predicateType": "SeasonPassPredicate", "value": "ekLfjmy8zosRCRgV", "values": ["3DIbfT22G5NpE130", "MjupZkZQY8CNyT4k", "wbrQKmb01yA7U7dG"]}, {"anyOf": 11, "comparison": "isGreaterThanOrEqual", "name": "SgxpKWtdtdtVW9an", "predicateType": "SeasonPassPredicate", "value": "1J5euLAbBgejqc0a", "values": ["lAyvIslt7N1qcxKs", "4nlf1MfqUZXkjHvc", "pxqZ209BySn8aUaG"]}]}, {"operator": "or", "predicates": [{"anyOf": 82, "comparison": "isLessThanOrEqual", "name": "lxNf09pefgFIiJss", "predicateType": "SeasonTierPredicate", "value": "8QgaLMqi836ULa7c", "values": ["fZl4VuY6rsZyo6CB", "RRnoOikIxXKKIR6k", "Pmswm5TCAU1cKApd"]}, {"anyOf": 72, "comparison": "isNot", "name": "IlTk3Bpclrk4hIRn", "predicateType": "EntitlementPredicate", "value": "znIKzAEAHQpBOgHE", "values": ["0b2p3b63KrcwIcXM", "P5l94s7CbIJ7eHnV", "WOboMkyB7FTexsOZ"]}, {"anyOf": 15, "comparison": "isGreaterThanOrEqual", "name": "Gy83Xit6boOLGCcg", "predicateType": "EntitlementPredicate", "value": "6DqwdQPQ9HkSSV8e", "values": ["AGQExPhgr9gGfC0G", "1MgTTLS2FgarY903", "INGIyEfRBEj7qms9"]}]}, {"operator": "and", "predicates": [{"anyOf": 3, "comparison": "isLessThan", "name": "cOpR45VDlvSc0Mr7", "predicateType": "SeasonTierPredicate", "value": "ghTH2wToOnq9U5ly", "values": ["Hk6lWq6tEeUmU96F", "W89Xwt3wmRTrDCjh", "nKvsHezWTqgYPixt"]}, {"anyOf": 76, "comparison": "isNot", "name": "JbUnUDh5yGjjv4Mw", "predicateType": "SeasonPassPredicate", "value": "CD9XPRi4bAQL7VE2", "values": ["wL8Y4JFVUdzA8bvX", "lDhG7BrorbKIKuOX", "JPm5ztrr09CDA8Ij"]}, {"anyOf": 2, "comparison": "excludes", "name": "KSuopWQbaCvdPSq8", "predicateType": "SeasonTierPredicate", "value": "27GpvHCDx55JZ5z6", "values": ["pDDubntPCFxfeoW2", "NdSWzOXjO1NQUqWH", "gujpFzlPspQD9IRI"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'BW78XREZCiTNAxq2' --body '{"orderNo": "6gZrPqCsSDspvgM1"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "6sZ6rjnkH4ExObpp", "name": "C6CMYDm5ge659UDE", "status": "ACTIVE", "tags": ["gp5UfmjtiVbqJnZc", "rqrPye7fCwi7Il2w", "IFlHm9N6owMHMtJy"]}' --login_with_auth "Bearer foo"
platform-get-key-group '1Oqn59tEGm9NYeUT' --login_with_auth "Bearer foo"
platform-update-key-group '5P0nx8TqSZdZ5C8m' --body '{"description": "FI9TnvzEqBNMF9CZ", "name": "vPxT5zbreMc9fBoU", "status": "INACTIVE", "tags": ["NDFjLKFrepy56eW1", "kmb15QeIQF51c4Mq", "JzDSvELgBe6dboSd"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'hkBzAzPkt1efGJeJ' --login_with_auth "Bearer foo"
platform-list-keys 'axyHYutgXucx85vH' --login_with_auth "Bearer foo"
platform-upload-keys 'A009FAb21jxeWXk8' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order '0y9uxgVLGgK8aVSC' --login_with_auth "Bearer foo"
platform-refund-order 'N6oCETQ8gIDRdD2w' --body '{"description": "wMXwKVXGPhEJsc7r"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": true, "notifyUrl": "pxaPHc9r8eToFmkH", "privateKey": "J6BPOKFLxIwKssw6"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "47YwDudnGRufOUGf", "currencyNamespace": "MjTU226l07jPlcYa", "customParameters": {"qYM7YfBmhjI9Y28q": {}, "VceS9UX48dKPCFUI": {}, "eyYEymNXzNX6TGh4": {}}, "description": "UdEweeBsJEvBbAvC", "extOrderNo": "mlh6Z1oz9BaixUUv", "extUserId": "mzbajE2gjooiDnc1", "itemType": "SUBSCRIPTION", "language": "BpcL_576", "metadata": {"tkWaMOH47CAT7cBP": "0918JaEBQBP766LU", "nBBR84iAO7sBQt6Y": "J2tWwF7RnP1oK3c4", "RVfjB0zi3XrYZUiN": "24ol1qqbalgizL97"}, "notifyUrl": "ycJV5YqE2myQzl7X", "omitNotification": false, "platform": "9pmAIc6VSfE9nbE2", "price": 86, "recurringPaymentOrderNo": "Df9B22HGgxakPt7I", "region": "YzaZUTmvsEzLPnnG", "returnUrl": "snfmBerp84qjwzWp", "sandbox": true, "sku": "Mg7Dc5APzfzXDELJ", "subscriptionId": "FaIaEMW5bhJyL72W", "targetNamespace": "DyhBsCCbnfihnXKx", "targetUserId": "GxaupnTTq9ihZkvF", "title": "KfSHQh8I9xk3sFl0"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'cbuCRM69XKkLwioR' --login_with_auth "Bearer foo"
platform-get-payment-order 'aKnWhlh80BhYe2fJ' --login_with_auth "Bearer foo"
platform-charge-payment-order 'DS6T75Q4ulonMFjm' --body '{"extTxId": "YqE1wJhfogWg2Apm", "paymentMethod": "0sUy18aWn65Co0vd", "paymentProvider": "XSOLLA"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'Nd8Jpa19GJDK46Ee' --body '{"description": "hx7xasqMY9aulsL6"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'NOV5agpS6A5mkufB' --body '{"amount": 32, "currencyCode": "tE6gnYxmkmCWbs5q", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 14, "vat": 1}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'klBUS6uwWrCQt86J' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Other' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'GooglePlay' --body '{"allowedBalanceOrigins": ["Steam", "Other", "Xbox"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'GooglePlay' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-loot-box-plugin-config-1 --login_with_auth "Bearer foo"
platform-update-loot-box-plugin-config-1 --body '{"appConfig": {"appName": "SKUf3zKbyQk2vQTY"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "5Orya6LSSUlugIAk"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-loot-box-plugin-config-1 --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "GIDeHlf6IcX1K9Jr", "eventTopic": "K6Or2xx7rLwrPoWi", "maxAwarded": 50, "maxAwardedPerUser": 35, "namespaceExpression": "wnxuDLLuIaSxoloI", "rewardCode": "H1gBCWVFrvls0Zwo", "rewardConditions": [{"condition": "sKhDlLfTKxpVOXvG", "conditionName": "SrdkqddI3ezqu6FB", "eventName": "0sL2xt6fX9j7rhZC", "rewardItems": [{"duration": 54, "endDate": "1995-04-01T00:00:00Z", "itemId": "UaWMJBjrV0p9A7tc", "quantity": 70}, {"duration": 58, "endDate": "1980-11-01T00:00:00Z", "itemId": "V0MbJGr4drgkDuWS", "quantity": 47}, {"duration": 24, "endDate": "1983-05-22T00:00:00Z", "itemId": "pGzazM2BUXnzUEWT", "quantity": 17}]}, {"condition": "Cc4M2O7NrTQO7KLd", "conditionName": "ZDGwqx7T3l1ut2oy", "eventName": "olliYsTJUmpscwLc", "rewardItems": [{"duration": 95, "endDate": "1985-04-12T00:00:00Z", "itemId": "Lrwh3d0ykRGkgqUN", "quantity": 72}, {"duration": 3, "endDate": "1999-10-12T00:00:00Z", "itemId": "xmIOjFLgKR4LjEWh", "quantity": 84}, {"duration": 20, "endDate": "1994-07-01T00:00:00Z", "itemId": "cvtQ92iD02YMvEUN", "quantity": 11}]}, {"condition": "pSAlZwFGpea5ObBB", "conditionName": "49Km4ClIQmkIdLCv", "eventName": "NhZ6P8aqZ2yfrC1V", "rewardItems": [{"duration": 13, "endDate": "1979-07-30T00:00:00Z", "itemId": "JZPHCMqvcYmeDLYE", "quantity": 52}, {"duration": 94, "endDate": "1980-12-10T00:00:00Z", "itemId": "2SQUdKr6vgqkjycq", "quantity": 4}, {"duration": 61, "endDate": "1976-11-20T00:00:00Z", "itemId": "3Df5qUZOFzpFd6b5", "quantity": 72}]}], "userIdExpression": "plHTPLzynjFZgF3e"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'TFJ6svTyo9RHget5' --login_with_auth "Bearer foo"
platform-update-reward 'hzB52BDFopxUwkMu' --body '{"description": "SqQnKzDgDAtqE3ku", "eventTopic": "ybwTQFYEJjIYwqfS", "maxAwarded": 90, "maxAwardedPerUser": 61, "namespaceExpression": "y8GgVk77fd1GS5Yk", "rewardCode": "yhAiAItnWUmD225f", "rewardConditions": [{"condition": "p1egsx3ErheNwqd5", "conditionName": "priclNNqLyrlzrJ4", "eventName": "QHbfnAdtkujxHff7", "rewardItems": [{"duration": 28, "endDate": "1996-07-19T00:00:00Z", "itemId": "ncJJKpqmgvUTr8XA", "quantity": 40}, {"duration": 77, "endDate": "1979-11-30T00:00:00Z", "itemId": "FCbOn46W2B2uPQLr", "quantity": 39}, {"duration": 92, "endDate": "1998-06-08T00:00:00Z", "itemId": "Tn61A1xW6okIqmd8", "quantity": 15}]}, {"condition": "ir9op4YfGTno5oHz", "conditionName": "qY3DgykA8zBJX0rk", "eventName": "OHUkY5aSlqhYoSXb", "rewardItems": [{"duration": 27, "endDate": "1980-02-24T00:00:00Z", "itemId": "l5xAzc1nc3eFm950", "quantity": 6}, {"duration": 18, "endDate": "1981-07-06T00:00:00Z", "itemId": "VAo7w4e3v5mh6Rum", "quantity": 26}, {"duration": 30, "endDate": "1971-09-17T00:00:00Z", "itemId": "gEt39uJQpgEtchTe", "quantity": 3}]}, {"condition": "nt7t9ztprSfW9Out", "conditionName": "ADrNGBWSJ1zQKxVm", "eventName": "RTawjiZPMoZZcyGE", "rewardItems": [{"duration": 68, "endDate": "1983-12-14T00:00:00Z", "itemId": "AKDQher3usApPdJP", "quantity": 26}, {"duration": 56, "endDate": "1979-02-04T00:00:00Z", "itemId": "23kyH9jQbHWkcVk0", "quantity": 69}, {"duration": 62, "endDate": "1987-01-23T00:00:00Z", "itemId": "S54vl7gIKBc7OYTy", "quantity": 23}]}], "userIdExpression": "f3EnzZVnkLT0Lb85"}' --login_with_auth "Bearer foo"
platform-delete-reward 'nmpdN26BY5YI0jeO' --login_with_auth "Bearer foo"
platform-check-event-condition '2zMDSy4kyqyKgrtE' --body '{"payload": {"PdXXlt8geCdiXu3i": {}, "Nvn7vLZ7h6alhJNG": {}, "ZF07lsPP5OfHbXzW": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'nVO2U4uyzZo1rj0Z' --body '{"conditionName": "rLQjk4VoYfIksth2", "userId": "4cZBpdDFfvzeU5iq"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'hx6zv7EURTNIoG1D' --body '{"active": true, "displayOrder": 6, "endDate": "1998-04-23T00:00:00Z", "ext": {"tfW488oYUT4jyCVJ": {}, "0V8obTlGVThz4bm4": {}, "1oIcV33yjPxibDjf": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 19, "itemCount": 55, "rule": "SEQUENCE"}, "items": [{"id": "3qbg55SyienCODZ0", "sku": "mnOpPTVxEgBFzG8t"}, {"id": "lkxWKCU1XN4gl7yH", "sku": "vEqpJSrDXVwCkhOQ"}, {"id": "161TFjROYJm75VIu", "sku": "COCkt2W1DfI8QtgO"}], "localizations": {"Dk9K6DcMnyCPn1Fy": {"description": "lWdaNV1VaZTkbbuW", "localExt": {"iiA4UTDgS2SVEo5M": {}, "80LLbku9GYH4ijqO": {}, "VM50tCqkZfsSxAbD": {}}, "longDescription": "J7sHCLup8pmEosOX", "title": "glQwwdeLVpmXqRwV"}, "jc3W2ANmE3VVsQ1f": {"description": "m9EUdiaRjuLsKZoq", "localExt": {"npKwhpZVdw5UMa8y": {}, "mxtEFLwELCY2vIdd": {}, "lxnA1VynioJcAPwV": {}}, "longDescription": "HUGcs1ACMvoY4jWH", "title": "9dFmOHW0j9suukPE"}, "4JwQONQ2vCbMn0Oi": {"description": "a336uiiMTAductvU", "localExt": {"fVwLahtRedh1SiZl": {}, "OpIQ8GL7jBF1R5Oe": {}, "xAPzCG6ZKQClGc16": {}}, "longDescription": "36nbfM3J9G40Y62b", "title": "Co941ALznQuHVskf"}}, "name": "CjUK8GeX4Q0B2Cj0", "rotationType": "CUSTOM", "startDate": "1979-11-30T00:00:00Z", "viewId": "WK09l4wkrzahXR1s"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'DEDVKDINE3HjCiVR' --login_with_auth "Bearer foo"
platform-get-section '1dQ8kuhb4pUwnGpt' --login_with_auth "Bearer foo"
platform-update-section 'HUplxzaDa9PDwhu3' '1d8eOdtrfq6ECDD6' --body '{"active": false, "displayOrder": 20, "endDate": "1974-06-20T00:00:00Z", "ext": {"TtUdPVcQijMBhs0k": {}, "DP6d3nuUZ41mSeS9": {}, "SnGqhJOvykBcDpzD": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 93, "itemCount": 15, "rule": "SEQUENCE"}, "items": [{"id": "6dtPK4fVHLMvrCsH", "sku": "3RYxH2Up9VthPjFr"}, {"id": "K7Hip0eONFDgUPSh", "sku": "G8wwFKY9AMpcwJd4"}, {"id": "SrigIxAhbFMZfxaz", "sku": "nlDQbzTiFrQB1yUo"}], "localizations": {"nirH4URx3NkKQBYr": {"description": "lUaMiFEWUT8cAFO5", "localExt": {"zEw8GENEJYPKxxOw": {}, "7xNQ98IEbc9YITN9": {}, "8j4P2AGeidXRRnIA": {}}, "longDescription": "JfKVjOn6rtILNJVv", "title": "2DLLUyBt5hDs45si"}, "G30Lv9iGa5mkZjnR": {"description": "XVcg6AByNpBo2JYk", "localExt": {"wLdmR97u9MVUii4K": {}, "pYcb1AUsESaBOTHn": {}, "bX9tC9PQlFAGbMtE": {}}, "longDescription": "ybfcAl0mnsAkRT2k", "title": "0AzdgIunRkTxsGdr"}, "pNELM8Lfkut0wnT2": {"description": "4wh59RGSbBMh7jps", "localExt": {"zuVk6iPdJ2boQqCC": {}, "yJfThvCJieqRSGN8": {}, "Mm74HlSZzp4aEW4G": {}}, "longDescription": "kHG5OIVuGv47XJpk", "title": "MiopQrVL3ZZTVxqa"}}, "name": "9XM2gY14iWk12Jff", "rotationType": "CUSTOM", "startDate": "1977-01-28T00:00:00Z", "viewId": "kjQNHrjaboGomguU"}' --login_with_auth "Bearer foo"
platform-delete-section 'qeuZh5qtrRbNnGej' 'dTGvZgN5hshSe5Ym' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "ZXKEQLkM6o3eGSP4", "defaultRegion": "Htmr90TqGf0OyqJ9", "description": "ibJMmRgoxNwp1lGk", "supportedLanguages": ["Yoq8HP1TM0tefVQP", "WX1NPO5Wn7rNG8rG", "p7Fadvo5EzpX0Itt"], "supportedRegions": ["sRezyY9GB5sf94AL", "BmvdncQkcZb8cWdV", "H9bww15zZsaYrJAe"], "title": "5Kd5QB96ndlO6iPG"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'C9RhzMC7V8BEphnR' --login_with_auth "Bearer foo"
platform-update-store 'XnSpCzyb8FkoxQbr' --body '{"defaultLanguage": "Pngi87K58pQswqKL", "defaultRegion": "utINusOsa92F6iwk", "description": "JIYOLarmpWyvib9C", "supportedLanguages": ["DW21ANrlpuXD9H1u", "1CvzWPcZwkj1l6bf", "2F9EXOBj7v8LHYiv"], "supportedRegions": ["mD0ekycMKlwJTNL2", "UCWUtaAD7ZZx1ief", "ATWcDSqGYRMdz07x"], "title": "EJ40epssgJJC3CX0"}' --login_with_auth "Bearer foo"
platform-delete-store 'hpB1ZGMMo5DSozCu' --login_with_auth "Bearer foo"
platform-query-changes 'FsrBMtoOeLfMCYxS' --login_with_auth "Bearer foo"
platform-publish-all 'eeJOlxa395rghZwG' --login_with_auth "Bearer foo"
platform-publish-selected 'hdZJkkGhYvXYMIya' --login_with_auth "Bearer foo"
platform-select-all-records 'EMEqOpwetb82b96r' --login_with_auth "Bearer foo"
platform-get-statistic 'sH73hRfDgl29GWKp' --login_with_auth "Bearer foo"
platform-unselect-all-records 'ItMt4GszRufkDFLY' --login_with_auth "Bearer foo"
platform-select-record 'yNBPlMrkse9SGcMu' 'V5phhU315LUC6HSM' --login_with_auth "Bearer foo"
platform-unselect-record 'Q32UznXNd6ve29lq' 'qtcLJW9eTJvKNDFr' --login_with_auth "Bearer foo"
platform-clone-store 'x6LabyDnqXjXKPIc' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'xh0x7T6RQGnnW4ug' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'GX6mKBbgTD9xL07Z' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'zzIs3Jke34ZAUuLP' --body '{"orderNo": "897ooMLnemwKAvgD"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'XNrFEE4Jf4hQpsLO' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'cLtZw0efmEVcW7mx' --body '{"count": 2, "orderNo": "bnQ3bVvuvpsDJXPC"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'WkX4Kpi8CJ88aMPG' --body '{"achievements": [{"id": "FFAQZbfbmVTEbiRq", "value": 65}, {"id": "Juikmpat75rVbN9Z", "value": 57}, {"id": "Nnu6OIG1PPLRDEXL", "value": 64}], "steamUserId": "ZWXvqNCHvNpeMjMz"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'guq6HFIqaqwH9J6J' 'Lb5f3SBMyJUdwEBR' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'rHAWUFqTooGGnPEg' --body '{"achievements": [{"id": "Y0t7QQWl42byOwXg", "value": 76}, {"id": "1YjHmmulSBIElc2C", "value": 6}, {"id": "xiz3fWthJSu2pUII", "value": 42}], "serviceConfigId": "b5sbX6asrjV7XJUO", "titleId": "tHlzXNHEPpzlMlx7", "xboxUserId": "b2H2THLwZGikW7TF"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'A9gE6SrYKq6lcVOh' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'PJIcEHbiKHW7flVo' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'lAWEMmQSPDTRqjlv' --login_with_auth "Bearer foo"
platform-anonymize-integration 'wnnCA5tfK5ushaKT' --login_with_auth "Bearer foo"
platform-anonymize-order 'PVjyOUpR3uUdgNly' --login_with_auth "Bearer foo"
platform-anonymize-payment 'U4IJnqtrjCOsE8Vj' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'vzhJwNX4bhqCjlwr' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'msSRV86iic1FIMyF' --login_with_auth "Bearer foo"
platform-anonymize-wallet '7CcNu2DYn6E9Gk51' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'kOTJZluTekDMCGUJ' 'STEAM' --login_with_auth "Bearer foo"
platform-get-user-dlc 'OBrNwioKnXPVZaDc' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'XsV1TnsZioDiBgpr' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'zahPB0FKMa0YeyNB' --body '[{"endDate": "1992-09-25T00:00:00Z", "grantedCode": "0xdYQg34WUV0Wpms", "itemId": "Qnp1n4YGumTKOlDO", "itemNamespace": "y5vhSkxERZ2AQ1jv", "language": "Uc_Kktn", "quantity": 25, "region": "pHcQtnIc9z70LFQM", "source": "REWARD", "startDate": "1986-04-28T00:00:00Z", "storeId": "WVPh0Z7YiGE2cyzT"}, {"endDate": "1990-06-26T00:00:00Z", "grantedCode": "BY7Xd0OoENg2Lw7u", "itemId": "epmahXojVZYz2zMU", "itemNamespace": "9jLzNV3GaG43R6nl", "language": "irtS_678", "quantity": 9, "region": "1WkIa0oZ1nXpW1l7", "source": "PROMOTION", "startDate": "1986-01-22T00:00:00Z", "storeId": "BOsQ0Gax0iX05IT9"}, {"endDate": "1984-08-07T00:00:00Z", "grantedCode": "gsjl5NmnSHhxNmCe", "itemId": "4txY0MsPc9EMgf9J", "itemNamespace": "CJiEvhL8ZfwCVJW9", "language": "oTE_OiCd", "quantity": 9, "region": "00RZe8Bzx9aGEI22", "source": "REFERRAL_BONUS", "startDate": "1994-08-19T00:00:00Z", "storeId": "EmPgoy4TkpEw4Zei"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'd4mRoFNxv10ckMQV' 'jKk3bWJ0ZuYSe3sI' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type '0x2hc8vaN1Off5gR' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'W3huAIzBPWBYKAEF' 'TdlKNh6GTzKjsCqx' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'x24QM35bSkFrvGci' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'NHb7OY5YIpOLJW52' 'uz3c8pz63M0g4xXT' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement '5Ts4e0uR47OzUGHe' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'BKtpvyRNgjZkdDpp' '["vEJiUiDGXgh8BKcL", "qtRZ93LuR8OEyICv", "wgwBFehwtdJLdn3R"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id '2wo8beVQvgeP9qOH' 'aLwYnXxrz7sLmP70' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'LxN0f3JA27Qz5Sjz' 'QfOLYu9O46OOzz9p' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids '57qSpHerzO87cg7T' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'qtMiQgi7Aj28qCRb' 'wwZc4ZS1NMkrnHs1' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'Iyhwqk140MolIrnl' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'kRVbcX435TDYpkk2' 'Gza6DrSycophHw3E' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'oEEClTO9SDKnMlnK' 'W9jiNMu9QVrMeD4b' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'D8gISE34yIAZQeig' 'iA3wBrmBYIlZeheP' --body '{"endDate": "1992-07-29T00:00:00Z", "nullFieldList": ["mX0iYHXBU3Uk2tQm", "307IORTyHnLYDAAg", "1YA4kZURmoGgxVRM"], "startDate": "1992-03-17T00:00:00Z", "status": "ACTIVE", "useCount": 8}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'g1rbhfIMStMnSqrK' 'WYOuITlYS2RYaD9W' --body '{"options": ["NKGhbLhjz1v0RBIO", "2rkJGmPaK6HEVIQJ", "d3930TGewjRyfo4n"], "requestId": "WVZZbKFsKOmgEhjH", "useCount": 10}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'wFzCpxxJLfAg5cFT' '0gHAkltcR3eHFbiA' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'luHv7Hssd05pHBJX' '5ln8PZbYVD8RiaTs' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'dD4d3kSbTkHPMUvO' 'AUXkw36cr2WJQqS7' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'Tq4YIyZAFQ6lZfa2' 'jdNvpWf32JS1av9V' --login_with_auth "Bearer foo"
platform-revoke-use-count 'NpVLT0LvqcfSdO1n' 'AjY5FvADb3GUQgci' --body '{"reason": "632w6LUrHuKBoNTp", "useCount": 85}' --login_with_auth "Bearer foo"
platform-sell-user-entitlement 'WISs1dYrJKmx1BT6' 'iLFQejNZJNF2hm0T' --body '{"requestId": "qBQprHn3whPKU5ab", "useCount": 28}' --login_with_auth "Bearer foo"
platform-fulfill-item 'qstMuikKc6VNU857' --body '{"duration": 14, "endDate": "1980-03-10T00:00:00Z", "itemId": "arZAyuLcZoEkPpqK", "itemSku": "hP2jWnRTglw0gdWo", "language": "E4esuiDrquccz4J6", "order": {"currency": {"currencyCode": "fFQezJ5E3iYHIknv", "currencySymbol": "PcJkjRevVYfiExpA", "currencyType": "REAL", "decimals": 29, "namespace": "QQHQ0NCEddJtx6GV"}, "ext": {"01vD7lNLxlpvqaB9": {}, "P9GaukfCEIeSBLhT": {}, "fzigzHcRuJgYaj4I": {}}, "free": true}, "orderNo": "Dzyh1N0JEKNoMtHv", "origin": "IOS", "quantity": 79, "region": "3KIDTkUCqbbHGJGO", "source": "PROMOTION", "startDate": "1999-10-23T00:00:00Z", "storeId": "bh14LroFTnAuujPe"}' --login_with_auth "Bearer foo"
platform-redeem-code 'P9N0vdVB5a2XkS3X' --body '{"code": "QfMuzZh4AhZRe2hg", "language": "LeYY-UX", "region": "nbTDXu7FbleSP5Pc"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'dOuq0m0rvakR8rcw' --body '{"origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "4gdJDujYnVnFK6gB", "namespace": "6ZxC6yYUVUJYnQ3j"}, "item": {"itemId": "OGmROIqxqQ0gcNeT", "itemSku": "flyvUh3w5ZtfwmOC", "itemType": "KpFSMF0tfGIZCTNi"}, "quantity": 71, "type": "CURRENCY"}, {"currency": {"currencyCode": "c9fEjkZhEpAJMCxM", "namespace": "p2J0hDg2kMgkvhoQ"}, "item": {"itemId": "e9gD9tGN0nE7M36m", "itemSku": "I9u3EeZtLQij2JXs", "itemType": "qdXfhZTTaCeqGv7m"}, "quantity": 8, "type": "ITEM"}, {"currency": {"currencyCode": "q794bu49lINFTtER", "namespace": "AXT2h3hcQ2wV3ZbB"}, "item": {"itemId": "TnNQnVUhA5WnzVZd", "itemSku": "j8tsyzC4QaLXp3o4", "itemType": "TDraEEaDNJbVd20F"}, "quantity": 98, "type": "CURRENCY"}], "source": "GIFT"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'vCjthJUb7jKuMrFa' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'oLulzp3sZxImVK5y' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'h2LcM8LaMW0ByjsR' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'UrAHNRkIcC4wNFzs' --body '{"itemIdentityType": "ITEM_ID", "language": "Sk_ameH", "productId": "56AWXoMiowdWSs9D", "region": "Q0VU1HED9CGo9aUX", "type": "GOOGLE"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'TDzk66ix88sAUrXr' --login_with_auth "Bearer foo"
platform-admin-create-user-order '7MXxCvyy7caxz4MQ' --body '{"currencyCode": "rODLNlxiEjQBCZx9", "currencyNamespace": "DJ4V97SJLlrwXmIG", "discountedPrice": 0, "ext": {"HEYLjTSNDf3zazm6": {}, "p5Y1tkG9WwU4Ty6C": {}, "h5QYyFjuBquE7xss": {}}, "itemId": "m4hxczskbSUbOZ9W", "language": "Nl3apJmNAbl1g5Zm", "options": {"skipPriceValidation": true}, "platform": "IOS", "price": 2, "quantity": 24, "region": "P4QVey9pEz1TV5cU", "returnUrl": "tPBsw01i5Mf7WvbN", "sandbox": false, "sectionId": "eeDNfUESLlwHv3Jg"}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'teOLyKp8a1VqxXnR' 'hDd9TGkO6aIYqftw' --login_with_auth "Bearer foo"
platform-get-user-order '1SrM2nhSEanfUYrM' 'U6A43UKGpvC1cr5T' --login_with_auth "Bearer foo"
platform-update-user-order-status '1PSXhduTWchzXDv3' 'TAtBjP4HSuiYCbG0' --body '{"status": "REFUND_FAILED", "statusReason": "yYUJmNL8p6AbdtU0"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'CDrlQpKB8qoel2QK' '3aSOYdmMDikc3Fjm' --login_with_auth "Bearer foo"
platform-get-user-order-grant '9HoQDemtiQvURYZC' 'eF30RT9rBgM8o7lx' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'Xq7TkdM7FVDCBcvV' 'egrZddP8lLQo6tHj' --login_with_auth "Bearer foo"
platform-process-user-order-notification '4z4cAM4LMJfWNZIx' 'AgBpeubprKX68jTy' --body '{"additionalData": {"cardSummary": "Rd3LrR1x6U1v6zSL"}, "authorisedTime": "1975-04-06T00:00:00Z", "chargebackReversedTime": "1977-12-10T00:00:00Z", "chargebackTime": "1985-07-27T00:00:00Z", "chargedTime": "1996-04-10T00:00:00Z", "createdTime": "1989-07-28T00:00:00Z", "currency": {"currencyCode": "7X6uVy7FWTSfMi2C", "currencySymbol": "PVGxjcdpdCqVeePM", "currencyType": "VIRTUAL", "decimals": 34, "namespace": "b8y8qJTUQY40Zrpn"}, "customParameters": {"0vAD9YsPeDWrAVQZ": {}, "SvgWuCuLsUGrVQAb": {}, "hS54ZuQHKersDmJL": {}}, "extOrderNo": "UHAKtfXCKOna8Ddj", "extTxId": "tZhh6ofsUoRh6r0e", "extUserId": "0J6vyqPw7YlmV3kE", "issuedAt": "1994-10-26T00:00:00Z", "metadata": {"0Hi88UYgSV40OvY7": "apPCrN5bEhmuHgKe", "WizEpw1zN0mOYgGh": "HMz9dddLWJWDuSYt", "CaIv4Lp91wYUJPbv": "zn8TYoMDAaUXSuBQ"}, "namespace": "dvdhJoT0WK5ngNUx", "nonceStr": "DKfZYofPGUbSaA00", "paymentMethod": "nKxQjYU6KlavIiLx", "paymentMethodFee": 97, "paymentOrderNo": "hJ0S50bez9ZLHW88", "paymentProvider": "STRIPE", "paymentProviderFee": 91, "paymentStationUrl": "iiPfRQ3rJ0f5lwXv", "price": 89, "refundedTime": "1974-11-21T00:00:00Z", "salesTax": 90, "sandbox": true, "sku": "n83B0nrW1qx3NJTu", "status": "AUTHORISE_FAILED", "statusReason": "kzjYDw6mLBordrJk", "subscriptionId": "D6vy60uRMT1Xw9K9", "subtotalPrice": 52, "targetNamespace": "b68a8ygYx2Tqkhlq", "targetUserId": "MnE9Wj90EQzOidrW", "tax": 27, "totalPrice": 41, "totalTax": 77, "txEndTime": "1980-05-16T00:00:00Z", "type": "Nwpp0ni1YfIgLZ4Y", "userId": "IzElrLZOBLHCKmLB", "vat": 0}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'unESjcgr2drXG5Nk' 'KCySLA8cKCs0dFYR' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'Sa2OULZ0iOZJiOAh' --body '{"currencyCode": "1SpLhMF2Pav11FuU", "currencyNamespace": "8iXCRz8KgqgwijYx", "customParameters": {"pGhsFArq6lolbj7Q": {}, "KvtVRCPMjr5M3vw1": {}, "GqUjjFp6R8mYZwKf": {}}, "description": "tVqSECsypS42NmYQ", "extOrderNo": "8HlHbHnfs4tLVOYQ", "extUserId": "CWMktmiKd9vLPP0w", "itemType": "SEASON", "language": "Ytdb-nqxo", "metadata": {"DqWrpkWnnova15WV": "uE5cYVP9tQSa27Bn", "Pyq3I1BLtGEZDRNk": "k4DJUofJXK8RGS0z", "CYRVmbfzwUmsy0st": "UmKdXiiTObNdqkWa"}, "notifyUrl": "13g3pgHx6uPf6jQZ", "omitNotification": false, "platform": "gdDTDb3WdnOpzTrR", "price": 52, "recurringPaymentOrderNo": "OusNEHcI95GGdJvu", "region": "cDbs6UdccuM2ykRj", "returnUrl": "3WnyAaUaQBKFedL2", "sandbox": true, "sku": "wGNHgfgwZwVMvshG", "subscriptionId": "msg6ZJYnkHDnHTlR", "title": "ugM7a2UZgeesipbP"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order '027okM5E8tAajVSv' 'LRj306RDuaSixXEd' --body '{"description": "loYZBkatNLc42eq0"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'O6VsXtOlQwj5xPvm' --body '{"code": "7c5nPR0Y1sffUaZ6", "orderNo": "4dFpiv8o9Gw4QtKg"}' --login_with_auth "Bearer foo"
platform-do-revocation 'yIeySoUxoMrj2J4J' --body '{"meta": {"GQZAtyjTxnlmSyjE": {}, "aFH2DRN6HIEqIFEc": {}, "S0ynIMOYWpUYUQMo": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Nintendo", "currencyCode": "Tt6M2XizikCh6q0y", "namespace": "q2WAHtL7IWE3MFqv"}, "entitlement": {"entitlementId": "fDG5jvMOaXrDlEX4"}, "item": {"itemIdentity": "2U0syrGNhBmgT2q0", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 71, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "K2O7qYtOHV5hnpjc", "namespace": "5CNLnnEvo25aEtdj"}, "entitlement": {"entitlementId": "ls5oadseJg7y4Q9C"}, "item": {"itemIdentity": "U3fjSRaXD4HDmdvh", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 49, "type": "ITEM"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "iu7BIimNuwB3hBVh", "namespace": "uSMHhf5R2MkxQTAY"}, "entitlement": {"entitlementId": "GfE6hXZ7XLoWCGf0"}, "item": {"itemIdentity": "dZEeXBd6mGG6SHcZ", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 46, "type": "ENTITLEMENT"}], "source": "OTHER", "transactionId": "ZJRYV1oqNLmPAUIM"}' --login_with_auth "Bearer foo"
platform-register-xbl-sessions 'wa2wYq6DsUq38bYv' --body '{"gameSessionId": "aWLoKzHnngdfFnOf", "payload": {"Y9stXH6LYXXMndxB": {}, "PKmHVB7cNzHhvxc4": {}, "xAPZ86WNnQOhusPn": {}}, "scid": "4466u8agb5HPsBU0", "sessionTemplateName": "Eo6QJ9vBRJ4UP09f"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'abC01Thm9f4AWpyi' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'KVT3OvEujx5yjtQS' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'CJaOHzpb623EciYo' --body '{"grantDays": 100, "itemId": "OPVg6DLEZ6DxpwBm", "language": "2N8PdQ5mQaGXEbnm", "reason": "WR0H3EkrHqaLNdfK", "region": "szYZzOg113h6fIaH", "source": "Sx5bClxUOBmMwv5p"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'miIVnhlLoMemsp7o' '3F2LQw7Y2VdSxgXe' --login_with_auth "Bearer foo"
platform-get-user-subscription 'z7VvS0C9JLVQQPa7' 'PPx4Zi6WaC8wk7HM' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'bJhNwZgf5nlMDORY' 'uXnPNJgayPFcyUnK' --login_with_auth "Bearer foo"
platform-cancel-subscription 'XA3mcyMmX6WF8jtN' 'AVOYqSH533YlJ93C' --body '{"immediate": true, "reason": "Xz6lUMKi5mweMEZo"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription '2ZnL1Zg2JfH4f73j' 'AevOnES6YJLlb2Af' --body '{"grantDays": 95, "reason": "RNHIqK5PT404mFw4"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'HJv5T2kIQOecfLsY' 'KTmUnKlrOsJmEwjG' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'YN8VNPXNsmwTV8im' 'JHNI0l6jJVzF1Oi2' --body '{"additionalData": {"cardSummary": "sQuWUBBHZonSmzF8"}, "authorisedTime": "1999-08-15T00:00:00Z", "chargebackReversedTime": "1998-06-18T00:00:00Z", "chargebackTime": "1981-04-01T00:00:00Z", "chargedTime": "1986-08-22T00:00:00Z", "createdTime": "1998-03-09T00:00:00Z", "currency": {"currencyCode": "pgdHvlQKiR7SDQUD", "currencySymbol": "avOlKT5EIHNhJQq9", "currencyType": "REAL", "decimals": 89, "namespace": "PqNZrLCRRUysya4J"}, "customParameters": {"3rvTzMTMSwrNov2G": {}, "W9i54JY23AUWFTLq": {}, "0W1JqwKs1mO80L7I": {}}, "extOrderNo": "OHlf6j8PZOzUiQKZ", "extTxId": "qz5NSp0B7LODN3Bo", "extUserId": "i2sSAO2n4MZQt753", "issuedAt": "1996-11-14T00:00:00Z", "metadata": {"QB93rOW0guPoQbYz": "c1RDVhs2lhdzxxgi", "buqUuyW3cMz9Yydu": "MomEHcU15St4v8ry", "8IyqNVv0KVpXJTMx": "3Y8Um1iqehObg3OZ"}, "namespace": "9j0HDtbqMFlgHKQI", "nonceStr": "RtLfPngD83roOeqE", "paymentMethod": "7fcCAeExeQX43Lpm", "paymentMethodFee": 7, "paymentOrderNo": "yq35BWDoc3qNcQFF", "paymentProvider": "WXPAY", "paymentProviderFee": 58, "paymentStationUrl": "Hv141NPqjRUMKSQj", "price": 65, "refundedTime": "1984-01-23T00:00:00Z", "salesTax": 87, "sandbox": false, "sku": "2sEHvSxjWoM1rNJL", "status": "REFUNDED", "statusReason": "5jC6a8mEVCXHmFnr", "subscriptionId": "SL0PJcZQaCeNLYxM", "subtotalPrice": 71, "targetNamespace": "CF6YxFMD8tJQwZvU", "targetUserId": "VInos5RK100yH89i", "tax": 60, "totalPrice": 55, "totalTax": 85, "txEndTime": "1975-12-26T00:00:00Z", "type": "RL8cbTAntB1STaab", "userId": "1UeibXg7RCe5BtKc", "vat": 47}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'XMef7AvS3TfKx6By' 'TygbtOtcQS4Cmgw1' --body '{"count": 46, "orderNo": "w70xdNTuOdLKK0M2"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'B2hbqJin37P69t1K' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'qeGz7qbPnXEuOzzk' 'oBmMR9C4qPqJrAdh' --body '{"allowOverdraft": false, "amount": 70, "balanceOrigin": "Steam", "reason": "Ik7vCEq7FQ2S5VeW"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions '9ddxzLPV8wDjsnyP' 'h5yNbYXmlAOi1SC3' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'I1SjkH42LtyZKrTJ' 'o0L5sHil4Q0mqa8G' --body '{"amount": 2, "expireAt": "1998-06-07T00:00:00Z", "origin": "GooglePlay", "reason": "rjbJ5YT7uvqarTvr", "source": "REFERRAL_BONUS"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'c2YgRpk2IFGIgIps' 'cUpVAciu2XPPUxzX' --body '{"amount": 69, "walletPlatform": "Playstation"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'UvxhvTZcvRKoaM4o' --body '{"displayOrder": 51, "localizations": {"GHQczI5ZoTRUkjGo": {"description": "RkPs2SO9XrgXNIaU", "localExt": {"11cBXLwTfopqeZtH": {}, "JnRgaGfLMFbvyI5P": {}, "ZGzVLcmZKKKYARap": {}}, "longDescription": "e2tsNczam4Cdd1QY", "title": "vww4XDokltgq2vXt"}, "UnY6UhDJ4pe0s0Cu": {"description": "hl3dU9b4seYCyiB4", "localExt": {"tDCWx3cEX8wTi1v2": {}, "abpCWytPEi9Ze0hL": {}, "9rPkV5GkSrcl2O47": {}}, "longDescription": "XVzU7qlNVk7qnmBS", "title": "3XKDhp1OkMcErmeH"}, "0lX1hj0LaXgQ94fl": {"description": "h775AQfzNjQ7IuMS", "localExt": {"Y2epRDJjDyMDKQhu": {}, "TjtQZyIiAmCL8bNT": {}, "TfqLCv9DYBOProN4": {}}, "longDescription": "UWbQaKFrTv4JWElm", "title": "OCxqPrq9I3XJWBxT"}}, "name": "LcOef8MgIwkrKFEt"}' --login_with_auth "Bearer foo"
platform-get-view 'wESJCe2ksG3nZE13' --login_with_auth "Bearer foo"
platform-update-view 'H2fILFzOlAZbDQAE' 'JLbVWH2XLIg3Mgmd' --body '{"displayOrder": 91, "localizations": {"CYTgX9JQwErzjtuP": {"description": "9pUUv7qefNMFsZAI", "localExt": {"qak1zi0JSa5cRn31": {}, "D8ubfdXi7BycDPck": {}, "eGJUgU8bD5mGFFmK": {}}, "longDescription": "TTUxG0mpmFxxDNXG", "title": "lGJvHf558h1ltyhi"}, "SGhfqXhxBJ7zLXio": {"description": "AGkWgSDdDQvpRfGe", "localExt": {"3z2rtjWpJAlKHF0e": {}, "bxhJ1176CeD4dWCp": {}, "4wqlQJcZroNQiefB": {}}, "longDescription": "nPluOIjZyvlGDQGv", "title": "6pNNowEuVVZM28w4"}, "mnYvvlt1es7A4PFd": {"description": "uN4gx0UC6eWKCFGS", "localExt": {"97Si6XyLVPrkUxyZ": {}, "1OH5Nn4nMT8QOyTu": {}, "USD9ImtaPAocOQcp": {}}, "longDescription": "BWSNrCjSNEAdojkC", "title": "MmYyTGO07foRZ6Fu"}}, "name": "jpIWo0qJtqp4Q6Xg"}' --login_with_auth "Bearer foo"
platform-delete-view 'ICLgMHcP1eE6sjWQ' 'llYsONpp6QGW56CN' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 18, "expireAt": "1996-05-30T00:00:00Z", "origin": "Steam", "reason": "GwQkJuy9oLFcHHcr", "source": "ACHIEVEMENT"}, "currencyCode": "twaM2IoyY1wpIdjc", "userIds": ["mya73hX0a8Ri85PA", "9wNpmrK5Y5heA2ew", "AtTj1IMuuhxxlulf"]}, {"creditRequest": {"amount": 82, "expireAt": "1977-12-31T00:00:00Z", "origin": "Twitch", "reason": "IT0pv7XeqO8gY3c4", "source": "SELL_BACK"}, "currencyCode": "fWTGYx2ihgioL8Vv", "userIds": ["A84d9pMsl7zrNJvD", "dkykVAnmnRfUilcK", "EzHGTt9emdCLmzJb"]}, {"creditRequest": {"amount": 18, "expireAt": "1971-12-06T00:00:00Z", "origin": "IOS", "reason": "dtVb6VgA5yFIH3s9", "source": "SELL_BACK"}, "currencyCode": "U8UjgyCUpM1JBcTz", "userIds": ["f4dz1BojPoQg9764", "p1wxGF747468MXUq", "09vFd5z9r4nJWUvL"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "3uIffkIpPmrWVxNZ", "request": {"allowOverdraft": true, "amount": 46, "balanceOrigin": "Other", "reason": "kiU2jXSwsBBRopVl"}, "userIds": ["e2IoPMSQKcg0OTT9", "38d4NZGtk6EmWxC7", "5M88TKhFYkA9aRND"]}, {"currencyCode": "JA0ll1RimBCiQwuy", "request": {"allowOverdraft": true, "amount": 99, "balanceOrigin": "Xbox", "reason": "ok9sNK1ORg3tChsS"}, "userIds": ["PK2QiAUhIfi17Yrk", "WHNxiaNyqBfgw58H", "3fFpaS1uq1mH3oYf"]}, {"currencyCode": "x0XYL0fJOPYpnPqG", "request": {"allowOverdraft": false, "amount": 86, "balanceOrigin": "Nintendo", "reason": "ppYY1vlV0M2g6ore"}, "userIds": ["mIR28xVxbtpSKOfi", "IP3S6pypZqISn3ms", "qyBzWzCgMMWZuD6t"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'rykQFtW8QGKFZLrI' 'fqrZuu7IwKcT7sAs' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["v2TKCbYMVkXEHmsH", "wIGGsusS0zZRODEK", "PdudZsLaf8aZrXW8"], "apiKey": "4dt0TSTmy7XF26K2", "authoriseAsCapture": true, "blockedPaymentMethods": ["VFFkP7O3F4vsohRW", "DyGYIVFDbTvRYfpJ", "4wM9WZfOOxAzmsbh"], "clientKey": "i5QJuc2SNBaOlXfg", "dropInSettings": "sgBd7MYLLoPZrkjR", "liveEndpointUrlPrefix": "m5Ki0orhXrISEaPZ", "merchantAccount": "HLQkTHvndQsCKAO2", "notificationHmacKey": "JRz3CGwtujkzxidL", "notificationPassword": "cAQWGVRg6DVso5TJ", "notificationUsername": "CSugdo4XTm8t1YTW", "returnUrl": "qItjNWXm9sraeMA7", "settings": "8YSRS2fPy5fpbbbM"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "Iu9lu18jIMBUM77X", "privateKey": "memN8LO03mnFSq9j", "publicKey": "JTVFoFjxZjh5qUR1", "returnUrl": "Pq4a4uaMfd0SQAfY"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "IyzHL8jxakuVu5r5", "secretKey": "B08VZxI4TU3apnZX"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "oJ4gI4EQKO8xC4D0", "clientSecret": "FsUo3IB2kX5REQZs", "returnUrl": "HyXzoIXNf0KbL9Hy", "webHookId": "JttdgfLGO3ummpll"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["nV6B62P1Kazg73c6", "UpmA4ehxNIIlcrZz", "gameT2mLkkAMjHyI"], "publishableKey": "0e2Axj0nZHjmoKHJ", "secretKey": "ngwMe1AnQVj6QQjZ", "webhookSecret": "tkNJCnDSrsSey2Bq"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "OxgwCymCDYsuff3b", "key": "7G5FDX4mu0qPHb9L", "mchid": "l2EFEb8GnsthmQ2Y", "returnUrl": "6ZGOiqrg3lpqN5bO"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "fnqJ5bzDRzbhMxfE", "flowCompletionUrl": "DE4TrtIHyyMq79Ed", "merchantId": 57, "projectId": 48, "projectSecretKey": "9MxaF8QHGM2IuQYB"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'O8m0HgTth479W8rX' --login_with_auth "Bearer foo"
platform-update-adyen-config 'qwGVIRWgTNHCka3W' --body '{"allowedPaymentMethods": ["b5kH1BrLWUetP7nm", "ESQDV3BD1nnEzoUl", "UWqP4ElzL44KEm3u"], "apiKey": "HBMCP5ckjphURs4k", "authoriseAsCapture": true, "blockedPaymentMethods": ["faWzPUvCnfqsPGgJ", "ZyRwigaMu07Zek8W", "Obpf0FHYfViEj70K"], "clientKey": "YKIfFt4GYjUt4F1Z", "dropInSettings": "Vy2qFfSr3psWjOyH", "liveEndpointUrlPrefix": "LyKe2foqsVIfgBTr", "merchantAccount": "8RcxRQR0NYdJzf3T", "notificationHmacKey": "MhSaynVs05nZC4Os", "notificationPassword": "7hqIH2NgARSG3QQN", "notificationUsername": "GNH2K0UuJdeGNquQ", "returnUrl": "naXpDQ5rU2taDWh9", "settings": "JV5oc5IFQsrwHqFq"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'wVA5mozeeOjIFQfX' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'V3YW3ug3nCXhD7FU' --body '{"appId": "z1iOe0pHa0LmseIR", "privateKey": "XeoerZAxbDPXU5xJ", "publicKey": "BhIpJ9b0Ap7CmSiK", "returnUrl": "PjcwAw5GdxpvLfa4"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'b4hTaZBGdX66DqPT' --login_with_auth "Bearer foo"
platform-update-checkout-config 'durR3MYda0Y0BCO4' --body '{"publicKey": "qPnvxERWjKasq5zQ", "secretKey": "6uZNwKjnX7vDIqpc"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'jmaq5KBCsHlwNrfK' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'JrkzwR40tfd9GFXC' --body '{"clientID": "htxB10d4Q8nlBthU", "clientSecret": "Su4WNfTvD5UcES1e", "returnUrl": "LMZs9lSQVDp16qVI", "webHookId": "qXCK9dS5JTbdJEe6"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'mnkYAfw61kyKk0UX' --login_with_auth "Bearer foo"
platform-update-stripe-config 'UF2523OTvOmfVNJN' --body '{"allowedPaymentMethodTypes": ["DaSO3FEkk4It6V8B", "u7rIjGrxUMKbv60i", "xUuUhopdqGrqRZ12"], "publishableKey": "4P7PauXTrpWAjwat", "secretKey": "SvtPbAFn8oWQcmFk", "webhookSecret": "kRX6EqadAEIzxld8"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id '0Ynss7hc3VUxxZIg' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'kTLqMeJPCbs8jWmT' --body '{"appId": "teJhwNbwHGG39YAZ", "key": "J4HuLfeTfFBTOFFM", "mchid": "J9pq511jZcTK8zmM", "returnUrl": "fyshYk3b5cAFVo85"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'r1b8Yp2QnuhQuIdv' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'Zdj6AspWBfRnLcLb' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'p7OmcrDJ7u1rrRPc' --body '{"apiKey": "nG89rnNW1Yjfn8lY", "flowCompletionUrl": "4DnYRxY8ZhHeb0Ca", "merchantId": 86, "projectId": 65, "projectSecretKey": "FDjrSotKnpJWALpT"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'oj9rgr5RffM5JXvP' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'dzEpDln04F8BQjzo' --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "a8VxKOrfVfBRIfkS", "region": "tOqdXqhDMQ6tBLlj", "sandboxTaxJarApiToken": "C7gcT3M1DArk4L80", "specials": ["ADYEN", "PAYPAL", "PAYPAL"], "taxJarApiToken": "FY7SQkym9KvKMHK5", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'bqioeoRIplY0DIzR' --body '{"aggregate": "XSOLLA", "namespace": "4uIXBZsEYogFWiH9", "region": "z4E8zmaZ5cg0REtU", "sandboxTaxJarApiToken": "WY4fVIdqwCWF5wmb", "specials": ["WALLET", "ADYEN", "STRIPE"], "taxJarApiToken": "TxAAeDCowR3MeCNL", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config '7N7piT8VcrXLZnuM' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "NpKEIs3GC9VTK7tk", "taxJarApiToken": "JWFpHt7MdKu9Xwn5", "taxJarEnabled": true, "taxJarProductCodesMapping": {"6v4VjJf40LjUdORE": "LVXUFQyVlt9jmxmx", "pfp41k1uDg59PhdU": "XShabwyYCxTHrDel", "8oThvr8CUEzw4zL1": "QeR3EYXBFpUX9y4t"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'Y7o5FFi1n10vDgyo' 'HXIlrMl2RAukCL26' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'ihdMy9YCLNJEkvq6' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'SUSt8xd8EgE15XNu' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'w6Y7sToQNkuZzJ1X' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'Bxw01iBBQukgQ94Z' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'vPCWcMX0ov3U2sKj' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'IeyFS97dYD7LkcTK' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["YpCfl6HPy5cJfAV5", "iOfzwt3bpxRNt6lK", "oMjCPtEKeBWTm78F"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'n8TvZVTe4L2lXrVP' 'X6r5ZTcnVVOKMApT' --login_with_auth "Bearer foo"
platform-public-get-app 'cWsFRUlWBp4gBs9U' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'ufgsVbG6TUe3jbuQ' --login_with_auth "Bearer foo"
platform-public-get-item '7HMPO4ozK705ykRq' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "SPYZgPm4JLsXVtBO", "paymentProvider": "XSOLLA", "returnUrl": "qXG2V3baMkZ9JCqB", "ui": "IkUID0EE9InZNLww", "zipCode": "AhW2b5OHKtUv4lTk"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'QNjxhXdj1CG0EBgs' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 't9Qu8Ofl2oB8VTjF' --login_with_auth "Bearer foo"
platform-pay '0pD3NHU8iYUOtG5g' --body '{"token": "bQSKW2MdgCH4bWxR"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'F6fBPa6GOuV5z0p8' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'CHECKOUT' 'xNcQ6CkVi8fqVPRq' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'NbF5yLnYSa8xFLvc' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'YexMMMiDFh5RbW02' '1cHN3QbzVuJZH3k5' 'PAYPAL' 'cExxWKtdGTW4FILo' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'tv5ycTa0i6ifYP1z' 'ALIPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'AopZL9Cw6K9h55mw' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'UvhdBOgumV4wAsd4' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'ifGd0bkWrlhtfTyw' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'RW4fmg6btk3mAO4E' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'tB0hn2x1oTOX5gBQ' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "lVDx9neFHWhDRJty", "language": "fMU-YGxV", "region": "293551nQBNKcqCkU"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'XRj8gQHEe4CO370O' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'sbzRKKPd6mjzLxll' --body '{"epicGamesJwtToken": "UrFYn7cSuO7NxKHU"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'Hg0c4X7fHdITmN9o' --body '{"serviceLabel": 33}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'ZWdxfIdW8fNAM5Yd' --body '{"serviceLabels": [48, 17, 68]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'ArF7TB6A6a71zAJp' --body '{"appId": "aPeudUtKPJUmAvxB", "steamId": "xJNPlvvYZw4MWzWF"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'TuNPf5JCSDyYy4e5' --body '{"xstsToken": "qoTZxSoZbQUnUxS6"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'm68WL3HDL4yx5I0e' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'uBsccHPA2v9XP9en' 'fEX7lloLgIYqxFfS' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'NJlHCjxLNnYUlGQs' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'py9ZVlLIFwLgT78n' 'ootfUs9559ilm3ca' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'uhrw9Yn2z5cnbm7z' '2Aa24yBTw3wfNGyW' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'f3VujS7Bq5bcfPW4' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'pPZB9YXltCxyztUn' 'j17t3gHBXvjvziex' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'zOLbOWbtcJUxM3AW' 'yDkA5LmART6kulpM' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids '4SRtUE5P4kxmHtFb' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'jqurHix0QYycDH5w' 'e2Mx0sYCnYPT4i4m' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'xc14iRfzJwKuc7Ep' 'iQEzz5N5osRYO7wb' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'Yh7q02W8tkTURUFm' 'qNc8xhQqptccNorR' --body '{"options": ["ls7EC3nDnhFvDlFd", "7iyZpvWVJFK6Zuvl", "zGCII156hIg0g8HI"], "requestId": "xpzm9AcFhH4ZlYY3", "useCount": 36}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement 'mZf5fEdvjbyJPQ1q' 'dRcJjsme1OukIfIZ' --body '{"requestId": "VH8q8svV5hMOSfpy", "useCount": 73}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'TA6AvmW0567BFqbr' --body '{"code": "PIuxKmBXLi6GpnqA", "language": "Vn_fpgq-ou", "region": "CDWWpN3B6tedgFUz"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'Bm5vGA3itKaF9z3W' --body '{"excludeOldTransactions": true, "language": "WeR", "productId": "8T9g1f6P3D3rVcC2", "receiptData": "g6t42jE1Wad232YV", "region": "7A2zHFGbN8AQaCaw", "transactionId": "9UF7cdSDd99DQZ7v"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'nTx8HDXTJWiyw17o' --body '{"epicGamesJwtToken": "gzmbj4SLYDrZJvDL"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'Gvn6qtroZcp16HKX' --body '{"autoAck": false, "language": "GcU", "orderId": "1TGZJmgWNHWnvOBR", "packageName": "Ct4onqRo2PnMSRar", "productId": "Kg4coy3AFpULIn21", "purchaseTime": 81, "purchaseToken": "rNDBF1oU37vjfyX5", "region": "YLaM0wmi0i1WABBb"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'q8IzZsMFLX9ZhFXc' --body '{"currencyCode": "FtfBS3ZIHofhwyM6", "price": 0.4433844014381587, "productId": "w2sFGQ5DQoDwzrKP", "serviceLabel": 84}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'pASBicX3ZwzZ7aVh' --body '{"currencyCode": "rkmhSOEozGOv8D0i", "price": 0.7608943547185449, "productId": "xzrec5kNwJAxm0Rd", "serviceLabels": [73, 26, 31]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'l6nIhG5SilDDIsmj' --body '{"appId": "4h625dIsMKWBxF9R", "currencyCode": "AIrI81ZR2kNzh60R", "language": "BoAR-Mnkz", "price": 0.5251162144955371, "productId": "6AUjBCdf0Rp5e5Iv", "region": "FuN1oUsCnBmGMx5F", "steamId": "6EhM3dKvIG9MR0hT"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 'INvq1VR9SJUfQEX9' --body '{"gameId": "96Mh1sQ3Dw3uyjgQ", "language": "FbTv", "region": "jrr1OL606QpqCgxt"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory '0NgDSj1T6EdeYFmr' --body '{"currencyCode": "LT0HbvS4kSSt3CyD", "price": 0.10782906128210157, "productId": "f6eFAiqSkHi0BR2E", "xstsToken": "lF6z6eJKuOW61akR"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'FizqxCmudSXivAL3' --login_with_auth "Bearer foo"
platform-public-create-user-order 'n478mhb2I2yBJeCJ' --body '{"currencyCode": "ghTrk68FWFzuLBdl", "discountedPrice": 36, "ext": {"uLufhQj2KP3LLxl9": {}, "Hs2L2wlpKBVURxHe": {}, "fz77a9fntCNiHBRU": {}}, "itemId": "NCPSre5GmZzCQwil", "language": "DBjN_oLtY-cr", "price": 21, "quantity": 47, "region": "KC1h6h45u0wuh9pY", "returnUrl": "0011jSmHFTtfM2mG", "sectionId": "UUpq3ix7Am7W1fwJ"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'nV94BrMSP31wAkVH' '75UcmNXK5RqcIo9l' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'pz9oM52vHPlwVV3j' 'lPKDEYahnlLJaLCv' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'jRKKX1brmkJDfdng' 'bQD3pO8U3W94Z8IW' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt '2MAL9gYHEV3wnTZT' 'vYYf4ZFuV6L2Aldo' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'WWRN5wNYlFiliYmB' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'rqrOc0NIligBrOkB' 'card' 'mu6XFfRcWDXhq1Ym' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'Geygr2S4Yw8NmPaB' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'eryzX2hOPVVFqVqx' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'jq1iG3TySOh8SI75' --body '{"currencyCode": "oXbyq8FBbur80Qwn", "itemId": "lgAVfqz6gQJh8sn0", "language": "xb-wF", "region": "ClGyzYgnYTdim6Pk", "returnUrl": "Roq5TO65KWh8ztRJ", "source": "kXxUAj3jzZvEaY10"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id '3YUIMuSjDHz0zPWM' 'ZQNNP2JqQqhISTBT' --login_with_auth "Bearer foo"
platform-public-get-user-subscription '1Gofv4SuaZ8yCB9T' 'VZnuzgvAZJRm71EC' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account '3ENuvD8OPsp5Z3ez' '84KVB7HeWPnVeFdy' --login_with_auth "Bearer foo"
platform-public-cancel-subscription '5ezlCU6SGzkMpTL2' 'wxobjxAbagqEmXn6' --body '{"immediate": true, "reason": "2VeV2emK3JecJA4s"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'kqCbPxRkIAFQh9yD' 'doLE2s7mrVrmTJwt' --login_with_auth "Bearer foo"
platform-public-list-views 'BTzQTrNo1LcWNf7x' --login_with_auth "Bearer foo"
platform-public-get-wallet 'Hpi1JZJjIRtCfqDH' 'Slo54zSnRN0zGMwo' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'rzym1z3ZdetOic9A' 'QOFWpdItLBhvKJq9' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'tWz9yui8a6jOflFJ' --body '{"itemIds": ["lZEhz1QDeh05hj92", "bwVVxJ62Q5AOAOyL", "65cPaOZA8BG8KcVW"]}' --login_with_auth "Bearer foo"
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
echo "1..410"

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
    --body '{"context": {"item": {"appId": "OX9n3YsjJexnFA9U", "appType": "DLC", "baseAppId": "fvgtRTPPzwJmKaLC", "boothName": "x3gcidEALWe6RG5w", "boundItemIds": ["hQW3I1y9tjRLVOXB", "Wznu5AjwR1Z4fU7I", "CcaQtuuKUw3dUwWH"], "categoryPath": "Ma0JiIe1AY0tUA7E", "clazz": "KASk3USNLhOBlxRB", "createdAt": "1990-02-17T00:00:00Z", "description": "qwfIHPWMkOmrT5HL", "displayOrder": 46, "entitlementType": "CONSUMABLE", "ext": {"7riPlPgJcLbeQf9M": {}, "ICxX7xKyCfgwSPz1": {}, "4asyOdgn77gN8K1F": {}}, "features": ["egQbNA2WQrHTkJT1", "lNkgbFE8U4meK5gr", "mPBsFH71VrhsISYt"], "fresh": true, "images": [{"as": "kChD3n0c1ryAkRvd", "caption": "PR8gx2rX5dck8NFK", "height": 85, "imageUrl": "R0YaMsF3f5KLtpTS", "smallImageUrl": "sPMGDZTOwEP5Bhh0", "width": 81}, {"as": "jqdktHIO1VdtMSew", "caption": "s1TrU4FhAfKDcDG5", "height": 2, "imageUrl": "7JObSHksRkabpmvR", "smallImageUrl": "sc7ZYvXCT6m6mRZA", "width": 23}, {"as": "aZFiSkmhwVVMGkXN", "caption": "wMYwFyljy5bYQdQ8", "height": 91, "imageUrl": "hUHA0FJZwP8GslMp", "smallImageUrl": "x3m7lEXTmnTbtjK9", "width": 89}], "itemId": "2ersoZ2KbMb5jal0", "itemIds": ["ruZmBXlGSp85q6fu", "Gfo5wSDHnyabk493", "I3pvHKDaWhTN1qyx"], "itemQty": {"pUzWIZWJTDzWguhu": 19, "B8DXb37DffTZ7yQz": 68, "37LLNCjIySe36SA5": 7}, "itemType": "INGAMEITEM", "language": "wZk0HGeJNaBjVdMB", "listable": false, "localExt": {"kMzKycYrhr4FnNzd": {}, "T4pWwIVXp9avUr6I": {}, "ydpXW0MO0eT9okl6": {}}, "longDescription": "MlWOl9feWO2bmOik", "lootBoxConfig": {"rewardCount": 93, "rewards": [{"lootBoxItems": [{"count": 57, "duration": 38, "endDate": "1989-10-03T00:00:00Z", "itemId": "BphA9BXpKYgF9Oui", "itemSku": "gDP0Vjmy7j2BrdCA", "itemType": "m3slCwaBqHpE55sj"}, {"count": 47, "duration": 76, "endDate": "1984-06-08T00:00:00Z", "itemId": "Gijw0dQtZNonMrPk", "itemSku": "zUe9SglAJGyZS0I8", "itemType": "FevJiT98HUBp56Q4"}, {"count": 100, "duration": 8, "endDate": "1986-07-25T00:00:00Z", "itemId": "xtGMs5tPKPuK0K4P", "itemSku": "iMDTR7LxihuOn57i", "itemType": "o0d9dG3yzaNbGeAS"}], "name": "X83SLiIbAP2qyUnH", "odds": 0.21502913254983058, "type": "PROBABILITY_GROUP", "weight": 48}, {"lootBoxItems": [{"count": 36, "duration": 55, "endDate": "1986-04-15T00:00:00Z", "itemId": "dDfY4TTxu8goZgsX", "itemSku": "4RwfM4qnUdcQqZ9F", "itemType": "1uivPob0YZEuXQAC"}, {"count": 60, "duration": 30, "endDate": "1986-02-20T00:00:00Z", "itemId": "QryNf9VGxbOeJe4n", "itemSku": "9eUlBQZ2UGePWXbA", "itemType": "yGiXa9nUsHCVicuJ"}, {"count": 48, "duration": 30, "endDate": "1977-01-08T00:00:00Z", "itemId": "rUXVlB6xNel4Bxb9", "itemSku": "KwFYqdhEVq3hbsAp", "itemType": "eASfR0ljKxqZcLuh"}], "name": "wNDvValv3bkoMXNz", "odds": 0.18540672301104444, "type": "REWARD_GROUP", "weight": 49}, {"lootBoxItems": [{"count": 8, "duration": 47, "endDate": "1994-09-07T00:00:00Z", "itemId": "GXtZU5SuIhMSaDRp", "itemSku": "17dUWHcjrb6qNeKp", "itemType": "OxPrlG9svdqsiVTq"}, {"count": 85, "duration": 6, "endDate": "1972-06-13T00:00:00Z", "itemId": "zY1yxl7zeEpmSPO6", "itemSku": "KwlJQlj9Ii2jARwz", "itemType": "owk9OoiPdnq9KBqB"}, {"count": 46, "duration": 16, "endDate": "1975-05-27T00:00:00Z", "itemId": "NCsnK8CcO1OHbpQZ", "itemSku": "twW3EwLre1bL4dJn", "itemType": "kRLJbMvOGSd7uMrm"}], "name": "Q2SaLd6M7TM3wnJy", "odds": 0.4956339843148845, "type": "REWARD", "weight": 90}], "rollFunction": "DEFAULT"}, "maxCount": 81, "maxCountPerUser": 29, "name": "2ENn1RLi5iMPnbg7", "namespace": "o1zYpqUsliPyXZGY", "optionBoxConfig": {"boxItems": [{"count": 70, "duration": 67, "endDate": "1996-09-01T00:00:00Z", "itemId": "ZDtWbdkzPP47RcUI", "itemSku": "i2CoNj4EG2emxKQk", "itemType": "8cBrt5E8k8rzDZ08"}, {"count": 20, "duration": 70, "endDate": "1973-10-13T00:00:00Z", "itemId": "cOx5ugNCDd6jW6fj", "itemSku": "tBcO3fWq9qfmBv0X", "itemType": "gJB6a7uykADFpinF"}, {"count": 5, "duration": 68, "endDate": "1973-06-02T00:00:00Z", "itemId": "MSYijqEuMfuYFUS0", "itemSku": "79tOpZYM1XV0Op0d", "itemType": "amycnTUOoMkOppZN"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 93, "comparison": "isGreaterThanOrEqual", "name": "kRUIX6IFHNmB9mYB", "predicateType": "SeasonPassPredicate", "value": "zaBciSxwzuIpGBYH", "values": ["GIQ1ZxVIefYlKBJy", "QMqUEfDikX6yOlgZ", "THoSVxgQCbpZx5yM"]}, {"anyOf": 36, "comparison": "isLessThan", "name": "n0I6T0hvcAFTaSWR", "predicateType": "EntitlementPredicate", "value": "VOGIY7hM6uhonkAe", "values": ["bTi2m7eNsYEqKkeu", "ww3nBTVmBFZ6TIs9", "0FdTSSEluBxM47BT"]}, {"anyOf": 77, "comparison": "isNot", "name": "cCHIGfmCMTr9ACnI", "predicateType": "SeasonTierPredicate", "value": "sMrEgl7ZR1HCkf2S", "values": ["gzqRMuMPrIekxq58", "fikq83hqJ7HP63Se", "w78lLGKjDHuXt358"]}]}, {"operator": "or", "predicates": [{"anyOf": 22, "comparison": "excludes", "name": "VW5fkl60ImLBv6nU", "predicateType": "SeasonPassPredicate", "value": "0r1rfX9stpvJUuyP", "values": ["stwQFUEbTPQ8p7VM", "dzx8BM2wEgTtLRT5", "lxEXnqHwMyKpwphj"]}, {"anyOf": 97, "comparison": "is", "name": "XvM1GqMkZ44UXgdB", "predicateType": "SeasonPassPredicate", "value": "BYCFGoKpXx60GmEX", "values": ["9x2BYpyKEBQ7TW7l", "AI81k4Gr7jVVx5l3", "ZvDbwFJJhBRdq8Bg"]}, {"anyOf": 51, "comparison": "isGreaterThanOrEqual", "name": "lMeQprfgLGkHX1td", "predicateType": "SeasonPassPredicate", "value": "f5YpDUGYsJBEkYUr", "values": ["Lv4qUiTkFcLBrg2J", "tt0PpQY3Pnnic80y", "B0WiCpVBwvAffJ3b"]}]}, {"operator": "or", "predicates": [{"anyOf": 83, "comparison": "excludes", "name": "KleuV271bwZ4niLS", "predicateType": "SeasonPassPredicate", "value": "radJmJFUsU418vAl", "values": ["3pS3jyCkGKltBNE2", "UbhNtH3yYg4Qnn2u", "mfGg9NO1Z2DvnAxH"]}, {"anyOf": 14, "comparison": "includes", "name": "a7P4JI4H7uDzkOHT", "predicateType": "EntitlementPredicate", "value": "C3iqrkyJFOVaewFc", "values": ["LUHjGaIcZN28gH4C", "v9h31YxuZnoSesWp", "d9xTdt2K1CzpQWsl"]}, {"anyOf": 81, "comparison": "isGreaterThan", "name": "KHC16xjJZ4kiU3N8", "predicateType": "SeasonPassPredicate", "value": "56ll2LQWpdESOBV7", "values": ["wZJsg7wSv9lyRyTd", "Fikt18cQ677SotDE", "YBUljvBzvYNEtfgB"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 0, "fixedTrialCycles": 96, "graceDays": 35}, "region": "2xBSEQ8rBKc2K6oJ", "regionData": [{"currencyCode": "XxVEfnaqX8NuZtRU", "currencyNamespace": "TKUvR69PImy6Ccwl", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1981-11-19T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1976-11-30T00:00:00Z", "discountedPrice": 67, "expireAt": "1999-12-19T00:00:00Z", "price": 77, "purchaseAt": "1975-05-25T00:00:00Z", "trialPrice": 49}, {"currencyCode": "mRAxRGeIKGlCJmDX", "currencyNamespace": "pjyvLSHB1y3klHuA", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1981-03-06T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1972-04-02T00:00:00Z", "discountedPrice": 83, "expireAt": "1972-07-25T00:00:00Z", "price": 66, "purchaseAt": "1993-06-10T00:00:00Z", "trialPrice": 61}, {"currencyCode": "S0OG7ohiL2943Clr", "currencyNamespace": "NhEdxd24ZKfvMf1T", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1984-09-29T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1991-10-09T00:00:00Z", "discountedPrice": 12, "expireAt": "1996-10-08T00:00:00Z", "price": 18, "purchaseAt": "1975-01-06T00:00:00Z", "trialPrice": 58}], "saleConfig": {"currencyCode": "Bvb1rcuEtWAF763k", "price": 4}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "0WEIetOXMt37MXy7", "stackable": true, "status": "INACTIVE", "tags": ["A70NgJTxjtzgO7W3", "9ZGMWou1U0RVCf3g", "MWDAodCKqfqzeexH"], "targetCurrencyCode": "taRvJ6lKWJwHO65a", "targetItemId": "OFDwpqy7XOU3Dwgl", "targetNamespace": "yMGNll4O8ELahcNJ", "thumbnailUrl": "qRjepck1l0qxRyQ2", "title": "pi7xuAufJakIPXOQ", "updatedAt": "1984-07-15T00:00:00Z", "useCount": 27}, "namespace": "pgWhTED5YmPTBUkm", "order": {"currency": {"currencyCode": "2FyvdguCYVqFyIKh", "currencySymbol": "1YtTY4AejyQc5Dac", "currencyType": "REAL", "decimals": 16, "namespace": "HLGV3sNxS8uLBZiV"}, "ext": {"RYIyQLcslTEqgVNG": {}, "8AqktgvjwNJAwIpE": {}, "y2ZNpojZ24I2n25s": {}}, "free": false}, "source": "PURCHASE"}, "script": "srmJFHGiYnyhbqxL", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'yMlgfkTsAThLyflA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'qqAP4M78smYdyge6' \
    --body '{"grantDays": "DroOywOxI4G6jZzo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'YIFAvYfT8XQw2EOq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    '6BFjmN4OqKGLRpNW' \
    --body '{"grantDays": "zKZtZnxgywmr4CYN"}' \
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
    --body '{"clazz": "Gm7Tk1mMyeNRsjQu", "dryRun": true, "fulfillmentUrl": "pNOnuSksfm7hcIFd", "itemType": "CODE", "purchaseConditionUrl": "OgoaBooTawHLMxhx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'INGAMEITEM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'nC3o6pXU5MDJLCB6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'WbXWIRpgjooaBVem' \
    --body '{"clazz": "sbkaXZQ6nTj9rZpk", "dryRun": true, "fulfillmentUrl": "ntuOeaPAyPeEGBep", "purchaseConditionUrl": "K1Ix4SwjCYjCHniV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'Sn1gYGal5NrBtT0o' \
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
    --body '{"description": "m9OlGzpF25qu98Rh", "items": [{"extraSubscriptionDays": 21, "itemId": "sfwDMivWqHHGlnAn", "itemName": "Eu6EKYceTEqYudHl", "quantity": 54}, {"extraSubscriptionDays": 39, "itemId": "AxeEIfUxJ2xMSNNB", "itemName": "xCeN3pGn46fGvodt", "quantity": 83}, {"extraSubscriptionDays": 79, "itemId": "CSmmT3WKijbqhT3u", "itemName": "yQRXvvcUYDeWPZ8y", "quantity": 14}], "maxRedeemCountPerCampaignPerUser": 14, "maxRedeemCountPerCode": 46, "maxRedeemCountPerCodePerUser": 88, "maxSaleCount": 27, "name": "0gIdj1lTJdNLmAvE", "redeemEnd": "1972-10-26T00:00:00Z", "redeemStart": "1986-08-09T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["lQ5Ao8TITYiHSR2S", "EJh1YDedZdNqkXPW", "ZfT8ZfdKp9q4nXuK"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'tJAYror2XdtSCG7Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'ExOoIpWzacOvwUsn' \
    --body '{"description": "IbQM3ZAtyEWKWoZR", "items": [{"extraSubscriptionDays": 95, "itemId": "bncoj5RvEtXiKyUG", "itemName": "dNfMiwgSvsTRmJsO", "quantity": 24}, {"extraSubscriptionDays": 20, "itemId": "0wVFyHvFhRMCFJuA", "itemName": "0DEMgykqqjoHTpIP", "quantity": 79}, {"extraSubscriptionDays": 91, "itemId": "871QSmsspn5sNfif", "itemName": "K65tvaH9jwcO48pt", "quantity": 14}], "maxRedeemCountPerCampaignPerUser": 50, "maxRedeemCountPerCode": 31, "maxRedeemCountPerCodePerUser": 76, "maxSaleCount": 56, "name": "l90IBFsSb3FsV2Pn", "redeemEnd": "1985-04-04T00:00:00Z", "redeemStart": "1980-10-07T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["0D5jZEwxcow6L7c3", "COEP4AZx70uwV4Xg", "vGTMHkXeEwuFJf7t"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'bq5KikDE7hWvT5bz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-get-loot-box-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetLootBoxPluginConfig' test.out

#- 20 UpdateLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-update-loot-box-plugin-config' \
    --body '{"appConfig": {"appName": "cfzIpL2pWB4Xsdrx"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "6kEAmKGNEmFPcUAL"}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateLootBoxPluginConfig' test.out

#- 21 DeleteLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-delete-loot-box-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'DeleteLootBoxPluginConfig' test.out

#- 22 UplodLootBoxPluginConfigCert
$PYTHON -m $MODULE 'platform-uplod-loot-box-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'UplodLootBoxPluginConfigCert' test.out

#- 23 GetLootBoxGrpcInfo
$PYTHON -m $MODULE 'platform-get-loot-box-grpc-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetLootBoxGrpcInfo' test.out

#- 24 GetSectionPluginConfig
$PYTHON -m $MODULE 'platform-get-section-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetSectionPluginConfig' test.out

#- 25 UpdateSectionPluginConfig
$PYTHON -m $MODULE 'platform-update-section-plugin-config' \
    --body '{"appConfig": {"appName": "PpxXZDy5Pmbu7RrD"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "a5mdlXTCL467xHbA"}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateSectionPluginConfig' test.out

#- 26 DeleteSectionPluginConfig
$PYTHON -m $MODULE 'platform-delete-section-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteSectionPluginConfig' test.out

#- 27 UploadSectionPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-section-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UploadSectionPluginConfigCert' test.out

#- 28 GetRootCategories
$PYTHON -m $MODULE 'platform-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetRootCategories' test.out

#- 29 CreateCategory
$PYTHON -m $MODULE 'platform-create-category' \
    'gW8lBvniHdARadfS' \
    --body '{"categoryPath": "octA3GYO94ZOo94g", "localizationDisplayNames": {"S5DHLB65fxQ06GwT": "mobiBnfrnq9kOFBW", "hUTPiKR3qcbHLGpl": "YsS3jsRZffCd00Vr", "gPuNtOv3jbhGBuW8": "KcyPMfDWSEEpKoJl"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateCategory' test.out

#- 30 ListCategoriesBasic
$PYTHON -m $MODULE 'platform-list-categories-basic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ListCategoriesBasic' test.out

#- 31 GetCategory
$PYTHON -m $MODULE 'platform-get-category' \
    'mhMQUCx70QjYbzem' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetCategory' test.out

#- 32 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'OTURzzAOIBarB7kc' \
    'er5SvPLeQZIpKFXg' \
    --body '{"localizationDisplayNames": {"nsxx3c2bUsO7FP8R": "mOstZAGDgiVsV2Ot", "twJaMxPDIJ5hFQHu": "mFvPKqupHj72TlLs", "964iABOgTKtnaA7O": "35Iaytd9CsAMTZC3"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateCategory' test.out

#- 33 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    '7xPXxnfggnZ3EZp6' \
    'wSAufwYirs9lwvPK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteCategory' test.out

#- 34 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'd925u3fFLV0YeMrV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetChildCategories' test.out

#- 35 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'aYSTRYGFzgLZ7gEy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetDescendantCategories' test.out

#- 36 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'pQf2Pn9A4gcbDJ0L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'QueryCodes' test.out

#- 37 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'mdnOPkIT1C6KGTpA' \
    --body '{"quantity": 65}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateCodes' test.out

#- 38 Download
$PYTHON -m $MODULE 'platform-download' \
    'JZ6xullPROSfiW9z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'Download' test.out

#- 39 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'cxmgNfTHu3vkZt9F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkDisableCodes' test.out

#- 40 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'gWckjNpHhM2ZXp4N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkEnableCodes' test.out

#- 41 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    '0ROmUCTrS7Gi9Iig' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'QueryRedeemHistory' test.out

#- 42 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'k9vamO7Q2WQwSWqS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetCode' test.out

#- 43 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    's05rjISy4B0X9AJd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'DisableCode' test.out

#- 44 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'kT7UYCV8agvwOI2L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'EnableCode' test.out

#- 45 GetServicePluginConfig
eval_tap 0 45 'GetServicePluginConfig # SKIP deprecated' test.out

#- 46 UpdateServicePluginConfig
eval_tap 0 46 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 47 DeleteServicePluginConfig
eval_tap 0 47 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 48 ListCurrencies
$PYTHON -m $MODULE 'platform-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'ListCurrencies' test.out

#- 49 CreateCurrency
$PYTHON -m $MODULE 'platform-create-currency' \
    --body '{"currencyCode": "lOQNRN132RdgwMXv", "currencySymbol": "9olKpRyWQim3qlAR", "currencyType": "VIRTUAL", "decimals": 49, "localizationDescriptions": {"mPPmYUvlkBGPJFaF": "zkABC8zWMcYW5iRr", "w32FRg8y4rOuj7J6": "ijJbcycXmBcrJLb7", "labyotifVk9Kyqce": "Gv0CEDTVSjINYeKL"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'CreateCurrency' test.out

#- 50 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'owG7UQB9pXzuCK5q' \
    --body '{"localizationDescriptions": {"d2m8A5axixm9X9TX": "NhN8y1PVriIyv9kj", "uiAGiXx47etMikLF": "ggYDc2FMbzZoeKag", "nKf2Yifzvr9OqTsI": "nGzHFpFXYJtHtqwo"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdateCurrency' test.out

#- 51 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'IwQBeIALI8JNIII4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'DeleteCurrency' test.out

#- 52 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'jrzrPsuMziNM8AB7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencyConfig' test.out

#- 53 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'RRxiZH3ngnitURdM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetCurrencySummary' test.out

#- 54 GetDLCItemConfig
$PYTHON -m $MODULE 'platform-get-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetDLCItemConfig' test.out

#- 55 UpdateDLCItemConfig
$PYTHON -m $MODULE 'platform-update-dlc-item-config' \
    --body '{"data": [{"id": "jZLYCaeklQcFY1QI", "rewards": [{"currency": {"currencyCode": "k1h5EKvMGd6hQ2mH", "namespace": "jmLu4oFlReHy0JyZ"}, "item": {"itemId": "v7honqeiGTTqpgVs", "itemSku": "Y1kPNdJiJXB3yjNU", "itemType": "PIfvoXRO0CkW1Zcg"}, "quantity": 96, "type": "ITEM"}, {"currency": {"currencyCode": "SbbnffBWRaJN1SjC", "namespace": "FLDNJfAhJGwSYEZj"}, "item": {"itemId": "Eb0Pv35fEk9s11bF", "itemSku": "Xkf7rQJ4Kj7Qyo9t", "itemType": "UptiyZzRX8Y4rxRW"}, "quantity": 24, "type": "CURRENCY"}, {"currency": {"currencyCode": "T3ujvV7W6ADLtn7o", "namespace": "Inn1Bz3wM3BI51et"}, "item": {"itemId": "n17OcmSVHZ6wtPVA", "itemSku": "wgvxYxXJTduZp1nN", "itemType": "YHREmm1cBuaRaGeM"}, "quantity": 93, "type": "ITEM"}]}, {"id": "jifWRbmtK7MTxcCW", "rewards": [{"currency": {"currencyCode": "nMiCLsjroKHPApA8", "namespace": "GsGwyocvY9NePjLJ"}, "item": {"itemId": "QJXwUApJWohXn01R", "itemSku": "B7pu7BaONXyE5fID", "itemType": "bsMi48xOYVvEcEm5"}, "quantity": 92, "type": "ITEM"}, {"currency": {"currencyCode": "pZxby2J9vGOUeSeG", "namespace": "b02vDPUpv5VEdIG8"}, "item": {"itemId": "2dpIbfxVFfdvKQVg", "itemSku": "PQw3MVXe4xBPDWHR", "itemType": "HCCVDBRjPUQWYVxG"}, "quantity": 87, "type": "ITEM"}, {"currency": {"currencyCode": "FJlDDJ7z4Pb5jyGI", "namespace": "D39Ung1D57FjYKlJ"}, "item": {"itemId": "iRIvhej77OSPwdzM", "itemSku": "SmrSvQdsAdTUGpd8", "itemType": "KFrXKFA2gdjQCYoE"}, "quantity": 94, "type": "CURRENCY"}]}, {"id": "5qSl7WN3ncPkqiTK", "rewards": [{"currency": {"currencyCode": "zz72PKXjShM2Dves", "namespace": "mMIbiQfaHxl2YUNR"}, "item": {"itemId": "LRjgKqSSYgZnVfa8", "itemSku": "govttlpFAq8oebnS", "itemType": "4Y2zkGYTr9yJIveX"}, "quantity": 12, "type": "ITEM"}, {"currency": {"currencyCode": "r6Inl9VTJB9Al3mn", "namespace": "2DsHDHzSVJzhU5Z4"}, "item": {"itemId": "4zgZ1fieLdl3Y82D", "itemSku": "Oj5kPuNRZZaUccuB", "itemType": "Yep9n7b17fsblalJ"}, "quantity": 35, "type": "CURRENCY"}, {"currency": {"currencyCode": "wQiU3DD0xZFH1fHF", "namespace": "LSr0O4rEZTbFDj2L"}, "item": {"itemId": "2McvCrrR7h9uKLXD", "itemSku": "aRf3pxKtJbRY5luC", "itemType": "wKrt6wn3yVrRCh6j"}, "quantity": 36, "type": "ITEM"}]}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'UpdateDLCItemConfig' test.out

#- 56 DeleteDLCItemConfig
$PYTHON -m $MODULE 'platform-delete-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'DeleteDLCItemConfig' test.out

#- 57 GetPlatformDLCConfig
$PYTHON -m $MODULE 'platform-get-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetPlatformDLCConfig' test.out

#- 58 UpdatePlatformDLCConfig
$PYTHON -m $MODULE 'platform-update-platform-dlc-config' \
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"SOEGEDYfiGPYo2K3": "dN3YBOJfvV6SuHov", "oQlk5wL2oXDZ20Bw": "2H4tz6KUC4jXGj2G", "0GZ3JBYi9bBKBRpd": "bLCiwxOx2XQn94xP"}}, {"platform": "STEAM", "platformDlcIdMap": {"qsANBbEKQrgocpjG": "NenRlDORLvP7ynTu", "XzafCqlMrrVIehVC": "f3AwIzUdQ6sTrUg7", "Z0SLrZraV3NLBUSr": "FnzE6yR1wLTgjsnB"}}, {"platform": "XBOX", "platformDlcIdMap": {"FVrZRrOntm2KjbfC": "OuW3dBmFwUO7Y0xh", "MLwxgRpTSUppvO3Q": "G68KeD7QJQEEVDAg", "045BvtPd7ibBA3sd": "51mDooH53vibq3Qc"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'UpdatePlatformDLCConfig' test.out

#- 59 DeletePlatformDLCConfig
$PYTHON -m $MODULE 'platform-delete-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'DeletePlatformDLCConfig' test.out

#- 60 QueryEntitlements
$PYTHON -m $MODULE 'platform-query-entitlements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements' test.out

#- 61 QueryEntitlements1
$PYTHON -m $MODULE 'platform-query-entitlements-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'QueryEntitlements1' test.out

#- 62 GrantEntitlements
$PYTHON -m $MODULE 'platform-grant-entitlements' \
    --body '{"entitlementGrantList": [{"endDate": "1979-09-17T00:00:00Z", "grantedCode": "tt8L5dIebsw7EjkM", "itemId": "nJSziEA43WqIMJdr", "itemNamespace": "qHIsJ98WRjqYieXR", "language": "GHm-ntwI_902", "quantity": 70, "region": "YEHs9TIkcnrJ64BO", "source": "OTHER", "startDate": "1979-07-22T00:00:00Z", "storeId": "AilVhASFlYMVJtE2"}, {"endDate": "1972-02-08T00:00:00Z", "grantedCode": "AeC7pF73y9eALKWi", "itemId": "nUJ7bAuUJ7Fxg5Li", "itemNamespace": "jlQTVq8Bh1p0NCKW", "language": "NLmm-002", "quantity": 46, "region": "Fl3ZhSMLtrwnjTJV", "source": "REFERRAL_BONUS", "startDate": "1971-04-07T00:00:00Z", "storeId": "YPNBp9wA4LxO2n7W"}, {"endDate": "1989-10-21T00:00:00Z", "grantedCode": "QFzBCD9S03D7JLsI", "itemId": "M3VOMRvvqkXDMPzO", "itemNamespace": "B08tpk0qhZath4b4", "language": "nUbW_924", "quantity": 94, "region": "x8yneWKrOy4xcg30", "source": "REDEEM_CODE", "startDate": "1973-05-20T00:00:00Z", "storeId": "ZXZ1TLMZnNL3DQK4"}], "userIds": ["l1lfIR7jnetIJPGO", "byWCLyFPHaxkKxED", "5IAtbyUDDSJSV8pz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GrantEntitlements' test.out

#- 63 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["vSoi2X9SygvMG8QA", "aWUhIguMvKDOrx0w", "QXKEroyKz2reP63E"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'RevokeEntitlements' test.out

#- 64 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'VHT72VuhoGP2IFXG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetEntitlement' test.out

#- 65 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'QueryFulfillmentHistories' test.out

#- 66 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetAppleIAPConfig' test.out

#- 67 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    --body '{"bundleId": "U5hujEfCMt95DEjx", "password": "qhgYqmMqIdlRrQmu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'UpdateAppleIAPConfig' test.out

#- 68 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'DeleteAppleIAPConfig' test.out

#- 69 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GetEpicGamesIAPConfig' test.out

#- 70 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    --body '{"sandboxId": "ILkeRUafUDP5b6BW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'UpdateEpicGamesIAPConfig' test.out

#- 71 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'DeleteEpicGamesIAPConfig' test.out

#- 72 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'GetGoogleIAPConfig' test.out

#- 73 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    --body '{"applicationName": "fm7cYCpDIJG42ILh", "serviceAccountId": "UoCh8lmKKocC5Ea2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'UpdateGoogleIAPConfig' test.out

#- 74 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'DeleteGoogleIAPConfig' test.out

#- 75 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UpdateGoogleP12File' test.out

#- 76 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetIAPItemConfig' test.out

#- 77 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    --body '{"data": [{"itemIdentity": "9JhfFGN964J8WOgs", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"FrDb8unXv1iE7YgE": "ZspOJ0NiZl6OVLxK", "tkBpaCG8Nu5m4ctw": "UNV8ncebaJ0DCuIe", "EStt3PbyctX7HC2h": "aQwVWONEpAPedzI2"}}, {"itemIdentity": "AdlqiyEJIQcbZJJ3", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"497DG0ZNoJvvi4Ys": "50iE7IjZoDzMmMgo", "MxZZ9AutWDfVOINh": "ql9CdDX4xiHpdfKH", "35RWUUVEHCB5wzF6": "oLIrAwjAsgo51XHJ"}}, {"itemIdentity": "BG2PmyeFaBiT3SyL", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"ZSyfjukWmkfkiF2G": "ZPuyWBVH66JU1IIC", "VNNRV4lBToTcn1l4": "4ebrKEKdeo779KG5", "yCz9jVs1lYK1Mx9r": "EFkDqb31AZzwiQBa"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UpdateIAPItemConfig' test.out

#- 78 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'DeleteIAPItemConfig' test.out

#- 79 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'GetPlayStationIAPConfig' test.out

#- 80 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    --body '{"environment": "GdS41VRIyAHjYxVh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UpdatePlaystationIAPConfig' test.out

#- 81 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeletePlaystationIAPConfig' test.out

#- 82 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetSteamIAPConfig' test.out

#- 83 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"appId": "CbXbeBEoTlfR33jq", "publisherAuthenticationKey": "IRoXcCPaLXJM2B9b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateSteamIAPConfig' test.out

#- 84 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteSteamIAPConfig' test.out

#- 85 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetTwitchIAPConfig' test.out

#- 86 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    --body '{"clientId": "MohkWsFKIdycYHQc", "clientSecret": "u7JkKBcLFRf50Y7M", "organizationId": "E2QmYiYqap7masUc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'UpdateTwitchIAPConfig' test.out

#- 87 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'DeleteTwitchIAPConfig' test.out

#- 88 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetXblIAPConfig' test.out

#- 89 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    --body '{"relyingPartyCert": "ayqmp7vhz1T6cSrZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateXblIAPConfig' test.out

#- 90 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteXblAPConfig' test.out

#- 91 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UpdateXblBPCertFile' test.out

#- 92 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'L2CgHxdmYDj9vZNg' \
    'fI1AeYHe8WPQGPcl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DownloadInvoiceDetails' test.out

#- 93 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'ChxLfbXrH6f2GDrN' \
    'bLOjGz34ct0ctEeH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GenerateInvoiceSummary' test.out

#- 94 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    '43wYuLnI7cTzIUER' \
    --body '{"categoryPath": "PlQI99hMc4NbiJWP", "targetItemId": "5r9EwbIGMGJ70P9I", "targetNamespace": "qAyNlZ2OwFSebBkX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'SyncInGameItem' test.out

#- 95 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'kaxtY97TMJH8bO4G' \
    --body '{"appId": "DHT6ZaUUkvlTKAhr", "appType": "SOFTWARE", "baseAppId": "6SFpkV7cAICgWFJZ", "boothName": "GnNa5yOM68r4W1fD", "categoryPath": "ZL80oPQ0s7QhC8hg", "clazz": "SgytNEojK3YgWH9l", "displayOrder": 33, "entitlementType": "DURABLE", "ext": {"jDHMS49dkv8vxyg6": {}, "giNKzeFnlgGRgYK3": {}, "SeYvULYNIhs5PZGT": {}}, "features": ["sTap2RJpHtncLywP", "Jmgofq7nlF5Ch8J2", "Qs990APOU4hcdwln"], "images": [{"as": "3WlLmNdQGk6vneHo", "caption": "B1PXO1vT1AonFO3s", "height": 50, "imageUrl": "DKdVfOUr14yZH00n", "smallImageUrl": "8MsRjaB8iurBWW5j", "width": 91}, {"as": "QoHiDIJayvSNt8EQ", "caption": "XsMbYi1yEI9ychty", "height": 15, "imageUrl": "sf0eOzoSyKttYwUU", "smallImageUrl": "lMRG8vO0OSsJmhOJ", "width": 59}, {"as": "8LmXm0FaJMIjgzU0", "caption": "2nZWwBdEFpfccauY", "height": 60, "imageUrl": "8YKMrUBL6dDTVwPI", "smallImageUrl": "t1hrg2mhbI0NDshb", "width": 20}], "itemIds": ["ZzQuBPyNi1GhZHEj", "6p5grjk5wzdksOUk", "u8dtQoIrpvmM19X4"], "itemQty": {"zFOvdRTpGmBUjfEU": 31, "vL8H96tuVfQwYIqD": 100, "x2zriOGB8b5qTFp3": 4}, "itemType": "OPTIONBOX", "listable": false, "localizations": {"xOI33nt54i5hdAez": {"description": "edcppbujZh1fYXF6", "localExt": {"R9Rz3HVP2Y9WqSRi": {}, "wV3UZg0UJLPMkeUw": {}, "a6OVKxCMxuf0P9r5": {}}, "longDescription": "f6fdmyi4kQnOFbBt", "title": "vBw81hUgtONCIoZ2"}, "rkomSj52mAIMo6EW": {"description": "9QhzU8FwQtZpfUoy", "localExt": {"oiUjmqOyQ7ammFgH": {}, "prdM9viFWmezrQOW": {}, "H03zyr7kRbC31YMJ": {}}, "longDescription": "fRiD7djt1VeOFBDA", "title": "3gvCRfoBijpbMblG"}, "Wnp94a6GKY0BrHiW": {"description": "s0B0RhxQtgVgbN8k", "localExt": {"r872hJvrOCdAEZ2R": {}, "Ht3uQ5nFrPXwxJZQ": {}, "pkeDHr0hjKBpDMIv": {}}, "longDescription": "K4qfQ0pQIcYMBktq", "title": "qAAF6YG1dD1vECBb"}}, "lootBoxConfig": {"rewardCount": 40, "rewards": [{"lootBoxItems": [{"count": 7, "duration": 98, "endDate": "1974-09-17T00:00:00Z", "itemId": "fKu4bmK8kOKcEoCR", "itemSku": "jQJlPY3p42OS9iGN", "itemType": "ElTpMlvRDZSIuM0O"}, {"count": 83, "duration": 20, "endDate": "1988-10-22T00:00:00Z", "itemId": "Pluvsry8AKSZxOhU", "itemSku": "hl3Y0EshaG0uDiJN", "itemType": "UuxK22saWaGvrzBd"}, {"count": 78, "duration": 71, "endDate": "1981-09-14T00:00:00Z", "itemId": "UJGj5FYaSgewLWHc", "itemSku": "Bxz5LpdkRCAU8Hhm", "itemType": "XC68JFPdxhvBKee6"}], "name": "wG66YPD4vNdENY1r", "odds": 0.8652156228029294, "type": "REWARD", "weight": 71}, {"lootBoxItems": [{"count": 16, "duration": 93, "endDate": "1990-12-15T00:00:00Z", "itemId": "qA1OiblWlz2LXQNq", "itemSku": "cONcJIsYRQz97fRW", "itemType": "I17eNP3Y2nWlS9Sf"}, {"count": 19, "duration": 39, "endDate": "1975-08-26T00:00:00Z", "itemId": "0htyVaGj4y9ahS7h", "itemSku": "7XVlmc5Rs5FVQSIq", "itemType": "ObR55tV0BlN1iFvw"}, {"count": 35, "duration": 67, "endDate": "1994-12-07T00:00:00Z", "itemId": "LBmie8SJckSRbu7h", "itemSku": "gmUm7RVCUREDdoGa", "itemType": "tGQ1SeOXsg4jofp9"}], "name": "PvlQ1xdmr4JDpvZg", "odds": 0.3532039834450498, "type": "REWARD_GROUP", "weight": 81}, {"lootBoxItems": [{"count": 67, "duration": 69, "endDate": "1972-03-18T00:00:00Z", "itemId": "x2kWmSqodNZgfQyD", "itemSku": "VVkkqiMiRf2yCyM0", "itemType": "Tp5GJHHbsLJ73mCP"}, {"count": 16, "duration": 14, "endDate": "1988-04-11T00:00:00Z", "itemId": "SQvRAPG9JoVSLrbs", "itemSku": "5niXkjpkOgRCC7qf", "itemType": "z5jV7NTRYld9FJJ1"}, {"count": 14, "duration": 49, "endDate": "1978-09-06T00:00:00Z", "itemId": "Nq8uq79Du28SRRAM", "itemSku": "aQFEzppeticckSUo", "itemType": "n7awfol07696uxp5"}], "name": "ieMjjOfFSx3AJN97", "odds": 0.16802012438864933, "type": "PROBABILITY_GROUP", "weight": 19}], "rollFunction": "DEFAULT"}, "maxCount": 46, "maxCountPerUser": 18, "name": "NfLTFJGOzAIAqpmk", "optionBoxConfig": {"boxItems": [{"count": 60, "duration": 87, "endDate": "1972-03-12T00:00:00Z", "itemId": "FSs4s7u1VUuLmeny", "itemSku": "xTQVkEg5wouUKa35", "itemType": "m8oH9zCfw7mCMkbv"}, {"count": 91, "duration": 29, "endDate": "1988-10-29T00:00:00Z", "itemId": "m7JROcwVmGyrBpnT", "itemSku": "PF4VrRiFSPs2ZMcV", "itemType": "FcrixULzSeTnUWGx"}, {"count": 47, "duration": 63, "endDate": "1974-04-26T00:00:00Z", "itemId": "8qGpSsyEPDWHcqfY", "itemSku": "p2EFxEaEHCGtg812", "itemType": "NQb5Glh8srTlTj61"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 98, "fixedTrialCycles": 36, "graceDays": 27}, "regionData": {"Uo1BO1rE7E12Fapa": [{"currencyCode": "o5jo9nJoKEb8tHmF", "currencyNamespace": "wLGan2SrKckNxLWH", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1982-03-16T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1991-12-24T00:00:00Z", "expireAt": "1998-10-27T00:00:00Z", "price": 23, "purchaseAt": "1982-06-16T00:00:00Z", "trialPrice": 48}, {"currencyCode": "xoV5Oe8ktlePEo1x", "currencyNamespace": "BuRSv6VizgtOXZy9", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1992-10-11T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1977-04-19T00:00:00Z", "expireAt": "1994-07-30T00:00:00Z", "price": 6, "purchaseAt": "1999-10-14T00:00:00Z", "trialPrice": 82}, {"currencyCode": "ZqeOllKQNwJUGtC0", "currencyNamespace": "tAhxn1ay6ruu7PYW", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1981-08-30T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1987-01-09T00:00:00Z", "expireAt": "1988-05-26T00:00:00Z", "price": 13, "purchaseAt": "1976-09-01T00:00:00Z", "trialPrice": 83}], "T2tq2V2lMzfIQHCZ": [{"currencyCode": "90DqQgP6ynrQjYH0", "currencyNamespace": "N2loTnRa0KiQWPxd", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1979-01-12T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1982-06-29T00:00:00Z", "expireAt": "1990-07-09T00:00:00Z", "price": 53, "purchaseAt": "1986-08-22T00:00:00Z", "trialPrice": 63}, {"currencyCode": "E4WcsmYtCkIgcwiD", "currencyNamespace": "WQFghmIi6fphDw3p", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1993-05-13T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1982-01-01T00:00:00Z", "expireAt": "1994-09-12T00:00:00Z", "price": 14, "purchaseAt": "1998-08-20T00:00:00Z", "trialPrice": 31}, {"currencyCode": "4x11AS2jTKoTYeHa", "currencyNamespace": "CuN7zpX9vp4QJdCr", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1993-07-24T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1998-02-08T00:00:00Z", "expireAt": "1977-07-06T00:00:00Z", "price": 30, "purchaseAt": "1989-07-08T00:00:00Z", "trialPrice": 12}], "Kye8jZqj7k0YiLqO": [{"currencyCode": "USBuwR388REDRuYB", "currencyNamespace": "nWiEsOnDfIAN04f5", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1993-11-24T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1981-04-09T00:00:00Z", "expireAt": "1978-07-04T00:00:00Z", "price": 57, "purchaseAt": "1975-09-02T00:00:00Z", "trialPrice": 12}, {"currencyCode": "qqSctLL4WfGq8JCD", "currencyNamespace": "nwGWgccuzuc6QDRM", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1983-08-17T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1987-01-11T00:00:00Z", "expireAt": "1994-10-30T00:00:00Z", "price": 50, "purchaseAt": "1991-10-03T00:00:00Z", "trialPrice": 31}, {"currencyCode": "TYPS8CGKXGon2ecc", "currencyNamespace": "65YAFLweD9Z7U2lN", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1978-06-27T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1985-05-23T00:00:00Z", "expireAt": "1990-06-27T00:00:00Z", "price": 85, "purchaseAt": "1993-08-11T00:00:00Z", "trialPrice": 69}]}, "saleConfig": {"currencyCode": "uekeBe4Tvb3fHCIJ", "price": 21}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "GXGRkYXifTd5nAOF", "stackable": false, "status": "INACTIVE", "tags": ["XXgvu496H02yOVN1", "JgCOm4wL729Hma0n", "CdCEFcf2doBrfHiH"], "targetCurrencyCode": "h41jIPOMXufZPWSe", "targetNamespace": "20JfNvtNcWtpUkw9", "thumbnailUrl": "8x3tMM1bFFDIqKD8", "useCount": 68}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'CreateItem' test.out

#- 96 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'Udmf8hD3nL1saQxL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetItemByAppId' test.out

#- 97 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'QueryItems' test.out

#- 98 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'ListBasicItemsByFeatures' test.out

#- 99 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'Yrz08jh6Tyq7WUil' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'GetItemBySku' test.out

#- 100 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'Xgtf5UctyV3aSw4t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetLocaleItemBySku' test.out

#- 101 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'wReM5DcHde3fkHf7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'GetItemIdBySku' test.out

#- 102 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'GetBulkItemIdBySkus' test.out

#- 103 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'tH8WTOTeBOcYhf6n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'BulkGetLocaleItems' test.out

#- 104 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'GetAvailablePredicateTypes' test.out

#- 105 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    'GCnPjiIbJifs0arK' \
    --body '{"itemIds": ["xCcNv8FQCyQBqKxa", "yGvw7MqOsypCJmfR", "nW0spgvjt7eCLDu6"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'ValidateItemPurchaseCondition' test.out

#- 106 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'PA3PRnQtB410iWT0' \
    --body '{"changes": [{"itemIdentities": ["SILVGXCWRucRpP1T", "q7uYXhB6FPfF5Dvv", "eMdBsPt19V2FkBPk"], "itemIdentityType": "ITEM_ID", "regionData": {"ufK6eiT38raaRG1F": [{"currencyCode": "g0hfM5vQmahJlT5O", "currencyNamespace": "UDEMwAjgNZgto2Eh", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1982-04-17T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1980-11-13T00:00:00Z", "discountedPrice": 43, "expireAt": "1985-08-30T00:00:00Z", "price": 89, "purchaseAt": "1978-01-25T00:00:00Z", "trialPrice": 22}, {"currencyCode": "xXOBu3TWmHDVmCGF", "currencyNamespace": "oD7aNFj9wORAVqRu", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1978-05-31T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1993-06-17T00:00:00Z", "discountedPrice": 21, "expireAt": "1999-09-04T00:00:00Z", "price": 20, "purchaseAt": "1993-05-10T00:00:00Z", "trialPrice": 65}, {"currencyCode": "R3KbYWtFzplXVk36", "currencyNamespace": "IpbGquPnIPwR1Bin", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1994-05-18T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1982-02-05T00:00:00Z", "discountedPrice": 55, "expireAt": "1974-11-01T00:00:00Z", "price": 27, "purchaseAt": "1992-04-21T00:00:00Z", "trialPrice": 53}], "42UuxEyfzZJsZd9s": [{"currencyCode": "B6CV9KiWkbdpGqWQ", "currencyNamespace": "IPK6mVytM5mBRT39", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1989-09-08T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1988-03-22T00:00:00Z", "discountedPrice": 17, "expireAt": "1971-09-05T00:00:00Z", "price": 85, "purchaseAt": "1977-03-21T00:00:00Z", "trialPrice": 86}, {"currencyCode": "Jh6PnpTXWAUt8lgq", "currencyNamespace": "NM4poGEvIKCe3MrL", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1977-09-03T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1974-03-19T00:00:00Z", "discountedPrice": 24, "expireAt": "1984-04-05T00:00:00Z", "price": 97, "purchaseAt": "1984-07-12T00:00:00Z", "trialPrice": 41}, {"currencyCode": "vs3ugNvvgI2k1P9n", "currencyNamespace": "Qxzj3AnmpWfje5cA", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1994-08-26T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1979-07-08T00:00:00Z", "discountedPrice": 51, "expireAt": "1987-10-03T00:00:00Z", "price": 5, "purchaseAt": "1994-04-23T00:00:00Z", "trialPrice": 16}], "ODi5oF1pccdjjZpF": [{"currencyCode": "nVLb7xerpjVPfktN", "currencyNamespace": "nl8UYH5kesuOtYHL", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1972-10-31T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1976-07-20T00:00:00Z", "discountedPrice": 14, "expireAt": "1998-12-17T00:00:00Z", "price": 37, "purchaseAt": "1990-05-09T00:00:00Z", "trialPrice": 60}, {"currencyCode": "dFn8sQ7yc8xLKyBf", "currencyNamespace": "GLHEAKhp612Y2ncR", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1981-09-06T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1987-05-10T00:00:00Z", "discountedPrice": 52, "expireAt": "1987-09-22T00:00:00Z", "price": 33, "purchaseAt": "1985-12-23T00:00:00Z", "trialPrice": 44}, {"currencyCode": "oHm6EtyXqQbKWMJ0", "currencyNamespace": "aODiWn6bPmSa85Ri", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1997-12-29T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1977-08-09T00:00:00Z", "discountedPrice": 1, "expireAt": "1972-01-03T00:00:00Z", "price": 63, "purchaseAt": "1998-02-27T00:00:00Z", "trialPrice": 1}]}}, {"itemIdentities": ["jJZbwMHkFWLSzmAX", "AruYrVjX4HRTvm3Q", "r9IkuW6jjofc6itD"], "itemIdentityType": "ITEM_SKU", "regionData": {"8LyivYbMG9LXPbBh": [{"currencyCode": "2E3wFchP3zTymfVf", "currencyNamespace": "ny2M0KsS08cY3fjI", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1977-11-29T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1997-12-17T00:00:00Z", "discountedPrice": 80, "expireAt": "1984-01-28T00:00:00Z", "price": 51, "purchaseAt": "1998-10-06T00:00:00Z", "trialPrice": 96}, {"currencyCode": "Zs2VfCRhzfKDAGIA", "currencyNamespace": "JuPhQcZwXRE9FOZU", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1973-08-30T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1972-11-20T00:00:00Z", "discountedPrice": 85, "expireAt": "1982-06-10T00:00:00Z", "price": 24, "purchaseAt": "1984-12-02T00:00:00Z", "trialPrice": 89}, {"currencyCode": "JGtdXJGDsxRAR3NO", "currencyNamespace": "bYp43YXMHqWeVjnO", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1987-05-13T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1996-11-23T00:00:00Z", "discountedPrice": 66, "expireAt": "1974-07-15T00:00:00Z", "price": 51, "purchaseAt": "1972-08-13T00:00:00Z", "trialPrice": 39}], "xfjLUZHK0OO1yQsM": [{"currencyCode": "BQAdOfrtHWyGg5TU", "currencyNamespace": "3INkMgjsnP8itevm", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1976-10-22T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1976-04-18T00:00:00Z", "discountedPrice": 18, "expireAt": "1973-06-10T00:00:00Z", "price": 40, "purchaseAt": "1972-02-19T00:00:00Z", "trialPrice": 43}, {"currencyCode": "FQv384ri6A7z0hsW", "currencyNamespace": "0IHIYvJ7PPgVaFwG", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1975-03-22T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1997-05-11T00:00:00Z", "discountedPrice": 51, "expireAt": "1976-08-04T00:00:00Z", "price": 51, "purchaseAt": "1999-09-01T00:00:00Z", "trialPrice": 80}, {"currencyCode": "u41hVfVC7eLVWGk0", "currencyNamespace": "GjYReIZaDC2Au2bE", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1983-08-11T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1972-01-12T00:00:00Z", "discountedPrice": 22, "expireAt": "1989-03-15T00:00:00Z", "price": 7, "purchaseAt": "1980-12-09T00:00:00Z", "trialPrice": 30}], "JmkdvyuDHFFstLhZ": [{"currencyCode": "zletCqa3lJMQ1sGl", "currencyNamespace": "fqjDBzOjNeq8JJhb", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1973-12-14T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1986-02-11T00:00:00Z", "discountedPrice": 29, "expireAt": "1993-11-09T00:00:00Z", "price": 99, "purchaseAt": "1974-05-16T00:00:00Z", "trialPrice": 12}, {"currencyCode": "yFBTPfnmfN5E20OR", "currencyNamespace": "MCVBTrkvObsiHQgt", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1988-02-16T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1973-10-27T00:00:00Z", "discountedPrice": 54, "expireAt": "1997-01-17T00:00:00Z", "price": 52, "purchaseAt": "1985-12-08T00:00:00Z", "trialPrice": 56}, {"currencyCode": "jUYURB3Rsrc0qvV8", "currencyNamespace": "Gq1cw3ytGWVKPoA1", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1989-12-24T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1997-08-29T00:00:00Z", "discountedPrice": 80, "expireAt": "1979-01-01T00:00:00Z", "price": 83, "purchaseAt": "1976-06-12T00:00:00Z", "trialPrice": 76}]}}, {"itemIdentities": ["0PWppB2H0G8Xko9l", "5J0IOZmnpzwHhig9", "d6vdgfrNiGrH0hDj"], "itemIdentityType": "ITEM_SKU", "regionData": {"6IYpfINzNjk5V8T9": [{"currencyCode": "pQjnGB83yonudf21", "currencyNamespace": "g0NhuYvwCATIUep6", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1980-03-12T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1986-03-11T00:00:00Z", "discountedPrice": 41, "expireAt": "1979-09-23T00:00:00Z", "price": 88, "purchaseAt": "1992-10-09T00:00:00Z", "trialPrice": 37}, {"currencyCode": "03oSwCfYpN9jkLCs", "currencyNamespace": "MYyyhEyBfFFZwkC1", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1988-08-13T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1995-07-24T00:00:00Z", "discountedPrice": 5, "expireAt": "1994-06-17T00:00:00Z", "price": 96, "purchaseAt": "1980-08-30T00:00:00Z", "trialPrice": 39}, {"currencyCode": "QxeiBo2hB9u1v1PO", "currencyNamespace": "CjseK1xaSbMjyFrY", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1988-08-12T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1979-01-20T00:00:00Z", "discountedPrice": 97, "expireAt": "1983-01-19T00:00:00Z", "price": 94, "purchaseAt": "1981-08-08T00:00:00Z", "trialPrice": 94}], "hNNH0Ht1yPtBwXIu": [{"currencyCode": "YrbPUcvEOJ4Pghks", "currencyNamespace": "baThW37NTbz8HiRm", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1976-04-18T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1981-06-04T00:00:00Z", "discountedPrice": 16, "expireAt": "1982-07-17T00:00:00Z", "price": 85, "purchaseAt": "1997-08-04T00:00:00Z", "trialPrice": 75}, {"currencyCode": "nJZJdKrIn9hHHGg1", "currencyNamespace": "cTZsJp1b5yB8c9gC", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1983-12-05T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1987-12-17T00:00:00Z", "discountedPrice": 73, "expireAt": "1988-02-09T00:00:00Z", "price": 12, "purchaseAt": "1989-04-17T00:00:00Z", "trialPrice": 11}, {"currencyCode": "9jVE6QGkZ8AVzeia", "currencyNamespace": "Di67E3rTwN2LrT85", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1979-02-12T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1973-03-16T00:00:00Z", "discountedPrice": 62, "expireAt": "1981-07-05T00:00:00Z", "price": 72, "purchaseAt": "1973-06-04T00:00:00Z", "trialPrice": 73}], "VjhLgaFeFJ5QRuvE": [{"currencyCode": "sU5QkmsmfFhPTfXV", "currencyNamespace": "zS3hFUXbdYU08BQZ", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1996-01-13T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1997-04-15T00:00:00Z", "discountedPrice": 8, "expireAt": "1988-03-16T00:00:00Z", "price": 30, "purchaseAt": "1997-10-09T00:00:00Z", "trialPrice": 1}, {"currencyCode": "5eVnflH2hnMV6Yxt", "currencyNamespace": "l5DKUhjBy9oWPcMI", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1985-04-06T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1993-11-14T00:00:00Z", "discountedPrice": 87, "expireAt": "1978-11-24T00:00:00Z", "price": 20, "purchaseAt": "1984-03-04T00:00:00Z", "trialPrice": 50}, {"currencyCode": "JgpXVCubdw0sPrgD", "currencyNamespace": "KqHCs5GTdTLCxJqK", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1971-02-26T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1980-04-23T00:00:00Z", "discountedPrice": 13, "expireAt": "1985-05-22T00:00:00Z", "price": 22, "purchaseAt": "1978-02-15T00:00:00Z", "trialPrice": 31}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'BulkUpdateRegionData' test.out

#- 107 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'PAHNgVss4JzVKSus' \
    'dLumoHh8TQWYk2vD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'SearchItems' test.out

#- 108 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'QueryUncategorizedItems' test.out

#- 109 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    '3mUDwtTF1ATVQnAe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'GetItem' test.out

#- 110 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'xrRomTZFHX4cgtkx' \
    'Ex6tlxks0yGW8qDW' \
    --body '{"appId": "fr7MF8Ptq10XBhcJ", "appType": "DEMO", "baseAppId": "QNJxCbLEhfrPxIRd", "boothName": "bUwkN6Tr6vRneC9J", "categoryPath": "YmpKyZGtqWw67Lhe", "clazz": "LDvwZjthGMOB4HFI", "displayOrder": 52, "entitlementType": "CONSUMABLE", "ext": {"lGBnpLBd02br9OfM": {}, "bjgS5WjduKixzScf": {}, "rHzGYC1TdLVDBDxK": {}}, "features": ["MRzyerpya2oBjbgB", "7w9w1xKUrLmQSkuE", "6laOkeLBcprByjUr"], "images": [{"as": "hOdXE8y1PNIzbnPB", "caption": "5wG65f3ACfS3A8Je", "height": 90, "imageUrl": "DEsKT6Mw5xDz8asA", "smallImageUrl": "RtI3TVV2QmlqRK5r", "width": 30}, {"as": "hzW03O2pp9qVpZbs", "caption": "ppRsBWQ7RdYqZaQ8", "height": 37, "imageUrl": "RzSo0RzUoSen8CjE", "smallImageUrl": "htRcnVsYOwypw6F2", "width": 41}, {"as": "cdzYhgH24VR4hJns", "caption": "U1m6zryXmvvvPmue", "height": 98, "imageUrl": "mWjX540aN2pvOi5U", "smallImageUrl": "G7agVhXIgoHE9eEv", "width": 71}], "itemIds": ["CkfqzKlzlLgHPF5i", "RWnREifOFJQwGPy5", "zGebVw9nLvVm8UeF"], "itemQty": {"UbaGb5on2kvdeu5D": 11, "8KsgqGNM6sO7IUwI": 43, "A8fTlbfUOSmR4F0p": 88}, "itemType": "BUNDLE", "listable": false, "localizations": {"1JlwPxpuUZm1GVuI": {"description": "2Eihx6IJwMzUqM16", "localExt": {"MYY2MVvo3MMCL4aV": {}, "6oMUzpMmsvvKTljW": {}, "spMrC4TeRTNUYz7N": {}}, "longDescription": "4wHLHx7FCWn7iOmK", "title": "IN2roJNZmgEGzqDH"}, "dLpDjLIhvCNlBRcF": {"description": "sa03Nqu13LgD6kOU", "localExt": {"ZXQKRTVR95IwPCb2": {}, "qOuIRbBL0njCbitE": {}, "JNHwfW76v6GPVwWj": {}}, "longDescription": "IfhOXemeTgiENbhd", "title": "RohucoiX0GAQZEbN"}, "r6VtQiKwKuIHMjiI": {"description": "jX7Eu0WCXd8GX7yg", "localExt": {"T5qlBekxw9pO3vyR": {}, "viPljDYddTDwgc6o": {}, "nXfoDvjI9jfJFTHc": {}}, "longDescription": "HvAfosnCXqJplcwa", "title": "BHILlCC7ovjEbjKr"}}, "lootBoxConfig": {"rewardCount": 84, "rewards": [{"lootBoxItems": [{"count": 20, "duration": 6, "endDate": "1974-07-21T00:00:00Z", "itemId": "IbWTfPplY43FQpfF", "itemSku": "Wm8VMHjC8qrxvZsJ", "itemType": "d3RBYL4PAqdviBvT"}, {"count": 30, "duration": 13, "endDate": "1993-07-01T00:00:00Z", "itemId": "Q7EqHUhHn1qP3G2k", "itemSku": "SIurSOWI2donULQo", "itemType": "kdCSsp87x6Jfe5YA"}, {"count": 45, "duration": 72, "endDate": "1983-02-07T00:00:00Z", "itemId": "aY7Ho61RoV0VH7th", "itemSku": "k8lnCROZodh1gbkb", "itemType": "nRcIufk5WE4zPvxA"}], "name": "5061CF9079hQA91c", "odds": 0.299571933824645, "type": "REWARD", "weight": 81}, {"lootBoxItems": [{"count": 24, "duration": 53, "endDate": "1992-02-04T00:00:00Z", "itemId": "SS6PyDb3vKbCw9eA", "itemSku": "GmM6lPAJMizukBmc", "itemType": "y1kbAWDUac65Jdlm"}, {"count": 31, "duration": 73, "endDate": "1995-10-17T00:00:00Z", "itemId": "l0MfF3iAQb4Iiy26", "itemSku": "m51AwCv4UKmP7ecz", "itemType": "fnYgOqXhJZ6DIokI"}, {"count": 61, "duration": 73, "endDate": "1998-03-14T00:00:00Z", "itemId": "ZFk9fRCHfId0Dhni", "itemSku": "n8RxnO0qs4FykFXD", "itemType": "dcUuEE9wh4CEOrPY"}], "name": "29A1L1Xijb7GTIFW", "odds": 0.03594626046724225, "type": "REWARD", "weight": 99}, {"lootBoxItems": [{"count": 66, "duration": 75, "endDate": "1974-01-25T00:00:00Z", "itemId": "l1SyrFazP5g67zq7", "itemSku": "XCHkJzmy6DtxvO3n", "itemType": "UiVM7UfbH7Qv0Eyy"}, {"count": 25, "duration": 66, "endDate": "1992-04-16T00:00:00Z", "itemId": "QMJJJn2Lqw6aiKZb", "itemSku": "UJQ92BTViMMFji1G", "itemType": "mfmwhN25xGSRRZnw"}, {"count": 23, "duration": 65, "endDate": "1971-06-29T00:00:00Z", "itemId": "MGheYVteLiiIKPjo", "itemSku": "kv6HMQOekLKHziTw", "itemType": "5M3KvzpUEcp3cp4f"}], "name": "WJlLrbVQceKy5JZK", "odds": 0.86193661245894, "type": "REWARD", "weight": 1}], "rollFunction": "DEFAULT"}, "maxCount": 53, "maxCountPerUser": 67, "name": "9AKozXBA29DPhYa8", "optionBoxConfig": {"boxItems": [{"count": 75, "duration": 56, "endDate": "1980-05-15T00:00:00Z", "itemId": "jfnk7HKSWULkEKqQ", "itemSku": "4ToqWjpaECYi7fBJ", "itemType": "aU43PzOITmqjrcuI"}, {"count": 69, "duration": 2, "endDate": "1978-03-11T00:00:00Z", "itemId": "3z13pDy371QLVtDb", "itemSku": "6RZXatSimmKudqUR", "itemType": "kyz4E3EI1bSCYaa8"}, {"count": 73, "duration": 6, "endDate": "1993-07-17T00:00:00Z", "itemId": "NQdhrnvuDGFiT4U6", "itemSku": "WQQwsTHCgTvrGllr", "itemType": "cttK4WgzdUhB2YhK"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 6, "fixedTrialCycles": 58, "graceDays": 34}, "regionData": {"1HnrPGydCRGPXLKN": [{"currencyCode": "NfCxcAJoMhSZgpx0", "currencyNamespace": "HtzCgr8ybpAO0Pgh", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1978-08-11T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1977-01-13T00:00:00Z", "expireAt": "1987-03-13T00:00:00Z", "price": 71, "purchaseAt": "1972-05-23T00:00:00Z", "trialPrice": 90}, {"currencyCode": "2yOaVvE1N52PwdeT", "currencyNamespace": "QhMz99aZ3fza0rlz", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1991-03-02T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1995-11-20T00:00:00Z", "expireAt": "1989-07-01T00:00:00Z", "price": 28, "purchaseAt": "1974-01-18T00:00:00Z", "trialPrice": 56}, {"currencyCode": "glMjwg8OWAT7d65h", "currencyNamespace": "chXzG4ffz0lXBDbB", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1987-09-20T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1976-12-13T00:00:00Z", "expireAt": "1973-10-27T00:00:00Z", "price": 0, "purchaseAt": "1993-04-12T00:00:00Z", "trialPrice": 97}], "ItcCnXFRjhk7tzIH": [{"currencyCode": "qZpgJqlw441XUfp7", "currencyNamespace": "AVnf8BzBBqEvMtJo", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1982-10-04T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1979-06-19T00:00:00Z", "expireAt": "1979-12-27T00:00:00Z", "price": 75, "purchaseAt": "1991-06-02T00:00:00Z", "trialPrice": 33}, {"currencyCode": "nIYkKH6MNrEsOlIF", "currencyNamespace": "w6Fqa6YXBlVXOvZU", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1996-02-03T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1996-03-15T00:00:00Z", "expireAt": "1989-07-04T00:00:00Z", "price": 14, "purchaseAt": "1978-11-28T00:00:00Z", "trialPrice": 95}, {"currencyCode": "yVaO1sgnJF31EULH", "currencyNamespace": "tVtkZrE0YPmtE6fc", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1999-05-16T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1974-12-05T00:00:00Z", "expireAt": "1984-12-19T00:00:00Z", "price": 85, "purchaseAt": "1991-04-25T00:00:00Z", "trialPrice": 45}], "REvGmmbGW3SttwZr": [{"currencyCode": "mKkREJXucN3IEt8v", "currencyNamespace": "ZSqh6SjLdDyVf6ir", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1982-09-25T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1980-05-09T00:00:00Z", "expireAt": "1997-08-19T00:00:00Z", "price": 20, "purchaseAt": "1996-09-13T00:00:00Z", "trialPrice": 38}, {"currencyCode": "lM52jb80Nlw8icwW", "currencyNamespace": "RvvZB46NCiqdleq2", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1979-11-24T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1984-07-03T00:00:00Z", "expireAt": "1989-07-02T00:00:00Z", "price": 18, "purchaseAt": "1980-08-16T00:00:00Z", "trialPrice": 1}, {"currencyCode": "lI9fsL6HEOiPcSKl", "currencyNamespace": "QDo4ih358Lf5RXgV", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1996-05-25T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1993-06-06T00:00:00Z", "expireAt": "1997-01-15T00:00:00Z", "price": 23, "purchaseAt": "1979-04-08T00:00:00Z", "trialPrice": 82}]}, "saleConfig": {"currencyCode": "sH39PXWtk222GY7L", "price": 58}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "P7drhfBjZFgaGUfh", "stackable": true, "status": "INACTIVE", "tags": ["H66JWKmTRqrvfJIr", "FQWIDC6PHVsnUueY", "5TZFoyfZ0XfCxPDc"], "targetCurrencyCode": "d49OFDlbdIrxqxAt", "targetNamespace": "w8vLsYBHN6M7OpcF", "thumbnailUrl": "qK4FBJG8BfuSzytk", "useCount": 85}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'UpdateItem' test.out

#- 111 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'KKARjqJSWImXvaLX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'DeleteItem' test.out

#- 112 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'kvZvwk0v0OKy45dq' \
    --body '{"count": 70, "orderNo": "VdPwYmvZkT3zo8gx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'AcquireItem' test.out

#- 113 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'MqM1wUdXsMjUbhRj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'GetApp' test.out

#- 114 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'nDrYWlRfPpgHg36d' \
    '9NP5nNvzIlwtYI9w' \
    --body '{"carousel": [{"alt": "KX9V1XxF2CFfEpf0", "previewUrl": "qN2twLYXq4HSEGpa", "thumbnailUrl": "UMmdPXWaJRdn3WMd", "type": "video", "url": "sFD2le3UGhQnnmMg", "videoSource": "generic"}, {"alt": "iVQ6covYDuI4l1d9", "previewUrl": "YaLVuL1mLP65pId3", "thumbnailUrl": "6F25c13PNqPn7XRl", "type": "image", "url": "S36bRVaiOL6Q5N2e", "videoSource": "generic"}, {"alt": "jE8A3EsOz8LDnxgL", "previewUrl": "0t7Qhdw4vmSxnJcy", "thumbnailUrl": "aijSCsFa6ipRu1Aa", "type": "video", "url": "jz0yLelzMzWiPzug", "videoSource": "generic"}], "developer": "PUvlrOA50xGdlq3D", "forumUrl": "km52TA4zLBSh2QJW", "genres": ["Adventure", "Strategy", "MassivelyMultiplayer"], "localizations": {"HmOLBLlsw2pDJDLe": {"announcement": "JwzbVEEQ0D6RcLpR", "slogan": "xXCStzvOyY1tNKAV"}, "Wv5cGRm3WTx0oyOr": {"announcement": "ycewrnLBAZlvnOJe", "slogan": "NxZdT1fZJTutZpZZ"}, "n6egDbFDXW3N42cc": {"announcement": "GURTnJUdR3MUQnEe", "slogan": "ANANjqBdfMMU89e6"}}, "platformRequirements": {"CIBWn2Q3kMtF5tiw": [{"additionals": "PCAxM9oFcQUp7hrv", "directXVersion": "KVNdGrr2TTTiTt8o", "diskSpace": "RoQRf0A1eAJUZSjW", "graphics": "UPA9vXrqLxUCyNQU", "label": "ITTM8jU9tfr6NkPj", "osVersion": "b60b0Y8RDVgsQzae", "processor": "Ov7xB8GlNYJeVVZQ", "ram": "H5C76GaeCobrGOAv", "soundCard": "aYctXd3jNOlJBjBM"}, {"additionals": "sJisMu1kQcGm0x3D", "directXVersion": "mUahjPVDOEmwpWiJ", "diskSpace": "YxvvQCHIreoYDgNe", "graphics": "1RyydtCBznu3BT2f", "label": "e68sGXFylcwoCMa2", "osVersion": "D9QtE0TKRHukM2BV", "processor": "Mu418S3o2DKmAp8k", "ram": "t8156L7Wl7UfG3Pb", "soundCard": "sgYDgJ0JRrcPbe1R"}, {"additionals": "EA4kpxN9tCjk58n5", "directXVersion": "fBl9xiCZH2KBHwuA", "diskSpace": "W3jLkVq9bAefBF8t", "graphics": "iF7mi3iOrnB83a6h", "label": "6dNfg9f25YsZ1L6I", "osVersion": "GHuO7u2tOUpmu6zU", "processor": "LXQMirzwMshTQYUn", "ram": "fHWyBg5c3Wq2dGyg", "soundCard": "Lo40eCb82j4OhaAi"}], "Wk4TKx1WRjiCokzg": [{"additionals": "7q7bMwxVAujRx0py", "directXVersion": "ulY8igLWA7yUanMI", "diskSpace": "437Ne6WvRNtbN9Eo", "graphics": "s8o1PdTDqm0SXzXN", "label": "qw2oEptJsPYgvPnA", "osVersion": "lN2mJeW1LQJ8A7NZ", "processor": "LQPAny29oO2B8osf", "ram": "AcB6Pd2uPwzliHiP", "soundCard": "YuwUtR55gCTACz3a"}, {"additionals": "Ld0f0QGkwoIQo88h", "directXVersion": "LxgR5AJVEz4FiSPg", "diskSpace": "U3FLs6LbIwwxFBW1", "graphics": "RyUyU8GVL2TVivHb", "label": "cJX1mqJ4BtZCHdlm", "osVersion": "Ozx9DrwT5dJMDgZP", "processor": "QtuRIVY69dhSr3Ji", "ram": "NweUidBVB2vTyC48", "soundCard": "2FeT76mWyDrmG0FH"}, {"additionals": "QOjtRg7ST2UVRJN0", "directXVersion": "qFJaGDiDmatCvCem", "diskSpace": "bJFNyIwxPt19hjyI", "graphics": "7ALyZHQ8V4AejtUM", "label": "6llcl5hdZoPhVcQ4", "osVersion": "wXeArPe089cqMuV8", "processor": "MLxiTO3GhLJ2qx2h", "ram": "93yz3Y7YtgdQMhzp", "soundCard": "cpwawMF0j9IirMeP"}], "7fy5Y0RiyzWJZAZH": [{"additionals": "klGmHH8I1l3xgoVy", "directXVersion": "EemJDvokY7UUVCHG", "diskSpace": "WcVrHG4ehIhJk597", "graphics": "xUXpiOLFQFxY4AHL", "label": "zQnClUtkXb0SoMLq", "osVersion": "ijtgLSGTnWHCZ6Xw", "processor": "qnOeIUKAIvQjUxtk", "ram": "82oOOkHmCFldZ0XA", "soundCard": "vFitLhI0sqjfua9x"}, {"additionals": "08SJmn2gM2q6wuaH", "directXVersion": "lnk9AFkbwVa7DCVe", "diskSpace": "gPEDDuHxwEbPLfnj", "graphics": "lMfDJxP4S8TNhXBT", "label": "iwS2sBodn1p1MJrZ", "osVersion": "v1itpBPRbtgUMFAc", "processor": "xhrY80cxjAXFOLYQ", "ram": "X2ryH4oq6fdhzarU", "soundCard": "0VtmwcYLuVxqvaL6"}, {"additionals": "vdJr0yQVV1r0LACc", "directXVersion": "KuAd2SElOn16dw0n", "diskSpace": "zH9XMG2c5BWrzKJ0", "graphics": "Lj0VNzr8kTl05oiu", "label": "bu5HHlb7VI1cHNU3", "osVersion": "pvbpyJTgwl3ZOMpz", "processor": "NQDtQNlDFMazvRX5", "ram": "v3UCobMU8bzcaf0Q", "soundCard": "v0dFMnEcDHueqAKT"}]}, "platforms": ["IOS", "Android", "IOS"], "players": ["Single", "Multi", "LocalCoop"], "primaryGenre": "Strategy", "publisher": "gYeuitqLYJ7E9mP2", "releaseDate": "1985-10-16T00:00:00Z", "websiteUrl": "e9WZ9kuWMnRcGzbD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'UpdateApp' test.out

#- 115 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    '5iC34s0kTiXwPjN8' \
    'E3wXz4Q1L3hAG9xO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'DisableItem' test.out

#- 116 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'Oi4DVUYo37I8Mgh1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetItemDynamicData' test.out

#- 117 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'DJARpi5KzpbDPfXd' \
    'Gvodrl6UOwYZJq3O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'EnableItem' test.out

#- 118 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'JhzlgtX87XuWOIpQ' \
    'wptcvroohLb6q3F1' \
    '6PO9YdwqEszRnwVX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'FeatureItem' test.out

#- 119 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    '2rvVr6DpLOyrgsLZ' \
    'V9arTxBgnOqH9lyv' \
    '8wx2JosSHLipk5N6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'DefeatureItem' test.out

#- 120 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'e79zCfL2ar4zJmB2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'GetLocaleItem' test.out

#- 121 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'wifDA7LpND5zXLhr' \
    'mEeBwTzs9QmLReEZ' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 36, "comparison": "is", "name": "6n6anryoVkl4tChu", "predicateType": "SeasonPassPredicate", "value": "kTTCLlRCEQSp3XwO", "values": ["SYIIOqTjadq7tSbu", "LamxL9Ltl0k2ZOJH", "SNJT3B5f3ynPDyKk"]}, {"anyOf": 56, "comparison": "isGreaterThan", "name": "nYPNYKWhYLsAlPZs", "predicateType": "SeasonTierPredicate", "value": "v14XFGIVeBHRe7JB", "values": ["UY6EuVZznqQVYO57", "lzH9CrXX7cBfnjlf", "FFTD6KSEeAEd96gz"]}, {"anyOf": 79, "comparison": "isNot", "name": "Ri3CuA2GelFQyuDW", "predicateType": "SeasonPassPredicate", "value": "N51wxYTCHYaW7BAF", "values": ["Znpxmzs0AQYJnB9w", "4rkop7LL7Yqjh4lg", "GGsrJv0EyLkZej5v"]}]}, {"operator": "and", "predicates": [{"anyOf": 25, "comparison": "isGreaterThanOrEqual", "name": "h0KRDJjPEF1LpvoO", "predicateType": "SeasonPassPredicate", "value": "HiFEo5sDrk8BZ0jn", "values": ["V4jAAxGZ794ngDQy", "a3dvyjxR120zHmDz", "xvCGS2mYl0sA87gQ"]}, {"anyOf": 47, "comparison": "is", "name": "9f2ojEQrZ645LOpa", "predicateType": "SeasonTierPredicate", "value": "pZNjdKHqDX1jGg2X", "values": ["vIEPvqjKVvPP5x3g", "mHSK4Sz7fbw7cgHH", "6VHZOulL5KfkSA0a"]}, {"anyOf": 11, "comparison": "is", "name": "nOzyuw55KAICc0N5", "predicateType": "SeasonPassPredicate", "value": "lalbZWuO0OVwGUgR", "values": ["3PEWI0N4k2W2caqa", "0zAUzpliq50demc4", "RVdR05rSilF29Lpg"]}]}, {"operator": "or", "predicates": [{"anyOf": 79, "comparison": "includes", "name": "3d2v2ibO04gNmB9r", "predicateType": "SeasonPassPredicate", "value": "MA5lA6x0lY16PWsr", "values": ["sxYq77iFOu0ybeoE", "RsKMCPmtnE1aHAuV", "ZKYNaKhi81nO4RNj"]}, {"anyOf": 43, "comparison": "isGreaterThanOrEqual", "name": "C342Uggyr64isEfx", "predicateType": "EntitlementPredicate", "value": "Gqd31L6KqJTL11T4", "values": ["vlBRDjj3FKvRIguq", "h0R0RXJ6anzAeqD1", "DEJfdxsQXLRJRONK"]}, {"anyOf": 69, "comparison": "isGreaterThanOrEqual", "name": "lhQ1rqjRECHyhLYG", "predicateType": "EntitlementPredicate", "value": "kzIBx4VA9ZxbKQDq", "values": ["QCljoyZp9rrR7RJb", "G7UJEMeseC0hnoI1", "dph0xgVXvWuSKhoO"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'UpdateItemPurchaseCondition' test.out

#- 122 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'kDwkEjOWWCzn2paE' \
    --body '{"orderNo": "vjRIcSa260P2hpjh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'ReturnItem' test.out

#- 123 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'QueryKeyGroups' test.out

#- 124 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "YQEdyLRX3etMjv8j", "name": "skCHfqF5uo9BT2Qq", "status": "INACTIVE", "tags": ["ou029lD9VLXNwkZW", "TbX0PZb0I9Qm4xKe", "k7ZAZJCk1fizRJy5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'CreateKeyGroup' test.out

#- 125 GetKeyGroupByBoothName
eval_tap 0 125 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 126 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'JoIlHjTZ4mDmXZIB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'GetKeyGroup' test.out

#- 127 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'Ti05akxBYozWzUW4' \
    --body '{"description": "RDVM8Y4PcXDH8RZq", "name": "UjELC82uP1nMUDAK", "status": "ACTIVE", "tags": ["EkOvO52VTPFFuLWL", "0HQkTuy4fU6Ejumf", "9ltGde7x4luTsEk9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'UpdateKeyGroup' test.out

#- 128 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'TNqSiFJyMByoRKUr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetKeyGroupDynamic' test.out

#- 129 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'vfixr7UFzLzGaWok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'ListKeys' test.out

#- 130 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    '215MnSNTPMRaYf8C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'UploadKeys' test.out

#- 131 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'QueryOrders' test.out

#- 132 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetOrderStatistics' test.out

#- 133 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'hh5tiLsXIOSE2JSD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'GetOrder' test.out

#- 134 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'RlSX5uOgZ3Msm86J' \
    --body '{"description": "r35oZQ3WcFld5DKw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'RefundOrder' test.out

#- 135 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'GetPaymentCallbackConfig' test.out

#- 136 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": false, "notifyUrl": "CqPGUmF8pQCrEqds", "privateKey": "tmoPJurb0FVZK7so"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'UpdatePaymentCallbackConfig' test.out

#- 137 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'QueryPaymentNotifications' test.out

#- 138 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'QueryPaymentOrders' test.out

#- 139 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "nuzTm1gseYPsB00G", "currencyNamespace": "8moKbti7cqKdwnwT", "customParameters": {"yTyr1XXDYClbgXA2": {}, "XATEcyKtSz6QsS6B": {}, "Hqs2Z5aknpCHXIr8": {}}, "description": "JndNzIiCZiPRCujr", "extOrderNo": "ja26Ygd7A1555Bie", "extUserId": "lNg6kfRgfnBT7Odj", "itemType": "SUBSCRIPTION", "language": "NdZX_GKDk-Nk", "metadata": {"aESuOM4olKFVsSfg": "NQjKhrrrStCg99ej", "NACAFAJlcWkS5jnh": "MZsQ8CVsHXHYBx7K", "kpRAaivn5yFNSoKf": "7tdmVppuu6acpUdn"}, "notifyUrl": "8X5IZjtFT6Bs8OO0", "omitNotification": true, "platform": "FvEHCnQ2BiPScmfo", "price": 57, "recurringPaymentOrderNo": "tGAptSES09ZcFGPC", "region": "okMwrtVvGhHzNdHM", "returnUrl": "Jys9gtFxWSkvzQZj", "sandbox": false, "sku": "rgnXc87G37jhABEz", "subscriptionId": "5T57ICJiWEPnZsQ3", "targetNamespace": "NsS8VgyzvujT8aEa", "targetUserId": "y0LM1IpMDZuDLXNs", "title": "cwbXgdwQnMuReen3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'CreatePaymentOrderByDedicated' test.out

#- 140 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'aYjhar5GRzOAfOXb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'ListExtOrderNoByExtTxId' test.out

#- 141 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'aEHFX0sySxhkhCpV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'GetPaymentOrder' test.out

#- 142 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '5A2ZLHG60X6LS9dY' \
    --body '{"extTxId": "e42oicsvoF2EgsoZ", "paymentMethod": "SKOzQIDAf44vyeNI", "paymentProvider": "ALIPAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'ChargePaymentOrder' test.out

#- 143 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'IS4N3VRydtvWZZFD' \
    --body '{"description": "NIc86TKj3grgVdqS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'RefundPaymentOrderByDedicated' test.out

#- 144 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'pg9xpXCh79kxpJyT' \
    --body '{"amount": 3, "currencyCode": "z6GmSzMPzB5ZP4md", "notifyType": "REFUND", "paymentProvider": "CHECKOUT", "salesTax": 27, "vat": 97}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'SimulatePaymentOrderNotification' test.out

#- 145 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'GGtbn27LOqX7FWHH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'GetPaymentOrderChargeStatus' test.out

#- 146 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'IOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'GetPlatformWalletConfig' test.out

#- 147 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Other' \
    --body '{"allowedBalanceOrigins": ["Steam", "Epic", "IOS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'UpdatePlatformWalletConfig' test.out

#- 148 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'GooglePlay' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'ResetPlatformWalletConfig' test.out

#- 149 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'GetRevocationConfig' test.out

#- 150 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'UpdateRevocationConfig' test.out

#- 151 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'DeleteRevocationConfig' test.out

#- 152 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'QueryRevocationHistories' test.out

#- 153 GetLootBoxPluginConfig1
$PYTHON -m $MODULE 'platform-get-loot-box-plugin-config-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'GetLootBoxPluginConfig1' test.out

#- 154 UpdateLootBoxPluginConfig1
$PYTHON -m $MODULE 'platform-update-loot-box-plugin-config-1' \
    --body '{"appConfig": {"appName": "RbcSuSkd72wzQJjm"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "jyRqefUM764xXmCk"}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'UpdateLootBoxPluginConfig1' test.out

#- 155 DeleteLootBoxPluginConfig1
$PYTHON -m $MODULE 'platform-delete-loot-box-plugin-config-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'DeleteLootBoxPluginConfig1' test.out

#- 156 UploadRevocationPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'UploadRevocationPluginConfigCert' test.out

#- 157 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "L9p2OQ5Ll9C3fSnn", "eventTopic": "tsqrUKREAt8zG7Mw", "maxAwarded": 50, "maxAwardedPerUser": 55, "namespaceExpression": "6qt1KRlDGxhO1YbP", "rewardCode": "oWmG714ZA04yxGcM", "rewardConditions": [{"condition": "cYyromMVFEaTLz3h", "conditionName": "mDX1C9gHM8SS73Lr", "eventName": "Eja3XlbCcD2bQLuF", "rewardItems": [{"duration": 46, "endDate": "1983-10-02T00:00:00Z", "itemId": "mA6nDD3EFfeJdwsk", "quantity": 8}, {"duration": 12, "endDate": "1995-03-17T00:00:00Z", "itemId": "L3hmjUydsgdt98Kf", "quantity": 2}, {"duration": 13, "endDate": "1971-11-19T00:00:00Z", "itemId": "QpgEAKKLcKbPxGvL", "quantity": 84}]}, {"condition": "c7KalLFWBzkHql6e", "conditionName": "Ja7PZ2MvexshOyL8", "eventName": "KXBfLq1zWLmtFhef", "rewardItems": [{"duration": 79, "endDate": "1992-05-09T00:00:00Z", "itemId": "CVsWzhPIeHkoUSeT", "quantity": 24}, {"duration": 34, "endDate": "1982-03-15T00:00:00Z", "itemId": "51D9Vwsfzatv4Jzf", "quantity": 97}, {"duration": 81, "endDate": "1986-08-01T00:00:00Z", "itemId": "GO7yuqGFaSZmLnl1", "quantity": 21}]}, {"condition": "NthHP0LDshHSWtyr", "conditionName": "OFmeGGIRRLbsmgDO", "eventName": "0TIQbgg12LHWqVdQ", "rewardItems": [{"duration": 70, "endDate": "1982-03-10T00:00:00Z", "itemId": "Aum4b3t1Ph8xHfEA", "quantity": 24}, {"duration": 50, "endDate": "1972-01-07T00:00:00Z", "itemId": "ScAQ7gSO3GHo6ESw", "quantity": 28}, {"duration": 38, "endDate": "1986-05-01T00:00:00Z", "itemId": "ilWhSc6XIxh1HqBg", "quantity": 59}]}], "userIdExpression": "FhY2vclqnTbyZ7fY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'CreateReward' test.out

#- 158 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'QueryRewards' test.out

#- 159 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'ExportRewards' test.out

#- 160 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'ImportRewards' test.out

#- 161 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    '15dSBhpLRxydIE1C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'GetReward' test.out

#- 162 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'QFSQS3RD8Q6YcgyT' \
    --body '{"description": "tSOU4FdUceGtntm6", "eventTopic": "j0Apyricmsku6ryZ", "maxAwarded": 75, "maxAwardedPerUser": 95, "namespaceExpression": "7UKLhMA3DOG2TuIw", "rewardCode": "xdK6goe9uJ8PAnT6", "rewardConditions": [{"condition": "lHom6RSj2xFFFrIQ", "conditionName": "FWJ2aMIxqQycDpbO", "eventName": "cYim2syYc8YuKlQj", "rewardItems": [{"duration": 28, "endDate": "1977-03-20T00:00:00Z", "itemId": "po1k2W89U6PA5Byr", "quantity": 98}, {"duration": 92, "endDate": "1989-10-24T00:00:00Z", "itemId": "YkHNYqepadIS0zRg", "quantity": 16}, {"duration": 94, "endDate": "1980-11-16T00:00:00Z", "itemId": "e2ntrz0FUDXjV0Gm", "quantity": 5}]}, {"condition": "6suz0JPLhBV8H4Rs", "conditionName": "8p9AflDjkRQna4af", "eventName": "JC9mgf0blFr8NUmS", "rewardItems": [{"duration": 7, "endDate": "1971-01-23T00:00:00Z", "itemId": "49CybTerX6wW5HLY", "quantity": 47}, {"duration": 16, "endDate": "1991-03-19T00:00:00Z", "itemId": "5DN6DJmnjBd7q6U3", "quantity": 97}, {"duration": 84, "endDate": "1975-01-21T00:00:00Z", "itemId": "7ip9ibQlReTecqcb", "quantity": 14}]}, {"condition": "wHKKIT2D8YJKnP2T", "conditionName": "mDSwAt1UGNieMe0c", "eventName": "6eA8xCvVNgS0wUvE", "rewardItems": [{"duration": 94, "endDate": "1979-04-12T00:00:00Z", "itemId": "2uoLHWsw0m7ZY46m", "quantity": 19}, {"duration": 81, "endDate": "1976-11-26T00:00:00Z", "itemId": "EzSmB6aO1JqypofI", "quantity": 21}, {"duration": 11, "endDate": "1990-11-17T00:00:00Z", "itemId": "1Wvc2CcOra4RXenU", "quantity": 28}]}], "userIdExpression": "Qae7TEBnzFuxHzrR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'UpdateReward' test.out

#- 163 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    '3PiHyAFfiwIi9bI2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'DeleteReward' test.out

#- 164 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'X8C6xnSImJqwyGzE' \
    --body '{"payload": {"1BMLJmTvUJIV0W2K": {}, "8alZaxyEak02r4dR": {}, "vrKr07n72icTrg8R": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'CheckEventCondition' test.out

#- 165 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'yI3bDBIKGiLSqDVn' \
    --body '{"conditionName": "EtbqHnY6D1Z2oKGm", "userId": "RbhR6rnSjFQf699g"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'DeleteRewardConditionRecord' test.out

#- 166 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'QuerySections' test.out

#- 167 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    'OqEWjr9T9UhsGYJ3' \
    --body '{"active": true, "displayOrder": 92, "endDate": "1980-04-03T00:00:00Z", "ext": {"OdqFxY9j8P8IFwNK": {}, "h0Zni7P6ZfRFkQol": {}, "DEtyxyMGw4ZEIMYF": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 29, "itemCount": 72, "rule": "SEQUENCE"}, "items": [{"id": "Er69zjnPKVLZ59Qu", "sku": "wBbW2xX96TmFiMrq"}, {"id": "ZaZSR4SAMIG5DRP3", "sku": "07xNIxMniv6VDtGh"}, {"id": "PQu5IgTlvO4wr8D7", "sku": "APHhihwdNSBKpqJ8"}], "localizations": {"V1kQHisGldXgqa99": {"description": "UNyHIlnrLOesUoAw", "localExt": {"wCO2c7aEAHcpdx91": {}, "UabvNvRaUrUqTcFs": {}, "GXxjR7vTeNdfPVWm": {}}, "longDescription": "EdVFXX02sJsXg7AK", "title": "Ou2Xk8T0sqdmD20r"}, "olfU1yEokwoBSfRP": {"description": "MdPXru40VmHvpaJ6", "localExt": {"EFG9wLOlD7N2GNQs": {}, "0IgMAbRc0I82pjV4": {}, "UBb0pZrHFxE9EAcM": {}}, "longDescription": "e8RHXnsxazB0s0OG", "title": "tkrGuIEzLqOEqdEc"}, "HbFrNLqqyBzPWvDs": {"description": "w3y3noSTunCZN39o", "localExt": {"0vZqaSrHfwrqqHXH": {}, "pPnC56p62cEYBMPD": {}, "DNvuy4MWHW8YW1eu": {}}, "longDescription": "C0ubVpUB9WTnYHGm", "title": "KeMnGn3hXTX65W9y"}}, "name": "7jKRgCFKj2fpaEDg", "rotationType": "FIXED_PERIOD", "startDate": "1981-11-09T00:00:00Z", "viewId": "uyipF1FB9RNF3G6s"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'CreateSection' test.out

#- 168 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'PweMmOIXU6IcFkTW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'PurgeExpiredSection' test.out

#- 169 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'MTXNI4WIT2qYutqi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetSection' test.out

#- 170 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'i44IKSSMR4zJKYxo' \
    'uzcD0pPXkdTrLYN4' \
    --body '{"active": false, "displayOrder": 54, "endDate": "1996-08-24T00:00:00Z", "ext": {"Ln9YKDyW9wNSXGvH": {}, "GabfCgecNknWoEbR": {}, "oZQ4VuKeTQQXDNtj": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 50, "itemCount": 69, "rule": "SEQUENCE"}, "items": [{"id": "hHTDHO8mQoGOS84j", "sku": "EVRGn0aQHrmMgGX6"}, {"id": "WiX9WPUEwP8KagnE", "sku": "KkfRnTAD7nNuqrkn"}, {"id": "aj1Fks8OhmWshFK5", "sku": "hyfwqkxFeK2HSaUy"}], "localizations": {"XEOQUwXDX8MGlija": {"description": "R3VVk7nD09WBTm7H", "localExt": {"y1AvjH8TO5OIzshG": {}, "gQ4ThugQFOWwlpo3": {}, "MnSMNdjVtLt8CrUF": {}}, "longDescription": "IkcZk3UEaPstaXtL", "title": "CGf6Pjb7W28XF9eX"}, "2LXwaZwDM1CYDLma": {"description": "PDEUbDvBUnl1NO7r", "localExt": {"La2XTR4IEvU0JE2k": {}, "LOQb2CBEoV5Nm182": {}, "ykfY01GcykfqRyXI": {}}, "longDescription": "Vnis4SKjpYMZV5AV", "title": "m0vOTpy2xyajHMUn"}, "KflmcC3pOWLT8ckE": {"description": "y2SMQcmxebThGYrg", "localExt": {"NOimVrZzkyKHvwa7": {}, "cbRj2at5ZJSh02sr": {}, "NNRw3Y1j6viZbWeu": {}}, "longDescription": "0WyHCl9Xs4E416s1", "title": "Oq4B0c6hcP5jLY1K"}}, "name": "xbFbyzOePaXR3ub0", "rotationType": "CUSTOM", "startDate": "1984-01-16T00:00:00Z", "viewId": "6lnb5gdT3QnV1lky"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'UpdateSection' test.out

#- 171 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'fpfTo2MX3YvlKKTk' \
    'jhbq0eRvkBW48O77' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'DeleteSection' test.out

#- 172 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'ListStores' test.out

#- 173 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "tNIBYTFfPUrNUOX0", "defaultRegion": "haxwoUd3ezYAdypb", "description": "6oWXYIQqBIhw3NQX", "supportedLanguages": ["GJDWtQNJFHNbgt9u", "aoCeP9rZK0m4whjN", "MB89Aoh6Jk84k7R0"], "supportedRegions": ["603b1ChdDIpRn2Hg", "PRevBMjempE90i47", "qjDQAAvYZZABKOA0"], "title": "L11TgHUfODRocsLm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'CreateStore' test.out

#- 174 ImportStore
eval_tap 0 174 'ImportStore # SKIP deprecated' test.out

#- 175 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'GetPublishedStore' test.out

#- 176 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'DeletePublishedStore' test.out

#- 177 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'GetPublishedStoreBackup' test.out

#- 178 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'RollbackPublishedStore' test.out

#- 179 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'BbV1sCNpADwypkoh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'GetStore' test.out

#- 180 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    '2Ufv88v1ngAJIsXT' \
    --body '{"defaultLanguage": "5AL1og70bKW5QYtG", "defaultRegion": "AVQvqyIVadq2JITE", "description": "aFYCmQEyL35Lh1cC", "supportedLanguages": ["Bgg2D4HUqIhXDNws", "eD5BbL13OgHZysyn", "y0912axRFeMgIQdJ"], "supportedRegions": ["Nm52k6wEP9rj7lO6", "vs4tMfHLoSkvb8lb", "FBtF0ILnxdtDeCtb"], "title": "UIxxTu6SQF7Bt4rv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'UpdateStore' test.out

#- 181 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'diz3ZJfWFdytTpAV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'DeleteStore' test.out

#- 182 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'x0pd4puXNhGU3RmY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'QueryChanges' test.out

#- 183 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'w0EwPDL8fEraUQnz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'PublishAll' test.out

#- 184 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'cZCIvQUYP4zKaJuB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'PublishSelected' test.out

#- 185 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'k11UoFtSCgGhhAxz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'SelectAllRecords' test.out

#- 186 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'oBKOqmwgAOXAylHS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetStatistic' test.out

#- 187 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    '3htDNYuRa6jU8OLK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'UnselectAllRecords' test.out

#- 188 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'dFhRNswdEfL1i3SL' \
    '7JlQ0WmwgELy9cxg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'SelectRecord' test.out

#- 189 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'DaEUFiMTIV4pb5hZ' \
    'yPikzEmnmdOWGrvu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'UnselectRecord' test.out

#- 190 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    '5JZsUPqtph4Z0KsC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'CloneStore' test.out

#- 191 ExportStore
eval_tap 0 191 'ExportStore # SKIP deprecated' test.out

#- 192 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'QuerySubscriptions' test.out

#- 193 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'WhJPpmpjibu6WMYM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'RecurringChargeSubscription' test.out

#- 194 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'ScWAzVVdQZznMUlq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetTicketDynamic' test.out

#- 195 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'j2djHHFFRxJPvHew' \
    --body '{"orderNo": "pv9IeC6LAtGzNwZU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'DecreaseTicketSale' test.out

#- 196 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'e0kRnfBio030WDtR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'GetTicketBoothID' test.out

#- 197 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'FRReZoX0eYwpjuQP' \
    --body '{"count": 29, "orderNo": "mx4p5ShR3fI6ZeDW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'IncreaseTicketSale' test.out

#- 198 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'bxHSLn6kQxqK7yxo' \
    --body '{"achievements": [{"id": "QHX7XexjvW4rZ57R", "value": 1}, {"id": "il6iUOTWxf4GH0N4", "value": 21}, {"id": "81jfik6ShLjJbf17", "value": 49}], "steamUserId": "MCR5ZpvlWXRfEoUu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'UnlockSteamUserAchievement' test.out

#- 199 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'NmQrq6p7WrYOBpl7' \
    '7LsKN46XLNfQ0SXy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetXblUserAchievements' test.out

#- 200 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'MTygZRBzJUpXr5Zk' \
    --body '{"achievements": [{"id": "wYPLnvikBnp1ILBu", "value": 18}, {"id": "aiwkoaBb8UYH2Pz5", "value": 98}, {"id": "IDxg4DkmnJtxZgIU", "value": 80}], "serviceConfigId": "77wOP10AbpbjZo2d", "titleId": "QM3ZXq9atijyFT8B", "xboxUserId": "6hECr4zqhZ9lpllw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'UpdateXblUserAchievement' test.out

#- 201 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'asnryjxylwRVcy18' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AnonymizeCampaign' test.out

#- 202 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'iHO0dKNHWBFM13F3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AnonymizeEntitlement' test.out

#- 203 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    '7X9HTu6c4mMUdJoK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AnonymizeFulfillment' test.out

#- 204 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'myaU7qTgHxGQ4Dm2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AnonymizeIntegration' test.out

#- 205 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'YoSLUIzzQsIU3IZf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AnonymizeOrder' test.out

#- 206 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    '93pQmmWWhMnRSn6P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AnonymizePayment' test.out

#- 207 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'Rk0DwXkYJ6aX6XRS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AnonymizeRevocation' test.out

#- 208 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'Xg6OXqwh2Uj0IZZF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AnonymizeSubscription' test.out

#- 209 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'Xv7pY5cNIYdQRni6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AnonymizeWallet' test.out

#- 210 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'IfH05hVdagEETj8D' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'GetUserDLCByPlatform' test.out

#- 211 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'NB2IE43MBCGNyjqn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'GetUserDLC' test.out

#- 212 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'DuWD1qiZzXQxSDgH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'QueryUserEntitlements' test.out

#- 213 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '9L20T6fVxvK30nHM' \
    --body '[{"endDate": "1996-07-05T00:00:00Z", "grantedCode": "KKHHaSwFS7fAGmA4", "itemId": "gy2QBm02aTdgp0Wc", "itemNamespace": "RdrrdOKQbXXiMg5R", "language": "nAe", "quantity": 34, "region": "KZj2jWyKAzXYP9kO", "source": "ACHIEVEMENT", "startDate": "1979-05-26T00:00:00Z", "storeId": "monOpgtONmMvrDH4"}, {"endDate": "1988-11-29T00:00:00Z", "grantedCode": "Xc6tn8XayBI734jC", "itemId": "TSnRqHTWC4NCblti", "itemNamespace": "xkXwXO0XemKHsUC5", "language": "zFb", "quantity": 51, "region": "7CzuPXE90ufrBaS4", "source": "ACHIEVEMENT", "startDate": "1989-01-07T00:00:00Z", "storeId": "rt5FnAIz4y9yy462"}, {"endDate": "1990-06-03T00:00:00Z", "grantedCode": "nwchld3LWFhC1kBU", "itemId": "vsUcnOXhewthszMs", "itemNamespace": "YOEmQiF1OsXfJG3p", "language": "ZKM-awJA", "quantity": 80, "region": "Va5GGFvLtWl66DAE", "source": "IAP", "startDate": "1981-08-09T00:00:00Z", "storeId": "usvVUxkCG4IGPYHa"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GrantUserEntitlement' test.out

#- 214 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'RvV3JGi5l0G5NBtX' \
    'VTXK1JdoClQQGLne' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GetUserAppEntitlementByAppId' test.out

#- 215 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'Kl3iXOvSGgZzuoTi' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'QueryUserEntitlementsByAppType' test.out

#- 216 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'gT4AtBZJsMBPDcUu' \
    'WC1NgHaxQlxs2MPG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'GetUserEntitlementByItemId' test.out

#- 217 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'kLeY5CedGPB0iJF9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'GetUserActiveEntitlementsByItemIds' test.out

#- 218 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    '6NG7vODPmfnV8dOr' \
    '38jFYjFRDj47EZTC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'GetUserEntitlementBySku' test.out

#- 219 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'Cwz8yawNImZdPzt9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'ExistsAnyUserActiveEntitlement' test.out

#- 220 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'koNSL3vqGgJOWkI0' \
    '["sHphIU3KaP7nk9iE", "aqudy3aYo02pzHan", "nSLeEYvuciynwWb0"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 221 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    '1HLrp6OW9Y7FIIEJ' \
    'Mm4Kizs3NRbyYMyW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 222 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'PHp8NpreWtVtRQu0' \
    'coThNxwnnpoM2KSo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'GetUserEntitlementOwnershipByItemId' test.out

#- 223 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'HlpDFImJNovlZq1O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'GetUserEntitlementOwnershipByItemIds' test.out

#- 224 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '6RDUgilQHCts6SUN' \
    'xUWIGSkxjKL3EiP6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'GetUserEntitlementOwnershipBySku' test.out

#- 225 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'WeXWf3dBAVfIM2oL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'RevokeAllEntitlements' test.out

#- 226 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'FaTIhv5XrQvTAdis' \
    'xP0DyxqSYeCl4gEZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'RevokeUserEntitlements' test.out

#- 227 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'gIMDALa4nsITUeFK' \
    'Nh8kgmMjBxD74Luj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'GetUserEntitlement' test.out

#- 228 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'tGQD9sT5LHkWjFIo' \
    '6VbU9gwMgZPR9Q5L' \
    --body '{"endDate": "1980-01-13T00:00:00Z", "nullFieldList": ["tog0ehjEmcjJzkf7", "rNu3ZARHXZ5yuJsf", "xI3zuYwCYQw4Rr3l"], "startDate": "1977-02-07T00:00:00Z", "status": "SOLD", "useCount": 49}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'UpdateUserEntitlement' test.out

#- 229 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'MSrrV6FB8DFwD7WX' \
    'kw7te8pQfvxY5zPZ' \
    --body '{"options": ["KMd5ItnXbDbXW9Kl", "fgVvjjjExRk4JHYG", "a2nnyqvFCYJOJl9l"], "requestId": "js9WPwxzICEykNJe", "useCount": 63}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'ConsumeUserEntitlement' test.out

#- 230 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'fA6pBIXqoaoYoHcr' \
    'Iwc6qkDf3ciuVB7v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'DisableUserEntitlement' test.out

#- 231 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'M6wSqwns2XJfUl3u' \
    'iEO9E03Jk5kBnuo4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'EnableUserEntitlement' test.out

#- 232 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'jR1HYLJjnydxAGgq' \
    'H3ytkroZ2tfFjNF9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'GetUserEntitlementHistories' test.out

#- 233 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    '9VixS5Es3u4km3iK' \
    'iNLRNa01SihgZby9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'RevokeUserEntitlement' test.out

#- 234 RevokeUseCount
$PYTHON -m $MODULE 'platform-revoke-use-count' \
    'mBdGrJY5J0e9jWcV' \
    'TCNxjdv8GxhJoB4l' \
    --body '{"reason": "Akbm1Abh9QxLBfhp", "useCount": 83}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'RevokeUseCount' test.out

#- 235 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    'KyfAbdUB1OM5oKTX' \
    'ANlenFuUeRc2SCqQ' \
    --body '{"requestId": "9kgrqAIaKAUBfyFC", "useCount": 49}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'SellUserEntitlement' test.out

#- 236 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'BZMAbJnqDKuBGWmZ' \
    --body '{"duration": 39, "endDate": "1994-03-10T00:00:00Z", "itemId": "NByHqsS7t8WUpg0e", "itemSku": "quIg7wIz8o3rFWvl", "language": "E7bmuaFNPCECKSzH", "order": {"currency": {"currencyCode": "TT5beKYt4CDlWZzq", "currencySymbol": "pJeQd6tN5oH4E7Jo", "currencyType": "VIRTUAL", "decimals": 96, "namespace": "GEpOKUFWLtsLf278"}, "ext": {"ybCNhF9RCyMn5VX8": {}, "7u49Hsq4hLUkLLTN": {}, "MnmlFzzwpEZwbcCE": {}}, "free": true}, "orderNo": "xoJdIIw70J2JeqNT", "origin": "Steam", "quantity": 17, "region": "shoZJnsAkX5sxny0", "source": "DLC", "startDate": "1990-08-08T00:00:00Z", "storeId": "YMNb0QsxPlx64IQU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'FulfillItem' test.out

#- 237 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'pSToD0bb0SXZUy9H' \
    --body '{"code": "0C213rnYfZ8c8zUR", "language": "CLp_223", "region": "AFqIsHod9kt3xkRS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'RedeemCode' test.out

#- 238 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'ajXSTpU3aCkzqs0h' \
    --body '{"origin": "System", "rewards": [{"currency": {"currencyCode": "BnIHoRNWTVvIN7c2", "namespace": "uh7Ls9nxKiaoWmrw"}, "item": {"itemId": "6n7VYPrZA5UWNq6y", "itemSku": "Tj5WST6JF9lLvPS5", "itemType": "jJ58vaRaaxVQeMUb"}, "quantity": 21, "type": "CURRENCY"}, {"currency": {"currencyCode": "vSj6jcjlxGsLgfrh", "namespace": "BTH1QV91XmB5Z6en"}, "item": {"itemId": "6c5d620U9addYCAt", "itemSku": "uTx2FKoGRQ2i1n2W", "itemType": "JVJy6yBPVmpbwVG3"}, "quantity": 79, "type": "ITEM"}, {"currency": {"currencyCode": "nv5BwzKyxJqBCaof", "namespace": "96NNQPxPe1HYkf4K"}, "item": {"itemId": "jUJVMedBEWe14kmP", "itemSku": "IGCrJozIio8nWa64", "itemType": "x5pJSHZCzyWKP30K"}, "quantity": 42, "type": "ITEM"}], "source": "PURCHASE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'FulfillRewards' test.out

#- 239 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'yvaitTsWtL2AAtjE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'QueryUserIAPOrders' test.out

#- 240 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'KW31SlSm20DzdKk8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'QueryAllUserIAPOrders' test.out

#- 241 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'FlVcy0hcEMFRkn8S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'QueryUserIAPConsumeHistory' test.out

#- 242 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'AQhtiWA2DHIocFR9' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "BVHz", "productId": "l3UURltNbDbdvc14", "region": "DUjHqRaUZuU9T9SR", "type": "EPICGAMES"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'MockFulfillIAPItem' test.out

#- 243 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'Lgddr0UUiy5jm1w2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'QueryUserOrders' test.out

#- 244 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'g65JkaoPuBsuSb0L' \
    --body '{"currencyCode": "ePf5b8MJ94DAh1Mc", "currencyNamespace": "7VkHxj8k5KSFtbEo", "discountedPrice": 63, "ext": {"4QAE2aV1l1P0cjdc": {}, "49Ah8hoDWRw7XYzZ": {}, "LlLq8lPGFyb34DDy": {}}, "itemId": "qvcwQ3uBzBm355IU", "language": "5aZu5bRvxm9KYr60", "options": {"skipPriceValidation": true}, "platform": "GooglePlay", "price": 99, "quantity": 32, "region": "NB8u5Qlf4KGo0N4g", "returnUrl": "7UWRzPsMd90Jrkh4", "sandbox": false, "sectionId": "qyhFh7mq6sgk5cHa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'AdminCreateUserOrder' test.out

#- 245 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'JYkzClqPty2kxgyr' \
    'y1MM9eo43Qi5cReh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'CountOfPurchasedItem' test.out

#- 246 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'BB7o24lw21Z3nE04' \
    'Cbkpn0yX44aL9f0Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'GetUserOrder' test.out

#- 247 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'yO5YXVhTiaE4WKnE' \
    'eaUdAmgmnzKSVlXs' \
    --body '{"status": "FULFILLED", "statusReason": "NMykbnHTrHLmaTGF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'UpdateUserOrderStatus' test.out

#- 248 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'I1atDOVS2F6Is27h' \
    'n9TSwEvJPZcYrXKM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'FulfillUserOrder' test.out

#- 249 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'nNZIm0ooHCnlq1H5' \
    'IuOvafRIdOXlxxdy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'GetUserOrderGrant' test.out

#- 250 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'Sywm5h2pCfHjg41Z' \
    'hheDDG5HJEFQRX4i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'GetUserOrderHistories' test.out

#- 251 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'Vg8TK1CF9X9mTmMV' \
    'fQaiQKdHknLotplf' \
    --body '{"additionalData": {"cardSummary": "BOvsb9aicyajUNH4"}, "authorisedTime": "1972-12-31T00:00:00Z", "chargebackReversedTime": "1983-06-20T00:00:00Z", "chargebackTime": "1982-05-01T00:00:00Z", "chargedTime": "1973-12-24T00:00:00Z", "createdTime": "1985-03-07T00:00:00Z", "currency": {"currencyCode": "kRhK1PGfmAnDGtIn", "currencySymbol": "myZkHQxUB5U4Qk0f", "currencyType": "VIRTUAL", "decimals": 66, "namespace": "ugFtH5gSuRJLGkij"}, "customParameters": {"LEJPCdahOY2goEK3": {}, "5CZu7WE18eU5rtQU": {}, "WRLvu3WEfwBn40sJ": {}}, "extOrderNo": "ji4hVE3lKNQy2rJx", "extTxId": "iPPjJk44WHDDNDVg", "extUserId": "Excmm4fkoNMVNk6z", "issuedAt": "1976-08-05T00:00:00Z", "metadata": {"TEI52B8LI9vMEB8O": "HKsqKaw1EmCxOMl6", "uh44gPPfiJZCSkIQ": "I1h6OjoUY4QXecer", "XxPodPokDUivfNI3": "KdSIbTi8dxU11tPB"}, "namespace": "lMCz6SSpxt0aZZr3", "nonceStr": "SbJHkTstBGTm2OFH", "paymentMethod": "VEoRljsGF5AYZlEY", "paymentMethodFee": 34, "paymentOrderNo": "0UBm7wccELVo9RYT", "paymentProvider": "STRIPE", "paymentProviderFee": 67, "paymentStationUrl": "uwIrGgk3eqgOf7Ww", "price": 82, "refundedTime": "1991-04-02T00:00:00Z", "salesTax": 99, "sandbox": false, "sku": "yYuM3y1TjdcOVw94", "status": "AUTHORISE_FAILED", "statusReason": "GfavVPOhaaf5eExc", "subscriptionId": "jABRx8qNMv4XLW0x", "subtotalPrice": 23, "targetNamespace": "zSCeJ4Q8PHY6vGzN", "targetUserId": "fPWTQ1pJMwPVAUNY", "tax": 65, "totalPrice": 83, "totalTax": 35, "txEndTime": "1974-09-04T00:00:00Z", "type": "7TplEkOZy73bRBtW", "userId": "CJCJuzB1jbh95vj0", "vat": 97}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'ProcessUserOrderNotification' test.out

#- 252 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'ghZp6iVAJ6lYOK3c' \
    'wO9ln34fiLxPN5xK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'DownloadUserOrderReceipt' test.out

#- 253 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'oNNYd5p2yVsBAv2Z' \
    --body '{"currencyCode": "VlrnlY8y91hD1ZHh", "currencyNamespace": "1VjLqa0AODLarMcr", "customParameters": {"lOCtMCyPHnS8uePy": {}, "iByYQOgKKv9kQYaS": {}, "I3bbqZQkXAns7Vrd": {}}, "description": "NH8v1oP98hanhE18", "extOrderNo": "UbY1Zkrfk0Xn6jwf", "extUserId": "R02GfMrXzI7oWD1m", "itemType": "SUBSCRIPTION", "language": "SmyM", "metadata": {"Gfh2XhfCB53jlBjz": "XLwoMxshoo8aHsXJ", "87ywdDtou8Np74s3": "RLe4gpS550eQ5WiZ", "iQUzC0vBF108QVF9": "gKmJBuqEpgnV3xNd"}, "notifyUrl": "P3uQJ2ZdCStanvPw", "omitNotification": true, "platform": "586qYdNvmRITEU7u", "price": 37, "recurringPaymentOrderNo": "QPAsGfQVawbSlqUf", "region": "FfZytHO4xrQvXR88", "returnUrl": "ArNPkMbfhbrTb4ZP", "sandbox": false, "sku": "4R5dqhreKq9si5LT", "subscriptionId": "ZGjfJI0GRPR9FWa3", "title": "sAlKnzZ5Joq98jWs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'CreateUserPaymentOrder' test.out

#- 254 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'zWZxmbhMr5aDNyd7' \
    'VDhThmXAsBwC4MOm' \
    --body '{"description": "SF5ZPpYXTbgh3hVK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'RefundUserPaymentOrder' test.out

#- 255 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'yU97N87zJHVwE86V' \
    --body '{"code": "YnuoHevgj9ralh2t", "orderNo": "jIEDpjLJD7E0dh07"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'ApplyUserRedemption' test.out

#- 256 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    '7pXU34waIIRxeTkl' \
    --body '{"meta": {"27M6AggzKZ3nqWut": {}, "rpjBOnBeqwBnFdy0": {}, "1mQjVblM1GnFG6eP": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Nintendo", "currencyCode": "XnmuQN65HKi5qvwL", "namespace": "IqgfXvKjhXcfKE45"}, "entitlement": {"entitlementId": "hKdn2Ay5KgtWue3X"}, "item": {"itemIdentity": "kqcMKE9l0uRkf5Rx", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 49, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "6pf9Ni5L9Nkvuqwv", "namespace": "TTB6lW4R7V4J46ZN"}, "entitlement": {"entitlementId": "RNpLcI8Vh4bQO4Nc"}, "item": {"itemIdentity": "65zcFKgC0oMEpgLE", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 91, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "X7fXbKWmraqNIKPX", "namespace": "6gPHT29wkZwM8cvO"}, "entitlement": {"entitlementId": "bRjKxi25l9mb1mSJ"}, "item": {"itemIdentity": "ffUaLwOsYRIJearz", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 85, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "L42H1n3ZvUrBoqK1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'DoRevocation' test.out

#- 257 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    '6btU6SoaoiAtMgNN' \
    --body '{"gameSessionId": "8B4oo9jFmBqiyicQ", "payload": {"Hvr1zREqWwsQaxbd": {}, "G9IxEoxcgOEmGQpz": {}, "N4HM3v5wAiimBQXC": {}}, "scid": "xR1cObsys0SaqnYI", "sessionTemplateName": "BTANshJcdLEofyiS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'RegisterXblSessions' test.out

#- 258 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    '3dO8j3taWbShXMN0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'QueryUserSubscriptions' test.out

#- 259 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'MRNkMX09nQEwFSce' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'GetUserSubscriptionActivities' test.out

#- 260 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '6VsIsSSdkP3IqaPa' \
    --body '{"grantDays": 67, "itemId": "Jc57cVP8tXCteutO", "language": "2hlDa0voH7Al8vux", "reason": "WTaiUJpIgLrblSQi", "region": "wrmWKb8IhCNJqtCt", "source": "GvxKwuL3MuhHXzy6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PlatformSubscribeSubscription' test.out

#- 261 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'WjNeNYuVWrqxrNDh' \
    'saw4vbDPKG9aUuCw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 262 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    '1ys0BxLbujuXwWEJ' \
    'Uvl8k6CNRAfp1s21' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'GetUserSubscription' test.out

#- 263 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'wulz8cb64KjGDHol' \
    'xRGH5sQmA6XL9p83' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'DeleteUserSubscription' test.out

#- 264 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'Led5r4J7MEwKxtP0' \
    'SkagDcL89PjvtwaU' \
    --body '{"immediate": true, "reason": "o2LnIKn5bM9rW10X"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'CancelSubscription' test.out

#- 265 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'i6WV5MHuvBu2QQOX' \
    'QatBE5QBIDADPTgs' \
    --body '{"grantDays": 13, "reason": "dIoHdoDHgvwcWxlm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'GrantDaysToSubscription' test.out

#- 266 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'JoJSnhyf4L6dZ66Z' \
    'i7azAJHL5PE9RVZO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'GetUserSubscriptionBillingHistories' test.out

#- 267 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'NAcvKXL23ppvor8g' \
    'rcvFvYajtvdiqyZz' \
    --body '{"additionalData": {"cardSummary": "xREBSrOk54EyWalL"}, "authorisedTime": "1976-01-15T00:00:00Z", "chargebackReversedTime": "1985-09-29T00:00:00Z", "chargebackTime": "1997-08-22T00:00:00Z", "chargedTime": "1982-05-25T00:00:00Z", "createdTime": "1999-04-02T00:00:00Z", "currency": {"currencyCode": "vtL9JTQ5CWaR2Dvf", "currencySymbol": "AXB1SrgLn5lUQ3Mt", "currencyType": "REAL", "decimals": 49, "namespace": "ye7Sb3gSolD6u7wI"}, "customParameters": {"ciVVHoFtt4AP9G3H": {}, "yBugfReiDLdSTRmE": {}, "lGhVQf227V7ADaQH": {}}, "extOrderNo": "t78b3DT7qRYPx0W6", "extTxId": "cXzOdGXLsEc8Xzmj", "extUserId": "XX4csMlaBkq9QHEb", "issuedAt": "1981-04-12T00:00:00Z", "metadata": {"Bo3ALdAKAQUoGDOU": "FK4BcWOxnwerZoIJ", "2JMtHAD8gJdK4CJB": "Y63ASIuZtE2WuycI", "dVm37lVyVYhbj7X9": "6t5WMLdod5DYqp6X"}, "namespace": "DPJmYDZqWoL8k0jE", "nonceStr": "Dj1R673CfYbn53kI", "paymentMethod": "RN1df13EvjSbGYcL", "paymentMethodFee": 87, "paymentOrderNo": "AvVETTsjp3kTD5DU", "paymentProvider": "ADYEN", "paymentProviderFee": 57, "paymentStationUrl": "BvhgsfcLURAHqkEp", "price": 26, "refundedTime": "1975-04-01T00:00:00Z", "salesTax": 63, "sandbox": true, "sku": "rwMkbsCK44WEKYCu", "status": "CHARGED", "statusReason": "4C7p4YKcL3qt4lUC", "subscriptionId": "jplpfxQDpz3ka75G", "subtotalPrice": 91, "targetNamespace": "GUZSzWfq3hqssnqU", "targetUserId": "PIJabCPMhqOeDXc5", "tax": 76, "totalPrice": 92, "totalTax": 69, "txEndTime": "1971-07-12T00:00:00Z", "type": "GL7YAU5AnUkmfVW9", "userId": "3ZW1tXAOpK37SfSP", "vat": 18}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'ProcessUserSubscriptionNotification' test.out

#- 268 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'ZxwOb5jkz9ihTe86' \
    'sjHoBLGz2Km7DEti' \
    --body '{"count": 44, "orderNo": "RZntMhunn3jSCD2A"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'AcquireUserTicket' test.out

#- 269 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'knCwPe4TX4CK4IBY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'QueryUserCurrencyWallets' test.out

#- 270 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    '01KuFbs8Iv2Ij9B7' \
    'VD3SyR3UCMUtsTLo' \
    --body '{"allowOverdraft": false, "amount": 55, "balanceOrigin": "GooglePlay", "reason": "LjxbwUQUVEWE0xtN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'DebitUserWalletByCurrencyCode' test.out

#- 271 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    '3v8DgFUrjRGzthYJ' \
    'KH9vhOLpoWOSJS0k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'ListUserCurrencyTransactions' test.out

#- 272 CheckWallet
eval_tap 0 272 'CheckWallet # SKIP deprecated' test.out

#- 273 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'U6fD66yb2MtSEiRg' \
    'h67ylD9xIb44v71q' \
    --body '{"amount": 4, "expireAt": "1993-04-12T00:00:00Z", "origin": "Nintendo", "reason": "EuNVKEmoFSme2B5x", "source": "ACHIEVEMENT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'CreditUserWallet' test.out

#- 274 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'y7iWsAEY3T2YDXuJ' \
    'SzkSZfZ5duijZETi' \
    --body '{"amount": 52, "walletPlatform": "Epic"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PayWithUserWallet' test.out

#- 275 GetUserWallet
eval_tap 0 275 'GetUserWallet # SKIP deprecated' test.out

#- 276 DebitUserWallet
eval_tap 0 276 'DebitUserWallet # SKIP deprecated' test.out

#- 277 DisableUserWallet
eval_tap 0 277 'DisableUserWallet # SKIP deprecated' test.out

#- 278 EnableUserWallet
eval_tap 0 278 'EnableUserWallet # SKIP deprecated' test.out

#- 279 ListUserWalletTransactions
eval_tap 0 279 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 280 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'ListViews' test.out

#- 281 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    'aQixMgpWQ9PgUcB3' \
    --body '{"displayOrder": 82, "localizations": {"MI4SEqiXIaji4MOm": {"description": "P494vGlNtuMUpS3K", "localExt": {"4kKGKct8SZQK7TEK": {}, "4sZzj7oPP3OeZVIL": {}, "EaXbHnhR8gT3if17": {}}, "longDescription": "nsndhy0Gtga4xRRN", "title": "it3ApyAvkVtA8b9z"}, "vOaiSMHjVciAVrPu": {"description": "zKV1Wj7J3QrgnhZM", "localExt": {"ehNOncXNM18ZiBLa": {}, "a5iN5b6ODd1kj4Qj": {}, "6RS5aO256ceteBSz": {}}, "longDescription": "425Kp2PGW8gpXu2m", "title": "BdRvF84eD5m02245"}, "YlrGlfgrzLifZvRP": {"description": "XjiYCPM52HK8ASyz", "localExt": {"e4T9TmQupOzuaRV8": {}, "Vw1OuyVC7JcK5Udh": {}, "euW7HOMooXzmW321": {}}, "longDescription": "H7CGe7BlGbNTtvAE", "title": "sQs0WkD6Y555p9oq"}}, "name": "b5MeMGL8kITGmF08"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'CreateView' test.out

#- 282 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    '7BWKC6wzHgwFqS6c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'GetView' test.out

#- 283 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    '2YCA1r312BKDvA3Y' \
    'yGsBgTJCc6734Mnr' \
    --body '{"displayOrder": 3, "localizations": {"tOlKvnpfkWv9kQ9F": {"description": "RDgAEVfEZshgoviR", "localExt": {"WdaswUzfV36Hwf7g": {}, "G4iNZfEJ6PGvsYDn": {}, "aTT5U0e2LY7yB5Ei": {}}, "longDescription": "qQhvZmCSswSPGcfa", "title": "sR2Nrrm0JBGkT1hN"}, "jHr2icYZYjakKtgP": {"description": "fJHbuwF3aZQrVPWy", "localExt": {"ZpnVjbpotD8HTOOd": {}, "vA4UhdTY2DNsFuGc": {}, "D5vraJ3WftgZ43r4": {}}, "longDescription": "ZLb7i2SZkIaANvZ0", "title": "I2EGVDWs67zwXLLD"}, "tNRfmo1w8aAcuRQz": {"description": "dYhuES7BncXfilyR", "localExt": {"fU4YHfMpHxEcJG7c": {}, "76AToup2zhRng3Ki": {}, "bPdtHZPKb8CPLdIk": {}}, "longDescription": "4I9TU6FvvEdqHzED", "title": "tl5oR9m1dm3fGK1w"}}, "name": "INqvFrAsrmYYu40w"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'UpdateView' test.out

#- 284 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    '6szojkvjtacFSVTv' \
    'gh23BGEa5ftmSBKQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'DeleteView' test.out

#- 285 QueryWallets
eval_tap 0 285 'QueryWallets # SKIP deprecated' test.out

#- 286 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 11, "expireAt": "1983-09-29T00:00:00Z", "origin": "Steam", "reason": "XQQVmxHmCVmuzoO2", "source": "OTHER"}, "currencyCode": "HKWspPtJlLDOjXTW", "userIds": ["GIrWq2VvH0roA20S", "fzrc9YYsgvVLN3us", "fhiyCf1FOddxtE52"]}, {"creditRequest": {"amount": 39, "expireAt": "1996-09-12T00:00:00Z", "origin": "Xbox", "reason": "OAzTmCVFEHDMT1eD", "source": "PURCHASE"}, "currencyCode": "bcvyxtTxuptcOYST", "userIds": ["xv9QtivQqeRyPorh", "f8BXosNylCwcf2iV", "j2AWA5f61ztkSpGm"]}, {"creditRequest": {"amount": 94, "expireAt": "1973-06-21T00:00:00Z", "origin": "GooglePlay", "reason": "Fn3W0qApZ98a9g9A", "source": "GIFT"}, "currencyCode": "qUk0t9aquw2B2UVI", "userIds": ["Y91SXBeHwrkPCaAy", "QMA6BOpxtYbmQwS5", "kNxCPLeKM4cQl8Dl"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'BulkCredit' test.out

#- 287 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "cmEvk3rVTLjZT9qa", "request": {"allowOverdraft": true, "amount": 80, "balanceOrigin": "Xbox", "reason": "ES0mVVI1FilcO4pa"}, "userIds": ["ulJHhAnY7QeDSRro", "jEhkRLMvZnYZKCk0", "zbREElwdZORocHSH"]}, {"currencyCode": "VkXb4xPPUmUifQvf", "request": {"allowOverdraft": false, "amount": 2, "balanceOrigin": "Nintendo", "reason": "YfuaQ7gPgiz2EBME"}, "userIds": ["YxtVcgA1q0sR85Dc", "zy0T6Q89155mM6Rs", "5ikH5iUT9GB4bGcY"]}, {"currencyCode": "nV5fUvb2OK8scK4M", "request": {"allowOverdraft": true, "amount": 45, "balanceOrigin": "Twitch", "reason": "s1H5juf5Cq950Xti"}, "userIds": ["2l1kZWnqjJaGGTFa", "MxQDIHnPin3vZc9b", "UYgwdNmcpdldDn2Y"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'BulkDebit' test.out

#- 288 GetWallet
eval_tap 0 288 'GetWallet # SKIP deprecated' test.out

#- 289 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'JHecFy9m5s6oIWMn' \
    'k88GXMrS82vN0N22' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'SyncOrders' test.out

#- 290 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["36tI7v0x9St2EFfU", "2FbyIXierPr2qLKB", "XRYt7v7Wfg2omS11"], "apiKey": "YyIWGPc92PcmK9zT", "authoriseAsCapture": false, "blockedPaymentMethods": ["HggA1D8DBtkE9JX7", "oDFoXpZ9sy7dEuiT", "7OrRdHjzNhfc3uok"], "clientKey": "glAmxb5eaYqdXkBq", "dropInSettings": "t2UfrBE1JhOOdYFV", "liveEndpointUrlPrefix": "xYR0XhaQ30cHb0re", "merchantAccount": "0TJwuS3NPZi6h1nN", "notificationHmacKey": "0txahdhp0tmV4jjI", "notificationPassword": "kC8lqpB9cbsDlreK", "notificationUsername": "fjfpUz3jtg1bKaDB", "returnUrl": "ROm6TJ2qMul8cl55", "settings": "U4RB2xVHiARcFLzO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'TestAdyenConfig' test.out

#- 291 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "W7Uz8Gz5TN3bJ6UV", "privateKey": "KAdNp2ReRw5WPjoh", "publicKey": "GmJKCjbEtFKLGvBQ", "returnUrl": "OS81LpIh5QqEOKQX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'TestAliPayConfig' test.out

#- 292 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "nUYMXvJJrO8K9yVa", "secretKey": "SV6MkQpPd0utGYDV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'TestCheckoutConfig' test.out

#- 293 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'DebugMatchedPaymentMerchantConfig' test.out

#- 294 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "GwpKCkOgcVrMw1DA", "clientSecret": "aC3oGYmbE9E87RTB", "returnUrl": "vlu7lo1foXU28IE7", "webHookId": "EVvQkoqOZIFeJQSr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'TestPayPalConfig' test.out

#- 295 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["nPscIMJRStF3LRa7", "q49EdmhBpI13Mh9t", "HYQilnHrNI7XsRCD"], "publishableKey": "3YOzMK1ZWOxnVMpy", "secretKey": "EziAPi9dBg5J0me0", "webhookSecret": "BhvZVrOsZSqQjmdJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'TestStripeConfig' test.out

#- 296 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "Ga6AahLvhIfKDFku", "key": "ldV3vhNCAUQUVGJT", "mchid": "sED5tFgDMluY685d", "returnUrl": "rsUwaWMLdLGDjtir"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'TestWxPayConfig' test.out

#- 297 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "dqDck0QFovelKxdF", "flowCompletionUrl": "e87vTbT1ykevWiIo", "merchantId": 42, "projectId": 94, "projectSecretKey": "bexJQ22uV5cRj529"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'TestXsollaConfig' test.out

#- 298 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'cEGlYlBTFD4MBzAg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'GetPaymentMerchantConfig' test.out

#- 299 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'dtJfaktaCbkIORjb' \
    --body '{"allowedPaymentMethods": ["uZi76GDzksM1Iq82", "IG598WdAhvjsHqU3", "mTbQzxkHXSiDFpwg"], "apiKey": "jtHkQyb5yoi3fhBK", "authoriseAsCapture": true, "blockedPaymentMethods": ["gXlDCLFwNGzR7zvW", "33BLQ5NyteBZg7IM", "93LGdMKko1WdXcuq"], "clientKey": "jnyBh936FR7fT7f0", "dropInSettings": "0EZw65iq4fnnFA4i", "liveEndpointUrlPrefix": "eAeG0JcWHLxYckKH", "merchantAccount": "0j3mmJ2Y5FsP84rg", "notificationHmacKey": "l0AQlBikeTeA9eq8", "notificationPassword": "hIKrzAUsKqpjQGHI", "notificationUsername": "3Wkg4HIrEmqfnhjj", "returnUrl": "tIQ7ipAfw6xTfJiE", "settings": "wGhGbMCnu8NHDPiO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'UpdateAdyenConfig' test.out

#- 300 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'QzKhR4x3pYj5be9x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'TestAdyenConfigById' test.out

#- 301 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '03hTzeUaFK6P6yxO' \
    --body '{"appId": "lFhdtyrLQHkz1Es8", "privateKey": "nQbk4SztMOdFHQXj", "publicKey": "AZrDNCoJ22RroweT", "returnUrl": "9Xanvbg8nAmHsrmz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'UpdateAliPayConfig' test.out

#- 302 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'oPN3GJz77wPralgk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'TestAliPayConfigById' test.out

#- 303 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'stRsUi0oaze9bInj' \
    --body '{"publicKey": "dq27RgguQ45JSoDg", "secretKey": "fLayvPNWmvzOaDto"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'UpdateCheckoutConfig' test.out

#- 304 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'pfGPnF4i8PP7jdmy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'TestCheckoutConfigById' test.out

#- 305 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '3KsRDI0m4nKNGlXp' \
    --body '{"clientID": "2jJfLGd0zQqYmGkk", "clientSecret": "8Pcq83l2hWOuqsil", "returnUrl": "AWXNFfxIWM9jL08j", "webHookId": "tCIr8STWuiyz2eOg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'UpdatePayPalConfig' test.out

#- 306 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'ny7d8WVlcOTKoZim' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'TestPayPalConfigById' test.out

#- 307 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'YNHB2ph25oEsCRrl' \
    --body '{"allowedPaymentMethodTypes": ["Y6AX1ksmS6Cm75yF", "ZVt1HZPcFbl4XrKU", "phPevxFz1b7Q3NwV"], "publishableKey": "n8PU8JfFPiZpcqq8", "secretKey": "qH8MR9K5kA67H3XO", "webhookSecret": "JlQfOCN2keFNIQus"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'UpdateStripeConfig' test.out

#- 308 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'mcAYWBLZg00dmqgW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'TestStripeConfigById' test.out

#- 309 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'RmPnXpH8xifqavEf' \
    --body '{"appId": "KK0Dei3ChLwkIGKt", "key": "gDjDah0UewhSyu7J", "mchid": "MOvmbqHpLDqY64bs", "returnUrl": "fWMA6zIWiASrarIi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'UpdateWxPayConfig' test.out

#- 310 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'ILeXO18VYOBdYdQr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'UpdateWxPayConfigCert' test.out

#- 311 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'aUweJSX5gGRLc0R4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'TestWxPayConfigById' test.out

#- 312 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'vMMPlJqY7ujDDLuo' \
    --body '{"apiKey": "QJspLLZbnusI9Nty", "flowCompletionUrl": "8KpP0RHI8icuY92i", "merchantId": 79, "projectId": 22, "projectSecretKey": "DnEXVzzBDNoUXOIk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'UpdateXsollaConfig' test.out

#- 313 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'GhmAMgJu6c1uzCA6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'TestXsollaConfigById' test.out

#- 314 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '57ulArgYuyjFEveR' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'UpdateXsollaUIConfig' test.out

#- 315 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'QueryPaymentProviderConfig' test.out

#- 316 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "ADYEN", "namespace": "tNrVbjnyYERw24T1", "region": "DBdzzVbhZKnh9FfH", "sandboxTaxJarApiToken": "suwhOtgOWtZuhAp0", "specials": ["WXPAY", "STRIPE", "WXPAY"], "taxJarApiToken": "aq6FR89FVcE5vUWR", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'CreatePaymentProviderConfig' test.out

#- 317 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'GetAggregatePaymentProviders' test.out

#- 318 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'DebugMatchedPaymentProviderConfig' test.out

#- 319 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'GetSpecialPaymentProviders' test.out

#- 320 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'OGzgjnghEeYuTA3f' \
    --body '{"aggregate": "XSOLLA", "namespace": "9naIn2EhpBnamOqQ", "region": "fF1i9lDi17TuzOCk", "sandboxTaxJarApiToken": "freVXF3F57a8i8FB", "specials": ["STRIPE", "XSOLLA", "WALLET"], "taxJarApiToken": "8UHFjnV4a8qkT208", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'UpdatePaymentProviderConfig' test.out

#- 321 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'EqnaczanLg5zKTta' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'DeletePaymentProviderConfig' test.out

#- 322 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'GetPaymentTaxConfig' test.out

#- 323 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "PmN6tWQqV1V78ZIj", "taxJarApiToken": "g1EtBZbAWeHGdU9m", "taxJarEnabled": false, "taxJarProductCodesMapping": {"s0rjVHzs9C25B5DY": "IkGcoYjLN4VPTXzk", "nDz9YRB0KErE7XXT": "kVsvdGlmWWA02nKw", "O7XUNrraxsHn4uKh": "XVFTTx0TcboB98Gf"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'UpdatePaymentTaxConfig' test.out

#- 324 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    '5PcmWICZpV13Vxw1' \
    'InWyY5J5tCY01Fkb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'SyncPaymentOrders' test.out

#- 325 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicGetRootCategories' test.out

#- 326 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'DownloadCategories' test.out

#- 327 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'WfSwD66Xg5Qbc0Ej' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicGetCategory' test.out

#- 328 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'xxzLQLRh64Y1jopY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicGetChildCategories' test.out

#- 329 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'iTRZEzq26aXSjyAQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicGetDescendantCategories' test.out

#- 330 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicListCurrencies' test.out

#- 331 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'GetIAPItemMapping' test.out

#- 332 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    '2QsMJlAxZUci2CC1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicGetItemByAppId' test.out

#- 333 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicQueryItems' test.out

#- 334 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'SEp55TimgFFENNE1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicGetItemBySku' test.out

#- 335 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    '5OyfCm3JLSdyxEkU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicBulkGetItems' test.out

#- 336 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["rupaAg8X3qrN4NJQ", "HucDPcorTkEhvJJB", "HTf7gHQdNqoM8JpO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicValidateItemPurchaseCondition' test.out

#- 337 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'KNAU33hDeba57ZY9' \
    'YNNrTcdcnzDvUHgR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicSearchItems' test.out

#- 338 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    '2bX5lx9AjwbpWgnI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicGetApp' test.out

#- 339 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'zWRtzH2wWVwIlnX0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicGetItemDynamicData' test.out

#- 340 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'PYoF43qdlpBadznE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicGetItem' test.out

#- 341 GetPaymentCustomization
eval_tap 0 341 'GetPaymentCustomization # SKIP deprecated' test.out

#- 342 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "opQjdlmCKky8f25O", "paymentProvider": "XSOLLA", "returnUrl": "Dazz0zG1FmCCywXf", "ui": "Hj329WcNk8k8qK4g", "zipCode": "Jrux6tlQDfleFLBK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicGetPaymentUrl' test.out

#- 343 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'j8h7ZrO4pTU7jATb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicGetPaymentMethods' test.out

#- 344 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'VBcDGudQQm98BKOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUnpaidPaymentOrder' test.out

#- 345 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'soaTqFhdLfBWZeRF' \
    --body '{"token": "QvrB1lsWaPGfJVUl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'Pay' test.out

#- 346 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'a8UlMM4Cc3k5J2qb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicCheckPaymentOrderPaidStatus' test.out

#- 347 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'WALLET' \
    'YNekyXLtDH1ypF3h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'GetPaymentPublicConfig' test.out

#- 348 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'IsdFXbbaFfchju2k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicGetQRCode' test.out

#- 349 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'AuottOSwo884abND' \
    'jMPiZHxhFeo51XVD' \
    'ADYEN' \
    '8f5EWndhcek3atmh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicNormalizePaymentReturnUrl' test.out

#- 350 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'Tw5TDjWYgm2yGvhR' \
    'WALLET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'GetPaymentTaxValue' test.out

#- 351 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'HS643vgPdN21mWwt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'GetRewardByCode' test.out

#- 352 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'QueryRewards1' test.out

#- 353 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'uqNbtaAfDzs5MyxW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'GetReward1' test.out

#- 354 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicListStores' test.out

#- 355 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicExistsAnyMyActiveEntitlement' test.out

#- 356 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    '90cMZ9NeyZ5n02q1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 357 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'qbbj3sLmfYzDVAVh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 358 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'Xts4CdsniSJKrJ4B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 359 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicGetEntitlementOwnershipToken' test.out

#- 360 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "rdfV658ZBVGgxlpG", "language": "HSe_yvVJ-PF", "region": "fqj84XXtngQG9E03"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'SyncTwitchDropsEntitlement' test.out

#- 361 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'eUwSRO9eoka5Ufs9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicGetMyWallet' test.out

#- 362 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'UTtAImWjuqib3nbP' \
    --body '{"epicGamesJwtToken": "kju9PQ5pN0XXmk4o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'SyncEpicGameDLC' test.out

#- 363 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'wknspUKyKWqOaF8E' \
    --body '{"serviceLabel": 28}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicSyncPsnDlcInventory' test.out

#- 364 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    '0ICxp4M7Opf9oRlv' \
    --body '{"serviceLabels": [57, 11, 38]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 365 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'Yj4IcbdUz2cBWKIU' \
    --body '{"appId": "uPLfvTFl9DbHQLYW", "steamId": "CwsAVcQ0VGEUxlcN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'SyncSteamDLC' test.out

#- 366 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'QWOpRLETWMAv0uJ3' \
    --body '{"xstsToken": "0L51TxrdknW52x2o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'SyncXboxDLC' test.out

#- 367 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    '1yDO6bwcKYeFoxUW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicQueryUserEntitlements' test.out

#- 368 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'dvEBTwUyzq5bzdNE' \
    'Hv6GmaokUOIadEDA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicGetUserAppEntitlementByAppId' test.out

#- 369 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'mp524IRplmKcwvGg' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicQueryUserEntitlementsByAppType' test.out

#- 370 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'qmnMdDOYMCkcE680' \
    'jXshhArmrrsTXqjh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicGetUserEntitlementByItemId' test.out

#- 371 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'ryZuWF0aXyAfnT9K' \
    'MwZkUmivHbmYwS4M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicGetUserEntitlementBySku' test.out

#- 372 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'pDJ1DYOnlVrhflY3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicExistsAnyUserActiveEntitlement' test.out

#- 373 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'MzIef9mtXHbh3agt' \
    '9HQKHNhlzYRtA24g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 374 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'Rvv870jG3e6kpEZm' \
    'trpzaLfufFoH0vIA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 375 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'AZ3D07rENh4LQyLj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 376 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    '7QmX1ijJDLqjyW5n' \
    'Spi08dnnmoWGbDOW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 377 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'BzflDPp8sE7bcL6x' \
    'y49IPWxqs6jAQJWL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserEntitlement' test.out

#- 378 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '8Yc3AKtQffBJPNo4' \
    'VIzCxIBQt7BEsLhZ' \
    --body '{"options": ["nLrMlvvXDmz8vDIk", "HRMj2pIYdQhOINS6", "31eYxKFwpR5ukyHm"], "requestId": "VB2oTqRWbK0ubDt0", "useCount": 64}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicConsumeUserEntitlement' test.out

#- 379 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    'Q29c3FLGnsacdakV' \
    'uBk3eUIeGfzqhOBh' \
    --body '{"requestId": "MJ8BCR0Pr4lUceWJ", "useCount": 17}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicSellUserEntitlement' test.out

#- 380 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '8F5UT7Jy1J0W4Bcr' \
    --body '{"code": "VEEfr25k1H2s4V2K", "language": "rmUM_iT", "region": "o3XR1GqcOtFZDsjH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicRedeemCode' test.out

#- 381 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'NjL304sV2h9pg3yv' \
    --body '{"excludeOldTransactions": false, "language": "nXtQ", "productId": "seNuEx7YDEkdFOw3", "receiptData": "4ZkvghT5B0olJY1q", "region": "ewjIDEZedb90DCSo", "transactionId": "LAgeUljuQXNi35z7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicFulfillAppleIAPItem' test.out

#- 382 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    '5tQmcrR08dqYhgjN' \
    --body '{"epicGamesJwtToken": "EKxgigqjIaaftddf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'SyncEpicGamesInventory' test.out

#- 383 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'k3N3FUGt7hRJWz66' \
    --body '{"autoAck": true, "language": "Qp-IQSA_FQ", "orderId": "RRK7pehYZgLjFarF", "packageName": "9k0U2fuxYpTLF2CA", "productId": "qFwYdrzmGzkvzgJn", "purchaseTime": 31, "purchaseToken": "gH8U04S5FCpmYeCJ", "region": "wMPHx5qbq2es6TWD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicFulfillGoogleIAPItem' test.out

#- 384 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'Rr2bTPUxXfvsOwNG' \
    --body '{"currencyCode": "BX5w0CKM4KgSaTFk", "price": 0.8193435735777974, "productId": "qyDBVeKhVWlgMI2a", "serviceLabel": 91}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicReconcilePlayStationStore' test.out

#- 385 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'HuuQiMf3ZtSRaKTv' \
    --body '{"currencyCode": "nYQcQK3OLU5xNeaL", "price": 0.14765795297646667, "productId": "RoNMmfyuSugV63aI", "serviceLabels": [65, 41, 82]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 386 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'DFEcKEQaxvtIGC9x' \
    --body '{"appId": "YvHbX0ptwZqHLOEq", "currencyCode": "FcFlBmznrLziwCnn", "language": "FB_OuEV", "price": 0.38336334618686974, "productId": "oSkuKry9iZZvtrey", "region": "TjGpaUSGjv2AbKgI", "steamId": "oGvyLZGyV2nNIKGy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'SyncSteamInventory' test.out

#- 387 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'Vatdlj1BAkRkfD5Q' \
    --body '{"gameId": "I95OctLxGf6SilVA", "language": "vz-NrUq_560", "region": "CsDe0la83cvnj5Ut"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'SyncTwitchDropsEntitlement1' test.out

#- 388 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    '4YTxIBMay1sHQoxl' \
    --body '{"currencyCode": "bhfnh1larFYcM0Oo", "price": 0.5098072639728025, "productId": "V93hG5GVHrcfGpWA", "xstsToken": "uflVB1opvSUYD0K7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'SyncXboxInventory' test.out

#- 389 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'Y5bCch6ur33FthZ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicQueryUserOrders' test.out

#- 390 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'FOWCXy70cM2iJtgp' \
    --body '{"currencyCode": "MAKpwx7WN70b3lBn", "discountedPrice": 55, "ext": {"61oiTLHdBClY8kIt": {}, "120hKXcluepkD2cj": {}, "AyU8thUL0rK6YlDg": {}}, "itemId": "S7DF6WHO4xKI3DzX", "language": "hQ-vdfw-vN", "price": 0, "quantity": 76, "region": "Cgl5zfvvm60VIJWt", "returnUrl": "ArjNf9ClzJiLrK8i", "sectionId": "wSKwTNINv7MbR3h7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicCreateUserOrder' test.out

#- 391 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'N9mLvImrGFR73LVK' \
    'd3lHIIZTnztswBHI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserOrder' test.out

#- 392 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'OUcpBs05S6VCRgcp' \
    'qzF0Wdx4tTiOqvd6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicCancelUserOrder' test.out

#- 393 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'is3iMkUYXGJ52Lhr' \
    'cYmNqU8FNr2Sf2vn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicGetUserOrderHistories' test.out

#- 394 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'HOZhdmTd8ENVRZH8' \
    'lmeTjzHxgwKaMjUp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicDownloadUserOrderReceipt' test.out

#- 395 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'tGDH129SPAGK8Qxs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicGetPaymentAccounts' test.out

#- 396 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'XGgAK3QR9g0C7nE1' \
    'paypal' \
    'jcDQ7S4nZymFu9HD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicDeletePaymentAccount' test.out

#- 397 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'ayb3pUN53xwUDjiB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicListActiveSections' test.out

#- 398 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'HCt3VKh9NaXK6yIn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserSubscriptions' test.out

#- 399 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'DEdr3JfyFO9PUA61' \
    --body '{"currencyCode": "ceL94UMGbnwR8NQy", "itemId": "5mWp1i7XAgvpl6VM", "language": "gG-gZQv_673", "region": "ACdn9QBrEBZ0FGcS", "returnUrl": "F09VMOBfFhgytL5j", "source": "v2cyVSXxh4A5aA1b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicSubscribeSubscription' test.out

#- 400 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'EwNCWytxJKphKxkJ' \
    '5Y2qNwo7fOIEm4CC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 401 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'HTjiJTcJCNU9Jxdo' \
    'zQjrd9h3KvseGTWQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicGetUserSubscription' test.out

#- 402 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'wYHbgonXMWBgwAHB' \
    'LENBGh8mzbI7UUQo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicChangeSubscriptionBillingAccount' test.out

#- 403 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'j40AF05z6BC0fH4B' \
    'lyXE2K4uNJRgQ3CC' \
    --body '{"immediate": false, "reason": "bELZwjEmKgZXlgbV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicCancelSubscription' test.out

#- 404 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    '3dBwrK8hpKlmw63c' \
    'o2erbchkQ7n0C9lJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserSubscriptionBillingHistories' test.out

#- 405 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'b5WlmAWYUtevQ8Xs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicListViews' test.out

#- 406 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'aIOTUAVhHL0RrUev' \
    '0iu9PIqi1GB1ZASg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicGetWallet' test.out

#- 407 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'NbyIgL74DNNIekar' \
    '0ZUahrGZV8WpFG2g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicListUserWalletTransactions' test.out

#- 408 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'QueryItems1' test.out

#- 409 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'ImportStore1' test.out

#- 410 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'RMkdKgCuxFa4ix8v' \
    --body '{"itemIds": ["dZvwAMOmTtBEJjCy", "ABy7DKD883wae7z4", "E6bRC4ufnScsyhWe"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
