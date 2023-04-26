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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "EAxcVpFrttufHIRd", "appType": "SOFTWARE", "baseAppId": "9UzVRiXbqlAw7r6W", "boothName": "2ktQG0h5JAav5kRa", "boundItemIds": ["62WopBJHPtcDs8bB", "Q1g7qbPngUNB1vRo", "ZLCXLx8bbgorQeFb"], "categoryPath": "dwpzS6DaDpv8N7ZQ", "clazz": "VqGj6oDLjWjkY1aX", "createdAt": "1977-05-08T00:00:00Z", "description": "FcDtgOjchIua5tWE", "displayOrder": 71, "entitlementType": "DURABLE", "ext": {"JSDgY1TXp38zsCTC": {}, "rbCbPOyNQkT7NvyE": {}, "3cwyALczNIicXm7a": {}}, "features": ["c8OumKtPDKJDXn7Z", "T5FvdiRilZ7oFgx4", "gSrjJW2OQNOs1PXh"], "fresh": false, "images": [{"as": "68su8XfqlqNiTvB6", "caption": "SdAdIhUDrwoZ5Mec", "height": 7, "imageUrl": "pc1C8XfwHuKeb9l3", "smallImageUrl": "rGN9A3sNm84hddSp", "width": 69}, {"as": "cBdW19m4eu6d5tA5", "caption": "jUmiTqpyhPFdxLzF", "height": 87, "imageUrl": "d8lDR6qVNPRZYdFL", "smallImageUrl": "IAjGGJddVCvu9vx5", "width": 76}, {"as": "vkLGMS0lyuI9a2I9", "caption": "u6Vpbsx5w8hqUI06", "height": 96, "imageUrl": "SuB0y5WUlrMdI4sN", "smallImageUrl": "veabntBSxTeIv53H", "width": 66}], "itemId": "YupD391C2qtPYoka", "itemIds": ["hFjkQsfCaTmt1d67", "FXGk2s9Q0mPVo3tw", "u0MesTCf9x4rt69l"], "itemQty": {"na7qxNeIxPz6MbwL": 67, "IY69z1UaLqYSYWyt": 77, "XQ0yYoNRKd3IL5TA": 87}, "itemType": "CODE", "language": "6iiPlSC2uE4o5Vwd", "listable": false, "localExt": {"m3MqHcUmLZZbSqb8": {}, "RwNmn9HrNQy4uZAA": {}, "iE0mit9RGCCHYzUO": {}}, "longDescription": "cEdscKHPEqgA8yu7", "lootBoxConfig": {"rewardCount": 98, "rewards": [{"lootBoxItems": [{"count": 94, "itemId": "k6Jt4Ymos9Jcdos4", "itemSku": "fYcTVU6RBt0zYoMc", "itemType": "HyCUEXlAvxJMdalw"}, {"count": 92, "itemId": "fNPX2bOItRMvqtlB", "itemSku": "2jJCSQT279ZZPYGu", "itemType": "0rdlgdWyOtXi3cho"}, {"count": 88, "itemId": "1X68cmDc3fxU8MyK", "itemSku": "rQpM4hkkK6KKXNB3", "itemType": "Gv0IqmF51TkhjYna"}], "name": "q6foWvXa3bMrXsDr", "odds": 0.9414672111380048, "type": "PROBABILITY_GROUP", "weight": 29}, {"lootBoxItems": [{"count": 71, "itemId": "yIPa8ZRrvjj7il35", "itemSku": "MXbN9oCMNqq98SjT", "itemType": "vhZNkSQ70D0H6BXk"}, {"count": 39, "itemId": "DpADz1x3poD3Qgb3", "itemSku": "boLQQ1MzH7Qm8bwb", "itemType": "mXgdAPh1EThG96gA"}, {"count": 64, "itemId": "xfgPubTDIHrvqATh", "itemSku": "uwjRHpKKTlmVr9Xu", "itemType": "oJbRFQSKVPHbn4Xx"}], "name": "tu7LQRENjEEztx1W", "odds": 0.29889483687088747, "type": "PROBABILITY_GROUP", "weight": 91}, {"lootBoxItems": [{"count": 91, "itemId": "iZqan0nSBJroav91", "itemSku": "GXlvPG6bFYReVHQi", "itemType": "pcCx9Zw5D2L7vIYh"}, {"count": 68, "itemId": "vUfHQvsHXNUNe4mh", "itemSku": "go5QB65lSAiYnNjk", "itemType": "fZrQvGgbLdLsFzHk"}, {"count": 57, "itemId": "YDDxHSZjtqXyJ58f", "itemSku": "7Gc26SaiGVkydwYW", "itemType": "QG26yUZNmTBcvrbY"}], "name": "CwZtxFHyPLtI8ilb", "odds": 0.3891073196127871, "type": "REWARD", "weight": 5}], "rollFunction": "DEFAULT"}, "maxCount": 95, "maxCountPerUser": 13, "name": "Ij88cekdqCt81P1k", "namespace": "tfIovmv9gsR5cJcH", "optionBoxConfig": {"boxItems": [{"count": 25, "itemId": "sb392k6YmJFfRByj", "itemSku": "lBiuFM3FIoVk8T3G", "itemType": "pAnkCmBUqg2SCnqn"}, {"count": 39, "itemId": "Yw20DOqOBSC2DKHR", "itemSku": "uPMMWH8Yb33T5UBJ", "itemType": "CjfcnLRfxeCSz9WE"}, {"count": 18, "itemId": "aDml48wdNFLTm5T5", "itemSku": "0x9WT0GfH2rtOa4E", "itemType": "XsXzOXQAk4mqrxzT"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 33, "comparison": "is", "name": "UTLDx9gIiDandpGT", "predicateType": "SeasonPassPredicate", "value": "wNhmwoYZyI4EFZKB", "values": ["2NubeoKFeIaFQCYo", "NLRc6m8heKnWhzfe", "cYrCEAE7WIsfmx40"]}, {"anyOf": 60, "comparison": "is", "name": "ICpnduEEQlULdJz4", "predicateType": "EntitlementPredicate", "value": "hEoRCAcf80zfFyab", "values": ["WAgIUXiI07A68eaq", "C2J9jyEW6GLbc0Na", "KDUL3sa13lk1dQBH"]}, {"anyOf": 83, "comparison": "is", "name": "86IlBhnetU4RwTqU", "predicateType": "EntitlementPredicate", "value": "geO3FgkXhjDzaQY3", "values": ["Dm4hMzF4TxodenSr", "snn2ZkP7cFdP43e5", "dC9XIBudfZgrbHDI"]}]}, {"operator": "or", "predicates": [{"anyOf": 94, "comparison": "isLessThan", "name": "O847g8OudOfjnCuH", "predicateType": "EntitlementPredicate", "value": "3c46IjGa23YvYmmD", "values": ["MNFIurjh2imdb4rb", "jIUE1Tq5jyAZvkRC", "g7VYPXIuvUYTZBRu"]}, {"anyOf": 21, "comparison": "is", "name": "Xj0ZwsVC0gL97ZVJ", "predicateType": "SeasonTierPredicate", "value": "Y2QD3oD5fLCr3OOl", "values": ["NWql4nmwAft4gqkN", "NDigNJma1MbqqZtf", "XVv8ZGF7uYnGzpip"]}, {"anyOf": 80, "comparison": "isGreaterThan", "name": "1jMD3cym8xIfkOVW", "predicateType": "SeasonTierPredicate", "value": "grREOLx0KOww3HIC", "values": ["QLfl7MUBG7qtPu64", "6rDgMdIIlhS1fSiM", "yAtURKLRkb738HGS"]}]}, {"operator": "and", "predicates": [{"anyOf": 45, "comparison": "isLessThanOrEqual", "name": "1m7Ta1PsKc50Kv6e", "predicateType": "EntitlementPredicate", "value": "yomQoIXimBJehyxl", "values": ["QediogEhhM2rIizG", "dKvOPdq5xrgxSmy1", "NsjUgxBkF6wFPoJe"]}, {"anyOf": 61, "comparison": "isLessThan", "name": "N9LFkYW5DQyj4bj5", "predicateType": "SeasonTierPredicate", "value": "mpo6sPwVOEDSJsEK", "values": ["5QpNhlI2iS5EpGhh", "vXYck0upMzUYnb76", "tFkEORV3bu1bNCtX"]}, {"anyOf": 74, "comparison": "isGreaterThanOrEqual", "name": "40V6Do5sYadCCFrH", "predicateType": "SeasonTierPredicate", "value": "2ulIJzPyrVEiOG4U", "values": ["cqsuGKHhMRWLVd3D", "lhLuIpomM8sm1Mia", "I1mX2tJoARtdbBe7"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 60, "fixedTrialCycles": 6, "graceDays": 58}, "region": "sMrok0WvGYYnx4V7", "regionData": [{"currencyCode": "09xbnGezKsDwG2om", "currencyNamespace": "OR2nvYI9TVqJdvzc", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1974-02-12T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1994-11-24T00:00:00Z", "discountedPrice": 31, "expireAt": "1992-12-31T00:00:00Z", "price": 41, "purchaseAt": "1979-12-26T00:00:00Z", "trialPrice": 73}, {"currencyCode": "iWyerCSa8SRgwsAj", "currencyNamespace": "1ik1jglaDXTvKCWw", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1976-08-04T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1975-05-20T00:00:00Z", "discountedPrice": 7, "expireAt": "1978-07-18T00:00:00Z", "price": 47, "purchaseAt": "1977-05-24T00:00:00Z", "trialPrice": 60}, {"currencyCode": "S0uPdjhdinpng5BL", "currencyNamespace": "y8wbhMssAHjapIkY", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1999-05-14T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1985-12-09T00:00:00Z", "discountedPrice": 64, "expireAt": "1972-08-17T00:00:00Z", "price": 52, "purchaseAt": "1997-09-15T00:00:00Z", "trialPrice": 81}], "saleConfig": {"currencyCode": "QbJndUDpdONneAcz", "price": 2}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "dHb2slt71B1SmZp2", "stackable": false, "status": "INACTIVE", "tags": ["AQN0qdskdQV0TqI8", "EFnmDbxIxi4YKlON", "iKoTTS1j02o7JjTX"], "targetCurrencyCode": "k2Q5Y4Jvaizwiila", "targetItemId": "tuUjjt9lIMGql5El", "targetNamespace": "Ea9EIIlGcHB3CfR3", "thumbnailUrl": "ncDlwi3v3MFFJ1Ke", "title": "sKoELCpobBEG8X64", "updatedAt": "1999-07-05T00:00:00Z", "useCount": 60}, "namespace": "pdXpai0rYaT5hOPj", "order": {"currency": {"currencyCode": "af3H0tYighU0VUfc", "currencySymbol": "YHJbBfAKSiPW3Vgs", "currencyType": "REAL", "decimals": 54, "namespace": "iR1DJ7HVWqMkNSaw"}, "ext": {"QUWDFJvJBWic7UkB": {}, "eIXuqDuAXI66bQ71": {}, "w0deoV9Lx5RDA1l2": {}}, "free": false}, "source": "GIFT"}, "script": "rciYNEzvSZIPkhSg", "type": "grantDays"}' --login_with_auth "Bearer foo"
platform-get-fulfillment-script 'tOv7Zy0b65uvuKNu' --login_with_auth "Bearer foo"
platform-create-fulfillment-script 'y0ytZQ7M6Nzy1adn' --body '{"grantDays": "SKOLFKx1dX4LuWJu"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script '3pDMUAeeZ97SBROP' --login_with_auth "Bearer foo"
platform-update-fulfillment-script 'YuG6XqP6oo7G73zd' --body '{"grantDays": "xTgOfnwIdlNa29fD"}' --login_with_auth "Bearer foo"
platform-list-item-type-configs --login_with_auth "Bearer foo"
platform-create-item-type-config --body '{"clazz": "Lh741IslKHzGlLKW", "dryRun": true, "fulfillmentUrl": "Hcl5LLLOexL4fZvW", "itemType": "EXTENSION", "purchaseConditionUrl": "CiiPDGQhNPEwiJCf"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'INGAMEITEM' --login_with_auth "Bearer foo"
platform-get-item-type-config 'JVrlzqQls1ozhLVA' --login_with_auth "Bearer foo"
platform-update-item-type-config '3kE8jKvgatOEBM70' --body '{"clazz": "TdlNBJYOmpu1VCar", "dryRun": true, "fulfillmentUrl": "Up6Sw1I98jeZQ7hf", "purchaseConditionUrl": "xnhLd3Knaknoed9D"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config 'HhLOqQGhCUr6iTrj' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "yEgarAdNJOIG36I6", "items": [{"extraSubscriptionDays": 40, "itemId": "7dwV9DBqFKHQkETJ", "itemName": "yTlUrwDTnoujQD4I", "quantity": 62}, {"extraSubscriptionDays": 47, "itemId": "iH9Z5qXn3aoRtlqO", "itemName": "ECohViHA5CzgFSy8", "quantity": 1}, {"extraSubscriptionDays": 69, "itemId": "A3PrIfapq5AAeMe4", "itemName": "L3mDWORBVXTIIJM9", "quantity": 58}], "maxRedeemCountPerCampaignPerUser": 38, "maxRedeemCountPerCode": 1, "maxRedeemCountPerCodePerUser": 42, "maxSaleCount": 71, "name": "nQNxot371W9G4AvQ", "redeemEnd": "1976-05-19T00:00:00Z", "redeemStart": "1994-06-01T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["hyoTsMWPAxUMkawa", "GpAyrIwMif3BOdko", "cVTd4BxqGWV6mTJ0"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'AFdO0Khqf6kiTdSG' --login_with_auth "Bearer foo"
platform-update-campaign 'v2LFjAKY7CbgsWqF' --body '{"description": "WZX7kPBom8F9GLLT", "items": [{"extraSubscriptionDays": 67, "itemId": "ROCjtuzFMbAG9YI8", "itemName": "9hmguB8FOTjMLo4b", "quantity": 26}, {"extraSubscriptionDays": 37, "itemId": "SJC4DdrKF7SUQPLG", "itemName": "59e0k5ZtX6wK7PpU", "quantity": 24}, {"extraSubscriptionDays": 4, "itemId": "MbGIVIu8vvwLc7KY", "itemName": "3uVoJXTIMtpgkieD", "quantity": 50}], "maxRedeemCountPerCampaignPerUser": 86, "maxRedeemCountPerCode": 64, "maxRedeemCountPerCodePerUser": 51, "maxSaleCount": 45, "name": "lGdMiHKxbWCYzo8y", "redeemEnd": "1991-05-01T00:00:00Z", "redeemStart": "1998-07-14T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["9tmmOnYnOpas6ghP", "1y4Zi7s7QBlk44Z4", "4B1GZgKg4uKxaCgc"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'GLuC3brWdTYCfHkI' --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category 'ySok5DiXZtLW87rG' --body '{"categoryPath": "ysryod3dNQrmsApR", "localizationDisplayNames": {"A6HX3RwrKt2ecozL": "0TOg54vCE48L5oLF", "6M4lNa4JUMSHNgqR": "qCV7usamANkZlOX9", "Sfo95HgXqKhTPkwf": "LM9uSybRzWek2gZv"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'Rrvr0n9d9lvccKML' --login_with_auth "Bearer foo"
platform-update-category 'hrTrcBE2ItBS3KtK' 'ZWe8aoFzAyBME74H' --body '{"localizationDisplayNames": {"UtipUWYhWV1qx8Cz": "PML52faXUr9Sk4lq", "2faBcAXXKlhvyH8p": "aOJtxqMPpcVfRwNj", "547fH0XrKEDpEY8V": "nocGAjci0V3tBf2j"}}' --login_with_auth "Bearer foo"
platform-delete-category 'nHGKXphn50c9tNLD' 'ljhZ2jxLRX3z46OC' --login_with_auth "Bearer foo"
platform-get-child-categories 'aGBeMfPlNos4yBRj' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'rERHEonAZR8GmEu0' --login_with_auth "Bearer foo"
platform-query-codes 'q1p6QCyY6vSkVFWd' --login_with_auth "Bearer foo"
platform-create-codes 'sbYuVEGVxYheR3j5' --body '{"quantity": 26}' --login_with_auth "Bearer foo"
platform-download 'aZPV87pna08gxefT' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'YKhuxaEc7M4P7Uck' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'SC6ePeN8i4GrFES9' --login_with_auth "Bearer foo"
platform-query-redeem-history 'z7xueHpATHccee9G' --login_with_auth "Bearer foo"
platform-get-code 'XhKcjmSEwdrkEnnq' --login_with_auth "Bearer foo"
platform-disable-code 'KzFsLfYalUlfwEQK' --login_with_auth "Bearer foo"
platform-enable-code 'jU7eHGebSVu0LQ40' --login_with_auth "Bearer foo"
platform-get-service-plugin-config --login_with_auth "Bearer foo"
platform-update-service-plugin-config --body '{"grpcServerAddress": "kepEaC4dfiOMZfEh"}' --login_with_auth "Bearer foo"
platform-delete-service-plugin-config --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "Hr39pysFO3Zvc1BZ", "currencySymbol": "G99LyvfvHEsJKQQe", "currencyType": "VIRTUAL", "decimals": 24, "localizationDescriptions": {"VLMUoAnaRcYp7FUj": "fIGaffoflEIByYqe", "KN0meGelYF5wWaDh": "ukU4khGG4vZFTYnP", "kmSu4PWam1jxR7SE": "TWjteoc8fgvZDDho"}}' --login_with_auth "Bearer foo"
platform-update-currency 'O05oKqymxLD1Lcvw' --body '{"localizationDescriptions": {"6T6mZEiwxxElpMYS": "WIeVzm7z9noowmlT", "IKVowi0RY2VN4ZON": "JREdUQ3z9F1BxNNg", "nke4akncw7wu9TmX": "fJWBPrx9Ns8eLzYE"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'vwSWTaLQjctvrK2j' --login_with_auth "Bearer foo"
platform-get-currency-config 'hsYpKPlXn77AtYoF' --login_with_auth "Bearer foo"
platform-get-currency-summary 'zLAATPY8P8P3cfoi' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "vvQxevecWw7Rry0K", "rewards": [{"currency": {"currencyCode": "K5rgAGO0dW8rX2MV", "namespace": "UGKSZ4GcLkt4pK32"}, "item": {"itemId": "sJxlZcCTpTdRtCHv", "itemSku": "uk6B6XTmSLyn50si", "itemType": "gBVZxiKdV57GvRyd"}, "quantity": 90, "type": "ITEM"}, {"currency": {"currencyCode": "hLiD5sf5y1JsxJNG", "namespace": "myt0SQDUDoWBZVGL"}, "item": {"itemId": "lkUetzCAWc9x1aMj", "itemSku": "gGim51T107XIZRZ7", "itemType": "tZdIs0xf4czdt7zq"}, "quantity": 26, "type": "CURRENCY"}, {"currency": {"currencyCode": "KxOEQlVcx6GqsBq8", "namespace": "vdhWVnuYLgpZehK0"}, "item": {"itemId": "G2nmyuViB9kRTcSQ", "itemSku": "dTnNYGeAfYFG3wSk", "itemType": "HKufBdS3ZOokZB4c"}, "quantity": 96, "type": "CURRENCY"}]}, {"id": "wfhKvrf2AaH4yCWr", "rewards": [{"currency": {"currencyCode": "HSppnIZkNnTn3rzH", "namespace": "5NvAtcvNedgS1fUf"}, "item": {"itemId": "KmihDbmu8ePWlQMV", "itemSku": "DXEHeiGTnwyEw6hI", "itemType": "WDZrpP7rz3ISW510"}, "quantity": 21, "type": "CURRENCY"}, {"currency": {"currencyCode": "r4isTKWjmv67nuHC", "namespace": "XWfwnwGioVwVzmmB"}, "item": {"itemId": "VVFfpqx1AeLtzcPJ", "itemSku": "3jtDYBo4FUTH7CGf", "itemType": "KSyxgRR1DiCqSMzp"}, "quantity": 33, "type": "CURRENCY"}, {"currency": {"currencyCode": "GLkDs7ACC1RgBfoN", "namespace": "rHlFi2qJLgmBLE35"}, "item": {"itemId": "YhyiDV90SeI5yppB", "itemSku": "HoytVznCgNyx9fbT", "itemType": "63ShEh8PbGikLjgj"}, "quantity": 4, "type": "CURRENCY"}]}, {"id": "P8PATLpUpxeJlsBJ", "rewards": [{"currency": {"currencyCode": "T6Hh3OMjAjq2mK8l", "namespace": "bSEEelxnb5QxWG2H"}, "item": {"itemId": "FnZlA6HKWW4fI1IQ", "itemSku": "coBQELcNlZkqTZrK", "itemType": "gXNwvm4e5GX6H742"}, "quantity": 83, "type": "CURRENCY"}, {"currency": {"currencyCode": "ixhtAoKiVm6URT95", "namespace": "XhnUcvWB28Mpusuh"}, "item": {"itemId": "hDJ5slzgiWZEtyd5", "itemSku": "6LfxnbY97jjYgXch", "itemType": "CbkXX26uEdCfQaMA"}, "quantity": 88, "type": "ITEM"}, {"currency": {"currencyCode": "uTKfC0I2kNjCMDtD", "namespace": "Mrentgn3DhqciwIe"}, "item": {"itemId": "ShF9RKb9vvxuJlhX", "itemSku": "bWhbwPwToC6knjVw", "itemType": "VnzaqSfJiQFC2gXo"}, "quantity": 6, "type": "CURRENCY"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"0kg16yUSpSOAjHJW": "wfCjYwWkLob9gKLq", "s2nEZhpByfHZinxN": "fgPAwkMBsznlBUqn", "LT4AbGptKaWNvPbp": "g7yrRvXfZ6rvgvEY"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"AKy4QxZkaXZ7vmiE": "d0JPxVyQpshaDwNq", "TbbFMXAMfVXe0GZe": "MgsRsmH1EQrYmkPK", "TPOlhTtSiZNCxuog": "FteTHJe4BhSSQkQD"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"mOt6D7ufFVTOhvQp": "fbBke8aEdd36xj6w", "ySoltDxsbzxrlaKE": "fkoYjY2o6ouRW9Ut", "NquwC3WgumrIz4Nh": "GztZpr4U4fwQIiLX"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-query-entitlements-1 --login_with_auth "Bearer foo"
platform-grant-entitlements --body '{"entitlementGrantList": [{"endDate": "1974-04-13T00:00:00Z", "grantedCode": "YBn2xaOBdPF0JmX8", "itemId": "qwU1cTuHHPB5S3Dv", "itemNamespace": "PRCzBrVUxmDOj3cv", "language": "gZAY_xQ", "quantity": 94, "region": "O0Gyf5PO3COyMvcz", "source": "GIFT", "startDate": "1978-09-10T00:00:00Z", "storeId": "KqxLGeMvr9TsvcMQ"}, {"endDate": "1996-01-23T00:00:00Z", "grantedCode": "a6iZ5uFRYNn3SHiW", "itemId": "xF0YbuU5ar5qTLWU", "itemNamespace": "Cy0Afgc050XIZRW4", "language": "wE_773", "quantity": 71, "region": "idT7w0Oc15N8WXBP", "source": "OTHER", "startDate": "1985-10-04T00:00:00Z", "storeId": "PAewqSm5x3B4t7WQ"}, {"endDate": "1977-05-08T00:00:00Z", "grantedCode": "EjRwEQlNapJRfk4f", "itemId": "9Zcw1pEHAyNFxcVT", "itemNamespace": "KuAQTGh5BxjWOozG", "language": "Md-KwAV", "quantity": 29, "region": "0O4zd8Tb7cUNGPTB", "source": "REDEEM_CODE", "startDate": "1984-03-11T00:00:00Z", "storeId": "fjv9oYMXMjlVHY1A"}], "userIds": ["nEkcokKwcQ0baDT9", "HwF3vGoav7MK0PcL", "OyJ2h23GUS2amU7s"]}' --login_with_auth "Bearer foo"
platform-revoke-entitlements --body '["yGlElXdEAOrVSnLo", "cLVVYamQc4wcG5nD", "BLJoJHbiQ5duE5p4"]' --login_with_auth "Bearer foo"
platform-get-entitlement 'cfs2E41cK8QTwiIA' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "vxSvNDlmM5nQFMGz", "password": "s7fzjgyc44mEh9tR"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "k8knYSV30lnroQeh"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "MDli6t9unQLYXxm0", "serviceAccountId": "9wpGAbpEmDY9vLh3"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "u6EDsUmrV6kH4Oot", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"2I03dIjvBbA6bfbY": "aJCJjfk2TUvn95Fh", "O7VW3mbDVMDu87t0": "ldWf7iSGIiKFtWtn", "4Yr2svKM6pqLGZ0T": "BujELAUK6mQ5iZgb"}}, {"itemIdentity": "wwm5iGzXtcknrgid", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"upvXO6aj4hCmTC34": "jxW4pIDwdqXpmRmu", "t9H9XyWI8bp8fQxR": "uX91uYmtrHJbEGTU", "j7YjERL1rEQG02zc": "cA8wvLsWUNd6lPKv"}}, {"itemIdentity": "qDejvqklTSvDwuOr", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"lzpiX0VuFpZum7iz": "xe7NPzjOa8E7wY76", "PxLv9HBEUe89AwEw": "1HO4FnKtx4XLKAml", "Dr19uJ3nq6VerzVC": "cI8y3Cz0YqCKUh5R"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "D9vNAp4jinFpnQ5x"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "F9wwbvMZyeDeRnVf", "publisherAuthenticationKey": "PUa6xVVBcq3wZpFI"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "YeAg79HcLJXJ7mpV", "clientSecret": "I6eTYAjdPlCiQQC3", "organizationId": "5cj4KyOVgvnWbfRJ"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "tsB7cUQZ2QUAxJrI"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'NPXppPNO3AfmXcgw' 'C3IN6tvKgLB9QmJI' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'Oq9dP5szG71utjsQ' '4CrRb9gUCeVz7fWb' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'ZIdhevfZvyV7Acod' --body '{"categoryPath": "cZwKjYDdmJOlzwm9", "targetItemId": "Su4FnS98QqftSjq7", "targetNamespace": "sn8yreciPLfkVyyJ"}' --login_with_auth "Bearer foo"
platform-create-item 'sbGpO6JgehDJxEN7' --body '{"appId": "JlZc8LMq1o2jZWu4", "appType": "SOFTWARE", "baseAppId": "cd9CVnGqMX9FieeE", "boothName": "ssWEUl07bhwntCVq", "categoryPath": "iYOJf5KwMZQjzvjS", "clazz": "ozv6CTRDl0zp9CzH", "displayOrder": 64, "entitlementType": "CONSUMABLE", "ext": {"winkBNi4gvqgl6TZ": {}, "9TGVPmv34h6T7Esu": {}, "fmfxKYB4LM6H6QXm": {}}, "features": ["smAUrD9L1IiD6Mlc", "pZ9X3fUSR1l9xLPB", "EPhMDFzjHZ3sIhzO"], "images": [{"as": "x2CXKlvIomU3pIxM", "caption": "9n8D2eLMe3lt9qfx", "height": 13, "imageUrl": "UDcgVE7L9FK6e0Mr", "smallImageUrl": "Pc4vtxk9hVKlG56H", "width": 23}, {"as": "epqtxjbrztee7QLT", "caption": "GAak7Kaol01DK97D", "height": 88, "imageUrl": "xnik42miteR5eQAe", "smallImageUrl": "1rzmmgqBPRmd6mO4", "width": 30}, {"as": "OJpZm9yEYWNGMy2p", "caption": "gSGSUOK68eqGJtWf", "height": 17, "imageUrl": "Ybgg8rdwY9bmrvHm", "smallImageUrl": "O07KNqX9LM2IwEsd", "width": 82}], "itemIds": ["SQ83TTbtefXWznDe", "4LQdXfFBii2RAMEX", "5RMjBFVZGYzQqV8d"], "itemQty": {"9mDdUIoiIJFNxuNO": 26, "S79En3wYowBdkaZ3": 51, "PL9e4P01vxP8xj1L": 50}, "itemType": "MEDIA", "listable": true, "localizations": {"irURERnEMzpImW6s": {"description": "jAHyCK5tNanGBrkz", "localExt": {"Uvck3xTtmOFMebS4": {}, "AdlNzwog2IhErkNh": {}, "NcECWwchW6zL9Skb": {}}, "longDescription": "LlrNXnGanMazb8jv", "title": "RWenURH48aJuALEc"}, "SqcE15u6D31DjOsr": {"description": "s3CUYATdqnQGbqiq", "localExt": {"OkNeATj7eGjodd7C": {}, "cJUrI6MAugK5kypN": {}, "rp2nFe9FmN86sK5L": {}}, "longDescription": "Oq4ft5jGcMICPUYn", "title": "fG6jl9U4jReteIMg"}, "zISomCsodJrhQW41": {"description": "q2OspCZbt3Uta5I0", "localExt": {"uGcL1koyHjCH5olY": {}, "LETRpABAmO2EGvJ4": {}, "UMS93yOxNInDByhn": {}}, "longDescription": "oluO6ti0QP2ssiJ6", "title": "6OzOj84O6tgohjtC"}}, "lootBoxConfig": {"rewardCount": 10, "rewards": [{"lootBoxItems": [{"count": 2, "itemId": "OWs9mfVQh3jLBtn9", "itemSku": "pxpE7BYtzB0B4Cxy", "itemType": "QrUpIFvORxTi79Dp"}, {"count": 91, "itemId": "CaFGzfZ2hxcJ2Fne", "itemSku": "mn7M23SzUo4hNBDh", "itemType": "9ZFP1OW0nXOErQPS"}, {"count": 82, "itemId": "VsRoYIK69yg9ADCG", "itemSku": "iXaLs2xjHkinOD97", "itemType": "5nARHCmhNHSXuqIH"}], "name": "sxvaUoXDmwWsukxn", "odds": 0.046703177357094616, "type": "REWARD", "weight": 75}, {"lootBoxItems": [{"count": 61, "itemId": "ZGW4y3f0R9s2kndh", "itemSku": "hZhwAiLsZs4pmLDI", "itemType": "Qch4IjDq9aT3qZyI"}, {"count": 53, "itemId": "rYsWucAkXsVJbXi7", "itemSku": "eRZa7WwIc895ImqK", "itemType": "6tVsaUq3stUh5J5Z"}, {"count": 67, "itemId": "21NVIs7NRen2Y3Ns", "itemSku": "0QJQeaWytPfds1BY", "itemType": "x0EaURydf8ZyyZeH"}], "name": "AWGgJUbUJRMbkcTg", "odds": 0.1927265898692747, "type": "PROBABILITY_GROUP", "weight": 65}, {"lootBoxItems": [{"count": 95, "itemId": "7gHPTPQbvLt2NRqJ", "itemSku": "GIKzLyH1y72L13Or", "itemType": "nyx34luLdvtsTKXM"}, {"count": 20, "itemId": "oe8KDgy0xZfAcNg1", "itemSku": "4Ws8TIP1LKiFQoLD", "itemType": "vumfqrgSfnx2h61X"}, {"count": 70, "itemId": "dN1MGRXBJ6mVV7JS", "itemSku": "9qjNLwvI8JdiY3RR", "itemType": "iLilmOGF6dLLIeIV"}], "name": "IjMcdlbdRXTGIrdN", "odds": 0.6018242333033923, "type": "REWARD_GROUP", "weight": 14}], "rollFunction": "DEFAULT"}, "maxCount": 73, "maxCountPerUser": 84, "name": "xjrElvvDgw0ag7kS", "optionBoxConfig": {"boxItems": [{"count": 99, "itemId": "Yk997XkGOdC6ItxD", "itemSku": "T8p4n4XCFkD1AJLC", "itemType": "wszbZxuHSgDOK8bj"}, {"count": 30, "itemId": "VFrcg2CXxepx78fv", "itemSku": "syhE2BKtyTDSIM7m", "itemType": "kmvZ7Cmsh4US8o4j"}, {"count": 10, "itemId": "9Mfuc8VOsnmnlVlj", "itemSku": "dWYmELe74p38vumn", "itemType": "xAnYBTxaTIz0jcgD"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 22, "fixedTrialCycles": 90, "graceDays": 53}, "regionData": {"F94NIY9nMrBZo0lN": [{"currencyCode": "UBDShHD32vvL28FP", "currencyNamespace": "wTiXfLcxDC9Ynd02", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1986-08-23T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1983-12-18T00:00:00Z", "expireAt": "1980-02-27T00:00:00Z", "price": 11, "purchaseAt": "1994-10-08T00:00:00Z", "trialPrice": 99}, {"currencyCode": "hHtADUQ9zimQTQT9", "currencyNamespace": "5pFJUAJsyAfeKOuf", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1983-09-21T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1991-08-10T00:00:00Z", "expireAt": "1978-03-03T00:00:00Z", "price": 41, "purchaseAt": "1996-04-13T00:00:00Z", "trialPrice": 42}, {"currencyCode": "TKUe2znsqPzPkwCB", "currencyNamespace": "o2SwCUsTag4MLAo3", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1981-12-09T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1999-01-27T00:00:00Z", "expireAt": "1983-12-01T00:00:00Z", "price": 0, "purchaseAt": "1971-11-22T00:00:00Z", "trialPrice": 10}], "FdZhNMd1onFjGRbx": [{"currencyCode": "tABPXDmgNEJBhgGq", "currencyNamespace": "5GIDhNC66szbCCf7", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1971-09-17T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1976-12-25T00:00:00Z", "expireAt": "1985-03-28T00:00:00Z", "price": 77, "purchaseAt": "1992-07-13T00:00:00Z", "trialPrice": 90}, {"currencyCode": "O6A0FqfhnaB3YxKN", "currencyNamespace": "dOTacCcJfIfXshuL", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1980-01-27T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1982-05-31T00:00:00Z", "expireAt": "1976-07-10T00:00:00Z", "price": 9, "purchaseAt": "1982-08-08T00:00:00Z", "trialPrice": 27}, {"currencyCode": "6RpmKDebNkylbynk", "currencyNamespace": "gT9vayLLiizac7Ge", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1989-11-11T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1976-02-02T00:00:00Z", "expireAt": "1991-03-29T00:00:00Z", "price": 41, "purchaseAt": "1981-03-24T00:00:00Z", "trialPrice": 39}], "rjF5RaJwvkWVco2L": [{"currencyCode": "To5ijlvDF8qBWCQ9", "currencyNamespace": "dLWYyS8zdhMeBXH8", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1983-09-29T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1972-04-02T00:00:00Z", "expireAt": "1973-02-28T00:00:00Z", "price": 2, "purchaseAt": "1995-06-19T00:00:00Z", "trialPrice": 61}, {"currencyCode": "uQdW2jwKUckc794r", "currencyNamespace": "yY91lX8DD4MYXlrJ", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1977-08-22T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1981-07-01T00:00:00Z", "expireAt": "1981-02-06T00:00:00Z", "price": 35, "purchaseAt": "1989-05-09T00:00:00Z", "trialPrice": 23}, {"currencyCode": "vEoM8YmVjAkO3HKs", "currencyNamespace": "Ep6KlqwW4djrexcb", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1998-06-02T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1978-06-03T00:00:00Z", "expireAt": "1992-12-17T00:00:00Z", "price": 44, "purchaseAt": "1978-07-14T00:00:00Z", "trialPrice": 97}]}, "saleConfig": {"currencyCode": "xSVp3Gd2TK0HzYvi", "price": 94}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "mx82JVBRLPZ6Iz8t", "stackable": false, "status": "ACTIVE", "tags": ["XtdsJQeJ1too0qvx", "iTCVsXsygWbjE2op", "phTLEEBGTtZyTjdK"], "targetCurrencyCode": "NKgYazujsmSmylT1", "targetNamespace": "YtxIq73aMb48jISd", "thumbnailUrl": "97KORRhxSWLWLNfH", "useCount": 90}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'UcPAGv6c1ESC6hZY' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'TYZbzf5aANNNs5kg' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'SZZNUHbIT9szApmW' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'JO5vzzXZj08a6K1X' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'RVfriSpPFnZBJZkD' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'nEiyfa2LrnpZxNnL' --body '{"itemIds": ["RH36bqS2oFY76PU1", "AziBOHEAj1cT3u6Z", "c2FbrTFznTgDIwZI"]}' --login_with_auth "Bearer foo"
platform-bulk-update-region-data 'RWf6T3by2kYSCdnF' --body '{"changes": [{"itemIdentities": ["KLc0xcTjqjdcEfU6", "1OJYMnW49rWynp1c", "k1vT90C6o86cSRL9"], "itemIdentityType": "ITEM_ID", "regionData": {"RCa9JktyBdxkZKrE": [{"currencyCode": "WFw9GYxjiiOQAD77", "currencyNamespace": "ci0vfWVZoRRMPi57", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1989-01-06T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1984-01-01T00:00:00Z", "discountedPrice": 57, "expireAt": "1977-03-07T00:00:00Z", "price": 51, "purchaseAt": "1988-10-22T00:00:00Z", "trialPrice": 41}, {"currencyCode": "zyv6gFZXI5nXJ7hL", "currencyNamespace": "i6HweweRmyo91dIn", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1998-08-11T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1986-01-27T00:00:00Z", "discountedPrice": 72, "expireAt": "1999-01-13T00:00:00Z", "price": 87, "purchaseAt": "1979-12-30T00:00:00Z", "trialPrice": 34}, {"currencyCode": "PAd9sxoLnWGP1Paf", "currencyNamespace": "IjLX8ce0KbNN7Ycl", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1990-02-09T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1977-08-20T00:00:00Z", "discountedPrice": 87, "expireAt": "1998-04-30T00:00:00Z", "price": 26, "purchaseAt": "1976-12-22T00:00:00Z", "trialPrice": 45}], "vSoaGk4ktF5wnJDg": [{"currencyCode": "9Q3WXiydCOInVols", "currencyNamespace": "r6CHmj763vLwtYEJ", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1987-03-07T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1996-06-20T00:00:00Z", "discountedPrice": 19, "expireAt": "1981-01-22T00:00:00Z", "price": 61, "purchaseAt": "1997-06-06T00:00:00Z", "trialPrice": 9}, {"currencyCode": "ZPkv90lyKSTWLxSF", "currencyNamespace": "Z0LpupEi5DbkVs3q", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1985-03-08T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1998-02-09T00:00:00Z", "discountedPrice": 39, "expireAt": "1989-04-27T00:00:00Z", "price": 11, "purchaseAt": "1998-07-03T00:00:00Z", "trialPrice": 99}, {"currencyCode": "XOIZZQAJza84lKKm", "currencyNamespace": "VOaTS6xBbNrSUAW2", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1976-03-05T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1988-10-14T00:00:00Z", "discountedPrice": 92, "expireAt": "1994-08-28T00:00:00Z", "price": 48, "purchaseAt": "1979-09-16T00:00:00Z", "trialPrice": 56}], "HITBg9x4unq3eOMH": [{"currencyCode": "IKeTyBG5dCUoExnK", "currencyNamespace": "fV3869IN4V1OdhH4", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1979-07-11T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1976-03-31T00:00:00Z", "discountedPrice": 39, "expireAt": "1977-10-12T00:00:00Z", "price": 4, "purchaseAt": "1985-07-07T00:00:00Z", "trialPrice": 58}, {"currencyCode": "iLjLyZrXr9Bhtzn8", "currencyNamespace": "jAdTn6xBhrciryLm", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1976-08-23T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1998-01-22T00:00:00Z", "discountedPrice": 41, "expireAt": "1988-06-14T00:00:00Z", "price": 28, "purchaseAt": "1996-03-24T00:00:00Z", "trialPrice": 32}, {"currencyCode": "1SLjCPrFa05Xl5TP", "currencyNamespace": "C5GODS44bmm7jPdK", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1982-01-24T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1988-01-29T00:00:00Z", "discountedPrice": 92, "expireAt": "1980-12-04T00:00:00Z", "price": 96, "purchaseAt": "1999-05-14T00:00:00Z", "trialPrice": 100}]}}, {"itemIdentities": ["jXVzW1QqxnWR5she", "LgsAF4ctv5guycGi", "q9j2EyIknfLDpgHn"], "itemIdentityType": "ITEM_ID", "regionData": {"TDmHe8c1eJ9sde7R": [{"currencyCode": "yt4udIv22M18uux9", "currencyNamespace": "xBomQFPFWy5cwNPI", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1987-04-30T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1973-06-12T00:00:00Z", "discountedPrice": 46, "expireAt": "1979-08-31T00:00:00Z", "price": 12, "purchaseAt": "1997-02-10T00:00:00Z", "trialPrice": 58}, {"currencyCode": "OJDUT0uKAPrARya2", "currencyNamespace": "IMlNiXpF4qvsUUpH", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1972-12-20T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1991-01-18T00:00:00Z", "discountedPrice": 57, "expireAt": "1998-09-24T00:00:00Z", "price": 22, "purchaseAt": "1976-05-11T00:00:00Z", "trialPrice": 6}, {"currencyCode": "zcBQMAEcNcJqrKxn", "currencyNamespace": "MzSYoc4ZjiMY4H34", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1985-06-30T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1995-01-21T00:00:00Z", "discountedPrice": 19, "expireAt": "1975-05-06T00:00:00Z", "price": 4, "purchaseAt": "1971-10-31T00:00:00Z", "trialPrice": 4}], "DwQeUWtjCC2UH6jz": [{"currencyCode": "MO3AfmOS5mQNyRPZ", "currencyNamespace": "FPNP56l1AT6OLKmZ", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1985-01-05T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1983-02-03T00:00:00Z", "discountedPrice": 48, "expireAt": "1977-12-12T00:00:00Z", "price": 71, "purchaseAt": "1992-11-16T00:00:00Z", "trialPrice": 6}, {"currencyCode": "dClpF7OvlBIEgjse", "currencyNamespace": "5kd6GEDo08yq5E5H", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1973-01-19T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1978-05-02T00:00:00Z", "discountedPrice": 26, "expireAt": "1974-03-26T00:00:00Z", "price": 58, "purchaseAt": "1977-06-18T00:00:00Z", "trialPrice": 9}, {"currencyCode": "L5W4tKt6G3j9LYdG", "currencyNamespace": "7xVPqBqe9RDQMBSY", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1987-10-27T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1985-05-18T00:00:00Z", "discountedPrice": 10, "expireAt": "1978-08-11T00:00:00Z", "price": 10, "purchaseAt": "1992-08-28T00:00:00Z", "trialPrice": 64}], "lrQQuAc10DjjwMv4": [{"currencyCode": "vrIPRtvhQIyLarja", "currencyNamespace": "LOKnX51yAB8Pa3uN", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1981-03-02T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1974-11-08T00:00:00Z", "discountedPrice": 99, "expireAt": "1977-09-24T00:00:00Z", "price": 73, "purchaseAt": "1972-08-01T00:00:00Z", "trialPrice": 54}, {"currencyCode": "JMSnJIIgsAVmaGYx", "currencyNamespace": "UX1B9oVuzG2CnYX2", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1978-09-14T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1999-10-21T00:00:00Z", "discountedPrice": 14, "expireAt": "1999-02-20T00:00:00Z", "price": 93, "purchaseAt": "1974-09-14T00:00:00Z", "trialPrice": 40}, {"currencyCode": "Dh2kaZP7pnnVfxPw", "currencyNamespace": "c259HF9ejHaILQru", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1987-09-06T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1988-10-15T00:00:00Z", "discountedPrice": 41, "expireAt": "1990-09-21T00:00:00Z", "price": 42, "purchaseAt": "1979-11-11T00:00:00Z", "trialPrice": 45}]}}, {"itemIdentities": ["ZLRxYlYqlpq03BGd", "Ik4oEogFVGR71rJO", "By6lsj1AKGBjnHma"], "itemIdentityType": "ITEM_SKU", "regionData": {"3VAl6tXFbnATCzUO": [{"currencyCode": "IzVcy9k3ie64Vnwa", "currencyNamespace": "0ClGQJultJe32Aiw", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1972-03-01T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1978-10-16T00:00:00Z", "discountedPrice": 71, "expireAt": "1992-03-09T00:00:00Z", "price": 26, "purchaseAt": "1990-05-07T00:00:00Z", "trialPrice": 63}, {"currencyCode": "rwPsa9YD92CX0rIT", "currencyNamespace": "ajpwHITGeHTnqRbz", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1985-07-11T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1997-09-15T00:00:00Z", "discountedPrice": 34, "expireAt": "1974-10-25T00:00:00Z", "price": 56, "purchaseAt": "1971-12-20T00:00:00Z", "trialPrice": 25}, {"currencyCode": "Fj1umx4ItzkMJ7cu", "currencyNamespace": "df4r916GPrhn2etV", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1993-10-12T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1992-10-14T00:00:00Z", "discountedPrice": 53, "expireAt": "1989-06-05T00:00:00Z", "price": 61, "purchaseAt": "1998-09-30T00:00:00Z", "trialPrice": 29}], "tx60AehGz1ermJYX": [{"currencyCode": "sYgL7TfyIlAwjTZd", "currencyNamespace": "RZJJzWZwvTX2bamS", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1982-11-08T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1998-04-14T00:00:00Z", "discountedPrice": 12, "expireAt": "1982-09-20T00:00:00Z", "price": 44, "purchaseAt": "1977-06-22T00:00:00Z", "trialPrice": 100}, {"currencyCode": "K9gW596FwBNrFXt3", "currencyNamespace": "TAuKBwBcD12ae6r3", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1988-10-05T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1989-07-20T00:00:00Z", "discountedPrice": 5, "expireAt": "1971-06-12T00:00:00Z", "price": 54, "purchaseAt": "1991-01-29T00:00:00Z", "trialPrice": 32}, {"currencyCode": "xyZVKHA9DkaSOWgt", "currencyNamespace": "g8yw8lHEbVDwBAqa", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1991-04-05T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1998-01-19T00:00:00Z", "discountedPrice": 85, "expireAt": "1993-08-01T00:00:00Z", "price": 71, "purchaseAt": "1975-11-25T00:00:00Z", "trialPrice": 46}], "jULsx4SnKNXLMUaD": [{"currencyCode": "SwwQlnNRZJHBSB4f", "currencyNamespace": "ZWEFIZs28Ff1kZp1", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1973-06-09T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1973-11-21T00:00:00Z", "discountedPrice": 24, "expireAt": "1975-08-13T00:00:00Z", "price": 81, "purchaseAt": "1992-11-06T00:00:00Z", "trialPrice": 3}, {"currencyCode": "YIfcDKbLu8pnK34o", "currencyNamespace": "A1keYXJvtggDdXjb", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1975-04-09T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1987-08-13T00:00:00Z", "discountedPrice": 73, "expireAt": "1971-02-24T00:00:00Z", "price": 16, "purchaseAt": "1987-07-05T00:00:00Z", "trialPrice": 7}, {"currencyCode": "ZGMTcqnWrIprOv0B", "currencyNamespace": "J9Sgl7H1sdH2RIJz", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1988-08-16T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1993-02-27T00:00:00Z", "discountedPrice": 32, "expireAt": "1975-06-15T00:00:00Z", "price": 80, "purchaseAt": "1994-11-30T00:00:00Z", "trialPrice": 45}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'utLf6IrvZoBGQbO4' 'S3rURGWUzPAE6SdV' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item '4D5jftRl9rZmtQUv' --login_with_auth "Bearer foo"
platform-update-item 'ro8TWwXWsz9TVmdM' 'KEohKzuMYDUTLBeC' --body '{"appId": "idXjuGgx8ncXejme", "appType": "SOFTWARE", "baseAppId": "tzT0qj0ltsqfiZrt", "boothName": "hVvyX0OCKDJE3RMU", "categoryPath": "ddwSSgxCu8zru1Dh", "clazz": "GAYOHR5BWa9VzIka", "displayOrder": 87, "entitlementType": "DURABLE", "ext": {"El1iUProNB6hI6Ip": {}, "GcToWgFvdRhG9NwV": {}, "3zDuqVlVTypcYPK8": {}}, "features": ["yFAm3DQht4JwnPS2", "IxrSZuxWl0Je4fJI", "urJqerobWMZGVL5K"], "images": [{"as": "LTxahWlS6XdBaKSL", "caption": "CgOOPXM6XTUh2dJ9", "height": 71, "imageUrl": "yqHDNacl4F9G6Dl5", "smallImageUrl": "TFwBY6HKXAblkT8V", "width": 67}, {"as": "iuvvQUm29Iacq4XR", "caption": "LaA643nTMtXSAyej", "height": 27, "imageUrl": "PhGspRi3bhPQvBBJ", "smallImageUrl": "I5JxytpcubN4AUUP", "width": 65}, {"as": "ZOdwe1x8RjU6Bi8J", "caption": "XE52sUBBq2SimQQo", "height": 76, "imageUrl": "UQ2fg3V1o2x0hL5D", "smallImageUrl": "uBDqMyIAzWze94ME", "width": 8}], "itemIds": ["BQ1crBXAupATO8uX", "sqVpdiWo8SjDAM0R", "iw8wLYW3n4F3LD1E"], "itemQty": {"DwBXw5uBYeQZOzAT": 82, "WjVac1cQvSxgTNIU": 51, "VYymOuhCkZu4htrs": 11}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"RJIhFXR2dYprPmbp": {"description": "uptECGd5cdXC2Ses", "localExt": {"c6y68whNBYl9iCqf": {}, "W6rqGOQny4ij4ysY": {}, "Ponb59gQffkNOmub": {}}, "longDescription": "xEJr2qEAuJbpZSrc", "title": "bc4LWfKaY5c1tP5T"}, "DuI5f6m4KC07CnsZ": {"description": "e32hqEcB1ExYMBb3", "localExt": {"ckvoaJYdMqGegcg3": {}, "eRvBZXN3cjIXmFWR": {}, "Jnj8xN7HDPTUEDPN": {}}, "longDescription": "1Kb4UTPWDXTSb55g", "title": "8LSTs7Nf95lGlPrf"}, "6obIdnI6Ag7eUYcY": {"description": "J4QzXCmqr6gmPGaH", "localExt": {"P5SVPvRLiDi0mNHb": {}, "6Lx8eq8SGNwEQO8d": {}, "YXvBSYvJBwb6CjZU": {}}, "longDescription": "MRf2VJetWsokvx3B", "title": "HuTEczr9KjQ3ttz8"}}, "lootBoxConfig": {"rewardCount": 79, "rewards": [{"lootBoxItems": [{"count": 97, "itemId": "TBt1xk9IyssSA8nP", "itemSku": "5PQjpzk2Tb7iYdmN", "itemType": "ZWosrsVBPZ64j0HU"}, {"count": 82, "itemId": "nulxcCKAru8pOaAV", "itemSku": "LDB4k3JwkdaxR7GJ", "itemType": "pYmuYCPG181q9GA5"}, {"count": 61, "itemId": "P5hc2Fh04JTsqDTy", "itemSku": "nCewqJligLlRxOel", "itemType": "KykICRxF6HtlER2t"}], "name": "xs4qrNARATn6KXOu", "odds": 0.3148676358818534, "type": "PROBABILITY_GROUP", "weight": 74}, {"lootBoxItems": [{"count": 57, "itemId": "bbQGERMNpqWb51y5", "itemSku": "RUzvMfTkPy0fGvTG", "itemType": "gfLKsg0b1Bq78cE5"}, {"count": 84, "itemId": "4HZHNyq9odanhR1Z", "itemSku": "rm3thUvV87yfkycL", "itemType": "SVdleSaAylsmLYe2"}, {"count": 32, "itemId": "oLPIREGIKlJt3EP9", "itemSku": "kKwkENQ8VOHGwbAD", "itemType": "MfuOmh0lciRhVZ2D"}], "name": "eoODXMzLSrzoiBnY", "odds": 0.1423663986957796, "type": "REWARD", "weight": 95}, {"lootBoxItems": [{"count": 8, "itemId": "Ws3tYlYeMoCimJyS", "itemSku": "ocRvUWDOrFZKPNoN", "itemType": "9AWtLK9TFgi9j2XM"}, {"count": 16, "itemId": "PAp6EPb988NzxrDK", "itemSku": "VpULjjiw3NeVG4DJ", "itemType": "i9DaMrc0WFgKjE94"}, {"count": 42, "itemId": "x2CPVYYG9WvoGmAm", "itemSku": "vaVV5YfxnUNcwjr7", "itemType": "gSGhnfuF4WZiQVIC"}], "name": "VpWd3UM08gMXhdf3", "odds": 0.14571682965413169, "type": "REWARD", "weight": 18}], "rollFunction": "CUSTOM"}, "maxCount": 36, "maxCountPerUser": 72, "name": "NoFT98SgtJd4Z5f8", "optionBoxConfig": {"boxItems": [{"count": 28, "itemId": "a9dzOJDGCTHIOFje", "itemSku": "XbsSgR43kIDzxBwq", "itemType": "RJTzrHNZWUsq5lQo"}, {"count": 9, "itemId": "jy29EJigqYhyVhUR", "itemSku": "x1yPeczRpdk0HATG", "itemType": "ylx2JG2KNGfhzfCT"}, {"count": 47, "itemId": "ZKYCKoISyXtHzoWG", "itemSku": "dYohxMp3uOQIybqW", "itemType": "fG9BJ6FVKlbYHtbP"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 48, "fixedTrialCycles": 43, "graceDays": 2}, "regionData": {"agSlpGgVTF6VeDAP": [{"currencyCode": "OGBwweyFfXEOEAEt", "currencyNamespace": "bag82KgBgyCd5vjk", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1984-10-25T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1981-12-21T00:00:00Z", "expireAt": "1982-02-20T00:00:00Z", "price": 61, "purchaseAt": "1981-02-14T00:00:00Z", "trialPrice": 80}, {"currencyCode": "2cIoByk9fxtvsgeA", "currencyNamespace": "xo57nKAbZpsbJ4Iu", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1991-06-01T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1975-04-26T00:00:00Z", "expireAt": "1983-02-24T00:00:00Z", "price": 67, "purchaseAt": "1975-08-17T00:00:00Z", "trialPrice": 88}, {"currencyCode": "lacDCdFe8ATUqVxc", "currencyNamespace": "SthrpnMUBsnUfuQI", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1994-02-02T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1978-08-18T00:00:00Z", "expireAt": "1981-09-29T00:00:00Z", "price": 94, "purchaseAt": "1994-01-23T00:00:00Z", "trialPrice": 67}], "wAk7ZQnbqY1cQwVE": [{"currencyCode": "tAr5kKKAo9MM2Cqm", "currencyNamespace": "84jVi9kIpqgrzpUk", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1986-08-15T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1996-01-28T00:00:00Z", "expireAt": "1983-08-23T00:00:00Z", "price": 6, "purchaseAt": "1977-04-25T00:00:00Z", "trialPrice": 97}, {"currencyCode": "L6Kt1Bjj3b8QM8Rr", "currencyNamespace": "45ULqXQgvwD3PsKD", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1999-10-18T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1991-12-13T00:00:00Z", "expireAt": "1973-08-20T00:00:00Z", "price": 46, "purchaseAt": "1991-01-02T00:00:00Z", "trialPrice": 41}, {"currencyCode": "S7rDBf2S54phbdyG", "currencyNamespace": "Dt47f9GWRlE9hqz6", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1975-09-04T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1991-09-14T00:00:00Z", "expireAt": "1978-01-03T00:00:00Z", "price": 36, "purchaseAt": "1996-03-01T00:00:00Z", "trialPrice": 96}], "jxUdMM83WekqfWv0": [{"currencyCode": "4vvn9bk5qr8qs2mq", "currencyNamespace": "tnGAqXUjNypF6MMq", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1974-01-29T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1986-12-05T00:00:00Z", "expireAt": "1989-09-24T00:00:00Z", "price": 37, "purchaseAt": "1971-12-11T00:00:00Z", "trialPrice": 62}, {"currencyCode": "oaIbYz8cK5jlpJdr", "currencyNamespace": "e5ur6yvWJDdvM7T7", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1999-07-18T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1997-01-02T00:00:00Z", "expireAt": "1997-04-04T00:00:00Z", "price": 71, "purchaseAt": "1971-12-29T00:00:00Z", "trialPrice": 91}, {"currencyCode": "ZHzsIYOCUoiCXNjr", "currencyNamespace": "dQL2jdx1eIba1sB0", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1986-10-21T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1997-03-21T00:00:00Z", "expireAt": "1983-08-26T00:00:00Z", "price": 52, "purchaseAt": "1983-02-16T00:00:00Z", "trialPrice": 21}]}, "saleConfig": {"currencyCode": "bzRYt4OVUyumBeIq", "price": 7}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "ohJFyTNk5FGUPhR4", "stackable": true, "status": "INACTIVE", "tags": ["ELQ1btjJOqQMgZWA", "4axDV5uTcYsoahUr", "Zvz3EjFR7996Ug5m"], "targetCurrencyCode": "U6E92nHJzvw7tnYt", "targetNamespace": "Gfv0EJyjBu4EzwRj", "thumbnailUrl": "D7jmQJeFPghqamSc", "useCount": 75}' --login_with_auth "Bearer foo"
platform-delete-item 'y0X48eT7Mluexk87' --login_with_auth "Bearer foo"
platform-acquire-item 'b9Z5BTsEA3EdmW8s' --body '{"count": 0, "orderNo": "B4WedopzwSluBtRF"}' --login_with_auth "Bearer foo"
platform-get-app 'PKThyGnbjmPDKFS6' --login_with_auth "Bearer foo"
platform-update-app 'u9FHuv1M3qfch4Sq' 'IV6LQPHlaeYl4csF' --body '{"carousel": [{"alt": "q65cU66yJaj4ovoK", "previewUrl": "WE4EW0sw8v5peiux", "thumbnailUrl": "oBJATauyD3XCXVMi", "type": "video", "url": "xBS0OBCa2vWadLmQ", "videoSource": "vimeo"}, {"alt": "Yo1HQYTFzwdOMdup", "previewUrl": "wD4O3uNbcIDcIyvZ", "thumbnailUrl": "bOy1T4hfwkuVykH4", "type": "video", "url": "pfmjIXFGZ5PKdbab", "videoSource": "youtube"}, {"alt": "dT0fefo74eg3Nt2c", "previewUrl": "0r4GqF0NHglOVuNZ", "thumbnailUrl": "9LzNeJnBurh54CWb", "type": "image", "url": "ijFI0GKwJ3vfXlsA", "videoSource": "youtube"}], "developer": "izsFUgYwbaLvqvQ2", "forumUrl": "NbmDITuymTBjn3d2", "genres": ["Indie", "FreeToPlay", "Simulation"], "localizations": {"9Rx2RfcRhXpmeeHd": {"announcement": "vphas9S7ivHEoLbU", "slogan": "MM47f1UreUpxEkXI"}, "bE1ETzRJZKMavu4U": {"announcement": "l2IaieEbPSE7TGke", "slogan": "HsYsW9oGBN1pYMBw"}, "bPZTlMlUvFEiGprc": {"announcement": "NSQ9kEeXBZ6FVrBz", "slogan": "yhyhoS6a9oe0JaXF"}}, "platformRequirements": {"pff28uYbe4Cf2HEH": [{"additionals": "vVevhISjbtBJUK5f", "directXVersion": "E3OufPSX3PdOU2V9", "diskSpace": "yw94oa8UJ34TIedV", "graphics": "3HyoX4VnO2LpBU08", "label": "wfnlHBXFIqFUmgUS", "osVersion": "MM5au8GJT0mkVPI6", "processor": "zUtf3QaJPGrTNcXX", "ram": "TUIggoH89QNmI17U", "soundCard": "Db19R6H7r1ta3m7j"}, {"additionals": "K5pxe82pgFiAS6pi", "directXVersion": "Izmc8rKrKEPGSAco", "diskSpace": "ng6eNERUf8kjci1C", "graphics": "tccv9Gv4tOcbnuCq", "label": "f0lm6WBkIzjoSV31", "osVersion": "tvmMB6jzrpRGESmo", "processor": "oHiCV4GUOnXpapXQ", "ram": "GRakUbcG7PcR4eiU", "soundCard": "3Idi55jNrGNT2VHT"}, {"additionals": "KuIT5FwwHj0Ur5F2", "directXVersion": "PWGTTD81xhNP4t6k", "diskSpace": "YBUjyXAn3bWQF6Qc", "graphics": "AiJpXIrgroixptZh", "label": "ckUTGkcBOE4qMcH1", "osVersion": "Kyi8ZFvGcV8DY0XO", "processor": "kDstxZcY1HgAnZV4", "ram": "IOglVLqb9lGAJUg2", "soundCard": "1Lt7JwgwMUSuC3Ba"}], "jy3BcEMCtQs2FcEc": [{"additionals": "vVAyId6Cp85HVDsZ", "directXVersion": "BQgOnXuXsGThYZrm", "diskSpace": "m0wrFMnPpWgrQD4h", "graphics": "Ek0OLjYsnignE7Kc", "label": "MF7fuDbzRRYMNXWU", "osVersion": "sp1tOibJY9aL9ie6", "processor": "vvMbiNURrlm88QlK", "ram": "yuoya4JgakZyUV7t", "soundCard": "73VnSFbuxd4KYZ0j"}, {"additionals": "k0UZdhtnKu9oTc8p", "directXVersion": "VkiyGsj5JdXzRxfN", "diskSpace": "EjUMTs8WIObJBTsv", "graphics": "sw76uISRX0bKVoWt", "label": "oUW1P7ocuBAldDSU", "osVersion": "S7Haa6unq1yQOSRv", "processor": "yiLBRVtIDi2piIQF", "ram": "VmzMidw70KSahpYZ", "soundCard": "dKZRyR9AX7JjxvNZ"}, {"additionals": "hM84DiZk6ySrB9SV", "directXVersion": "FctW7YS0OkL78XeE", "diskSpace": "AtALFI3v8yha4pd5", "graphics": "A7MYcpBD6lKNb8Rx", "label": "vN2u5J7baOeLH19f", "osVersion": "qBwNbNe1ffYRtIvQ", "processor": "aKyevWYtZjK6J29v", "ram": "8MpBSpo3AKRmnJkz", "soundCard": "JHAckUyBksYQfDm0"}], "RNFwiz70tRVLMlHi": [{"additionals": "8i9gOVqajUWrgEsW", "directXVersion": "DtaKzn8dZwnnGeZs", "diskSpace": "ZVgbPzPFbrOMZMgW", "graphics": "kFN7Tpkx6GcfyOg6", "label": "ZUrrp9ubg9mndW2J", "osVersion": "KmQafUs2bxYztOEy", "processor": "VbKIf1ZbzgUwd8DH", "ram": "oCQykmXHYmkRlg7g", "soundCard": "Ys6unPYQ9jNQN1di"}, {"additionals": "1ldhOh6HvjnYuV7N", "directXVersion": "fC4A2ODiZhbfb8Qq", "diskSpace": "CyK1XH9D6vl5eFdF", "graphics": "fgK46GjCWaP8huTm", "label": "nq3FGQn3Ahu5wxq6", "osVersion": "oJq4mChmQHQhO9IK", "processor": "BXDFQfXFD58sG6uD", "ram": "hFYlrzJBYSeMuJfQ", "soundCard": "ecutjS029BiJWOG1"}, {"additionals": "m7MKclr5igjNTVIt", "directXVersion": "rH2X78hxJgaVfw5V", "diskSpace": "nyq8OzTE89WDNoMc", "graphics": "OmbfJrCJQIj1haAo", "label": "sKglqaCXE9ytpIO8", "osVersion": "btO3OwNEGSW5TaW4", "processor": "to7QCY2NGGvi9kg3", "ram": "rMIzNmhJTNQjKlwj", "soundCard": "fJ3TJ2xVpge70WsL"}]}, "platforms": ["Android", "Android", "Android"], "players": ["Coop", "Single", "Single"], "primaryGenre": "Casual", "publisher": "ByjbE8lOLAfTXKLz", "releaseDate": "1971-07-02T00:00:00Z", "websiteUrl": "rddqcKLa7LevxNHO"}' --login_with_auth "Bearer foo"
platform-disable-item 'SEhQRZIp693lRwtc' '43atCuCFxbfbz4aQ' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'ERziPL4dHhOqG5KD' --login_with_auth "Bearer foo"
platform-enable-item 'dUvk0LEi26Ls7mjR' 'xNmvvNtjJNQepUTG' --login_with_auth "Bearer foo"
platform-feature-item 'hwlY4lPzlsCR5rVs' 'yfcH7WjP7HuGz3b5' 'WAEvdRF9bqMj4ro5' --login_with_auth "Bearer foo"
platform-defeature-item 'B19VE838c7OydVw0' 'zCqoMZvpIOO97DmQ' '5ZOzx6iCJTu60Iif' --login_with_auth "Bearer foo"
platform-get-locale-item 'zMhkk5PxsjqbCKpM' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'v2Yky9DYkD2sIllF' 'tBtXJKG3rqBmILht' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 25, "comparison": "isLessThanOrEqual", "name": "vRUbUDSiefGEdLuc", "predicateType": "SeasonPassPredicate", "value": "adM9y66Drf4SSGGt", "values": ["3MiBKohow3kKoaP1", "K4CDuH1mMIfOCDyV", "AHrHncR5dShqiBUI"]}, {"anyOf": 73, "comparison": "includes", "name": "9Q0vqsL9SomqWsGA", "predicateType": "EntitlementPredicate", "value": "6yxi0QzZWfmP2sx0", "values": ["C403HgoXCR6XOMXw", "KO5bEJaPnAFjsody", "JQVVBrShGbIIuqK8"]}, {"anyOf": 75, "comparison": "excludes", "name": "GPCxwEdkyuT3MgzR", "predicateType": "EntitlementPredicate", "value": "lpDl5HsuracO5Mnj", "values": ["kLfjmy8zosRCRgVw", "brQKmb01yA7U7dGM", "nxD1OXkxShFVQTRe"]}]}, {"operator": "and", "predicates": [{"anyOf": 32, "comparison": "isLessThan", "name": "8AmgwhYzk33J34fi", "predicateType": "SeasonTierPredicate", "value": "bfT22G5NpE130YWS", "values": ["gxpKWtdtdtVW9anE", "g5VByeI3ycMcYYBi", "Nmxb9e7vXZV3ig8J"]}, {"anyOf": 49, "comparison": "isLessThanOrEqual", "name": "KJXCISQdwec1m8Bu", "predicateType": "SeasonPassPredicate", "value": "lf1MfqUZXkjHvcUO", "values": ["sShBKsQjXvfQgQDt", "6ce8NDMErA82FrR1", "TlxNf09pefgFIiJs"]}, {"anyOf": 66, "comparison": "isNot", "name": "SogkewIzTOqKkcjR", "predicateType": "EntitlementPredicate", "value": "Pmswm5TCAU1cKApd", "values": ["JDnE73GLmSZns5ow", "vUv2XiXaBzsmaxjT", "BhoUg4LsGP6KLPXk"]}]}, {"operator": "and", "predicates": [{"anyOf": 84, "comparison": "isGreaterThan", "name": "WOboMkyB7FTexsOZ", "predicateType": "SeasonTierPredicate", "value": "b2p3b63KrcwIcXMh", "values": ["Gy83Xit6boOLGCcg", "16DqwdQPQ9HkSSV8", "e1MgTTLS2FgarY90"]}, {"anyOf": 44, "comparison": "isLessThanOrEqual", "name": "NGIyEfRBEj7qms9A", "predicateType": "SeasonTierPredicate", "value": "gfHumyfuBNisecYb", "values": ["vKyj3MqS7Dcmtfh5", "cOpR45VDlvSc0Mr7", "ImwCwGqOf0bNs97K"]}, {"anyOf": 27, "comparison": "includes", "name": "KvsHezWTqgYPixtH", "predicateType": "EntitlementPredicate", "value": "AJ1CU1eD1La16Bw3", "values": ["A2E9pX0BWCMqPsRk", "rv2vancmR6Z7rb21", "JbUnUDh5yGjjv4Mw"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item '5htdM5T3fDSrSHrk' --body '{"orderNo": "oqv2mM6soMaTvQq2"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "a9YdFNtRVSO0js0h", "name": "G9xmSnzd7zgUxAog", "status": "ACTIVE", "tags": ["Z5z6gujpFzlPspQD", "9IRIpDDubntPCFxf", "eoW2NdSWzOXjO1NQ"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'UqWHBW78XREZCiTN' --login_with_auth "Bearer foo"
platform-update-key-group 'Axq26gZrPqCsSDsp' --body '{"description": "vgM16sZ6rjnkH4Ex", "name": "ObppC6CMYDm5ge65", "status": "ACTIVE", "tags": ["UDEOF6gp5UfmjtiV", "bqJnZcrqrPye7fCw", "i7Il2wIFlHm9N6ow"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'MHMtJy1Oqn59tEGm' --login_with_auth "Bearer foo"
platform-list-keys '9NYeUT5P0nx8TqSZ' --login_with_auth "Bearer foo"
platform-upload-keys 'dZ5C8mFI9TnvzEqB' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'NMF9CZvPxT5zbreM' --login_with_auth "Bearer foo"
platform-refund-order 'c9fBoU3RHNDFjLKF' --body '{"description": "repy56eW1kmb15Qe"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": false, "notifyUrl": "51c4MqJzDSvELgBe", "privateKey": "6dboSdhkBzAzPkt1"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "efGJeJaxyHYutgXu", "currencyNamespace": "cx85vHA009FAb21j", "customParameters": {"xeWXk80y9uxgVLGg": {}, "K8aVSCN6oCETQ8gI": {}, "DRdD2wwMXwKVXGPh": {}}, "description": "EJsc7rZpxaPHc9r8", "extOrderNo": "eToFmkHJ6BPOKFLx", "extUserId": "IwKssw647YwDudnG", "itemType": "INGAMEITEM", "language": "Fap_nrJu", "metadata": {"l07jPlcYaqYM7YfB": "mhjI9Y28qVceS9UX", "48dKPCFUIeyYEymN": "XzNX6TGh4UdEweeB", "sJEvBbAvCmlh6Z1o": "z9BaixUUvmzbajE2"}, "notifyUrl": "gjooiDnc1NUb51lE", "omitNotification": false, "platform": "CsB7xL4axSPgPCiw", "price": 78, "recurringPaymentOrderNo": "7cBP0918JaEBQBP7", "region": "66LUnBBR84iAO7sB", "returnUrl": "Qt6YJ2tWwF7RnP1o", "sandbox": false, "sku": "szl0sMY8es36r1Fg", "subscriptionId": "R70eNLHkVrEFd8xA", "targetNamespace": "rWJuCAIfNBSHgpFN", "targetUserId": "w9K9pmAIc6VSfE9n", "title": "bE2PMv12ZSRJkujx"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'bCu1HFaj6Vxs3GuA' --login_with_auth "Bearer foo"
platform-get-payment-order '4S1dS7H7yIS7b5TS' --login_with_auth "Bearer foo"
platform-charge-payment-order 'DRIoMg7Dc5APzfzX' --body '{"extTxId": "DELJFaIaEMW5bhJy", "paymentMethod": "L72WDyhBsCCbnfih", "paymentProvider": "PAYPAL"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'sXHlm1RJTTy9JrNz' --body '{"description": "1K5M1qgFddYvifGH"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'awNx6yhniEHLbEQK' --body '{"amount": 4, "currencyCode": "ioRaKnWhlh80BhYe", "notifyType": "REFUND", "paymentProvider": "ALIPAY", "salesTax": 38, "vat": 73}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'wSlpCI8DhjlxUyrs' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Other' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Xbox' --body '{"allowedBalanceOrigins": ["GooglePlay", "Other", "Playstation"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Xbox' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "wUj2HKUvPYUcQBxM", "eventTopic": "SdOOsn2Nd8Jpa19G", "maxAwarded": 73, "maxAwardedPerUser": 54, "namespaceExpression": "DK46Eehx7xasqMY9", "rewardCode": "aulsL6NOV5agpS6A", "rewardConditions": [{"condition": "5mkufBpWVxIK9D2b", "conditionName": "TcgaKoccaSwWcZmz", "eventName": "CWGI1cIQcPWAShIh", "rewardItems": [{"duration": 17, "itemId": "pcyNkUvqn6eXr6FN", "quantity": 3}, {"duration": 74, "itemId": "X1xsth28NZZgsXyc", "quantity": 41}, {"duration": 54, "itemId": "QNGIDeHlf6IcX1K9", "quantity": 73}]}, {"condition": "DvsfMUOpWv46sXvp", "conditionName": "OjrpRo4mYrCeQUnY", "eventName": "oID2UqO0iAXA9dB4", "rewardItems": [{"duration": 18, "itemId": "wosKhDlLfTKxpVOX", "quantity": 44}, {"duration": 18, "itemId": "GSrdkqddI3ezqu6F", "quantity": 57}, {"duration": 39, "itemId": "0sL2xt6fX9j7rhZC", "quantity": 54}]}, {"condition": "VUaWMJBjrV0p9A7t", "conditionName": "cHrV0MbJGr4drgkD", "eventName": "uWS05m0pGzazM2BU", "rewardItems": [{"duration": 64, "itemId": "nzUEWTiKMJAf6Agb", "quantity": 17}, {"duration": 88, "itemId": "EDMfCckWogE5gcfF", "quantity": 41}, {"duration": 55, "itemId": "t2oyolliYsTJUmps", "quantity": 4}]}], "userIdExpression": "RMraDLrwh3d0ykRG"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'false' --login_with_auth "Bearer foo"
platform-get-reward 'rnacA34xmIOjFLgK' --login_with_auth "Bearer foo"
platform-update-reward 'R4LjEWhOScvtQ92i' --body '{"description": "D02YMvEUNfoL7JCc", "eventTopic": "Mo7GxxXdbYCRexPe", "maxAwarded": 21, "maxAwardedPerUser": 70, "namespaceExpression": "TsQxMTfaSot7aohF", "rewardCode": "Yy4VxwHIJ9gzxqAw", "rewardConditions": [{"condition": "4vBGQAeh0VTiTP4P", "conditionName": "SrXUS6jYI9lsQFD4", "eventName": "3Df5qUZOFzpFd6b5", "rewardItems": [{"duration": 72, "itemId": "plHTPLzynjFZgF3e", "quantity": 36}, {"duration": 94, "itemId": "w7UsyHq4bBb0n1Jh", "quantity": 85}, {"duration": 52, "itemId": "US8BRPGV9n769zLJ", "quantity": 7}]}, {"condition": "QnKzDgDAtqE3kuyb", "conditionName": "wTQFYEJjIYwqfSRy", "eventName": "8GgVk77fd1GS5Yky", "rewardItems": [{"duration": 14, "itemId": "KsWCPccAFn5CEPoH", "quantity": 10}, {"duration": 30, "itemId": "gsx3ErheNwqd5pri", "quantity": 4}, {"duration": 36, "itemId": "lNNqLyrlzrJ4QHbf", "quantity": 28}]}, {"condition": "z86nc6jLF9DIW2nc", "conditionName": "JJKpqmgvUTr8XAtp", "eventName": "OqUQxzqJZiWi3KQf", "rewardItems": [{"duration": 11, "itemId": "t2t6bVpCgKvPXSDu", "quantity": 10}, {"duration": 7, "itemId": "mKh783cV54JsVBRB", "quantity": 68}, {"duration": 36, "itemId": "zqY3DgykA8zBJX0r", "quantity": 22}]}], "userIdExpression": "X9TPO3K1k5ZM8btm"}' --login_with_auth "Bearer foo"
platform-delete-reward 'GsgXNXbpqxh76Af5' --login_with_auth "Bearer foo"
platform-check-event-condition 'JSwjw2fE2g6jXV7o' --body '{"payload": {"ai2oDm9FaP0HJ98t": {}, "E4UyoQg0b0sGOkzx": {}, "Vt15LKmkQ7YBhsOu": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'J0ypkkt2G4eFh2YN' --body '{"conditionName": "sdoxpLTBM9Q8t829", "userId": "Ido1JyveSRiBq23k"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'yH9jQbHWkcVk0X28' --body '{"active": false, "displayOrder": 92, "endDate": "1989-04-11T00:00:00Z", "ext": {"4vl7gIKBc7OYTylF": {}, "RAJKySnC0cfPl3Z2": {}, "zSBbs4PAV72u8AxE": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 88, "itemCount": 92, "rule": "SEQUENCE"}, "items": [{"id": "y4kyqyKgrtEPdXXl", "sku": "t8geCdiXu3iNvn7v"}, {"id": "LZ7h6alhJNGZF07l", "sku": "sPP5OfHbXzWnVO2U"}, {"id": "4uyzZo1rj0ZrLQjk", "sku": "4VoYfIksth24cZBp"}], "localizations": {"dDFfvzeU5iqhx6zv": {"description": "7EURTNIoG1DBdoKH", "localExt": {"6sREmmfwUZLZZS7s": {}, "nx0Q2Gd8m7Y3wiNl": {}, "oJfey3HXL6SjljNP": {}}, "longDescription": "TXA3qbg55SyienCO", "title": "DZ0mnOpPTVxEgBFz"}, "G8tlkxWKCU1XN4gl": {"description": "7yHvEqpJSrDXVwCk", "localExt": {"hOQ161TFjROYJm75": {}, "VIuCOCkt2W1DfI8Q": {}, "tgODk9K6DcMnyCPn": {}}, "longDescription": "1FylWdaNV1VaZTkb", "title": "buWiiA4UTDgS2SVE"}, "o5M80LLbku9GYH4i": {"description": "jqOVM50tCqkZfsSx", "localExt": {"AbDJ7sHCLup8pmEo": {}, "sOXglQwwdeLVpmXq": {}, "RwVjc3W2ANmE3VVs": {}}, "longDescription": "Q1fm9EUdiaRjuLsK", "title": "ZoqnpKwhpZVdw5UM"}}, "name": "a8ymxtEFLwELCY2v", "rotationType": "NONE", "startDate": "1978-01-31T00:00:00Z", "viewId": "w7MHDwFVKUC2ecnp"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'UDqvLQixPKVSmWa8' --login_with_auth "Bearer foo"
platform-get-section 'TGko16XTqHc0cM7i' --login_with_auth "Bearer foo"
platform-update-section 'xq8Tjnxp5Cl8ggaE' 'mCcuK2hHviBEWpbu' --body '{"active": true, "displayOrder": 95, "endDate": "1992-02-09T00:00:00Z", "ext": {"6EyVqstpgZpbz77y": {}, "88rUFum2ZcA8iKcF": {}, "0bkfjcTEFXcTwEtn": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 26, "itemCount": 84, "rule": "SEQUENCE"}, "items": [{"id": "5pVtN4jNVIdruEA3", "sku": "9uCJzsE8WObt6t0w"}, {"id": "8LOBxE15JYj4IqWK", "sku": "09l4wkrzahXR1sDE"}, {"id": "DVKDINE3HjCiVR1d", "sku": "Q8kuhb4pUwnGptHU"}], "localizations": {"plxzaDa9PDwhu31d": {"description": "8eOdtrfq6ECDD6OG", "localExt": {"kuLs9gNpNon6DKW9": {}, "A6AmnQTNFidImWON": {}, "TvCPMGLdbYEknHPK": {}}, "longDescription": "rZ7TiNBE0HRsE0GH", "title": "DOFjrfqJcyxT2a7f"}, "CFAUzLELiM573Tdt": {"description": "WjfVciuLnLsBKGsA", "localExt": {"LPuCOyphUUAV9570": {}, "8zaP0wpZgQEvFzox": {}, "9wHocX3DRWobEoGr": {}}, "longDescription": "8W97KBedcr6PM51z", "title": "7i0wQ9egK2t46EG8"}, "I2lTviKbOgVuN3nh": {"description": "kn6QIesNoYqvVsak", "localExt": {"ylHikKkpOjqwgKvf": {}, "XXs8pDqm31AZSRku": {}, "w6q8FgqG46RsFK7e": {}}, "longDescription": "YlSU3vYcHZZjFegV", "title": "nZOn0tk4IATSIefc"}}, "name": "qNEn4IZ0Dv6b8Wta", "rotationType": "NONE", "startDate": "1991-06-27T00:00:00Z", "viewId": "HnbX9tC9PQlFAGbM"}' --login_with_auth "Bearer foo"
platform-delete-section 'tEybfcAl0mnsAkRT' '2k0AzdgIunRkTxsG' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "drpNELM8Lfkut0wn", "defaultRegion": "T24wh59RGSbBMh7j", "description": "pszuVk6iPdJ2boQq", "supportedLanguages": ["CCyJfThvCJieqRSG", "N8Mm74HlSZzp4aEW", "4GkHG5OIVuGv47XJ"], "supportedRegions": ["pkMiopQrVL3ZZTVx", "qa9XM2gY14iWk12J", "ffk8dwKNPUOHNZxM"], "title": "L3yoBM9qxd6PWz7s"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'VnMxge2inL8fBFP1' --login_with_auth "Bearer foo"
platform-update-store 'ABaIKrEt8d3o7cTS' --body '{"defaultLanguage": "9OIIMErnNTLXHrsO", "defaultRegion": "FsbhRow4iaYKy0Ij", "description": "sDgbJ37DN2lDvdh7", "supportedLanguages": ["okHl1wMht2Izq7TC", "UJhDsDefAS09VyQB", "1vR1mx6K17GL1CrO"], "supportedRegions": ["4ZuoGZSxTzm8oMSP", "IHPtqzIWIzg8pbjn", "t1iBV8DpbjGts4UZ"], "title": "DTfhAyZKhqilty9N"}' --login_with_auth "Bearer foo"
platform-delete-store 'VlgxUmnfdOAmu1dX' --login_with_auth "Bearer foo"
platform-query-changes '1NqD20RUvvYeJZw6' --login_with_auth "Bearer foo"
platform-publish-all 'QZFN7wFCnqpvNesG' --login_with_auth "Bearer foo"
platform-publish-selected 'iVnt9p2to7Yja1so' --login_with_auth "Bearer foo"
platform-select-all-records 'DE1K0SvGrMYwPmPX' --login_with_auth "Bearer foo"
platform-get-statistic 'C2LfL2m5rP2A20t6' --login_with_auth "Bearer foo"
platform-unselect-all-records 'foPPH94SUinY5diU' --login_with_auth "Bearer foo"
platform-select-record 'lqgvY7dPPyahppgx' 'Jhk4EdTZ000rS925' --login_with_auth "Bearer foo"
platform-unselect-record '94HLvWFsXHtMP0k9' 'L5dREQbCqfh0gpAB' --login_with_auth "Bearer foo"
platform-clone-store 'FBER6WNcDOsRzBkf' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription '9A6HjCnFRdSihcvs' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'zzQLZBktk0siMup0' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale '1kyaFwwD7wecuQb4' --body '{"orderNo": "GNQHVZMKGBnzh4su"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'aGIzttTncVBf5g3o' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'euHiNyLkfPQPmjUk' --body '{"count": 44, "orderNo": "DFLYyNBPlMrkse9S"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'GcMuV5phhU315LUC' --body '{"achievements": [{"id": "6HSMQ32UznXNd6ve", "value": 36}, {"id": "9lqqtcLJW9eTJvKN", "value": 60}, {"id": "Xjaf1f5fjNMZjKJ0", "value": 70}], "steamUserId": "puX3197WrMnJtovS"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'MFw8X4zxbdfXgunt' '1oMNZ68eovHSH3xV' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement '3URIRVDYBd6hMB0l' --body '{"achievements": [{"id": "7sg7IfMH5Tu1ky1Z", "value": 83}, {"id": "vyeHmfoFkUDP864s", "value": 15}, {"id": "bS5UOoICxQMit855", "value": 100}], "serviceConfigId": "Niy4NNFpRE5pS85y", "titleId": "TIRWvLRy58UKWPv3", "xboxUserId": "F7S0wCVlYQi9cfMC"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'eNnu6OIG1PPLRDEX' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'LXZWXvqNCHvNpeMj' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'Mzguq6HFIqaqwH9J' --login_with_auth "Bearer foo"
platform-anonymize-integration '6JLb5f3SBMyJUdwE' --login_with_auth "Bearer foo"
platform-anonymize-order 'BRrHAWUFqTooGGnP' --login_with_auth "Bearer foo"
platform-anonymize-payment 'EgY0t7QQWl42byOw' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'XgKyPhXmcysae8Hp' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'WH4xiz3fWthJSu2p' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'UIIuPLFAtcWhjAP5' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform '7QbWvSSp71zEPPfm' 'XBOX' --login_with_auth "Bearer foo"
platform-get-user-dlc 'lx7b2H2THLwZGikW' --login_with_auth "Bearer foo"
platform-query-user-entitlements '7TFA9gE6SrYKq6lc' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'VOhPJIcEHbiKHW7f' --body '[{"endDate": "1976-08-16T00:00:00Z", "grantedCode": "VolAWEMmQSPDTRqj", "itemId": "lvwnnCA5tfK5usha", "itemNamespace": "KTPVjyOUpR3uUdgN", "language": "wY_XQOT-cJ", "quantity": 83, "region": "6ya8u4sQPvaf1Acw", "source": "GIFT", "startDate": "1985-12-25T00:00:00Z", "storeId": "jlwrmsSRV86iic1F"}, {"endDate": "1988-10-06T00:00:00Z", "grantedCode": "MyF7CcNu2DYn6E9G", "itemId": "k51kOTJZluTekDMC", "itemNamespace": "GUJvERxNg8djSb4V", "language": "AeW-OE", "quantity": 39, "region": "I519Pf2iogwxM5DZ", "source": "GIFT", "startDate": "1971-02-27T00:00:00Z", "storeId": "0YeyNBQWUHDBnBee"}, {"endDate": "1992-03-19T00:00:00Z", "grantedCode": "WUV0WpmsQnp1n4YG", "itemId": "umTKOlDOy5vhSkxE", "itemNamespace": "RZ2AQ1jvXYBar5RM", "language": "PM", "quantity": 87, "region": "Wl0wpj5tVfKU3D8W", "source": "PURCHASE", "startDate": "1992-09-08T00:00:00Z", "storeId": "h0Z7YiGE2cyzTMBY"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id '7Xd0OoENg2Lw7uep' 'mahXojVZYz2zMU9j' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'LzNV3GaG43R6nlRP' 'GAME' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'ka0Pz7I1WkIa0oZ1' 'nXpW1l70pcZgIn4l' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'PghHyMEHBzArbyW1' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku '0NkJFQxuMHnfOlX6' 'HYVEiaereFCPJU2w' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'EzUYUTmZ8JSMeNmR' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'ocp400RZe8Bzx9aG' '["EI22BTCZs97TJI8G", "PrM24F3celFgM62H", "QtgzQhO3nR8j8DlP"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id '6OGbn8vmfMYGLt1A' 'jKhh3JMX7xSrz1EH' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id '6X2SM3xzsNrJzWBc' 'dFlo7oAsOlfLB1J1' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids '9b5rTfiL2P3r1a8K' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'IJH33aKkPuWD59Mg' 'Ty1HA58Jt5NaROjS' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'KFEuZo2ElXYSS4ez' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'BRSiOyReviDaxlPd' 'hwmcH03yoMxzRR6x' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'd9rTh3ureaIbxM3W' 'ev9pZQjWAN0tny16' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'ZHZtuSJGQCrM7JEM' 'RPkdTcAzkIlndN5x' --body '{"endDate": "1973-08-05T00:00:00Z", "nullFieldList": ["ayr3vUKMuIiz2MiA", "AKcvAXnxnH0QIhoJ", "RY807VmBT4wZXQZZ"], "startDate": "1980-08-09T00:00:00Z", "status": "CONSUMED", "useCount": 38}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement '28qCRbwwZc4ZS1NM' 'krnHs1Iyhwqk140M' --body '{"options": ["olIrnlkRVbcX435T", "DYpkk2Gza6DrSyco", "phHw3EoEEClTO9SD"], "requestId": "KnMlnKW9jiNMu9QV", "useCount": 36}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'fhUaZGqjslu59GT2' 'E6AacmZRXZm626PO' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'XWVj3KP1mX0iYHXB' 'U3Uk2tQm307IORTy' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'HnLYDAAg1YA4kZUR' 'moGgxVRMPf8g1rbh' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'fIMStMnSqrKWYOuI' 'TlYS2RYaD9WNKGhb' --login_with_auth "Bearer foo"
platform-revoke-use-count 'Lhjz1v0RBIO2rkJG' 'mPaK6HEVIQJd3930' --body '{"reason": "TGewjRyfo4nWVZZb", "useCount": 75}' --login_with_auth "Bearer foo"
platform-sell-user-entitlement 'syjh6Wc3migf2n6i' 'Qyr5cb5YL6fwBiaV' --body '{"requestId": "Pmmn0T5uzlmi2NY2", "useCount": 69}' --login_with_auth "Bearer foo"
platform-fulfill-item 'xrkPPdg3pXjmtpNf' --body '{"duration": 58, "endDate": "1971-05-28T00:00:00Z", "itemId": "YVD8RiaTsdD4d3kS", "itemSku": "bTkHPMUvOAUXkw36", "language": "cr2WJQqS7Tq4YIyZ", "order": {"currency": {"currencyCode": "AFQ6lZfa2jdNvpWf", "currencySymbol": "32JS1av9VNpVLT0L", "currencyType": "VIRTUAL", "decimals": 89, "namespace": "qcfSdO1nAjY5FvAD"}, "ext": {"b3GUQgci632w6LUr": {}, "HuKBoNTpPQXDNHto": {}, "74GcmVf0fbCU9QdP": {}}, "free": true}, "orderNo": "JNF2hm0TqBQprHn3", "origin": "Playstation", "quantity": 8, "region": "hPKU5abnqw8fFa30", "source": "OTHER", "startDate": "1995-01-05T00:00:00Z", "storeId": "NU8570siWm3V9sir"}' --login_with_auth "Bearer foo"
platform-redeem-code 'E0JOQxWeHypqCWMD' --body '{"code": "PRI2cCk8zHR8VyCC", "language": "fCr-138", "region": "kXbwKDtVmrYQu7hZ"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'vHfiT9s9pK8HuUY1' --body '{"origin": "Xbox", "rewards": [{"currency": {"currencyCode": "QHQ0NCEddJtx6GV0", "namespace": "1vD7lNLxlpvqaB9P"}, "item": {"itemId": "9GaukfCEIeSBLhTf", "itemSku": "zigzHcRuJgYaj4I8", "itemType": "Dzyh1N0JEKNoMtHv"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "fjzknv2HZMIL2P2b", "namespace": "h14LroFTnAuujPeP"}, "item": {"itemId": "9N0vdVB5a2XkS3XQ", "itemSku": "fMuzZh4AhZRe2hgU", "itemType": "56xtyJtnbTDXu7Fb"}, "quantity": 24, "type": "CURRENCY"}, {"currency": {"currencyCode": "w5QwVKWNy2tnF2Mi", "namespace": "fJR4hr4gdJDujYnV"}, "item": {"itemId": "nFK6gB6ZxC6yYUVU", "itemSku": "JYnQ3jOGmROIqxqQ", "itemType": "0gcNeTflyvUh3w5Z"}, "quantity": 40, "type": "ITEM"}], "source": "DLC"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'QZlXuzu3m9u67JjC' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'Dwg186hGWKfO9Mno' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'T3t99HmcxzjDhTrc' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'BKtU956hOg8oukDV' --body '{"itemIdentityType": "ITEM_ID", "language": "XEo_Vvif", "productId": "eZtLQij2JXsqdXfh", "region": "ZTTaCeqGv7meuQhJ", "type": "STEAM"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'bu49lINFTtERAXT2' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'h3hcQ2wV3ZbBTnNQ' --body '{"currencyCode": "nVUhA5WnzVZdj8ts", "currencyNamespace": "yzC4QaLXp3o4TDra", "discountedPrice": 62, "ext": {"4lwXqwPfq3VzHQjt": {}, "olx64w1gyvjacKtG": {}, "qxMnoAXRlcq0mYWK": {}}, "itemId": "QYlqMmu2pvF6rP03", "language": "bQaq1cT88H6RCW8g", "options": {"skipPriceValidation": true}, "platform": "Nintendo", "price": 66, "quantity": 44, "region": "zDlqxtLsR2AGOiPh", "returnUrl": "Nt2IdH8aYYUT6mma", "sandbox": false, "sectionId": "TDzk66ix88sAUrXr"}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item '7MXxCvyy7caxz4MQ' 'rODLNlxiEjQBCZx9' --login_with_auth "Bearer foo"
platform-get-user-order 'DJ4V97SJLlrwXmIG' 'amRCARuFLx4rV4CX' --login_with_auth "Bearer foo"
platform-update-user-order-status 'VMrDYKe2eTf1axo1' '6GqT2vSLLiMvcu39' --body '{"status": "CLOSED", "statusReason": "ZJypWzpNXgnoKIz8"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'O8NglJtZTh280vfl' 'FMxIhlIT8AgyZJ16' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'MMd2bzOrTn2huwPg' 'yUzBUWiKoNGtvyk5' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'xEfrJDxKsw5Xl7ZZ' 'rDZdbuvCFBaVcohe' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'wKkVuGv9fQXkErF0' 'drbYrrFQP6rW62Ct' --body '{"additionalData": {"cardSummary": "etBW3pvAJJieHhve"}, "authorisedTime": "1987-02-28T00:00:00Z", "chargebackReversedTime": "1974-08-01T00:00:00Z", "chargebackTime": "1996-08-24T00:00:00Z", "chargedTime": "1992-06-23T00:00:00Z", "createdTime": "1997-06-05T00:00:00Z", "currency": {"currencyCode": "AtBjP4HSuiYCbG0U", "currencySymbol": "yYUJmNL8p6AbdtU0", "currencyType": "VIRTUAL", "decimals": 8, "namespace": "DrlQpKB8qoel2QK3"}, "customParameters": {"aSOYdmMDikc3Fjm9": {}, "HoQDemtiQvURYZCe": {}, "F30RT9rBgM8o7lxX": {}}, "extOrderNo": "q7TkdM7FVDCBcvVe", "extTxId": "grZddP8lLQo6tHj4", "extUserId": "z4cAM4LMJfWNZIxA", "issuedAt": "1974-05-22T00:00:00Z", "metadata": {"BpeubprKX68jTyRd": "3LrR1x6U1v6zSLjm", "9zmzUW0vPj90jmLT": "t5YQGawcomPoiYoQ", "1f1AYq306Pysv4VP": "aZWolXypwucUqqqf"}, "namespace": "f2iWi4yP3uqNcig6", "nonceStr": "YcDA8Z3g62oGYwkr", "paymentMethod": "jLI4EHJEEWgki9fb", "paymentMethodFee": 7, "paymentOrderNo": "a8DdjtZhh6ofsUoR", "paymentProvider": "ALIPAY", "paymentProviderFee": 32, "paymentStationUrl": "6r0e0J6vyqPw7Ylm", "price": 98, "refundedTime": "1986-04-02T00:00:00Z", "salesTax": 21, "sandbox": true, "sku": "ES0Hi88UYgSV40Ov", "status": "AUTHORISED", "statusReason": "QsQk100eu5UcxuXX", "subscriptionId": "pt0YSPX04uEIdAwg", "subtotalPrice": 60, "targetNamespace": "Mz9dddLWJWDuSYtC", "targetUserId": "aIv4Lp91wYUJPbvz", "tax": 27, "totalPrice": 77, "totalTax": 93, "txEndTime": "1973-04-29T00:00:00Z", "type": "neohqhCzroAzWQDv", "userId": "e0Z2G2N09VIbbsz2", "vat": 10}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'fQKDZX6plErw0Gb0' 'ceCbphW4YMhJ0S50' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'bez9ZLHW882riiPf' --body '{"currencyCode": "RQ3rJ0f5lwXvRNDB", "currencyNamespace": "nmL1KQn77hiP1lzk", "customParameters": {"zjYDw6mLBordrJkD": {}, "6vy60uRMT1Xw9K9Y": {}, "b68a8ygYx2Tqkhlq": {}}, "description": "MnE9Wj90EQzOidrW", "extOrderNo": "nLrXqImgDf3GaJsd", "extUserId": "CZND0wgYOilX1e18", "itemType": "SEASON", "language": "Im-jO", "metadata": {"wlokbAFW8RgBUwBL": "28BqM8UzvKqeoTiN", "KGRUMrimGAz6OhmH": "OpCdr3WzDm3hJdd6", "uaO9TiTPnIh2iaIB": "pYC4txul6VKYlNYY"}, "notifyUrl": "lHPwKDpJmkeoAkp3", "omitNotification": false, "platform": "pgyJYwclb4gd4QgQ", "price": 42, "recurringPaymentOrderNo": "ECsypS42NmYQ8HlH", "region": "bHnfs4tLVOYQCWMk", "returnUrl": "tmiKd9vLPP0w52JR", "sandbox": true, "sku": "CFqPNDqWrpkWnnov", "subscriptionId": "a15WVuE5cYVP9tQS", "title": "a27BnPyq3I1BLtGE"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'ZDRNkk4DJUofJXK8' 'RGS0zCYRVmbfzwUm' --body '{"description": "sy0stUmKdXiiTObN"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'dqkWa13g3pgHx6uP' --body '{"code": "f6jQZcYerH933X7i", "orderNo": "XEEM2KOusNEHcI95"}' --login_with_auth "Bearer foo"
platform-do-revocation 'GGdJvucDbs6Udccu' --body '{"meta": {"M2ykRj3WnyAaUaQB": {}, "KFedL2uduXvZUbQQ": {}, "13FhD3NExUFipJsU": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "DnHTlRugM7a2UZge", "namespace": "esipbP027okM5E8t"}, "entitlement": {"entitlementId": "AajVSvLRj306RDua"}, "item": {"itemIdentity": "SixXEdloYZBkatNL", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 27, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "ac75C6S2eHsH4Y84", "namespace": "hL75QboMHCtzEF9F"}, "entitlement": {"entitlementId": "Seg6WYgtfuqJHrs4"}, "item": {"itemIdentity": "e3RnWR30MdBZezfw", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 69, "type": "ITEM"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "ZAtyjTxnlmSyjEaF", "namespace": "H2DRN6HIEqIFEcS0"}, "entitlement": {"entitlementId": "ynIMOYWpUYUQMooi"}, "item": {"itemIdentity": "KT57rmbjEnimeR7E", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 52, "type": "ITEM"}], "source": "ORDER", "transactionId": "3E9FkOPVu2fDtOjW"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions '1iSYQbcebBd5wb5H' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities '3qppoCiHMD4iBK2O' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '7qYtOHV5hnpjc5CN' --body '{"grantDays": 77, "itemId": "NJpxFY8E6pU8eHjh", "language": "0aTjIOaQt0snbE0y", "reason": "MvqF7TJ9uB0zypjJ", "region": "iu7BIimNuwB3hBVh", "source": "uSMHhf5R2MkxQTAY"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'GfE6hXZ7XLoWCGf0' 'dZEeXBd6mGG6SHcZ' --login_with_auth "Bearer foo"
platform-get-user-subscription 'bX2wNnT6A9zosmDn' 'Xoncy7NZQ4PkAPXB' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'CfkE1Fb0y94eP7yh' '0zsKhR60HZwUwk48' --login_with_auth "Bearer foo"
platform-cancel-subscription 'XK7MXHbEwAvvpEeH' 'hXiJcJqYSxVKUYMi' --body '{"immediate": false, "reason": "usPn4466u8agb5HP"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'sBU0Eo6QJ9vBRJ4U' 'P09fabC01Thm9f4A' --body '{"grantDays": 97, "reason": "pyiKVT3OvEujx5yj"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'tQSCJaOHzpb623Ec' 'iYoYOPVg6DLEZ6Dx' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'pwBm2N8PdQ5mQaGX' 'EbnmWR0H3EkrHqaL' --body '{"additionalData": {"cardSummary": "NdfKszYZzOg113h6"}, "authorisedTime": "1973-01-22T00:00:00Z", "chargebackReversedTime": "1988-04-08T00:00:00Z", "chargebackTime": "1971-12-04T00:00:00Z", "chargedTime": "1988-04-10T00:00:00Z", "createdTime": "1993-07-08T00:00:00Z", "currency": {"currencyCode": "sqdIWU6ERylESgf5", "currencySymbol": "dXMrPoYSohfrLyXM", "currencyType": "VIRTUAL", "decimals": 76, "namespace": "C62xYtDwflNGfufW"}, "customParameters": {"5cWeg6eSCypsceIT": {}, "TkJGGCVF6LrILDLv": {}, "iUCzmDAaW5xz1c7Z": {}}, "extOrderNo": "uZXUCBYnkY0LEBSY", "extTxId": "BdUSiTOrhB8hVs29", "extUserId": "WOKmZRTtgycLzXz6", "issuedAt": "1976-06-23T00:00:00Z", "metadata": {"UMKi5mweMEZo2ZnL": "1Zg2JfH4f73jAevO", "nES6YJLlb2AfUEEB": "bqMMKvkOsR1fHUyi", "rMVMOFES2J2OzNlJ": "E3uqZz574g31cA0P"}, "namespace": "wZxTIZVSGQyTzhs9", "nonceStr": "Asy4d629N4YnolVW", "paymentMethod": "A2dWxBs056jkPCUu", "paymentMethodFee": 62, "paymentOrderNo": "CiZAZHCWMXxVh8HT", "paymentProvider": "STRIPE", "paymentProviderFee": 59, "paymentStationUrl": "KqVwnpPn8N5xMRgU", "price": 5, "refundedTime": "1993-11-30T00:00:00Z", "salesTax": 8, "sandbox": true, "sku": "5IM1akNKz9IltQUk", "status": "CHARGE_FAILED", "statusReason": "vTzMTMSwrNov2GW9", "subscriptionId": "i54JY23AUWFTLq0W", "subtotalPrice": 45, "targetNamespace": "JqwKs1mO80L7IOHl", "targetUserId": "f6j8PZOzUiQKZqz5", "tax": 80, "totalPrice": 86, "totalTax": 91, "txEndTime": "1971-05-09T00:00:00Z", "type": "n7lttd21cS6IVE4f", "userId": "zwG3BHaRcZ8NK4gk", "vat": 76}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'OW0guPoQbYzc1RDV' 'hs2lhdzxxgibuqUu' --body '{"count": 50, "orderNo": "JMjIyGfiNBQy41M1"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'gzGCbaxw33rNbE4b' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'bDU4FMTbQaANJOOD' 'GerDCWcl3VSJENQo' --body '{"allowOverdraft": false, "amount": 2, "balanceOrigin": "GooglePlay", "reason": "qMFlgHKQIRtLfPng"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'D83roOeqE7fcCAeE' 'xeQX43LpmdMiZeyI' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'rA4QUKSJgECzvaWU' 'CA7wKru7ry3AQ2sE' --body '{"amount": 69, "expireAt": "1997-06-20T00:00:00Z", "origin": "Twitch", "reason": "SxjWoM1rNJLM0OOV", "source": "REFERRAL_BONUS"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet '8mEVCXHmFnrSL0PJ' 'cZQaCeNLYxMID9pq' --body '{"amount": 65, "walletPlatform": "Other"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'D8tJQwZvUVInos5R' --body '{"displayOrder": 74, "localizations": {"quioT3QBt29AiRAS": {"description": "suFM4ahGw7XcF1Qw", "localExt": {"zz606UGXPhoNZlXM": {}, "ef7AvS3TfKx6ByTy": {}, "gbtOtcQS4Cmgw1wR": {}}, "longDescription": "UnIVYxY6OhdkrYiC", "title": "inoVOzo4Plv1IlTp"}, "EhjTFYdzsUNvQAn2": {"description": "LuMjLqwmVz3zKsfj", "localExt": {"z1mFkyxoUzfMFoXC": {}, "OguSq2A4R3wDdSkN": {}, "fHJtA3QiX9Zvtydb": {}}, "longDescription": "aVb0scd97A0GP6dj", "title": "n2Ps3IVT5hUZ3cnD"}, "q0ddZG0EpfGAqHKc": {"description": "SxUc2YgRpk2IFGIg", "localExt": {"IpscUpVAciu2XPPU": {}, "xzXHUvxhvTZcvRKo": {}, "aM4ozSAg8FTLrByW": {}}, "longDescription": "OJhbocoGlPzdfxcC", "title": "3rpWhSpq0InxMLpP"}}, "name": "7n7M3JXjEvsj5WcQ"}' --login_with_auth "Bearer foo"
platform-get-view '99M1yuXeqV31LX2e' --login_with_auth "Bearer foo"
platform-update-view 'hcMnM6QtjzQjDlUM' 'CGnxZwak7KHnzGAS' --body '{"displayOrder": 26, "localizations": {"2vXtUnY6UhDJ4pe0": {"description": "s0Cuhl3dU9b4seYC", "localExt": {"yiB4tDCWx3cEX8wT": {}, "i1v2abpCWytPEi9Z": {}, "e0hL9rPkV5GkSrcl": {}}, "longDescription": "2O47XVzU7qlNVk7q", "title": "nmBS3XKDhp1OkMcE"}, "rmeH0lX1hj0LaXgQ": {"description": "94flh775AQfzNjQ7", "localExt": {"IuMSY2epRDJjDyMD": {}, "KQhuTjtQZyIiAmCL": {}, "8bNTTfqLCv9DYBOP": {}}, "longDescription": "roN4UWbQaKFrTv4J", "title": "WElmOCxqPrq9I3XJ"}, "WBxTLcOef8MgIwkr": {"description": "KFEtwESJCe2ksG3n", "localExt": {"ZE13H2fILFzOlAZb": {}, "DQAEJLbVWH2XLIg3": {}, "MgmdSvWp3h0xPsVY": {}}, "longDescription": "8qNwB2TY4v9NNfQS", "title": "YLFKSl3FNFFJnt3r"}}, "name": "IwZdW02Su6aCnL81"}' --login_with_auth "Bearer foo"
platform-delete-view '6aH6gOBUIMeL0GL3' 'aefSDME8X2MxILI4' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 61, "expireAt": "1984-11-21T00:00:00Z", "origin": "Xbox", "reason": "XGlGJvHf558h1lty", "source": "DLC"}, "currencyCode": "tjsu6ZJRCoDq3geu", "userIds": ["31pdDrXQ47WSGyDC", "gaQ4Bn0cPPtKaJlw", "HFFaZzPIjETqcKN1"]}, {"creditRequest": {"amount": 76, "expireAt": "1978-09-14T00:00:00Z", "origin": "Playstation", "reason": "LLhO3lGZ7eGOPj2X", "source": "IAP"}, "currencyCode": "luOIjZyvlGDQGv6p", "userIds": ["Yvvlt1es7A4PFduN", "4gx0UC6eWKCFGS97", "NNowEuVVZM28w4mn"]}, {"creditRequest": {"amount": 91, "expireAt": "1974-03-12T00:00:00Z", "origin": "GooglePlay", "reason": "6XyLVPrkUxyZ1OH5", "source": "REWARD"}, "currencyCode": "0adnimPyyzezsHdF", "userIds": ["7DWfGRVhbZTvCPrr", "ZCTU5WUJizF69PSs", "ftHHR6xbcVVonwz2"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "quWUafwbFPX15633", "request": {"allowOverdraft": true, "amount": 68, "balanceOrigin": "Twitch", "reason": "cP1eE6sjWQllYsON"}, "userIds": ["9D1MMoaf6KlgRtwa", "M2IoyY1wpIdjcAtT", "pp6QGW56CNiszHE6"]}, {"currencyCode": "j1IMuuhxxlulfmya", "request": {"allowOverdraft": true, "amount": 15, "balanceOrigin": "Nintendo", "reason": "X0a8Ri85PA9wNpmr"}, "userIds": ["GYx2ihgioL8VvEzH", "K5Y5heA2ewWnFcqH", "xXP3kRhtrBcBofWT"]}, {"currencyCode": "GTt9emdCLmzJbdky", "request": {"allowOverdraft": false, "amount": 98, "balanceOrigin": "Steam", "reason": "gKagTzdcYcko7U3g"}, "userIds": ["Vb6VgA5yFIH3s9Uy", "eaFi8OE7BCK4FeVG", "H239LhRx2Laa2Rdt"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'rl5NpUG9zblWEiHa' 'UjyTHb0sSlstb3sl' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["Ue94NxhXsVcqTYi1", "TMBMzaOrxuKvtUVt", "qbDWnJ2i9TRmJOqI"], "apiKey": "l7U12hO5vpk9DOSg", "authoriseAsCapture": false, "blockedPaymentMethods": ["5M88TKhFYkA9aRND", "e2IoPMSQKcg0OTT9", "JA0ll1RimBCiQwuy"], "clientKey": "rI87uSyXP6C0jXS8", "dropInSettings": "au2wcWYyj3JvHqXp", "liveEndpointUrlPrefix": "4JR7xI59Z9tfGVsg", "merchantAccount": "lnOxOXBfgBLuglkd", "notificationHmacKey": "9LIoshGnFSuHmrqe", "notificationPassword": "j8PRppYY1vlV0M2g", "notificationUsername": "6oreqyBzWzCgMMWZ", "returnUrl": "uD6tmIR28xVxbtpS", "settings": "KOfiIP3S6pypZqIS"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "n3msrykQFtW8QGKF", "privateKey": "ZLrIfqrZuu7IwKcT", "publicKey": "7sAsv2TKCbYMVkXE", "returnUrl": "HmsHwIGGsusS0zZR"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "ODEKPdudZsLaf8aZ", "secretKey": "rXW84dt0TSTmy7XF"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "26K2U7xttUz8nWKJ", "clientSecret": "jv06PuffHghAQfAs", "returnUrl": "YXVzBenLtaAoYyRf", "webHookId": "iCWrm3s1Ah3TII70"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["MIcBMJ04508jKedx", "0CVRpd7SwZw2UkjD", "zJ4NuMMgI13nplXa"], "publishableKey": "UQV5QEvKElLfbB7g", "secretKey": "wwAR1xFrnyirw3iJ", "webhookSecret": "t5iA3JS2xeaJ08Jr"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "SHPqdhKHn6ZjZMdr", "key": "1C2TIQzRJY7UfYSr", "mchid": "dN0JVz4U43EcV1FR", "returnUrl": "yeeqehMNeRYKeMbL"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "0G4v5D6ylZguO918", "flowCompletionUrl": "X7rLoexHBMBMMAYo", "merchantId": 21, "projectId": 92, "projectSecretKey": "SQAfYIyzHL8jxaku"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'Vu5r5B08VZxI4TU3' --login_with_auth "Bearer foo"
platform-update-adyen-config 'apnZXoJ4gI4EQKO8' --body '{"allowedPaymentMethods": ["xC4D0FsUo3IB2kX5", "REQZsHyXzoIXNf0K", "bL9HyJttdgfLGO3u"], "apiKey": "mmpllnV6B62P1Kaz", "authoriseAsCapture": false, "blockedPaymentMethods": ["O55hVjfWyK02w5Qy", "tAmkanukAzAMaRvI", "UhUwguGgbLLN3O7C"], "clientKey": "EYjxqElP5lA2FJ0i", "dropInSettings": "GLRTXGsC5mxxse4e", "liveEndpointUrlPrefix": "euMgEctVEux2MSuw", "merchantAccount": "sEHlwdeJyhsHS6Yq", "notificationHmacKey": "PudWviQsULL1txfX", "notificationPassword": "9tqFSkGXoIcFN5JL", "notificationUsername": "9M53Mg0MzWS9usxx", "returnUrl": "nMhjv66DyED4prRV", "settings": "ibTATxd7Mzjv1gSj"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id '8kcNhoqcRZRNAToj' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'M7daV0VwR3yNKDtM' --body '{"appId": "qMrAGpdyF6WDHn3e", "privateKey": "PBxQNz2IUEHMzl5j", "publicKey": "hwVDsuzwJ4v50eoa", "returnUrl": "IBrTh0EKkJioUpvG"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'nkcHgCfaWzPUvCnf' --login_with_auth "Bearer foo"
platform-update-checkout-config 'qsPGgJZyRwigaMu0' --body '{"publicKey": "7Zek8WObpf0FHYfV", "secretKey": "iEj70KYKIfFt4GYj"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'Ut4F1ZVy2qFfSr3p' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'sWjOyHLyKe2foqsV' --body '{"clientID": "IfgBTr8RcxRQR0NY", "clientSecret": "dJzf3TMhSaynVs05", "returnUrl": "nZC4Os7hqIH2NgAR", "webHookId": "SG3QQNGNH2K0UuJd"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'eGNquQnaXpDQ5rU2' --login_with_auth "Bearer foo"
platform-update-stripe-config 'taDWh9JV5oc5IFQs' --body '{"allowedPaymentMethodTypes": ["rwHqFqwVA5mozeeO", "jIFQfXV3YW3ug3nC", "XhD7FUz1iOe0pHa0"], "publishableKey": "LmseIRXeoerZAxbD", "secretKey": "PXU5xJBhIpJ9b0Ap", "webhookSecret": "7CmSiKPjcwAw5Gdx"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'pvLfa4b4hTaZBGdX' --login_with_auth "Bearer foo"
platform-update-wx-pay-config '66DqPTdurR3MYda0' --body '{"appId": "Y0BCO4qPnvxERWjK", "key": "asq5zQ6uZNwKjnX7", "mchid": "vDIqpcjmaq5KBCsH", "returnUrl": "lwNrfKJrkzwR40tf"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'd9GFXChtxB10d4Q8' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'nlBthUSu4WNfTvD5' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'UcES1eLMZs9lSQVD' --body '{"apiKey": "p16qVIqXCK9dS5JT", "flowCompletionUrl": "bdJEe6mnkYAfw61k", "merchantId": 49, "projectId": 75, "projectSecretKey": "Kk0UXUF2523OTvOm"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'fVNJNDaSO3FEkk4I' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 't6V8Bu7rIjGrxUMK' --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "ADYEN", "namespace": "ixUuUhopdqGrqRZ1", "region": "24P7PauXTrpWAjwa", "sandboxTaxJarApiToken": "tSvtPbAFn8oWQcmF", "specials": ["CHECKOUT", "CHECKOUT", "XSOLLA"], "taxJarApiToken": "RX6EqadAEIzxld80", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'ss7hc3VUxxZIgkTL' --body '{"aggregate": "XSOLLA", "namespace": "F6hMYfksp8VQhYSF", "region": "eBOp0ilGQFwHUtZu", "sandboxTaxJarApiToken": "gblT3aIDKn9qJXnc", "specials": ["PAYPAL", "CHECKOUT", "ALIPAY"], "taxJarApiToken": "jZcTK8zmMfyshYk3", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config '5cAFVo85r1b8Yp2Q' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "nuhQuIdvZdj6AspW", "taxJarApiToken": "BfRnLcLbp7OmcrDJ", "taxJarEnabled": true, "taxJarProductCodesMapping": {"FtQMu41rnOzbsFBq": "g6dziWvdNcwfUBMd", "NuTaiLxFMXRpDP9x": "utntU8xHw4yYJOCV", "iHwunQwpC2eCFUAH": "ZaYSvsWiNJtqXltZ"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'F6aSRmHU5iR3hXIb' 'zWPKOkzftOgDQAWh' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'ulbrDf7q4cAnpmLi' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'Eu4CNtX2lnqi7cHT' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'SdGoLZbC3UJruU4u' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'IXBZsEYogFWiH9z4' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'E8zmaZ5cg0REtUWY' --login_with_auth "Bearer foo"
platform-public-bulk-get-items '4fVIdqwCWF5wmbOu' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["bTxAAeDCowR3MeCN", "L1oNrF3SmgudQusJ", "LsPlW7ZyORFkN9Eb"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'KbTbrDzNgVEcw0lx' 'Ram16O6v4VjJf40L' --login_with_auth "Bearer foo"
platform-public-get-app 'jUdORELVXUFQyVlt' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data '9jmxmxpfp41k1uDg' --login_with_auth "Bearer foo"
platform-public-get-item '59PhdUXShabwyYCx' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "THrDel8oThvr8CUE", "paymentProvider": "WXPAY", "returnUrl": "1WKSmLoA0ILaESC1", "ui": "GJXsoBwqh0TQXa2j", "zipCode": "7v3zQJoQLTAlW75i"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'cIKUpXazsFrmaGNo' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'i3RPTgWotLNz0u8y' --login_with_auth "Bearer foo"
platform-pay 'SxA0yrjz4q7e0EJn' --body '{"token": "ADXC2y0DY1E1SMK9"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'oA4vK56dsYI5SKV5' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'STRIPE' 'U2sKjIeyFS97dYD7' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'LkcTKYpCfl6HPy5c' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'JfAV5iOfzwt3bpxR' 'Nt6lKoMjCPtEKeBW' 'PAYPAL' 'XdPYZQxBnttu4yW5' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'etl4Xk8Hd1lRtoPM' 'WALLET' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'ApTcWsFRUlWBp4gB' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 's9UufgsVbG6TUe3j' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'buQ7HMPO4ozK705y' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'kRqSPYZgPm4JLsXV' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'tBOEetHsxAJ8Ny1L' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "RkPU9hrl5nkpEdBe", "language": "BXXx_PyLB", "region": "OHKtUv4lTkQNjxhX"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'dj1CG0EBgst9Qu8O' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'fl2oB8VTjF0pD3NH' --body '{"epicGamesJwtToken": "U8iYUOtG5gbQSKW2"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'MdgCH4bWxRF6fBPa' --body '{"serviceLabel": 80}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'GOuV5z0p8jaJs2du' --body '{"serviceLabels": [88, 98, 34]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'i8fqVPRqNbF5yLnY' --body '{"appId": "Sa8xFLvcYexMMMiD", "steamId": "Fh5RbW021cHN3Qbz"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'VuJZH3k54cExxWKt' --body '{"xstsToken": "dGTW4FILotv5ycTa"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements '0i6ifYP1zfgjsy3V' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'RjX4qA4g9OGoWw1q' 'nCAvdnAcokJ0rzqX' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type '2KJcYHgiFDxclBXa' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'btk3mAO4EtB0hn2x' '1oTOX5gBQlVDx9ne' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'FHWhDRJtyYEt7ygZ' 'leAoUuVKneoO10yt' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'PdJ8SY3qoogOxoPY' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'vdIBJYyGURjEjnsl' 'EYM8ngVT1ewVxvgA' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'ocOqsd5v5n7eXCo9' 'gZWdxfIdW8fNAM5Y' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'dHivK2Q0WwolQy03' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku '7hJMOEv5W0v25yAO' 'bZIbrA8XAKKWMDeb' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'ehSjpt0wrfWPXaI1' 'Jb75o2MFOa6xgPt6' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '9QROGDeJCyHvUsnL' 'vXCSgQHvs25eiQO3' --body '{"options": ["oWdgXdm1IxL1Otle", "UBqBO0Ze049k9W6Z", "LVJzRpUsITfVruDu"], "requestId": "kun42zPZvOd4yZyM", "useCount": 75}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement '3cauhrw9Yn2z5cnb' 'm7z2Aa24yBTw3wfN' --body '{"requestId": "GyWf3VujS7Bq5bcf", "useCount": 84}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'MfYFlt3JvDgMiyBG' --body '{"code": "ygWFTAY3Th5mOwPC", "language": "ElXw_hqFy", "region": "Blu2ZP0IkiYXGk6B"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'oBmSLi0R7zDFMoNT' --body '{"excludeOldTransactions": false, "language": "Kt_inTL", "productId": "8UjprhCxhzW6ZM7L", "receiptData": "kTVrtVJZVhxCVdjP", "region": "utJ8dkAVOJ5imghd", "transactionId": "fVhjnjd66A1SQmWG"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'SQLAVPAJ7zX5lB80' --body '{"epicGamesJwtToken": "k2smdkBS2MaIP7Pj"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'ngEFggq91cpgvoDB' --body '{"autoAck": false, "language": "FZ-Whxo-555", "orderId": "vlzGCII156hIg0g8", "packageName": "HIxpzm9AcFhH4ZlY", "productId": "Y3rEuHMWwQNmCQmG", "purchaseTime": 57, "purchaseToken": "1qdRcJjsme1OukIf", "region": "IZVH8q8svV5hMOSf"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'pyJkJlmJmTkFvB7w' --body '{"currencyCode": "kY6nuUEGJ3k0HGtp", "price": 0.5916018505379083, "productId": "43uORGREOOwTuY8d", "serviceLabel": 15}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels '3TxWXSdTiKdva2UR' --body '{"currencyCode": "EoBSFtCLy2CqgCG7", "price": 0.5758100657779791, "productId": "wJCDqkzOdFwLJpIP", "serviceLabels": [48, 51, 36]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'VcC2g6t42jE1Wad2' --body '{"appId": "32YV7A2zHFGbN8AQ", "currencyCode": "aCaw9UF7cdSDd99D", "language": "IqaW", "price": 0.21689028097870944, "productId": "WIhFrqSn4erXEtU1", "region": "CaD8AqsMCGBNhmUt", "steamId": "6fzYRn85brTu8F7c"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 'uCPh1TGZJmgWNHWn' --body '{"gameId": "vOBRCt4onqRo2PnM", "language": "SsfA_036", "region": "OAcUwYHGmG5rNDBF"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory '1oU37vjfyX5YLaM0' --body '{"currencyCode": "wmi0i1WABBbq8IzZ", "price": 0.2999703998818529, "productId": "MFLX9ZhFXcFtfBS3", "xstsToken": "ZIHofhwyM6Bw2sFG"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'Q5DQoDwzrKPOZZnV' --login_with_auth "Bearer foo"
platform-public-create-user-order '3zR7YxSu6addocg1' --body '{"currencyCode": "0Hy9jx7gBHTOHHAr", "discountedPrice": 19, "ext": {"c5kNwJAxm0Rdm9l6": {}, "nIhG5SilDDIsmj4h": {}, "625dIsMKWBxF9RAI": {}}, "itemId": "rI81ZR2kNzh60RQN", "language": "Rv-Mnkz", "price": 67, "quantity": 31, "region": "6AUjBCdf0Rp5e5Iv", "returnUrl": "FuN1oUsCnBmGMx5F", "sectionId": "6EhM3dKvIG9MR0hT"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'INvq1VR9SJUfQEX9' '96Mh1sQ3Dw3uyjgQ' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'NAs9188Qm3W1De2M' 'cGd10wefF0CJlH55' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'RLEgeAsSpQdcmGHZ' 'uRVQ8tzwqMayP8A3' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'HGNI3BfjkFd6MHo6' 'gGQ5mChYoKD7yqCR' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts '03RovQZhwfjkq9iy' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'TbyD3D01tRpuuyIa' 'card' 'FWFzuLBdlrKjUbgZ' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'Qfw6Zys3mN8fIcC9' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'CkharfqaoMsGyv1R' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'uSNdycDssUeHiVDX' --body '{"currencyCode": "zSJ8kbFAyidbnXdM", "itemId": "SwmkBkKC1h6h45u0", "language": "xVH", "region": "jIxVGpdOqguxvRwI", "returnUrl": "9ZBTipMRlhK9DMMa", "source": "I4ryVDvNaruZxwTf"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'h9gEs6GF247cbBLj' 'Ur5z03wxB3E9hrE9' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'f9COFrOr6wJDBwID' 'sJHNg6TvNGjwI4Tb' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'TwBufUorJouduhCE' 'J5XiKDIE9YugcupL' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'xVBcRkfhRuqkOTHS' 'ia7oFd1fEmDuyAsQ' --body '{"immediate": true, "reason": "zwJR5poI718RQnj4"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'imu6XFfRcWDXhq1Y' 'mGeygr2S4Yw8NmPa' --login_with_auth "Bearer foo"
platform-public-list-views 'BeryzX2hOPVVFqVq' --login_with_auth "Bearer foo"
platform-public-get-wallet 'xjq1iG3TySOh8SI7' '5oXbyq8FBbur80Qw' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'nlgAVfqz6gQJh8sn' '0bVWRkvmAemh8lio' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'BR7xTXcEIFod3lCz' --body '{"itemIds": ["vjHzDHOrSJ1vbB7L", "RHd96dGLgkfrZveF", "MWAFT7l0l1jaOAMC"]}' --login_with_auth "Bearer foo"
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
echo "1..396"

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
    --body '{"context": {"item": {"appId": "zbsoIgmKwwMDQPjU", "appType": "GAME", "baseAppId": "osq1l6xo0D4JRbNq", "boothName": "O6IuP2PY5hhX6uNa", "boundItemIds": ["h9JoHPj7jFWxSv1l", "YylYAiZ8c7Zd7EUo", "ezOLw8C1c5bBB3XZ"], "categoryPath": "7ColKwlsNvtFuunQ", "clazz": "svdXGlD40xxIyVwY", "createdAt": "1976-03-23T00:00:00Z", "description": "n6dlC9Kfh9gHuloy", "displayOrder": 4, "entitlementType": "DURABLE", "ext": {"e0cLJu4ljPWlCWTu": {}, "GO8MnfOQu3wdT4Ao": {}, "dp95o1RkX7iW7VpC": {}}, "features": ["NhNCyscsMBRLsWad", "QqjyzUZR2rFIAuAL", "ngWAv5DAG8dPdkKg"], "fresh": false, "images": [{"as": "6jOflFJlZEhz1QDe", "caption": "h05hj92bwVVxJ62Q", "height": 87, "imageUrl": "AOAOyL65cPaOZA8B", "smallImageUrl": "G8KcVWOX9n3YsjJe", "width": 47}, {"as": "UByHBzfvgtRTPPzw", "caption": "JmKaLCx3gcidEALW", "height": 9, "imageUrl": "XctihtxMnIr4b7jy", "smallImageUrl": "fL3zMkklGCPISlsn", "width": 98}, {"as": "dUwWHhQW3I1y9tjR", "caption": "LVOXBMa0JiIe1AY0", "height": 40, "imageUrl": "mxDfAxNqCUtizYM9", "smallImageUrl": "7ebZcYqwfIHPWMkO", "width": 26}], "itemId": "6AyUX8w77riPlPgJ", "itemIds": ["cLbeQf9MICxX7xKy", "CfgwSPz14asyOdgn", "77gN8K1FlNkgbFE8"], "itemQty": {"U4meK5grmPBsFH71": 98, "6Alt08rrnG8y2ScX": 21, "rHTkJT1VkChD3n0c": 78}, "itemType": "EXTENSION", "language": "zHpMS53jllopwirR", "listable": false, "localExt": {"ck8NFKPgT6LMehg0": {}, "47axU5ktNywRIvO2": {}, "Sgz30hejqdktHIO1": {}}, "longDescription": "VdtMSews1TrU4FhA", "lootBoxConfig": {"rewardCount": 12, "rewards": [{"lootBoxItems": [{"count": 78, "itemId": "KDcDG5bMTba1tUlF", "itemSku": "GcP6eL7EpWtPifmO", "itemType": "0JK4dP1aZFiSkmhw"}, {"count": 98, "itemId": "7GbG1ISBCkcnpxKU", "itemSku": "xLjmxhBS6YypRW7f", "itemType": "NntaIEtDI6MbhxkQ"}, {"count": 7, "itemId": "nTbtjK9RsyoqT3ad", "itemSku": "B48Jxp2zaItg9jTN", "itemType": "ZvpFEUI21aSaIsMy"}], "name": "LKPPIZx0zdNAagip", "odds": 0.8276807228093874, "type": "REWARD", "weight": 94}, {"lootBoxItems": [{"count": 18, "itemId": "N1qyxpUzWIZWJTDz", "itemSku": "Wguhujw1EoR58uCV", "itemType": "ldefonHJZAiX4abm"}, {"count": 33, "itemId": "e36SA5dxATLv5PkL", "itemSku": "vraRzChdjDGdlk2A", "itemType": "2jHbAPNGInvbnf4e"}, {"count": 47, "itemId": "p9avUr6IydpXW0MO", "itemSku": "0eT9okl6MlWOl9fe", "itemType": "WO2bmOikTBJHTEm5"}], "name": "PSeyod5L6OooYoQn", "odds": 0.9934473347316038, "type": "PROBABILITY_GROUP", "weight": 25}, {"lootBoxItems": [{"count": 70, "itemId": "y7j2BrdCAm3slCwa", "itemSku": "BqHpE55sjxBGijw0", "itemType": "dQtZNonMrPkzUe9S"}, {"count": 13, "itemId": "cAUlkUSZKUrsxNRz", "itemSku": "F3NaUuCyQyze6zPK", "itemType": "u5sE89JW8UU0RsB6"}, {"count": 8, "itemId": "TR7LxihuOn57io0d", "itemSku": "9dG3yzaNbGeASX83", "itemType": "SLiIbAP2qyUnHnfr"}], "name": "EdDfY4TTxu8goZgs", "odds": 0.798655011567577, "type": "REWARD_GROUP", "weight": 90}], "rollFunction": "CUSTOM"}, "maxCount": 46, "maxCountPerUser": 73, "name": "fM4qnUdcQqZ9F1ui", "namespace": "vPob0YZEuXQACDDQ", "optionBoxConfig": {"boxItems": [{"count": 36, "itemId": "zeWOPUMrqgEIsMwN", "itemSku": "bfti0LoTBcNzyoCS", "itemType": "w1t653G3ydYmGzvx"}, {"count": 27, "itemId": "bSqqyAPha5b6PQTP", "itemSku": "TytHeeXo7gOFVLZC", "itemType": "BWuVIROZuqdJBi8p"}, {"count": 21, "itemId": "wNDvValv3bkoMXNz", "itemSku": "l1ywEPiunixlEAHZ", "itemType": "zHs8x5oPSkZFIV2f"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 28, "comparison": "isGreaterThanOrEqual", "name": "RlzAJy9oFOHB2KEs", "predicateType": "SeasonTierPredicate", "value": "PbzY1yxl7zeEpmSP", "values": ["O6KwlJQlj9Ii2jAR", "qBwiNCsnK8CcO1OH", "wzowk9OoiPdnq9KB"]}, {"anyOf": 2, "comparison": "isGreaterThan", "name": "pQZtwW3EwLre1bL4", "predicateType": "EntitlementPredicate", "value": "X5ijmtDGvd9ESdY0", "values": ["MPnbg7o1zYpqUsli", "eTkBWA44Qqsi5yOj", "vl5sRN2ENn1RLi5i"]}, {"anyOf": 85, "comparison": "isLessThanOrEqual", "name": "9JFwXG0EvoSHNC97", "predicateType": "EntitlementPredicate", "value": "P47RcUIi2CoNj4EG", "values": ["8YDChFi3zLvfQWC8", "8rzDZ08j6ICP75cm", "2emxKQk8cBrt5E8k"]}]}, {"operator": "or", "predicates": [{"anyOf": 80, "comparison": "isLessThanOrEqual", "name": "qfmBv0XgJB6a7uyk", "predicateType": "SeasonPassPredicate", "value": "0mczWxc8f1s2QPMM", "values": ["dkcKW21B5EFtD2pY", "Zsf2dvKZyHChRPHv", "aKTz1gcE2XCwTkRU"]}, {"anyOf": 70, "comparison": "isLessThan", "name": "FHNmB9mYBvtOwxjq", "predicateType": "SeasonPassPredicate", "value": "wzuIpGBYHTHoSVxg", "values": ["QCbpZx5yMGIQ1ZxV", "ikX6yOlgZrn0I6T0", "IefYlKBJyQMqUEfD"]}, {"anyOf": 15, "comparison": "isLessThan", "name": "A0Wv0zWGvkc6byp3", "predicateType": "EntitlementPredicate", "value": "M6uhonkAe0FdTSSE", "values": ["mBFZ6TIs9bTi2m7e", "NsYEqKkeuLWDfeFe", "luBxM47BTww3nBTV"]}]}, {"operator": "or", "predicates": [{"anyOf": 10, "comparison": "isLessThanOrEqual", "name": "mCMTr9ACnI2sMrEg", "predicateType": "EntitlementPredicate", "value": "SDWnMQGaYRxFWia7", "values": ["xhgTwyO51CUpcdxL", "cGUFgp6LkyXpxJeF", "yJ2d87XjA0ajvb7J"]}, {"anyOf": 22, "comparison": "excludes", "name": "l60ImLBv6nUU0r1r", "predicateType": "EntitlementPredicate", "value": "FgZhNpOTE4toH57y", "values": ["Nv2Tw6YKhVrYkMqX", "r01N33p1Gha8Hwpa", "gvERZI6Cqhcknhec"]}, {"anyOf": 20, "comparison": "isGreaterThanOrEqual", "name": "7qlaJjSYEseBYCFG", "predicateType": "EntitlementPredicate", "value": "DlP9qIZJ5Krx6KkH", "values": ["agEugKJxkU8Y58CO", "vq0CIa1YCK9PlMeQ", "tTNjnNSikJDg6ujK"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 35, "fixedTrialCycles": 35, "graceDays": 10}, "region": "eG0HwUXxQTf5YpDU", "regionData": [{"currencyCode": "GYsJBEkYUrLv4qUi", "currencyNamespace": "TkFcLBrg2JB0WiCp", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1982-06-29T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1992-02-14T00:00:00Z", "discountedPrice": 24, "expireAt": "1974-03-19T00:00:00Z", "price": 73, "purchaseAt": "1994-01-05T00:00:00Z", "trialPrice": 19}, {"currencyCode": "tt0PpQY3Pnnic80y", "currencyNamespace": "EO8dL6Jh10XMUGeD", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1982-10-31T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1994-10-25T00:00:00Z", "discountedPrice": 51, "expireAt": "1979-12-20T00:00:00Z", "price": 1, "purchaseAt": "1978-01-25T00:00:00Z", "trialPrice": 44}, {"currencyCode": "JmJFUsU418vAlmfG", "currencyNamespace": "g9NO1Z2DvnAxH3pS", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1983-08-22T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1976-04-02T00:00:00Z", "discountedPrice": 67, "expireAt": "1997-10-23T00:00:00Z", "price": 54, "purchaseAt": "1976-12-28T00:00:00Z", "trialPrice": 40}], "saleConfig": {"currencyCode": "zGEArlfE1NSmtcAD", "price": 30}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "2uhdw7C9Bx1LQOTC", "stackable": false, "status": "INACTIVE", "tags": ["RpbxEq07txnvZZeA", "HTdnUtdrRcs3GeOs", "KPNlG7rEXi6LEqJE"], "targetCurrencyCode": "f7QBuZK5GJlBncg8", "targetItemId": "tQnJOKHC16xjJZ4k", "targetNamespace": "iU3N8556ll2LQWpd", "thumbnailUrl": "ESOBV7wZJsg7wSv9", "title": "lyRyTdYBUljvBzvY", "updatedAt": "1991-11-05T00:00:00Z", "useCount": 62}, "namespace": "Dj4pjVktyoNSsEHl", "order": {"currency": {"currencyCode": "zyd0SarkhltUxgbN", "currencySymbol": "5eElQNESFLD8hCc9", "currencyType": "REAL", "decimals": 81, "namespace": "nSNjbQEqFGwnDG8k"}, "ext": {"z4kvEv6tNjGRhrmR": {}, "AxRGeIKGlCJmDXpj": {}, "yvLSHB1y3klHuAGn": {}}, "free": false}, "source": "REDEEM_CODE"}, "script": "dOyGuS0OG7ohiL29", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    '3ClrNhEdxd24ZKfv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'Mf1T5FzYMf1jaCgZ' \
    --body '{"grantDays": "osntPzP1vXXB92q1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    '50WEIetOXMt37MXy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    '7Fp7lUfQqXrqGadw' \
    --body '{"grantDays": "vKlJFX1ZHV9yo9Ur"}' \
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
    --body '{"clazz": "1hfhmGEKuVUZdCac", "dryRun": false, "fulfillmentUrl": "taRvJ6lKWJwHO65a", "itemType": "SUBSCRIPTION", "purchaseConditionUrl": "UN4zvBzGh3mhIDNu"}' \
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
    'MGNll4O8ELahcNJq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'Rjepck1l0qxRyQ2p' \
    --body '{"clazz": "i7xuAufJakIPXOQz", "dryRun": false, "fulfillmentUrl": "pgWhTED5YmPTBUkm", "purchaseConditionUrl": "2FyvdguCYVqFyIKh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    '1YtTY4AejyQc5Dac' \
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
    --body '{"description": "7hSLldWx5DyniVES", "items": [{"extraSubscriptionDays": 97, "itemId": "VRYIyQLcslTEqgVN", "itemName": "G8AqktgvjwNJAwIp", "quantity": 63}, {"extraSubscriptionDays": 5, "itemId": "y2ZNpojZ24I2n25s", "itemName": "msrmJFHGiYnyhbqx", "quantity": 76}, {"extraSubscriptionDays": 87, "itemId": "uTZIxgiUaiyy0aWr", "itemName": "shpmb1C9Al7eWrbN", "quantity": 90}], "maxRedeemCountPerCampaignPerUser": 61, "maxRedeemCountPerCode": 62, "maxRedeemCountPerCodePerUser": 35, "maxSaleCount": 29, "name": "xyYPUZHyLGQ52IjG", "redeemEnd": "1978-08-05T00:00:00Z", "redeemStart": "1993-06-22T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["UJpscOTkWETSJ04c", "5MGInO4yznh2YpZv", "vmziSSiSpXeWOGay"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'MyeNRsjQuDEgO3ME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'QNL6ijLRvQOgoaBo' \
    --body '{"description": "oTawHLMxhx9nC3o6", "items": [{"extraSubscriptionDays": 32, "itemId": "AkA7n6516ydoRT1q", "itemName": "ZBrdTnGrwHeWoQXP", "quantity": 64}, {"extraSubscriptionDays": 87, "itemId": "WFaKbDgrGkv8SVwL", "itemName": "yS4VbHJvD0lL7aZU", "quantity": 46}, {"extraSubscriptionDays": 20, "itemId": "d1Idud8bjYeBVMr7", "itemName": "zHYmRE4X36KUOdfE", "quantity": 26}], "maxRedeemCountPerCampaignPerUser": 29, "maxRedeemCountPerCode": 70, "maxRedeemCountPerCodePerUser": 33, "maxSaleCount": 42, "name": "wSxxAsfwDMivWqHH", "redeemEnd": "1987-02-27T00:00:00Z", "redeemStart": "1977-04-18T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["0zPkQWRUlgE0kxzF", "Mq9ttbEHAEV7C65A", "ns9SquNSJIay5VdU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'dYy9Y9OCSmmT3WKi' \
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
    'jbqhT3uyQRXvvcUY' \
    --body '{"categoryPath": "DeWPZ8yhwQ0gIdj1", "localizationDisplayNames": {"lTJdNLmAvEdEBVAU": "3rbkv8V98cupW0L5", "WsiuITRMSPOUfWQw": "r4PYf48r66MaToxB", "iliy2vtRkpqL6KrV": "cNz83J57t6OcYPQ5"}}' \
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
    'bk5IeuAi3zWFGorC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'bncoj5RvEtXiKyUG' \
    'dNfMiwgSvsTRmJsO' \
    --body '{"localizationDisplayNames": {"m0wVFyHvFhRMCFJu": "A0DEMgykqqjoHTpI", "PMSRAuPI7mSZQ5UD": "m1q51PlW2HG8LAiI", "zuo321Ll90IBFsSb": "3FsV2PnCs9R0D5jZ"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'Ewxcow6L7c3COEP4' \
    'AZx70uwV4XgvGTMH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'kXeEwuFJf7tbq5Ki' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'kDE7hWvT5bzcfzIp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'L2pWB4XsdrxIF6kE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'AmKGNEmFPcUALNzi' \
    --body '{"quantity": 83}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    'xXZDy5Pmbu7RrD9a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    '5mdlXTCL467xHbAi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'D3Pr3mXZO1PnbSlf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'VRlAI8F2f3mEv09k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'AA5hnQtd4bcivHGI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'EplRpcHDWcIoJ45L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    '0Ze3YamxKDSZTl4U' \
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
    --body '{"grpcServerAddress": "iJSCbG4UmG3TkMTz"}' \
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
    --body '{"currencyCode": "OcBIciiKwRs1E7sH", "currencySymbol": "2G9MJ6F7Rr7O15jq", "currencyType": "REAL", "decimals": 15, "localizationDescriptions": {"KssQpme6eyM48tE7": "eJRsXNeveQXqnFRY", "mEIX40XOUoLOa7oD": "z00gxcoaH6u9TVf4", "DvEzpoPRiClZ6rlw": "X99AHMLHqguYykVW"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'zNwPcvGyieBsRUdu' \
    --body '{"localizationDescriptions": {"W5lxSlorWEGN5bPG": "SOSiiItrSrEJMBAI", "wTLkrMDFQfpQ9o0G": "JMTfqRRaZozM8xCB", "oaS2FMwfWNCbN5Ge": "lVOU0hHnsCl5k6Jx"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'h5mkmQzKg0jWCjpG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'wh7pLAi5JmzvM6JF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'KB8ikHpl3sNRaDEC' \
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
    --body '{"data": [{"id": "2OkXA3WqypoOw0H2", "rewards": [{"currency": {"currencyCode": "s0sibQNBz81zRPnt", "namespace": "xpgi7tXIcNEcGJjO"}, "item": {"itemId": "CXpuix5vnPeTu9ev", "itemSku": "bRov7Bm40CtZiAxk", "itemType": "43DGV1SCkw8U0d4F"}, "quantity": 43, "type": "CURRENCY"}, {"currency": {"currencyCode": "NRN132RdgwMXv9ol", "namespace": "KpRyWQim3qlART9m"}, "item": {"itemId": "PPmYUvlkBGPJFaFz", "itemSku": "kABC8zWMcYW5iRrw", "itemType": "32FRg8y4rOuj7J6i"}, "quantity": 20, "type": "CURRENCY"}, {"currency": {"currencyCode": "bcycXmBcrJLb7lab", "namespace": "yotifVk9KyqceGv0"}, "item": {"itemId": "CEDTVSjINYeKLowG", "itemSku": "7UQB9pXzuCK5qd2m", "itemType": "8A5axixm9X9TXNhN"}, "quantity": 9, "type": "ITEM"}]}, {"id": "7gfV1G6bYgIbVKp4", "rewards": [{"currency": {"currencyCode": "Kgew2mHDksA6Mv9N", "namespace": "zs19eBq9a1L8S1yd"}, "item": {"itemId": "uOwscICro6P8FWIP", "itemSku": "eqaBeD2uBAvIXEc2", "itemType": "CCgYcFo9A93o22Ug"}, "quantity": 82, "type": "ITEM"}, {"currency": {"currencyCode": "bCOiBWdw2b031dm4", "namespace": "N41MOpmm04BlZUAl"}, "item": {"itemId": "YnCT11qD03er5mdr", "itemSku": "aK47FdxXisVlo3aV", "itemType": "OGARFDJcGWy826il"}, "quantity": 58, "type": "CURRENCY"}, {"currency": {"currencyCode": "xAxQUM5DyrPfBmpZ", "namespace": "IzSFUZqVR5FWGfH6"}, "item": {"itemId": "6eFCMTsLA8vYVvrI", "itemSku": "AEehUV0jsjAyVgxS", "itemType": "54NNs3XdhMbQX9D1"}, "quantity": 52, "type": "CURRENCY"}]}, {"id": "fEk9s11bFXkf7rQJ", "rewards": [{"currency": {"currencyCode": "4Kj7Qyo9tUptiyZz", "namespace": "RX8Y4rxRWZPe4ZLA"}, "item": {"itemId": "QWuBJwxObZqMGxhf", "itemSku": "fy9cHrLYfftad99J", "itemType": "Dcnn7f2d8SOWP2dw"}, "quantity": 49, "type": "ITEM"}, {"currency": {"currencyCode": "JTduZp1nNYHREmm1", "namespace": "cBuaRaGeM8yxRfej"}, "item": {"itemId": "qSbVgLd1FoyNFGpu", "itemSku": "5r2K0IvVg5LwUygH", "itemType": "98dzTL8azKCCNBZp"}, "quantity": 45, "type": "ITEM"}, {"currency": {"currencyCode": "RFNYxx2dr6DDuDHX", "namespace": "cfvXPXJURX3XwhOl"}, "item": {"itemId": "gcpcOIxqCMSpZxby", "itemSku": "2J9vGOUeSeGb02vD", "itemType": "PUpv5VEdIG82dpIb"}, "quantity": 11, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"VfgvG617GmxzClkR": "3M6Twpwq3nLwxnJK", "jOo9fvfXF1VsikD3": "IphQQiRcOtsthUwg", "QzNHUZ0l1FRfOjJU": "mCbi2llksf6GA8vT"}}, {"platform": "STEAM", "platformDlcIdMap": {"QdsAdTUGpd8KFrXK": "FA2gdjQCYoE8b0CZ", "etLfpFNyp7375rhO": "mR4zFjoJZVKZjOD2", "ePKAKYjJMVnYj2yK": "qavWpydepM3ap069"}}, {"platform": "XBOX", "platformDlcIdMap": {"tlpFAq8oebnS4Y2z": "kGYTr9yJIveX52r6", "Inl9VTJB9Al3mn2D": "sHDHzSVJzhU5Z44z", "gZ1fieLdl3Y82DOj": "5kPuNRZZaUccuBYe"}}]}' \
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
    --body '{"entitlementGrantList": [{"endDate": "1978-04-25T00:00:00Z", "grantedCode": "oj5vygVvLSJvdsGp", "itemId": "mmUeMikW3s54zffA", "itemNamespace": "L2DZ7gBhy77iRVFf", "language": "cWRy_nHox-981", "quantity": 100, "region": "pxKtJbRY5luCwKrt", "source": "PURCHASE", "startDate": "1982-06-17T00:00:00Z", "storeId": "n3yVrRCh6j7rpv8K"}, {"endDate": "1986-02-09T00:00:00Z", "grantedCode": "DYfiGPYo2K3dN3YB", "itemId": "OJfvV6SuHovoQlk5", "itemNamespace": "wL2oXDZ20Bw2H4tz", "language": "Lvcd_280", "quantity": 23, "region": "3JBYi9bBKBRpdbLC", "source": "IAP", "startDate": "1995-07-01T00:00:00Z", "storeId": "VEQTpfyAIoF7qsAN"}, {"endDate": "1985-11-21T00:00:00Z", "grantedCode": "bEKQrgocpjGNenRl", "itemId": "DORLvP7ynTuXzafC", "itemNamespace": "qlMrrVIehVCf3AwI", "language": "Kwi-136", "quantity": 69, "region": "0SLrZraV3NLBUSrF", "source": "OTHER", "startDate": "1986-07-30T00:00:00Z", "storeId": "nrYz0GFpSVdxFsXA"}], "userIds": ["p1roclyXllFitPam", "SKRzDIZgSk6suS90", "ZbDdmjU11QIZtkSn"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GrantEntitlements' test.out

#- 54 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["8QRbA5V4gjWv1W6c", "qnvSuKswQ7vH8GSc", "nP5QzRBY1UrefgmV"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'RevokeEntitlements' test.out

#- 55 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'FBVz4KRCU0p4jIt0' \
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
    --body '{"bundleId": "1gzH17IcfJyGulmB", "password": "yN5rcDA3Wcv9ouAL"}' \
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
    --body '{"sandboxId": "jgLZZzLU9w8MJRIz"}' \
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
    --body '{"applicationName": "IgJKg9y86BgnBQtm", "serviceAccountId": "5AilVhASFlYMVJtE"}' \
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
    --body '{"data": [{"itemIdentity": "2dAeC7pF73y9eALK", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"7sNihxpuuL7DJCxv": "zZnh8oBAk1MNCAUm", "dnLaVRUu5VbjwPa9": "rYgHaxeTT3ebuaYP", "NBp9wA4LxO2n7WJQ": "FzBCD9S03D7JLsIM"}}, {"itemIdentity": "3VOMRvvqkXDMPzOB", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"8tpk0qhZath4b4Ht": "wEYX55pJNTX1sDjS", "WiSXsV5rJ8eZXZ1T": "LMZnNL3DQK45IAtb", "yUDDSJSV8pzl1lfI": "R7jnetIJPGObyWCL"}}, {"itemIdentity": "yFPHaxkKxEDvSoi2", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"9SygvMG8QAaWUhIg": "uMvKDOrx0wQXKEro", "yKz2reP63EVHT72V": "uhoGP2IFXGU5hujE", "fCMt95DEjxqhgYqm": "MqIdlRrQmuILkeRU"}}]}' \
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
    --body '{"environment": "afUDP5b6BWfm7cYC"}' \
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
    --body '{"appId": "pDIJG42ILhUoCh8l", "publisherAuthenticationKey": "mKKocC5Ea29JhfFG"}' \
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
    --body '{"clientId": "N964J8WOgsAj2Rmf", "clientSecret": "1DXvAIkzTRNRVyeE", "organizationId": "Gu1ICOCmLAmcaEFB"}' \
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
    --body '{"relyingPartyCert": "Kgy92LYqtQcDN7OM"}' \
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
    'Cehk42acy8wsWaPy' \
    'ppR3ztPSALA8LlV2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'DownloadInvoiceDetails' test.out

#- 84 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'sccbVr6HSiXVzrG4' \
    'EdKn8eypTzI497DG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GenerateInvoiceSummary' test.out

#- 85 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    '0ZNoJvvi4Ys50iE7' \
    --body '{"categoryPath": "IjZoDzMmMgoMxZZ9", "targetItemId": "AutWDfVOINhql9Cd", "targetNamespace": "DX4xiHpdfKH35RWU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'SyncInGameItem' test.out

#- 86 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'UVEHCB5wzF6oLIrA' \
    --body '{"appId": "wjAsgo51XHJBG2Pm", "appType": "SOFTWARE", "baseAppId": "evk3k14782W2oNo3", "boothName": "X4m6wms9SPaHlqtD", "categoryPath": "Pry2vMON7sdhlilf", "clazz": "pDT8o2iFrYtGfCZC", "displayOrder": 4, "entitlementType": "DURABLE", "ext": {"EKdeo779KG5yCz9j": {}, "Vs1lYK1Mx9rEFkDq": {}, "b31AZzwiQBaGdS41": {}}, "features": ["BEoTlfR33jqIRoXc", "CPaLXJM2B9bMohkW", "VRIyAHjYxVhCbXbe"], "images": [{"as": "sFKIdycYHQcu7JkK", "caption": "BcLFRf50Y7ME2QmY", "height": 16, "imageUrl": "hBxLFnKnSYC9yyBY", "smallImageUrl": "epIqtrikdAbdOT6i", "width": 90}, {"as": "dmYDj9vZNgfI1AeY", "caption": "He8WPQGPclChxLfb", "height": 66, "imageUrl": "rH6f2GDrNbLOjGz3", "smallImageUrl": "4ct0ctEeH43wYuLn", "width": 70}, {"as": "r4nW4pBcPPaiaM1o", "caption": "g5rxUjGPKKLMoAy1", "height": 37, "imageUrl": "MGJ70P9IqAyNlZ2O", "smallImageUrl": "wFSebBkXkaxtY97T", "width": 80}], "itemIds": ["udl6fLkxFnAqyvjB", "y0NXg7zd6SFpkV7c", "AICgWFJZGnNa5yOM"], "itemQty": {"68r4W1fDZL80oPQ0": 37, "PuQE3Gc8bY4IH0OX": 68, "3YgWH9l7rv6XUSIN": 6}, "itemType": "CODE", "listable": true, "localizations": {"keCeiw7P2PtUrPaw": {"description": "QPaHARrhjbEU5n0P", "localExt": {"NuFyKW95dJsGoBIj": {}, "CKlD3axSivItV1tx": {}, "LINmdHTGLtX6TN5c": {}}, "longDescription": "tYX1sZnYF3hWmCCI", "title": "rP0lJXexseo2e6BC"}, "NJTTRIHDKdVfOUr1": {"description": "4yZH00n8MsRjaB8i", "localExt": {"urBWW5jSJi0seeGJ": {}, "IqnatME8GnNWfAY1": {}, "yY6D1Euusf0eOzoS": {}}, "longDescription": "yKttYwUUlMRG8vO0", "title": "OSsJmhOJDUyyag9j"}, "BDJFJGOEiWJ8cLrr": {"description": "yS5a6A4tL8YKMrUB", "localExt": {"L6dDTVwPIt1hrg2m": {}, "hbI0NDshb7ZzQuBP": {}, "yNi1GhZHEj6p5grj": {}}, "longDescription": "k5wzdksOUku8dtQo", "title": "IrpvmM19X4zFOvdR"}}, "lootBoxConfig": {"rewardCount": 94, "rewards": [{"lootBoxItems": [{"count": 31, "itemId": "GUvWZvoCmprkv7A8", "itemSku": "MRutCKCsqmx2zriO", "itemType": "GB8b5qTFp3cIxOI3"}, {"count": 28, "itemId": "prAdqnnPOiTVzAeQ", "itemSku": "q6rnWJoTpYoe2uHa", "itemType": "WnO98YwqHZnEDkfm"}, {"count": 80, "itemId": "0UJLPMkeUwa6OVKx", "itemSku": "CMxuf0P9r5f6fdmy", "itemType": "i4kQnOFbBtvBw81h"}], "name": "UgtONCIoZ2rkomSj", "odds": 0.9265008326973946, "type": "PROBABILITY_GROUP", "weight": 26}, {"lootBoxItems": [{"count": 74, "itemId": "AIMo6EW9QhzU8FwQ", "itemSku": "tZpfUoyoiUjmqOyQ", "itemType": "7ammFgHprdM9viFW"}, {"count": 25, "itemId": "tHOhVy48YYg1AkRh", "itemSku": "3NmbRhMxKeIgwq1N", "itemType": "Zmxa0ghRG020QpWT"}, {"count": 82, "itemId": "pbMblGWnp94a6GKY", "itemSku": "0BrHiWs0B0RhxQtg", "itemType": "VgbN8kr872hJvrOC"}], "name": "dAEZ2RHt3uQ5nFrP", "odds": 0.7916374839102949, "type": "REWARD", "weight": 88}, {"lootBoxItems": [{"count": 48, "itemId": "fBFZXcSXpU81S5H9", "itemSku": "XsZyvZOFJ5RrFZYc", "itemType": "wfQ1Q2BbcjSpv6Nt"}, {"count": 57, "itemId": "oz4tdgfKu4bmK8kO", "itemSku": "KcEoCRjQJlPY3p42", "itemType": "OS9iGNElTpMlvRDZ"}, {"count": 92, "itemId": "aERb7U9kK4VctUmD", "itemSku": "hFVNa0JYzTbdnOnE", "itemType": "arWP4nrJ5fNESRVG"}], "name": "eswvkzLNIITUJGj5", "odds": 0.505081346421545, "type": "REWARD", "weight": 1}], "rollFunction": "CUSTOM"}, "maxCount": 91, "maxCountPerUser": 46, "name": "gewLWHcBxz5LpdkR", "optionBoxConfig": {"boxItems": [{"count": 59, "itemId": "V8E1xQZLa7Kw77Up", "itemSku": "CxNyx1jjdxNePPAJ", "itemType": "6Z9UzqIhZZiK0QEG"}, {"count": 83, "itemId": "C9w4lVRNOF1Bg6OH", "itemSku": "ZzvdZHoIm4tKNhPj", "itemType": "NIQGFxGwgnSiZtCh"}, {"count": 62, "itemId": "tyVaGj4y9ahS7h7X", "itemSku": "Vlmc5Rs5FVQSIqOb", "itemType": "R55tV0BlN1iFvw0G"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 58, "fixedTrialCycles": 24, "graceDays": 98}, "regionData": {"ie8SJckSRbu7hgmU": [{"currencyCode": "m7RVCUREDdoGatGQ", "currencyNamespace": "1SeOXsg4jofp9Pvl", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1983-10-25T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1987-04-07T00:00:00Z", "expireAt": "1982-05-20T00:00:00Z", "price": 83, "purchaseAt": "1993-10-19T00:00:00Z", "trialPrice": 44}, {"currencyCode": "DpvZgvPGHjV7MNTp", "currencyNamespace": "M7fSods1zdVT0aWj", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1991-02-11T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1999-02-25T00:00:00Z", "expireAt": "1983-06-24T00:00:00Z", "price": 59, "purchaseAt": "1973-07-24T00:00:00Z", "trialPrice": 79}, {"currencyCode": "jzMDAf40gKSizvmx", "currencyNamespace": "ts5HSQvRAPG9JoVS", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1973-01-12T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1980-02-05T00:00:00Z", "expireAt": "1984-04-21T00:00:00Z", "price": 17, "purchaseAt": "1989-02-19T00:00:00Z", "trialPrice": 20}], "nFZQ9lVMNyCiytnf": [{"currencyCode": "MoO1I3KISTbn4yEa", "currencyNamespace": "2AaBRalz5HEm4Gan", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1986-01-04T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1979-05-08T00:00:00Z", "expireAt": "1976-05-06T00:00:00Z", "price": 75, "purchaseAt": "1973-08-01T00:00:00Z", "trialPrice": 40}, {"currencyCode": "WDAauqLKarcLQRQt", "currencyNamespace": "C927GneBM8LvzgyI", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1999-09-23T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1987-10-17T00:00:00Z", "expireAt": "1984-11-20T00:00:00Z", "price": 77, "purchaseAt": "1989-03-24T00:00:00Z", "trialPrice": 45}, {"currencyCode": "UjwiCmWQvbrxQpUS", "currencyNamespace": "nos6QiHyrcGeRv27", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1976-04-13T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1999-04-13T00:00:00Z", "expireAt": "1986-07-15T00:00:00Z", "price": 40, "purchaseAt": "1982-06-18T00:00:00Z", "trialPrice": 94}], "fHuNIp0GXpM4nbG7": [{"currencyCode": "aww2TANW1Or7TvLo", "currencyNamespace": "L0wwHoRMNexBOron", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1988-01-24T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1994-05-23T00:00:00Z", "expireAt": "1971-12-26T00:00:00Z", "price": 32, "purchaseAt": "1975-09-19T00:00:00Z", "trialPrice": 47}, {"currencyCode": "SPs2ZMcVFcrixULz", "currencyNamespace": "SeTnUWGxxfnMIDSC", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1986-12-09T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1986-09-14T00:00:00Z", "expireAt": "1988-02-19T00:00:00Z", "price": 6, "purchaseAt": "1979-06-06T00:00:00Z", "trialPrice": 10}, {"currencyCode": "c250c2okDTem6o62", "currencyNamespace": "xFY6TNqoLFFS4wB6", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1972-03-15T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1980-04-17T00:00:00Z", "expireAt": "1995-04-24T00:00:00Z", "price": 84, "purchaseAt": "1998-08-11T00:00:00Z", "trialPrice": 44}]}, "saleConfig": {"currencyCode": "O1rE7E12Fapao5jo", "price": 27}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "Ax7rZTvew0WVDSMN", "stackable": true, "status": "ACTIVE", "tags": ["V2HLHZT3oYJlC4ie", "3LV7xZEEv7O1lwxV", "TRll0GIEUJtMC8Ny"], "targetCurrencyCode": "3InnSA22NHTb4qXY", "targetNamespace": "yJUAlKlTwdJEPoem", "thumbnailUrl": "VtmVXTs3tCu4F9Ig", "useCount": 61}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'CreateItem' test.out

#- 87 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'Oj0lfYFGnQCAWidW' \
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
    'PjYgyebU6rHFirnU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetItemBySku' test.out

#- 91 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'pZ9UJ4N78qHTGdn7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetLocaleItemBySku' test.out

#- 92 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'gE4bwLzDEw2PYt8x' \
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
    '9SSaOZcEvG6KZh95' \
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
    '4BmtuIFllfSUnaUh' \
    --body '{"itemIds": ["C4x11AS2jTKoTYeH", "aCuN7zpX9vp4QJdC", "rwkz0nw2oxKye8jZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'ValidateItemPurchaseCondition' test.out

#- 97 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'qj7k0YiLqOUSBuwR' \
    --body '{"changes": [{"itemIdentities": ["388REDRuYBnWiEsO", "nDfIAN04f5kSONmw", "1BDqqSctLL4WfGq8"], "itemIdentityType": "ITEM_ID", "regionData": {"CDnwGWgccuzuc6QD": [{"currencyCode": "RMGdBPbUyHTYPS8C", "currencyNamespace": "GKXGon2ecc65YAFL", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1973-08-12T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1972-05-01T00:00:00Z", "discountedPrice": 54, "expireAt": "1994-02-05T00:00:00Z", "price": 84, "purchaseAt": "1977-11-25T00:00:00Z", "trialPrice": 50}, {"currencyCode": "korrw9QH3rNhDepQ", "currencyNamespace": "um4Dj7pR05RTGXGR", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1996-05-25T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1999-02-05T00:00:00Z", "discountedPrice": 93, "expireAt": "1993-01-22T00:00:00Z", "price": 54, "purchaseAt": "1971-04-20T00:00:00Z", "trialPrice": 36}, {"currencyCode": "AOF9VV7JgCOm4wL7", "currencyNamespace": "29Hma0nCdCEFcf2d", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1985-05-18T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1974-02-18T00:00:00Z", "discountedPrice": 68, "expireAt": "1972-03-10T00:00:00Z", "price": 77, "purchaseAt": "1988-05-13T00:00:00Z", "trialPrice": 38}], "gvu496H02yOVN1h4": [{"currencyCode": "1jIPOMXufZPWSe20", "currencyNamespace": "JfNvtNcWtpUkw98x", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1990-02-28T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1974-02-26T00:00:00Z", "discountedPrice": 3, "expireAt": "1971-09-15T00:00:00Z", "price": 9, "purchaseAt": "1987-08-08T00:00:00Z", "trialPrice": 61}, {"currencyCode": "ZoFncMUdmf8hD3nL", "currencyNamespace": "1saQxLYrz08jh6Ty", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1992-11-10T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1972-03-10T00:00:00Z", "discountedPrice": 22, "expireAt": "1997-12-17T00:00:00Z", "price": 14, "purchaseAt": "1999-06-05T00:00:00Z", "trialPrice": 2}, {"currencyCode": "f5UctyV3aSw4twRe", "currencyNamespace": "M5DcHde3fkHf7tH8", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1985-08-11T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1992-05-02T00:00:00Z", "discountedPrice": 4, "expireAt": "1975-06-18T00:00:00Z", "price": 16, "purchaseAt": "1989-02-07T00:00:00Z", "trialPrice": 53}], "6nGCnPjiIbJifs0a": [{"currencyCode": "rKxCcNv8FQCyQBqK", "currencyNamespace": "xayGvw7MqOsypCJm", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1993-03-28T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1996-07-08T00:00:00Z", "discountedPrice": 65, "expireAt": "1980-02-22T00:00:00Z", "price": 31, "purchaseAt": "1990-02-16T00:00:00Z", "trialPrice": 20}, {"currencyCode": "vjt7eCLDu6PA3PRn", "currencyNamespace": "QtB410iWT0SILVGX", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1996-04-21T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1988-06-14T00:00:00Z", "discountedPrice": 95, "expireAt": "1972-11-02T00:00:00Z", "price": 88, "purchaseAt": "1989-05-05T00:00:00Z", "trialPrice": 23}, {"currencyCode": "P1Tq7uYXhB6FPfF5", "currencyNamespace": "DvveMdBsPt19V2Fk", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1988-03-23T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1998-12-11T00:00:00Z", "discountedPrice": 76, "expireAt": "1976-06-14T00:00:00Z", "price": 56, "purchaseAt": "1973-04-09T00:00:00Z", "trialPrice": 76}]}}, {"itemIdentities": ["ZMQeSnOg5gf1Swrb", "pmoF4DvNA1wo9IAx", "V5C71gTw8BJPFctw"], "itemIdentityType": "ITEM_SKU", "regionData": {"MCRdxXOBu3TWmHDV": [{"currencyCode": "mCGFoD7aNFj9wORA", "currencyNamespace": "VqRuNsXxRu4EQqR3", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1997-02-10T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1987-06-09T00:00:00Z", "discountedPrice": 65, "expireAt": "1987-11-01T00:00:00Z", "price": 52, "purchaseAt": "1982-05-07T00:00:00Z", "trialPrice": 62}, {"currencyCode": "lXVk36IpbGquPnIP", "currencyNamespace": "wR1BinZ4ULwAKO8n", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1977-06-15T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1987-09-04T00:00:00Z", "discountedPrice": 43, "expireAt": "1983-08-31T00:00:00Z", "price": 11, "purchaseAt": "1993-07-29T00:00:00Z", "trialPrice": 62}, {"currencyCode": "ZJsZd9sB6CV9KiWk", "currencyNamespace": "bdpGqWQIPK6mVytM", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1976-08-12T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1993-05-01T00:00:00Z", "discountedPrice": 93, "expireAt": "1973-10-25T00:00:00Z", "price": 13, "purchaseAt": "1986-10-25T00:00:00Z", "trialPrice": 63}], "YLk9DmjJh6PnpTXW": [{"currencyCode": "AUt8lgqNM4poGEvI", "currencyNamespace": "KCe3MrLxmnjmlAua", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1981-01-27T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1974-11-24T00:00:00Z", "discountedPrice": 52, "expireAt": "1982-06-25T00:00:00Z", "price": 2, "purchaseAt": "1974-10-09T00:00:00Z", "trialPrice": 5}, {"currencyCode": "2k1P9nQxzj3AnmpW", "currencyNamespace": "fje5cAtTDvwFHcoO", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1975-04-10T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1978-07-30T00:00:00Z", "discountedPrice": 64, "expireAt": "1994-01-03T00:00:00Z", "price": 32, "purchaseAt": "1979-01-18T00:00:00Z", "trialPrice": 31}, {"currencyCode": "cdjjZpFnVLb7xerp", "currencyNamespace": "jVPfktNnl8UYH5ke", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1981-09-04T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1977-06-10T00:00:00Z", "discountedPrice": 1, "expireAt": "1997-07-18T00:00:00Z", "price": 69, "purchaseAt": "1972-11-02T00:00:00Z", "trialPrice": 33}], "sKkgX0RMDxvlK9Rn": [{"currencyCode": "TEYv5eDhCxwy85vl", "currencyNamespace": "hWw1RCgHr3f6UqFG", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1982-04-27T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1988-11-14T00:00:00Z", "discountedPrice": 26, "expireAt": "1987-09-08T00:00:00Z", "price": 63, "purchaseAt": "1987-06-11T00:00:00Z", "trialPrice": 24}, {"currencyCode": "yXqQbKWMJ0aODiWn", "currencyNamespace": "6bPmSa85Riu1alaV", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1971-03-23T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1989-02-04T00:00:00Z", "discountedPrice": 2, "expireAt": "1994-06-28T00:00:00Z", "price": 43, "purchaseAt": "1990-09-29T00:00:00Z", "trialPrice": 15}, {"currencyCode": "kFWLSzmAXAruYrVj", "currencyNamespace": "X4HRTvm3Qr9IkuW6", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1975-09-11T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1988-02-11T00:00:00Z", "discountedPrice": 89, "expireAt": "1972-06-03T00:00:00Z", "price": 90, "purchaseAt": "1975-06-12T00:00:00Z", "trialPrice": 84}]}}, {"itemIdentities": ["DEsq0dHfYG6k853G", "ERdJdphepF9dfsng", "9FGGjJ0hRPUBFxM2"], "itemIdentityType": "ITEM_SKU", "regionData": {"1YTT3qUMd0U73RjV": [{"currencyCode": "eYSM479gn62lizsW", "currencyNamespace": "GrtIgVPb7hoo8YkN", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1998-06-06T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1984-12-02T00:00:00Z", "discountedPrice": 89, "expireAt": "1989-05-24T00:00:00Z", "price": 66, "purchaseAt": "1992-06-03T00:00:00Z", "trialPrice": 40}, {"currencyCode": "dXJGDsxRAR3NObYp", "currencyNamespace": "43YXMHqWeVjnOURx", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1996-11-23T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1974-07-15T00:00:00Z", "discountedPrice": 51, "expireAt": "1972-08-13T00:00:00Z", "price": 39, "purchaseAt": "1983-02-09T00:00:00Z", "trialPrice": 21}, {"currencyCode": "jLUZHK0OO1yQsMBQ", "currencyNamespace": "AdOfrtHWyGg5TU3I", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1990-02-16T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1976-06-02T00:00:00Z", "discountedPrice": 8, "expireAt": "1978-07-16T00:00:00Z", "price": 84, "purchaseAt": "1998-02-04T00:00:00Z", "trialPrice": 17}], "Ow31PXkVnetcvAui": [{"currencyCode": "m14Wdh1qKoSDBbyq", "currencyNamespace": "lJyfVgaW6ziZF6ij", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1976-08-04T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1999-09-01T00:00:00Z", "discountedPrice": 80, "expireAt": "1981-03-29T00:00:00Z", "price": 30, "purchaseAt": "1998-05-29T00:00:00Z", "trialPrice": 15}, {"currencyCode": "OcoAcV0T2G3vQZNi", "currencyNamespace": "qaXzRBra3I4K9iBd", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1975-01-30T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1992-04-29T00:00:00Z", "discountedPrice": 73, "expireAt": "1982-04-16T00:00:00Z", "price": 18, "purchaseAt": "1976-02-17T00:00:00Z", "trialPrice": 6}, {"currencyCode": "BfAw30kOykBuDJ0I", "currencyNamespace": "PQeAL4MZwEVJe7wa", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1984-08-10T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1975-02-27T00:00:00Z", "discountedPrice": 81, "expireAt": "1999-01-30T00:00:00Z", "price": 80, "purchaseAt": "1979-10-16T00:00:00Z", "trialPrice": 74}], "iwtMOfDfoMgU2yFB": [{"currencyCode": "TPfnmfN5E20ORMCV", "currencyNamespace": "BTrkvObsiHQgt7Of", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1984-01-21T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1985-12-08T00:00:00Z", "discountedPrice": 56, "expireAt": "1975-04-27T00:00:00Z", "price": 96, "purchaseAt": "1996-07-31T00:00:00Z", "trialPrice": 95}, {"currencyCode": "RaQnNZQ1R0PGBFVn", "currencyNamespace": "c37aWVjM3iVKjr5V", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1979-01-01T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1976-06-12T00:00:00Z", "discountedPrice": 76, "expireAt": "1998-01-22T00:00:00Z", "price": 84, "purchaseAt": "1996-04-29T00:00:00Z", "trialPrice": 31}, {"currencyCode": "7GAH1oiS1JuO7MNo", "currencyNamespace": "FPtRhYYIpNqVHbbC", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1980-01-10T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1975-03-11T00:00:00Z", "discountedPrice": 40, "expireAt": "1988-08-29T00:00:00Z", "price": 36, "purchaseAt": "1988-06-08T00:00:00Z", "trialPrice": 99}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateRegionData' test.out

#- 98 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'hDjH6IYpfINzNjk5' \
    'V8T9pQjnGB83yonu' \
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
    'df21g0NhuYvwCATI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetItem' test.out

#- 101 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'Uep61ZsSiqW7I03o' \
    'SwCfYpN9jkLCsMYy' \
    --body '{"appId": "yhEyBfFFZwkC1PRj", "appType": "SOFTWARE", "baseAppId": "nXc29UDQxeiBo2hB", "boothName": "9u1v1POCjseK1xaS", "categoryPath": "bMjyFrYsITcyT5Ah", "clazz": "NNH0Ht1yPtBwXIuY", "displayOrder": 35, "entitlementType": "DURABLE", "ext": {"bPUcvEOJ4Pghksba": {}, "ThW37NTbz8HiRmuk": {}, "nvXiTP0KrWQ3pgbH": {}}, "features": ["n9jVE6QGkZ8AVzei", "M0Svy3GRenDzwlTE", "9Czhnck3GnyPFQHg"], "images": [{"as": "aDi67E3rTwN2LrT8", "caption": "5Arfe6EweJxWANt1", "height": 2, "imageUrl": "eFJ5QRuvEsU5Qkms", "smallImageUrl": "mfFhPTfXVzS3hFUX", "width": 3}, {"as": "KjLNUFQJgCWV7dj8", "caption": "I5eVnflH2hnMV6Yx", "height": 40, "imageUrl": "Eb2trPjqlB5c8a78", "smallImageUrl": "gp4BGN4NAydb6Ggy", "width": 65}, {"as": "bdw0sPrgDKqHCs5G", "caption": "TdTLCxJqK7dgsgrn", "height": 31, "imageUrl": "PAHNgVss4JzVKSus", "smallImageUrl": "dLumoHh8TQWYk2vD", "width": 44}], "itemIds": ["mUDwtTF1ATVQnAex", "rRomTZFHX4cgtkxE", "x6tlxks0yGW8qDWf"], "itemQty": {"r7MF8Ptq10XBhcJf": 67, "NJxCbLEhfrPxIRdb": 95, "TqKlcFcaL6XOoO3W": 34}, "itemType": "COINS", "listable": true, "localizations": {"KyZGtqWw67LheLDv": {"description": "wZjthGMOB4HFIzTl", "localExt": {"GBnpLBd02br9OfMb": {}, "jgS5WjduKixzScfr": {}, "HzGYC1TdLVDBDxK6": {}}, "longDescription": "laOkeLBcprByjUr7", "title": "w9w1xKUrLmQSkuEM"}, "Rzyerpya2oBjbgBh": {"description": "OdXE8y1PNIzbnPB5", "localExt": {"wG65f3ACfS3A8JeR": {}, "MYUCgn7oklNewpAI": {}, "wtlAooXZ7HDb8g2B": {}}, "longDescription": "hzW03O2pp9qVpZbs", "title": "ppRsBWQ7RdYqZaQ8"}, "swcFOshiWEFDMG99": {"description": "v5LSSkkEoAarkgZ7", "localExt": {"73cdzYhgH24VR4hJ": {}, "nsU1m6zryXmvvvPm": {}, "ueVVC0ymY7ABWgZV": {}}, "longDescription": "xM4rAqxlnHLAFNEw", "title": "XBsCkfqzKlzlLgHP"}}, "lootBoxConfig": {"rewardCount": 64, "rewards": [{"lootBoxItems": [{"count": 43, "itemId": "5iRWnREifOFJQwGP", "itemSku": "y5zGebVw9nLvVm8U", "itemType": "eFUbaGb5on2kvdeu"}, {"count": 60, "itemId": "J8KsgqGNM6sO7IUw", "itemSku": "Iv84zQjc88fKtDQS", "itemType": "bDQN21JlwPxpuUZm"}, {"count": 92, "itemId": "GVuI2Eihx6IJwMzU", "itemSku": "qM16MYY2MVvo3MMC", "itemType": "L4aV6oMUzpMmsvvK"}], "name": "TljWspMrC4TeRTNU", "odds": 0.8187466150795429, "type": "REWARD", "weight": 90}, {"lootBoxItems": [{"count": 48, "itemId": "N4wHLHx7FCWn7iOm", "itemSku": "KIN2roJNZmgEGzqD", "itemType": "HdLpDjLIhvCNlBRc"}, {"count": 64, "itemId": "JEyBVlQ5iHlTqgMz", "itemSku": "vj8sHLF7s3hgmxOO", "itemType": "zP7vteUYzMZzggFc"}, {"count": 73, "itemId": "JNHwfW76v6GPVwWj", "itemSku": "IfhOXemeTgiENbhd", "itemType": "RohucoiX0GAQZEbN"}], "name": "r6VtQiKwKuIHMjiI", "odds": 0.15409880689669953, "type": "REWARD_GROUP", "weight": 23}, {"lootBoxItems": [{"count": 62, "itemId": "qb7cexeEhHz7OKYN", "itemSku": "IMPTFnrbysdru1Po", "itemType": "tArVtIQyxp17b8SH"}, {"count": 45, "itemId": "DvjI9jfJFTHcHvAf", "itemSku": "osnCXqJplcwaBHIL", "itemType": "lCC7ovjEbjKrZ2d6"}, {"count": 70, "itemId": "hgijqtdzrvCDzH5A", "itemSku": "CyLXmLsHXWPqYBJT", "itemType": "zlt302k4rdWgWYgF"}], "name": "gw3mGmogCJXjHTGh", "odds": 0.3934590233409774, "type": "PROBABILITY_GROUP", "weight": 92}], "rollFunction": "CUSTOM"}, "maxCount": 71, "maxCountPerUser": 33, "name": "urSOWI2donULQokd", "optionBoxConfig": {"boxItems": [{"count": 57, "itemId": "iqKLavCF9yVeJJwy", "itemSku": "aY7Ho61RoV0VH7th", "itemType": "k8lnCROZodh1gbkb"}, {"count": 27, "itemId": "ELbdqXaPlAMGm4h3", "itemSku": "PbLHDa7uqaaxqXPK", "itemType": "uNAeKKjcKgU263Pa"}, {"count": 45, "itemId": "9eAGmM6lPAJMizuk", "itemSku": "Bmcy1kbAWDUac65J", "itemType": "dlm1JJwmCAjTwtCq"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 16, "fixedTrialCycles": 49, "graceDays": 46}, "regionData": {"m51AwCv4UKmP7ecz": [{"currencyCode": "fnYgOqXhJZ6DIokI", "currencyNamespace": "D1ZFk9fRCHfId0Dh", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1975-10-22T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1978-06-30T00:00:00Z", "expireAt": "1993-12-11T00:00:00Z", "price": 49, "purchaseAt": "1971-04-23T00:00:00Z", "trialPrice": 83}, {"currencyCode": "O0qs4FykFXDdcUuE", "currencyNamespace": "E9wh4CEOrPY29A1L", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1975-01-04T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1975-01-12T00:00:00Z", "expireAt": "1976-07-16T00:00:00Z", "price": 66, "purchaseAt": "1976-10-05T00:00:00Z", "trialPrice": 70}, {"currencyCode": "rcqzwGgl1SyrFazP", "currencyNamespace": "5g67zq7XCHkJzmy6", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1981-09-30T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1984-06-25T00:00:00Z", "expireAt": "1996-11-21T00:00:00Z", "price": 58, "purchaseAt": "1977-10-06T00:00:00Z", "trialPrice": 96}], "NiYaLYUlRZSLj5xw": [{"currencyCode": "mP8QMJJJn2Lqw6ai", "currencyNamespace": "KZbUJQ92BTViMMFj", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1981-04-15T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1973-06-26T00:00:00Z", "expireAt": "1977-01-11T00:00:00Z", "price": 46, "purchaseAt": "1994-03-01T00:00:00Z", "trialPrice": 16}, {"currencyCode": "N25xGSRRZnwlbMGh", "currencyNamespace": "eYVteLiiIKPjokv6", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1999-12-09T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1991-01-30T00:00:00Z", "expireAt": "1977-03-31T00:00:00Z", "price": 31, "purchaseAt": "1990-10-29T00:00:00Z", "trialPrice": 69}, {"currencyCode": "0sUSlEfC6ckbV2y3", "currencyNamespace": "2kG5QTZnpxYa2jDp", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1989-04-05T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1971-05-13T00:00:00Z", "expireAt": "1984-09-23T00:00:00Z", "price": 6, "purchaseAt": "1984-05-04T00:00:00Z", "trialPrice": 75}], "zlwFNJyyLozi8eBq": [{"currencyCode": "PD6pfcv9jGr7b2hH", "currencyNamespace": "baUEtBnsggbEVNmy", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1985-11-22T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1992-07-22T00:00:00Z", "expireAt": "1985-11-25T00:00:00Z", "price": 72, "purchaseAt": "1985-11-29T00:00:00Z", "trialPrice": 25}, {"currencyCode": "jUiOQVEbp3z13pDy", "currencyNamespace": "371QLVtDb6RZXatS", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1977-09-01T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1994-10-22T00:00:00Z", "expireAt": "1975-06-17T00:00:00Z", "price": 85, "purchaseAt": "1972-12-25T00:00:00Z", "trialPrice": 33}, {"currencyCode": "cEyfbUswXLyVVZqZ", "currencyNamespace": "pYAdyPafGBlwnYRp", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1995-10-27T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1996-12-11T00:00:00Z", "expireAt": "1983-12-18T00:00:00Z", "price": 43, "purchaseAt": "1982-02-25T00:00:00Z", "trialPrice": 38}]}, "saleConfig": {"currencyCode": "slvMllaEVugbCEif", "price": 88}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "zdUhB2YhKWidqRPQ", "stackable": false, "status": "INACTIVE", "tags": ["mShNaSmVFsmFW74D", "TNC1LAentTXWyBmb", "kabvmYAT6qTg6ZOa"], "targetCurrencyCode": "2Ir2yOaVvE1N52Pw", "targetNamespace": "deTQhMz99aZ3fza0", "thumbnailUrl": "rlzqNhVNwgXBCZr4", "useCount": 25}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateItem' test.out

#- 102 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'g8OWAT7d65hchXzG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DeleteItem' test.out

#- 103 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '4ffz0lXBDbBGrYGl' \
    --body '{"count": 9, "orderNo": "KR0ItcCnXFRjhk7t"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'AcquireItem' test.out

#- 104 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'zIHqZpgJqlw441XU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'GetApp' test.out

#- 105 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'fp7AVnf8BzBBqEvM' \
    'tJopw2r5pKsXnIYk' \
    --body '{"carousel": [{"alt": "KH6MNrEsOlIFw6Fq", "previewUrl": "a6YXBlVXOvZUgW2Z", "thumbnailUrl": "MVJhOyVaO1sgnJF3", "type": "image", "url": "EULHtVtkZrE0YPmt", "videoSource": "vimeo"}, {"alt": "maZGxrhAPoREvGmm", "previewUrl": "bGW3SttwZrmKkREJ", "thumbnailUrl": "XucN3IEt8vZSqh6S", "type": "image", "url": "Lws9RV6lY9IGsZjU", "videoSource": "vimeo"}, {"alt": "lM52jb80Nlw8icwW", "previewUrl": "RvvZB46NCiqdleq2", "thumbnailUrl": "jCNZAKjBlI9fsL6H", "type": "video", "url": "6cxtjNTXsCsfA2pI", "videoSource": "youtube"}], "developer": "zC6nrUavXt7t0lls", "forumUrl": "H39PXWtk222GY7L5", "genres": ["RPG", "Casual", "Action"], "localizations": {"P7drhfBjZFgaGUfh": {"announcement": "y5TZFoyfZ0XfCxPD", "slogan": "cH66JWKmTRqrvfJI"}, "rFQWIDC6PHVsnUue": {"announcement": "Yd49OFDlbdIrxqxA", "slogan": "tw8vLsYBHN6M7Opc"}, "FqK4FBJG8BfuSzyt": {"announcement": "kPE6mw3Zv0zD14Ws", "slogan": "Qt5oimAfS3Sh33Tu"}}, "platformRequirements": {"fYVdPwYmvZkT3zo8": [{"additionals": "gxMqM1wUdXsMjUbh", "directXVersion": "RjnDrYWlRfPpgHg3", "diskSpace": "6d9NP5nNvzIlwtYI", "graphics": "9wKX9V1XxF2CFfEp", "label": "f0qN2twLYXq4HSEG", "osVersion": "paUMmdPXWaJRdn3W", "processor": "MdrhlWqCc54JfyGz", "ram": "MMHiVQ6covYDuI4l", "soundCard": "1d9YaLVuL1mLP65p"}, {"additionals": "Id36F25c13PNqPn7", "directXVersion": "XRlnqiWP9WWQMGmm", "diskSpace": "0biVjE8A3EsOz8LD", "graphics": "nxgL0t7Qhdw4vmSx", "label": "nJcyaijSCsFa6ipR", "osVersion": "u1AaFjz0yLelzMzW", "processor": "iPzugdDu6rxIv2ZM", "ram": "tZX5KZK53tX2oxmE", "soundCard": "DDgGBgPWHmOLBLls"}, {"additionals": "w2pDJDLeJwzbVEEQ", "directXVersion": "0D6RcLpRxXCStzvO", "diskSpace": "yY1tNKAVWv5cGRm3", "graphics": "WTx0oyOrycewrnLB", "label": "AZlvnOJeNxZdT1fZ", "osVersion": "JTutZpZZn6egDbFD", "processor": "XW3N42ccGURTnJUd", "ram": "R3MUQnEeANANjqBd", "soundCard": "fMMU89e6CIBWn2Q3"}], "kMtF5tiwPCAxM9oF": [{"additionals": "cQUp7hrvKVNdGrr2", "directXVersion": "TTTiTt8oRoQRf0A1", "diskSpace": "eAJUZSjWUPA9vXrq", "graphics": "LxUCyNQUITTM8jU9", "label": "tfr6NkPjb60b0Y8R", "osVersion": "DVgsQzaeOv7xB8Gl", "processor": "NYJeVVZQH5C76Gae", "ram": "CobrGOAvaYctXd3j", "soundCard": "NOlJBjBMsJisMu1k"}, {"additionals": "QcGm0x3DmUahjPVD", "directXVersion": "OEmwpWiJYxvvQCHI", "diskSpace": "reoYDgNe1RyydtCB", "graphics": "znu3BT2fe68sGXFy", "label": "lcwoCMa2D9QtE0TK", "osVersion": "RHukM2BVMu418S3o", "processor": "2DKmAp8kt8156L7W", "ram": "l7UfG3PbsgYDgJ0J", "soundCard": "RrcPbe1REA4kpxN9"}, {"additionals": "tCjk58n5fBl9xiCZ", "directXVersion": "H2KBHwuAW3jLkVq9", "diskSpace": "bAefBF8tiF7mi3iO", "graphics": "rnB83a6h6dNfg9f2", "label": "5YsZ1L6IGHuO7u2t", "osVersion": "OUpmu6zULXQMirzw", "processor": "MshTQYUnfHWyBg5c", "ram": "3Wq2dGygLo40eCb8", "soundCard": "2j4OhaAiWk4TKx1W"}], "RjiCokzg7q7bMwxV": [{"additionals": "AujRx0pyulY8igLW", "directXVersion": "A7yUanMI437Ne6Wv", "diskSpace": "RNtbN9Eos8o1PdTD", "graphics": "qm0SXzXNqw2oEptJ", "label": "sPYgvPnAlN2mJeW1", "osVersion": "LQJ8A7NZLQPAny29", "processor": "oO2B8osfAcB6Pd2u", "ram": "PwzliHiPYuwUtR55", "soundCard": "gCTACz3aLd0f0QGk"}, {"additionals": "woIQo88hLxgR5AJV", "directXVersion": "Ez4FiSPgU3FLs6Lb", "diskSpace": "IwwxFBW1RyUyU8GV", "graphics": "L2TVivHbcJX1mqJ4", "label": "BtZCHdlmOzx9DrwT", "osVersion": "5dJMDgZPQtuRIVY6", "processor": "9dhSr3JiNweUidBV", "ram": "B2vTyC482FeT76mW", "soundCard": "yDrmG0FHQOjtRg7S"}, {"additionals": "T2UVRJN0qFJaGDiD", "directXVersion": "matCvCembJFNyIwx", "diskSpace": "Pt19hjyI7ALyZHQ8", "graphics": "V4AejtUM6llcl5hd", "label": "ZoPhVcQ4wXeArPe0", "osVersion": "89cqMuV8MLxiTO3G", "processor": "hLJ2qx2h93yz3Y7Y", "ram": "tgdQMhzpcpwawMF0", "soundCard": "j9IirMeP7fy5Y0Ri"}]}, "platforms": ["MacOS", "MacOS", "Windows"], "players": ["Multi", "Multi", "Single"], "primaryGenre": "RPG", "publisher": "1kpSeRooa84wgi9Q", "releaseDate": "1975-07-18T00:00:00Z", "websiteUrl": "yEemJDvokY7UUVCH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'UpdateApp' test.out

#- 106 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'GWcVrHG4ehIhJk59' \
    '7xUXpiOLFQFxY4AH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'DisableItem' test.out

#- 107 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'LzQnClUtkXb0SoML' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetItemDynamicData' test.out

#- 108 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'qijtgLSGTnWHCZ6X' \
    'wqnOeIUKAIvQjUxt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'EnableItem' test.out

#- 109 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'k82oOOkHmCFldZ0X' \
    'AvFitLhI0sqjfua9' \
    'x08SJmn2gM2q6wua' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'FeatureItem' test.out

#- 110 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'Hlnk9AFkbwVa7DCV' \
    'egPEDDuHxwEbPLfn' \
    'jlMfDJxP4S8TNhXB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'DefeatureItem' test.out

#- 111 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'TiwS2sBodn1p1MJr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItem' test.out

#- 112 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'Zv1itpBPRbtgUMFA' \
    'cxhrY80cxjAXFOLY' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 35, "comparison": "isLessThanOrEqual", "name": "tzrSIfMjxzBwWKzJ", "predicateType": "EntitlementPredicate", "value": "wcYLuVxqvaL6vdJr", "values": ["2SElOn16dw0nzH9X", "MG2c5BWrzKJ0Lj0V", "0yQVV1r0LACcKuAd"]}, {"anyOf": 80, "comparison": "isGreaterThanOrEqual", "name": "zr8kTl05oiubu5HH", "predicateType": "EntitlementPredicate", "value": "aQRTMzFLsBDzdO8I", "values": ["a2qLo5spq850ZKnX", "wGdLKPo5zR4q58Tk", "3Inv5lG8WEklkFFk"]}, {"anyOf": 73, "comparison": "isNot", "name": "Pn2yomTQth1iJOyD", "predicateType": "SeasonPassPredicate", "value": "JCwufYAURyXVoJ9q", "values": ["fL2vrevlUaCgxl01", "4GJDWklFkqhGFAox", "Eel6x5O5otpujfw6"]}]}, {"operator": "and", "predicates": [{"anyOf": 60, "comparison": "isLessThan", "name": "UYo37I8Mgh1DJARp", "predicateType": "EntitlementPredicate", "value": "PzCXwpgD8MOfYXcl", "values": ["jy6EB8dB8wCiYq2y", "hkPLKDhdMf1o4pwe", "16Jp7HjPDG07Xwug"]}, {"anyOf": 51, "comparison": "isLessThan", "name": "Qyv10mRO0tK1CH6o", "predicateType": "SeasonPassPredicate", "value": "pLOyrgsLZV9arTxB", "values": ["2ar4zJmB2wifDA7L", "SHLipk5N6e79zCfL", "gnOqH9lyv8wx2Jos"]}, {"anyOf": 32, "comparison": "isGreaterThanOrEqual", "name": "ND5zXLhrmEeBwTzs", "predicateType": "SeasonTierPredicate", "value": "QmLReEZ0r6n6anry", "values": ["oVkl4tChuDibBIH1", "dyZPHtYHKqpl1Xk1", "CdFvYqfoYzBc16XX"]}]}, {"operator": "and", "predicates": [{"anyOf": 42, "comparison": "excludes", "name": "oJGXCyzA8a5uh1Ld", "predicateType": "SeasonTierPredicate", "value": "k2ZOJHBnYPNYKWhY", "values": ["eBHRe7JBlzH9CrXX", "7cBfnjlfFFTD6KSE", "LsAlPZs4v14XFGIV"]}, {"anyOf": 9, "comparison": "isLessThanOrEqual", "name": "2x00SvR2yNPms1Dd", "predicateType": "SeasonTierPredicate", "value": "L5bc6QMB9TtHXqea", "values": ["AQYJnB9w4rkop7LL", "HYaW7BAFZnpxmzs0", "YlaYm2XGN51wxYTC"]}, {"anyOf": 29, "comparison": "isGreaterThanOrEqual", "name": "XSsR3HPQNrtkf3M9", "predicateType": "EntitlementPredicate", "value": "Zej5voHh0KRDJjPE", "values": ["a72ji4B86NKZ0tkE", "WAqM0EZhtIp1XL7H", "F1LpvoOxT54t5Ffn"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'UpdateItemPurchaseCondition' test.out

#- 113 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'L2nKoPXxLMtU6hLl' \
    --body '{"orderNo": "iy7em6ox8O9f2ojE"}' \
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
    --body '{"description": "QrZ645LOpaGFJniJ", "name": "l9RPULWpWw5UQBld", "status": "ACTIVE", "tags": ["lL5KfkSA0amHSK4S", "z7fbw7cgHHvIEPvq", "jKVvPP5x3gf1HnOz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'CreateKeyGroup' test.out

#- 116 GetKeyGroupByBoothName
eval_tap 0 116 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 117 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'yuw55KAICc0N5Aqn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'GetKeyGroup' test.out

#- 118 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'aH49QFksDAGUgVcY' \
    --body '{"description": "dzd3mUKKxi2anNFp", "name": "YXwE37QpBIY8LEEt", "status": "INACTIVE", "tags": ["Uzpliq50demc4rS3", "d2v2ibO04gNmB9r9", "MA5lA6x0lY16PWsr"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'UpdateKeyGroup' test.out

#- 119 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'sxYq77iFOu0ybeoE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetKeyGroupDynamic' test.out

#- 120 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'RsKMCPmtnE1aHAuV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'ListKeys' test.out

#- 121 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'ZKYNaKhi81nO4RNj' \
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
    'vO8rZ5NL7EbburWc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'GetOrder' test.out

#- 125 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'SjdGGqd31L6KqJTL' \
    --body '{"description": "11T4vlBRDjj3FKvR"}' \
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
    --body '{"dryRun": false, "notifyUrl": "guqDEJfdxsQXLRJR", "privateKey": "ONKh0R0RXJ6anzAe"}' \
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
    --body '{"currencyCode": "qD1HlhQ1rqjRECHy", "currencyNamespace": "hLYGnvEdCjYsnh0Y", "customParameters": {"0rQluvKziVTCPTrq": {}, "Hc7vqaXxxiGOrXbW": {}, "C2k23JxAI3kOXwHn": {}}, "description": "S2VOESYx49M1JdtI", "extOrderNo": "mLI5eTuHqCNtVlNa", "extUserId": "GzoqpAFVT8PkW7ou", "itemType": "OPTIONBOX", "language": "jV", "metadata": {"jskCHfqF5uo9BT2Q": "qCxWZGjDRc27d9a3", "AaZO1VcAqwHJEyMr": "wNINM4zHFF9ucrEc", "YD5hjgrxoEVEIkvp": "WupGhtaU3oC1Ly7x"}, "notifyUrl": "HbAN2Bdv1CfQOijh", "omitNotification": true, "platform": "qUjELC82uP1nMUDA", "price": 74, "recurringPaymentOrderNo": "sjuIsTXKAQ4uWLCM", "region": "gN7rU1yiWEODovRw", "returnUrl": "zU7QiANYIF1YbEZw", "sandbox": true, "sku": "9TNqSiFJyMByoRKU", "subscriptionId": "rvfixr7UFzLzGaWo", "targetNamespace": "k215MnSNTPMRaYf8", "targetUserId": "Chh5tiLsXIOSE2JS", "title": "DRlSX5uOgZ3Msm86"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'CreatePaymentOrderByDedicated' test.out

#- 131 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'Jr35oZQ3WcFld5DK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'ListExtOrderNoByExtTxId' test.out

#- 132 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'wJoCrYrlOXZN7MoQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrder' test.out

#- 133 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'ZDN1sjuHXDU9ZFHI' \
    --body '{"extTxId": "SuKMr6e9VKi3lHZd", "paymentMethod": "nYzFYEnOA6gFO3zf", "paymentProvider": "WALLET"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'ChargePaymentOrder' test.out

#- 134 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'vvmLgxlU5MdUdF7g' \
    --body '{"description": "HdIf6eMd0iVUmBrF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'RefundPaymentOrderByDedicated' test.out

#- 135 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'wFIESxo8uFqKtoZi' \
    --body '{"amount": 97, "currencyCode": "8JndNzIiCZiPRCuj", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 18, "vat": 31}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'SimulatePaymentOrderNotification' test.out

#- 136 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'a26Ygd7A1555Biel' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'GetPaymentOrderChargeStatus' test.out

#- 137 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'GetPlatformWalletConfig' test.out

#- 138 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["Twitch", "IOS", "GooglePlay"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdatePlatformWalletConfig' test.out

#- 139 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Playstation' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --body '{"description": "wN81CLC324P82gds", "eventTopic": "Ob5Jp6oxvvtB4air", "maxAwarded": 8, "maxAwardedPerUser": 91, "namespaceExpression": "JSZc7Cojp07DFR7I", "rewardCode": "vEhnKAMSw1WGHPO2", "rewardConditions": [{"condition": "2mCj7yFmbpItmTcM", "conditionName": "VUlRoYFks2ULHooi", "eventName": "sOHhyiZyNxeNJcBI", "rewardItems": [{"duration": 9, "itemId": "dn8X5IZjtFT6Bs8O", "quantity": 83}, {"duration": 21, "itemId": "CVqXF6bMzRd2Z2Wj", "quantity": 42}, {"duration": 57, "itemId": "tGAptSES09ZcFGPC", "quantity": 29}]}, {"condition": "7DKPLLTcjU87C2CA", "conditionName": "KbiD5PxA5v9644D4", "eventName": "d5jTjzZ8KpdOxrQ8", "rewardItems": [{"duration": 35, "itemId": "5T57ICJiWEPnZsQ3", "quantity": 81}, {"duration": 37, "itemId": "d9kC9MEhGrQVQ3yK", "quantity": 58}, {"duration": 77, "itemId": "wV9chX3evM1seGH9", "quantity": 46}]}, {"condition": "gdwQnMuReen3aYjh", "conditionName": "ar5GRzOAfOXbaEHF", "eventName": "X0sySxhkhCpV5A2Z", "rewardItems": [{"duration": 77, "itemId": "KUABS8cyK8SnSvsU", "quantity": 68}, {"duration": 4, "itemId": "LqYJevKKJR5KWRgH", "quantity": 42}, {"duration": 60, "itemId": "LJEAS7pSDlIS4N3V", "quantity": 89}]}], "userIdExpression": "doL4tB0FUpx5TLio"}' \
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
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'ImportRewards' test.out

#- 148 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'j3grgVdqSpg9xpXC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'GetReward' test.out

#- 149 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'h79kxpJyTba2Sx7l' \
    --body '{"description": "PUWhfLYtrkZ2V3jz", "eventTopic": "XzilslRzP96yJ7Rb", "maxAwarded": 20, "maxAwardedPerUser": 12, "namespaceExpression": "fkG3hcRbcSuSkd72", "rewardCode": "wzQJjmhy4f9F9usH", "rewardConditions": [{"condition": "1ByGD8DDRW0KNwlK", "conditionName": "cveutOHZ2aWSL11m", "eventName": "sU7QpcpkApFODOqz", "rewardItems": [{"duration": 67, "itemId": "FKRWcvJIwzW53tKi", "quantity": 26}, {"duration": 49, "itemId": "yxGcMcYyromMVFEa", "quantity": 94}, {"duration": 85, "itemId": "Lz3hmDX1C9gHM8SS", "quantity": 70}]}, {"condition": "3LrEja3XlbCcD2bQ", "conditionName": "LuFwHyfWs9J4OjFm", "eventName": "6OQMQgWL3hmjUyds", "rewardItems": [{"duration": 13, "itemId": "4T37n6lgMV9tMXN2", "quantity": 21}, {"duration": 5, "itemId": "Dg7INFTJO4FUT152", "quantity": 52}, {"duration": 56, "itemId": "R0PBTEvM3TgMsAS5", "quantity": 41}]}, {"condition": "xshOyL8KXBfLq1zW", "conditionName": "LmtFhefMqfbE0DZB", "eventName": "wK4s4YGhc9qjsGze", "rewardItems": [{"duration": 7, "itemId": "wsfzatv4JzfVNAJb", "quantity": 92}, {"duration": 49, "itemId": "LBzqs2u1EntDzkQL", "quantity": 13}, {"duration": 69, "itemId": "WQHXc3bRYKbJGFP8", "quantity": 70}]}], "userIdExpression": "GGIRRLbsmgDO0TIQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'UpdateReward' test.out

#- 150 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'bgg12LHWqVdQIiLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'DeleteReward' test.out

#- 151 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'N04Qo69tjPCe7O06' \
    --body '{"payload": {"1ScAQ7gSO3GHo6ES": {}, "wn8otu3o1B2P8cdP": {}, "JAnmCFUZdH9CHHoz": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'CheckEventCondition' test.out

#- 152 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'Rud9g15dSBhpLRxy' \
    --body '{"conditionName": "dIE1CQFSQS3RD8Q6", "userId": "YcgyTtSOU4FdUceG"}' \
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
    'tntm6j0Apyricmsk' \
    --body '{"active": true, "displayOrder": 81, "endDate": "1975-05-21T00:00:00Z", "ext": {"j1bUAIrKYw673JvA": {}, "3stZ6FN0omme6HiO": {}, "rbuq9cXar8FKACMf": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 35, "itemCount": 62, "rule": "SEQUENCE"}, "items": [{"id": "J2aMIxqQycDpbOcY", "sku": "im2syYc8YuKlQjnj"}, {"id": "5QjrVi62ITQp6Nkl", "sku": "XSUYkHNYqepadIS0"}, {"id": "zRgire2ntrz0FUDX", "sku": "jV0GmcFSjmJGQU5Y"}], "localizations": {"RHjMz3bo23SF3Xkw": {"description": "dkgeNE7pA2BmAcot", "localExt": {"g9A9VvbcAi4ZmdXz": {}, "2NXfbCObijIWdRSD": {}, "Sq6oIY8wqc2Ocvjg": {}}, "longDescription": "gLVwAQMWoB0LkwHK", "title": "KIT2D8YJKnP2TmDS"}, "wAt1UGNieMe0c6eA": {"description": "8xCvVNgS0wUvETmR", "localExt": {"wwaH21xuey3fB1KN": {}, "5EzSmB6aO1Jqypof": {}, "IkM1Wvc2CcOra4RX": {}}, "longDescription": "enU5naN6UuNARNfA", "title": "4hpoNUAwafK1QxxK"}, "2sBBkQz8nIgoYpZY": {"description": "IYto2cpXUnj1kXAE", "localExt": {"nU9CvpIjJ6tB2fqN": {}, "6D76apW4CsuQx2nM": {}, "E1E8lGIgW2AWqhlJ": {}}, "longDescription": "fHgWSAjBmziLkAEW", "title": "kqMo2uv4G0hb2TC5"}}, "name": "zbxqSMQf3ZXRgmEX", "rotationType": "NONE", "startDate": "1987-12-10T00:00:00Z", "viewId": "YJ3NLSVOdqFxY9j8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'CreateSection' test.out

#- 155 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'P8IFwNKh0Zni7P6Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'PurgeExpiredSection' test.out

#- 156 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'fRFkQolDEtyxyMGw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetSection' test.out

#- 157 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    '4ZEIMYFaIEr69zjn' \
    'PKVLZ59QuwBbW2xX' \
    --body '{"active": true, "displayOrder": 93, "endDate": "1996-04-11T00:00:00Z", "ext": {"tMMb9e3S9biXun5f": {}, "D0BBCts02Kgz1gL8": {}, "2ANle3vQP0F7CVBR": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 82, "itemCount": 36, "rule": "SEQUENCE"}, "items": [{"id": "8D7APHhihwdNSBKp", "sku": "qJ8V1kQHisGldXgq"}, {"id": "a99UNyHIlnrLOesU", "sku": "oAwwCO2c7aEAHcpd"}, {"id": "x91UabvNvRaUrUqT", "sku": "cFsGXxjR7vTeNdfP"}], "localizations": {"VWmEdVFXX02sJsXg": {"description": "7AKOu2Xk8T0sqdmD", "localExt": {"20rolfU1yEokwoBS": {}, "fRPMdPXru40VmHvp": {}, "aJ6EFG9wLOlD7N2G": {}}, "longDescription": "NQs0IgMAbRc0I82p", "title": "jV4UBb0pZrHFxE9E"}, "AcMe8RHXnsxazB0s": {"description": "0OGtkrGuIEzLqOEq", "localExt": {"dEcHbFrNLqqyBzPW": {}, "vDsw3y3noSTunCZN": {}, "39o0vZqaSrHfwrqq": {}}, "longDescription": "HXHpPnC56p62cEYB", "title": "MPDDNvuy4MWHW8YW"}, "1euC0ubVpUB9WTnY": {"description": "HGmKeMnGn3hXTX65", "localExt": {"W9y7jKRgCFKj2fpa": {}, "EDgvMXedU0CtjH3U": {}, "PJy3CnYG5ypxMPXQ": {}}, "longDescription": "b9Aa9QMoQgjOf0by", "title": "uj8Uxptb2o5jdTre"}}, "name": "VKh6flE9FaNdFDCH", "rotationType": "NONE", "startDate": "1984-11-14T00:00:00Z", "viewId": "N48A5DLkL19tXrv2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'UpdateSection' test.out

#- 158 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'bC14hfBeKISP0coy' \
    'LHG52kcFEHKN66TO' \
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
    --body '{"defaultLanguage": "zJSyl83HhHTDHO8m", "defaultRegion": "QoGOS84jEVRGn0aQ", "description": "HrmMgGX6WiX9WPUE", "supportedLanguages": ["wP8KagnEKkfRnTAD", "7nNuqrknaj1Fks8O", "hmWshFK5hyfwqkxF"], "supportedRegions": ["eK2HSaUyXEOQUwXD", "X8MGlijaR3VVk7nD", "09WBTm7Hy1AvjH8T"], "title": "O5OIzshGgQ4ThugQ"}' \
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
    'FOWwlpo3MnSMNdjV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'GetStore' test.out

#- 167 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'tLt8CrUFIkcZk3UE' \
    --body '{"defaultLanguage": "aPstaXtLCGf6Pjb7", "defaultRegion": "W28XF9eX2LXwaZwD", "description": "M1CYDLmaPDEUbDvB", "supportedLanguages": ["Unl1NO7rLa2XTR4I", "EvU0JE2kLOQb2CBE", "oV5Nm182ykfY01Gc"], "supportedRegions": ["ykfqRyXIVnis4SKj", "pYMZV5AVm0vOTpy2", "xyajHMUnKflmcC3p"], "title": "OWLT8ckEy2SMQcmx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'UpdateStore' test.out

#- 168 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'ebThGYrgNOimVrZz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'DeleteStore' test.out

#- 169 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'kyKHvwa7cbRj2at5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'QueryChanges' test.out

#- 170 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'ZJSh02srNNRw3Y1j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'PublishAll' test.out

#- 171 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    '6viZbWeu0WyHCl9X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'PublishSelected' test.out

#- 172 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    's4E416s1Oq4B0c6h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'SelectAllRecords' test.out

#- 173 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'cP5jLY1KxbFbyzOe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'GetStatistic' test.out

#- 174 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'PaXR3ub0i4catfNO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'UnselectAllRecords' test.out

#- 175 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'lhlYHQh4VgYhBaVD' \
    'BRlLxoAzljrhdaWN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'SelectRecord' test.out

#- 176 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'Qoeso9mKjTRboTLj' \
    'We4LfJee5PI5dFv5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'UnselectRecord' test.out

#- 177 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'buhIZ4eMnCDQFCYc' \
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
    'yYCi2g6s9FQKCfcu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'RecurringChargeSubscription' test.out

#- 181 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    '923YpsdjtVRUIv3u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetTicketDynamic' test.out

#- 182 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'IM3CoS6JahcK1Pr6' \
    --body '{"orderNo": "BT8bcW21yKVRUAUf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'DecreaseTicketSale' test.out

#- 183 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    '5lebfPenWUEBZC8k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GetTicketBoothID' test.out

#- 184 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'eF5vI1QiMb8GRzCE' \
    --body '{"count": 94, "orderNo": "vYZZABKOA0L11TgH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'IncreaseTicketSale' test.out

#- 185 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'UfODRocsLmBbV1sC' \
    --body '{"achievements": [{"id": "NpADwypkoh2Ufv88", "value": 45}, {"id": "X9fjEzscuFPv5tNX", "value": 100}, {"id": "0bKW5QYtGAVQvqyI", "value": 97}], "steamUserId": "udrudTuIy3VLkd3Y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'UnlockSteamUserAchievement' test.out

#- 186 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'Gg9Bzi8uluQOBuTu' \
    'YNR4hzPkGOuDvT1k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetXblUserAchievements' test.out

#- 187 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'GGvspIGcvW7T4dk3' \
    --body '{"achievements": [{"id": "MBzfrSZGlXPukj7q", "value": 85}, {"id": "MjU2f4833bcUoBfW", "value": 77}, {"id": "Skvb8lbFBtF0ILnx", "value": 7}], "serviceConfigId": "0Bapd2WF3ACWSPCO", "titleId": "IejZfSnIavouuFpq", "xboxUserId": "cq4Gd9fk7fhp8GNM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'UpdateXblUserAchievement' test.out

#- 188 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'EX4Ps5vorNX6W3h8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeCampaign' test.out

#- 189 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'ItD6AFXbQvGbKVlE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeEntitlement' test.out

#- 190 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    '5VulHAZZ2SKo1C0k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeFulfillment' test.out

#- 191 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'tvmekdbic6I2n5Hc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeIntegration' test.out

#- 192 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'lx6xvlDEhlvzVBqt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeOrder' test.out

#- 193 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    '9fNnODJKrDdt60vG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AnonymizePayment' test.out

#- 194 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'd1u3lR0fkCW4fYJA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AnonymizeRevocation' test.out

#- 195 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'HmuYyTZt7v3mvPol' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AnonymizeSubscription' test.out

#- 196 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'aFeEWrqYB9hLG74Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AnonymizeWallet' test.out

#- 197 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'Ms1JCrpnpPPUyyCN' \
    'STEAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'GetUserDLCByPlatform' test.out

#- 198 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'sCWhJPpmpjibu6WM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'GetUserDLC' test.out

#- 199 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'YMScWAzVVdQZznMU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'QueryUserEntitlements' test.out

#- 200 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'lqj2djHHFFRxJPvH' \
    --body '[{"endDate": "1973-08-17T00:00:00Z", "grantedCode": "wpv9IeC6LAtGzNwZ", "itemId": "Ue0kRnfBio030WDt", "itemNamespace": "RFRReZoX0eYwpjuQ", "language": "OONY_unHR", "quantity": 18, "region": "I6ZeDWbxHSLn6kQx", "source": "PROMOTION", "startDate": "1975-11-02T00:00:00Z", "storeId": "9NFQFpBDG4baNqdG"}, {"endDate": "1983-11-23T00:00:00Z", "grantedCode": "57Ra4Wlon8ZzeHga", "itemId": "bbmT81jfik6ShLjJ", "itemNamespace": "bf174MCR5ZpvlWXR", "language": "cf", "quantity": 95, "region": "Iw9mkjC9qXOVUNHt", "source": "GIFT", "startDate": "1972-02-27T00:00:00Z", "storeId": "LsKN46XLNfQ0SXyM"}, {"endDate": "1994-03-25T00:00:00Z", "grantedCode": "ygZRBzJUpXr5ZkwY", "itemId": "PLnvikBnp1ILBujZ", "itemNamespace": "h8S62GO32C73RnfI", "language": "dYT-zN", "quantity": 28, "region": "aRP8vZ9a77wOP10A", "source": "ACHIEVEMENT", "startDate": "1988-05-08T00:00:00Z", "storeId": "1PJybUmpLmiuZGk2"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GrantUserEntitlement' test.out

#- 201 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'Gg0Um3ITROznZA6E' \
    'VEXEqkFFyGp6XhgI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'GetUserAppEntitlementByAppId' test.out

#- 202 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    '2SuEyr4hactAHdK0' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'QueryUserEntitlementsByAppType' test.out

#- 203 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    '37X9HTu6c4mMUdJo' \
    'KmyaU7qTgHxGQ4Dm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlementByItemId' test.out

#- 204 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    '2YoSLUIzzQsIU3IZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GetUserActiveEntitlementsByItemIds' test.out

#- 205 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'f93pQmmWWhMnRSn6' \
    'PRk0DwXkYJ6aX6XR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementBySku' test.out

#- 206 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'SXg6OXqwh2Uj0IZZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'ExistsAnyUserActiveEntitlement' test.out

#- 207 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'FXv7pY5cNIYdQRni' \
    '["6IfH05hVdagEETj8", "DNzQF9Ywa1VlJBmS", "CpF2z5O9ugNuq4uG"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 208 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'u9km7KeyQB3SUe4u' \
    'g9J3KKHHaSwFS7fA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 209 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'GmA4gy2QBm02aTdg' \
    'p0WcRdrrdOKQbXXi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'GetUserEntitlementOwnershipByItemId' test.out

#- 210 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'Mg5RAaD5a0gqyaku' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'GetUserEntitlementOwnershipByItemIds' test.out

#- 211 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'ryISjsrHy7SSarFs' \
    'Jyanoth2jhzr7POO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'GetUserEntitlementOwnershipBySku' test.out

#- 212 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'jzRzlmVmpfmMq65n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RevokeAllEntitlements' test.out

#- 213 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'YpNAwv9UsvPaX8W0' \
    'GvPN7gRfsySRn2FX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'RevokeUserEntitlements' test.out

#- 214 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '0Ac7CzuPXE90ufrB' \
    'aS458bBTbcqQVkSI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GetUserEntitlement' test.out

#- 215 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'XLGF8dtk8bqcPfBJ' \
    '9GOHxUkZCvqVRe3F' \
    --body '{"endDate": "1981-02-27T00:00:00Z", "nullFieldList": ["EGvZd49hW95i4Rm9", "sBef6ymEEU6G6YVa", "5GGFvLtWl66DAEkA"], "startDate": "1982-06-04T00:00:00Z", "status": "INACTIVE", "useCount": 33}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'UpdateUserEntitlement' test.out

#- 216 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'VUxkCG4IGPYHaRvV' \
    '3JGi5l0G5NBtXVTX' \
    --body '{"options": ["K1JdoClQQGLneKl3", "iXOvSGgZzuoTiOgT", "4AtBZJsMBPDcUuWC"], "requestId": "1NgHaxQlxs2MPGkL", "useCount": 10}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'ConsumeUserEntitlement' test.out

#- 217 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'zsR2KwSIl0Un3PT2' \
    'bVzOt2J0VxSVRWxJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'DisableUserEntitlement' test.out

#- 218 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'w7idbmOx0vyaMbcn' \
    'lyBvXdpoYVZKx8oP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'EnableUserEntitlement' test.out

#- 219 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'BJncKdyabXymlDvb' \
    'cApuoA5PCdXT4YD9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementHistories' test.out

#- 220 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'fDzx1WPpvLBMMNJG' \
    '6TuQ90jhJCrrsBPv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserEntitlement' test.out

#- 221 RevokeUseCount
$PYTHON -m $MODULE 'platform-revoke-use-count' \
    'GhWiPLLd5eChF7cg' \
    'ujItr2ZFjL5qUyim' \
    --body '{"reason": "mVzOJYebI5Egye4C", "useCount": 20}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'RevokeUseCount' test.out

#- 222 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    'hNxwnnpoM2KSoHlp' \
    'DFImJNovlZq1O6RD' \
    --body '{"requestId": "UgilQHCts6SUNxUW", "useCount": 71}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'SellUserEntitlement' test.out

#- 223 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'JMvkh08NQQhBIt2H' \
    --body '{"duration": 11, "endDate": "1992-06-26T00:00:00Z", "itemId": "dBAVfIM2oLFaTIhv", "itemSku": "5XrQvTAdisxP0Dyx", "language": "qSYeCl4gEZgIMDAL", "order": {"currency": {"currencyCode": "a4nsITUeFKNh8kgm", "currencySymbol": "MjBxD74LujtGQD9s", "currencyType": "VIRTUAL", "decimals": 76, "namespace": "IUdIqmVvmcAsPgT6"}, "ext": {"XUEeRKSDbomdWWRi": {}, "7OHZeGP4o1Tgbe8J": {}, "8xso71ULeHVV40sj": {}}, "free": false}, "orderNo": "w4Rr3lmeyijwD3pY", "origin": "System", "quantity": 60, "region": "oKfBV4CX15snBgmf", "source": "GIFT", "startDate": "1983-07-19T00:00:00Z", "storeId": "Y5zPZKMd5ItnXbDb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'FulfillItem' test.out

#- 224 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'XW9KlfgVvjjjExRk' \
    --body '{"code": "4JHYGa2nnyqvFCYJ", "language": "ekLW", "region": "AkZ8CS09fFrbdreg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'RedeemCode' test.out

#- 225 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'ZfA6pBIXqoaoYoHc' \
    --body '{"origin": "Other", "rewards": [{"currency": {"currencyCode": "OZbA1UGLox4eJuvL", "namespace": "mou5AtB5J9XxYqy0"}, "item": {"itemId": "HcWUCcahA1tjiBug", "itemSku": "kSmA8prRvnuoHm9f", "itemType": "oRLP4zSxApJe0apl"}, "quantity": 88, "type": "ITEM"}, {"currency": {"currencyCode": "ixS5Es3u4km3iKiN", "namespace": "LRNa01SihgZby9mB"}, "item": {"itemId": "dGrJY5J0e9jWcVTC", "itemSku": "Nxjdv8GxhJoB4lAk", "itemType": "bm1Abh9QxLBfhpOp"}, "quantity": 11, "type": "ITEM"}, {"currency": {"currencyCode": "lDmFYNBSDEgsUMik", "namespace": "j8NQNDlhAhwAc8mP"}, "item": {"itemId": "ZRllengCdfKGCBZM", "itemSku": "AbJnqDKuBGWmZti7", "itemType": "VJ7O7dNzDBzVmGSh"}, "quantity": 30, "type": "CURRENCY"}], "source": "DLC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'FulfillRewards' test.out

#- 226 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'l8uD1hpBtpd4eLc1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'QueryUserIAPOrders' test.out

#- 227 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'PpHJmrL7AZ1MKcHB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'QueryAllUserIAPOrders' test.out

#- 228 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'B1AfySUMZOWhtQEr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'QueryUserIAPConsumeHistory' test.out

#- 229 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'iyOLkuGKVQWNOUAh' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "ymUT", "productId": "31zPHg6tXTsGmv1X", "region": "M6sr8tSaA0g0OCIE", "type": "STADIA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'MockFulfillIAPItem' test.out

#- 230 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'nmlFzzwpEZwbcCEs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'QueryUserOrders' test.out

#- 231 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'JIB0JkRcYhCT3pUM' \
    --body '{"currencyCode": "iOk2aKaj7wqr7wwP", "currencyNamespace": "CgByCnljJ7CYvapW", "discountedPrice": 83, "ext": {"QUpSToD0bb0SXZUy": {}, "9H0C213rnYfZ8c8z": {}, "URCckWWVlTYAkogb": {}}, "itemId": "V1bNoJJUhL5p56dn", "language": "YHk1iLtAXL33WCBn", "options": {"skipPriceValidation": true}, "platform": "Xbox", "price": 29, "quantity": 84, "region": "RNWTVvIN7c2uh7Ls", "returnUrl": "9nxKiaoWmrw6n7VY", "sandbox": true, "sectionId": "sva1jk545vt1Vu7d"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AdminCreateUserOrder' test.out

#- 232 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'smzSUsCVLjw2QHwj' \
    'LRnoGxE4QuZeQkRB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'CountOfPurchasedItem' test.out

#- 233 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'v8hh81CTYPYD0WHJ' \
    '0JzaJpqg9JgEy7Ia' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'GetUserOrder' test.out

#- 234 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'd7fAMCaXsZoyeqN5' \
    'ouEcXRhWbROnhOUS' \
    --body '{"status": "CLOSED", "statusReason": "yBPVmpbwVG3MwHy6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'UpdateUserOrderStatus' test.out

#- 235 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'yQU2RSNGWKnNDFZO' \
    'ok9snWC9CFiRmbEL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'FulfillUserOrder' test.out

#- 236 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'IzawfXvKu5UsuFOU' \
    'XohEHKCKphTiityf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'GetUserOrderGrant' test.out

#- 237 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'pZixQMzfhG3hC9Be' \
    '3Cvn1QymYMLAdBSV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetUserOrderHistories' test.out

#- 238 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'iPHKLXkQVWSLbAXx' \
    'xeatall18E5J9kna' \
    --body '{"additionalData": {"cardSummary": "LMlveXWFZqotaiZN"}, "authorisedTime": "1999-11-24T00:00:00Z", "chargebackReversedTime": "1990-01-03T00:00:00Z", "chargebackTime": "1992-01-08T00:00:00Z", "chargedTime": "1981-02-24T00:00:00Z", "createdTime": "1996-01-07T00:00:00Z", "currency": {"currencyCode": "Wk5lHvw9RXrx8aUB", "currencySymbol": "1xXuK2MwrRJukMTk", "currencyType": "REAL", "decimals": 78, "namespace": "xRIUU3K7sjvHHFma"}, "customParameters": {"UGIprrzf5gWNxqxl": {}, "2qgslinTPbY1473R": {}, "FPlwtoen6TTQtwMX": {}}, "extOrderNo": "4QAE2aV1l1P0cjdc", "extTxId": "49Ah8hoDWRw7XYzZ", "extUserId": "LlLq8lPGFyb34DDy", "issuedAt": "1979-06-22T00:00:00Z", "metadata": {"lkfHjqVCMpunzeSP": "kf8Y5ksiqVvcGZxT", "P7pduqX3e9tt0zz5": "gs7YuyxJLe1TkfLi", "M9EqyhFh7mq6sgk5": "cHaJYkzClqPty2kx"}, "namespace": "gyry1MM9eo43Qi5c", "nonceStr": "RehBB7o24lw21Z3n", "paymentMethod": "E04Cbkpn0yX44aL9", "paymentMethodFee": 11, "paymentOrderNo": "G20BKfuTGRLmLwLS", "paymentProvider": "PAYPAL", "paymentProviderFee": 6, "paymentStationUrl": "EeaUdAmgmnzKSVlX", "price": 38, "refundedTime": "1978-12-23T00:00:00Z", "salesTax": 42, "sandbox": false, "sku": "ykbnHTrHLmaTGFI1", "status": "AUTHORISED", "statusReason": "R5lY76lAzKbyHphq", "subscriptionId": "wB5Iehzt3ErL5T5r", "subtotalPrice": 44, "targetNamespace": "Im0ooHCnlq1H5IuO", "targetUserId": "vafRIdOXlxxdySyw", "tax": 26, "totalPrice": 97, "totalTax": 12, "txEndTime": "1974-12-23T00:00:00Z", "type": "2pCfHjg41ZhheDDG", "userId": "5HJEFQRX4iVg8TK1", "vat": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'ProcessUserOrderNotification' test.out

#- 239 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'ZL5o3htHW6Gx9Fao' \
    'DIwGJ3pRyNwb9JgV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'DownloadUserOrderReceipt' test.out

#- 240 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'Zofu7lNuwrS7xf7B' \
    --body '{"currencyCode": "iZI9Jujxs7GKf2LO", "currencyNamespace": "lVbEWajKUr3rx7Sd", "customParameters": {"t80ugFtH5gSuRJLG": {}, "kijLEJPCdahOY2go": {}, "EK35CZu7WE18eU5r": {}}, "description": "tQUWRLvu3WEfwBn4", "extOrderNo": "0sJji4hVE3lKNQy2", "extUserId": "rJxiPPjJk44WHDDN", "itemType": "MEDIA", "language": "wh-393", "metadata": {"oHWS4koauo9jkTEI": "52B8LI9vMEB8OHKs", "qKaw1EmCxOMl6uh4": "4gPPfiJZCSkIQI1h", "6OjoUY4QXecerXxP": "odPokDUivfNI3KdS"}, "notifyUrl": "IbTi8dxU11tPBlMC", "omitNotification": true, "platform": "kDk5g9y47AVCmFD0", "price": 28, "recurringPaymentOrderNo": "kTstBGTm2OFHVEoR", "region": "ljsGF5AYZlEYqTVS", "returnUrl": "CLemvpJXl2drfGIg", "sandbox": true, "sku": "rGgk3eqgOf7WwNZW", "subscriptionId": "yYuM3y1TjdcOVw94", "title": "gqQYOWGw7LSW6Kb9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'CreateUserPaymentOrder' test.out

#- 241 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'otdVBjacY5doQGhc' \
    '8zSCeJ4Q8PHY6vGz' \
    --body '{"description": "NfPWTQ1pJMwPVAUN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'RefundUserPaymentOrder' test.out

#- 242 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'YFOg7TplEkOZy73b' \
    --body '{"code": "RBtWCJCJuzB1jbh9", "orderNo": "5vj0V2ccQ60lub80"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'ApplyUserRedemption' test.out

#- 243 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    '7E0PGhia3QvaFIVf' \
    --body '{"meta": {"HyAiTeDDuvgKTfrZ": {}, "6TfrQrFIsYsZ1dTn": {}, "2pA64FJuEPymbIAw": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "System", "currencyCode": "rMcrlOCtMCyPHnS8", "namespace": "uePyiByYQOgKKv9k"}, "entitlement": {"entitlementId": "QYaSI3bbqZQkXAns"}, "item": {"itemIdentity": "7VrdNH8v1oP98han", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 81, "type": "ITEM"}, {"currency": {"balanceOrigin": "System", "currencyCode": "UbY1Zkrfk0Xn6jwf", "namespace": "R02GfMrXzI7oWD1m"}, "entitlement": {"entitlementId": "Z9rW6QdtPe4YleMg"}, "item": {"itemIdentity": "5NGs1Pmz6Amebh0F", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 99, "type": "ITEM"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "sXJ87ywdDtou8Np7", "namespace": "4s3RLe4gpS550eQ5"}, "entitlement": {"entitlementId": "WiZiQUzC0vBF108Q"}, "item": {"itemIdentity": "VF9gKmJBuqEpgnV3", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 81, "type": "CURRENCY"}], "source": "DLC", "transactionId": "NcCPnrmZDNctQe0I"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'DoRevocation' test.out

#- 244 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'M586qYdNvmRITEU7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'QueryUserSubscriptions' test.out

#- 245 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'usHknnfYNY7ZXicp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'GetUserSubscriptionActivities' test.out

#- 246 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'AJw7Ct9AmEoUNlmQ' \
    --body '{"grantDays": 18, "itemId": "8ArNPkMbfhbrTb4Z", "language": "PG4R5dqhreKq9si5", "reason": "LTZGjfJI0GRPR9FW", "region": "a3sAlKnzZ5Joq98j", "source": "WszWZxmbhMr5aDNy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PlatformSubscribeSubscription' test.out

#- 247 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'd7VDhThmXAsBwC4M' \
    'OmSF5ZPpYXTbgh3h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 248 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'VKyU97N87zJHVwE8' \
    '6VYnuoHevgj9ralh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'GetUserSubscription' test.out

#- 249 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    '2tjIEDpjLJD7E0dh' \
    '077pXU34waIIRxeT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'DeleteUserSubscription' test.out

#- 250 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'kl27M6AggzKZ3nqW' \
    'utrpjBOnBeqwBnFd' \
    --body '{"immediate": true, "reason": "mIqfQ8mJbg0TSRxh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'CancelSubscription' test.out

#- 251 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'I4XnmuQN65HKi5qv' \
    'wLIqgfXvKjhXcfKE' \
    --body '{"grantDays": 1, "reason": "5hKdn2Ay5KgtWue3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'GrantDaysToSubscription' test.out

#- 252 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'XkqcMKE9l0uRkf5R' \
    'xDdVVe0VvPmen8ke' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'GetUserSubscriptionBillingHistories' test.out

#- 253 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'uXuWuitb85Ns7DhX' \
    'CIneqddStnBNigsn' \
    --body '{"additionalData": {"cardSummary": "Bpu24ga0d3NvXvIg"}, "authorisedTime": "1982-09-10T00:00:00Z", "chargebackReversedTime": "1989-05-02T00:00:00Z", "chargebackTime": "1983-02-25T00:00:00Z", "chargedTime": "1977-11-08T00:00:00Z", "createdTime": "1986-09-03T00:00:00Z", "currency": {"currencyCode": "aAcX7fXbKWmraqNI", "currencySymbol": "KPX6gPHT29wkZwM8", "currencyType": "REAL", "decimals": 45, "namespace": "9YBTADJQdJJb27jR"}, "customParameters": {"m1nyjO60S3gf5tl2": {}, "wHKp1L42H1n3ZvUr": {}, "BoqK16btU6SoaoiA": {}}, "extOrderNo": "tMgNN8B4oo9jFmBq", "extTxId": "iyicQHvr1zREqWws", "extUserId": "QaxbdG9IxEoxcgOE", "issuedAt": "1977-04-04T00:00:00Z", "metadata": {"GQpzN4HM3v5wAiim": "BQXCxR1cObsys0Sa", "qnYIBTANshJcdLEo": "fyiS3dO8j3taWbSh", "XMN0MRNkMX09nQEw": "FSce6VsIsSSdkP3I"}, "namespace": "qaPaXJc57cVP8tXC", "nonceStr": "teutO2hlDa0voH7A", "paymentMethod": "l8vuxWTaiUJpIgLr", "paymentMethodFee": 2, "paymentOrderNo": "x1H9kC6LzFqk7MSt", "paymentProvider": "STRIPE", "paymentProviderFee": 8, "paymentStationUrl": "tCtGvxKwuL3MuhHX", "price": 52, "refundedTime": "1989-07-14T00:00:00Z", "salesTax": 26, "sandbox": true, "sku": "jNeNYuVWrqxrNDhs", "status": "AUTHORISED", "statusReason": "mS8p27dvzUWMz6Ih", "subscriptionId": "eEap1PhjtZknu6Ke", "subtotalPrice": 23, "targetNamespace": "rhmQrBLti0OZtmm5", "targetUserId": "xYReY6SgfTy3HUPS", "tax": 35, "totalPrice": 69, "totalTax": 89, "txEndTime": "1980-12-11T00:00:00Z", "type": "6wTNktWOwGcqmkqo", "userId": "u4IX6ynCg7jZBPZU", "vat": 20}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'ProcessUserSubscriptionNotification' test.out

#- 254 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    '89PjvtwaUDi2fDyX' \
    'lYJu8bIkkFh5LqxA' \
    --body '{"count": 42, "orderNo": "jff0fTRIYip6c9di"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'AcquireUserTicket' test.out

#- 255 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    '8JeefXJ2PdIoHdoD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'QueryUserCurrencyWallets' test.out

#- 256 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'HgvwcWxlmJoJSnhy' \
    'f4L6dZ66Zi7azAJH' \
    --body '{"allowOverdraft": false, "amount": 85, "balanceOrigin": "System", "reason": "ubJZYIgyBXZfTmD5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'DebitUserWalletByCurrencyCode' test.out

#- 257 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'U7RTvIuyjoeXOEFA' \
    'R7ULC1He2xJmIQ7l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'ListUserCurrencyTransactions' test.out

#- 258 CheckWallet
eval_tap 0 258 'CheckWallet # SKIP deprecated' test.out

#- 259 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'G3SSfJb7YC46l63Y' \
    'Rc0T3d9XaFEWXtvT' \
    --body '{"amount": 62, "expireAt": "1994-07-05T00:00:00Z", "origin": "Other", "reason": "Ho1HliWVA9kYxDae", "source": "DLC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'CreditUserWallet' test.out

#- 260 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'b3gSolD6u7wIciVV' \
    'HoFtt4AP9G3HyBug' \
    --body '{"amount": 11, "walletPlatform": "GooglePlay"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PayWithUserWallet' test.out

#- 261 GetUserWallet
eval_tap 0 261 'GetUserWallet # SKIP deprecated' test.out

#- 262 DebitUserWallet
eval_tap 0 262 'DebitUserWallet # SKIP deprecated' test.out

#- 263 DisableUserWallet
eval_tap 0 263 'DisableUserWallet # SKIP deprecated' test.out

#- 264 EnableUserWallet
eval_tap 0 264 'EnableUserWallet # SKIP deprecated' test.out

#- 265 ListUserWalletTransactions
eval_tap 0 265 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 266 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'ListViews' test.out

#- 267 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    'ReiDLdSTRmElGhVQ' \
    --body '{"displayOrder": 11, "localizations": {"aTP1jNjpn8azMyTB": {"description": "LnxtGnH0h3TvkynR", "localExt": {"dR0cTxgD0WOWAsTh": {}, "Z6Ln6xBAApmumWxY": {}, "TfEEm2g8JpfOhv1d": {}}, "longDescription": "FmmwcX8cRQpNggDq", "title": "IfB0DPn1CZrBaO9y"}, "4CHHaydtaKJNujTv": {"description": "CDwyDu1QGAcJRAK1", "localExt": {"mgNt0pudyASz9qbH": {}, "Esbgt8Nb6qoNGzjQ": {}, "QDw2Sc4DTbergyuP": {}}, "longDescription": "tRgn6fWMWqZYmAvV", "title": "ETTsjp3kTD5DUdBv"}, "hgsfcLURAHqkEpmW": {"description": "ErwMkbsCK44WEKYC", "localExt": {"uqx8xzh9bTsHGm5h": {}, "k6Ypn8KsMKfuARcH": {}, "ovGUZSzWfq3hqssn": {}}, "longDescription": "qUPIJabCPMhqOeDX", "title": "c5LH8xN38dVbdD5L"}}, "name": "9eqq8PstBnVeYTD7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'CreateView' test.out

#- 268 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'i7fqOSZxwOb5jkz9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'GetView' test.out

#- 269 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'ihTe86sjHoBLGz2K' \
    'm7DEtivDSv0mmNGI' \
    --body '{"displayOrder": 100, "localizations": {"jSCD2AknCwPe4TX4": {"description": "CK4IBY01KuFbs8Iv", "localExt": {"2Ij9B7VD3SyR3UCM": {}, "UtsTLoeVLjxbwUQU": {}, "VEWE0xtN3v8DgFUr": {}}, "longDescription": "jRGzthYJKH9vhOLp", "title": "oWOSJS0kU6fD66yb"}, "2MtSEiRgh67ylD9x": {"description": "Ib44v71qZ2QmEuNV", "localExt": {"KEmoFSme2B5xb6kb": {}, "zroGyrFwTSdzLOXw": {}, "Pp0OS1jOq8HtddVh": {}}, "longDescription": "Z7lfOiLRYQkDw4MI", "title": "4SEqiXIaji4MOmP4"}, "94vGlNtuMUpS3K4k": {"description": "KGKct8SZQK7TEK4s", "localExt": {"Zzj7oPP3OeZVILEa": {}, "XbHnhR8gT3if17ns": {}, "ndhy0Gtga4xRRNit": {}}, "longDescription": "3ApyAvkVtA8b9zvO", "title": "aiSMHjVciAVrPuzK"}}, "name": "V1Wj7J3QrgnhZMeh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'UpdateView' test.out

#- 270 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'NOncXNM18ZiBLaa5' \
    'iN5b6ODd1kj4Qj6R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'DeleteView' test.out

#- 271 QueryWallets
eval_tap 0 271 'QueryWallets # SKIP deprecated' test.out

#- 272 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 92, "expireAt": "1994-02-20T00:00:00Z", "origin": "Epic", "reason": "l0tvWir64fqpyffE", "source": "PURCHASE"}, "currencyCode": "2PGW8gpXu2mBdRvF", "userIds": ["fgrzLifZvRPXjiYC", "84eD5m02245YlrGl", "PM52HK8ASyze4T9T"]}, {"creditRequest": {"amount": 26, "expireAt": "1988-12-17T00:00:00Z", "origin": "Playstation", "reason": "NBO48v6DUJRe1Lpw", "source": "PROMOTION"}, "currencyCode": "7JcK5UdheuW7HOMo", "userIds": ["Y555p9oqb5MeMGL8", "GbNTtvAEsQs0WkD6", "oXzmW321H7CGe7Bl"]}, {"creditRequest": {"amount": 21, "expireAt": "1991-10-12T00:00:00Z", "origin": "Twitch", "reason": "TGmF087BWKC6wzHg", "source": "PROMOTION"}, "currencyCode": "VCnifE0YS9KhgP8r", "userIds": ["pIKoQhtOlKvnpfkW", "v9kQ9FRDgAEVfEZs", "RhISjcIvS4I6tzdb"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'BulkCredit' test.out

#- 273 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "hgoviRWdaswUzfV3", "request": {"allowOverdraft": false, "amount": 47, "balanceOrigin": "GooglePlay", "reason": "tJBaHYTZ2IdgUYmm"}, "userIds": ["aMgXsszL7hpsSwAQ", "t7HXJCUjwNMnmrmR", "9dDVbvyNupYCzyYE"]}, {"currencyCode": "xtDEUm4PnTTyHhBv", "request": {"allowOverdraft": true, "amount": 13, "balanceOrigin": "GooglePlay", "reason": "PfJHbuwF3aZQrVPW"}, "userIds": ["yZpnVjbpotD8HTOO", "cD5vraJ3WftgZ43r", "dvA4UhdTY2DNsFuG"]}, {"currencyCode": "4ZLb7i2SZkIaANvZ", "request": {"allowOverdraft": true, "amount": 70, "balanceOrigin": "System", "reason": "Q8u6QqK4CeZXmSBf"}, "userIds": ["ziEpGVXsUvez1lbe", "nagh9kCPNSZTIlkM", "grJcwR3qktAdH94t"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'BulkDebit' test.out

#- 274 GetWallet
eval_tap 0 274 'GetWallet # SKIP deprecated' test.out

#- 275 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    '5IYJnbFprRWLjHPi' \
    'PqvMMmYJeKvshwdE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'SyncOrders' test.out

#- 276 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["9XuQ8gykJm5GMKtZ", "Sng8Oi6TDpSGwc7w", "XieEOkn4KNYWbvsm"], "apiKey": "tsOVvpKYJyOQGUiq", "authoriseAsCapture": false, "blockedPaymentMethods": ["3BGEa5ftmSBKQ3zA", "Xk9qVrzEqsDwIwRy", "HKWspPtJlLDOjXTW"], "clientKey": "GIrWq2VvH0roA20S", "dropInSettings": "fzrc9YYsgvVLN3us", "liveEndpointUrlPrefix": "fhiyCf1FOddxtE52", "merchantAccount": "sFK1jNp3OwcrNR2j", "notificationHmacKey": "H7Xx7m8IqIRyUqaC", "notificationPassword": "bbMa2LqgJOAfFwvv", "notificationUsername": "gYPIFEVZLGzEglEe", "returnUrl": "95LWKrkj7TPuigp3", "settings": "RiJofgD4VypGT4cT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'TestAdyenConfig' test.out

#- 277 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "fKNrjPqUk0t9aquw", "privateKey": "2B2UVIQMA6BOpxtY", "publicKey": "bmQwS5kNxCPLeKM4", "returnUrl": "cQl8DlY91SXBeHwr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'TestAliPayConfig' test.out

#- 278 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "kPCaAycmEvk3rVTL", "secretKey": "jZT9qayJJtW8sqku"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'TestCheckoutConfig' test.out

#- 279 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'DebugMatchedPaymentMerchantConfig' test.out

#- 280 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "IBd1NrGWPVvOhMTd", "clientSecret": "fTjLVxzjyQsgv5n6", "returnUrl": "Vn7Tiakc1Rzb4MCH", "webHookId": "H4aATHwPTM0Lfcjv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'TestPayPalConfig' test.out

#- 281 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["Oko7332ZZa1YfuaQ", "7gPgiz2EBME5ikH5", "iUT9GB4bGcYzy0T6"], "publishableKey": "Q89155mM6RsYxtVc", "secretKey": "gA1q0sR85DcnV5fU", "webhookSecret": "vb2OK8scK4MyIy9F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'TestStripeConfig' test.out

#- 282 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "8aBXzn8z72hf4D4N", "key": "OpbUDnyVmYotZCA9", "mchid": "LADbjj6viKPQxoVP", "returnUrl": "77RuEzCRLrZmVBFc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'TestWxPayConfig' test.out

#- 283 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "2P689TFuh1hFoX56", "flowCompletionUrl": "gzosv2p6WtLfgPM8", "merchantId": 39, "projectId": 44, "projectSecretKey": "tgWhx94eFnxfKdpt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'TestXsollaConfig' test.out

#- 284 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'YcgxbMBZz4e7YZPu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'GetPaymentMerchantConfig' test.out

#- 285 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'TkhJH0gQxqxmEFyt' \
    --body '{"allowedPaymentMethods": ["m0rZGlRUuJ7HggA1", "D8DBtkE9JX7oDFoX", "pZ9sy7dEuiT7OrRd"], "apiKey": "HjzNhfc3uokglAmx", "authoriseAsCapture": false, "blockedPaymentMethods": ["zRRUjCNiQauO5Cfj", "a0qWoqWrZJAMVQaC", "d4UgSRsFc8FKz1j1"], "clientKey": "HfaNk1P4hC8wgvaT", "dropInSettings": "Intj0rekmCKMOHEh", "liveEndpointUrlPrefix": "e6apnthJsQpzHxEs", "merchantAccount": "iEsZH3UVmVcOxU0G", "notificationHmacKey": "sP6oBsZy1nIeavdW", "notificationPassword": "M4UiM8xE2iHgKDtY", "notificationUsername": "UBWq18cbnbAjszS8", "returnUrl": "4wsQH451BnJRGwBP", "settings": "Z82ML7i85xAiG2Fl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'UpdateAdyenConfig' test.out

#- 286 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'eXiqNPeymXgMK8ga' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'TestAdyenConfigById' test.out

#- 287 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'xYcDDZjCrklUdoPR' \
    --body '{"appId": "rSlMOoEllCitDiZD", "privateKey": "BLqmmiE0hD2A6L9z", "publicKey": "ZJpI7J4njh6wMyuN", "returnUrl": "tA5mMerAvf2EK1rs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'UpdateAliPayConfig' test.out

#- 288 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'QWD1svihoAZBd4hk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'TestAliPayConfigById' test.out

#- 289 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'ykRLwN2LHFkXjhDf' \
    --body '{"publicKey": "4RPTS1xmIM78uco5", "secretKey": "di3sJNayfJakaJtA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'UpdateCheckoutConfig' test.out

#- 290 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'FsemukeOnQqvXAFV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'TestCheckoutConfigById' test.out

#- 291 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'KLeOpEjPJDBPU8LP' \
    --body '{"clientID": "r0bjy4nFkl8n6PSo", "clientSecret": "XYb9tc6rYyOiaUKC", "returnUrl": "8t4GV0JiE7ZbWP80", "webHookId": "ZctunIw8zzjr1oeY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'UpdatePayPalConfig' test.out

#- 292 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '1p4P0xno1luSqciM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'TestPayPalConfigById' test.out

#- 293 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '4rfqsoJ7AkLiYjJv' \
    --body '{"allowedPaymentMethodTypes": ["lKhH1ccnrp3T2fKq", "q9CzJlj0UGtCqJnq", "paur75iSsLSqGKfG"], "publishableKey": "JDmzFepqpoIzofQ1", "secretKey": "7bQpOtqU8Y63DFSn", "webhookSecret": "h5IbdftTLRLUGwen"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'UpdateStripeConfig' test.out

#- 294 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'KzXRT99U5B5j9CT2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'TestStripeConfigById' test.out

#- 295 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'YI1qt4AYI54fgXlD' \
    --body '{"appId": "CLFwNGzR7zvW33BL", "key": "Q5NyteBZg7IM93LG", "mchid": "dMKko1WdXcuqjnyB", "returnUrl": "h936FR7fT7f00EZw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'UpdateWxPayConfig' test.out

#- 296 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    '65iq4fnnFA4ieAeG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'UpdateWxPayConfigCert' test.out

#- 297 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    '0JcWHLxYckKH0j3m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'TestWxPayConfigById' test.out

#- 298 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'mJ2Y5FsP84rgl0AQ' \
    --body '{"apiKey": "lBikeTeA9eq8hIKr", "flowCompletionUrl": "zAUsKqpjQGHI3Wkg", "merchantId": 11, "projectId": 70, "projectSecretKey": "TO2Gg00JcXGaIUaL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'UpdateXsollaConfig' test.out

#- 299 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    '3FoA27eK2U3IHpgm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'TestXsollaConfigById' test.out

#- 300 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'mQaQj7hyQjWqzvHa' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'UpdateXsollaUIConfig' test.out

#- 301 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'QueryPaymentProviderConfig' test.out

#- 302 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "j5be9x03hTzeUaFK", "region": "6P6yxOlFhdtyrLQH", "sandboxTaxJarApiToken": "kz1Es8nQbk4SztMO", "specials": ["ADYEN", "WXPAY", "XSOLLA"], "taxJarApiToken": "jAZrDNCoJ22Rrowe", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'CreatePaymentProviderConfig' test.out

#- 303 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'GetAggregatePaymentProviders' test.out

#- 304 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'DebugMatchedPaymentProviderConfig' test.out

#- 305 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'GetSpecialPaymentProviders' test.out

#- 306 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'uLwU5IJt4pAasYNW' \
    --body '{"aggregate": "XSOLLA", "namespace": "Jz77wPralgkstRsU", "region": "i0oaze9bInjdq27R", "sandboxTaxJarApiToken": "gguQ45JSoDgfLayv", "specials": ["CHECKOUT", "PAYPAL", "PAYPAL"], "taxJarApiToken": "niV8j7XmR8FUW42w", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'UpdatePaymentProviderConfig' test.out

#- 307 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'jdmy3KsRDI0m4nKN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'DeletePaymentProviderConfig' test.out

#- 308 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'GetPaymentTaxConfig' test.out

#- 309 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "GlXp2jJfLGd0zQqY", "taxJarApiToken": "mGkk8Pcq83l2hWOu", "taxJarEnabled": true, "taxJarProductCodesMapping": {"berKsmttvFw6Ev28": "mtO5isAId2vIIeRm", "FR2TQ2rE5Ugf8q6z": "X7Jc7TK5xO3LzmzW", "8Oj3HDRoKRr6ZZRL": "gp1djMaw9o5TdLhB"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'UpdatePaymentTaxConfig' test.out

#- 310 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    '2mWrW0A29UflIqBa' \
    'lvCur3yS6PcP3N8e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'SyncPaymentOrders' test.out

#- 311 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicGetRootCategories' test.out

#- 312 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'DownloadCategories' test.out

#- 313 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'e3aFSyZkpxzyGW3k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetCategory' test.out

#- 314 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'HAKNzH5cJ1x2IhHE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetChildCategories' test.out

#- 315 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'QwW44r5yXnevZsdD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicGetDescendantCategories' test.out

#- 316 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicListCurrencies' test.out

#- 317 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'GetIAPItemMapping' test.out

#- 318 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    '9Iip75t7Rgtj7pKn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetItemByAppId' test.out

#- 319 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicQueryItems' test.out

#- 320 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'btPAZsNwKWlHT7wm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicGetItemBySku' test.out

#- 321 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'vO6YDgQ4TLdkZgou' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicBulkGetItems' test.out

#- 322 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["TEi19doNSCRrqi0F", "1FGxhrYszqB4U4xH", "3NpxEEE1xE1teY5M"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicValidateItemPurchaseCondition' test.out

#- 323 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'a16Sr2B137kVZhkI' \
    'SgONgrrElIGGV8sY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicSearchItems' test.out

#- 324 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    '9ZaFaHBtEtzzbIbJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicGetApp' test.out

#- 325 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    '6nsmYALYAas29PBh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicGetItemDynamicData' test.out

#- 326 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'KjKkXDnEXVzzBDNo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicGetItem' test.out

#- 327 GetPaymentCustomization
eval_tap 0 327 'GetPaymentCustomization # SKIP deprecated' test.out

#- 328 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "UXOIkGhmAMgJu6c1", "paymentProvider": "WALLET", "returnUrl": "WhwijC7ydSFRQ4V5", "ui": "OyypfQ5iJtNrVbjn", "zipCode": "yYERw24T1DBdzzVb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicGetPaymentUrl' test.out

#- 329 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'hZKnh9FfHsuwhOtg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicGetPaymentMethods' test.out

#- 330 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'OWtZuhAp0yxLpfWB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicGetUnpaidPaymentOrder' test.out

#- 331 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '0inH8xFDMoqbLU4K' \
    --body '{"token": "GsevVGPnqXXPustp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'Pay' test.out

#- 332 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'aZz47mZuZptSindV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicCheckPaymentOrderPaidStatus' test.out

#- 333 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'CHECKOUT' \
    'pifmfS94ybYG4wLa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'GetPaymentPublicConfig' test.out

#- 334 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'PxhpGODmwJCF4HCv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicGetQRCode' test.out

#- 335 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    '6DG2DfogFpQ6h4G1' \
    'JwgwqyIOpmNMgpfD' \
    'ADYEN' \
    '1FR9rKaxaWsCGgI7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicNormalizePaymentReturnUrl' test.out

#- 336 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    '9Hr331YipwCDOc9F' \
    'CHECKOUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'GetPaymentTaxValue' test.out

#- 337 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    's0rjVHzs9C25B5DY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'GetRewardByCode' test.out

#- 338 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'QueryRewards1' test.out

#- 339 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'IkGcoYjLN4VPTXzk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'GetReward1' test.out

#- 340 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicListStores' test.out

#- 341 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicExistsAnyMyActiveEntitlement' test.out

#- 342 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'nDz9YRB0KErE7XXT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 343 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'kVsvdGlmWWA02nKw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 344 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'O7XUNrraxsHn4uKh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 345 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetEntitlementOwnershipToken' test.out

#- 346 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "XVFTTx0TcboB98Gf", "language": "qCNy-Pwvp-794", "region": "nWyY5J5tCY01FkbW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'SyncTwitchDropsEntitlement' test.out

#- 347 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'fSwD66Xg5Qbc0Ejx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetMyWallet' test.out

#- 348 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'xzLQLRh64Y1jopYi' \
    --body '{"epicGamesJwtToken": "TRZEzq26aXSjyAQ2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'SyncEpicGameDLC' test.out

#- 349 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'QsMJlAxZUci2CC1S' \
    --body '{"serviceLabel": 62}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicSyncPsnDlcInventory' test.out

#- 350 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'xaM7nweO9MSckJNZ' \
    --body '{"serviceLabels": [49, 10, 60]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 351 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'fCm3JLSdyxEkUrup' \
    --body '{"appId": "aAg8X3qrN4NJQHuc", "steamId": "DPcorTkEhvJJBHTf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'SyncSteamDLC' test.out

#- 352 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    '7gHQdNqoM8JpOKNA' \
    --body '{"xstsToken": "U33hDeba57ZY9YNN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'SyncXboxDLC' test.out

#- 353 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'rTcdcnzDvUHgR2bX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicQueryUserEntitlements' test.out

#- 354 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    '5lx9AjwbpWgnIzWR' \
    'tzH2wWVwIlnX0PYo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGetUserAppEntitlementByAppId' test.out

#- 355 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'F43qdlpBadznEopQ' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicQueryUserEntitlementsByAppType' test.out

#- 356 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'n4GV4MH5mOZyTMMD' \
    'azz0zG1FmCCywXfH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicGetUserEntitlementByItemId' test.out

#- 357 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'j329WcNk8k8qK4gJ' \
    'rux6tlQDfleFLBKj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicGetUserEntitlementBySku' test.out

#- 358 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    '8h7ZrO4pTU7jATbV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicExistsAnyUserActiveEntitlement' test.out

#- 359 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'BcDGudQQm98BKOds' \
    'oaTqFhdLfBWZeRFQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 360 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'vrB1lsWaPGfJVUla' \
    '8UlMM4Cc3k5J2qbH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 361 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'YNekyXLtDH1ypF3h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 362 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'IsdFXbbaFfchju2k' \
    'AuottOSwo884abND' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 363 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'jMPiZHxhFeo51XVD' \
    'I8f5EWndhcek3atm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUserEntitlement' test.out

#- 364 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'hTw5TDjWYgm2yGvh' \
    'R6HS643vgPdN21mW' \
    --body '{"options": ["wtuqNbtaAfDzs5My", "xW90cMZ9NeyZ5n02", "q1qbbj3sLmfYzDVA"], "requestId": "VhXts4CdsniSJKrJ", "useCount": 73}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicConsumeUserEntitlement' test.out

#- 365 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    'BrdfV658ZBVGgxlp' \
    'GxhD9kKX2uBUIh1p' \
    --body '{"requestId": "fP8bRBVoq807roCN", "useCount": 30}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicSellUserEntitlement' test.out

#- 366 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'eUwSRO9eoka5Ufs9' \
    --body '{"code": "UTtAImWjuqib3nbP", "language": "pJ-IoqA_LC", "region": "owknspUKyKWqOaF8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicRedeemCode' test.out

#- 367 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'En9Ut2qFCzvpinQC' \
    --body '{"excludeOldTransactions": true, "language": "cT", "productId": "j4IcbdUz2cBWKIUu", "receiptData": "PLfvTFl9DbHQLYWC", "region": "wsAVcQ0VGEUxlcNQ", "transactionId": "WOpRLETWMAv0uJ30"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicFulfillAppleIAPItem' test.out

#- 368 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'L51TxrdknW52x2o1' \
    --body '{"epicGamesJwtToken": "yDO6bwcKYeFoxUWd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'SyncEpicGamesInventory' test.out

#- 369 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'vEBTwUyzq5bzdNEH' \
    --body '{"autoAck": true, "language": "hV_827", "orderId": "OIadEDAmp524IRpl", "packageName": "mKcwvGguz7SAcGvV", "productId": "4lCJgcrAut2gYpuK", "purchaseTime": 3, "purchaseToken": "rsTXqjhryZuWF0aX", "region": "yAfnT9KMwZkUmivH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicFulfillGoogleIAPItem' test.out

#- 370 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'bmYwS4MpDJ1DYOnl' \
    --body '{"currencyCode": "VrhflY3MzIef9mtX", "price": 0.5416713317425491, "productId": "bh3agt9HQKHNhlzY", "serviceLabel": 90}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicReconcilePlayStationStore' test.out

#- 371 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'LbZCdcwYHhOIGu0v' \
    --body '{"currencyCode": "XLFZoXt8k5ZtRJGw", "price": 0.12449806585209644, "productId": "0BPRCWdTnytxmesJ", "serviceLabels": [73, 49, 87]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 372 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'DDcPDev3e8oc7sh3' \
    --body '{"appId": "o0r9VYIh3Jj15pf4", "currencyCode": "bXUrytKH5rM54pVK", "language": "QYZO-236", "price": 0.26671755823749266, "productId": "9UUur5zNNHf53CHN", "region": "LzMNElAaW04oQXa8", "steamId": "waozlr2ftyZklpNP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'SyncSteamInventory' test.out

#- 373 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'l881jOSvCvj20fgU' \
    --body '{"gameId": "419HQGug3ApiXAiv", "language": "Ziit-uR", "region": "4PWQgyxy3AZ9Q29c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'SyncTwitchDropsEntitlement1' test.out

#- 374 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    '3FLGnsacdakVuBk3' \
    --body '{"currencyCode": "eUIeGfzqhOBhMJ8B", "price": 0.45732019716889427, "productId": "R0Pr4lUceWJidPUC", "xstsToken": "DHoZPOFJliGQwzPS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'SyncXboxInventory' test.out

#- 375 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'icmKe5tLTY4T61Zt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicQueryUserOrders' test.out

#- 376 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'jv4HjtKUJ2g5iKvk' \
    --body '{"currencyCode": "b6yaN0rJRTtAoroj", "discountedPrice": 31, "ext": {"0ibuYM4wRG0lN0X5": {}, "kMcmOdLuSZLYkIAB": {}, "Wq6LMyqmJBIayJYI": {}}, "itemId": "YPCQLT4UtcQmxMnH", "language": "KV-JAYa-Ch", "price": 35, "quantity": 67, "region": "R08dqYhgjNEKxgig", "returnUrl": "qjIaaftddfk3N3FU", "sectionId": "Gt7hRJWz66woOwuj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicCreateUserOrder' test.out

#- 377 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'ZiqrVmhfRRK7pehY' \
    'ZgLjFarF9k0U2fux' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserOrder' test.out

#- 378 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'YpTLF2CAqFwYdrzm' \
    'GzkvzgJn2pWVs6zZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicCancelUserOrder' test.out

#- 379 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'RXBAexxsuLkWktcA' \
    'ykay7LItVjr1YSze' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserOrderHistories' test.out

#- 380 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'XfUiXANoRioh11et' \
    'L7rvPzXTBq3cXU8G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicDownloadUserOrderReceipt' test.out

#- 381 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'YxE0OhdSVFcSQWMX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicGetPaymentAccounts' test.out

#- 382 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'N21fc6lGGfo4IJnw' \
    'paypal' \
    '3OLU5xNeaLjRoNMm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicDeletePaymentAccount' test.out

#- 383 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'fyuSugV63aIt0NDF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicListActiveSections' test.out

#- 384 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'EcKEQaxvtIGC9xYv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicQueryUserSubscriptions' test.out

#- 385 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'HbX0ptwZqHLOEqFc' \
    --body '{"currencyCode": "FlBmznrLziwCnnib", "itemId": "Cjn2uxoSkuKry9iZ", "language": "VU-YYvv", "region": "blp0GJFHhDBbjdus", "returnUrl": "CtKYo61c23RG7T7E", "source": "4yKJUPzM18zammJN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicSubscribeSubscription' test.out

#- 386 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    '39lhBPiRxSSC369U' \
    'VGTnts7qK33YCsDe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 387 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    '0la83cvnj5Ut4YTx' \
    'IBMay1sHQoxlbhfn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicGetUserSubscription' test.out

#- 388 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'h1larFYcM0OoFV93' \
    'hG5GVHrcfGpWAufl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicChangeSubscriptionBillingAccount' test.out

#- 389 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'VB1opvSUYD0K7Y5b' \
    'Cch6ur33FthZ0FOW' \
    --body '{"immediate": true, "reason": "MVozVctDaMus5bso"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicCancelSubscription' test.out

#- 390 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'vjmmxHjjlquESAZp' \
    'AC3MEgBrVUoMCPYZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicGetUserSubscriptionBillingHistories' test.out

#- 391 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'ARtb3TsS5jOBRYgn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicListViews' test.out

#- 392 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'vYu1vzXsMr43ycE5' \
    'A2fFKAWLe45nohGK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicGetWallet' test.out

#- 393 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'rvpCUuClhTnLjG2r' \
    'iY5IlAkHgxsULSOB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicListUserWalletTransactions' test.out

#- 394 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'QueryItems1' test.out

#- 395 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'ImportStore1' test.out

#- 396 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'CWJH9jh3zB9JEYLP' \
    --body '{"itemIds": ["l0Rjsq0yRuQRarSV", "oIleZ7PtbbcriinQ", "Er7oILTomzVEdqAF"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
