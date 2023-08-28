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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "EAxcVpFrttufHIRd", "appType": "SOFTWARE", "baseAppId": "9UzVRiXbqlAw7r6W", "boothName": "2ktQG0h5JAav5kRa", "boundItemIds": ["62WopBJHPtcDs8bB", "Q1g7qbPngUNB1vRo", "ZLCXLx8bbgorQeFb"], "categoryPath": "dwpzS6DaDpv8N7ZQ", "clazz": "VqGj6oDLjWjkY1aX", "createdAt": "1977-05-08T00:00:00Z", "description": "FcDtgOjchIua5tWE", "displayOrder": 71, "entitlementType": "DURABLE", "ext": {"JSDgY1TXp38zsCTC": {}, "rbCbPOyNQkT7NvyE": {}, "3cwyALczNIicXm7a": {}}, "features": ["T5FvdiRilZ7oFgx4", "gSrjJW2OQNOs1PXh", "c8OumKtPDKJDXn7Z"], "fresh": false, "images": [{"as": "68su8XfqlqNiTvB6", "caption": "SdAdIhUDrwoZ5Mec", "height": 7, "imageUrl": "pc1C8XfwHuKeb9l3", "smallImageUrl": "rGN9A3sNm84hddSp", "width": 69}, {"as": "cBdW19m4eu6d5tA5", "caption": "jUmiTqpyhPFdxLzF", "height": 87, "imageUrl": "d8lDR6qVNPRZYdFL", "smallImageUrl": "IAjGGJddVCvu9vx5", "width": 76}, {"as": "vkLGMS0lyuI9a2I9", "caption": "u6Vpbsx5w8hqUI06", "height": 96, "imageUrl": "SuB0y5WUlrMdI4sN", "smallImageUrl": "veabntBSxTeIv53H", "width": 66}], "itemId": "YupD391C2qtPYoka", "itemIds": ["hFjkQsfCaTmt1d67", "FXGk2s9Q0mPVo3tw", "u0MesTCf9x4rt69l"], "itemQty": {"na7qxNeIxPz6MbwL": 67, "IY69z1UaLqYSYWyt": 77, "XQ0yYoNRKd3IL5TA": 87}, "itemType": "CODE", "language": "6iiPlSC2uE4o5Vwd", "listable": false, "localExt": {"m3MqHcUmLZZbSqb8": {}, "RwNmn9HrNQy4uZAA": {}, "iE0mit9RGCCHYzUO": {}}, "longDescription": "cEdscKHPEqgA8yu7", "lootBoxConfig": {"rewardCount": 98, "rewards": [{"lootBoxItems": [{"count": 94, "duration": 22, "endDate": "1994-05-19T00:00:00Z", "itemId": "Jt4Ymos9Jcdos4fY", "itemSku": "cTVU6RBt0zYoMcHy", "itemType": "CUEXlAvxJMdalwSy"}, {"count": 23, "duration": 85, "endDate": "1975-11-14T00:00:00Z", "itemId": "bOItRMvqtlB2jJCS", "itemSku": "QT279ZZPYGu0rdlg", "itemType": "dWyOtXi3choQrpOs"}, {"count": 61, "duration": 25, "endDate": "1985-08-26T00:00:00Z", "itemId": "U5SepjChB3V0v52D", "itemSku": "lym6puQ23xoJ8aeC", "itemType": "naLpUKp44YUDjasW"}], "name": "IPUvmEejtGeoyIPa", "odds": 0.9714507862859705, "type": "REWARD", "weight": 90}, {"lootBoxItems": [{"count": 7, "duration": 37, "endDate": "1977-06-26T00:00:00Z", "itemId": "ykmoPYgc2L4jk4Lo", "itemSku": "0LSP0pf4IxjUkl53", "itemType": "5X3ateEKDpADz1x3"}, {"count": 32, "duration": 30, "endDate": "1985-08-29T00:00:00Z", "itemId": "9xv32e8c5csSovoq", "itemSku": "sZNBdte9NDUPVJf6", "itemType": "c2Z0QZxfgPubTDIH"}, {"count": 36, "duration": 83, "endDate": "1982-11-17T00:00:00Z", "itemId": "qAThuwjRHpKKTlmV", "itemSku": "r9XuoJbRFQSKVPHb", "itemType": "n4Xxtu7LQRENjEEz"}], "name": "tx1WsYSiZqan0nSB", "odds": 0.5728983498865392, "type": "REWARD", "weight": 30}, {"lootBoxItems": [{"count": 0, "duration": 57, "endDate": "1981-10-04T00:00:00Z", "itemId": "91GXlvPG6bFYReVH", "itemSku": "QipcCx9Zw5D2L7vI", "itemType": "YhGGSyEW4ZJJ42d3"}, {"count": 85, "duration": 25, "endDate": "1985-03-04T00:00:00Z", "itemId": "ddN8S48l9lyNApfl", "itemSku": "xqMrj3oZk03QXcKM", "itemType": "DYDDxHSZjtqXyJ58"}, {"count": 10, "duration": 36, "endDate": "1977-09-29T00:00:00Z", "itemId": "jX9fDmIbeZxzfTcy", "itemSku": "iuATus9hsfpFDcSD", "itemType": "G8aMVGLiBNrDjqox"}], "name": "cwgGLXpUL4pp2ncY", "odds": 0.422365902819149, "type": "REWARD_GROUP", "weight": 21}], "rollFunction": "CUSTOM"}, "maxCount": 39, "maxCountPerUser": 82, "name": "fIovmv9gsR5cJcHm", "namespace": "3SZLxoRDFuuuySj2", "optionBoxConfig": {"boxItems": [{"count": 56, "duration": 1, "endDate": "1975-06-17T00:00:00Z", "itemId": "LJE8HoRS1X2PFAAM", "itemSku": "wzHPxB1UskYs4Yw2", "itemType": "0DOqOBSC2DKHRuPM"}, {"count": 80, "duration": 22, "endDate": "1995-02-07T00:00:00Z", "itemId": "H8Yb33T5UBJCjfcn", "itemSku": "LRfxeCSz9WEi8Kll", "itemType": "oeH0JT1yduat2vQR"}, {"count": 3, "duration": 66, "endDate": "1975-02-16T00:00:00Z", "itemId": "Bfsu4jmsRE2w1yEk", "itemSku": "Lgh3tIYt4SqYUTLD", "itemType": "x9gIiDandpGT2t24"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 83, "comparison": "isLessThan", "name": "Mh5eC3IHeHSKLCa3", "predicateType": "SeasonPassPredicate", "value": "AE7WIsfmx40NLRc6", "values": ["nduEEQlULdJz4mnR", "oKFeIaFQCYoDPICp", "m8heKnWhzfe2Nube"]}, {"anyOf": 56, "comparison": "is", "name": "CAcf80zfFyabWAgI", "predicateType": "SeasonTierPredicate", "value": "hRkloqxM3gpwxcfM", "values": ["zJEN2VHzih3bit0V", "Wn3CO39PXDNxtXge", "y9XzjjI5YbsKoADk"]}, {"anyOf": 83, "comparison": "isLessThanOrEqual", "name": "3FgkXhjDzaQY3snn", "predicateType": "EntitlementPredicate", "value": "ZkP7cFdP43e5dC9X", "values": ["IBudfZgrbHDIDm4h", "MzF4TxodenSrUTvf", "qU0bfoMm5cTtFWbo"]}]}, {"operator": "or", "predicates": [{"anyOf": 4, "comparison": "isLessThanOrEqual", "name": "6IjGa23YvYmmDg7V", "predicateType": "SeasonPassPredicate", "value": "PXIuvUYTZBRujIUE", "values": ["1Tq5jyAZvkRCMNFI", "urjh2imdb4rbkXj0", "ZwsVC0gL97ZVJSPq"]}, {"anyOf": 74, "comparison": "isNot", "name": "iwv1qlYB1RSKs6gQ", "predicateType": "SeasonPassPredicate", "value": "ZGF7uYnGzpipNDig", "values": ["D9eOziYRFOn0jJLH", "NJma1MbqqZtfNWql", "4nmwAft4gqkNNlWk"]}, {"anyOf": 58, "comparison": "isNot", "name": "LxhvNXTwGBCtohLt", "predicateType": "EntitlementPredicate", "value": "7MUBG7qtPu64yAtU", "values": ["RKLRkb738HGS6rDg", "MdIIlhS1fSiM9331", "m7Ta1PsKc50Kv6ec"]}]}, {"operator": "and", "predicates": [{"anyOf": 30, "comparison": "isNot", "name": "mQoIXimBJehyxlNs", "predicateType": "EntitlementPredicate", "value": "nGBt4P7WnbdSJtjX", "values": ["dpCROYqUiGKXVFCm", "UTrDzZSKscfOcYu3", "7ZshZyZl5x4bRXBH"]}, {"anyOf": 31, "comparison": "isGreaterThan", "name": "ogaKt2ujQSa3Zdb6", "predicateType": "SeasonTierPredicate", "value": "UXmy0Zp6iIaTIKUk", "values": ["zwLR2AK6eXUGPJsw", "mkk9QM0NBMA9ORxp", "1fiP80G9Pclxcft2"]}, {"anyOf": 42, "comparison": "is", "name": "DpZxkrQDXuNFviMa", "predicateType": "SeasonPassPredicate", "value": "uGKHhMRWLVd3DlhL", "values": ["uIpomM8sm1MiaI1m", "X2tJoARtdbBe7uds", "Mrok0WvGYYnx4V70"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 49, "fixedTrialCycles": 9, "graceDays": 2}, "region": "ue9nzJ6fH24T805t", "regionData": [{"currencyCode": "Vg8JqU0jZpjvsugA", "currencyNamespace": "OS7u8RiWyerCSa8S", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1997-06-30T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1980-01-29T00:00:00Z", "discountedPrice": 55, "expireAt": "1979-03-16T00:00:00Z", "price": 36, "purchaseAt": "1998-10-10T00:00:00Z", "trialPrice": 16}, {"currencyCode": "xsB0NRsB1fPqqRRu", "currencyNamespace": "lpqpymDkQhtrHWwR", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1977-07-07T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1995-08-07T00:00:00Z", "discountedPrice": 56, "expireAt": "1991-10-31T00:00:00Z", "price": 33, "purchaseAt": "1983-12-03T00:00:00Z", "trialPrice": 68}, {"currencyCode": "wbhMssAHjapIkY9R", "currencyNamespace": "f4wP57dBZNR88YbC", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1977-01-29T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1992-07-15T00:00:00Z", "discountedPrice": 82, "expireAt": "1977-11-12T00:00:00Z", "price": 10, "purchaseAt": "1984-07-26T00:00:00Z", "trialPrice": 4}], "saleConfig": {"currencyCode": "VrjfGXZnqAQUoY1G", "price": 20}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "Zp50CnPb71ORYcmQ", "stackable": false, "status": "INACTIVE", "tags": ["U5JX8ccLjMXJRk0e", "g4iY9u02aCNYIWek", "aKQDOJvrTefglSs6"], "targetCurrencyCode": "p18lOC3mNqF7Bl0L", "targetItemId": "cghVHfPEspxwhRON", "targetNamespace": "0bc1eMbEIjowLqc3", "thumbnailUrl": "ecjXJbZDKKoxLE1Y", "title": "3Dymtj3giPg4x4yi", "updatedAt": "1992-03-11T00:00:00Z", "useCount": 1}, "namespace": "6ues1Hhhkg1yLVbL", "order": {"currency": {"currencyCode": "FzHEP8cM4NTwr0KH", "currencySymbol": "aAsmTej52WKi6tAr", "currencyType": "VIRTUAL", "decimals": 46, "namespace": "URt9plCSVq8PdH6h"}, "ext": {"JPUAc0RVwXgAgntL": {}, "MCuaXBWQi6BqPg4x": {}, "r0lCancUZGCHsZYo": {}}, "free": false}, "source": "EXPIRATION"}, "script": "R1KtOv7Zy0b65uvu", "type": "grantDays"}' --login_with_auth "Bearer foo"
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
platform-update-platform-dlc-config --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"4AbGptKaWNvPbpg7": "yrRvXfZ6rvgvEY3H", "ht1SwqTsKKKo37NH": "DOQe91Ps3ztUIV0d", "S6hIH9c4Vfkyrwpu": "XxbaERbfgPmi0eHk"}}, {"platform": "PSN", "platformDlcIdMap": {"TPOlhTtSiZNCxuog": "FteTHJe4BhSSQkQD", "6WmOt6D7ufFVTOhv": "QpfbBke8aEdd36xj", "6wySoltDxsbzxrla": "KEfkoYjY2o6ouRW9"}}, {"platform": "OCULUS", "platformDlcIdMap": {"tNquwC3WgumrIz4N": "hGztZpr4U4fwQIiL", "XgmRasvjO4lj8m3X": "EwP2b4gd3xOeii8J", "nmssep2xD2NY0kAB": "eGs9yxahld1pO0Gy"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-query-entitlements-1 --login_with_auth "Bearer foo"
platform-grant-entitlements --body '{"entitlementGrantList": [{"endDate": "1973-02-13T00:00:00Z", "grantedCode": "PO3COyMvczgEpzZ3", "itemId": "FbtxfhcRC7IVYa6i", "itemNamespace": "Z5uFRYNn3SHiWxF0", "language": "yV-590", "quantity": 99, "region": "MQ9Rrbk6C2cVWf6t", "source": "PURCHASE", "startDate": "1982-01-10T00:00:00Z", "storeId": "1e94mQjVOOBnIWhu"}, {"endDate": "1978-07-02T00:00:00Z", "grantedCode": "ElqZUodp3IhtCSHy", "itemId": "1ei1fIrPvfHnRN06", "itemNamespace": "EjRwEQlNapJRfk4f", "language": "TCXW-AiXb", "quantity": 50, "region": "P6Jbct8puMybYGxD", "source": "IAP", "startDate": "1989-12-03T00:00:00Z", "storeId": "OozGoDtsUuYo5p8E"}, {"endDate": "1986-12-12T00:00:00Z", "grantedCode": "b7cUNGPTBxiFFCrn", "itemId": "7djjs69FTFVGUVhv", "itemNamespace": "KhJCmeisql14mUHV", "language": "ln_sMoB", "quantity": 0, "region": "cZsU3VAdMDcb4qlk", "source": "IAP", "startDate": "1995-09-14T00:00:00Z", "storeId": "7syGlElXdEAOrVSn"}], "userIds": ["p4cfs2E41cK8QTwi", "nDBLJoJHbiQ5duE5", "LocLVVYamQc4wcG5"]}' --login_with_auth "Bearer foo"
platform-revoke-entitlements --body '["IAvxSvNDlmM5nQFM", "Gzs7fzjgyc44mEh9", "tRk8knYSV30lnroQ"]' --login_with_auth "Bearer foo"
platform-get-entitlement 'ehMDli6t9unQLYXx' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-query-iap-clawback-history --login_with_auth "Bearer foo"
platform-mock-play-station-stream-event --body '{"body": {"account": "m09wpGAbpEmDY9vL", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 15, "clientTransactionId": "EY8rG0q0Q2Qd2JzR"}, {"amountConsumed": 2, "clientTransactionId": "tKwG3UC6XCnnZxF8"}, {"amountConsumed": 59, "clientTransactionId": "bYaJCJjfk2TUvn95"}], "entitlementId": "FhO7VW3mbDVMDu87", "usageCount": 40}, {"clientTransaction": [{"amountConsumed": 8, "clientTransactionId": "ldWf7iSGIiKFtWtn"}, {"amountConsumed": 83, "clientTransactionId": "Yr2svKM6pqLGZ0TB"}, {"amountConsumed": 41, "clientTransactionId": "uxBJEECQE1li3Bg7"}], "entitlementId": "Jxc9pUnZmvhidwCk", "usageCount": 30}, {"clientTransaction": [{"amountConsumed": 46, "clientTransactionId": "vXO6aj4hCmTC34jx"}, {"amountConsumed": 99, "clientTransactionId": "RPnAz4VzW0CpoBCb"}, {"amountConsumed": 51, "clientTransactionId": "9XyWI8bp8fQxRuX9"}], "entitlementId": "1uYmtrHJbEGTUj7Y", "usageCount": 18}], "purpose": "hziXV8HwSmvcvcDK"}, "originalTitleName": "F19yVRafCjOuSYht", "paymentProductSKU": "83AdvBaagTiRJ8da", "purchaseDate": "GTVX3Bb7jlz5IfHg", "sourceOrderItemId": "KjI9mwJSrN8jkIyk", "titleName": "R2zbaI6PD7fEscSh"}, "eventDomain": "nGUGUtV9GJ279GDb", "eventSource": "LNwjm3FK0nnX2poM", "eventType": "fZ1hDHtbh4HtMlFg", "eventVersion": 44, "id": "vNAp4jinFpnQ5xF9", "timestamp": "wwbvMZyeDeRnVfPU"}' --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "a6xVVBcq3wZpFIYe", "password": "Ag79HcLJXJ7mpVI6"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "eTYAjdPlCiQQC35c"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "j4KyOVgvnWbfRJts", "serviceAccountId": "B7cUQZ2QUAxJrINP"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "XppPNO3AfmXcgwC3", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"6tvKgLB9QmJIOq9d": "P5szG71utjsQ4CrR", "b9gUCeVz7fWbZIdh": "evfZvyV7AcodcZwK", "jYDdmJOlzwm9Su4F": "nS98QqftSjq7sn8y"}}, {"itemIdentity": "reciPLfkVyyJsbGp", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"JgehDJxEN7JlZc8L": "Mq1o2jZWu4yA3r0u", "4q1bTHXIjfJKyFlM": "0u1uuoVdn9yVoSlK", "NchPHNL4X3LLaGPG": "dqLE8SohhhuiTnJa"}}, {"itemIdentity": "rYYkHBDdSzBXdxap", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"mv34h6T7EsufmfxK": "YB4LM6H6QXmpZ9X3", "fUSR1l9xLPBsmAUr": "D9L1IiD6MlcEPhMD", "FzjHZ3sIhzOx2CXK": "lvIomU3pIxM9n8D2"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-oculus-iap-config --login_with_auth "Bearer foo"
platform-update-oculus-iap-config --body '{"appId": "eLMe3lt9qfx2UDcg", "appSecret": "VE7L9FK6e0MrPc4v"}' --login_with_auth "Bearer foo"
platform-delete-oculus-iap-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"backOfficeServerClientId": "txk9hVKlG56HlzGr", "backOfficeServerClientSecret": "7XjdyRJunZPkp6cc", "enableStreamJob": true, "environment": "Kaol01DK97D2xnik", "streamName": "42miteR5eQAe1rzm", "streamPartnerName": "mgqBPRmd6mO4oI8K"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-existed-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-playstation-iap-config --body '{"backOfficeServerClientId": "Dqebm83raNBJ5y7a", "backOfficeServerClientSecret": "xEkvI4oxZEDxGiBn", "enableStreamJob": false, "environment": "bn0zaf7CaOSlHXrU", "streamName": "SA6sMJzA5mtqISQ8", "streamPartnerName": "3TTbtefXWznDe4LQ"}' --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "dXfFBii2RAMEX5RM", "publisherAuthenticationKey": "jBFVZGYzQqV8d9mD"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "dUIoiIJFNxuNOmUS", "clientSecret": "Ww18T1IxVWCxdvPL", "organizationId": "9e4P01vxP8xj1LyE"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "irURERnEMzpImW6s"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'jAHyCK5tNanGBrkz' 'Uvck3xTtmOFMebS4' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'AdlNzwog2IhErkNh' 'NcECWwchW6zL9Skb' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'LlrNXnGanMazb8jv' --body '{"categoryPath": "RWenURH48aJuALEc", "targetItemId": "SqcE15u6D31DjOsr", "targetNamespace": "s3CUYATdqnQGbqiq"}' --login_with_auth "Bearer foo"
platform-create-item 'OkNeATj7eGjodd7C' --body '{"appId": "cJUrI6MAugK5kypN", "appType": "GAME", "baseAppId": "PsMFxKybPkbuS6x9", "boothName": "cLJ1APnNlsa2bRBr", "categoryPath": "27fVMWuAfDqLMR91", "clazz": "9IZPKOKiAVQXXOmq", "displayOrder": 65, "entitlementType": "DURABLE", "ext": {"byXmgCNiXH8uenbC": {}, "5CphgMweexsIAP5v": {}, "HLjBJ9iqMcBL4Bzh": {}}, "features": ["8bXGFmPAnOkDiJq4", "DUjhKPwbwcvQU5kG", "xQye7HqnVK3YVeOW"], "images": [{"as": "s9mfVQh3jLBtn9px", "caption": "pE7BYtzB0B4CxyQr", "height": 96, "imageUrl": "6IKWVZ77KeRWdECa", "smallImageUrl": "FGzfZ2hxcJ2Fnemn", "width": 70}, {"as": "M23SzUo4hNBDh9ZF", "caption": "P1OW0nXOErQPS4Vs", "height": 90, "imageUrl": "Mj7mulP4tQ6R1OqK", "smallImageUrl": "VOTniBgLsNhdgQ0J", "width": 100}, {"as": "RHCmhNHSXuqIHsxv", "caption": "aUoXDmwWsukxncuD", "height": 67, "imageUrl": "QxCXMd00YBWCaVVm", "smallImageUrl": "M45mfIZsWhkS476d", "width": 67}], "itemIds": ["h4IjDq9aT3qZyI0r", "YsWucAkXsVJbXi7e", "RZa7WwIc895ImqK6"], "itemQty": {"tVsaUq3stUh5J5Z9": 67, "21NVIs7NRen2Y3Ns": 88, "CugmfOL0QQpxsuD8": 85}, "itemType": "MEDIA", "listable": false, "localizations": {"qku59eFJrOXyDYz9": {"description": "vMUOPG0iHDT8QbF7", "localExt": {"gHPTPQbvLt2NRqJG": {}, "IKzLyH1y72L13Orn": {}, "yx34luLdvtsTKXMj": {}}, "longDescription": "iw6gYPvfn2Qt9iyq", "title": "3Nyk8ncu2Z3eDHH9"}, "WaVO4iKhDcJ7TCcN": {"description": "IsQ3PuppUxDSK8aO", "localExt": {"TGMudcxlCV4cNbJG": {}, "Q57lPdinpjS2DRfG": {}, "t9GlyZVQ4X67tPZS": {}}, "longDescription": "TpPq3xjrElvvDgw0", "title": "ag7kSWE0Hiqm5IuL"}, "ryiEXqvUWDjU1G0E": {"description": "VjVZw1ToLuPakQN1", "localExt": {"MpOs1RVFrcg2CXxe": {}, "px78fvsyhE2BKtyT": {}, "DSIM7mkmvZ7Cmsh4": {}}, "longDescription": "US8o4jfMANPpmZDd", "title": "MiCxmuCCVuFjS1GC"}}, "lootBoxConfig": {"rewardCount": 6, "rewards": [{"lootBoxItems": [{"count": 44, "duration": 2, "endDate": "1981-04-13T00:00:00Z", "itemId": "2B4vEgj3HOmhcWm4", "itemSku": "28XejRF94NIY9nMr", "itemType": "BZo0lNUBDShHD32v"}, {"count": 43, "duration": 16, "endDate": "1990-03-16T00:00:00Z", "itemId": "28FPwTiXfLcxDC9Y", "itemSku": "nd02mECIQhfIhHtA", "itemType": "DUQ9zimQTQT95pFJ"}, {"count": 96, "duration": 16, "endDate": "1984-06-16T00:00:00Z", "itemId": "JsyAfeKOufV4f15N", "itemSku": "ohXu6opxQGRt6Pql", "itemType": "kL0diRhLC10ih2EQ"}], "name": "fY3XCv4hdOa6FdZh", "odds": 0.6303473875998946, "type": "REWARD_GROUP", "weight": 2}, {"lootBoxItems": [{"count": 6, "duration": 1, "endDate": "1978-04-17T00:00:00Z", "itemId": "gMz0F2UBRmMhAbUW", "itemSku": "mFhdYLWzMuv3zkUY", "itemType": "0n0BAZkwbYkBLyO6"}, {"count": 55, "duration": 93, "endDate": "1998-07-25T00:00:00Z", "itemId": "FqfhnaB3YxKNdOTa", "itemSku": "cCcJfIfXshuLUk5W", "itemType": "dpxjZx5noXPhPUTK"}, {"count": 3, "duration": 20, "endDate": "1978-07-17T00:00:00Z", "itemId": "noucNmzwOZOK56sD", "itemSku": "kci5rZ8iMlOuksQJ", "itemType": "CiRFiZWwJ7NrTb1X"}], "name": "TB9YQzUJ9XlYJ8Bz", "odds": 0.6731257723186048, "type": "REWARD", "weight": 62}, {"lootBoxItems": [{"count": 92, "duration": 95, "endDate": "1977-07-31T00:00:00Z", "itemId": "UXGM5anIloyj9lhb", "itemSku": "vuQdW2jwKUckc794", "itemType": "ryY91lX8DD4MYXlr"}, {"count": 73, "duration": 58, "endDate": "1978-02-08T00:00:00Z", "itemId": "lHvv9rqvEoM8YmVj", "itemSku": "AkO3HKsEp6KlqwW4", "itemType": "djrexcbHdEtoQvpV"}, {"count": 91, "duration": 98, "endDate": "1999-05-01T00:00:00Z", "itemId": "RctmTozCi8HeV6jb", "itemSku": "alHmqBBfi7sSF5Bo", "itemType": "GiTCVsXsygWbjE2o"}], "name": "pXtdsJQeJ1too0qv", "odds": 0.37473877261913735, "type": "PROBABILITY_GROUP", "weight": 77}], "rollFunction": "CUSTOM"}, "maxCount": 1, "maxCountPerUser": 93, "name": "ZaMphKCqTq3EVheJ", "optionBoxConfig": {"boxItems": [{"count": 18, "duration": 30, "endDate": "1971-09-10T00:00:00Z", "itemId": "zujsmSmylT1YtxIq", "itemSku": "73aMb48jISd97KOR", "itemType": "RhxSWLWLNfHRD3V1"}, {"count": 43, "duration": 88, "endDate": "1971-01-24T00:00:00Z", "itemId": "GGL46LuxJF3sbeqW", "itemSku": "BdQuWfgBAKx27MSB", "itemType": "qabUXOGkkoMUZn1Y"}, {"count": 19, "duration": 19, "endDate": "1998-07-23T00:00:00Z", "itemId": "a6K1XRVfriSpPFnZ", "itemSku": "BJZkDnEiyfa2Lrnp", "itemType": "ZxNnLRH36bqS2oFY"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 84, "fixedTrialCycles": 54, "graceDays": 20}, "regionData": {"ziBOHEAj1cT3u6Zc": [{"currencyCode": "2FbrTFznTgDIwZIR", "currencyNamespace": "Wf6T3by2kYSCdnFK", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1998-12-14T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1971-01-18T00:00:00Z", "expireAt": "1994-01-10T00:00:00Z", "price": 20, "purchaseAt": "1976-05-17T00:00:00Z", "trialPrice": 20}, {"currencyCode": "jdcEfU61OJYMnW49", "currencyNamespace": "rWynp1ck1vT90C6o", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1993-10-04T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1981-11-03T00:00:00Z", "expireAt": "1981-04-20T00:00:00Z", "price": 6, "purchaseAt": "1993-02-22T00:00:00Z", "trialPrice": 58}, {"currencyCode": "bUmulhe98oaFKlQi", "currencyNamespace": "cdrxVhrtwSd9QWVM", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1973-05-04T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1993-07-09T00:00:00Z", "expireAt": "1993-05-28T00:00:00Z", "price": 79, "purchaseAt": "1985-12-06T00:00:00Z", "trialPrice": 14}], "i57HyKKz5nyI6ulK": [{"currencyCode": "NKoXa0dgx1JgjC56", "currencyNamespace": "pda3YhtQxpCYME6x", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1986-01-27T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1999-01-13T00:00:00Z", "expireAt": "1992-05-19T00:00:00Z", "price": 91, "purchaseAt": "1979-12-04T00:00:00Z", "trialPrice": 75}, {"currencyCode": "Ad9sxoLnWGP1PafI", "currencyNamespace": "jLX8ce0KbNN7Ycl2", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1977-08-20T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1998-04-30T00:00:00Z", "expireAt": "1977-04-01T00:00:00Z", "price": 89, "purchaseAt": "1982-06-28T00:00:00Z", "trialPrice": 66}, {"currencyCode": "SoaGk4ktF5wnJDg9", "currencyNamespace": "Q3WXiydCOInVolsr", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1995-09-28T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1975-03-20T00:00:00Z", "expireAt": "1971-10-01T00:00:00Z", "price": 10, "purchaseAt": "1999-05-26T00:00:00Z", "trialPrice": 43}], "D1cfswmeFpvtDtet": [{"currencyCode": "oQVFL8LNW11vtpaT", "currencyNamespace": "xi7k489jRCn48bvk", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1992-02-11T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1989-04-27T00:00:00Z", "expireAt": "1999-02-10T00:00:00Z", "price": 47, "purchaseAt": "1995-03-12T00:00:00Z", "trialPrice": 82}, {"currencyCode": "1WfzIvc3VlSXrA3X", "currencyNamespace": "UGud4tVjmxEf4XvV", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1988-10-14T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1994-08-28T00:00:00Z", "expireAt": "1983-05-21T00:00:00Z", "price": 64, "purchaseAt": "1985-10-05T00:00:00Z", "trialPrice": 97}, {"currencyCode": "ITBg9x4unq3eOMHI", "currencyNamespace": "KeTyBG5dCUoExnKf", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1986-04-01T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1976-11-23T00:00:00Z", "expireAt": "1975-11-04T00:00:00Z", "price": 97, "purchaseAt": "1982-11-25T00:00:00Z", "trialPrice": 6}]}, "saleConfig": {"currencyCode": "MGBA6JXDpA1tIC45", "price": 58}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "aGouFu4hXONgUwJn", "stackable": true, "status": "ACTIVE", "tags": ["ryDeRcpUvlrw2MwC", "1uuokpaIjL0Vxe5n", "9Lx3QcFo9gxOgvDc"], "targetCurrencyCode": "7xMrRKvw8ISP2WKm", "targetNamespace": "CRRXBxlalCHtWlKx", "thumbnailUrl": "LpS8fLWoQ5nuJhat", "useCount": 88}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id '2EyIknfLDpgHnMOn' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku '8nc3gUZ8ZFyyEr0K' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'BXuJBqK4QtEydPWL' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'PBYiR3UbJc1ZYapx' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items '7C477etqgfOJDUT0' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'uKAPrARya2IMlNiX' --body '{"itemIds": ["pF4qvsUUpHqi33Tc", "BGkc0HjUcnkpU9oV", "zl2kBuLFXIeCEKZU"]}' --login_with_auth "Bearer foo"
platform-bulk-update-region-data 'Tz3GvCAZ5j24acYH' --body '{"changes": [{"itemIdentities": ["brryHB6GO9zP3Fae", "pA3b3YJ9nJM6vtT2", "7xv85K5MU2qmbeqa"], "itemIdentityType": "ITEM_SKU", "regionData": {"emINdClpF7OvlBIE": [{"currencyCode": "gjse5kd6GEDo08yq", "currencyNamespace": "5E5HleLoog4me2NB", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1989-06-03T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1987-04-05T00:00:00Z", "discountedPrice": 20, "expireAt": "1982-11-03T00:00:00Z", "price": 4, "purchaseAt": "1997-10-16T00:00:00Z", "trialPrice": 6}, {"currencyCode": "erTPW02PWsHiKYAr", "currencyNamespace": "AxnKBfBfDlrQQuAc", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1977-03-20T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1976-07-31T00:00:00Z", "discountedPrice": 45, "expireAt": "1999-11-05T00:00:00Z", "price": 50, "purchaseAt": "1981-05-30T00:00:00Z", "trialPrice": 43}, {"currencyCode": "j6lxuU3u2HEG0qfK", "currencyNamespace": "egvFTD1sPykS8YLm", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1981-03-02T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1974-11-08T00:00:00Z", "discountedPrice": 99, "expireAt": "1977-09-24T00:00:00Z", "price": 73, "purchaseAt": "1972-08-01T00:00:00Z", "trialPrice": 54}], "JMSnJIIgsAVmaGYx": [{"currencyCode": "UX1B9oVuzG2CnYX2", "currencyNamespace": "YBF2g7TVtzYEHUod", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1999-04-18T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1977-02-13T00:00:00Z", "discountedPrice": 12, "expireAt": "1985-07-11T00:00:00Z", "price": 40, "purchaseAt": "1992-02-23T00:00:00Z", "trialPrice": 45}, {"currencyCode": "bepUCTWiZ1uqh7GA", "currencyNamespace": "i4FEIu44u83ZLRxY", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1996-02-19T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1976-03-31T00:00:00Z", "discountedPrice": 32, "expireAt": "1979-10-31T00:00:00Z", "price": 34, "purchaseAt": "1998-06-15T00:00:00Z", "trialPrice": 57}, {"currencyCode": "JmUL0uzElixc023d", "currencyNamespace": "IvDiA0tQWlHwBcTt", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1981-01-05T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1984-06-17T00:00:00Z", "discountedPrice": 97, "expireAt": "1984-04-04T00:00:00Z", "price": 75, "purchaseAt": "1981-08-31T00:00:00Z", "trialPrice": 64}], "YAWWcbcbGWmKgE8C": [{"currencyCode": "Z4AELr5lraa5v5P5", "currencyNamespace": "Cj8hgFsqHC9h5JPi", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1980-06-11T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1974-12-09T00:00:00Z", "discountedPrice": 74, "expireAt": "1980-06-17T00:00:00Z", "price": 1, "purchaseAt": "1975-09-28T00:00:00Z", "trialPrice": 93}, {"currencyCode": "D92CX0rITajpwHIT", "currencyNamespace": "GeHTnqRbzBB9ZFgJ", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1999-04-06T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1989-03-19T00:00:00Z", "discountedPrice": 54, "expireAt": "1998-06-09T00:00:00Z", "price": 97, "purchaseAt": "1977-07-14T00:00:00Z", "trialPrice": 61}, {"currencyCode": "4ItzkMJ7cudf4r91", "currencyNamespace": "6GPrhn2etVIQvRkQ", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1980-09-01T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1994-10-01T00:00:00Z", "discountedPrice": 29, "expireAt": "1981-04-27T00:00:00Z", "price": 49, "purchaseAt": "1992-07-29T00:00:00Z", "trialPrice": 10}]}}, {"itemIdentities": ["ywmg1pWpWit1QC7F", "Ke0fnHUlmU1unGKM", "0tgfeWy47bbwMI4g"], "itemIdentityType": "ITEM_SKU", "regionData": {"mvK9gW596FwBNrFX": [{"currencyCode": "t3TAuKBwBcD12ae6", "currencyNamespace": "r3hHwya4NpdOzg3h", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1981-03-27T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1971-10-09T00:00:00Z", "discountedPrice": 91, "expireAt": "1973-11-27T00:00:00Z", "price": 99, "purchaseAt": "1972-02-22T00:00:00Z", "trialPrice": 3}, {"currencyCode": "tg8yw8lHEbVDwBAq", "currencyNamespace": "anOlscRIWw82k5K5", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1990-03-27T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1972-06-15T00:00:00Z", "discountedPrice": 77, "expireAt": "1971-11-13T00:00:00Z", "price": 20, "purchaseAt": "1995-11-30T00:00:00Z", "trialPrice": 1}, {"currencyCode": "FldMCQ98JH4n0Jtg", "currencyNamespace": "qzZv5kVu4S95mj8Y", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1976-02-07T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1999-07-11T00:00:00Z", "discountedPrice": 11, "expireAt": "1999-11-15T00:00:00Z", "price": 24, "purchaseAt": "1975-08-13T00:00:00Z", "trialPrice": 81}], "PbarbWEm8bVtZcfV": [{"currencyCode": "CPdQhim9QKUAFTVY", "currencyNamespace": "elIlGJg9wdc8bihh", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1973-10-11T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1979-05-23T00:00:00Z", "discountedPrice": 11, "expireAt": "1992-01-14T00:00:00Z", "price": 44, "purchaseAt": "1987-08-10T00:00:00Z", "trialPrice": 57}, {"currencyCode": "UsnnDJlmD1iEokbU", "currencyNamespace": "iYzCQh2iNTwtnohd", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1991-06-19T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1997-11-07T00:00:00Z", "discountedPrice": 29, "expireAt": "1994-08-10T00:00:00Z", "price": 88, "purchaseAt": "1987-12-14T00:00:00Z", "trialPrice": 86}, {"currencyCode": "bO4S3rURGWUzPAE6", "currencyNamespace": "SdV4D5jftRl9rZmt", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1993-06-26T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1979-01-23T00:00:00Z", "discountedPrice": 29, "expireAt": "1998-11-28T00:00:00Z", "price": 99, "purchaseAt": "1982-09-15T00:00:00Z", "trialPrice": 7}], "Wsz9TVmdMKEohKzu": [{"currencyCode": "MYDUTLBeCidXjuGg", "currencyNamespace": "x8ncXejmeZtzT0qj", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1972-06-12T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1977-05-19T00:00:00Z", "discountedPrice": 8, "expireAt": "1973-03-11T00:00:00Z", "price": 36, "purchaseAt": "1997-05-18T00:00:00Z", "trialPrice": 40}, {"currencyCode": "cF9oVCh89wNOkKYs", "currencyNamespace": "sVejcL3kR3hCGNga", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1981-08-02T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1990-10-02T00:00:00Z", "discountedPrice": 23, "expireAt": "1993-11-11T00:00:00Z", "price": 86, "purchaseAt": "1985-04-01T00:00:00Z", "trialPrice": 100}, {"currencyCode": "9RLrthbfp0VgweLl", "currencyNamespace": "T2sY3SsTnDQY7kKU", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1993-02-28T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1992-11-19T00:00:00Z", "discountedPrice": 43, "expireAt": "1982-02-03T00:00:00Z", "price": 98, "purchaseAt": "1981-03-21T00:00:00Z", "trialPrice": 53}]}}, {"itemIdentities": ["xtyQENvJrBCqeg67", "d4RWOqO4U0bitNQL", "zwRoWnR0AbkCPY70"], "itemIdentityType": "ITEM_ID", "regionData": {"qerobWMZGVL5KLTx": [{"currencyCode": "ahWlS6XdBaKSLCgO", "currencyNamespace": "OPXM6XTUh2dJ90yq", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1991-01-03T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1972-04-27T00:00:00Z", "discountedPrice": 23, "expireAt": "1983-09-14T00:00:00Z", "price": 23, "purchaseAt": "1987-01-12T00:00:00Z", "trialPrice": 87}, {"currencyCode": "Dl5TFwBY6HKXAblk", "currencyNamespace": "T8VGgSH8MGZGwiVj", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1993-11-01T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1971-04-01T00:00:00Z", "discountedPrice": 54, "expireAt": "1971-08-06T00:00:00Z", "price": 57, "purchaseAt": "1978-02-14T00:00:00Z", "trialPrice": 94}, {"currencyCode": "X1IByPEOuPhGspRi", "currencyNamespace": "3bhPQvBBJI5Jxytp", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1981-10-05T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1983-11-20T00:00:00Z", "discountedPrice": 77, "expireAt": "1977-08-09T00:00:00Z", "price": 4, "purchaseAt": "1995-06-23T00:00:00Z", "trialPrice": 95}], "rZZOdwe1x8RjU6Bi": [{"currencyCode": "8JXE52sUBBq2SimQ", "currencyNamespace": "QoLbe5YOJvxGRxUz", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1986-06-28T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1971-08-18T00:00:00Z", "discountedPrice": 13, "expireAt": "1986-10-05T00:00:00Z", "price": 34, "purchaseAt": "1991-08-11T00:00:00Z", "trialPrice": 51}, {"currencyCode": "MT1IZKTdNFVBQ1cr", "currencyNamespace": "BXAupATO8uXsqVpd", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1995-05-09T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1979-06-01T00:00:00Z", "discountedPrice": 92, "expireAt": "1985-03-18T00:00:00Z", "price": 97, "purchaseAt": "1985-07-15T00:00:00Z", "trialPrice": 54}, {"currencyCode": "ONV0JRtozI0jpliC", "currencyNamespace": "FQ6WgJpGPigdc5Vy", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1984-05-11T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1981-11-23T00:00:00Z", "discountedPrice": 99, "expireAt": "1993-03-14T00:00:00Z", "price": 97, "purchaseAt": "1995-01-02T00:00:00Z", "trialPrice": 62}], "c1cQvSxgTNIUzxDg": [{"currencyCode": "BlIbuzm7DzJ20NFR", "currencyNamespace": "JIhFXR2dYprPmbpu", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1981-01-22T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1978-08-21T00:00:00Z", "discountedPrice": 66, "expireAt": "1976-01-30T00:00:00Z", "price": 48, "purchaseAt": "1972-01-27T00:00:00Z", "trialPrice": 31}, {"currencyCode": "XC2Sesc6y68whNBY", "currencyNamespace": "l9iCqfW6rqGOQny4", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1991-01-28T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1986-06-01T00:00:00Z", "discountedPrice": 86, "expireAt": "1996-02-28T00:00:00Z", "price": 85, "purchaseAt": "1991-04-28T00:00:00Z", "trialPrice": 68}, {"currencyCode": "nb59gQffkNOmubxE", "currencyNamespace": "Jr2qEAuJbpZSrcbc", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1982-10-25T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1971-11-01T00:00:00Z", "discountedPrice": 89, "expireAt": "1982-01-18T00:00:00Z", "price": 14, "purchaseAt": "1998-03-21T00:00:00Z", "trialPrice": 40}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'Le5zohg9s9utRQt2' '8b6o3K0COF74tz6a' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'eXZOYwbwjMNdxKWl' --login_with_auth "Bearer foo"
platform-update-item 'BfnRyFS0Ed7gTM5A' 'VrtBQiDTcNnZa6Zu' --body '{"appId": "xk6u6HXXdiC9ZDj4", "appType": "SOFTWARE", "baseAppId": "55g8LSTs7Nf95lGl", "boothName": "Prf6obIdnI6Ag7eU", "categoryPath": "YcYJ4QzXCmqr6gmP", "clazz": "GaHP5SVPvRLiDi0m", "displayOrder": 81, "entitlementType": "DURABLE", "ext": {"Hb6Lx8eq8SGNwEQO": {}, "8dYXvBSYvJBwb6Cj": {}, "ZUMRf2VJetWsokvx": {}}, "features": ["3BHuTEczr9KjQ3tt", "z8MTBt1xk9IyssSA", "8nP5PQjpzk2Tb7iY"], "images": [{"as": "dmNZWosrsVBPZ64j", "caption": "0HUONscofwYLQcDv", "height": 21, "imageUrl": "aAVLDB4k3JwkdaxR", "smallImageUrl": "7GJpYmuYCPG181q9", "width": 67}, {"as": "RLkP5hc2Fh04JTsq", "caption": "DTynCewqJligLlRx", "height": 83, "imageUrl": "IUicYXXzxsBFrUs9", "smallImageUrl": "BYp6TgCejBd5o7iT", "width": 92}, {"as": "OutlYBbLhL8KXx25", "caption": "FZfQIodVBqQsBpCJ", "height": 57, "imageUrl": "fGvTGgfLKsg0b1Bq", "smallImageUrl": "78cE5O5pmPnbiPJ9", "width": 20}], "itemIds": ["nhR1Zrm3thUvV87y", "fkycLSVdleSaAyls", "mLYe2phYOgT5kDTy"], "itemQty": {"Pl3dKF7NXEjrJMki": 67, "jvc3P8Gwjg3IOH0S": 60, "VZ2DeoODXMzLSrzo": 18}, "itemType": "BUNDLE", "listable": true, "localizations": {"zgsJwex7wq8ZPlXN": {"description": "aUNgdY2vfJuje5cP", "localExt": {"nmGjTvYa5Pqx1K7q": {}, "cAoijBPAp6EPb988": {}, "NzxrDKVpULjjiw3N": {}}, "longDescription": "eVG4DJi9DaMrc0WF", "title": "gKjE945x2CPVYYG9"}, "WvoGmAmvaVV5Yfxn": {"description": "UNcwjr7gSGhnfuF4", "localExt": {"WZiQVICVpWd3UM08": {}, "gMXhdf3juXW4JprI": {}, "b3CJCAtvSG8Cfa9d": {}}, "longDescription": "zOJDGCTHIOFjeXbs", "title": "SgR43kIDzxBwqRJT"}, "zrHNZWUsq5lQo2jy": {"description": "29EJigqYhyVhURx1", "localExt": {"yPeczRpdk0HATGyl": {}, "x2JG2KNGfhzfCTxx": {}, "rsRRLee3TcJ7DQIi": {}}, "longDescription": "45aCDHN9mVug2zkV", "title": "f6KgpKOcn3tMD9UT"}}, "lootBoxConfig": {"rewardCount": 48, "rewards": [{"lootBoxItems": [{"count": 43, "duration": 2, "endDate": "1971-12-01T00:00:00Z", "itemId": "gSlpGgVTF6VeDAPO", "itemSku": "GBwweyFfXEOEAEtb", "itemType": "ag82KgBgyCd5vjkf"}, {"count": 52, "duration": 75, "endDate": "1999-02-02T00:00:00Z", "itemId": "uvg8f2cIoByk9fxt", "itemSku": "vsgeAxo57nKAbZps", "itemType": "bJ4Iu5KJ0ynxGBla"}, {"count": 5, "duration": 61, "endDate": "1985-01-30T00:00:00Z", "itemId": "pKKdzxoufCNlFoOc", "itemSku": "WQQy4bjmQeEweoBH", "itemType": "TdwAk7ZQnbqY1cQw"}], "name": "VEtAr5kKKAo9MM2C", "odds": 0.2709614456339625, "type": "PROBABILITY_GROUP", "weight": 11}, {"lootBoxItems": [{"count": 40, "duration": 58, "endDate": "1976-05-30T00:00:00Z", "itemId": "i9kIpqgrzpUkNOBW", "itemSku": "ydXV0Fi02aFr8CDa", "itemType": "pjwNOl4k8rVNrm8d"}, {"count": 35, "duration": 37, "endDate": "1982-10-23T00:00:00Z", "itemId": "8QD2JOe2Ntz7EFvo", "itemSku": "wPgIGuetxFMqXCQM", "itemType": "AqQ2ZRGzNtrThFa9"}, {"count": 16, "duration": 96, "endDate": "1975-07-15T00:00:00Z", "itemId": "mosluiHZJ7O8sAQ3", "itemSku": "2wj9uaDzsr9xYiWR", "itemType": "uuzQJiLc1eI9w3JE"}], "name": "hxPGbEk7s7gw07Fl", "odds": 0.2267505614604397, "type": "REWARD", "weight": 32}, {"lootBoxItems": [{"count": 27, "duration": 72, "endDate": "1985-01-26T00:00:00Z", "itemId": "3vJKBC7SwgoViPeI", "itemSku": "B4Ehy0Y5aSJVDgin", "itemType": "xAM77eY9C14FbfiI"}, {"count": 81, "duration": 9, "endDate": "1992-10-04T00:00:00Z", "itemId": "vl1kCY5bEokxXxkW", "itemSku": "Zbjf7GZxaossQmjo", "itemType": "69wohJFyTNk5FGUP"}, {"count": 15, "duration": 90, "endDate": "1991-11-05T00:00:00Z", "itemId": "IAjmsonjj0ZR50BQ", "itemSku": "1U6aFD3O2kXQSc58", "itemType": "zgZVl4gIF7v3qbZu"}], "name": "9M3OxqVAT4H1lRZ9", "odds": 0.8275025435532184, "type": "REWARD_GROUP", "weight": 72}], "rollFunction": "CUSTOM"}, "maxCount": 57, "maxCountPerUser": 45, "name": "rHRzEOtIxzPqb6n7", "optionBoxConfig": {"boxItems": [{"count": 25, "duration": 26, "endDate": "1992-10-12T00:00:00Z", "itemId": "jiaDH86d9rsKgzCs", "itemSku": "MulpB8HZUtVVaJCi", "itemType": "LgKOwrSfWhT5B4We"}, {"count": 8, "duration": 49, "endDate": "1978-12-24T00:00:00Z", "itemId": "pzwSluBtRFPKThyG", "itemSku": "nbjmPDKFS6u9FHuv", "itemType": "1M3qfch4SqIV6LQP"}, {"count": 68, "duration": 51, "endDate": "1977-08-16T00:00:00Z", "itemId": "aeYl4csFq65cU66y", "itemSku": "Jaj4ovoKWE4EW0sw", "itemType": "8v5peiuxoBJATauy"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 83, "fixedTrialCycles": 58, "graceDays": 20}, "regionData": {"VMiyEvMf9yilUEuj": [{"currencyCode": "k6oqYo1HQYTFzwdO", "currencyNamespace": "MdupwD4O3uNbcIDc", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1972-06-26T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1997-01-22T00:00:00Z", "expireAt": "1971-12-16T00:00:00Z", "price": 84, "purchaseAt": "1990-07-20T00:00:00Z", "trialPrice": 38}, {"currencyCode": "T4hfwkuVykH4Rpfm", "currencyNamespace": "jIXFGZ5PKdbabJIk", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1973-06-10T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1978-12-09T00:00:00Z", "expireAt": "1998-01-31T00:00:00Z", "price": 22, "purchaseAt": "1974-04-15T00:00:00Z", "trialPrice": 81}, {"currencyCode": "8luh4dpPRMDbUXBW", "currencyNamespace": "TbpAogG2wlZkLhuU", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1995-10-11T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1996-11-15T00:00:00Z", "expireAt": "1971-03-15T00:00:00Z", "price": 20, "purchaseAt": "1992-09-09T00:00:00Z", "trialPrice": 9}], "I0GKwJ3vfXlsAMy2": [{"currencyCode": "Zp2UAGxHnmSxvkG9", "currencyNamespace": "UR5q9neoW6JBcGp9", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1999-12-21T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1973-01-03T00:00:00Z", "expireAt": "1972-12-23T00:00:00Z", "price": 19, "purchaseAt": "1974-09-18T00:00:00Z", "trialPrice": 32}, {"currencyCode": "7Ax6115Kg9U8vrQJ", "currencyNamespace": "XQxoIbVi2CLEk277", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1986-03-17T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1976-10-15T00:00:00Z", "expireAt": "1984-01-10T00:00:00Z", "price": 62, "purchaseAt": "1998-09-06T00:00:00Z", "trialPrice": 94}, {"currencyCode": "Q3koaAfZIim0sFPm", "currencyNamespace": "1YN27bojDVaZLpx4", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1978-09-25T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1976-11-18T00:00:00Z", "expireAt": "1991-05-03T00:00:00Z", "price": 76, "purchaseAt": "1997-05-15T00:00:00Z", "trialPrice": 78}], "KUMhJrASBh61hmWK": [{"currencyCode": "SSrF35anDGvur19V", "currencyNamespace": "18oIrUKXttgAI2Qd", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1973-04-10T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1978-12-11T00:00:00Z", "expireAt": "1986-06-15T00:00:00Z", "price": 13, "purchaseAt": "1996-01-25T00:00:00Z", "trialPrice": 2}, {"currencyCode": "8EMspOs8nkic9gj5", "currencyNamespace": "vyUMAAmIHYbsxG5N", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1991-01-12T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1993-07-15T00:00:00Z", "expireAt": "1971-07-04T00:00:00Z", "price": 76, "purchaseAt": "1991-12-28T00:00:00Z", "trialPrice": 30}, {"currencyCode": "21DiSFsm0XXQJWsz", "currencyNamespace": "vTQEuALzDNp1SZ58", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1986-04-03T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1977-10-12T00:00:00Z", "expireAt": "1982-05-16T00:00:00Z", "price": 53, "purchaseAt": "1987-12-22T00:00:00Z", "trialPrice": 26}]}, "saleConfig": {"currencyCode": "Hak1MXxj7Esrg790", "price": 85}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "zUtf3QaJPGrTNcXX", "stackable": false, "status": "ACTIVE", "tags": ["R6H7r1ta3m7jK5px", "e82pgFiAS6piIzmc", "goH89QNmI17UDb19"], "targetCurrencyCode": "8rKrKEPGSAcong6e", "targetNamespace": "NERUf8kjci1Ctccv", "thumbnailUrl": "9Gv4tOcbnuCqf0lm", "useCount": 22}' --login_with_auth "Bearer foo"
platform-delete-item 'WBkIzjoSV31tvmMB' --login_with_auth "Bearer foo"
platform-acquire-item '6jzrpRGESmooHiCV' --body '{"count": 20, "orderNo": "GUOnXpapXQGRakUb"}' --login_with_auth "Bearer foo"
platform-get-app 'cG7PcR4eiU3Idi55' --login_with_auth "Bearer foo"
platform-update-app 'jNrGNT2VHTKuIT5F' 'wwHj0Ur5F2PWGTTD' --body '{"carousel": [{"alt": "81xhNP4t6kYBUjyX", "previewUrl": "An3bWQF6QcAiJpXI", "thumbnailUrl": "rgroixptZhckUTGk", "type": "image", "url": "mNWVIJnhhwFDV1Vi", "videoSource": "vimeo"}, {"alt": "GcV8DY0XOkDstxZc", "previewUrl": "Y1HgAnZV4IOglVLq", "thumbnailUrl": "b9lGAJUg21Lt7Jwg", "type": "video", "url": "1LF7jdWlekFwO94V", "videoSource": "vimeo"}, {"alt": "tQs2FcEcvVAyId6C", "previewUrl": "p85HVDsZBQgOnXuX", "thumbnailUrl": "sGThYZrmm0wrFMnP", "type": "video", "url": "Z0GkwxUNYyNwGiKr", "videoSource": "generic"}], "developer": "ignE7KcMF7fuDbzR", "forumUrl": "RYMNXWUsp1tOibJY", "genres": ["Adventure", "Action", "Strategy"], "localizations": {"L9ie6vvMbiNURrlm": {"announcement": "88QlKyuoya4JgakZ", "slogan": "yUV7t73VnSFbuxd4"}, "KYZ0jk0UZdhtnKu9": {"announcement": "oTc8pVkiyGsj5JdX", "slogan": "zRxfNEjUMTs8WIOb"}, "JBTsvsw76uISRX0b": {"announcement": "KVoWtoUW1P7ocuBA", "slogan": "ldDSUS7Haa6unq1y"}}, "platformRequirements": {"QOSRvyiLBRVtIDi2": [{"additionals": "piIQFVmzMidw70KS", "directXVersion": "ahpYZdKZRyR9AX7J", "diskSpace": "jxvNZhM84DiZk6yS", "graphics": "rB9SVFctW7YS0OkL", "label": "78XeEAtALFI3v8yh", "osVersion": "a4pd5A7MYcpBD6lK", "processor": "Nb8RxvN2u5J7baOe", "ram": "LH19fqBwNbNe1ffY", "soundCard": "RtIvQaKyevWYtZjK"}, {"additionals": "6J29v8MpBSpo3AKR", "directXVersion": "mnJkzJHAckUyBksY", "diskSpace": "QfDm0RNFwiz70tRV", "graphics": "LMlHi8i9gOVqajUW", "label": "rgEsWDtaKzn8dZwn", "osVersion": "nGeZsZVgbPzPFbrO", "processor": "MZMgWkFN7Tpkx6Gc", "ram": "fyOg6ZUrrp9ubg9m", "soundCard": "ndW2JKmQafUs2bxY"}, {"additionals": "ztOEyVbKIf1ZbzgU", "directXVersion": "wd8DHoCQykmXHYmk", "diskSpace": "Rlg7gYs6unPYQ9jN", "graphics": "QN1di1ldhOh6Hvjn", "label": "YuV7NfC4A2ODiZhb", "osVersion": "fb8QqCyK1XH9D6vl", "processor": "5eFdFfgK46GjCWaP", "ram": "8huTmnq3FGQn3Ahu", "soundCard": "5wxq6oJq4mChmQHQ"}], "hO9IKBXDFQfXFD58": [{"additionals": "sG6uDhFYlrzJBYSe", "directXVersion": "MuJfQecutjS029Bi", "diskSpace": "JWOG1m7MKclr5igj", "graphics": "NTVItrH2X78hxJga", "label": "Vfw5Vnyq8OzTE89W", "osVersion": "DNoMcOmbfJrCJQIj", "processor": "1haAosKglqaCXE9y", "ram": "tpIO8btO3OwNEGSW", "soundCard": "5TaW4to7QCY2NGGv"}, {"additionals": "i9kg3rMIzNmhJTNQ", "directXVersion": "jKlwjfJ3TJ2xVpge", "diskSpace": "70WsLfgbZieRvJI5", "graphics": "sT9DH3DfLCv8q4Th", "label": "mq09bBgPAYxrBE9j", "osVersion": "lnTgtgW33wDwD9RK", "processor": "vQX4yFQFdrRoM6Fo", "ram": "qCYw7AlxO6qdFpc7", "soundCard": "1sSck3ggZWJlSlCQ"}, {"additionals": "MDji329PfVrvMEPt", "directXVersion": "psSNcpK1QkB2Sy8W", "diskSpace": "w79LVeVskqeUB7RS", "graphics": "ayqGFguhh3bvadRt", "label": "hdbVApebRA09rW8i", "osVersion": "8krFWJhe03coRFok", "processor": "5d3AyGrZO8GuoXNS", "ram": "oVEBG7VbBPUWipz9", "soundCard": "C05YabFX4FCK5ucT"}], "FsAFzaO3yJpA3KMx": [{"additionals": "BlrRytER1qdTelFA", "directXVersion": "adM9y66Drf4SSGGt", "diskSpace": "3MiBKohow3kKoaP1", "graphics": "K4CDuH1mMIfOCDyV", "label": "AHrHncR5dShqiBUI", "osVersion": "9esSsXegSEhrPpK2", "processor": "q8kxR4BuEksS2A9V", "ram": "OA8H9VeHv0L2Acm9", "soundCard": "60EYQEuGJVl8xs1W"}, {"additionals": "Id9WlalqshF9Rh2o", "directXVersion": "7GCQGPCxwEdkyuT3", "diskSpace": "MgzReRq0112ISArR", "graphics": "OIodcmM6v2AEozWW", "label": "aYvBLE46bpuJip8J", "osVersion": "yxJ39vrtuWWrqTZb", "processor": "SqBSKp8AmgwhYzk3", "ram": "3J34fiTxK63OHpnU", "soundCard": "CGBVfpctNFUsUQ6Z"}, {"additionals": "XQcb2o1J5euLAbBg", "directXVersion": "ejqc0apxqZ209ByS", "diskSpace": "n8aUaGlAyvIslt7N", "graphics": "1qcxKs4nlf1MfqUZ", "label": "XkjHvcUOTlxNf09p", "osVersion": "efgFIiJssShBKsQj", "processor": "XvfQgQDt6ce8NDME", "ram": "rA82FrR1GSogkewI", "soundCard": "zTOqKkcjRh3l2gAJ"}]}, "platforms": ["MacOS", "MacOS", "MacOS"], "players": ["Coop", "MMO", "Coop"], "primaryGenre": "Sports", "publisher": "J3gNLIlTk3Bpclrk", "releaseDate": "1974-04-29T00:00:00Z", "websiteUrl": "IRn0znIKzAEAHQpB"}' --login_with_auth "Bearer foo"
platform-disable-item 'OgHEP5l94s7CbIJ7' 'eHnVWOboMkyB7FTe' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'xsOZ0b2p3b63Krcw' --login_with_auth "Bearer foo"
platform-enable-item 'IcXMhGy83Xit6boO' 'LGCcg16DqwdQPQ9H' --login_with_auth "Bearer foo"
platform-feature-item 'kSSV8e1MgTTLS2Fg' 'arY903INGIyEfRBE' 'j7qms9AGQExPhgr9' --login_with_auth "Bearer foo"
platform-defeature-item 'gGfC0GjvpgJfuBs1' 'Vpqn47GVghTH2wTo' 'Onq9U5lyW89Xwt3w' --login_with_auth "Bearer foo"
platform-get-locale-item 'mRTrDCjhnKvsHezW' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'TqgYPixtHk6lWq6t' 'EeUmU96FLEak0mJq' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 89, "comparison": "isLessThanOrEqual", "name": "YldcTpdeCD9XPRi4", "predicateType": "EntitlementPredicate", "value": "6Z7rb21A2E9pX0BW", "values": ["MaTvQq2a9YdFNtRV", "CMqPsRk5htdM5T3f", "DSrSHrkoqv2mM6so"]}, {"anyOf": 91, "comparison": "excludes", "name": "0js0hG9xmSnzd7zg", "predicateType": "SeasonTierPredicate", "value": "Dx55JZ5z6gujpFzl", "values": ["PspQD9IRIpDDubnt", "PCFxfeoW2NdSWzOX", "jO1NQUqWHBW78XRE"]}, {"anyOf": 16, "comparison": "isNot", "name": "uzI7G9NCKKXu1bqI", "predicateType": "SeasonPassPredicate", "value": "M5PmXfKnQ7BYGjCU", "values": ["DMOrbmoRvWnfmGFy", "OfoNewWjwMWDKEt6", "0eUoOBd90h9EDqST"]}]}, {"operator": "and", "predicates": [{"anyOf": 16, "comparison": "isNot", "name": "bJ0fwTDaq6b5RpMw", "predicateType": "EntitlementPredicate", "value": "wMHMtJy1Oqn59tEG", "values": ["BNMF9CZvPxT5zbre", "m9NYeUT5P0nx8TqS", "ZdZ5C8mFI9TnvzEq"]}, {"anyOf": 80, "comparison": "includes", "name": "c9fBoU3RHNDFjLKF", "predicateType": "SeasonPassPredicate", "value": "5srPFxBgpFtDBmTL", "values": ["H9kP9U53z6joBAhA", "lJGI2YYb6ajBjgq6", "eY4PBNHKPx62tHxD"]}, {"anyOf": 2, "comparison": "isLessThan", "name": "6ZFy3uglSp2UxvF2", "predicateType": "SeasonPassPredicate", "value": "xeWXk80y9uxgVLGg", "values": ["EJsc7rZpxaPHc9r8", "DRdD2wwMXwKVXGPh", "K8aVSCN6oCETQ8gI"]}]}, {"operator": "and", "predicates": [{"anyOf": 81, "comparison": "includes", "name": "oFmkHJ6BPOKFLxIw", "predicateType": "SeasonTierPredicate", "value": "guCqlMHiQN3HWJw9", "values": ["EuTyM2qohglzO8AE", "zIWsiP2JQ24meDrw", "l6A9sh2x2ur2ccp7"]}, {"anyOf": 89, "comparison": "isNot", "name": "7OqPqIjS4i0N9ytb", "predicateType": "SeasonTierPredicate", "value": "c8pVZ8GlU8962e6g", "values": ["OAzXmyHEV4g9P6a2", "tn5pUARJM1T8QwMN", "80S5RNB5dVCsB7xL"]}, {"anyOf": 99, "comparison": "excludes", "name": "aMOH47CAT7cBP091", "predicateType": "SeasonTierPredicate", "value": "wVtt3RVTl0tR00oQ", "values": ["Y8es36r1FgR70eNL", "klttmrpgF5szl0sM", "gcHdGGK3x76U1EIc"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'HkVrEFd8xArWJuCA' --body '{"orderNo": "IfNBSHgpFNw9K9pm"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "AIc6VSfE9nbE2PMv", "name": "12ZSRJkujxbCu1HF", "status": "ACTIVE", "tags": ["ZUTmvsEzLPnnGsnf", "mBerp84qjwzWpCF1", "vyamjsEzwtLPxK1o"]}' --login_with_auth "Bearer foo"
platform-get-key-group 's4qR8LaQzEb39sZT' --login_with_auth "Bearer foo"
platform-update-key-group 'dFfC8x5aHLsXHlm1' --body '{"description": "RJTTy9JrNz1K5M1q", "name": "gFddYvifGHawNx6y", "status": "ACTIVE", "tags": ["CRM69XKkLwioRaKn", "Whlh80BhYe2fJDS6", "T75Q4ulonMFjmYqE"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic '1wJhfogWg2Apm0sU' --login_with_auth "Bearer foo"
platform-list-keys 'y18aWn65Co0vdCk8' --login_with_auth "Bearer foo"
platform-upload-keys 'so6JSaZAIadKDEZy' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'wonA2SrEdN2tmGuX' --login_with_auth "Bearer foo"
platform-refund-order '6r0gBVUUeKKlPKtE' --body '{"description": "6gnYxmkmCWbs5qug"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": false, "notifyUrl": "SwWcZmzCWGI1cIQc", "privateKey": "PWAShIhieSKUf3zK"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "byQk2vQTYX1xsth2", "currencyNamespace": "8NZZgsXycuQNGIDe", "customParameters": {"Hlf6IcX1K9JrK6Or": {}, "2xx7rLwrPoWiywnx": {}, "uDLLuIaSxoloIH1g": {}}, "description": "BCWVFrvls0ZwosKh", "extOrderNo": "DlLfTKxpVOXvGSrd", "extUserId": "kqddI3ezqu6FB0sL", "itemType": "INGAMEITEM", "language": "kUD", "metadata": {"GcwMBmegqVUaWMJB": "jrV0p9A7tcHrV0Mb", "JGr4drgkDuWS05m0": "pGzazM2BUXnzUEWT", "iKMJAf6AgbiEDMfC": "ckWogE5gcfF8AMGZ"}, "notifyUrl": "2FBS93Mg6TKwdRMr", "omitNotification": false, "platform": "Uml3KuoMKh7tprna", "price": 5, "recurringPaymentOrderNo": "NIbJMJ9ABbKVWO2Y", "region": "EDiqkwKbpdk7wlDn", "returnUrl": "gNiPPjpSAlZwFGpe", "sandbox": false, "sku": "xxXdbYCRexPekTsQ", "subscriptionId": "xMTfaSot7aohFYy4", "targetNamespace": "VxwHIJ9gzxqAw4vB", "targetUserId": "GQAeh0VTiTP4PSrX", "title": "US6jYI9lsQFD43Df"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id '5qUZOFzpFd6b5Jc5' --login_with_auth "Bearer foo"
platform-get-payment-order 'TETHcup8GG0VCMTF' --login_with_auth "Bearer foo"
platform-charge-payment-order 'J6svTyo9RHget5hz' --body '{"extTxId": "B52BDFopxUwkMuSq", "paymentMethod": "QnKzDgDAtqE3kuyb", "paymentProvider": "WALLET"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'CxZjKf8NA4cGUaDf' --body '{"description": "y9XnH2r0EKrk5Vln"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'KsWCPccAFn5CEPoH' --body '{"amount": 10, "currencyCode": "opK5DSO8JyX4IE1z", "notifyType": "CHARGE", "paymentProvider": "STRIPE", "salesTax": 22, "vat": 61}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'NNqLyrlzrJ4QHbfn' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Playstation' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'GooglePlay' --body '{"allowedBalanceOrigins": ["Oculus", "Nintendo", "IOS"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Epic' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config --body '{"appConfig": {"appName": "DIW2ncJJKpqmgvUT"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "Bhl0L5FCbOn46W2B"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "uPQLrt2t6bVpCgKv", "eventTopic": "PXSDufmKh783cV54", "maxAwarded": 72, "maxAwardedPerUser": 67, "namespaceExpression": "sVBRB0rY0xfWddAC", "rewardCode": "yHSmo4KX9TPO3K1k", "rewardConditions": [{"condition": "5ZM8btmGsgXNXbpq", "conditionName": "xh76Af5JSwjw2fE2", "eventName": "g6jXV7oai2oDm9Fa", "rewardItems": [{"duration": 86, "endDate": "1980-10-01T00:00:00Z", "itemId": "9uJQpgEtchTe3nt7", "quantity": 40}, {"duration": 83, "endDate": "1976-07-30T00:00:00Z", "itemId": "zxVt15LKmkQ7YBhs", "quantity": 84}, {"duration": 99, "endDate": "1981-10-18T00:00:00Z", "itemId": "J1zQKxVmRTawjiZP", "quantity": 79}]}, {"condition": "doxpLTBM9Q8t829I", "conditionName": "do1JyveSRiBq23ky", "eventName": "H9jQbHWkcVk0X28G", "rewardItems": [{"duration": 92, "endDate": "1989-04-11T00:00:00Z", "itemId": "4vl7gIKBc7OYTylF", "quantity": 89}, {"duration": 62, "endDate": "1984-04-21T00:00:00Z", "itemId": "JKySnC0cfPl3Z2zS", "quantity": 57}, {"duration": 81, "endDate": "1972-06-02T00:00:00Z", "itemId": "6BY5YI0jeO2zMDSy", "quantity": 47}]}, {"condition": "kyqyKgrtEPdXXlt8", "conditionName": "geCdiXu3iNvn7vLZ", "eventName": "7h6alhJNGZF07lsP", "rewardItems": [{"duration": 84, "endDate": "1994-11-16T00:00:00Z", "itemId": "OfHbXzWnVO2U4uyz", "quantity": 38}, {"duration": 29, "endDate": "1993-12-01T00:00:00Z", "itemId": "rj0ZrLQjk4VoYfIk", "quantity": 37}, {"duration": 59, "endDate": "1980-03-08T00:00:00Z", "itemId": "h24cZBpdDFfvzeU5", "quantity": 17}]}], "userIdExpression": "EmTuaxlxgywkbdOs"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'DBdoKH6sREmmfwUZ' --login_with_auth "Bearer foo"
platform-update-reward 'LZZS7snx0Q2Gd8m7' --body '{"description": "Y3wiNloJfey3HXL6", "eventTopic": "SjljNPTXA3qbg55S", "maxAwarded": 51, "maxAwardedPerUser": 64, "namespaceExpression": "ienCODZ0mnOpPTVx", "rewardCode": "EgBFzG8tlkxWKCU1", "rewardConditions": [{"condition": "XN4gl7yHvEqpJSrD", "conditionName": "XVwCkhOQ161TFjRO", "eventName": "YJm75VIuCOCkt2W1", "rewardItems": [{"duration": 60, "endDate": "1973-10-16T00:00:00Z", "itemId": "3WWn2ZJY3QvRa7CD", "quantity": 88}, {"duration": 86, "endDate": "1994-04-14T00:00:00Z", "itemId": "csAHzD3dZyyWbUQp", "quantity": 3}, {"duration": 3, "endDate": "1972-06-21T00:00:00Z", "itemId": "v3IwmL7a1K3zIUYJ", "quantity": 26}]}, {"condition": "M80LLbku9GYH4ijq", "conditionName": "OVM50tCqkZfsSxAb", "eventName": "DJ7sHCLup8pmEosO", "rewardItems": [{"duration": 99, "endDate": "1974-09-26T00:00:00Z", "itemId": "lQwwdeLVpmXqRwVj", "quantity": 5}, {"duration": 47, "endDate": "1999-02-01T00:00:00Z", "itemId": "W2ANmE3VVsQ1fm9E", "quantity": 96}, {"duration": 66, "endDate": "1972-03-14T00:00:00Z", "itemId": "JwEjoZrRtaeWKMC8", "quantity": 47}]}, {"condition": "ZVdw5UMa8ymxtEFL", "conditionName": "wELCY2vIddlxnA1V", "eventName": "ynioJcAPwVHUGcs1", "rewardItems": [{"duration": 54, "endDate": "1992-08-19T00:00:00Z", "itemId": "KVSmWa8TGko16XTq", "quantity": 68}, {"duration": 20, "endDate": "1972-05-30T00:00:00Z", "itemId": "cM7ixq8Tjnxp5Cl8", "quantity": 13}, {"duration": 79, "endDate": "1974-04-19T00:00:00Z", "itemId": "aEmCcuK2hHviBEWp", "quantity": 3}]}], "userIdExpression": "tvUfVwLahtRedh1S"}' --login_with_auth "Bearer foo"
platform-delete-reward 'iZlOpIQ8GL7jBF1R' --login_with_auth "Bearer foo"
platform-check-event-condition '5OexAPzCG6ZKQClG' --body '{"payload": {"c1636nbfM3J9G40Y": {}, "62bCo941ALznQuHV": {}, "skfCjUK8GeX4Q0B2": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'Cj0oOmBmXu1KiTTi' --body '{"conditionName": "z7yrIvQj2isN7bRw", "userId": "cr16lW5YwgZpjlMM"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'tPWg8217m7qNkQiK' --body '{"active": false, "displayOrder": 47, "endDate": "1999-03-01T00:00:00Z", "ext": {"oac8QTNEuBbeuQqm": {}, "9wM7mgTtUdPVcQij": {}, "MBhs0kDP6d3nuUZ4": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 26, "itemCount": 99, "rule": "SEQUENCE"}, "items": [{"id": "NTvCPMGLdbYEknHP", "sku": "KrZ7TiNBE0HRsE0G"}, {"id": "HDOFjrfqJcyxT2a7", "sku": "fCFAUzLELiM573Td"}, {"id": "tWjfVciuLnLsBKGs", "sku": "ALPuCOyphUUAV957"}], "localizations": {"08zaP0wpZgQEvFzo": {"description": "x9wHocX3DRWobEoG", "localExt": {"r8W97KBedcr6PM51": {}, "z7i0wQ9egK2t46EG": {}, "8I2lTviKbOgVuN3n": {}}, "longDescription": "hkn6QIesNoYqvVsa", "title": "kylHikKkpOjqwgKv"}, "fXXs8pDqm31AZSRk": {"description": "uw6q8FgqG46RsFK7", "localExt": {"eYlSU3vYcHZZjFeg": {}, "VnZOn0tk4IATSIef": {}, "cqNEn4IZ0Dv6b8Wt": {}}, "longDescription": "aMVvLbG04KKnh3jv", "title": "W0Qp3kTyL4CsLwiW"}, "UMcpxn4B6XoTNMuq": {"description": "ZTHwo1IAJQpb6r8Z", "localExt": {"eaSHwQuiH3Ozu4G6": {}, "bXxp0gYZyF9fJBJk": {}, "SOrF9Dg4FcDwBGyB": {}}, "longDescription": "iHewZkwEeuzBBRSk", "title": "nxyWkZObuvig8sMu"}}, "name": "ss76ezTrsDZNYUV4", "rotationType": "NONE", "startDate": "1992-03-03T00:00:00Z", "viewId": "xqa9XM2gY14iWk12"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'Jffk8dwKNPUOHNZx' --login_with_auth "Bearer foo"
platform-get-section 'ML3yoBM9qxd6PWz7' --login_with_auth "Bearer foo"
platform-update-section 'sVnMxge2inL8fBFP' '1ABaIKrEt8d3o7cT' --body '{"active": false, "displayOrder": 67, "endDate": "1991-10-11T00:00:00Z", "ext": {"P4Htmr90TqGf0Oyq": {}, "J9ibJMmRgoxNwp1l": {}, "GkYoq8HP1TM0tefV": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 84, "itemCount": 99, "rule": "SEQUENCE"}, "items": [{"id": "X1NPO5Wn7rNG8rGp", "sku": "7Fadvo5EzpX0Itts"}, {"id": "RezyY9GB5sf94ALB", "sku": "mvdncQkcZb8cWdVH"}, {"id": "9bww15zZsaYrJAe5", "sku": "Kd5QB96ndlO6iPGC"}], "localizations": {"9RhzMC7V8BEphnRX": {"description": "nSpCzyb8FkoxQbrP", "localExt": {"ngi87K58pQswqKLu": {}, "tINusOsa92F6iwkJ": {}, "IYOLarmpWyvib9CD": {}}, "longDescription": "W21ANrlpuXD9H1u1", "title": "CvzWPcZwkj1l6bf2"}, "F9EXOBj7v8LHYivm": {"description": "D0ekycMKlwJTNL2U", "localExt": {"CWUtaAD7ZZx1iefA": {}, "TWcDSqGYRMdz07xE": {}, "J40epssgJJC3CX0h": {}}, "longDescription": "pB1ZGMMo5DSozCuF", "title": "srBMtoOeLfMCYxSe"}, "eJOlxa395rghZwGh": {"description": "dZJkkGhYvXYMIyaE", "localExt": {"MEqOpwetb82b96rs": {}, "H73hRfDgl29GWKpI": {}, "tMt4GszRufkDFLYy": {}}, "longDescription": "NBPlMrkse9SGcMuV", "title": "5phhU315LUC6HSMQ"}}, "name": "32UznXNd6ve29lqq", "rotationType": "FIXED_PERIOD", "startDate": "1990-01-19T00:00:00Z", "viewId": "pJXTLbYWpqeXjaf1"}' --login_with_auth "Bearer foo"
platform-delete-section 'f5fjNMZjKJ05puX3' '197WrMnJtovSMFw8' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "X4zxbdfXgunt1oMN", "defaultRegion": "Z68eovHSH3xV3URI", "description": "RVDYBd6hMB0l7sg7", "supportedLanguages": ["IfMH5Tu1ky1ZYvye", "HmfoFkUDP864shbn", "Q3bVvuvpsDJXPCWk"], "supportedRegions": ["X4Kpi8CJ88aMPGFF", "AQZbfbmVTEbiRq5J", "uikmpat75rVbN9ZB"], "title": "tzJ33tCwv8H1f451"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'FVZ630HNBYZSrz7p' --login_with_auth "Bearer foo"
platform-update-store 'MjESLLMPKDXLki6O' --body '{"defaultLanguage": "z5Bygt8Q0RjSf1sr", "defaultRegion": "B7hGwGbUmQmJHNff", "description": "ZENs9X0hFMdzryvh", "supportedLanguages": ["c1YjHmmulSBIElc2", "CdRvBb0aGnMt625b", "WHb5sbX6asrjV7XJ"], "supportedRegions": ["UOtHlzXNHEPpzlMl", "x7b2H2THLwZGikW7", "TFA9gE6SrYKq6lcV"], "title": "OhPJIcEHbiKHW7fl"}' --login_with_auth "Bearer foo"
platform-delete-store 'VolAWEMmQSPDTRqj' --login_with_auth "Bearer foo"
platform-query-changes 'lvwnnCA5tfK5usha' --login_with_auth "Bearer foo"
platform-publish-all 'KTPVjyOUpR3uUdgN' --login_with_auth "Bearer foo"
platform-publish-selected 'lyU4IJnqtrjCOsE8' --login_with_auth "Bearer foo"
platform-select-all-records 'VjvzhJwNX4bhqCjl' --login_with_auth "Bearer foo"
platform-get-statistic 'wrmsSRV86iic1FIM' --login_with_auth "Bearer foo"
platform-unselect-all-records 'yF7CcNu2DYn6E9Gk' --login_with_auth "Bearer foo"
platform-select-record '51kOTJZluTekDMCG' 'UJvERxNg8djSb4Vt' --login_with_auth "Bearer foo"
platform-unselect-record '2vKQ5vlCdI519Pf2' 'iogwxM5DZM0dgozm' --login_with_auth "Bearer foo"
platform-clone-store 'co41750xdYQg34WU' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'V0WpmsQnp1n4YGum' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'TKOlDOy5vhSkxERZ' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale '2AQ1jvXYBar5RMmm' --body '{"orderNo": "GdWl0wpj5tVfKU3D"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id '8WVPh0Z7YiGE2cyz' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'TMBY7Xd0OoENg2Lw' --body '{"count": 27, "orderNo": "uepmahXojVZYz2zM"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'U9jLzNV3GaG43R6n' --body '{"achievements": [{"id": "lRPrEAYqRBeSc5uS", "value": 14}, {"id": "oZ1nXpW1l70pcZgI", "value": 27}, {"id": "0Gax0iX05IT9Agsj", "value": 23}], "steamUserId": "W10NkJFQxuMHnfOl"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'X6HYVEiaereFCPJU' '2wEzUYUTmZ8JSMeN' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'mRocp400RZe8Bzx9' --body '{"achievements": [{"id": "aGEI22BTCZs97TJI", "percentComplete": 22}, {"id": "GPrM24F3celFgM62", "percentComplete": 69}, {"id": "10ckMQVjKk3bWJ0Z", "percentComplete": 43}], "serviceConfigId": "6OGbn8vmfMYGLt1A", "titleId": "jKhh3JMX7xSrz1EH", "xboxUserId": "6X2SM3xzsNrJzWBc"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'dFlo7oAsOlfLB1J1' --login_with_auth "Bearer foo"
platform-anonymize-entitlement '9b5rTfiL2P3r1a8K' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'IJH33aKkPuWD59Mg' --login_with_auth "Bearer foo"
platform-anonymize-integration 'Ty1HA58Jt5NaROjS' --login_with_auth "Bearer foo"
platform-anonymize-order 'KFEuZo2ElXYSS4ez' --login_with_auth "Bearer foo"
platform-anonymize-payment 'BRSiOyReviDaxlPd' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'hwmcH03yoMxzRR6x' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'd9rTh3ureaIbxM3W' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'ev9pZQjWAN0tny16' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'ZHZtuSJGQCrM7JEM' 'PSN' --login_with_auth "Bearer foo"
platform-get-user-dlc 'PkdTcAzkIlndN5xe' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'ayr3vUKMuIiz2MiA' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'AKcvAXnxnH0QIhoJ' --body '[{"endDate": "1993-07-26T00:00:00Z", "grantedCode": "Y807VmBT4wZXQZZr", "itemId": "SsuYiIPei0pXglJY", "itemNamespace": "nKkoCAZuolAWnxkI", "language": "ox", "quantity": 23, "region": "DP0QX31gI7VmnGIR", "source": "OTHER", "startDate": "1981-03-26T00:00:00Z", "storeId": "Xe6BiphIFe2bzr6q"}, {"endDate": "1993-06-28T00:00:00Z", "grantedCode": "EoEEClTO9SDKnMln", "itemId": "KW9jiNMu9QVrMeD4", "itemNamespace": "bD8gISE34yIAZQei", "language": "MJ-NRNc", "quantity": 100, "region": "eheP72AB8EO3Yrly", "source": "PROMOTION", "startDate": "1994-03-21T00:00:00Z", "storeId": "owUpUDVLlTtuJJsH"}, {"endDate": "1997-08-26T00:00:00Z", "grantedCode": "VsG6izJZruOJvSRF", "itemId": "LDSdj8elbtHvDU91", "itemNamespace": "DmHzwiqVPCJ5j18O", "language": "sAA_pFlg", "quantity": 3, "region": "GKmcEKp8AQwqgJs6", "source": "OTHER", "startDate": "1997-12-06T00:00:00Z", "storeId": "Qj0ccMkdz6zPz3BV"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'HAqp4O9XSjap24es' 'yjh6Wc3migf2n6iQ' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'yr5cb5YL6fwBiaVP' 'DLC' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'tcR3eHFbiAluHv7H' 'ssd05pHBJX5ln8PZ' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'bYVD8RiaTsdD4d3k' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'SbTkHPMUvOAUXkw3' '6cr2WJQqS7Tq4YIy' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'ZAFQ6lZfa2jdNvpW' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'f32JS1av9VNpVLT0' '["LvqcfSdO1nAjY5Fv", "ADb3GUQgci632w6L", "UrHuKBoNTpPQXDNH"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'to74GcmVf0fbCU9Q' 'dPuWeMEeL0EJG67g' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id '4W1eAmDxP23qstMu' 'ikKc6VNU8570siWm' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids '3V9sirE0JOQxWeHy' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'pqCWMDPRI2cCk8zH' 'R8VyCC0EQwE0cXok' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'XbwKDtVmrYQu7hZv' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'HfiT9s9pK8HuUY1Q' 'QHQ0NCEddJtx6GV0' --login_with_auth "Bearer foo"
platform-get-user-entitlement '1vD7lNLxlpvqaB9P' '9GaukfCEIeSBLhTf' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'zigzHcRuJgYaj4I8' 'Dzyh1N0JEKNoMtHv' --body '{"endDate": "1975-11-16T00:00:00Z", "nullFieldList": ["3KIDTkUCqbbHGJGO", "TvKKRTHDntaFiufH", "2YR6QU7fj6w17arN"], "startDate": "1980-12-12T00:00:00Z", "status": "ACTIVE", "useCount": 10}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'OoLVM7UFnuJDzeEk' 'DxaVogxHrOon2OW4' --body '{"options": ["Zw5QwVKWNy2tnF2M", "ifJR4hr4gdJDujYn", "VnFK6gB6ZxC6yYUV"], "requestId": "UJYnQ3jOGmROIqxq", "useCount": 87}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'gdDms3kb1htW0UGJ' 'pwQZlXuzu3m9u67J' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'jCDwg186hGWKfO9M' 'noT3t99HmcxzjDhT' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'rcBKtU956hOg8ouk' 'DVdweG0sFHxTHa2k' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement '60SzCqUgq1gLbcIM' 'evTmC631p7q794bu' --login_with_auth "Bearer foo"
platform-revoke-use-count '49lINFTtERAXT2h3' 'hcQ2wV3ZbBTnNQnV' --body '{"reason": "UhA5WnzVZdj8tsyz", "useCount": 59}' --login_with_auth "Bearer foo"
platform-sell-user-entitlement '4i3eRyIECEDa1I4l' 'wXqwPfq3VzHQjtol' --body '{"requestId": "x64w1gyvjacKtGqx", "useCount": 79}' --login_with_auth "Bearer foo"
platform-fulfill-item 'zp3sZxImVK5yh2Lc' --body '{"duration": 78, "endDate": "1979-11-14T00:00:00Z", "itemId": "LaMW0ByjsRUrAHNR", "itemSku": "kIcC4wNFzsbrtYvL", "language": "h56AWXoMiowdWSs9", "metadata": {"DQ0VU1HED9CGo9aU": {}, "Xj3rh0UyqxVWlIMY": {}, "5tTJw4KV104MtMhK": {}}, "order": {"currency": {"currencyCode": "HmSjqPuQZX5KjdNr", "currencySymbol": "EwfWo2MwulLg4bsO", "currencyType": "REAL", "decimals": 68, "namespace": "mRCARuFLx4rV4CXV"}, "ext": {"MrDYKe2eTf1axo16": {}, "GqT2vSLLiMvcu39Y": {}, "ZJypWzpNXgnoKIz8": {}}, "free": false}, "orderNo": "8NglJtZTh280vflF", "origin": "Xbox", "quantity": 68, "region": "xIhlIT8AgyZJ16MM", "source": "CONSUME_ENTITLEMENT", "startDate": "1999-01-17T00:00:00Z", "storeId": "bzOrTn2huwPgyUzB"}' --login_with_auth "Bearer foo"
platform-redeem-code 'UWiKoNGtvyk5xEfr' --body '{"code": "JDxKsw5Xl7ZZrDZd", "language": "OU_egDc", "region": "TGkO6aIYqftw1SrM"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards '2nhSEanfUYrMU6A4' --body '{"metadata": {"3UKGpvC1cr5T1PSX": {}, "hduTWchzXDv3TAtB": {}, "jP4HSuiYCbG0UyYU": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "FNeGtJGjKbMgCeuA", "namespace": "YuzrmbWofEaKStqd"}, "item": {"itemId": "Ku4ROnONpJ849chq", "itemSku": "eiUGQMwNwDlYSli3", "itemType": "p8YaAdel3hHMSLAi"}, "quantity": 38, "type": "CURRENCY"}, {"currency": {"currencyCode": "cGRWzkCl1ZKuPxjD", "namespace": "UGRGcCEPjbUy7F82"}, "item": {"itemId": "Adu9BYRHrVTehrqg", "itemSku": "vEtEs2LpE0qfbvdU", "itemType": "8hlDoC9FnxqBlPBY"}, "quantity": 73, "type": "ITEM"}, {"currency": {"currencyCode": "7X6uVy7FWTSfMi2C", "namespace": "PVGxjcdpdCqVeePM"}, "item": {"itemId": "Sqb8y8qJTUQY40Zr", "itemSku": "pn0vAD9YsPeDWrAV", "itemType": "QZSvgWuCuLsUGrVQ"}, "quantity": 55, "type": "CURRENCY"}], "source": "GIFT", "transactionId": "3g62oGYwkrjLI4EH"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'JEEWgki9fbdvUMDZ' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'eO4U55wdCpVpnENi' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'Tc9NESV22eRBElD4' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'K2Cy1tJcPAEkCeV2' --body '{"itemIdentityType": "ITEM_ID", "language": "QSqr_pBFf_Ci", "productId": "xuXXpt0YSPX04uEI", "region": "dAwgDobopbdJeVCi", "transactionId": "Ks2vLyH9kcSBdk7M", "type": "STADIA"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'Pbvzn8TYoMDAaUXS' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'uBQdvdhJoT0WK5ng' --body '{"currencyCode": "NUxDKfZYofPGUbSa", "currencyNamespace": "A00nKxQjYU6KlavI", "discountedPrice": 17, "ext": {"4YMhJ0S50bez9ZLH": {}, "W882riiPfRQ3rJ0f": {}, "5lwXvRNDBnmL1KQn": {}}, "itemId": "77hiP1lzkzjYDw6m", "language": "LBordrJkD6vy60uR", "options": {"skipPriceValidation": true}, "platform": "Xbox", "price": 70, "quantity": 46, "region": "EZv5zyUUyNJkvA5x", "returnUrl": "F3zHtZSd3QzXhkrN", "sandbox": false, "sectionId": "pWryt4XTNwpp0ni1"}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'YfIgLZ4YIzElrLZO' 'BLHCKmLBaIwlokbA' --login_with_auth "Bearer foo"
platform-get-user-order 'FW8RgBUwBL28BqM8' 'UzvKqeoTiNKGRUMr' --login_with_auth "Bearer foo"
platform-update-user-order-status 'imGAz6OhmHOpCdr3' 'WzDm3hJdd6uaO9Ti' --body '{"status": "CHARGEBACK_REVERSED", "statusReason": "PnIh2iaIBpYC4txu"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'l6VKYlNYYlHPwKDp' 'JmkeoAkp3Z4pgyJY' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'wclb4gd4QgQut2hi' 'PuDdOPHcN9drwqyt' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'ieXpIZfr5XDq9dGL' 'HjtgE2bTXJxCCFqP' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'NDqWrpkWnnova15W' 'VuE5cYVP9tQSa27B' --body '{"additionalData": {"cardSummary": "nPyq3I1BLtGEZDRN"}, "authorisedTime": "1976-03-18T00:00:00Z", "chargebackReversedTime": "1976-08-30T00:00:00Z", "chargebackTime": "1992-10-14T00:00:00Z", "chargedTime": "1973-11-25T00:00:00Z", "createdTime": "1978-05-23T00:00:00Z", "currency": {"currencyCode": "fJXK8RGS0zCYRVmb", "currencySymbol": "fzwUmsy0stUmKdXi", "currencyType": "REAL", "decimals": 76, "namespace": "TObNdqkWa13g3pgH"}, "customParameters": {"x6uPf6jQZcYerH93": {}, "3X7iXEEM2KOusNEH": {}, "cI95GGdJvucDbs6U": {}}, "extOrderNo": "dccuM2ykRj3WnyAa", "extTxId": "UaQBKFedL2uduXvZ", "extUserId": "UbQQ13FhD3NExUFi", "issuedAt": "1979-10-19T00:00:00Z", "metadata": {"nkHDnHTlRugM7a2U": "ZgeesipbP027okM5", "E8tAajVSvLRj306R": "DuaSixXEdloYZBka", "tNLc42eq0O6VsXtO": "lQwj5xPvm7c5nPR0"}, "namespace": "Y1sffUaZ64dFpiv8", "nonceStr": "o9Gw4QtKgyIeySoU", "paymentMethod": "xoMrj2J4JGQZAtyj", "paymentMethodFee": 94, "paymentOrderNo": "GLj8aGsH0qE5p601", "paymentProvider": "ADYEN", "paymentProviderFee": 68, "paymentStationUrl": "k59yFSfdZIv8oYWP", "price": 96, "refundedTime": "1979-06-18T00:00:00Z", "salesTax": 88, "sandbox": false, "sku": "bTt6M2XizikCh6q0", "status": "DELETED", "statusReason": "7EFBz43E9FkOPVu2", "subscriptionId": "fDtOjW1iSYQbcebB", "subtotalPrice": 8, "targetNamespace": "2U0syrGNhBmgT2q0", "targetUserId": "kIbrJ2S5Pf1Lvg8k", "tax": 18, "totalPrice": 62, "totalTax": 5, "txEndTime": "1995-07-18T00:00:00Z", "type": "CNLnnEvo25aEtdjl", "userId": "s5oadseJg7y4Q9CU", "vat": 12}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'yMvqF7TJ9uB0zypj' 'Jiu7BIimNuwB3hBV' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'huSMHhf5R2MkxQTA' --body '{"currencyCode": "YGfE6hXZ7XLoWCGf", "currencyNamespace": "0dZEeXBd6mGG6SHc", "customParameters": {"ZbX2wNnT6A9zosmD": {}, "nXoncy7NZQ4PkAPX": {}, "BCfkE1Fb0y94eP7y": {}}, "description": "h0zsKhR60HZwUwk4", "extOrderNo": "8XK7MXHbEwAvvpEe", "extUserId": "HhXiJcJqYSxVKUYM", "itemType": "CODE", "language": "NV-bqAp-140", "metadata": {"EFXUhGAwpYq1UqZy": "dOB0MThZW6LwcAg5", "7BYBVCbi0ifdPyKf": "3SwHekWIz4rXlH5j", "w99HxCjXWcaXBcfX": "XeV7BXefsSgZxSYn"}, "notifyUrl": "VwXqF6K0WA76Kl2m", "omitNotification": true, "platform": "oz6qBQnEDgX49n1x", "price": 93, "recurringPaymentOrderNo": "h6fIaHSx5bClxUOB", "region": "mMwv5pmiIVnhlLoM", "returnUrl": "emsp7o3F2LQw7Y2V", "sandbox": false, "sku": "wflNGfufW5cWeg6e", "subscriptionId": "SCypsceITTkJGGCV", "title": "F6LrILDLviUCzmDA"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'aW5xz1c7ZuZXUCBY' 'nkY0LEBSYBdUSiTO' --body '{"description": "rhB8hVs29WOKmZRT"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'tgycLzXz6lUMKi5m' --body '{"code": "weMEZo2ZnL1Zg2Jf", "orderNo": "H4f73jAevOnES6YJ"}' --login_with_auth "Bearer foo"
platform-do-revocation 'Llb2AfUEEBbqMMKv' --body '{"meta": {"kOsR1fHUyirMVMOF": {}, "ES2J2OzNlJE3uqZz": {}, "574g31cA0PwZxTIZ": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Other", "currencyCode": "SGQyTzhs9Asy4d62", "namespace": "9N4YnolVWA2dWxBs"}, "entitlement": {"entitlementId": "056jkPCUuE1pgdHv"}, "item": {"itemIdentity": "lQKiR7SDQUDavOlK", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 70, "type": "ITEM"}, {"currency": {"balanceOrigin": "System", "currencyCode": "5xMRgU7cPqNZrLCR", "namespace": "RUysya4J3rvTzMTM"}, "entitlement": {"entitlementId": "SwrNov2GW9i54JY2"}, "item": {"itemIdentity": "3AUWFTLq0W1JqwKs", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 83, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "0L7IOHlf6j8PZOzU", "namespace": "iQKZqz5NSp0B7LOD"}, "entitlement": {"entitlementId": "N3Boi2sSAO2n4MZQ"}, "item": {"itemIdentity": "t753XQB93rOW0guP", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 88, "type": "ENTITLEMENT"}], "source": "DLC", "transactionId": "TgF0xtQAXoDoFkmA"}' --login_with_auth "Bearer foo"
platform-register-xbl-sessions '3fgzcwdgJMjIyGfi' --body '{"gameSessionId": "NBQy41M1gzGCbaxw", "payload": {"33rNbE4bbDU4FMTb": {}, "QaANJOODGerDCWcl": {}, "3VSJENQopeHD6iKB": {}}, "scid": "Gm5Cj7RqnJUmfDmo", "sessionTemplateName": "fxvN8pRGoUtmbWZb"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'EjPyq35BWDoc3qNc' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'QFFyHv141NPqjRUM' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'KSQjFdjqTaZFsWzb' --body '{"grantDays": 34, "itemId": "M1rNJLM0OOVG5cG6", "language": "XxENbWqlX7idzjpK", "reason": "Dfwl6XlCF6YxFMD8", "region": "tJQwZvUVInos5RK1", "source": "00yH89i8ZDPXRL8c"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'bTAntB1STaab1Uei' 'bXg7RCe5BtKcwj6P' --login_with_auth "Bearer foo"
platform-get-user-subscription 'qqOgCimr3ZQNBBkr' 'Xu9czsYr3cFeVw70' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'xdNTuOdLKK0M2B2h' 'bqJin37P69t1KqeG' --login_with_auth "Bearer foo"
platform-cancel-subscription 'z7qbPnXEuOzzkoBm' 'MR9C4qPqJrAdh1HI' --body '{"immediate": false, "reason": "mFkyxoUzfMFoXCOg"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'uSq2A4R3wDdSkNfH' 'JtA3QiX9ZvtydbaV' --body '{"grantDays": 2, "reason": "SjkH42LtyZKrTJo0"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'L5sHil4Q0mqa8Gat' 'rjbJ5YT7uvqarTvr' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'G1DXZAWlvz3c3XAL' 'MresGFfsH4aXCDhs' --body '{"additionalData": {"cardSummary": "hvEF8rHd250nyihc"}, "authorisedTime": "1994-04-25T00:00:00Z", "chargebackReversedTime": "1995-07-22T00:00:00Z", "chargebackTime": "1987-09-29T00:00:00Z", "chargedTime": "1984-12-15T00:00:00Z", "createdTime": "1974-01-20T00:00:00Z", "currency": {"currencyCode": "8FTLrByWOJhbocoG", "currencySymbol": "lPzdfxcC3rpWhSpq", "currencyType": "REAL", "decimals": 47, "namespace": "xMLpP7n7M3JXjEvs"}, "customParameters": {"j5WcQ99M1yuXeqV3": {}, "1LX2ehcMnM6QtjzQ": {}, "jDlUMCGnxZwak7KH": {}}, "extOrderNo": "nzGASmVzePIroz41", "extTxId": "oQCuXeTRyJQrNLTc", "extUserId": "qLVTN5Qf4tjPGpu2", "issuedAt": "1986-07-16T00:00:00Z", "metadata": {"X8wTi1v2abpCWytP": "Ei9Ze0hL9rPkV5Gk", "Srcl2O47XVzU7qlN": "Vk7qnmBS3XKDhp1O", "kMcErmeH0lX1hj0L": "aXgQ94flh775AQfz"}, "namespace": "NjQ7IuMSY2epRDJj", "nonceStr": "DyMDKQhuTjtQZyIi", "paymentMethod": "AmCL8bNTTfqLCv9D", "paymentMethodFee": 57, "paymentOrderNo": "fMnTbKdwNhiIP7dp", "paymentProvider": "XSOLLA", "paymentProviderFee": 99, "paymentStationUrl": "8VwFQnVco2oCn1Kv", "price": 72, "refundedTime": "1985-04-10T00:00:00Z", "salesTax": 47, "sandbox": false, "sku": "TLcOef8MgIwkrKFE", "status": "CHARGE_FAILED", "statusReason": "xdxB5kvtM8ah9bPs", "subscriptionId": "ksceGUEX8ERZcKSY", "subtotalPrice": 78, "targetNamespace": "JLbVWH2XLIg3Mgmd", "targetUserId": "SvWp3h0xPsVY8qNw", "tax": 56, "totalPrice": 31, "totalTax": 93, "txEndTime": "1995-06-24T00:00:00Z", "type": "v9NNfQSYLFKSl3FN", "userId": "FFJnt3rIwZdW02Su", "vat": 7}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'aCnL816aH6gOBUIM' 'eL0GL3aefSDME8X2' --body '{"count": 79, "orderNo": "mpmFxxDNXGlGJvHf"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets '558h1ltyhiSGhfqX' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'hxBJ7zLXioAGkWgS' 'DdDQvpRfGe3z2rtj' --body '{"allowOverdraft": true, "amount": 87, "balanceOrigin": "Twitch", "balanceSource": "IAP_REVOCATION", "metadata": {"AlKHF0ebxhJ1176C": {}, "eD4dWCp4wqlQJcZr": {}, "oNQiefBnPluOIjZy": {}}, "reason": "vlGDQGv6pNNowEuV"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'VZM28w4mnYvvlt1e' 's7A4PFduN4gx0UC6' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'eWKCFGS97Si6XyLV' 'PrkUxyZ1OH5Nn4nM' --body '{"amount": 95, "expireAt": "1977-12-06T00:00:00Z", "metadata": {"QOyTuUSD9ImtaPAo": {}, "cOQcpBWSNrCjSNEA": {}, "dojkCMmYyTGO07fo": {}}, "origin": "Twitch", "reason": "Z6FujpIWo0qJtqp4", "source": "REFERRAL_BONUS"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'FPX15633pFgA7i9t' 'qvfHmFvUZiUW5Y0C' --body '{"amount": 45, "metadata": {"CNiszHE69D1MMoaf": {}, "6KlgRtwaM2IoyY1w": {}, "pIdjcAtTj1IMuuhx": {}}, "walletPlatform": "Playstation"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'eJjZPAkiWumllU31' --body '{"displayOrder": 42, "localizations": {"85PA9wNpmrK5Y5he": {"description": "A2ewWnFcqHxXP3kR", "localExt": {"htrBcBofWTGYx2ih": {}, "gioL8VvEzHGTt9em": {}, "dCLmzJbdkykVAnmn": {}}, "longDescription": "RfUilcKA84d9pMsl", "title": "7zrNJvDiP2hNNEI8"}, "QrQ6H1ro5CtU8Ujg": {"description": "yCUpM1JBcTzf4dz1", "localExt": {"BojPoQg976409vFd": {}, "5z9r4nJWUvLp1wxG": {}, "F747468MXUq3uIff": {}}, "longDescription": "kIpPmrWVxNZUvkiU", "title": "2jXSwsBBRopVl38d"}, "4NZGtk6EmWxC75M8": {"description": "8TKhFYkA9aRNDe2I", "localExt": {"oPMSQKcg0OTT9JA0": {}, "ll1RimBCiQwuyrI8": {}, "7uSyXP6C0jXS8au2": {}}, "longDescription": "wcWYyj3JvHqXp4JR", "title": "7xI59Z9tfGVsglnO"}}, "name": "xOXBfgBLuglkd9LI"}' --login_with_auth "Bearer foo"
platform-get-view 'oshGnFSuHmrqej8P' --login_with_auth "Bearer foo"
platform-update-view 'RppYY1vlV0M2g6or' 'eqyBzWzCgMMWZuD6' --body '{"displayOrder": 39, "localizations": {"K8ZvbnTg3znlg8nm": {"description": "zQx1RsYhcRlv16Ww", "localExt": {"e8YK3lZFslECI9Qz": {}, "uQcsjFehD6uTDYnq": {}, "yNgN7GoeMsezFZsT": {}}, "longDescription": "BHkgcJ0DcEt23pci", "title": "6xEljer6aGJx5OFp"}, "3jKEx4aSGdwTPX4i": {"description": "g3NVFFkP7O3F4vso", "localExt": {"hRWDyGYIVFDbTvRY": {}, "fpJ4wM9WZfOOxAzm": {}, "sbhi5QJuc2SNBaOl": {}}, "longDescription": "XfgsgBd7MYLLoPZr", "title": "kjRm5Ki0orhXrISE"}, "aPZHLQkTHvndQsCK": {"description": "AO2JRz3CGwtujkzx", "localExt": {"idLcAQWGVRg6DVso": {}, "5TJCSugdo4XTm8t1": {}, "YTWqItjNWXm9srae": {}}, "longDescription": "MA78YSRS2fPy5fpb", "title": "bbMIu9lu18jIMBUM"}}, "name": "77XmemN8LO03mnFS"}' --login_with_auth "Bearer foo"
platform-delete-view 'q9jJTVFoFjxZjh5q' 'UR1Pq4a4uaMfd0SQ' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 55, "expireAt": "1982-02-16T00:00:00Z", "metadata": {"ajRGUyklfLVY6g3P": {}, "O4hKAeF4GUV5m96q": {}, "cCJsVOWtu5RPsqd6": {}}, "origin": "System", "reason": "FsUo3IB2kX5REQZs", "source": "PURCHASE"}, "currencyCode": "1y5Ihr531Kajxq7l", "userIds": ["GpdobYun8hcO55hV", "jfWyK02w5QytAmka", "zuVRVEvhKIbrq1xs"]}, {"creditRequest": {"amount": 29, "expireAt": "1971-06-18T00:00:00Z", "metadata": {"meT2mLkkAMjHyI0e": {}, "2Axj0nZHjmoKHJng": {}, "wMe1AnQVj6QQjZtk": {}}, "origin": "Xbox", "reason": "C5mxxse4eeuMgEct", "source": "REWARD"}, "currencyCode": "wCymCDYsuff3b7G5", "userIds": ["FDX4mu0qPHb9Ll2E", "Oiqrg3lpqN5bOfnq", "FEb8GnsthmQ2Y6ZG"]}, {"creditRequest": {"amount": 73, "expireAt": "1984-01-11T00:00:00Z", "metadata": {"S9usxxnMhjv66DyE": {}, "D4prRVibTATxd7Mz": {}, "jv1gSj8kcNhoqcRZ": {}}, "origin": "GooglePlay", "reason": "NATojM7daV0VwR3y", "source": "REFERRAL_BONUS"}, "currencyCode": "WgTNHCka3Wb5kH1B", "userIds": ["lzL44KEm3uHBMCP5", "BD1nnEzoUlUWqP4E", "rLWUetP7nmESQDV3"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "ckjphURs4ksgsKJ2", "request": {"allowOverdraft": true, "amount": 59, "balanceOrigin": "Twitch", "balanceSource": "EXPIRATION", "metadata": {"acwwu8W1zvrKMRPv": {}, "wA9k6yJz03NETdyw": {}, "PqYerrpOm4M2pM4f": {}}, "reason": "IfcHBWZM50aHbPXR"}, "userIds": ["ns3qwYL6LwGlZGF7", "XQPLAcIL7FvAMWqh", "yyNZH1CducB5y5iM"]}, {"currencyCode": "deBG7REG4meKEabf", "request": {"allowOverdraft": true, "amount": 67, "balanceOrigin": "Twitch", "balanceSource": "PAYMENT", "metadata": {"QQNGNH2K0UuJdeGN": {}, "quQnaXpDQ5rU2taD": {}, "Wh9JV5oc5IFQsrwH": {}}, "reason": "qFqwVA5mozeeOjIF"}, "userIds": ["7FUz1iOe0pHa0Lms", "eIRXeoerZAxbDPXU", "QfXV3YW3ug3nCXhD"]}, {"currencyCode": "5xJBhIpJ9b0Ap7Cm", "request": {"allowOverdraft": false, "amount": 18, "balanceOrigin": "Oculus", "balanceSource": "OTHER", "metadata": {"MzbE0ljQaBtb47V6": {}, "91j0FZp2vjOXptxz": {}, "x6kkaZYpl52sQR9Z": {}}, "reason": "np5d1eSwrG2GBBEW"}, "userIds": ["BstguOdN0O7l3GbK", "rDbQ1ZzhDuLHq9LT", "PHdDTQDEEE2mTsn1"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'NwJ71szsNmnqZSWd' 'EyOVYrTdDq7IqbTV' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["v8BLsqQW8HSrEm5Y", "7jI232SjktijiNzT", "Ue8KdizXmrmK0sCU"], "apiKey": "sqxKocHomtjoU1kU", "authoriseAsCapture": true, "blockedPaymentMethods": ["DaSO3FEkk4It6V8B", "u7rIjGrxUMKbv60i", "xUuUhopdqGrqRZ12"], "clientKey": "4P7PauXTrpWAjwat", "dropInSettings": "SvtPbAFn8oWQcmFk", "liveEndpointUrlPrefix": "kRX6EqadAEIzxld8", "merchantAccount": "0Ynss7hc3VUxxZIg", "notificationHmacKey": "kTLqMeJPCbs8jWmT", "notificationPassword": "teJhwNbwHGG39YAZ", "notificationUsername": "J4HuLfeTfFBTOFFM", "returnUrl": "J9pq511jZcTK8zmM", "settings": "fyshYk3b5cAFVo85"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "r1b8Yp2QnuhQuIdv", "privateKey": "Zdj6AspWBfRnLcLb", "publicKey": "p7OmcrDJ7u1rrRPc", "returnUrl": "nG89rnNW1Yjfn8lY"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "4DnYRxY8ZhHeb0Ca", "secretKey": "PFDjrSotKnpJWALp"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "Toj9rgr5RffM5JXv", "clientSecret": "PdzEpDln04F8BQjz", "returnUrl": "obhDa8VxKOrfVfBR", "webHookId": "IfkStOqdXqhDMQ6t"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["BLljC7gcT3M1DArk", "4L80aXFY7SQkym9K", "vKMHK5fbqioeoRIp"], "publishableKey": "lY0DIzRCNAO6ZpqX", "secretKey": "JmPJso6M11LLZWKg", "webhookSecret": "Wxn9YL16HQdtAneX"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "GgxNg33ZIUrIkfmd", "key": "XVvaPQzzKdFg7N7p", "mchid": "iT8VcrXLZnuMNpKE", "returnUrl": "Is3GC9VTK7tkJWFp"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "Ht7MdKu9Xwn5GHJD", "flowCompletionUrl": "GatrYOMO91CYEjX8", "merchantId": 97, "projectId": 27, "projectSecretKey": "UFQyVlt9jmxmxpfp"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config '41k1uDg59PhdUXSh' --login_with_auth "Bearer foo"
platform-update-adyen-config 'abwyYCxTHrDel8oT' --body '{"allowedPaymentMethods": ["hvr8CUEzw4zL1QeR", "3EYXBFpUX9y4tY7o", "5FFi1n10vDgyoHXI"], "apiKey": "lrMl2RAukCL26ihd", "authoriseAsCapture": true, "blockedPaymentMethods": ["rmaGNoi3RPTgWotL", "Nz0u8ySxA0yrjz4q", "7e0EJnADXC2y0DY1"], "clientKey": "E1SMK9oA4vK56dsY", "dropInSettings": "I5SKV5pDANyJ184m", "liveEndpointUrlPrefix": "iBhdVJt81fmLSyGu", "merchantAccount": "u5rbJVIwRMtwApGb", "notificationHmacKey": "XnR3yC6f2MHGGedk", "notificationPassword": "0KzXRclOXdPYZQxB", "notificationUsername": "nttu4yW5etl4Xk8H", "returnUrl": "d1lRtoPMvsu9oswE", "settings": "PTvzwwGnpbx8MCIj"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'KzylqW8auyseP9wE' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'EyYAnHPp4XzVL5Mc' --body '{"appId": "glFCrjxqqxAYqXG2", "privateKey": "V3baMkZ9JCqBIkUI", "publicKey": "D0EE9InZNLwwAhW2", "returnUrl": "b5OHKtUv4lTkQNjx"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'hXdj1CG0EBgst9Qu' --login_with_auth "Bearer foo"
platform-update-checkout-config '8Ofl2oB8VTjF0pD3' --body '{"publicKey": "NHU8iYUOtG5gbQSK", "secretKey": "W2MdgCH4bWxRF6fB"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'Pa6GOuV5z0p8jaJs' --login_with_auth "Bearer foo"
platform-update-pay-pal-config '2duQqawPrxi6F4el' --body '{"clientID": "hy9CZ94CAUVW8FoE", "clientSecret": "f8tjCjWc22qqDfNz", "returnUrl": "59jHwSDQHadmAo0l", "webHookId": "zhPm7RmaOr6TLwVy"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'E42ApAb7CKt79wAo' --login_with_auth "Bearer foo"
platform-update-stripe-config 'pZL9Cw6K9h55mwUv' --body '{"allowedPaymentMethodTypes": ["hdBOgumV4wAsd4if", "Gd0bkWrlhtfTywRW", "4fmg6btk3mAO4EtB"], "publishableKey": "0hn2x1oTOX5gBQlV", "secretKey": "Dx9neFHWhDRJtyYE", "webhookSecret": "t7ygZleAoUuVKneo"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'O10ytPdJ8SY3qoog' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'OxoPYvdIBJYyGURj' --body '{"appId": "EjnslEYM8ngVT1ew", "key": "VxvgAocOqsd5v5n7", "mchid": "eXCo9gZWdxfIdW8f", "returnUrl": "NAM5YdHivK2Q0Wwo"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'lQy037hJMOEv5W0v' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id '25yAObZIbrA8XAKK' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'WMDebehSjpt0wrfW' --body '{"apiKey": "PXaI1Jb75o2MFOa6", "flowCompletionUrl": "xgPt69QROGDeJCyH", "merchantId": 43, "projectId": 95, "projectSecretKey": "yx5I0euBsccHPA2v"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id '9XP9enfEX7lloLgI' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'YqxFfSNJlHCjxLNn' --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "py9ZVlLIFwLgT78n", "region": "ootfUs9559ilm3ca", "sandboxTaxJarApiToken": "uhrw9Yn2z5cnbm7z", "specials": ["WXPAY", "ADYEN", "CHECKOUT"], "taxJarApiToken": "4yBTw3wfNGyWf3Vu", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config '7Bq5bcfPW4pPZB9Y' --body '{"aggregate": "XSOLLA", "namespace": "ltCxyztUnj17t3gH", "region": "BXvjvziexzOLbOWb", "sandboxTaxJarApiToken": "tcJUxM3AWyDkA5Lm", "specials": ["WXPAY", "XSOLLA", "PAYPAL"], "taxJarApiToken": "T6kulpM4SRtUE5P4", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config '8lMlY8UjprhCxhzW' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "6ZM7LkTVrtVJZVhx", "taxJarApiToken": "CVdjPutJ8dkAVOJ5", "taxJarEnabled": false, "taxJarProductCodesMapping": {"uc7EpiQEzz5N5osR": "YO7wbYh7q02W8tkT", "URUFmqNc8xhQqptc": "cNorRls7EC3nDnhF", "vDlFd7iyZpvWVJFK": "6ZuvlzGCII156hIg"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders '0g8HIxpzm9AcFhH4' 'ZlYY3rEuHMWwQNmC' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'QmGCF963CbsOawlR' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'BQJH6fNekhk077gx' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'aj55huTA6AvmW056' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id '7BFqbrPIuxKmBXLi' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku '6GpnqAeMvg3w0FQ1' --login_with_auth "Bearer foo"
platform-public-bulk-get-items '520WM3TxWXSdTiKd' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["va2UREoBSFtCLy2C", "qgCG7JwJCDqkzOdF", "wLJpIPxzLE1V9U1N"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'gpH7Oc44yjRdfqZg' 'v34GqqjelcN0GJmP' --login_with_auth "Bearer foo"
platform-public-get-app 'wUTWMx0MiPAjnWIh' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'FrqSn4erXEtU1CaD' --login_with_auth "Bearer foo"
platform-public-get-item '8AqsMCGBNhmUt6fz' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "YRn85brTu8F7cuCP", "paymentProvider": "ALIPAY", "returnUrl": "nBA9xNIJVuMz04ev", "ui": "SdE2FMcKd7c94rEm", "zipCode": "IYuAT5OAcUwYHGmG"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods '5rNDBF1oU37vjfyX' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order '5YLaM0wmi0i1WABB' --login_with_auth "Bearer foo"
platform-pay 'bq8IzZsMFLX9ZhFX' --body '{"token": "cFtfBS3ZIHofhwyM"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status '6Bw2sFGQ5DQoDwzr' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'XSOLLA' 'POZZnV3zR7YxSu6a' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'ddocg10Hy9jx7gBH' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'TOHHArjld0LnREsr' 'rB2pJ7V8BSrucjO3' 'WXPAY' 'Ismj4h625dIsMKWB' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'xF9RAIrI81ZR2kNz' 'ALIPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'Fw25b9qXzlIK2G6A' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'UjBCdf0Rp5e5IvFu' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'N1oUsCnBmGMx5F6E' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'hM3dKvIG9MR0hTIN' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'vq1VR9SJUfQEX996' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "Mh1sQ3Dw3uyjgQNA", "language": "vvp", "region": "jrr1OL606QpqCgxt"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet '0NgDSj1T6EdeYFmr' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'LT0HbvS4kSSt3CyD' --body '{"epicGamesJwtToken": "gf6eFAiqSkHi0BR2"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'ElF6z6eJKuOW61ak' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'RFizqxCmudSXivAL' --body '{"serviceLabel": 10}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'n478mhb2I2yBJeCJ' --body '{"serviceLabels": [15, 13, 31]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'uuyIagSSzEL8H4eu' --body '{"appId": "LufhQj2KP3LLxl9H", "steamId": "s2L2wlpKBVURxHef"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'z77a9fntCNiHBRUN' --body '{"xstsToken": "CPSre5GmZzCQwilS"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements '3IxSjlyvR9PxG9Lj' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'i2Vc88W8aLjIxVGp' 'dOqguxvRwI9ZBTip' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'MRlhK9DMMaI4ryVD' 'GAME' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'rMSP31wAkVH75Ucm' 'NXK5RqcIo9lpz9oM' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku '52vHPlwVV3jlPKDE' 'YahnlLJaLCvjRKKX' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement '1brmkJDfdngbQD3p' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'O8U3W94Z8IW2MAL9' 'gYHEV3wnTZTvYYf4' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'ZFuV6L2AldoWWRN5' 'wNYlFiliYmBrqrOc' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids '0NIligBrOkBljwRE' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'Njt04ZpyTTZG1LxL' 'dySvyVqY8nxBZbHc' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'PHEFuEVP9bF07gnW' 'DULkJPQR0UJMr8ou' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'ccGH0B4LCe2h0iFC' 'CZgFWs5s0nT89A88' --body '{"options": ["GDOUClGyzYgnYTdi", "m6PkRoq5TO65KWh8", "ztRJkXxUAj3jzZvE"], "requestId": "aY103YUIMuSjDHz0", "useCount": 52}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement 'l0l1jaOAMCzbsoIg' 'mKwwMDQPjUIosq1l' --body '{"requestId": "6xo0D4JRbNqO6IuP", "useCount": 86}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'EC3ENuvD8OPsp5Z3' --body '{"code": "ez84KVB7HeWPnVeF", "language": "ZD_fw", "region": "UoezOLw8C1c5bBB3"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'XZ7ColKwlsNvtFuu' --body '{"excludeOldTransactions": false, "language": "rN-kzEh", "productId": "lD40xxIyVwYjn6dl", "receiptData": "C9Kfh9gHuloyce0c", "region": "LJu4ljPWlCWTuGO8", "transactionId": "MnfOQu3wdT4Aodp9"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory '5o1RkX7iW7VpCngW' --body '{"epicGamesJwtToken": "Av5DAG8dPdkKgQqj"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'yzUZR2rFIAuALNhN' --body '{"autoAck": true, "language": "ZkTR-964", "orderId": "ui8a6jOflFJlZEhz", "packageName": "1QDeh05hj92bwVVx", "productId": "J62Q5AOAOyL65cPa", "purchaseTime": 83, "purchaseToken": "48ss7rBnvQHAM8gS", "region": "dIybKUByHBzfvgtR"}' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'TPPzwJmKaLCx3gci' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'dEALWe6RG5wWznu5' --body '{"currencyCode": "AjwR1Z4fU7ICcaQt", "price": 0.3356205862063102, "productId": "uKUw3dUwWHhQW3I1", "serviceLabel": 49}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'UYzJxnOyvqmswrTo' --body '{"currencyCode": "yBIQumxDfAxNqCUt", "price": 0.13432214888434324, "productId": "zYM97ebZcYqwfIHP", "serviceLabels": [100, 93, 78]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'i2F6AyUX8w77riPl' --body '{"appId": "PgJcLbeQf9MICxX7", "currencyCode": "xKyCfgwSPz14asyO", "language": "MG", "price": 0.9557577736753897, "productId": "7gN8K1FlNkgbFE8U", "region": "4meK5grmPBsFH71V", "steamId": "rhsISYtegQbNA2WQ"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 'rHTkJT1VkChD3n0c' --body '{"gameId": "1ryAkRvdPR8gx2rX", "language": "DPCL-qsGu", "region": "LMehg047axU5ktNy"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'wRIvO2Sgz30hejqd' --body '{"currencyCode": "ktHIO1VdtMSews1T", "price": 0.2853906442681673, "productId": "U4FhAfKDcDG5bMTb", "xstsToken": "a1tUlFGcP6eL7EpW"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'tPifmO0JK4dP1aZF' --login_with_auth "Bearer foo"
platform-public-create-user-order 'iSkmhwVVMGkXNwMY' --body '{"currencyCode": "wFyljy5bYQdQ87hU", "discountedPrice": 69, "ext": {"ypRW7fNntaIEtDI6": {}, "MbhxkQdezbmf392e": {}, "rsoZ2KbMb5jal0ru": {}}, "itemId": "ZmBXlGSp85q6fuGf", "language": "uA-niYN_jX", "price": 71, "quantity": 52, "region": "3pvHKDaWhTN1qyxp", "returnUrl": "UzWIZWJTDzWguhuj", "sectionId": "w1EoR58uCVldefon"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'HJZAiX4abmqqi90K' 'TWwZk0HGeJNaBjVd' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'MB5kMzKycYrhr4Fn' 'NzdT4pWwIVXp9avU' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'r6IydpXW0MO0eT9o' 'kl6MlWOl9feWO2bm' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'OikTBJHTEm5PSeyo' 'd5L6OooYoQn9iHEq' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'WO1cVCUIOx90FQdw' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'Li3GOQkLtpuRNeT1' 'paypal' 'ZNonMrPkzUe9SglA' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'JGyZS0I8FevJiT98' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'HUBp56Q4WETxtGMs' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription '5tPKPuK0K4PiMDTR' --body '{"currencyCode": "7LxihuOn57io0d9d", "itemId": "G3yzaNbGeASX83SL", "language": "kk-638", "region": "YMxAndOj5O6IBwXJ", "returnUrl": "jgQjgLoJyqwFVBd1", "source": "ZjaRXEdWgS12bSbP"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'gOCWUogizeWOPUMr' 'qgEIsMwNbfti0LoT' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'BcNzyoCSw1t653G3' 'ydYmGzvx9bSqqyAP' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'ha5b6PQTPTytHeeX' 'o7gOFVLZCBWuVIRO' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'ZuqdJBi8pkn98VtL' 'NkaIQJfkFDhSeSGX' --body '{"immediate": true, "reason": "unixlEAHZzHs8x5o"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'PSkZFIV2feXnTRlz' 'AJy9oFOHB2KEsIdt' --login_with_auth "Bearer foo"
platform-public-list-views 'ozVltBhoXE4wgcYT' --login_with_auth "Bearer foo"
platform-public-get-wallet '5CdjaJuUzFIeqaVr' '1CE1gu6cYuzC77J4' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'irvZ9tktWLtDdlmV' 'GK6iolEw6IIpDc9X' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 '5ijmtDGvd9ESdY0e' --body '{"itemIds": ["TkBWA44Qqsi5yOjv", "l5sRN2ENn1RLi5iM", "Pnbg7o1zYpqUsliP"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 'yXZGYIW5ZDtWbdkz' --body '{"metadata": {"PP47RcUIi2CoNj4E": {}, "G2emxKQk8cBrt5E8": {}, "k8rzDZ08j6ICP75c": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "NCDd6jW6fjtBcO3f", "namespace": "Wq9qfmBv0XgJB6a7"}, "item": {"itemId": "uykADFpinFcH2ZMS", "itemSku": "YijqEuMfuYFUS079", "itemType": "tOpZYM1XV0Op0dam"}, "quantity": 51, "type": "CURRENCY"}, {"currency": {"currencyCode": "pYaKTz1gcE2XCwTk", "namespace": "RUIX6IFHNmB9mYBv"}, "item": {"itemId": "tOwxjqyrjDApeN5e", "itemSku": "AfRqSgH5xIuBTYOd", "itemType": "svNyk52MQFkVVEf3"}, "quantity": 78, "type": "ITEM"}, {"currency": {"currencyCode": "7yPgG48bk6PwH1td", "namespace": "EAJSqXA0Wv0zWGvk"}, "item": {"itemId": "c6byp3mvyYT3GuaZ", "itemSku": "VTxBlw1IWeXKFT4r", "itemType": "fSbbSlDPGf9Fn32S"}, "quantity": 72, "type": "CURRENCY"}], "source": "IAP_CHARGEBACK_REVERSED", "transactionId": "kEfkAcJTMS4pVRcC"}' --login_with_auth "Bearer foo"
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
echo "1..420"

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
    --body '{"context": {"item": {"appId": "HIGfmCMTr9ACnI2s", "appType": "GAME", "baseAppId": "veQSDWnMQGaYRxFW", "boothName": "ia7yJ2d87XjA0ajv", "boundItemIds": ["b7JcGUFgp6LkyXpx", "dxL0a9VDhrqWCTXO", "JeFxhgTwyO51CUpc"], "categoryPath": "xQUpyFgZhNpOTE4t", "clazz": "oH57yr01N33p1Gha", "createdAt": "1980-10-01T00:00:00Z", "description": "twQFUEbTPQ8p7VMl", "displayOrder": 47, "entitlementType": "CONSUMABLE", "ext": {"EXnqHwMyKpwphjUX": {}, "vM1GqMkZ44UXgdBq": {}, "tJaRyDlP9qIZJ5Kr": {}}, "features": ["x6KkHagEugKJxkU8", "g6ujKvq0CIa1YCK9", "Y58COtTNjnNSikJD"], "fresh": true, "images": [{"as": "lMeQprfgLGkHX1td", "caption": "BjKmCBXETZwqdzAX", "height": 77, "imageUrl": "8DikGk8cWiX44azS", "smallImageUrl": "HcwicUVq2XPljTZj", "width": 41}, {"as": "R0yZSVQ8SSeJ4qy4", "caption": "PIKleuV271bwZ4ni", "height": 76, "imageUrl": "CKradJmJFUsU418v", "smallImageUrl": "AlmfGg9NO1Z2DvnA", "width": 49}, {"as": "c4Xcae7VKl0ARzGE", "caption": "ArlfE1NSmtcADoZv", "height": 6, "imageUrl": "uhdw7C9Bx1LQOTCb", "smallImageUrl": "APLC3iqrkyJFOVae", "width": 46}], "itemId": "KPNlG7rEXi6LEqJE", "itemIds": ["RpbxEq07txnvZZeA", "f7QBuZK5GJlBncg8", "tQnJOKHC16xjJZ4k"], "itemQty": {"iU3N8556ll2LQWpd": 63, "lam2EefVopbpPhsa": 27, "yRyTdYBUljvBzvYN": 62}, "itemType": "MEDIA", "language": "tfgBFikt18cQ677S", "listable": false, "localExt": {"yd0SarkhltUxgbN5": {}, "eElQNESFLD8hCc9o": {}, "nSNjbQEqFGwnDG8k": {}}, "longDescription": "z4kvEv6tNjGRhrmR", "lootBoxConfig": {"rewardCount": 55, "rewards": [{"lootBoxItems": [{"count": 48, "duration": 84, "endDate": "1993-02-21T00:00:00Z", "itemId": "GeIKGlCJmDXpjyvL", "itemSku": "SHB1y3klHuAGnidO", "itemType": "yGuS0OG7ohiL2943"}, {"count": 59, "duration": 19, "endDate": "1976-10-12T00:00:00Z", "itemId": "rNhEdxd24ZKfvMf1", "itemSku": "T5FzYMf1jaCgZosn", "itemType": "tPzP1vXXB92q150W"}, {"count": 62, "duration": 71, "endDate": "1985-02-05T00:00:00Z", "itemId": "OHaso53W3U2Mu9ZG", "itemSku": "MWou1U0RVCf3gMWD", "itemType": "AodCKqfqzeexHA70"}], "name": "NgJTxjtzgO7W3taR", "odds": 0.3394641673370188, "type": "REWARD_GROUP", "weight": 6}, {"lootBoxItems": [{"count": 14, "duration": 24, "endDate": "1994-10-23T00:00:00Z", "itemId": "cA71dtqtSUN4zvBz", "itemSku": "Gh3mhIDNuMBZegHt", "itemType": "B9uTCiiIoMZCjGiO"}, {"count": 24, "duration": 73, "endDate": "1998-05-01T00:00:00Z", "itemId": "qxRyQ2pi7xuAufJa", "itemSku": "kIPXOQznHZTj8oYf", "itemType": "WObyNJKVSQsaCoko"}, {"count": 67, "duration": 97, "endDate": "1983-05-17T00:00:00Z", "itemId": "np6xcqNKJnAhrSt9", "itemSku": "6OaARAjHLGV3sNxS", "itemType": "8uLBZiVRYIyQLcsl"}], "name": "TEqgVNG8Aqktgvjw", "odds": 0.642831223212435, "type": "REWARD_GROUP", "weight": 54}, {"lootBoxItems": [{"count": 53, "duration": 45, "endDate": "1991-10-12T00:00:00Z", "itemId": "QOcAqBj0bXhOr9OH", "itemSku": "t6zx1i2W3GY7tdh8", "itemType": "hHlQyMlgfkTsAThL"}, {"count": 50, "duration": 0, "endDate": "1974-04-04T00:00:00Z", "itemId": "rshpmb1C9Al7eWrb", "itemSku": "NRE0xyYPUZHyLGQ5", "itemType": "2IjGpRJCUJpscOTk"}, {"count": 33, "duration": 61, "endDate": "1994-08-11T00:00:00Z", "itemId": "SJ04c5MGInO4yznh", "itemSku": "2YpZvvmziSSiSpXe", "itemType": "WOGayfRkQvoN06Sp"}], "name": "NOnuSksfm7hcIFdk", "odds": 0.05282215106588595, "type": "REWARD", "weight": 29}], "rollFunction": "DEFAULT"}, "maxCount": 1, "maxCountPerUser": 53, "name": "BooTawHLMxhx9nC3", "namespace": "o6pXU5MDJLCB6WbX", "optionBoxConfig": {"boxItems": [{"count": 100, "duration": 71, "endDate": "1979-12-22T00:00:00Z", "itemId": "ZBrdTnGrwHeWoQXP", "itemSku": "FWFaKbDgrGkv8SVw", "itemType": "LyS4VbHJvD0lL7aZ"}, {"count": 96, "duration": 91, "endDate": "1996-06-30T00:00:00Z", "itemId": "9d1Idud8bjYeBVMr", "itemSku": "7zHYmRE4X36KUOdf", "itemType": "EmoIYwSxxAsfwDMi"}, {"count": 44, "duration": 99, "endDate": "1971-05-16T00:00:00Z", "itemId": "CLbh8t0zPkQWRUlg", "itemSku": "E0kxzFMq9ttbEHAE", "itemType": "V7C65Ans9SquNSJI"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 50, "comparison": "includes", "name": "dUdYy9Y9OCSmmT3W", "predicateType": "SeasonTierPredicate", "value": "iANv2Ar8yXV6qf6v", "values": ["lQ5Ao8TITYiHSR2S", "Wi8HZ6C0VJ0fK2m6", "5SgcJPZPUh2nHQwp"]}, {"anyOf": 62, "comparison": "includes", "name": "siuITRMSPOUfWQwr", "predicateType": "SeasonTierPredicate", "value": "ZfdKp9q4nXuK0tJA", "values": ["Yror2XdtSCG7ZExO", "oIpWzacOvwUsnIbQ", "M3ZAtyEWKWoZRUL7"]}, {"anyOf": 45, "comparison": "isGreaterThan", "name": "S3HaMTXAX6y0STTN", "predicateType": "EntitlementPredicate", "value": "sBEijjjpvSzGkED0", "values": ["1QSmsspn5sNfifK6", "oweFYDBPyd1jJBxb", "rbuFay9PXgEQS487"]}]}, {"operator": "or", "predicates": [{"anyOf": 23, "comparison": "isLessThan", "name": "W2HG8LAiIzuo321L", "predicateType": "EntitlementPredicate", "value": "JDHIIxTIGI5EssYl", "values": ["wD8O07L9GG1uenDi", "OGQGlHm8VTN56tJK", "lIqjJzuQ8GglVgxj"]}, {"anyOf": 14, "comparison": "includes", "name": "ceaLdgPZI0fKW8Le", "predicateType": "SeasonTierPredicate", "value": "bzcfzIpL2pWB4Xsd", "values": ["rxIF6kEAmKGNEmFP", "DAm8XIleiujtv2Nd", "cUALNziO9Bz2wx4k"]}, {"anyOf": 88, "comparison": "isLessThanOrEqual", "name": "oHZogW8lBvniHdAR", "predicateType": "EntitlementPredicate", "value": "bSlfVRlAI8F2f3mE", "values": ["J45L0Ze3YamxKDSZ", "vHGIEplRpcHDWcIo", "v09kAA5hnQtd4bci"]}]}, {"operator": "and", "predicates": [{"anyOf": 30, "comparison": "isGreaterThan", "name": "UiJSCbG4UmG3TkMT", "predicateType": "SeasonPassPredicate", "value": "gPuNtOv3jbhGBuW8", "values": ["OTURzzAOIBarB7kc", "KcyPMfDWSEEpKoJl", "mhMQUCx70QjYbzem"]}, {"anyOf": 9, "comparison": "isGreaterThanOrEqual", "name": "mEIX40XOUoLOa7oD", "predicateType": "SeasonPassPredicate", "value": "xx3c2bUsO7FP8RmO", "values": ["JaMxPDIJ5hFQHumF", "stZAGDgiVsV2Ottw", "vPKqupHj72TlLs96"]}, {"anyOf": 17, "comparison": "is", "name": "ABOgTKtnaA7O35Ia", "predicateType": "SeasonPassPredicate", "value": "iiItrSrEJMBAIwTL", "values": ["2FMwfWNCbN5GelVO", "fqRRaZozM8xCBoaS", "krMDFQfpQ9o0GJMT"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 65, "fixedTrialCycles": 70, "graceDays": 53}, "region": "nsCl5k6Jxh5mkmQz", "regionData": [{"currencyCode": "Kg0jWCjpGwh7pLAi", "currencyNamespace": "5JmzvM6JFKB8ikHp", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1999-11-28T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1993-11-18T00:00:00Z", "discountedPrice": 11, "expireAt": "1993-03-08T00:00:00Z", "price": 1, "purchaseAt": "1996-08-23T00:00:00Z", "trialPrice": 63}, {"currencyCode": "zcxmgNfTHu3vkZt9", "currencyNamespace": "FgWckjNpHhM2ZXp4", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1993-05-04T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1974-04-17T00:00:00Z", "discountedPrice": 16, "expireAt": "1994-08-17T00:00:00Z", "price": 39, "purchaseAt": "1994-05-24T00:00:00Z", "trialPrice": 72}, {"currencyCode": "S7Gi9Iigk9vamO7Q", "currencyNamespace": "2WQwSWqSs05rjISy", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1998-06-03T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1984-08-08T00:00:00Z", "discountedPrice": 73, "expireAt": "1983-01-31T00:00:00Z", "price": 21, "purchaseAt": "1976-08-31T00:00:00Z", "trialPrice": 96}], "saleConfig": {"currencyCode": "GV1SCkw8U0d4FvVm", "price": 85}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "SQ8Szi1IrGidRmR5", "stackable": true, "status": "INACTIVE", "tags": ["RJhFwxmkGfPI3j4l", "uXQuuLtYa86kvL6c", "BZQssUUXOsXMNdvW"], "targetCurrencyCode": "1hbvGenRbm3QtsY5", "targetItemId": "WaKM5YY6pYrmeMIH", "targetNamespace": "LS8egV8XhgDjbrum", "thumbnailUrl": "8UxcutmVg8APWKxo", "title": "j6MF68VuKDoklYmk", "updatedAt": "1983-06-10T00:00:00Z", "useCount": 59}, "namespace": "9TXNhN8y1PVriIyv", "order": {"currency": {"currencyCode": "9kjuiAGiXx47etMi", "currencySymbol": "kLFggYDc2FMbzZoe", "currencyType": "REAL", "decimals": 76, "namespace": "gnKf2Yifzvr9OqTs"}, "ext": {"InGzHFpFXYJtHtqw": {}, "oIwQBeIALI8JNIII": {}, "4jrzrPsuMziNM8AB": {}}, "free": true}, "source": "CONSUME_ENTITLEMENT"}, "script": "iZH3ngnitURdMjZL", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'CaeklQcFY1QIk1h5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'EKvMGd6hQ2mHjmLu' \
    --body '{"grantDays": "4oFlReHy0JyZv7ho"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'nqeiGTTqpgVsY1kP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'NdJiJXB3yjNUPIfv' \
    --body '{"grantDays": "oXRO0CkW1ZcgUSbb"}' \
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
    --body '{"clazz": "nffBWRaJN1SjCFLD", "dryRun": true, "fulfillmentUrl": "JfAhJGwSYEZjEb0P", "itemType": "INGAMEITEM", "purchaseConditionUrl": "1znEWw9p7g4UsQCT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'SEASON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'QJ4Kj7Qyo9tUptiy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'ZzRX8Y4rxRWZPe4Z' \
    --body '{"clazz": "LAQWuBJwxObZqMGx", "dryRun": false, "fulfillmentUrl": "1Bz3wM3BI51etn17", "purchaseConditionUrl": "OcmSVHZ6wtPVAwgv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'xYxXJTduZp1nNYHR' \
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
    --body '{"description": "Emm1cBuaRaGeM8yx", "items": [{"extraSubscriptionDays": 88, "itemId": "fWRbmtK7MTxcCWnM", "itemName": "iCLsjroKHPApA8Gs", "quantity": 67}, {"extraSubscriptionDays": 50, "itemId": "wyocvY9NePjLJQJX", "itemName": "wUApJWohXn01RB7p", "quantity": 43}, {"extraSubscriptionDays": 61, "itemId": "7BaONXyE5fIDbsMi", "itemName": "48xOYVvEcEm53BYM", "quantity": 56}], "maxRedeemCountPerCampaignPerUser": 3, "maxRedeemCountPerCode": 1, "maxRedeemCountPerCodePerUser": 50, "maxSaleCount": 5, "name": "2J9vGOUeSeGb02vD", "redeemEnd": "1992-06-04T00:00:00Z", "redeemStart": "1995-01-31T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["v5VEdIG82dpIbfxV", "FfdvKQVgPQw3MVXe", "4xBPDWHRHCCVDBRj"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'UQWYVxGQVFJlDDJ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'z4Pb5jyGID39Ung1' \
    --body '{"description": "D57FjYKlJiRIvhej", "items": [{"extraSubscriptionDays": 18, "itemId": "7OSPwdzMSmrSvQds", "itemName": "AdTUGpd8KFrXKFA2", "quantity": 13}, {"extraSubscriptionDays": 4, "itemId": "djQCYoE8b0CZetLf", "itemName": "pFNyp7375rhOmR4z", "quantity": 65}, {"extraSubscriptionDays": 92, "itemId": "joJZVKZjOD2ePKAK", "itemName": "YjJMVnYj2yKqavWp", "quantity": 49}], "maxRedeemCountPerCampaignPerUser": 12, "maxRedeemCountPerCode": 7, "maxRedeemCountPerCodePerUser": 9, "maxSaleCount": 28, "name": "pM3ap069B9Okr0xJ", "redeemEnd": "1973-01-16T00:00:00Z", "redeemStart": "1993-04-13T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["2zkGYTr9yJIveX52", "r6Inl9VTJB9Al3mn", "2DsHDHzSVJzhU5Z4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    '4zgZ1fieLdl3Y82D' \
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
    --body '{"appConfig": {"appName": "Oj5kPuNRZZaUccuB"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "ep9n7b17fsblalJr"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "sGpmmUeMikW3s54z"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "Sr0O4rEZTbFDj2L2"}, "extendType": "APP"}' \
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
    'fFvWenMNV00KVuLF' \
    --body '{"categoryPath": "9WDnGO3bpQWmnS52", "localizationDisplayNames": {"ZuuuI7F1xpVrcoXz": "SOEGEDYfiGPYo2K3", "dN3YBOJfvV6SuHov": "oQlk5wL2oXDZ20Bw", "2H4tz6KUC4jXGj2G": "0GZ3JBYi9bBKBRpd"}}' \
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
    'bLCiwxOx2XQn94xP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetCategory' test.out

#- 32 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'qXhqeNMDGA3O5hQA' \
    'l6U2g9imVMh3i7j0' \
    --body '{"localizationDisplayNames": {"95rDL6lEuB1ZIMIs": "1dFvYokH9t2u8ZZn", "yHKkk6Gh25tEcX9G": "egDnrYz0GFpSVdxF", "sXAp1roclyXllFit": "PamSKRzDIZgSk6su"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateCategory' test.out

#- 33 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'S90ZbDdmjU11QIZt' \
    'kSn8QRbA5V4gjWv1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteCategory' test.out

#- 34 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'W6cqnvSuKswQ7vH8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetChildCategories' test.out

#- 35 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'GScnP5QzRBY1Uref' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetDescendantCategories' test.out

#- 36 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'gmVFBVz4KRCU0p4j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'QueryCodes' test.out

#- 37 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'It01gzH17IcfJyGu' \
    --body '{"quantity": 23}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateCodes' test.out

#- 38 Download
$PYTHON -m $MODULE 'platform-download' \
    'JdrqHIsJ98WRjqYi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'Download' test.out

#- 39 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'eXRthQZvzRi7pqpa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkDisableCodes' test.out

#- 40 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'jYEHs9TIkcnrJ64B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkEnableCodes' test.out

#- 41 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'OKqywS6DKNSeb2UM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'QueryRedeemHistory' test.out

#- 42 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'WOgVeYkCvqq0tO15' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetCode' test.out

#- 43 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'pEVG7sNihxpuuL7D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'DisableCode' test.out

#- 44 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'JCxvzZnh8oBAk1MN' \
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
    --body '{"currencyCode": "CAUmdnLaVRUu5Vbj", "currencySymbol": "wPa9rYgHaxeTT3eb", "currencyType": "VIRTUAL", "decimals": 60, "localizationDescriptions": {"aYPNBp9wA4LxO2n7": "WJQFzBCD9S03D7JL", "sIM3VOMRvvqkXDMP": "zOB08tpk0qhZath4", "b4HtwEYX55pJNTX1": "sDjSWiSXsV5rJ8eZ"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'CreateCurrency' test.out

#- 50 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'XZ1TLMZnNL3DQK45' \
    --body '{"localizationDescriptions": {"IAtbyUDDSJSV8pzl": "1lfIR7jnetIJPGOb", "yWCLyFPHaxkKxEDv": "Soi2X9SygvMG8QAa", "WUhIguMvKDOrx0wQ": "XKEroyKz2reP63EV"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdateCurrency' test.out

#- 51 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'HT72VuhoGP2IFXGU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'DeleteCurrency' test.out

#- 52 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    '5hujEfCMt95DEjxq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencyConfig' test.out

#- 53 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'hgYqmMqIdlRrQmuI' \
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
    --body '{"data": [{"id": "LkeRUafUDP5b6BWf", "rewards": [{"currency": {"currencyCode": "m7cYCpDIJG42ILhU", "namespace": "oCh8lmKKocC5Ea29"}, "item": {"itemId": "JhfFGN964J8WOgsA", "itemSku": "j2Rmf1DXvAIkzTRN", "itemType": "RVyeEGu1ICOCmLAm"}, "quantity": 4, "type": "CURRENCY"}, {"currency": {"currencyCode": "aEFBKgy92LYqtQcD", "namespace": "N7OMCehk42acy8ws"}, "item": {"itemId": "WaPyppR3ztPSALA8", "itemSku": "LlV2sccbVr6HSiXV", "itemType": "zrG4EdKn8eypTzI4"}, "quantity": 21, "type": "ITEM"}, {"currency": {"currencyCode": "DG0ZNoJvvi4Ys50i", "namespace": "E7IjZoDzMmMgoMxZ"}, "item": {"itemId": "Z9AutWDfVOINhql9", "itemSku": "CdDX4xiHpdfKH35R", "itemType": "WUUVEHCB5wzF6oLI"}, "quantity": 35, "type": "ITEM"}]}, {"id": "AwjAsgo51XHJBG2P", "rewards": [{"currency": {"currencyCode": "myeFaBiT3SyLHXZS", "namespace": "yfjukWmkfkiF2GZP"}, "item": {"itemId": "uyWBVH66JU1IICVN", "itemSku": "NRV4lBToTcn1l44e", "itemType": "brKEKdeo779KG5yC"}, "quantity": 52, "type": "ITEM"}, {"currency": {"currencyCode": "9jVs1lYK1Mx9rEFk", "namespace": "Dqb31AZzwiQBaGdS"}, "item": {"itemId": "41VRIyAHjYxVhCbX", "itemSku": "beBEoTlfR33jqIRo", "itemType": "XcCPaLXJM2B9bMoh"}, "quantity": 21, "type": "ITEM"}, {"currency": {"currencyCode": "WIT9TLnuMLNJAEk3", "namespace": "A6A6rYiIu8eLdWyk"}, "item": {"itemId": "hBxLFnKnSYC9yyBY", "itemSku": "epIqtrikdAbdOT6i", "itemType": "SRdEg8NYuc4q5sJV"}, "quantity": 52, "type": "CURRENCY"}]}, {"id": "e8WPQGPclChxLfbX", "rewards": [{"currency": {"currencyCode": "rH6f2GDrNbLOjGz3", "namespace": "4ct0ctEeH43wYuLn"}, "item": {"itemId": "I7cTzIUERPlQI99h", "itemSku": "Mc4NbiJWP5r9EwbI", "itemType": "GMGJ70P9IqAyNlZ2"}, "quantity": 82, "type": "CURRENCY"}, {"currency": {"currencyCode": "wFSebBkXkaxtY97T", "namespace": "MJH8bO4GDHT6ZaUU"}, "item": {"itemId": "kvlTKAhrxqHw7f81", "itemSku": "3qNjzlcxXsmGGcJh", "itemType": "auxfhVKIbRvUnyEl"}, "quantity": 69, "type": "ITEM"}, {"currency": {"currencyCode": "PuQE3Gc8bY4IH0OX", "namespace": "HZP6VVB7qjDHMS49"}, "item": {"itemId": "dkv8vxyg6giNKzeF", "itemSku": "nlgGRgYK3SeYvULY", "itemType": "NIhs5PZGTJmgofq7"}, "quantity": 27, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"F5Ch8J2Qs990APOU": "4hcdwlnsTap2RJpH", "tncLywP3WlLmNdQG": "k6vneHoB1PXO1vT1", "AonFO3syvkYd78Gs": "JGLbnb4Nvw7fnm4M"}}, {"platform": "OCULUS", "platformDlcIdMap": {"urBWW5jSJi0seeGJ": "IqnatME8GnNWfAY1", "yY6D1Euusf0eOzoS": "yKttYwUUlMRG8vO0", "OSsJmhOJDUyyag9j": "BDJFJGOEiWJ8cLrr"}}, {"platform": "STEAM", "platformDlcIdMap": {"FpfccauYDc86pxK9": "KhF4KRVPoIuzAuQN", "jAfvOE2cVjFp1CeC": "EfaV4ZGGwbqOB4mD", "3E7AFHqlTTkL8cmp": "A0sZ0tgeR4UV5SMZ"}}]}' \
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
    --body '{"entitlementGrantList": [{"endDate": "1978-09-21T00:00:00Z", "grantedCode": "GmBUjfEU9vL8H96t", "itemId": "uVfQwYIqDWqbPmwQ", "itemNamespace": "w8J7na1POTXhXLRU", "language": "PU-JROI", "quantity": 6, "region": "POiTVzAeQq6rnWJo", "source": "OTHER", "startDate": "1987-04-26T00:00:00Z", "storeId": "R9Rz3HVP2Y9WqSRi"}, {"endDate": "1982-09-08T00:00:00Z", "grantedCode": "V3UZg0UJLPMkeUwa", "itemId": "6OVKxCMxuf0P9r5f", "itemNamespace": "6fdmyi4kQnOFbBtv", "language": "XVb", "quantity": 34, "region": "UgtONCIoZ2rkomSj", "source": "IAP", "startDate": "1977-10-23T00:00:00Z", "storeId": "AIMo6EW9QhzU8FwQ"}, {"endDate": "1980-06-28T00:00:00Z", "grantedCode": "ZpfUoyoiUjmqOyQ7", "itemId": "ammFgHprdM9viFWm", "itemNamespace": "ezrQOWH03zyr7kRb", "language": "oMB", "quantity": 49, "region": "RiD7djt1VeOFBDA3", "source": "GIFT", "startDate": "1987-06-27T00:00:00Z", "storeId": "020QpWTNKsVyK8EU"}], "userIds": ["8JYc00PA2ef1jFeq", "Q8mBpTuvLTJUzwXJ", "FaWW3JVdYpfHOYoL"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GrantEntitlements' test.out

#- 63 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["va2c4JscEQfBFZXc", "SXpU81S5H9XsZyvZ", "OFJ5RrFZYcwfQ1Q2"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'RevokeEntitlements' test.out

#- 64 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'BbcjSpv6Nt1oz4td' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetEntitlement' test.out

#- 65 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'QueryFulfillmentHistories' test.out

#- 66 QueryIAPClawbackHistory
$PYTHON -m $MODULE 'platform-query-iap-clawback-history' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'QueryIAPClawbackHistory' test.out

#- 67 MockPlayStationStreamEvent
$PYTHON -m $MODULE 'platform-mock-play-station-stream-event' \
    --body '{"body": {"account": "gfKu4bmK8kOKcEoC", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 89, "clientTransactionId": "Ii2SNZKqlJZsdnY0"}, {"amountConsumed": 62, "clientTransactionId": "DIyosprZPBaERb7U"}, {"amountConsumed": 83, "clientTransactionId": "kK4VctUmDhFVNa0J"}], "entitlementId": "YzTbdnOnEarWP4nr", "usageCount": 72}, {"clientTransaction": [{"amountConsumed": 82, "clientTransactionId": "5fNESRVGeswvkzLN"}, {"amountConsumed": 71, "clientTransactionId": "LvFUBZDnVrcwbsD0"}, {"amountConsumed": 90, "clientTransactionId": "HcBxz5LpdkRCAU8H"}], "entitlementId": "hmXC68JFPdxhvBKe", "usageCount": 9}, {"clientTransaction": [{"amountConsumed": 19, "clientTransactionId": "wG66YPD4vNdENY1r"}, {"amountConsumed": 15, "clientTransactionId": "rI0T97qA1OiblWlz"}, {"amountConsumed": 81, "clientTransactionId": "LXQNqcONcJIsYRQz"}], "entitlementId": "97fRWI17eNP3Y2nW", "usageCount": 22}], "purpose": "gnSiZtChE0uof77A"}, "originalTitleName": "API5tdPeFz9pGYsL", "paymentProductSKU": "NEGrfy9qHKufJfk0", "purchaseDate": "MeG3qYJr6PuCVK9W", "sourceOrderItemId": "mDAdpLVTVsj9pDiy", "titleName": "ybXY4v7JRFMRaeIa"}, "eventDomain": "QuPWPlkxeotrNakK", "eventSource": "GvOSvpmZZdlNXdx2", "eventType": "kWmSqodNZgfQyDVV", "eventVersion": 21, "id": "0aWj58Othvd3jzMD", "timestamp": "Af40gKSizvmxts5H"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'MockPlayStationStreamEvent' test.out

#- 68 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'GetAppleIAPConfig' test.out

#- 69 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    --body '{"bundleId": "SQvRAPG9JoVSLrbs", "password": "5niXkjpkOgRCC7qf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'UpdateAppleIAPConfig' test.out

#- 70 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'DeleteAppleIAPConfig' test.out

#- 71 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'GetEpicGamesIAPConfig' test.out

#- 72 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    --body '{"sandboxId": "z5jV7NTRYld9FJJ1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'UpdateEpicGamesIAPConfig' test.out

#- 73 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'DeleteEpicGamesIAPConfig' test.out

#- 74 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'GetGoogleIAPConfig' test.out

#- 75 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    --body '{"applicationName": "0goNq8uq79Du28SR", "serviceAccountId": "RAMaQFEzppeticck"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UpdateGoogleIAPConfig' test.out

#- 76 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteGoogleIAPConfig' test.out

#- 77 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UpdateGoogleP12File' test.out

#- 78 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'GetIAPItemConfig' test.out

#- 79 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    --body '{"data": [{"itemIdentity": "SUon7awfol07696u", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"neBM8LvzgyIVzGFB": "LJ5vbC9NfLTFJGOz", "AIAqpmkDdFSs4s7u": "1VUuLmenyxTQVkEg", "5wouUKa35m8oH9zC": "fw7mCMkbvSIm7JRO"}}, {"itemIdentity": "cwVmGyrBpnTPF4Vr", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"iFSPs2ZMcVFcrixU": "LzSeTnUWGxxfnMID", "SCPr1m1Fg6tc250c": "2okDTem6o62xFY6T", "NqoLFFS4wB6Um7ir": "0n6O3vbYVjrcErgo"}}, {"itemIdentity": "ApAxyDnHjAx7rZTv", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"FwLGan2SrKckNxLW": "H6rjhRL9uxoV5Oe8", "ktlePEo1xBuRSv6V": "izgtOXZy9cQ6B074", "dTJZqeOllKQNwJUG": "tC0tAhxn1ay6ruu7"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UpdateIAPItemConfig' test.out

#- 80 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DeleteIAPItemConfig' test.out

#- 81 GetOculusIAPConfig
$PYTHON -m $MODULE 'platform-get-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GetOculusIAPConfig' test.out

#- 82 UpdateOculusIAPConfig
$PYTHON -m $MODULE 'platform-update-oculus-iap-config' \
    --body '{"appId": "PYWHODRb6skOj0lf", "appSecret": "YFGnQCAWidWPjYgy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateOculusIAPConfig' test.out

#- 83 DeleteOculusIAPConfig
$PYTHON -m $MODULE 'platform-delete-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'DeleteOculusIAPConfig' test.out

#- 84 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetPlayStationIAPConfig' test.out

#- 85 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    --body '{"backOfficeServerClientId": "ebU6rHFirnUpZ9UJ", "backOfficeServerClientSecret": "4N78qHTGdn7gE4bw", "enableStreamJob": true, "environment": "zDEw2PYt8x9SSaOZ", "streamName": "cEvG6KZh954BmtuI", "streamPartnerName": "FllfSUnaUhC4x11A"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'UpdatePlaystationIAPConfig' test.out

#- 86 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'DeletePlaystationIAPConfig' test.out

#- 87 ValidateExistedPlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-existed-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'ValidateExistedPlaystationIAPConfig' test.out

#- 88 ValidatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-playstation-iap-config' \
    --body '{"backOfficeServerClientId": "S2jTKoTYeHaCuN7z", "backOfficeServerClientSecret": "pX9vp4QJdCrwkz0n", "enableStreamJob": true, "environment": "99JglScoOlkkBxiX", "streamName": "f8OBQRqXWXQ3JdXd", "streamPartnerName": "Fz8pc0EEziE5yIvi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'ValidatePlaystationIAPConfig' test.out

#- 89 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'GetSteamIAPConfig' test.out

#- 90 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"appId": "jq9ix16vo60jgvwV", "publisherAuthenticationKey": "3C9hJ1kSZonK02WH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'UpdateSteamIAPConfig' test.out

#- 91 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'DeleteSteamIAPConfig' test.out

#- 92 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'GetTwitchIAPConfig' test.out

#- 93 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    --body '{"clientId": "GVKDcKulj3Pdegy4", "clientSecret": "G6LOpak8CYp6DPdu", "organizationId": "kc04j6rbfBuKBco1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'UpdateTwitchIAPConfig' test.out

#- 94 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'DeleteTwitchIAPConfig' test.out

#- 95 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'GetXblIAPConfig' test.out

#- 96 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    --body '{"relyingPartyCert": "AeO3yvvBLZPBueke"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'UpdateXblIAPConfig' test.out

#- 97 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'DeleteXblAPConfig' test.out

#- 98 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'UpdateXblBPCertFile' test.out

#- 99 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'Be4Tvb3fHCIJZkwE' \
    'cCRi2U7s2ZQAarwH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'DownloadInvoiceDetails' test.out

#- 100 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    '0c87v0PwZjydyzGD' \
    'ZM4zTTYI6O8coYDW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GenerateInvoiceSummary' test.out

#- 101 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'UfcL1qsegBsrNqeW' \
    --body '{"categoryPath": "5BxVe8iW7sGELnMd", "targetItemId": "XRqdGPzxXvZPtrhj", "targetNamespace": "eVBnTrsYihhgbeAZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'SyncInGameItem' test.out

#- 102 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'oFncMUdmf8hD3nL1' \
    --body '{"appId": "saQxLYrz08jh6Tyq", "appType": "DEMO", "baseAppId": "ilXgtf5UctyV3aSw", "boothName": "4twReM5DcHde3fkH", "categoryPath": "f7tH8WTOTeBOcYhf", "clazz": "6nGCnPjiIbJifs0a", "displayOrder": 35, "entitlementType": "DURABLE", "ext": {"KxCcNv8FQCyQBqKx": {}, "ayGvw7MqOsypCJmf": {}, "RnW0spgvjt7eCLDu": {}}, "features": ["0SILVGXCWRucRpP1", "Tq7uYXhB6FPfF5Dv", "6PA3PRnQtB410iWT"], "images": [{"as": "veMdBsPt19V2FkBP", "caption": "k0QLufK6eiT38raa", "height": 88, "imageUrl": "f1SwrbpmoF4DvNA1", "smallImageUrl": "wo9IAxV5C71gTw8B", "width": 74}, {"as": "2EhOlnsuDnkuOJek", "caption": "bO0sk7o1z37uuqLD", "height": 87, "imageUrl": "j9wORAVqRuNsXxRu", "smallImageUrl": "4EQqR3KbYWtFzplX", "width": 97}, {"as": "xqCwUgKa4oCBoJDx", "caption": "Ga1UuSr4ehnV8Aw9", "height": 26, "imageUrl": "uxEyfzZJsZd9sB6C", "smallImageUrl": "V9KiWkbdpGqWQIPK", "width": 46}], "itemIds": ["mVytM5mBRT39gKYL", "k9DmjJh6PnpTXWAU", "t8lgqNM4poGEvIKC"], "itemQty": {"e3MrLxmnjmlAuaBC": 7, "gNvvgI2k1P9nQxzj": 42, "AnmpWfje5cAtTDvw": 65}, "itemType": "OPTIONBOX", "listable": false, "localizations": {"ShGomFzUappaaODZ": {"description": "aZ6VzztnntoxwsNt", "localExt": {"NxWoH5wVHJVaEnay": {}, "cYsKkgX0RMDxvlK9": {}, "RnTEYv5eDhCxwy85": {}}, "longDescription": "vlhWw1RCgHr3f6Uq", "title": "FGCvsMFEFlXHBOK1"}, "RqtKYVObVorIVWWL": {"description": "aVJwe2KAca1aKeXU", "localExt": {"u9hINqKvoYKio4M5": {}, "1vuaFyqjQsTGmzIt": {}, "JIOkEIRsSWOV8Lyi": {}}, "longDescription": "vYbMG9LXPbBh2E3w", "title": "FchP3zTymfVfny2M"}, "0KsS08cY3fjI1YTT": {"description": "3qUMd0U73RjVeYSM", "localExt": {"479gn62lizsWGrtI": {}, "gVPb7hoo8YkNPW8m": {}, "WOJGtdXJGDsxRAR3": {}}, "longDescription": "NObYp43YXMHqWeVj", "title": "nOURxGvOhz9s7ktW"}}, "lootBoxConfig": {"rewardCount": 21, "rewards": [{"lootBoxItems": [{"count": 74, "duration": 69, "endDate": "1986-10-25T00:00:00Z", "itemId": "aHg6kDVjxhxRxjeD", "itemSku": "rqCfJEjrqJkFoZFZ", "itemType": "ex0eOw31PXkVnetc"}, {"count": 43, "duration": 64, "endDate": "1984-12-12T00:00:00Z", "itemId": "uim14Wdh1qKoSDBb", "itemSku": "yqlJyfVgaW6ziZF6", "itemType": "ijZzA3MkosOcoAcV"}, {"count": 78, "duration": 93, "endDate": "1995-09-17T00:00:00Z", "itemId": "Gk0GjYReIZaDC2Au", "itemSku": "2bEpymbJ4dPJmkdv", "itemType": "yuDHFFstLhZzletC"}], "name": "qa3lJMQ1sGlfqjDB", "odds": 0.4145286190363813, "type": "REWARD_GROUP", "weight": 19}, {"lootBoxItems": [{"count": 14, "duration": 81, "endDate": "1999-01-30T00:00:00Z", "itemId": "M5JiwtMOfDfoMgU2", "itemSku": "yFBTPfnmfN5E20OR", "itemType": "MCVBTrkvObsiHQgt"}, {"count": 4, "duration": 83, "endDate": "1988-02-16T00:00:00Z", "itemId": "XeKZzZBo6ARaQnNZ", "itemSku": "Q1R0PGBFVnc37aWV", "itemType": "jM3iVKjr5VDqakKd"}, {"count": 100, "duration": 100, "endDate": "1978-05-07T00:00:00Z", "itemId": "7GAH1oiS1JuO7MNo", "itemSku": "FPtRhYYIpNqVHbbC", "itemType": "VwbitD5tWXZVvjYq"}], "name": "rEXKUDlmtixw9FtB", "odds": 0.7738630438478612, "type": "REWARD", "weight": 57}, {"lootBoxItems": [{"count": 99, "duration": 94, "endDate": "1999-07-19T00:00:00Z", "itemId": "PxL8674KYMeN2W2C", "itemSku": "NqmO8JALtCiDuGQQ", "itemType": "svWV3NSjXUXSMKY0"}, {"count": 79, "duration": 48, "endDate": "1997-07-12T00:00:00Z", "itemId": "TKOwsyRNnaLNhw0x", "itemSku": "GnXc29UDQxeiBo2h", "itemType": "B9u1v1POCjseK1xa"}, {"count": 91, "duration": 31, "endDate": "1971-10-10T00:00:00Z", "itemId": "MjyFrYsITcyT5AhN", "itemSku": "NH0Ht1yPtBwXIuYr", "itemType": "bPUcvEOJ4Pghksba"}], "name": "ThW37NTbz8HiRmuk", "odds": 0.21280424493659444, "type": "REWARD", "weight": 96}], "rollFunction": "DEFAULT"}, "maxCount": 16, "maxCountPerUser": 46, "name": "TP0KrWQ3pgbHM0Sv", "optionBoxConfig": {"boxItems": [{"count": 51, "duration": 66, "endDate": "1999-02-15T00:00:00Z", "itemId": "GRenDzwlTE9Czhnc", "itemSku": "k3GnyPFQHgn9jVE6", "itemType": "QGkZ8AVzeiaDi67E"}, {"count": 76, "duration": 35, "endDate": "1994-03-07T00:00:00Z", "itemId": "wN2LrT85Arfe6Ewe", "itemSku": "JxWANt1bDay64EnF", "itemType": "yFeW0oNhddKrrhzw"}, {"count": 53, "duration": 53, "endDate": "1999-12-01T00:00:00Z", "itemId": "3hFUXbdYU08BQZXT", "itemSku": "cZnHoYaII5c5UqVv", "itemType": "KR3ydSEb2trPjqlB"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 99, "fixedTrialCycles": 85, "graceDays": 1}, "regionData": {"cMIQc5lRQojhJgpX": [{"currencyCode": "VCubdw0sPrgDKqHC", "currencyNamespace": "s5GTdTLCxJqK7dgs", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1980-03-29T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1973-05-07T00:00:00Z", "expireAt": "1992-08-02T00:00:00Z", "price": 62, "purchaseAt": "1988-11-20T00:00:00Z", "trialPrice": 1}, {"currencyCode": "gVss4JzVKSusdLum", "currencyNamespace": "oHh8TQWYk2vD3mUD", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1994-03-04T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1995-10-26T00:00:00Z", "expireAt": "1984-08-23T00:00:00Z", "price": 93, "purchaseAt": "1979-09-11T00:00:00Z", "trialPrice": 88}, {"currencyCode": "qeZP1CFaMkJVBkZU", "currencyNamespace": "3qtk0dM4GZGiSutb", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1986-07-07T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1986-05-23T00:00:00Z", "expireAt": "1975-03-29T00:00:00Z", "price": 80, "purchaseAt": "1993-09-16T00:00:00Z", "trialPrice": 50}], "8Ptq10XBhcJfG9qY": [{"currencyCode": "AEpR44fWWEsCETqK", "currencyNamespace": "lcFcaL6XOoO3WqBs", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1987-04-13T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1980-05-16T00:00:00Z", "expireAt": "1994-03-20T00:00:00Z", "price": 45, "purchaseAt": "1994-06-13T00:00:00Z", "trialPrice": 77}, {"currencyCode": "iQwezvArAKJwZGVy", "currencyNamespace": "knpOhuGhAnlnjyPB", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1975-02-13T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1974-01-15T00:00:00Z", "expireAt": "1977-03-20T00:00:00Z", "price": 5, "purchaseAt": "1974-07-01T00:00:00Z", "trialPrice": 13}, {"currencyCode": "jduKixzScfrHzGYC", "currencyNamespace": "1TdLVDBDxK6laOke", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1976-01-20T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1978-01-21T00:00:00Z", "expireAt": "1979-02-11T00:00:00Z", "price": 57, "purchaseAt": "1980-07-23T00:00:00Z", "trialPrice": 19}], "vvUpCMJRliFCmFC9": [{"currencyCode": "uUxSxI4yyrZIV9M2", "currencyNamespace": "2gRLsc6Jwt190s6y", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1986-07-05T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1987-07-06T00:00:00Z", "expireAt": "1983-02-12T00:00:00Z", "price": 22, "purchaseAt": "1999-01-23T00:00:00Z", "trialPrice": 53}, {"currencyCode": "bDDntsSQ8DEsKT6M", "currencyNamespace": "w5xDz8asARtI3TVV", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1976-08-28T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1971-12-25T00:00:00Z", "expireAt": "1989-02-21T00:00:00Z", "price": 35, "purchaseAt": "1985-04-29T00:00:00Z", "trialPrice": 15}, {"currencyCode": "G1oZArFJBUmMx7nz", "currencyNamespace": "K8rRAYvvynDPJ9SM", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1972-12-30T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1978-12-01T00:00:00Z", "expireAt": "1997-05-31T00:00:00Z", "price": 89, "purchaseAt": "1975-08-03T00:00:00Z", "trialPrice": 16}]}, "saleConfig": {"currencyCode": "UoSen8CjEhtRcnVs", "price": 29}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "ypw6F21uYowkPNGA", "stackable": false, "status": "ACTIVE", "tags": ["vPmueVVC0ymY7ABW", "4hJnsU1m6zryXmvv", "gZVxM4rAqxlnHLAF"], "targetCurrencyCode": "NEwXBsCkfqzKlzlL", "targetNamespace": "gHPF5iRWnREifOFJ", "thumbnailUrl": "QwGPy5zGebVw9nLv", "useCount": 98}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'CreateItem' test.out

#- 103 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'ggvvmXZU7lVGZ6lI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetItemByAppId' test.out

#- 104 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'QueryItems' test.out

#- 105 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'ListBasicItemsByFeatures' test.out

#- 106 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    's17PXJ8KsgqGNM6s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'GetItemBySku' test.out

#- 107 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'O7IUwIv84zQjc88f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItemBySku' test.out

#- 108 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'KtDQSbDQN21JlwPx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GetItemIdBySku' test.out

#- 109 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'GetBulkItemIdBySkus' test.out

#- 110 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'puUZm1GVuI2Eihx6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'BulkGetLocaleItems' test.out

#- 111 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'GetAvailablePredicateTypes' test.out

#- 112 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    'IJwMzUqM16MYY2MV' \
    --body '{"itemIds": ["vo3MMCL4aV6oMUzp", "MmsvvKTljWspMrC4", "TeRTNUYz7N4wHLHx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'ValidateItemPurchaseCondition' test.out

#- 113 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    '7FCWn7iOmKIN2roJ' \
    --body '{"changes": [{"itemIdentities": ["NZmgEGzqDHdLpDjL", "IhvCNlBRcFsa03Nq", "u13LgD6kOUZXQKRT"], "itemIdentityType": "ITEM_SKU", "regionData": {"95IwPCb2qOuIRbBL": [{"currencyCode": "0njCbitEJNHwfW76", "currencyNamespace": "v6GPVwWjIfhOXeme", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1979-09-09T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1991-01-11T00:00:00Z", "discountedPrice": 16, "expireAt": "1990-01-22T00:00:00Z", "price": 31, "purchaseAt": "1993-04-21T00:00:00Z", "trialPrice": 15}, {"currencyCode": "S8HG9ID7mZ4eKHaA", "currencyNamespace": "P4PYToJAMgJkC8UG", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1979-06-20T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1998-01-18T00:00:00Z", "discountedPrice": 58, "expireAt": "1973-07-12T00:00:00Z", "price": 7, "purchaseAt": "1973-09-09T00:00:00Z", "trialPrice": 68}, {"currencyCode": "hHz7OKYNIMPTFnrb", "currencyNamespace": "ysdru1PotArVtIQy", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1979-01-21T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1971-04-23T00:00:00Z", "discountedPrice": 92, "expireAt": "1973-10-04T00:00:00Z", "price": 30, "purchaseAt": "1982-08-31T00:00:00Z", "trialPrice": 90}], "vjI9jfJFTHcHvAfo": [{"currencyCode": "snCXqJplcwaBHILl", "currencyNamespace": "CC7ovjEbjKrZ2d6I", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1996-03-04T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1975-02-19T00:00:00Z", "discountedPrice": 33, "expireAt": "1992-06-05T00:00:00Z", "price": 32, "purchaseAt": "1972-04-02T00:00:00Z", "trialPrice": 52}, {"currencyCode": "Y43FQpfFWm8VMHjC", "currencyNamespace": "8qrxvZsJd3RBYL4P", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1979-01-30T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1996-06-21T00:00:00Z", "discountedPrice": 12, "expireAt": "1975-08-19T00:00:00Z", "price": 45, "purchaseAt": "1974-09-14T00:00:00Z", "trialPrice": 30}, {"currencyCode": "gw3mGmogCJXjHTGh", "currencyNamespace": "yemqqwoT441DX6xw", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1986-03-28T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1974-08-20T00:00:00Z", "discountedPrice": 16, "expireAt": "1993-05-12T00:00:00Z", "price": 38, "purchaseAt": "1989-05-04T00:00:00Z", "trialPrice": 78}], "87x6Jfe5YAYJeb1G": [{"currencyCode": "UdtB5G8NITA0g58c", "currencyNamespace": "qZn79u2grirdqELb", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1979-02-18T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1971-12-14T00:00:00Z", "discountedPrice": 100, "expireAt": "1977-09-12T00:00:00Z", "price": 55, "purchaseAt": "1999-11-09T00:00:00Z", "trialPrice": 51}, {"currencyCode": "Gm4h3PbLHDa7uqaa", "currencyNamespace": "xqXPKuNAeKKjcKgU", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1999-01-06T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1985-01-02T00:00:00Z", "discountedPrice": 46, "expireAt": "1982-12-06T00:00:00Z", "price": 9, "purchaseAt": "1985-07-31T00:00:00Z", "trialPrice": 67}, {"currencyCode": "0d4KCtC9mqs8uXBZ", "currencyNamespace": "2Kxk4a5FeKFm3raY", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1995-10-17T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1982-04-11T00:00:00Z", "discountedPrice": 78, "expireAt": "1985-02-15T00:00:00Z", "price": 54, "purchaseAt": "1987-03-14T00:00:00Z", "trialPrice": 93}]}}, {"itemIdentities": ["iAQb4Iiy26m51AwC", "v4UKmP7eczfnYgOq", "XhJZ6DIokID1ZFk9"], "itemIdentityType": "ITEM_ID", "regionData": {"0mk4HHDzXcKJowQb": [{"currencyCode": "OrgveLe4hYQEGciv", "currencyNamespace": "ibNKS0tBFxzru1A3", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1975-01-04T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1975-01-12T00:00:00Z", "discountedPrice": 20, "expireAt": "1983-09-21T00:00:00Z", "price": 23, "purchaseAt": "1994-10-01T00:00:00Z", "trialPrice": 70}, {"currencyCode": "rcqzwGgl1SyrFazP", "currencyNamespace": "5g67zq7XCHkJzmy6", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1981-09-30T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1984-06-25T00:00:00Z", "discountedPrice": 82, "expireAt": "1999-08-17T00:00:00Z", "price": 27, "purchaseAt": "1988-11-21T00:00:00Z", "trialPrice": 17}, {"currencyCode": "iYaLYUlRZSLj5xwm", "currencyNamespace": "P8QMJJJn2Lqw6aiK", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1997-03-19T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1992-12-11T00:00:00Z", "discountedPrice": 55, "expireAt": "1988-04-04T00:00:00Z", "price": 56, "purchaseAt": "1973-04-15T00:00:00Z", "trialPrice": 98}], "s0Nwlx85unvbUiBJ": [{"currencyCode": "fyM9bc1hgFvKO2er", "currencyNamespace": "V4ccUhiQnHGDNXw2", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1976-05-05T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1990-10-02T00:00:00Z", "discountedPrice": 52, "expireAt": "1980-03-08T00:00:00Z", "price": 95, "purchaseAt": "1994-06-29T00:00:00Z", "trialPrice": 24}, {"currencyCode": "5M3KvzpUEcp3cp4f", "currencyNamespace": "WJlLrbVQceKy5JZK", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1995-05-07T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1987-01-25T00:00:00Z", "discountedPrice": 53, "expireAt": "1978-10-30T00:00:00Z", "price": 52, "purchaseAt": "1978-04-01T00:00:00Z", "trialPrice": 51}, {"currencyCode": "wFNJyyLozi8eBqPD", "currencyNamespace": "6pfcv9jGr7b2hHba", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1995-06-08T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1985-05-02T00:00:00Z", "discountedPrice": 27, "expireAt": "1971-06-02T00:00:00Z", "price": 62, "purchaseAt": "1974-08-26T00:00:00Z", "trialPrice": 12}], "Yi7fBJaU43PzOITm": [{"currencyCode": "qjrcuIH9i4ICwRHM", "currencyNamespace": "518oPa2glj6rHbkW", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1977-10-26T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1981-12-05T00:00:00Z", "discountedPrice": 6, "expireAt": "1993-05-11T00:00:00Z", "price": 4, "purchaseAt": "1995-09-03T00:00:00Z", "trialPrice": 90}, {"currencyCode": "yfbUswXLyVVZqZpY", "currencyNamespace": "AdyPafGBlwnYRpUk", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1996-12-11T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1993-06-19T00:00:00Z", "discountedPrice": 46, "expireAt": "1974-06-05T00:00:00Z", "price": 38, "purchaseAt": "1994-03-29T00:00:00Z", "trialPrice": 69}, {"currencyCode": "vMllaEVugbCEifQC", "currencyNamespace": "e5eN88Z7U1e8C1Hn", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1975-09-25T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1983-04-12T00:00:00Z", "discountedPrice": 7, "expireAt": "1994-08-17T00:00:00Z", "price": 15, "purchaseAt": "1993-11-21T00:00:00Z", "trialPrice": 67}]}}, {"itemIdentities": ["aSmVFsmFW74Dkabv", "mYAT6qTg6ZOaTNC1", "LAentTXWyBmb2Ir2"], "itemIdentityType": "ITEM_SKU", "regionData": {"IKcTVvsormCNHH08": [{"currencyCode": "vEf2WSsLchLBElch", "currencyNamespace": "9a9Knc6glMjwg8OW", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1994-09-04T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1973-04-14T00:00:00Z", "discountedPrice": 14, "expireAt": "1998-01-12T00:00:00Z", "price": 72, "purchaseAt": "1974-08-16T00:00:00Z", "trialPrice": 53}, {"currencyCode": "YnQ5xpjcMxUGokG4", "currencyNamespace": "VQKR0ItcCnXFRjhk", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1984-07-29T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1977-10-04T00:00:00Z", "discountedPrice": 34, "expireAt": "1971-01-11T00:00:00Z", "price": 31, "purchaseAt": "1991-02-18T00:00:00Z", "trialPrice": 74}, {"currencyCode": "Jqlw441XUfp7AVnf", "currencyNamespace": "8BzBBqEvMtJopw2r", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1993-10-24T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1980-05-12T00:00:00Z", "discountedPrice": 28, "expireAt": "1983-10-06T00:00:00Z", "price": 21, "purchaseAt": "1983-10-25T00:00:00Z", "trialPrice": 86}], "H6MNrEsOlIFw6Fqa": [{"currencyCode": "6YXBlVXOvZUgW2ZM", "currencyNamespace": "VJhOyVaO1sgnJF31", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1994-12-02T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1982-09-30T00:00:00Z", "discountedPrice": 79, "expireAt": "1981-07-23T00:00:00Z", "price": 98, "purchaseAt": "1981-03-22T00:00:00Z", "trialPrice": 81}, {"currencyCode": "ZrE0YPmtE6fcv3nP", "currencyNamespace": "ROvD1FiqEUhsD6Qx", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1971-04-13T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1976-07-13T00:00:00Z", "discountedPrice": 89, "expireAt": "1982-09-11T00:00:00Z", "price": 3, "purchaseAt": "1989-11-03T00:00:00Z", "trialPrice": 75}, {"currencyCode": "ucN3IEt8vZSqh6Sj", "currencyNamespace": "LdDyVf6irpvxpCXF", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1991-09-02T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1991-01-09T00:00:00Z", "discountedPrice": 42, "expireAt": "1985-11-18T00:00:00Z", "price": 62, "purchaseAt": "1976-12-03T00:00:00Z", "trialPrice": 45}], "WNkgUfe6pVMS5m8a": [{"currencyCode": "RIev5s4q7UwwraCD", "currencyNamespace": "r326Q66cxtjNTXsC", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1975-08-07T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1999-04-30T00:00:00Z", "discountedPrice": 72, "expireAt": "1996-11-04T00:00:00Z", "price": 51, "purchaseAt": "1974-08-21T00:00:00Z", "trialPrice": 90}, {"currencyCode": "nrUavXt7t0llsH39", "currencyNamespace": "PXWtk222GY7L58lP", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1991-05-23T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1974-02-13T00:00:00Z", "discountedPrice": 70, "expireAt": "1985-03-21T00:00:00Z", "price": 68, "purchaseAt": "1997-02-10T00:00:00Z", "trialPrice": 65}, {"currencyCode": "Z3bFTqXqdzpP7Rk1", "currencyNamespace": "qbFWhtwNaVCqf0vP", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1999-06-18T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1973-12-21T00:00:00Z", "discountedPrice": 73, "expireAt": "1984-10-09T00:00:00Z", "price": 2, "purchaseAt": "1980-06-16T00:00:00Z", "trialPrice": 65}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'BulkUpdateRegionData' test.out

#- 114 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'dR95sQ1FygQvoX9p' \
    'EJ3R0cuQGjCShSTN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'SearchItems' test.out

#- 115 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'QueryUncategorizedItems' test.out

#- 116 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'yM9yuMOFavgMWyxi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetItem' test.out

#- 117 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'zWKQdVExukcKDUzh' \
    'KKARjqJSWImXvaLX' \
    --body '{"appId": "kvZvwk0v0OKy45dq", "appType": "DEMO", "baseAppId": "dPwYmvZkT3zo8gxM", "boothName": "qM1wUdXsMjUbhRjn", "categoryPath": "DrYWlRfPpgHg36d9", "clazz": "NP5nNvzIlwtYI9wK", "displayOrder": 35, "entitlementType": "CONSUMABLE", "ext": {"V1XxF2CFfEpf0qN2": {}, "twLYXq4HSEGpaUMm": {}, "dPXWaJRdn3WMdrhl": {}}, "features": ["Q6covYDuI4l1d9Ya", "LVuL1mLP65pId36F", "WqCc54JfyGzMMHiV"], "images": [{"as": "25c13PNqPn7XRlnq", "caption": "iWP9WWQMGmm0biVj", "height": 62, "imageUrl": "XRiNNV5Fy4ilLbKz", "smallImageUrl": "QFBHQ0FHWOul5WKk", "width": 51}, {"as": "jSCsFa6ipRu1AaFj", "caption": "z0yLelzMzWiPzugd", "height": 60, "imageUrl": "UvlrOA50xGdlq3Dk", "smallImageUrl": "m52TA4zLBSh2QJWg", "width": 100}, {"as": "WHmOLBLlsw2pDJDL", "caption": "eJwzbVEEQ0D6RcLp", "height": 90, "imageUrl": "hPyIhVPmMs1zqz6e", "smallImageUrl": "xSNhnabXGs0qawVM", "width": 31}], "itemIds": ["ycewrnLBAZlvnOJe", "NxZdT1fZJTutZpZZ", "n6egDbFDXW3N42cc"], "itemQty": {"GURTnJUdR3MUQnEe": 54, "2R7YqidgD0wxHpQy": 28, "IBWn2Q3kMtF5tiwP": 58}, "itemType": "OPTIONBOX", "listable": true, "localizations": {"0BvuCoP1hIpdIWaj": {"description": "ZTyB7k7Q9zNJHkXm", "localExt": {"HB9cu1ZdRIZ1hHCp": {}, "ApGunPxVvWyQvciF": {}, "GxJNOaveGzkTPehZ": {}}, "longDescription": "VmZi1UYM7BApA1YB", "title": "yiGkJR30lAinKfKX"}, "qYE8GuKFRwAkAyYY": {"description": "8hSNUTpzSm7jdrPd", "localExt": {"kMMoylrI7DpmCIb5": {}, "JWu7DAXtIeslnM3l": {}, "JQMDxu7Auj8cqdtN": {}}, "longDescription": "aFO3ABy1AeDryAFe", "title": "wcN6U8vRJ3ebbfa3"}, "ep8cKNlb024FzQsB": {"description": "lwn2pN8vqhPmlYgF", "localExt": {"Au9gD8vsiDfzK1gM": {}, "LvJ1KqSZCanZaGza": {}, "mJ8JZ6lV9zpsDX7C": {}}, "longDescription": "WEoHK3yLZSpydGfN", "title": "nNFMfXpIPlcaufem"}}, "lootBoxConfig": {"rewardCount": 25, "rewards": [{"lootBoxItems": [{"count": 16, "duration": 47, "endDate": "1999-04-02T00:00:00Z", "itemId": "iOrnB83a6h6dNfg9", "itemSku": "f25YsZ1L6IGHuO7u", "itemType": "2tOUpmu6zULXQMir"}, {"count": 53, "duration": 72, "endDate": "1982-11-09T00:00:00Z", "itemId": "yHA6KDH87AmGMvCh", "itemSku": "uhxZJsDNCQEtOnYV", "itemType": "E7i77NKczg6MaoVc"}, {"count": 17, "duration": 19, "endDate": "1983-03-08T00:00:00Z", "itemId": "j92JkMWuFc2x9p8s", "itemSku": "ArSRypvu88WyRMMR", "itemType": "loXySTO9W3BEI4eB"}], "name": "0PHoEfIdFP0QarAd", "odds": 0.2322030717269601, "type": "REWARD", "weight": 88}, {"lootBoxItems": [{"count": 52, "duration": 30, "endDate": "1996-11-20T00:00:00Z", "itemId": "I26D2IdXV2RNnCRn", "itemSku": "6spzE0Dj97Arjpd7", "itemType": "IRveArOFED1MAfVZ"}, {"count": 15, "duration": 54, "endDate": "1984-01-22T00:00:00Z", "itemId": "DFM15pfl1N2CNDu3", "itemSku": "DpGXJrOgVnrneQPU", "itemType": "35uuCoR3Wc6j3UqR"}, {"count": 70, "duration": 13, "endDate": "1985-12-25T00:00:00Z", "itemId": "nmZxob6vepvgW3Vm", "itemSku": "nz3WsgPS6R3Uev7b", "itemType": "CsylPZDz1fiXmZRe"}], "name": "VZ4inDP7o0Aeler4", "odds": 0.22872506432417394, "type": "REWARD", "weight": 35}, {"lootBoxItems": [{"count": 73, "duration": 46, "endDate": "1986-04-07T00:00:00Z", "itemId": "5dJMDgZPQtuRIVY6", "itemSku": "9dhSr3JiNweUidBV", "itemType": "B2vTyC482FeT76mW"}, {"count": 50, "duration": 9, "endDate": "1986-11-04T00:00:00Z", "itemId": "rmG0FHQOjtRg7ST2", "itemSku": "UVRJN0qFJaGDiDma", "itemType": "tCvCembJFNyIwxPt"}, {"count": 66, "duration": 16, "endDate": "1971-03-21T00:00:00Z", "itemId": "RHeTMH4jK8hWOlHr", "itemSku": "qyBElA4m1Ywb6nMh", "itemType": "hSCXGzZMdNwUYOkF"}], "name": "XnGtw8AuvUND3dJ4", "odds": 0.12829601675215196, "type": "PROBABILITY_GROUP", "weight": 15}], "rollFunction": "DEFAULT"}, "maxCount": 28, "maxCountPerUser": 70, "name": "yz3Y7YtgdQMhzpcp", "optionBoxConfig": {"boxItems": [{"count": 45, "duration": 90, "endDate": "1971-04-17T00:00:00Z", "itemId": "wMF0j9IirMeP7fy5", "itemSku": "Y0RiyzWJZAZHklGm", "itemType": "HH8I1l3xgoVyEemJ"}, {"count": 61, "duration": 38, "endDate": "1982-07-19T00:00:00Z", "itemId": "okY7UUVCHGWcVrHG", "itemSku": "4ehIhJk597xUXpiO", "itemType": "LFQFxY4AHLzQnClU"}, {"count": 41, "duration": 36, "endDate": "1976-09-24T00:00:00Z", "itemId": "b0SoMLqijtgLSGTn", "itemSku": "WHCZ6XwqnOeIUKAI", "itemType": "vQjUxtk82oOOkHmC"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 7, "fixedTrialCycles": 66, "graceDays": 31}, "regionData": {"XAvFitLhI0sqjfua": [{"currencyCode": "9x08SJmn2gM2q6wu", "currencyNamespace": "aHlnk9AFkbwVa7DC", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1987-02-20T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1992-06-12T00:00:00Z", "expireAt": "1986-04-11T00:00:00Z", "price": 61, "purchaseAt": "1973-09-03T00:00:00Z", "trialPrice": 93}, {"currencyCode": "uHxwEbPLfnjlMfDJ", "currencyNamespace": "xP4S8TNhXBTiwS2s", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1978-09-19T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1999-04-20T00:00:00Z", "expireAt": "1999-10-19T00:00:00Z", "price": 32, "purchaseAt": "1974-02-11T00:00:00Z", "trialPrice": 78}, {"currencyCode": "oL7PlFt47mQAQQzQ", "currencyNamespace": "AxQ8GRgWKOBJYYXg", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1993-03-24T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1996-07-14T00:00:00Z", "expireAt": "1980-10-06T00:00:00Z", "price": 51, "purchaseAt": "1999-05-20T00:00:00Z", "trialPrice": 29}], "SIfMjxzBwWKzJldp": [{"currencyCode": "qtAlzVR0WqkbKYSr", "currencyNamespace": "7IVc2WJyX67v7JTc", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1978-11-28T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1977-11-24T00:00:00Z", "expireAt": "1998-09-21T00:00:00Z", "price": 23, "purchaseAt": "1972-07-09T00:00:00Z", "trialPrice": 98}, {"currencyCode": "nzH9XMG2c5BWrzKJ", "currencyNamespace": "0Lj0VNzr8kTl05oi", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1971-06-16T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1988-09-27T00:00:00Z", "expireAt": "1999-03-29T00:00:00Z", "price": 1, "purchaseAt": "1971-12-17T00:00:00Z", "trialPrice": 90}, {"currencyCode": "VI1cHNU3pvbpyJTg", "currencyNamespace": "wl3ZOMpzNQDtQNlD", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1984-05-31T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1979-12-28T00:00:00Z", "expireAt": "1979-06-25T00:00:00Z", "price": 95, "purchaseAt": "1990-08-23T00:00:00Z", "trialPrice": 27}], "obMU8bzcaf0Qv0dF": [{"currencyCode": "MnEcDHueqAKTjdRp", "currencyNamespace": "gYeuitqLYJ7E9mP2", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1973-05-16T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1986-01-31T00:00:00Z", "expireAt": "1976-03-28T00:00:00Z", "price": 41, "purchaseAt": "1982-11-15T00:00:00Z", "trialPrice": 83}, {"currencyCode": "nRcGzbD5iC34s0kT", "currencyNamespace": "iXwPjN8E3wXz4Q1L", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1995-08-01T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1987-08-18T00:00:00Z", "expireAt": "1974-07-12T00:00:00Z", "price": 49, "purchaseAt": "1991-04-04T00:00:00Z", "trialPrice": 83}, {"currencyCode": "01oVwoWAbcskuBfc", "currencyNamespace": "vcoAMPzCXwpgD8MO", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1997-04-21T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1972-05-25T00:00:00Z", "expireAt": "1977-04-08T00:00:00Z", "price": 20, "purchaseAt": "1983-12-02T00:00:00Z", "trialPrice": 62}]}, "saleConfig": {"currencyCode": "wYZJq3OJhzlgtX87", "price": 41}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "G07XwughkPLKDhdM", "stackable": false, "status": "ACTIVE", "tags": ["9arTxBgnOqH9lyv8", "rvVr6DpLOyrgsLZV", "PO9YdwqEszRnwVX2"], "targetCurrencyCode": "wx2JosSHLipk5N6e", "targetNamespace": "79zCfL2ar4zJmB2w", "thumbnailUrl": "ifDA7LpND5zXLhrm", "useCount": 63}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'UpdateItem' test.out

#- 118 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'o0u2hT9UYbm2BWjz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'DeleteItem' test.out

#- 119 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'lqIA8csXOpDTl6yI' \
    --body '{"count": 46, "orderNo": "DibBIH1dyZPHtYHK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'AcquireItem' test.out

#- 120 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'qpl1Xk1CdFvYqfoY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'GetApp' test.out

#- 121 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'zBc16XXXuoJGXCyz' \
    'A8a5uh1LdVOaWOjR' \
    --body '{"carousel": [{"alt": "inmMTxEz6bdDFDqR", "previewUrl": "MyTZOXYRC3gIRiYF", "thumbnailUrl": "pDlAEyVuvyXITMn2", "type": "image", "url": "86xZRHxnOP02x00S", "videoSource": "vimeo"}, {"alt": "zUY6EuVZznqQVYO5", "previewUrl": "728Ri3CuA2GelFQy", "thumbnailUrl": "uDWvfe4Hp9aCLekZ", "type": "image", "url": "BAFZnpxmzs0AQYJn", "videoSource": "vimeo"}, {"alt": "m9ht4JsrC6ho0XSs", "previewUrl": "R3HPQNrtkf3M9oI3", "thumbnailUrl": "ymYms9fuih2WMLld", "type": "image", "url": "pvoOxT54t5Ffna72", "videoSource": "generic"}], "developer": "Z0jnV4jAAxGZ794n", "forumUrl": "gDQya3dvyjxR120z", "genres": ["Simulation", "FreeToPlay", "FreeToPlay"], "localizations": {"PXxLMtU6hLliy7em": {"announcement": "6ox8O9f2ojEQrZ64", "slogan": "5LOpaGFJniJl9RPU"}, "LWpWw5UQBldfnMF2": {"announcement": "X9wbQz3euR4MhLQs", "slogan": "8XliOoWqixFdv5aD"}, "RSnCrIQ2kChyafmo": {"announcement": "2nIKr9krylalbZWu", "slogan": "O0OVwGUgR3PEWI0N"}}, "platformRequirements": {"4k2W2caqaRVdR05r": [{"additionals": "SilF29Lpg0zAUzpl", "directXVersion": "iq50demc4rS3d2v2", "diskSpace": "ibO04gNmB9r9MA5l", "graphics": "A6x0lY16PWsrsxYq", "label": "77iFOu0ybeoERsKM", "osVersion": "CPmtnE1aHAuVZKYN", "processor": "aKhi81nO4RNjvO8r", "ram": "Z5NL7EbburWcSjdG", "soundCard": "Gqd31L6KqJTL11T4"}, {"additionals": "vlBRDjj3FKvRIguq", "directXVersion": "DEJfdxsQXLRJRONK", "diskSpace": "h0R0RXJ6anzAeqD1", "graphics": "HlhQ1rqjRECHyhLY", "label": "GnvEdCjYsnh0Y0rQ", "osVersion": "luvKziVTCPTrqHc7", "processor": "vqaXxxiGOrXbWC2k", "ram": "23JxAI3kOXwHnS2V", "soundCard": "OESYx49M1JdtImLI"}, {"additionals": "5eTuHqCNtVlNaGzo", "directXVersion": "qpAFVT8PkW7ouFId", "diskSpace": "lTuousRcrhXNAh3C", "graphics": "u4ou029lD9VLXNwk", "label": "ZWTbX0PZb0I9Qm4x", "osVersion": "Kek7ZAZJCk1fizRJ", "processor": "y5JoIlHjTZ4mDmXZ", "ram": "IBTi05akxBYozWzU", "soundCard": "W4RDVM8Y4PcXDH8R"}], "ZqUjELC82uP1nMUD": [{"additionals": "AKQEkOvO52VTPFFu", "directXVersion": "LWL0HQkTuy4fU6Ej", "diskSpace": "umf9ltGde7x4luTs", "graphics": "Ek9TNqSiFJyMByoR", "label": "KUrvfixr7UFzLzGa", "osVersion": "Wok215MnSNTPMRaY", "processor": "f8Chh5tiLsXIOSE2", "ram": "JSDRlSX5uOgZ3Msm", "soundCard": "86Jr35oZQ3WcFld5"}, {"additionals": "DKwJoCrYrlOXZN7M", "directXVersion": "oQZDN1sjuHXDU9ZF", "diskSpace": "HISuKMr6e9VKi3lH", "graphics": "ZdnYzFYEnOA6gFO3", "label": "zfSvvmLgxlU5MdUd", "osVersion": "F7gHdIf6eMd0iVUm", "processor": "BrFwFIESxo8uFqKt", "ram": "oZiVPtwECFgcQRsq", "soundCard": "YFtxbpKYKp18TPWO"}, {"additionals": "ixbTLfdOF3VtCUZ0", "directXVersion": "wN81CLC324P82gds", "diskSpace": "Ob5Jp6oxvvtB4air", "graphics": "eJSZc7Cojp07DFR7", "label": "IvEhnKAMSw1WGHPO", "osVersion": "22mCj7yFmbpItmTc", "processor": "MVUlRoYFks2ULHoo", "ram": "isOHhyiZyNxeNJcB", "soundCard": "IePMwBjK11IFRybW"}], "jjYkFvEHCnQ2BiPS": [{"additionals": "cmfoBQ1VO5Trcu36", "directXVersion": "LS6o87DKPLLTcjU8", "diskSpace": "7C2CAKbiD5PxA5v9", "graphics": "644D4d5jTjzZ8Kpd", "label": "OxrQ8r5te5FkJ58w", "osVersion": "QyrAb67d9kC9MEhG", "processor": "rQVQ3yKCwV9chX3e", "ram": "vM1seGH9ZwZcLnJP", "soundCard": "avRNr3ysEp4sIwsl"}, {"additionals": "UQociDSNS6hf28Tv", "directXVersion": "yyZjEMbPRNKUABS8", "diskSpace": "cyK8SnSvsUGLqYJe", "graphics": "vKKJR5KWRgHuLJEA", "label": "S7pSDlIS4N3VRydt", "osVersion": "vWZZFDNIc86TKj3g", "processor": "rgVdqSpg9xpXCh79", "ram": "kxpJyTba2Sx7lPUW", "soundCard": "hfLYtrkZ2V3jzXzi"}, {"additionals": "lslRzP96yJ7RbX8f", "directXVersion": "kG3hcRbcSuSkd72w", "diskSpace": "zQJjmhy4f9F9usH1", "graphics": "ByGD8DDRW0KNwlKc", "label": "veutOHZ2aWSL11ms", "osVersion": "U7QpcpkApFODOqz4", "processor": "FKRWcvJIwzW53tKi", "ram": "9mxhR8RWtFcnNAox", "soundCard": "NPXPlSv6kWXBTTod"}]}, "platforms": ["Linux", "Windows", "Android"], "players": ["Single", "MMO", "Multi"], "primaryGenre": "Sports", "publisher": "mWFWKlSwI38LyDyL", "releaseDate": "1994-09-15T00:00:00Z", "websiteUrl": "QxmA6nDD3EFfeJdw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'UpdateApp' test.out

#- 122 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'skeVjYAe1CNRQX4T' \
    '37n6lgMV9tMXN2kD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'DisableItem' test.out

#- 123 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'g7INFTJO4FUT152z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetItemDynamicData' test.out

#- 124 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'R0PBTEvM3TgMsAS5' \
    't3TYXNAGl1xy1H8A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'EnableItem' test.out

#- 125 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'g2XY2TnyPCVsWzhP' \
    'IeHkoUSeT3lv51D9' \
    'Vwsfzatv4JzfVNAJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'FeatureItem' test.out

#- 126 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'bSLBzqs2u1EntDzk' \
    'QLgWQHXc3bRYKbJG' \
    'FP8HZNLJ7aPbRMRr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'DefeatureItem' test.out

#- 127 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'bKjoifZAWt13ISgd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'GetLocaleItem' test.out

#- 128 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'wAum4b3t1Ph8xHfE' \
    'Alyda8FPutbAgA4O' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 88, "comparison": "isNot", "name": "UCJsDilWhSc6XIxh", "predicateType": "SeasonTierPredicate", "value": "HqBg5FhY2vclqnTb", "values": ["yZ7fYvmiZxdNpmib", "PCLiJaHXEyuLQOO6", "qVUihFznsLFP3013"]}, {"anyOf": 13, "comparison": "isGreaterThanOrEqual", "name": "sIOArelbYwYTtGsR", "predicateType": "SeasonTierPredicate", "value": "6ryZK7UKLhMA3DOG", "values": ["2TuIwxdK6goe9uJ8", "PAnT6lHom6RSj2xF", "FFrIQFWJ2aMIxqQy"]}, {"anyOf": 4, "comparison": "includes", "name": "DpbOcYim2syYc8Yu", "predicateType": "SeasonTierPredicate", "value": "TFH9npo1k2W89U6P", "values": ["7WiIi8k4T7A6suz0", "A5Byr1VJKsNpin9Z", "Ag5mDVmepTMiQqOA"]}]}, {"operator": "and", "predicates": [{"anyOf": 55, "comparison": "is", "name": "4Rs8p9AflDjkRQna", "predicateType": "EntitlementPredicate", "value": "afJC9mgf0blFr8NU", "values": ["5HLYxM5DN6DJmnjB", "mSdS49CybTerX6wW", "d7q6U3V1i7ip9ibQ"]}, {"anyOf": 22, "comparison": "isLessThanOrEqual", "name": "ReTecqcbggfeYn1F", "predicateType": "EntitlementPredicate", "value": "8YJKnP2TmDSwAt1U", "values": ["GNieMe0c6eA8xCvV", "1xuey3fB1KN5EzSm", "NgS0wUvETmRwwaH2"]}, {"anyOf": 57, "comparison": "isGreaterThan", "name": "6aO1JqypofIkM1Wv", "predicateType": "EntitlementPredicate", "value": "NIzvOh61wCAYs9Qa", "values": ["C6xnSImJqwyGzE1B", "e7TEBnzFuxHzrR3P", "iHyAFfiwIi9bI2X8"]}]}, {"operator": "and", "predicates": [{"anyOf": 26, "comparison": "is", "name": "TvUJIV0W2K8alZax", "predicateType": "SeasonPassPredicate", "value": "B2fqN6D76apW4Csu", "values": ["LkAEWkqMo2uv4G0h", "WqhlJfHgWSAjBmzi", "Qx2nME1E8lGIgW2A"]}, {"anyOf": 3, "comparison": "is", "name": "TC5zbxqSMQf3ZXRg", "predicateType": "EntitlementPredicate", "value": "UhsGYJ3NLSVOdqFx", "values": ["yMGw4ZEIMYFaIEr6", "7P6ZfRFkQolDEtyx", "Y9j8P8IFwNKh0Zni"]}, {"anyOf": 94, "comparison": "isLessThanOrEqual", "name": "4csEU6rwlyAZXRlt", "predicateType": "SeasonPassPredicate", "value": "TRz9WtMMb9e3S9bi", "values": ["7CVBRFOlmRZZrSiE", "Xun5fD0BBCts02Kg", "z1gL82ANle3vQP0F"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'UpdateItemPurchaseCondition' test.out

#- 129 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '7meOUBb0ZMyPVBow' \
    --body '{"orderNo": "pLOlv3wNvAi5e5Cp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'ReturnItem' test.out

#- 130 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'QueryKeyGroups' test.out

#- 131 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "2Id8PqgbZMgBinMu", "name": "WrJOAvHxG7UhRxqt", "status": "ACTIVE", "tags": ["RaUrUqTcFsGXxjR7", "vTeNdfPVWmEdVFXX", "02sJsXg7AKOu2Xk8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'CreateKeyGroup' test.out

#- 132 GetKeyGroupByBoothName
eval_tap 0 132 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 133 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'T0sqdmD20rolfU1y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'GetKeyGroup' test.out

#- 134 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'EokwoBSfRPMdPXru' \
    --body '{"description": "40VmHvpaJ6EFG9wL", "name": "OlD7N2GNQs0IgMAb", "status": "ACTIVE", "tags": ["nlua2qF5WhoaEpbM", "KCe8F6OE3PKy2vHH", "6XrTj3i1nC0J9A8D"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateKeyGroup' test.out

#- 135 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'UtbT9Nimqnzt0awi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'GetKeyGroupDynamic' test.out

#- 136 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'zcaXFFkKf2QcbDNp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'ListKeys' test.out

#- 137 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    '9wVgloPqugy2zhY3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'UploadKeys' test.out

#- 138 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'QueryOrders' test.out

#- 139 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'GetOrderStatistics' test.out

#- 140 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'CjOqLPkNLoeCULsE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetOrder' test.out

#- 141 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'ptE9wdsebmIkQbE3' \
    --body '{"description": "nPbd7YNYQJL8jGfd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'RefundOrder' test.out

#- 142 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'GetPaymentCallbackConfig' test.out

#- 143 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": true, "notifyUrl": "WTnYHGmKeMnGn3hX", "privateKey": "TX65W9y7jKRgCFKj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'UpdatePaymentCallbackConfig' test.out

#- 144 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'QueryPaymentNotifications' test.out

#- 145 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'QueryPaymentOrders' test.out

#- 146 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "2fpaEDgvMXedU0Ct", "currencyNamespace": "jH3UPJy3CnYG5ypx", "customParameters": {"MPXQb9Aa9QMoQgjO": {}, "f0byuj8Uxptb2o5j": {}, "dTreVKh6flE9FaNd": {}}, "description": "FDCH0BMCufX5Ln9Y", "extOrderNo": "KDyW9wNSXGvHGabf", "extUserId": "CgecNknWoEbRoZQ4", "itemType": "SEASON", "language": "plE-UMJH_uc", "metadata": {"DHO8mQoGOS84jEVR": "Gn0aQHrmMgGX6WiX", "9WPUEwP8KagnEKkf": "RnTAD7nNuqrknaj1", "Fks8OhmWshFK5hyf": "wqkxFeK2HSaUyXEO"}, "notifyUrl": "QUwXDX8MGlijaR3V", "omitNotification": false, "platform": "edPpbBwcmRSOW5MF", "price": 14, "recurringPaymentOrderNo": "H8TO5OIzshGgQ4Th", "region": "ugQFOWwlpo3MnSMN", "returnUrl": "djVtLt8CrUFIkcZk", "sandbox": false, "sku": "EaPstaXtLCGf6Pjb", "subscriptionId": "7W28XF9eX2LXwaZw", "targetNamespace": "DM1CYDLmaPDEUbDv", "targetUserId": "BUnl1NO7rLa2XTR4", "title": "IEvU0JE2kLOQb2CB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'CreatePaymentOrderByDedicated' test.out

#- 147 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'EoV5Nm182ykfY01G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'ListExtOrderNoByExtTxId' test.out

#- 148 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'cykfqRyXIVnis4SK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'GetPaymentOrder' test.out

#- 149 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'jpYMZV5AVm0vOTpy' \
    --body '{"extTxId": "2xyajHMUnKflmcC3", "paymentMethod": "pOWLT8ckEy2SMQcm", "paymentProvider": "WXPAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'ChargePaymentOrder' test.out

#- 150 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'pDnYuSqynNlJACpH' \
    --body '{"description": "VndrAR7z9J0bNuep"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'RefundPaymentOrderByDedicated' test.out

#- 151 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'qWsDLjzow7MvJGnW' \
    --body '{"amount": 3, "currencyCode": "6viZbWeu0WyHCl9X", "notifyType": "REFUND", "paymentProvider": "WALLET", "salesTax": 41, "vat": 63}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'SimulatePaymentOrderNotification' test.out

#- 152 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'mNXdNoD6gTOf0jHA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetPaymentOrderChargeStatus' test.out

#- 153 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'GetPlatformWalletConfig' test.out

#- 154 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'IOS' \
    --body '{"allowedBalanceOrigins": ["Twitch", "Xbox", "System"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'UpdatePlatformWalletConfig' test.out

#- 155 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Nintendo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'ResetPlatformWalletConfig' test.out

#- 156 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetRevocationConfig' test.out

#- 157 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'UpdateRevocationConfig' test.out

#- 158 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'DeleteRevocationConfig' test.out

#- 159 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'QueryRevocationHistories' test.out

#- 160 GetRevocationPluginConfig
$PYTHON -m $MODULE 'platform-get-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'GetRevocationPluginConfig' test.out

#- 161 UpdateRevocationPluginConfig
$PYTHON -m $MODULE 'platform-update-revocation-plugin-config' \
    --body '{"appConfig": {"appName": "3SqYUIQnwGbMTiA9"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "lnb5gdT3QnV1lkyf"}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'UpdateRevocationPluginConfig' test.out

#- 162 DeleteRevocationPluginConfig
$PYTHON -m $MODULE 'platform-delete-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'DeleteRevocationPluginConfig' test.out

#- 163 UploadRevocationPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'UploadRevocationPluginConfigCert' test.out

#- 164 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "BaVDBRlLxoAzljrh", "eventTopic": "daWNQoeso9mKjTRb", "maxAwarded": 29, "maxAwardedPerUser": 71, "namespaceExpression": "TLjWe4LfJee5PI5d", "rewardCode": "Fv5buhIZ4eMnCDQF", "rewardConditions": [{"condition": "CYcyYCi2g6s9FQKC", "conditionName": "fcu923YpsdjtVRUI", "eventName": "v3uIM3CoS6JahcK1", "rewardItems": [{"duration": 86, "endDate": "1979-08-10T00:00:00Z", "itemId": "6BT8bcW21yKVRUAU", "quantity": 10}, {"duration": 57, "endDate": "1974-04-02T00:00:00Z", "itemId": "dDIpRn2HgPRevBMj", "quantity": 8}, {"duration": 24, "endDate": "1982-05-03T00:00:00Z", "itemId": "I1QiMb8GRzCETFWS", "quantity": 10}]}, {"condition": "ABKOA0L11TgHUfOD", "conditionName": "RocsLmBbV1sCNpAD", "eventName": "wypkoh2Ufv88v1ng", "rewardItems": [{"duration": 55, "endDate": "1986-10-14T00:00:00Z", "itemId": "zscuFPv5tNXWb8n1", "quantity": 47}, {"duration": 88, "endDate": "1983-08-16T00:00:00Z", "itemId": "tGAVQvqyIVadq2JI", "quantity": 93}, {"duration": 71, "endDate": "1986-07-19T00:00:00Z", "itemId": "aFYCmQEyL35Lh1cC", "quantity": 56}]}, {"condition": "uQOBuTuYNR4hzPkG", "conditionName": "OuDvT1kGGvspIGcv", "eventName": "W7T4dk3MBzfrSZGl", "rewardItems": [{"duration": 26, "endDate": "1992-06-17T00:00:00Z", "itemId": "2k6wEP9rj7lO6vs4", "quantity": 41}, {"duration": 96, "endDate": "1990-04-26T00:00:00Z", "itemId": "fHLoSkvb8lbFBtF0", "quantity": 71}, {"duration": 69, "endDate": "1990-01-14T00:00:00Z", "itemId": "nxdtDeCtbUIxxTu6", "quantity": 92}]}], "userIdExpression": "COIejZfSnIavouuF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'CreateReward' test.out

#- 165 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'QueryRewards' test.out

#- 166 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'ExportRewards' test.out

#- 167 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'ImportRewards' test.out

#- 168 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'FdytTpAVx0pd4puX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'GetReward' test.out

#- 169 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'NhGU3RmYw0EwPDL8' \
    --body '{"description": "fEraUQnzcZCIvQUY", "eventTopic": "P4zKaJuBk11UoFtS", "maxAwarded": 59, "maxAwardedPerUser": 21, "namespaceExpression": "gGhhAxzoBKOqmwgA", "rewardCode": "OXAylHS3htDNYuRa", "rewardConditions": [{"condition": "6jU8OLKdFhRNswdE", "conditionName": "fL1i3SL7JlQ0Wmwg", "eventName": "ELy9cxgDaEUFiMTI", "rewardItems": [{"duration": 97, "endDate": "1971-09-16T00:00:00Z", "itemId": "pb5hZyPikzEmnmdO", "quantity": 99}, {"duration": 67, "endDate": "1989-05-17T00:00:00Z", "itemId": "CrpnpPPUyyCN4MFX", "quantity": 34}, {"duration": 38, "endDate": "1977-08-20T00:00:00Z", "itemId": "FzR6C20jVL8heTq0", "quantity": 99}]}, {"condition": "ScWAzVVdQZznMUlq", "conditionName": "j2djHHFFRxJPvHew", "eventName": "pv9IeC6LAtGzNwZU", "rewardItems": [{"duration": 10, "endDate": "1998-01-31T00:00:00Z", "itemId": "kRnfBio030WDtRFR", "quantity": 88}, {"duration": 46, "endDate": "1973-09-20T00:00:00Z", "itemId": "ZoX0eYwpjuQPo1Bi", "quantity": 92}, {"duration": 78, "endDate": "1974-05-22T00:00:00Z", "itemId": "R3fI6ZeDWbxHSLn6", "quantity": 21}]}, {"condition": "coNi9NFQFpBDG4ba", "conditionName": "NqdGxNGcHil6iUOT", "eventName": "Wxf4GH0N4kVmTj68", "rewardItems": [{"duration": 91, "endDate": "1997-02-27T00:00:00Z", "itemId": "bw4TKyPTxRuzNfmv", "quantity": 56}, {"duration": 99, "endDate": "1972-02-17T00:00:00Z", "itemId": "RfEoUuNmQrq6p7Wr", "quantity": 96}, {"duration": 83, "endDate": "1991-08-14T00:00:00Z", "itemId": "HtfbgUqbLQ3WTZF8", "quantity": 13}]}], "userIdExpression": "SXyMTygZRBzJUpXr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'UpdateReward' test.out

#- 170 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    '5ZkwYPLnvikBnp1I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'DeleteReward' test.out

#- 171 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'LBujZh8S62GO32C7' \
    --body '{"payload": {"3RnfIDxg4DkmnJtx": {}, "ZgIUMxGfQHmg4I1P": {}, "JybUmpLmiuZGk2Gg": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'CheckEventCondition' test.out

#- 172 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    '0Um3ITROznZA6EVE' \
    --body '{"conditionName": "XEqkFFyGp6XhgI2S", "userId": "uEyr4hactAHdK0X7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'DeleteRewardConditionRecord' test.out

#- 173 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'QuerySections' test.out

#- 174 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    'OZKu6MmVxEFptfSF' \
    --body '{"active": false, "displayOrder": 73, "endDate": "1987-04-24T00:00:00Z", "ext": {"8qXSfSkxhrHhjWxk": {}, "DQUTY21m19Eiqpyu": {}, "9P7Yh6ERWyedt6rk": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 89, "itemCount": 100, "rule": "SEQUENCE"}, "items": [{"id": "72ya2ruQcikSHwHP", "sku": "fyNRUhMXX7FiB3X6"}, {"id": "34iuF8pqhqsqRF4k", "sku": "qMbz4sxPUl2WbQNF"}, {"id": "NB2IE43MBCGNyjqn", "sku": "DuWD1qiZzXQxSDgH"}], "localizations": {"9L20T6fVxvK30nHM": {"description": "Yxf8xOR1DEgYR3iO", "localExt": {"ynLLtqSmaHvUExz8": {}, "o7TwcWL7fNlyGuj0": {}, "EkM7M8G78KZj2jWy": {}}, "longDescription": "KAzXYP9kO0rmonOp", "title": "gtONmMvrDH4IXc6t"}, "n8XayBI734jCTSnR": {"description": "qHTWC4NCbltixkXw", "localExt": {"XO0XemKHsUC5w7fm": {}, "zF80bbGhU1pjVwMs": {}, "LdJrt5FnAIz4y9yy": {}}, "longDescription": "462Mnwchld3LWFhC", "title": "1kBUvsUcnOXhewth"}, "szMsYOEmQiF1OsXf": {"description": "JG3psjIBzjaFmN0M", "localExt": {"InvVPAPEovHVVguu": {}, "svVUxkCG4IGPYHaR": {}, "vV3JGi5l0G5NBtXV": {}}, "longDescription": "TXK1JdoClQQGLneK", "title": "l3iXOvSGgZzuoTiO"}}, "name": "gT4AtBZJsMBPDcUu", "rotationType": "NONE", "startDate": "1985-09-12T00:00:00Z", "viewId": "1NgHaxQlxs2MPGkL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'CreateSection' test.out

#- 175 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'eY5CedGPB0iJF96N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'PurgeExpiredSection' test.out

#- 176 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'G7vODPmfnV8dOr38' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'GetSection' test.out

#- 177 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'jFYjFRDj47EZTCCw' \
    'z8yawNImZdPzt9ko' \
    --body '{"active": true, "displayOrder": 91, "endDate": "1989-11-01T00:00:00Z", "ext": {"ncKdyabXymlDvbcA": {}, "puoA5PCdXT4YD9fD": {}, "zx1WPpvLBMMNJG6T": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 88, "itemCount": 43, "rule": "SEQUENCE"}, "items": [{"id": "0jhJCrrsBPvGhWiP", "sku": "LLd5eChF7cgujItr"}, {"id": "2ZFjL5qUyimmVzOJ", "sku": "YebI5Egye4CkNIFS"}, {"id": "C7IcfdqOCaqFaXYK", "sku": "6AzVrp3wn2BlIfmy"}], "localizations": {"T5owJEG08jO7JMvk": {"description": "h08NQQhBIt2H2PvW", "localExt": {"FnJMiszwcYW9Jy4n": {}, "5q4WgYvJS0xuVskV": {}, "lA0TNAcmfUmAzc5J": {}}, "longDescription": "Vuc5LBd3uXt6TP1A", "title": "E4lqnIwLN2lGYqQS"}, "zIUdIqmVvmcAsPgT": {"description": "6XUEeRKSDbomdWWR", "localExt": {"i7OHZeGP4o1Tgbe8": {}, "J8xso71ULeHVV40s": {}, "jQ8mtTN08V3MMSrr": {}}, "longDescription": "V6FB8DFwD7WXkw7t", "title": "e8pQfvxY5zPZKMd5"}, "ItnXbDbXW9KlfgVv": {"description": "jjjExRk4JHYGa2nn", "localExt": {"yqvFCYJOJl9ljs9W": {}, "PwxzICEykNJeEn6e": {}, "iosoCvrGeDygOZbA": {}}, "longDescription": "1UGLox4eJuvLmou5", "title": "AtB5J9XxYqy0HcWU"}}, "name": "CcahA1tjiBugkSmA", "rotationType": "FIXED_PERIOD", "startDate": "1990-05-19T00:00:00Z", "viewId": "JjnydxAGgqH3ytkr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'UpdateSection' test.out

#- 178 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'oZ2tfFjNF99VixS5' \
    'Es3u4km3iKiNLRNa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'DeleteSection' test.out

#- 179 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'ListStores' test.out

#- 180 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "01SihgZby9mBdGrJ", "defaultRegion": "Y5J0e9jWcVTCNxjd", "description": "v8GxhJoB4lAkbm1A", "supportedLanguages": ["bh9QxLBfhpOp8UlD", "mFYNBSDEgsUMikj8", "NQNDlhAhwAc8mPZR"], "supportedRegions": ["llengCdfKGCBZMAb", "JnqDKuBGWmZti7VJ", "7O7dNzDBzVmGShol"], "title": "l8uD1hpBtpd4eLc1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'CreateStore' test.out

#- 181 ImportStore
eval_tap 0 181 'ImportStore # SKIP deprecated' test.out

#- 182 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'GetPublishedStore' test.out

#- 183 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'DeletePublishedStore' test.out

#- 184 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'GetPublishedStoreBackup' test.out

#- 185 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'RollbackPublishedStore' test.out

#- 186 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'PpHJmrL7AZ1MKcHB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetStore' test.out

#- 187 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'B1AfySUMZOWhtQEr' \
    --body '{"defaultLanguage": "iyOLkuGKVQWNOUAh", "defaultRegion": "5VXa79702d31zPHg", "description": "6tXTsGmv1XM6sr8t", "supportedLanguages": ["SaA0g0OCIEQYU4pH", "U7Kjrz4HAGIJOSxo", "JdIIw70J2JeqNTxs"], "supportedRegions": ["hoZJnsAkX5sxny0W", "LYMNb0QsxPlx64IQ", "UpSToD0bb0SXZUy9"], "title": "H0C213rnYfZ8c8zU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'UpdateStore' test.out

#- 188 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'RCckWWVlTYAkogbV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'DeleteStore' test.out

#- 189 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    '1bNoJJUhL5p56dnY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'QueryChanges' test.out

#- 190 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'Hk1iLtAXL33WCBnI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'PublishAll' test.out

#- 191 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'HoRNWTVvIN7c2uh7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'PublishSelected' test.out

#- 192 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'Ls9nxKiaoWmrw6n7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'SelectAllRecords' test.out

#- 193 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'VYPrZA5UWNq6yTj5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'GetStatistic' test.out

#- 194 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'WST6JF9lLvPS5jJ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'UnselectAllRecords' test.out

#- 195 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    '8vaRaaxVQeMUb1kv' \
    'Sj6jcjlxGsLgfrhB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'SelectRecord' test.out

#- 196 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'TH1QV91XmB5Z6en6' \
    'c5d620U9addYCAtu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'UnselectRecord' test.out

#- 197 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'Tx2FKoGRQ2i1n2WJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'CloneStore' test.out

#- 198 ExportStore
eval_tap 0 198 'ExportStore # SKIP deprecated' test.out

#- 199 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'QuerySubscriptions' test.out

#- 200 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'VJy6yBPVmpbwVG3M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'RecurringChargeSubscription' test.out

#- 201 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'wHy6yQU2RSNGWKnN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'GetTicketDynamic' test.out

#- 202 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'DFZOok9snWC9CFiR' \
    --body '{"orderNo": "mbELIzawfXvKu5Us"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'DecreaseTicketSale' test.out

#- 203 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'uFOUXohEHKCKphTi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'GetTicketBoothID' test.out

#- 204 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'ityfpZixQMzfhG3h' \
    --body '{"count": 58, "orderNo": "usyvaitTsWtL2AAt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'IncreaseTicketSale' test.out

#- 205 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'jEKW31SlSm20DzdK' \
    --body '{"achievements": [{"id": "k8FlVcy0hcEMFRkn", "value": 22}, {"id": "SAQhtiWA2DHIocFR", "value": 81}, {"id": "KOabgb0l3UURltNb", "value": 61}], "steamUserId": "x8aUB1xXuK2MwrRJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'UnlockSteamUserAchievement' test.out

#- 206 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'ukMTkO00KLgddr0U' \
    'Uiy5jm1w2g65Jkao' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'GetXblUserAchievements' test.out

#- 207 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'PuBsuSb0LePf5b8M' \
    --body '{"achievements": [{"id": "J94DAh1Mc7VkHxj8", "percentComplete": 21}, {"id": "n6TTQtwMX4QAE2aV", "percentComplete": 28}, {"id": "l1P0cjdc49Ah8hoD", "percentComplete": 99}], "serviceConfigId": "m2jjNrqEmuEf6JRp", "titleId": "qZEUH2Rr5lkfHjqV", "xboxUserId": "CMpunzeSPkf8Y5ks"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'UpdateXblUserAchievement' test.out

#- 208 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'iqVvcGZxTP7pduqX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AnonymizeCampaign' test.out

#- 209 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    '3e9tt0zz5gs7Yuyx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AnonymizeEntitlement' test.out

#- 210 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'JLe1TkfLiM9EqyhF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AnonymizeFulfillment' test.out

#- 211 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'h7mq6sgk5cHaJYkz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AnonymizeIntegration' test.out

#- 212 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'ClqPty2kxgyry1MM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeOrder' test.out

#- 213 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    '9eo43Qi5cRehBB7o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AnonymizePayment' test.out

#- 214 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    '24lw21Z3nE04Cbkp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AnonymizeRevocation' test.out

#- 215 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'n0yX44aL9f0QyO5Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeSubscription' test.out

#- 216 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'XVhTiaE4WKnEeaUd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AnonymizeWallet' test.out

#- 217 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'AmgmnzKSVlXsRNMy' \
    'OCULUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'GetUserDLCByPlatform' test.out

#- 218 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'GhKNxavCN2N47HbR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'GetUserDLC' test.out

#- 219 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    '5lY76lAzKbyHphqw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'QueryUserEntitlements' test.out

#- 220 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'B5Iehzt3ErL5T5rv' \
    --body '[{"endDate": "1985-04-10T00:00:00Z", "grantedCode": "RXJxUvm1xIvCywA9", "itemId": "5KVla3LCTgTkPtcV", "itemNamespace": "fRHox2lJjo1I9glu", "language": "heSi-Ih", "quantity": 97, "region": "BbMIhMZL5o3htHW6", "source": "REWARD", "startDate": "1992-07-09T00:00:00Z", "storeId": "aiQKdHknLotplfBO"}, {"endDate": "1982-06-02T00:00:00Z", "grantedCode": "JgVZofu7lNuwrS7x", "itemId": "f7BiZI9Jujxs7GKf", "itemNamespace": "2LOlVbEWajKUr3rx", "language": "tE-158", "quantity": 40, "region": "guE8Xvdv1azJ2OSk", "source": "REFERRAL_BONUS", "startDate": "1987-01-27T00:00:00Z", "storeId": "MDAkWOP9y3eP20aR"}, {"endDate": "1989-09-07T00:00:00Z", "grantedCode": "VXYPkIGnj7nGzgSk", "itemId": "Ty0cIm2Tc4sbYVp7", "itemNamespace": "amyDRQk3QGp0uzzv", "language": "GxA-yoeO", "quantity": 46, "region": "Excmm4fkoNMVNk6z", "source": "IAP", "startDate": "1984-09-08T00:00:00Z", "storeId": "FI60uUrVMjqwLfyh"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'GrantUserEntitlement' test.out

#- 221 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    '5UUBSKyenhZ56H3l' \
    '3jc1060kqFKNcGHY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'GetUserAppEntitlementByAppId' test.out

#- 222 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'IXDqQpOY256yQcC8' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'QueryUserEntitlementsByAppType' test.out

#- 223 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'PodPokDUivfNI3Kd' \
    'SIbTi8dxU11tPBlM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'GetUserEntitlementByItemId' test.out

#- 224 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'Cz6SSpxt0aZZr3Sb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'GetUserActiveEntitlementsByItemIds' test.out

#- 225 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'JHkTstBGTm2OFHVE' \
    'oRljsGF5AYZlEYqT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GetUserEntitlementBySku' test.out

#- 226 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'VSCLemvpJXl2drfG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'ExistsAnyUserActiveEntitlement' test.out

#- 227 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'Igu0ksPtzdXjtRaB' \
    '["Olhg63PduP0G77oZ", "V8BGfavVPOhaaf5e", "ExcjABRx8qNMv4XL"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 228 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'W0xlb6yLTssmZXLv' \
    'xRhf6ICrMr8z6e2U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 229 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'DBycYrDDg5iDNLOJ' \
    'JmzGW9AQMDnaFw1u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GetUserEntitlementOwnershipByItemId' test.out

#- 230 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    '7BLbxxmghZp6iVAJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlementOwnershipByItemIds' test.out

#- 231 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '6lYOK3cwO9ln34fi' \
    'LxPN5xKoNNYd5p2y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'GetUserEntitlementOwnershipBySku' test.out

#- 232 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'VsBAv2ZVlrnlY8y9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'RevokeAllEntitlements' test.out

#- 233 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    '1hD1ZHh1VjLqa0AO' \
    'DLarMcrlOCtMCyPH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'RevokeUserEntitlements' test.out

#- 234 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'nS8uePyiByYQOgKK' \
    'v9kQYaSI3bbqZQkX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlement' test.out

#- 235 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'Ans7VrdNH8v1oP98' \
    'hanhE18UbY1Zkrfk' \
    --body '{"endDate": "1998-11-23T00:00:00Z", "nullFieldList": ["Xn6jwfR02GfMrXzI", "7oWD1mZ9rW6QdtPe", "4YleMg5NGs1Pmz6A"], "startDate": "1977-11-11T00:00:00Z", "status": "ACTIVE", "useCount": 49}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'UpdateUserEntitlement' test.out

#- 236 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'bh0FbOWyhAnMP6Bd' \
    'Bw6d4UOI7Tr9NHcX' \
    --body '{"options": ["eEWIpyYx9wOuNquv", "2qkqRR9Nwd8OrgT5", "HMaelKs3hdNcCPnr"], "requestId": "mZDNctQe0IM586qY", "useCount": 6}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'ConsumeUserEntitlement' test.out

#- 237 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'kflegYoVHYdQPAsG' \
    'fQVawbSlqUfFfZyt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'DisableUserEntitlement' test.out

#- 238 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'HO4xrQvXR88ArNPk' \
    'MbfhbrTb4ZPG4R5d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'EnableUserEntitlement' test.out

#- 239 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'qhreKq9si5LTZGjf' \
    'JI0GRPR9FWa3sAlK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementHistories' test.out

#- 240 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'nzZ5Joq98jWszWZx' \
    'mbhMr5aDNyd7VDhT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'RevokeUserEntitlement' test.out

#- 241 RevokeUseCount
$PYTHON -m $MODULE 'platform-revoke-use-count' \
    'hmXAsBwC4MOmSF5Z' \
    'PpYXTbgh3hVKyU97' \
    --body '{"reason": "N87zJHVwE86VYnuo", "useCount": 69}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'RevokeUseCount' test.out

#- 242 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    'ezdlRlTTSLmDolGd' \
    'b7yXLAgfgESHWCK8' \
    --body '{"requestId": "LccJJmXX0pmy1KDJ", "useCount": 39}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'SellUserEntitlement' test.out

#- 243 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'ggzKZ3nqWutrpjBO' \
    --body '{"duration": 27, "endDate": "1981-08-17T00:00:00Z", "itemId": "n9QN513GmIqfQ8mJ", "itemSku": "bg0TSRxhI4XnmuQN", "language": "65HKi5qvwLIqgfXv", "metadata": {"KjhXcfKE45hKdn2A": {}, "y5KgtWue3XkqcMKE": {}, "9l0uRkf5RxDdVVe0": {}}, "order": {"currency": {"currencyCode": "VvPmen8keuXuWuit", "currencySymbol": "b85Ns7DhXCIneqdd", "currencyType": "VIRTUAL", "decimals": 40, "namespace": "LcI8Vh4bQO4Nc65z"}, "ext": {"cFKgC0oMEpgLEiSt": {}, "lzCMldcic4UcTKpd": {}, "yvGEAo7B9gTsb09Y": {}}, "free": true}, "orderNo": "RjKxi25l9mb1mSJf", "origin": "GooglePlay", "quantity": 51, "region": "UaLwOsYRIJearztP", "source": "PAYMENT", "startDate": "1990-05-10T00:00:00Z", "storeId": "42H1n3ZvUrBoqK16"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'FulfillItem' test.out

#- 244 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'btU6SoaoiAtMgNN8' \
    --body '{"code": "B4oo9jFmBqiyicQH", "language": "kRa-246", "region": "QaxbdG9IxEoxcgOE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'RedeemCode' test.out

#- 245 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'mGQpzN4HM3v5wAii' \
    --body '{"metadata": {"mBQXCxR1cObsys0S": {}, "aqnYIBTANshJcdLE": {}, "ofyiS3dO8j3taWbS": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "LgdI7tdEmvBnrNte", "namespace": "w73bedVZ6xFNiFC0"}, "item": {"itemId": "HSIZAGhHJlyMBkbU", "itemSku": "Pi2FDgx1gJONPjy1", "itemType": "ei7AZBrLdMJG912C"}, "quantity": 72, "type": "CURRENCY"}, {"currency": {"currencyCode": "x1H9kC6LzFqk7MSt", "namespace": "4enxGbQr0GStncRV"}, "item": {"itemId": "LvJm4u9ltRo1cXuc", "itemSku": "o8zvapmS8p27dvzU", "itemType": "WMz6IheEap1PhjtZ"}, "quantity": 21, "type": "ITEM"}, {"currency": {"currencyCode": "nu6Ke0rhmQrBLti0", "namespace": "OZtmm5xYReY6SgfT"}, "item": {"itemId": "y3HUPSrR6V6wTNkt", "itemSku": "WOwGcqmkqou4IX6y", "itemType": "nCg7jZBPZUjh5Id1"}, "quantity": 99, "type": "ITEM"}], "source": "PURCHASE", "transactionId": "aUDi2fDyXlYJu8bI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'FulfillRewards' test.out

#- 246 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'kkFh5LqxA2jff0fT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'QueryUserIAPOrders' test.out

#- 247 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'RIYip6c9di8JeefX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'QueryAllUserIAPOrders' test.out

#- 248 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'J2PdIoHdoDHgvwcW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'QueryUserIAPConsumeHistory' test.out

#- 249 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'xlmJoJSnhyf4L6dZ' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "mId-VC", "productId": "RVZONAcvKXL23ppv", "region": "or8grcvFvYajtvdi", "transactionId": "qyZzxREBSrOk54Ey", "type": "APPLE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'MockFulfillIAPItem' test.out

#- 250 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'SfJb7YC46l63YRc0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'QueryUserOrders' test.out

#- 251 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'T3d9XaFEWXtvTExH' \
    --body '{"currencyCode": "o1HliWVA9kYxDaeg", "currencyNamespace": "AgXI2ciZ5FWoyqYl", "discountedPrice": 29, "ext": {"KD0zlFtltcFGPdVe": {}, "0VJQksEtHq5KHA9b": {}, "aTP1jNjpn8azMyTB": {}}, "itemId": "LnxtGnH0h3TvkynR", "language": "dR0cTxgD0WOWAsTh", "options": {"skipPriceValidation": false}, "platform": "Epic", "price": 78, "quantity": 55, "region": "n6xBAApmumWxYTfE", "returnUrl": "Em2g8JpfOhv1dFmm", "sandbox": true, "sectionId": "xnwerZoIJ2JMtHAD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'AdminCreateUserOrder' test.out

#- 252 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    '8gJdK4CJBY63ASIu' \
    'ZtE2WuycIdVm37lV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'CountOfPurchasedItem' test.out

#- 253 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'yVYhbj7X96t5WMLd' \
    'od5DYqp6XDPJmYDZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'GetUserOrder' test.out

#- 254 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'qWoL8k0jEDj1R673' \
    'CfYbn53kIRN1df13' \
    --body '{"status": "INIT", "statusReason": "6fWMWqZYmAvVETTs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'UpdateUserOrderStatus' test.out

#- 255 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'jp3kTD5DUdBvhgsf' \
    'cLURAHqkEpmWErwM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'FulfillUserOrder' test.out

#- 256 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'kbsCK44WEKYCuqx8' \
    'xzh9bTsHGm5hk6Yp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'GetUserOrderGrant' test.out

#- 257 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'n8KsMKfuARcHovGU' \
    'ZSzWfq3hqssnqUPI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'GetUserOrderHistories' test.out

#- 258 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'JabCPMhqOeDXc5LH' \
    '8xN38dVbdD5L9eqq' \
    --body '{"additionalData": {"cardSummary": "8PstBnVeYTD7i7fq"}, "authorisedTime": "1991-12-08T00:00:00Z", "chargebackReversedTime": "1993-03-11T00:00:00Z", "chargebackTime": "1997-06-23T00:00:00Z", "chargedTime": "1983-04-08T00:00:00Z", "createdTime": "1982-11-28T00:00:00Z", "currency": {"currencyCode": "x19GWm87P1GbEQA6", "currencySymbol": "nI1VhgTvfzwfgRZn", "currencyType": "VIRTUAL", "decimals": 79, "namespace": "mmNGIWjV9L9aA57k"}, "customParameters": {"R2ACNzI10tZr3Ajm": {}, "wxrpjfgamOka0iwQ": {}, "FwqJrWlE1xE0Agbt": {}}, "extOrderNo": "qawrlckTguotHZZn", "extTxId": "Bkb1WomHQ23RrmGI", "extUserId": "0fa4tSghREoTAvCl", "issuedAt": "1980-09-01T00:00:00Z", "metadata": {"zrUTJgBjWwZMcxIc": "mhutMHEeUDIyZ6bU", "l6Q4DAwzeZS20lWb": "Iy7iWsAEY3T2YDXu", "JSzkSZfZ5duijZET": "izaQixMgpWQ9PgUc"}, "namespace": "B3N69aWeqMy8NAiT", "nonceStr": "9jmCgwDPgvbhdCor", "paymentMethod": "BgPIEGgJfwbFJ8VU", "paymentMethodFee": 48, "paymentOrderNo": "EK4sZzj7oPP3OeZV", "paymentProvider": "XSOLLA", "paymentProviderFee": 66, "paymentStationUrl": "aXbHnhR8gT3if17n", "price": 37, "refundedTime": "1996-04-19T00:00:00Z", "salesTax": 6, "sandbox": false, "sku": "FN9k93aNy4vvrPXP", "status": "DELETED", "statusReason": "Snc4UqgNJcVC0MQn", "subscriptionId": "jUphnyKSPgLrITdq", "subtotalPrice": 13, "targetNamespace": "7J3QrgnhZMehNOnc", "targetUserId": "XNM18ZiBLaa5iN5b", "tax": 47, "totalPrice": 84, "totalTax": 53, "txEndTime": "1986-08-21T00:00:00Z", "type": "d1kj4Qj6RS5aO256", "userId": "ceteBSz425Kp2PGW", "vat": 68}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'ProcessUserOrderNotification' test.out

#- 259 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'gpXu2mBdRvF84eD5' \
    'm02245YlrGlfgrzL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'DownloadUserOrderReceipt' test.out

#- 260 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'ifZvRPXjiYCPM52H' \
    --body '{"currencyCode": "K8ASyze4T9TmQupO", "currencyNamespace": "zuaRV8Vw1OuyVC7J", "customParameters": {"cK5UdheuW7HOMooX": {}, "zmW321H7CGe7BlGb": {}, "NTtvAEsQs0WkD6Y5": {}}, "description": "55p9oqb5MeMGL8kI", "extOrderNo": "TGmF087BWKC6wzHg", "extUserId": "wFqS6c2YCA1r312B", "itemType": "SEASON", "language": "eHVj_YkhW-da", "metadata": {"c6734MnrbjAM32Rl": "Q3Wpg0XNZCsESCHR", "PA5OQX8twQrDu49J": "FXjPc1tJBaHYTZ2I", "dgUYmmt7HXJCUjwN": "MnmrmR9dDVbvyNup"}, "notifyUrl": "YCzyYEaMgXsszL7h", "omitNotification": true, "platform": "JBGkT1hNjHr2icYZ", "price": 50, "recurringPaymentOrderNo": "jakKtgPfJHbuwF3a", "region": "ZQrVPWyZpnVjbpot", "returnUrl": "D8HTOOdvA4UhdTY2", "sandbox": true, "sku": "96Qjoaq06aI2zoqm", "subscriptionId": "aPgdCvQwz6hdCMrH", "title": "gpPD12BS4Q8u6QqK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'CreateUserPaymentOrder' test.out

#- 261 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '4CeZXmSBfgrJcwR3' \
    'qktAdH94tziEpGVX' \
    --body '{"description": "sUvez1lbenagh9kC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'RefundUserPaymentOrder' test.out

#- 262 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'PNSZTIlkM5IYJnbF' \
    --body '{"code": "prRWLjHPiPqvMMmY", "orderNo": "JeKvshwdE9XuQ8gy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'ApplyUserRedemption' test.out

#- 263 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'kJm5GMKtZSng8Oi6' \
    --body '{"meta": {"TDpSGwc7wXieEOkn": {}, "4KNYWbvsmtsOVvpK": {}, "YJyOQGUiqcJ2Jldy": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Other", "currencyCode": "3ukTxjfHXQQVmxHm", "namespace": "CVmuzoO2qep49tDH"}, "entitlement": {"entitlementId": "Fl18cQlJCgKFmN85"}, "item": {"itemIdentity": "1YX8ylpv3hDDLL1n", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 43, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "3mToMhBjPD6aztTy", "namespace": "MQghPWOOAzTmCVFE"}, "entitlement": {"entitlementId": "HDMT1eDVbcvyxtTx"}, "item": {"itemIdentity": "uptcOYSTj2AWA5f6", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 39, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "vgYPIFEVZLGzEglE", "namespace": "e95LWKrkj7TPuigp"}, "entitlement": {"entitlementId": "3RiJofgD4VypGT4c"}, "item": {"itemIdentity": "TfKNrjPqUk0t9aqu", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 59, "type": "ENTITLEMENT"}], "source": "IAP", "transactionId": "2UVIQMA6BOpxtYbm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'DoRevocation' test.out

#- 264 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    'QwS5kNxCPLeKM4cQ' \
    --body '{"gameSessionId": "l8DlY91SXBeHwrkP", "payload": {"CaAycmEvk3rVTLjZ": {}, "T9qayJJtW8sqkuIB": {}, "d1NrGWPVvOhMTdfT": {}}, "scid": "jLVxzjyQsgv5n6Vn", "sessionTemplateName": "7Tiakc1Rzb4MCHH4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'RegisterXblSessions' test.out

#- 265 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'aATHwPTM0LfcjvOk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'QueryUserSubscriptions' test.out

#- 266 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'o7332ZZa1YfuaQ7g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'GetUserSubscriptionActivities' test.out

#- 267 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'Pgiz2EBME5ikH5iU' \
    --body '{"grantDays": 94, "itemId": "4Ia2UtS4T1v2y9Je", "language": "7apQfNdDyT3a0EGp", "reason": "HgGLUqdG3kBfGvwj", "region": "wttys4GvDvs1H5ju", "source": "f5Cq950XtiMxQDIH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PlatformSubscribeSubscription' test.out

#- 268 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'nPin3vZc9bUYgwdN' \
    'mcpdldDn2Y2l1kZW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 269 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'nqjJaGGTFaJHecFy' \
    '9m5s6oIWMnk88GXM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'GetUserSubscription' test.out

#- 270 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'rS82vN0N2236tI7v' \
    '0x9St2EFfU2FbyIX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'DeleteUserSubscription' test.out

#- 271 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'ierPr2qLKBXRYt7v' \
    '7Wfg2omS11YyIWGP' \
    --body '{"immediate": false, "reason": "0rZGlRUuJ7HggA1D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'CancelSubscription' test.out

#- 272 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    '8DBtkE9JX7oDFoXp' \
    'Z9sy7dEuiT7OrRdH' \
    --body '{"grantDays": 20, "reason": "5zPZbllwvt3TjGez"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'GrantDaysToSubscription' test.out

#- 273 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'RRUjCNiQauO5Cfja' \
    '0qWoqWrZJAMVQaCd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'GetUserSubscriptionBillingHistories' test.out

#- 274 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    '4UgSRsFc8FKz1j1H' \
    'faNk1P4hC8wgvaTI' \
    --body '{"additionalData": {"cardSummary": "ntj0rekmCKMOHEhe"}, "authorisedTime": "1971-01-19T00:00:00Z", "chargebackReversedTime": "1979-01-12T00:00:00Z", "chargebackTime": "1978-05-30T00:00:00Z", "chargedTime": "1981-08-28T00:00:00Z", "createdTime": "1974-04-09T00:00:00Z", "currency": {"currencyCode": "JsQpzHxEsiEsZH3U", "currencySymbol": "VmVcOxU0GsP6oBsZ", "currencyType": "VIRTUAL", "decimals": 24, "namespace": "1nIeavdWM4UiM8xE"}, "customParameters": {"2iHgKDtYUBWq18cb": {}, "nbAjszS84wsQH451": {}, "BnJRGwBPZ82ML7i8": {}}, "extOrderNo": "5xAiG2FleXiqNPey", "extTxId": "mXgMK8gaxYcDDZjC", "extUserId": "rklUdoPRrSlMOoEl", "issuedAt": "1976-08-29T00:00:00Z", "metadata": {"CitDiZDBLqmmiE0h": "D2A6L9zZJpI7J4nj", "h6wMyuNtA5mMerAv": "f2EK1rsQWD1sviho", "AZBd4hkykRLwN2LH": "FkXjhDf4RPTS1xmI"}, "namespace": "M78uco5di3sJNayf", "nonceStr": "JakaJtAFsemukeOn", "paymentMethod": "QqvXAFVKLeOpEjPJ", "paymentMethodFee": 61, "paymentOrderNo": "0BhvZVrOsZSqQjmd", "paymentProvider": "PAYPAL", "paymentProviderFee": 0, "paymentStationUrl": "6PSoXYb9tc6rYyOi", "price": 0, "refundedTime": "1995-10-25T00:00:00Z", "salesTax": 44, "sandbox": true, "sku": "hNCAUQUVGJTsED5t", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "ZctunIw8zzjr1oeY", "subscriptionId": "1p4P0xno1luSqciM", "subtotalPrice": 88, "targetNamespace": "rfqsoJ7AkLiYjJvl", "targetUserId": "KhH1ccnrp3T2fKqq", "tax": 59, "totalPrice": 43, "totalTax": 52, "txEndTime": "1995-10-19T00:00:00Z", "type": "5cRj529cEGlYlBTF", "userId": "D4MBzAgdtJfaktaC", "vat": 3}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'ProcessUserSubscriptionNotification' test.out

#- 275 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'epqpoIzofQ17bQpO' \
    'tqU8Y63DFSnh5Ibd' \
    --body '{"count": 10, "orderNo": "jsHqU3mTbQzxkHXS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'AcquireUserTicket' test.out

#- 276 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'iDFpwgjtHkQyb5yo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'QueryUserCurrencyWallets' test.out

#- 277 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'i3fhBKutgKyddONr' \
    'CA3C8SvqUKqpSaqB' \
    --body '{"allowOverdraft": true, "amount": 100, "balanceOrigin": "Oculus", "balanceSource": "DLC_REVOCATION", "metadata": {"EePoWos4O5MRxu5c": {}, "YFtJZeinW64n9q4a": {}, "sIfg6qpRvHGYNAfv": {}}, "reason": "ls7pbw9yPFofHSVj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'DebitUserWalletByCurrencyCode' test.out

#- 278 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'TbM9IHL2JcpnLuin' \
    'dE3Ucg05FtWiuP1x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'ListUserCurrencyTransactions' test.out

#- 279 CheckWallet
eval_tap 0 279 'CheckWallet # SKIP deprecated' test.out

#- 280 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'yPeWov5pJJdyu2Tx' \
    'bDTPkZkYfTO2Gg00' \
    --body '{"amount": 74, "expireAt": "1974-01-17T00:00:00Z", "metadata": {"jjtIQ7ipAfw6xTfJ": {}, "iEwGhGbMCnu8NHDP": {}, "iOQzKhR4x3pYj5be": {}}, "origin": "Epic", "reason": "x03hTzeUaFK6P6yx", "source": "REFERRAL_BONUS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'CreditUserWallet' test.out

#- 281 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'xqlGGOe2VYsej3cS' \
    'W6YWXMTlqVrGyQYD' \
    --body '{"amount": 28, "metadata": {"AZrDNCoJ22RroweT": {}, "9Xanvbg8nAmHsrmz": {}, "oPN3GJz77wPralgk": {}}, "walletPlatform": "Oculus"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PayWithUserWallet' test.out

#- 282 GetUserWallet
eval_tap 0 282 'GetUserWallet # SKIP deprecated' test.out

#- 283 DebitUserWallet
eval_tap 0 283 'DebitUserWallet # SKIP deprecated' test.out

#- 284 DisableUserWallet
eval_tap 0 284 'DisableUserWallet # SKIP deprecated' test.out

#- 285 EnableUserWallet
eval_tap 0 285 'EnableUserWallet # SKIP deprecated' test.out

#- 286 ListUserWalletTransactions
eval_tap 0 286 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 287 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'ListViews' test.out

#- 288 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    '9IC4460Wck2oK2mL' \
    --body '{"displayOrder": 46, "localizations": {"q27RgguQ45JSoDgf": {"description": "LayvPNWmvzOaDtop", "localExt": {"fGPnF4i8PP7jdmy3": {}, "KsRDI0m4nKNGlXp2": {}, "jJfLGd0zQqYmGkk8": {}}, "longDescription": "Pcq83l2hWOuqsilA", "title": "WXNFfxIWM9jL08jt"}, "CIr8STWuiyz2eOgn": {"description": "y7d8WVlcOTKoZimY", "localExt": {"NHB2ph25oEsCRrlY": {}, "6AX1ksmS6Cm75yFZ": {}, "Vt1HZPcFbl4XrKUp": {}}, "longDescription": "hPevxFz1b7Q3NwVn", "title": "8PU8JfFPiZpcqq8q"}, "H8MR9K5kA67H3XOJ": {"description": "lQfOCN2keFNIQusm", "localExt": {"cAYWBLZg00dmqgWR": {}, "mPnXpH8xifqavEfK": {}, "K0Dei3ChLwkIGKtg": {}}, "longDescription": "DjDah0UewhSyu7JM", "title": "OvmbqHpLDqY64bsf"}}, "name": "WMA6zIWiASrarIiI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'CreateView' test.out

#- 289 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'LeXO18VYOBdYdQra' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'GetView' test.out

#- 290 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'UweJSX5gGRLc0R4v' \
    'MMPlJqY7ujDDLuoQ' \
    --body '{"displayOrder": 73, "localizations": {"HBtEtzzbIbJ6nsmY": {"description": "ALYAas29PBhKjKkX", "localExt": {"DnEXVzzBDNoUXOIk": {}, "GhmAMgJu6c1uzCA6": {}, "57ulArgYuyjFEveR": {}}, "longDescription": "vl0xjoSZYArBlpKX", "title": "pe1zYzna0T42qYhP"}, "sMMX4Dg6kBhhmAmG": {"description": "WgONbsaq6FR89FVc", "localExt": {"E5vUWRlOGzgjnghE": {}, "eYuTA3fZ9naIn2Eh": {}, "pBnamOqQfF1i9lDi": {}}, "longDescription": "17TuzOCkfreVXF3F", "title": "57a8i8FBQVq8F8UH"}, "FjnV4a8qkT208c4E": {"description": "qnaczanLg5zKTtaP", "localExt": {"mN6tWQqV1V78ZIjg": {}, "1EtBZbAWeHGdU9ml": {}, "lRGwL1hP0ILR0Ela": {}}, "longDescription": "7ZLwTA0wt5op6F6Z", "title": "1a1sBmUaCx3pnw2U"}}, "name": "qOcXFVD0pboKkDZJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'UpdateView' test.out

#- 291 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'ufSvoXGyr43yZ4vi' \
    'pgYCZiVhuUlRF8bg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'DeleteView' test.out

#- 292 QueryWallets
eval_tap 0 292 'QueryWallets # SKIP deprecated' test.out

#- 293 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 92, "expireAt": "1992-01-19T00:00:00Z", "metadata": {"Z3T7DC5TO5zuEOtC": {}, "w7S3b8oIW8rduVEp": {}, "RjbhlZ8rATgmfiV8": {}}, "origin": "Playstation", "reason": "LQLRh64Y1jopYiTR", "source": "SELL_BACK"}, "currencyCode": "m2eu4s6Vt77Z7VYC", "userIds": ["M7nweO9MSckJNZeD", "zMbz1C3ZtjGu9Cxa", "hfW7AVHVE6TamhtD"]}, {"creditRequest": {"amount": 97, "expireAt": "1984-01-03T00:00:00Z", "metadata": {"g8X3qrN4NJQHucDP": {}, "corTkEhvJJBHTf7g": {}, "HQdNqoM8JpOKNAU3": {}}, "origin": "System", "reason": "hDeba57ZY9YNNrTc", "source": "ACHIEVEMENT"}, "currencyCode": "OoikruHKYKNEVJSz", "userIds": ["WA3702McnnKWV37C", "LHYvul2IsFExmn4G", "eli2Uey4fuSj1kSe"]}, {"creditRequest": {"amount": 98, "expireAt": "1985-10-25T00:00:00Z", "metadata": {"MH5mOZyTMMDazz0z": {}, "G1FmCCywXfHj329W": {}, "cNk8k8qK4gJrux6t": {}}, "origin": "IOS", "reason": "cJCHbaM8I2sFnR0i", "source": "SELL_BACK"}, "currencyCode": "4pTU7jATbVBcDGud", "userIds": ["QQm98BKOdsoaTqFh", "WaPGfJVUla8UlMM4", "dLfBWZeRFQvrB1ls"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'BulkCredit' test.out

#- 294 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "Cc3k5J2qbHYNekyX", "request": {"allowOverdraft": false, "amount": 40, "balanceOrigin": "Xbox", "balanceSource": "ORDER_REVOCATION", "metadata": {"ajs9HWygfQVPPqE6": {}, "XNxmrOFx6AenNJCz": {}, "eLqjOhHMsieBzDBh": {}}, "reason": "i6oZhjEnbkZp3ZHk"}, "userIds": ["N7ybL3lT1Ois7OsT", "bI6vW6lvytcmR4QR", "JnKJ2ksygYZVyQIU"]}, {"currencyCode": "ElVV8XJ7Jg2JP8JK", "request": {"allowOverdraft": false, "amount": 51, "balanceOrigin": "System", "balanceSource": "EXPIRATION", "metadata": {"5n02q1qbbj3sLmfY": {}, "zDVAVhXts4CdsniS": {}, "JKrJ4BrdfV658ZBV": {}}, "reason": "GgxlpGxhD9kKX2uB"}, "userIds": ["7roCNo3Qw4Z54sNM", "UIh1pfP8bRBVoq80", "s82e3yxhkTFfQHB8"]}, {"currencyCode": "O5ke34NGuMLQ7iPa", "request": {"allowOverdraft": true, "amount": 26, "balanceOrigin": "GooglePlay", "balanceSource": "EXPIRATION", "metadata": {"lc3lbrPkW2foKqIz": {}, "9z80ICxp4M7Opf9o": {}, "RlvBsYj4IcbdUz2c": {}}, "reason": "BWKIUuPLfvTFl9Db"}, "userIds": ["HQLYWCwsAVcQ0VGE", "UxlcNQWOpRLETWMA", "v0uJ30L51TxrdknW"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'BulkDebit' test.out

#- 295 GetWallet
eval_tap 0 295 'GetWallet # SKIP deprecated' test.out

#- 296 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    '52x2o1yDO6bwcKYe' \
    'FoxUWdvEBTwUyzq5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'SyncOrders' test.out

#- 297 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["bzdNEHv6GmaokUOI", "adEDAmp524IRplmK", "cwvGguz7SAcGvV4l"], "apiKey": "CJgcrAut2gYpuKbE", "authoriseAsCapture": true, "blockedPaymentMethods": ["XqjhryZuWF0aXyAf", "nT9KMwZkUmivHbmY", "wS4MpDJ1DYOnlVrh"], "clientKey": "flY3MzIef9mtXHbh", "dropInSettings": "3agt9HQKHNhlzYRt", "liveEndpointUrlPrefix": "A24gRvv870jG3e6k", "merchantAccount": "pEZmtrpzaLfufFoH", "notificationHmacKey": "0vIAAZ3D07rENh4L", "notificationPassword": "QyLj7QmX1ijJDLqj", "notificationUsername": "yW5nSpi08dnnmoWG", "returnUrl": "bDOWBzflDPp8sE7b", "settings": "cL6xy49IPWxqs6jA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'TestAdyenConfig' test.out

#- 298 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "QJWL8Yc3AKtQffBJ", "privateKey": "PNo4VIzCxIBQt7BE", "publicKey": "sLhZnLrMlvvXDmz8", "returnUrl": "vDIkHRMj2pIYdQhO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'TestAliPayConfig' test.out

#- 299 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "INS631eYxKFwpR5u", "secretKey": "kyHmVB2oTqRWbK0u"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'TestCheckoutConfig' test.out

#- 300 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'DebugMatchedPaymentMerchantConfig' test.out

#- 301 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "bDt08F3Ptynki71N", "clientSecret": "ZANUG3XywOPxcLTU", "returnUrl": "0y3maqZGwBZAszrs", "webHookId": "6F6qWE8F5UT7Jy1J"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'TestPayPalConfig' test.out

#- 302 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["0W4BcrVEEfr25k1H", "2s4V2KN0PLlR8cmH", "o3XR1GqcOtFZDsjH"], "publishableKey": "NjL304sV2h9pg3yv", "secretKey": "d9MZqnUseNuEx7YD", "webhookSecret": "EkdFOw34ZkvghT5B"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'TestStripeConfig' test.out

#- 303 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "0olJY1qewjIDEZed", "key": "b90DCSoLAgeUljuQ", "mchid": "XNi35z75tQmcrR08", "returnUrl": "dqYhgjNEKxgigqjI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'TestWxPayConfig' test.out

#- 304 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "aaftddfk3N3FUGt7", "flowCompletionUrl": "hRJWz66woOwujZiq", "merchantId": 36, "projectId": 0, "projectSecretKey": "VmhfRRK7pehYZgLj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'TestXsollaConfig' test.out

#- 305 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'FarF9k0U2fuxYpTL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'GetPaymentMerchantConfig' test.out

#- 306 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'F2CAqFwYdrzmGzkv' \
    --body '{"allowedPaymentMethods": ["zgJn2pWVs6zZRXBA", "exxsuLkWktcAykay", "7LItVjr1YSzeXfUi"], "apiKey": "XANoRioh11etL7rv", "authoriseAsCapture": true, "blockedPaymentMethods": ["aTFkYqyDBVeKhVWl", "gMI2a4HuuQiMf3Zt", "SRaKTvnYQcQK3OLU"], "clientKey": "5xNeaLjRoNMmfyuS", "dropInSettings": "ugV63aIt0NDFEcKE", "liveEndpointUrlPrefix": "QaxvtIGC9xYvHbX0", "merchantAccount": "ptwZqHLOEqFcFlBm", "notificationHmacKey": "znrLziwCnnibCjn2", "notificationPassword": "uxoSkuKry9iZZvtr", "notificationUsername": "eyTjGpaUSGjv2AbK", "returnUrl": "gIoGvyLZGyV2nNIK", "settings": "GyVatdlj1BAkRkfD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'UpdateAdyenConfig' test.out

#- 307 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    '5QI95OctLxGf6Sil' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'TestAdyenConfigById' test.out

#- 308 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'VAgYAplPOe3Qpvya' \
    --body '{"appId": "quevE8jhAM4C34bB", "privateKey": "PbifHDiBMsRy1ZmF", "publicKey": "MVlAhaDsIMEFd3SD", "returnUrl": "Q0zyrZOMqd75oCp2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'UpdateAliPayConfig' test.out

#- 309 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'u2A2ZLrkeWbmcgfp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'TestAliPayConfigById' test.out

#- 310 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'lQTNIZctTysFM89B' \
    --body '{"publicKey": "CAF2MVozVctDaMus", "secretKey": "5bsovjmmxHjjlquE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'UpdateCheckoutConfig' test.out

#- 311 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'SAZpAC3MEgBrVUoM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'TestCheckoutConfigById' test.out

#- 312 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'CPYZARtb3TsS5jOB' \
    --body '{"clientID": "RYgnvYu1vzXsMr43", "clientSecret": "ycE5A2fFKAWLe45n", "returnUrl": "ohGKrvpCUuClhTnL", "webHookId": "jG2riY5IlAkHgxsU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'UpdatePayPalConfig' test.out

#- 313 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'LSOBCWJH9jh3zB9J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'TestPayPalConfigById' test.out

#- 314 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'EYLPl0Rjsq0yRuQR' \
    --body '{"allowedPaymentMethodTypes": ["arSVoIleZ7Ptbbcr", "iinQEr7oILTomzVE", "dqAFGjuRaB4ccMpI"], "publishableKey": "H8Lan5Ny9rMiD8se", "secretKey": "oTU64hQTXu9MixCL", "webhookSecret": "kCkF4GsByu7ccqHP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'UpdateStripeConfig' test.out

#- 315 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'LY7ScjfHWvp5yxoH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'TestStripeConfigById' test.out

#- 316 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'DN8wbZhTBvAeHGP8' \
    --body '{"appId": "MEJHjkHXgaYcrI47", "key": "DABOUyTgLqcqWj25", "mchid": "jcDQ7S4nZymFu9HD", "returnUrl": "ayb3pUN53xwUDjiB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'UpdateWxPayConfig' test.out

#- 317 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'HCt3VKh9NaXK6yIn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'UpdateWxPayConfigCert' test.out

#- 318 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'DEdr3JfyFO9PUA61' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'TestWxPayConfigById' test.out

#- 319 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'ceL94UMGbnwR8NQy' \
    --body '{"apiKey": "5mWp1i7XAgvpl6VM", "flowCompletionUrl": "46gEFqwJcySobYFs", "merchantId": 84, "projectId": 87, "projectSecretKey": "pqr85xVvxj351m51"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'UpdateXsollaConfig' test.out

#- 320 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'uwOolqmdu4KlKLpt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'TestXsollaConfigById' test.out

#- 321 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'x5DKFWYNaRNbzpFs' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'UpdateXsollaUIConfig' test.out

#- 322 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'QueryPaymentProviderConfig' test.out

#- 323 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "KphKxkJ5Y2qNwo7f", "region": "OIEm4CCHTjiJTcJC", "sandboxTaxJarApiToken": "NU9JxdozQjrd9h3K", "specials": ["WALLET", "STRIPE", "ALIPAY"], "taxJarApiToken": "GEb7CgXWeXJrzNrt", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'CreatePaymentProviderConfig' test.out

#- 324 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'GetAggregatePaymentProviders' test.out

#- 325 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'DebugMatchedPaymentProviderConfig' test.out

#- 326 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'GetSpecialPaymentProviders' test.out

#- 327 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'AHBLENBGh8mzbI7U' \
    --body '{"aggregate": "XSOLLA", "namespace": "oj40AF05z6BC0fH4", "region": "BlyXE2K4uNJRgQ3C", "sandboxTaxJarApiToken": "CklU97KkomnjFaT7", "specials": ["ALIPAY", "ADYEN", "XSOLLA"], "taxJarApiToken": "BwrK8hpKlmw63co2", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'UpdatePaymentProviderConfig' test.out

#- 328 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'rbchkQ7n0C9lJb5W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'DeletePaymentProviderConfig' test.out

#- 329 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'GetPaymentTaxConfig' test.out

#- 330 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "lmAWYUtevQ8XsaIO", "taxJarApiToken": "TUAVhHL0RrUev0iu", "taxJarEnabled": false, "taxJarProductCodesMapping": {"PIqi1GB1ZASgNbyI": "gL74DNNIekar0ZUa", "hrGZV8WpFG2gRMkd": "KgCuxFa4ix8vdZvw", "AMOmTtBEJjCyABy7": "DKD883wae7z4E6bR"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'UpdatePaymentTaxConfig' test.out

#- 331 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'C4ufnScsyhWe6QJ1' \
    'Ov7wz26xkkYYxgGL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'SyncPaymentOrders' test.out

#- 332 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicGetRootCategories' test.out

#- 333 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'DownloadCategories' test.out

#- 334 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'N3OJhmFyZH05CCwf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicGetCategory' test.out

#- 335 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    '21Y2Taz2uFpz174O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicGetChildCategories' test.out

#- 336 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'kRp3BkdVbqgNrZPy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicGetDescendantCategories' test.out

#- 337 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicListCurrencies' test.out

#- 338 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'GetIAPItemMapping' test.out

#- 339 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'tIR58rTLNpt4Rpqp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicGetItemByAppId' test.out

#- 340 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicQueryItems' test.out

#- 341 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'Kk9toELRS24cMw2L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicGetItemBySku' test.out

#- 342 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'h6XTFr1d0v5MiCVr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicBulkGetItems' test.out

#- 343 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["Y2QOMJmNbAv9VCU7", "hdDbGzcJKa1wsM43", "4xCGXTsh5xydeZAD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicValidateItemPurchaseCondition' test.out

#- 344 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'SKQFv0tnP05L7Nwx' \
    '1i8sHEbX4mIdomBV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicSearchItems' test.out

#- 345 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'yorRK73vbWSNBzki' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetApp' test.out

#- 346 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'EHyJEOg3iIjU3AAg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicGetItemDynamicData' test.out

#- 347 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    '7WG2eTsmDaTzm1iy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetItem' test.out

#- 348 GetPaymentCustomization
eval_tap 0 348 'GetPaymentCustomization # SKIP deprecated' test.out

#- 349 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "RQNy7RFRXuzS7oKc", "paymentProvider": "ALIPAY", "returnUrl": "ezIt3HezhSE8IGOa", "ui": "Rsievm4IDxtFXsff", "zipCode": "5uksqDpH01I9KImk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicGetPaymentUrl' test.out

#- 350 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'c3YwK5J3GyOQJLup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicGetPaymentMethods' test.out

#- 351 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'cfcMQlt7ssE0BVP1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUnpaidPaymentOrder' test.out

#- 352 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'MHJQhmZHHktlLrVb' \
    --body '{"token": "hm9d4y2SbI0OO1ou"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'Pay' test.out

#- 353 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'oucz4taACOl097nq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicCheckPaymentOrderPaidStatus' test.out

#- 354 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'ALIPAY' \
    'zDdA20g9UeCPSEkH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'GetPaymentPublicConfig' test.out

#- 355 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'vpI9pfGr7q4J4HRf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicGetQRCode' test.out

#- 356 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'PSShguxCFDvHcOou' \
    '9G8lXxC3R0xIfzLR' \
    'WXPAY' \
    'el1aMfEV5ZvvwEDV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicNormalizePaymentReturnUrl' test.out

#- 357 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'OZ5VOwnn6MrDyExI' \
    'CHECKOUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'GetPaymentTaxValue' test.out

#- 358 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    '06KMQoJCvczbpTe8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'GetRewardByCode' test.out

#- 359 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'QueryRewards1' test.out

#- 360 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'wnvbAKMlJZvUxYzY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'GetReward1' test.out

#- 361 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicListStores' test.out

#- 362 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicExistsAnyMyActiveEntitlement' test.out

#- 363 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'BSzriljJODaZNFJF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 364 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'bzIchkAZmUviJbcn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 365 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'sW6uK889Ccm0VWwN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 366 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicGetEntitlementOwnershipToken' test.out

#- 367 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "dNaPLrz9N2oRxNd2", "language": "UBs-nYBG", "region": "5VLrk3KBNBApNgT5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'SyncTwitchDropsEntitlement' test.out

#- 368 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'fUWdp4LE1VnZFgky' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicGetMyWallet' test.out

#- 369 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'tfX1NqG3h3imEWxU' \
    --body '{"epicGamesJwtToken": "gMEW1S9JMbrmE7zB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'SyncEpicGameDLC' test.out

#- 370 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'sX3PYLNcayR34iib' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'SyncOculusDLC' test.out

#- 371 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'Mmlb6vlF1mVrcAyq' \
    --body '{"serviceLabel": 38}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicSyncPsnDlcInventory' test.out

#- 372 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'XnKEtSQkLh10xq2z' \
    --body '{"serviceLabels": [40, 83, 13]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 373 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'aigOB2XWLXBkH6l2' \
    --body '{"appId": "KW0sSf0vJS3l5sWD", "steamId": "cfVxx8PSjamcbAWA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'SyncSteamDLC' test.out

#- 374 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'Uiz3UhK7hY9Xv4bn' \
    --body '{"xstsToken": "ujVOhaDvf3evXo0m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'SyncXboxDLC' test.out

#- 375 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    '3jJ0xtenPXW0Eog3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicQueryUserEntitlements' test.out

#- 376 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'qNqoLr5uxNWDT3hl' \
    'TaFfn4ThPY3oU02E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicGetUserAppEntitlementByAppId' test.out

#- 377 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'fGsDjENbnYSDYXgk' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicQueryUserEntitlementsByAppType' test.out

#- 378 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'ZLWVB4YH2roupmMf' \
    'ATapsn4uvJaBhPA5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserEntitlementByItemId' test.out

#- 379 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'LWJipgrvQaTdiKmm' \
    'lpHUD2h7I7UbUNrp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserEntitlementBySku' test.out

#- 380 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    '02FBwxeZXuYnlq95' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicExistsAnyUserActiveEntitlement' test.out

#- 381 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'T6quy9PsI3dx75GA' \
    'Wm1WfXALgsjwfd3e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 382 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'YGpxI9DQs2vOJH76' \
    'fEQ8WC3iZ6amfE0N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 383 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'HQzAvmPZRWnKIfYW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 384 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    '2kPDBgq17ElbCwKI' \
    '3aXhSEFUvuqvkzik' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 385 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'f2tQ7LhwHqc9mwHF' \
    'Q3JQtpRpQVAOexmq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicGetUserEntitlement' test.out

#- 386 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'Wb9l5yHbiXZ6ThrZ' \
    'y4bUEBAVPV9L4ILP' \
    --body '{"options": ["JqDbKXtFPmTQOO3d", "Jd2YP1XIUKL9g3AC", "u1VGeRPwa2XfZ7wx"], "requestId": "A0lvXbcZY7zXTdKQ", "useCount": 22}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicConsumeUserEntitlement' test.out

#- 387 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    '03X04OxvZytaM4c4' \
    'qTIV7vRV6x146gCI' \
    --body '{"requestId": "rSkEiZX9iHZkthOU", "useCount": 95}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicSellUserEntitlement' test.out

#- 388 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'GOS5kQvK7NHpsIBY' \
    --body '{"code": "lUoEWZPawFVpfXqb", "language": "IgRn-Lz", "region": "UnkcE3UYV2aj9PL4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicRedeemCode' test.out

#- 389 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'PQGJJokFeKLbBQG1' \
    --body '{"excludeOldTransactions": false, "language": "CTI-ZyNq_058", "productId": "iFJi304rwbySnVTS", "receiptData": "dmqyftEYQl2xFFtZ", "region": "WlWKmQH3tI9yHxua", "transactionId": "a0zbT4NGP7Xy3gYP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicFulfillAppleIAPItem' test.out

#- 390 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'JQEukOcBtFyzW1aK' \
    --body '{"epicGamesJwtToken": "e15m4NorN2PP1hXm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'SyncEpicGamesInventory' test.out

#- 391 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'ALwnidAmiLFK5Dwa' \
    --body '{"autoAck": false, "language": "tt_xDcw_Ih", "orderId": "vS5r4NDhqj2sHH7h", "packageName": "GbYOjo5zLgQb3hA8", "productId": "P6XcQUNHo5ZFndtl", "purchaseTime": 12, "purchaseToken": "X30R2hPYkRArSfEx", "region": "oJMARmEC7Kyhtx4s"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicFulfillGoogleIAPItem' test.out

#- 392 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'Ysq0CbA1NZZ58G8X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'SyncOculusConsumableEntitlements' test.out

#- 393 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'ryw8bfE6VA6HEvqN' \
    --body '{"currencyCode": "7kX4VVVBS89UUbLl", "price": 0.8752453674848277, "productId": "ciimYDeDceMEtPkj", "serviceLabel": 7}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicReconcilePlayStationStore' test.out

#- 394 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'g9EhVfDOcOmH7fDS' \
    --body '{"currencyCode": "vD2JNOQnrQjYIugF", "price": 0.24077626702359356, "productId": "F3ValgZcNJSYGVxi", "serviceLabels": [5, 13, 55]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 395 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'CWF50CSEIj98y965' \
    --body '{"appId": "Raxu2ujZqzkOZE6s", "currencyCode": "OGLtoFJvwz5yKIpw", "language": "AH-dR", "price": 0.8303879680770495, "productId": "fTzJfHZF17lZ95Jm", "region": "Gny7g72f6SO7Xayf", "steamId": "UmZz42HE0t7TAQm0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'SyncSteamInventory' test.out

#- 396 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'TGMk4DmrwxC6EQr9' \
    --body '{"gameId": "lk8teEugVd3X7cq2", "language": "fPEE-XYGi", "region": "VzxmePZ06tOqoxMh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'SyncTwitchDropsEntitlement1' test.out

#- 397 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'yqIyPdnz3ReXTrC2' \
    --body '{"currencyCode": "sNANyInXnunWNxg0", "price": 0.09733435559784764, "productId": "QztAjYiUb5SlpeaM", "xstsToken": "DVE3ODebYRPEkmK5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'SyncXboxInventory' test.out

#- 398 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'ePPaacnQTuUibmiz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserOrders' test.out

#- 399 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '8AhOGRIwwo9w06X6' \
    --body '{"currencyCode": "XzJiljntx5TSAxNB", "discountedPrice": 5, "ext": {"yTtXhEPzahVXYKrb": {}, "lYxb89S0lysrMEif": {}, "hjrwrJGqlmyy5EAt": {}}, "itemId": "MaJvnkbpELCCQEX7", "language": "BMY-kPeY_864", "price": 76, "quantity": 46, "region": "pc5HR4Bp38TGeyfW", "returnUrl": "QESVLLj435Tsq6xx", "sectionId": "QZBGiif91rgOdzAS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicCreateUserOrder' test.out

#- 400 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'MsVBiv6rL3ZEZRH0' \
    'Pkkc62P13ItOBeXp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUserOrder' test.out

#- 401 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'RUTmAHfO9FrQ9lwz' \
    'AWiJH282OIiKU7MR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicCancelUserOrder' test.out

#- 402 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'x3xefM47AsxVCXef' \
    'UThoflsBWhnubnRO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicGetUserOrderHistories' test.out

#- 403 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'vA1CxkXWIlkrF4cf' \
    '9E2pKWkX7et7rl9o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicDownloadUserOrderReceipt' test.out

#- 404 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'w7BDniJH2zFRgcuT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicGetPaymentAccounts' test.out

#- 405 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'MYiBESlCYdNui4Af' \
    'paypal' \
    '0LTI6thfWyUKgXL1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicDeletePaymentAccount' test.out

#- 406 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'FOiDEhOn3KuRxgkD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicListActiveSections' test.out

#- 407 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'm8ALwZabFzMOJSqY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicQueryUserSubscriptions' test.out

#- 408 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    '46n4gzDKwFxpxbYv' \
    --body '{"currencyCode": "PCvcqkfowSDA1NKg", "itemId": "kK4huDhAO8zhoVbn", "language": "TK_KMIX", "region": "R9o07ypJFcZroi0Q", "returnUrl": "eG6cD8trKjrFSu4M", "source": "Oj7pBAbAKLICuRvK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicSubscribeSubscription' test.out

#- 409 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'GIR3uSMSyy1zY8Vk' \
    'Zd3qEIVQCbFYV3Nu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 410 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'JgscT8dY4nux3S39' \
    'sGE4zXVkI5AV7Af2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicGetUserSubscription' test.out

#- 411 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'Tu32ZzATykI3Y8sp' \
    'u5S6I5h9Aa4tLrAT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicChangeSubscriptionBillingAccount' test.out

#- 412 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'tqIhJQruDfpefgGx' \
    'k7jqfRNpfhafmEgh' \
    --body '{"immediate": false, "reason": "a56radYciedOlGrf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicCancelSubscription' test.out

#- 413 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'TUc5ACZJjhP2aqyZ' \
    'Jps39vNgtqv552Ok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicGetUserSubscriptionBillingHistories' test.out

#- 414 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'taS7Id9oPGerpovd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicListViews' test.out

#- 415 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'mW3j3eSpo6vhwdrF' \
    'a4npr0qt5yxg5LXt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicGetWallet' test.out

#- 416 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'D40RsibRBputNAcV' \
    '0wHVw4OJZ9KRfK3E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicListUserWalletTransactions' test.out

#- 417 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'QueryItems1' test.out

#- 418 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'ImportStore1' test.out

#- 419 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'lT6izH6Pdx5D1ZrP' \
    --body '{"itemIds": ["FTEv91KnFOHx4QGV", "t5sQ7M74MHRwGWuX", "rmWB81vpVnNLvfxM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'ExportStore1' test.out

#- 420 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    'VPORdXWvsGZrPVAZ' \
    --body '{"metadata": {"2ZLrDa1xpqIziihT": {}, "n1qm3WYY19InV7B8": {}, "tHIYiWBgIkW9QrR9": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "aYleh3D2r0PGvO0I", "namespace": "GH5aAxTCbwpHq5b9"}, "item": {"itemId": "TYQLU6VNGYuzawgh", "itemSku": "eBGV6FopCasHzSLb", "itemType": "ZZFVIz8Axh7D6vDw"}, "quantity": 12, "type": "ITEM"}, {"currency": {"currencyCode": "TWzfQZmZcPHcdeyM", "namespace": "Gra3yLwQHFxeaeIR"}, "item": {"itemId": "EKfKrgrQb1IEYi9k", "itemSku": "ZKg0DnxN18EaQxhu", "itemType": "Whajv4y7mpuDenMH"}, "quantity": 43, "type": "CURRENCY"}, {"currency": {"currencyCode": "CJxPolhQomjBGEe1", "namespace": "V7Qe1VtpXfKrTUd4"}, "item": {"itemId": "eK4cPdj9IYCmOOsk", "itemSku": "IKiuKPVqNdfcbarm", "itemType": "jmzkYQMLffgy1mpc"}, "quantity": 18, "type": "ITEM"}], "source": "IAP_CHARGEBACK_REVERSED", "transactionId": "2qKD8lNq4hOjr98O"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'FulfillRewardsV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
