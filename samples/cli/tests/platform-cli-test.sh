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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "EAxcVpFrttufHIRd", "appType": "SOFTWARE", "baseAppId": "9UzVRiXbqlAw7r6W", "boothName": "2ktQG0h5JAav5kRa", "boundItemIds": ["Q1g7qbPngUNB1vRo", "62WopBJHPtcDs8bB", "ZLCXLx8bbgorQeFb"], "categoryPath": "dwpzS6DaDpv8N7ZQ", "clazz": "VqGj6oDLjWjkY1aX", "createdAt": "1977-05-08T00:00:00Z", "description": "FcDtgOjchIua5tWE", "displayOrder": 71, "entitlementType": "DURABLE", "ext": {"JSDgY1TXp38zsCTC": {}, "rbCbPOyNQkT7NvyE": {}, "3cwyALczNIicXm7a": {}}, "features": ["gSrjJW2OQNOs1PXh", "T5FvdiRilZ7oFgx4", "c8OumKtPDKJDXn7Z"], "fresh": false, "images": [{"as": "68su8XfqlqNiTvB6", "caption": "SdAdIhUDrwoZ5Mec", "height": 7, "imageUrl": "pc1C8XfwHuKeb9l3", "smallImageUrl": "rGN9A3sNm84hddSp", "width": 69}, {"as": "cBdW19m4eu6d5tA5", "caption": "jUmiTqpyhPFdxLzF", "height": 87, "imageUrl": "d8lDR6qVNPRZYdFL", "smallImageUrl": "IAjGGJddVCvu9vx5", "width": 76}, {"as": "vkLGMS0lyuI9a2I9", "caption": "u6Vpbsx5w8hqUI06", "height": 96, "imageUrl": "SuB0y5WUlrMdI4sN", "smallImageUrl": "veabntBSxTeIv53H", "width": 66}], "itemId": "YupD391C2qtPYoka", "itemIds": ["hFjkQsfCaTmt1d67", "FXGk2s9Q0mPVo3tw", "u0MesTCf9x4rt69l"], "itemQty": {"na7qxNeIxPz6MbwL": 67, "IY69z1UaLqYSYWyt": 77, "XQ0yYoNRKd3IL5TA": 87}, "itemType": "CODE", "language": "6iiPlSC2uE4o5Vwd", "listable": false, "localExt": {"m3MqHcUmLZZbSqb8": {}, "RwNmn9HrNQy4uZAA": {}, "iE0mit9RGCCHYzUO": {}}, "longDescription": "cEdscKHPEqgA8yu7", "lootBoxConfig": {"rewardCount": 98, "rewards": [{"lootBoxItems": [{"count": 94, "duration": 22, "endDate": "1994-05-19T00:00:00Z", "itemId": "Jt4Ymos9Jcdos4fY", "itemSku": "cTVU6RBt0zYoMcHy", "itemType": "CUEXlAvxJMdalwSy"}, {"count": 23, "duration": 85, "endDate": "1975-11-14T00:00:00Z", "itemId": "bOItRMvqtlB2jJCS", "itemSku": "QT279ZZPYGu0rdlg", "itemType": "dWyOtXi3choQrpOs"}, {"count": 61, "duration": 25, "endDate": "1985-08-26T00:00:00Z", "itemId": "U5SepjChB3V0v52D", "itemSku": "lym6puQ23xoJ8aeC", "itemType": "naLpUKp44YUDjasW"}], "name": "IPUvmEejtGeoyIPa", "odds": 0.9714507862859705, "type": "REWARD", "weight": 90}, {"lootBoxItems": [{"count": 7, "duration": 37, "endDate": "1977-06-26T00:00:00Z", "itemId": "ykmoPYgc2L4jk4Lo", "itemSku": "0LSP0pf4IxjUkl53", "itemType": "5X3ateEKDpADz1x3"}, {"count": 32, "duration": 30, "endDate": "1985-08-29T00:00:00Z", "itemId": "9xv32e8c5csSovoq", "itemSku": "sZNBdte9NDUPVJf6", "itemType": "c2Z0QZxfgPubTDIH"}, {"count": 36, "duration": 83, "endDate": "1982-11-17T00:00:00Z", "itemId": "qAThuwjRHpKKTlmV", "itemSku": "r9XuoJbRFQSKVPHb", "itemType": "n4Xxtu7LQRENjEEz"}], "name": "tx1WsYSiZqan0nSB", "odds": 0.5728983498865392, "type": "REWARD", "weight": 30}, {"lootBoxItems": [{"count": 0, "duration": 57, "endDate": "1981-10-04T00:00:00Z", "itemId": "91GXlvPG6bFYReVH", "itemSku": "QipcCx9Zw5D2L7vI", "itemType": "YhGGSyEW4ZJJ42d3"}, {"count": 85, "duration": 25, "endDate": "1985-03-04T00:00:00Z", "itemId": "ddN8S48l9lyNApfl", "itemSku": "xqMrj3oZk03QXcKM", "itemType": "DYDDxHSZjtqXyJ58"}, {"count": 10, "duration": 36, "endDate": "1977-09-29T00:00:00Z", "itemId": "jX9fDmIbeZxzfTcy", "itemSku": "iuATus9hsfpFDcSD", "itemType": "G8aMVGLiBNrDjqox"}], "name": "cwgGLXpUL4pp2ncY", "odds": 0.422365902819149, "type": "REWARD_GROUP", "weight": 21}], "rollFunction": "CUSTOM"}, "maxCount": 39, "maxCountPerUser": 82, "name": "fIovmv9gsR5cJcHm", "namespace": "3SZLxoRDFuuuySj2", "optionBoxConfig": {"boxItems": [{"count": 56, "duration": 1, "endDate": "1975-06-17T00:00:00Z", "itemId": "LJE8HoRS1X2PFAAM", "itemSku": "wzHPxB1UskYs4Yw2", "itemType": "0DOqOBSC2DKHRuPM"}, {"count": 80, "duration": 22, "endDate": "1995-02-07T00:00:00Z", "itemId": "H8Yb33T5UBJCjfcn", "itemSku": "LRfxeCSz9WEi8Kll", "itemType": "oeH0JT1yduat2vQR"}, {"count": 3, "duration": 66, "endDate": "1975-02-16T00:00:00Z", "itemId": "Bfsu4jmsRE2w1yEk", "itemSku": "Lgh3tIYt4SqYUTLD", "itemType": "x9gIiDandpGT2t24"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 83, "comparison": "isLessThan", "name": "Mh5eC3IHeHSKLCa3", "predicateType": "SeasonPassPredicate", "value": "AE7WIsfmx40NLRc6", "values": ["nduEEQlULdJz4mnR", "oKFeIaFQCYoDPICp", "m8heKnWhzfe2Nube"]}, {"anyOf": 56, "comparison": "is", "name": "CAcf80zfFyabWAgI", "predicateType": "SeasonTierPredicate", "value": "hRkloqxM3gpwxcfM", "values": ["y9XzjjI5YbsKoADk", "zJEN2VHzih3bit0V", "Wn3CO39PXDNxtXge"]}, {"anyOf": 83, "comparison": "isLessThanOrEqual", "name": "3FgkXhjDzaQY3snn", "predicateType": "EntitlementPredicate", "value": "ZkP7cFdP43e5dC9X", "values": ["qU0bfoMm5cTtFWbo", "MzF4TxodenSrUTvf", "IBudfZgrbHDIDm4h"]}]}, {"operator": "or", "predicates": [{"anyOf": 4, "comparison": "isLessThanOrEqual", "name": "6IjGa23YvYmmDg7V", "predicateType": "SeasonPassPredicate", "value": "PXIuvUYTZBRujIUE", "values": ["1Tq5jyAZvkRCMNFI", "urjh2imdb4rbkXj0", "ZwsVC0gL97ZVJSPq"]}, {"anyOf": 74, "comparison": "isNot", "name": "iwv1qlYB1RSKs6gQ", "predicateType": "SeasonPassPredicate", "value": "ZGF7uYnGzpipNDig", "values": ["D9eOziYRFOn0jJLH", "4nmwAft4gqkNNlWk", "NJma1MbqqZtfNWql"]}, {"anyOf": 58, "comparison": "isNot", "name": "LxhvNXTwGBCtohLt", "predicateType": "EntitlementPredicate", "value": "7MUBG7qtPu64yAtU", "values": ["MdIIlhS1fSiM9331", "m7Ta1PsKc50Kv6ec", "RKLRkb738HGS6rDg"]}]}, {"operator": "and", "predicates": [{"anyOf": 30, "comparison": "isNot", "name": "mQoIXimBJehyxlNs", "predicateType": "EntitlementPredicate", "value": "nGBt4P7WnbdSJtjX", "values": ["7ZshZyZl5x4bRXBH", "dpCROYqUiGKXVFCm", "UTrDzZSKscfOcYu3"]}, {"anyOf": 31, "comparison": "isGreaterThan", "name": "ogaKt2ujQSa3Zdb6", "predicateType": "SeasonTierPredicate", "value": "UXmy0Zp6iIaTIKUk", "values": ["zwLR2AK6eXUGPJsw", "1fiP80G9Pclxcft2", "mkk9QM0NBMA9ORxp"]}, {"anyOf": 42, "comparison": "is", "name": "DpZxkrQDXuNFviMa", "predicateType": "SeasonPassPredicate", "value": "uGKHhMRWLVd3DlhL", "values": ["X2tJoARtdbBe7uds", "Mrok0WvGYYnx4V70", "uIpomM8sm1MiaI1m"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 49, "fixedTrialCycles": 9, "graceDays": 2}, "region": "ue9nzJ6fH24T805t", "regionData": [{"currencyCode": "Vg8JqU0jZpjvsugA", "currencyNamespace": "OS7u8RiWyerCSa8S", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1997-06-30T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1980-01-29T00:00:00Z", "discountedPrice": 55, "expireAt": "1979-03-16T00:00:00Z", "price": 36, "purchaseAt": "1998-10-10T00:00:00Z", "trialPrice": 16}, {"currencyCode": "xsB0NRsB1fPqqRRu", "currencyNamespace": "lpqpymDkQhtrHWwR", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1977-07-07T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1995-08-07T00:00:00Z", "discountedPrice": 56, "expireAt": "1991-10-31T00:00:00Z", "price": 33, "purchaseAt": "1983-12-03T00:00:00Z", "trialPrice": 68}, {"currencyCode": "wbhMssAHjapIkY9R", "currencyNamespace": "f4wP57dBZNR88YbC", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1977-01-29T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1992-07-15T00:00:00Z", "discountedPrice": 82, "expireAt": "1977-11-12T00:00:00Z", "price": 10, "purchaseAt": "1984-07-26T00:00:00Z", "trialPrice": 4}], "saleConfig": {"currencyCode": "VrjfGXZnqAQUoY1G", "price": 20}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "Zp50CnPb71ORYcmQ", "stackable": false, "status": "INACTIVE", "tags": ["g4iY9u02aCNYIWek", "U5JX8ccLjMXJRk0e", "aKQDOJvrTefglSs6"], "targetCurrencyCode": "p18lOC3mNqF7Bl0L", "targetItemId": "cghVHfPEspxwhRON", "targetNamespace": "0bc1eMbEIjowLqc3", "thumbnailUrl": "ecjXJbZDKKoxLE1Y", "title": "3Dymtj3giPg4x4yi", "updatedAt": "1992-03-11T00:00:00Z", "useCount": 1}, "namespace": "6ues1Hhhkg1yLVbL", "order": {"currency": {"currencyCode": "FzHEP8cM4NTwr0KH", "currencySymbol": "aAsmTej52WKi6tAr", "currencyType": "VIRTUAL", "decimals": 46, "namespace": "URt9plCSVq8PdH6h"}, "ext": {"JPUAc0RVwXgAgntL": {}, "MCuaXBWQi6BqPg4x": {}, "r0lCancUZGCHsZYo": {}}, "free": false}, "source": "DLC"}, "script": "R1KtOv7Zy0b65uvu", "type": "grantDays"}' --login_with_auth "Bearer foo"
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
platform-get-oculus-iap-config --login_with_auth "Bearer foo"
platform-update-oculus-iap-config --body '{"appId": "61duF87aUyrdt4XS", "appSecret": "pWBAetsanzqP8oxf"}' --login_with_auth "Bearer foo"
platform-delete-oculus-iap-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "rtbECD1CYPwaiBAx"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "fYL8Avt70ZUT2fSk", "publisherAuthenticationKey": "3LL0calqxEewuGS4"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "69k2hG0WKt4sUman", "clientSecret": "YxM0UHZVNYzGMNIp", "organizationId": "WoSLkUrfuf4U3WeY"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "eA9t2ENKKWrFtHIi"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details '1CMgKAOG5iDcCR5P' 'bCvDLil8wj9cKM3A' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'r6MF35hCER4nGmWG' 'gTJfHlJl4tHGa4Xf' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'Zcd9CVnGqMX9Fiee' --body '{"categoryPath": "EssWEUl07bhwntCV", "targetItemId": "qiYOJf5KwMZQjzvj", "targetNamespace": "Sozv6CTRDl0zp9Cz"}' --login_with_auth "Bearer foo"
platform-create-item 'HFwinkBNi4gvqgl6' --body '{"appId": "TZ9TGVPmv34h6T7E", "appType": "GAME", "baseAppId": "xLvPuWYvE3fsNy9Z", "boothName": "9OhxXvCp9y7fLD2q", "categoryPath": "fCXnlUnqxT1WsRNM", "clazz": "ZcA92hzC7MNa8vVe", "displayOrder": 83, "entitlementType": "DURABLE", "ext": {"HX6AgMep90AyyUJy": {}, "AK5PRMRMwdvl0hv6": {}, "g62GxBW2tQF5tkTj": {}}, "features": ["gJaMYvNQOsDa4bkc", "TGAak7Kaol01DK97", "gepqtxjbrztee7QL"], "images": [{"as": "D2xnik42miteR5eQ", "caption": "Ae1rzmmgqBPRmd6m", "height": 82, "imageUrl": "EfOJpZm9yEYWNGMy", "smallImageUrl": "2pgSGSUOK68eqGJt", "width": 49}, {"as": "f1Ybgg8rdwY9bmrv", "caption": "HmO07KNqX9LM2IwE", "height": 37, "imageUrl": "qISQ83TTbtefXWzn", "smallImageUrl": "De4LQdXfFBii2RAM", "width": 62}, {"as": "r0sVZ6LJAOddIL2l", "caption": "3hPjNDKv2LWfXqjr", "height": 83, "imageUrl": "fS79En3wYowBdkaZ", "smallImageUrl": "3y6i38XQjLDRqkpi", "width": 65}], "itemIds": ["LyEirURERnEMzpIm", "W6sjAHyCK5tNanGB", "rkzUvck3xTtmOFMe"], "itemQty": {"bS4AdlNzwog2IhEr": 22, "Th4gUoj8u2WRcLiE": 40, "kbLlrNXnGanMazb8": 19}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"RWenURH48aJuALEc": {"description": "SqcE15u6D31DjOsr", "localExt": {"s3CUYATdqnQGbqiq": {}, "OkNeATj7eGjodd7C": {}, "cJUrI6MAugK5kypN": {}}, "longDescription": "rp2nFe9FmN86sK5L", "title": "Oq4ft5jGcMICPUYn"}, "fG6jl9U4jReteIMg": {"description": "zISomCsodJrhQW41", "localExt": {"q2OspCZbt3Uta5I0": {}, "uGcL1koyHjCH5olY": {}, "LETRpABAmO2EGvJ4": {}}, "longDescription": "UMS93yOxNInDByhn", "title": "oluO6ti0QP2ssiJ6"}, "6OzOj84O6tgohjtC": {"description": "7bzjPpucddXJ5zif", "localExt": {"F8y959anrNSleywH": {}, "bHig6IKWVZ77KeRW": {}, "dECaFGzfZ2hxcJ2F": {}}, "longDescription": "nemn7M23SzUo4hNB", "title": "Dh9ZFP1OW0nXOErQ"}}, "lootBoxConfig": {"rewardCount": 85, "rewards": [{"lootBoxItems": [{"count": 50, "duration": 91, "endDate": "1993-11-20T00:00:00Z", "itemId": "VsRoYIK69yg9ADCG", "itemSku": "iXaLs2xjHkinOD97", "itemType": "5nARHCmhNHSXuqIH"}, {"count": 38, "duration": 48, "endDate": "1971-06-25T00:00:00Z", "itemId": "hvxw9gwwhTnjN6wK", "itemSku": "ZGW4y3f0R9s2kndh", "itemType": "hZhwAiLsZs4pmLDI"}, {"count": 88, "duration": 7, "endDate": "1972-09-26T00:00:00Z", "itemId": "h4IjDq9aT3qZyI0r", "itemSku": "YsWucAkXsVJbXi7e", "itemType": "RZa7WwIc895ImqK6"}], "name": "tVsaUq3stUh5J5Z9", "odds": 0.5243764883181351, "type": "PROBABILITY_GROUP", "weight": 57}, {"lootBoxItems": [{"count": 82, "duration": 17, "endDate": "1995-12-25T00:00:00Z", "itemId": "Is7NRen2Y3Ns0QJQ", "itemSku": "eaWytPfds1BYx0Ea", "itemType": "URydf8ZyyZeHAWGg"}, {"count": 72, "duration": 80, "endDate": "1995-01-08T00:00:00Z", "itemId": "OPG0iHDT8QbF7gHP", "itemSku": "TPQbvLt2NRqJGIKz", "itemType": "LyH1y72L13Ornyx3"}, {"count": 73, "duration": 24, "endDate": "1994-06-14T00:00:00Z", "itemId": "NFfM8M0IW4oe8KDg", "itemSku": "y0xZfAcNg14Ws8TI", "itemType": "P1LKiFQoLDvumfqr"}], "name": "gSfnx2h61X9dN1MG", "odds": 0.7035711798643334, "type": "PROBABILITY_GROUP", "weight": 56}, {"lootBoxItems": [{"count": 95, "duration": 72, "endDate": "1982-09-02T00:00:00Z", "itemId": "mVV7JS9qjNLwvI8J", "itemSku": "diY3RRiLilmOGF6d", "itemType": "LLIeIVIjMcdlbdRX"}, {"count": 94, "duration": 67, "endDate": "1981-10-09T00:00:00Z", "itemId": "PZSTpPq3xjrElvvD", "itemSku": "gw0ag7kSWE0Hiqm5", "itemType": "IuLryiEXqvUWDjU1"}, {"count": 67, "duration": 65, "endDate": "1998-03-19T00:00:00Z", "itemId": "EVjVZw1ToLuPakQN", "itemSku": "1MpOs1RVFrcg2CXx", "itemType": "epx78fvsyhE2BKty"}], "name": "TDSIM7mkmvZ7Cmsh", "odds": 0.9110738608033336, "type": "REWARD_GROUP", "weight": 51}], "rollFunction": "CUSTOM"}, "maxCount": 72, "maxCountPerUser": 97, "name": "jfMANPpmZDdMiCxm", "optionBoxConfig": {"boxItems": [{"count": 43, "duration": 19, "endDate": "1985-01-27T00:00:00Z", "itemId": "CVuFjS1GC1d2b92B", "itemSku": "4vEgj3HOmhcWm428", "itemType": "XejRF94NIY9nMrBZ"}, {"count": 29, "duration": 2, "endDate": "1997-06-11T00:00:00Z", "itemId": "lNUBDShHD32vvL28", "itemSku": "FPwTiXfLcxDC9Ynd", "itemType": "02mECIQhfIhHtADU"}, {"count": 88, "duration": 76, "endDate": "1971-07-30T00:00:00Z", "itemId": "31oQf7BULnZDhutD", "itemSku": "M6BqguqD5xxGxBWt", "itemType": "nTKUe2znsqPzPkwC"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 29, "fixedTrialCycles": 18, "graceDays": 88}, "regionData": {"SwCUsTag4MLAo3m6": [{"currencyCode": "1P2xaNfmn8Onb1a9", "currencyNamespace": "gMz0F2UBRmMhAbUW", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1987-08-09T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1974-01-28T00:00:00Z", "expireAt": "1974-09-29T00:00:00Z", "price": 77, "purchaseAt": "1979-08-02T00:00:00Z", "trialPrice": 66}, {"currencyCode": "Muv3zkUY0n0BAZkw", "currencyNamespace": "bYkBLyO6A0Fqfhna", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1999-09-20T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1996-10-21T00:00:00Z", "expireAt": "1976-11-18T00:00:00Z", "price": 42, "purchaseAt": "1972-11-28T00:00:00Z", "trialPrice": 94}, {"currencyCode": "VuOzhxHmnrrV9ZGW", "currencyNamespace": "rZ05sxe6A6RpmKDe", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1991-01-10T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1978-07-17T00:00:00Z", "expireAt": "1978-04-02T00:00:00Z", "price": 29, "purchaseAt": "1971-06-18T00:00:00Z", "trialPrice": 51}], "cNmzwOZOK56sDkci": [{"currencyCode": "5rZ8iMlOuksQJCiR", "currencyNamespace": "FiZWwJ7NrTb1XTB9", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1986-07-30T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1994-10-12T00:00:00Z", "expireAt": "1979-08-15T00:00:00Z", "price": 99, "purchaseAt": "1976-08-23T00:00:00Z", "trialPrice": 88}, {"currencyCode": "J8BzP6EUmUXGM5an", "currencyNamespace": "Iloyj9lhbvuQdW2j", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1989-09-11T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1972-10-18T00:00:00Z", "expireAt": "1976-10-29T00:00:00Z", "price": 4, "purchaseAt": "1997-09-08T00:00:00Z", "trialPrice": 81}, {"currencyCode": "4ryY91lX8DD4MYXl", "currencyNamespace": "rJ81lHvv9rqvEoM8", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1984-03-17T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1973-03-26T00:00:00Z", "expireAt": "1995-11-28T00:00:00Z", "price": 8, "purchaseAt": "1999-03-10T00:00:00Z", "trialPrice": 68}], "8N2yv6VTnOK7xAvM": [{"currencyCode": "7tuL81lsR7xxSVp3", "currencyNamespace": "Gd2TK0HzYviTgYmx", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1979-08-16T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1985-12-25T00:00:00Z", "expireAt": "1973-11-04T00:00:00Z", "price": 17, "purchaseAt": "1992-05-30T00:00:00Z", "trialPrice": 91}, {"currencyCode": "Iz8tne5dbguBF6Gs", "currencyNamespace": "vvdl8jHz9x7XZIjU", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1997-10-27T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1981-03-30T00:00:00Z", "expireAt": "1982-11-30T00:00:00Z", "price": 31, "purchaseAt": "1990-02-27T00:00:00Z", "trialPrice": 1}, {"currencyCode": "TLEEBGTtZyTjdKNK", "currencyNamespace": "gYazujsmSmylT1Yt", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1988-05-10T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1995-12-02T00:00:00Z", "expireAt": "1971-06-29T00:00:00Z", "price": 78, "purchaseAt": "1982-01-10T00:00:00Z", "trialPrice": 57}]}, "saleConfig": {"currencyCode": "48jISd97KORRhxSW", "price": 77}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "k5UcPAGv6c1ESC6h", "stackable": true, "status": "INACTIVE", "tags": ["bzf5aANNNs5kgSZZ", "NUHbIT9szApmWJO5", "vzzXZj08a6K1XRVf"], "targetCurrencyCode": "riSpPFnZBJZkDnEi", "targetNamespace": "yfa2LrnpZxNnLRH3", "thumbnailUrl": "6bqS2oFY76PU1Azi", "useCount": 56}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id '1sys6GdkDcos5uVJ' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku '0BJfZ0jvA54CSqZF' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'DsO1skRjOU1SMfQV' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'Qa6blj9Rdd85bdYU' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'umPKVSZCg3XTc9vQ' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'e0dHJfF6KIuvnRCa' --body '{"itemIds": ["9JktyBdxkZKrEWFw", "9GYxjiiOQAD77ci0", "vfWVZoRRMPi57HyK"]}' --login_with_auth "Bearer foo"
platform-bulk-update-region-data 'Kz5nyI6ulKNKoXa0' --body '{"changes": [{"itemIdentities": ["dgx1JgjC56pda3Yh", "tQxpCYME6x21pdX2", "QSPAd9sxoLnWGP1P"], "itemIdentityType": "ITEM_ID", "regionData": {"w1KOPhuvHuYrGWDK": [{"currencyCode": "41uMOC0mRvSoaGk4", "currencyNamespace": "ktF5wnJDg9Q3WXiy", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1985-11-14T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1988-07-08T00:00:00Z", "discountedPrice": 28, "expireAt": "1975-02-15T00:00:00Z", "price": 30, "purchaseAt": "1976-04-06T00:00:00Z", "trialPrice": 82}, {"currencyCode": "sr6CHmj763vLwtYE", "currencyNamespace": "JTSiXjcY5ZPkv90l", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1989-11-22T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1995-11-02T00:00:00Z", "discountedPrice": 45, "expireAt": "1983-06-07T00:00:00Z", "price": 92, "purchaseAt": "1978-09-15T00:00:00Z", "trialPrice": 1}, {"currencyCode": "Z0LpupEi5DbkVs3q", "currencyNamespace": "FTi1t530Wj1WfzIv", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1998-12-26T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1977-12-29T00:00:00Z", "discountedPrice": 23, "expireAt": "1996-10-26T00:00:00Z", "price": 35, "purchaseAt": "1989-08-06T00:00:00Z", "trialPrice": 25}], "3XUGud4tVjmxEf4X": [{"currencyCode": "vVhFJTxFHITBg9x4", "currencyNamespace": "unq3eOMHIKeTyBG5", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1992-09-30T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1986-09-04T00:00:00Z", "discountedPrice": 0, "expireAt": "1983-05-12T00:00:00Z", "price": 28, "purchaseAt": "1971-11-01T00:00:00Z", "trialPrice": 51}, {"currencyCode": "fV3869IN4V1OdhH4", "currencyNamespace": "GVU7Exlkmc4xYiLj", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1997-06-16T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1987-06-16T00:00:00Z", "discountedPrice": 35, "expireAt": "1974-08-14T00:00:00Z", "price": 16, "purchaseAt": "1991-06-10T00:00:00Z", "trialPrice": 80}, {"currencyCode": "zn8jAdTn6xBhrcir", "currencyNamespace": "yLm67rkadH5Y41SL", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1985-12-03T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1979-07-12T00:00:00Z", "discountedPrice": 65, "expireAt": "1973-01-04T00:00:00Z", "price": 28, "purchaseAt": "1996-10-31T00:00:00Z", "trialPrice": 23}], "x3QcFo9gxOgvDc7x": [{"currencyCode": "MrRKvw8ISP2WKmCR", "currencyNamespace": "RXBxlalCHtWlKxLp", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1980-11-01T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1995-04-27T00:00:00Z", "discountedPrice": 13, "expireAt": "1993-06-17T00:00:00Z", "price": 50, "purchaseAt": "1978-01-17T00:00:00Z", "trialPrice": 43}, {"currencyCode": "Giq9j2EyIknfLDpg", "currencyNamespace": "HnMOn8nc3gUZ8ZFy", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1986-02-05T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1998-12-17T00:00:00Z", "discountedPrice": 75, "expireAt": "1983-08-17T00:00:00Z", "price": 39, "purchaseAt": "1996-06-12T00:00:00Z", "trialPrice": 42}, {"currencyCode": "JBqK4QtEydPWLPBY", "currencyNamespace": "iR3UbJc1ZYapx7C4", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1981-07-03T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1986-02-16T00:00:00Z", "discountedPrice": 11, "expireAt": "1985-11-30T00:00:00Z", "price": 70, "purchaseAt": "1989-08-28T00:00:00Z", "trialPrice": 65}]}}, {"itemIdentities": ["UT0uKAPrARya2IMl", "NiXpF4qvsUUpHqi3", "3TcBGkc0HjUcnkpU"], "itemIdentityType": "ITEM_ID", "regionData": {"qrKxnMzSYoc4ZjiM": [{"currencyCode": "Y4H34B6wVd8ipcKD", "currencyNamespace": "wQeUWtjCC2UH6jzM", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1984-08-02T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1999-04-10T00:00:00Z", "discountedPrice": 3, "expireAt": "1991-10-19T00:00:00Z", "price": 25, "purchaseAt": "1993-04-21T00:00:00Z", "trialPrice": 81}, {"currencyCode": "JM6vtT27xv85K5MU", "currencyNamespace": "2qmbeqaVemINdClp", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1991-06-20T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1976-12-29T00:00:00Z", "discountedPrice": 56, "expireAt": "1991-10-11T00:00:00Z", "price": 63, "purchaseAt": "1975-02-26T00:00:00Z", "trialPrice": 74}, {"currencyCode": "jse5kd6GEDo08yq5", "currencyNamespace": "E5HleLoog4me2NBF", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1980-07-07T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1977-03-22T00:00:00Z", "discountedPrice": 44, "expireAt": "1995-10-31T00:00:00Z", "price": 4, "purchaseAt": "1997-10-16T00:00:00Z", "trialPrice": 6}], "erTPW02PWsHiKYAr": [{"currencyCode": "AxnKBfBfDlrQQuAc", "currencyNamespace": "10DjjwMv4vrIPRtv", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1993-10-06T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1983-09-09T00:00:00Z", "discountedPrice": 76, "expireAt": "1986-12-29T00:00:00Z", "price": 36, "purchaseAt": "1979-03-22T00:00:00Z", "trialPrice": 12}, {"currencyCode": "aLOKnX51yAB8Pa3u", "currencyNamespace": "NGKhaLlJzJMSnJII", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1988-07-31T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1995-04-11T00:00:00Z", "discountedPrice": 1, "expireAt": "1995-09-23T00:00:00Z", "price": 55, "purchaseAt": "1997-11-05T00:00:00Z", "trialPrice": 48}, {"currencyCode": "bsF44VTsLDRzdq22", "currencyNamespace": "cbnyK3ggFDh2kaZP", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1999-04-18T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1977-02-13T00:00:00Z", "discountedPrice": 12, "expireAt": "1985-07-11T00:00:00Z", "price": 40, "purchaseAt": "1992-02-23T00:00:00Z", "trialPrice": 45}], "bepUCTWiZ1uqh7GA": [{"currencyCode": "i4FEIu44u83ZLRxY", "currencyNamespace": "lYqlpq03BGdIk4oE", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1974-03-14T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1983-01-19T00:00:00Z", "discountedPrice": 66, "expireAt": "1998-12-21T00:00:00Z", "price": 8, "purchaseAt": "1980-10-08T00:00:00Z", "trialPrice": 73}, {"currencyCode": "vDiA0tQWlHwBcTtz", "currencyNamespace": "tx3VAl6tXFbnATCz", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1987-10-07T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1977-11-01T00:00:00Z", "discountedPrice": 5, "expireAt": "1974-07-23T00:00:00Z", "price": 63, "purchaseAt": "1976-08-24T00:00:00Z", "trialPrice": 16}, {"currencyCode": "4AELr5lraa5v5P5C", "currencyNamespace": "j8hgFsqHC9h5JPiM", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1981-06-30T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1992-10-21T00:00:00Z", "discountedPrice": 37, "expireAt": "1981-01-06T00:00:00Z", "price": 18, "purchaseAt": "1987-08-28T00:00:00Z", "trialPrice": 13}]}}, {"itemIdentities": ["2CX0rITajpwHITGe", "HTnqRbzBB9ZFgJbQ", "3Fj1umx4ItzkMJ7c"], "itemIdentityType": "ITEM_SKU", "regionData": {"sHooOIaxIpb1cIOJ": [{"currencyCode": "PS3lJ80YJ41U4ooQ", "currencyNamespace": "980ywmg1pWpWit1Q", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1987-10-22T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1973-07-26T00:00:00Z", "discountedPrice": 71, "expireAt": "1973-04-07T00:00:00Z", "price": 27, "purchaseAt": "1984-10-01T00:00:00Z", "trialPrice": 46}, {"currencyCode": "UlmU1unGKM0tgfeW", "currencyNamespace": "y47bbwMI4gGmvK9g", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1989-09-11T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1982-08-01T00:00:00Z", "discountedPrice": 57, "expireAt": "1974-11-19T00:00:00Z", "price": 81, "purchaseAt": "1980-09-16T00:00:00Z", "trialPrice": 96}, {"currencyCode": "Xt3TAuKBwBcD12ae", "currencyNamespace": "6r3hHwya4NpdOzg3", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1979-08-30T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1976-01-19T00:00:00Z", "discountedPrice": 1, "expireAt": "1988-02-12T00:00:00Z", "price": 82, "purchaseAt": "1995-01-25T00:00:00Z", "trialPrice": 12}], "bh2iKNUl0qJqzoKM": [{"currencyCode": "RMG541PAiNjULsx4", "currencyNamespace": "SnKNXLMUaDSwwQln", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1998-08-06T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1994-06-02T00:00:00Z", "discountedPrice": 57, "expireAt": "1974-05-19T00:00:00Z", "price": 11, "purchaseAt": "1984-06-27T00:00:00Z", "trialPrice": 62}, {"currencyCode": "5kVu4S95mj8YRvae", "currencyNamespace": "4f4lhBPbarbWEm8b", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1997-04-19T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1990-02-10T00:00:00Z", "discountedPrice": 98, "expireAt": "1985-04-25T00:00:00Z", "price": 85, "purchaseAt": "1984-01-26T00:00:00Z", "trialPrice": 87}, {"currencyCode": "keYXJvtggDdXjbdj", "currencyNamespace": "MBahFZZGMTcqnWrI", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1979-02-14T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1972-06-29T00:00:00Z", "discountedPrice": 64, "expireAt": "1998-08-07T00:00:00Z", "price": 57, "purchaseAt": "1995-10-16T00:00:00Z", "trialPrice": 38}], "9Sgl7H1sdH2RIJz1": [{"currencyCode": "eI7Q5pu9PutLf6Ir", "currencyNamespace": "vZoBGQbO4S3rURGW", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1989-08-03T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1985-10-16T00:00:00Z", "discountedPrice": 6, "expireAt": "1998-02-07T00:00:00Z", "price": 21, "purchaseAt": "1986-05-12T00:00:00Z", "trialPrice": 19}, {"currencyCode": "JoF2FI3vyyqRzc20", "currencyNamespace": "O7FdsJP1G9tyBTfE", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1981-06-25T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1974-08-29T00:00:00Z", "discountedPrice": 61, "expireAt": "1998-12-12T00:00:00Z", "price": 94, "purchaseAt": "1973-11-10T00:00:00Z", "trialPrice": 57}, {"currencyCode": "Ot2DkUt3yexZBRvx", "currencyNamespace": "YnEBhXtAVxCd3meT", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1979-06-09T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1974-09-17T00:00:00Z", "discountedPrice": 98, "expireAt": "1982-04-30T00:00:00Z", "price": 49, "purchaseAt": "1995-08-19T00:00:00Z", "trialPrice": 16}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'OCKDJE3RMUddwSSg' 'xCu8zru1DhGAYOHR' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item '5BWa9VzIkaQEl1iU' --login_with_auth "Bearer foo"
platform-update-item 'ProNB6hI6IpGcToW' 'gFvdRhG9NwV3zDuq' --body '{"appId": "VlVTypcYPK8IxrSZ", "appType": "GAME", "baseAppId": "OqO4U0bitNQLzwRo", "boothName": "WnR0AbkCPY70Fmvv", "categoryPath": "iVIBbcujF8Vk5qb8", "clazz": "NhWWwaxyMchkt8l5", "displayOrder": 70, "entitlementType": "DURABLE", "ext": {"TUh2dJ90yqHDNacl": {}, "4F9G6Dl5TFwBY6HK": {}, "XAblkT8VGgSH8MGZ": {}}, "features": ["3bhPQvBBJI5Jxytp", "X1IByPEOuPhGspRi", "GwiVj7eDTaka9ABf"], "images": [{"as": "cubN4AUUPFPscZsX", "caption": "eJOD4DMtqfIGiGJo", "height": 44, "imageUrl": "Bq2SimQQoLbe5YOJ", "smallImageUrl": "vxGRxUzrTwagH7BM", "width": 94}, {"as": "AzWze94MEdJFAy2J", "caption": "TllJkRGB8jqJEd6e", "height": 33, "imageUrl": "o8SjDAM0Riw8wLYW", "smallImageUrl": "3n4F3LD1EDwBXw5u", "width": 57}, {"as": "dc5VyC4qvWjVac1c", "caption": "QvSxgTNIUzxDgBlI", "height": 3, "imageUrl": "CkZu4htrsf8eIFSo", "smallImageUrl": "vTGXaMsq8ePN1oco", "width": 66}], "itemIds": ["jx8Upe8SjMvpqM8p", "uggOEdG47gD5i2Ni", "6AnWn3NdEPhNHSH7"], "itemQty": {"eKDfRcngEpTnRUQr": 62, "RLOM1vEx4gqDY6jw": 51, "aY5c1tP5TDuI5f6m": 40}, "itemType": "SEASON", "listable": true, "localizations": {"Qt28b6o3K0COF74t": {"description": "z6aeXZOYwbwjMNdx", "localExt": {"KWlBfnRyFS0Ed7gT": {}, "M5AVrtBQiDTcNnZa": {}, "6Zuxk6u6HXXdiC9Z": {}}, "longDescription": "Dj4E4mv12FNXypoO", "title": "Ll13j84P0KqirJ4P"}, "kMFtsnFfz8Ew0X8f": {"description": "BuBSKLSQ4GvLtz50", "localExt": {"D3rpBfBovqLwXBuT": {}, "30EYeRj17xGhaBKo": {}, "UfiHjGmCyPsKCJTv": {}}, "longDescription": "1ic9gvagF2cSuzts", "title": "J5tj64gV7nmDk29m"}, "cjSuz9vbNStqPtQm": {"description": "QN6eKAGiZFCftT0R", "localExt": {"WECdjWYrnulxcCKA": {}, "ru8pOaAVLDB4k3Jw": {}, "kdaxR7GJpYmuYCPG": {}}, "longDescription": "181q9GA5DydC2D8U", "title": "T6KOc4VPDUR9ayaz"}}, "lootBoxConfig": {"rewardCount": 34, "rewards": [{"lootBoxItems": [{"count": 14, "duration": 77, "endDate": "1993-04-01T00:00:00Z", "itemId": "qegIUicYXXzxsBFr", "itemSku": "Us9BYp6TgCejBd5o", "itemType": "7iTST7R3KbbQGERM"}, {"count": 81, "duration": 47, "endDate": "1979-05-16T00:00:00Z", "itemId": "5FZfQIodVBqQsBpC", "itemSku": "JBIXLGYcwWVRK6UK", "itemType": "k5ozrXA4HZHNyq9o"}, {"count": 8, "duration": 1, "endDate": "1976-04-18T00:00:00Z", "itemId": "4vxmbH3rVaauufxk", "itemSku": "PHElug48TgfNu0rq", "itemType": "XUOyToLPIREGIKlJ"}], "name": "t3EP9kKwkENQ8VOH", "odds": 0.526743592004303, "type": "REWARD", "weight": 44}, {"lootBoxItems": [{"count": 2, "duration": 5, "endDate": "1984-08-28T00:00:00Z", "itemId": "P8Gwjg3IOH0SDHgY", "itemSku": "KqxJiFJdrmj5vhzg", "itemType": "sJwex7wq8ZPlXNaU"}, {"count": 81, "duration": 73, "endDate": "1974-07-18T00:00:00Z", "itemId": "dY2vfJuje5cPnmGj", "itemSku": "TvYa5Pqx1K7qcAoi", "itemType": "jBPAp6EPb988Nzxr"}, {"count": 61, "duration": 40, "endDate": "1990-06-01T00:00:00Z", "itemId": "VpULjjiw3NeVG4DJ", "itemSku": "i9DaMrc0WFgKjE94", "itemType": "5x2CPVYYG9WvoGmA"}], "name": "mvaVV5YfxnUNcwjr", "odds": 0.9654101627538015, "type": "PROBABILITY_GROUP", "weight": 60}, {"lootBoxItems": [{"count": 90, "duration": 45, "endDate": "1987-02-28T00:00:00Z", "itemId": "hnfuF4WZiQVICVpW", "itemSku": "d3UM08gMXhdf3juX", "itemType": "W4JprIb3CJCAtvSG"}, {"count": 12, "duration": 59, "endDate": "1973-04-25T00:00:00Z", "itemId": "a9dzOJDGCTHIOFje", "itemSku": "XbsSgR43kIDzxBwq", "itemType": "RJTzrHNZWUsq5lQo"}, {"count": 9, "duration": 20, "endDate": "1985-07-22T00:00:00Z", "itemId": "UYG9ccTt7Wxw8OQ1", "itemSku": "3t3uTw6zQuoZcXQp", "itemType": "oTOxe8y1jorNsg9Z"}], "name": "KYCKoISyXtHzoWGd", "odds": 0.8154594518640319, "type": "PROBABILITY_GROUP", "weight": 14}], "rollFunction": "CUSTOM"}, "maxCount": 49, "maxCountPerUser": 59, "name": "Mp3uOQIybqWfG9BJ", "optionBoxConfig": {"boxItems": [{"count": 32, "duration": 65, "endDate": "1989-11-29T00:00:00Z", "itemId": "KlbYHtbPtaxvagSl", "itemSku": "pGgVTF6VeDAPOGBw", "itemType": "weyFfXEOEAEtbag8"}, {"count": 99, "duration": 74, "endDate": "1979-02-20T00:00:00Z", "itemId": "9A3tXGve6DdK6uvg", "itemSku": "8f2cIoByk9fxtvsg", "itemType": "eAxo57nKAbZpsbJ4"}, {"count": 71, "duration": 39, "endDate": "1981-10-27T00:00:00Z", "itemId": "BNsi4giR9434WpKK", "itemSku": "dzxoufCNlFoOcWQQ", "itemType": "y4bjmQeEweoBHTdw"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 27, "fixedTrialCycles": 66, "graceDays": 66}, "regionData": {"QnbqY1cQwVEtAr5k": [{"currencyCode": "KKAo9MM2Cqm84jVi", "currencyNamespace": "9kIpqgrzpUkNOBWy", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1996-04-20T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1990-09-13T00:00:00Z", "expireAt": "1989-03-10T00:00:00Z", "price": 40, "purchaseAt": "1998-08-12T00:00:00Z", "trialPrice": 1}, {"currencyCode": "jj3b8QM8Rr45ULqX", "currencyNamespace": "QgvwD3PsKDJiWxQB", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1971-06-15T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1984-05-25T00:00:00Z", "expireAt": "1986-08-28T00:00:00Z", "price": 64, "purchaseAt": "1985-06-23T00:00:00Z", "trialPrice": 12}, {"currencyCode": "owPgIGuetxFMqXCQ", "currencyNamespace": "MAqQ2ZRGzNtrThFa", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1995-03-11T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1977-04-26T00:00:00Z", "expireAt": "1973-06-04T00:00:00Z", "price": 79, "purchaseAt": "1977-11-13T00:00:00Z", "trialPrice": 41}], "83WekqfWv04vvn9b": [{"currencyCode": "k5qr8qs2mqtnGAqX", "currencyNamespace": "UjNypF6MMqWpdEJs", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1976-01-06T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1980-01-15T00:00:00Z", "expireAt": "1997-02-14T00:00:00Z", "price": 53, "purchaseAt": "1982-01-20T00:00:00Z", "trialPrice": 74}, {"currencyCode": "FlounC3vJKBC7Swg", "currencyNamespace": "oViPeIB4Ehy0Y5aS", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1980-02-26T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1975-04-25T00:00:00Z", "expireAt": "1991-07-06T00:00:00Z", "price": 58, "purchaseAt": "1984-11-15T00:00:00Z", "trialPrice": 30}, {"currencyCode": "77eY9C14FbfiI2NP", "currencyNamespace": "vl1kCY5bEokxXxkW", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1980-02-11T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1987-07-09T00:00:00Z", "expireAt": "1983-01-02T00:00:00Z", "price": 43, "purchaseAt": "1978-04-16T00:00:00Z", "trialPrice": 38}], "BeIqdQGZC5kM03HH": [{"currencyCode": "ijsQRj7N8IAjmson", "currencyNamespace": "jj0ZR50BQ1U6aFD3", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1976-01-22T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1980-04-30T00:00:00Z", "expireAt": "1972-01-06T00:00:00Z", "price": 15, "purchaseAt": "1995-07-22T00:00:00Z", "trialPrice": 35}, {"currencyCode": "gZVl4gIF7v3qbZu9", "currencyNamespace": "M3OxqVAT4H1lRZ9Z", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1982-05-25T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1986-12-25T00:00:00Z", "expireAt": "1989-07-29T00:00:00Z", "price": 50, "purchaseAt": "1986-03-21T00:00:00Z", "trialPrice": 82}, {"currencyCode": "Bu4EzwRjD7jmQJeF", "currencyNamespace": "PghqamSc5y0X48eT", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1985-04-01T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1988-02-06T00:00:00Z", "expireAt": "1997-07-08T00:00:00Z", "price": 95, "purchaseAt": "1976-06-07T00:00:00Z", "trialPrice": 98}]}, "saleConfig": {"currencyCode": "7b9Z5BTsEA3EdmW8", "price": 37}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "4WedopzwSluBtRFP", "stackable": true, "status": "ACTIVE", "tags": ["YwNN3UYhic03qGEg", "prR3OEey0MkZwS6T", "5fNzBVrjo3g8CfRw"], "targetCurrencyCode": "tyl1HeT7VEPgG40Q", "targetNamespace": "yXzsOzgck078Igho", "thumbnailUrl": "QBp2mWAOYksczxBS", "useCount": 11}' --login_with_auth "Bearer foo"
platform-delete-item 'OBCa2vWadLmQtYKm' --login_with_auth "Bearer foo"
platform-acquire-item 'EMzicbuL2S3RiW8d' --body '{"count": 78, "orderNo": "3uNbcIDcIyvZbOy1"}' --login_with_auth "Bearer foo"
platform-get-app 'T4hfwkuVykH4Rpfm' --login_with_auth "Bearer foo"
platform-update-app 'jIXFGZ5PKdbabJIk' 'Nnt9P1Tkm08luh4d' --body '{"carousel": [{"alt": "pPRMDbUXBWTbpAog", "previewUrl": "G2wlZkLhuU5FI8Ni", "thumbnailUrl": "jFI0GKwJ3vfXlsAM", "type": "video", "url": "zsFUgYwbaLvqvQ2N", "videoSource": "generic"}, {"alt": "9UR5q9neoW6JBcGp", "previewUrl": "9Rx2RfcRhXpmeeHd", "thumbnailUrl": "vphas9S7ivHEoLbU", "type": "image", "url": "47f1UreUpxEkXIbE", "videoSource": "vimeo"}, {"alt": "XQ3koaAfZIim0sFP", "previewUrl": "m1YN27bojDVaZLpx", "thumbnailUrl": "4kEWYkO6KrKUMhJr", "type": "video", "url": "lMlUvFEiGprcNSQ9", "videoSource": "generic"}], "developer": "nDGvur19V18oIrUK", "forumUrl": "XttgAI2QdWJFLmoP", "genres": ["Racing", "MassivelyMultiplayer", "Adventure"], "localizations": {"Ybe4Cf2HEHvVevhI": {"announcement": "SjbtBJUK5fE3OufP", "slogan": "SX3PdOU2V9yw94oa"}, "8UJ34TIedV3HyoX4": {"announcement": "VnO2LpBU08wfnlHB", "slogan": "XFIqFUmgUSMM5au8"}, "GJT0mkVPI6zUtf3Q": {"announcement": "aJPGrTNcXXTUIggo", "slogan": "H89QNmI17UDb19R6"}}, "platformRequirements": {"H7r1ta3m7jK5pxe8": [{"additionals": "2pgFiAS6piIzmc8r", "directXVersion": "KrKEPGSAcong6eNE", "diskSpace": "RUf8kjci1Ctccv9G", "graphics": "v4tOcbnuCqf0lm6W", "label": "BkIzjoSV31tvmMB6", "osVersion": "jzrpRGESmooHiCV4", "processor": "GUOnXpapXQGRakUb", "ram": "cG7PcR4eiU3Idi55", "soundCard": "jNrGNT2VHTKuIT5F"}, {"additionals": "wwHj0Ur5F2PWGTTD", "directXVersion": "81xhNP4t6kYBUjyX", "diskSpace": "An3bWQF6QcAiJpXI", "graphics": "rgroixptZhckUTGk", "label": "cBOE4qMcH1Kyi8ZF", "osVersion": "vGcV8DY0XOkDstxZ", "processor": "cY1HgAnZV4IOglVL", "ram": "qb9lGAJUg21Lt7Jw", "soundCard": "gwMUSuC3Bajy3BcE"}, {"additionals": "MCtQs2FcEcvVAyId", "directXVersion": "6Cp85HVDsZBQgOnX", "diskSpace": "uXsGThYZrmm0wrFM", "graphics": "nPpWgrQD4hEk0OLj", "label": "YsnignE7KcMF7fuD", "osVersion": "bzRRYMNXWUsp1tOi", "processor": "bJY9aL9ie6vvMbiN", "ram": "URrlm88QlKyuoya4", "soundCard": "JgakZyUV7t73VnSF"}], "buxd4KYZ0jk0UZdh": [{"additionals": "tnKu9oTc8pVkiyGs", "directXVersion": "j5JdXzRxfNEjUMTs", "diskSpace": "8WIObJBTsvsw76uI", "graphics": "SRX0bKVoWtoUW1P7", "label": "ocuBAldDSUS7Haa6", "osVersion": "unq1yQOSRvyiLBRV", "processor": "tIDi2piIQFVmzMid", "ram": "w70KSahpYZdKZRyR", "soundCard": "9AX7JjxvNZhM84Di"}, {"additionals": "Zk6ySrB9SVFctW7Y", "directXVersion": "S0OkL78XeEAtALFI", "diskSpace": "3v8yha4pd5A7MYcp", "graphics": "BD6lKNb8RxvN2u5J", "label": "7baOeLH19fqBwNbN", "osVersion": "e1ffYRtIvQaKyevW", "processor": "YtZjK6J29v8MpBSp", "ram": "o3AKRmnJkzJHAckU", "soundCard": "yBksYQfDm0RNFwiz"}, {"additionals": "70tRVLMlHi8i9gOV", "directXVersion": "qajUWrgEsWDtaKzn", "diskSpace": "8dZwnnGeZsZVgbPz", "graphics": "PFbrOMZMgWkFN7Tp", "label": "kx6GcfyOg6ZUrrp9", "osVersion": "ubg9mndW2JKmQafU", "processor": "s2bxYztOEyVbKIf1", "ram": "ZbzgUwd8DHoCQykm", "soundCard": "XHYmkRlg7gYs6unP"}], "YQ9jNQN1di1ldhOh": [{"additionals": "6HvjnYuV7NfC4A2O", "directXVersion": "DiZhbfb8QqCyK1XH", "diskSpace": "9D6vl5eFdFfgK46G", "graphics": "jCWaP8huTmnq3FGQ", "label": "n3Ahu5wxq6oJq4mC", "osVersion": "hmQHQhO9IKBXDFQf", "processor": "XFD58sG6uDhFYlrz", "ram": "JBYSeMuJfQecutjS", "soundCard": "029BiJWOG1m7MKcl"}, {"additionals": "r5igjNTVItrH2X78", "directXVersion": "hxJgaVfw5Vnyq8Oz", "diskSpace": "TE89WDNoMcOmbfJr", "graphics": "CJQIj1haAosKglqa", "label": "CXE9ytpIO8btO3Ow", "osVersion": "NEGSW5TaW4to7QCY", "processor": "2NGGvi9kg3rMIzNm", "ram": "hJTNQjKlwjfJ3TJ2", "soundCard": "xVpge70WsLfgbZie"}, {"additionals": "RvJI5sT9DH3DfLCv", "directXVersion": "8q4Thmq09bBgPAYx", "diskSpace": "rBE9jlnTgtgW33wD", "graphics": "wD9RKvQX4yFQFdrR", "label": "oM6FoqCYw7AlxO6q", "osVersion": "dFpc71sSck3ggZWJ", "processor": "lSlCQMDji329PfVr", "ram": "vMEPtpsSNcpK1QkB", "soundCard": "2Sy8Ww79LVeVskqe"}]}, "platforms": ["MacOS", "MacOS", "MacOS"], "players": ["LocalCoop", "Single", "Coop"], "primaryGenre": "Action", "publisher": "F9bqMj4ro5B19VE8", "releaseDate": "1999-01-21T00:00:00Z", "websiteUrl": "8c7OydVw0zCqoMZv"}' --login_with_auth "Bearer foo"
platform-disable-item 'pIOO97DmQ5ZOzx6i' 'CJTu60IifzMhkk5P' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'xsjqbCKpMv2Yky9D' --login_with_auth "Bearer foo"
platform-enable-item 'YkD2sIllFtBtXJKG' '3rqBmILhtWm8RQvR' --login_with_auth "Bearer foo"
platform-feature-item 'UbUDSiefGEdLucrt' 'O2gCQD057DrDlgC2' 'nzS9SiGUjVAw4v3q' --login_with_auth "Bearer foo"
platform-defeature-item '6JRHcn7KaoCEkRdo' '6qHYIZWnXqQ1oHFJ' '9Q0vqsL9SomqWsGA' --login_with_auth "Bearer foo"
platform-get-locale-item '76yxi0QzZWfmP2sx' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition '0KO5bEJaPnAFjsod' 'yJQVVBrShGbIIuqK' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 100, "comparison": "isGreaterThan", "name": "03HgoXCR6XOMXwKd", "predicateType": "EntitlementPredicate", "value": "PCxwEdkyuT3MgzRe", "values": ["Rq0112ISArROIodc", "mM6v2AEozWWaYvBL", "E46bpuJip8JyxJ39"]}, {"anyOf": 43, "comparison": "isGreaterThanOrEqual", "name": "rtuWWrqTZbSqBSKp", "predicateType": "SeasonPassPredicate", "value": "AmgwhYzk33J34fiT", "values": ["xK63OHpnUCGBVfpc", "J5euLAbBgejqc0ap", "tNFUsUQ6ZXQcb2o1"]}, {"anyOf": 47, "comparison": "isGreaterThanOrEqual", "name": "VByeI3ycMcYYBixK", "predicateType": "SeasonTierPredicate", "value": "vIslt7N1qcxKs4nl", "values": ["lxNf09pefgFIiJss", "ShBKsQjXvfQgQDt6", "f1MfqUZXkjHvcUOT"]}]}, {"operator": "and", "predicates": [{"anyOf": 11, "comparison": "includes", "name": "Zl4VuY6rsZyo6CBR", "predicateType": "SeasonTierPredicate", "value": "gkewIzTOqKkcjRh3", "values": ["IlTk3Bpclrk4hIRn", "l2gAJOTCbx7J3gNL", "0znIKzAEAHQpBOgH"]}, {"anyOf": 63, "comparison": "isLessThan", "name": "P5l94s7CbIJ7eHnV", "predicateType": "SeasonTierPredicate", "value": "OboMkyB7FTexsOZ0", "values": ["Gy83Xit6boOLGCcg", "b2p3b63KrcwIcXMh", "16DqwdQPQ9HkSSV8"]}, {"anyOf": 8, "comparison": "isLessThan", "name": "MgTTLS2FgarY903I", "predicateType": "SeasonTierPredicate", "value": "ZUDj9dzGgGVxo9OH", "values": ["gfHumyfuBNisecYb", "ImwCwGqOf0bNs97K", "cOpR45VDlvSc0Mr7"]}]}, {"operator": "or", "predicates": [{"anyOf": 99, "comparison": "isLessThanOrEqual", "name": "9Xwt3wmRTrDCjhnK", "predicateType": "SeasonPassPredicate", "value": "bbrmgjhWK0x0ZidA", "values": ["bUnUDh5yGjjv4Mwr", "J1CU1eD1La16Bw3J", "v2vancmR6Z7rb21A"]}, {"anyOf": 76, "comparison": "isNot", "name": "8Y4JFVUdzA8bvXlD", "predicateType": "EntitlementPredicate", "value": "dM5T3fDSrSHrkoqv", "values": ["dFNtRVSO0js0hG9x", "mSnzd7zgUxAogcnG", "2mM6soMaTvQq2a9Y"]}, {"anyOf": 21, "comparison": "includes", "name": "k17QPkJHRhmLKQuQ", "predicateType": "SeasonPassPredicate", "value": "FSKiXl8G2uf6E8Ea", "values": ["jXLSAS8MKMaxQ1Qy", "JCpKedhuzI7G9NCK", "KXu1bqI2M5PmXfKn"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'Q7BYGjCUDMOrbmoR' --body '{"orderNo": "vWnfmGFy0eUoOBd9"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "0h9EDqSTOfoNewWj", "name": "wMWDKEt6JhbJ0fwT", "status": "INACTIVE", "tags": ["wIFlHm9N6owMHMtJ", "y1Oqn59tEGm9NYeU", "T5P0nx8TqSZdZ5C8"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'mFI9TnvzEqBNMF9C' --login_with_auth "Bearer foo"
platform-update-key-group 'ZvPxT5zbreMc9fBo' --body '{"description": "U3RHNDFjLKFrepy5", "name": "6eW1kmb15QeIQF51", "status": "ACTIVE", "tags": ["U53z6joBAhAlJGI2", "YYb6ajBjgq6eY4PB", "NHKPx62tHxDb06ZF"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'y3uglSp2UxvF2uLX' --login_with_auth "Bearer foo"
platform-list-keys 'WilRD7HD6LCgdFxR' --login_with_auth "Bearer foo"
platform-upload-keys 'Gj00RT6LvcnGMJbJ' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'IYLssMvy9gkfTMRr' --login_with_auth "Bearer foo"
platform-refund-order 'XVRcAVRDX6gmDfNf' --body '{"description": "PGYYSTunMgt3C8hE"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": false, "notifyUrl": "ssw647YwDudnGRuf", "privateKey": "OUGfMjTU226l07jP"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "lcYaqYM7YfBmhjI9", "currencyNamespace": "Y28qVceS9UX48dKP", "customParameters": {"CFUIeyYEymNXzNX6": {}, "TGh4UdEweeBsJEvB": {}, "bAvCmlh6Z1oz9Bai": {}}, "description": "xUUvmzbajE2gjooi", "extOrderNo": "Dnc1NUb51lEgUwQ9", "extUserId": "tkWaMOH47CAT7cBP", "itemType": "MEDIA", "language": "Xk_UcUr_773", "metadata": {"R84iAO7sBQt6YJ2t": "WwF7RnP1oK3c4RVf", "jB0zi3XrYZUiN24o": "l1qqbalgizL97ycJ", "V5YqE2myQzl7X9fH": "r6WvBxmBvNj3ktaD"}, "notifyUrl": "f9B22HGgxakPt7IY", "omitNotification": true, "platform": "Faj6Vxs3GuA4S1dS", "price": 11, "recurringPaymentOrderNo": "H7yIS7b5TSDRIoMg", "region": "7Dc5APzfzXDELJFa", "returnUrl": "IaEMW5bhJyL72WDy", "sandbox": false, "sku": "dFfC8x5aHLsXHlm1", "subscriptionId": "RJTTy9JrNz1K5M1q", "targetNamespace": "gFddYvifGHawNx6y", "targetUserId": "hniEHLbEQKc0aUvr", "title": "KXDIjYC4df9qswSl"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'pCI8DhjlxUyrs3OS' --login_with_auth "Bearer foo"
platform-get-payment-order 'esE5p0DwUj2HKUvP' --login_with_auth "Bearer foo"
platform-charge-payment-order 'YUcQBxMSdOOsn2Nd' --body '{"extTxId": "8Jpa19GJDK46Eehx", "paymentMethod": "7xasqMY9aulsL6NO", "paymentProvider": "STRIPE"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'agpS6A5mkufBpWVx' --body '{"description": "IK9D2bTcgaKoccaS"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'wWcZmzCWGI1cIQcP' --body '{"amount": 100, "currencyCode": "8tLAJWpcyNkUvqn6", "notifyType": "CHARGE", "paymentProvider": "CHECKOUT", "salesTax": 36, "vat": 45}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'FNbKJ05Orya6LSSU' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Nintendo' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Other' --body '{"allowedBalanceOrigins": ["Playstation", "GooglePlay", "Epic"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Xbox' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-loot-box-plugin-config-1 --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config --body '{"appConfig": {"appName": "SaVYcAYp7qSiDvsf"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "UOpWv46sXvpOjrpR"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-loot-box-plugin-config-1 --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "uDLLuIaSxoloIH1g", "eventTopic": "BCWVFrvls0ZwosKh", "maxAwarded": 60, "maxAwardedPerUser": 72, "namespaceExpression": "lLfTKxpVOXvGSrdk", "rewardCode": "qddI3ezqu6FB0sL2", "rewardConditions": [{"condition": "xt6fX9j7rhZCAlDl", "conditionName": "VKBsLZiBRXszE7CL", "eventName": "1cQCSoqHvH7g63cO", "rewardItems": [{"duration": 47, "endDate": "1977-07-17T00:00:00Z", "itemId": "0pGzazM2BUXnzUEW", "quantity": 94}, {"duration": 17, "endDate": "1985-10-28T00:00:00Z", "itemId": "c4M2O7NrTQO7KLdZ", "quantity": 59}, {"duration": 66, "endDate": "1978-07-07T00:00:00Z", "itemId": "gE5gcfF8AMGZ2FBS", "quantity": 38}]}, {"condition": "Mg6TKwdRMraDLrwh", "conditionName": "3d0ykRGkgqUNIbJM", "eventName": "J9ABbKVWO2YEDiqk", "rewardItems": [{"duration": 46, "endDate": "1972-10-30T00:00:00Z", "itemId": "vtQ92iD02YMvEUNf", "quantity": 30}, {"duration": 92, "endDate": "1990-08-06T00:00:00Z", "itemId": "7JCcMo7GxxXdbYCR", "quantity": 10}, {"duration": 26, "endDate": "1982-12-09T00:00:00Z", "itemId": "ClIQmkIdLCvNhZ6P", "quantity": 16}]}, {"condition": "aqZ2yfrC1V7ZpJZP", "conditionName": "HCMqvcYmeDLYEzs2", "eventName": "SQUdKr6vgqkjycqc", "rewardItems": [{"duration": 23, "endDate": "1991-03-31T00:00:00Z", "itemId": "Df5qUZOFzpFd6b5J", "quantity": 5}, {"duration": 23, "endDate": "1988-09-09T00:00:00Z", "itemId": "PLzynjFZgF3erw7U", "quantity": 38}, {"duration": 39, "endDate": "1983-06-28T00:00:00Z", "itemId": "Hq4bBb0n1JhPUS8B", "quantity": 89}]}], "userIdExpression": "DFopxUwkMuSqQnKz"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'eJc7NvgTSgKjCxZj' --login_with_auth "Bearer foo"
platform-update-reward 'Kf8NA4cGUaDfy9Xn' --body '{"description": "H2r0EKrk5VlnKsWC", "eventTopic": "PccAFn5CEPoH6opK", "maxAwarded": 61, "maxAwardedPerUser": 62, "namespaceExpression": "SO8JyX4IE1z3rDwZ", "rewardCode": "1HKsOpyq8agQuz86", "rewardConditions": [{"condition": "nc6jLF9DIW2ncJJK", "conditionName": "pqmgvUTr8XAtpOqU", "eventName": "QxzqJZiWi3KQffT5", "rewardItems": [{"duration": 94, "endDate": "1977-01-14T00:00:00Z", "itemId": "61A1xW6okIqmd87i", "quantity": 37}, {"duration": 30, "endDate": "1972-05-12T00:00:00Z", "itemId": "V54JsVBRB0rY0xfW", "quantity": 8}, {"duration": 49, "endDate": "1972-03-27T00:00:00Z", "itemId": "ACyHSmo4KX9TPO3K", "quantity": 91}]}, {"condition": "k5ZM8btmGsgXNXbp", "conditionName": "qxh76Af5JSwjw2fE", "eventName": "2g6jXV7oai2oDm9F", "rewardItems": [{"duration": 0, "endDate": "1986-12-08T00:00:00Z", "itemId": "t39uJQpgEtchTe3n", "quantity": 39}, {"duration": 37, "endDate": "1987-06-09T00:00:00Z", "itemId": "OkzxVt15LKmkQ7YB", "quantity": 14}, {"duration": 67, "endDate": "1980-08-15T00:00:00Z", "itemId": "OuJ0ypkkt2G4eFh2", "quantity": 80}]}, {"condition": "PMoZZcyGEHxAKDQh", "conditionName": "er3usApPdJPn9eId", "eventName": "hIBvTTupABJ4RwH3", "rewardItems": [{"duration": 62, "endDate": "1987-01-23T00:00:00Z", "itemId": "S54vl7gIKBc7OYTy", "quantity": 23}, {"duration": 11, "endDate": "1987-12-20T00:00:00Z", "itemId": "EnzZVnkLT0Lb85nm", "quantity": 32}, {"duration": 91, "endDate": "1972-08-19T00:00:00Z", "itemId": "N26BY5YI0jeO2zMD", "quantity": 92}]}], "userIdExpression": "eoxYV4UcYzswAGpX"}' --login_with_auth "Bearer foo"
platform-delete-reward 'qQxctuVaqPJGAHEZ' --login_with_auth "Bearer foo"
platform-check-event-condition 'muQrZ8GaQ4OZ2nDo' --body '{"payload": {"dm4TNs8mAj6IKSYF": {}, "dJwgZsRPOzwuDSdG": {}, "l1A2vaNeDiSqTfmA": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'Vg50kOdJagEmTuax' --body '{"conditionName": "lxgywkbdOsyxX1tf", "userId": "W488oYUT4jyCVJ0V"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section '8obTlGVThz4bm41o' --body '{"active": false, "displayOrder": 5, "endDate": "1989-02-08T00:00:00Z", "ext": {"33yjPxibDjfF7Jkj": {}, "CVpZKMxkFkBtXMU6": {}, "KRIm5xBoIi99ctgF": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 1, "itemCount": 22, "rule": "SEQUENCE"}, "items": [{"id": "xWKCU1XN4gl7yHvE", "sku": "qpJSrDXVwCkhOQ16"}, {"id": "1TFjROYJm75VIuCO", "sku": "Ckt2W1DfI8QtgODk"}, {"id": "9K6DcMnyCPn1FylW", "sku": "daNV1VaZTkbbuWii"}], "localizations": {"A4UTDgS2SVEo5M80": {"description": "LLbku9GYH4ijqOVM", "localExt": {"50tCqkZfsSxAbDJ7": {}, "sHCLup8pmEosOXgl": {}, "QwwdeLVpmXqRwVjc": {}}, "longDescription": "3W2ANmE3VVsQ1fm9", "title": "EUdiaRjuLsKZoqnp"}, "KwhpZVdw5UMa8ymx": {"description": "tEFLwELCY2vIddlx", "localExt": {"nA1VynioJcAPwVHU": {}, "Gcs1ACMvoY4jWH9d": {}, "FmOHW0j9suukPE4J": {}}, "longDescription": "wQONQ2vCbMn0Oia3", "title": "36uiiMTAductvUfV"}, "wLahtRedh1SiZlOp": {"description": "IQ8GL7jBF1R5OexA", "localExt": {"PzCG6ZKQClGc1636": {}, "nbfM3J9G40Y62bCo": {}, "941ALznQuHVskfCj": {}}, "longDescription": "UK8GeX4Q0B2Cj0oO", "title": "mBmXu1KiTTiz7yrI"}}, "name": "vQj2isN7bRwcr16l", "rotationType": "CUSTOM", "startDate": "1993-06-29T00:00:00Z", "viewId": "kuhb4pUwnGptHUpl"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'xzaDa9PDwhu31d8e' --login_with_auth "Bearer foo"
platform-get-section 'Odtrfq6ECDD6OGku' --login_with_auth "Bearer foo"
platform-update-section 'Ls9gNpNon6DKW9A6' 'AmnQTNFidImWONTv' --body '{"active": true, "displayOrder": 28, "endDate": "1992-09-17T00:00:00Z", "ext": {"MGLdbYEknHPKrZ7T": {}, "iNBE0HRsE0GHDOFj": {}, "rfqJcyxT2a7fCFAU": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 75, "itemCount": 76, "rule": "SEQUENCE"}, "items": [{"id": "Hip0eONFDgUPShG8", "sku": "wwFKY9AMpcwJd4Sr"}, {"id": "igIxAhbFMZfxaznl", "sku": "DQbzTiFrQB1yUoni"}, {"id": "rH4URx3NkKQBYrlU", "sku": "aMiFEWUT8cAFO5zE"}], "localizations": {"w8GENEJYPKxxOw7x": {"description": "NQ98IEbc9YITN98j", "localExt": {"4P2AGeidXRRnIAJf": {}, "KVjOn6rtILNJVv2D": {}, "LLUyBt5hDs45siG3": {}}, "longDescription": "0Lv9iGa5mkZjnRXV", "title": "cg6AByNpBo2JYkwL"}, "dmR97u9MVUii4KpY": {"description": "cb1AUsESaBOTHnbX", "localExt": {"9tC9PQlFAGbMtEyb": {}, "fcAl0mnsAkRT2k0A": {}, "zdgIunRkTxsGdrpN": {}}, "longDescription": "ELM8Lfkut0wnT24w", "title": "h59RGSbBMh7jpszu"}, "Vk6iPdJ2boQqCCyJ": {"description": "fThvCJieqRSGN8Mm", "localExt": {"74HlSZzp4aEW4GkH": {}, "G5OIVuGv47XJpkMi": {}, "opQrVL3ZZTVxqa9X": {}}, "longDescription": "M2gY14iWk12Jffk8", "title": "dwKNPUOHNZxML3yo"}}, "name": "BM9qxd6PWz7sVnMx", "rotationType": "CUSTOM", "startDate": "1972-02-08T00:00:00Z", "viewId": "TGvZgN5hshSe5YmZ"}' --login_with_auth "Bearer foo"
platform-delete-section 'XKEQLkM6o3eGSP4H' 'tmr90TqGf0OyqJ9i' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "bJMmRgoxNwp1lGkY", "defaultRegion": "oq8HP1TM0tefVQPW", "description": "X1NPO5Wn7rNG8rGp", "supportedLanguages": ["7Fadvo5EzpX0Itts", "RezyY9GB5sf94ALB", "mvdncQkcZb8cWdVH"], "supportedRegions": ["9bww15zZsaYrJAe5", "Kd5QB96ndlO6iPGC", "9RhzMC7V8BEphnRX"], "title": "nSpCzyb8FkoxQbrP"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'ngi87K58pQswqKLu' --login_with_auth "Bearer foo"
platform-update-store 'tINusOsa92F6iwkJ' --body '{"defaultLanguage": "IYOLarmpWyvib9CD", "defaultRegion": "W21ANrlpuXD9H1u1", "description": "CvzWPcZwkj1l6bf2", "supportedLanguages": ["F9EXOBj7v8LHYivm", "D0ekycMKlwJTNL2U", "CWUtaAD7ZZx1iefA"], "supportedRegions": ["TWcDSqGYRMdz07xE", "J40epssgJJC3CX0h", "pB1ZGMMo5DSozCuF"], "title": "srBMtoOeLfMCYxSe"}' --login_with_auth "Bearer foo"
platform-delete-store 'eJOlxa395rghZwGh' --login_with_auth "Bearer foo"
platform-query-changes 'dZJkkGhYvXYMIyaE' --login_with_auth "Bearer foo"
platform-publish-all 'MEqOpwetb82b96rs' --login_with_auth "Bearer foo"
platform-publish-selected 'H73hRfDgl29GWKpI' --login_with_auth "Bearer foo"
platform-select-all-records 'tMt4GszRufkDFLYy' --login_with_auth "Bearer foo"
platform-get-statistic 'NBPlMrkse9SGcMuV' --login_with_auth "Bearer foo"
platform-unselect-all-records '5phhU315LUC6HSMQ' --login_with_auth "Bearer foo"
platform-select-record '32UznXNd6ve29lqq' 'tcLJW9eTJvKNDFrx' --login_with_auth "Bearer foo"
platform-unselect-record '6LabyDnqXjXKPIcx' 'h0x7T6RQGnnW4ugG' --login_with_auth "Bearer foo"
platform-clone-store 'X6mKBbgTD9xL07Zz' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'zIs3Jke34ZAUuLP8' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic '97ooMLnemwKAvgDX' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'NrFEE4Jf4hQpsLOc' --body '{"orderNo": "LtZw0efmEVcW7mxb"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'S5UOoICxQMit8555' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'Niy4NNFpRE5pS85y' --body '{"count": 94, "orderNo": "FAQZbfbmVTEbiRq5"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'Juikmpat75rVbN9Z' --body '{"achievements": [{"id": "BtzJ33tCwv8H1f45", "value": 64}, {"id": "ZWXvqNCHvNpeMjMz", "value": 14}, {"id": "jESLLMPKDXLki6Oz", "value": 2}], "steamUserId": "Bygt8Q0RjSf1srB7"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'hGwGbUmQmJHNffZE' 'Ns9X0hFMdzryvhc1' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'YjHmmulSBIElc2Cd' --body '{"achievements": [{"id": "RvBb0aGnMt625bWH", "percentComplete": 2}, {"id": "PLFAtcWhjAP57QbW", "percentComplete": 44}, {"id": "HlzXNHEPpzlMlx7b", "percentComplete": 89}], "serviceConfigId": "H2THLwZGikW7TFA9", "titleId": "gE6SrYKq6lcVOhPJ", "xboxUserId": "IcEHbiKHW7flVolA"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'WEMmQSPDTRqjlvwn' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'nCA5tfK5ushaKTPV' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'jyOUpR3uUdgNlyU4' --login_with_auth "Bearer foo"
platform-anonymize-integration 'IJnqtrjCOsE8Vjvz' --login_with_auth "Bearer foo"
platform-anonymize-order 'hJwNX4bhqCjlwrms' --login_with_auth "Bearer foo"
platform-anonymize-payment 'SRV86iic1FIMyF7C' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'cNu2DYn6E9Gk51kO' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'TJZluTekDMCGUJvE' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'RxNg8djSb4Vt2vKQ' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform '5vlCdI519Pf2iogw' 'PSN' --login_with_auth "Bearer foo"
platform-get-user-dlc 'hPB0FKMa0YeyNBQW' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'UHDBnBeePkqg6Zt1' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'Lr5BlO8K6LH4dSaa' --body '[{"endDate": "1991-07-19T00:00:00Z", "grantedCode": "YHug51ZTogG0N7Hv", "itemId": "nuq1kJ1kpHcQtnIc", "itemNamespace": "9z70LFQMI0oZuEjY", "language": "zoI_BbCY-957", "quantity": 40, "region": "Y7Xd0OoENg2Lw7ue", "source": "OTHER", "startDate": "1986-04-12T00:00:00Z", "storeId": "FaEUkPUBnB0ZEJH3"}, {"endDate": "1973-08-01T00:00:00Z", "grantedCode": "bM71Tg922xiBgHSk", "itemId": "a0Pz7I1WkIa0oZ1n", "itemNamespace": "XpW1l70pcZgIn4lP", "language": "II-abbG-YL", "quantity": 99, "region": "5NmnSHhxNmCe4txY", "source": "REWARD", "startDate": "1980-12-05T00:00:00Z", "storeId": "VEiaereFCPJU2wEz"}, {"endDate": "1994-02-12T00:00:00Z", "grantedCode": "UTmZ8JSMeNmRocp4", "itemId": "00RZe8Bzx9aGEI22", "itemNamespace": "BTCZs97TJI8GPrM2", "language": "gJ", "quantity": 9, "region": "mRoFNxv10ckMQVjK", "source": "IAP", "startDate": "1993-01-06T00:00:00Z", "storeId": "j8DlP6OGbn8vmfMY"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'GLt1AjKhh3JMX7xS' 'rz1EH6X2SM3xzsNr' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'JzWBcdFlo7oAsOlf' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'QM35bSkFrvGciNHb' '7OY5YIpOLJW52uz3' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'c8pz63M0g4xXT5Ts' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku '4e0uR47OzUGHeBKt' 'pvyRNgjZkdDppvEJ' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'iUiDGXgh8BKcLqtR' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'Z93LuR8OEyICvwgw' '["BFehwtdJLdn3R2wo", "8beVQvgeP9qOHaLw", "YnXxrz7sLmP70LxN"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id '0f3JA27Qz5SjzQfO' 'LYu9O46OOzz9p57q' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'SpHerzO87cg7TqtM' 'iQgi7Aj28qCRbwwZ' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'c4ZS1NMkrnHs1Iyh' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'wqk140MolIrnlkRV' 'bcX435TDYpkk2Gza' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements '6DrSycophHw3EoEE' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'ClTO9SDKnMlnKW9j' 'iNMu9QVrMeD4bD8g' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'ISE34yIAZQeigiA3' 'wBrmBYIlZeheP72A' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'B8EO3YrlyrWowUpU' 'DVLlTtuJJsHZVsG6' --body '{"endDate": "1975-07-26T00:00:00Z", "nullFieldList": ["A4kZURmoGgxVRMPf", "8g1rbhfIMStMnSqr", "KWYOuITlYS2RYaD9"], "startDate": "1995-01-18T00:00:00Z", "status": "ACTIVE", "useCount": 74}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'FU5GKmcEKp8AQwqg' 'Js6O0Qj0ccMkdz6z' --body '{"options": ["Pz3BVHAqp4O9XSja", "p24esyjh6Wc3migf", "2n6iQyr5cb5YL6fw"], "requestId": "BiaVPmmn0T5uzlmi", "useCount": 42}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'NY26xrkPPdg3pXjm' 'tpNfCrIj9ntYo3du' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'pUHNu8abrVVOKxr9' 'Pa315FKDjG2ApSV9' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories '4Jy6yCSXBqJqjAbV' 'wSaoj1ugjr8mPkr3' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'tZ506ERSVy5M3rrk' 'xu0U9h9gCNVZxHGx' --login_with_auth "Bearer foo"
platform-revoke-use-count 'hZqNXJ6JXSh0Z3SW' 'ISs1dYrJKmx1BT6i' --body '{"reason": "LFQejNZJNF2hm0Tq", "useCount": 57}' --login_with_auth "Bearer foo"
platform-sell-user-entitlement 'G67g4W1eAmDxP23q' 'stMuikKc6VNU8570' --body '{"requestId": "siWm3V9sirE0JOQx", "useCount": 99}' --login_with_auth "Bearer foo"
platform-fulfill-item 'KhP2jWnRTglw0gdW' --body '{"duration": 29, "endDate": "1986-07-27T00:00:00Z", "itemId": "4esuiDrquccz4J6f", "itemSku": "FQezJ5E3iYHIknvP", "language": "cJkjRevVYfiExpAg", "order": {"currency": {"currencyCode": "oK9YDq1x3dkbJFDE", "currencySymbol": "BEOOvJ5BKeipIlds", "currencyType": "REAL", "decimals": 85, "namespace": "B4hOxb88WgKSLIpn"}, "ext": {"eDQCfwucHRL3o2Ns": {}, "trL6TsJeRcE7GuwK": {}, "n63KIDTkUCqbbHGJ": {}}, "free": true}, "orderNo": "2bh14LroFTnAuujP", "origin": "GooglePlay", "quantity": 90, "region": "P9N0vdVB5a2XkS3X", "source": "DLC", "startDate": "1973-12-03T00:00:00Z", "storeId": "MuzZh4AhZRe2hgU5"}' --login_with_auth "Bearer foo"
platform-redeem-code '6xtyJtnbTDXu7Fbl' --body '{"code": "eSP5PcdOuq0m0rva", "language": "Fs_XRPK", "region": "LRjhcaJ56nGlYZ2t"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'od2BGBXjNyRCtPOr' --body '{"origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "FU3QZy3gdDms3kb1", "namespace": "htW0UGJpwQZlXuzu"}, "item": {"itemId": "3m9u67JjCDwg186h", "itemSku": "GWKfO9MnoT3t99Hm", "itemType": "cxzjDhTrcBKtU956"}, "quantity": 16, "type": "CURRENCY"}, {"currency": {"currencyCode": "g8oukDVdweG0sFHx", "namespace": "THa2k60SzCqUgq1g"}, "item": {"itemId": "LbcIMevTmC631p7q", "itemSku": "794bu49lINFTtERA", "itemType": "XT2h3hcQ2wV3ZbBT"}, "quantity": 27, "type": "ITEM"}, {"currency": {"currencyCode": "QnVUhA5WnzVZdj8t", "namespace": "syzC4QaLXp3o4TDr"}, "item": {"itemId": "aEEaDNJbVd20FVHe", "itemSku": "vCjthJUb7jKuMrFa", "itemType": "oLulzp3sZxImVK5y"}, "quantity": 14, "type": "CURRENCY"}], "source": "GIFT"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'M8LaMW0ByjsRUrAH' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'NRkIcC4wNFzsbrtY' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'vLh56AWXoMiowdWS' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 's9DQ0VU1HED9CGo9' --body '{"itemIdentityType": "ITEM_ID", "language": "ve-KvYJ-368", "productId": "UrXr7MXxCvyy7cax", "region": "z4MQrODLNlxiEjQB", "type": "TWITCH"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'NrEwfWo2MwulLg4b' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'sO4YHEYLjTSNDf3z' --body '{"currencyCode": "azm6p5Y1tkG9WwU4", "currencyNamespace": "Ty6Ch5QYyFjuBquE", "discountedPrice": 43, "ext": {"xssm4hxczskbSUbO": {}, "Z9WNl3apJmNAbl1g": {}, "5ZmTTGYRbP4QVey9": {}}, "itemId": "pEz1TV5cUtPBsw01", "language": "i5Mf7WvbNSeeDNfU", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 92, "quantity": 22, "region": "LlwHv3JgteOLyKp8", "returnUrl": "a1VqxXnRhDd9TGkO", "sandbox": false, "sectionId": "aIYqftw1SrM2nhSE"}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'anfUYrMU6A43UKGp' 'vC1cr5T1PSXhduTW' --login_with_auth "Bearer foo"
platform-get-user-order 'chzXDv3TAtBjP4HS' 'uiYCbG0UyYUJmNL8' --login_with_auth "Bearer foo"
platform-update-user-order-status 'p6AbdtU0CDrlQpKB' '8qoel2QK3aSOYdmM' --body '{"status": "INIT", "statusReason": "nONpJ849chqeiUGQ"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'MwNwDlYSli3p8YaA' 'del3hHMSLAiscGRW' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'zkCl1ZKuPxjDUGRG' 'cCEPjbUy7F82Adu9' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'BYRHrVTehrqgvEtE' 's2LpE0qfbvdU8hlD' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'oC9FnxqBlPBYJ7X6' 'uVy7FWTSfMi2CPVG' --body '{"additionalData": {"cardSummary": "xjcdpdCqVeePMSqb"}, "authorisedTime": "1997-07-19T00:00:00Z", "chargebackReversedTime": "1992-05-13T00:00:00Z", "chargebackTime": "1983-10-17T00:00:00Z", "chargedTime": "1980-06-27T00:00:00Z", "createdTime": "1994-12-09T00:00:00Z", "currency": {"currencyCode": "VPaZWolXypwucUqq", "currencySymbol": "qff2iWi4yP3uqNci", "currencyType": "REAL", "decimals": 95, "namespace": "6YcDA8Z3g62oGYwk"}, "customParameters": {"rjLI4EHJEEWgki9f": {}, "bdvUMDZeO4U55wdC": {}, "pVpnENiTc9NESV22": {}}, "extOrderNo": "eRBElD4K2Cy1tJcP", "extTxId": "AEkCeV29QsQk100e", "extUserId": "u5UcxuXXpt0YSPX0", "issuedAt": "1998-06-13T00:00:00Z", "metadata": {"mOYgGhHMz9dddLWJ": "WDuSYtCaIv4Lp91w", "YUJPbvzn8TYoMDAa": "UXSuBQdvdhJoT0WK", "5ngNUxDKfZYofPGU": "bSaA00nKxQjYU6Kl"}, "namespace": "avIiLxU2I1GyJS48", "nonceStr": "Hxu8Ju4XSAnlXRYB", "paymentMethod": "9BgSZBvkehRn83B0", "paymentMethodFee": 28, "paymentOrderNo": "KQn77hiP1lzkzjYD", "paymentProvider": "WALLET", "paymentProviderFee": 6, "paymentStationUrl": "6mLBordrJkD6vy60", "price": 43, "refundedTime": "1993-11-06T00:00:00Z", "salesTax": 54, "sandbox": true, "sku": "EZv5zyUUyNJkvA5x", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "khlqMnE9Wj90EQzO", "subscriptionId": "idrWnLrXqImgDf3G", "subtotalPrice": 1, "targetNamespace": "YfIgLZ4YIzElrLZO", "targetUserId": "BLHCKmLBaIwlokbA", "tax": 65, "totalPrice": 100, "totalTax": 7, "txEndTime": "1980-12-27T00:00:00Z", "type": "XG5NkKCySLA8cKCs", "userId": "0dFYRSa2OULZ0iOZ", "vat": 73}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'z6OhmHOpCdr3WzDm' '3hJdd6uaO9TiTPnI' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'h2iaIBpYC4txul6V' --body '{"currencyCode": "KYlNYYlHPwKDpJmk", "currencyNamespace": "eoAkp3Z4pgyJYwcl", "customParameters": {"b4gd4QgQut2hiPuD": {}, "dOPHcN9drwqytieX": {}, "pIZfr5XDq9dGLHjt": {}}, "description": "gE2bTXJxCCFqPNDq", "extOrderNo": "WrpkWnnova15WVuE", "extUserId": "5cYVP9tQSa27BnPy", "itemType": "EXTENSION", "language": "HjG-hmfm-Kz", "metadata": {"4DJUofJXK8RGS0zC": "YRVmbfzwUmsy0stU", "mKdXiiTObNdqkWa1": "3g3pgHx6uPf6jQZc", "YerH933X7iXEEM2K": "OusNEHcI95GGdJvu"}, "notifyUrl": "cDbs6UdccuM2ykRj", "omitNotification": false, "platform": "WnyAaUaQBKFedL2u", "price": 6, "recurringPaymentOrderNo": "GNHgfgwZwVMvshGm", "region": "sg6ZJYnkHDnHTlRu", "returnUrl": "gM7a2UZgeesipbP0", "sandbox": false, "sku": "SCcHADYpS861c0CJ", "subscriptionId": "7LzpFvOSF6xKA6yr", "title": "nvXY5dDwneac75C6"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'S2eHsH4Y84hL75Qb' 'oMHCtzEF9FSeg6WY' --body '{"description": "gtfuqJHrs4e3RnWR"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption '30MdBZezfwc3H0qS' --body '{"code": "bMq4GLj8aGsH0qE5", "orderNo": "p601ak59yFSfdZIv"}' --login_with_auth "Bearer foo"
platform-do-revocation '8oYWPUS4Zu0SbTt6' --body '{"meta": {"M2XizikCh6q0yq2W": {}, "AHtL7IWE3MFqvfDG": {}, "5jvMOaXrDlEX42U0": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Oculus", "currencyCode": "5H3qppoCiHMD4iBK", "namespace": "2O7qYtOHV5hnpjc5"}, "entitlement": {"entitlementId": "CNLnnEvo25aEtdjl"}, "item": {"itemIdentity": "s5oadseJg7y4Q9CU", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 18, "type": "ITEM"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "RaXD4HDmdvhMXxiK", "namespace": "R29LKIhNU43K8bih"}, "entitlement": {"entitlementId": "dw3prp0UHlWUxkBe"}, "item": {"itemIdentity": "fhxRtrqbv56oqwnC", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 4, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Oculus", "currencyCode": "d6mGG6SHcZbX2wNn", "namespace": "T6A9zosmDnXoncy7"}, "entitlement": {"entitlementId": "NZQ4PkAPXBCfkE1F"}, "item": {"itemIdentity": "b0y94eP7yh0zsKhR", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 69, "type": "ITEM"}], "source": "ORDER", "transactionId": "6LYXXMndxBPKmHVB"}' --login_with_auth "Bearer foo"
platform-register-xbl-sessions '7cNzHhvxc4xAPZ86' --body '{"gameSessionId": "WNnQOhusPn4466u8", "payload": {"agb5HPsBU0Eo6QJ9": {}, "vBRJ4UP09fabC01T": {}, "hm9f4AWpyiKVT3Ov": {}}, "scid": "Eujx5yjtQSCJaOHz", "sessionTemplateName": "pb623EciYoYOPVg6"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'DLEZ6DxpwBm2N8Pd' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'Q5mQaGXEbnmWR0H3' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'EkrHqaLNdfKszYZz' --body '{"grantDays": 82, "itemId": "9n1xTDFcmOm1sqdI", "language": "WU6ERylESgf5dXMr", "reason": "PoYSohfrLyXMSrC6", "region": "2xYtDwflNGfufW5c", "source": "Weg6eSCypsceITTk"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'JGGCVF6LrILDLviU' 'CzmDAaW5xz1c7ZuZ' --login_with_auth "Bearer foo"
platform-get-user-subscription 'XUCBYnkY0LEBSYBd' 'USiTOrhB8hVs29WO' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'KmZRTtgycLzXz6lU' 'MKi5mweMEZo2ZnL1' --login_with_auth "Bearer foo"
platform-cancel-subscription 'Zg2JfH4f73jAevOn' 'ES6YJLlb2AfUEEBb' --body '{"immediate": true, "reason": "K5PT404mFw4HJv5T"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription '2kIQOecfLsYKTmUn' 'KlrOsJmEwjGYN8VN' --body '{"grantDays": 85, "reason": "xTIZVSGQyTzhs9As"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'y4d629N4YnolVWA2' 'dWxBs056jkPCUuE1' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'pgdHvlQKiR7SDQUD' 'avOlKT5EIHNhJQq9' --body '{"additionalData": {"cardSummary": "4Re5IM1akNKz9Ilt"}, "authorisedTime": "1992-10-16T00:00:00Z", "chargebackReversedTime": "1995-03-21T00:00:00Z", "chargebackTime": "1980-06-14T00:00:00Z", "chargedTime": "1981-04-18T00:00:00Z", "createdTime": "1984-11-14T00:00:00Z", "currency": {"currencyCode": "2atB0QPQPEp5UtwU", "currencySymbol": "WGt6tooHP5kAww01", "currencyType": "VIRTUAL", "decimals": 74, "namespace": "alTddhAQ1pwqnybv"}, "customParameters": {"UIfuulmeegRwPPbn": {}, "7lttd21cS6IVE4fz": {}, "wG3BHaRcZ8NK4gkL": {}}, "extOrderNo": "mvEOaRcqTgF0xtQA", "extTxId": "XoDoFkmA3fgzcwdg", "extUserId": "JMjIyGfiNBQy41M1", "issuedAt": "1974-07-26T00:00:00Z", "metadata": {"15St4v8ry8IyqNVv": "0KVpXJTMx3Y8Um1i", "qehObg3OZ9j0HDtb": "qMFlgHKQIRtLfPng", "D83roOeqE7fcCAeE": "xeQX43LpmdMiZeyI"}, "namespace": "rA4QUKSJgECzvaWU", "nonceStr": "CA7wKru7ry3AQ2sE", "paymentMethod": "HvSxjWoM1rNJLM0O", "paymentMethodFee": 83, "paymentOrderNo": "6a8mEVCXHmFnrSL0", "paymentProvider": "CHECKOUT", "paymentProviderFee": 74, "paymentStationUrl": "dzjpKDfwl6XlCF6Y", "price": 49, "refundedTime": "1997-09-14T00:00:00Z", "salesTax": 79, "sandbox": true, "sku": "D8tJQwZvUVInos5R", "status": "REFUNDED", "statusReason": "quioT3QBt29AiRAS", "subscriptionId": "suFM4ahGw7XcF1Qw", "subtotalPrice": 52, "targetNamespace": "ibXg7RCe5BtKcwj6", "targetUserId": "PqqOgCimr3ZQNBBk", "tax": 36, "totalPrice": 2, "totalTax": 40, "txEndTime": "1981-11-26T00:00:00Z", "type": "9czsYr3cFeVw70xd", "userId": "NTuOdLKK0M2B2hbq", "vat": 72}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'Ozo4Plv1IlTpEhjT' 'FYdzsUNvQAn2LuMj' --body '{"count": 77, "orderNo": "C4qPqJrAdh1HIk7v"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'CEq7FQ2S5VeW9ddx' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'zLPV8wDjsnyPh5yN' 'bYXmlAOi1SC3I1Sj' --body '{"allowOverdraft": false, "amount": 6, "balanceOrigin": "System", "reason": "d97A0GP6djn2Ps3I"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'VT5hUZ3cnDq0ddZG' '0EpfGAqHKcSxUc2Y' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'gRpk2IFGIgIpscUp' 'VAciu2XPPUxzXHUv' --body '{"amount": 49, "expireAt": "1974-05-26T00:00:00Z", "origin": "Other", "reason": "Hd250nyihcUVGHQc", "source": "PURCHASE"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'FTLrByWOJhbocoGl' 'PzdfxcC3rpWhSpq0' --body '{"amount": 70, "walletPlatform": "Nintendo"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'wTfopqeZtHJnRgaG' --body '{"displayOrder": 12, "localizations": {"j5WcQ99M1yuXeqV3": {"description": "1LX2ehcMnM6QtjzQ", "localExt": {"jDlUMCGnxZwak7KH": {}, "nzGASmVzePIroz41": {}, "oQCuXeTRyJQrNLTc": {}}, "longDescription": "qLVTN5Qf4tjPGpu2", "title": "7yxb1of79zVTWIfg"}, "dNphqe9fS1m77MAg": {"description": "4KoZQPLhDSJx9jzx", "localExt": {"aRKph4kiIFgS4fLq": {}, "lrKGiS3XxjkyNfj3": {}, "XgTRTjI9oNBzgQ4C": {}}, "longDescription": "Rwg0sKVeSpMny0Gr", "title": "vKI5EVB9ZFzLNsjd"}, "CFtKY0KsxR0rCFky": {"description": "iQZfMnTbKdwNhiIP", "localExt": {"7dpJ8B8VwFQnVco2": {}, "oCn1KvJmbjapW9Ul": {}, "EqtzDd7SgxdxB5kv": {}}, "longDescription": "tM8ah9bPsksceGUE", "title": "X8ERZcKSYLo6y7yJ"}}, "name": "MowQ6LpHCvCYTgX9"}' --login_with_auth "Bearer foo"
platform-get-view 'JQwErzjtuP9pUUv7' --login_with_auth "Bearer foo"
platform-update-view 'qefNMFsZAIqak1zi' '0JSa5cRn31D8ubfd' --body '{"displayOrder": 59, "localizations": {"i7BycDPckeGJUgU8": {"description": "bD5mGFFmKTTUxG0m", "localExt": {"pmFxxDNXGlGJvHf5": {}, "58h1ltyhiSGhfqXh": {}, "xBJ7zLXioAGkWgSD": {}}, "longDescription": "dDQvpRfGe3z2rtjW", "title": "pJAlKHF0ebxhJ117"}, "6CeD4dWCp4wqlQJc": {"description": "ZroNQiefBnPluOIj", "localExt": {"ZyvlGDQGv6pNNowE": {}, "uVVZM28w4mnYvvlt": {}, "1es7A4PFduN4gx0U": {}}, "longDescription": "C6eWKCFGS97Si6Xy", "title": "LVPrkUxyZ1OH5Nn4"}, "nMT8QOyTuUSD9Imt": {"description": "aPAocOQcpBWSNrCj", "localExt": {"SNEAdojkCMmYyTGO": {}, "07foRZ6FujpIWo0q": {}, "Jtqp4Q6XgICLgMHc": {}}, "longDescription": "P1eE6sjWQllYsONp", "title": "p6QGW56CNiszHE69"}}, "name": "D1MMoaf6KlgRtwaM"}' --login_with_auth "Bearer foo"
platform-delete-view '2IoyY1wpIdjcAtTj' '1IMuuhxxlulfmya7' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 44, "expireAt": "1974-04-10T00:00:00Z", "origin": "IOS", "reason": "0a8Ri85PA9wNpmrK", "source": "GIFT"}, "currencyCode": "Y5heA2ewWnFcqHxX", "userIds": ["t9emdCLmzJbdkykV", "P3kRhtrBcBofWTGY", "x2ihgioL8VvEzHGT"]}, {"creditRequest": {"amount": 55, "expireAt": "1974-04-18T00:00:00Z", "origin": "Twitch", "reason": "mnRfUilcKA84d9pM", "source": "OTHER"}, "currencyCode": "39LhRx2Laa2RdtVb", "userIds": ["6VgA5yFIH3s9Uyea", "Fi8OE7BCK4FeVGrl", "5NpUG9zblWEiHaUj"]}, {"creditRequest": {"amount": 51, "expireAt": "1972-10-02T00:00:00Z", "origin": "Playstation", "reason": "b0sSlstb3slUe94N", "source": "PURCHASE"}, "currencyCode": "47468MXUq3uIffkI", "userIds": ["pPmrWVxNZUvkiU2j", "XSwsBBRopVl38d4N", "ZGtk6EmWxC75M88T"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "KhFYkA9aRNDe2IoP", "request": {"allowOverdraft": true, "amount": 93, "balanceOrigin": "GooglePlay", "reason": "QKcg0OTT9JA0ll1R"}, "userIds": ["XP6C0jXS8au2wcWY", "yj3JvHqXp4JR7xI5", "imBCiQwuyrI87uSy"]}, {"currencyCode": "9Z9tfGVsglnOxOXB", "request": {"allowOverdraft": false, "amount": 83, "balanceOrigin": "GooglePlay", "reason": "yqBfgw58Hx0XYL0f"}, "userIds": ["fyDbtIXICLkK8Zvb", "WqDU8N3DjVUt0n0j", "JOPYpnPqGlPnhBDO"]}, {"currencyCode": "nTg3znlg8nmzQx1R", "request": {"allowOverdraft": true, "amount": 32, "balanceOrigin": "Playstation", "reason": "hcRlv16Wwe8YK3lZ"}, "userIds": ["FslECI9QzuQcsjFe", "eMsezFZsTBHkgcJ0", "hD6uTDYnqyNgN7Go"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'DcEt23pci6xEljer' '6aGJx5OFp3jKEx4a' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["SGdwTPX4ig3NVFFk", "P7O3F4vsohRWDyGY", "IVFDbTvRYfpJ4wM9"], "apiKey": "WZfOOxAzmsbhi5QJ", "authoriseAsCapture": true, "blockedPaymentMethods": ["TII70MIcBMJ04508", "jKedx0CVRpd7SwZw", "2UkjDzJ4NuMMgI13"], "clientKey": "nplXaUQV5QEvKElL", "dropInSettings": "fbB7gwwAR1xFrnyi", "liveEndpointUrlPrefix": "rw3iJt5iA3JS2xea", "merchantAccount": "J08JrSHPqdhKHn6Z", "notificationHmacKey": "jZMdr1C2TIQzRJY7", "notificationPassword": "UfYSrdN0JVz4U43E", "notificationUsername": "cV1FRyeeqehMNeRY", "returnUrl": "KeMbL0G4v5D6ylZg", "settings": "uO918X7rLoexHBMB"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "MMAYokSWFwajRGUy", "privateKey": "klfLVY6g3PO4hKAe", "publicKey": "F4GUV5m96qcCJsVO", "returnUrl": "Wtu5RPsqd66ImBEu"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "hnaxZVf6MD9r1y5I", "secretKey": "hr531Kajxq7lzuVR"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "VEvhKIbrq1xsGpdo", "clientSecret": "bYun8hcO55hVjfWy", "returnUrl": "K02w5QytAmkanukA", "webHookId": "zAMaRvIUhUwguGgb"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["LLN3O7CEYjxqElP5", "lA2FJ0iGLRTXGsC5", "mxxse4eeuMgEctVE"], "publishableKey": "ux2MSuwsEHlwdeJy", "secretKey": "hsHS6YqPudWviQsU", "webhookSecret": "LL1txfX9tqFSkGXo"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "IcFN5JL9M53Mg0Mz", "key": "WS9usxxnMhjv66Dy", "mchid": "ED4prRVibTATxd7M", "returnUrl": "zjv1gSj8kcNhoqcR"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "ZRNATojM7daV0VwR", "flowCompletionUrl": "3yNKDtMqMrAGpdyF", "merchantId": 99, "projectId": 57, "projectSecretKey": "DHn3ePBxQNz2IUEH"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'Mzl5jhwVDsuzwJ4v' --login_with_auth "Bearer foo"
platform-update-adyen-config '50eoaIBrTh0EKkJi' --body '{"allowedPaymentMethods": ["oUpvGnkcHgCfaWzP", "UvCnfqsPGgJZyRwi", "gaMu07Zek8WObpf0"], "apiKey": "FHYfViEj70KYKIfF", "authoriseAsCapture": true, "blockedPaymentMethods": ["M4fIfcHBWZM50aHb", "PXRns3qwYL6LwGlZ", "GF7XQPLAcIL7FvAM"], "clientKey": "WqhyyNZH1CducB5y", "dropInSettings": "5iMdeBG7REG4meKE", "liveEndpointUrlPrefix": "abfVXBJPIZqZC5d6", "merchantAccount": "JuFdcfiNf0DOHKwx", "notificationHmacKey": "DF5GJhCjVHiCn2hT", "notificationPassword": "efT8gPFJ4WndMpQh", "notificationUsername": "cLK0WTZbtmQkwC8a", "returnUrl": "zx3IRWme3C6p2r4D", "settings": "3NQdjrjkX3AMgK3J"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'gZufzssA284mG7uA' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'ojLYBsx8oqMzbE0l' --body '{"appId": "jQaBtb47V691j0FZ", "privateKey": "p2vjOXptxzx6kkaZ", "publicKey": "Ypl52sQR9Znp5d1e", "returnUrl": "SwrG2GBBEWrDbQ1Z"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'zhDuLHq9LTBstguO' --login_with_auth "Bearer foo"
platform-update-checkout-config 'dN0O7l3GbKPHdDTQ' --body '{"publicKey": "DEEE2mTsn1NwJ71s", "secretKey": "zsNmnqZSWdEyOVYr"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'TdDq7IqbTVv8BLsq' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'QW8HSrEm5Y7jI232' --body '{"clientID": "SjktijiNzTUe8Kdi", "clientSecret": "zXmrmK0sCUsqxKoc", "returnUrl": "HomtjoU1kUqRedwI", "webHookId": "u1TSRr6r8mzfMedp"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'cKhvHPlvYanGqEkn' --login_with_auth "Bearer foo"
platform-update-stripe-config '9OEVwLWGT4MXhmzv' --body '{"allowedPaymentMethodTypes": ["RQb7c0vmjWq9fQqz", "ulLGfQMqSLQDlRFY", "MVfiAMa6Pco7Mfvi"], "publishableKey": "kslpyL9BYLVVznF6", "secretKey": "hMYfksp8VQhYSFeB", "webhookSecret": "Op0ilGQFwHUtZugb"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'lT3aIDKn9qJXncm5' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'igpAewbmnWk0E7Ya' --body '{"appId": "PblcWEyNgvs5LEZr", "key": "QXzSQRWRs9EGnRPg", "mchid": "YlJElgJ8kx1WEeDb", "returnUrl": "ql13FtQMu41rnOzb"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'sFBqg6dziWvdNcwf' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'UBMdNuTaiLxFMXRp' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'DP9xutntU8xHw4yY' --body '{"apiKey": "JOCViHwunQwpC2eC", "flowCompletionUrl": "FUAHZaYSvsWiNJtq", "merchantId": 97, "projectId": 22, "projectSecretKey": "xKOrfVfBRIfkStOq"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'dXqhDMQ6tBLljC7g' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'cT3M1DArk4L80aXF' --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "ADYEN", "namespace": "4CNtX2lnqi7cHTSd", "region": "GoLZbC3UJruU4uIX", "sandboxTaxJarApiToken": "BZsEYogFWiH9z4E8", "specials": ["WXPAY", "PAYPAL", "ADYEN"], "taxJarApiToken": "KgWxn9YL16HQdtAn", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'XGgxNg33ZIUrIkfm' --body '{"aggregate": "ADYEN", "namespace": "DCowR3MeCNL1oNrF", "region": "3SmgudQusJLsPlW7", "sandboxTaxJarApiToken": "ZyORFkN9EbKbTbrD", "specials": ["WXPAY", "STRIPE", "ALIPAY"], "taxJarApiToken": "7MdKu9Xwn5GHJDGa", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'jJf40LjUdORELVXU' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "FQyVlt9jmxmxpfp4", "taxJarApiToken": "1k1uDg59PhdUXSha", "taxJarEnabled": false, "taxJarProductCodesMapping": {"xEJcKHE764EwhQfx": "FKIOGT1WKSmLoA0I", "LaESC1GJXsoBwqh0": "TQXa2j7v3zQJoQLT", "AlW75icIKUpXazsF": "rmaGNoi3RPTgWotL"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'Nz0u8ySxA0yrjz4q' '7e0EJnADXC2y0DY1' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'E1SMK9oA4vK56dsY' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'I5SKV5pDANyJ184m' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'iBhdVJt81fmLSyGu' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'u5rbJVIwRMtwApGb' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'XnR3yC6f2MHGGedk' --login_with_auth "Bearer foo"
platform-public-bulk-get-items '0KzXRclOXdPYZQxB' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["nttu4yW5etl4Xk8H", "d1lRtoPMvsu9oswE", "PTvzwwGnpbx8MCIj"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'KzylqW8auyseP9wE' 'EyYAnHPp4XzVL5Mc' --login_with_auth "Bearer foo"
platform-public-get-app 'glFCrjxqqxAYqXG2' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'V3baMkZ9JCqBIkUI' --login_with_auth "Bearer foo"
platform-public-get-item 'D0EE9InZNLwwAhW2' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "b5OHKtUv4lTkQNjx", "paymentProvider": "ALIPAY", "returnUrl": "lfI0mqZctohLheRa", "ui": "QkfMLFW9B7jHZro4", "zipCode": "hhwnANAGp8zGqNGr"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'cQyoA1TWPcy83iXf' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'YXNdMkdg9TMwxNcQ' --login_with_auth "Bearer foo"
platform-pay '6CkVi8fqVPRqNbF5' --body '{"token": "yLnYSa8xFLvcYexM"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'MMiDFh5RbW021cHN' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'CHECKOUT' 'bzVuJZH3k54cExxW' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'KtdGTW4FILotv5yc' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'Ta0i6ifYP1zfgjsy' '3VRjX4qA4g9OGoWw' 'STRIPE' 'gumV4wAsd4ifGd0b' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'kWrlhtfTywRW4fmg' 'PAYPAL' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'btk3mAO4EtB0hn2x' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 '1oTOX5gBQlVDx9ne' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'FHWhDRJtyYEt7ygZ' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'leAoUuVKneoO10yt' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'PdJ8SY3qoogOxoPY' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "vdIBJYyGURjEjnsl", "language": "wRo", "region": "gVT1ewVxvgAocOqs"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'd5v5n7eXCo9gZWdx' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'fIdW8fNAM5YdHivK' --body '{"epicGamesJwtToken": "2Q0WwolQy037hJMO"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'Ev5W0v25yAObZIbr' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'A8XAKKWMDebehSjp' --body '{"serviceLabel": 39}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'Pf5JCSDyYy4e5qoT' --body '{"serviceLabels": [48, 65, 79]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'SoZbQUnUxS6m68WL' --body '{"appId": "3HDL4yx5I0euBscc", "steamId": "HPA2v9XP9enfEX7l"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'loLgIYqxFfSNJlHC' --body '{"xstsToken": "jxLNnYUlGQsFpy9Z"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'VlLIFwLgT78nootf' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'Us9559ilm3cauhrw' '9Yn2z5cnbm7z2Aa2' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type '4yBTw3wfNGyWf3Vu' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'NgjDMcJxfMfYFlt3' 'JvDgMiyBGygWFTAY' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku '3Th5mOwPCPKVPlOG' 'fFBlu2ZP0IkiYXGk' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement '6BoBmSLi0R7zDFMo' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'NTQmlS8lMlY8Ujpr' 'hCxhzW6ZM7LkTVrt' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'VJZVhxCVdjPutJ8d' 'kAVOJ5imghdfVhjn' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'jd66A1SQmWGSQLAV' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'PAJ7zX5lB80k2smd' 'kBS2MaIP7PjngEFg' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'gq91cpgvoDBgYfLB' 'dGNAZEvbvxqa0K7V' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'UbjUnzirnEsxSE4v' 'BzG7VK8sWEshmZf5' --body '{"options": ["fEdvjbyJPQ1qdRcJ", "jsme1OukIfIZVH8q", "8svV5hMOSfpyJkJl"], "requestId": "mJmTkFvB7wkY6nuU", "useCount": 63}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement 'KmBXLi6GpnqAeMvg' '3w0FQ1520WM3TxWX' --body '{"requestId": "SdTiKdva2UREoBSF", "useCount": 40}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'GA3itKaF9z3WWuv3' --body '{"code": "j8T9g1f6P3D3rVcC", "language": "vU", "region": "pH7Oc44yjRdfqZgv"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item '34GqqjelcN0GJmPw' --body '{"excludeOldTransactions": true, "language": "nX_WJNN_493", "productId": "Wiyw17ogzmbj4SLY", "receiptData": "DrZJvDLGvn6qtroZ", "region": "cp16HKXX1ft5nBA9", "transactionId": "xNIJVuMz04evSdE2"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'FMcKd7c94rEmIYuA' --body '{"epicGamesJwtToken": "T5OAcUwYHGmG5rND"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'BF1oU37vjfyX5YLa' --body '{"autoAck": true, "language": "XCMT", "orderId": "XtrI7SFBEgkwHifM", "packageName": "HYI581HbF7fMX9lD", "productId": "XYxGRJM92eX42WW2", "purchaseTime": 99, "purchaseToken": "oDwzrKPOZZnV3zR7", "region": "YxSu6addocg10Hy9"}' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'jx7gBHTOHHArjld0' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'LnREsrrB2pJ7V8BS' --body '{"currencyCode": "rucjO3zvSM5KeVNH", "price": 0.7463728976308169, "productId": "9GcOivIfcCJt4U8V", "serviceLabel": 91}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'R2kNzh60RQNaTEhM' --body '{"currencyCode": "XMepgzY9jLiAdMiQ", "price": 0.966161243125063, "productId": "eDMkeBRMur18nCxi", "serviceLabels": [65, 98, 2]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory '6EhM3dKvIG9MR0hT' --body '{"appId": "INvq1VR9SJUfQEX9", "currencyCode": "96Mh1sQ3Dw3uyjgQ", "language": "FbTv", "price": 0.15017393901818799, "productId": "rr1OL606QpqCgxt0", "region": "NgDSj1T6EdeYFmrL", "steamId": "T0HbvS4kSSt3CyDg"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 'f6eFAiqSkHi0BR2E' --body '{"gameId": "lF6z6eJKuOW61akR", "language": "eIZZ-ddsN_Ir", "region": "vAL3n478mhb2I2yB"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'JeCJghTrk68FWFzu' --body '{"currencyCode": "LBdlrKjUbgZQfw6Z", "price": 0.39015353921813245, "productId": "s3mN8fIcC9Ckharf", "xstsToken": "qaoMsGyv1RuSNdyc"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'DssUeHiVDXzSJ8kb' --login_with_auth "Bearer foo"
platform-public-create-user-order 'FAyidbnXdMSwmkBk' --body '{"currencyCode": "KC1h6h45u0wuh9pY", "discountedPrice": 48, "ext": {"011jSmHFTtfM2mGU": {}, "Upq3ix7Am7W1fwJn": {}, "V94BrMSP31wAkVH7": {}}, "itemId": "5UcmNXK5RqcIo9lp", "language": "aPo-Wifr", "price": 14, "quantity": 46, "region": "rE9f9COFrOr6wJDB", "returnUrl": "wIDsJHNg6TvNGjwI", "sectionId": "4TbTwBufUorJoudu"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'hCEJ5XiKDIE9Yugc' 'upLxVBcRkfhRuqkO' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'THSia7oFd1fEmDuy' 'AsQGzwJR5poI718R' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'Qnj4imu6XFfRcWDX' 'hq1YmGeygr2S4Yw8' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'NmPaBeryzX2hOPVV' 'FqVqxjq1iG3TySOh' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts '8SI75oXbyq8FBbur' --login_with_auth "Bearer foo"
platform-public-delete-payment-account '80QwnlgAVfqz6gQJ' 'card' 's0nT89A88GDOUClG' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'yzYgnYTdim6PkRoq' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions '5TO65KWh8ztRJkXx' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'UAj3jzZvEaY103YU' --body '{"currencyCode": "IMuSjDHz0zPWMZQN", "itemId": "NP2JqQqhISTBT1Go", "language": "qW_QZ", "region": "l6xo0D4JRbNqO6Iu", "returnUrl": "P2PY5hhX6uNah9Jo", "source": "HPj7jFWxSv1lYylY"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'AiZ8c7Zd7EUoezOL' 'w8C1c5bBB3XZ7Col' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'KwlsNvtFuunQsvdX' 'GlD40xxIyVwYjn6d' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'lC9Kfh9gHuloyce0' 'cLJu4ljPWlCWTuGO' --login_with_auth "Bearer foo"
platform-public-cancel-subscription '8MnfOQu3wdT4Aodp' '95o1RkX7iW7VpCng' --body '{"immediate": true, "reason": "Av5DAG8dPdkKgQqj"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'yzUZR2rFIAuALNhN' 'CyscsMBRLsWadk2O' --login_with_auth "Bearer foo"
platform-public-list-views 'Q421q7Nb1vrKthVv' --login_with_auth "Bearer foo"
platform-public-get-wallet 'U5on065ApCkVN3Qc' 'huQ6pntxB648ss7r' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'BnvQHAM8gSdIybKU' 'ByHBzfvgtRTPPzwJ' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'mKaLCx3gcidEALWe' --body '{"itemIds": ["6RG5wWznu5AjwR1Z", "4fU7ICcaQtuuKUw3", "dUwWHhQW3I1y9tjR"]}' --login_with_auth "Bearer foo"
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
echo "1..415"

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
    --body '{"context": {"item": {"appId": "LVOXBMa0JiIe1AY0", "appType": "GAME", "baseAppId": "mxDfAxNqCUtizYM9", "boothName": "7ebZcYqwfIHPWMkO", "boundItemIds": ["mrT5HL16jMwECnmw", "BCHzJ2v9K8c1zOlZ", "Jv4rpqtzDaz0WUJl"], "categoryPath": "g30pagfP0FfOMBOp", "clazz": "eQT4zYIbU4i9mLyX", "createdAt": "1995-05-23T00:00:00Z", "description": "Alt08rrnG8y2ScXk", "displayOrder": 45, "entitlementType": "CONSUMABLE", "ext": {"TkJT1VkChD3n0c1r": {}, "yAkRvdPR8gx2rX5d": {}, "ck8NFKPgT6LMehg0": {}}, "features": ["VdtMSews1TrU4FhA", "47axU5ktNywRIvO2", "Sgz30hejqdktHIO1"], "fresh": false, "images": [{"as": "M2fWXGk7JObSHksR", "caption": "kabpmvRsc7ZYvXCT", "height": 26, "imageUrl": "JK4dP1aZFiSkmhwV", "smallImageUrl": "VMGkXNwMYwFyljy5", "width": 2}, {"as": "LjmxhBS6YypRW7fN", "caption": "ntaIEtDI6MbhxkQd", "height": 8, "imageUrl": "TbtjK9RsyoqT3adB", "smallImageUrl": "48Jxp2zaItg9jTNZ", "width": 45}, {"as": "85q6fuGfo5wSDHny", "caption": "abk493I3pvHKDaWh", "height": 94, "imageUrl": "iaBrFrXtGMjujfHZ", "smallImageUrl": "B1gMI1B8DXb37Dff", "width": 94}], "itemId": "ldefonHJZAiX4abm", "itemIds": ["qqi90KTWwZk0HGeJ", "NaBjVdMB5kMzKycY", "rhr4FnNzdT4pWwIV"], "itemQty": {"Xp9avUr6IydpXW0M": 83, "ocvYfr0Rnl02R1IV": 81, "WO2bmOikTBJHTEm5": 84}, "itemType": "MEDIA", "language": "Seyod5L6OooYoQn9", "listable": false, "localExt": {"my7j2BrdCAm3slCw": {}, "aBqHpE55sjxBGijw": {}, "0dQtZNonMrPkzUe9": {}}, "longDescription": "SglAJGyZS0I8FevJ", "lootBoxConfig": {"rewardCount": 16, "rewards": [{"lootBoxItems": [{"count": 51, "duration": 94, "endDate": "1987-11-17T00:00:00Z", "itemId": "HUBp56Q4WETxtGMs", "itemSku": "5tPKPuK0K4PiMDTR", "itemType": "7LxihuOn57io0d9d"}, {"count": 67, "duration": 20, "endDate": "1999-01-03T00:00:00Z", "itemId": "yzaNbGeASX83SLiI", "itemSku": "bAP2qyUnHnfrEdDf", "itemType": "Y4TTxu8goZgsX4Rw"}, {"count": 10, "duration": 49, "endDate": "1990-05-12T00:00:00Z", "itemId": "4qnUdcQqZ9F1uivP", "itemSku": "ob0YZEuXQACDDQry", "itemType": "Nf9VGxbOeJe4n9eU"}], "name": "lBQZ2UGePWXbAyGi", "odds": 0.7996845417224925, "type": "PROBABILITY_GROUP", "weight": 28}, {"lootBoxItems": [{"count": 96, "duration": 67, "endDate": "1980-09-30T00:00:00Z", "itemId": "ydYmGzvx9bSqqyAP", "itemSku": "ha5b6PQTPTytHeeX", "itemType": "o7gOFVLZCBWuVIRO"}, {"count": 20, "duration": 43, "endDate": "1989-05-09T00:00:00Z", "itemId": "xqZcLuhwNDvValv3", "itemSku": "bkoMXNzl1ywEPiun", "itemType": "ixlEAHZzHs8x5oPS"}, {"count": 21, "duration": 69, "endDate": "1997-01-12T00:00:00Z", "itemId": "FIV2feXnTRlzAJy9", "itemSku": "oFOHB2KEsIdtozVl", "itemType": "tBhoXE4wgcYT5Cdj"}], "name": "aJuUzFIeqaVr1CE1", "odds": 0.09706527170904344, "type": "REWARD", "weight": 18}, {"lootBoxItems": [{"count": 85, "duration": 5, "endDate": "1972-04-20T00:00:00Z", "itemId": "uzC77J4irvZ9tktW", "itemSku": "LtDdlmVGK6iolEw6", "itemType": "IIpDc9X5ijmtDGvd"}, {"count": 68, "duration": 63, "endDate": "1993-01-22T00:00:00Z", "itemId": "dY0eTkBWA44Qqsi5", "itemSku": "yOjvl5sRN2ENn1RL", "itemType": "i5iMPnbg7o1zYpqU"}, {"count": 38, "duration": 2, "endDate": "1976-01-25T00:00:00Z", "itemId": "iPyXZGYIW5ZDtWbd", "itemSku": "kzPP47RcUIi2CoNj", "itemType": "4EG2emxKQk8cBrt5"}], "name": "E8k8rzDZ08j6ICP7", "odds": 0.9283410932023711, "type": "PROBABILITY_GROUP", "weight": 13}], "rollFunction": "CUSTOM"}, "maxCount": 80, "maxCountPerUser": 58, "name": "YDChFi3zLvfQWC85", "namespace": "MxWxvW0veFl3uU1a", "optionBoxConfig": {"boxItems": [{"count": 79, "duration": 20, "endDate": "1986-08-03T00:00:00Z", "itemId": "0mczWxc8f1s2QPMM", "itemSku": "Zsf2dvKZyHChRPHv", "itemType": "dkcKW21B5EFtD2pY"}, {"count": 0, "duration": 95, "endDate": "1989-11-28T00:00:00Z", "itemId": "Tz1gcE2XCwTkRUIX", "itemSku": "6IFHNmB9mYBvtOwx", "itemType": "jqyrjDApeN5eAfRq"}, {"count": 91, "duration": 49, "endDate": "1974-02-27T00:00:00Z", "itemId": "H5xIuBTYOdsvNyk5", "itemSku": "2MQFkVVEf36S7yPg", "itemType": "G48bk6PwH1tdEAJS"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 44, "comparison": "isLessThanOrEqual", "name": "cAFTaSWR4VOGIY7h", "predicateType": "SeasonTierPredicate", "value": "vyYT3GuaZVTxBlw1", "values": ["PGf9Fn32SJNPZkEf", "IWeXKFT4rfSbbSlD", "kAcJTMS4pVRcCHIG"]}, {"anyOf": 10, "comparison": "isLessThanOrEqual", "name": "mCMTr9ACnI2sMrEg", "predicateType": "EntitlementPredicate", "value": "SDWnMQGaYRxFWia7", "values": ["xhgTwyO51CUpcdxL", "cGUFgp6LkyXpxJeF", "yJ2d87XjA0ajvb7J"]}, {"anyOf": 22, "comparison": "excludes", "name": "l60ImLBv6nUU0r1r", "predicateType": "EntitlementPredicate", "value": "FgZhNpOTE4toH57y", "values": ["gvERZI6Cqhcknhec", "Nv2Tw6YKhVrYkMqX", "r01N33p1Gha8Hwpa"]}]}, {"operator": "and", "predicates": [{"anyOf": 67, "comparison": "isGreaterThanOrEqual", "name": "7qlaJjSYEseBYCFG", "predicateType": "EntitlementPredicate", "value": "DlP9qIZJ5Krx6KkH", "values": ["agEugKJxkU8Y58CO", "vq0CIa1YCK9PlMeQ", "tTNjnNSikJDg6ujK"]}, {"anyOf": 31, "comparison": "isGreaterThanOrEqual", "name": "reG0HwUXxQTf5YpD", "predicateType": "SeasonTierPredicate", "value": "ETZwqdzAX28DikGk", "values": ["8cWiX44azSHcwicU", "Vq2XPljTZj5R0yZS", "VQ8SSeJ4qy4PIKle"]}, {"anyOf": 41, "comparison": "is", "name": "V271bwZ4niLSzQnv", "predicateType": "EntitlementPredicate", "value": "C00dtNGGzbGYSYo9", "values": ["7VKl0ARzGEArlfE1", "NSmtcADoZvd0La7P", "fY2EBZAHQXc4Xcae"]}]}, {"operator": "or", "predicates": [{"anyOf": 71, "comparison": "isLessThanOrEqual", "name": "4H7uDzkOHTdnUtdr", "predicateType": "SeasonTierPredicate", "value": "yJFOVaewFcv9h31Y", "values": ["xuZnoSesWpLUHjGa", "IcZN28gH4Cd9xTdt", "2K1CzpQWslNGnLYU"]}, {"anyOf": 90, "comparison": "isLessThan", "name": "0yOvJhUjzcMtwINU", "predicateType": "EntitlementPredicate", "value": "LQWpdESOBV7wZJsg", "values": ["vBzvYNEtfgBFikt1", "8cQ677SotDEtU2xB", "7wSv9lyRyTdYBUlj"]}, {"anyOf": 92, "comparison": "isGreaterThanOrEqual", "name": "EQ8rBKc2K6oJXxVE", "predicateType": "EntitlementPredicate", "value": "8hCc9onSNjbQEqFG", "values": ["JmDXpjyvLSHB1y3k", "GRhrmRAxRGeIKGlC", "wnDG8kz4kvEv6tNj"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 94, "fixedTrialCycles": 70, "graceDays": 42}, "region": "87ltClc3RDXF5055", "regionData": [{"currencyCode": "tUlenimjIbm0riCa", "currencyNamespace": "Np8dUBDinAB6HqIW", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1971-08-25T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1974-06-30T00:00:00Z", "discountedPrice": 2, "expireAt": "1978-06-03T00:00:00Z", "price": 36, "purchaseAt": "1977-01-17T00:00:00Z", "trialPrice": 39}, {"currencyCode": "uEtWAF763kci7lT6", "currencyNamespace": "2BOHaso53W3U2Mu9", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1995-11-08T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1996-12-14T00:00:00Z", "discountedPrice": 30, "expireAt": "1979-06-14T00:00:00Z", "price": 36, "purchaseAt": "1994-05-08T00:00:00Z", "trialPrice": 67}, {"currencyCode": "RVCf3gMWDAodCKqf", "currencyNamespace": "qzeexHA70NgJTxjt", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1974-01-04T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1972-12-29T00:00:00Z", "discountedPrice": 99, "expireAt": "1986-12-31T00:00:00Z", "price": 40, "purchaseAt": "1981-01-05T00:00:00Z", "trialPrice": 1}], "saleConfig": {"currencyCode": "RvJ6lKWJwHO65aOF", "price": 59}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "vBzGh3mhIDNuMBZe", "stackable": false, "status": "ACTIVE", "tags": ["HtB9uTCiiIoMZCjG", "iOZJpUf9RpcfEQn0", "O6D8PGQuazAypgWh"], "targetCurrencyCode": "TED5YmPTBUkm2Fyv", "targetItemId": "dguCYVqFyIKh1YtT", "targetNamespace": "Y4AejyQc5Dac7hSL", "thumbnailUrl": "ldWx5DyniVESUgrR", "title": "OrP1ip3jNG68DByf", "updatedAt": "1999-03-25T00:00:00Z", "useCount": 96}, "namespace": "tgvjwNJAwIpEy2ZN", "order": {"currency": {"currencyCode": "pojZ24I2n25smsrm", "currencySymbol": "JFHGiYnyhbqxLuTZ", "currencyType": "REAL", "decimals": 48, "namespace": "fkTsAThLyflAqqAP"}, "ext": {"4M78smYdyge6DroO": {}, "ywOxI4G6jZzoYIFA": {}, "vYfT8XQw2EOq6BFj": {}}, "free": false}, "source": "ACHIEVEMENT"}, "script": "4OqKGLRpNWzKZtZn", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'vmziSSiSpXeWOGay' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'fRkQvoN06SpNOnuS' \
    --body '{"grantDays": "ksfm7hcIFdkdrwAc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'K2lUda9h9FgvfhiL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'EAkA7n6516ydoRT1' \
    --body '{"grantDays": "qZBrdTnGrwHeWoQX"}' \
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
    --body '{"clazz": "PFWFaKbDgrGkv8SV", "dryRun": true, "fulfillmentUrl": "eaPAyPeEGBepK1Ix", "itemType": "INGAMEITEM", "purchaseConditionUrl": "9d1Idud8bjYeBVMr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'CODE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'zHYmRE4X36KUOdfE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'moIYwSxxAsfwDMiv' \
    --body '{"clazz": "WqHHGlnAnEu6EKYc", "dryRun": false, "fulfillmentUrl": "gE0kxzFMq9ttbEHA", "purchaseConditionUrl": "EV7C65Ans9SquNSJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'Iay5VdUdYy9Y9OCS' \
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
    --body '{"description": "mmT3WKijbqhT3uyQ", "items": [{"extraSubscriptionDays": 90, "itemId": "6qf6v5SgcJPZPUh2", "itemName": "nHQwpWi8HZ6C0VJ0", "quantity": 10}, {"extraSubscriptionDays": 6, "itemId": "K2m6lQ5Ao8TITYiH", "itemName": "SR2SEJh1YDedZdNq", "quantity": 21}, {"extraSubscriptionDays": 96, "itemId": "XPWZfT8ZfdKp9q4n", "itemName": "XuK0tJAYror2XdtS", "quantity": 58}], "maxRedeemCountPerCampaignPerUser": 67, "maxRedeemCountPerCode": 76, "maxRedeemCountPerCodePerUser": 36, "maxSaleCount": 97, "name": "ExOoIpWzacOvwUsn", "redeemEnd": "1988-01-11T00:00:00Z", "redeemStart": "1971-03-29T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["AtyEWKWoZRUL7wS3", "HaMTXAX6y0STTN2s", "BEijjjpvSzGkED0o"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'HvFhRMCFJuA0DEMg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'ykqqjoHTpIPMSRAu' \
    --body '{"description": "PI7mSZQ5UDm1q51P", "items": [{"extraSubscriptionDays": 23, "itemId": "vaH9jwcO48pthyYp", "itemName": "BJDHIIxTIGI5EssY", "quantity": 24}, {"extraSubscriptionDays": 58, "itemId": "lIqjJzuQ8GglVgxj", "itemName": "OGQGlHm8VTN56tJK", "quantity": 45}, {"extraSubscriptionDays": 60, "itemId": "XgvGTMHkXeEwuFJf", "itemName": "7tbq5KikDE7hWvT5", "quantity": 3}], "maxRedeemCountPerCampaignPerUser": 48, "maxRedeemCountPerCode": 53, "maxRedeemCountPerCodePerUser": 71, "maxSaleCount": 5, "name": "taK6s3Hha69MgxjG", "redeemEnd": "1989-09-12T00:00:00Z", "redeemStart": "1983-03-28T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["AmKGNEmFPcUALNzi", "O9Bz2wx4kDAm8XIl", "eiujtv2NdQTYoHZo"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'gW8lBvniHdARadfS' \
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
    --body '{"appConfig": {"appName": "octA3GYO94ZOo94g"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "5DHLB65fxQ06GwTm"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "plRpcHDWcIoJ45L0"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "PiKR3qcbHLGplYsS"}, "extendType": "CUSTOM"}' \
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
    'jsRZffCd00VrgPuN' \
    --body '{"categoryPath": "tOv3jbhGBuW8KcyP", "localizationDisplayNames": {"MfDWSEEpKoJlmhMQ": "UCx70QjYbzemOTUR", "zzAOIBarB7kcer5S": "vPLeQZIpKFXgnsxx", "3c2bUsO7FP8RmOst": "ZAGDgiVsV2OttwJa"}}' \
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
    'MxPDIJ5hFQHumFvP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetCategory' test.out

#- 32 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'KqupHj72TlLs964i' \
    'ABOgTKtnaA7O35Ia' \
    --body '{"localizationDisplayNames": {"ytd9CsAMTZC37xPX": "xnfggnZ3EZp6wSAu", "fwYirs9lwvPKd925": "u3fFLV0YeMrVaYST", "RYGFzgLZ7gEypQf2": "Pn9A4gcbDJ0LmdnO"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateCategory' test.out

#- 33 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'PkIT1C6KGTpA7JZ6' \
    'xullPROSfiW9zcxm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteCategory' test.out

#- 34 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'gNfTHu3vkZt9FgWc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetChildCategories' test.out

#- 35 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'kjNpHhM2ZXp4N0RO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetDescendantCategories' test.out

#- 36 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'mUCTrS7Gi9Iigk9v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'QueryCodes' test.out

#- 37 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'amO7Q2WQwSWqSs05' \
    --body '{"quantity": 36}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateCodes' test.out

#- 38 Download
$PYTHON -m $MODULE 'platform-download' \
    'v7Bm40CtZiAxk43D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'Download' test.out

#- 39 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'GV1SCkw8U0d4FvVm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkDisableCodes' test.out

#- 40 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'PMtpRMWSQ8Szi1Ir' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkEnableCodes' test.out

#- 41 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'GidRmR5BGRJhFwxm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'QueryRedeemHistory' test.out

#- 42 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'kGfPI3j4luXQuuLt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetCode' test.out

#- 43 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'Ya86kvL6cBZQssUU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'DisableCode' test.out

#- 44 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'XOsXMNdvW1hbvGen' \
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
    --body '{"currencyCode": "Rbm3QtsY5WaKM5YY", "currencySymbol": "6pYrmeMIHLS8egV8", "currencyType": "REAL", "decimals": 59, "localizationDescriptions": {"gDjbrum8UxcutmVg": "8APWKxoj6MF68VuK", "DoklYmkytCAH8Jiq": "e7gfV1G6bYgIbVKp", "4Kgew2mHDksA6Mv9": "Nzs19eBq9a1L8S1y"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'CreateCurrency' test.out

#- 50 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'duOwscICro6P8FWI' \
    --body '{"localizationDescriptions": {"PeqaBeD2uBAvIXEc": "2CCgYcFo9A93o22U", "gObCOiBWdw2b031d": "m4N41MOpmm04BlZU", "AlYnCT11qD03er5m": "draK47FdxXisVlo3"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdateCurrency' test.out

#- 51 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'aVOGARFDJcGWy826' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'DeleteCurrency' test.out

#- 52 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'ilCxAxQUM5DyrPfB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencyConfig' test.out

#- 53 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'mpZIzSFUZqVR5FWG' \
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
    --body '{"data": [{"id": "fH66eFCMTsLA8vYV", "rewards": [{"currency": {"currencyCode": "vrIAEehUV0jsjAyV", "namespace": "gxS54NNs3XdhMbQX"}, "item": {"itemId": "9D1znEWw9p7g4UsQ", "itemSku": "CTKDh5n9yc34xF8q", "itemType": "FllM1LTrl4MP3Nl4"}, "quantity": 93, "type": "ITEM"}, {"currency": {"currencyCode": "LAQWuBJwxObZqMGx", "namespace": "hffy9cHrLYfftad9"}, "item": {"itemId": "9JDcnn7f2d8SOWP2", "itemSku": "dw6Uy88WpQalG38V", "itemType": "Oo82aLD9jUjuDITj"}, "quantity": 16, "type": "CURRENCY"}, {"currency": {"currencyCode": "fejqSbVgLd1FoyNF", "namespace": "Gpu5r2K0IvVg5LwU"}, "item": {"itemId": "ygH98dzTL8azKCCN", "itemSku": "BZpwRFNYxx2dr6DD", "itemType": "uDHXcfvXPXJURX3X"}, "quantity": 47, "type": "CURRENCY"}]}, {"id": "hOlgcpcOIxqCMSpZ", "rewards": [{"currency": {"currencyCode": "xby2J9vGOUeSeGb0", "namespace": "2vDPUpv5VEdIG82d"}, "item": {"itemId": "pIbfxVFfdvKQVgPQ", "itemSku": "w3MVXe4xBPDWHRHC", "itemType": "CVDBRjPUQWYVxGQV"}, "quantity": 64, "type": "CURRENCY"}, {"currency": {"currencyCode": "JlDDJ7z4Pb5jyGID", "namespace": "39Ung1D57FjYKlJi"}, "item": {"itemId": "RIvhej77OSPwdzMS", "itemSku": "mrSvQdsAdTUGpd8K", "itemType": "FrXKFA2gdjQCYoE8"}, "quantity": 3, "type": "ITEM"}, {"currency": {"currencyCode": "CZetLfpFNyp7375r", "namespace": "hOmR4zFjoJZVKZjO"}, "item": {"itemId": "D2ePKAKYjJMVnYj2", "itemSku": "yKqavWpydepM3ap0", "itemType": "69B9Okr0xJ5XRZVo"}, "quantity": 47, "type": "ITEM"}]}, {"id": "GOLVBIlFgTAsXgqx", "rewards": [{"currency": {"currencyCode": "3mfB5ZwV25N7NAvZ", "namespace": "dGuyYEYZE3KaGSdh"}, "item": {"itemId": "EGKcp6g1A8O9N9cb", "itemSku": "YBK6XOBDpR7SH93A", "itemType": "E1Toj5vygVvLSJvd"}, "quantity": 37, "type": "CURRENCY"}, {"currency": {"currencyCode": "pmmUeMikW3s54zff", "namespace": "AL2DZ7gBhy77iRVF"}, "item": {"itemId": "fFvWenMNV00KVuLF", "itemSku": "9WDnGO3bpQWmnS52", "itemType": "ZuuuI7F1xpVrcoXz"}, "quantity": 91, "type": "ITEM"}, {"currency": {"currencyCode": "OEGEDYfiGPYo2K3d", "namespace": "N3YBOJfvV6SuHovo"}, "item": {"itemId": "Qlk5wL2oXDZ20Bw2", "itemSku": "H4tz6KUC4jXGj2G0", "itemType": "GZ3JBYi9bBKBRpdb"}, "quantity": 77, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"iwxOx2XQn94xPqXh": "qeNMDGA3O5hQAl6U", "2g9imVMh3i7j095r": "DL6lEuB1ZIMIs1dF", "vYokH9t2u8ZZnyHK": "kk6Gh25tEcX9GegD"}}, {"platform": "OCULUS", "platformDlcIdMap": {"E6yR1wLTgjsnB2LF": "VrZRrOntm2KjbfCO", "uW3dBmFwUO7Y0xhM": "LwxgRpTSUppvO3QG", "68KeD7QJQEEVDAg0": "45BvtPd7ibBA3sd5"}}, {"platform": "OCULUS", "platformDlcIdMap": {"5QzRBY1UrefgmVFB": "Vz4KRCU0p4jIt01g", "zH17IcfJyGulmByN": "5rcDA3Wcv9ouALjg", "LZZzLU9w8MJRIzIg": "JKg9y86BgnBQtm5A"}}]}' \
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
    --body '{"entitlementGrantList": [{"endDate": "1975-04-04T00:00:00Z", "grantedCode": "6DKNSeb2UMWOgVeY", "itemId": "kCvqq0tO15pEVG7s", "itemNamespace": "NihxpuuL7DJCxvzZ", "language": "sI-229", "quantity": 32, "region": "NCAUmdnLaVRUu5Vb", "source": "IAP", "startDate": "1982-09-15T00:00:00Z", "storeId": "Pa9rYgHaxeTT3ebu"}, {"endDate": "1971-04-07T00:00:00Z", "grantedCode": "YPNBp9wA4LxO2n7W", "itemId": "JQFzBCD9S03D7JLs", "itemNamespace": "IM3VOMRvvqkXDMPz", "language": "Ybee-RLYT_LT", "quantity": 57, "region": "h4b4HtwEYX55pJNT", "source": "REDEEM_CODE", "startDate": "1980-04-20T00:00:00Z", "storeId": "DjSWiSXsV5rJ8eZX"}, {"endDate": "1997-02-18T00:00:00Z", "grantedCode": "LMZnNL3DQK45IAtb", "itemId": "yUDDSJSV8pzl1lfI", "itemNamespace": "R7jnetIJPGObyWCL", "language": "GgW_GYzK-sV", "quantity": 3, "region": "Soi2X9SygvMG8QAa", "source": "OTHER", "startDate": "1994-06-08T00:00:00Z", "storeId": "hIguMvKDOrx0wQXK"}], "userIds": ["72VuhoGP2IFXGU5h", "EroyKz2reP63EVHT", "ujEfCMt95DEjxqhg"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GrantEntitlements' test.out

#- 63 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["YqmMqIdlRrQmuILk", "eRUafUDP5b6BWfm7", "cYCpDIJG42ILhUoC"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'RevokeEntitlements' test.out

#- 64 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'h8lmKKocC5Ea29Jh' \
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
    --body '{"bundleId": "fFGN964J8WOgsAj2", "password": "Rmf1DXvAIkzTRNRV"}' \
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
    --body '{"sandboxId": "yeEGu1ICOCmLAmca"}' \
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
    --body '{"applicationName": "EFBKgy92LYqtQcDN", "serviceAccountId": "7OMCehk42acy8wsW"}' \
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
    --body '{"data": [{"itemIdentity": "aPyppR3ztPSALA8L", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"VWONEpAPedzI2Adl": "qiyEJIQcbZJJ3Ahk", "rMi0bnppEJFISze8": "8rGEr3cilJWhaW6j", "NsM94E2FQb6S0Vma": "TR7E3mkDSQkgVMhL"}}, {"itemIdentity": "bM6H1MnNSKd0KStI", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"vGQtzwjGtGTr238G": "8Aevk3k14782W2oN", "o3X4m6wms9SPaHlq": "tDPry2vMON7sdhli", "lfpDT8o2iFrYtGfC": "ZCcrvsV2I4X26p21"}}, {"itemIdentity": "iDBZGJ8ZMLwPJ871", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"kDqb31AZzwiQBaGd": "S41VRIyAHjYxVhCb", "XbeBEoTlfR33jqIR": "oXcCPaLXJM2B9bMo", "hkWsFKIdycYHQcu7": "JkKBcLFRf50Y7ME2"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UpdateIAPItemConfig' test.out

#- 78 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'DeleteIAPItemConfig' test.out

#- 79 GetOculusIAPConfig
$PYTHON -m $MODULE 'platform-get-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'GetOculusIAPConfig' test.out

#- 80 UpdateOculusIAPConfig
$PYTHON -m $MODULE 'platform-update-oculus-iap-config' \
    --body '{"appId": "QmYiYqap7masUcay", "appSecret": "qmp7vhz1T6cSrZL2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UpdateOculusIAPConfig' test.out

#- 81 DeleteOculusIAPConfig
$PYTHON -m $MODULE 'platform-delete-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteOculusIAPConfig' test.out

#- 82 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetPlayStationIAPConfig' test.out

#- 83 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    --body '{"environment": "CgHxdmYDj9vZNgfI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdatePlaystationIAPConfig' test.out

#- 84 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeletePlaystationIAPConfig' test.out

#- 85 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetSteamIAPConfig' test.out

#- 86 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"appId": "1AeYHe8WPQGPclCh", "publisherAuthenticationKey": "xLfbXrH6f2GDrNbL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'UpdateSteamIAPConfig' test.out

#- 87 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'DeleteSteamIAPConfig' test.out

#- 88 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetTwitchIAPConfig' test.out

#- 89 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    --body '{"clientId": "OjGz34ct0ctEeH43", "clientSecret": "wYuLnI7cTzIUERPl", "organizationId": "QI99hMc4NbiJWP5r"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateTwitchIAPConfig' test.out

#- 90 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteTwitchIAPConfig' test.out

#- 91 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetXblIAPConfig' test.out

#- 92 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    --body '{"relyingPartyCert": "9EwbIGMGJ70P9IqA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'UpdateXblIAPConfig' test.out

#- 93 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'DeleteXblAPConfig' test.out

#- 94 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'UpdateXblBPCertFile' test.out

#- 95 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'yNlZ2OwFSebBkXka' \
    'xtY97TMJH8bO4GDH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'DownloadInvoiceDetails' test.out

#- 96 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'T6ZaUUkvlTKAhrxq' \
    'Hw7f813qNjzlcxXs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GenerateInvoiceSummary' test.out

#- 97 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'mGGcJhauxfhVKIbR' \
    --body '{"categoryPath": "vUnyElHPuQE3Gc8b", "targetItemId": "Y4IH0OXHZP6VVB7q", "targetNamespace": "jDHMS49dkv8vxyg6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'SyncInGameItem' test.out

#- 98 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'giNKzeFnlgGRgYK3' \
    --body '{"appId": "SeYvULYNIhs5PZGT", "appType": "DLC", "baseAppId": "dJsGoBIjCKlD3axS", "boothName": "ivItV1txLINmdHTG", "categoryPath": "LtX6TN5ctYX1sZnY", "clazz": "F3hWmCCIrP0lJXex", "displayOrder": 37, "entitlementType": "CONSUMABLE", "ext": {"XO1vT1AonFO3syvk": {}, "Yd78GsJGLbnb4Nvw": {}, "7fnm4MnOqnqNerQo": {}}, "features": ["MbYi1yEI9ychtyhj", "ZSeDCKT4ilZB8apD", "HiDIJayvSNt8EQXs"], "images": [{"as": "TR3aL9sunWp7V1s8", "caption": "LmXm0FaJMIjgzU02", "height": 27, "imageUrl": "J8cLrryS5a6A4tL8", "smallImageUrl": "YKMrUBL6dDTVwPIt", "width": 42}, {"as": "hrg2mhbI0NDshb7Z", "caption": "zQuBPyNi1GhZHEj6", "height": 32, "imageUrl": "OB4mD3E7AFHqlTTk", "smallImageUrl": "L8cmpA0sZ0tgeR4U", "width": 98}, {"as": "OvdRTpGmBUjfEU9v", "caption": "L8H96tuVfQwYIqDW", "height": 33, "imageUrl": "2zriOGB8b5qTFp3c", "smallImageUrl": "IxOI33nt54i5hdAe", "width": 52}], "itemIds": ["TVzAeQq6rnWJoTpY", "oe2uHaWnO98YwqHZ", "nEDkfmNbDTMGgET2"], "itemQty": {"yS6C8a8L0vQDS4EV": 31, "f6fdmyi4kQnOFbBt": 44, "YYuAmqhftIfe2zdq": 21}, "itemType": "COINS", "listable": false, "localizations": {"mSj52mAIMo6EW9Qh": {"description": "zU8FwQtZpfUoyoiU", "localExt": {"jmqOyQ7ammFgHprd": {}, "M9viFWmezrQOWH03": {}, "zyr7kRbC31YMJfRi": {}}, "longDescription": "D7djt1VeOFBDA3gv", "title": "CRfoBijpbMblGWnp"}, "94a6GKY0BrHiWs0B": {"description": "0RhxQtgVgbN8kr87", "localExt": {"2hJvrOCdAEZ2RHt3": {}, "uQ5nFrPXwxJZQpke": {}, "DHr0hjKBpDMIvK4q": {}}, "longDescription": "fQ0pQIcYMBktqqAA", "title": "F6YG1dD1vECBb01V"}, "FFhO5FcdTvIDQI2u": {"description": "Ii2SNZKqlJZsdnY0", "localExt": {"4DIyosprZPBaERb7": {}, "U9kK4VctUmDhFVNa": {}, "0JYzTbdnOnEarWP4": {}}, "longDescription": "nrJ5fNESRVGeswvk", "title": "zLNIITUJGj5FYaSg"}}, "lootBoxConfig": {"rewardCount": 9, "rewards": [{"lootBoxItems": [{"count": 38, "duration": 47, "endDate": "1986-10-30T00:00:00Z", "itemId": "0RDLxWgEWwoHpV8E", "itemSku": "1xQZLa7Kw77UpCxN", "itemType": "yx1jjdxNePPAJ6Z9"}, {"count": 95, "duration": 53, "endDate": "1998-05-13T00:00:00Z", "itemId": "r1rI0T97qA1OiblW", "itemSku": "lz2LXQNqcONcJIsY", "itemType": "RQz97fRWI17eNP3Y"}, {"count": 48, "duration": 27, "endDate": "1987-07-06T00:00:00Z", "itemId": "lS9Sfjh0htyVaGj4", "itemSku": "y9ahS7h7XVlmc5Rs", "itemType": "5FVQSIqObR55tV0B"}], "name": "lN1iFvw0GSLBmie8", "odds": 0.7115675226231635, "type": "REWARD_GROUP", "weight": 61}, {"lootBoxItems": [{"count": 5, "duration": 53, "endDate": "1976-02-01T00:00:00Z", "itemId": "SRbu7hgmUm7RVCUR", "itemSku": "EDdoGatGQ1SeOXsg", "itemType": "4jofp9PvlQ1xdmr4"}, {"count": 74, "duration": 44, "endDate": "1986-05-09T00:00:00Z", "itemId": "pvZgvPGHjV7MNTpM", "itemSku": "7fSods1zdVT0aWj5", "itemType": "8Othvd3jzMDAf40g"}, {"count": 74, "duration": 38, "endDate": "1993-11-05T00:00:00Z", "itemId": "izvmxts5HSQvRAPG", "itemSku": "9JoVSLrbs5niXkjp", "itemType": "kOgRCC7qfz5jV7NT"}], "name": "RYld9FJJ10goNq8u", "odds": 0.27109699276464194, "type": "REWARD_GROUP", "weight": 1}, {"lootBoxItems": [{"count": 60, "duration": 23, "endDate": "1981-07-30T00:00:00Z", "itemId": "28SRRAMaQFEzppet", "itemSku": "icckSUon7awfol07", "itemType": "696uxp5ieMjjOfFS"}, {"count": 48, "duration": 52, "endDate": "1999-09-23T00:00:00Z", "itemId": "AJN97kUjwiCmWQvb", "itemSku": "rxQpUSnos6QiHyrc", "itemType": "GeRv27hj73EtufHu"}, {"count": 80, "duration": 63, "endDate": "1988-02-17T00:00:00Z", "itemId": "p0GXpM4nbG7aww2T", "itemSku": "ANW1Or7TvLoL0wwH", "itemType": "oRMNexBOron8wIdU"}], "name": "bp7xVMKfbAJfW4iM", "odds": 0.5621204953179385, "type": "REWARD", "weight": 78}], "rollFunction": "DEFAULT"}, "maxCount": 92, "maxCountPerUser": 80, "name": "eTnUWGxxfnMIDSCP", "optionBoxConfig": {"boxItems": [{"count": 35, "duration": 63, "endDate": "1998-12-06T00:00:00Z", "itemId": "m1Fg6tc250c2okDT", "itemSku": "em6o62xFY6TNqoLF", "itemType": "FS4wB6Um7ir0n6O3"}, {"count": 44, "duration": 83, "endDate": "1971-05-25T00:00:00Z", "itemId": "VjrcErgoApAxyDnH", "itemSku": "jAx7rZTvew0WVDSM", "itemType": "Nr23LV7xZEEv7O1l"}, {"count": 46, "duration": 42, "endDate": "1983-07-10T00:00:00Z", "itemId": "VTRll0GIEUJtMC8N", "itemSku": "yV2HLHZT3oYJlC4i", "itemType": "e3InnSA22NHTb4qX"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 95, "fixedTrialCycles": 72, "graceDays": 54}, "regionData": {"UGtC0tAhxn1ay6ru": [{"currencyCode": "u7PYWHODRb6skOj0", "currencyNamespace": "lfYFGnQCAWidWPjY", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1983-12-19T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1974-01-14T00:00:00Z", "expireAt": "1992-07-19T00:00:00Z", "price": 35, "purchaseAt": "1977-10-02T00:00:00Z", "trialPrice": 36}, {"currencyCode": "FirnUpZ9UJ4N78qH", "currencyNamespace": "TGdn7gE4bwLzDEw2", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1981-04-08T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1981-08-19T00:00:00Z", "expireAt": "1993-03-23T00:00:00Z", "price": 91, "purchaseAt": "1988-01-01T00:00:00Z", "trialPrice": 14}, {"currencyCode": "OZcEvG6KZh954Bmt", "currencyNamespace": "uIFllfSUnaUhC4x1", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1999-07-10T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1984-02-16T00:00:00Z", "expireAt": "1989-04-23T00:00:00Z", "price": 51, "purchaseAt": "1994-03-10T00:00:00Z", "trialPrice": 8}], "y01FkEEXlKiTIDgP": [{"currencyCode": "7wuXQdfW99JglSco", "currencyNamespace": "OlkkBxiXf8OBQRqX", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1996-08-28T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1993-09-17T00:00:00Z", "expireAt": "1981-07-31T00:00:00Z", "price": 56, "purchaseAt": "1979-04-18T00:00:00Z", "trialPrice": 5}, {"currencyCode": "WiEsOnDfIAN04f5k", "currencyNamespace": "SONmw1BDqqSctLL4", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1987-05-11T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1989-04-20T00:00:00Z", "expireAt": "1985-10-26T00:00:00Z", "price": 60, "purchaseAt": "1998-04-19T00:00:00Z", "trialPrice": 46}, {"currencyCode": "WHGVKDcKulj3Pdeg", "currencyNamespace": "y4G6LOpak8CYp6DP", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1981-04-24T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1999-01-18T00:00:00Z", "expireAt": "1973-01-20T00:00:00Z", "price": 4, "purchaseAt": "1975-05-23T00:00:00Z", "trialPrice": 3}], "AFLweD9Z7U2lNkor": [{"currencyCode": "rw9QH3rNhDepQum4", "currencyNamespace": "Dj7pR05RTGXGRkYX", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1997-12-15T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1984-01-02T00:00:00Z", "expireAt": "1977-05-26T00:00:00Z", "price": 54, "purchaseAt": "1982-12-03T00:00:00Z", "trialPrice": 70}, {"currencyCode": "F9VV7JgCOm4wL729", "currencyNamespace": "Hma0nCdCEFcf2doB", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1974-02-18T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1972-03-10T00:00:00Z", "expireAt": "1990-10-01T00:00:00Z", "price": 34, "purchaseAt": "1996-05-30T00:00:00Z", "trialPrice": 13}, {"currencyCode": "egBsrNqeW5BxVe8i", "currencyNamespace": "W7sGELnMdXRqdGPz", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1996-11-15T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1981-06-05T00:00:00Z", "expireAt": "1992-11-14T00:00:00Z", "price": 40, "purchaseAt": "1972-05-28T00:00:00Z", "trialPrice": 99}]}, "saleConfig": {"currencyCode": "hjeVBnTrsYihhgbe", "price": 55}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "FncMUdmf8hD3nL1s", "stackable": false, "status": "INACTIVE", "tags": ["xLYrz08jh6Tyq7WU", "4twReM5DcHde3fkH", "ilXgtf5UctyV3aSw"], "targetCurrencyCode": "f7tH8WTOTeBOcYhf", "targetNamespace": "6nGCnPjiIbJifs0a", "thumbnailUrl": "rKxCcNv8FQCyQBqK", "useCount": 48}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'CreateItem' test.out

#- 99 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    '8Vh4JaKYAsoMlLJG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'GetItemByAppId' test.out

#- 100 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'QueryItems' test.out

#- 101 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'ListBasicItemsByFeatures' test.out

#- 102 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'Ml5xFgLj4mCShMFl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'GetItemBySku' test.out

#- 103 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'brRGjoBQ45Za4JR4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetLocaleItemBySku' test.out

#- 104 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'S3iac6vLeoIULJlW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'GetItemIdBySku' test.out

#- 105 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'GetBulkItemIdBySkus' test.out

#- 106 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'XmQFlef1tSHJf6sV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'BulkGetLocaleItems' test.out

#- 107 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetAvailablePredicateTypes' test.out

#- 108 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    'pwAAKKqmTy0ZSyJ7' \
    --body '{"itemIds": ["IIUXlBlZMQeSnOg5", "gf1SwrbpmoF4DvNA", "1wo9IAxV5C71gTw8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'ValidateItemPurchaseCondition' test.out

#- 109 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'BJPFctwUMCRdxXOB' \
    --body '{"changes": [{"itemIdentities": ["u3TWmHDVmCGFoD7a", "NFj9wORAVqRuNsXx", "Ru4EQqR3KbYWtFzp"], "itemIdentityType": "ITEM_ID", "regionData": {"R3xqCwUgKa4oCBoJ": [{"currencyCode": "DxGa1UuSr4ehnV8A", "currencyNamespace": "w9m6GvDSE2F7Ad69", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1985-04-15T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1977-10-27T00:00:00Z", "discountedPrice": 33, "expireAt": "1975-09-18T00:00:00Z", "price": 14, "purchaseAt": "1976-02-24T00:00:00Z", "trialPrice": 2}, {"currencyCode": "KKcGohdjQUwVdPsA", "currencyNamespace": "rkepfK0DE3IibPSQ", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1979-02-27T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1977-04-22T00:00:00Z", "discountedPrice": 43, "expireAt": "1979-08-03T00:00:00Z", "price": 94, "purchaseAt": "1995-08-13T00:00:00Z", "trialPrice": 99}, {"currencyCode": "SOr7zljUKyhKkD7w", "currencyNamespace": "AHMrv8zABDhYAVxv", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1999-08-21T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1972-02-24T00:00:00Z", "discountedPrice": 15, "expireAt": "1991-07-26T00:00:00Z", "price": 45, "purchaseAt": "1996-06-21T00:00:00Z", "trialPrice": 2}], "gI2k1P9nQxzj3Anm": [{"currencyCode": "pWfje5cAtTDvwFHc", "currencyNamespace": "oODi5oF1pccdjjZp", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1995-11-05T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1971-07-29T00:00:00Z", "discountedPrice": 39, "expireAt": "1982-04-24T00:00:00Z", "price": 10, "purchaseAt": "1977-05-22T00:00:00Z", "trialPrice": 39}, {"currencyCode": "pjVPfktNnl8UYH5k", "currencyNamespace": "esuOtYHLqcdy05Yr", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1972-07-10T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1981-04-23T00:00:00Z", "discountedPrice": 23, "expireAt": "1989-05-25T00:00:00Z", "price": 88, "purchaseAt": "1993-04-18T00:00:00Z", "trialPrice": 49}, {"currencyCode": "TEYv5eDhCxwy85vl", "currencyNamespace": "hWw1RCgHr3f6UqFG", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1982-04-27T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1988-11-14T00:00:00Z", "discountedPrice": 26, "expireAt": "1987-09-08T00:00:00Z", "price": 63, "purchaseAt": "1987-06-11T00:00:00Z", "trialPrice": 24}], "yXqQbKWMJ0aODiWn": [{"currencyCode": "6bPmSa85Riu1alaV", "currencyNamespace": "EhjJZbwMHkFWLSzm", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1996-03-05T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1978-05-22T00:00:00Z", "discountedPrice": 42, "expireAt": "1990-05-18T00:00:00Z", "price": 97, "purchaseAt": "1982-03-16T00:00:00Z", "trialPrice": 42}, {"currencyCode": "X4HRTvm3Qr9IkuW6", "currencyNamespace": "jjofc6itDEsq0dHf", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1996-12-04T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1987-08-11T00:00:00Z", "discountedPrice": 63, "expireAt": "1974-12-27T00:00:00Z", "price": 7, "purchaseAt": "1986-10-21T00:00:00Z", "trialPrice": 7}, {"currencyCode": "wFchP3zTymfVfny2", "currencyNamespace": "M0KsS08cY3fjI1YT", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1993-11-12T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1972-07-25T00:00:00Z", "discountedPrice": 71, "expireAt": "1995-05-30T00:00:00Z", "price": 90, "purchaseAt": "1995-03-14T00:00:00Z", "trialPrice": 11}]}}, {"itemIdentities": ["VeYSM479gn62lizs", "WGrtIgVPb7hoo8Yk", "NPW8mWOJGtdXJGDs"], "itemIdentityType": "ITEM_SKU", "regionData": {"hcx9W7PkFNVa7czD": [{"currencyCode": "4wybVjqOKrqYGxcB", "currencyNamespace": "xfjLUZHK0OO1yQsM", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1992-07-08T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1993-01-28T00:00:00Z", "discountedPrice": 49, "expireAt": "1992-03-15T00:00:00Z", "price": 11, "purchaseAt": "1973-05-27T00:00:00Z", "trialPrice": 60}, {"currencyCode": "tHWyGg5TU3INkMgj", "currencyNamespace": "snP8itevmjTJjj5t", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1987-08-06T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1981-06-22T00:00:00Z", "discountedPrice": 16, "expireAt": "1999-04-09T00:00:00Z", "price": 37, "purchaseAt": "1995-03-08T00:00:00Z", "trialPrice": 7}, {"currencyCode": "6A7z0hsW0IHIYvJ7", "currencyNamespace": "PPgVaFwGhl5zqkzE", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1999-04-26T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1974-12-03T00:00:00Z", "discountedPrice": 97, "expireAt": "1972-02-18T00:00:00Z", "price": 29, "purchaseAt": "1995-07-30T00:00:00Z", "trialPrice": 58}], "cV0T2G3vQZNiqaXz": [{"currencyCode": "RBra3I4K9iBdljXt", "currencyNamespace": "owifBfAw30kOykBu", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1989-03-29T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1988-06-04T00:00:00Z", "discountedPrice": 86, "expireAt": "1985-12-13T00:00:00Z", "price": 33, "purchaseAt": "1973-01-04T00:00:00Z", "trialPrice": 55}, {"currencyCode": "3lJMQ1sGlfqjDBzO", "currencyNamespace": "jNeq8JJhbi7QD0RW", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1983-07-14T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1991-08-14T00:00:00Z", "discountedPrice": 93, "expireAt": "1997-12-05T00:00:00Z", "price": 11, "purchaseAt": "1994-04-15T00:00:00Z", "trialPrice": 64}, {"currencyCode": "mfN5E20ORMCVBTrk", "currencyNamespace": "vObsiHQgt7OfL6Ac", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1985-03-15T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1995-08-01T00:00:00Z", "discountedPrice": 95, "expireAt": "1993-12-25T00:00:00Z", "price": 1, "purchaseAt": "1985-12-17T00:00:00Z", "trialPrice": 28}], "Rsrc0qvV8Gq1cw3y": [{"currencyCode": "tGWVKPoA1aKRZM1O", "currencyNamespace": "t0PWppB2H0G8Xko9", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1989-11-09T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1988-04-25T00:00:00Z", "discountedPrice": 83, "expireAt": "1987-12-03T00:00:00Z", "price": 24, "purchaseAt": "1980-04-23T00:00:00Z", "trialPrice": 90}, {"currencyCode": "pzwHhig9d6vdgfrN", "currencyNamespace": "iGrH0hDjH6IYpfIN", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1991-08-27T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1976-03-28T00:00:00Z", "discountedPrice": 26, "expireAt": "1980-03-07T00:00:00Z", "price": 48, "purchaseAt": "1994-07-03T00:00:00Z", "trialPrice": 30}, {"currencyCode": "FtBVAWT8PxL8674K", "currencyNamespace": "YMeN2W2CNqmO8JAL", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1980-03-12T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1986-03-11T00:00:00Z", "discountedPrice": 41, "expireAt": "1979-09-23T00:00:00Z", "price": 88, "purchaseAt": "1992-10-09T00:00:00Z", "trialPrice": 37}]}}, {"itemIdentities": ["03oSwCfYpN9jkLCs", "MYyyhEyBfFFZwkC1", "PRjBWzTuXttDREDW"], "itemIdentityType": "ITEM_ID", "regionData": {"2hB9u1v1POCjseK1": [{"currencyCode": "xaSbMjyFrYsITcyT", "currencyNamespace": "5AhNNH0Ht1yPtBwX", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1998-03-17T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1985-01-06T00:00:00Z", "discountedPrice": 7, "expireAt": "1992-01-17T00:00:00Z", "price": 28, "purchaseAt": "1981-02-20T00:00:00Z", "trialPrice": 63}, {"currencyCode": "8ps5XknDJZK5gFHy", "currencyNamespace": "IOnLu9WBAS0qUswy", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1977-05-27T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1996-12-15T00:00:00Z", "discountedPrice": 73, "expireAt": "1999-01-26T00:00:00Z", "price": 32, "purchaseAt": "1989-02-23T00:00:00Z", "trialPrice": 36}, {"currencyCode": "bHM0Svy3GRenDzwl", "currencyNamespace": "TE9Czhnck3GnyPFQ", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1989-04-17T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1974-03-20T00:00:00Z", "discountedPrice": 98, "expireAt": "1996-09-01T00:00:00Z", "price": 7, "purchaseAt": "1992-09-25T00:00:00Z", "trialPrice": 84}], "kZ8AVzeiaDi67E3r": [{"currencyCode": "TwN2LrT85Arfe6Ew", "currencyNamespace": "eJxWANt1bDay64En", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1980-09-18T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1973-12-17T00:00:00Z", "discountedPrice": 22, "expireAt": "1978-04-16T00:00:00Z", "price": 81, "purchaseAt": "1980-03-04T00:00:00Z", "trialPrice": 25}, {"currencyCode": "ddKrrhzwz2PFXC33", "currencyNamespace": "KjLNUFQJgCWV7dj8", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1973-10-10T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1977-01-18T00:00:00Z", "discountedPrice": 10, "expireAt": "1976-10-05T00:00:00Z", "price": 33, "purchaseAt": "1999-02-23T00:00:00Z", "trialPrice": 44}, {"currencyCode": "nMV6Yxtl5DKUhjBy", "currencyNamespace": "9oWPcMIQc5lRQojh", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1971-05-12T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1995-02-18T00:00:00Z", "discountedPrice": 58, "expireAt": "1983-06-21T00:00:00Z", "price": 65, "purchaseAt": "1971-01-22T00:00:00Z", "trialPrice": 8}], "zEOMXF1T1sU9xsmA": [{"currencyCode": "CLFHrXWFobqnDkfP", "currencyNamespace": "AHNgVss4JzVKSusd", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1994-04-09T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1978-10-21T00:00:00Z", "discountedPrice": 69, "expireAt": "1984-03-02T00:00:00Z", "price": 43, "purchaseAt": "1986-12-16T00:00:00Z", "trialPrice": 22}, {"currencyCode": "WYk2vD3mUDwtTF1A", "currencyNamespace": "TVQnAexrRomTZFHX", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1974-06-13T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1976-06-13T00:00:00Z", "discountedPrice": 48, "expireAt": "1976-09-06T00:00:00Z", "price": 49, "purchaseAt": "1972-11-12T00:00:00Z", "trialPrice": 40}, {"currencyCode": "4GZGiSutb6wUxEik", "currencyNamespace": "RyHC9VWMnzbuNQNJ", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1984-01-11T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1990-05-07T00:00:00Z", "discountedPrice": 63, "expireAt": "1993-03-01T00:00:00Z", "price": 12, "purchaseAt": "1980-02-13T00:00:00Z", "trialPrice": 85}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'BulkUpdateRegionData' test.out

#- 110 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'WWEsCETqKlcFcaL6' \
    'XOoO3WqBsbDmsTk9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'SearchItems' test.out

#- 111 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'QueryUncategorizedItems' test.out

#- 112 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'UuiQwezvArAKJwZG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'GetItem' test.out

#- 113 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'VyknpOhuGhAnlnjy' \
    'PBj7h3hncU5vgL62' \
    --body '{"appId": "RA2BI7knizQ4Jx8I", "appType": "DLC", "baseAppId": "VDBDxK6laOkeLBcp", "boothName": "rByjUr7w9w1xKUrL", "categoryPath": "mQSkuEMRzyerpya2", "clazz": "oBjbgBhOdXE8y1PN", "displayOrder": 70, "entitlementType": "DURABLE", "ext": {"zbnPB5wG65f3ACfS": {}, "3A8JeRMYUCgn7okl": {}, "NewpAIwtlAooXZ7H": {}}, "features": ["qVpZbsppRsBWQ7Rd", "YqZaQ8swcFOshiWE", "Db8g2BhzW03O2pp9"], "images": [{"as": "FDMG99v5LSSkkEoA", "caption": "arkgZ773cdzYhgH2", "height": 82, "imageUrl": "VR4hJnsU1m6zryXm", "smallImageUrl": "vvvPmueVVC0ymY7A", "width": 57}, {"as": "2pvOi5UG7agVhXIg", "caption": "oHE9eEvIyV2DqxWh", "height": 92, "imageUrl": "LgHPF5iRWnREifOF", "smallImageUrl": "JQwGPy5zGebVw9nL", "width": 43}, {"as": "eggvvmXZU7lVGZ6l", "caption": "Is17PXJ8KsgqGNM6", "height": 37, "imageUrl": "Rs0z2RYA8fTlbfUO", "smallImageUrl": "SmR4F0p5g7b3Megx", "width": 97}], "itemIds": ["puUZm1GVuI2Eihx6", "IJwMzUqM16MYY2MV", "vo3MMCL4aV6oMUzp"], "itemQty": {"MmsvvKTljWspMrC4": 94, "UcZy3DDSxpWZV6J5": 87, "FCWn7iOmKIN2roJN": 42}, "itemType": "COINS", "listable": true, "localizations": {"gEGzqDHdLpDjLIhv": {"description": "CNlBRcFsa03Nqu13", "localExt": {"LgD6kOUZXQKRTVR9": {}, "5IwPCb2qOuIRbBL0": {}, "njCbitEJNHwfW76v": {}}, "longDescription": "6GPVwWjIfhOXemeT", "title": "giENbhdRohucoiX0"}, "GAQZEbNr6VtQiKwK": {"description": "uIHMjiIjX7Eu0WCX", "localExt": {"d8GX7ygT5qlBekxw": {}, "9pO3vyRviPljDYdd": {}, "TDwgc6onXfoDvjI9": {}}, "longDescription": "jfJFTHcHvAfosnCX", "title": "qJplcwaBHILlCC7o"}, "vjEbjKrZ2d6IbWTf": {"description": "PplY43FQpfFWm8VM", "localExt": {"HjC8qrxvZsJd3RBY": {}, "L4PAqdviBvToSQ7E": {}, "qHUhHn1qP3G2kSIu": {}}, "longDescription": "rSOWI2donULQokdC", "title": "Ssp87x6Jfe5YAYJe"}}, "lootBoxConfig": {"rewardCount": 2, "rewards": [{"lootBoxItems": [{"count": 67, "duration": 68, "endDate": "1995-04-22T00:00:00Z", "itemId": "dtB5G8NITA0g58cq", "itemSku": "Zn79u2grirdqELbd", "itemType": "qXaPlAMGm4h3PbLH"}, {"count": 60, "duration": 65, "endDate": "1971-06-19T00:00:00Z", "itemId": "79hQA91csvlQSS6P", "itemSku": "yDb3vKbCw9eAGmM6", "itemType": "lPAJMizukBmcy1kb"}, {"count": 55, "duration": 100, "endDate": "1971-09-04T00:00:00Z", "itemId": "5FeKFm3raYpWl0Mf", "itemSku": "F3iAQb4Iiy26m51A", "itemType": "wCv4UKmP7eczfnYg"}], "name": "OqXhJZ6DIokID1ZF", "odds": 0.16469100990946672, "type": "REWARD_GROUP", "weight": 11}, {"lootBoxItems": [{"count": 89, "duration": 25, "endDate": "1985-03-22T00:00:00Z", "itemId": "HfId0Dhnin8RxnO0", "itemSku": "qs4FykFXDdcUuEE9", "itemType": "wh4CEOrPY29A1L1X"}, {"count": 17, "duration": 0, "endDate": "1975-03-12T00:00:00Z", "itemId": "b7GTIFWcZWKcGHG9", "itemSku": "MBp1AEcNUzfWwpdr", "itemType": "aZO1lfHzX5CHNiYa"}, {"count": 77, "duration": 95, "endDate": "1997-02-12T00:00:00Z", "itemId": "UlRZSLj5xwmP8QMJ", "itemSku": "JJn2Lqw6aiKZbUJQ", "itemType": "92BTViMMFji1Gmfm"}], "name": "whN25xGSRRZnwlbM", "odds": 0.5189603540879152, "type": "PROBABILITY_GROUP", "weight": 9}, {"lootBoxItems": [{"count": 9, "duration": 36, "endDate": "1995-06-08T00:00:00Z", "itemId": "4ccUhiQnHGDNXw2L", "itemSku": "4mp580sUSlEfC6ck", "itemType": "bV2y32kG5QTZnpxY"}, {"count": 0, "duration": 87, "endDate": "1999-01-13T00:00:00Z", "itemId": "jDp3LzelXaUz9AKo", "itemSku": "zXBA29DPhYa8Ksjf", "itemType": "nk7HKSWULkEKqQ4T"}, {"count": 29, "duration": 96, "endDate": "1979-09-08T00:00:00Z", "itemId": "WjpaECYi7fBJaU43", "itemSku": "PzOITmqjrcuIH9i4", "itemType": "ICwRHM518oPa2glj"}], "name": "6rHbkWMDSiPRcEyf", "odds": 0.01797927475107186, "type": "REWARD_GROUP", "weight": 38}], "rollFunction": "DEFAULT"}, "maxCount": 46, "maxCountPerUser": 62, "name": "LyVVZqZpYAdyPafG", "optionBoxConfig": {"boxItems": [{"count": 56, "duration": 27, "endDate": "1977-06-30T00:00:00Z", "itemId": "wnYRpUkTKjXxvgsl", "itemSku": "vMllaEVugbCEifQC", "itemType": "e5eN88Z7U1e8C1Hn"}, {"count": 35, "duration": 84, "endDate": "1975-09-25T00:00:00Z", "itemId": "SmShNaSmVFsmFW74", "itemSku": "DkabvmYAT6qTg6ZO", "itemType": "aTNC1LAentTXWyBm"}, {"count": 3, "duration": 65, "endDate": "1999-03-10T00:00:00Z", "itemId": "Ir2yOaVvE1N52Pwd", "itemSku": "eTQhMz99aZ3fza0r", "itemType": "lzqNhVNwgXBCZr4m"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 55, "fixedTrialCycles": 51, "graceDays": 94}, "regionData": {"E7fm00IB0YnQ5xpj": [{"currencyCode": "cMxUGokG4VQKR0It", "currencyNamespace": "cCnXFRjhk7tzIHqZ", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1974-10-26T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1979-05-28T00:00:00Z", "expireAt": "1977-03-01T00:00:00Z", "price": 47, "purchaseAt": "1974-07-20T00:00:00Z", "trialPrice": 22}, {"currencyCode": "Ufp7AVnf8BzBBqEv", "currencyNamespace": "MtJopw2r5pKsXnIY", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1989-12-07T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1974-06-06T00:00:00Z", "expireAt": "1990-10-07T00:00:00Z", "price": 82, "purchaseAt": "1990-05-22T00:00:00Z", "trialPrice": 62}, {"currencyCode": "Rw0xHZOUW3jlXYz8", "currencyNamespace": "azHYdzaYe7WjwoU2", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1992-01-26T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1980-04-29T00:00:00Z", "expireAt": "1974-12-02T00:00:00Z", "price": 26, "purchaseAt": "1981-10-19T00:00:00Z", "trialPrice": 93}], "F31EULHtVtkZrE0Y": [{"currencyCode": "PmtE6fcv3nPROvD1", "currencyNamespace": "FiqEUhsD6QxKzbZ7", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1982-09-11T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1989-11-03T00:00:00Z", "expireAt": "1996-10-23T00:00:00Z", "price": 42, "purchaseAt": "1991-01-15T00:00:00Z", "trialPrice": 1}, {"currencyCode": "N3IEt8vZSqh6SjLd", "currencyNamespace": "DyVf6irpvxpCXFlM", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1991-01-09T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1985-11-18T00:00:00Z", "expireAt": "1986-03-30T00:00:00Z", "price": 84, "purchaseAt": "1982-11-25T00:00:00Z", "trialPrice": 17}, {"currencyCode": "kgUfe6pVMS5m8aRI", "currencyNamespace": "ev5s4q7UwwraCDr3", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1972-03-09T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1992-06-02T00:00:00Z", "expireAt": "1972-03-21T00:00:00Z", "price": 92, "purchaseAt": "1991-10-26T00:00:00Z", "trialPrice": 94}], "lQDo4ih358Lf5RXg": [{"currencyCode": "VFrsR55cpOV3Qg6e", "currencyNamespace": "U0Mc21ZZliCydumM", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1988-08-13T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1976-09-30T00:00:00Z", "expireAt": "1997-02-10T00:00:00Z", "price": 65, "purchaseAt": "1997-02-17T00:00:00Z", "trialPrice": 1}, {"currencyCode": "bFTqXqdzpP7Rk1qb", "currencyNamespace": "FWhtwNaVCqf0vP28", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1973-12-21T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1984-10-09T00:00:00Z", "expireAt": "1971-05-27T00:00:00Z", "price": 42, "purchaseAt": "1987-01-27T00:00:00Z", "trialPrice": 87}, {"currencyCode": "R95sQ1FygQvoX9pE", "currencyNamespace": "J3R0cuQGjCShSTNy", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1983-05-28T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1996-11-10T00:00:00Z", "expireAt": "1985-11-28T00:00:00Z", "price": 68, "purchaseAt": "1987-11-19T00:00:00Z", "trialPrice": 0}]}, "saleConfig": {"currencyCode": "6M7OpcFqK4FBJG8B", "price": 12}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "SzytkPE6mw3Zv0zD", "stackable": true, "status": "ACTIVE", "tags": ["8gxMqM1wUdXsMjUb", "sQt5oimAfS3Sh33T", "ufYVdPwYmvZkT3zo"], "targetCurrencyCode": "hRjnDrYWlRfPpgHg", "targetNamespace": "36d9NP5nNvzIlwtY", "thumbnailUrl": "I9wKX9V1XxF2CFfE", "useCount": 32}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'UpdateItem' test.out

#- 114 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    '2178A4NUDAdwt7cj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'DeleteItem' test.out

#- 115 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '6v5DLEk9RkumkrnY' \
    --body '{"count": 79, "orderNo": "LksFD2le3UGhQnnm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'AcquireItem' test.out

#- 116 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'Mgk0WYv2NTpSejfb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetApp' test.out

#- 117 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'YniLmi1GQTjQVaJ9' \
    'ioRZ1HvMCIXTQG7A' \
    --body '{"carousel": [{"alt": "UUES36bRVaiOL6Q5", "previewUrl": "N2egLXRiNNV5Fy4i", "thumbnailUrl": "lLbKzQFBHQ0FHWOu", "type": "image", "url": "JcyaijSCsFa6ipRu", "videoSource": "vimeo"}, {"alt": "C1sZtVitkoRyEXWr", "previewUrl": "hLNPUvlrOA50xGdl", "thumbnailUrl": "q3Dkm52TA4zLBSh2", "type": "video", "url": "WgWvIZGJOPkJvsZh", "videoSource": "generic"}, {"alt": "DLeJwzbVEEQ0D6Rc", "previewUrl": "LpRxXCStzvOyY1tN", "thumbnailUrl": "KAVWv5cGRm3WTx0o", "type": "video", "url": "VMpRu5wP9CTLKxi1", "videoSource": "vimeo"}], "developer": "JeNxZdT1fZJTutZp", "forumUrl": "ZZn6egDbFDXW3N42", "genres": ["Action", "Action", "Sports"], "localizations": {"GURTnJUdR3MUQnEe": {"announcement": "ANANjqBdfMMU89e6", "slogan": "CIBWn2Q3kMtF5tiw"}, "PCAxM9oFcQUp7hrv": {"announcement": "KVNdGrr2TTTiTt8o", "slogan": "RoQRf0A1eAJUZSjW"}, "UPA9vXrqLxUCyNQU": {"announcement": "ITTM8jU9tfr6NkPj", "slogan": "b60b0Y8RDVgsQzae"}}, "platformRequirements": {"Ov7xB8GlNYJeVVZQ": [{"additionals": "H5C76GaeCobrGOAv", "directXVersion": "aYctXd3jNOlJBjBM", "diskSpace": "sJisMu1kQcGm0x3D", "graphics": "mUahjPVDOEmwpWiJ", "label": "YxvvQCHIreoYDgNe", "osVersion": "1RyydtCBznu3BT2f", "processor": "e68sGXFylcwoCMa2", "ram": "D9QtE0TKRHukM2BV", "soundCard": "Mu418S3o2DKmAp8k"}, {"additionals": "t8156L7Wl7UfG3Pb", "directXVersion": "sgYDgJ0JRrcPbe1R", "diskSpace": "EA4kpxN9tCjk58n5", "graphics": "fBl9xiCZH2KBHwuA", "label": "W3jLkVq9bAefBF8t", "osVersion": "iF7mi3iOrnB83a6h", "processor": "6dNfg9f25YsZ1L6I", "ram": "GHuO7u2tOUpmu6zU", "soundCard": "LXQMirzwMshTQYUn"}, {"additionals": "fHWyBg5c3Wq2dGyg", "directXVersion": "Lo40eCb82j4OhaAi", "diskSpace": "Wk4TKx1WRjiCokzg", "graphics": "7q7bMwxVAujRx0py", "label": "ulY8igLWA7yUanMI", "osVersion": "437Ne6WvRNtbN9Eo", "processor": "s8o1PdTDqm0SXzXN", "ram": "qw2oEptJsPYgvPnA", "soundCard": "lN2mJeW1LQJ8A7NZ"}], "LQPAny29oO2B8osf": [{"additionals": "AcB6Pd2uPwzliHiP", "directXVersion": "YuwUtR55gCTACz3a", "diskSpace": "Ld0f0QGkwoIQo88h", "graphics": "LxgR5AJVEz4FiSPg", "label": "U3FLs6LbIwwxFBW1", "osVersion": "RyUyU8GVL2TVivHb", "processor": "cJX1mqJ4BtZCHdlm", "ram": "Ozx9DrwT5dJMDgZP", "soundCard": "QtuRIVY69dhSr3Ji"}, {"additionals": "NweUidBVB2vTyC48", "directXVersion": "2FeT76mWyDrmG0FH", "diskSpace": "QOjtRg7ST2UVRJN0", "graphics": "qFJaGDiDmatCvCem", "label": "bJFNyIwxPt19hjyI", "osVersion": "7ALyZHQ8V4AejtUM", "processor": "6llcl5hdZoPhVcQ4", "ram": "wXeArPe089cqMuV8", "soundCard": "MLxiTO3GhLJ2qx2h"}, {"additionals": "93yz3Y7YtgdQMhzp", "directXVersion": "cpwawMF0j9IirMeP", "diskSpace": "7fy5Y0RiyzWJZAZH", "graphics": "klGmHH8I1l3xgoVy", "label": "EemJDvokY7UUVCHG", "osVersion": "WcVrHG4ehIhJk597", "processor": "xUXpiOLFQFxY4AHL", "ram": "zQnClUtkXb0SoMLq", "soundCard": "ijtgLSGTnWHCZ6Xw"}], "qnOeIUKAIvQjUxtk": [{"additionals": "82oOOkHmCFldZ0XA", "directXVersion": "vFitLhI0sqjfua9x", "diskSpace": "08SJmn2gM2q6wuaH", "graphics": "lnk9AFkbwVa7DCVe", "label": "gPEDDuHxwEbPLfnj", "osVersion": "lMfDJxP4S8TNhXBT", "processor": "iwS2sBodn1p1MJrZ", "ram": "v1itpBPRbtgUMFAc", "soundCard": "xhrY80cxjAXFOLYQ"}, {"additionals": "X2ryH4oq6fdhzarU", "directXVersion": "0VtmwcYLuVxqvaL6", "diskSpace": "vdJr0yQVV1r0LACc", "graphics": "KuAd2SElOn16dw0n", "label": "zH9XMG2c5BWrzKJ0", "osVersion": "Lj0VNzr8kTl05oiu", "processor": "bu5HHlb7VI1cHNU3", "ram": "pvbpyJTgwl3ZOMpz", "soundCard": "NQDtQNlDFMazvRX5"}, {"additionals": "v3UCobMU8bzcaf0Q", "directXVersion": "v0dFMnEcDHueqAKT", "diskSpace": "jdRpgYeuitqLYJ7E", "graphics": "9mP2Be9WZ9kuWMnR", "label": "cGzbD5iC34s0kTiX", "osVersion": "wPjN8E3wXz4Q1L3h", "processor": "AG9xOOi4DVUYo37I", "ram": "8Mgh1DJARpi5Kzpb", "soundCard": "DPfXdGvodrl6UOwY"}]}, "platforms": ["Android", "Windows", "MacOS"], "players": ["LocalCoop", "LocalCoop", "Single"], "primaryGenre": "Racing", "publisher": "JhzlgtX87XuWOIpQ", "releaseDate": "1982-05-08T00:00:00Z", "websiteUrl": "XwughkPLKDhdMf1o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'UpdateApp' test.out

#- 118 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    '4pweyQyv10mRO0tK' \
    '1CH6ozETFSgu96JY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'DisableItem' test.out

#- 119 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'KhAD9xM9T3YcYFOY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetItemDynamicData' test.out

#- 120 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'maaHSXapFLiHZfwc' \
    'mqpHRQcJzso1tgoq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'EnableItem' test.out

#- 121 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'syjuA8sqeXbV9I8y' \
    'o0u2hT9UYbm2BWjz' \
    'lqIA8csXOpDTl6yI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'FeatureItem' test.out

#- 122 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'wkTTCLlRCEQSp3Xw' \
    'OSNJT3B5f3ynPDyK' \
    'kSYIIOqTjadq7tSb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'DefeatureItem' test.out

#- 123 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'uLamxL9Ltl0k2ZOJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetLocaleItem' test.out

#- 124 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'HBnYPNYKWhYLsAlP' \
    'Zs4v14XFGIVeBHRe' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 73, "comparison": "isNot", "name": "BlzH9CrXX7cBfnjl", "predicateType": "EntitlementPredicate", "value": "6xZRHxnOP02x00Sv", "values": ["R2yNPms1DdUL5bc6", "QMB9TtHXqeaYlaYm", "2XGN51wxYTCHYaW7"]}, {"anyOf": 56, "comparison": "is", "name": "AFZnpxmzs0AQYJnB", "predicateType": "SeasonPassPredicate", "value": "ht4JsrC6ho0XSsR3", "values": ["Yms9fuih2WMLldox", "YLZHiFEo5sDrk8BZ", "HPQNrtkf3M9oI3ym"]}, {"anyOf": 20, "comparison": "isNot", "name": "nV4jAAxGZ794ngDQ", "predicateType": "SeasonPassPredicate", "value": "htIp1XL7HL2nKoPX", "values": ["OpaGFJniJl9RPULW", "xLMtU6hLliy7em6o", "x8O9f2ojEQrZ645L"]}]}, {"operator": "and", "predicates": [{"anyOf": 14, "comparison": "isLessThan", "name": "X6VHZOulL5KfkSA0", "predicateType": "EntitlementPredicate", "value": "z3euR4MhLQs8XliO", "values": ["9krylalbZWuO0OVw", "oWqixFdv5aDRSnCr", "IQ2kChyafmo2nIKr"]}, {"anyOf": 66, "comparison": "includes", "name": "gVcYdzd3mUKKxi2a", "predicateType": "EntitlementPredicate", "value": "aRVdR05rSilF29Lp", "values": ["B9r9MA5lA6x0lY16", "4rS3d2v2ibO04gNm", "g0zAUzpliq50demc"]}, {"anyOf": 85, "comparison": "isGreaterThanOrEqual", "name": "7PyBLX7knj7y5qEO", "predicateType": "SeasonPassPredicate", "value": "ERsKMCPmtnE1aHAu", "values": ["VZKYNaKhi81nO4RN", "cSjdGGqd31L6KqJT", "jvO8rZ5NL7EbburW"]}]}, {"operator": "and", "predicates": [{"anyOf": 62, "comparison": "is", "name": "T4vlBRDjj3FKvRIg", "predicateType": "SeasonPassPredicate", "value": "PaNJqIMDWJUW3I4S", "values": ["B3KkzIBx4VA9ZxbK", "Kjp0NOc5dWAES7S7", "wBqBe4F2z2u3wwUB"]}, {"anyOf": 88, "comparison": "isNot", "name": "luvKziVTCPTrqHc7", "predicateType": "SeasonPassPredicate", "value": "1dph0xgVXvWuSKho", "values": ["bkDwkEjOWWCzn2pa", "EvjRIcSa260P2hpj", "OQCljoyZp9rrR7RJ"]}, {"anyOf": 16, "comparison": "isGreaterThanOrEqual", "name": "YQEdyLRX3etMjv8j", "predicateType": "SeasonPassPredicate", "value": "uousRcrhXNAh3Cu4", "values": ["ou029lD9VLXNwkZW", "TbX0PZb0I9Qm4xKe", "k7ZAZJCk1fizRJy5"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'UpdateItemPurchaseCondition' test.out

#- 125 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'JoIlHjTZ4mDmXZIB' \
    --body '{"orderNo": "Ti05akxBYozWzUW4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'ReturnItem' test.out

#- 126 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'QueryKeyGroups' test.out

#- 127 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "RDVM8Y4PcXDH8RZq", "name": "UjELC82uP1nMUDAK", "status": "ACTIVE", "tags": ["EkOvO52VTPFFuLWL", "0HQkTuy4fU6Ejumf", "9ltGde7x4luTsEk9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'CreateKeyGroup' test.out

#- 128 GetKeyGroupByBoothName
eval_tap 0 128 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 129 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'TNqSiFJyMByoRKUr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'GetKeyGroup' test.out

#- 130 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'vfixr7UFzLzGaWok' \
    --body '{"description": "215MnSNTPMRaYf8C", "name": "hh5tiLsXIOSE2JSD", "status": "ACTIVE", "tags": ["lSX5uOgZ3Msm86Jr", "35oZQ3WcFld5DKwJ", "oCrYrlOXZN7MoQZD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'UpdateKeyGroup' test.out

#- 131 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'N1sjuHXDU9ZFHISu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'GetKeyGroupDynamic' test.out

#- 132 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'KMr6e9VKi3lHZdnY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'ListKeys' test.out

#- 133 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'zFYEnOA6gFO3zfSv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'UploadKeys' test.out

#- 134 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'QueryOrders' test.out

#- 135 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'GetOrderStatistics' test.out

#- 136 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'vmLgxlU5MdUdF7gH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'GetOrder' test.out

#- 137 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'dIf6eMd0iVUmBrFw' \
    --body '{"description": "FIESxo8uFqKtoZiV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RefundOrder' test.out

#- 138 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'GetPaymentCallbackConfig' test.out

#- 139 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": true, "notifyUrl": "ndNzIiCZiPRCujrj", "privateKey": "a26Ygd7A1555Biel"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'UpdatePaymentCallbackConfig' test.out

#- 140 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'QueryPaymentNotifications' test.out

#- 141 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'QueryPaymentOrders' test.out

#- 142 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "Ng6kfRgfnBT7OdjP", "currencyNamespace": "nywuIoLpkJEPfnaE", "customParameters": {"SuOM4olKFVsSfgNQ": {}, "jKhrrrStCg99ejNA": {}, "CAFAJlcWkS5jnhMZ": {}}, "description": "sQ8CVsHXHYBx7Kkp", "extOrderNo": "RAaivn5yFNSoKf7t", "extUserId": "dmVppuu6acpUdn8X", "itemType": "CODE", "language": "lKTj-TxKp", "metadata": {"O0CVqXF6bMzRd2Z2": "WjutGAptSES09ZcF", "GPCokMwrtVvGhHzN": "dHMJys9gtFxWSkvz", "QZjQrgnXc87G37jh": "ABEz5T57ICJiWEPn"}, "notifyUrl": "ZsQ3NsS8VgyzvujT", "omitNotification": false, "platform": "Q3yKCwV9chX3evM1", "price": 37, "recurringPaymentOrderNo": "NscwbXgdwQnMuRee", "region": "n3aYjhar5GRzOAfO", "returnUrl": "XbaEHFX0sySxhkhC", "sandbox": true, "sku": "EMbPRNKUABS8cyK8", "subscriptionId": "SnSvsUGLqYJevKKJ", "targetNamespace": "R5KWRgHuLJEAS7pS", "targetUserId": "DlIS4N3VRydtvWZZ", "title": "FDNIc86TKj3grgVd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'CreatePaymentOrderByDedicated' test.out

#- 143 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'qSpg9xpXCh79kxpJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'ListExtOrderNoByExtTxId' test.out

#- 144 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'yTba2Sx7lPUWhfLY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'GetPaymentOrder' test.out

#- 145 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'trkZ2V3jzXzilslR' \
    --body '{"extTxId": "zP96yJ7RbX8fkG3h", "paymentMethod": "cRbcSuSkd72wzQJj", "paymentProvider": "PAYPAL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'ChargePaymentOrder' test.out

#- 146 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'zjyRqefUM764xXmC' \
    --body '{"description": "kJL9p2OQ5Ll9C3fS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'RefundPaymentOrderByDedicated' test.out

#- 147 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'nntsqrUKREAt8zG7' \
    --body '{"amount": 79, "currencyCode": "pkApFODOqz4FKRWc", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 73, "vat": 85}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'SimulatePaymentOrderNotification' test.out

#- 148 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'IwzW53tKi9mxhR8R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'GetPaymentOrderChargeStatus' test.out

#- 149 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'GetPlatformWalletConfig' test.out

#- 150 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Other' \
    --body '{"allowedBalanceOrigins": ["System", "Playstation", "Epic"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'UpdatePlatformWalletConfig' test.out

#- 151 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Oculus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'ResetPlatformWalletConfig' test.out

#- 152 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetRevocationConfig' test.out

#- 153 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UpdateRevocationConfig' test.out

#- 154 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'DeleteRevocationConfig' test.out

#- 155 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'QueryRevocationHistories' test.out

#- 156 GetLootBoxPluginConfig1
$PYTHON -m $MODULE 'platform-get-loot-box-plugin-config-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetLootBoxPluginConfig1' test.out

#- 157 UpdateRevocationPluginConfig
$PYTHON -m $MODULE 'platform-update-revocation-plugin-config' \
    --body '{"appConfig": {"appName": "FEaTLz3hmDX1C9gH"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "8SS73LrEja3XlbCc"}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'UpdateRevocationPluginConfig' test.out

#- 158 DeleteLootBoxPluginConfig1
$PYTHON -m $MODULE 'platform-delete-loot-box-plugin-config-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'DeleteLootBoxPluginConfig1' test.out

#- 159 UploadRevocationPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'UploadRevocationPluginConfigCert' test.out

#- 160 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "LyDyLTQxmA6nDD3E", "eventTopic": "FfeJdwskeVjYAe1C", "maxAwarded": 82, "maxAwardedPerUser": 51, "namespaceExpression": "RQX4T37n6lgMV9tM", "rewardCode": "XN2kDg7INFTJO4FU", "rewardConditions": [{"condition": "T152zR0PBTEvM3Tg", "conditionName": "MsAS5t3TYXNAGl1x", "eventName": "y1H8Ag2XY2TnyPCV", "rewardItems": [{"duration": 38, "endDate": "1986-07-31T00:00:00Z", "itemId": "DZBwK4s4YGhc9qjs", "quantity": 66}, {"duration": 59, "endDate": "1984-02-08T00:00:00Z", "itemId": "Vwsfzatv4JzfVNAJ", "quantity": 3}, {"duration": 92, "endDate": "1983-10-31T00:00:00Z", "itemId": "uqGFaSZmLnl13Nth", "quantity": 69}]}, {"condition": "WQHXc3bRYKbJGFP8", "conditionName": "HZNLJ7aPbRMRrbKj", "eventName": "oifZAWt13ISgdwAu", "rewardItems": [{"duration": 25, "endDate": "1991-01-06T00:00:00Z", "itemId": "4Qo69tjPCe7O061S", "quantity": 4}, {"duration": 64, "endDate": "1984-12-09T00:00:00Z", "itemId": "Q7gSO3GHo6ESwn8o", "quantity": 40}, {"duration": 23, "endDate": "1981-03-01T00:00:00Z", "itemId": "o1B2P8cdPJAnmCFU", "quantity": 6}]}, {"condition": "vclqnTbyZ7fYvmiZ", "conditionName": "xdNpmibPCLiJaHXE", "eventName": "yuLQOO6qVUihFzns", "rewardItems": [{"duration": 76, "endDate": "1987-09-15T00:00:00Z", "itemId": "P3013gsIOArelbYw", "quantity": 17}, {"duration": 93, "endDate": "1972-06-10T00:00:00Z", "itemId": "msku6ryZK7UKLhMA", "quantity": 60}, {"duration": 84, "endDate": "1989-09-23T00:00:00Z", "itemId": "vA3stZ6FN0omme6H", "quantity": 17}]}], "userIdExpression": "PAnT6lHom6RSj2xF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'CreateReward' test.out

#- 161 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'QueryRewards' test.out

#- 162 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'ExportRewards' test.out

#- 163 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'ImportRewards' test.out

#- 164 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'FrIQFWJ2aMIxqQyc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'GetReward' test.out

#- 165 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'DpbOcYim2syYc8Yu' \
    --body '{"description": "KlQjnj5QjrVi62IT", "eventTopic": "Qp6NklXSUYkHNYqe", "maxAwarded": 32, "maxAwardedPerUser": 55, "namespaceExpression": "adIS0zRgire2ntrz", "rewardCode": "0FUDXjV0GmcFSjmJ", "rewardConditions": [{"condition": "GQU5YRHjMz3bo23S", "conditionName": "F3XkwdkgeNE7pA2B", "eventName": "mAcotg9A9VvbcAi4", "rewardItems": [{"duration": 3, "endDate": "1977-01-30T00:00:00Z", "itemId": "erX6wW5HLYxM5DN6", "quantity": 61}, {"duration": 91, "endDate": "1989-09-01T00:00:00Z", "itemId": "mnjBd7q6U3V1i7ip", "quantity": 14}, {"duration": 17, "endDate": "1990-01-06T00:00:00Z", "itemId": "VwAQMWoB0LkwHKKI", "quantity": 93}]}, {"condition": "1FnvTuTrRI8Z87U0", "conditionName": "Y5R6IUWUGWDcgSJ2", "eventName": "9TqsnbtXNBeq2uoL", "rewardItems": [{"duration": 70, "endDate": "1988-05-28T00:00:00Z", "itemId": "1xuey3fB1KN5EzSm", "quantity": 57}, {"duration": 30, "endDate": "1981-01-02T00:00:00Z", "itemId": "grIsaMHmzafNaxCN", "quantity": 70}, {"duration": 59, "endDate": "1984-01-17T00:00:00Z", "itemId": "vOh61wCAYs9Qae7T", "quantity": 63}]}, {"condition": "NARNfA4hpoNUAwaf", "conditionName": "K1QxxK2sBBkQz8nI", "eventName": "goYpZYIYto2cpXUn", "rewardItems": [{"duration": 19, "endDate": "1994-06-23T00:00:00Z", "itemId": "kXAEnU9CvpIjJ6tB", "quantity": 0}, {"duration": 10, "endDate": "1976-05-14T00:00:00Z", "itemId": "02r4dRvrKr07n72i", "quantity": 5}, {"duration": 79, "endDate": "1994-09-03T00:00:00Z", "itemId": "rg8RyI3bDBIKGiLS", "quantity": 34}]}], "userIdExpression": "HgWSAjBmziLkAEWk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'UpdateReward' test.out

#- 166 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'qMo2uv4G0hb2TC5z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'DeleteReward' test.out

#- 167 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'bxqSMQf3ZXRgmEXK' \
    --body '{"payload": {"PavNUDslWRgXzKcD": {}, "Ez6ivQvlpRKagGd8": {}, "OJWfXgBkof2DgN1O": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'CheckEventCondition' test.out

#- 168 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'HBaKIf5hoyD0oT4c' \
    --body '{"conditionName": "sEU6rwlyAZXRltXT", "userId": "Rz9WtMMb9e3S9biX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'DeleteRewardConditionRecord' test.out

#- 169 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'QuerySections' test.out

#- 170 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    'un5fD0BBCts02Kgz' \
    --body '{"active": false, "displayOrder": 12, "endDate": "1975-11-07T00:00:00Z", "ext": {"v6VDtGhPQu5IgTlv": {}, "O4wr8D7APHhihwdN": {}, "SBKpqJ8V1kQHisGl": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 44, "itemCount": 13, "rule": "SEQUENCE"}, "items": [{"id": "qa99UNyHIlnrLOes", "sku": "UoAwwCO2c7aEAHcp"}, {"id": "dx91UabvNvRaUrUq", "sku": "TcFsGXxjR7vTeNdf"}, {"id": "PVWmEdVFXX02sJsX", "sku": "g7AKOu2Xk8T0sqdm"}], "localizations": {"D20rolfU1yEokwoB": {"description": "SfRPMdPXru40VmHv", "localExt": {"paJ6EFG9wLOlD7N2": {}, "GNQs0IgMAbRc0I82": {}, "pjV4UBb0pZrHFxE9": {}}, "longDescription": "EAcMe8RHXnsxazB0", "title": "s0OGtkrGuIEzLqOE"}, "qdEcHbFrNLqqyBzP": {"description": "WvDsw3y3noSTunCZ", "localExt": {"N39o0vZqaSrHfwrq": {}, "qHXHpPnC56p62cEY": {}, "BMPDDNvuy4MWHW8Y": {}}, "longDescription": "W1euC0ubVpUB9WTn", "title": "YHGmKeMnGn3hXTX6"}, "5W9y7jKRgCFKj2fp": {"description": "aEDgvMXedU0CtjH3", "localExt": {"UPJy3CnYG5ypxMPX": {}, "Qb9Aa9QMoQgjOf0b": {}, "yuj8Uxptb2o5jdTr": {}}, "longDescription": "eVKh6flE9FaNdFDC", "title": "H0BMCufX5Ln9YKDy"}}, "name": "W9wNSXGvHGabfCge", "rotationType": "CUSTOM", "startDate": "1972-11-24T00:00:00Z", "viewId": "oyLHG52kcFEHKN66"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'CreateSection' test.out

#- 171 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'TOzJSyl83HhHTDHO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'PurgeExpiredSection' test.out

#- 172 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    '8mQoGOS84jEVRGn0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'GetSection' test.out

#- 173 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'aQHrmMgGX6WiX9WP' \
    'UEwP8KagnEKkfRnT' \
    --body '{"active": true, "displayOrder": 93, "endDate": "1985-04-09T00:00:00Z", "ext": {"nNuqrknaj1Fks8Oh": {}, "mWshFK5hyfwqkxFe": {}, "K2HSaUyXEOQUwXDX": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 78, "itemCount": 87, "rule": "SEQUENCE"}, "items": [{"id": "G1gDFutWedPpbBwc", "sku": "mRSOW5MFhNeBercY"}, {"id": "9DbSYPsKMU8ah8NJ", "sku": "xYKZWUVW9NyUUdkr"}, {"id": "KCCEaIUUwPgILFEn", "sku": "o141RnaYhr2WJyqC"}], "localizations": {"vAfWi7mDpF9Uxmju": {"description": "tqgr8019aVHHRLK0", "localExt": {"fv936lSL3gAK6QqF": {}, "lWlAR1frDQIVwmef": {}, "iYRytVWtyJI7ujeL": {}}, "longDescription": "0gjx8jAfmTLOwiBS", "title": "Se1E9DWrTYLcDOMW"}, "y0wefl1KKxNl1Bu8": {"description": "GE15JzEvFlzpDnYu", "localExt": {"SqynNlJACpHVndrA": {}, "R7z9J0bNuepqWsDL": {}, "jzow7MvJGnWbcVqe": {}}, "longDescription": "QS68NcKrOSqAvumN", "title": "XdNoD6gTOf0jHAc8"}, "PGncBz3SqYUIQnwG": {"description": "bMTiA96lnb5gdT3Q", "localExt": {"nV1lkyfpfTo2MX3Y": {}, "vlKKTkjhbq0eRvkB": {}, "W48O77tNIBYTFfPU": {}}, "longDescription": "rNUOX0haxwoUd3ez", "title": "YAdypb6oWXYIQqBI"}}, "name": "hw3NQXGJDWtQNJFH", "rotationType": "NONE", "startDate": "1980-01-11T00:00:00Z", "viewId": "djtVRUIv3uIM3CoS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'UpdateSection' test.out

#- 174 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    '6JahcK1Pr6BT8bcW' \
    '21yKVRUAUf5lebfP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'DeleteSection' test.out

#- 175 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'ListStores' test.out

#- 176 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "enWUEBZC8keF5vI1", "defaultRegion": "QiMb8GRzCETFWSfJ", "description": "vAnpvMcDHwA9mw8u", "supportedLanguages": ["jZZQUNi4NDzBP7mm", "M4ZrXjamc3OX9fjE", "zscuFPv5tNXWb8n1"], "supportedRegions": ["xyB1MxbBG0waudru", "dTuIy3VLkd3YGg9B", "zi8uluQOBuTuYNR4"], "title": "hzPkGOuDvT1kGGvs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'CreateStore' test.out

#- 177 ImportStore
eval_tap 0 177 'ImportStore # SKIP deprecated' test.out

#- 178 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'GetPublishedStore' test.out

#- 179 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'DeletePublishedStore' test.out

#- 180 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'GetPublishedStoreBackup' test.out

#- 181 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'RollbackPublishedStore' test.out

#- 182 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'pIGcvW7T4dk3MBzf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'GetStore' test.out

#- 183 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'rSZGlXPukj7q5MjU' \
    --body '{"defaultLanguage": "2f4833bcUoBfWLjR", "defaultRegion": "XOqaoDBgsPHcNg0B", "description": "apd2WF3ACWSPCOIe", "supportedLanguages": ["jZfSnIavouuFpqcq", "4Gd9fk7fhp8GNMEX", "4Ps5vorNX6W3h8It"], "supportedRegions": ["D6AFXbQvGbKVlE5V", "ulHAZZ2SKo1C0ktv", "mekdbic6I2n5Hclx"], "title": "6xvlDEhlvzVBqt9f"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'UpdateStore' test.out

#- 184 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'NnODJKrDdt60vGd1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'DeleteStore' test.out

#- 185 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'u3lR0fkCW4fYJAHm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'QueryChanges' test.out

#- 186 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'uYyTZt7v3mvPolaF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'PublishAll' test.out

#- 187 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'eEWrqYB9hLG74YMs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'PublishSelected' test.out

#- 188 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    '1JCrpnpPPUyyCN4M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'SelectAllRecords' test.out

#- 189 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'FXqnFzR6C20jVL8h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'GetStatistic' test.out

#- 190 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'eTq0Wmf80d7wzxTt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'UnselectAllRecords' test.out

#- 191 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'cIyIFNDIRhPIRCNW' \
    '8MLBfGHJseAA3xQG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'SelectRecord' test.out

#- 192 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    '5zPNH4eYMWbtvk7O' \
    'oIixOGXwFzXjpSLy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'UnselectRecord' test.out

#- 193 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'jqaJnmx4p5ShR3fI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'CloneStore' test.out

#- 194 ExportStore
eval_tap 0 194 'ExportStore # SKIP deprecated' test.out

#- 195 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'QuerySubscriptions' test.out

#- 196 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    '6ZeDWbxHSLn6kQxq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'RecurringChargeSubscription' test.out

#- 197 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'K7yxoQHX7XexjvW4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'GetTicketDynamic' test.out

#- 198 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'rZ57Ra4Wlon8ZzeH' \
    --body '{"orderNo": "gabbmT81jfik6ShL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'DecreaseTicketSale' test.out

#- 199 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'jJbf174MCR5ZpvlW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetTicketBoothID' test.out

#- 200 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'XRfEoUuNmQrq6p7W' \
    --body '{"count": 35, "orderNo": "VUNHtfbgUqbLQ3WT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'IncreaseTicketSale' test.out

#- 201 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'ZF8gP7LgkxhkSSID' \
    --body '{"achievements": [{"id": "9PxPyXJHsWipvZAN", "value": 32}, {"id": "p1ILBujZh8S62GO3", "value": 59}, {"id": "H2Pz5V5CtSrcX7aR", "value": 85}], "steamUserId": "xZgIUMxGfQHmg4I1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'UnlockSteamUserAchievement' test.out

#- 202 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'PJybUmpLmiuZGk2G' \
    'g0Um3ITROznZA6EV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GetXblUserAchievements' test.out

#- 203 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'EXEqkFFyGp6XhgI2' \
    --body '{"achievements": [{"id": "SuEyr4hactAHdK0X", "percentComplete": 79}, {"id": "OZKu6MmVxEFptfSF", "percentComplete": 96}, {"id": "dJoKmyaU7qTgHxGQ", "percentComplete": 48}], "serviceConfigId": "Dm2YoSLUIzzQsIU3", "titleId": "IZf93pQmmWWhMnRS", "xboxUserId": "n6PRk0DwXkYJ6aX6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'UpdateXblUserAchievement' test.out

#- 204 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'XRSXg6OXqwh2Uj0I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AnonymizeCampaign' test.out

#- 205 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'ZZFXv7pY5cNIYdQR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AnonymizeEntitlement' test.out

#- 206 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'ni6IfH05hVdagEET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AnonymizeFulfillment' test.out

#- 207 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'j8DNzQF9Ywa1VlJB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AnonymizeIntegration' test.out

#- 208 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'mSCpF2z5O9ugNuq4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AnonymizeOrder' test.out

#- 209 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'uGu9km7KeyQB3SUe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AnonymizePayment' test.out

#- 210 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    '4ug9J3KKHHaSwFS7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AnonymizeRevocation' test.out

#- 211 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'fAGmA4gy2QBm02aT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AnonymizeSubscription' test.out

#- 212 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'dgp0WcRdrrdOKQbX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeWallet' test.out

#- 213 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'XiMg5RAaD5a0gqya' \
    'OCULUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GetUserDLCByPlatform' test.out

#- 214 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    '2jWyKAzXYP9kO0rm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GetUserDLC' test.out

#- 215 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'onOpgtONmMvrDH4I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'QueryUserEntitlements' test.out

#- 216 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'Xc6tn8XayBI734jC' \
    --body '[{"endDate": "1994-04-19T00:00:00Z", "grantedCode": "SnRqHTWC4NCbltix", "itemId": "kXwXO0XemKHsUC5w", "itemNamespace": "7fmzF80bbGhU1pjV", "language": "Aot_ScUv", "quantity": 65, "region": "cqQVkSIXLGF8dtk8", "source": "ACHIEVEMENT", "startDate": "1975-05-17T00:00:00Z", "storeId": "ld3LWFhC1kBUvsUc"}, {"endDate": "1978-12-01T00:00:00Z", "grantedCode": "Re3F78EGvZd49hW9", "itemId": "5i4Rm9sBef6ymEEU", "itemNamespace": "6G6YVa5GGFvLtWl6", "language": "exbw_VbVW-532", "quantity": 62, "region": "CG4IGPYHaRvV3JGi", "source": "REDEEM_CODE", "startDate": "1976-06-21T00:00:00Z", "storeId": "G5NBtXVTXK1JdoCl"}, {"endDate": "1993-11-18T00:00:00Z", "grantedCode": "QGLneKl3iXOvSGgZ", "itemId": "zuoTiOgT4AtBZJsM", "itemNamespace": "BPDcUuWC1NgHaxQl", "language": "zTr-NnFa-Xh", "quantity": 91, "region": "PB0iJF96NG7vODPm", "source": "GIFT", "startDate": "1997-04-14T00:00:00Z", "storeId": "VxSVRWxJw7idbmOx"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'GrantUserEntitlement' test.out

#- 217 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    '0vyaMbcnlyBvXdpo' \
    'YVZKx8oPBJncKdya' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'GetUserAppEntitlementByAppId' test.out

#- 218 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'bXymlDvbcApuoA5P' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'QueryUserEntitlementsByAppType' test.out

#- 219 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'nk9iEaqudy3aYo02' \
    'pzHannSLeEYvuciy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementByItemId' test.out

#- 220 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'nwWb01HLrp6OW9Y7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'GetUserActiveEntitlementsByItemIds' test.out

#- 221 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'FIIEJMm4Kizs3NRb' \
    'yYMyWPHp8NpreWtV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'GetUserEntitlementBySku' test.out

#- 222 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'tRQu0coThNxwnnpo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'ExistsAnyUserActiveEntitlement' test.out

#- 223 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'M2KSoHlpDFImJNov' \
    '["lZq1O6RDUgilQHCt", "s6SUNxUWIGSkxjKL", "3EiP6WeXWf3dBAVf"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 224 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'IM2oLFaTIhv5XrQv' \
    'TAdisxP0DyxqSYeC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 225 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'l4gEZgIMDALa4nsI' \
    'TUeFKNh8kgmMjBxD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GetUserEntitlementOwnershipByItemId' test.out

#- 226 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    '74LujtGQD9sT5LHk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'GetUserEntitlementOwnershipByItemIds' test.out

#- 227 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'WjFIo6VbU9gwMgZP' \
    'R9Q5Lstog0ehjEmc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'GetUserEntitlementOwnershipBySku' test.out

#- 228 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'jJzkf7rNu3ZARHXZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'RevokeAllEntitlements' test.out

#- 229 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    '5yuJsfxI3zuYwCYQ' \
    'w4Rr3lmeyijwD3pY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'RevokeUserEntitlements' test.out

#- 230 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'ZEoKfBV4CX15snBg' \
    'mflygDW6ab0RoZeM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlement' test.out

#- 231 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'IFYmEraqGPOCMPGt' \
    'Rg0HGzSGs8nBUQVB' \
    --body '{"endDate": "1980-08-19T00:00:00Z", "nullFieldList": ["F03D5vkAkZ8CS09f", "FrbdregZfA6pBIXq", "oaoYoHcrIwc6qkDf"], "startDate": "1999-07-09T00:00:00Z", "status": "ACTIVE", "useCount": 17}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'UpdateUserEntitlement' test.out

#- 232 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'eJuvLmou5AtB5J9X' \
    'xYqy0HcWUCcahA1t' \
    --body '{"options": ["jiBugkSmA8prRvnu", "oHm9foRLP4zSxApJ", "e0aplQXEaoGjonwK"], "requestId": "DYwjvKhxwtaxd74b", "useCount": 63}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'ConsumeUserEntitlement' test.out

#- 233 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'gZby9mBdGrJY5J0e' \
    '9jWcVTCNxjdv8Gxh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'DisableUserEntitlement' test.out

#- 234 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'JoB4lAkbm1Abh9Qx' \
    'LBfhpOp8UlDmFYNB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'EnableUserEntitlement' test.out

#- 235 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'SDEgsUMikj8NQNDl' \
    'hAhwAc8mPZRlleng' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlementHistories' test.out

#- 236 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'CdfKGCBZMAbJnqDK' \
    'uBGWmZti7VJ7O7dN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'RevokeUserEntitlement' test.out

#- 237 RevokeUseCount
$PYTHON -m $MODULE 'platform-revoke-use-count' \
    'zDBzVmGSholl8uD1' \
    'hpBtpd4eLc1PpHJm' \
    --body '{"reason": "rL7AZ1MKcHBB1Afy", "useCount": 92}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'RevokeUseCount' test.out

#- 238 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    'CDlWZzqpJeQd6tN5' \
    'oH4E7JosGEpOKUFW' \
    --body '{"requestId": "LtsLf278ybCNhF9R", "useCount": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'SellUserEntitlement' test.out

#- 239 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'mv1XM6sr8tSaA0g0' \
    --body '{"duration": 83, "endDate": "1990-08-19T00:00:00Z", "itemId": "UkLLTNMnmlFzzwpE", "itemSku": "ZwbcCEsJIB0JkRcY", "language": "hCT3pUMiOk2aKaj7", "order": {"currency": {"currencyCode": "wqr7wwPCgByCnljJ", "currencySymbol": "7CYvapWO5JGco1tR", "currencyType": "REAL", "decimals": 92, "namespace": "viuYwQTHKPcc8Z82"}, "ext": {"WtwcihC87O1U2uYk": {}, "tiAFqIsHod9kt3xk": {}, "RSajXSTpU3aCkzqs": {}}, "free": false}, "orderNo": "CBnIHoRNWTVvIN7c", "origin": "Oculus", "quantity": 41, "region": "F6HtcJbqjCZkEvdW", "source": "IAP", "startDate": "1976-10-02T00:00:00Z", "storeId": "PrZA5UWNq6yTj5WS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'FulfillItem' test.out

#- 240 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'T6JF9lLvPS5jJ58v' \
    --body '{"code": "aRaaxVQeMUb1kvSj", "language": "JVC", "region": "lxGsLgfrhBTH1QV9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'RedeemCode' test.out

#- 241 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    '1XmB5Z6en6c5d620' \
    --body '{"origin": "Playstation", "rewards": [{"currency": {"currencyCode": "9addYCAtuTx2FKoG", "namespace": "RQ2i1n2WJVJy6yBP"}, "item": {"itemId": "VmpbwVG3MwHy6yQU", "itemSku": "2RSNGWKnNDFZOok9", "itemType": "snWC9CFiRmbELIza"}, "quantity": 46, "type": "ITEM"}, {"currency": {"currencyCode": "fXvKu5UsuFOUXohE", "namespace": "HKCKphTiityfpZix"}, "item": {"itemId": "QMzfhG3hC9Be3Cvn", "itemSku": "1QymYMLAdBSViPHK", "itemType": "LXkQVWSLbAXxxeat"}, "quantity": 0, "type": "CURRENCY"}, {"currency": {"currencyCode": "ll18E5J9knaLMlve", "namespace": "XWFZqotaiZN3MPuY"}, "item": {"itemId": "Wk5lHvw9RXrx8aUB", "itemSku": "1xXuK2MwrRJukMTk", "itemType": "O00KLgddr0UUiy5j"}, "quantity": 25, "type": "ITEM"}], "source": "IAP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'FulfillRewards' test.out

#- 242 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    '2g65JkaoPuBsuSb0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'QueryUserIAPOrders' test.out

#- 243 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'LePf5b8MJ94DAh1M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'QueryAllUserIAPOrders' test.out

#- 244 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'c7VkHxj8k5KSFtbE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'QueryUserIAPConsumeHistory' test.out

#- 245 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'oEr5LqKRRnKy17sB' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "Yb_fHMP_JJ", "productId": "XYzZLlLq8lPGFyb3", "region": "4DDyqvcwQ3uBzBm3", "type": "OCULUS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'MockFulfillIAPItem' test.out

#- 246 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    '5IU5aZu5bRvxm9KY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'QueryUserOrders' test.out

#- 247 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'r60SyfWNB8u5Qlf4' \
    --body '{"currencyCode": "KGo0N4g7UWRzPsMd", "currencyNamespace": "90Jrkh4kaHSpxt9C", "discountedPrice": 99, "ext": {"sgk5cHaJYkzClqPt": {}, "y2kxgyry1MM9eo43": {}, "Qi5cRehBB7o24lw2": {}}, "itemId": "1Z3nE04Cbkpn0yX4", "language": "4aL9f0QyO5YXVhTi", "options": {"skipPriceValidation": false}, "platform": "Steam", "price": 46, "quantity": 76, "region": "WKnEeaUdAmgmnzKS", "returnUrl": "VlXsRNMykbnHTrHL", "sandbox": false, "sectionId": "N2N47HbR5lY76lAz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'AdminCreateUserOrder' test.out

#- 248 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'KbyHphqwB5Iehzt3' \
    'ErL5T5rvBRXJxUvm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'CountOfPurchasedItem' test.out

#- 249 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    '1xIvCywA95KVla3L' \
    'CTgTkPtcVfRHox2l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'GetUserOrder' test.out

#- 250 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'Jjo1I9gluGDrbO6C' \
    'oGGaGBbMIhMZL5o3' \
    --body '{"status": "CHARGED", "statusReason": "TmMVfQaiQKdHknLo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'UpdateUserOrderStatus' test.out

#- 251 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'tplfBOvsb9aicyaj' \
    'UNH4cyuoR5YkRhK1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'FulfillUserOrder' test.out

#- 252 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'PGfmAnDGtInmyZkH' \
    'QxUB5U4Qk0fD8Gqt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'GetUserOrderGrant' test.out

#- 253 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'XguE8Xvdv1azJ2OS' \
    'kJGMDAkWOP9y3eP2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'GetUserOrderHistories' test.out

#- 254 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '0aRJVXYPkIGnj7nG' \
    'zgSkTy0cIm2Tc4sb' \
    --body '{"additionalData": {"cardSummary": "YVp7amyDRQk3QGp0"}, "authorisedTime": "1981-03-20T00:00:00Z", "chargebackReversedTime": "1984-10-20T00:00:00Z", "chargebackTime": "1984-03-28T00:00:00Z", "chargedTime": "1982-08-06T00:00:00Z", "createdTime": "1974-01-01T00:00:00Z", "currency": {"currencyCode": "HDDNDVgExcmm4fko", "currencySymbol": "NMVNk6z4A3FI60uU", "currencyType": "VIRTUAL", "decimals": 70, "namespace": "VMjqwLfyh5UUBSKy"}, "customParameters": {"enhZ56H3l3jc1060": {}, "kqFKNcGHYIXDqQpO": {}, "Y256yQcC8CPFXan7": {}}, "extOrderNo": "LUfcQhcxynrF5qWY", "extTxId": "vJX1f7rYnPbkDk5g", "extUserId": "9y47AVCmFD0nKyUw", "issuedAt": "1972-09-27T00:00:00Z", "metadata": {"I9KJZt31la1wZgpP": "XxtcOPw0UBm7wccE", "LVo9RYTquwIrGgk3": "eqgOf7WwNZWyYuM3", "y1TjdcOVw94gqQYO": "WGw7LSW6Kb9otdVB"}, "namespace": "jacY5doQGhc8zSCe", "nonceStr": "J4Q8PHY6vGzNfPWT", "paymentMethod": "Q1pJMwPVAUNYFOg7", "paymentMethodFee": 93, "paymentOrderNo": "g5iDNLOJJmzGW9AQ", "paymentProvider": "XSOLLA", "paymentProviderFee": 60, "paymentStationUrl": "JuzB1jbh95vj0V2c", "price": 5, "refundedTime": "1979-12-20T00:00:00Z", "salesTax": 18, "sandbox": false, "sku": "AJ6lYOK3cwO9ln34", "status": "AUTHORISE_FAILED", "statusReason": "FIVfHyAiTeDDuvgK", "subscriptionId": "TfrZ6TfrQrFIsYsZ", "subtotalPrice": 7, "targetNamespace": "1hD1ZHh1VjLqa0AO", "targetUserId": "DLarMcrlOCtMCyPH", "tax": 27, "totalPrice": 19, "totalTax": 90, "txEndTime": "1971-06-19T00:00:00Z", "type": "fdfxyqKQ4YNnTTwZ", "userId": "euX7f9iY3skbk25j", "vat": 78}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'ProcessUserOrderNotification' test.out

#- 255 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'VrdNH8v1oP98hanh' \
    'E18UbY1Zkrfk0Xn6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'DownloadUserOrderReceipt' test.out

#- 256 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'jwfR02GfMrXzI7oW' \
    --body '{"currencyCode": "D1mZ9rW6QdtPe4Yl", "currencyNamespace": "eMg5NGs1Pmz6Ameb", "customParameters": {"h0FbOWyhAnMP6BdB": {}, "w6d4UOI7Tr9NHcXe": {}, "EWIpyYx9wOuNquv2": {}}, "description": "qkqRR9Nwd8OrgT5H", "extOrderNo": "MaelKs3hdNcCPnrm", "extUserId": "ZDNctQe0IM586qYd", "itemType": "SUBSCRIPTION", "language": "WL", "metadata": {"RITEU7usHknnfYNY": "7ZXicpAJw7Ct9AmE", "oUNlmQjebaV8c13F": "ZxX6qNntgmml0ts1", "uw7WvaRDN6waXRBR": "T78fZc6LpvtY7Bk3"}, "notifyUrl": "j0Rt5ai8x1JHTPfA", "omitNotification": true, "platform": "k2jDkPq7n0VqgiBJ", "price": 37, "recurringPaymentOrderNo": "BwC4MOmSF5ZPpYXT", "region": "bgh3hVKyU97N87zJ", "returnUrl": "HVwE86VYnuoHevgj", "sandbox": false, "sku": "ralh2tjIEDpjLJD7", "subscriptionId": "E0dh077pXU34waII", "title": "RxeTkl27M6AggzKZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'CreateUserPaymentOrder' test.out

#- 257 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '3nqWutrpjBOnBeqw' \
    'BnFdy01mQjVblM1G' \
    --body '{"description": "nFG6ePpjPG4iKj1V"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'RefundUserPaymentOrder' test.out

#- 258 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'xNoFLwY2aYPpdsN5' \
    --body '{"code": "5f9R3a5ZvIk8F6ff", "orderNo": "aPP2hJSGfW6ap0ws"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'ApplyUserRedemption' test.out

#- 259 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'dPdG1EQTyBW6pf9N' \
    --body '{"meta": {"i5L9NkvuqwvTTB6l": {}, "W4R7V4J46ZNRNpLc": {}, "I8Vh4bQO4Nc65zcF": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "vXvIgvIynEaAcX7f", "namespace": "XbKWmraqNIKPX6gP"}, "entitlement": {"entitlementId": "HT29wkZwM8cvObRj"}, "item": {"itemIdentity": "Kxi25l9mb1mSJffU", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 78, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "S3gf5tl2wHKp1L42", "namespace": "H1n3ZvUrBoqK16bt"}, "entitlement": {"entitlementId": "U6SoaoiAtMgNN8B4"}, "item": {"itemIdentity": "oo9jFmBqiyicQHvr", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 89, "type": "ITEM"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "SRyjx0xgbEuoPqi7", "namespace": "9JLKHle3po9nK2Mn"}, "entitlement": {"entitlementId": "WISZ8LUxYanMQUFa"}, "item": {"itemIdentity": "ZF74RbeEi4WAntBd", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 6, "type": "ITEM"}], "source": "DLC", "transactionId": "EofyiS3dO8j3taWb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'DoRevocation' test.out

#- 260 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    'ShXMN0MRNkMX09nQ' \
    --body '{"gameSessionId": "EwFSce6VsIsSSdkP", "payload": {"3IqaPaXJc57cVP8t": {}, "XCteutO2hlDa0voH": {}, "7Al8vuxWTaiUJpIg": {}}, "scid": "LrblSQiwrmWKb8Ih", "sessionTemplateName": "CNJqtCtGvxKwuL3M"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'RegisterXblSessions' test.out

#- 261 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'uhHXzy6WjNeNYuVW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'QueryUserSubscriptions' test.out

#- 262 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'rqxrNDhsaw4vbDPK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'GetUserSubscriptionActivities' test.out

#- 263 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'G9aUuCw1ys0BxLbu' \
    --body '{"grantDays": 20, "itemId": "tZknu6Ke0rhmQrBL", "language": "ti0OZtmm5xYReY6S", "reason": "gfTy3HUPSrR6V6wT", "region": "NktWOwGcqmkqou4I", "source": "X6ynCg7jZBPZUjh5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PlatformSubscribeSubscription' test.out

#- 264 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'Id1WwN3o2LnIKn5b' \
    'M9rW10Xi6WV5MHuv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 265 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'Bu2QQOXQatBE5QBI' \
    'DADPTgsgo0iTCIEK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'GetUserSubscription' test.out

#- 266 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'HYwj85RIJjlQAk4T' \
    '5By0AqALCR39RH5U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'DeleteUserSubscription' test.out

#- 267 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'cRubJZYIgyBXZfTm' \
    'D5U7RTvIuyjoeXOE' \
    --body '{"immediate": true, "reason": "AR7ULC1He2xJmIQ7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'CancelSubscription' test.out

#- 268 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'lG3SSfJb7YC46l63' \
    'YRc0T3d9XaFEWXtv' \
    --body '{"grantDays": 93, "reason": "1SrgLn5lUQ3Mt9iy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'GrantDaysToSubscription' test.out

#- 269 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'e7Sb3gSolD6u7wIc' \
    'iVVHoFtt4AP9G3Hy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'GetUserSubscriptionBillingHistories' test.out

#- 270 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'BugfReiDLdSTRmEl' \
    'GhVQf227V7ADaQHt' \
    --body '{"additionalData": {"cardSummary": "78b3DT7qRYPx0W6c"}, "authorisedTime": "1996-03-19T00:00:00Z", "chargebackReversedTime": "1984-07-18T00:00:00Z", "chargebackTime": "1991-04-19T00:00:00Z", "chargedTime": "1972-12-27T00:00:00Z", "createdTime": "1987-01-30T00:00:00Z", "currency": {"currencyCode": "XLsEc8XzmjXX4csM", "currencySymbol": "laBkq9QHEb66Bo3A", "currencyType": "REAL", "decimals": 6, "namespace": "EEm2g8JpfOhv1dFm"}, "customParameters": {"mwcX8cRQpNggDqIf": {}, "B0DPn1CZrBaO9y4C": {}, "HHaydtaKJNujTvCD": {}}, "extOrderNo": "wyDu1QGAcJRAK1mg", "extTxId": "Nt0pudyASz9qbHEs", "extUserId": "bgt8Nb6qoNGzjQQD", "issuedAt": "1982-08-22T00:00:00Z", "metadata": {"Sc4DTbergyuPtRgn": "6fWMWqZYmAvVETTs", "jp3kTD5DUdBvhgsf": "cLURAHqkEpmWErwM", "kbsCK44WEKYCuqx8": "xzh9bTsHGm5hk6Yp"}, "namespace": "n8KsMKfuARcHovGU", "nonceStr": "ZSzWfq3hqssnqUPI", "paymentMethod": "JabCPMhqOeDXc5LH", "paymentMethodFee": 47, "paymentOrderNo": "GL7YAU5AnUkmfVW9", "paymentProvider": "STRIPE", "paymentProviderFee": 41, "paymentStationUrl": "W1tXAOpK37SfSPiv", "price": 24, "refundedTime": "1982-11-28T00:00:00Z", "salesTax": 48, "sandbox": false, "sku": "19GWm87P1GbEQA6n", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "LGz2Km7DEtivDSv0", "subscriptionId": "mmNGIWjV9L9aA57k", "subtotalPrice": 89, "targetNamespace": "e4TX4CK4IBY01KuF", "targetUserId": "bs8Iv2Ij9B7VD3Sy", "tax": 89, "totalPrice": 47, "totalTax": 34, "txEndTime": "1994-10-20T00:00:00Z", "type": "CMUtsTLoeVLjxbwU", "userId": "QUVEWE0xtN3v8DgF", "vat": 96}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'ProcessUserSubscriptionNotification' test.out

#- 271 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'WomHQ23RrmGI0fa4' \
    'tSghREoTAvCltzrU' \
    --body '{"count": 92, "orderNo": "b2MtSEiRgh67ylD9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'AcquireUserTicket' test.out

#- 272 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'xIb44v71qZ2QmEuN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'QueryUserCurrencyWallets' test.out

#- 273 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'VKEmoFSme2B5xb6k' \
    'bzroGyrFwTSdzLOX' \
    --body '{"allowOverdraft": true, "amount": 92, "balanceOrigin": "Xbox", "reason": "ZfZ5duijZETizaQi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'DebitUserWalletByCurrencyCode' test.out

#- 274 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'xMgpWQ9PgUcB3N69' \
    'aWeqMy8NAiT9jmCg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'ListUserCurrencyTransactions' test.out

#- 275 CheckWallet
eval_tap 0 275 'CheckWallet # SKIP deprecated' test.out

#- 276 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'wDPgvbhdCorBgPIE' \
    'GgJfwbFJ8VUxv8qZ' \
    --body '{"amount": 19, "expireAt": "1984-08-01T00:00:00Z", "origin": "IOS", "reason": "LIoUy5BK25PGFQBJ", "source": "REFUND"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'CreditUserWallet' test.out

#- 277 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'nhR8gT3if17nsndh' \
    'y0Gtga4xRRNit3Ap' \
    --body '{"amount": 49, "walletPlatform": "Playstation"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PayWithUserWallet' test.out

#- 278 GetUserWallet
eval_tap 0 278 'GetUserWallet # SKIP deprecated' test.out

#- 279 DebitUserWallet
eval_tap 0 279 'DebitUserWallet # SKIP deprecated' test.out

#- 280 DisableUserWallet
eval_tap 0 280 'DisableUserWallet # SKIP deprecated' test.out

#- 281 EnableUserWallet
eval_tap 0 281 'EnableUserWallet # SKIP deprecated' test.out

#- 282 ListUserWalletTransactions
eval_tap 0 282 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 283 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'ListViews' test.out

#- 284 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    'nc4UqgNJcVC0MQnj' \
    --body '{"displayOrder": 96, "localizations": {"jVciAVrPuzKV1Wj7": {"description": "J3QrgnhZMehNOncX", "localExt": {"NM18ZiBLaa5iN5b6": {}, "ODd1kj4Qj6RS5aO2": {}, "56ceteBSz425Kp2P": {}}, "longDescription": "GW8gpXu2mBdRvF84", "title": "eD5m02245YlrGlfg"}, "rzLifZvRPXjiYCPM": {"description": "52HK8ASyze4T9TmQ", "localExt": {"upOzuaRV8Vw1OuyV": {}, "C7JcK5UdheuW7HOM": {}, "ooXzmW321H7CGe7B": {}}, "longDescription": "lGbNTtvAEsQs0WkD", "title": "6Y555p9oqb5MeMGL"}, "8kITGmF087BWKC6w": {"description": "zHgwFqS6c2YCA1r3", "localExt": {"12BKDvA3YyGsBgTJ": {}, "Cc6734MnrbjAM32R": {}, "lQ3Wpg0XNZCsESCH": {}}, "longDescription": "RPA5OQX8twQrDu49", "title": "JFXjPc1tJBaHYTZ2"}}, "name": "IdgUYmmt7HXJCUjw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'CreateView' test.out

#- 285 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'NMnmrmR9dDVbvyNu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'GetView' test.out

#- 286 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'pYCzyYEaMgXsszL7' \
    'hpsSwAQxtDEUm4Pn' \
    --body '{"displayOrder": 94, "localizations": {"ZYjakKtgPfJHbuwF": {"description": "3aZQrVPWyZpnVjbp", "localExt": {"otD8HTOOdvA4UhdT": {}, "Y2DNsFuGcD5vraJ3": {}, "WftgZ43r4ZLb7i2S": {}}, "longDescription": "ZkIaANvZ0I2EGVDW", "title": "s67zwXLLDtNRfmo1"}, "w8aAcuRQzdYhuES7": {"description": "BncXfilyRfU4YHfM", "localExt": {"pHxEcJG7c76AToup": {}, "2zhRng3KibPdtHZP": {}, "Kb8CPLdIk4I9TU6F": {}}, "longDescription": "vvEdqHzEDtl5oR9m", "title": "1dm3fGK1wINqvFrA"}, "srmYYu40w6szojkv": {"description": "jtacFSVTvgh23BGE", "localExt": {"a5ftmSBKQ3zAXk9q": {}, "VrzEqsDwIwRyHKWs": {}, "pPtJlLDOjXTWGIrW": {}}, "longDescription": "q2VvH0roA20Sfzrc", "title": "9YYsgvVLN3usfhiy"}}, "name": "Cf1FOddxtE52sFK1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'UpdateView' test.out

#- 287 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'jNp3OwcrNR2jH7Xx' \
    '7m8IqIRyUqaCbbMa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'DeleteView' test.out

#- 288 QueryWallets
eval_tap 0 288 'QueryWallets # SKIP deprecated' test.out

#- 289 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 79, "expireAt": "1984-05-10T00:00:00Z", "origin": "GooglePlay", "reason": "A5f61ztkSpGmf8BX", "source": "IAP"}, "currencyCode": "LGzEglEe95LWKrkj", "userIds": ["k0t9aquw2B2UVIQM", "7TPuigp3RiJofgD4", "VypGT4cTfKNrjPqU"]}, {"creditRequest": {"amount": 56, "expireAt": "1997-09-26T00:00:00Z", "origin": "Steam", "reason": "fBc64zDQawQPbbbH", "source": "REFUND"}, "currencyCode": "LeKM4cQl8DlY91SX", "userIds": ["BeHwrkPCaAycmEvk", "3rVTLjZT9qayJJtW", "8sqkuIBd1NrGWPVv"]}, {"creditRequest": {"amount": 85, "expireAt": "1993-02-27T00:00:00Z", "origin": "Twitch", "reason": "MTdfTjLVxzjyQsgv", "source": "PROMOTION"}, "currencyCode": "n6Vn7Tiakc1Rzb4M", "userIds": ["aQ7gPgiz2EBME5ik", "CHH4aATHwPTM0Lfc", "jvOko7332ZZa1Yfu"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'BulkCredit' test.out

#- 290 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "H5iUT9GB4bGcYzy0", "request": {"allowOverdraft": true, "amount": 88, "balanceOrigin": "Twitch", "reason": "89155mM6RsYxtVcg"}, "userIds": ["A1q0sR85DcnV5fUv", "b2OK8scK4MyIy9F8", "aBXzn8z72hf4D4NO"]}, {"currencyCode": "pbUDnyVmYotZCA9L", "request": {"allowOverdraft": true, "amount": 81, "balanceOrigin": "Steam", "reason": "mcpdldDn2Y2l1kZW"}, "userIds": ["nqjJaGGTFaJHecFy", "rS82vN0N2236tI7v", "9m5s6oIWMnk88GXM"]}, {"currencyCode": "0x9St2EFfU2FbyIX", "request": {"allowOverdraft": false, "amount": 5, "balanceOrigin": "GooglePlay", "reason": "gxbMBZz4e7YZPuTk"}, "userIds": ["DBtkE9JX7oDFoXpZ", "rZGlRUuJ7HggA1D8", "hJH0gQxqxmEFytm0"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'BulkDebit' test.out

#- 291 GetWallet
eval_tap 0 291 'GetWallet # SKIP deprecated' test.out

#- 292 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    '9sy7dEuiT7OrRdHj' \
    'zNhfc3uokglAmxb5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'SyncOrders' test.out

#- 293 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["eaYqdXkBqt2UfrBE", "1JhOOdYFVxYR0Xha", "Q30cHb0re0TJwuS3"], "apiKey": "NPZi6h1nN0txahdh", "authoriseAsCapture": false, "blockedPaymentMethods": ["tj0rekmCKMOHEhe6", "apnthJsQpzHxEsiE", "sZH3UVmVcOxU0GsP"], "clientKey": "6oBsZy1nIeavdWM4", "dropInSettings": "UiM8xE2iHgKDtYUB", "liveEndpointUrlPrefix": "Wq18cbnbAjszS84w", "merchantAccount": "sQH451BnJRGwBPZ8", "notificationHmacKey": "2ML7i85xAiG2FleX", "notificationPassword": "iqNPeymXgMK8gaxY", "notificationUsername": "cDDZjCrklUdoPRrS", "returnUrl": "lMOoEllCitDiZDBL", "settings": "qmmiE0hD2A6L9zZJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'TestAdyenConfig' test.out

#- 294 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "pI7J4njh6wMyuNtA", "privateKey": "5mMerAvf2EK1rsQW", "publicKey": "D1svihoAZBd4hkyk", "returnUrl": "RLwN2LHFkXjhDf4R"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'TestAliPayConfig' test.out

#- 295 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "PTS1xmIM78uco5di", "secretKey": "3sJNayfJakaJtAFs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'TestCheckoutConfig' test.out

#- 296 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'DebugMatchedPaymentMerchantConfig' test.out

#- 297 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "emukeOnQqvXAFVKL", "clientSecret": "eOpEjPJDBPU8LPr0", "returnUrl": "bjy4nFkl8n6PSoXY", "webHookId": "b9tc6rYyOiaUKC8t"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'TestPayPalConfig' test.out

#- 298 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["4GV0JiE7ZbWP80Zc", "tunIw8zzjr1oeY1p", "4P0xno1luSqciM4r"], "publishableKey": "fqsoJ7AkLiYjJvlK", "secretKey": "hH1ccnrp3T2fKqq9", "webhookSecret": "CzJlj0UGtCqJnqpa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'TestStripeConfig' test.out

#- 299 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "ur75iSsLSqGKfGJD", "key": "mzFepqpoIzofQ17b", "mchid": "QpOtqU8Y63DFSnh5", "returnUrl": "IbdftTLRLUGwenKz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'TestWxPayConfig' test.out

#- 300 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "XRT99U5B5j9CT2YI", "flowCompletionUrl": "1qt4AYI54fgXlDCL", "merchantId": 64, "projectId": 82, "projectSecretKey": "wNGzR7zvW33BLQ5N"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'TestXsollaConfig' test.out

#- 301 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'yteBZg7IM93LGdMK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'GetPaymentMerchantConfig' test.out

#- 302 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'ko1WdXcuqjnyBh93' \
    --body '{"allowedPaymentMethods": ["6FR7fT7f00EZw65i", "q4fnnFA4ieAeG0Jc", "WHLxYckKH0j3mmJ2"], "apiKey": "Y5FsP84rgl0AQlBi", "authoriseAsCapture": false, "blockedPaymentMethods": ["iuP1xyPeWov5pJJd", "yu2TxbDTPkZkYfTO", "2Gg00JcXGaIUaL3F"], "clientKey": "oA27eK2U3IHpgmmQ", "dropInSettings": "aQj7hyQjWqzvHab6", "liveEndpointUrlPrefix": "b9t7DWTaUGBJRTcr", "merchantAccount": "m3mIBuPZxqlGGOe2", "notificationHmacKey": "VYsej3cSW6YWXMTl", "notificationPassword": "qVrGyQYDnbzj7Xg2", "notificationUsername": "lcvB7TOu2FcuLwU5", "returnUrl": "IJt4pAasYNW28u3U", "settings": "Z3q6QdMAL9IC4460"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'UpdateAdyenConfig' test.out

#- 303 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'Wck2oK2mLwkxgJXK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'TestAdyenConfigById' test.out

#- 304 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '2OjNzQ95lceIy0ln' \
    --body '{"appId": "TniV8j7XmR8FUW42", "privateKey": "wLu5tQBUE3k2mUvr", "publicKey": "QPFxSaRrDsF1CKYc", "returnUrl": "MJnrn1I3ypoEAwur"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'UpdateAliPayConfig' test.out

#- 305 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'iKcfEberKsmttvFw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'TestAliPayConfigById' test.out

#- 306 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '6Ev28mtO5isAId2v' \
    --body '{"publicKey": "IIeRmFR2TQ2rE5Ug", "secretKey": "f8q6zX7Jc7TK5xO3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'UpdateCheckoutConfig' test.out

#- 307 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'LzmzW8Oj3HDRoKRr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'TestCheckoutConfigById' test.out

#- 308 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '6ZZRLgp1djMaw9o5' \
    --body '{"clientID": "TdLhB2mWrW0A29Uf", "clientSecret": "lIqBalvCur3yS6Pc", "returnUrl": "P3N8ee3aFSyZkpxz", "webHookId": "yGW3kHAKNzH5cJ1x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'UpdatePayPalConfig' test.out

#- 309 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '2IhHEQwW44r5yXne' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'TestPayPalConfigById' test.out

#- 310 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'vZsdD9Iip75t7Rgt' \
    --body '{"allowedPaymentMethodTypes": ["j7pKnbtPAZsNwKWl", "HT7wmvO6YDgQ4TLd", "kZgouTEi19doNSCR"], "publishableKey": "rqi0F1FGxhrYszqB", "secretKey": "4U4xH3NpxEEE1xE1", "webhookSecret": "teY5Ma16Sr2B137k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'UpdateStripeConfig' test.out

#- 311 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'VZhkISgONgrrElIG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'TestStripeConfigById' test.out

#- 312 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'GV8sY9ZaFaHBtEtz' \
    --body '{"appId": "zbIbJ6nsmYALYAas", "key": "29PBhKjKkXDnEXVz", "mchid": "zBDNoUXOIkGhmAMg", "returnUrl": "Ju6c1uzCA657ulAr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'UpdateWxPayConfig' test.out

#- 313 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'gYuyjFEveRvl0xjo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'UpdateWxPayConfigCert' test.out

#- 314 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'SZYArBlpKXpe1zYz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'TestWxPayConfigById' test.out

#- 315 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'na0T42qYhPsMMX4D' \
    --body '{"apiKey": "g6kBhhmAmGWgONbs", "flowCompletionUrl": "aq6FR89FVcE5vUWR", "merchantId": 24, "projectId": 3, "projectSecretKey": "OGzgjnghEeYuTA3f"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'UpdateXsollaConfig' test.out

#- 316 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'Z9naIn2EhpBnamOq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'TestXsollaConfigById' test.out

#- 317 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'QfF1i9lDi17TuzOC' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'UpdateXsollaUIConfig' test.out

#- 318 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'QueryPaymentProviderConfig' test.out

#- 319 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "ADYEN", "namespace": "wLaPxhpGODmwJCF4", "region": "HCv6DG2DfogFpQ6h", "sandboxTaxJarApiToken": "4G1JwgwqyIOpmNMg", "specials": ["PAYPAL", "ALIPAY", "XSOLLA"], "taxJarApiToken": "taPmN6tWQqV1V78Z", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'CreatePaymentProviderConfig' test.out

#- 320 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'GetAggregatePaymentProviders' test.out

#- 321 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'DebugMatchedPaymentProviderConfig' test.out

#- 322 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'GetSpecialPaymentProviders' test.out

#- 323 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'Hr331YipwCDOc9FN' \
    --body '{"aggregate": "XSOLLA", "namespace": "lRGwL1hP0ILR0Ela", "region": "7ZLwTA0wt5op6F6Z", "sandboxTaxJarApiToken": "1a1sBmUaCx3pnw2U", "specials": ["STRIPE", "STRIPE", "ADYEN"], "taxJarApiToken": "vdGlmWWA02nKwO7X", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'UpdatePaymentProviderConfig' test.out

#- 324 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'rraxsHn4uKhXVFTT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'DeletePaymentProviderConfig' test.out

#- 325 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'GetPaymentTaxConfig' test.out

#- 326 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "x0TcboB98Gf5PcmW", "taxJarApiToken": "ICZpV13Vxw1InWyY", "taxJarEnabled": false, "taxJarProductCodesMapping": {"5tCY01FkbWfSwD66": "Xg5Qbc0EjxxzLQLR", "h64Y1jopYiTRZEzq": "26aXSjyAQ2QsMJlA", "xZUci2CC1SEp55Ti": "mgFFENNE15OyfCm3"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'UpdatePaymentTaxConfig' test.out

#- 327 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'JLSdyxEkUrupaAg8' \
    'X3qrN4NJQHucDPco' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'SyncPaymentOrders' test.out

#- 328 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicGetRootCategories' test.out

#- 329 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'DownloadCategories' test.out

#- 330 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'rTkEhvJJBHTf7gHQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicGetCategory' test.out

#- 331 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'dNqoM8JpOKNAU33h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicGetChildCategories' test.out

#- 332 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'Deba57ZY9YNNrTcd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicGetDescendantCategories' test.out

#- 333 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicListCurrencies' test.out

#- 334 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'GetIAPItemMapping' test.out

#- 335 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'cnzDvUHgR2bX5lx9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicGetItemByAppId' test.out

#- 336 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicQueryItems' test.out

#- 337 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'AjwbpWgnIzWRtzH2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicGetItemBySku' test.out

#- 338 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'wWVwIlnX0PYoF43q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicBulkGetItems' test.out

#- 339 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["dlpBadznEopQjdlm", "CKky8f25OS6EXRpH", "jQ4hViJ1Z0GtE9eP"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicValidateItemPurchaseCondition' test.out

#- 340 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'lbHeBy2yYQJsEZNA' \
    'nUcJCHbaM8I2sFnR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicSearchItems' test.out

#- 341 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    '0i1EP6ekQzrmDqC8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicGetApp' test.out

#- 342 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    '27Ayw8HdDdyIIR5c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicGetItemDynamicData' test.out

#- 343 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    's3jEJm9cqIJO6etr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicGetItem' test.out

#- 344 GetPaymentCustomization
eval_tap 0 344 'GetPaymentCustomization # SKIP deprecated' test.out

#- 345 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "gPcoqdV16bQzZjJi", "paymentProvider": "CHECKOUT", "returnUrl": "M4Cc3k5J2qbHYNek", "ui": "yXLtDH1ypF3hIsdF", "zipCode": "XbbaFfchju2kAuot"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetPaymentUrl' test.out

#- 346 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'tOSwo884abNDjMPi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicGetPaymentMethods' test.out

#- 347 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'ZHxhFeo51XVDI8f5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUnpaidPaymentOrder' test.out

#- 348 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'EWndhcek3atmhTw5' \
    --body '{"token": "TDjWYgm2yGvhR6HS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'Pay' test.out

#- 349 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    '643vgPdN21mWwtuq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicCheckPaymentOrderPaidStatus' test.out

#- 350 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'ADYEN' \
    'OsTElVV8XJ7Jg2JP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'GetPaymentPublicConfig' test.out

#- 351 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    '8JKQ1Fia4jQzEGsQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicGetQRCode' test.out

#- 352 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'TmKTeq9hsX0E1pSQ' \
    'zkJa95maQLAJLoGM' \
    'ALIPAY' \
    '58ZBVGgxlpGxhD9k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicNormalizePaymentReturnUrl' test.out

#- 353 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'KX2uBUIh1pfP8bRB' \
    'PAYPAL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'GetPaymentTaxValue' test.out

#- 354 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'tngQG9E03eUwSRO9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'GetRewardByCode' test.out

#- 355 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'QueryRewards1' test.out

#- 356 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'eoka5Ufs9UTtAImW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'GetReward1' test.out

#- 357 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicListStores' test.out

#- 358 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicExistsAnyMyActiveEntitlement' test.out

#- 359 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'juqib3nbPkju9PQ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 360 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'pN0XXmk4owknspUK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 361 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'yKWqOaF8En9Ut2qF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 362 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEntitlementOwnershipToken' test.out

#- 363 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "CzvpinQCQg8fidwt", "language": "QD_Xxul-FQ", "region": "vTFl9DbHQLYWCwsA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'SyncTwitchDropsEntitlement' test.out

#- 364 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'VcQ0VGEUxlcNQWOp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicGetMyWallet' test.out

#- 365 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'RLETWMAv0uJ30L51' \
    --body '{"epicGamesJwtToken": "TxrdknW52x2o1yDO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'SyncEpicGameDLC' test.out

#- 366 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    '6bwcKYeFoxUWdvEB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'SyncOculusDLC' test.out

#- 367 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'TwUyzq5bzdNEHv6G' \
    --body '{"serviceLabel": 26}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicSyncPsnDlcInventory' test.out

#- 368 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'vxGSBmDL91zfHvKn' \
    --body '{"serviceLabels": [72, 90, 91]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 369 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'TBwlGi9OKYqmnMdD' \
    --body '{"appId": "OYMCkcE680jXshhA", "steamId": "rmrrsTXqjhryZuWF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'SyncSteamDLC' test.out

#- 370 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    '0aXyAfnT9KMwZkUm' \
    --body '{"xstsToken": "ivHbmYwS4MpDJ1DY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'SyncXboxDLC' test.out

#- 371 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'OnlVrhflY3MzIef9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicQueryUserEntitlements' test.out

#- 372 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'mtXHbh3agt9HQKHN' \
    'hlzYRtA24gRvv870' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUserAppEntitlementByAppId' test.out

#- 373 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'jG3e6kpEZmtrpzaL' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicQueryUserEntitlementsByAppType' test.out

#- 374 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'RJGwh0BPRCWdTnyt' \
    'xmesJ8JDDcPDev3e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserEntitlementByItemId' test.out

#- 375 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    '8oc7sh3o0r9VYIh3' \
    'Jj15pf4bXUrytKH5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUserEntitlementBySku' test.out

#- 376 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'rM54pVKLq2niQIIF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicExistsAnyUserActiveEntitlement' test.out

#- 377 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    '3Qc9pq9UUur5zNNH' \
    'f53CHNLzMNElAaW0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 378 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    '4oQXa8waozlr2fty' \
    'ZklpNPl881jOSvCv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 379 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'j20fgU419HQGug3A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 380 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'piXAivNHSVq7Hy14' \
    'PWQgyxy3AZ9Q29c3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 381 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'FLGnsacdakVuBk3e' \
    'UIeGfzqhOBhMJ8BC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserEntitlement' test.out

#- 382 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'R0Pr4lUceWJidPUC' \
    'DHoZPOFJliGQwzPS' \
    --body '{"options": ["icmKe5tLTY4T61Zt", "jv4HjtKUJ2g5iKvk", "b6yaN0rJRTtAoroj"], "requestId": "50ibuYM4wRG0lN0X", "useCount": 63}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicConsumeUserEntitlement' test.out

#- 383 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    'kMcmOdLuSZLYkIAB' \
    'Wq6LMyqmJBIayJYI' \
    --body '{"requestId": "YPCQLT4UtcQmxMnH", "useCount": 23}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicSellUserEntitlement' test.out

#- 384 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '08ZzCha8xLBGlN6G' \
    --body '{"code": "GKXlt1XAswrMMjtu", "language": "QV-Ab", "region": "ftddfk3N3FUGt7hR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicRedeemCode' test.out

#- 385 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'JWz66woOwujZiqrV' \
    --body '{"excludeOldTransactions": false, "language": "HF-PQEg", "productId": "AR1FP2qDxqukQGmZ", "receiptData": "8QPR4rrBu0xMLSZM", "region": "2reG0eUsKe4gH8U0", "transactionId": "4S5FCpmYeCJwMPHx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicFulfillAppleIAPItem' test.out

#- 386 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    '5qbq2es6TWDRr2bT' \
    --body '{"epicGamesJwtToken": "PUxXfvsOwNGBX5w0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'SyncEpicGamesInventory' test.out

#- 387 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'CKM4KgSaTFkYqyDB' \
    --body '{"autoAck": false, "language": "YIfw", "orderId": "gMI2a4HuuQiMf3Zt", "packageName": "SRaKTvnYQcQK3OLU", "productId": "5xNeaLjRoNMmfyuS", "purchaseTime": 42, "purchaseToken": "xXiAUp37WFZG1bPR", "region": "EFnLFvdjVz0bF4f5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicFulfillGoogleIAPItem' test.out

#- 388 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'a8wwsXbVcGQFcH3a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'SyncOculusConsumableEntitlements' test.out

#- 389 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    '88llB2KCetfPNaSe' \
    --body '{"currencyCode": "buaBm42ZRTd7otFS", "price": 0.9321212127040236, "productId": "xUblp0GJFHhDBbjd", "serviceLabel": 41}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicReconcilePlayStationStore' test.out

#- 390 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'oGvyLZGyV2nNIKGy' \
    --body '{"currencyCode": "Vatdlj1BAkRkfD5Q", "price": 0.5544643077562501, "productId": "95OctLxGf6SilVAg", "serviceLabels": [98, 66, 54]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 391 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'plPOe3QpvyaquevE' \
    --body '{"appId": "8jhAM4C34bBPbifH", "currencyCode": "DiBMsRy1ZmFMVlAh", "language": "Le-891", "price": 0.8416301749716868, "productId": "OoFV93hG5GVHrcfG", "region": "pWAuflVB1opvSUYD", "steamId": "0K7Y5bCch6ur33Ft"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'SyncSteamInventory' test.out

#- 392 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'hZ0FOWCXy70cM2iJ' \
    --body '{"gameId": "tgpMAKpwx7WN70b3", "language": "Vc_PObI-cc", "region": "ClY8kIt120hKXclu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'SyncTwitchDropsEntitlement1' test.out

#- 393 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'epkD2cjAyU8thUL0' \
    --body '{"currencyCode": "rK6YlDgS7DF6WHO4", "price": 0.3855760440532163, "productId": "KI3DzXlqZ97UEX77", "xstsToken": "J2ZaCgl5zfvvm60V"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'SyncXboxInventory' test.out

#- 394 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'IJWtArjNf9ClzJiL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicQueryUserOrders' test.out

#- 395 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'rK8iwSKwTNINv7Mb' \
    --body '{"currencyCode": "R3h7N9mLvImrGFR7", "discountedPrice": 3, "ext": {"LVKd3lHIIZTnztsw": {}, "BHIOUcpBs05S6VCR": {}, "gcpqzF0Wdx4tTiOq": {}}, "itemId": "vd6is3iMkUYXGJ52", "language": "YIdR", "price": 59, "quantity": 24, "region": "kF4GsByu7ccqHPLY", "returnUrl": "7ScjfHWvp5yxoHDN", "sectionId": "8wbZhTBvAeHGP8ME"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicCreateUserOrder' test.out

#- 396 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'JHjkHXgaYcrI47DA' \
    'BOUyTgLqcqWj25jc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicGetUserOrder' test.out

#- 397 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'DQ7S4nZymFu9HDay' \
    'b3pUN53xwUDjiBHC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicCancelUserOrder' test.out

#- 398 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    't3VKh9NaXK6yInDE' \
    'dr3JfyFO9PUA61ce' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicGetUserOrderHistories' test.out

#- 399 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'L94UMGbnwR8NQy5m' \
    'Wp1i7XAgvpl6VM46' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicDownloadUserOrderReceipt' test.out

#- 400 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'gEFqwJcySobYFsOp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicGetPaymentAccounts' test.out

#- 401 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'qr85xVvxj351m51u' \
    'paypal' \
    'fFhgytL5jv2cyVSX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicDeletePaymentAccount' test.out

#- 402 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'xh4A5aA1bEwNCWyt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicListActiveSections' test.out

#- 403 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'xJKphKxkJ5Y2qNwo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicQueryUserSubscriptions' test.out

#- 404 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    '7fOIEm4CCHTjiJTc' \
    --body '{"currencyCode": "JCNU9JxdozQjrd9h", "itemId": "3KvseGTWQwYHbgon", "language": "opy-GXGa", "region": "HBLENBGh8mzbI7UU", "returnUrl": "Qoj40AF05z6BC0fH", "source": "4BlyXE2K4uNJRgQ3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicSubscribeSubscription' test.out

#- 405 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'CCklU97KkomnjFaT' \
    '7NQeCqpaKPJkOezU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 406 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    '2RemXA27tg6bypXm' \
    'wZRpU8Qcrmp46NHH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserSubscription' test.out

#- 407 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'KuQExWorl4PYKJ1G' \
    'JKlZ26mxx5rFWCDj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicChangeSubscriptionBillingAccount' test.out

#- 408 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'Feol1Ra8c5c3F5ot' \
    'SicHNAFf6XoFjTyG' \
    --body '{"immediate": true, "reason": "2gRMkdKgCuxFa4ix"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicCancelSubscription' test.out

#- 409 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    '8vdZvwAMOmTtBEJj' \
    'CyABy7DKD883wae7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserSubscriptionBillingHistories' test.out

#- 410 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'z4E6bRC4ufnScsyh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicListViews' test.out

#- 411 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'We6QJ1Ov7wz26xkk' \
    'YYxgGLN3OJhmFyZH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicGetWallet' test.out

#- 412 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    '05CCwf21Y2Taz2uF' \
    'pz174OkRp3BkdVbq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicListUserWalletTransactions' test.out

#- 413 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'QueryItems1' test.out

#- 414 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'ImportStore1' test.out

#- 415 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'gNrZPytIR58rTLNp' \
    --body '{"itemIds": ["t4RpqpKk9toELRS2", "4cMw2Lh6XTFr1d0v", "5MiCVrY2QOMJmNbA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
