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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "EAxcVpFrttufHIRd", "appType": "SOFTWARE", "baseAppId": "9UzVRiXbqlAw7r6W", "boothName": "2ktQG0h5JAav5kRa", "boundItemIds": ["Q1g7qbPngUNB1vRo", "ZLCXLx8bbgorQeFb", "62WopBJHPtcDs8bB"], "categoryPath": "dwpzS6DaDpv8N7ZQ", "clazz": "VqGj6oDLjWjkY1aX", "createdAt": "1977-05-08T00:00:00Z", "description": "FcDtgOjchIua5tWE", "displayOrder": 71, "entitlementType": "DURABLE", "ext": {"JSDgY1TXp38zsCTC": {}, "rbCbPOyNQkT7NvyE": {}, "3cwyALczNIicXm7a": {}}, "features": ["c8OumKtPDKJDXn7Z", "T5FvdiRilZ7oFgx4", "gSrjJW2OQNOs1PXh"], "fresh": false, "images": [{"as": "68su8XfqlqNiTvB6", "caption": "SdAdIhUDrwoZ5Mec", "height": 7, "imageUrl": "pc1C8XfwHuKeb9l3", "smallImageUrl": "rGN9A3sNm84hddSp", "width": 69}, {"as": "cBdW19m4eu6d5tA5", "caption": "jUmiTqpyhPFdxLzF", "height": 87, "imageUrl": "d8lDR6qVNPRZYdFL", "smallImageUrl": "IAjGGJddVCvu9vx5", "width": 76}, {"as": "vkLGMS0lyuI9a2I9", "caption": "u6Vpbsx5w8hqUI06", "height": 96, "imageUrl": "SuB0y5WUlrMdI4sN", "smallImageUrl": "veabntBSxTeIv53H", "width": 66}], "itemId": "YupD391C2qtPYoka", "itemIds": ["hFjkQsfCaTmt1d67", "FXGk2s9Q0mPVo3tw", "u0MesTCf9x4rt69l"], "itemQty": {"na7qxNeIxPz6MbwL": 67, "IY69z1UaLqYSYWyt": 77, "XQ0yYoNRKd3IL5TA": 87}, "itemType": "CODE", "language": "6iiPlSC2uE4o5Vwd", "listable": false, "localExt": {"m3MqHcUmLZZbSqb8": {}, "RwNmn9HrNQy4uZAA": {}, "iE0mit9RGCCHYzUO": {}}, "longDescription": "cEdscKHPEqgA8yu7", "lootBoxConfig": {"rewardCount": 98, "rewards": [{"lootBoxItems": [{"count": 94, "duration": 22, "endDate": "1994-05-19T00:00:00Z", "itemId": "Jt4Ymos9Jcdos4fY", "itemSku": "cTVU6RBt0zYoMcHy", "itemType": "CUEXlAvxJMdalwSy"}, {"count": 23, "duration": 85, "endDate": "1975-11-14T00:00:00Z", "itemId": "bOItRMvqtlB2jJCS", "itemSku": "QT279ZZPYGu0rdlg", "itemType": "dWyOtXi3choQrpOs"}, {"count": 61, "duration": 25, "endDate": "1985-08-26T00:00:00Z", "itemId": "U5SepjChB3V0v52D", "itemSku": "lym6puQ23xoJ8aeC", "itemType": "naLpUKp44YUDjasW"}], "name": "IPUvmEejtGeoyIPa", "odds": 0.9714507862859705, "type": "REWARD", "weight": 90}, {"lootBoxItems": [{"count": 7, "duration": 37, "endDate": "1977-06-26T00:00:00Z", "itemId": "ykmoPYgc2L4jk4Lo", "itemSku": "0LSP0pf4IxjUkl53", "itemType": "5X3ateEKDpADz1x3"}, {"count": 32, "duration": 30, "endDate": "1985-08-29T00:00:00Z", "itemId": "9xv32e8c5csSovoq", "itemSku": "sZNBdte9NDUPVJf6", "itemType": "c2Z0QZxfgPubTDIH"}, {"count": 36, "duration": 83, "endDate": "1982-11-17T00:00:00Z", "itemId": "qAThuwjRHpKKTlmV", "itemSku": "r9XuoJbRFQSKVPHb", "itemType": "n4Xxtu7LQRENjEEz"}], "name": "tx1WsYSiZqan0nSB", "odds": 0.5728983498865392, "type": "REWARD", "weight": 30}, {"lootBoxItems": [{"count": 0, "duration": 57, "endDate": "1981-10-04T00:00:00Z", "itemId": "91GXlvPG6bFYReVH", "itemSku": "QipcCx9Zw5D2L7vI", "itemType": "YhGGSyEW4ZJJ42d3"}, {"count": 85, "duration": 25, "endDate": "1985-03-04T00:00:00Z", "itemId": "ddN8S48l9lyNApfl", "itemSku": "xqMrj3oZk03QXcKM", "itemType": "DYDDxHSZjtqXyJ58"}, {"count": 10, "duration": 36, "endDate": "1977-09-29T00:00:00Z", "itemId": "jX9fDmIbeZxzfTcy", "itemSku": "iuATus9hsfpFDcSD", "itemType": "G8aMVGLiBNrDjqox"}], "name": "cwgGLXpUL4pp2ncY", "odds": 0.422365902819149, "type": "REWARD_GROUP", "weight": 21}], "rollFunction": "CUSTOM"}, "maxCount": 39, "maxCountPerUser": 82, "name": "fIovmv9gsR5cJcHm", "namespace": "3SZLxoRDFuuuySj2", "optionBoxConfig": {"boxItems": [{"count": 56, "duration": 1, "endDate": "1975-06-17T00:00:00Z", "itemId": "LJE8HoRS1X2PFAAM", "itemSku": "wzHPxB1UskYs4Yw2", "itemType": "0DOqOBSC2DKHRuPM"}, {"count": 80, "duration": 22, "endDate": "1995-02-07T00:00:00Z", "itemId": "H8Yb33T5UBJCjfcn", "itemSku": "LRfxeCSz9WEi8Kll", "itemType": "oeH0JT1yduat2vQR"}, {"count": 3, "duration": 66, "endDate": "1975-02-16T00:00:00Z", "itemId": "Bfsu4jmsRE2w1yEk", "itemSku": "Lgh3tIYt4SqYUTLD", "itemType": "x9gIiDandpGT2t24"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 83, "comparison": "isLessThan", "name": "Mh5eC3IHeHSKLCa3", "predicateType": "SeasonPassPredicate", "value": "AE7WIsfmx40NLRc6", "values": ["m8heKnWhzfe2Nube", "oKFeIaFQCYoDPICp", "nduEEQlULdJz4mnR"]}, {"anyOf": 56, "comparison": "is", "name": "CAcf80zfFyabWAgI", "predicateType": "SeasonTierPredicate", "value": "hRkloqxM3gpwxcfM", "values": ["y9XzjjI5YbsKoADk", "zJEN2VHzih3bit0V", "Wn3CO39PXDNxtXge"]}, {"anyOf": 83, "comparison": "isLessThanOrEqual", "name": "3FgkXhjDzaQY3snn", "predicateType": "EntitlementPredicate", "value": "ZkP7cFdP43e5dC9X", "values": ["IBudfZgrbHDIDm4h", "MzF4TxodenSrUTvf", "qU0bfoMm5cTtFWbo"]}]}, {"operator": "or", "predicates": [{"anyOf": 4, "comparison": "isLessThanOrEqual", "name": "6IjGa23YvYmmDg7V", "predicateType": "SeasonPassPredicate", "value": "PXIuvUYTZBRujIUE", "values": ["urjh2imdb4rbkXj0", "1Tq5jyAZvkRCMNFI", "ZwsVC0gL97ZVJSPq"]}, {"anyOf": 74, "comparison": "isNot", "name": "iwv1qlYB1RSKs6gQ", "predicateType": "SeasonPassPredicate", "value": "ZGF7uYnGzpipNDig", "values": ["D9eOziYRFOn0jJLH", "4nmwAft4gqkNNlWk", "NJma1MbqqZtfNWql"]}, {"anyOf": 58, "comparison": "isNot", "name": "LxhvNXTwGBCtohLt", "predicateType": "EntitlementPredicate", "value": "7MUBG7qtPu64yAtU", "values": ["MdIIlhS1fSiM9331", "RKLRkb738HGS6rDg", "m7Ta1PsKc50Kv6ec"]}]}, {"operator": "and", "predicates": [{"anyOf": 30, "comparison": "isNot", "name": "mQoIXimBJehyxlNs", "predicateType": "EntitlementPredicate", "value": "nGBt4P7WnbdSJtjX", "values": ["7ZshZyZl5x4bRXBH", "dpCROYqUiGKXVFCm", "UTrDzZSKscfOcYu3"]}, {"anyOf": 31, "comparison": "isGreaterThan", "name": "ogaKt2ujQSa3Zdb6", "predicateType": "SeasonTierPredicate", "value": "UXmy0Zp6iIaTIKUk", "values": ["zwLR2AK6eXUGPJsw", "1fiP80G9Pclxcft2", "mkk9QM0NBMA9ORxp"]}, {"anyOf": 42, "comparison": "is", "name": "DpZxkrQDXuNFviMa", "predicateType": "SeasonPassPredicate", "value": "uGKHhMRWLVd3DlhL", "values": ["uIpomM8sm1MiaI1m", "X2tJoARtdbBe7uds", "Mrok0WvGYYnx4V70"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 49, "fixedTrialCycles": 9, "graceDays": 2}, "region": "ue9nzJ6fH24T805t", "regionData": [{"currencyCode": "Vg8JqU0jZpjvsugA", "currencyNamespace": "OS7u8RiWyerCSa8S", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1997-06-30T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1980-01-29T00:00:00Z", "discountedPrice": 55, "expireAt": "1979-03-16T00:00:00Z", "price": 36, "purchaseAt": "1998-10-10T00:00:00Z", "trialPrice": 16}, {"currencyCode": "xsB0NRsB1fPqqRRu", "currencyNamespace": "lpqpymDkQhtrHWwR", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1977-07-07T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1995-08-07T00:00:00Z", "discountedPrice": 56, "expireAt": "1991-10-31T00:00:00Z", "price": 33, "purchaseAt": "1983-12-03T00:00:00Z", "trialPrice": 68}, {"currencyCode": "wbhMssAHjapIkY9R", "currencyNamespace": "f4wP57dBZNR88YbC", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1977-01-29T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1992-07-15T00:00:00Z", "discountedPrice": 82, "expireAt": "1977-11-12T00:00:00Z", "price": 10, "purchaseAt": "1984-07-26T00:00:00Z", "trialPrice": 4}], "saleConfig": {"currencyCode": "VrjfGXZnqAQUoY1G", "price": 20}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "Zp50CnPb71ORYcmQ", "stackable": false, "status": "INACTIVE", "tags": ["aKQDOJvrTefglSs6", "g4iY9u02aCNYIWek", "U5JX8ccLjMXJRk0e"], "targetCurrencyCode": "p18lOC3mNqF7Bl0L", "targetItemId": "cghVHfPEspxwhRON", "targetNamespace": "0bc1eMbEIjowLqc3", "thumbnailUrl": "ecjXJbZDKKoxLE1Y", "title": "3Dymtj3giPg4x4yi", "updatedAt": "1992-03-11T00:00:00Z", "useCount": 1}, "namespace": "6ues1Hhhkg1yLVbL", "order": {"currency": {"currencyCode": "FzHEP8cM4NTwr0KH", "currencySymbol": "aAsmTej52WKi6tAr", "currencyType": "VIRTUAL", "decimals": 46, "namespace": "URt9plCSVq8PdH6h"}, "ext": {"JPUAc0RVwXgAgntL": {}, "MCuaXBWQi6BqPg4x": {}, "r0lCancUZGCHsZYo": {}}, "free": false}, "source": "DLC_REVOCATION"}, "script": "R1KtOv7Zy0b65uvu", "type": "grantDays"}' --login_with_auth "Bearer foo"
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
platform-create-item 'HFwinkBNi4gvqgl6' --body '{"appId": "TZ9TGVPmv34h6T7E", "appType": "GAME", "baseAppId": "xLvPuWYvE3fsNy9Z", "boothName": "9OhxXvCp9y7fLD2q", "categoryPath": "fCXnlUnqxT1WsRNM", "clazz": "ZcA92hzC7MNa8vVe", "displayOrder": 83, "entitlementType": "DURABLE", "ext": {"HX6AgMep90AyyUJy": {}, "AK5PRMRMwdvl0hv6": {}, "g62GxBW2tQF5tkTj": {}}, "features": ["gJaMYvNQOsDa4bkc", "gepqtxjbrztee7QL", "TGAak7Kaol01DK97"], "images": [{"as": "D2xnik42miteR5eQ", "caption": "Ae1rzmmgqBPRmd6m", "height": 82, "imageUrl": "EfOJpZm9yEYWNGMy", "smallImageUrl": "2pgSGSUOK68eqGJt", "width": 49}, {"as": "f1Ybgg8rdwY9bmrv", "caption": "HmO07KNqX9LM2IwE", "height": 37, "imageUrl": "qISQ83TTbtefXWzn", "smallImageUrl": "De4LQdXfFBii2RAM", "width": 62}, {"as": "r0sVZ6LJAOddIL2l", "caption": "3hPjNDKv2LWfXqjr", "height": 83, "imageUrl": "fS79En3wYowBdkaZ", "smallImageUrl": "3y6i38XQjLDRqkpi", "width": 65}], "itemIds": ["LyEirURERnEMzpIm", "W6sjAHyCK5tNanGB", "rkzUvck3xTtmOFMe"], "itemQty": {"bS4AdlNzwog2IhEr": 22, "Th4gUoj8u2WRcLiE": 40, "kbLlrNXnGanMazb8": 19}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"RWenURH48aJuALEc": {"description": "SqcE15u6D31DjOsr", "localExt": {"s3CUYATdqnQGbqiq": {}, "OkNeATj7eGjodd7C": {}, "cJUrI6MAugK5kypN": {}}, "longDescription": "rp2nFe9FmN86sK5L", "title": "Oq4ft5jGcMICPUYn"}, "fG6jl9U4jReteIMg": {"description": "zISomCsodJrhQW41", "localExt": {"q2OspCZbt3Uta5I0": {}, "uGcL1koyHjCH5olY": {}, "LETRpABAmO2EGvJ4": {}}, "longDescription": "UMS93yOxNInDByhn", "title": "oluO6ti0QP2ssiJ6"}, "6OzOj84O6tgohjtC": {"description": "7bzjPpucddXJ5zif", "localExt": {"F8y959anrNSleywH": {}, "bHig6IKWVZ77KeRW": {}, "dECaFGzfZ2hxcJ2F": {}}, "longDescription": "nemn7M23SzUo4hNB", "title": "Dh9ZFP1OW0nXOErQ"}}, "lootBoxConfig": {"rewardCount": 85, "rewards": [{"lootBoxItems": [{"count": 50, "duration": 91, "endDate": "1993-11-20T00:00:00Z", "itemId": "VsRoYIK69yg9ADCG", "itemSku": "iXaLs2xjHkinOD97", "itemType": "5nARHCmhNHSXuqIH"}, {"count": 38, "duration": 48, "endDate": "1971-06-25T00:00:00Z", "itemId": "hvxw9gwwhTnjN6wK", "itemSku": "ZGW4y3f0R9s2kndh", "itemType": "hZhwAiLsZs4pmLDI"}, {"count": 88, "duration": 7, "endDate": "1972-09-26T00:00:00Z", "itemId": "h4IjDq9aT3qZyI0r", "itemSku": "YsWucAkXsVJbXi7e", "itemType": "RZa7WwIc895ImqK6"}], "name": "tVsaUq3stUh5J5Z9", "odds": 0.5243764883181351, "type": "PROBABILITY_GROUP", "weight": 57}, {"lootBoxItems": [{"count": 82, "duration": 17, "endDate": "1995-12-25T00:00:00Z", "itemId": "Is7NRen2Y3Ns0QJQ", "itemSku": "eaWytPfds1BYx0Ea", "itemType": "URydf8ZyyZeHAWGg"}, {"count": 72, "duration": 80, "endDate": "1995-01-08T00:00:00Z", "itemId": "OPG0iHDT8QbF7gHP", "itemSku": "TPQbvLt2NRqJGIKz", "itemType": "LyH1y72L13Ornyx3"}, {"count": 73, "duration": 24, "endDate": "1994-06-14T00:00:00Z", "itemId": "NFfM8M0IW4oe8KDg", "itemSku": "y0xZfAcNg14Ws8TI", "itemType": "P1LKiFQoLDvumfqr"}], "name": "gSfnx2h61X9dN1MG", "odds": 0.7035711798643334, "type": "PROBABILITY_GROUP", "weight": 56}, {"lootBoxItems": [{"count": 95, "duration": 72, "endDate": "1982-09-02T00:00:00Z", "itemId": "mVV7JS9qjNLwvI8J", "itemSku": "diY3RRiLilmOGF6d", "itemType": "LLIeIVIjMcdlbdRX"}, {"count": 94, "duration": 67, "endDate": "1981-10-09T00:00:00Z", "itemId": "PZSTpPq3xjrElvvD", "itemSku": "gw0ag7kSWE0Hiqm5", "itemType": "IuLryiEXqvUWDjU1"}, {"count": 67, "duration": 65, "endDate": "1998-03-19T00:00:00Z", "itemId": "EVjVZw1ToLuPakQN", "itemSku": "1MpOs1RVFrcg2CXx", "itemType": "epx78fvsyhE2BKty"}], "name": "TDSIM7mkmvZ7Cmsh", "odds": 0.9110738608033336, "type": "REWARD_GROUP", "weight": 51}], "rollFunction": "CUSTOM"}, "maxCount": 72, "maxCountPerUser": 97, "name": "jfMANPpmZDdMiCxm", "optionBoxConfig": {"boxItems": [{"count": 43, "duration": 19, "endDate": "1985-01-27T00:00:00Z", "itemId": "CVuFjS1GC1d2b92B", "itemSku": "4vEgj3HOmhcWm428", "itemType": "XejRF94NIY9nMrBZ"}, {"count": 29, "duration": 2, "endDate": "1997-06-11T00:00:00Z", "itemId": "lNUBDShHD32vvL28", "itemSku": "FPwTiXfLcxDC9Ynd", "itemType": "02mECIQhfIhHtADU"}, {"count": 88, "duration": 76, "endDate": "1971-07-30T00:00:00Z", "itemId": "31oQf7BULnZDhutD", "itemSku": "M6BqguqD5xxGxBWt", "itemType": "nTKUe2znsqPzPkwC"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 29, "fixedTrialCycles": 18, "graceDays": 88}, "regionData": {"SwCUsTag4MLAo3m6": [{"currencyCode": "1P2xaNfmn8Onb1a9", "currencyNamespace": "gMz0F2UBRmMhAbUW", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1987-08-09T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1974-01-28T00:00:00Z", "expireAt": "1974-09-29T00:00:00Z", "price": 77, "purchaseAt": "1979-08-02T00:00:00Z", "trialPrice": 66}, {"currencyCode": "Muv3zkUY0n0BAZkw", "currencyNamespace": "bYkBLyO6A0Fqfhna", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1999-09-20T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1996-10-21T00:00:00Z", "expireAt": "1976-11-18T00:00:00Z", "price": 42, "purchaseAt": "1972-11-28T00:00:00Z", "trialPrice": 94}, {"currencyCode": "VuOzhxHmnrrV9ZGW", "currencyNamespace": "rZ05sxe6A6RpmKDe", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1991-01-10T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1978-07-17T00:00:00Z", "expireAt": "1978-04-02T00:00:00Z", "price": 29, "purchaseAt": "1971-06-18T00:00:00Z", "trialPrice": 51}], "cNmzwOZOK56sDkci": [{"currencyCode": "5rZ8iMlOuksQJCiR", "currencyNamespace": "FiZWwJ7NrTb1XTB9", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1986-07-30T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1994-10-12T00:00:00Z", "expireAt": "1979-08-15T00:00:00Z", "price": 99, "purchaseAt": "1976-08-23T00:00:00Z", "trialPrice": 88}, {"currencyCode": "J8BzP6EUmUXGM5an", "currencyNamespace": "Iloyj9lhbvuQdW2j", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1989-09-11T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1972-10-18T00:00:00Z", "expireAt": "1976-10-29T00:00:00Z", "price": 4, "purchaseAt": "1997-09-08T00:00:00Z", "trialPrice": 81}, {"currencyCode": "4ryY91lX8DD4MYXl", "currencyNamespace": "rJ81lHvv9rqvEoM8", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1984-03-17T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1973-03-26T00:00:00Z", "expireAt": "1995-11-28T00:00:00Z", "price": 8, "purchaseAt": "1999-03-10T00:00:00Z", "trialPrice": 68}], "8N2yv6VTnOK7xAvM": [{"currencyCode": "7tuL81lsR7xxSVp3", "currencyNamespace": "Gd2TK0HzYviTgYmx", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1979-08-16T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1985-12-25T00:00:00Z", "expireAt": "1973-11-04T00:00:00Z", "price": 17, "purchaseAt": "1992-05-30T00:00:00Z", "trialPrice": 91}, {"currencyCode": "Iz8tne5dbguBF6Gs", "currencyNamespace": "vvdl8jHz9x7XZIjU", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1997-10-27T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1981-03-30T00:00:00Z", "expireAt": "1982-11-30T00:00:00Z", "price": 31, "purchaseAt": "1990-02-27T00:00:00Z", "trialPrice": 1}, {"currencyCode": "TLEEBGTtZyTjdKNK", "currencyNamespace": "gYazujsmSmylT1Yt", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1988-05-10T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1995-12-02T00:00:00Z", "expireAt": "1971-06-29T00:00:00Z", "price": 78, "purchaseAt": "1982-01-10T00:00:00Z", "trialPrice": 57}]}, "saleConfig": {"currencyCode": "48jISd97KORRhxSW", "price": 77}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "k5UcPAGv6c1ESC6h", "stackable": true, "status": "INACTIVE", "tags": ["vzzXZj08a6K1XRVf", "NUHbIT9szApmWJO5", "bzf5aANNNs5kgSZZ"], "targetCurrencyCode": "riSpPFnZBJZkDnEi", "targetNamespace": "yfa2LrnpZxNnLRH3", "thumbnailUrl": "6bqS2oFY76PU1Azi", "useCount": 56}' --login_with_auth "Bearer foo"
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
platform-update-item 'ProNB6hI6IpGcToW' 'gFvdRhG9NwV3zDuq' --body '{"appId": "VlVTypcYPK8IxrSZ", "appType": "GAME", "baseAppId": "OqO4U0bitNQLzwRo", "boothName": "WnR0AbkCPY70Fmvv", "categoryPath": "iVIBbcujF8Vk5qb8", "clazz": "NhWWwaxyMchkt8l5", "displayOrder": 70, "entitlementType": "DURABLE", "ext": {"TUh2dJ90yqHDNacl": {}, "4F9G6Dl5TFwBY6HK": {}, "XAblkT8VGgSH8MGZ": {}}, "features": ["3bhPQvBBJI5Jxytp", "X1IByPEOuPhGspRi", "GwiVj7eDTaka9ABf"], "images": [{"as": "cubN4AUUPFPscZsX", "caption": "eJOD4DMtqfIGiGJo", "height": 44, "imageUrl": "Bq2SimQQoLbe5YOJ", "smallImageUrl": "vxGRxUzrTwagH7BM", "width": 94}, {"as": "AzWze94MEdJFAy2J", "caption": "TllJkRGB8jqJEd6e", "height": 33, "imageUrl": "o8SjDAM0Riw8wLYW", "smallImageUrl": "3n4F3LD1EDwBXw5u", "width": 57}, {"as": "dc5VyC4qvWjVac1c", "caption": "QvSxgTNIUzxDgBlI", "height": 3, "imageUrl": "CkZu4htrsf8eIFSo", "smallImageUrl": "vTGXaMsq8ePN1oco", "width": 66}], "itemIds": ["jx8Upe8SjMvpqM8p", "uggOEdG47gD5i2Ni", "6AnWn3NdEPhNHSH7"], "itemQty": {"eKDfRcngEpTnRUQr": 62, "RLOM1vEx4gqDY6jw": 51, "aY5c1tP5TDuI5f6m": 40}, "itemType": "SEASON", "listable": true, "localizations": {"Qt28b6o3K0COF74t": {"description": "z6aeXZOYwbwjMNdx", "localExt": {"KWlBfnRyFS0Ed7gT": {}, "M5AVrtBQiDTcNnZa": {}, "6Zuxk6u6HXXdiC9Z": {}}, "longDescription": "Dj4E4mv12FNXypoO", "title": "Ll13j84P0KqirJ4P"}, "kMFtsnFfz8Ew0X8f": {"description": "BuBSKLSQ4GvLtz50", "localExt": {"D3rpBfBovqLwXBuT": {}, "30EYeRj17xGhaBKo": {}, "UfiHjGmCyPsKCJTv": {}}, "longDescription": "1ic9gvagF2cSuzts", "title": "J5tj64gV7nmDk29m"}, "cjSuz9vbNStqPtQm": {"description": "QN6eKAGiZFCftT0R", "localExt": {"WECdjWYrnulxcCKA": {}, "ru8pOaAVLDB4k3Jw": {}, "kdaxR7GJpYmuYCPG": {}}, "longDescription": "181q9GA5DydC2D8U", "title": "T6KOc4VPDUR9ayaz"}}, "lootBoxConfig": {"rewardCount": 34, "rewards": [{"lootBoxItems": [{"count": 14, "duration": 77, "endDate": "1993-04-01T00:00:00Z", "itemId": "qegIUicYXXzxsBFr", "itemSku": "Us9BYp6TgCejBd5o", "itemType": "7iTST7R3KbbQGERM"}, {"count": 81, "duration": 47, "endDate": "1979-05-16T00:00:00Z", "itemId": "5FZfQIodVBqQsBpC", "itemSku": "JBIXLGYcwWVRK6UK", "itemType": "k5ozrXA4HZHNyq9o"}, {"count": 8, "duration": 1, "endDate": "1976-04-18T00:00:00Z", "itemId": "4vxmbH3rVaauufxk", "itemSku": "PHElug48TgfNu0rq", "itemType": "XUOyToLPIREGIKlJ"}], "name": "t3EP9kKwkENQ8VOH", "odds": 0.526743592004303, "type": "REWARD", "weight": 44}, {"lootBoxItems": [{"count": 2, "duration": 5, "endDate": "1984-08-28T00:00:00Z", "itemId": "P8Gwjg3IOH0SDHgY", "itemSku": "KqxJiFJdrmj5vhzg", "itemType": "sJwex7wq8ZPlXNaU"}, {"count": 81, "duration": 73, "endDate": "1974-07-18T00:00:00Z", "itemId": "dY2vfJuje5cPnmGj", "itemSku": "TvYa5Pqx1K7qcAoi", "itemType": "jBPAp6EPb988Nzxr"}, {"count": 61, "duration": 40, "endDate": "1990-06-01T00:00:00Z", "itemId": "VpULjjiw3NeVG4DJ", "itemSku": "i9DaMrc0WFgKjE94", "itemType": "5x2CPVYYG9WvoGmA"}], "name": "mvaVV5YfxnUNcwjr", "odds": 0.9654101627538015, "type": "PROBABILITY_GROUP", "weight": 60}, {"lootBoxItems": [{"count": 90, "duration": 45, "endDate": "1987-02-28T00:00:00Z", "itemId": "hnfuF4WZiQVICVpW", "itemSku": "d3UM08gMXhdf3juX", "itemType": "W4JprIb3CJCAtvSG"}, {"count": 12, "duration": 59, "endDate": "1973-04-25T00:00:00Z", "itemId": "a9dzOJDGCTHIOFje", "itemSku": "XbsSgR43kIDzxBwq", "itemType": "RJTzrHNZWUsq5lQo"}, {"count": 9, "duration": 20, "endDate": "1985-07-22T00:00:00Z", "itemId": "UYG9ccTt7Wxw8OQ1", "itemSku": "3t3uTw6zQuoZcXQp", "itemType": "oTOxe8y1jorNsg9Z"}], "name": "KYCKoISyXtHzoWGd", "odds": 0.8154594518640319, "type": "PROBABILITY_GROUP", "weight": 14}], "rollFunction": "CUSTOM"}, "maxCount": 49, "maxCountPerUser": 59, "name": "Mp3uOQIybqWfG9BJ", "optionBoxConfig": {"boxItems": [{"count": 32, "duration": 65, "endDate": "1989-11-29T00:00:00Z", "itemId": "KlbYHtbPtaxvagSl", "itemSku": "pGgVTF6VeDAPOGBw", "itemType": "weyFfXEOEAEtbag8"}, {"count": 99, "duration": 74, "endDate": "1979-02-20T00:00:00Z", "itemId": "9A3tXGve6DdK6uvg", "itemSku": "8f2cIoByk9fxtvsg", "itemType": "eAxo57nKAbZpsbJ4"}, {"count": 71, "duration": 39, "endDate": "1981-10-27T00:00:00Z", "itemId": "BNsi4giR9434WpKK", "itemSku": "dzxoufCNlFoOcWQQ", "itemType": "y4bjmQeEweoBHTdw"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 27, "fixedTrialCycles": 66, "graceDays": 66}, "regionData": {"QnbqY1cQwVEtAr5k": [{"currencyCode": "KKAo9MM2Cqm84jVi", "currencyNamespace": "9kIpqgrzpUkNOBWy", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1996-04-20T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1990-09-13T00:00:00Z", "expireAt": "1989-03-10T00:00:00Z", "price": 40, "purchaseAt": "1998-08-12T00:00:00Z", "trialPrice": 1}, {"currencyCode": "jj3b8QM8Rr45ULqX", "currencyNamespace": "QgvwD3PsKDJiWxQB", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1971-06-15T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1984-05-25T00:00:00Z", "expireAt": "1986-08-28T00:00:00Z", "price": 64, "purchaseAt": "1985-06-23T00:00:00Z", "trialPrice": 12}, {"currencyCode": "owPgIGuetxFMqXCQ", "currencyNamespace": "MAqQ2ZRGzNtrThFa", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1995-03-11T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1977-04-26T00:00:00Z", "expireAt": "1973-06-04T00:00:00Z", "price": 79, "purchaseAt": "1977-11-13T00:00:00Z", "trialPrice": 41}], "83WekqfWv04vvn9b": [{"currencyCode": "k5qr8qs2mqtnGAqX", "currencyNamespace": "UjNypF6MMqWpdEJs", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1976-01-06T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1980-01-15T00:00:00Z", "expireAt": "1997-02-14T00:00:00Z", "price": 53, "purchaseAt": "1982-01-20T00:00:00Z", "trialPrice": 74}, {"currencyCode": "FlounC3vJKBC7Swg", "currencyNamespace": "oViPeIB4Ehy0Y5aS", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1980-02-26T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1975-04-25T00:00:00Z", "expireAt": "1991-07-06T00:00:00Z", "price": 58, "purchaseAt": "1984-11-15T00:00:00Z", "trialPrice": 30}, {"currencyCode": "77eY9C14FbfiI2NP", "currencyNamespace": "vl1kCY5bEokxXxkW", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1980-02-11T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1987-07-09T00:00:00Z", "expireAt": "1983-01-02T00:00:00Z", "price": 43, "purchaseAt": "1978-04-16T00:00:00Z", "trialPrice": 38}], "BeIqdQGZC5kM03HH": [{"currencyCode": "ijsQRj7N8IAjmson", "currencyNamespace": "jj0ZR50BQ1U6aFD3", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1976-01-22T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1980-04-30T00:00:00Z", "expireAt": "1972-01-06T00:00:00Z", "price": 15, "purchaseAt": "1995-07-22T00:00:00Z", "trialPrice": 35}, {"currencyCode": "gZVl4gIF7v3qbZu9", "currencyNamespace": "M3OxqVAT4H1lRZ9Z", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1982-05-25T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1986-12-25T00:00:00Z", "expireAt": "1989-07-29T00:00:00Z", "price": 50, "purchaseAt": "1986-03-21T00:00:00Z", "trialPrice": 82}, {"currencyCode": "Bu4EzwRjD7jmQJeF", "currencyNamespace": "PghqamSc5y0X48eT", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1985-04-01T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1988-02-06T00:00:00Z", "expireAt": "1997-07-08T00:00:00Z", "price": 95, "purchaseAt": "1976-06-07T00:00:00Z", "trialPrice": 98}]}, "saleConfig": {"currencyCode": "7b9Z5BTsEA3EdmW8", "price": 37}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "4WedopzwSluBtRFP", "stackable": true, "status": "ACTIVE", "tags": ["5fNzBVrjo3g8CfRw", "YwNN3UYhic03qGEg", "prR3OEey0MkZwS6T"], "targetCurrencyCode": "tyl1HeT7VEPgG40Q", "targetNamespace": "yXzsOzgck078Igho", "thumbnailUrl": "QBp2mWAOYksczxBS", "useCount": 11}' --login_with_auth "Bearer foo"
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
platform-update-item-purchase-condition '0KO5bEJaPnAFjsod' 'yJQVVBrShGbIIuqK' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 100, "comparison": "isGreaterThan", "name": "03HgoXCR6XOMXwKd", "predicateType": "EntitlementPredicate", "value": "PCxwEdkyuT3MgzRe", "values": ["mM6v2AEozWWaYvBL", "E46bpuJip8JyxJ39", "Rq0112ISArROIodc"]}, {"anyOf": 43, "comparison": "isGreaterThanOrEqual", "name": "rtuWWrqTZbSqBSKp", "predicateType": "SeasonPassPredicate", "value": "AmgwhYzk33J34fiT", "values": ["xK63OHpnUCGBVfpc", "tNFUsUQ6ZXQcb2o1", "J5euLAbBgejqc0ap"]}, {"anyOf": 47, "comparison": "isGreaterThanOrEqual", "name": "VByeI3ycMcYYBixK", "predicateType": "SeasonTierPredicate", "value": "vIslt7N1qcxKs4nl", "values": ["f1MfqUZXkjHvcUOT", "ShBKsQjXvfQgQDt6", "lxNf09pefgFIiJss"]}]}, {"operator": "and", "predicates": [{"anyOf": 11, "comparison": "includes", "name": "Zl4VuY6rsZyo6CBR", "predicateType": "SeasonTierPredicate", "value": "gkewIzTOqKkcjRh3", "values": ["0znIKzAEAHQpBOgH", "l2gAJOTCbx7J3gNL", "IlTk3Bpclrk4hIRn"]}, {"anyOf": 63, "comparison": "isLessThan", "name": "P5l94s7CbIJ7eHnV", "predicateType": "SeasonTierPredicate", "value": "OboMkyB7FTexsOZ0", "values": ["16DqwdQPQ9HkSSV8", "b2p3b63KrcwIcXMh", "Gy83Xit6boOLGCcg"]}, {"anyOf": 8, "comparison": "isLessThan", "name": "MgTTLS2FgarY903I", "predicateType": "SeasonTierPredicate", "value": "ZUDj9dzGgGVxo9OH", "values": ["gfHumyfuBNisecYb", "ImwCwGqOf0bNs97K", "cOpR45VDlvSc0Mr7"]}]}, {"operator": "or", "predicates": [{"anyOf": 99, "comparison": "isLessThanOrEqual", "name": "9Xwt3wmRTrDCjhnK", "predicateType": "SeasonPassPredicate", "value": "bbrmgjhWK0x0ZidA", "values": ["J1CU1eD1La16Bw3J", "bUnUDh5yGjjv4Mwr", "v2vancmR6Z7rb21A"]}, {"anyOf": 76, "comparison": "isNot", "name": "8Y4JFVUdzA8bvXlD", "predicateType": "EntitlementPredicate", "value": "dM5T3fDSrSHrkoqv", "values": ["2mM6soMaTvQq2a9Y", "mSnzd7zgUxAogcnG", "dFNtRVSO0js0hG9x"]}, {"anyOf": 21, "comparison": "includes", "name": "k17QPkJHRhmLKQuQ", "predicateType": "SeasonPassPredicate", "value": "FSKiXl8G2uf6E8Ea", "values": ["JCpKedhuzI7G9NCK", "KXu1bqI2M5PmXfKn", "jXLSAS8MKMaxQ1Qy"]}]}]}}' --login_with_auth "Bearer foo"
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
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config --body '{"appConfig": {"appName": "SaVYcAYp7qSiDvsf"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "UOpWv46sXvpOjrpR"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
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
platform-fulfill-item 'KhP2jWnRTglw0gdW' --body '{"duration": 29, "endDate": "1986-07-27T00:00:00Z", "itemId": "4esuiDrquccz4J6f", "itemSku": "FQezJ5E3iYHIknvP", "language": "cJkjRevVYfiExpAg", "metadata": {"oK9YDq1x3dkbJFDE": {}, "BEOOvJ5BKeipIlds": {}, "gB4hOxb88WgKSLIp": {}}, "order": {"currency": {"currencyCode": "neDQCfwucHRL3o2N", "currencySymbol": "strL6TsJeRcE7Guw", "currencyType": "VIRTUAL", "decimals": 26, "namespace": "jM7X1fjzknv2HZMI"}, "ext": {"L2P2bh14LroFTnAu": {}, "ujPeP9N0vdVB5a2X": {}, "kS3XQfMuzZh4AhZR": {}}, "free": false}, "orderNo": "DzeEkDxaVogxHrOo", "origin": "Nintendo", "quantity": 43, "region": "2OW4Zw5QwVKWNy2t", "source": "ORDER_REVOCATION", "startDate": "1998-09-12T00:00:00Z", "storeId": "rvakR8rcwojLRjhc"}' --login_with_auth "Bearer foo"
platform-redeem-code 'aJ56nGlYZ2tod2BG' --body '{"code": "BXjNyRCtPOr1FU3Q", "language": "ZRr", "region": "gcNeTflyvUh3w5Zt"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'fwmOCKpFSMF0tfGI' --body '{"metadata": {"ZCTNiIRc9fEjkZhE": {}, "pAJMCxMp2J0hDg2k": {}, "MgkvhoQe9gD9tGN0": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "dweG0sFHxTHa2k60", "namespace": "SzCqUgq1gLbcIMev"}, "item": {"itemId": "TmC631p7q794bu49", "itemSku": "lINFTtERAXT2h3hc", "itemType": "Q2wV3ZbBTnNQnVUh"}, "quantity": 53, "type": "CURRENCY"}, {"currency": {"currencyCode": "5WnzVZdj8tsyzC4Q", "namespace": "aLXp3o4TDraEEaDN"}, "item": {"itemId": "JbVd20FVHevCjthJ", "itemSku": "Ub7jKuMrFaoLulzp", "itemType": "3sZxImVK5yh2LcM8"}, "quantity": 78, "type": "CURRENCY"}, {"currency": {"currencyCode": "aMW0ByjsRUrAHNRk", "namespace": "IcC4wNFzsbrtYvLh"}, "item": {"itemId": "56AWXoMiowdWSs9D", "itemSku": "Q0VU1HED9CGo9aUX", "itemType": "j3rh0UyqxVWlIMY5"}, "quantity": 40, "type": "ITEM"}], "source": "REDEEM_CODE"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders '4KV104MtMhKHmSjq' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'PuQZX5KjdNrEwfWo' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history '2MwulLg4bsO4YHEY' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'LjTSNDf3zazm6p5Y' --body '{"itemIdentityType": "ITEM_SKU", "language": "KEhE_uYYP_582", "productId": "LLiMvcu39YZJypWz", "region": "pNXgnoKIz8O8NglJ", "type": "STADIA"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'NAbl1g5ZmTTGYRbP' --login_with_auth "Bearer foo"
platform-admin-create-user-order '4QVey9pEz1TV5cUt' --body '{"currencyCode": "PBsw01i5Mf7WvbNS", "currencyNamespace": "eeDNfUESLlwHv3Jg", "discountedPrice": 39, "ext": {"Ksw5Xl7ZZrDZdbuv": {}, "CFBaVcohewKkVuGv": {}, "9fQXkErF0drbYrrF": {}}, "itemId": "QP6rW62CtetBW3pv", "language": "AJJieHhveGg97PY0", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 48, "quantity": 40, "region": "zvYwv7atn9EQv2Oj", "returnUrl": "8TFNeGtJGjKbMgCe", "sandbox": true, "sectionId": "rlQpKB8qoel2QK3a"}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'SOYdmMDikc3Fjm9H' 'oQDemtiQvURYZCeF' --login_with_auth "Bearer foo"
platform-get-user-order '30RT9rBgM8o7lxXq' '7TkdM7FVDCBcvVeg' --login_with_auth "Bearer foo"
platform-update-user-order-status 'rZddP8lLQo6tHj4z' '4cAM4LMJfWNZIxAg' --body '{"status": "INIT", "statusReason": "qgvEtEs2LpE0qfbv"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'dU8hlDoC9FnxqBlP' 'BYJ7X6uVy7FWTSfM' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'i2CPVGxjcdpdCqVe' 'ePMSqb8y8qJTUQY4' --login_with_auth "Bearer foo"
platform-get-user-order-histories '0Zrpn0vAD9YsPeDW' 'rAVQZSvgWuCuLsUG' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'rVQAbhS54ZuQHKer' 'sDmJLUHAKtfXCKOn' --body '{"additionalData": {"cardSummary": "a8DdjtZhh6ofsUoR"}, "authorisedTime": "1974-05-10T00:00:00Z", "chargebackReversedTime": "1978-05-26T00:00:00Z", "chargebackTime": "1986-11-17T00:00:00Z", "chargedTime": "1973-03-10T00:00:00Z", "createdTime": "1998-10-18T00:00:00Z", "currency": {"currencyCode": "c9NESV22eRBElD4K", "currencySymbol": "2Cy1tJcPAEkCeV29", "currencyType": "VIRTUAL", "decimals": 37, "namespace": "PCrN5bEhmuHgKeWi"}, "customParameters": {"zEpw1zN0mOYgGhHM": {}, "z9dddLWJWDuSYtCa": {}, "Iv4Lp91wYUJPbvzn": {}}, "extOrderNo": "8TYoMDAaUXSuBQdv", "extTxId": "dhJoT0WK5ngNUxDK", "extUserId": "fZYofPGUbSaA00nK", "issuedAt": "1982-12-15T00:00:00Z", "metadata": {"Gb0ceCbphW4YMhJ0": "S50bez9ZLHW882ri", "iPfRQ3rJ0f5lwXvR": "NDBnmL1KQn77hiP1", "lzkzjYDw6mLBordr": "JkD6vy60uRMT1Xw9"}, "namespace": "K9Yb68a8ygYx2Tqk", "nonceStr": "hlqMnE9Wj90EQzOi", "paymentMethod": "drWnLrXqImgDf3Ga", "paymentMethodFee": 73, "paymentOrderNo": "fIgLZ4YIzElrLZOB", "paymentProvider": "XSOLLA", "paymentProviderFee": 75, "paymentStationUrl": "5iasunESjcgr2drX", "price": 66, "refundedTime": "1985-11-23T00:00:00Z", "salesTax": 46, "sandbox": false, "sku": "BL28BqM8UzvKqeoT", "status": "CHARGEBACK", "statusReason": "Sa2OULZ0iOZJiOAh", "subscriptionId": "1SpLhMF2Pav11FuU", "subtotalPrice": 17, "targetNamespace": "uaO9TiTPnIh2iaIB", "targetUserId": "pYC4txul6VKYlNYY", "tax": 24, "totalPrice": 39, "totalTax": 69, "txEndTime": "1995-12-06T00:00:00Z", "type": "RCPMjr5M3vw1GqUj", "userId": "jFp6R8mYZwKftVqS", "vat": 62}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 't2hiPuDdOPHcN9dr' 'wqytieXpIZfr5XDq' --login_with_auth "Bearer foo"
platform-create-user-payment-order '9dGLHjtgE2bTXJxC' --body '{"currencyCode": "CFqPNDqWrpkWnnov", "currencyNamespace": "a15WVuE5cYVP9tQS", "customParameters": {"a27BnPyq3I1BLtGE": {}, "ZDRNkk4DJUofJXK8": {}, "RGS0zCYRVmbfzwUm": {}}, "description": "sy0stUmKdXiiTObN", "extOrderNo": "dqkWa13g3pgHx6uP", "extUserId": "f6jQZcYerH933X7i", "itemType": "COINS", "language": "afv-VdSA", "metadata": {"EHcI95GGdJvucDbs": "6UdccuM2ykRj3Wny", "AaUaQBKFedL2uduX": "vZUbQQ13FhD3NExU", "FipJsUiDawAjgHFQ": "k0VzWRNFNiUn2yXM"}, "notifyUrl": "SCcHADYpS861c0CJ", "omitNotification": true, "platform": "RDuaSixXEdloYZBk", "price": 1, "recurringPaymentOrderNo": "Y5dDwneac75C6S2e", "region": "HsH4Y84hL75QboMH", "returnUrl": "CtzEF9FSeg6WYgtf", "sandbox": true, "sku": "o9Gw4QtKgyIeySoU", "subscriptionId": "xoMrj2J4JGQZAtyj", "title": "TxnlmSyjEaFH2DRN"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order '6HIEqIFEcS0ynIMO' 'YWpUYUQMooiKT57r' --body '{"description": "mbjEnimeR7EFBz43"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'E9FkOPVu2fDtOjW1' --body '{"code": "iSYQbcebBd5wb5H3", "orderNo": "qppoCiHMD4iBK2O7"}' --login_with_auth "Bearer foo"
platform-do-revocation 'qYtOHV5hnpjc5CNL' --body '{"meta": {"nnEvo25aEtdjls5o": {}, "adseJg7y4Q9CU3fj": {}, "SRaXD4HDmdvhMXxi": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "u7BIimNuwB3hBVhu", "namespace": "SMHhf5R2MkxQTAYG"}, "entitlement": {"entitlementId": "fE6hXZ7XLoWCGf0d"}, "item": {"itemIdentity": "ZEeXBd6mGG6SHcZb", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 34, "type": "ITEM"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "JRYV1oqNLmPAUIMw", "namespace": "a2wYq6DsUq38bYva"}, "entitlement": {"entitlementId": "WLoKzHnngdfFnOfY"}, "item": {"itemIdentity": "9stXH6LYXXMndxBP", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 63, "type": "ITEM"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "VB7cNzHhvxc4xAPZ", "namespace": "86WNnQOhusPn4466"}, "entitlement": {"entitlementId": "u8agb5HPsBU0Eo6Q"}, "item": {"itemIdentity": "J9vBRJ4UP09fabC0", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 15, "type": "CURRENCY"}], "source": "DLC", "transactionId": "57BYBVCbi0ifdPyK"}' --login_with_auth "Bearer foo"
platform-register-xbl-sessions 'f3SwHekWIz4rXlH5' --body '{"gameSessionId": "jw99HxCjXWcaXBcf", "payload": {"XXeV7BXefsSgZxSY": {}, "nVwXqF6K0WA76Kl2": {}, "mHHoz6qBQnEDgX49": {}}, "scid": "n1xTDFcmOm1sqdIW", "sessionTemplateName": "U6ERylESgf5dXMrP"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'oYSohfrLyXMSrC62' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'xYtDwflNGfufW5cW' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'eg6eSCypsceITTkJ' --body '{"grantDays": 66, "itemId": "WaC8wk7HMbJhNwZg", "language": "f5nlMDORYuXnPNJg", "reason": "ayPFcyUnKXA3mcyM", "region": "mX6WF8jtNAVOYqSH", "source": "533YlJ93CCGBXv4f"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'P4VPzhcH4UJrrCKv' 'rOAi7lMgkVWJYzSC' --login_with_auth "Bearer foo"
platform-get-user-subscription 'IDxWUxgOzeRNHIqK' '5PT404mFw4HJv5T2' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'kIQOecfLsYKTmUnK' 'lrOsJmEwjGYN8VNP' --login_with_auth "Bearer foo"
platform-cancel-subscription 'XNsmwTV8imJHNI0l' '6jJVzF1Oi2sQuWUB' --body '{"immediate": true, "reason": "WxBs056jkPCUuE1p"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'gdHvlQKiR7SDQUDa' 'vOlKT5EIHNhJQq94' --body '{"grantDays": 89, "reason": "PqNZrLCRRUysya4J"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories '3rvTzMTMSwrNov2G' 'W9i54JY23AUWFTLq' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '0W1JqwKs1mO80L7I' 'OHlf6j8PZOzUiQKZ' --body '{"additionalData": {"cardSummary": "qz5NSp0B7LODN3Bo"}, "authorisedTime": "1975-10-10T00:00:00Z", "chargebackReversedTime": "1999-05-31T00:00:00Z", "chargebackTime": "1986-08-02T00:00:00Z", "chargedTime": "1973-12-02T00:00:00Z", "createdTime": "1984-07-06T00:00:00Z", "currency": {"currencyCode": "n4MZQt753XQB93rO", "currencySymbol": "W0guPoQbYzc1RDVh", "currencyType": "VIRTUAL", "decimals": 29, "namespace": "2lhdzxxgibuqUuyW"}, "customParameters": {"3cMz9YyduMomEHcU": {}, "15St4v8ry8IyqNVv": {}, "0KVpXJTMx3Y8Um1i": {}}, "extOrderNo": "qehObg3OZ9j0HDtb", "extTxId": "qMFlgHKQIRtLfPng", "extUserId": "D83roOeqE7fcCAeE", "issuedAt": "1983-06-07T00:00:00Z", "metadata": {"eQX43LpmdMiZeyIr": "A4QUKSJgECzvaWUC", "A7wKru7ry3AQ2sEH": "vSxjWoM1rNJLM0OO", "VG5cG6XxENbWqlX7": "idzjpKDfwl6XlCF6"}, "namespace": "YxFMD8tJQwZvUVIn", "nonceStr": "os5RK100yH89i8ZD", "paymentMethod": "PXRL8cbTAntB1STa", "paymentMethodFee": 0, "paymentOrderNo": "F1Qwzz606UGXPhoN", "paymentProvider": "ADYEN", "paymentProviderFee": 23, "paymentStationUrl": "wj6PqqOgCimr3ZQN", "price": 57, "refundedTime": "1994-08-08T00:00:00Z", "salesTax": 50, "sandbox": false, "sku": "gbtOtcQS4Cmgw1wR", "status": "REFUND_FAILED", "statusReason": "0xdNTuOdLKK0M2B2", "subscriptionId": "hbqJin37P69t1Kqe", "subtotalPrice": 67, "targetNamespace": "hjTFYdzsUNvQAn2L", "targetUserId": "uMjLqwmVz3zKsfjz", "tax": 22, "totalPrice": 26, "totalTax": 64, "txEndTime": "1982-03-23T00:00:00Z", "type": "CEq7FQ2S5VeW9ddx", "userId": "zLPV8wDjsnyPh5yN", "vat": 2}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket '3QiX9ZvtydbaVb0s' 'cd97A0GP6djn2Ps3' --body '{"count": 70, "orderNo": "Hil4Q0mqa8Gatrjb"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'J5YT7uvqarTvrG1D' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'XZAWlvz3c3XALMre' 'sGFfsH4aXCDhshvE' --body '{"allowOverdraft": true, "amount": 15, "balanceOrigin": "Oculus", "balanceSource": "ORDER_REVOCATION", "metadata": {"Hd250nyihcUVGHQc": {}, "zI5ZoTRUkjGoRkPs": {}, "2SO9XrgXNIaU11cB": {}}, "reason": "XLwTfopqeZtHJnRg"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'aGfLMFbvyI5PZGzV' 'LcmZKKKYARape2ts' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'Nczam4Cdd1QYvww4' 'XDokltgq2vXtUnY6' --body '{"amount": 97, "expireAt": "1999-02-23T00:00:00Z", "metadata": {"1oQCuXeTRyJQrNLT": {}, "cqLVTN5Qf4tjPGpu": {}, "27yxb1of79zVTWIf": {}}, "origin": "GooglePlay", "reason": "tPEi9Ze0hL9rPkV5", "source": "REDEEM_CODE"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet '4KoZQPLhDSJx9jzx' 'aRKph4kiIFgS4fLq' --body '{"amount": 24, "metadata": {"OkMcErmeH0lX1hj0": {}, "LaXgQ94flh775AQf": {}, "zNjQ7IuMSY2epRDJ": {}}, "walletPlatform": "IOS"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'KI5EVB9ZFzLNsjdC' --body '{"displayOrder": 64, "localizations": {"AmCL8bNTTfqLCv9D": {"description": "YBOProN4UWbQaKFr", "localExt": {"Tv4JWElmOCxqPrq9": {}, "I3XJWBxTLcOef8Mg": {}, "IwkrKFEtwESJCe2k": {}}, "longDescription": "sG3nZE13H2fILFzO", "title": "lAZbDQAEJLbVWH2X"}, "LIg3MgmdSvWp3h0x": {"description": "PsVY8qNwB2TY4v9N", "localExt": {"NfQSYLFKSl3FNFFJ": {}, "nt3rIwZdW02Su6aC": {}, "nL816aH6gOBUIMeL": {}}, "longDescription": "0GL3aefSDME8X2Mx", "title": "ILI42BJMPkZmay4C"}, "sye3iJLtjsu6ZJRC": {"description": "oDq3geuHFFaZzPIj", "localExt": {"ETqcKN1gaQ4Bn0cP": {}, "PtKaJlw31pdDrXQ4": {}, "7WSGyDCKF0LLhO3l": {}}, "longDescription": "GZ7eGOPj2XoFug8B", "title": "UQUmPHnPumcazKAn"}}, "name": "a0ji757aNDFeKnQP"}' --login_with_auth "Bearer foo"
platform-get-view '2j2WsQImTwYkiuxz' --login_with_auth "Bearer foo"
platform-update-view 'LrbJ0BkGzCNgesQl' 'ZZHIZH0iks6kx0ad' --body '{"displayOrder": 27, "localizations": {"MT8QOyTuUSD9Imta": {"description": "PAocOQcpBWSNrCjS", "localExt": {"NEAdojkCMmYyTGO0": {}, "7foRZ6FujpIWo0qJ": {}, "tqp4Q6XgICLgMHcP": {}}, "longDescription": "1eE6sjWQllYsONpp", "title": "6QGW56CNiszHE69D"}, "1MMoaf6KlgRtwaM2": {"description": "IoyY1wpIdjcAtTj1", "localExt": {"IMuuhxxlulfmya73": {}, "hX0a8Ri85PA9wNpm": {}, "rK5Y5heA2ewWnFcq": {}}, "longDescription": "HxXP3kRhtrBcBofW", "title": "TGYx2ihgioL8VvEz"}, "HGTt9emdCLmzJbdk": {"description": "ykVAnmnRfUilcKA8", "localExt": {"4d9pMsl7zrNJvDiP": {}, "2hNNEI8QrQ6H1ro5": {}, "CtU8UjgyCUpM1JBc": {}}, "longDescription": "Tzf4dz1BojPoQg97", "title": "6409vFd5z9r4nJWU"}}, "name": "vLp1wxGF747468MX"}' --login_with_auth "Bearer foo"
platform-delete-view 'Uq3uIffkIpPmrWVx' 'NZUvkiU2jXSwsBBR' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 31, "expireAt": "1991-05-06T00:00:00Z", "metadata": {"qIl7U12hO5vpk9DO": {}, "SgbsdGVPLD9A5Nmu": {}, "ZDUV3yHurgOfba1X": {}}, "origin": "GooglePlay", "reason": "T9JA0ll1RimBCiQw", "source": "OTHER"}, "currencyCode": "P5Vok9sNK1ORg3tC", "userIds": ["hsS3fFpaS1uq1mH3", "YrkWHNxiaNyqBfgw", "oYfPK2QiAUhIfi17"]}, {"creditRequest": {"amount": 7, "expireAt": "1988-11-03T00:00:00Z", "metadata": {"x0XYL0fJOPYpnPqG": {}, "lPnhBDOWqDU8N3Dj": {}, "VUt0n0jfyDbtIXIC": {}}, "origin": "Twitch", "reason": "6tmIR28xVxbtpSKO", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "mzQx1RsYhcRlv16W", "userIds": ["zuQcsjFehD6uTDYn", "qyNgN7GoeMsezFZs", "we8YK3lZFslECI9Q"]}, {"creditRequest": {"amount": 95, "expireAt": "1988-08-15T00:00:00Z", "metadata": {"wIGGsusS0zZRODEK": {}, "PdudZsLaf8aZrXW8": {}, "4dt0TSTmy7XF26K2": {}}, "origin": "Xbox", "reason": "xttUz8nWKJjv06Pu", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "DyGYIVFDbTvRYfpJ", "userIds": ["sgBd7MYLLoPZrkjR", "4wM9WZfOOxAzmsbh", "i5QJuc2SNBaOlXfg"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "m5Ki0orhXrISEaPZ", "request": {"allowOverdraft": false, "amount": 78, "balanceOrigin": "System", "balanceSource": "EXPIRATION", "metadata": {"3nplXaUQV5QEvKEl": {}, "LfbB7gwwAR1xFrny": {}, "irw3iJt5iA3JS2xe": {}}, "reason": "aJ08JrSHPqdhKHn6"}, "userIds": ["ZjZMdr1C2TIQzRJY", "7UfYSrdN0JVz4U43", "EcV1FRyeeqehMNeR"]}, {"currencyCode": "YKeMbL0G4v5D6ylZ", "request": {"allowOverdraft": false, "amount": 30, "balanceOrigin": "Other", "balanceSource": "PAYMENT", "metadata": {"O918X7rLoexHBMBM": {}, "MAYokSWFwajRGUyk": {}, "lfLVY6g3PO4hKAeF": {}}, "reason": "4GUV5m96qcCJsVOW"}, "userIds": ["tu5RPsqd66ImBEuh", "r531Kajxq7lzuVRV", "naxZVf6MD9r1y5Ih"]}, {"currencyCode": "EvhKIbrq1xsGpdob", "request": {"allowOverdraft": true, "amount": 29, "balanceOrigin": "Twitch", "balanceSource": "DLC_REVOCATION", "metadata": {"hcO55hVjfWyK02w5": {}, "QytAmkanukAzAMaR": {}, "vIUhUwguGgbLLN3O": {}}, "reason": "7CEYjxqElP5lA2FJ"}, "userIds": ["uwsEHlwdeJyhsHS6", "4eeuMgEctVEux2MS", "0iGLRTXGsC5mxxse"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'YqPudWviQsULL1tx' 'fX9tqFSkGXoIcFN5' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["JL9M53Mg0MzWS9us", "xxnMhjv66DyED4pr", "RVibTATxd7Mzjv1g"], "apiKey": "Sj8kcNhoqcRZRNAT", "authoriseAsCapture": false, "blockedPaymentMethods": ["479W8rXqwGVIRWgT", "NHCka3Wb5kH1BrLW", "UetP7nmESQDV3BD1"], "clientKey": "nnEzoUlUWqP4ElzL", "dropInSettings": "44KEm3uHBMCP5ckj", "liveEndpointUrlPrefix": "phURs4ksgsKJ2R6J", "merchantAccount": "acwwu8W1zvrKMRPv", "notificationHmacKey": "wA9k6yJz03NETdyw", "notificationPassword": "PqYerrpOm4M2pM4f", "notificationUsername": "IfcHBWZM50aHbPXR", "returnUrl": "ns3qwYL6LwGlZGF7", "settings": "XQPLAcIL7FvAMWqh"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "yyNZH1CducB5y5iM", "privateKey": "deBG7REG4meKEabf", "publicKey": "VXBJPIZqZC5d6JuF", "returnUrl": "dcfiNf0DOHKwxDF5"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "GJhCjVHiCn2hTefT", "secretKey": "8gPFJ4WndMpQhcLK"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "0WTZbtmQkwC8azx3", "clientSecret": "IRWme3C6p2r4D3NQ", "returnUrl": "djrjkX3AMgK3JgZu", "webHookId": "fzssA284mG7uAojL"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["YBsx8oqMzbE0ljQa", "Btb47V691j0FZp2v", "jOXptxzx6kkaZYpl"], "publishableKey": "52sQR9Znp5d1eSwr", "secretKey": "G2GBBEWrDbQ1ZzhD", "webhookSecret": "uLHq9LTBstguOdN0"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "O7l3GbKPHdDTQDEE", "key": "E2mTsn1NwJ71szsN", "mchid": "mnqZSWdEyOVYrTdD", "returnUrl": "q7IqbTVv8BLsqQW8"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "HSrEm5Y7jI232Sjk", "flowCompletionUrl": "tijiNzTUe8KdizXm", "merchantId": 36, "projectId": 20, "projectSecretKey": "mK0sCUsqxKocHomt"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'joU1kUqRedwIu1TS' --login_with_auth "Bearer foo"
platform-update-adyen-config 'Rr6r8mzfMedpcKhv' --body '{"allowedPaymentMethods": ["HPlvYanGqEkn9OEV", "wLWGT4MXhmzvRQb7", "c0vmjWq9fQqzulLG"], "apiKey": "fQMqSLQDlRFYMVfi", "authoriseAsCapture": true, "blockedPaymentMethods": ["Izxld80Ynss7hc3V", "UxxZIgkTLqMeJPCb", "s8jWmTteJhwNbwHG"], "clientKey": "G39YAZJ4HuLfeTfF", "dropInSettings": "BTOFFMJ9pq511jZc", "liveEndpointUrlPrefix": "TK8zmMfyshYk3b5c", "merchantAccount": "AFVo85r1b8Yp2Qnu", "notificationHmacKey": "hQuIdvZdj6AspWBf", "notificationPassword": "RnLcLbp7OmcrDJ7u", "notificationUsername": "1rrRPcnG89rnNW1Y", "returnUrl": "jfn8lY4DnYRxY8Zh", "settings": "Heb0CaPFDjrSotKn"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'pJWALpToj9rgr5Rf' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'fM5JXvPdzEpDln04' --body '{"appId": "F8BQjzobhDa8VxKO", "privateKey": "rfVfBRIfkStOqdXq", "publicKey": "hDMQ6tBLljC7gcT3", "returnUrl": "M1DArk4L80aXFY7S"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'Qkym9KvKMHK5fbqi' --login_with_auth "Bearer foo"
platform-update-checkout-config 'oeoRIplY0DIzRCNA' --body '{"publicKey": "O6ZpqXJmPJso6M11", "secretKey": "LLZWKgWxn9YL16HQ"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'dtAneXGgxNg33ZIU' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'rIkfmdXVvaPQzzKd' --body '{"clientID": "Fg7N7piT8VcrXLZn", "clientSecret": "uMNpKEIs3GC9VTK7", "returnUrl": "tkJWFpHt7MdKu9Xw", "webHookId": "n5GHJDGatrYOMO91"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'CYEjX867n9PT9fR7' --login_with_auth "Bearer foo"
platform-update-stripe-config 'mMuBXPDKCriRKzTZ' --body '{"allowedPaymentMethodTypes": ["7TXAVRnUVbxEJcKH", "E764EwhQfxFKIOGT", "1WKSmLoA0ILaESC1"], "publishableKey": "GJXsoBwqh0TQXa2j", "secretKey": "7v3zQJoQLTAlW75i", "webhookSecret": "cIKUpXazsFrmaGNo"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'i3RPTgWotLNz0u8y' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'SxA0yrjz4q7e0EJn' --body '{"appId": "ADXC2y0DY1E1SMK9", "key": "oA4vK56dsYI5SKV5", "mchid": "pDANyJ184miBhdVJ", "returnUrl": "t81fmLSyGuu5rbJV"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'IwRMtwApGbXnR3yC' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id '6f2MHGGedk0KzXRc' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'lOXdPYZQxBnttu4y' --body '{"apiKey": "W5etl4Xk8Hd1lRto", "flowCompletionUrl": "PMvsu9oswEPTvzww", "merchantId": 66, "projectId": 12, "projectSecretKey": "npbx8MCIjKzylqW8"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'auyseP9wEEyYAnHP' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'p4XzVL5McglFCrjx' --body '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "AYqXG2V3baMkZ9JC", "region": "qBIkUID0EE9InZNL", "sandboxTaxJarApiToken": "wwAhW2b5OHKtUv4l", "specials": ["CHECKOUT", "ALIPAY", "CHECKOUT"], "taxJarApiToken": "volfI0mqZctohLhe", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config '8Ofl2oB8VTjF0pD3' --body '{"aggregate": "ADYEN", "namespace": "HU8iYUOtG5gbQSKW", "region": "2MdgCH4bWxRF6fBP", "sandboxTaxJarApiToken": "a6GOuV5z0p8jaJs2", "specials": ["ADYEN", "XSOLLA", "WALLET"], "taxJarApiToken": "kVi8fqVPRqNbF5yL", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'YSa8xFLvcYexMMMi' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "DFh5RbW021cHN3Qb", "taxJarApiToken": "zVuJZH3k54cExxWK", "taxJarEnabled": true, "taxJarProductCodesMapping": {"7RmaOr6TLwVyE42A": "pAb7CKt79wAopZL9", "Cw6K9h55mwUvhdBO": "gumV4wAsd4ifGd0b", "kWrlhtfTywRW4fmg": "6btk3mAO4EtB0hn2"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'x1oTOX5gBQlVDx9n' 'eFHWhDRJtyYEt7yg' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'ZleAoUuVKneoO10y' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'tPdJ8SY3qoogOxoP' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'YvdIBJYyGURjEjns' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'lEYM8ngVT1ewVxvg' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'AocOqsd5v5n7eXCo' --login_with_auth "Bearer foo"
platform-public-bulk-get-items '9gZWdxfIdW8fNAM5' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["YdHivK2Q0WwolQy0", "37hJMOEv5W0v25yA", "ObZIbrA8XAKKWMDe"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'behSjpt0wrfWPXaI' '1Jb75o2MFOa6xgPt' --login_with_auth "Bearer foo"
platform-public-get-app '69QROGDeJCyHvUsn' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'LvXCSgQHvs25eiQO' --login_with_auth "Bearer foo"
platform-public-get-item '3oWdgXdm1IxL1Otl' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "eUBqBO0Ze049k9W6", "paymentProvider": "STRIPE", "returnUrl": "JzRpUsITfVruDuku", "ui": "n42zPZvOd4yZyMKy", "zipCode": "ED3qDO5HXp5oVkhE"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'SbHQ7hvTlzf7XwQt' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'VIYU87NgjDMcJxfM' --login_with_auth "Bearer foo"
platform-pay 'fYFlt3JvDgMiyBGy' --body '{"token": "gWFTAY3Th5mOwPCP"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'KVPlOGfFBlu2ZP0I' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'CHECKOUT' 'WyDkA5LmART6kulp' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'M4SRtUE5P4kxmHtF' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'bjqurHix0QYycDH5' 'we2Mx0sYCnYPT4i4' 'PAYPAL' 'utJ8dkAVOJ5imghd' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'fVhjnjd66A1SQmWG' 'ALIPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'LAVPAJ7zX5lB80k2' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'smdkBS2MaIP7Pjng' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'EFggq91cpgvoDBgY' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'fLBdGNAZEvbvxqa0' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'K7VUbjUnzirnEsxS' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "E4vBzG7VK8sWEshm", "language": "Gin-oK", "region": "mCQmGCF963CbsOaw"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'lRBQJH6fNekhk077' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'gxaj55huTA6AvmW0' --body '{"epicGamesJwtToken": "567BFqbrPIuxKmBX"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'Li6GpnqAeMvg3w0F' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'Q1520WM3TxWXSdTi' --body '{"serviceLabel": 74}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels '6tedgFUzBm5vGA3i' --body '{"serviceLabels": [40, 75, 59]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'qgCG7JwJCDqkzOdF' --body '{"appId": "wLJpIPxzLE1V9U1N", "steamId": "gpH7Oc44yjRdfqZg"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'v34GqqjelcN0GJmP' --body '{"xstsToken": "wUTWMx0MiPAjnWIh"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'FrqSn4erXEtU1CaD' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id '8AqsMCGBNhmUt6fz' 'YRn85brTu8F7cuCP' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'h1TGZJmgWNHWnvOB' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'dE2FMcKd7c94rEmI' 'YuAT5OAcUwYHGmG5' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'rNDBF1oU37vjfyX5' 'YLaM0wmi0i1WABBb' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'q8IzZsMFLX9ZhFXc' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'FtfBS3ZIHofhwyM6' 'Bw2sFGQ5DQoDwzrK' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'POZZnV3zR7YxSu6a' 'ddocg10Hy9jx7gBH' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'TOHHArjld0LnREsr' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'rB2pJ7V8BSrucjO3' 'zvSM5KeVNHU9GcOi' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'vIfcCJt4U8VSgXoi' '9Fw25b9qXzlIK2G6' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'AUjBCdf0Rp5e5IvF' 'uN1oUsCnBmGMx5F6' --body '{"options": ["EhM3dKvIG9MR0hTI", "Nvq1VR9SJUfQEX99", "6Mh1sQ3Dw3uyjgQN"], "requestId": "As9188Qm3W1De2Mc", "useCount": 66}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement 'QpqCgxt0NgDSj1T6' 'EdeYFmrLT0HbvS4k' --body '{"requestId": "SSt3CyDgf6eFAiqS", "useCount": 21}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'NI3BfjkFd6MHo6gG' --body '{"code": "Q5mChYoKD7yqCR03", "language": "uPzV-FO", "region": "jkq9iyTbyD3D01tR"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'puuyIagSSzEL8H4e' --body '{"excludeOldTransactions": true, "language": "mKVv", "productId": "hQj2KP3LLxl9Hs2L", "receiptData": "2wlpKBVURxHefz77", "region": "a9fntCNiHBRUNCPS", "transactionId": "re5GmZzCQwilS3Ix"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'SjlyvR9PxG9Lji2V' --body '{"epicGamesJwtToken": "c88W8aLjIxVGpdOq"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'guxvRwI9ZBTipMRl' --body '{"autoAck": false, "language": "lMe", "orderId": "wJnV94BrMSP31wAk", "packageName": "VH75UcmNXK5RqcIo", "productId": "9lpz9oM52vHPlwVV", "purchaseTime": 10, "purchaseToken": "jlPKDEYahnlLJaLC", "region": "vjRKKX1brmkJDfdn"}' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'gbQD3pO8U3W94Z8I' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'W2MAL9gYHEV3wnTZ' --body '{"currencyCode": "TvYYf4ZFuV6L2Ald", "price": 0.23729883879520497, "productId": "WWRN5wNYlFiliYmB", "serviceLabel": 35}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'wJR5poI718RQnj4i' --body '{"currencyCode": "mu6XFfRcWDXhq1Ym", "price": 0.5236969282537606, "productId": "eygr2S4Yw8NmPaBe", "serviceLabels": [2, 36, 50]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'HcPHEFuEVP9bF07g' --body '{"appId": "nWDULkJPQR0UJMr8", "currencyCode": "ouccGH0B4LCe2h0i", "language": "wcFd-gGxr_330", "price": 0.9851959256014748, "productId": "A88GDOUClGyzYgnY", "region": "Tdim6PkRoq5TO65K", "steamId": "Wh8ztRJkXxUAj3jz"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 'ZvEaY103YUIMuSjD' --body '{"gameId": "Hz0zPWMZQNNP2JqQ", "language": "PHj", "region": "TBT1Gofv4SuaZ8yC"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'B9TVZnuzgvAZJRm7' --body '{"currencyCode": "1EC3ENuvD8OPsp5Z", "price": 0.8952508356624943, "productId": "ez84KVB7HeWPnVeF", "xstsToken": "dy5ezlCU6SGzkMpT"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'L2wxobjxAbagqEmX' --login_with_auth "Bearer foo"
platform-public-create-user-order 'n6U2VeV2emK3JecJ' --body '{"currencyCode": "A4skqCbPxRkIAFQh", "discountedPrice": 75, "ext": {"yDdoLE2s7mrVrmTJ": {}, "wtBTzQTrNo1LcWNf": {}, "7xHpi1JZJjIRtCfq": {}}, "itemId": "DHSlo54zSnRN0zGM", "language": "ePb-DNqD_sE", "price": 34, "quantity": 40, "region": "jyzUZR2rFIAuALNh", "returnUrl": "NCyscsMBRLsWadk2", "sectionId": "OQ421q7Nb1vrKthV"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'vU5on065ApCkVN3Q' 'chuQ6pntxB648ss7' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'rBnvQHAM8gSdIybK' 'UByHBzfvgtRTPPzw' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'JmKaLCx3gcidEALW' 'e6RG5wWznu5AjwR1' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'Z4fU7ICcaQtuuKUw' '3dUwWHhQW3I1y9tj' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'RLVOXBMa0JiIe1AY' --login_with_auth "Bearer foo"
platform-public-delete-payment-account '0tUA7EKASk3USNLh' 'paypal' '7ebZcYqwfIHPWMkO' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'mrT5HL16jMwECnmw' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'Jv4rpqtzDaz0WUJl' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'BCHzJ2v9K8c1zOlZ' --body '{"currencyCode": "g30pagfP0FfOMBOp", "itemId": "eQT4zYIbU4i9mLyX", "language": "bHM-TSEO", "region": "G8y2ScXkwjpAp82p", "returnUrl": "GcxvXaG9LzHpMS53", "source": "jllopwirRo3A8Wxn"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'R0YaMsF3f5KLtpTS' 'sPMGDZTOwEP5Bhh0' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'NStWIggmhfAzVdNY' 'P7Ao1z7FeJM2fWXG' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'k7JObSHksRkabpmv' 'Rsc7ZYvXCT6m6mRZ' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'AlLBczJVeil7GbG1' 'ISBCkcnpxKUxLjmx' --body '{"immediate": false, "reason": "87hUHA0FJZwP8Gsl"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'Mpx3m7lEXTmnTbtj' 'K9RsyoqT3adB48Jx' --login_with_auth "Bearer foo"
platform-public-list-views 'p2zaItg9jTNZvpFE' --login_with_auth "Bearer foo"
platform-public-get-wallet 'UI21aSaIsMyLKPPI' 'Zx0zdNAagipZwiaB' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'rFrXtGMjujfHZB1g' 'MI1B8DXb37DffTZ7' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'yQz337LLNCjIySe3' --body '{"itemIds": ["6SA5dxATLv5PkLvr", "aRzChdjDGdlk2A2j", "HbAPNGInvbnf4ewK"]}' --login_with_auth "Bearer foo"
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
    --body '{"context": {"item": {"appId": "FFLoGggX4gQWyZoc", "appType": "GAME", "baseAppId": "T9okl6MlWOl9feWO", "boothName": "2bmOikTBJHTEm5PS", "boundItemIds": ["QdwLi3GOQkLtpuRN", "eyod5L6OooYoQn9i", "HEqWO1cVCUIOx90F"], "categoryPath": "eT1CULEMPaOU5nuk", "clazz": "ycAUlkUSZKUrsxNR", "createdAt": "1983-09-15T00:00:00Z", "description": "98HUBp56Q4WETxtG", "displayOrder": 79, "entitlementType": "DURABLE", "ext": {"sE89JW8UU0RsB6dv": {}, "rpmInhHYzVVlHGFS": {}, "wjby6rMYkVQnZDUA": {}}, "features": ["LoJyqwFVBd1ZjaRX", "bINRKQsxUO1YMxAn", "dOj5O6IBwXJjgQjg"], "fresh": true, "images": [{"as": "uivPob0YZEuXQACD", "caption": "DQryNf9VGxbOeJe4", "height": 27, "imageUrl": "wNbfti0LoTBcNzyo", "smallImageUrl": "CSw1t653G3ydYmGz", "width": 44}, {"as": "7onrUXVlB6xNel4B", "caption": "xb9KwFYqdhEVq3hb", "height": 37, "imageUrl": "ZCBWuVIROZuqdJBi", "smallImageUrl": "8pkn98VtLNkaIQJf", "width": 22}, {"as": "Nzl1ywEPiunixlEA", "caption": "HZzHs8x5oPSkZFIV", "height": 11, "imageUrl": "qNeKpOxPrlG9svdq", "smallImageUrl": "siVTqPbzY1yxl7ze", "width": 62}], "itemId": "E4wgcYT5CdjaJuUz", "itemIds": ["FIeqaVr1CE1gu6cY", "uzC77J4irvZ9tktW", "LtDdlmVGK6iolEw6"], "itemQty": {"IIpDc9X5ijmtDGvd": 68, "ESdY0eTkBWA44Qqs": 17, "TM3wnJyExuo5z9RA": 5}, "itemType": "SEASON", "language": "YgYZb7cAakJpqN6e", "listable": true, "localExt": {"sliPyXZGYIW5ZDtW": {}, "bdkzPP47RcUIi2Co": {}, "Nj4EG2emxKQk8cBr": {}}, "longDescription": "t5E8k8rzDZ08j6IC", "lootBoxConfig": {"rewardCount": 85, "rewards": [{"lootBoxItems": [{"count": 49, "duration": 43, "endDate": "1972-02-24T00:00:00Z", "itemId": "m8YDChFi3zLvfQWC", "itemSku": "85MxWxvW0veFl3uU", "itemType": "1aMD0mczWxc8f1s2"}, {"count": 88, "duration": 85, "endDate": "1975-11-16T00:00:00Z", "itemId": "jqEuMfuYFUS079tO", "itemSku": "pZYM1XV0Op0damyc", "itemType": "nTUOoMkOppZNOkqx"}, {"count": 5, "duration": 95, "endDate": "1988-10-04T00:00:00Z", "itemId": "6IFHNmB9mYBvtOwx", "itemSku": "jqyrjDApeN5eAfRq", "itemType": "SgH5xIuBTYOdsvNy"}], "name": "k52MQFkVVEf36S7y", "odds": 0.6747804812208297, "type": "PROBABILITY_GROUP", "weight": 60}, {"lootBoxItems": [{"count": 67, "duration": 17, "endDate": "1999-03-22T00:00:00Z", "itemId": "8bk6PwH1tdEAJSqX", "itemSku": "A0Wv0zWGvkc6byp3", "itemType": "mvyYT3GuaZVTxBlw"}, {"count": 24, "duration": 70, "endDate": "1981-08-15T00:00:00Z", "itemId": "eXKFT4rfSbbSlDPG", "itemSku": "f9Fn32SJNPZkEfkA", "itemType": "cJTMS4pVRcCHIGfm"}, {"count": 58, "duration": 82, "endDate": "1990-09-13T00:00:00Z", "itemId": "Tr9ACnI2sMrEgl7Z", "itemSku": "R1HCkf2Sw78lLGKj", "itemType": "DHuXt358gzqRMuMP"}], "name": "rIekxq58fikq83hq", "odds": 0.5738479326117034, "type": "REWARD", "weight": 68}, {"lootBoxItems": [{"count": 50, "duration": 85, "endDate": "1991-08-20T00:00:00Z", "itemId": "e6kVW5fkl60ImLBv", "itemSku": "6nUU0r1rfX9stpvJ", "itemType": "UuyPdzx8BM2wEgTt"}, {"count": 77, "duration": 67, "endDate": "1993-02-27T00:00:00Z", "itemId": "T5stwQFUEbTPQ8p7", "itemSku": "VMlxEXnqHwMyKpwp", "itemType": "hjUXvM1GqMkZ44UX"}, {"count": 14, "duration": 61, "endDate": "1972-06-06T00:00:00Z", "itemId": "BqtJaRyDlP9qIZJ5", "itemSku": "Krx6KkHagEugKJxk", "itemType": "U8Y58COtTNjnNSik"}], "name": "JDg6ujKvq0CIa1YC", "odds": 0.5825404293685537, "type": "REWARD", "weight": 84}], "rollFunction": "DEFAULT"}, "maxCount": 24, "maxCountPerUser": 69, "name": "MeQprfgLGkHX1tdB", "namespace": "jKmCBXETZwqdzAX2", "optionBoxConfig": {"boxItems": [{"count": 44, "duration": 60, "endDate": "1999-03-08T00:00:00Z", "itemId": "qUiTkFcLBrg2JB0W", "itemSku": "iCpVBwvAffJ3btt0", "itemType": "PpQY3Pnnic80yEO8"}, {"count": 6, "duration": 75, "endDate": "1990-03-31T00:00:00Z", "itemId": "6Jh10XMUGeDavCKr", "itemSku": "adJmJFUsU418vAlm", "itemType": "fGg9NO1Z2DvnAxH3"}, {"count": 31, "duration": 5, "endDate": "1992-12-29T00:00:00Z", "itemId": "3jyCkGKltBNE2Ubh", "itemSku": "NtH3yYg4Qnn2uhdw", "itemType": "7C9Bx1LQOTCbAPLC"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 33, "comparison": "excludes", "name": "rkyJFOVaewFcv9h3", "predicateType": "SeasonPassPredicate", "value": "YxuZnoSesWpLUHjG", "values": ["t2K1CzpQWslNGnLY", "aIcZN28gH4Cd9xTd", "UYR0yOvJhUjzcMtw"]}, {"anyOf": 70, "comparison": "is", "name": "NUlrhIpnlam2EefV", "predicateType": "EntitlementPredicate", "value": "sg7wSv9lyRyTdYBU", "values": ["xBSEQ8rBKc2K6oJX", "ljvBzvYNEtfgBFik", "t18cQ677SotDEtU2"]}, {"anyOf": 49, "comparison": "isNot", "name": "D8hCc9onSNjbQEqF", "predicateType": "SeasonTierPredicate", "value": "R69PImy6CcwlqJ4M", "values": ["1TZ87ltClc3RDXF5", "O3L8x1H5OgzHypgs", "SeKCvtPz7jagBG9a"]}]}, {"operator": "and", "predicates": [{"anyOf": 16, "comparison": "isLessThan", "name": "iL2943ClrNhEdxd2", "predicateType": "SeasonPassPredicate", "value": "ZKfvMf1T5FzYMf1j", "values": ["92q150WEIetOXMt3", "aCgZosntPzP1vXXB", "7MXy7Fp7lUfQqXrq"]}, {"anyOf": 67, "comparison": "excludes", "name": "VCf3gMWDAodCKqfq", "predicateType": "SeasonPassPredicate", "value": "Ur1hfhmGEKuVUZdC", "values": ["dtqtSUN4zvBzGh3m", "acRGataPrcgTcA71", "hIDNuMBZegHtB9uT"]}, {"anyOf": 59, "comparison": "includes", "name": "iiIoMZCjGiOZJpUf", "predicateType": "SeasonPassPredicate", "value": "RpcfEQn0O6D8PGQu", "values": ["BUkm2FyvdguCYVqF", "azAypgWhTED5YmPT", "yIKh1YtTY4AejyQc"]}]}, {"operator": "and", "predicates": [{"anyOf": 60, "comparison": "isLessThanOrEqual", "name": "ac7hSLldWx5DyniV", "predicateType": "SeasonPassPredicate", "value": "ZiVRYIyQLcslTEqg", "values": ["25smsrmJFHGiYnyh", "VNG8AqktgvjwNJAw", "IpEy2ZNpojZ24I2n"]}, {"anyOf": 2, "comparison": "includes", "name": "qxLuTZIxgiUaiyy0", "predicateType": "EntitlementPredicate", "value": "flAqqAP4M78smYdy", "values": ["ge6DroOywOxI4G6j", "EOq6BFjmN4OqKGLR", "ZzoYIFAvYfT8XQw2"]}, {"anyOf": 32, "comparison": "isLessThanOrEqual", "name": "NWzKZtZnxgywmr4C", "predicateType": "SeasonPassPredicate", "value": "NGm7Tk1mMyeNRsjQ", "values": ["hx9nC3o6pXU5MDJL", "uDEgO3MEQNL6ijLR", "vQOgoaBooTawHLMx"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 57, "fixedTrialCycles": 50, "graceDays": 7}, "region": "WbXWIRpgjooaBVem", "regionData": [{"currencyCode": "sbkaXZQ6nTj9rZpk", "currencyNamespace": "SntuOeaPAyPeEGBe", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1990-11-05T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1971-07-17T00:00:00Z", "discountedPrice": 96, "expireAt": "1993-07-01T00:00:00Z", "price": 20, "purchaseAt": "1972-08-27T00:00:00Z", "trialPrice": 70}, {"currencyCode": "jCHniVSn1gYGal5N", "currencyNamespace": "rBtT0om9OlGzpF25", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1982-07-14T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1983-02-26T00:00:00Z", "discountedPrice": 54, "expireAt": "1976-06-03T00:00:00Z", "price": 39, "purchaseAt": "1973-07-04T00:00:00Z", "trialPrice": 60}, {"currencyCode": "qwkXbCLbh8t0zPkQ", "currencyNamespace": "WRUlgE0kxzFMq9tt", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1986-09-09T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1988-07-31T00:00:00Z", "discountedPrice": 10, "expireAt": "1986-07-11T00:00:00Z", "price": 73, "purchaseAt": "1985-07-13T00:00:00Z", "trialPrice": 78}], "saleConfig": {"currencyCode": "Ans9SquNSJIay5Vd", "price": 95}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "Yy9Y9OCSmmT3WKij", "stackable": false, "status": "INACTIVE", "tags": ["JdNLmAvEdEBVAU3r", "qhT3uyQRXvvcUYDe", "WPZ8yhwQ0gIdj1lT"], "targetCurrencyCode": "bkv8V98cupW0L5Ws", "targetItemId": "iuITRMSPOUfWQwr4", "targetNamespace": "PYf48r66MaToxBil", "thumbnailUrl": "iy2vtRkpqL6KrVcN", "title": "z83J57t6OcYPQ5bk", "updatedAt": "1990-10-10T00:00:00Z", "useCount": 10}, "namespace": "ZAtyEWKWoZRUL7wS", "order": {"currency": {"currencyCode": "3HaMTXAX6y0STTN2", "currencySymbol": "sBEijjjpvSzGkED0", "currencyType": "REAL", "decimals": 50, "namespace": "weFYDBPyd1jJBxbr"}, "ext": {"buFay9PXgEQS4871": {}, "QSmsspn5sNfifK65": {}, "tvaH9jwcO48pthyY": {}}, "free": false}, "source": "REWARD"}, "script": "l90IBFsSb3FsV2Pn", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'lIqjJzuQ8GglVgxj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'OGQGlHm8VTN56tJK' \
    --body '{"grantDays": "wD8O07L9GG1uenDi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'hceaLdgPZI0fKW8L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'eQxItaK6s3Hha69M' \
    --body '{"grantDays": "gxjGJx62mkfVlu4b"}' \
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
    --body '{"clazz": "GB1pyk0PpxXZDy5P", "dryRun": false, "fulfillmentUrl": "kDAm8XIleiujtv2N", "itemType": "APP", "purchaseConditionUrl": "467xHbAiD3Pr3mXZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'SUBSCRIPTION' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'dARadfSoctA3GYO9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    '4ZOo94gS5DHLB65f' \
    --body '{"clazz": "xQ06GwTmobiBnfrn", "dryRun": true, "fulfillmentUrl": "cIoJ45L0Ze3YamxK", "purchaseConditionUrl": "DSZTl4UiJSCbG4Um"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'G3TkMTzOcBIciiKw' \
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
    --body '{"description": "Rs1E7sH2G9MJ6F7R", "items": [{"extraSubscriptionDays": 36, "itemId": "EpKoJlmhMQUCx70Q", "itemName": "jYbzemOTURzzAOIB", "quantity": 1}, {"extraSubscriptionDays": 86, "itemId": "rB7kcer5SvPLeQZI", "itemName": "pKFXgnsxx3c2bUsO", "quantity": 41}, {"extraSubscriptionDays": 64, "itemId": "9TVf4DvEzpoPRiCl", "itemName": "Z6rlwX99AHMLHqgu", "quantity": 87}], "maxRedeemCountPerCampaignPerUser": 51, "maxRedeemCountPerCode": 68, "maxRedeemCountPerCodePerUser": 21, "maxSaleCount": 42, "name": "VWzNwPcvGyieBsRU", "redeemEnd": "1972-06-23T00:00:00Z", "redeemStart": "1996-03-05T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["xSlorWEGN5bPGSOS", "iiItrSrEJMBAIwTL", "krMDFQfpQ9o0GJMT"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'wYirs9lwvPKd925u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '3fFLV0YeMrVaYSTR' \
    --body '{"description": "YGFzgLZ7gEypQf2P", "items": [{"extraSubscriptionDays": 28, "itemId": "mQzKg0jWCjpGwh7p", "itemName": "LAi5JmzvM6JFKB8i", "quantity": 22}, {"extraSubscriptionDays": 24, "itemId": "Hpl3sNRaDEC2OkXA", "itemName": "3WqypoOw0H2s0sib", "quantity": 87}, {"extraSubscriptionDays": 32, "itemId": "NBz81zRPntxpgi7t", "itemName": "XIcNEcGJjOCXpuix", "quantity": 86}], "maxRedeemCountPerCampaignPerUser": 44, "maxRedeemCountPerCode": 27, "maxRedeemCountPerCodePerUser": 99, "maxSaleCount": 85, "name": "QwSWqSs05rjISy4B", "redeemEnd": "1998-06-03T00:00:00Z", "redeemStart": "1996-03-07T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["JdkT7UYCV8agvwOI", "2LlOQNRN132RdgwM", "Xv9olKpRyWQim3ql"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'ART9mPPmYUvlkBGP' \
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
    --body '{"appConfig": {"appName": "JFaFzkABC8zWMcYW"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "ssUUXOsXMNdvW1hb"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "J6ijJbcycXmBcrJL"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "5YY6pYrmeMIHLS8e"}, "extendType": "APP"}' \
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
    'eGv0CEDTVSjINYeK' \
    --body '{"categoryPath": "LowG7UQB9pXzuCK5", "localizationDisplayNames": {"qd2m8A5axixm9X9T": "XNhN8y1PVriIyv9k", "juiAGiXx47etMikL": "FggYDc2FMbzZoeKa", "gnKf2Yifzvr9OqTs": "InGzHFpFXYJtHtqw"}}' \
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
    'oIwQBeIALI8JNIII' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetCategory' test.out

#- 32 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '4jrzrPsuMziNM8AB' \
    '7RRxiZH3ngnitURd' \
    --body '{"localizationDisplayNames": {"MjZLYCaeklQcFY1Q": "Ik1h5EKvMGd6hQ2m", "HjmLu4oFlReHy0Jy": "Zv7honqeiGTTqpgV", "sY1kPNdJiJXB3yjN": "UPIfvoXRO0CkW1Zc"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateCategory' test.out

#- 33 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'gUSbbnffBWRaJN1S' \
    'jCFLDNJfAhJGwSYE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteCategory' test.out

#- 34 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'ZjEb0Pv35fEk9s11' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetChildCategories' test.out

#- 35 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'bFXkf7rQJ4Kj7Qyo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetDescendantCategories' test.out

#- 36 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    '9tUptiyZzRX8Y4rx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'QueryCodes' test.out

#- 37 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'RWZPe4ZLAQWuBJwx' \
    --body '{"quantity": 82}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateCodes' test.out

#- 38 Download
$PYTHON -m $MODULE 'platform-download' \
    'tn7oInn1Bz3wM3BI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'Download' test.out

#- 39 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    '51etn17OcmSVHZ6w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkDisableCodes' test.out

#- 40 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'tPVAwgvxYxXJTduZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkEnableCodes' test.out

#- 41 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'p1nNYHREmm1cBuaR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'QueryRedeemHistory' test.out

#- 42 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'aGeM8yxRfejqSbVg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetCode' test.out

#- 43 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'Ld1FoyNFGpu5r2K0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'DisableCode' test.out

#- 44 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'IvVg5LwUygH98dzT' \
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
    --body '{"currencyCode": "L8azKCCNBZpwRFNY", "currencySymbol": "xx2dr6DDuDHXcfvX", "currencyType": "VIRTUAL", "decimals": 72, "localizationDescriptions": {"fIDbsMi48xOYVvEc": "Em53BYMBacQBIuDV", "s7U0AJtWPRteszMT": "d0R5Fsrf9xbVfgvG", "617GmxzClkR3M6Tw": "pwq3nLwxnJKjOo9f"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'CreateCurrency' test.out

#- 50 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'vfXF1VsikD3IphQQ' \
    --body '{"localizationDescriptions": {"iRcOtsthUwgQzNHU": "Z0l1FRfOjJUmCbi2", "llksf6GA8vTt92kl": "dCoyRdiOikUdqGoc", "LYBaRC7T5qSl7WN3": "ncPkqiTKzz72PKXj"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdateCurrency' test.out

#- 51 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'ShM2DvesmMIbiQfa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'DeleteCurrency' test.out

#- 52 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'Hxl2YUNRLRjgKqSS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencyConfig' test.out

#- 53 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'YgZnVfa8govttlpF' \
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
    --body '{"data": [{"id": "Aq8oebnS4Y2zkGYT", "rewards": [{"currency": {"currencyCode": "r9yJIveX52r6Inl9", "namespace": "VTJB9Al3mn2DsHDH"}, "item": {"itemId": "zSVJzhU5Z44zgZ1f", "itemSku": "ieLdl3Y82DOj5kPu", "itemType": "NRZZaUccuBYep9n7"}, "quantity": 3, "type": "ITEM"}, {"currency": {"currencyCode": "7fsblalJrwQiU3DD", "namespace": "0xZFH1fHFLSr0O4r"}, "item": {"itemId": "EZTbFDj2L2McvCrr", "itemSku": "R7h9uKLXDaRf3pxK", "itemType": "tJbRY5luCwKrt6wn"}, "quantity": 50, "type": "ITEM"}, {"currency": {"currencyCode": "xpVrcoXzSOEGEDYf", "namespace": "iGPYo2K3dN3YBOJf"}, "item": {"itemId": "vV6SuHovoQlk5wL2", "itemSku": "oXDZ20Bw2H4tz6KU", "itemType": "C4jXGj2G0GZ3JBYi"}, "quantity": 84, "type": "CURRENCY"}]}, {"id": "Y0dPVMd2WDUVEQTp", "rewards": [{"currency": {"currencyCode": "fyAIoF7qsANBbEKQ", "namespace": "rgocpjGNenRlDORL"}, "item": {"itemId": "vP7ynTuXzafCqlMr", "itemSku": "rVIehVCf3AwIzUdQ", "itemType": "6sTrUg7Z0SLrZraV"}, "quantity": 40, "type": "ITEM"}, {"currency": {"currencyCode": "LBUSrFnzE6yR1wLT", "namespace": "gjsnB2LFVrZRrOnt"}, "item": {"itemId": "m2KjbfCOuW3dBmFw", "itemSku": "UO7Y0xhMLwxgRpTS", "itemType": "UppvO3QG68KeD7QJ"}, "quantity": 87, "type": "CURRENCY"}, {"currency": {"currencyCode": "EEVDAg045BvtPd7i", "namespace": "bBA3sd51mDooH53v"}, "item": {"itemId": "ibq3Qcrtt8L5dIeb", "itemSku": "sw7EjkMnJSziEA43", "itemType": "WqIMJdrqHIsJ98WR"}, "quantity": 19, "type": "ITEM"}]}, {"id": "qYieXRthQZvzRi7p", "rewards": [{"currency": {"currencyCode": "qpajYEHs9TIkcnrJ", "namespace": "64BOKqywS6DKNSeb"}, "item": {"itemId": "2UMWOgVeYkCvqq0t", "itemSku": "O15pEVG7sNihxpuu", "itemType": "L7DJCxvzZnh8oBAk"}, "quantity": 79, "type": "ITEM"}, {"currency": {"currencyCode": "NCAUmdnLaVRUu5Vb", "namespace": "jwPa9rYgHaxeTT3e"}, "item": {"itemId": "buaYPNBp9wA4LxO2", "itemSku": "n7WJQFzBCD9S03D7", "itemType": "JLsIM3VOMRvvqkXD"}, "quantity": 79, "type": "ITEM"}, {"currency": {"currencyCode": "zOB08tpk0qhZath4", "namespace": "b4HtwEYX55pJNTX1"}, "item": {"itemId": "sDjSWiSXsV5rJ8eZ", "itemSku": "XZ1TLMZnNL3DQK45", "itemType": "IAtbyUDDSJSV8pzl"}, "quantity": 22, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"IR7jnetIJPGObyWC": "LyFPHaxkKxEDvSoi", "2X9SygvMG8QAaWUh": "IguMvKDOrx0wQXKE", "royKz2reP63EVHT7": "2VuhoGP2IFXGU5hu"}}, {"platform": "OCULUS", "platformDlcIdMap": {"noQwg5uqgoHaFyoc": "zck0qJsgZPfuelAi", "ZBZcQGHHGI7csI8e": "cZSvzXYOytshBcKQ", "ytQagui6lsKF28n7": "UC7y1MKYVeoGFrDb"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"unXv1iE7YgEZspOJ": "0NiZl6OVLxKtkBpa", "CG8Nu5m4ctwUNV8n": "cebaJ0DCuIeEStt3", "PbyctX7HC2haQwVW": "ONEpAPedzI2Adlqi"}}]}' \
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
    --body '{"entitlementGrantList": [{"endDate": "1983-09-05T00:00:00Z", "grantedCode": "EJIQcbZJJ3AhkrMi", "itemId": "0bnppEJFISze88rG", "itemNamespace": "Er3cilJWhaW6jNsM", "language": "Tfx_qjto", "quantity": 97, "region": "ql9CdDX4xiHpdfKH", "source": "IAP", "startDate": "1990-12-24T00:00:00Z", "storeId": "bM6H1MnNSKd0KStI"}, {"endDate": "1994-05-19T00:00:00Z", "grantedCode": "vGQtzwjGtGTr238G", "itemId": "8Aevk3k14782W2oN", "itemNamespace": "o3X4m6wms9SPaHlq", "language": "VeZ-wiWn_Mx", "quantity": 16, "region": "NNRV4lBToTcn1l44", "source": "GIFT", "startDate": "1997-01-04T00:00:00Z", "storeId": "CcrvsV2I4X26p21i"}, {"endDate": "1986-08-14T00:00:00Z", "grantedCode": "jVs1lYK1Mx9rEFkD", "itemId": "qb31AZzwiQBaGdS4", "itemNamespace": "1VRIyAHjYxVhCbXb", "language": "cb-ovEL", "quantity": 89, "region": "R33jqIRoXcCPaLXJ", "source": "REFERRAL_BONUS", "startDate": "1981-01-10T00:00:00Z", "storeId": "XWjANSWIT9TLnuML"}], "userIds": ["C9yyBYepIqtrikdA", "NJAEk3A6A6rYiIu8", "eLdWykhBxLFnKnSY"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GrantEntitlements' test.out

#- 63 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["bdOT6iSRdEg8NYuc", "4q5sJVzaKGDOULJb", "jHphqjHGGAhfWaXq"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'RevokeEntitlements' test.out

#- 64 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'kA5fuVYOsMFo9tnq' \
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
    --body '{"bundleId": "a4LEWGg1r4nW4pBc", "password": "PPaiaM1og5rxUjGP"}' \
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
    --body '{"sandboxId": "KKLMoAy1stmxPFz0"}' \
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
    --body '{"applicationName": "i1IK3QzkcRwFPpXG", "serviceAccountId": "lKR9ss8b8udl6fLk"}' \
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
    --body '{"data": [{"itemIdentity": "xFnAqyvjBy0NXg7z", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"xqHw7f813qNjzlcx": "XsmGGcJhauxfhVKI", "bRvUnyElHPuQE3Gc": "8bY4IH0OXHZP6VVB", "7qjDHMS49dkv8vxy": "g6giNKzeFnlgGRgY"}}, {"itemIdentity": "K3SeYvULYNIhs5PZ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"dJsGoBIjCKlD3axS": "ivItV1txLINmdHTG", "LtX6TN5ctYX1sZnY": "F3hWmCCIrP0lJXex", "seo2e6BCNJTTRIHD": "KdVfOUr14yZH00n8"}}, {"itemIdentity": "MsRjaB8iurBWW5jS", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"i0seeGJIqnatME8G": "nNWfAY1yY6D1Euus", "f0eOzoSyKttYwUUl": "MRG8vO0OSsJmhOJD", "Uyyag9jBDJFJGOEi": "WJ8cLrryS5a6A4tL"}}]}' \
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
    --body '{"appId": "8YKMrUBL6dDTVwPI", "appSecret": "t1hrg2mhbI0NDshb"}' \
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
    --body '{"environment": "7ZzQuBPyNi1GhZHE"}' \
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
    --body '{"appId": "j6p5grjk5wzdksOU", "publisherAuthenticationKey": "ku8dtQoIrpvmM19X"}' \
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
    --body '{"clientId": "4zFOvdRTpGmBUjfE", "clientSecret": "U9vL8H96tuVfQwYI", "organizationId": "qDWqbPmwQw8J7na1"}' \
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
    --body '{"relyingPartyCert": "POTXhXLRU5prAdqn"}' \
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
    'nPOiTVzAeQq6rnWJ' \
    'oTpYoe2uHaWnO98Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'DownloadInvoiceDetails' test.out

#- 96 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'wqHZnEDkfmNbDTMG' \
    'gET2yS6C8a8L0vQD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GenerateInvoiceSummary' test.out

#- 97 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'S4EVpBmsUzx64Gr4' \
    --body '{"categoryPath": "XEm0uYYuAmqhftIf", "targetItemId": "e2zdqZ7ht1vUiJ7j", "targetNamespace": "BXy8psNoHNalwgvj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'SyncInGameItem' test.out

#- 98 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'u62rPFMbE1cW57Ga' \
    --body '{"appId": "NZLT1z0GqDZN7ftH", "appType": "GAME", "baseAppId": "hVy48YYg1AkRh3Nm", "boothName": "bRhMxKeIgwq1NZmx", "categoryPath": "a0ghRG020QpWTNKs", "clazz": "VyK8EU8JYc00PA2e", "displayOrder": 12, "entitlementType": "CONSUMABLE", "ext": {"jFeqQ8mBpTuvLTJU": {}, "zwXJFaWW3JVdYpfH": {}, "OYoLva2c4JscEQfB": {}}, "features": ["ZyvZOFJ5RrFZYcwf", "Q1Q2BbcjSpv6Nt1o", "FZXcSXpU81S5H9Xs"], "images": [{"as": "z4tdgfKu4bmK8kOK", "caption": "cEoCRjQJlPY3p42O", "height": 92, "imageUrl": "dnY04DIyosprZPBa", "smallImageUrl": "ERb7U9kK4VctUmDh", "width": 64}, {"as": "KSZxOhUhl3Y0Esha", "caption": "G0uDiJNUuxK22saW", "height": 1, "imageUrl": "wvkzLNIITUJGj5FY", "smallImageUrl": "aSgewLWHcBxz5Lpd", "width": 21}, {"as": "HpV8E1xQZLa7Kw77", "caption": "UpCxNyx1jjdxNePP", "height": 53, "imageUrl": "vNdENY1r1rI0T97q", "smallImageUrl": "A1OiblWlz2LXQNqc", "width": 84}], "itemIds": ["OHZzvdZHoIm4tKNh", "PjNIQGFxGwgnSiZt", "ChE0uof77AAPI5td"], "itemQty": {"PeFz9pGYsLNEGrfy": 83, "qHKufJfk0MeG3qYJ": 35, "GSLBmie8SJckSRbu": 98}, "itemType": "BUNDLE", "listable": true, "localizations": {"gmUm7RVCUREDdoGa": {"description": "tGQ1SeOXsg4jofp9", "localExt": {"PvlQ1xdmr4JDpvZg": {}, "vPGHjV7MNTpM7fSo": {}, "ds1zdVT0aWj58Oth": {}}, "longDescription": "vd3jzMDAf40gKSiz", "title": "vmxts5HSQvRAPG9J"}, "oVSLrbs5niXkjpkO": {"description": "gRCC7qfz5jV7NTRY", "localExt": {"ld9FJJ10goNq8uq7": {}, "9Du28SRRAMaQFEzp": {}, "peticckSUon7awfo": {}}, "longDescription": "l07696uxp5ieMjjO", "title": "fFSx3AJN97kUjwiC"}, "mWQvbrxQpUSnos6Q": {"description": "iHyrcGeRv27hj73E", "localExt": {"tufHuNIp0GXpM4nb": {}, "G7aww2TANW1Or7Tv": {}, "LoL0wwHoRMNexBOr": {}}, "longDescription": "on8wIdUbp7xVMKfb", "title": "AJfW4iMIC52NUedh"}}, "lootBoxConfig": {"rewardCount": 16, "rewards": [{"lootBoxItems": [{"count": 66, "duration": 22, "endDate": "1982-11-16T00:00:00Z", "itemId": "xfnMIDSCPr1m1Fg6", "itemSku": "tc250c2okDTem6o6", "itemType": "2xFY6TNqoLFFS4wB"}, {"count": 95, "duration": 26, "endDate": "1996-01-20T00:00:00Z", "itemId": "ir0n6O3vbYVjrcEr", "itemSku": "goApAxyDnHjAx7rZ", "itemType": "Tvew0WVDSMNr23LV"}, {"count": 77, "duration": 49, "endDate": "1996-09-26T00:00:00Z", "itemId": "EEv7O1lwxVTRll0G", "itemSku": "IEUJtMC8NyV2HLHZ", "itemType": "T3oYJlC4ie3InnSA"}], "name": "22NHTb4qXYyJUAlK", "odds": 0.18813218516606878, "type": "REWARD_GROUP", "weight": 45}, {"lootBoxItems": [{"count": 39, "duration": 7, "endDate": "1984-10-14T00:00:00Z", "itemId": "hxn1ay6ruu7PYWHO", "itemSku": "DRb6skOj0lfYFGnQ", "itemType": "CAWidWPjYgyebU6r"}, {"count": 68, "duration": 36, "endDate": "1987-12-12T00:00:00Z", "itemId": "irnUpZ9UJ4N78qHT", "itemSku": "Gdn7gE4bwLzDEw2P", "itemType": "Yt8x9SSaOZcEvG6K"}, {"count": 15, "duration": 16, "endDate": "1977-10-11T00:00:00Z", "itemId": "54BmtuIFllfSUnaU", "itemSku": "hC4x11AS2jTKoTYe", "itemType": "HaCuN7zpX9vp4QJd"}], "name": "Crwkz0nw2oxKye8j", "odds": 0.8345355926670978, "type": "REWARD", "weight": 22}, {"lootBoxItems": [{"count": 19, "duration": 21, "endDate": "1985-03-26T00:00:00Z", "itemId": "xiXf8OBQRqXWXQ3J", "itemSku": "dXdFz8pc0EEziE5y", "itemType": "Ivijq9ix16vo60jg"}, {"count": 43, "duration": 34, "endDate": "1982-12-29T00:00:00Z", "itemId": "V3C9hJ1kSZonK02W", "itemSku": "HGVKDcKulj3Pdegy", "itemType": "4G6LOpak8CYp6DPd"}, {"count": 41, "duration": 28, "endDate": "1976-01-24T00:00:00Z", "itemId": "ecc65YAFLweD9Z7U", "itemSku": "2lNkorrw9QH3rNhD", "itemType": "epQum4Dj7pR05RTG"}], "name": "XGRkYXifTd5nAOF9", "odds": 0.7610061166681983, "type": "REWARD", "weight": 72}], "rollFunction": "CUSTOM"}, "maxCount": 86, "maxCountPerUser": 59, "name": "wZjydyzGDZM4zTTY", "optionBoxConfig": {"boxItems": [{"count": 71, "duration": 62, "endDate": "1987-11-25T00:00:00Z", "itemId": "cf2doBrfHiHXXgvu", "itemSku": "496H02yOVN1h41jI", "itemType": "POMXufZPWSe20JfN"}, {"count": 43, "duration": 39, "endDate": "1992-11-14T00:00:00Z", "itemId": "trhjeVBnTrsYihhg", "itemSku": "beAZoFncMUdmf8hD", "itemType": "3nL1saQxLYrz08jh"}, {"count": 79, "duration": 93, "endDate": "1982-12-30T00:00:00Z", "itemId": "q7WUilXgtf5UctyV", "itemSku": "3aSw4twReM5DcHde", "itemType": "3fkHf7tH8WTOTeBO"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 42, "fixedTrialCycles": 16, "graceDays": 74}, "regionData": {"f6nGCnPjiIbJifs0": [{"currencyCode": "arKxCcNv8FQCyQBq", "currencyNamespace": "KxayGvw7MqOsypCJ", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1973-11-13T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1976-04-23T00:00:00Z", "expireAt": "1996-07-08T00:00:00Z", "price": 65, "purchaseAt": "1980-02-22T00:00:00Z", "trialPrice": 31}, {"currencyCode": "Lj4mCShMFlbrRGjo", "currencyNamespace": "BQ45Za4JR4S3iac6", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1985-02-06T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1978-12-21T00:00:00Z", "expireAt": "1988-06-14T00:00:00Z", "price": 95, "purchaseAt": "1972-11-02T00:00:00Z", "trialPrice": 88}, {"currencyCode": "JlWXmQFlef1tSHJf", "currencyNamespace": "6sVpwAAKKqmTy0ZS", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1989-08-14T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1988-03-23T00:00:00Z", "expireAt": "1988-12-13T00:00:00Z", "price": 76, "purchaseAt": "1976-06-14T00:00:00Z", "trialPrice": 56}], "fK6eiT38raaRG1Fg": [{"currencyCode": "0hfM5vQmahJlT5OU", "currencyNamespace": "DEMwAjgNZgto2EhO", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1977-06-04T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1981-08-21T00:00:00Z", "expireAt": "1986-12-20T00:00:00Z", "price": 28, "purchaseAt": "1972-03-31T00:00:00Z", "trialPrice": 49}, {"currencyCode": "uOJekbO0sk7o1z37", "currencyNamespace": "uuqLDQF12kYfBqeQ", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1978-05-31T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1993-06-17T00:00:00Z", "expireAt": "1976-09-09T00:00:00Z", "price": 20, "purchaseAt": "1993-05-10T00:00:00Z", "trialPrice": 65}, {"currencyCode": "R3KbYWtFzplXVk36", "currencyNamespace": "IpbGquPnIPwR1Bin", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1994-05-18T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1982-02-05T00:00:00Z", "expireAt": "1984-02-28T00:00:00Z", "price": 76, "purchaseAt": "1977-12-03T00:00:00Z", "trialPrice": 98}], "8n42UuxEyfzZJsZd": [{"currencyCode": "9sB6CV9KiWkbdpGq", "currencyNamespace": "WQIPK6mVytM5mBRT", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1989-09-08T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1988-03-22T00:00:00Z", "expireAt": "1975-01-11T00:00:00Z", "price": 61, "purchaseAt": "1992-04-12T00:00:00Z", "trialPrice": 92}, {"currencyCode": "jJh6PnpTXWAUt8lg", "currencyNamespace": "qNM4poGEvIKCe3Mr", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1985-04-08T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1977-03-01T00:00:00Z", "expireAt": "1975-04-10T00:00:00Z", "price": 53, "purchaseAt": "1977-08-09T00:00:00Z", "trialPrice": 48}, {"currencyCode": "uaBCdhzXb6cBMPNM", "currencyNamespace": "mjMi2uztFNfXg0Uv", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1971-09-01T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1979-07-08T00:00:00Z", "expireAt": "1983-09-16T00:00:00Z", "price": 69, "purchaseAt": "1972-04-28T00:00:00Z", "trialPrice": 16}]}, "saleConfig": {"currencyCode": "ODi5oF1pccdjjZpF", "price": 27}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "7xerpjVPfktNnl8U", "stackable": true, "status": "ACTIVE", "tags": ["hCxwy85vlhWw1RCg", "JVaEnaycYsKkgX0R", "MDxvlK9RnTEYv5eD"], "targetCurrencyCode": "Hr3f6UqFGCvsMFEF", "targetNamespace": "lXHBOK1RqtKYVObV", "thumbnailUrl": "orIVWWLaVJwe2KAc", "useCount": 0}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'CreateItem' test.out

#- 99 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'EhjJZbwMHkFWLSzm' \
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
    'AXAruYrVjX4HRTvm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'GetItemBySku' test.out

#- 103 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    '3Qr9IkuW6jjofc6i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetLocaleItemBySku' test.out

#- 104 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'tDEsq0dHfYG6k853' \
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
    'GERdJdphepF9dfsn' \
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
    'g9FGGjJ0hRPUBFxM' \
    --body '{"itemIds": ["2Fr3olO10RAyIZs2", "VfCRhzfKDAGIAJuP", "hQcZwXRE9FOZUVTf"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'ValidateItemPurchaseCondition' test.out

#- 109 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'Dc3w1tAXRrQtHkm0' \
    --body '{"changes": [{"itemIdentities": ["Tthcx9W7PkFNVa7c", "zD4wybVjqOKrqYGx", "cBxfjLUZHK0OO1yQ"], "itemIdentityType": "ITEM_SKU", "regionData": {"jxhxRxjeDrqCfJEj": [{"currencyCode": "rqJkFoZFZex0eOw3", "currencyNamespace": "1PXkVnetcvAuim14", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1975-08-09T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1984-10-24T00:00:00Z", "discountedPrice": 29, "expireAt": "1974-06-03T00:00:00Z", "price": 61, "purchaseAt": "1995-08-12T00:00:00Z", "trialPrice": 2}, {"currencyCode": "IHIYvJ7PPgVaFwGh", "currencyNamespace": "l5zqkzEu41hVfVC7", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1994-09-17T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1999-03-18T00:00:00Z", "discountedPrice": 43, "expireAt": "1998-12-14T00:00:00Z", "price": 66, "purchaseAt": "1997-03-15T00:00:00Z", "trialPrice": 81}, {"currencyCode": "YReIZaDC2Au2bEpy", "currencyNamespace": "mbJ4dPJmkdvyuDHF", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1981-03-28T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1985-03-02T00:00:00Z", "discountedPrice": 42, "expireAt": "1997-08-22T00:00:00Z", "price": 53, "purchaseAt": "1989-03-29T00:00:00Z", "trialPrice": 9}], "IPQeAL4MZwEVJe7w": [{"currencyCode": "aGyB6g2M5JiwtMOf", "currencyNamespace": "DfoMgU2yFBTPfnmf", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1980-05-19T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1991-12-25T00:00:00Z", "discountedPrice": 67, "expireAt": "1990-02-05T00:00:00Z", "price": 58, "purchaseAt": "1973-09-10T00:00:00Z", "trialPrice": 57}, {"currencyCode": "xZYnGcrZHMKoTcIX", "currencyNamespace": "eKZzZBo6ARaQnNZQ", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1992-09-24T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1987-09-14T00:00:00Z", "discountedPrice": 33, "expireAt": "1995-04-15T00:00:00Z", "price": 4, "purchaseAt": "1972-07-09T00:00:00Z", "trialPrice": 49}, {"currencyCode": "aWVjM3iVKjr5VDqa", "currencyNamespace": "kKdW767GAH1oiS1J", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1992-10-18T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1998-11-15T00:00:00Z", "discountedPrice": 71, "expireAt": "1978-11-28T00:00:00Z", "price": 65, "purchaseAt": "1997-11-30T00:00:00Z", "trialPrice": 24}], "tRhYYIpNqVHbbCVw": [{"currencyCode": "bitD5tWXZVvjYqrE", "currencyNamespace": "XKUDlmtixw9FtBVA", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1978-07-11T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1990-06-17T00:00:00Z", "discountedPrice": 7, "expireAt": "1973-10-28T00:00:00Z", "price": 12, "purchaseAt": "1997-11-11T00:00:00Z", "trialPrice": 82}, {"currencyCode": "eN2W2CNqmO8JALtC", "currencyNamespace": "iDuGQQsvWV3NSjXU", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1976-10-27T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1997-08-16T00:00:00Z", "discountedPrice": 38, "expireAt": "1990-07-09T00:00:00Z", "price": 49, "purchaseAt": "1994-07-20T00:00:00Z", "trialPrice": 75}, {"currencyCode": "hEyBfFFZwkC1PRjB", "currencyNamespace": "WzTuXttDREDWbOM3", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1993-01-02T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1980-01-02T00:00:00Z", "discountedPrice": 86, "expireAt": "1971-12-04T00:00:00Z", "price": 62, "purchaseAt": "1985-03-19T00:00:00Z", "trialPrice": 40}]}}, {"itemIdentities": ["seK1xaSbMjyFrYsI", "TcyT5AhNNH0Ht1yP", "tBwXIuYrbPUcvEOJ"], "itemIdentityType": "ITEM_ID", "regionData": {"knDJZK5gFHyIOnLu": [{"currencyCode": "9WBAS0qUswy0AnJZ", "currencyNamespace": "JdKrIn9hHHGg1cTZ", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1989-06-29T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1976-01-11T00:00:00Z", "discountedPrice": 63, "expireAt": "1983-08-22T00:00:00Z", "price": 57, "purchaseAt": "1984-02-27T00:00:00Z", "trialPrice": 4}, {"currencyCode": "nck3GnyPFQHgn9jV", "currencyNamespace": "E6QGkZ8AVzeiaDi6", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1994-10-30T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1994-03-07T00:00:00Z", "discountedPrice": 47, "expireAt": "1973-11-21T00:00:00Z", "price": 96, "purchaseAt": "1999-08-03T00:00:00Z", "trialPrice": 77}, {"currencyCode": "MUekrD0J6iuJsVjh", "currencyNamespace": "LgaFeFJ5QRuvEsU5", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1977-11-22T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1975-04-13T00:00:00Z", "discountedPrice": 7, "expireAt": "1973-02-01T00:00:00Z", "price": 66, "purchaseAt": "1989-02-24T00:00:00Z", "trialPrice": 37}], "PTfXVzS3hFUXbdYU": [{"currencyCode": "08BQZXTcZnHoYaII", "currencyNamespace": "5c5UqVvKR3ydSEb2", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1980-12-08T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1976-03-15T00:00:00Z", "discountedPrice": 34, "expireAt": "1985-04-06T00:00:00Z", "price": 50, "purchaseAt": "1985-04-29T00:00:00Z", "trialPrice": 4}, {"currencyCode": "WPcMIQc5lRQojhJg", "currencyNamespace": "pXVCubdw0sPrgDKq", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1983-06-01T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1977-08-06T00:00:00Z", "discountedPrice": 6, "expireAt": "1985-11-01T00:00:00Z", "price": 78, "purchaseAt": "1987-08-20T00:00:00Z", "trialPrice": 69}, {"currencyCode": "xJqK7dgsgrnpVE1a", "currencyNamespace": "cxZoDXdPORkWkyTc", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1981-09-02T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1994-12-14T00:00:00Z", "discountedPrice": 22, "expireAt": "1995-02-26T00:00:00Z", "price": 94, "purchaseAt": "1976-04-08T00:00:00Z", "trialPrice": 56}], "vD3mUDwtTF1ATVQn": [{"currencyCode": "AexrRomTZFHX4cgt", "currencyNamespace": "kxEx6tlxks0yGW8q", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1995-07-05T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1986-05-23T00:00:00Z", "discountedPrice": 18, "expireAt": "1976-11-17T00:00:00Z", "price": 90, "purchaseAt": "1987-07-19T00:00:00Z", "trialPrice": 69}, {"currencyCode": "Ptq10XBhcJfG9qYA", "currencyNamespace": "EpR44fWWEsCETqKl", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1987-05-24T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1971-06-29T00:00:00Z", "discountedPrice": 78, "expireAt": "1993-04-15T00:00:00Z", "price": 9, "purchaseAt": "1991-08-22T00:00:00Z", "trialPrice": 30}, {"currencyCode": "9JYmpKyZGtqWw67L", "currencyNamespace": "heLDvwZjthGMOB4H", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1979-07-29T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1994-02-22T00:00:00Z", "discountedPrice": 23, "expireAt": "1981-09-22T00:00:00Z", "price": 66, "purchaseAt": "1985-02-27T00:00:00Z", "trialPrice": 27}]}}, {"itemIdentities": ["AnlnjyPBj7h3hncU", "5vgL62RA2BI7kniz", "Q4Jx8In4w8yRFOLe"], "itemIdentityType": "ITEM_ID", "regionData": {"QyplscfsZvvUpCMJ": [{"currencyCode": "RliFCmFC9uUxSxI4", "currencyNamespace": "yyrZIV9M22gRLsc6", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1980-12-10T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1998-10-03T00:00:00Z", "discountedPrice": 38, "expireAt": "1984-01-14T00:00:00Z", "price": 50, "purchaseAt": "1978-09-13T00:00:00Z", "trialPrice": 86}, {"currencyCode": "iDZs0wyldbDDntsS", "currencyNamespace": "Q8DEsKT6Mw5xDz8a", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1984-10-13T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1982-06-12T00:00:00Z", "discountedPrice": 39, "expireAt": "1988-04-01T00:00:00Z", "price": 55, "purchaseAt": "1994-04-23T00:00:00Z", "trialPrice": 98}, {"currencyCode": "oXZ7HDb8g2BhzW03", "currencyNamespace": "O2pp9qVpZbsppRsB", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1993-07-17T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1977-09-04T00:00:00Z", "discountedPrice": 33, "expireAt": "1992-10-16T00:00:00Z", "price": 0, "purchaseAt": "1992-12-25T00:00:00Z", "trialPrice": 79}], "swcFOshiWEFDMG99": [{"currencyCode": "v5LSSkkEoAarkgZ7", "currencyNamespace": "73cdzYhgH24VR4hJ", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1976-01-11T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1977-03-29T00:00:00Z", "discountedPrice": 15, "expireAt": "1984-05-22T00:00:00Z", "price": 6, "purchaseAt": "1983-12-19T00:00:00Z", "trialPrice": 82}, {"currencyCode": "mvvvPmueVVC0ymY7", "currencyNamespace": "ABWgZVxM4rAqxlnH", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1978-09-18T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1991-09-01T00:00:00Z", "discountedPrice": 63, "expireAt": "1982-02-08T00:00:00Z", "price": 63, "purchaseAt": "1985-06-25T00:00:00Z", "trialPrice": 37}, {"currencyCode": "IyV2DqxWhSV3r9vk", "currencyNamespace": "4HQDiwqJUZHP7HM6", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1987-02-04T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1971-07-07T00:00:00Z", "discountedPrice": 19, "expireAt": "1997-04-18T00:00:00Z", "price": 15, "purchaseAt": "1990-06-20T00:00:00Z", "trialPrice": 10}], "Vm8UeFUbaGb5on2k": [{"currencyCode": "vdeu5DfAxsrX7OiS", "currencyNamespace": "Rs0z2RYA8fTlbfUO", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1993-08-25T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1987-01-08T00:00:00Z", "discountedPrice": 32, "expireAt": "1986-12-16T00:00:00Z", "price": 13, "purchaseAt": "1991-01-10T00:00:00Z", "trialPrice": 72}, {"currencyCode": "MegxV9JnAJSu3MX2", "currencyNamespace": "yYJopKxd9MtXYGoZ", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1990-11-20T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1996-06-23T00:00:00Z", "discountedPrice": 93, "expireAt": "1978-02-15T00:00:00Z", "price": 80, "purchaseAt": "1973-11-12T00:00:00Z", "trialPrice": 43}, {"currencyCode": "CL4aV6oMUzpMmsvv", "currencyNamespace": "KTljWspMrC4TeRTN", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1984-12-27T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1991-05-05T00:00:00Z", "discountedPrice": 46, "expireAt": "1997-09-24T00:00:00Z", "price": 98, "purchaseAt": "1990-09-28T00:00:00Z", "trialPrice": 73}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'BulkUpdateRegionData' test.out

#- 110 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'x7FCWn7iOmKIN2ro' \
    'JNZmgEGzqDHdLpDj' \
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
    'LIhvCNlBRcFsa03N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'GetItem' test.out

#- 113 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'qu13LgD6kOUZXQKR' \
    'TVR95IwPCb2qOuIR' \
    --body '{"appId": "bBL0njCbitEJNHwf", "appType": "GAME", "baseAppId": "JPh6HpodpzuBQwTS", "boothName": "66qr03Mp14S8HG9I", "categoryPath": "D7mZ4eKHaAP4PYTo", "clazz": "JAMgJkC8UGlqb7ce", "displayOrder": 48, "entitlementType": "CONSUMABLE", "ext": {"eEhHz7OKYNIMPTFn": {}, "rbysdru1PotArVtI": {}, "Qyxp17b8SHvRIiJg": {}}, "features": ["Fol65yD1dLBQJcBs", "vUaK2iHOkgyhgijq", "Grdz6Ar6ZMGUI9Z0"], "images": [{"as": "tdzrvCDzH5ACyLXm", "caption": "LsHXWPqYBJTzlt30", "height": 22, "imageUrl": "PAqdviBvToSQ7EqH", "smallImageUrl": "UhHn1qP3G2kSIurS", "width": 83}, {"as": "T441DX6xwuD6giqK", "caption": "LavCF9yVeJJwyaY7", "height": 68, "imageUrl": "UdtB5G8NITA0g58c", "smallImageUrl": "qZn79u2grirdqELb", "width": 8}, {"as": "ufk5WE4zPvxA5061", "caption": "CF9079hQA91csvlQ", "height": 91, "imageUrl": "KKjcKgU263PawPB1", "smallImageUrl": "0d4KCtC9mqs8uXBZ", "width": 74}], "itemIds": ["kbAWDUac65Jdlm1J", "JwmCAjTwtCqKdh92", "wuH9hLkAg90cQgXe"], "itemQty": {"ZnKRP6Gdv2QY9Bad": 75, "D1ZFk9fRCHfId0Dh": 27, "KJowQbOrgveLe4hY": 87}, "itemType": "MEDIA", "listable": true, "localizations": {"dcUuEE9wh4CEOrPY": {"description": "29A1L1Xijb7GTIFW", "localExt": {"cZWKcGHG9MBp1AEc": {}, "NUzfWwpdraZO1lfH": {}, "zX5CHNiYaLYUlRZS": {}}, "longDescription": "Lj5xwmP8QMJJJn2L", "title": "qw6aiKZbUJQ92BTV"}, "iMMFji1GmfmwhN25": {"description": "xGSRRZnwlbMGheYV", "localExt": {"teLiiIKPjokv6HMQ": {}, "OekLKHziTw5M3Kvz": {}, "pUEcp3cp4fWJlLrb": {}}, "longDescription": "VQceKy5JZK1rVpGd", "title": "pzlwFNJyyLozi8eB"}, "qPD6pfcv9jGr7b2h": {"description": "HbaUEtBnsggbEVNm", "localExt": {"ymBNr5C2BOjUiOQV": {}, "Ebp3z13pDy371QLV": {}, "tDb6RZXatSimmKud": {}}, "longDescription": "qURkyz4E3EI1bSCY", "title": "aa8JSNQdhrnvuDGF"}}, "lootBoxConfig": {"rewardCount": 17, "rewards": [{"lootBoxItems": [{"count": 96, "duration": 94, "endDate": "1976-10-31T00:00:00Z", "itemId": "6WQQwsTHCgTvrGll", "itemSku": "rcttK4WgzdUhB2Yh", "itemType": "KWidqRPQ1hSmShNa"}, {"count": 92, "duration": 26, "endDate": "1990-10-28T00:00:00Z", "itemId": "FsmFW74DkabvmYAT", "itemSku": "6qTg6ZOaTNC1LAen", "itemType": "tTXWyBmb2Ir2yOaV"}, {"count": 43, "duration": 98, "endDate": "1986-06-25T00:00:00Z", "itemId": "1N52PwdeTQhMz99a", "itemSku": "Z3fza0rlzqNhVNwg", "itemType": "XBCZr4m1UpizE7fm"}], "name": "00IB0YnQ5xpjcMxU", "odds": 0.5170172411656053, "type": "PROBABILITY_GROUP", "weight": 67}, {"lootBoxItems": [{"count": 21, "duration": 37, "endDate": "1987-09-20T00:00:00Z", "itemId": "VQKR0ItcCnXFRjhk", "itemSku": "7tzIHqZpgJqlw441", "itemType": "XUfp7AVnf8BzBBqE"}, {"count": 45, "duration": 79, "endDate": "1991-06-10T00:00:00Z", "itemId": "MDXEHz2uROYqy72x", "itemSku": "PhtIM8Rw0xHZOUW3", "itemType": "jlXYz8azHYdzaYe7"}, {"count": 97, "duration": 19, "endDate": "1989-07-04T00:00:00Z", "itemId": "hOyVaO1sgnJF31EU", "itemSku": "LHtVtkZrE0YPmtE6", "itemType": "fcv3nPROvD1FiqEU"}], "name": "hsD6QxKzbZ7xvbLK", "odds": 0.642764911318492, "type": "PROBABILITY_GROUP", "weight": 81}, {"lootBoxItems": [{"count": 83, "duration": 71, "endDate": "1989-09-01T00:00:00Z", "itemId": "MFdrQmX2OFLws9RV", "itemSku": "6lY9IGsZjUsSUE7N", "itemType": "uCYEOWNkgUfe6pVM"}, {"count": 91, "duration": 82, "endDate": "1977-08-23T00:00:00Z", "itemId": "8aRIev5s4q7Uwwra", "itemSku": "CDr326Q66cxtjNTX", "itemType": "sCsfA2pIWzC6nrUa"}, {"count": 44, "duration": 36, "endDate": "1996-05-25T00:00:00Z", "itemId": "t7t0llsH39PXWtk2", "itemSku": "22GY7L58lP7drhfB", "itemType": "jZFgaGUfhy5TZFoy"}], "name": "fZ0XfCxPDcH66JWK", "odds": 0.19857263827033367, "type": "REWARD_GROUP", "weight": 84}], "rollFunction": "DEFAULT"}, "maxCount": 36, "maxCountPerUser": 43, "name": "yQAbudR95sQ1FygQ", "optionBoxConfig": {"boxItems": [{"count": 43, "duration": 94, "endDate": "1978-06-20T00:00:00Z", "itemId": "X9pEJ3R0cuQGjCSh", "itemSku": "STNyM9yuMOFavgMW", "itemType": "yxizWKQdVExukcKD"}, {"count": 96, "duration": 41, "endDate": "1984-03-26T00:00:00Z", "itemId": "hKKARjqJSWImXvaL", "itemSku": "XkvZvwk0v0OKy45d", "itemType": "qId3gXUWVAmaDjrn"}, {"count": 48, "duration": 17, "endDate": "1991-05-10T00:00:00Z", "itemId": "sIfqeLfl0wacx4is", "itemSku": "tsfrFqHu6f54mL4h", "itemType": "AfiqX3ThREYkndZI"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 97, "fixedTrialCycles": 27, "graceDays": 19}, "regionData": {"XxF2CFfEpf0qN2tw": [{"currencyCode": "LYXq4HSEGpaUMmdP", "currencyNamespace": "XWaJRdn3WMdrhlWq", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1972-09-28T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1975-02-18T00:00:00Z", "expireAt": "1992-07-15T00:00:00Z", "price": 27, "purchaseAt": "1987-04-16T00:00:00Z", "trialPrice": 52}, {"currencyCode": "mMgk0WYv2NTpSejf", "currencyNamespace": "bYniLmi1GQTjQVaJ", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1978-12-23T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1998-09-25T00:00:00Z", "expireAt": "1982-01-23T00:00:00Z", "price": 78, "purchaseAt": "1998-08-15T00:00:00Z", "trialPrice": 71}, {"currencyCode": "PNqPn7XRlnqiWP9W", "currencyNamespace": "WQMGmm0biVjE8A3E", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1992-07-23T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1983-11-04T00:00:00Z", "expireAt": "1986-03-05T00:00:00Z", "price": 28, "purchaseAt": "1976-07-10T00:00:00Z", "trialPrice": 77}], "gL0t7Qhdw4vmSxnJ": [{"currencyCode": "cyaijSCsFa6ipRu1", "currencyNamespace": "AaFjz0yLelzMzWiP", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1981-11-06T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1991-01-23T00:00:00Z", "expireAt": "1992-08-25T00:00:00Z", "price": 95, "purchaseAt": "1981-06-22T00:00:00Z", "trialPrice": 23}, {"currencyCode": "rxIv2ZMtZX5KZK53", "currencyNamespace": "tX2oxmEDDgGBgPWH", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1987-10-31T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1984-11-24T00:00:00Z", "expireAt": "1990-12-07T00:00:00Z", "price": 24, "purchaseAt": "1976-06-02T00:00:00Z", "trialPrice": 72}, {"currencyCode": "w2pDJDLeJwzbVEEQ", "currencyNamespace": "0D6RcLpRxXCStzvO", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1997-07-23T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1979-11-23T00:00:00Z", "expireAt": "1984-10-30T00:00:00Z", "price": 53, "purchaseAt": "1973-07-12T00:00:00Z", "trialPrice": 100}], "SNhnabXGs0qawVMp": [{"currencyCode": "Ru5wP9CTLKxi1BjF", "currencyNamespace": "MOIsJO7EUYasMTHG", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1973-12-20T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1999-08-23T00:00:00Z", "expireAt": "1995-01-06T00:00:00Z", "price": 62, "purchaseAt": "1987-05-20T00:00:00Z", "trialPrice": 61}, {"currencyCode": "hcMpuZW4KtmXptKH", "currencyNamespace": "Aev0UqYpD2R7Yqid", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1986-11-08T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1982-07-14T00:00:00Z", "expireAt": "1988-05-03T00:00:00Z", "price": 9, "purchaseAt": "1993-07-21T00:00:00Z", "trialPrice": 58}, {"currencyCode": "ntHsI11lC6BXyQW3", "currencyNamespace": "eG0BvuCoP1hIpdIW", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1976-11-23T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1994-09-24T00:00:00Z", "expireAt": "1983-05-26T00:00:00Z", "price": 57, "purchaseAt": "1980-03-28T00:00:00Z", "trialPrice": 93}]}, "saleConfig": {"currencyCode": "7Q9zNJHkXmHB9cu1", "price": 54}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "WUPA9vXrqLxUCyNQ", "stackable": false, "status": "ACTIVE", "tags": ["v7xB8GlNYJeVVZQH", "TTM8jU9tfr6NkPjb", "60b0Y8RDVgsQzaeO"], "targetCurrencyCode": "5C76GaeCobrGOAva", "targetNamespace": "YctXd3jNOlJBjBMs", "thumbnailUrl": "JisMu1kQcGm0x3Dm", "useCount": 96}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'UpdateItem' test.out

#- 114 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    '5JWu7DAXtIeslnM3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'DeleteItem' test.out

#- 115 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'lJQMDxu7Auj8cqdt' \
    --body '{"count": 82, "orderNo": "yydtCBznu3BT2fe6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'AcquireItem' test.out

#- 116 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    '8sGXFylcwoCMa2D9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetApp' test.out

#- 117 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'QtE0TKRHukM2BVMu' \
    '418S3o2DKmAp8kt8' \
    --body '{"carousel": [{"alt": "156L7Wl7UfG3Pbsg", "previewUrl": "YDgJ0JRrcPbe1REA", "thumbnailUrl": "4kpxN9tCjk58n5fB", "type": "image", "url": "WEoHK3yLZSpydGfN", "videoSource": "generic"}, {"alt": "LkVq9bAefBF8tiF7", "previewUrl": "mi3iOrnB83a6h6dN", "thumbnailUrl": "fg9f25YsZ1L6IGHu", "type": "video", "url": "7u2tOUpmu6zULXQM", "videoSource": "generic"}, {"alt": "3gJ0yHA6KDH87AmG", "previewUrl": "MvChuhxZJsDNCQEt", "thumbnailUrl": "OnYVE7i77NKczg6M", "type": "image", "url": "x1WRjiCokzg7q7bM", "videoSource": "vimeo"}], "developer": "x9p8sArSRypvu88W", "forumUrl": "yRMMRloXySTO9W3B", "genres": ["Racing", "Simulation", "MassivelyMultiplayer"], "localizations": {"4eB0PHoEfIdFP0Qa": {"announcement": "rAdoCQoVI26D2IdX", "slogan": "V2RNnCRn6spzE0Dj"}, "97Arjpd7IRveArOF": {"announcement": "ED1MAfVZhADFM15p", "slogan": "fl1N2CNDu3DpGXJr"}, "OgVnrneQPU35uuCo": {"announcement": "R3Wc6j3UqRICnmZx", "slogan": "ob6vepvgW3Vmnz3W"}}, "platformRequirements": {"sgPS6R3Uev7bCsyl": [{"additionals": "PZDz1fiXmZReVZ4i", "directXVersion": "nDP7o0Aeler4oEJE", "diskSpace": "mHHU4T74NkroVwJF", "graphics": "RFLnsSyJhQApjt9V", "label": "vn7MyjPjMUoUC9cU", "osVersion": "OeLu9OVb7aBijwHP", "processor": "yvaMEDKGCxmJgOQk", "ram": "ViutBjVUos6ZMGM1", "soundCard": "4H49GbRHeTMH4jK8"}, {"additionals": "hWOlHrqyBElA4m1Y", "directXVersion": "wb6nMhhSCXGzZMdN", "diskSpace": "wUYOkFXnGtw8AuvU", "graphics": "ND3dJ4hbxnIuxtrW", "label": "Kvmz0RzwVRhRmllq", "osVersion": "qWYgDWbrtw6qiRU6", "processor": "n8IKPZ1kpSeRooa8", "ram": "4wgi9Qjy4LtkYsyC", "soundCard": "JFj0ayzojVNIrqZC"}, {"additionals": "tbJmJSU0agO0PXHC", "directXVersion": "yo70kyuutjjQDfdr", "diskSpace": "0GXMgSK5Yx6dbDNB", "graphics": "B9LNziCP1xQygVqA", "label": "ioKka1tx56AwxAJU", "osVersion": "0XOoXFpKZ7smOvhT", "processor": "DIdO6ugOFZPtLUvu", "ram": "PK7wBmEY4lD14f0X", "soundCard": "IJh3uxrBGEumeTG4"}], "34DmlbwWuZpKPB4r": [{"additionals": "zvo2R5Q7tM4YbPsF", "directXVersion": "33KhfoL7PlFt47mQ", "diskSpace": "AQQzQAxQ8GRgWKOB", "graphics": "JYYXgFmEZ8kWtzrS", "label": "IfMjxzBwWKzJldpq", "osVersion": "tAlzVR0WqkbKYSr7", "processor": "IVc2WJyX67v7JTcr", "ram": "ppNGl78VMGk3b5E1", "soundCard": "GgAqoQkgiht0lsg1"}, {"additionals": "U1DExMK4z32P13aQ", "directXVersion": "RTMzFLsBDzdO8IwG", "diskSpace": "dLKPo5zR4q58Tka2", "graphics": "qLo5spq850ZKnX3I", "label": "nv5lG8WEklkFFkJP", "osVersion": "n2yomTQth1iJOyDZ", "processor": "JCwufYAURyXVoJ9q", "ram": "Eel6x5O5otpujfw6", "soundCard": "4GJDWklFkqhGFAox"}, {"additionals": "fL2vrevlUaCgxl01", "directXVersion": "oVwoWAbcskuBfcvc", "diskSpace": "oAMPzCXwpgD8MOfY", "graphics": "Xcljy6EB8dB8wCiY", "label": "q2y16Jp7HjPDG07X", "osVersion": "wughkPLKDhdMf1o4", "processor": "pweyQyv10mRO0tK1", "ram": "CH6ozETFSgu96JYK", "soundCard": "hAD9xM9T3YcYFOYm"}], "aaHSXapFLiHZfwcm": [{"additionals": "qpHRQcJzso1tgoqs", "directXVersion": "yjuA8sqeXbV9I8yo", "diskSpace": "0u2hT9UYbm2BWjzl", "graphics": "qIA8csXOpDTl6yIw", "label": "kTTCLlRCEQSp3XwO", "osVersion": "SNJT3B5f3ynPDyKk", "processor": "SYIIOqTjadq7tSbu", "ram": "LamxL9Ltl0k2ZOJH", "soundCard": "BnYPNYKWhYLsAlPZ"}, {"additionals": "s4v14XFGIVeBHRe7", "directXVersion": "JBlzH9CrXX7cBfnj", "diskSpace": "lfFFTD6KSEeAEd96", "graphics": "gzUY6EuVZznqQVYO", "label": "5728Ri3CuA2GelFQ", "osVersion": "yuDWvfe4Hp9aCLek", "processor": "Zch7a3b0hFYqZQAU", "ram": "m9m9ht4JsrC6ho0X", "soundCard": "SsR3HPQNrtkf3M9o"}, {"additionals": "I3ymYms9fuih2WML", "directXVersion": "ldoxYLZHiFEo5sDr", "diskSpace": "k8BZ0jnV4jAAxGZ7", "graphics": "94ngDQya3dvyjxR1", "label": "20zHmDzxvCGS2mYl", "osVersion": "0sA87gQx9kL8a1tE", "processor": "pNGaoJWjZSpZNjdK", "ram": "HqDX1jGg2X6VHZOu", "soundCard": "lL5KfkSA0amHSK4S"}]}, "platforms": ["MacOS", "Android", "Windows"], "players": ["Coop", "Single", "Coop"], "primaryGenre": "Indie", "publisher": "w7cgHHvIEPvqjKVv", "releaseDate": "1992-12-24T00:00:00Z", "websiteUrl": "P5x3gf1HnOzyuw55"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'UpdateApp' test.out

#- 118 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'KAICc0N5AqnaH49Q' \
    'FksDAGUgVcYdzd3m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'DisableItem' test.out

#- 119 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'UKKxi2anNFpYXwE3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetItemDynamicData' test.out

#- 120 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    '7QpBIY8LEEtCmsem' \
    'V8gAHQaitMhleY83' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'EnableItem' test.out

#- 121 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'sh3B07O0XQWCZXaP' \
    'i8oY6VkZP57PyBLX' \
    '7knj7y5qEOp7hzPC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'FeatureItem' test.out

#- 122 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'xvetFhAgAkkEhd3Y' \
    '16uyKwJ713r4F9WC' \
    '342Uggyr64isEfxb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'DefeatureItem' test.out

#- 123 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'FEabmT6MmgebEkQ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetLocaleItem' test.out

#- 124 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '3QcKQldxIqMgf2Pa' \
    'NJqIMDWJUW3I4SKj' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 89, "comparison": "excludes", "name": "XJ6anzAeqD1HlhQ1", "predicateType": "SeasonPassPredicate", "value": "2z2u3wwUBB3KkzIB", "values": ["xgVXvWuSKhoOQClj", "x4VA9ZxbKQDqG7UJ", "EMeseC0hnoI1dph0"]}, {"anyOf": 29, "comparison": "isLessThanOrEqual", "name": "kOXwHnS2VOESYx49", "predicateType": "SeasonTierPredicate", "value": "OWWCzn2paEvjRIcS", "values": ["RX3etMjv8jskCHfq", "a260P2hpjhYQEdyL", "F5uo9BT2QqCxWZGj"]}, {"anyOf": 60, "comparison": "isNot", "name": "Rc27d9a3AaZO1VcA", "predicateType": "SeasonPassPredicate", "value": "0I9Qm4xKek7ZAZJC", "values": ["Z4mDmXZIBTi05akx", "BYozWzUW4RDVM8Y4", "k1fizRJy5JoIlHjT"]}]}, {"operator": "or", "predicates": [{"anyOf": 5, "comparison": "includes", "name": "XDH8RZqUjELC82uP", "predicateType": "SeasonPassPredicate", "value": "nMUDAKQEkOvO52VT", "values": ["PFFuLWL0HQkTuy4f", "U6Ejumf9ltGde7x4", "luTsEk9TNqSiFJyM"]}, {"anyOf": 56, "comparison": "isGreaterThan", "name": "yoRKUrvfixr7UFzL", "predicateType": "SeasonPassPredicate", "value": "xK2ScBMbpsjgGDmx", "values": ["pN0sNW3RHxioyNed", "Q1E2lQg6rSZj7yw7", "aPU0DqhD5agSwSs0"]}, {"anyOf": 82, "comparison": "excludes", "name": "RF2pLQCqPGUmF8pQ", "predicateType": "SeasonPassPredicate", "value": "MoQZDN1sjuHXDU9Z", "values": ["3zfSvvmLgxlU5MdU", "HZdnYzFYEnOA6gFO", "FHISuKMr6e9VKi3l"]}]}, {"operator": "and", "predicates": [{"anyOf": 3, "comparison": "includes", "name": "7gHdIf6eMd0iVUmB", "predicateType": "SeasonPassPredicate", "value": "S6BHqs2Z5aknpCHX", "values": ["ujrja26Ygd7A1555", "Ir8JndNzIiCZiPRC", "BielNg6kfRgfnBT7"]}, {"anyOf": 84, "comparison": "excludes", "name": "1CLC324P82gdsOb5", "predicateType": "SeasonTierPredicate", "value": "aESuOM4olKFVsSfg", "values": ["MZsQ8CVsHXHYBx7K", "NQjKhrrrStCg99ej", "NACAFAJlcWkS5jnh"]}, {"anyOf": 20, "comparison": "isGreaterThan", "name": "oYFks2ULHooisOHh", "predicateType": "SeasonPassPredicate", "value": "dmVppuu6acpUdn8X", "values": ["qXF6bMzRd2Z2Wjut", "5IZjtFT6Bs8OO0CV", "GAptSES09ZcFGPCo"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'UpdateItemPurchaseCondition' test.out

#- 125 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'kMwrtVvGhHzNdHMJ' \
    --body '{"orderNo": "ys9gtFxWSkvzQZjQ"}' \
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
    --body '{"description": "rgnXc87G37jhABEz", "name": "5T57ICJiWEPnZsQ3", "status": "INACTIVE", "tags": ["d9kC9MEhGrQVQ3yK", "CwV9chX3evM1seGH", "9ZwZcLnJPavRNr3y"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'CreateKeyGroup' test.out

#- 128 GetKeyGroupByBoothName
eval_tap 0 128 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 129 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'sEp4sIwslUQociDS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'GetKeyGroup' test.out

#- 130 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'NS6hf28TvyyZjEMb' \
    --body '{"description": "PRNKUABS8cyK8SnS", "name": "vsUGLqYJevKKJR5K", "status": "INACTIVE", "tags": ["gHuLJEAS7pSDlIS4", "N3VRydtvWZZFDNIc", "86TKj3grgVdqSpg9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'UpdateKeyGroup' test.out

#- 131 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'xpXCh79kxpJyTba2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'GetKeyGroupDynamic' test.out

#- 132 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'Sx7lPUWhfLYtrkZ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'ListKeys' test.out

#- 133 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'V3jzXzilslRzP96y' \
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
    'J7RbX8fkG3hcRbcS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'GetOrder' test.out

#- 137 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'uSkd72wzQJjmhy4f' \
    --body '{"description": "9F9usH1ByGD8DDRW"}' \
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
    --body '{"dryRun": true, "notifyUrl": "5Ll9C3fSnntsqrUK", "privateKey": "REAt8zG7Mwy6qt1K"}' \
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
    --body '{"currencyCode": "RlDGxhO1YbPoWmG7", "currencyNamespace": "14ZA04yxGcMcYyro", "customParameters": {"mMVFEaTLz3hmDX1C": {}, "9gHM8SS73LrEja3X": {}, "lbCcD2bQLuFwHyfW": {}}, "description": "s9J4OjFm6OQMQgWL", "extOrderNo": "3hmjUydsgdt98Kfb", "extUserId": "aQpgEAKKLcKbPxGv", "itemType": "SEASON", "language": "qCgl", "metadata": {"152zR0PBTEvM3TgM": "sAS5t3TYXNAGl1xy", "1H8Ag2XY2TnyPCVs": "WzhPIeHkoUSeT3lv", "51D9Vwsfzatv4Jzf": "VNAJbSLBzqs2u1En"}, "notifyUrl": "tDzkQLgWQHXc3bRY", "omitNotification": true, "platform": "bJGFP8HZNLJ7aPbR", "price": 78, "recurringPaymentOrderNo": "DO0TIQbgg12LHWqV", "region": "dQIiLCN04Qo69tjP", "returnUrl": "Ce7O061ScAQ7gSO3", "sandbox": false, "sku": "lQUCJsDilWhSc6XI", "subscriptionId": "xh1HqBg5FhY2vclq", "targetNamespace": "nTbyZ7fYvmiZxdNp", "targetUserId": "mibPCLiJaHXEyuLQ", "title": "OO6qVUihFznsLFP3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'CreatePaymentOrderByDedicated' test.out

#- 143 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    '013gsIOArelbYwYT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'ListExtOrderNoByExtTxId' test.out

#- 144 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'tGsRNij1bUAIrKYw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'GetPaymentOrder' test.out

#- 145 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '673JvA3stZ6FN0om' \
    --body '{"extTxId": "me6HiOrbuq9cXar8", "paymentMethod": "FKACMfaESKKo0RBt", "paymentProvider": "WXPAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'ChargePaymentOrder' test.out

#- 146 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'Dj9PgWnODMMswus0' \
    --body '{"description": "ykKyOTFH9npo1k2W"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'RefundPaymentOrderByDedicated' test.out

#- 147 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '89U6PA5Byr1VJKsN' \
    --body '{"amount": 32, "currencyCode": "NYqepadIS0zRgire", "notifyType": "CHARGE", "paymentProvider": "STRIPE", "salesTax": 40, "vat": 83}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'SimulatePaymentOrderNotification' test.out

#- 148 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'rz0FUDXjV0GmcFSj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'GetPaymentOrderChargeStatus' test.out

#- 149 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Nintendo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'GetPlatformWalletConfig' test.out

#- 150 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Xbox' \
    --body '{"allowedBalanceOrigins": ["Xbox", "Xbox", "Twitch"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'UpdatePlatformWalletConfig' test.out

#- 151 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'GooglePlay' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
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

#- 156 GetRevocationPluginConfig
$PYTHON -m $MODULE 'platform-get-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetRevocationPluginConfig' test.out

#- 157 UpdateRevocationPluginConfig
$PYTHON -m $MODULE 'platform-update-revocation-plugin-config' \
    --body '{"appConfig": {"appName": "o23SF3XkwdkgeNE7"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "9mgf0blFr8NUmSdS"}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'UpdateRevocationPluginConfig' test.out

#- 158 DeleteRevocationPluginConfig
$PYTHON -m $MODULE 'platform-delete-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'DeleteRevocationPluginConfig' test.out

#- 159 UploadRevocationPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'UploadRevocationPluginConfigCert' test.out

#- 160 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "9CybTerX6wW5HLYx", "eventTopic": "M5DN6DJmnjBd7q6U", "maxAwarded": 6, "maxAwardedPerUser": 97, "namespaceExpression": "2OcvjggLVwAQMWoB", "rewardCode": "0LkwHKKIT2D8YJKn", "rewardConditions": [{"condition": "P2TmDSwAt1UGNieM", "conditionName": "e0c6eA8xCvVNgS0w", "eventName": "UvETmRwwaH21xuey", "rewardItems": [{"duration": 11, "endDate": "1984-04-11T00:00:00Z", "itemId": "KN5EzSmB6aO1Jqyp", "quantity": 30}, {"duration": 24, "endDate": "1974-07-28T00:00:00Z", "itemId": "IkM1Wvc2CcOra4RX", "quantity": 9}, {"duration": 54, "endDate": "1978-06-04T00:00:00Z", "itemId": "5naN6UuNARNfA4hp", "quantity": 30}]}, {"condition": "R3PiHyAFfiwIi9bI", "conditionName": "2X8C6xnSImJqwyGz", "eventName": "E1BMLJmTvUJIV0W2", "rewardItems": [{"duration": 75, "endDate": "1981-05-10T00:00:00Z", "itemId": "alZaxyEak02r4dRv", "quantity": 36}, {"duration": 100, "endDate": "1989-05-18T00:00:00Z", "itemId": "CsuQx2nME1E8lGIg", "quantity": 100}, {"duration": 61, "endDate": "1999-08-08T00:00:00Z", "itemId": "AWqhlJfHgWSAjBmz", "quantity": 18}]}, {"condition": "Y6D1Z2oKGmRbhR6r", "conditionName": "nSjFQf699gOqEWjr", "eventName": "9T9UhsGYJ3NLSVOd", "rewardItems": [{"duration": 34, "endDate": "1974-09-16T00:00:00Z", "itemId": "XzKcDEz6ivQvlpRK", "quantity": 1}, {"duration": 17, "endDate": "1974-09-25T00:00:00Z", "itemId": "P6ZfRFkQolDEtyxy", "quantity": 78}, {"duration": 66, "endDate": "1992-07-03T00:00:00Z", "itemId": "HBaKIf5hoyD0oT4c", "quantity": 37}]}], "userIdExpression": "PKVLZ59QuwBbW2xX"}' \
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
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'ImportRewards' test.out

#- 164 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    '6TmFiMrqZaZSR4SA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'GetReward' test.out

#- 165 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'MIG5DRP307xNIxMn' \
    --body '{"description": "iv6VDtGhPQu5IgTl", "eventTopic": "vO4wr8D7APHhihwd", "maxAwarded": 81, "maxAwardedPerUser": 82, "namespaceExpression": "SBKpqJ8V1kQHisGl", "rewardCode": "dXgqa99UNyHIlnrL", "rewardConditions": [{"condition": "OesUoAwwCO2c7aEA", "conditionName": "Hcpdx91UabvNvRaU", "eventName": "rUqTcFsGXxjR7vTe", "rewardItems": [{"duration": 80, "endDate": "1988-01-23T00:00:00Z", "itemId": "Dq7oo2SQp9UXJYEG", "quantity": 66}, {"duration": 32, "endDate": "1974-06-13T00:00:00Z", "itemId": "7AKOu2Xk8T0sqdmD", "quantity": 70}, {"duration": 82, "endDate": "1980-08-08T00:00:00Z", "itemId": "olfU1yEokwoBSfRP", "quantity": 79}]}, {"condition": "GVjcYe2wwruEu9pK", "conditionName": "FWxMrOrO7m2fUVM4", "eventName": "vgvN5a9nlua2qF5W", "rewardItems": [{"duration": 16, "endDate": "1985-04-24T00:00:00Z", "itemId": "b0pZrHFxE9EAcMe8", "quantity": 89}, {"duration": 50, "endDate": "1988-06-19T00:00:00Z", "itemId": "nsxazB0s0OGtkrGu", "quantity": 71}, {"duration": 63, "endDate": "1986-07-25T00:00:00Z", "itemId": "UtbT9Nimqnzt0awi", "quantity": 52}]}, {"condition": "yBzPWvDsw3y3noST", "conditionName": "unCZN39o0vZqaSrH", "eventName": "fwrqqHXHpPnC56p6", "rewardItems": [{"duration": 40, "endDate": "1972-09-11T00:00:00Z", "itemId": "EYBMPDDNvuy4MWHW", "quantity": 6}, {"duration": 99, "endDate": "1997-11-13T00:00:00Z", "itemId": "euC0ubVpUB9WTnYH", "quantity": 68}, {"duration": 26, "endDate": "1977-10-31T00:00:00Z", "itemId": "hs6Oydk9jSSY0aqj", "quantity": 18}]}], "userIdExpression": "jKRgCFKj2fpaEDgv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'UpdateReward' test.out

#- 166 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'MXedU0CtjH3UPJy3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'DeleteReward' test.out

#- 167 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'CnYG5ypxMPXQb9Aa' \
    --body '{"payload": {"9QMoQgjOf0byuj8U": {}, "xptb2o5jdTreVKh6": {}, "flE9FaNdFDCH0BMC": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'CheckEventCondition' test.out

#- 168 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'ufX5Ln9YKDyW9wNS' \
    --body '{"conditionName": "XGvHGabfCgecNknW", "userId": "oEbRoZQ4VuKeTQQX"}' \
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
    'DNtjgypGgBtsGOxH' \
    --body '{"active": false, "displayOrder": 67, "endDate": "1995-11-29T00:00:00Z", "ext": {"3WBHUGCPEvc97uDK": {}, "DBhngmXpNaXSgg2y": {}, "JzaaUc8p87eTTm09": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 36, "itemCount": 36, "rule": "SEQUENCE"}, "items": [{"id": "knaj1Fks8OhmWshF", "sku": "K5hyfwqkxFeK2HSa"}, {"id": "UyXEOQUwXDX8MGli", "sku": "jaR3VVk7nD09WBTm"}, {"id": "7Hy1AvjH8TO5OIzs", "sku": "hGgQ4ThugQFOWwlp"}], "localizations": {"o3MnSMNdjVtLt8Cr": {"description": "UFIkcZk3UEaPstaX", "localExt": {"tLCGf6Pjb7W28XF9": {}, "eX2LXwaZwDM1CYDL": {}, "maPDEUbDvBUnl1NO": {}}, "longDescription": "7rLa2XTR4IEvU0JE", "title": "2kLOQb2CBEoV5Nm1"}, "82ykfY01GcykfqRy": {"description": "XIVnis4SKjpYMZV5", "localExt": {"AVm0vOTpy2xyajHM": {}, "UnKflmcC3pOWLT8c": {}, "kEy2SMQcmxebThGY": {}}, "longDescription": "rgNOimVrZzkyKHvw", "title": "a7cbRj2at5ZJSh02"}, "srNNRw3Y1j6viZbW": {"description": "eu0WyHCl9Xs4E416", "localExt": {"s1Oq4B0c6hcP5jLY": {}, "1KxbFbyzOePaXR3u": {}, "b0i4catfNOlhlYHQ": {}}, "longDescription": "h4VgYhBaVDBRlLxo", "title": "AzljrhdaWNQoeso9"}}, "name": "mKjTRboTLjWe4LfJ", "rotationType": "CUSTOM", "startDate": "1994-02-03T00:00:00Z", "viewId": "OX0haxwoUd3ezYAd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'CreateSection' test.out

#- 171 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'ypb6oWXYIQqBIhw3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'PurgeExpiredSection' test.out

#- 172 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'NQXGJDWtQNJFHNbg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'GetSection' test.out

#- 173 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    't9uaoCeP9rZK0m4w' \
    'hjNMB89Aoh6Jk84k' \
    --body '{"active": true, "displayOrder": 89, "endDate": "1989-12-22T00:00:00Z", "ext": {"03b1ChdDIpRn2HgP": {}, "RevBMjempE90i47q": {}, "jDQAAvYZZABKOA0L": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 59, "itemCount": 94, "rule": "SEQUENCE"}, "items": [{"id": "wA9mw8ujZZQUNi4N", "sku": "DzBP7mmM4ZrXjamc"}, {"id": "3OX9fjEzscuFPv5t", "sku": "NXWb8n1xyB1MxbBG"}, {"id": "0waudrudTuIy3VLk", "sku": "d3YGg9Bzi8uluQOB"}], "localizations": {"uTuYNR4hzPkGOuDv": {"description": "T1kGGvspIGcvW7T4", "localExt": {"dk3MBzfrSZGlXPuk": {}, "j7q5MjU2f4833bcU": {}, "oBfWLjRXOqaoDBgs": {}}, "longDescription": "PHcNg0Bapd2WF3AC", "title": "WSPCOIejZfSnIavo"}, "uuFpqcq4Gd9fk7fh": {"description": "p8GNMEX4Ps5vorNX", "localExt": {"6W3h8ItD6AFXbQvG": {}, "bKVlE5VulHAZZ2SK": {}, "o1C0ktvmekdbic6I": {}}, "longDescription": "2n5Hclx6xvlDEhlv", "title": "zVBqt9fNnODJKrDd"}, "t60vGd1u3lR0fkCW": {"description": "4fYJAHmuYyTZt7v3", "localExt": {"mvPolaFeEWrqYB9h": {}, "LG74YMs1JCrpnpPP": {}, "UyyCN4MFXqnFzR6C": {}}, "longDescription": "20jVL8heTq0Wmf80", "title": "d7wzxTtcIyIFNDIR"}}, "name": "hPIRCNW8MLBfGHJs", "rotationType": "CUSTOM", "startDate": "1985-07-31T00:00:00Z", "viewId": "6LAtGzNwZUe0kRnf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'UpdateSection' test.out

#- 174 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'Bio030WDtRFRReZo' \
    'X0eYwpjuQPo1Bi27' \
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
    --body '{"defaultLanguage": "Mr8QiSBuE8WdxjHS", "defaultRegion": "rIcoNi9NFQFpBDG4", "description": "baNqdGxNGcHil6iU", "supportedLanguages": ["OTWxf4GH0N4kVmTj", "683Ybw4TKyPTxRuz", "NfmvBcfNBFiIw9mk"], "supportedRegions": ["jC9qXOVUNHtfbgUq", "bLQ3WTZF8gP7Lgkx", "hkSSID9PxPyXJHsW"], "title": "ipvZANpRXHVqJaiw"}' \
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
    'koaBb8UYH2Pz5V5C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'GetStore' test.out

#- 183 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'tSrcX7aRP8vZ9a77' \
    --body '{"defaultLanguage": "wOP10AbpbjZo2dQM", "defaultRegion": "3ZXq9atijyFT8B6h", "description": "ECr4zqhZ9lpllwas", "supportedLanguages": ["nryjxylwRVcy18iH", "O0dKNHWBFM13F37X", "9HTu6c4mMUdJoKmy"], "supportedRegions": ["aU7qTgHxGQ4Dm2Yo", "SLUIzzQsIU3IZf93", "pQmmWWhMnRSn6PRk"], "title": "0DwXkYJ6aX6XRSXg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'UpdateStore' test.out

#- 184 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '6OXqwh2Uj0IZZFXv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'DeleteStore' test.out

#- 185 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    '7pY5cNIYdQRni6If' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'QueryChanges' test.out

#- 186 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'H05hVdagEETj8DNz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'PublishAll' test.out

#- 187 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'QF9Ywa1VlJBmSCpF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'PublishSelected' test.out

#- 188 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    '2z5O9ugNuq4uGu9k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'SelectAllRecords' test.out

#- 189 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'm7KeyQB3SUe4ug9J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'GetStatistic' test.out

#- 190 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    '3KKHHaSwFS7fAGmA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'UnselectAllRecords' test.out

#- 191 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    '4gy2QBm02aTdgp0W' \
    'cRdrrdOKQbXXiMg5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'SelectRecord' test.out

#- 192 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'RAaD5a0gqyakuryI' \
    'SjsrHy7SSarFsJya' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'UnselectRecord' test.out

#- 193 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'noth2jhzr7POOjzR' \
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
    'zlmVmpfmMq65nYpN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'RecurringChargeSubscription' test.out

#- 197 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'Awv9UsvPaX8W0GvP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'GetTicketDynamic' test.out

#- 198 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'N7gRfsySRn2FX0Ac' \
    --body '{"orderNo": "7CzuPXE90ufrBaS4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'DecreaseTicketSale' test.out

#- 199 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    '58bBTbcqQVkSIXLG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetTicketBoothID' test.out

#- 200 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'F8dtk8bqcPfBJ9GO' \
    --body '{"count": 68, "orderNo": "kBUvsUcnOXhewths"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'IncreaseTicketSale' test.out

#- 201 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'zMsYOEmQiF1OsXfJ' \
    --body '{"achievements": [{"id": "G3psjIBzjaFmN0MI", "value": 28}, {"id": "GFvLtWl66DAEkAvX", "value": 33}, {"id": "VUxkCG4IGPYHaRvV", "value": 72}], "steamUserId": "fcfy4uTVbxv0l7Rv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'UnlockSteamUserAchievement' test.out

#- 202 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'POKq8iNNYLY5oWJP' \
    'oo8QT5EB5GCOCowE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GetXblUserAchievements' test.out

#- 203 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'RMveDiI5BYvV5LF2' \
    --body '{"achievements": [{"id": "2GlLe48YQRsZpn4z", "percentComplete": 38}, {"id": "5CedGPB0iJF96NG7", "percentComplete": 45}, {"id": "zOt2J0VxSVRWxJw7", "percentComplete": 17}], "serviceConfigId": "jFRDj47EZTCCwz8y", "titleId": "awNImZdPzt9koNSL", "xboxUserId": "3vqGgJOWkI0sHphI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'UpdateXblUserAchievement' test.out

#- 204 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'U3KaP7nk9iEaqudy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AnonymizeCampaign' test.out

#- 205 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    '3aYo02pzHannSLeE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AnonymizeEntitlement' test.out

#- 206 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'YvuciynwWb01HLrp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AnonymizeFulfillment' test.out

#- 207 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    '6OW9Y7FIIEJMm4Ki' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AnonymizeIntegration' test.out

#- 208 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'zs3NRbyYMyWPHp8N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AnonymizeOrder' test.out

#- 209 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'preWtVtRQu0coThN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AnonymizePayment' test.out

#- 210 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'xwnnpoM2KSoHlpDF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AnonymizeRevocation' test.out

#- 211 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'ImJNovlZq1O6RDUg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AnonymizeSubscription' test.out

#- 212 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'ilQHCts6SUNxUWIG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeWallet' test.out

#- 213 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'SkxjKL3EiP6WeXWf' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GetUserDLCByPlatform' test.out

#- 214 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'dBAVfIM2oLFaTIhv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GetUserDLC' test.out

#- 215 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    '5XrQvTAdisxP0Dyx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'QueryUserEntitlements' test.out

#- 216 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'qSYeCl4gEZgIMDAL' \
    --body '[{"endDate": "1971-10-18T00:00:00Z", "grantedCode": "4nsITUeFKNh8kgmM", "itemId": "jBxD74LujtGQD9sT", "itemNamespace": "5LHkWjFIo6VbU9gw", "language": "Hzwq_SBUO", "quantity": 25, "region": "g0ehjEmcjJzkf7rN", "source": "PURCHASE", "startDate": "1974-01-12T00:00:00Z", "storeId": "ZARHXZ5yuJsfxI3z"}, {"endDate": "1981-05-28T00:00:00Z", "grantedCode": "wCYQw4Rr3lmeyijw", "itemId": "D3pYZEoKfBV4CX15", "itemNamespace": "snBgmflygDW6ab0R", "language": "jT", "quantity": 79, "region": "XbDbXW9KlfgVvjjj", "source": "REFERRAL_BONUS", "startDate": "1993-07-06T00:00:00Z", "storeId": "g0HGzSGs8nBUQVBs"}, {"endDate": "1987-10-17T00:00:00Z", "grantedCode": "3D5vkAkZ8CS09fFr", "itemId": "bdregZfA6pBIXqoa", "itemNamespace": "oYoHcrIwc6qkDf3c", "language": "EV-nWMn", "quantity": 41, "region": "wSqwns2XJfUl3uiE", "source": "REFERRAL_BONUS", "startDate": "1986-01-20T00:00:00Z", "storeId": "03Jk5kBnuo4jR1HY"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'GrantUserEntitlement' test.out

#- 217 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'LJjnydxAGgqH3ytk' \
    'roZ2tfFjNF99VixS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'GetUserAppEntitlementByAppId' test.out

#- 218 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    '5Es3u4km3iKiNLRN' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'QueryUserEntitlementsByAppType' test.out

#- 219 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'xd74bEkQ8XN3xQ0K' \
    'aIZ1ISja5TxqN8RX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementByItemId' test.out

#- 220 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'vgNzoX14Km851zHc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'GetUserActiveEntitlementsByItemIds' test.out

#- 221 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'DdphWEIlBnOKyfAb' \
    'dUB1OM5oKTXANlen' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'GetUserEntitlementBySku' test.out

#- 222 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'FuUeRc2SCqQ9kgrq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'ExistsAnyUserActiveEntitlement' test.out

#- 223 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'AIaKAUBfyFCxsJfy' \
    '["os4fOD6B14cwUNBy", "HqsS7t8WUpg0equI", "g7wIz8o3rFWvlE7b"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 224 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'muaFNPCECKSzHTT5' \
    'beKYt4CDlWZzqpJe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 225 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'Qd6tN5oH4E7JosGE' \
    'pOKUFWLtsLf278yb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GetUserEntitlementOwnershipByItemId' test.out

#- 226 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'CNhF9RCyMn5VX87u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'GetUserEntitlementOwnershipByItemIds' test.out

#- 227 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '49Hsq4hLUkLLTNMn' \
    'mlFzzwpEZwbcCEsJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'GetUserEntitlementOwnershipBySku' test.out

#- 228 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'IB0JkRcYhCT3pUMi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'RevokeAllEntitlements' test.out

#- 229 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'Ok2aKaj7wqr7wwPC' \
    'gByCnljJ7CYvapWO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'RevokeUserEntitlements' test.out

#- 230 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '5JGco1tRG98viuYw' \
    'QTHKPcc8Z82Wtwci' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlement' test.out

#- 231 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'hC87O1U2uYktiAFq' \
    'IsHod9kt3xkRSajX' \
    --body '{"endDate": "1993-10-03T00:00:00Z", "nullFieldList": ["TpU3aCkzqs0hC50v", "EOIxc25vtorwrF6H", "tcJbqjCZkEvdWNk2"], "startDate": "1994-09-28T00:00:00Z", "status": "INACTIVE", "useCount": 38}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'UpdateUserEntitlement' test.out

#- 232 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'ZA5UWNq6yTj5WST6' \
    'JF9lLvPS5jJ58vaR' \
    --body '{"options": ["aaxVQeMUb1kvSj6j", "cjlxGsLgfrhBTH1Q", "V91XmB5Z6en6c5d6"], "requestId": "20U9addYCAtuTx2F", "useCount": 75}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'ConsumeUserEntitlement' test.out

#- 233 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'uEcXRhWbROnhOUSn' \
    'N2KpfXJ96sJUnv5B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'DisableUserEntitlement' test.out

#- 234 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'wzKyxJqBCaof96NN' \
    'QPxPe1HYkf4KjUJV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'EnableUserEntitlement' test.out

#- 235 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'MedBEWe14kmPIGCr' \
    'JozIio8nWa64x5pJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlementHistories' test.out

#- 236 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'SHZCzyWKP30Kusyv' \
    'aitTsWtL2AAtjEKW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'RevokeUserEntitlement' test.out

#- 237 RevokeUseCount
$PYTHON -m $MODULE 'platform-revoke-use-count' \
    '31SlSm20DzdKk8Fl' \
    'Vcy0hcEMFRkn8SAQ' \
    --body '{"reason": "htiWA2DHIocFR98K", "useCount": 83}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'RevokeUseCount' test.out

#- 238 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    'MPuYWk5lHvw9RXrx' \
    '8aUB1xXuK2MwrRJu' \
    --body '{"requestId": "kMTkO00KLgddr0UU", "useCount": 17}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'SellUserEntitlement' test.out

#- 239 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'sjvHHFmaUGIprrzf' \
    --body '{"duration": 56, "endDate": "1974-06-01T00:00:00Z", "itemId": "WNxqxl2qgslinTPb", "itemSku": "Y1473RFPlwtoen6T", "language": "TQtwMX4QAE2aV1l1", "metadata": {"P0cjdc49Ah8hoDWR": {}, "w7XYzZLlLq8lPGFy": {}, "b34DDyqvcwQ3uBzB": {}}, "order": {"currency": {"currencyCode": "m355IU5aZu5bRvxm", "currencySymbol": "9KYr60SyfWNB8u5Q", "currencyType": "REAL", "decimals": 12, "namespace": "tt0zz5gs7YuyxJLe"}, "ext": {"1TkfLiM9EqyhFh7m": {}, "q6sgk5cHaJYkzClq": {}, "Pty2kxgyry1MM9eo": {}}, "free": true}, "orderNo": "Qi5cRehBB7o24lw2", "origin": "Steam", "quantity": 55, "region": "3nE04Cbkpn0yX44a", "source": "REWARD", "startDate": "1973-09-28T00:00:00Z", "storeId": "0QyO5YXVhTiaE4WK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'FulfillItem' test.out

#- 240 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'nEeaUdAmgmnzKSVl' \
    --body '{"code": "XsRNMykbnHTrHLma", "language": "phgk", "region": "R5lY76lAzKbyHphq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'RedeemCode' test.out

#- 241 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'wB5Iehzt3ErL5T5r' \
    --body '{"metadata": {"vBRXJxUvm1xIvCyw": {}, "A95KVla3LCTgTkPt": {}, "cVfRHox2lJjo1I9g": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "DDG5HJEFQRX4iVg8", "namespace": "TK1CF9X9mTmMVfQa"}, "item": {"itemId": "iQKdHknLotplfBOv", "itemSku": "sb9aicyajUNH4cyu", "itemType": "oR5YkRhK1PGfmAnD"}, "quantity": 66, "type": "ITEM"}, {"currency": {"currencyCode": "LOlVbEWajKUr3rx7", "namespace": "Sdt80ugFtH5gSuRJ"}, "item": {"itemId": "LGkijLEJPCdahOY2", "itemSku": "goEK35CZu7WE18eU", "itemType": "5rtQUWRLvu3WEfwB"}, "quantity": 27, "type": "CURRENCY"}, {"currency": {"currencyCode": "40sJji4hVE3lKNQy", "namespace": "2rJxiPPjJk44WHDD"}, "item": {"itemId": "NDVgExcmm4fkoNMV", "itemSku": "Nk6z4A3FI60uUrVM", "itemType": "jqwLfyh5UUBSKyen"}, "quantity": 14, "type": "ITEM"}], "source": "IAP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'FulfillRewards' test.out

#- 242 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'H3l3jc1060kqFKNc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'QueryUserIAPOrders' test.out

#- 243 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'GHYIXDqQpOY256yQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'QueryAllUserIAPOrders' test.out

#- 244 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'cC8CPFXan7LUfcQh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'QueryUserIAPConsumeHistory' test.out

#- 245 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'cxynrF5qWYvJX1f7' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "MNo_KetL", "productId": "g9y47AVCmFD0nKyU", "region": "wcI9KJZt31la1wZg", "type": "OCULUS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'MockFulfillIAPItem' test.out

#- 246 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'F5AYZlEYqTVSCLem' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'QueryUserOrders' test.out

#- 247 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'vpJXl2drfGIgu0ks' \
    --body '{"currencyCode": "PtzdXjtRaBOlhg63", "currencyNamespace": "PduP0G77oZV8BGfa", "discountedPrice": 45, "ext": {"OWGw7LSW6Kb9otdV": {}, "BjacY5doQGhc8zSC": {}, "eJ4Q8PHY6vGzNfPW": {}}, "itemId": "TQ1pJMwPVAUNYFOg", "language": "7TplEkOZy73bRBtW", "options": {"skipPriceValidation": true}, "platform": "Steam", "price": 60, "quantity": 73, "region": "naFw1u7BLbxxmghZ", "returnUrl": "p6iVAJ6lYOK3cwO9", "sandbox": false, "sectionId": "3QvaFIVfHyAiTeDD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'AdminCreateUserOrder' test.out

#- 248 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'uvgKTfrZ6TfrQrFI' \
    'sYsZ1dTn2pA64FJu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'CountOfPurchasedItem' test.out

#- 249 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'EPymbIAwDAyNBagG' \
    'D33WMVj7bfdfxyqK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'GetUserOrder' test.out

#- 250 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'Q4YNnTTwZeuX7f9i' \
    'Y3skbk25jLP6zS6a' \
    --body '{"status": "INIT", "statusReason": "oP98hanhE18UbY1Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'UpdateUserOrderStatus' test.out

#- 251 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'krfk0Xn6jwfR02Gf' \
    'MrXzI7oWD1mZ9rW6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'FulfillUserOrder' test.out

#- 252 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'QdtPe4YleMg5NGs1' \
    'Pmz6Amebh0FbOWyh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'GetUserOrderGrant' test.out

#- 253 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'AnMP6BdBw6d4UOI7' \
    'Tr9NHcXeEWIpyYx9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'GetUserOrderHistories' test.out

#- 254 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'wOuNquv2qkqRR9Nw' \
    'd8OrgT5HMaelKs3h' \
    --body '{"additionalData": {"cardSummary": "dNcCPnrmZDNctQe0"}, "authorisedTime": "1989-07-05T00:00:00Z", "chargebackReversedTime": "1990-06-19T00:00:00Z", "chargebackTime": "1985-03-13T00:00:00Z", "chargedTime": "1979-02-15T00:00:00Z", "createdTime": "1997-01-20T00:00:00Z", "currency": {"currencyCode": "kflegYoVHYdQPAsG", "currencySymbol": "fQVawbSlqUfFfZyt", "currencyType": "VIRTUAL", "decimals": 83, "namespace": "mEoUNlmQjebaV8c1"}, "customParameters": {"3FZxX6qNntgmml0t": {}, "s1uw7WvaRDN6waXR": {}, "BRT78fZc6LpvtY7B": {}}, "extOrderNo": "k3j0Rt5ai8x1JHTP", "extTxId": "fATk2jDkPq7n0Vqg", "extUserId": "iBJsxKkXhiEo0RXg", "issuedAt": "1989-03-27T00:00:00Z", "metadata": {"XTbgh3hVKyU97N87": "zJHVwE86VYnuoHev", "gj9ralh2tjIEDpjL": "JD7E0dh077pXU34w", "aIIRxeTkl27M6Agg": "zKZ3nqWutrpjBOnB"}, "namespace": "eqwBnFdy01mQjVbl", "nonceStr": "M1GnFG6ePpjPG4iK", "paymentMethod": "j1VxNoFLwY2aYPpd", "paymentMethodFee": 37, "paymentOrderNo": "jhXcfKE45hKdn2Ay", "paymentProvider": "ALIPAY", "paymentProviderFee": 76, "paymentStationUrl": "faPP2hJSGfW6ap0w", "price": 38, "refundedTime": "1981-01-27T00:00:00Z", "salesTax": 88, "sandbox": false, "sku": "dG1EQTyBW6pf9Ni5", "status": "REFUNDED", "statusReason": "8keuXuWuitb85Ns7", "subscriptionId": "DhXCIneqddStnBNi", "subtotalPrice": 13, "targetNamespace": "h4bQO4Nc65zcFKgC", "targetUserId": "0oMEpgLEiStlzCMl", "tax": 6, "totalPrice": 99, "totalTax": 5, "txEndTime": "1977-03-14T00:00:00Z", "type": "raqNIKPX6gPHT29w", "userId": "kZwM8cvObRjKxi25", "vat": 24}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'ProcessUserOrderNotification' test.out

#- 255 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'Jb27jRm1nyjO60S3' \
    'gf5tl2wHKp1L42H1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'DownloadUserOrderReceipt' test.out

#- 256 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'n3ZvUrBoqK16btU6' \
    --body '{"currencyCode": "SoaoiAtMgNN8B4oo", "currencyNamespace": "9jFmBqiyicQHvr1z", "customParameters": {"REqWwsQaxbdG9IxE": {}, "oxcgOEmGQpzN4HM3": {}, "v5wAiimBQXCxR1cO": {}}, "description": "bsys0SaqnYIBTANs", "extOrderNo": "hJcdLEofyiS3dO8j", "extUserId": "3taWbShXMN0MRNkM", "itemType": "MEDIA", "language": "SN-XXgu", "metadata": {"bedVZ6xFNiFC0HSI": "ZAGhHJlyMBkbUPi2", "FDgx1gJONPjy1ei7": "AZBrLdMJG912CJx1", "H9kC6LzFqk7MSt4e": "nxGbQr0GStncRVLv"}, "notifyUrl": "Jm4u9ltRo1cXuco8", "omitNotification": true, "platform": "Dhsaw4vbDPKG9aUu", "price": 58, "recurringPaymentOrderNo": "6IheEap1PhjtZknu", "region": "6Ke0rhmQrBLti0OZ", "returnUrl": "tmm5xYReY6SgfTy3", "sandbox": false, "sku": "UPSrR6V6wTNktWOw", "subscriptionId": "Gcqmkqou4IX6ynCg", "title": "7jZBPZUjh5Id1WwN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'CreateUserPaymentOrder' test.out

#- 257 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '3o2LnIKn5bM9rW10' \
    'Xi6WV5MHuvBu2QQO' \
    --body '{"description": "XQatBE5QBIDADPTg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'RefundUserPaymentOrder' test.out

#- 258 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'sgo0iTCIEKHYwj85' \
    --body '{"code": "RIJjlQAk4T5By0Aq", "orderNo": "ALCR39RH5UcRubJZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'ApplyUserRedemption' test.out

#- 259 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'YIgyBXZfTmD5U7RT' \
    --body '{"meta": {"vIuyjoeXOEFAR7UL": {}, "C1He2xJmIQ7lG3SS": {}, "fJb7YC46l63YRc0T": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Steam", "currencyCode": "d9XaFEWXtvTExHo1", "namespace": "HliWVA9kYxDaegAg"}, "entitlement": {"entitlementId": "XI2ciZ5FWoyqYl8K"}, "item": {"itemIdentity": "D0zlFtltcFGPdVe0", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 61, "type": "ITEM"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "ksEtHq5KHA9baTP1", "namespace": "jNjpn8azMyTBLnxt"}, "entitlement": {"entitlementId": "GnH0h3TvkynRdR0c"}, "item": {"itemIdentity": "TxgD0WOWAsThZ6Ln", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 56, "type": "ITEM"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "HEb66Bo3ALdAKAQU", "namespace": "oGDOUFK4BcWOxnwe"}, "entitlement": {"entitlementId": "rZoIJ2JMtHAD8gJd"}, "item": {"itemIdentity": "K4CJBY63ASIuZtE2", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 75, "type": "ENTITLEMENT"}], "source": "OTHER", "transactionId": "cIdVm37lVyVYhbj7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'DoRevocation' test.out

#- 260 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    'X96t5WMLdod5DYqp' \
    --body '{"gameSessionId": "6XDPJmYDZqWoL8k0", "payload": {"jEDj1R673CfYbn53": {}, "kIRN1df13EvjSbGY": {}, "cLQEocUfUPAI2O4x": {}}, "scid": "XXwCsNtkQh3rUUKa", "sessionTemplateName": "N66Rjkt9zWkx2SjE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'RegisterXblSessions' test.out

#- 261 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    '4MM82Qw4C7p4YKcL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'QueryUserSubscriptions' test.out

#- 262 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    '3qt4lUCjplpfxQDp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'GetUserSubscriptionActivities' test.out

#- 263 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'z3ka75GSPrezfQIy' \
    --body '{"grantDays": 14, "itemId": "FsYo03H0HWXeUSuT", "language": "JRHgBRpSb3GL7YAU", "reason": "5AnUkmfVW93ZW1tX", "region": "AOpK37SfSPivmYx1", "source": "9GWm87P1GbEQA6nI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PlatformSubscribeSubscription' test.out

#- 264 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    '1VhgTvfzwfgRZntM' \
    'hunn3jSCD2AknCwP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 265 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'e4TX4CK4IBY01KuF' \
    'bs8Iv2Ij9B7VD3Sy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'GetUserSubscription' test.out

#- 266 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'R3UCMUtsTLoeVLjx' \
    'bwUQUVEWE0xtN3v8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'DeleteUserSubscription' test.out

#- 267 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'DgFUrjRGzthYJKH9' \
    'vhOLpoWOSJS0kU6f' \
    --body '{"immediate": true, "reason": "zrUTJgBjWwZMcxIc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'CancelSubscription' test.out

#- 268 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'mhutMHEeUDIyZ6bU' \
    'l6Q4DAwzeZS20lWb' \
    --body '{"grantDays": 70, "reason": "b6kbzroGyrFwTSdz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'GrantDaysToSubscription' test.out

#- 269 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'LOXwPp0OS1jOq8Ht' \
    'ddVhZ7lfOiLRYQkD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'GetUserSubscriptionBillingHistories' test.out

#- 270 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'w4MI4SEqiXIaji4M' \
    'OmP494vGlNtuMUpS' \
    --body '{"additionalData": {"cardSummary": "3K4kKGKct8SZQK7T"}, "authorisedTime": "1986-06-23T00:00:00Z", "chargebackReversedTime": "1989-05-13T00:00:00Z", "chargebackTime": "1980-03-12T00:00:00Z", "chargedTime": "1984-08-01T00:00:00Z", "createdTime": "1975-11-08T00:00:00Z", "currency": {"currencyCode": "7oPP3OeZVILEaXbH", "currencySymbol": "nhR8gT3if17nsndh", "currencyType": "VIRTUAL", "decimals": 81, "namespace": "0Gtga4xRRNit3Apy"}, "customParameters": {"AvkVtA8b9zvOaiSM": {}, "HjVciAVrPuzKV1Wj": {}, "7J3QrgnhZMehNOnc": {}}, "extOrderNo": "XNM18ZiBLaa5iN5b", "extTxId": "6ODd1kj4Qj6RS5aO", "extUserId": "256ceteBSz425Kp2", "issuedAt": "1992-07-06T00:00:00Z", "metadata": {"GW8gpXu2mBdRvF84": "eD5m02245YlrGlfg", "rzLifZvRPXjiYCPM": "52HK8ASyze4T9TmQ", "upOzuaRV8Vw1OuyV": "C7JcK5UdheuW7HOM"}, "namespace": "ooXzmW321H7CGe7B", "nonceStr": "lGbNTtvAEsQs0WkD", "paymentMethod": "6Y555p9oqb5MeMGL", "paymentMethodFee": 12, "paymentOrderNo": "kITGmF087BWKC6wz", "paymentProvider": "XSOLLA", "paymentProviderFee": 13, "paymentStationUrl": "cVCnifE0YS9KhgP8", "price": 37, "refundedTime": "1989-12-20T00:00:00Z", "salesTax": 61, "sandbox": false, "sku": "vA3YyGsBgTJCc673", "status": "REFUNDED", "statusReason": "MnrbjAM32RlQ3Wpg", "subscriptionId": "0XNZCsESCHRPA5OQ", "subtotalPrice": 43, "targetNamespace": "8twQrDu49JFXjPc1", "targetUserId": "tJBaHYTZ2IdgUYmm", "tax": 39, "totalPrice": 60, "totalTax": 27, "txEndTime": "1987-12-30T00:00:00Z", "type": "XJCUjwNMnmrmR9dD", "userId": "VbvyNupYCzyYEaMg", "vat": 90}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'ProcessUserSubscriptionNotification' test.out

#- 271 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'sszL7hpsSwAQxtDE' \
    'Um4PnTTyHhBvqhix' \
    --body '{"count": 79, "orderNo": "HbuwF3aZQrVPWyZp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'AcquireUserTicket' test.out

#- 272 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'nVjbpotD8HTOOdvA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'QueryUserCurrencyWallets' test.out

#- 273 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    '4UhdTY2DNsFuGcD5' \
    'vraJ3WftgZ43r4ZL' \
    --body '{"allowOverdraft": false, "amount": 16, "balanceOrigin": "IOS", "balanceSource": "DLC_REVOCATION", "metadata": {"2SZkIaANvZ0I2EGV": {}, "DWs67zwXLLDtNRfm": {}, "o1w8aAcuRQzdYhuE": {}}, "reason": "S7BncXfilyRfU4YH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'DebitUserWalletByCurrencyCode' test.out

#- 274 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'fMpHxEcJG7c76ATo' \
    'up2zhRng3KibPdtH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'ListUserCurrencyTransactions' test.out

#- 275 CheckWallet
eval_tap 0 275 'CheckWallet # SKIP deprecated' test.out

#- 276 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'ZPKb8CPLdIk4I9TU' \
    '6FvvEdqHzEDtl5oR' \
    --body '{"amount": 26, "expireAt": "1991-03-05T00:00:00Z", "metadata": {"dm3fGK1wINqvFrAs": {}, "rmYYu40w6szojkvj": {}, "tacFSVTvgh23BGEa": {}}, "origin": "Playstation", "reason": "ftmSBKQ3zAXk9qVr", "source": "PROMOTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'CreditUserWallet' test.out

#- 277 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'mCVmuzoO2qep49tD' \
    'HFl18cQlJCgKFmN8' \
    --body '{"amount": 43, "metadata": {"1YX8ylpv3hDDLL1n": {}, "4On03mToMhBjPD6a": {}, "ztTyMQghPWOOAzTm": {}}, "walletPlatform": "Steam"}' \
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
    'OwcrNR2jH7Xx7m8I' \
    --body '{"displayOrder": 35, "localizations": {"tTxuptcOYSTj2AWA": {"description": "5f61ztkSpGmf8BXo", "localExt": {"sNylCwcf2iVxv9Qt": {}, "ivQqeRyPorhTuFn3": {}, "W0qApZ98a9g9AjLD": {}}, "longDescription": "QL5jZbyjCnTkYE0H", "title": "YHfBc64zDQawQPbb"}, "bHLcaHmXRdPvQLVu": {"description": "KpiiZ4Imogp7RKEc", "localExt": {"LehyAowu72oCUdME": {}, "S0mVVI1FilcO4paj": {}, "EhkRLMvZnYZKCk0z": {}}, "longDescription": "bREElwdZORocHSHu", "title": "lJHhAnY7QeDSRroV"}, "kXb4xPPUmUifQvfo": {"description": "Z7n3eRMzJEQYwNGR", "localExt": {"l2gcWdDmIy4Ia2Ut": {}, "S4T1v2y9Je7apQfN": {}, "dDyT3a0EGpHgGLUq": {}}, "longDescription": "dG3kBfGvwjwttys4", "title": "GvDvs1H5juf5Cq95"}}, "name": "0XtiMxQDIHnPin3v"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'CreateView' test.out

#- 285 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'Zc9bUYgwdNmcpdld' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'GetView' test.out

#- 286 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'Dn2Y2l1kZWnqjJaG' \
    'GTFaJHecFy9m5s6o' \
    --body '{"displayOrder": 72, "localizations": {"1hFoX56gzosv2p6W": {"description": "tLfgPM8t1tgWhx94", "localExt": {"eFnxfKdptYcgxbMB": {}, "Zz4e7YZPuTkhJH0g": {}, "QxqxmEFytm0rZGlR": {}}, "longDescription": "UuJ7HggA1D8DBtkE", "title": "9JX7oDFoXpZ9sy7d"}, "EuiT7OrRdHjzNhfc": {"description": "3uokglAmxb5eaYqd", "localExt": {"XkBqt2UfrBE1JhOO": {}, "dYFVxYR0XhaQ30cH": {}, "b0re0TJwuS3NPZi6": {}}, "longDescription": "h1nN0txahdhp0tmV", "title": "4jjIkC8lqpB9cbsD"}, "lreKfjfpUz3jtg1b": {"description": "KaDBROm6TJ2qMul8", "localExt": {"cl55U4RB2xVHiARc": {}, "FLzOW7Uz8Gz5TN3b": {}, "J6UVKAdNp2ReRw5W": {}}, "longDescription": "PjohGmJKCjbEtFKL", "title": "GvBQOS81LpIh5QqE"}}, "name": "OKQXnUYMXvJJrO8K"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'UpdateView' test.out

#- 287 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    '9yVaSV6MkQpPd0ut' \
    'GYDVGwpKCkOgcVrM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'DeleteView' test.out

#- 288 QueryWallets
eval_tap 0 288 'QueryWallets # SKIP deprecated' test.out

#- 289 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 46, "expireAt": "1998-02-23T00:00:00Z", "metadata": {"DAaC3oGYmbE9E87R": {}, "TBvlu7lo1foXU28I": {}, "E7EVvQkoqOZIFeJQ": {}}, "origin": "Playstation", "reason": "rnPscIMJRStF3LRa", "source": "DLC"}, "currencyCode": "q49EdmhBpI13Mh9t", "userIds": ["HYQilnHrNI7XsRCD", "EziAPi9dBg5J0me0", "3YOzMK1ZWOxnVMpy"]}, {"creditRequest": {"amount": 57, "expireAt": "1992-02-28T00:00:00Z", "metadata": {"U8LPr0bjy4nFkl8n": {}, "6PSoXYb9tc6rYyOi": {}, "aUKC8t4GV0JiE7Zb": {}}, "origin": "Steam", "reason": "P80ZctunIw8zzjr1", "source": "GIFT"}, "currencyCode": "waWMLdLGDjtirdqD", "userIds": ["xJQ22uV5cRj529cE", "ck0QFovelKxdFe87", "vTbT1ykevWiIoube"]}, {"creditRequest": {"amount": 67, "expireAt": "1978-04-08T00:00:00Z", "metadata": {"qpaur75iSsLSqGKf": {}, "GJDmzFepqpoIzofQ": {}, "17bQpOtqU8Y63DFS": {}}, "origin": "Nintendo", "reason": "8WdAhvjsHqU3mTbQ", "source": "PROMOTION"}, "currencyCode": "KzXRT99U5B5j9CT2", "userIds": ["YI1qt4AYI54fgXlD", "CLFwNGzR7zvW33BL", "Q5NyteBZg7IM93LG"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'BulkCredit' test.out

#- 290 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "dMKko1WdXcuqjnyB", "request": {"allowOverdraft": false, "amount": 28, "balanceOrigin": "System", "balanceSource": "ORDER_REVOCATION", "metadata": {"7fT7f00EZw65iq4f": {}, "nnFA4ieAeG0JcWHL": {}, "xYckKH0j3mmJ2Y5F": {}}, "reason": "sP84rgl0AQlBikeT"}, "userIds": ["qfnhjjtIQ7ipAfw6", "eA9eq8hIKrzAUsKq", "pjQGHI3Wkg4HIrEm"]}, {"currencyCode": "xTfJiEwGhGbMCnu8", "request": {"allowOverdraft": false, "amount": 61, "balanceOrigin": "Playstation", "balanceSource": "EXPIRATION", "metadata": {"jWqzvHab6b9t7DWT": {}, "aUGBJRTcrm3mIBuP": {}, "ZxqlGGOe2VYsej3c": {}}, "reason": "SW6YWXMTlqVrGyQY"}, "userIds": ["Dnbzj7Xg2lcvB7TO", "u2FcuLwU5IJt4pAa", "sYNW28u3UZ3q6QdM"]}, {"currencyCode": "AL9IC4460Wck2oK2", "request": {"allowOverdraft": false, "amount": 20, "balanceOrigin": "Twitch", "balanceSource": "DLC_REVOCATION", "metadata": {"wkxgJXK2OjNzQ95l": {}, "ceIy0lnTniV8j7Xm": {}, "R8FUW42wLu5tQBUE": {}}, "reason": "3k2mUvrQPFxSaRrD"}, "userIds": ["poEAwuriKcfEberK", "smttvFw6Ev28mtO5", "sF1CKYcMJnrn1I3y"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'BulkDebit' test.out

#- 291 GetWallet
eval_tap 0 291 'GetWallet # SKIP deprecated' test.out

#- 292 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'isAId2vIIeRmFR2T' \
    'Q2rE5Ugf8q6zX7Jc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'SyncOrders' test.out

#- 293 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["7TK5xO3LzmzW8Oj3", "HDRoKRr6ZZRLgp1d", "jMaw9o5TdLhB2mWr"], "apiKey": "W0A29UflIqBalvCu", "authoriseAsCapture": true, "blockedPaymentMethods": ["8PU8JfFPiZpcqq8q", "H8MR9K5kA67H3XOJ", "lQfOCN2keFNIQusm"], "clientKey": "cAYWBLZg00dmqgWR", "dropInSettings": "mPnXpH8xifqavEfK", "liveEndpointUrlPrefix": "K0Dei3ChLwkIGKtg", "merchantAccount": "DjDah0UewhSyu7JM", "notificationHmacKey": "OvmbqHpLDqY64bsf", "notificationPassword": "WMA6zIWiASrarIiI", "notificationUsername": "LeXO18VYOBdYdQra", "returnUrl": "UweJSX5gGRLc0R4v", "settings": "MMPlJqY7ujDDLuoQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'TestAdyenConfig' test.out

#- 294 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "JspLLZbnusI9Nty8", "privateKey": "KpP0RHI8icuY92iM", "publicKey": "kPiEKRgT1zZPaKln", "returnUrl": "IY3vGLET05JQWhwi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'TestAliPayConfig' test.out

#- 295 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "jC7ydSFRQ4V5Oyyp", "secretKey": "fQ5iJtNrVbjnyYER"}' \
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
    --body '{"clientID": "w24T1DBdzzVbhZKn", "clientSecret": "h9FfHsuwhOtgOWtZ", "returnUrl": "uhAp0yxLpfWB0inH", "webHookId": "8xFDMoqbLU4KGsev"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'TestPayPalConfig' test.out

#- 298 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["VGPnqXXPustpaZz4", "7mZuZptSindV4Kpi", "fmfS94ybYG4wLaPx"], "publishableKey": "hpGODmwJCF4HCv6D", "secretKey": "G2DfogFpQ6h4G1Jw", "webhookSecret": "gwqyIOpmNMgpfDY1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'TestStripeConfig' test.out

#- 299 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "FR9rKaxaWsCGgI79", "key": "Hr331YipwCDOc9FN", "mchid": "s0rjVHzs9C25B5DY", "returnUrl": "IkGcoYjLN4VPTXzk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'TestWxPayConfig' test.out

#- 300 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "nDz9YRB0KErE7XXT", "flowCompletionUrl": "kVsvdGlmWWA02nKw", "merchantId": 83, "projectId": 42, "projectSecretKey": "7XUNrraxsHn4uKhX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'TestXsollaConfig' test.out

#- 301 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'VFTTx0TcboB98Gf5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'GetPaymentMerchantConfig' test.out

#- 302 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'PcmWICZpV13Vxw1I' \
    --body '{"allowedPaymentMethods": ["nWyY5J5tCY01FkbW", "fSwD66Xg5Qbc0Ejx", "xzLQLRh64Y1jopYi"], "apiKey": "TRZEzq26aXSjyAQ2", "authoriseAsCapture": true, "blockedPaymentMethods": ["CzMbz1C3ZtjGu9Cx", "aM7nweO9MSckJNZe", "DhfW7AVHVE6Tamht"], "clientKey": "DUacOPwPczqMDbsg", "dropInSettings": "iaaxIpP9oAICocQq", "liveEndpointUrlPrefix": "l5YfBZVQcDD4zf1B", "merchantAccount": "ZvQIrbCQWs1jZYqr", "notificationHmacKey": "f4bxOoikruHKYKNE", "notificationPassword": "VJSzeli2Uey4fuSj", "notificationUsername": "1kSeWA3702McnnKW", "returnUrl": "V37CLHYvul2IsFEx", "settings": "mn4GV4MH5mOZyTMM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'UpdateAdyenConfig' test.out

#- 303 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'Dazz0zG1FmCCywXf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'TestAdyenConfigById' test.out

#- 304 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'Hj329WcNk8k8qK4g' \
    --body '{"appId": "Jrux6tlQDfleFLBK", "privateKey": "j8h7ZrO4pTU7jATb", "publicKey": "VBcDGudQQm98BKOd", "returnUrl": "soaTqFhdLfBWZeRF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'UpdateAliPayConfig' test.out

#- 305 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'QvrB1lsWaPGfJVUl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'TestAliPayConfigById' test.out

#- 306 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'a8UlMM4Cc3k5J2qb' \
    --body '{"publicKey": "HYNekyXLtDH1ypF3", "secretKey": "hIsdFXbbaFfchju2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'UpdateCheckoutConfig' test.out

#- 307 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'kAuottOSwo884abN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'TestCheckoutConfigById' test.out

#- 308 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'DjMPiZHxhFeo51XV' \
    --body '{"clientID": "DI8f5EWndhcek3at", "clientSecret": "mhTw5TDjWYgm2yGv", "returnUrl": "hR6HS643vgPdN21m", "webHookId": "WwtuqNbtaAfDzs5M"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'UpdatePayPalConfig' test.out

#- 309 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'yxW90cMZ9NeyZ5n0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'TestPayPalConfigById' test.out

#- 310 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '2q1qbbj3sLmfYzDV' \
    --body '{"allowedPaymentMethodTypes": ["AVhXts4CdsniSJKr", "J4BrdfV658ZBVGgx", "lpGxhD9kKX2uBUIh"], "publishableKey": "1pfP8bRBVoq807ro", "secretKey": "CNo3Qw4Z54sNMs82", "webhookSecret": "e3yxhkTFfQHB8O5k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'UpdateStripeConfig' test.out

#- 311 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'e34NGuMLQ7iPaGqe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'TestStripeConfigById' test.out

#- 312 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'lc3lbrPkW2foKqIz' \
    --body '{"appId": "9z80ICxp4M7Opf9o", "key": "RlvBsYj4IcbdUz2c", "mchid": "BWKIUuPLfvTFl9Db", "returnUrl": "HQLYWCwsAVcQ0VGE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'UpdateWxPayConfig' test.out

#- 313 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'UxlcNQWOpRLETWMA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'UpdateWxPayConfigCert' test.out

#- 314 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'v0uJ30L51TxrdknW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'TestWxPayConfigById' test.out

#- 315 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    '52x2o1yDO6bwcKYe' \
    --body '{"apiKey": "FoxUWdvEBTwUyzq5", "flowCompletionUrl": "bzdNEHv6GmaokUOI", "merchantId": 0, "projectId": 77, "projectSecretKey": "dEDAmp524IRplmKc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'UpdateXsollaConfig' test.out

#- 316 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'wvGguz7SAcGvV4lC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'TestXsollaConfigById' test.out

#- 317 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'JgcrAut2gYpuKbE8' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "MEDIUM", "theme": "DARK"}' \
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
    --body '{"aggregate": "ADYEN", "namespace": "oG1zC1K7oT3iNe5y", "region": "hZbqmAgI6LUauh1G", "sandboxTaxJarApiToken": "lEo4faeHIeXSROEb", "specials": ["CHECKOUT", "WXPAY", "WALLET"], "taxJarApiToken": "ef9mtXHbh3agt9HQ", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
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
    'NhlzYRtA24gRvv87' \
    --body '{"aggregate": "ADYEN", "namespace": "Gu0vXLFZoXt8k5Zt", "region": "RJGwh0BPRCWdTnyt", "sandboxTaxJarApiToken": "xmesJ8JDDcPDev3e", "specials": ["PAYPAL", "XSOLLA", "ADYEN"], "taxJarApiToken": "LqjyW5nSpi08dnnm", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'UpdatePaymentProviderConfig' test.out

#- 324 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'GbDOWBzflDPp8sE7' \
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
    --body '{"sandboxTaxJarApiToken": "bcL6xy49IPWxqs6j", "taxJarApiToken": "AQJWL8Yc3AKtQffB", "taxJarEnabled": true, "taxJarProductCodesMapping": {"o4VIzCxIBQt7BEsL": "hZnLrMlvvXDmz8vD", "IkHRMj2pIYdQhOIN": "S631eYxKFwpR5uky", "HmVB2oTqRWbK0ubD": "t08F3Ptynki71NZA"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'UpdatePaymentTaxConfig' test.out

#- 327 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'NUG3XywOPxcLTU0y' \
    '3maqZGwBZAszrs6F' \
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
    '6qWE8F5UT7Jy1J0W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicGetCategory' test.out

#- 331 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    '4BcrVEEfr25k1H2s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicGetChildCategories' test.out

#- 332 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    '4V2KN0PLlR8cmHo3' \
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
    'XR1GqcOtFZDsjHNj' \
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
    'L304sV2h9pg3yvd9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicGetItemBySku' test.out

#- 338 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'MZqnUseNuEx7YDEk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicBulkGetItems' test.out

#- 339 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["dFOw34ZkvghT5B0o", "lJY1qewjIDEZedb9", "0DCSoLAgeUljuQXN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicValidateItemPurchaseCondition' test.out

#- 340 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'i35z75tQmcrR08dq' \
    'YhgjNEKxgigqjIaa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicSearchItems' test.out

#- 341 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'ftddfk3N3FUGt7hR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicGetApp' test.out

#- 342 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'JWz66woOwujZiqrV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicGetItemDynamicData' test.out

#- 343 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'mhfRRK7pehYZgLjF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicGetItem' test.out

#- 344 GetPaymentCustomization
eval_tap 0 344 'GetPaymentCustomization # SKIP deprecated' test.out

#- 345 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "arF9k0U2fuxYpTLF", "paymentProvider": "XSOLLA", "returnUrl": "CAqFwYdrzmGzkvzg", "ui": "Jn2pWVs6zZRXBAex", "zipCode": "xsuLkWktcAykay7L"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetPaymentUrl' test.out

#- 346 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'ItVjr1YSzeXfUiXA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicGetPaymentMethods' test.out

#- 347 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'NoRioh11etL7rvPz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUnpaidPaymentOrder' test.out

#- 348 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'XTBq3cXU8GYxE0Oh' \
    --body '{"token": "dSVFcSQWMXN21fc6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'Pay' test.out

#- 349 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'lGGfo4IJnwUyJDPc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicCheckPaymentOrderPaidStatus' test.out

#- 350 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'WALLET' \
    'Bi2BT8WWMNZ7MQ0x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'GetPaymentPublicConfig' test.out

#- 351 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'XiAUp37WFZG1bPRE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicGetQRCode' test.out

#- 352 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'FnLFvdjVz0bF4f5a' \
    '8wwsXbVcGQFcH3a8' \
    'STRIPE' \
    'llB2KCetfPNaSebu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicNormalizePaymentReturnUrl' test.out

#- 353 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'aBm42ZRTd7otFS5x' \
    'CHECKOUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'GetPaymentTaxValue' test.out

#- 354 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'blp0GJFHhDBbjdus' \
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
    'CtKYo61c23RG7T7E' \
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
    '4yKJUPzM18zammJN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 360 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    '39lhBPiRxSSC369U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 361 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'VGTnts7qK33YCsDe' \
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
    --body '{"gameId": "0la83cvnj5Ut4YTx", "language": "iceo", "region": "BMsRy1ZmFMVlAhaD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'SyncTwitchDropsEntitlement' test.out

#- 364 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'sIMEFd3SDQ0zyrZO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicGetMyWallet' test.out

#- 365 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'Mqd75oCp2u2A2ZLr' \
    --body '{"epicGamesJwtToken": "keWbmcgfplQTNIZc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'SyncEpicGameDLC' test.out

#- 366 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'tTysFM89BCAF2MVo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'SyncOculusDLC' test.out

#- 367 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'zVctDaMus5bsovjm' \
    --body '{"serviceLabel": 26}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicSyncPsnDlcInventory' test.out

#- 368 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'WN70b3lBnY61oiTL' \
    --body '{"serviceLabels": [69, 6, 63]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 369 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'gBrVUoMCPYZARtb3' \
    --body '{"appId": "TsS5jOBRYgnvYu1v", "steamId": "zXsMr43ycE5A2fFK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'SyncSteamDLC' test.out

#- 370 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'AWLe45nohGKrvpCU' \
    --body '{"xstsToken": "uClhTnLjG2riY5Il"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'SyncXboxDLC' test.out

#- 371 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'AkHgxsULSOBCWJH9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicQueryUserEntitlements' test.out

#- 372 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'jh3zB9JEYLPl0Rjs' \
    'q0yRuQRarSVoIleZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUserAppEntitlementByAppId' test.out

#- 373 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    '7PtbbcriinQEr7oI' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicQueryUserEntitlementsByAppType' test.out

#- 374 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'TomzVEdqAFGjuRaB' \
    '4ccMpIH8Lan5Ny9r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserEntitlementByItemId' test.out

#- 375 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'MiD8seoTU64hQTXu' \
    '9MixCLkCkF4GsByu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUserEntitlementBySku' test.out

#- 376 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    '7ccqHPLY7ScjfHWv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicExistsAnyUserActiveEntitlement' test.out

#- 377 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'p5yxoHDN8wbZhTBv' \
    'AeHGP8MEJHjkHXga' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 378 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'YcrI47DABOUyTgLq' \
    'cqWj25jcDQ7S4nZy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 379 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'mFu9HDayb3pUN53x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 380 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'wUDjiBHCt3VKh9Na' \
    'XK6yInDEdr3JfyFO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 381 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    '9PUA61ceL94UMGbn' \
    'wR8NQy5mWp1i7XAg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserEntitlement' test.out

#- 382 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'vpl6VM46gEFqwJcy' \
    'SobYFsOpqr85xVvx' \
    --body '{"options": ["j351m51uwOolqmdu", "4KlKLptx5DKFWYNa", "RNbzpFsjJLszOiHF"], "requestId": "s5xAVg39H5hnoP20", "useCount": 39}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicConsumeUserEntitlement' test.out

#- 383 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    'CHTjiJTcJCNU9Jxd' \
    'ozQjrd9h3KvseGTW' \
    --body '{"requestId": "QwYHbgonXMWBgwAH", "useCount": 57}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicSellUserEntitlement' test.out

#- 384 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'elr7hVgkvQdto2Pu' \
    --body '{"code": "C14Lu2G4Mw4Mo4Ti", "language": "LhZ-RoGk", "region": "5BjG6bELZwjEmKgZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicRedeemCode' test.out

#- 385 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'XlgbV3dBwrK8hpKl' \
    --body '{"excludeOldTransactions": false, "language": "Xvs", "productId": "o2erbchkQ7n0C9lJ", "receiptData": "b5WlmAWYUtevQ8Xs", "region": "aIOTUAVhHL0RrUev", "transactionId": "0iu9PIqi1GB1ZASg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicFulfillAppleIAPItem' test.out

#- 386 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'NbyIgL74DNNIekar' \
    --body '{"epicGamesJwtToken": "0ZUahrGZV8WpFG2g"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'SyncEpicGamesInventory' test.out

#- 387 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'RMkdKgCuxFa4ix8v' \
    --body '{"autoAck": false, "language": "WR-uUzc_672", "orderId": "yABy7DKD883wae7z", "packageName": "4E6bRC4ufnScsyhW", "productId": "e6QJ1Ov7wz26xkkY", "purchaseTime": 79, "purchaseToken": "xgGLN3OJhmFyZH05", "region": "CCwf21Y2Taz2uFpz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicFulfillGoogleIAPItem' test.out

#- 388 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    '174OkRp3BkdVbqgN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'SyncOculusConsumableEntitlements' test.out

#- 389 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'rZPytIR58rTLNpt4' \
    --body '{"currencyCode": "RpqpKk9toELRS24c", "price": 0.6179330742277422, "productId": "w2Lh6XTFr1d0v5Mi", "serviceLabel": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicReconcilePlayStationStore' test.out

#- 390 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'MRvISdcF4Db7Maqe' \
    --body '{"currencyCode": "C6go22oGxiuAknxw", "price": 0.0339498737086269, "productId": "qyDyOqQ18AhUON0V", "serviceLabels": [60, 92, 87]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 391 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'm5GiVkyg2ApoZozO' \
    --body '{"appId": "LaCrfo6qFXI3sUf1", "currencyCode": "uYi2GvXliGeEan1M", "language": "iiZ-pGfo", "price": 0.004885208303914035, "productId": "Y8enBjqk85CIocwu", "region": "2hQOOqU4lxwyKbYK", "steamId": "ZdZvXUVezIt3Hezh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'SyncSteamInventory' test.out

#- 392 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'SE8IGOaRsievm4ID' \
    --body '{"gameId": "xtFXsff5uksqDpH0", "language": "jZol", "region": "g5DSTBpRPaWHEoCn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'SyncTwitchDropsEntitlement1' test.out

#- 393 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'ndVYqgBPmwdNn0ro' \
    --body '{"currencyCode": "sYXZ8eImgQ2x0SgQ", "price": 0.7998061255851306, "productId": "dYwRiDuKo24S6Rge", "xstsToken": "Y6mxarVsr09JpliI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'SyncXboxInventory' test.out

#- 394 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'bzDdA20g9UeCPSEk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicQueryUserOrders' test.out

#- 395 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'HvpI9pfGr7q4J4HR' \
    --body '{"currencyCode": "fPSShguxCFDvHcOo", "discountedPrice": 43, "ext": {"SA3CLtlE5PpY0ZXX": {}, "FyG4988DpkyITbfv": {}, "PjkpdcTxG4LMLOAi": {}}, "itemId": "ZC06KMQoJCvczbpT", "language": "IX-El", "price": 79, "quantity": 24, "region": "LK8QPEA7MUcU28Tj", "returnUrl": "o0XKr5KBD3YwTJ4H", "sectionId": "n5XqA2kk1A3H3rxX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicCreateUserOrder' test.out

#- 396 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    't6ggKwWIYIm0ypwg' \
    '4VTJpu64It1R6axg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicGetUserOrder' test.out

#- 397 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    '5VLrk3KBNBApNgT5' \
    'fUWdp4LE1VnZFgky' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicCancelUserOrder' test.out

#- 398 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'tfX1NqG3h3imEWxU' \
    'gMEW1S9JMbrmE7zB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicGetUserOrderHistories' test.out

#- 399 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'sX3PYLNcayR34iib' \
    'Mmlb6vlF1mVrcAyq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicDownloadUserOrderReceipt' test.out

#- 400 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'XXnKEtSQkLh10xq2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicGetPaymentAccounts' test.out

#- 401 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'zgtaigOB2XWLXBkH' \
    'card' \
    '0OW9DhwNHdSw93Iu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicDeletePaymentAccount' test.out

#- 402 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'mFyH8gFezb1WOjy0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicListActiveSections' test.out

#- 403 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'XInTSZSMKJYcE585' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicQueryUserSubscriptions' test.out

#- 404 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'zPfpDiAo4zAj1Agj' \
    --body '{"currencyCode": "ctQkNA6tPxcpOjec", "itemId": "MqPJvYXVa6273TGl", "language": "Lq", "region": "Ffn4ThPY3oU02EfG", "returnUrl": "sDjENbnYSDYXgkcU", "source": "GG5hRGIRsqJTdlIm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicSubscribeSubscription' test.out

#- 405 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    '2TA1uiNbPsWP4dql' \
    '0EDA4cU4WstdHC5K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 406 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'GE92n4sFIM7AWUdP' \
    'JvJivl1uU4DMwBda' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserSubscription' test.out

#- 407 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'NaGlQD7ToPlTTR6e' \
    'PboL66XhyfKhLtqZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicChangeSubscriptionBillingAccount' test.out

#- 408 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'R2r4RfVOg9ZWFBw7' \
    'Tk0E680aIGz1A2cX' \
    --body '{"immediate": false, "reason": "zAvmPZRWnKIfYW2k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicCancelSubscription' test.out

#- 409 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'PDBgq17ElbCwKI3a' \
    'XhSEFUvuqvkzikf2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserSubscriptionBillingHistories' test.out

#- 410 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'tQ7LhwHqc9mwHFQ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicListViews' test.out

#- 411 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'JQtpRpQVAOexmqWb' \
    '9l5yHbiXZ6ThrZy4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicGetWallet' test.out

#- 412 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'bUEBAVPV9L4ILPJq' \
    'DbKXtFPmTQOO3dJd' \
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
    '2YP1XIUKL9g3ACu1' \
    --body '{"itemIds": ["VGeRPwa2XfZ7wxA0", "lvXbcZY7zXTdKQkA", "DYHyER3eNCfqyJ43"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
