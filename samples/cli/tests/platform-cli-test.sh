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
platform-create-item-type-config '{"clazz": "odwpzS6DaDpv8N7Z", "dryRun": true, "fulfillmentUrl": "qGj6oDLjWjkY1aXl", "itemType": "OPTIONBOX", "purchaseConditionUrl": "oMF78NY4YkHs1cnz"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'MEDIA' --login_with_auth "Bearer foo"
platform-get-item-type-config 'JSDgY1TXp38zsCTC' --login_with_auth "Bearer foo"
platform-update-item-type-config '{"clazz": "rbCbPOyNQkT7NvyE", "dryRun": false, "fulfillmentUrl": "8mAQLnzjMf8GZ2WB", "purchaseConditionUrl": "ZqxYG3aREAu2D6QV"}' 'KNCWP75TB0i7pKxR' --login_with_auth "Bearer foo"
platform-delete-item-type-config '8dl0zRVW4EZG9m0X' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign '{"description": "cgGVbMqSszE8GHav", "discountConfig": {"categories": [{"categoryPath": "j7AorKsxwkosAVer", "includeSubCategories": false}, {"categoryPath": "pc1C8XfwHuKeb9l3", "includeSubCategories": true}, {"categoryPath": "6mXhzkzWkFeZSoEA", "includeSubCategories": false}], "currencyCode": "t0P7MIIR7CkyF6C7", "currencyNamespace": "duuyZ0GhDogqrhBR", "discountAmount": 7, "discountPercentage": 82, "discountType": "AMOUNT", "items": [{"itemId": "5MYzYiKWe5dNRljv", "itemName": "7IPrDQQRgat0Sevk"}, {"itemId": "LGMS0lyuI9a2I9u6", "itemName": "Vpbsx5w8hqUI06Up"}, {"itemId": "OXGSLmCVuHOPlLlk", "itemName": "vR8sKgnuRkgghGoY"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 31, "itemId": "ljvjKoyD6SCwGrnc", "itemName": "qmLtjQHAf8TgoNm0", "quantity": 20}, {"extraSubscriptionDays": 98, "itemId": "2s9Q0mPVo3twu0Me", "itemName": "sTCf9x4rt69lna7q", "quantity": 48}, {"extraSubscriptionDays": 12, "itemId": "NeIxPz6MbwL6IY69", "itemName": "z1UaLqYSYWytLPzi", "quantity": 80}], "maxRedeemCountPerCampaignPerUser": 30, "maxRedeemCountPerCode": 7, "maxRedeemCountPerCodePerUser": 81, "maxSaleCount": 19, "name": "RKd3IL5TAQ6iiPlS", "redeemEnd": "1985-01-19T00:00:00Z", "redeemStart": "1999-06-14T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["zfTD1ZBm3MqHcUmL", "ZZbSqb8RwNmn9HrN", "Qy4uZAAiE0mit9RG"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'djsoqwGyzzWi9gwQ' --login_with_auth "Bearer foo"
platform-update-campaign '{"description": "Yv7t1o7TTr1DmrhZ", "discountConfig": {"categories": [{"categoryPath": "v15T7quIOvBMcaYm", "includeSubCategories": true}, {"categoryPath": "t0zYoMcHyCUEXlAv", "includeSubCategories": true}, {"categoryPath": "oxozr6wfNPX2bOIt", "includeSubCategories": true}], "currencyCode": "MvqtlB2jJCSQT279", "currencyNamespace": "ZZPYGu0rdlgdWyOt", "discountAmount": 76, "discountPercentage": 17, "discountType": "AMOUNT", "items": [{"itemId": "3choQrpOsDBU5Sep", "itemName": "jChB3V0v52Dlym6p"}, {"itemId": "uQ23xoJ8aeCnaLpU", "itemName": "Kp44YUDjasWIPUvm"}, {"itemId": "EejtGeoyIPa8ZRrv", "itemName": "jj7il35MXbN9oCMN"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 91, "itemId": "98SjTvhZNkSQ70D0", "itemName": "H6BXksUC9b6i5lZC", "quantity": 47}, {"extraSubscriptionDays": 87, "itemId": "v32e8c5csSovoqsZ", "itemName": "NBdte9NDUPVJf6c2", "quantity": 13}, {"extraSubscriptionDays": 87, "itemId": "AFKK2WDgCcxvONZm", "itemName": "3EeERmDnyeFoF7VS", "quantity": 42}], "maxRedeemCountPerCampaignPerUser": 30, "maxRedeemCountPerCode": 32, "maxRedeemCountPerCodePerUser": 74, "maxSaleCount": 11, "name": "bRFQSKVPHbn4Xxtu", "redeemEnd": "1974-11-09T00:00:00Z", "redeemStart": "1984-12-18T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["ENjEEztx1WsYSiZq", "an0nSBJroav91GXl", "vPG6bFYReVHQipcC"]}' 'x9Zw5D2L7vIYhGGS' --login_with_auth "Bearer foo"
platform-rename-batch '{"newName": "yEW4ZJJ42d3PBddN", "oldName": "8S48l9lyNApflxqM"}' 'rj3oZk03QXcKMDYD' --login_with_auth "Bearer foo"
platform-query-campaign-batch-names 'DxHSZjtqXyJ58f7G' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'c26SaiGVkydwYWQG' --login_with_auth "Bearer foo"
platform-get-catalog-config --login_with_auth "Bearer foo"
platform-update-catalog-config '{"enableInventoryCheck": true}' --login_with_auth "Bearer foo"
platform-get-loot-box-plugin-config --login_with_auth "Bearer foo"
platform-update-loot-box-plugin-config '{"appConfig": {"appName": "6yUZNmTBcvrbYCwZ"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "aMVGLiBNrDjqoxcw"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-loot-box-plugin-config --login_with_auth "Bearer foo"
platform-uplod-loot-box-plugin-config-cert --login_with_auth "Bearer foo"
platform-get-loot-box-grpc-info --login_with_auth "Bearer foo"
platform-get-section-plugin-config --login_with_auth "Bearer foo"
platform-update-section-plugin-config '{"appConfig": {"appName": "Ij88cekdqCt81P1k"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "NzDmeIP6rOvDz9KO"}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
platform-delete-section-plugin-config --login_with_auth "Bearer foo"
platform-upload-section-plugin-config-cert --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category '{"categoryPath": "3SZLxoRDFuuuySj2", "localizationDisplayNames": {"9a9LJE8HoRS1X2PF": "AAMwzHPxB1UskYs4", "Yw20DOqOBSC2DKHR": "uPMMWH8Yb33T5UBJ", "CjfcnLRfxeCSz9WE": "i8KlloeH0JT1ydua"}}' 't2vQR3biBfsu4jms' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'RE2w1yEkLgh3tIYt' --login_with_auth "Bearer foo"
platform-update-category '{"localizationDisplayNames": {"4SqYUTLDx9gIiDan": "dpGT2t24aOMh5eC3", "IHeHSKLCa3xreNDU": "WehwH3q31A806DJg", "as4b6z3LNUj7fdgL": "A84Z8YYk6QEgJjBb"}}' 'EDoNf3n0hEoRCAcf' '80zfFyabWAgIUXiI' --login_with_auth "Bearer foo"
platform-delete-category '07A68eaqC2J9jyEW' '6GLbc0NaKDUL3sa1' --login_with_auth "Bearer foo"
platform-get-child-categories '3lk1dQBHO86IlBhn' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'etU4RwTqUXlTDBzO' --login_with_auth "Bearer foo"
platform-query-codes 'uYsaZA2yyd4mbqoO' --login_with_auth "Bearer foo"
platform-create-codes '{"batchName": "fADMMAXFaY9eKa69", "codeValue": "9bRVhyaKwwrAP2aM", "quantity": 22}' 'F4TxodenSrUTvfqU' --login_with_auth "Bearer foo"
platform-download '0bfoMm5cTtFWbotQ' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'yXJRcQWsmqPNs92e' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'pxk0i8VxsZNereSv' --login_with_auth "Bearer foo"
platform-query-redeem-history 'f9699mCEHThUJkET' --login_with_auth "Bearer foo"
platform-get-code 'AsSp7gh4TeUTkOkA' --login_with_auth "Bearer foo"
platform-disable-code 'YfJB8AT9t4Tv207Y' --login_with_auth "Bearer foo"
platform-enable-code '2QD3oD5fLCr3OOlX' --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency '{"currencyCode": "Vv8ZGF7uYnGzpipN", "currencySymbol": "DigNJma1MbqqZtfN", "currencyType": "VIRTUAL", "decimals": 1, "localizationDescriptions": {"l4nmwAft4gqkNNlW": "kD9eOziYRFOn0jJL", "HC9LxhvNXTwGBCto": "hLtl9Zuhytm5UDrT", "6QXCs5SPBbRPZTF6": "oQAXVG7tnsZg5QgX"}}' --login_with_auth "Bearer foo"
platform-update-currency '{"localizationDescriptions": {"jvyGJPN4eXbJE5Vs": "2GcyomQoIXimBJeh", "yxlNsjUgxBkF6wFP": "oJeQediogEhhM2rI", "izGdKvOPdq5xrgxS": "my1DN9LFkYW5DQyj"}}' '4bj5Ro2ogaKt2ujQ' --login_with_auth "Bearer foo"
platform-delete-currency 'Sa3Zdb65UXmy0Zp6' --login_with_auth "Bearer foo"
platform-get-currency-config 'iIaTIKUkmkk9QM0N' --login_with_auth "Bearer foo"
platform-get-currency-summary 'BMA9ORxpzwLR2AK6' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config '{"data": [{"id": "eXUGPJsw1fiP80G9", "rewards": [{"currency": {"currencyCode": "Pclxcft2ulIJzPyr", "namespace": "VEiOG4UcqsuGKHhM"}, "item": {"itemId": "RWLVd3DlhLuIpomM", "itemName": "8sm1MiaI1mX2tJoA", "itemSku": "RtdbBe7udsMrok0W", "itemType": "vGYYnx4V709xbnGe"}, "quantity": 52, "type": "ITEM"}, {"currency": {"currencyCode": "KsDwG2omOR2nvYI9", "namespace": "TVqJdvzcWbfUpaXp"}, "item": {"itemId": "5JMl5LL4bTxBmZjd", "itemName": "rrIxsB0NRsB1fPqq", "itemSku": "RRulpqpymDkQhtrH", "itemType": "WwRVnwVBOqOHi8pW"}, "quantity": 67, "type": "ITEM"}, {"currency": {"currencyCode": "d1juYhiqjRJOqB5F", "namespace": "93zFQbJndUDpdONn"}, "item": {"itemId": "eAczbBdHb2slt71B", "itemName": "1SmZp2JZp50CnPb7", "itemSku": "1ORYcmQbTU5JX8cc", "itemType": "LjMXJRk0eaKQDOJv"}, "quantity": 36, "type": "ITEM"}]}, {"id": "TefglSs6g4iY9u02", "rewards": [{"currency": {"currencyCode": "aCNYIWekp18lOC3m", "namespace": "NqF7Bl0LcghVHfPE"}, "item": {"itemId": "spxwhRON0bc1eMbE", "itemName": "IjowLqc3ecjXJbZD", "itemSku": "KKoxLE1Y3Dymtj3g", "itemType": "iPg4x4yiPX6ues1H"}, "quantity": 15, "type": "CURRENCY"}, {"currency": {"currencyCode": "hkg1yLVbLFzHEP8c", "namespace": "M4NTwr0KHaAsmTej"}, "item": {"itemId": "52WKi6tArAURt9pl", "itemName": "CSVq8PdH6hJPUAc0", "itemSku": "RVwXgAgntLMCuaXB", "itemType": "WQi6BqPg4xr0lCan"}, "quantity": 5, "type": "ITEM"}, {"currency": {"currencyCode": "ZGCHsZYoLfR1KtOv", "namespace": "7Zy0b65uvuKNuy0y"}, "item": {"itemId": "tZQ7M6Nzy1adnSKO", "itemName": "LFKx1dX4LuWJu3pD", "itemSku": "MUAeeZ97SBROPYuG", "itemType": "6XqP6oo7G73zdxTg"}, "quantity": 82, "type": "CURRENCY"}]}, {"id": "fnwIdlNa29fDLh74", "rewards": [{"currency": {"currencyCode": "1IslKHzGlLKWUtDQ", "namespace": "s61OQAoxyyQpRWCi"}, "item": {"itemId": "iPDGQhNPEwiJCf2X", "itemName": "JVrlzqQls1ozhLVA", "itemSku": "3kE8jKvgatOEBM70", "itemType": "TdlNBJYOmpu1VCar"}, "quantity": 52, "type": "ITEM"}, {"currency": {"currencyCode": "p6Sw1I98jeZQ7hfx", "namespace": "nhLd3Knaknoed9DH"}, "item": {"itemId": "hLOqQGhCUr6iTrjy", "itemName": "EgarAdNJOIG36I6t", "itemSku": "RbRcrEveMdAdiPKD", "itemType": "UVSC00PYeDcaggin"}, "quantity": 47, "type": "CURRENCY"}, {"currency": {"currencyCode": "nFIna3yddcbsPheT", "namespace": "H26IUJNvYuGRUvpZ"}, "item": {"itemId": "aHCuESOiIZsMfB4Z", "itemName": "H3mtgWgU4pCAKxeE", "itemSku": "70CaunQNxot371W9", "itemType": "G4AvQkqsGnmyo5JJ"}, "quantity": 93, "type": "ITEM"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"mb8GEXFTlEMEsFzY": "qwgK1Np5nodqpLm7", "FhJBNXzAFdO0Khqf": "6kiTdSGv2LFjAKY7", "CbgsWqFWZX7kPBom": "8F9GLLTG8phc3n4i"}}, {"platform": "XBOX", "platformDlcIdMap": {"bAG9YI89hmguB8FO": "TjMLo4b9rIzqYkEp", "styVTBcrM8rG0rH0": "zcswwVeMK6MbGIVI", "u8vvwLc7KY3uVoJX": "TIMtpgkieDyF97lG"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"xdbZUpd6FJtHJ1py": "VwyKQLY6FEO65Rb3", "z7CYLM8IlsHqffnr": "fsGlfPaZKBwa3Ddb", "60ufPpzwj1QGIFml": "Vf4jvapseE9LN9bv"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements-1 --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-enable-entitlement-origin-feature --login_with_auth "Bearer foo"
platform-get-entitlement-config-info --login_with_auth "Bearer foo"
platform-grant-entitlements '{"entitlementGrantList": [{"collectionId": "hOrHflIOd6X3viLv", "endDate": "1980-05-08T00:00:00Z", "grantedCode": "Ek4mTIpUA9gxo8SV", "itemId": "38nEhoXmM2W7l6jH", "itemNamespace": "MA2rG3nakopAywel", "language": "sQd-490", "metadata": {"0NqoTow0qiOiC4j0": {}, "iktm0ZPLkLOsp0LZ": {}, "5njN86Hl8kUXzt6b": {}}, "origin": "Epic", "quantity": 5, "region": "9lvccKMLhrTrcBE2", "source": "REWARD", "startDate": "1982-06-11T00:00:00Z", "storeId": "rAejcq2LgkQuaS7R"}, {"collectionId": "Bx3vim02jBOxrZDy", "endDate": "1982-05-10T00:00:00Z", "grantedCode": "qx8CzPML52faXUr9", "itemId": "Sk4lq2faBcAXXKlh", "itemNamespace": "vyH8paOJtxqMPpcV", "language": "tX", "metadata": {"ncceIZSwgAIkgzh4": {}, "pTU0Am4DZhl0bQxF": {}, "J3sWCqQpQ2FbKPFM": {}}, "origin": "Playstation", "quantity": 24, "region": "cMSQ4qfAacR0LgB5", "source": "REDEEM_CODE", "startDate": "1987-08-15T00:00:00Z", "storeId": "Xvjcu2s6w3VifnKq"}, {"collectionId": "mTSoGH1XEfY6QAYn", "endDate": "1996-12-15T00:00:00Z", "grantedCode": "Q5UBEU1QAOHfZiGh", "itemId": "xOdcuDXSxSc3aZPV", "itemNamespace": "87pna08gxefTYKhu", "language": "HAE-oxnY_de", "metadata": {"6ePeN8i4GrFES9z7": {}, "xueHpATHccee9GXh": {}, "KcjmSEwdrkEnnqKz": {}}, "origin": "System", "quantity": 74, "region": "sLfYalUlfwEQKjU7", "source": "GIFT", "startDate": "1980-09-29T00:00:00Z", "storeId": "fF3TQN0OcNDLr36v"}], "userIds": ["LTyU8OhgfY9JQYGF", "zohZyjMQAg5mPYhr", "4bYXEcENx9xZlAch"]}' --login_with_auth "Bearer foo"
platform-revoke-entitlements --body '["ob44lONDDwMvgI0H", "lyPR7wZNiVsF6xG2", "mXEQdbzIVy8alncV"]' --login_with_auth "Bearer foo"
platform-get-entitlement '7vWgSHdfo07UctPE' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-query-iap-clawback-history --login_with_auth "Bearer foo"
platform-mock-play-station-stream-event --body '{"body": {"account": "rqxyMyOK06MqQBEr", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 47, "clientTransactionId": "eoc8fgvZDDhoO05o"}, {"amountConsumed": 75, "clientTransactionId": "g0DjQjBECXvea7H1"}, {"amountConsumed": 24, "clientTransactionId": "EiwxxElpMYSWIeVz"}], "entitlementId": "m7z9noowmlTIKVow", "usageCount": 16}, {"clientTransaction": [{"amountConsumed": 21, "clientTransactionId": "0RY2VN4ZONJREdUQ"}, {"amountConsumed": 39, "clientTransactionId": "z9F1BxNNgnke4akn"}, {"amountConsumed": 4, "clientTransactionId": "lrjcHp6B8Vj7rXFg"}], "entitlementId": "DnDkdZ9bpjb1tdA3", "usageCount": 88}, {"clientTransaction": [{"amountConsumed": 18, "clientTransactionId": "hjCMW64f4XhIjSoT"}, {"amountConsumed": 56, "clientTransactionId": "77AtYoFzLAATPY8P"}, {"amountConsumed": 84, "clientTransactionId": "zTxBGtEJIYppuUSs"}], "entitlementId": "KoHw2hyd12uSE7BE", "usageCount": 44}], "purpose": "rX2MVUGKSZ4GcLkt"}, "originalTitleName": "4pK32sJxlZcCTpTd", "paymentProductSKU": "RtCHvuk6B6XTmSLy", "purchaseDate": "n50sigBVZxiKdV57", "sourceOrderItemId": "GvRyd9UuL02Le8HS", "titleName": "CslsDd4M1F5qRIbl"}, "eventDomain": "S7Nz81GRazPAANjf", "eventSource": "BoldFOyqA2clJ5gE", "eventType": "OaCgM6Yn6RugbNEI", "eventVersion": 32, "id": "czdt7zqmSKxOEQlV", "timestamp": "cx6GqsBq8vdhWVnu"}' --login_with_auth "Bearer foo"
platform-mock-xbl-clawback-event --body '{"data": {"eventDate": "YLgpZehK0G2nmyuV", "eventState": "iB9kRTcSQdTnNYGe", "lineItemId": "AfYFG3wSkHKufBdS", "orderId": "3ZOokZB4cXnAXyuG", "productId": "z6LlxHv8SwyagYvD", "productType": "J3w3UNgIGj2jZtEY", "purchasedDate": "T8sIPSE1XXPzySa0", "sandboxId": "sZoFS6xCOWMpyh9p", "skuId": "MsQgb64ELbzDMwyo", "subscriptionData": {"consumedDurationInDays": 27, "dateTime": "rz3ISW510kHr4isT", "durationInDays": 75, "recurrenceId": "FeouC2m38kXrDZWl"}}, "datacontenttype": "GVE9sJ4NpUtKp6M9", "id": "I6nEwnZhsjwJeGwa", "source": "PSDMZz95OYKiqaZD", "specVersion": "63xe5rruJVfLGea0", "subject": "ZtlzUcuHAXz0UV31", "time": "MfuGaXsAuGsZaSHe", "traceparent": "vO0TQNEI3kfabxJW", "type": "WSI1ECUo1NPpeFhU"}' --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config '{"appAppleId": 53, "bundleId": "hEh8PbGikLjgjcj3", "issuerId": "4uulU6FYBZsWFbr3", "keyId": "RSP0W9nBhvhf8Q0D", "password": "tJMcYQdN66bswAgt", "version": "V1"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-p8-file --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config '{"sandboxId": "X4N1LQZmB61JMdtw"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config '{"applicationName": "CVUrYQue84dwmbwF", "notificationTokenAudience": "EnAZaWsQJtRYoagR", "notificationTokenEmail": "JK5PX9UcOvhPyE11", "packageName": "TRT2SKseoe8VLie0", "serviceAccountId": "LBa36KNzjf005CXN"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config '{"data": [{"itemIdentity": "GehQ2aTjTDfKFDXC", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"X26uEdCfQaMAQuTK": "fC0I2kNjCMDtDMre", "ntgn3DhqciwIeShF": "9RKb9vvxuJlhXbWh", "bwPwToC6knjVwVnz": "aqSfJiQFC2gXoda0"}}, {"itemIdentity": "kg16yUSpSOAjHJWw", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"dxIwqejxe18rNdb8": "Otq6j1mqUav7k05H", "AQltnSojV4jT65yc": "lX2FtAz0vJjFIYWO", "aNdsimmkW2miH3xR": "HAKy4QxZkaXZ7vmi"}}, {"itemIdentity": "Ed0JPxVyQpshaDwN", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"S6hIH9c4Vfkyrwpu": "XxbaERbfgPmi0eHk", "t1mr9EOIFg0dnWIY": "N2NVL70Iw157g00j", "r9b8MuYmmeKTmBNv": "GYxEQdf3ewoGGoY7"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-oculus-iap-config --login_with_auth "Bearer foo"
platform-update-oculus-iap-config '{"appId": "xmFNAmjDDCvs78mc", "appSecret": "MdiS76YApGJ9ufwL"}' --login_with_auth "Bearer foo"
platform-delete-oculus-iap-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config '{"backOfficeServerClientId": "YkqIgLuZS6hsQryi", "backOfficeServerClientSecret": "EtOAbpeUNf26UqkC", "enableStreamJob": false, "environment": "LXgmRasvjO4lj8m3", "streamName": "XEwP2b4gd3xOeii8", "streamPartnerName": "Jnmssep2xD2NY0kA"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-existed-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-playstation-iap-config '{"backOfficeServerClientId": "BeGs9yxahld1pO0G", "backOfficeServerClientSecret": "yf5PO3COyMvczgEp", "enableStreamJob": true, "environment": "xLGeMvr9TsvcMQ7d", "streamName": "BsaIecRxIsZvD6rm", "streamPartnerName": "zVr5XT1Nxw0v1dMQ"}' --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config '{"appId": "9Rrbk6C2cVWf6ttv", "publisherAuthenticationKey": "bU1PO6ApCD2VXidT"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config '{"clientId": "7w0Oc15N8WXBPp17", "clientSecret": "PAewqSm5x3B4t7WQ", "organizationId": "np8jXZedgt5cyNe2"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config '{"enableClawback": false, "entraAppClientId": "HLtwtVOaxgP6Jbct", "entraAppClientSecret": "8puMybYGxD9IPmms", "entraTenantId": "Lmu3kaPj0O4zd8Tb", "relyingPartyCert": "7cUNGPTBxiFFCrn7"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-query-third-party-notifications --login_with_auth "Bearer foo"
platform-query-third-party-subscription --login_with_auth "Bearer foo"
platform-get-iap-order-consume-details 'djjs69FTFVGUVhvK' --login_with_auth "Bearer foo"
platform-download-invoice-details 'hJCmeisql14mUHVb' 'MPimNhcZsU3VAdMD' 'cb4qlkiFAamqvZI2' 'SEASON' 'EAOrVSnLocLVVYam' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'Qc4wcG5nDBLJoJHb' 'iQ5duE5p4cfs2E41' 'cK8QTwiIAvxSvNDl' 'COINS' 'Dbi9BzupBsFpYc77' --login_with_auth "Bearer foo"
platform-sync-in-game-item '{"categoryPath": "GtRUcCFeY5g4XgBs", "targetItemId": "bfzqxBPNe8ae1Il4", "targetNamespace": "aAtEbu4IjGdqthRx"}' 'TjQ7gkZEY8rG0q0Q' --login_with_auth "Bearer foo"
platform-create-item '{"appId": "2Qd2JzRbkF2I03dI", "appType": "DLC", "baseAppId": "CnnZxF8CmQr17W65", "boothName": "br34rBBN9tU6TDm5", "categoryPath": "GloFSKWM1eym5ydC", "clazz": "6p25xCWTqUOYZENJ", "displayOrder": 78, "entitlementType": "DURABLE", "ext": {"ZQxPRXH7uxBJEECQ": {}, "E1li3Bg7Jxc9pUnZ": {}, "mvhidwCkZwqjYLfT": {}}, "features": ["VzW0CpoBCbyJsF5I", "jF1c0W338HS6CBgV", "iCO1NDBvQvRPnAz4"], "flexible": true, "images": [{"as": "JbEGTUj7YjERL1rE", "caption": "QG02zccA8wvLsWUN", "height": 7, "imageUrl": "fCjOuSYht83AdvBa", "smallImageUrl": "agTiRJ8daGTVX3Bb", "width": 31}, {"as": "jlz5IfHgKjI9mwJS", "caption": "rN8jkIykR2zbaI6P", "height": 61, "imageUrl": "89AwEw1HO4FnKtx4", "smallImageUrl": "XLKAmlDr19uJ3nq6", "width": 97}, {"as": "nnX2poMfZ1hDHtbh", "caption": "4HtMlFgvh2Dp2Soi", "height": 70, "imageUrl": "pnQ5xF9wwbvMZyeD", "smallImageUrl": "eRnVfPUa6xVVBcq3", "width": 45}], "inventoryConfig": {"customAttributes": {"yCA6jEtcqsnzoVIL": {}, "jkwW61duF87aUyrd": {}, "t4XSpWBAetsanzqP": {}}, "serverCustomAttributes": {"8oxfrtbECD1CYPwa": {}, "iBAxfYL8Avt70ZUT": {}, "2fSk3LL0calqxEew": {}}, "slotUsed": 42}, "itemIds": ["QmJIOq9dP5szG71u", "tjsQ4CrRb9gUCeVz", "7fWbZIdhevfZvyV7"], "itemQty": {"AcodcZwKjYDdmJOl": 53, "HIi1CMgKAOG5iDcC": 89, "jq7sn8yreciPLfkV": 50}, "itemType": "LOOTBOX", "listable": true, "localizations": {"JsbGpO6JgehDJxEN": {"description": "7JlZc8LMq1o2jZWu", "localExt": {"4yA3r0u4q1bTHXIj": {}, "fJKyFlM0u1uuoVdn": {}, "9yVoSlKNchPHNL4X": {}}, "longDescription": "3LLaGPGdqLE8Sohh", "title": "huiTnJarYYkHBDdS"}, "zBXdxapwhd5IQYBQ": {"description": "uxLvPuWYvE3fsNy9", "localExt": {"Z9OhxXvCp9y7fLD2": {}, "qfCXnlUnqxT1WsRN": {}, "MZcA92hzC7MNa8vV": {}}, "longDescription": "e4MHX6AgMep90Ayy", "title": "UJyAK5PRMRMwdvl0"}, "hv6g62GxBW2tQF5t": {"description": "kTjgJaMYvNQOsDa4", "localExt": {"bkcgepqtxjbrztee": {}, "7QLTGAak7Kaol01D": {}, "K97D2xnik42miteR": {}}, "longDescription": "5eQAe1rzmmgqBPRm", "title": "d6mO4oI8KDqebm83"}}, "lootBoxConfig": {"rewardCount": 36, "rewards": [{"lootBoxItems": [{"count": 67, "duration": 1, "endDate": "1991-11-16T00:00:00Z", "itemId": "y2pgSGSUOK68eqGJ", "itemSku": "tWf1Ybgg8rdwY9bm", "itemType": "rvHmO07KNqX9LM2I"}, {"count": 46, "duration": 26, "endDate": "1986-06-06T00:00:00Z", "itemId": "sdOGBXBwnzDX8v3x", "itemSku": "gC1Ge9PdbTTAJ2Gp", "itemType": "1r0sVZ6LJAOddIL2"}, {"count": 23, "duration": 6, "endDate": "1974-12-11T00:00:00Z", "itemId": "mDdUIoiIJFNxuNOm", "itemSku": "USWw18T1IxVWCxdv", "itemType": "PL9e4P01vxP8xj1L"}], "name": "yEirURERnEMzpImW", "odds": 0.9435893525500683, "type": "REWARD", "weight": 31}, {"lootBoxItems": [{"count": 19, "duration": 7, "endDate": "1984-07-05T00:00:00Z", "itemId": "HyCK5tNanGBrkzUv", "itemSku": "ck3xTtmOFMebS4Ad", "itemType": "lNzwog2IhErkNhNc"}, {"count": 62, "duration": 29, "endDate": "1985-03-20T00:00:00Z", "itemId": "WwchW6zL9SkbLlrN", "itemSku": "XnGanMazb8jvRWen", "itemType": "URH48aJuALEcSqcE"}, {"count": 38, "duration": 88, "endDate": "1981-09-02T00:00:00Z", "itemId": "yQ9ssuHdGmxncCEr", "itemSku": "0KcgeqzGbruNB72H", "itemType": "HMkjzyBB4UFKiaoV"}], "name": "0VOem2yqPsMFxKyb", "odds": 0.6630105945591638, "type": "PROBABILITY_GROUP", "weight": 2}, {"lootBoxItems": [{"count": 41, "duration": 37, "endDate": "1993-10-23T00:00:00Z", "itemId": "6x9cLJ1APnNlsa2b", "itemSku": "RBr27fVMWuAfDqLM", "itemType": "R919IZPKOKiAVQXX"}, {"count": 83, "duration": 24, "endDate": "1998-05-11T00:00:00Z", "itemId": "q2OspCZbt3Uta5I0", "itemSku": "uGcL1koyHjCH5olY", "itemType": "LETRpABAmO2EGvJ4"}, {"count": 95, "duration": 56, "endDate": "1990-07-24T00:00:00Z", "itemId": "S93yOxNInDByhnol", "itemSku": "uO6ti0QP2ssiJ66O", "itemType": "zOj84O6tgohjtC7b"}], "name": "zjPpucddXJ5zifF8", "odds": 0.38806756120452723, "type": "REWARD", "weight": 63}], "rollFunction": "CUSTOM"}, "maxCount": 57, "maxCountPerUser": 28, "name": "YtzB0B4CxyQrUpIF", "optionBoxConfig": {"boxItems": [{"count": 43, "duration": 97, "endDate": "1992-12-23T00:00:00Z", "itemId": "77KeRWdECaFGzfZ2", "itemSku": "hxcJ2Fnemn7M23Sz", "itemType": "Uo4hNBDh9ZFP1OW0"}, {"count": 26, "duration": 5, "endDate": "1996-10-16T00:00:00Z", "itemId": "OErQPS4VsRoYIK69", "itemSku": "yg9ADCGiXaLs2xjH", "itemType": "kinOD975nARHCmhN"}, {"count": 68, "duration": 83, "endDate": "1993-05-12T00:00:00Z", "itemId": "uqIHsxvaUoXDmwWs", "itemSku": "ukxncuD3QxCXMd00", "itemType": "YBWCaVVmM45mfIZs"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 20, "fixedTrialCycles": 25, "graceDays": 91}, "regionData": {"LDIQch4IjDq9aT3q": [{"currencyCode": "ZyI0rYsWucAkXsVJ", "currencyNamespace": "bXi7eRZa7WwIc895", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1997-05-14T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1997-08-24T00:00:00Z", "expireAt": "1981-06-01T00:00:00Z", "price": 39, "purchaseAt": "1971-01-14T00:00:00Z", "trialPrice": 95}, {"currencyCode": "0U4pH16NUsVY21NV", "currencyNamespace": "Is7NRen2Y3Ns0QJQ", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1971-02-16T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1992-07-17T00:00:00Z", "expireAt": "1990-06-07T00:00:00Z", "price": 84, "purchaseAt": "1992-02-11T00:00:00Z", "trialPrice": 87}, {"currencyCode": "ds1BYx0EaURydf8Z", "currencyNamespace": "yyZeHAWGgJUbUJRM", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1976-09-04T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1994-02-17T00:00:00Z", "expireAt": "1992-04-04T00:00:00Z", "price": 2, "purchaseAt": "1971-09-19T00:00:00Z", "trialPrice": 95}], "7gHPTPQbvLt2NRqJ": [{"currencyCode": "GIKzLyH1y72L13Or", "currencyNamespace": "nyx34luLdvtsTKXM", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1975-02-09T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1989-02-16T00:00:00Z", "expireAt": "1986-02-23T00:00:00Z", "price": 86, "purchaseAt": "1983-06-24T00:00:00Z", "trialPrice": 11}, {"currencyCode": "xZfAcNg14Ws8TIP1", "currencyNamespace": "LKiFQoLDvumfqrgS", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1978-01-19T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1989-03-02T00:00:00Z", "expireAt": "1994-08-22T00:00:00Z", "price": 4, "purchaseAt": "1996-11-19T00:00:00Z", "trialPrice": 70}, {"currencyCode": "dN1MGRXBJ6mVV7JS", "currencyNamespace": "9qjNLwvI8JdiY3RR", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1975-04-03T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1992-04-09T00:00:00Z", "expireAt": "1972-12-04T00:00:00Z", "price": 18, "purchaseAt": "1987-04-17T00:00:00Z", "trialPrice": 65}], "pjS2DRfGt9GlyZVQ": [{"currencyCode": "4X67tPZSTpPq3xjr", "currencyNamespace": "ElvvDgw0ag7kSWE0", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1996-04-05T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1987-10-06T00:00:00Z", "expireAt": "1991-06-14T00:00:00Z", "price": 8, "purchaseAt": "1990-08-17T00:00:00Z", "trialPrice": 35}, {"currencyCode": "6ItxDT8p4n4XCFkD", "currencyNamespace": "1AJLCwszbZxuHSgD", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1991-05-29T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1998-03-18T00:00:00Z", "expireAt": "1993-04-26T00:00:00Z", "price": 97, "purchaseAt": "1987-09-17T00:00:00Z", "trialPrice": 35}, {"currencyCode": "bL2635KbtZTGJpqg", "currencyNamespace": "l2IzNXGTuQPIDpor", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1971-04-15T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1980-11-04T00:00:00Z", "expireAt": "1974-11-26T00:00:00Z", "price": 81, "purchaseAt": "1994-07-21T00:00:00Z", "trialPrice": 92}]}, "saleConfig": {"currencyCode": "6QIVC9Mfuc8VOsnm", "price": 27}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "VljdWYmELe74p38v", "stackable": true, "status": "ACTIVE", "tags": ["2B4vEgj3HOmhcWm4", "28XejRF94NIY9nMr", "BZo0lNUBDShHD32v"], "targetCurrencyCode": "vL28FPwTiXfLcxDC", "targetNamespace": "9Ynd02mECIQhfIhH", "thumbnailUrl": "tADUQ9zimQTQT95p", "useCount": 64}' 'ZDhutDM6BqguqD5x' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'xGxBWtnTKUe2znsq' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-items 'PzPkwCBo2SwCUsTa' --login_with_auth "Bearer foo"
platform-get-item-by-sku 'g4MLAo3m61P2xaNf' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'mn8Onb1a9gMz0F2U' --login_with_auth "Bearer foo"
platform-get-estimated-price 'BRmMhAbUWmFhdYLW' 'zMuv3zkUY0n0BAZk' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'wbYkBLyO6A0Fqfhn' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'aB3YxKNdOTacCcJf' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition '{"itemIds": ["IfXshuLUk5WdpxjZ", "x5noXPhPUTKbonou", "cNmzwOZOK56sDkci"]}' '5rZ8iMlOuksQJCiR' --login_with_auth "Bearer foo"
platform-bulk-update-region-data 'FiZWwJ7NrTb1XTB9' --body '{"changes": [{"itemIdentities": ["YQzUJ9XlYJ8BzP6E", "UmUXGM5anIloyj9l", "hbvuQdW2jwKUckc7"], "itemIdentityType": "ITEM_ID", "regionData": {"ryY91lX8DD4MYXlr": [{"currencyCode": "J81lHvv9rqvEoM8Y", "currencyNamespace": "mVjAkO3HKsEp6Klq", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1996-10-24T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1982-03-17T00:00:00Z", "discountedPrice": 55, "expireAt": "1979-06-26T00:00:00Z", "price": 10, "purchaseAt": "1990-07-10T00:00:00Z", "trialPrice": 4}, {"currencyCode": "tuL81lsR7xxSVp3G", "currencyNamespace": "d2TK0HzYviTgYmx8", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1979-08-16T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1985-12-25T00:00:00Z", "discountedPrice": 11, "expireAt": "1990-03-09T00:00:00Z", "price": 86, "purchaseAt": "1997-05-29T00:00:00Z", "trialPrice": 91}, {"currencyCode": "Iz8tne5dbguBF6Gs", "currencyNamespace": "vvdl8jHz9x7XZIjU", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1997-10-27T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1981-03-30T00:00:00Z", "discountedPrice": 47, "expireAt": "1991-05-01T00:00:00Z", "price": 77, "purchaseAt": "1974-01-08T00:00:00Z", "trialPrice": 93}], "ZaMphKCqTq3EVheJ": [{"currencyCode": "joEEXBLIxGnNuhoJ", "currencyNamespace": "M3WWPvvCiCf33ViE", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1979-12-22T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1993-05-03T00:00:00Z", "discountedPrice": 15, "expireAt": "1978-07-09T00:00:00Z", "price": 66, "purchaseAt": "1994-03-24T00:00:00Z", "trialPrice": 99}, {"currencyCode": "UWNizk5UcPAGv6c1", "currencyNamespace": "ESC6hZYTYZbzf5aA", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1996-05-28T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1974-03-29T00:00:00Z", "discountedPrice": 57, "expireAt": "1974-08-10T00:00:00Z", "price": 91, "purchaseAt": "1989-07-11T00:00:00Z", "trialPrice": 81}, {"currencyCode": "7MSBqabUXOGkkoMU", "currencyNamespace": "Zn1YXj5zFZeOCOR9", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1993-08-14T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1993-12-06T00:00:00Z", "discountedPrice": 65, "expireAt": "1993-04-19T00:00:00Z", "price": 73, "purchaseAt": "1997-12-03T00:00:00Z", "trialPrice": 56}], "OIKrRBrYVzi9ui3l": [{"currencyCode": "vozTt9TsH7A0TuU2", "currencyNamespace": "aL4bPkk11sys6Gdk", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1981-04-30T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1997-01-17T00:00:00Z", "discountedPrice": 42, "expireAt": "1998-09-09T00:00:00Z", "price": 72, "purchaseAt": "1971-05-29T00:00:00Z", "trialPrice": 56}, {"currencyCode": "TFznTgDIwZIRWf6T", "currencyNamespace": "3by2kYSCdnFKLc0x", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1971-03-24T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1979-03-23T00:00:00Z", "discountedPrice": 19, "expireAt": "1972-12-23T00:00:00Z", "price": 4, "purchaseAt": "1972-09-09T00:00:00Z", "trialPrice": 7}, {"currencyCode": "fU61OJYMnW49rWyn", "currencyNamespace": "p1ck1vT90C6o86cS", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1981-04-20T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1993-02-22T00:00:00Z", "discountedPrice": 58, "expireAt": "1971-01-08T00:00:00Z", "price": 95, "purchaseAt": "1977-10-21T00:00:00Z", "trialPrice": 42}]}}, {"itemIdentities": ["ktyBdxkZKrEWFw9G", "YxjiiOQAD77ci0vf", "WVZoRRMPi57HyKKz"], "itemIdentityType": "ITEM_SKU", "regionData": {"nyI6ulKNKoXa0dgx": [{"currencyCode": "1JgjC56pda3YhtQx", "currencyNamespace": "pCYME6x21pdX2QSP", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1972-08-29T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1982-07-09T00:00:00Z", "discountedPrice": 29, "expireAt": "1978-09-09T00:00:00Z", "price": 77, "purchaseAt": "1995-04-17T00:00:00Z", "trialPrice": 99}, {"currencyCode": "tCdrxw1KOPhuvHuY", "currencyNamespace": "rGWDK41uMOC0mRvS", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1971-12-21T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1999-03-20T00:00:00Z", "discountedPrice": 0, "expireAt": "1973-03-25T00:00:00Z", "price": 3, "purchaseAt": "1981-03-19T00:00:00Z", "trialPrice": 66}, {"currencyCode": "fgGu472oWJlfglLM", "currencyNamespace": "4xjfkNL4lU6jaGfs", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1998-06-29T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1981-02-15T00:00:00Z", "discountedPrice": 39, "expireAt": "1986-06-29T00:00:00Z", "price": 72, "purchaseAt": "1977-02-05T00:00:00Z", "trialPrice": 92}], "FpvtDtetoQVFL8LN": [{"currencyCode": "W11vtpaTxi7k489j", "currencyNamespace": "RCn48bvkCPfKofwX", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1992-10-04T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1982-10-20T00:00:00Z", "discountedPrice": 5, "expireAt": "1983-12-30T00:00:00Z", "price": 97, "purchaseAt": "1977-12-29T00:00:00Z", "trialPrice": 23}, {"currencyCode": "XrA3XUGud4tVjmxE", "currencyNamespace": "f4XvVhFJTxFHITBg", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1997-06-23T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1992-04-13T00:00:00Z", "discountedPrice": 3, "expireAt": "1979-03-28T00:00:00Z", "price": 8, "purchaseAt": "1981-11-30T00:00:00Z", "trialPrice": 95}, {"currencyCode": "MHIKeTyBG5dCUoEx", "currencyNamespace": "nKfV3869IN4V1Odh", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1987-10-21T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1996-08-29T00:00:00Z", "discountedPrice": 63, "expireAt": "1979-07-11T00:00:00Z", "price": 55, "purchaseAt": "1976-03-31T00:00:00Z", "trialPrice": 39}], "mc4xYiLjLyZrXr9B": [{"currencyCode": "htzn8jAdTn6xBhrc", "currencyNamespace": "iryLm67rkadH5Y41", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1990-08-22T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1995-05-19T00:00:00Z", "discountedPrice": 48, "expireAt": "1987-02-06T00:00:00Z", "price": 0, "purchaseAt": "1997-04-17T00:00:00Z", "trialPrice": 77}, {"currencyCode": "l5TPC5GODS44bmm7", "currencyNamespace": "jPdKLddfdsUqjXVz", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1983-07-11T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1976-12-31T00:00:00Z", "discountedPrice": 99, "expireAt": "1977-12-23T00:00:00Z", "price": 57, "purchaseAt": "1988-05-31T00:00:00Z", "trialPrice": 39}, {"currencyCode": "heLgsAF4ctv5guyc", "currencyNamespace": "Giq9j2EyIknfLDpg", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1991-11-10T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1991-10-30T00:00:00Z", "discountedPrice": 27, "expireAt": "1994-08-26T00:00:00Z", "price": 27, "purchaseAt": "1977-01-23T00:00:00Z", "trialPrice": 69}]}}, {"itemIdentities": ["3gUZ8ZFyyEr0KBXu", "JBqK4QtEydPWLPBY", "iR3UbJc1ZYapx7C4"], "itemIdentityType": "ITEM_ID", "regionData": {"VwDZCIXFNEL3uWVR": [{"currencyCode": "z3V7YbJM3bNLWHAb", "currencyNamespace": "CZixe2cQ6O30lpzc", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1992-11-07T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1984-04-17T00:00:00Z", "discountedPrice": 62, "expireAt": "1976-01-23T00:00:00Z", "price": 31, "purchaseAt": "1991-01-18T00:00:00Z", "trialPrice": 72}, {"currencyCode": "oVzl2kBuLFXIeCEK", "currencyNamespace": "ZUTz3GvCAZ5j24ac", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1993-01-07T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1979-05-24T00:00:00Z", "discountedPrice": 100, "expireAt": "1983-06-12T00:00:00Z", "price": 69, "purchaseAt": "1976-08-15T00:00:00Z", "trialPrice": 58}, {"currencyCode": "6GO9zP3FaepA3b3Y", "currencyNamespace": "J9nJM6vtT27xv85K", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1977-04-17T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1997-01-28T00:00:00Z", "discountedPrice": 14, "expireAt": "1979-08-21T00:00:00Z", "price": 1, "purchaseAt": "1997-07-11T00:00:00Z", "trialPrice": 8}], "xPPdPwOtEuWBSO2j": [{"currencyCode": "JepUnEEgja2mIE2k", "currencyNamespace": "LTnJwc5XmkCuL5W4", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1989-06-03T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1987-04-05T00:00:00Z", "discountedPrice": 20, "expireAt": "1982-11-03T00:00:00Z", "price": 4, "purchaseAt": "1997-10-16T00:00:00Z", "trialPrice": 6}, {"currencyCode": "erTPW02PWsHiKYAr", "currencyNamespace": "AxnKBfBfDlrQQuAc", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1977-03-20T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1976-07-31T00:00:00Z", "discountedPrice": 45, "expireAt": "1999-11-05T00:00:00Z", "price": 50, "purchaseAt": "1981-05-30T00:00:00Z", "trialPrice": 43}, {"currencyCode": "j6lxuU3u2HEG0qfK", "currencyNamespace": "egvFTD1sPykS8YLm", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1981-03-02T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1974-11-08T00:00:00Z", "discountedPrice": 99, "expireAt": "1977-09-24T00:00:00Z", "price": 73, "purchaseAt": "1972-08-01T00:00:00Z", "trialPrice": 54}], "JMSnJIIgsAVmaGYx": [{"currencyCode": "UX1B9oVuzG2CnYX2", "currencyNamespace": "YBF2g7TVtzYEHUod", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1999-04-18T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1977-02-13T00:00:00Z", "discountedPrice": 12, "expireAt": "1985-07-11T00:00:00Z", "price": 40, "purchaseAt": "1992-02-23T00:00:00Z", "trialPrice": 45}, {"currencyCode": "bepUCTWiZ1uqh7GA", "currencyNamespace": "i4FEIu44u83ZLRxY", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1996-02-19T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1976-03-31T00:00:00Z", "discountedPrice": 32, "expireAt": "1979-10-31T00:00:00Z", "price": 34, "purchaseAt": "1998-06-15T00:00:00Z", "trialPrice": 57}, {"currencyCode": "JmUL0uzElixc023d", "currencyNamespace": "IvDiA0tQWlHwBcTt", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1981-01-05T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1984-06-17T00:00:00Z", "discountedPrice": 97, "expireAt": "1984-04-04T00:00:00Z", "price": 75, "purchaseAt": "1981-08-31T00:00:00Z", "trialPrice": 64}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'YAWWcbcbGWmKgE8C' 'Z4AELr5lraa5v5P5' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'Cj8hgFsqHC9h5JPi' --login_with_auth "Bearer foo"
platform-update-item '{"appId": "MEtgKuiGTYgwWv5X", "appType": "DLC", "baseAppId": "TajpwHITGeHTnqRb", "boothName": "zBB9ZFgJbQ3Fj1um", "categoryPath": "x4ItzkMJ7cudf4r9", "clazz": "16GPrhn2etVIQvRk", "displayOrder": 86, "entitlementType": "DURABLE", "ext": {"J41U4ooQ980ywmg1": {}, "pWpWit1QC7FKe0fn": {}, "HUlmU1unGKM0tgfe": {}}, "features": ["Wy47bbwMI4gGmvK9", "uKBwBcD12ae6r3hH", "gW596FwBNrFXt3TA"], "flexible": true, "images": [{"as": "JctAdxyZVKHA9Dka", "caption": "SOWgtg8yw8lHEbVD", "height": 47, "imageUrl": "oKMRMG541PAiNjUL", "smallImageUrl": "sx4SnKNXLMUaDSww", "width": 88}, {"as": "Q98JH4n0JtgqzZv5", "caption": "kVu4S95mj8YRvae4", "height": 11, "imageUrl": "3N7WNMYIfcDKbLu8", "smallImageUrl": "pnK34oA1keYXJvtg", "width": 14}, {"as": "FTVYelIlGJg9wdc8", "caption": "bihhWjfZpfcFBUsn", "height": 27, "imageUrl": "gl7H1sdH2RIJz1eI", "smallImageUrl": "7Q5pu9PutLf6IrvZ", "width": 29}], "inventoryConfig": {"customAttributes": {"TQ9P7sYLDWAJOA75": {}, "K4BYJ2fkqYJoF2FI": {}, "3vyyqRzc20O7FdsJ": {}}, "serverCustomAttributes": {"P1G9tyBTfERXdvgD": {}, "1Qf7Ot2DkUt3yexZ": {}, "BRvxYnEBhXtAVxCd": {}}, "slotUsed": 38}, "itemIds": ["meTrT7cF9oVCh89w", "NOkKYssVejcL3kR3", "hCGNgaJmuALlMQl9"], "itemQty": {"RLrthbfp0VgweLlT": 55, "sY3SsTnDQY7kKU2u": 15, "6Q4veujxtyQENvJr": 57}, "itemType": "APP", "listable": true, "localizations": {"YPK8IxrSZuxWl0Je": {"description": "4fJIyFAm3DQht4Jw", "localExt": {"nPS2urJqerobWMZG": {}, "VL5KLTxahWlS6XdB": {}, "aKSLCgOOPXM6XTUh": {}}, "longDescription": "2dJ90yqHDNacl4F9", "title": "G6Dl5TFwBY6HKXAb"}, "lkT8VGgSH8MGZGwi": {"description": "Vj7eDTaka9ABfX1I", "localExt": {"ByPEOuPhGspRi3bh": {}, "PQvBBJI5Jxytpcub": {}, "N4AUUPFPscZsXeJO": {}}, "longDescription": "D4DMtqfIGiGJovgW", "title": "SRxZ8N4UQ2fg3V1o"}, "2x0hL5DuBDqMyIAz": {"description": "Wze94MEdJFAy2JTl", "localExt": {"lJkRGB8jqJEd6eqq": {}, "sBVyONV0JRtozI0j": {}, "pliCFQ6WgJpGPigd": {}}, "longDescription": "c5VyC4qvWjVac1cQ", "title": "vSxgTNIUzxDgBlIb"}}, "lootBoxConfig": {"rewardCount": 41, "rewards": [{"lootBoxItems": [{"count": 22, "duration": 52, "endDate": "1997-04-08T00:00:00Z", "itemId": "u4htrsf8eIFSovTG", "itemSku": "XaMsq8ePN1oco2jx", "itemType": "8Upe8SjMvpqM8pug"}, {"count": 14, "duration": 56, "endDate": "1991-09-06T00:00:00Z", "itemId": "l9iCqfW6rqGOQny4", "itemSku": "ij4ysYPonb59gQff", "itemType": "kNOmubxEJr2qEAuJ"}, {"count": 2, "duration": 32, "endDate": "1982-09-06T00:00:00Z", "itemId": "Srcbc4LWfKaY5c1t", "itemSku": "P5TDuI5f6m4KC07C", "itemType": "nsZe32hqEcB1ExYM"}], "name": "Bb3ckvoaJYdMqGeg", "odds": 0.032335751368468, "type": "PROBABILITY_GROUP", "weight": 28}, {"lootBoxItems": [{"count": 89, "duration": 9, "endDate": "1983-12-28T00:00:00Z", "itemId": "FS0Ed7gTM5AVrtBQ", "itemSku": "iDTcNnZa6Zuxk6u6", "itemType": "HXXdiC9ZDj4E4mv1"}, {"count": 91, "duration": 64, "endDate": "1994-11-17T00:00:00Z", "itemId": "s7Nf95lGlPrf6obI", "itemSku": "dnI6Ag7eUYcYJ4Qz", "itemType": "XCmqr6gmPGaHP5SV"}, {"count": 85, "duration": 76, "endDate": "1982-06-05T00:00:00Z", "itemId": "RLiDi0mNHb6Lx8eq", "itemSku": "8SGNwEQO8dYXvBSY", "itemType": "vJBwb6CjZUMRf2VJ"}], "name": "etWsokvx3BHuTEcz", "odds": 0.2824451358060015, "type": "REWARD", "weight": 75}, {"lootBoxItems": [{"count": 37, "duration": 20, "endDate": "1989-12-17T00:00:00Z", "itemId": "5tj64gV7nmDk29mc", "itemSku": "jSuz9vbNStqPtQmQ", "itemType": "N6eKAGiZFCftT0RW"}, {"count": 62, "duration": 58, "endDate": "1972-03-20T00:00:00Z", "itemId": "jWYrnulxcCKAru8p", "itemSku": "OaAVLDB4k3Jwkdax", "itemType": "R7GJpYmuYCPG181q"}, {"count": 83, "duration": 67, "endDate": "1993-08-05T00:00:00Z", "itemId": "LkP5hc2Fh04JTsqD", "itemSku": "TynCewqJligLlRxO", "itemType": "elKykICRxF6HtlER"}], "name": "2txs4qrNARATn6KX", "odds": 0.6536238695411208, "type": "REWARD", "weight": 40}], "rollFunction": "CUSTOM"}, "maxCount": 74, "maxCountPerUser": 57, "name": "bbQGERMNpqWb51y5", "optionBoxConfig": {"boxItems": [{"count": 90, "duration": 7, "endDate": "1995-07-23T00:00:00Z", "itemId": "BqQsBpCJBIXLGYcw", "itemSku": "WVRK6UKk5ozrXA4H", "itemType": "ZHNyq9odanhR1Zrm"}, {"count": 35, "duration": 39, "endDate": "1995-02-23T00:00:00Z", "itemId": "aauufxkPHElug48T", "itemSku": "gfNu0rqXUOyToLPI", "itemType": "REGIKlJt3EP9kKwk"}, {"count": 63, "duration": 20, "endDate": "1991-05-17T00:00:00Z", "itemId": "Q8VOHGwbADMfuOmh", "itemSku": "0lciRhVZ2DeoODXM", "itemType": "zLSrzoiBnYi5UWs3"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 23, "fixedTrialCycles": 86, "graceDays": 9}, "regionData": {"lXNaUNgdY2vfJuje": [{"currencyCode": "5cPnmGjTvYa5Pqx1", "currencyNamespace": "K7qcAoijBPAp6EPb", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1991-12-01T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1981-07-10T00:00:00Z", "expireAt": "1991-05-18T00:00:00Z", "price": 88, "purchaseAt": "1986-06-07T00:00:00Z", "trialPrice": 76}, {"currencyCode": "s2yxf6MLZJ2jZfZb", "currencyNamespace": "pTJezzriCDWXT59S", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1998-08-18T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1992-07-06T00:00:00Z", "expireAt": "1996-10-24T00:00:00Z", "price": 61, "purchaseAt": "1987-01-15T00:00:00Z", "trialPrice": 100}, {"currencyCode": "4OMIzvTScdbKBsAy", "currencyNamespace": "JMz4ILNDvhB4Eoes", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1991-12-28T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1989-08-21T00:00:00Z", "expireAt": "1973-12-24T00:00:00Z", "price": 30, "purchaseAt": "1971-07-29T00:00:00Z", "trialPrice": 7}], "TPwD3jxF7vxRUY0i": [{"currencyCode": "lrNoFT98SgtJd4Z5", "currencyNamespace": "f8nfaKqdZFLbZEHx", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1986-02-07T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1996-02-02T00:00:00Z", "expireAt": "1971-12-26T00:00:00Z", "price": 38, "purchaseAt": "1994-01-28T00:00:00Z", "trialPrice": 13}, {"currencyCode": "7r1SQw80JfMpPrSq", "currencyNamespace": "YypRUnq5o4ETeCUY", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1972-03-09T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1974-05-13T00:00:00Z", "expireAt": "1980-03-03T00:00:00Z", "price": 99, "purchaseAt": "1983-07-08T00:00:00Z", "trialPrice": 98}, {"currencyCode": "w8OQ13t3uTw6zQuo", "currencyNamespace": "ZcXQpoTOxe8y1jor", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1985-02-23T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1982-07-08T00:00:00Z", "expireAt": "1989-05-18T00:00:00Z", "price": 37, "purchaseAt": "1985-12-27T00:00:00Z", "trialPrice": 74}], "RLee3TcJ7DQIi45a": [{"currencyCode": "CDHN9mVug2zkVf6K", "currencyNamespace": "gpKOcn3tMD9UT67b", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1993-06-14T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1974-05-07T00:00:00Z", "expireAt": "1987-09-24T00:00:00Z", "price": 61, "purchaseAt": "1974-01-06T00:00:00Z", "trialPrice": 98}, {"currencyCode": "6wUQvehKqwCh86Xm", "currencyNamespace": "RkCEcfHDCdl59Wp9", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1999-07-12T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1985-01-24T00:00:00Z", "expireAt": "1987-06-26T00:00:00Z", "price": 44, "purchaseAt": "1973-03-16T00:00:00Z", "trialPrice": 22}, {"currencyCode": "DdK6uvg8f2cIoByk", "currencyNamespace": "9fxtvsgeAxo57nKA", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1979-04-10T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1977-01-14T00:00:00Z", "expireAt": "1989-01-06T00:00:00Z", "price": 71, "purchaseAt": "1980-06-16T00:00:00Z", "trialPrice": 75}]}, "saleConfig": {"currencyCode": "BNsi4giR9434WpKK", "price": 8}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "UqVxcSthrpnMUBsn", "stackable": false, "status": "ACTIVE", "tags": ["QnbqY1cQwVEtAr5k", "mQeEweoBHTdwAk7Z", "KKAo9MM2Cqm84jVi"], "targetCurrencyCode": "9kIpqgrzpUkNOBWy", "targetNamespace": "dXV0Fi02aFr8CDap", "thumbnailUrl": "jwNOl4k8rVNrm8dr", "useCount": 44}' 'KDJiWxQBwaS7rDBf' '2S54phbdyGDt47f9' --login_with_auth "Bearer foo"
platform-delete-item 'GWRlE9hqz6rjDNo4' --login_with_auth "Bearer foo"
platform-acquire-item '{"count": 36, "orderNo": "XU8mosluiHZJ7O8s"}' 'AQ32wj9uaDzsr9xY' --login_with_auth "Bearer foo"
platform-get-app 'iWRuuzQJiLc1eI9w' --login_with_auth "Bearer foo"
platform-update-app '{"carousel": [{"alt": "3JEhxPGbEk7s7gw0", "previewUrl": "7FlounC3vJKBC7Sw", "thumbnailUrl": "goViPeIB4Ehy0Y5a", "type": "video", "url": "DginxAM77eY9C14F", "videoSource": "generic"}, {"alt": "2jdx1eIba1sB0HsJ", "previewUrl": "06DzfbzRYt4OVUyu", "thumbnailUrl": "mBeIqdQGZC5kM03H", "type": "image", "url": "ijsQRj7N8IAjmson", "videoSource": "generic"}, {"alt": "FR7996Ug5m4axDV5", "previewUrl": "uTcYsoahUrELQ1bt", "thumbnailUrl": "jJOqQMgZWAU6E92n", "type": "video", "url": "H1lRZ9Z1JBrHRzEO", "videoSource": "vimeo"}], "developer": "u4EzwRjD7jmQJeFP", "forumUrl": "ghqamSc5y0X48eT7", "genres": ["Sports", "Racing", "Casual"], "localizations": {"8HZUtVVaJCiLgKOw": {"announcement": "rSfWhT5B4Wedopzw", "slogan": "SluBtRFPKThyGnbj"}, "mPDKFS6u9FHuv1M3": {"announcement": "qfch4SqIV6LQPHla", "slogan": "eYl4csFq65cU66yJ"}, "aj4ovoKWE4EW0sw8": {"announcement": "v5peiuxoBJATauyD", "slogan": "3XCXVMiyEvMf9yil"}}, "platformRequirements": {"UEujk6oqYo1HQYTF": [{"additionals": "zwdOMdupwD4O3uNb", "directXVersion": "cIDcIyvZbOy1T4hf", "diskSpace": "wkuVykH4RpfmjIXF", "graphics": "GZ5PKdbabJIkNnt9", "label": "P1Tkm08luh4dpPRM", "osVersion": "DbUXBWTbpAogG2wl", "processor": "ZkLhuU5FI8NijFI0", "ram": "GKwJ3vfXlsAMy2Zp", "soundCard": "2UAGxHnmSxvkG9UR"}, {"additionals": "5q9neoW6JBcGp9Rx", "directXVersion": "2RfcRhXpmeeHdvph", "diskSpace": "as9S7ivHEoLbUMM4", "graphics": "7f1UreUpxEkXIbE1", "label": "ETzRJZKMavu4Ul2I", "osVersion": "aieEbPSE7TGkeHsY", "processor": "sW9oGBN1pYMBwbPZ", "ram": "TlMlUvFEiGprcNSQ", "soundCard": "9kEeXBZ6FVrBzyhy"}, {"additionals": "hoS6a9oe0JaXFpff", "directXVersion": "28uYbe4Cf2HEHvVe", "diskSpace": "vhISjbtBJUK5fE3O", "graphics": "ufPSX3PdOU2V9yw9", "label": "4oa8UJ34TIedV3Hy", "osVersion": "oX4VnO2LpBU08wfn", "processor": "lHBXFIqFUmgUSMM5", "ram": "au8GJT0mkVPI6zUt", "soundCard": "f3QaJPGrTNcXXTUI"}], "ggoH89QNmI17UDb1": [{"additionals": "9R6H7r1ta3m7jK5p", "directXVersion": "xe82pgFiAS6piIzm", "diskSpace": "c8rKrKEPGSAcong6", "graphics": "eNERUf8kjci1Ctcc", "label": "v9Gv4tOcbnuCqf0l", "osVersion": "m6WBkIzjoSV31tvm", "processor": "MB6jzrpRGESmooHi", "ram": "CV4GUOnXpapXQGRa", "soundCard": "kUbcG7PcR4eiU3Id"}, {"additionals": "i55jNrGNT2VHTKuI", "directXVersion": "T5FwwHj0Ur5F2PWG", "diskSpace": "TTD81xhNP4t6kYBU", "graphics": "jyXAn3bWQF6QcAiJ", "label": "pXIrgroixptZhckU", "osVersion": "TGkcBOE4qMcH1Kyi", "processor": "8ZFvGcV8DY0XOkDs", "ram": "txZcY1HgAnZV4IOg", "soundCard": "lVLqb9lGAJUg21Lt"}, {"additionals": "7JwgwMUSuC3Bajy3", "directXVersion": "BcEMCtQs2FcEcvVA", "diskSpace": "yId6Cp85HVDsZBQg", "graphics": "OnXuXsGThYZrmm0w", "label": "rFMnPpWgrQD4hEk0", "osVersion": "OLjYsnignE7KcMF7", "processor": "fuDbzRRYMNXWUsp1", "ram": "tOibJY9aL9ie6vvM", "soundCard": "biNURrlm88QlKyuo"}], "ya4JgakZyUV7t73V": [{"additionals": "nSFbuxd4KYZ0jk0U", "directXVersion": "ZdhtnKu9oTc8pVki", "diskSpace": "yGsj5JdXzRxfNEjU", "graphics": "MTs8WIObJBTsvsw7", "label": "6uISRX0bKVoWtoUW", "osVersion": "1P7ocuBAldDSUS7H", "processor": "aa6unq1yQOSRvyiL", "ram": "BRVtIDi2piIQFVmz", "soundCard": "Midw70KSahpYZdKZ"}, {"additionals": "RyR9AX7JjxvNZhM8", "directXVersion": "4DiZk6ySrB9SVFct", "diskSpace": "W7YS0OkL78XeEAtA", "graphics": "LFI3v8yha4pd5A7M", "label": "YcpBD6lKNb8RxvN2", "osVersion": "u5J7baOeLH19fqBw", "processor": "NbNe1ffYRtIvQaKy", "ram": "evWYtZjK6J29v8Mp", "soundCard": "BSpo3AKRmnJkzJHA"}, {"additionals": "ckUyBksYQfDm0RNF", "directXVersion": "wiz70tRVLMlHi8i9", "diskSpace": "gOVqajUWrgEsWDta", "graphics": "Kzn8dZwnnGeZsZVg", "label": "bPzPFbrOMZMgWkFN", "osVersion": "7Tpkx6GcfyOg6ZUr", "processor": "rp9ubg9mndW2JKmQ", "ram": "afUs2bxYztOEyVbK", "soundCard": "If1ZbzgUwd8DHoCQ"}]}, "platforms": ["MacOS", "IOS", "IOS"], "players": ["MMO", "CrossPlatformMulti", "Multi"], "primaryGenre": "Adventure", "publisher": "HYmkRlg7gYs6unPY", "releaseDate": "1993-02-06T00:00:00Z", "websiteUrl": "9jNQN1di1ldhOh6H"}' 'vjnYuV7NfC4A2ODi' 'Zhbfb8QqCyK1XH9D' --login_with_auth "Bearer foo"
platform-disable-item '6vl5eFdFfgK46GjC' 'WaP8huTmnq3FGQn3' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'Ahu5wxq6oJq4mChm' --login_with_auth "Bearer foo"
platform-enable-item 'QHQhO9IKBXDFQfXF' 'D58sG6uDhFYlrzJB' --login_with_auth "Bearer foo"
platform-feature-item 'YSeMuJfQecutjS02' '9BiJWOG1m7MKclr5' 'igjNTVItrH2X78hx' --login_with_auth "Bearer foo"
platform-defeature-item 'JgaVfw5Vnyq8OzTE' '89WDNoMcOmbfJrCJ' 'QIj1haAosKglqaCX' --login_with_auth "Bearer foo"
platform-get-locale-item 'E9ytpIO8btO3OwNE' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 91, "code": "0GGbT4Hf2PPKOldk", "comparison": "excludes", "name": "vi9kg3rMIzNmhJTN", "predicateType": "SeasonPassPredicate", "value": "q86IaDFjjx6uZerW", "values": ["OLAfTXKLzbrddqcK", "La7LevxNHOSEhQRZ", "btwTX9gNRByjbE8l"]}, {"anyOf": 71, "code": "nTgtgW33wDwD9RKv", "comparison": "isLessThanOrEqual", "name": "4yFQFdrRoM6FoqCY", "predicateType": "SeasonTierPredicate", "value": "hOqG5KDdUvk0LEi2", "values": ["sCR5rVsyfcH7WjP7", "NQepUTGhwlY4lPzl", "6Ls7mjRxNmvvNtjJ"]}, {"anyOf": 69, "code": "VeVskqeUB7RSayqG", "comparison": "includes", "name": "j4ro5B19VE838c7O", "predicateType": "StatisticCodePredicate", "value": "ebRA09rW8i8krFWJ", "values": ["VbBPUWipz9C05Yab", "he03coRFok5d3AyG", "rZO8GuoXNSoVEBG7"]}]}, {"operator": "and", "predicates": [{"anyOf": 23, "code": "FCK5ucTFsAFzaO3y", "comparison": "isLessThan", "name": "pA3KMxBlrRytER1q", "predicateType": "EntitlementPredicate", "value": "EdLucrtO2gCQD057", "values": ["oCEkRdo6qHYIZWnX", "VAw4v3q6JRHcn7Ka", "DrDlgC2nzS9SiGUj"]}, {"anyOf": 33, "code": "qiBUI9esSsXegSEh", "comparison": "isGreaterThanOrEqual", "name": "mqWsGA76yxi0QzZW", "predicateType": "EntitlementPredicate", "value": "2A9VOA8H9VeHv0L2", "values": ["Rh2o7GCQGPCxwEdk", "xs1WId9WlalqshF9", "Acm960EYQEuGJVl8"]}, {"anyOf": 51, "code": "K30EX0FclpDl5Hsu", "comparison": "isGreaterThanOrEqual", "name": "ArROIodcmM6v2AEo", "predicateType": "StatisticCodePredicate", "value": "hFVQTRekLfjmy8zo", "values": ["sRCRgVwbrQKmb01y", "A7U7dGMjupZkZQY8", "CNyT4k3DIbfT22G5"]}]}, {"operator": "and", "predicates": [{"anyOf": 31, "code": "UCGBVfpctNFUsUQ6", "comparison": "isLessThan", "name": "XQcb2o1J5euLAbBg", "predicateType": "EntitlementPredicate", "value": "V3ig8Jg5VByeI3yc", "values": ["ec1m8BusV9tUh74K", "Vo6Xqjz2xUKLNWSm", "McYYBixKJXCISQdw"]}, {"anyOf": 11, "code": "yVvyelIJ8QgaLMqi", "comparison": "includes", "name": "36ULa7cfZl4VuY6r", "predicateType": "SeasonTierPredicate", "value": "2FrR1GSogkewIzTO", "values": ["qKkcjRh3l2gAJOTC", "bx7J3gNLIlTk3Bpc", "lrk4hIRn0znIKzAE"]}, {"anyOf": 55, "code": "6KLPXkvUv2XiXaBz", "comparison": "isGreaterThanOrEqual", "name": "bIJ7eHnVWOboMkyB", "predicateType": "SeasonTierPredicate", "value": "exsOZ0b2p3b63Krc", "values": ["HkSSV8e1MgTTLS2F", "OLGCcg16DqwdQPQ9", "wIcXMhGy83Xit6bo"]}]}]}}' 'garY903INGIyEfRB' 'Ej7qms9AGQExPhgr' --login_with_auth "Bearer foo"
platform-return-item '{"orderNo": "9gGfC0GjvpgJfuBs"}' '1Vpqn47GVghTH2wT' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group '{"description": "oOnq9U5lyW89Xwt3", "name": "wmRTrDCjhnKvsHez", "status": "ACTIVE", "tags": ["TqgYPixtHk6lWq6t", "EeUmU96FLEak0mJq", "jRYldcTpdeCD9XPR"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'i4bAQL7VE2wL8Y4J' --login_with_auth "Bearer foo"
platform-update-key-group '{"description": "FVUdzA8bvXlDhG7B", "name": "rorbKIKuOXJPm5zt", "status": "INACTIVE", "tags": ["soMaTvQq2a9YdFNt", "RVSO0js0hG9xmSnz", "d7zgUxAogcnGkXk1"]}' '7QPkJHRhmLKQuQVF' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'SKiXl8G2uf6E8Eaj' --login_with_auth "Bearer foo"
platform-list-keys 'XLSAS8MKMaxQ1QyJ' --login_with_auth "Bearer foo"
platform-upload-keys 'CpKedhuzI7G9NCKK' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'Xu1bqI2M5PmXfKnQ' --login_with_auth "Bearer foo"
platform-refund-order '{"description": "7BYGjCUDMOrbmoRv"}' 'WnfmGFy0eUoOBd90' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config --login_with_auth "Bearer foo"
platform-update-payment-domain-whitelist-config '{"domains": ["h9EDqSTOfoNewWjw", "MWDKEt6JhbJ0fwTD", "aq6b5RpMwhWPtndr"]}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated '{"currencyCode": "iXU9loOxpmEuwDVc", "currencyNamespace": "12r0DVUGgGHkapTC", "customParameters": {"afFMdvYiCBuzUUwy": {}, "I6Vtd4v9k4fv3kMi": {}, "uQ3DhsKLxjt5srPF": {}}, "description": "xBgpFtDBmTLH9kP9", "extOrderNo": "U53z6joBAhAlJGI2", "extUserId": "YYb6ajBjgq6eY4PB", "itemType": "SUBSCRIPTION", "language": "iElk-856", "metadata": {"tgXucx85vHA009FA": "b21jxeWXk80y9uxg", "VLGgK8aVSCN6oCET": "Q8gIDRdD2wwMXwKV", "XGPhEJsc7rZpxaPH": "c9r8eToFmkHJ6BPO"}, "notifyUrl": "KFLxIwKssw647YwD", "omitNotification": true, "platform": "3HWJw9zIWsiP2JQ2", "price": 24, "recurringPaymentOrderNo": "l07jPlcYaqYM7YfB", "region": "mhjI9Y28qVceS9UX", "returnUrl": "48dKPCFUIeyYEymN", "sandbox": true, "sku": "9ytb3c8pVZ8GlU89", "subscriptionId": "62e6gtn5pUARJM1T", "targetNamespace": "8QwMNOAzXmyHEV4g", "targetUserId": "9P6a280S5RNB5dVC", "title": "sB7xL4axSPgPCiwL"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'xCFLDixZwVtt3RVT' --login_with_auth "Bearer foo"
platform-get-payment-order 'l0tR00oQgcHdGGK3' --login_with_auth "Bearer foo"
platform-charge-payment-order '{"extTxId": "x76U1EIcklttmrpg", "paymentMethod": "F5szl0sMY8es36r1", "paymentProvider": "XSOLLA"}' 'UiN24ol1qqbalgiz' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated '{"description": "L97ycJV5YqE2myQz"}' 'l7X9fHr6WvBxmBvN' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification '{"amount": 19, "currencyCode": "nbE2PMv12ZSRJkuj", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 41, "vat": 59}' '7IYzaZUTmvsEzLPn' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'nGsnfmBerp84qjwz' --login_with_auth "Bearer foo"
platform-get-psn-entitlement-ownership '{"accessToken": "WpCF1vyamjsEzwtL", "serviceLabel": 85}' 'LJFaIaEMW5bhJyL7' --login_with_auth "Bearer foo"
platform-get-xbox-entitlement-ownership '{"delegationToken": "2WDyhBsCCbnfihnX", "sandboxId": "KxGxaupnTTq9ihZk"}' 'vFKfSHQh8I9xk3sF' --login_with_auth "Bearer foo"
platform-get-platform-entitlement-config 'Nintendo' --login_with_auth "Bearer foo"
platform-update-platform-entitlement-config '{"allowedPlatformOrigins": ["Xbox", "Playstation", "Epic"]}' 'Epic' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Playstation' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config '{"allowedBalanceOrigins": ["Other", "GooglePlay", "Steam"]}' 'Nintendo' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'IOS' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config '{"appConfig": {"appName": "ioRaKnWhlh80BhYe"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "fJDS6T75Q4ulonMF"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward '{"description": "s3OSesE5p0DwUj2H", "eventTopic": "KUvPYUcQBxMSdOOs", "maxAwarded": 27, "maxAwardedPerUser": 7, "namespaceExpression": "2Nd8Jpa19GJDK46E", "rewardCode": "ehx7xasqMY9aulsL", "rewardConditions": [{"condition": "6NOV5agpS6A5mkuf", "conditionName": "BpWVxIK9D2bTcgaK", "eventName": "occaSwWcZmzCWGI1", "rewardItems": [{"duration": 4, "endDate": "1988-12-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "rg8tLAJWpcyNkUvq", "quantity": 27, "sku": "byQk2vQTYX1xsth2"}, {"duration": 80, "endDate": "1990-02-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "lugIAknXcSaVYcAY", "quantity": 32, "sku": "X1K9JrK6Or2xx7rL"}, {"duration": 47, "endDate": "1980-05-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "oWiywnxuDLLuIaSx", "quantity": 30, "sku": "YoID2UqO0iAXA9dB"}]}, {"condition": "4ib8HDOJ8TNiP8Kg", "conditionName": "EAj3dbRTI0i6dO3z", "eventName": "kbDseh4tJdoGcwMB", "rewardItems": [{"duration": 25, "endDate": "1974-02-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CAlDlVKBsLZiBRXs", "quantity": 53, "sku": "tcHrV0MbJGr4drgk"}, {"duration": 61, "endDate": "1981-01-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5m0pGzazM2BUXnzU", "quantity": 63, "sku": "gr3Cc4M2O7NrTQO7"}, {"duration": 74, "endDate": "1973-11-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "dZDGwqx7T3l1ut2o", "quantity": 50, "sku": "2FBS93Mg6TKwdRMr"}]}, {"condition": "aDLrwh3d0ykRGkgq", "conditionName": "UNIbJMJ9ABbKVWO2", "eventName": "YEDiqkwKbpdk7wlD", "rewardItems": [{"duration": 28, "endDate": "1997-02-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "iPPjpSAlZwFGpea5", "quantity": 84, "sku": "XdbYCRexPekTsQxM"}, {"duration": 94, "endDate": "1990-02-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "aSot7aohFYy4VxwH", "quantity": 71, "sku": "V7ZpJZPHCMqvcYme"}, {"duration": 60, "endDate": "1998-10-31T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "iTP4PSrXUS6jYI9l", "quantity": 37, "sku": "cqclNlBORlC8Zkjs"}]}], "userIdExpression": "xYtgxplHTPLzynjF"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'false' --login_with_auth "Bearer foo"
platform-get-reward '0VCMTFJ6svTyo9RH' --login_with_auth "Bearer foo"
platform-update-reward '{"description": "get5hzB52BDFopxU", "eventTopic": "wkMuSqQnKzDgDAtq", "maxAwarded": 63, "maxAwardedPerUser": 12, "namespaceExpression": "3kuybwTQFYEJjIYw", "rewardCode": "qfSRy8GgVk77fd1G", "rewardConditions": [{"condition": "S5YkyhAiAItnWUmD", "conditionName": "225fp1egsx3ErheN", "eventName": "wqd5priclNNqLyrl", "rewardItems": [{"duration": 52, "endDate": "1979-05-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "J4QHbfnAdtkujxHf", "quantity": 10, "sku": "DIW2ncJJKpqmgvUT"}, {"duration": 36, "endDate": "1985-02-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "AtpOqUQxzqJZiWi3", "quantity": 74, "sku": "QLrt2t6bVpCgKvPX"}, {"duration": 90, "endDate": "1988-08-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ufmKh783cV54JsVB", "quantity": 90, "sku": "5oHzqY3DgykA8zBJ"}]}, {"condition": "X0rkOHUkY5aSlqhY", "conditionName": "oSXbn6l5xAzc1nc3", "eventName": "eFm950dtVAo7w4e3", "rewardItems": [{"duration": 44, "endDate": "1995-04-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "h6Rum5pbgEt39uJQ", "quantity": 32, "sku": "E4UyoQg0b0sGOkzx"}, {"duration": 97, "endDate": "1979-06-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "5LKmkQ7YBhsOuJ0y", "quantity": 31, "sku": "QKxVmRTawjiZPMoZ"}, {"duration": 32, "endDate": "1972-11-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "TBM9Q8t829Ido1Jy", "quantity": 43, "sku": "PdJPn9eIdhIBvTTu"}]}, {"condition": "pABJ4RwH3EdKmYtb", "conditionName": "qQHNfIZwrMxf3Enz", "eventName": "ZVnkLT0Lb85nmpdN", "rewardItems": [{"duration": 38, "endDate": "1985-12-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5YI0jeO2zMDSy4ky", "quantity": 33, "sku": "4UcYzswAGpXqQxct"}, {"duration": 43, "endDate": "1972-03-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Xu3iNvn7vLZ7h6al", "quantity": 16, "sku": "Q4OZ2nDodm4TNs8m"}, {"duration": 53, "endDate": "1996-03-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "6IKSYFdJwgZsRPOz", "quantity": 45, "sku": "ZrLQjk4VoYfIksth"}]}], "userIdExpression": "24cZBpdDFfvzeU5i"}' 'qhx6zv7EURTNIoG1' --login_with_auth "Bearer foo"
platform-delete-reward 'DBdoKH6sREmmfwUZ' --login_with_auth "Bearer foo"
platform-check-event-condition 'LZZS7snx0Q2Gd8m7' --body '{"payload": {"Y3wiNloJfey3HXL6": {}, "SjljNPTXA3qbg55S": {}, "yienCODZ0mnOpPTV": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record '{"conditionName": "xEgBFzG8tlkxWKCU", "userId": "1XN4gl7yHvEqpJSr"}' 'DXVwCkhOQ161TFjR' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section '{"active": false, "displayOrder": 25, "endDate": "1971-05-04T00:00:00Z", "ext": {"5VIuCOCkt2W1DfI8": {}, "QtgODk9K6DcMnyCP": {}, "n1FylWdaNV1VaZTk": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 3, "itemCount": 3, "rule": "SEQUENCE"}, "items": [{"id": "uWiiA4UTDgS2SVEo", "sku": "5M80LLbku9GYH4ij"}, {"id": "qOVM50tCqkZfsSxA", "sku": "bDJ7sHCLup8pmEos"}, {"id": "OXglQwwdeLVpmXqR", "sku": "wVjc3W2ANmE3VVsQ"}], "localizations": {"1fm9EUdiaRjuLsKZ": {"description": "oqnpKwhpZVdw5UMa", "localExt": {"8ymxtEFLwELCY2vI": {}, "ddlxnA1VynioJcAP": {}, "wVHUGcs1ACMvoY4j": {}}, "longDescription": "WH9dFmOHW0j9suuk", "title": "PE4JwQONQ2vCbMn0"}, "Oia336uiiMTAduct": {"description": "vUfVwLahtRedh1Si", "localExt": {"ZlOpIQ8GL7jBF1R5": {}, "OexAPzCG6ZKQClGc": {}, "1636nbfM3J9G40Y6": {}}, "longDescription": "2bCo941ALznQuHVs", "title": "kfCjUK8GeX4Q0B2C"}, "j0oOmBmXu1KiTTiz": {"description": "7yrIvQj2isN7bRwc", "localExt": {"r16lW5YwgZpjlMMt": {}, "PWg8217m7qNkQiKp": {}, "2oac8QTNEuBbeuQq": {}}, "longDescription": "m9wM7mgTtUdPVcQi", "title": "jMBhs0kDP6d3nuUZ"}}, "name": "41mSeS9SnGqhJOvy", "rotationType": "CUSTOM", "startDate": "1976-08-14T00:00:00Z", "viewId": "nHPKrZ7TiNBE0HRs"}' 'E0GHDOFjrfqJcyxT' --login_with_auth "Bearer foo"
platform-purge-expired-section '2a7fCFAUzLELiM57' --login_with_auth "Bearer foo"
platform-get-section '3TdtWjfVciuLnLsB' --login_with_auth "Bearer foo"
platform-update-section '{"active": true, "displayOrder": 66, "endDate": "1991-05-29T00:00:00Z", "ext": {"pcwJd4SrigIxAhbF": {}, "MZfxaznlDQbzTiFr": {}, "QB1yUonirH4URx3N": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 37, "itemCount": 74, "rule": "SEQUENCE"}, "items": [{"id": "97KBedcr6PM51z7i", "sku": "0wQ9egK2t46EG8I2"}, {"id": "lTviKbOgVuN3nhkn", "sku": "6QIesNoYqvVsakyl"}, {"id": "HikKkpOjqwgKvfXX", "sku": "s8pDqm31AZSRkuw6"}], "localizations": {"q8FgqG46RsFK7eYl": {"description": "SU3vYcHZZjFegVnZ", "localExt": {"On0tk4IATSIefcqN": {}, "En4IZ0Dv6b8WtaMV": {}, "vLbG04KKnh3jvW0Q": {}}, "longDescription": "p3kTyL4CsLwiWUMc", "title": "pxn4B6XoTNMuqZTH"}, "wo1IAJQpb6r8ZeaS": {"description": "HwQuiH3Ozu4G6bXx", "localExt": {"p0gYZyF9fJBJkSOr": {}, "F9Dg4FcDwBGyBiHe": {}, "wZkwEeuzBBRSknxy": {}}, "longDescription": "WkZObuvig8sMuss7", "title": "6ezTrsDZNYUV48Oh"}, "6I45X7HvUtPYONZd": {"description": "Fk75lkjQNHrjaboG", "localExt": {"omguUqeuZh5qtrRb": {}, "NnGejdTGvZgN5hsh": {}, "Se5YmZXKEQLkM6o3": {}}, "longDescription": "eGSP4Htmr90TqGf0", "title": "OyqJ9ibJMmRgoxNw"}}, "name": "p1lGkYoq8HP1TM0t", "rotationType": "CUSTOM", "startDate": "1978-02-11T00:00:00Z", "viewId": "kHl1wMht2Izq7TCU"}' 'JhDsDefAS09VyQB1' 'vR1mx6K17GL1CrO4' --login_with_auth "Bearer foo"
platform-delete-section 'ZuoGZSxTzm8oMSPI' 'HPtqzIWIzg8pbjnt' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store '{"defaultLanguage": "1iBV8DpbjGts4UZD", "defaultRegion": "TfhAyZKhqilty9NV", "description": "lgxUmnfdOAmu1dX1", "supportedLanguages": ["NqD20RUvvYeJZw6Q", "ZFN7wFCnqpvNesGi", "Vnt9p2to7Yja1soD"], "supportedRegions": ["E1K0SvGrMYwPmPXC", "2LfL2m5rP2A20t6f", "oPPH94SUinY5diUl"], "title": "qgvY7dPPyahppgxJ"}' --login_with_auth "Bearer foo"
platform-get-catalog-definition 'APP' --login_with_auth "Bearer foo"
platform-download-csv-templates --login_with_auth "Bearer foo"
platform-export-store-by-csv '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["L2UCWUtaAD7ZZx1i", "efATWcDSqGYRMdz0", "7xEJ40epssgJJC3C"], "idsToBeExported": ["X0hpB1ZGMMo5DSoz", "CuFsrBMtoOeLfMCY", "xSeeJOlxa395rghZ"], "storeId": "wGhdZJkkGhYvXYMI"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'yaEMEqOpwetb82b9' --login_with_auth "Bearer foo"
platform-update-store '{"defaultLanguage": "6rsH73hRfDgl29GW", "defaultRegion": "KpItMt4GszRufkDF", "description": "LYyNBPlMrkse9SGc", "supportedLanguages": ["MuV5phhU315LUC6H", "SMQ32UznXNd6ve29", "lqqtcLJW9eTJvKND"], "supportedRegions": ["Frx6LabyDnqXjXKP", "Icxh0x7T6RQGnnW4", "ugGX6mKBbgTD9xL0"], "title": "7ZzzIs3Jke34ZAUu"}' 'LP897ooMLnemwKAv' --login_with_auth "Bearer foo"
platform-delete-store 'gDXNrFEE4Jf4hQps' --login_with_auth "Bearer foo"
platform-query-changes 'LOcLtZw0efmEVcW7' --login_with_auth "Bearer foo"
platform-publish-all 'mxbS5UOoICxQMit8' --login_with_auth "Bearer foo"
platform-publish-selected '555Niy4NNFpRE5pS' --login_with_auth "Bearer foo"
platform-select-all-records '85yTIRWvLRy58UKW' --login_with_auth "Bearer foo"
platform-select-all-records-by-criteria 'Pv3F7S0wCVlYQi9c' --login_with_auth "Bearer foo"
platform-get-statistic 'fMCeNnu6OIG1PPLR' --login_with_auth "Bearer foo"
platform-unselect-all-records 'DEXLXZWXvqNCHvNp' --login_with_auth "Bearer foo"
platform-select-record 'eMjMzguq6HFIqaqw' 'H9J6JLb5f3SBMyJU' --login_with_auth "Bearer foo"
platform-unselect-record 'dwEBRrHAWUFqTooG' 'GnPEgY0t7QQWl42b' --login_with_auth "Bearer foo"
platform-clone-store 'yOwXgKyPhXmcysae' --login_with_auth "Bearer foo"
platform-query-import-history '8HpWH4xiz3fWthJS' --login_with_auth "Bearer foo"
platform-import-store-by-csv 'tmp.dat' 'tmp.dat' 'tmp.dat' 'u2pUIIuPLFAtcWhj' 'tmp.dat' 'AP57QbWvSSp71zEP' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'PfmAQiqRRC2caquM' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'RtQOILcaDqUITBHQ' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale '{"orderNo": "R5ISNoFR3GUxdMuv"}' 'mL0UBfwzaaeP3Wd0' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'Wrb8s3GW0CY0vAfb' --login_with_auth "Bearer foo"
platform-increase-ticket-sale '{"count": 33, "orderNo": "ushaKTPVjyOUpR3u"}' 'UdgNlyU4IJnqtrjC' --login_with_auth "Bearer foo"
platform-commit '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 37, "currencyCode": "ya8u4sQPvaf1Acwe", "expireAt": "1993-03-17T00:00:00Z"}, "debitPayload": {"count": 23, "currencyCode": "tJW3MLMob1hUnIzI", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 51, "entitlementCollectionId": "UM8KK1kGFN0NUNGK", "entitlementOrigin": "Other", "itemIdentity": "1kOTJZluTekDMCGU", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 83, "entitlementId": "ERxNg8djSb4Vt2vK"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Other", "count": 24, "currencyCode": "TnsZioDiBgprzahP", "expireAt": "1985-08-25T00:00:00Z"}, "debitPayload": {"count": 65, "currencyCode": "M0dgozmco41750xd", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 88, "entitlementCollectionId": "eePkqg6Zt1Lr5BlO", "entitlementOrigin": "Twitch", "itemIdentity": "YGumTKOlDOy5vhSk", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 62, "entitlementId": "TogG0N7Hvnuq1kJ1"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 31, "currencyCode": "mGdWl0wpj5tVfKU3", "expireAt": "1986-04-28T00:00:00Z"}, "debitPayload": {"count": 100, "currencyCode": "ZuEjY0rNBbbB9txA", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 57, "entitlementCollectionId": "tRQvqJacXR2Rf4no", "entitlementOrigin": "Nintendo", "itemIdentity": "DFaEUkPUBnB0ZEJH", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "bM71Tg922xiBgHSk"}, "type": "CREDIT_WALLET"}], "userId": "AYqRBeSc5uShoj3d"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 32, "currencyCode": "HMeoi5DBOsQ0Gax0", "expireAt": "1975-10-08T00:00:00Z"}, "debitPayload": {"count": 49, "currencyCode": "05IT9Agsjl5NmnSH", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 87, "entitlementCollectionId": "xNmCe4txY0MsPc9E", "entitlementOrigin": "Xbox", "itemIdentity": "ereFCPJU2wEzUYUT", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 97, "entitlementId": "Z8JSMeNmRocp400R"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 35, "currencyCode": "8Bzx9aGEI22BTCZs", "expireAt": "1974-04-30T00:00:00Z"}, "debitPayload": {"count": 94, "currencyCode": "y4TkpEw4Zeid4mRo", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 79, "entitlementCollectionId": "Nxv10ckMQVjKk3bW", "entitlementOrigin": "Twitch", "itemIdentity": "DlP6OGbn8vmfMYGL", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 1, "entitlementId": "1AjKhh3JMX7xSrz1"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "System", "count": 69, "currencyCode": "zBPWBYKAEFTdlKNh", "expireAt": "1972-09-29T00:00:00Z"}, "debitPayload": {"count": 64, "currencyCode": "TzKjsCqxx24QM35b", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 35, "entitlementCollectionId": "FrvGciNHb7OY5YIp", "entitlementOrigin": "Xbox", "itemIdentity": "3aKkPuWD59MgTy1H", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 14, "entitlementId": "58Jt5NaROjSKFEuZ"}, "type": "DEBIT_WALLET"}], "userId": "UGHeBKtpvyRNgjZk"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 90, "currencyCode": "DppvEJiUiDGXgh8B", "expireAt": "1989-07-17T00:00:00Z"}, "debitPayload": {"count": 5, "currencyCode": "oMxzRR6xd9rTh3ur", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 43, "entitlementCollectionId": "aIbxM3Wev9pZQjWA", "entitlementOrigin": "Xbox", "itemIdentity": "2wo8beVQvgeP9qOH", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 36, "entitlementId": "LwYnXxrz7sLmP70L"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 82, "currencyCode": "dN5xeayr3vUKMuIi", "expireAt": "1984-10-31T00:00:00Z"}, "debitPayload": {"count": 79, "currencyCode": "u9O46OOzz9p57qSp", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 30, "entitlementCollectionId": "erzO87cg7TqtMiQg", "entitlementOrigin": "IOS", "itemIdentity": "ZrSsuYiIPei0pXgl", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 78, "entitlementId": "KkoCAZuolAWnxkIm"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 23, "currencyCode": "DP0QX31gI7VmnGIR", "expireAt": "1990-05-04T00:00:00Z"}, "debitPayload": {"count": 43, "currencyCode": "kk2Gza6DrSycophH", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 88, "entitlementCollectionId": "3EoEEClTO9SDKnMl", "entitlementOrigin": "Nintendo", "itemIdentity": "2gpmShlmIt2nfhUa", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 67, "entitlementId": "D8gISE34yIAZQeig"}, "type": "DEBIT_WALLET"}], "userId": "ZRXZm626POXWVj3K"}], "metadata": {"P1mX0iYHXBU3Uk2t": {}, "Qm307IORTyHnLYDA": {}, "Ag1YA4kZURmoGgxV": {}}, "needPreCheck": false, "transactionId": "Pf8g1rbhfIMStMnS", "type": "qrKWYOuITlYS2RYa"}' --login_with_auth "Bearer foo"
platform-get-trade-history-by-criteria --login_with_auth "Bearer foo"
platform-get-trade-history-by-transaction-id 'D9WNKGhbLhjz1v0R' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement '{"achievements": [{"id": "BIO2rkJGmPaK6HEV", "value": 70}, {"id": "dz6zPz3BVHAqp4O9", "value": 92}, {"id": "nWVZZbKFsKOmgEhj", "value": 68}], "steamUserId": "gf2n6iQyr5cb5YL6"}' 'fwBiaVPmmn0T5uzl' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'mi2NY26xrkPPdg3p' 'XjmtpNfCrIj9ntYo' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement '{"achievements": [{"id": "3dupUHNu8abrVVOK", "percentComplete": 49}, {"id": "OAUXkw36cr2WJQqS", "percentComplete": 97}, {"id": "Tq4YIyZAFQ6lZfa2", "percentComplete": 19}], "serviceConfigId": "VwSaoj1ugjr8mPkr", "titleId": "3tZ506ERSVy5M3rr", "xboxUserId": "kxu0U9h9gCNVZxHG"}' 'xhZqNXJ6JXSh0Z3S' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'WISs1dYrJKmx1BT6' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'iLFQejNZJNF2hm0T' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'qBQprHn3whPKU5ab' --login_with_auth "Bearer foo"
platform-anonymize-integration 'nqw8fFa30pVbhr1B' --login_with_auth "Bearer foo"
platform-anonymize-order 'Hh1arZAyuLcZoEkP' --login_with_auth "Bearer foo"
platform-anonymize-payment 'pqKhP2jWnRTglw0g' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'dWoE4esuiDrquccz' --login_with_auth "Bearer foo"
platform-anonymize-subscription '4J6fFQezJ5E3iYHI' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'knvPcJkjRevVYfiE' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'xpAgoK9YDq1x3dkb' 'XBOX' --login_with_auth "Bearer foo"
platform-get-user-dlc 'x6GV01vD7lNLxlpv' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'qaB9P9GaukfCEIeS' --login_with_auth "Bearer foo"
platform-grant-user-entitlement '[{"collectionId": "BLhTfzigzHcRuJgY", "endDate": "1971-05-04T00:00:00Z", "grantedCode": "j4I8Dzyh1N0JEKNo", "itemId": "MtHvjM7X1fjzknv2", "itemNamespace": "HZMIL2P2bh14LroF", "language": "gOIb-UiJq", "metadata": {"R6QU7fj6w17arNs1": {}, "2hOoLVM7UFnuJDze": {}, "EkDxaVogxHrOon2O": {}}, "origin": "Epic", "quantity": 24, "region": "Zw5QwVKWNy2tnF2M", "source": "IAP", "startDate": "1976-02-13T00:00:00Z", "storeId": "R8rcwojLRjhcaJ56"}, {"collectionId": "nGlYZ2tod2BGBXjN", "endDate": "1983-12-20T00:00:00Z", "grantedCode": "nQ3jOGmROIqxqQ0g", "itemId": "cNeTflyvUh3w5Ztf", "itemNamespace": "wmOCKpFSMF0tfGIZ", "language": "XuG", "metadata": {"c9fEjkZhEpAJMCxM": {}, "p2J0hDg2kMgkvhoQ": {}, "e9gD9tGN0nE7M36m": {}}, "origin": "System", "quantity": 68, "region": "9u3EeZtLQij2JXsq", "source": "ACHIEVEMENT", "startDate": "1974-11-05T00:00:00Z", "storeId": "fhZTTaCeqGv7meuQ"}, {"collectionId": "hJuq1C6JHkWMSUbq", "endDate": "1985-07-16T00:00:00Z", "grantedCode": "2h3hcQ2wV3ZbBTnN", "itemId": "QnVUhA5WnzVZdj8t", "itemNamespace": "syzC4QaLXp3o4TDr", "language": "jf_Xeyp-EQ", "metadata": {"20FVHevCjthJUb7j": {}, "KuMrFaoLulzp3sZx": {}, "ImVK5yh2LcM8LaMW": {}}, "origin": "Other", "quantity": 57, "region": "F6rP03bQaq1cT88H", "source": "REWARD", "startDate": "1985-07-26T00:00:00Z", "storeId": "W8gJmGzDlqxtLsR2"}]' 'AGOiPhNt2IdH8aYY' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'UT6mma833TDzk66i' 'x88sAUrXr7MXxCvy' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'y7caxz4MQrODLNlx' 'DLC' --login_with_auth "Bearer foo"
platform-get-user-entitlements-by-ids 'X5KjdNrEwfWo2Mwu' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'lLg4bsO4YHEYLjTS' 'NDf3zazm6p5Y1tkG' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids '9WwU4Ty6Ch5QYyFj' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'uBquE7xssm4hxczs' 'kbSUbOZ9WNl3apJm' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'NAbl1g5ZmTTGYRbP' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids '4QVey9pEz1TV5cUt' '["PBsw01i5Mf7WvbNS", "eeDNfUESLlwHv3Jg", "teOLyKp8a1VqxXnR"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'hDd9TGkO6aIYqftw' '1SrM2nhSEanfUYrM' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'U6A43UKGpvC1cr5T' '1PSXhduTWchzXDv3' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'TAtBjP4HSuiYCbG0' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'UyYUJmNL8p6AbdtU' '0CDrlQpKB8qoel2Q' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'K3aSOYdmMDikc3Fj' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'm9HoQDemtiQvURYZ' 'CeF30RT9rBgM8o7l' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'xXq7TkdM7FVDCBcv' 'VegrZddP8lLQo6tH' --login_with_auth "Bearer foo"
platform-update-user-entitlement '{"collectionId": "j4z4cAM4LMJfWNZI", "endDate": "1982-02-08T00:00:00Z", "nullFieldList": ["AgBpeubprKX68jTy", "Rd3LrR1x6U1v6zSL", "jm9zmzUW0vPj90jm"], "origin": "Twitch", "reason": "fMi2CPVGxjcdpdCq", "startDate": "1995-12-11T00:00:00Z", "status": "ACTIVE", "useCount": 9}' 'f1AYq306Pysv4VPa' 'ZWolXypwucUqqqff' --login_with_auth "Bearer foo"
platform-consume-user-entitlement '{"metadata": {"2iWi4yP3uqNcig6Y": {}, "cDA8Z3g62oGYwkrj": {}, "LI4EHJEEWgki9fbd": {}}, "options": ["vUMDZeO4U55wdCpV", "pnENiTc9NESV22eR", "BElD4K2Cy1tJcPAE"], "platform": "kCeV29QsQk100eu5", "requestId": "UcxuXXpt0YSPX04u", "useCount": 63}' 'OYgGhHMz9dddLWJW' 'DuSYtCaIv4Lp91wY' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'UJPbvzn8TYoMDAaU' 'XSuBQdvdhJoT0WK5' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'ngNUxDKfZYofPGUb' 'SaA00nKxQjYU6Kla' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'vIiLxU2I1GyJS48H' 'xu8Ju4XSAnlXRYB9' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'BgSZBvkehRn83B0n' 'rW1qx3NJTugVWXz8' --body '{"metadata": {"dv7BiEUqnzxs2deM": {}, "F8UAJIHEZv5zyUUy": {}, "NJkvA5xF3zHtZSd3": {}}}' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement-by-use-count '{"reason": "QzXhkrN4pWryt4XT", "useCount": 80}' 'ImgDf3GaJsdCZND0' 'wgYOilX1e1825ias' --login_with_auth "Bearer foo"
platform-pre-check-revoke-user-entitlement-by-use-count 'unESjcgr2drXG5Nk' 'KCySLA8cKCs0dFYR' '91' --login_with_auth "Bearer foo"
platform-sell-user-entitlement '{"platform": "NKGRUMrimGAz6Ohm", "requestId": "HOpCdr3WzDm3hJdd", "useCount": 17}' 'uaO9TiTPnIh2iaIB' 'pYC4txul6VKYlNYY' --login_with_auth "Bearer foo"
platform-fulfill-item '{"duration": 24, "endDate": "1980-10-05T00:00:00Z", "entitlementCollectionId": "VRCPMjr5M3vw1GqU", "entitlementOrigin": "IOS", "itemId": "pgyJYwclb4gd4QgQ", "itemSku": "ut2hiPuDdOPHcN9d", "language": "rwqytieXpIZfr5XD", "metadata": {"q9dGLHjtgE2bTXJx": {}, "CCFqPNDqWrpkWnno": {}, "va15WVuE5cYVP9tQ": {}}, "order": {"currency": {"currencyCode": "Sa27BnPyq3I1BLtG", "currencySymbol": "EZDRNkk4DJUofJXK", "currencyType": "VIRTUAL", "decimals": 89, "namespace": "H2qs28hePJjMp0TK"}, "ext": {"KUBfPNI9f2oLWDPS": {}, "ZexfKVxqdxmh5QWx": {}, "uQuI7gdDTDb3WdnO": {}}, "free": false}, "orderNo": "EEM2KOusNEHcI95G", "origin": "System", "overrideBundleItemQty": {"pT3MLwJZquMQSPp5": 49, "D4S1ilfgff7Et4uY": 6, "nlBwGNHgfgwZwVMv": 39}, "quantity": 61, "region": "hGmsg6ZJYnkHDnHT", "source": "IAP", "startDate": "1975-12-30T00:00:00Z", "storeId": "gHFQk0VzWRNFNiUn"}' '2yXMSCcHADYpS861' --login_with_auth "Bearer foo"
platform-redeem-code '{"code": "c0CJ7LzpFvOSF6xK", "language": "MOZ_VKzA_531", "region": "eq0O6VsXtOlQwj5x"}' 'Pvm7c5nPR0Y1sffU' --login_with_auth "Bearer foo"
platform-pre-check-fulfill-item '{"itemId": "aZ64dFpiv8o9Gw4Q", "itemSku": "tKgyIeySoUxoMrj2", "quantity": 72}' 'c3H0qSbMq4GLj8aG' --login_with_auth "Bearer foo"
platform-fulfill-rewards '{"entitlementCollectionId": "sH0qE5p601ak59yF", "entitlementOrigin": "Steam", "metadata": {"fdZIv8oYWPUS4Zu0": {}, "SbTt6M2XizikCh6q": {}, "0yq2WAHtL7IWE3MF": {}}, "origin": "Oculus", "rewards": [{"currency": {"currencyCode": "2fDtOjW1iSYQbceb", "namespace": "Bd5wb5H3qppoCiHM"}, "item": {"itemId": "D4iBK2O7qYtOHV5h", "itemName": "npjc5CNLnnEvo25a", "itemSku": "Etdjls5oadseJg7y", "itemType": "4Q9CU3fjSRaXD4HD"}, "quantity": 26, "type": "ITEM"}, {"currency": {"currencyCode": "dvhMXxiKR29LKIhN", "namespace": "U43K8bihdw3prp0U"}, "item": {"itemId": "HlWUxkBefhxRtrqb", "itemName": "v56oqwnCLVc2qHZu", "itemSku": "uedbBOd19DqZJRYV", "itemType": "1oqNLmPAUIMwa2wY"}, "quantity": 33, "type": "CURRENCY"}, {"currency": {"currencyCode": "DsUq38bYvaWLoKzH", "namespace": "nngdfFnOfY9stXH6"}, "item": {"itemId": "LYXXMndxBPKmHVB7", "itemName": "cNzHhvxc4xAPZ86W", "itemSku": "NnQOhusPn4466u8a", "itemType": "gb5HPsBU0Eo6QJ9v"}, "quantity": 56, "type": "ITEM"}], "source": "CONSUME_ENTITLEMENT", "transactionId": "J4UP09fabC01Thm9"}' 'f4AWpyiKVT3OvEuj' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'x5yjtQSCJaOHzpb6' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders '23EciYoYOPVg6DLE' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'Z6DxpwBm2N8PdQ5m' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item '{"itemIdentityType": "ITEM_SKU", "language": "zh-lNNy_348", "productId": "HqaLNdfKszYZzOg1", "region": "13h6fIaHSx5bClxU", "transactionId": "OBmMwv5pmiIVnhlL", "type": "OCULUS"}' 'SohfrLyXMSrC62xY' --login_with_auth "Bearer foo"
platform-query-user-third-party-subscription 'tDwflNGfufW5cWeg' --login_with_auth "Bearer foo"
platform-get-third-party-platform-subscription-ownership-by-group-id 'EPICGAMES' 'VQQPa7PPx4Zi6WaC' '8wk7HMbJhNwZgf5n' --login_with_auth "Bearer foo"
platform-get-third-party-platform-subscription-ownership-by-product-id 'OCULUS' 'aW5xz1c7ZuZXUCBY' 'nkY0LEBSYBdUSiTO' --login_with_auth "Bearer foo"
platform-query-user-third-party-subscription-transactions 'rhB8hVs29WOKmZRT' --login_with_auth "Bearer foo"
platform-get-third-party-subscription-details 'tgycLzXz6lUMKi5m' 'weMEZo2ZnL1Zg2Jf' --login_with_auth "Bearer foo"
platform-get-subscription-history 'H4f73jAevOnES6YJ' 'Llb2AfUEEBbqMMKv' --login_with_auth "Bearer foo"
platform-sync-subscription-transaction 'kOsR1fHUyirMVMOF' 'ES2J2OzNlJE3uqZz' --login_with_auth "Bearer foo"
platform-get-third-party-user-subscription-details '574g31cA0PwZxTIZ' 'VSGQyTzhs9Asy4d6' --login_with_auth "Bearer foo"
platform-sync-subscription '29N4YnolVWA2dWxB' 's056jkPCUuE1pgdH' --login_with_auth "Bearer foo"
platform-query-user-orders 'vlQKiR7SDQUDavOl' --login_with_auth "Bearer foo"
platform-admin-create-user-order '{"currencyCode": "KT5EIHNhJQq94Re5", "currencyNamespace": "IM1akNKz9IltQUku", "discountCodes": ["twUWGt6tooHP5kAw", "w01zalTddhAQ1pwq", "3n32atB0QPQPEp5U"], "discountedPrice": 27, "entitlementPlatform": "GooglePlay", "ext": {"ybvUIfuulmeegRwP": {}, "Pbn7lttd21cS6IVE": {}, "4fzwG3BHaRcZ8NK4": {}}, "itemId": "gkLmvEOaRcqTgF0x", "language": "tQAXoDoFkmA3fgzc", "options": {"skipPriceValidation": true}, "platform": "Epic", "price": 43, "quantity": 13, "region": "yW3cMz9YyduMomEH", "returnUrl": "cU15St4v8ry8IyqN", "sandbox": false, "sectionId": "v0KVpXJTMx3Y8Um1"}' 'iqehObg3OZ9j0HDt' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'bqMFlgHKQIRtLfPn' 'gD83roOeqE7fcCAe' --login_with_auth "Bearer foo"
platform-get-user-order 'ExeQX43LpmdMiZey' 'IrA4QUKSJgECzvaW' --login_with_auth "Bearer foo"
platform-update-user-order-status '{"status": "REFUND_FAILED", "statusReason": "CA7wKru7ry3AQ2sE"}' 'HvSxjWoM1rNJLM0O' 'OVG5cG6XxENbWqlX' --login_with_auth "Bearer foo"
platform-fulfill-user-order '7idzjpKDfwl6XlCF' '6YxFMD8tJQwZvUVI' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'nos5RK100yH89i8Z' 'DPXRL8cbTAntB1ST' --login_with_auth "Bearer foo"
platform-process-user-order-notification '{"additionalData": {"cardSummary": "aab1UeibXg7RCe5B"}, "authorisedTime": "1980-11-18T00:00:00Z", "chargebackReversedTime": "1989-01-18T00:00:00Z", "chargebackTime": "1976-07-07T00:00:00Z", "chargedTime": "1996-03-15T00:00:00Z", "createdTime": "1990-02-04T00:00:00Z", "currency": {"currencyCode": "PqqOgCimr3ZQNBBk", "currencySymbol": "rXu9czsYr3cFeVw7", "currencyType": "REAL", "decimals": 48, "namespace": "IVYxY6OhdkrYiCin"}, "customParameters": {"oVOzo4Plv1IlTpEh": {}, "jTFYdzsUNvQAn2Lu": {}, "MjLqwmVz3zKsfjz1": {}}, "extOrderNo": "mFkyxoUzfMFoXCOg", "extTxId": "uSq2A4R3wDdSkNfH", "extUserId": "JtA3QiX9ZvtydbaV", "issuedAt": "1972-01-01T00:00:00Z", "metadata": {"0scd97A0GP6djn2P": "s3IVT5hUZ3cnDq0d", "dZG0EpfGAqHKcSxU": "c2YgRpk2IFGIgIps", "cUpVAciu2XPPUxzX": "HUvxhvTZcvRKoaM4"}, "namespace": "ozSAg8FTLrByWOJh", "nonceStr": "bocoGlPzdfxcC3rp", "paymentData": {"discountAmount": 99, "discountCode": "U11cBXLwTfopqeZt", "subtotalPrice": 69, "tax": 73, "totalPrice": 73}, "paymentMethod": "nRgaGfLMFbvyI5PZ", "paymentMethodFee": 66, "paymentOrderNo": "XeqV31LX2ehcMnM6", "paymentProvider": "PAYPAL", "paymentProviderFee": 40, "paymentStationUrl": "sNczam4Cdd1QYvww", "price": 75, "refundedTime": "1986-10-02T00:00:00Z", "salesTax": 29, "sandbox": false, "sku": "kltgq2vXtUnY6UhD", "status": "REFUNDED", "statusReason": "QCuXeTRyJQrNLTcq", "subscriptionId": "LVTN5Qf4tjPGpu27", "subtotalPrice": 49, "targetNamespace": "X8wTi1v2abpCWytP", "targetUserId": "Ei9Ze0hL9rPkV5Gk", "tax": 92, "totalPrice": 30, "totalTax": 36, "txEndTime": "1997-01-14T00:00:00Z", "type": "QPLhDSJx9jzxaRKp", "userId": "h4kiIFgS4fLqlrKG", "vat": 17}' 'ErmeH0lX1hj0LaXg' 'Q94flh775AQfzNjQ' --login_with_auth "Bearer foo"
platform-download-user-order-receipt '7IuMSY2epRDJjDyM' 'DKQhuTjtQZyIiAmC' --login_with_auth "Bearer foo"
platform-create-user-payment-order '{"currencyCode": "L8bNTTfqLCv9DYBO", "currencyNamespace": "ProN4UWbQaKFrTv4", "customParameters": {"JWElmOCxqPrq9I3X": {}, "JWBxTLcOef8MgIwk": {}, "rKFEtwESJCe2ksG3": {}}, "description": "nZE13H2fILFzOlAZ", "extOrderNo": "bDQAEJLbVWH2XLIg", "extUserId": "3MgmdSvWp3h0xPsV", "itemType": "LOOTBOX", "language": "RT-Puwz-119", "metadata": {"SYLFKSl3FNFFJnt3": "rIwZdW02Su6aCnL8", "16aH6gOBUIMeL0GL": "3aefSDME8X2MxILI", "42BJMPkZmay4Csye": "3iJLtjsu6ZJRCoDq"}, "notifyUrl": "3geuHFFaZzPIjETq", "omitNotification": false, "platform": "pRfGe3z2rtjWpJAl", "price": 75, "recurringPaymentOrderNo": "Jlw31pdDrXQ47WSG", "region": "yDCKF0LLhO3lGZ7e", "returnUrl": "GOPj2XoFug8BUQUm", "sandbox": true, "sku": "HnPumcazKAna0ji7", "subscriptionId": "57aNDFeKnQP2j2Ws", "title": "QImTwYkiuxzLrbJ0"}' 'BkGzCNgesQlZZHIZ' --login_with_auth "Bearer foo"
platform-refund-user-payment-order '{"description": "H0iks6kx0adnimPy"}' 'yzezsHdFftHHR6xb' 'cVVonwz27DWfGRVh' --login_with_auth "Bearer foo"
platform-get-user-platform-account-closure-histories 'bZTvCPrrZCTU5WUJ' --login_with_auth "Bearer foo"
platform-apply-user-redemption '{"code": "izF69PSsquWUafwb", "orderNo": "FPX15633pFgA7i9t"}' 'qvfHmFvUZiUW5Y0C' --login_with_auth "Bearer foo"
platform-do-revocation '{"meta": {"Yw5OXSGwQkJuy9oL": {}, "FcHHcraLXR2n9JQv": {}, "q7NKWIHYsii3fCh7": {}}, "reason": "sieJjZPAkiWumllU", "requestId": "31uXPwYxedGHCIkm", "revokeEntries": [{"currency": {"balanceOrigin": "Other", "currencyCode": "heA2ewWnFcqHxXP3", "namespace": "kRhtrBcBofWTGYx2"}, "entitlement": {"entitlementId": "ihgioL8VvEzHGTt9"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "PnLkgqkqYZWPZTgK", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 13, "type": "ITEM"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "zdcYcko7U3gH239L", "namespace": "hRx2Laa2RdtVb6Vg"}, "entitlement": {"entitlementId": "A5yFIH3s9UyeaFi8"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "UpM1JBcTzf4dz1Bo", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 85, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "Qg976409vFd5z9r4", "namespace": "nJWUvLp1wxGF7474"}, "entitlement": {"entitlementId": "68MXUq3uIffkIpPm"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "uKvtUVtqbDWnJ2i9", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 25, "type": "ITEM"}], "source": "IAP", "transactionId": "OqIl7U12hO5vpk9D"}' 'OSgbsdGVPLD9A5Nm' --login_with_auth "Bearer foo"
platform-register-xbl-sessions '{"gameSessionId": "uZDUV3yHurgOfba1", "payload": {"XeoHYTNoRol84Ulk": {}, "xtP5Vok9sNK1ORg3": {}, "tChsS3fFpaS1uq1m": {}}, "scid": "H3oYfPK2QiAUhIfi", "sessionTemplateName": "17YrkWHNxiaNyqBf"}' 'gw58Hx0XYL0fJOPY' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'pnPqGlPnhBDOWqDU' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities '8N3DjVUt0n0jfyDb' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '{"grantDays": 40, "itemId": "MWZuD6tmIR28xVxb", "language": "tpSKOfiIP3S6pypZ", "reason": "qISn3msrykQFtW8Q", "region": "GKFZLrIfqrZuu7Iw", "source": "KcT7sAsv2TKCbYMV"}' 'kXEHmsHwIGGsusS0' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'zZRODEKPdudZsLaf' '8aZrXW84dt0TSTmy' --login_with_auth "Bearer foo"
platform-get-user-subscription '7XF26K2U7xttUz8n' 'WKJjv06PuffHghAQ' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'fAsYXVzBenLtaAoY' 'yRfiCWrm3s1Ah3TI' --login_with_auth "Bearer foo"
platform-cancel-subscription '{"immediate": true, "reason": "MIcBMJ04508jKedx"}' '0CVRpd7SwZw2UkjD' 'zJ4NuMMgI13nplXa' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription '{"grantDays": 95, "reason": "sCKAO2JRz3CGwtuj"}' 'kzxidLcAQWGVRg6D' 'Vso5TJCSugdo4XTm' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories '8t1YTWqItjNWXm9s' 'raeMA78YSRS2fPy5' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '{"additionalData": {"cardSummary": "fpbbbMIu9lu18jIM"}, "authorisedTime": "1985-02-02T00:00:00Z", "chargebackReversedTime": "1995-01-30T00:00:00Z", "chargebackTime": "1990-05-16T00:00:00Z", "chargedTime": "1973-02-28T00:00:00Z", "createdTime": "1996-11-07T00:00:00Z", "currency": {"currencyCode": "memN8LO03mnFSq9j", "currencySymbol": "JTVFoFjxZjh5qUR1", "currencyType": "VIRTUAL", "decimals": 57, "namespace": "4a4uaMfd0SQAfYIy"}, "customParameters": {"zHL8jxakuVu5r5B0": {}, "8VZxI4TU3apnZXoJ": {}, "4gI4EQKO8xC4D0Fs": {}}, "extOrderNo": "Uo3IB2kX5REQZsHy", "extTxId": "XzoIXNf0KbL9HyJt", "extUserId": "tdgfLGO3ummpllnV", "issuedAt": "1972-08-20T00:00:00Z", "metadata": {"obYun8hcO55hVjfW": "yK02w5QytAmkanuk", "AzAMaRvIUhUwguGg": "bLLN3O7CEYjxqElP", "5lA2FJ0iGLRTXGsC": "5mxxse4eeuMgEctV"}, "namespace": "Eux2MSuwsEHlwdeJ", "nonceStr": "yhsHS6YqPudWviQs", "paymentData": {"discountAmount": 95, "discountCode": "Eb8GnsthmQ2Y6ZGO", "subtotalPrice": 18, "tax": 71, "totalPrice": 34}, "paymentMethod": "cFN5JL9M53Mg0MzW", "paymentMethodFee": 91, "paymentOrderNo": "zDRzbhMxfEDE4Trt", "paymentProvider": "XSOLLA", "paymentProviderFee": 69, "paymentStationUrl": "prRVibTATxd7Mzjv", "price": 68, "refundedTime": "1974-09-23T00:00:00Z", "salesTax": 92, "sandbox": false, "sku": "2IuQYBO8m0HgTth4", "status": "REFUNDED", "statusReason": "9W8rXqwGVIRWgTNH", "subscriptionId": "Cka3Wb5kH1BrLWUe", "subtotalPrice": 41, "targetNamespace": "BxQNz2IUEHMzl5jh", "targetUserId": "wVDsuzwJ4v50eoaI", "tax": 56, "totalPrice": 62, "totalTax": 35, "txEndTime": "1977-03-01T00:00:00Z", "type": "uHBMCP5ckjphURs4", "userId": "ksgsKJ2R6Jacwwu8", "vat": 100}' 'JZyRwigaMu07Zek8' 'WObpf0FHYfViEj70' --login_with_auth "Bearer foo"
platform-acquire-user-ticket '{"count": 74, "orderNo": "Om4M2pM4fIfcHBWZ"}' 'M50aHbPXRns3qwYL' '6LwGlZGF7XQPLAcI' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'L7FvAMWqhyyNZH1C' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code '{"allowOverdraft": false, "amount": 80, "balanceOrigin": "Other", "balanceSource": "DLC_REVOCATION", "metadata": {"cB5y5iMdeBG7REG4": {}, "meKEabfVXBJPIZqZ": {}, "C5d6JuFdcfiNf0DO": {}}, "reason": "HKwxDF5GJhCjVHiC"}' 'n2hTefT8gPFJ4Wnd' 'MpQhcLK0WTZbtmQk' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'wC8azx3IRWme3C6p' '2r4D3NQdjrjkX3AM' --login_with_auth "Bearer foo"
platform-check-balance '{"amount": 14, "debitBalanceSource": "EXPIRATION", "metadata": {"K3JgZufzssA284mG": {}, "7uAojLYBsx8oqMzb": {}, "E0ljQaBtb47V691j": {}}, "reason": "0FZp2vjOXptxzx6k", "walletPlatform": "IOS"}' 'R3MYda0Y0BCO4qPn' 'vxERWjKasq5zQ6uZ' --login_with_auth "Bearer foo"
platform-credit-user-wallet '{"amount": 81, "expireAt": "1998-06-28T00:00:00Z", "metadata": {"ZzhDuLHq9LTBstgu": {}, "OdN0O7l3GbKPHdDT": {}, "QDEEE2mTsn1NwJ71": {}}, "origin": "Oculus", "reason": "0d4Q8nlBthUSu4WN", "source": "CONSUME_ENTITLEMENT"}' 'TdDq7IqbTVv8BLsq' 'QW8HSrEm5Y7jI232' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform '{"amount": 93, "debitBalanceSource": "PAYMENT", "metadata": {"jktijiNzTUe8Kdiz": {}, "XmrmK0sCUsqxKocH": {}, "omtjoU1kUqRedwIu": {}}, "reason": "1TSRr6r8mzfMedpc", "walletPlatform": "Other"}' 'hvHPlvYanGqEkn9O' 'EVwLWGT4MXhmzvRQ' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet '{"amount": 2, "metadata": {"rpWAjwatSvtPbAFn": {}, "8oWQcmFkkRX6Eqad": {}, "AEIzxld80Ynss7hc": {}}, "walletPlatform": "Oculus"}' 'VUxxZIgkTLqMeJPC' 'bs8jWmTteJhwNbwH' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view '{"displayOrder": 66, "localizations": {"lGQFwHUtZugblT3a": {"description": "IDKn9qJXncm5igpA", "localExt": {"ewbmnWk0E7YaPblc": {}, "WEyNgvs5LEZrQXzS": {}, "QRWRs9EGnRPgYlJE": {}}, "longDescription": "lgJ8kx1WEeDbql13", "title": "FtQMu41rnOzbsFBq"}, "g6dziWvdNcwfUBMd": {"description": "NuTaiLxFMXRpDP9x", "localExt": {"utntU8xHw4yYJOCV": {}, "iHwunQwpC2eCFUAH": {}, "ZaYSvsWiNJtqXltZ": {}}, "longDescription": "F6aSRmHU5iR3hXIb", "title": "zWPKOkzftOgDQAWh"}, "ulbrDf7q4cAnpmLi": {"description": "Eu4CNtX2lnqi7cHT", "localExt": {"SdGoLZbC3UJruU4u": {}, "IXBZsEYogFWiH9z4": {}, "E8zmaZ5cg0REtUWY": {}}, "longDescription": "4fVIdqwCWF5wmbOu", "title": "bTxAAeDCowR3MeCN"}}, "name": "L1oNrF3SmgudQusJ"}' 'LsPlW7ZyORFkN9Eb' --login_with_auth "Bearer foo"
platform-get-view 'KbTbrDzNgVEcw0lx' --login_with_auth "Bearer foo"
platform-update-view '{"displayOrder": 89, "localizations": {"n5GHJDGatrYOMO91": {"description": "CYEjX867n9PT9fR7", "localExt": {"mMuBXPDKCriRKzTZ": {}, "7TXAVRnUVbxEJcKH": {}, "E764EwhQfxFKIOGT": {}}, "longDescription": "1WKSmLoA0ILaESC1", "title": "GJXsoBwqh0TQXa2j"}, "7v3zQJoQLTAlW75i": {"description": "cIKUpXazsFrmaGNo", "localExt": {"i3RPTgWotLNz0u8y": {}, "SxA0yrjz4q7e0EJn": {}, "ADXC2y0DY1E1SMK9": {}}, "longDescription": "oA4vK56dsYI5SKV5", "title": "pDANyJ184miBhdVJ"}, "t81fmLSyGuu5rbJV": {"description": "IwRMtwApGbXnR3yC", "localExt": {"6f2MHGGedk0KzXRc": {}, "lOXdPYZQxBnttu4y": {}, "W5etl4Xk8Hd1lRto": {}}, "longDescription": "PMvsu9oswEPTvzww", "title": "Gnpbx8MCIjKzylqW"}}, "name": "8auyseP9wEEyYAnH"}' 'Pp4XzVL5McglFCrj' 'xqqxAYqXG2V3baMk' --login_with_auth "Bearer foo"
platform-delete-view 'Z9JCqBIkUID0EE9I' 'nZNLwwAhW2b5OHKt' --login_with_auth "Bearer foo"
platform-get-wallet-config --login_with_auth "Bearer foo"
platform-update-wallet-config '{"enablePaidForVCExpiration": true}' --login_with_auth "Bearer foo"
platform-bulk-credit '[{"creditRequest": {"amount": 6, "expireAt": "1976-12-05T00:00:00Z", "metadata": {"TkQNjxhXdj1CG0EB": {}, "gst9Qu8Ofl2oB8VT": {}, "jF0pD3NHU8iYUOtG": {}}, "origin": "Playstation", "reason": "gbQSKW2MdgCH4bWx", "source": "REFUND"}, "currencyCode": "83iXfYXNdMkdg9TM", "userIds": ["cYexMMMiDFh5RbW0", "wxNcQ6CkVi8fqVPR", "qNbF5yLnYSa8xFLv"]}, {"creditRequest": {"amount": 61, "expireAt": "1998-02-06T00:00:00Z", "metadata": {"cHN3QbzVuJZH3k54": {}, "cExxWKtdGTW4FILo": {}, "tv5ycTa0i6ifYP1z": {}}, "origin": "GooglePlay", "reason": "AopZL9Cw6K9h55mw", "source": "REWARD"}, "currencyCode": "GoWw1qnCAvdnAcok", "userIds": ["hubMXbxNvT6wAffv", "J0rzqX2KJcYHgiFD", "xclBXap6j73doCWx"]}, {"creditRequest": {"amount": 99, "expireAt": "1981-08-30T00:00:00Z", "metadata": {"zKAwiI4wTxNIefCm": {}, "trxWu293551nQBNK": {}, "cqCkUXRj8gQHEe4C": {}}, "origin": "Xbox", "reason": "xoPYvdIBJYyGURjE", "source": "DLC"}, "currencyCode": "LxllUrFYn7cSuO7N", "userIds": ["infEVxArF7TB6A6a", "xKHUHg0c4X7fHdIT", "mN9opaF0kh3pCRB3"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit '[{"currencyCode": "71zAJpaPeudUtKPJ", "request": {"allowOverdraft": true, "amount": 27, "balanceOrigin": "Playstation", "balanceSource": "ORDER_REVOCATION", "metadata": {"ObZIbrA8XAKKWMDe": {}, "behSjpt0wrfWPXaI": {}, "1Jb75o2MFOa6xgPt": {}}, "reason": "69QROGDeJCyHvUsn"}, "userIds": ["LvXCSgQHvs25eiQO", "3oWdgXdm1IxL1Otl", "eUBqBO0Ze049k9W6"]}, {"currencyCode": "ZLVJzRpUsITfVruD", "request": {"allowOverdraft": true, "amount": 94, "balanceOrigin": "IOS", "balanceSource": "IAP_REVOCATION", "metadata": {"8nootfUs9559ilm3": {}, "cauhrw9Yn2z5cnbm": {}, "7z2Aa24yBTw3wfNG": {}}, "reason": "yWf3VujS7Bq5bcfP"}, "userIds": ["exzOLbOWbtcJUxM3", "W4pPZB9YXltCxyzt", "Unj17t3gHBXvjvzi"]}, {"currencyCode": "AWyDkA5LmART6kul", "request": {"allowOverdraft": false, "amount": 79, "balanceOrigin": "Playstation", "balanceSource": "ORDER_REVOCATION", "metadata": {"SRtUE5P4kxmHtFbj": {}, "qurHix0QYycDH5we": {}, "2Mx0sYCnYPT4i4mx": {}}, "reason": "c14iRfzJwKuc7Epi"}, "userIds": ["QEzz5N5osRYO7wbY", "h7q02W8tkTURUFmq", "Nc8xhQqptccNorRl"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 's7EC3nDnhFvDlFd7' 'iyZpvWVJFK6Zuvlz' --login_with_auth "Bearer foo"
platform-test-adyen-config '{"allowedPaymentMethods": ["GCII156hIg0g8HIx", "pzm9AcFhH4ZlYY3r", "EuHMWwQNmCQmGCF9"], "apiKey": "63CbsOawlRBQJH6f", "authoriseAsCapture": false, "blockedPaymentMethods": ["8q8svV5hMOSfpyJk", "JlmJmTkFvB7wkY6n", "uUEGJ3k0HGtpK43u"], "clientKey": "ORGREOOwTuY8dhNC", "dropInSettings": "DWWpN3B6tedgFUzB", "liveEndpointUrlPrefix": "m5vGA3itKaF9z3WW", "merchantAccount": "uv3j8T9g1f6P3D3r", "notificationHmacKey": "VcC2g6t42jE1Wad2", "notificationPassword": "32YV7A2zHFGbN8AQ", "notificationUsername": "aCaw9UF7cdSDd99D", "returnUrl": "QZ7vnTx8HDXTJWiy", "settings": "w17ogzmbj4SLYDrZ"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config '{"appId": "JvDLGvn6qtroZcp1", "privateKey": "6HKXX1ft5nBA9xNI", "publicKey": "JVuMz04evSdE2FMc", "returnUrl": "Kd7c94rEmIYuAT5O"}' --login_with_auth "Bearer foo"
platform-test-checkout-config '{"publicKey": "AcUwYHGmG5rNDBF1", "secretKey": "oU37vjfyX5YLaM0w"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-neon-pay-config '{"apiKey": "mi0i1WABBbq8IzZs", "webhookSecretKey": "MFLX9ZhFXcFtfBS3"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config '{"clientID": "ZIHofhwyM6Bw2sFG", "clientSecret": "Q5DQoDwzrKPOZZnV", "returnUrl": "3zR7YxSu6addocg1", "webHookId": "0Hy9jx7gBHTOHHAr"}' --login_with_auth "Bearer foo"
platform-test-stripe-config '{"allowedPaymentMethodTypes": ["jld0LnREsrrB2pJ7", "V8BSrucjO3zvSM5K", "eVNHU9GcOivIfcCJ"], "publishableKey": "t4U8VSgXoi9Fw25b", "secretKey": "9qXzlIK2G6AUjBCd", "webhookSecret": "f0Rp5e5IvFuN1oUs"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config '{"appId": "CnBmGMx5F6EhM3dK", "key": "vIG9MR0hTINvq1VR", "mchid": "9SJUfQEX996Mh1sQ", "returnUrl": "3Dw3uyjgQNAs9188"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config '{"apiKey": "Qm3W1De2McGd10we", "flowCompletionUrl": "fF0CJlH55RLEgeAs", "merchantId": 90, "projectId": 35, "projectSecretKey": "pQdcmGHZuRVQ8tzw"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config-1 'qMayP8A3HGNI3Bfj' --login_with_auth "Bearer foo"
platform-update-adyen-config '{"allowedPaymentMethods": ["kFd6MHo6gGQ5mChY", "oKD7yqCR03RovQZh", "wfjkq9iyTbyD3D01"], "apiKey": "tRpuuyIagSSzEL8H", "authoriseAsCapture": false, "blockedPaymentMethods": ["euLufhQj2KP3LLxl", "9Hs2L2wlpKBVURxH", "efz77a9fntCNiHBR"], "clientKey": "UNCPSre5GmZzCQwi", "dropInSettings": "lS3IxSjlyvR9PxG9", "liveEndpointUrlPrefix": "Lji2Vc88W8aLjIxV", "merchantAccount": "GpdOqguxvRwI9ZBT", "notificationHmacKey": "ipMRlhK9DMMaI4ry", "notificationPassword": "VDvNaruZxwTfh9gE", "notificationUsername": "s6GF247cbBLjUr5z", "returnUrl": "03wxB3E9hrE9f9CO", "settings": "FrOr6wJDBwIDsJHN"}' 'g6TvNGjwI4TbTwBu' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'fUorJouduhCEJ5Xi' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '{"appId": "KDIE9YugcupLxVBc", "privateKey": "RkfhRuqkOTHSia7o", "publicKey": "Fd1fEmDuyAsQGzwJ", "returnUrl": "R5poI718RQnj4imu"}' '6XFfRcWDXhq1YmGe' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'ygr2S4Yw8NmPaBer' --login_with_auth "Bearer foo"
platform-update-checkout-config '{"publicKey": "yzX2hOPVVFqVqxjq", "secretKey": "1iG3TySOh8SI75oX"}' 'byq8FBbur80Qwnlg' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'AVfqz6gQJh8sn0bV' --login_with_auth "Bearer foo"
platform-update-neon-pay-config '{"apiKey": "WRkvmAemh8lioBR7", "webhookSecretKey": "xTXcEIFod3lCzvjH"}' 'zDHOrSJ1vbB7LRHd' --login_with_auth "Bearer foo"
platform-test-neon-pay-config-by-id '96dGLgkfrZveFMWA' --login_with_auth "Bearer foo"
platform-update-pay-pal-config '{"clientID": "FT7l0l1jaOAMCzbs", "clientSecret": "oIgmKwwMDQPjUIos", "returnUrl": "q1l6xo0D4JRbNqO6", "webHookId": "IuP2PY5hhX6uNah9"}' 'JoHPj7jFWxSv1lYy' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'lYAiZ8c7Zd7EUoez' --login_with_auth "Bearer foo"
platform-update-stripe-config '{"allowedPaymentMethodTypes": ["OLw8C1c5bBB3XZ7C", "olKwlsNvtFuunQsv", "dXGlD40xxIyVwYjn"], "publishableKey": "6dlC9Kfh9gHuloyc", "secretKey": "e0cLJu4ljPWlCWTu", "webhookSecret": "GO8MnfOQu3wdT4Ao"}' 'dp95o1RkX7iW7VpC' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'ngWAv5DAG8dPdkKg' --login_with_auth "Bearer foo"
platform-update-wx-pay-config '{"appId": "QqjyzUZR2rFIAuAL", "key": "NhNCyscsMBRLsWad", "mchid": "k2OQ421q7Nb1vrKt", "returnUrl": "hVvU5on065ApCkVN"}' '3QchuQ6pntxB648s' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 's7rBnvQHAM8gSdIy' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'bKUByHBzfvgtRTPP' --login_with_auth "Bearer foo"
platform-update-xsolla-config '{"apiKey": "zwJmKaLCx3gcidEA", "flowCompletionUrl": "LWe6RG5wWznu5Ajw", "merchantId": 90, "projectId": 20, "projectSecretKey": "1Z4fU7ICcaQtuuKU"}' 'w3dUwWHhQW3I1y9t' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'jRLVOXBMa0JiIe1A' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT_DARK"}' 'xDfAxNqCUtizYM97' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config '{"aggregate": "ADYEN", "namespace": "xRBLgohp8ByTi2F6", "region": "AyUX8w77riPlPgJc", "sandboxTaxJarApiToken": "LbeQf9MICxX7xKyC", "specials": ["ALIPAY", "XSOLLA", "ALIPAY"], "taxJarApiToken": "zJ2v9K8c1zOlZg30", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config '{"aggregate": "ADYEN", "namespace": "K1FlNkgbFE8U4meK", "region": "5grmPBsFH71VrhsI", "sandboxTaxJarApiToken": "SYtegQbNA2WQrHTk", "specials": ["PAYPAL", "PAYPAL", "CHECKOUT"], "taxJarApiToken": "GcxvXaG9LzHpMS53", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' '8gx2rX5dck8NFKPg' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'T6LMehg047axU5kt' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config '{"sandboxTaxJarApiToken": "NywRIvO2Sgz30hej", "taxJarApiToken": "qdktHIO1VdtMSews", "taxJarEnabled": true, "taxJarProductCodesMapping": {"TrU4FhAfKDcDG5bM": "Tba1tUlFGcP6eL7E", "pWtPifmO0JK4dP1a": "ZFiSkmhwVVMGkXNw", "MYwFyljy5bYQdQ87": "hUHA0FJZwP8GslMp"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'x3m7lEXTmnTbtjK9' 'RsyoqT3adB48Jxp2' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'zaItg9jTNZvpFEUI' --login_with_auth "Bearer foo"
platform-public-get-child-categories '21aSaIsMyLKPPIZx' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories '0zdNAagipZwiaBrF' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'PSN' --login_with_auth "Bearer foo"
platform-get-apple-config-version --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'pUzWIZWJTDzWguhu' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'jw1EoR58uCVldefo' --login_with_auth "Bearer foo"
platform-public-get-estimated-price 'nHJZAiX4abmqqi90' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'KTWwZk0HGeJNaBjV' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition '{"itemIds": ["dMB5kMzKycYrhr4F", "nNzdT4pWwIVXp9av", "Ur6IydpXW0MO0eT9"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'okl6MlWOl9feWO2b' 'mOikTBJHTEm5PSey' --login_with_auth "Bearer foo"
platform-public-get-app 'od5L6OooYoQn9iHE' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'qWO1cVCUIOx90FQd' --login_with_auth "Bearer foo"
platform-public-get-item 'wLi3GOQkLtpuRNeT' --login_with_auth "Bearer foo"
platform-public-get-payment-url '{"neonPayConfig": {"cancelUrl": "1CULEMPaOU5nukyc", "successUrl": "AUlkUSZKUrsxNRzF"}, "paymentOrderNo": "3NaUuCyQyze6zPKu", "paymentProvider": "PAYPAL", "returnUrl": "sE89JW8UU0RsB6dv", "ui": "rpmInhHYzVVlHGFS", "zipCode": "wjby6rMYkVQnZDUA"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'bINRKQsxUO1YMxAn' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'dOj5O6IBwXJjgQjg' --login_with_auth "Bearer foo"
platform-pay '{"token": "LoJyqwFVBd1ZjaRX"}' 'EdWgS12bSbPgOCWU' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'ogizeWOPUMrqgEIs' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'NEONPAY' 'wNbfti0LoTBcNzyo' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'CSw1t653G3ydYmGz' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'vx9bSqqyAPha5b6P' 'QTPTytHeeXo7gOFV' 'PAYPAL' 'ZCBWuVIROZuqdJBi' --login_with_auth "Bearer foo"
platform-get-payment-tax-value '8pkn98VtLNkaIQJf' 'CHECKOUT' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'Nzl1ywEPiunixlEA' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'HZzHs8x5oPSkZFIV' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id '2feXnTRlzAJy9oFO' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'HB2KEsIdtozVltBh' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'oXE4wgcYT5CdjaJu' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement '{"gameId": "UzFIeqaVr1CE1gu6", "language": "DN-dlcQ-Sp", "region": "vZ9tktWLtDdlmVGK"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet '6iolEw6IIpDc9X5i' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'jmtDGvd9ESdY0eTk' --body '{"epicGamesJwtToken": "BWA44Qqsi5yOjvl5"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'sRN2ENn1RLi5iMPn' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'bg7o1zYpqUsliPyX' --body '{"serviceLabel": 64}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'GYIW5ZDtWbdkzPP4' --body '{"serviceLabels": [16, 89, 27]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc '{"appId": "cUIi2CoNj4EG2emx", "steamId": "KQk8cBrt5E8k8rzD"}' 'Z08j6ICP75cm8YDC' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'hFi3zLvfQWC85MxW' --body '{"xstsToken": "xvW0veFl3uU1aMD0"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'mczWxc8f1s2QPMMZ' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'sf2dvKZyHChRPHvd' 'kcKW21B5EFtD2pYa' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'KTz1gcE2XCwTkRUI' 'GAME' --login_with_auth "Bearer foo"
platform-public-get-user-entitlements-by-ids 'FHNmB9mYBvtOwxjq' --login_with_auth "Bearer foo"
platform-public-user-entitlement-history 'yrjDApeN5eAfRqSg' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'H5xIuBTYOdsvNyk5' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id '2MQFkVVEf36S7yPg' 'G48bk6PwH1tdEAJS' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'qXA0Wv0zWGvkc6by' 'p3mvyYT3GuaZVTxB' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'lw1IWeXKFT4rfSbb' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'SlDPGf9Fn32SJNPZ' 'kEfkAcJTMS4pVRcC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'HIGfmCMTr9ACnI2s' 'MrEgl7ZR1HCkf2Sw' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "options": ["lLGKjDHuXt358gzq", "RMuMPrIekxq58fik", "q83hqJ7HP63Se6kV"], "requestId": "W5fkl60ImLBv6nUU", "useCount": 88}' 'r1rfX9stpvJUuyPd' 'zx8BM2wEgTtLRT5s' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement '{"requestId": "twQFUEbTPQ8p7VMl", "useCount": 47}' 'hecNv2Tw6YKhVrYk' 'MqXkQ7qlaJjSYEse' --login_with_auth "Bearer foo"
platform-public-split-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 39}' 'YCFGoKpXx60GmEX9' 'x2BYpyKEBQ7TW7lZ' --login_with_auth "Bearer foo"
platform-public-transfer-user-entitlement '{"entitlementId": "vDbwFJJhBRdq8BgA", "metadata": {"operationSource": "INVENTORY"}, "useCount": 20}' 'k4Gr7jVVx5l3yrH9' 'HR4reG0HwUXxQTf5' --login_with_auth "Bearer foo"
platform-public-redeem-code '{"code": "YpDUGYsJBEkYUrLv", "language": "RK", "region": "TkFcLBrg2JB0WiCp"}' 'VBwvAffJ3btt0PpQ' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item '{"excludeOldTransactions": false, "language": "NtJE-809", "productId": "L6Jh10XMUGeDavCK", "receiptData": "radJmJFUsU418vAl", "region": "mfGg9NO1Z2DvnAxH", "transactionId": "3pS3jyCkGKltBNE2"}' 'UbhNtH3yYg4Qnn2u' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'hdw7C9Bx1LQOTCbA' --body '{"epicGamesJwtToken": "PLC3iqrkyJFOVaew"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '{"autoAck": false, "autoConsume": true, "language": "hH-IUmO_743", "orderId": "pLUHjGaIcZN28gH4", "packageName": "Cd9xTdt2K1CzpQWs", "productId": "lNGnLYUYR0yOvJhU", "purchaseTime": 18, "purchaseToken": "3N8556ll2LQWpdES", "region": "OBV7wZJsg7wSv9ly", "subscriptionPurchase": true}' 'uXG7GUTV1BwgkLDj' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements '4pjVktyoNSsEHlzy' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'd0SarkhltUxgbN5e' --body '{"currencyCode": "ElQNESFLD8hCc9on", "price": 0.7153857189289811, "productId": "NjbQEqFGwnDG8kz4", "serviceLabel": 22}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels '{"currencyCode": "cwlqJ4MO3L8x1H5O", "price": 0.11114450190723124, "productId": "zHypgsSeKCvtPz7j", "serviceLabels": [1, 12, 69]}' 'B1y3klHuAGnidOyG' --login_with_auth "Bearer foo"
platform-sync-steam-inventory '{"appId": "uS0OG7ohiL2943Cl", "currencyCode": "rNhEdxd24ZKfvMf1", "language": "bcga_IAdc", "price": 0.3520472633042504, "productId": "b1rcuEtWAF763kci", "region": "7lT62BOHaso53W3U", "steamId": "2Mu9ZGMWou1U0RVC"}' 'f3gMWDAodCKqfqze' --login_with_auth "Bearer foo"
platform-public-query-user-third-party-subscription 'EPICGAMES' '1hfhmGEKuVUZdCac' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 '{"gameId": "RGataPrcgTcA71dt", "language": "TAu-PWRc-He", "region": "IDNuMBZegHtB9uTC"}' 'iiIoMZCjGiOZJpUf' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory '9RpcfEQn0O6D8PGQ' --body '{"currencyCode": "uazAypgWhTED5YmP", "price": 0.7260024428028026, "productId": "BUkm2FyvdguCYVqF", "xstsToken": "yIKh1YtTY4AejyQc"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders '5Dac7hSLldWx5Dyn' --login_with_auth "Bearer foo"
platform-public-create-user-order '{"currencyCode": "iVESUgrROrP1ip3j", "discountCodes": ["9zOQOcAqBj0bXhOr", "NG68DByf2UMPtigq", "9OHt6zx1i2W3GY7t"], "discountedPrice": 6, "ext": {"yhbqxLuTZIxgiUai": {}, "yy0aWrshpmb1C9Al": {}, "7eWrbNRE0xyYPUZH": {}}, "itemId": "yLGQ52IjGpRJCUJp", "language": "rDX_evct", "price": 25, "quantity": 81, "region": "c5MGInO4yznh2YpZ", "returnUrl": "vvmziSSiSpXeWOGa", "sectionId": "yfRkQvoN06SpNOnu"}' 'Sksfm7hcIFdkdrwA' --login_with_auth "Bearer foo"
platform-public-preview-order-price '{"currencyCode": "cK2lUda9h9Fgvfhi", "discountCodes": ["1qZBrdTnGrwHeWoQ", "XPFWFaKbDgrGkv8S", "LEAkA7n6516ydoRT"], "discountedPrice": 98, "itemId": "OeaPAyPeEGBepK1I", "price": 49, "quantity": 96}' 'SwjCYjCHniVSn1gY' --login_with_auth "Bearer foo"
platform-public-get-user-order 'Gal5NrBtT0om9OlG' 'zpF25qu98RhktX6q' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'wkXbCLbh8t0zPkQW' 'RUlgE0kxzFMq9ttb' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'EHAEV7C65Ans9Squ' 'NSJIay5VdUdYy9Y9' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'OCSmmT3WKijbqhT3' 'uyQRXvvcUYDeWPZ8' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'yhwQ0gIdj1lTJdNL' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'mAvEdEBVAU3rbkv8' 'card' 'cupW0L5WsiuITRMS' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'POUfWQwr4PYf48r6' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions '6MaToxBiliy2vtRk' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription '{"currencyCode": "pqL6KrVcNz83J57t", "itemId": "6OcYPQ5bk5IeuAi3", "language": "xxl", "region": "ZRUL7wS3HaMTXAX6", "returnUrl": "y0STTN2sBEijjjpv", "source": "SzGkED0oweFYDBPy"}' 'd1jJBxbrbuFay9PX' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'gEQS4871QSmsspn5' 'sNfifK65tvaH9jwc' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'O48pthyYpBJDHIIx' 'TIGI5EssYllIqjJz' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'uQ8GglVgxjOGQGlH' 'm8VTN56tJKwD8O07' --login_with_auth "Bearer foo"
platform-public-cancel-subscription '{"immediate": false, "reason": "G1uenDihceaLdgPZ"}' 'I0fKW8LeQxItaK6s' '3Hha69MgxjGJx62m' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'kfVlu4bGB1pyk0Pp' 'xXZDy5Pmbu7RrD9a' --login_with_auth "Bearer foo"
platform-public-list-views '5mdlXTCL467xHbAi' --login_with_auth "Bearer foo"
platform-public-get-wallet 'D3Pr3mXZO1PnbSlf' 'VRlAI8F2f3mEv09k' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'AA5hnQtd4bcivHGI' 'EplRpcHDWcIoJ45L' --login_with_auth "Bearer foo"
platform-public-get-my-dlc-content 'EPICGAMES' --login_with_auth "Bearer foo"
platform-query-fulfillments --login_with_auth "Bearer foo"
platform-query-items-v2 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'PiKR3qcbHLGplYsS' --body '{"itemIds": ["3jsRZffCd00VrgPu", "NtOv3jbhGBuW8Kcy", "PMfDWSEEpKoJlmhM"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 '{"entitlementCollectionId": "QUCx70QjYbzemOTU", "entitlementOrigin": "Playstation", "metadata": {"sXNeveQXqnFRYmEI": {}, "X40XOUoLOa7oDz00": {}, "gxcoaH6u9TVf4DvE": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "AGDgiVsV2OttwJaM", "namespace": "xPDIJ5hFQHumFvPK"}, "item": {"itemId": "qupHj72TlLs964iA", "itemName": "BOgTKtnaA7O35Iay", "itemSku": "td9CsAMTZC37xPXx", "itemType": "nfggnZ3EZp6wSAuf"}, "quantity": 45, "type": "ITEM"}, {"currency": {"currencyCode": "Yirs9lwvPKd925u3", "namespace": "fFLV0YeMrVaYSTRY"}, "item": {"itemId": "GFzgLZ7gEypQf2Pn", "itemName": "9A4gcbDJ0LmdnOPk", "itemSku": "IT1C6KGTpA7JZ6xu", "itemType": "llPROSfiW9zcxmgN"}, "quantity": 10, "type": "ITEM"}, {"currency": {"currencyCode": "u3vkZt9FgWckjNpH", "namespace": "hM2ZXp4N0ROmUCTr"}, "item": {"itemId": "S7Gi9Iigk9vamO7Q", "itemName": "2WQwSWqSs05rjISy", "itemSku": "4B0X9AJdkT7UYCV8", "itemType": "agvwOI2LlOQNRN13"}, "quantity": 79, "type": "CURRENCY"}], "source": "EXPIRATION", "transactionId": "Q8Szi1IrGidRmR5B"}' 'GRJhFwxmkGfPI3j4' --login_with_auth "Bearer foo"
platform-v2-public-fulfill-apple-iap-item 'luXQuuLtYa86kvL6' --body '{"transactionId": "cBZQssUUXOsXMNdv"}' --login_with_auth "Bearer foo"
platform-fulfill-items-v3 '{"items": [{"duration": 83, "endDate": "1998-06-13T00:00:00Z", "entitlementCollectionId": "hbvGenRbm3QtsY5W", "entitlementOrigin": "Epic", "itemId": "JLb7labyotifVk9K", "itemSku": "yqceGv0CEDTVSjIN", "language": "YeKLowG7UQB9pXzu", "metadata": {"CK5qd2m8A5axixm9": {}, "X9TXNhN8y1PVriIy": {}, "v9kjuiAGiXx47etM": {}}, "orderNo": "ikLFggYDc2FMbzZo", "origin": "GooglePlay", "quantity": 0, "region": "KagnKf2Yifzvr9Oq", "source": "PAYMENT", "startDate": "1992-10-04T00:00:00Z", "storeId": "8FWIPeqaBeD2uBAv"}, {"duration": 70, "endDate": "1988-07-02T00:00:00Z", "entitlementCollectionId": "Ec2CCgYcFo9A93o2", "entitlementOrigin": "Playstation", "itemId": "UgObCOiBWdw2b031", "itemSku": "dm4N41MOpmm04BlZ", "language": "UAlYnCT11qD03er5", "metadata": {"mdraK47FdxXisVlo": {}, "3aVOGARFDJcGWy82": {}, "6ilCxAxQUM5DyrPf": {}}, "orderNo": "BmpZIzSFUZqVR5FW", "origin": "System", "quantity": 44, "region": "fH66eFCMTsLA8vYV", "source": "PROMOTION", "startDate": "1977-05-23T00:00:00Z", "storeId": "ffBWRaJN1SjCFLDN"}, {"duration": 72, "endDate": "1993-02-12T00:00:00Z", "entitlementCollectionId": "54NNs3XdhMbQX9D1", "entitlementOrigin": "Playstation", "itemId": "5fEk9s11bFXkf7rQ", "itemSku": "J4Kj7Qyo9tUptiyZ", "language": "zRX8Y4rxRWZPe4ZL", "metadata": {"AQWuBJwxObZqMGxh": {}, "ffy9cHrLYfftad99": {}, "JDcnn7f2d8SOWP2d": {}}, "orderNo": "w6Uy88WpQalG38VO", "origin": "Nintendo", "quantity": 26, "region": "82aLD9jUjuDITjif", "source": "DLC", "startDate": "1993-03-12T00:00:00Z", "storeId": "bmtK7MTxcCWnMiCL"}]}' 'sjroKHPApA8GsGwy' 'ocvY9NePjLJQJXwU' --login_with_auth "Bearer foo"
platform-retry-fulfill-items-v3 'ApJWohXn01RB7pu7' 'BaONXyE5fIDbsMi4' --login_with_auth "Bearer foo"
platform-revoke-items-v3 '8xOYVvEcEm53BYMB' 'acQBIuDVs7U0AJtW' --login_with_auth "Bearer foo"
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
echo "1..486"

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
    'PRteszMTd0R5Fsrf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    '9xbVfgvG617GmxzC' \
    --body '{"grantDays": "lkR3M6Twpwq3nLwx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'nJKjOo9fvfXF1Vsi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'kD3IphQQiRcOtsth' \
    --body '{"grantDays": "UwgQzNHUZ0l1FRfO"}' \
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
    '{"clazz": "jJUmCbi2llksf6GA", "dryRun": true, "fulfillmentUrl": "vTt92kldCoyRdiOi", "itemType": "CODE", "purchaseConditionUrl": "XKFA2gdjQCYoE8b0"}' \
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
    'Sl7WN3ncPkqiTKzz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    '{"clazz": "72PKXjShM2DvesmM", "dryRun": false, "fulfillmentUrl": "ePKAKYjJMVnYj2yK", "purchaseConditionUrl": "qavWpydepM3ap069"}' \
    'B9Okr0xJ5XRZVoxP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'GOLVBIlFgTAsXgqx' \
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
    '{"description": "3mfB5ZwV25N7NAvZ", "discountConfig": {"categories": [{"categoryPath": "dGuyYEYZE3KaGSdh", "includeSubCategories": true}, {"categoryPath": "gZ1fieLdl3Y82DOj", "includeSubCategories": true}, {"categoryPath": "kPuNRZZaUccuBYep", "includeSubCategories": false}], "currencyCode": "oj5vygVvLSJvdsGp", "currencyNamespace": "mmUeMikW3s54zffA", "discountAmount": 77, "discountPercentage": 83, "discountType": "PERCENTAGE", "items": [{"itemId": "rEZTbFDj2L2McvCr", "itemName": "rR7h9uKLXDaRf3px"}, {"itemId": "KtJbRY5luCwKrt6w", "itemName": "n3yVrRCh6j7rpv8K"}, {"itemId": "8fBAeRa1R6ksxLYG", "itemName": "kOLgReff5IHxLJIe"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 69, "itemId": "L2oXDZ20Bw2H4tz6", "itemName": "KUC4jXGj2G0GZ3JB", "quantity": 17}, {"extraSubscriptionDays": 84, "itemId": "bBKBRpdbLCiwxOx2", "itemName": "XQn94xPqXhqeNMDG", "quantity": 55}, {"extraSubscriptionDays": 35, "itemId": "3O5hQAl6U2g9imVM", "itemName": "h3i7j095rDL6lEuB", "quantity": 98}], "maxRedeemCountPerCampaignPerUser": 71, "maxRedeemCountPerCode": 71, "maxRedeemCountPerCodePerUser": 10, "maxSaleCount": 78, "name": "hVCf3AwIzUdQ6sTr", "redeemEnd": "1994-02-22T00:00:00Z", "redeemStart": "1977-07-25T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["rZraV3NLBUSrFnzE", "6yR1wLTgjsnB2LFV", "rZRrOntm2KjbfCOu"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'dBmFwUO7Y0xhMLwx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '{"description": "gRpTSUppvO3QG68K", "discountConfig": {"categories": [{"categoryPath": "eD7QJQEEVDAg045B", "includeSubCategories": true}, {"categoryPath": "uKswQ7vH8GScnP5Q", "includeSubCategories": true}, {"categoryPath": "oH53vibq3Qcrtt8L", "includeSubCategories": false}], "currencyCode": "RCU0p4jIt01gzH17", "currencyNamespace": "IcfJyGulmByN5rcD", "discountAmount": 54, "discountPercentage": 99, "discountType": "AMOUNT", "items": [{"itemId": "jqYieXRthQZvzRi7", "itemName": "pqpajYEHs9TIkcnr"}, {"itemId": "J64BOKqywS6DKNSe", "itemName": "b2UMWOgVeYkCvqq0"}, {"itemId": "tO15pEVG7sNihxpu", "itemName": "uL7DJCxvzZnh8oBA"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 79, "itemId": "p0NCKWNkLU5ty3uQ", "itemName": "a7Fl3ZhSMLtrwnjT", "quantity": 73}, {"extraSubscriptionDays": 3, "itemId": "VDlh112byTYCDBnA", "itemName": "vf8JpFuJSZistM75", "quantity": 76}, {"extraSubscriptionDays": 38, "itemId": "4PDlVK8taScpV0Nt", "itemName": "CxDDz5rxt6LflBJj", "quantity": 29}], "maxRedeemCountPerCampaignPerUser": 21, "maxRedeemCountPerCode": 69, "maxRedeemCountPerCodePerUser": 78, "maxSaleCount": 40, "name": "AaL4oAF2lqx8yneW", "redeemEnd": "1989-05-21T00:00:00Z", "redeemStart": "1975-12-02T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["xcg30BqC5W7g7hiw", "umJTI3jlZPjoCdGi", "IP6cB3Pj63MJXIuL"]}' \
    'WYb2iHHVN0ZBgvri' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
$PYTHON -m $MODULE 'platform-rename-batch' \
    '{"newName": "gXUT4fRbawD5yOvj", "oldName": "gOopQfbXmtF0WFH7"}' \
    'F2InhxtynUjuBCxk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
$PYTHON -m $MODULE 'platform-query-campaign-batch-names' \
    'b2oF99xI1VVtVrVT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    '6Hn8B2d1hZUnoQwg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetCampaignDynamic' test.out

#- 20 GetCatalogConfig
$PYTHON -m $MODULE 'platform-get-catalog-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetCatalogConfig' test.out

#- 21 UpdateCatalogConfig
$PYTHON -m $MODULE 'platform-update-catalog-config' \
    '{"enableInventoryCheck": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateCatalogConfig' test.out

#- 22 GetLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-get-loot-box-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetLootBoxPluginConfig' test.out

#- 23 UpdateLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-update-loot-box-plugin-config' \
    '{"appConfig": {"appName": "5DEjxqhgYqmMqIdl"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "rQmuILkeRUafUDP5"}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateLootBoxPluginConfig' test.out

#- 24 DeleteLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-delete-loot-box-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteLootBoxPluginConfig' test.out

#- 25 UplodLootBoxPluginConfigCert
$PYTHON -m $MODULE 'platform-uplod-loot-box-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UplodLootBoxPluginConfigCert' test.out

#- 26 GetLootBoxGrpcInfo
$PYTHON -m $MODULE 'platform-get-loot-box-grpc-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetLootBoxGrpcInfo' test.out

#- 27 GetSectionPluginConfig
$PYTHON -m $MODULE 'platform-get-section-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetSectionPluginConfig' test.out

#- 28 UpdateSectionPluginConfig
$PYTHON -m $MODULE 'platform-update-section-plugin-config' \
    '{"appConfig": {"appName": "GI7csI8ecZSvzXYO"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "ILhUoCh8lmKKocC5"}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'UpdateSectionPluginConfig' test.out

#- 29 DeleteSectionPluginConfig
$PYTHON -m $MODULE 'platform-delete-section-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'DeleteSectionPluginConfig' test.out

#- 30 UploadSectionPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-section-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UploadSectionPluginConfigCert' test.out

#- 31 GetRootCategories
$PYTHON -m $MODULE 'platform-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
$PYTHON -m $MODULE 'platform-create-category' \
    '{"categoryPath": "sKF28n7UC7y1MKYV", "localizationDisplayNames": {"eoGFrDb8unXv1iE7": "YgEZspOJ0NiZl6OV", "LxKtkBpaCG8Nu5m4": "ctwUNV8ncebaJ0DC", "uIeEStt3PbyctX7H": "C2haQwVWONEpAPed"}}' \
    'zI2AdlqiyEJIQcbZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
$PYTHON -m $MODULE 'platform-list-categories-basic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
$PYTHON -m $MODULE 'platform-get-category' \
    'JJ3AhkrMi0bnppEJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '{"localizationDisplayNames": {"FISze88rGEr3cilJ": "WhaW6jNsM94E2FQb", "6S0VmaTR7E3mkDSQ": "kgVMhLbM6H1MnNSK", "d0KStITvGQtzwjGt": "GTr238G8Aevk3k14"}}' \
    '782W2oNo3X4m6wms' \
    '9SPaHlqtDPry2vMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'N7sdhlilfpDT8o2i' \
    'FrYtGfCZCcrvsV2I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    '4X26p21iDBZGJ8ZM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'LwPJ871nV5ALS7cn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'eNLItUJgh74tyxkT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    '{"batchName": "R8ZCVJtkxjBJrNeQ", "codeValue": "RsqkkKK2qxqzy4KS", "quantity": 54}' \
    'M2B9bMohkWsFKIdy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
$PYTHON -m $MODULE 'platform-download' \
    'cYHQcu7JkKBcLFRf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    '50Y7ME2QmYiYqap7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'masUcayqmp7vhz1T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    '6cSrZL2CgHxdmYDj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    '9vZNgfI1AeYHe8WP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'QGPclChxLfbXrH6f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    '2GDrNbLOjGz34ct0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'EnableCode' test.out

#- 48 GetServicePluginConfig
eval_tap 0 48 'GetServicePluginConfig # SKIP deprecated' test.out

#- 49 UpdateServicePluginConfig
eval_tap 0 49 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 50 DeleteServicePluginConfig
eval_tap 0 50 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 51 ListCurrencies
$PYTHON -m $MODULE 'platform-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'ListCurrencies' test.out

#- 52 CreateCurrency
$PYTHON -m $MODULE 'platform-create-currency' \
    '{"currencyCode": "ctEeH43wYuLnI7cT", "currencySymbol": "zIUERPlQI99hMc4N", "currencyType": "REAL", "decimals": 95, "localizationDescriptions": {"iJWP5r9EwbIGMGJ7": "0P9IqAyNlZ2OwFSe", "bBkXkaxtY97TMJH8": "bO4GDHT6ZaUUkvlT", "KAhrxqHw7f813qNj": "zlcxXsmGGcJhauxf"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    '{"localizationDescriptions": {"hVKIbRvUnyElHPuQ": "E3Gc8bY4IH0OXHZP", "6VVB7qjDHMS49dkv": "8vxyg6giNKzeFnlg", "GRgYK3SeYvULYNIh": "s5PZGTJmgofq7nlF"}}' \
    '5Ch8J2Qs990APOU4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'hcdwlnsTap2RJpHt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'ncLywP3WlLmNdQGk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    '6vneHoB1PXO1vT1A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfig
$PYTHON -m $MODULE 'platform-get-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfig' test.out

#- 58 UpdateDLCItemConfig
$PYTHON -m $MODULE 'platform-update-dlc-item-config' \
    '{"data": [{"id": "onFO3syvkYd78GsJ", "rewards": [{"currency": {"currencyCode": "GLbnb4Nvw7fnm4Mn", "namespace": "OqnqNerQoHiDIJay"}, "item": {"itemId": "vSNt8EQXsMbYi1yE", "itemName": "I9ychtyhjZSeDCKT", "itemSku": "4ilZB8apDTR3aL9s", "itemType": "unWp7V1s8LmXm0Fa"}, "quantity": 72, "type": "ITEM"}, {"currency": {"currencyCode": "MIjgzU02nZWwBdEF", "namespace": "pfccauYDc86pxK9K"}, "item": {"itemId": "hF4KRVPoIuzAuQNj", "itemName": "AfvOE2cVjFp1CeCE", "itemSku": "faV4ZGGwbqOB4mD3", "itemType": "E7AFHqlTTkL8cmpA"}, "quantity": 31, "type": "ITEM"}, {"currency": {"currencyCode": "vmM19X4zFOvdRTpG", "namespace": "mBUjfEU9vL8H96tu"}, "item": {"itemId": "VfQwYIqDWqbPmwQw", "itemName": "8J7na1POTXhXLRU5", "itemSku": "prAdqnnPOiTVzAeQ", "itemType": "q6rnWJoTpYoe2uHa"}, "quantity": 100, "type": "CURRENCY"}]}, {"id": "P2Y9WqSRiwV3UZg0", "rewards": [{"currency": {"currencyCode": "UJLPMkeUwa6OVKxC", "namespace": "Mxuf0P9r5f6fdmyi"}, "item": {"itemId": "4kQnOFbBtvBw81hU", "itemName": "gtONCIoZ2rkomSj5", "itemSku": "2mAIMo6EW9QhzU8F", "itemType": "wQtZpfUoyoiUjmqO"}, "quantity": 50, "type": "CURRENCY"}, {"currency": {"currencyCode": "aNZLT1z0GqDZN7ft", "namespace": "HOhVy48YYg1AkRh3"}, "item": {"itemId": "NmbRhMxKeIgwq1NZ", "itemName": "mxa0ghRG020QpWTN", "itemSku": "KsVyK8EU8JYc00PA", "itemType": "2ef1jFeqQ8mBpTuv"}, "quantity": 77, "type": "CURRENCY"}, {"currency": {"currencyCode": "TJUzwXJFaWW3JVdY", "namespace": "pfHOYoLva2c4JscE"}, "item": {"itemId": "QfBFZXcSXpU81S5H", "itemName": "9XsZyvZOFJ5RrFZY", "itemSku": "cwfQ1Q2BbcjSpv6N", "itemType": "t1oz4tdgfKu4bmK8"}, "quantity": 22, "type": "ITEM"}]}, {"id": "OKcEoCRjQJlPY3p4", "rewards": [{"currency": {"currencyCode": "2OS9iGNElTpMlvRD", "namespace": "ZSIuM0OXOHPluvsr"}, "item": {"itemId": "y8AKSZxOhUhl3Y0E", "itemName": "shaG0uDiJNUuxK22", "itemSku": "saWaGvrzBdLvFUBZ", "itemType": "DnVrcwbsD0RDLxWg"}, "quantity": 63, "type": "CURRENCY"}, {"currency": {"currencyCode": "woHpV8E1xQZLa7Kw", "namespace": "77UpCxNyx1jjdxNe"}, "item": {"itemId": "PPAJ6Z9UzqIhZZiK", "itemName": "0QEG6C9w4lVRNOF1", "itemSku": "Bg6OHZzvdZHoIm4t", "itemType": "KNhPjNIQGFxGwgnS"}, "quantity": 17, "type": "CURRENCY"}, {"currency": {"currencyCode": "ZtChE0uof77AAPI5", "namespace": "tdPeFz9pGYsLNEGr"}, "item": {"itemId": "fy9qHKufJfk0MeG3", "itemName": "qYJr6PuCVK9WmDAd", "itemSku": "pLVTVsj9pDiyybXY", "itemType": "4v7JRFMRaeIaQuPW"}, "quantity": 85, "type": "CURRENCY"}]}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'UpdateDLCItemConfig' test.out

#- 59 DeleteDLCItemConfig
$PYTHON -m $MODULE 'platform-delete-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'DeleteDLCItemConfig' test.out

#- 60 GetPlatformDLCConfig
$PYTHON -m $MODULE 'platform-get-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetPlatformDLCConfig' test.out

#- 61 UpdatePlatformDLCConfig
$PYTHON -m $MODULE 'platform-update-platform-dlc-config' \
    '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"ofp9PvlQ1xdmr4JD": "pvZgvPGHjV7MNTpM", "7fSods1zdVT0aWj5": "8Othvd3jzMDAf40g", "KSizvmxts5HSQvRA": "PG9JoVSLrbs5niXk"}}, {"platform": "OCULUS", "platformDlcIdMap": {"FZQ9lVMNyCiytnfM": "oO1I3KISTbn4yEa2", "AaBRalz5HEm4Gant": "6aqjKzWDAauqLKar", "cLQRQtC927GneBM8": "LvzgyIVzGFBLJ5vb"}}, {"platform": "STEAM", "platformDlcIdMap": {"wiCmWQvbrxQpUSno": "s6QiHyrcGeRv27hj", "73EtufHuNIp0GXpM": "4nbG7aww2TANW1Or", "7TvLoL0wwHoRMNex": "BOron8wIdUbp7xVM"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'UpdatePlatformDLCConfig' test.out

#- 62 DeletePlatformDLCConfig
$PYTHON -m $MODULE 'platform-delete-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'DeletePlatformDLCConfig' test.out

#- 63 QueryEntitlements1
$PYTHON -m $MODULE 'platform-query-entitlements-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'QueryEntitlements1' test.out

#- 64 QueryEntitlements
$PYTHON -m $MODULE 'platform-query-entitlements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'QueryEntitlements' test.out

#- 65 EnableEntitlementOriginFeature
$PYTHON -m $MODULE 'platform-enable-entitlement-origin-feature' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'EnableEntitlementOriginFeature' test.out

#- 66 GetEntitlementConfigInfo
$PYTHON -m $MODULE 'platform-get-entitlement-config-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetEntitlementConfigInfo' test.out

#- 67 GrantEntitlements
$PYTHON -m $MODULE 'platform-grant-entitlements' \
    '{"entitlementGrantList": [{"collectionId": "KfbAJfW4iMIC52NU", "endDate": "1973-04-24T00:00:00Z", "grantedCode": "dhhkME18qGpSsyEP", "itemId": "DWHcqfYp2EFxEaEH", "itemNamespace": "CGtg812NQb5Glh8s", "language": "uvL-vNyD", "metadata": {"V2XUo1BO1rE7E12F": {}, "apao5jo9nJoKEb8t": {}, "HmFwLGan2SrKckNx": {}}, "origin": "Twitch", "quantity": 49, "region": "WH6rjhRL9uxoV5Oe", "source": "REWARD", "startDate": "1976-10-09T00:00:00Z", "storeId": "tlePEo1xBuRSv6Vi"}, {"collectionId": "zgtOXZy9cQ6B074d", "endDate": "1994-10-15T00:00:00Z", "grantedCode": "NHTb4qXYyJUAlKlT", "itemId": "wdJEPoemVtmVXTs3", "itemNamespace": "tCu4F9IgDT2tq2V2", "language": "Nn-bjyr", "metadata": {"HCZ90DqQgP6ynrQj": {}, "YH0N2loTnRa0KiQW": {}, "Pxd1gqlwx9CE4Wcs": {}}, "origin": "Nintendo", "quantity": 48, "region": "tCkIgcwiDWQFghmI", "source": "IAP", "startDate": "1985-02-09T00:00:00Z", "storeId": "mtuIFllfSUnaUhC4"}, {"collectionId": "x11AS2jTKoTYeHaC", "endDate": "1981-03-22T00:00:00Z", "grantedCode": "N7zpX9vp4QJdCrwk", "itemId": "z0nw2oxKye8jZqj7", "itemNamespace": "k0YiLqOUSBuwR388", "language": "Dfze-302", "metadata": {"EEziE5yIvijq9ix1": {}, "6vo60jgvwV3C9hJ1": {}, "kSZonK02WHGVKDcK": {}}, "origin": "Other", "quantity": 4, "region": "lj3Pdegy4G6LOpak", "source": "REFERRAL_BONUS", "startDate": "1997-08-18T00:00:00Z", "storeId": "p6DPdukc04j6rbfB"}], "userIds": ["uKBco1AeO3yvvBLZ", "IJZkwEcCRi2U7s2Z", "PBuekeBe4Tvb3fHC"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["QAarwH0c87v0PwZj", "ydyzGDZM4zTTYI6O", "8coYDWUfcL1qsegB"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'srNqeW5BxVe8iW7s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GetEntitlement' test.out

#- 70 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'QueryFulfillmentHistories' test.out

#- 71 QueryIAPClawbackHistory
$PYTHON -m $MODULE 'platform-query-iap-clawback-history' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'QueryIAPClawbackHistory' test.out

#- 72 MockPlayStationStreamEvent
$PYTHON -m $MODULE 'platform-mock-play-station-stream-event' \
    --body '{"body": {"account": "GELnMdXRqdGPzxXv", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 39, "clientTransactionId": "PtrhjeVBnTrsYihh"}, {"amountConsumed": 14, "clientTransactionId": "bFFDIqKD8HJ4X0De"}, {"amountConsumed": 41, "clientTransactionId": "3nL1saQxLYrz08jh"}], "entitlementId": "6Tyq7WUilXgtf5Uc", "usageCount": 41}, {"clientTransaction": [{"amountConsumed": 27, "clientTransactionId": "yV3aSw4twReM5DcH"}, {"amountConsumed": 8, "clientTransactionId": "mGdCbwodVRjZJWuC"}, {"amountConsumed": 88, "clientTransactionId": "OcYhf6nGCnPjiIbJ"}], "entitlementId": "ifs0arKxCcNv8FQC", "usageCount": 49}, {"clientTransaction": [{"amountConsumed": 41, "clientTransactionId": "QBqKxayGvw7MqOsy"}, {"amountConsumed": 32, "clientTransactionId": "lLJGMl5xFgLj4mCS"}, {"amountConsumed": 15, "clientTransactionId": "CLDu6PA3PRnQtB41"}], "entitlementId": "0iWT0SILVGXCWRuc", "usageCount": 88}], "purpose": "JlWXmQFlef1tSHJf"}, "originalTitleName": "6sVpwAAKKqmTy0ZS", "paymentProductSKU": "yJ7IIUXlBlZMQeSn", "purchaseDate": "Og5gf1SwrbpmoF4D", "sourceOrderItemId": "vNA1wo9IAxV5C71g", "titleName": "Tw8BJPFctwUMCRdx"}, "eventDomain": "XOBu3TWmHDVmCGFo", "eventSource": "D7aNFj9wORAVqRuN", "eventType": "sXxRu4EQqR3KbYWt", "eventVersion": 64, "id": "LvER3xqCwUgKa4oC", "timestamp": "BoJDxGa1UuSr4ehn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'MockPlayStationStreamEvent' test.out

#- 73 MockXblClawbackEvent
$PYTHON -m $MODULE 'platform-mock-xbl-clawback-event' \
    --body '{"data": {"eventDate": "V8Aw9m6GvDSE2F7A", "eventState": "d69Dln4mqFhgKKcG", "lineItemId": "ohdjQUwVdPsArkep", "orderId": "fK0DE3IibPSQnphn", "productId": "vAWBSOr7zljUKyhK", "productType": "kD7wAHMrv8zABDhY", "purchasedDate": "AVxvs3ugNvvgI2k1", "sandboxId": "P9nQxzj3AnmpWfje", "skuId": "5cAtTDvwFHcoODi5", "subscriptionData": {"consumedDurationInDays": 30, "dateTime": "zUappaaODZaZ6Vzz", "durationInDays": 39, "recurrenceId": "xerpjVPfktNnl8UY"}}, "datacontenttype": "H5kesuOtYHLqcdy0", "id": "5YrqdFn8sQ7yc8xL", "source": "KyBfGLHEAKhp612Y", "specVersion": "2ncRf7tEGzYqRoHm", "subject": "6EtyXqQbKWMJ0aOD", "time": "iWn6bPmSa85Riu1a", "traceparent": "laVEhjJZbwMHkFWL", "type": "SzmAXAruYrVjX4HR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'MockXblClawbackEvent' test.out

#- 74 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'GetAppleIAPConfig' test.out

#- 75 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    '{"appAppleId": 93, "bundleId": "jQsTGmzItJIOkEIR", "issuerId": "sSWOV8LyivYbMG9L", "keyId": "XPbBh2E3wFchP3zT", "password": "ymfVfny2M0KsS08c", "version": "V2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UpdateAppleIAPConfig' test.out

#- 76 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteAppleIAPConfig' test.out

#- 77 UpdateAppleP8File
$PYTHON -m $MODULE 'platform-update-apple-p8-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UpdateAppleP8File' test.out

#- 78 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'GetEpicGamesIAPConfig' test.out

#- 79 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    '{"sandboxId": "3fjI1YTT3qUMd0U7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UpdateEpicGamesIAPConfig' test.out

#- 80 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DeleteEpicGamesIAPConfig' test.out

#- 81 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GetGoogleIAPConfig' test.out

#- 82 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    '{"applicationName": "3RjVeYSM479gn62l", "notificationTokenAudience": "izsWGrtIgVPb7hoo", "notificationTokenEmail": "8YkNPW8mWOJGtdXJ", "packageName": "GDsxRAR3NObYp43Y", "serviceAccountId": "XMHqWeVjnOURxGvO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateGoogleIAPConfig' test.out

#- 83 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'DeleteGoogleIAPConfig' test.out

#- 84 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'UpdateGoogleP12File' test.out

#- 85 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetIAPItemConfig' test.out

#- 86 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    '{"data": [{"itemIdentity": "hz9s7ktWkJDaHg6k", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"QsMBQAdOfrtHWyGg": "5TU3INkMgjsnP8it", "evmjTJjj5tfFQv38": "4ri6A7z0hsW0IHIY", "vJ7PPgVaFwGhl5zq": "kzEu41hVfVC7eLVW"}}, {"itemIdentity": "Gk0GjYReIZaDC2Au", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"K9iBdljXtowifBfA": "w30kOykBuDJ0IPQe", "AL4MZwEVJe7waGyB": "6g2M5JiwtMOfDfoM", "gU2yFBTPfnmfN5E2": "0ORMCVBTrkvObsiH"}}, {"itemIdentity": "Qgt7OfL6AcBPjUYU", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"B3Rsrc0qvV8Gq1cw": "3ytGWVKPoA1aKRZM", "1Ot0PWppB2H0G8Xk": "o9l5J0IOZmnpzwHh", "ig9d6vdgfrNiGrH0": "hDjH6IYpfINzNjk5"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'UpdateIAPItemConfig' test.out

#- 87 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'DeleteIAPItemConfig' test.out

#- 88 GetOculusIAPConfig
$PYTHON -m $MODULE 'platform-get-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetOculusIAPConfig' test.out

#- 89 UpdateOculusIAPConfig
$PYTHON -m $MODULE 'platform-update-oculus-iap-config' \
    '{"appId": "V8T9pQjnGB83yonu", "appSecret": "df21g0NhuYvwCATI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateOculusIAPConfig' test.out

#- 90 DeleteOculusIAPConfig
$PYTHON -m $MODULE 'platform-delete-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteOculusIAPConfig' test.out

#- 91 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetPlayStationIAPConfig' test.out

#- 92 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    '{"backOfficeServerClientId": "Uep61ZsSiqW7I03o", "backOfficeServerClientSecret": "SwCfYpN9jkLCsMYy", "enableStreamJob": true, "environment": "KOwsyRNnaLNhw0xG", "streamName": "nXc29UDQxeiBo2hB", "streamPartnerName": "9u1v1POCjseK1xaS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'UpdatePlaystationIAPConfig' test.out

#- 93 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'DeletePlaystationIAPConfig' test.out

#- 94 ValidateExistedPlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-existed-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'ValidateExistedPlaystationIAPConfig' test.out

#- 95 ValidatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-playstation-iap-config' \
    '{"backOfficeServerClientId": "bMjyFrYsITcyT5Ah", "backOfficeServerClientSecret": "NNH0Ht1yPtBwXIuY", "enableStreamJob": true, "environment": "Bd6Yng8ps5XknDJZ", "streamName": "K5gFHyIOnLu9WBAS", "streamPartnerName": "0qUswy0AnJZJdKrI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'ValidatePlaystationIAPConfig' test.out

#- 96 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetSteamIAPConfig' test.out

#- 97 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    '{"appId": "n9hHHGg1cTZsJp1b", "publisherAuthenticationKey": "5yB8c9gCPFDZh6Jf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'UpdateSteamIAPConfig' test.out

#- 98 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteSteamIAPConfig' test.out

#- 99 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'GetTwitchIAPConfig' test.out

#- 100 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    '{"clientId": "Jfg4X1dZOTBgYwLj", "clientSecret": "PGFqkbTL8ifUAMUe", "organizationId": "krD0J6iuJsVjhLga"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'UpdateTwitchIAPConfig' test.out

#- 101 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'DeleteTwitchIAPConfig' test.out

#- 102 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'GetXblIAPConfig' test.out

#- 103 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    '{"enableClawback": false, "entraAppClientId": "eFJ5QRuvEsU5Qkms", "entraAppClientSecret": "mfFhPTfXVzS3hFUX", "entraTenantId": "bdYU08BQZXTcZnHo", "relyingPartyCert": "YaII5c5UqVvKR3yd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'UpdateXblIAPConfig' test.out

#- 104 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'DeleteXblAPConfig' test.out

#- 105 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'UpdateXblBPCertFile' test.out

#- 106 QueryThirdPartyNotifications
$PYTHON -m $MODULE 'platform-query-third-party-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'QueryThirdPartyNotifications' test.out

#- 107 QueryThirdPartySubscription
$PYTHON -m $MODULE 'platform-query-third-party-subscription' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'QueryThirdPartySubscription' test.out

#- 108 GetIAPOrderConsumeDetails
$PYTHON -m $MODULE 'platform-get-iap-order-consume-details' \
    'SEb2trPjqlB5c8a7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GetIAPOrderConsumeDetails' test.out

#- 109 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    '8gp4BGN4NAydb6Gg' \
    'yFczEOMXF1T1sU9x' \
    'smACLFHrXWFobqnD' \
    'CODE' \
    'npVE1acxZoDXdPOR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'DownloadInvoiceDetails' test.out

#- 110 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'kWkyTcJzvDUlhTlB' \
    'Npvkjg48iVKCqEqe' \
    'ZP1CFaMkJVBkZU3q' \
    'INGAMEITEM' \
    'xEx6tlxks0yGW8qD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GenerateInvoiceSummary' test.out

#- 111 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    '{"categoryPath": "Wfr7MF8Ptq10XBhc", "targetItemId": "JfG9qYAEpR44fWWE", "targetNamespace": "sCETqKlcFcaL6XOo"}' \
    'O3WqBsbDmsTk9Uui' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'SyncInGameItem' test.out

#- 112 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '{"appId": "QwezvArAKJwZGVyk", "appType": "DLC", "baseAppId": "IzTlGBnpLBd02br9", "boothName": "OfMbjgS5WjduKixz", "categoryPath": "ScfrHzGYC1TdLVDB", "clazz": "DxK6laOkeLBcprBy", "displayOrder": 19, "entitlementType": "DURABLE", "ext": {"Ur7w9w1xKUrLmQSk": {}, "uEMRzyerpya2oBjb": {}, "gBhOdXE8y1PNIzbn": {}}, "features": ["PB5wG65f3ACfS3A8", "JeRMYUCgn7oklNew", "pAIwtlAooXZ7HDb8"], "flexible": false, "images": [{"as": "5roG1oZArFJBUmMx", "caption": "7nzK8rRAYvvynDPJ", "height": 86, "imageUrl": "SMRzSo0RzUoSen8C", "smallImageUrl": "jEhtRcnVsYOwypw6", "width": 65}, {"as": "773cdzYhgH24VR4h", "caption": "JnsU1m6zryXmvvvP", "height": 26, "imageUrl": "cfPmWjX540aN2pvO", "smallImageUrl": "i5UG7agVhXIgoHE9", "width": 10}, {"as": "XBsCkfqzKlzlLgHP", "caption": "F5iRWnREifOFJQwG", "height": 85, "imageUrl": "M6JB2P6ZjZh9eggv", "smallImageUrl": "vmXZU7lVGZ6lIs17", "width": 85}], "inventoryConfig": {"customAttributes": {"5DfAxsrX7OiSRs0z": {}, "2RYA8fTlbfUOSmR4": {}, "F0p5g7b3MegxV9Jn": {}}, "serverCustomAttributes": {"AJSu3MX2yYJopKxd": {}, "9MtXYGoZGkBNXT0f": {}, "eu7KKPXunBZiqYaR": {}}, "slotUsed": 9}, "itemIds": ["vKTljWspMrC4TeRT", "NUYz7N4wHLHx7FCW", "n7iOmKIN2roJNZmg"], "itemQty": {"EGzqDHdLpDjLIhvC": 81, "QNFGaJEyBVlQ5iHl": 93, "D6kOUZXQKRTVR95I": 45}, "itemType": "COINS", "listable": true, "localizations": {"Cb2qOuIRbBL0njCb": {"description": "itEJNHwfW76v6GPV", "localExt": {"wWjIfhOXemeTgiEN": {}, "bhdRohucoiX0GAQZ": {}, "EbNr6VtQiKwKuIHM": {}}, "longDescription": "jiIjX7Eu0WCXd8GX", "title": "7ygT5qlBekxw9pO3"}, "vyRviPljDYddTDwg": {"description": "c6onXfoDvjI9jfJF", "localExt": {"THcHvAfosnCXqJpl": {}, "cwaBHILlCC7ovjEb": {}, "jKrZ2d6IbWTfPplY": {}}, "longDescription": "43FQpfFWm8VMHjC8", "title": "qrxvZsJd3RBYL4PA"}, "qdviBvToSQ7EqHUh": {"description": "Hn1qP3G2kSIurSOW", "localExt": {"I2donULQokdCSsp8": {}, "7x6Jfe5YAYJeb1GU": {}, "dtB5G8NITA0g58cq": {}}, "longDescription": "Zn79u2grirdqELbd", "title": "qXaPlAMGm4h3PbLH"}}, "lootBoxConfig": {"rewardCount": 60, "rewards": [{"lootBoxItems": [{"count": 65, "duration": 1, "endDate": "1998-06-12T00:00:00Z", "itemId": "79hQA91csvlQSS6P", "itemSku": "yDb3vKbCw9eAGmM6", "itemType": "lPAJMizukBmcy1kb"}, {"count": 55, "duration": 100, "endDate": "1971-09-04T00:00:00Z", "itemId": "5FeKFm3raYpWl0Mf", "itemSku": "F3iAQb4Iiy26m51A", "itemType": "wCv4UKmP7eczfnYg"}, {"count": 83, "duration": 33, "endDate": "1987-01-22T00:00:00Z", "itemId": "hJZ6DIokID1ZFk9f", "itemSku": "RCHfId0Dhnin8Rxn", "itemType": "O0qs4FykFXDdcUuE"}], "name": "E9wh4CEOrPY29A1L", "odds": 0.862170286612572, "type": "PROBABILITY_GROUP", "weight": 17}, {"lootBoxItems": [{"count": 0, "duration": 18, "endDate": "1975-01-12T00:00:00Z", "itemId": "jxlHrcqzwGgl1Syr", "itemSku": "FazP5g67zq7XCHkJ", "itemType": "zmy6DtxvO3nUiVM7"}, {"count": 95, "duration": 12, "endDate": "1994-01-10T00:00:00Z", "itemId": "lRZSLj5xwmP8QMJJ", "itemSku": "Jn2Lqw6aiKZbUJQ9", "itemType": "2BTViMMFji1Gmfmw"}, {"count": 16, "duration": 16, "endDate": "1991-08-09T00:00:00Z", "itemId": "25xGSRRZnwlbMGhe", "itemSku": "YVteLiiIKPjokv6H", "itemType": "MQOekLKHziTw5M3K"}], "name": "vzpUEcp3cp4fWJlL", "odds": 0.2848610682453173, "type": "PROBABILITY_GROUP", "weight": 97}, {"lootBoxItems": [{"count": 0, "duration": 87, "endDate": "1999-01-13T00:00:00Z", "itemId": "jDp3LzelXaUz9AKo", "itemSku": "zXBA29DPhYa8Ksjf", "itemType": "nk7HKSWULkEKqQ4T"}, {"count": 29, "duration": 96, "endDate": "1979-09-08T00:00:00Z", "itemId": "WjpaECYi7fBJaU43", "itemSku": "PzOITmqjrcuIH9i4", "itemType": "ICwRHM518oPa2glj"}, {"count": 35, "duration": 69, "endDate": "1971-01-12T00:00:00Z", "itemId": "tSimmKudqURkyz4E", "itemSku": "3EI1bSCYaa8JSNQd", "itemType": "hrnvuDGFiT4U6WQQ"}], "name": "wsTHCgTvrGllrctt", "odds": 0.5870466015823526, "type": "REWARD_GROUP", "weight": 100}], "rollFunction": "DEFAULT"}, "maxCount": 13, "maxCountPerUser": 9, "name": "zdUhB2YhKWidqRPQ", "optionBoxConfig": {"boxItems": [{"count": 84, "duration": 16, "endDate": "1987-07-19T00:00:00Z", "itemId": "mShNaSmVFsmFW74D", "itemSku": "kabvmYAT6qTg6ZOa", "itemType": "TNC1LAentTXWyBmb"}, {"count": 18, "duration": 71, "endDate": "1972-05-23T00:00:00Z", "itemId": "RRIKcTVvsormCNHH", "itemSku": "08vEf2WSsLchLBEl", "itemType": "ch9a9Knc6glMjwg8"}, {"count": 83, "duration": 31, "endDate": "1996-03-09T00:00:00Z", "itemId": "AT7d65hchXzG4ffz", "itemSku": "0lXBDbBGrYGleamV", "itemType": "gjm0xqJhfraXwzn0"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 31, "fixedTrialCycles": 81, "graceDays": 13}, "regionData": {"K5rhgy51k1e1gZ8Q": [{"currencyCode": "CEx41nhN2NMDXEHz", "currencyNamespace": "2uROYqy72xPhtIM8", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1991-04-02T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1989-09-30T00:00:00Z", "expireAt": "1987-07-04T00:00:00Z", "price": 83, "purchaseAt": "1995-09-11T00:00:00Z", "trialPrice": 33}, {"currencyCode": "3jlXYz8azHYdzaYe", "currencyNamespace": "7WjwoU21EdgoOvT1", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1987-12-04T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1982-09-30T00:00:00Z", "expireAt": "1990-06-10T00:00:00Z", "price": 51, "purchaseAt": "1995-06-07T00:00:00Z", "trialPrice": 20}, {"currencyCode": "NTBZTR5tZmaZGxrh", "currencyNamespace": "APoREvGmmbGW3Stt", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1997-07-20T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1971-04-13T00:00:00Z", "expireAt": "1997-10-27T00:00:00Z", "price": 20, "purchaseAt": "1983-12-21T00:00:00Z", "trialPrice": 44}], "EJXucN3IEt8vZSqh": [{"currencyCode": "6SjLdDyVf6irpvxp", "currencyNamespace": "CXFlM52jb80Nlw8i", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1982-02-10T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1973-06-23T00:00:00Z", "expireAt": "1982-05-05T00:00:00Z", "price": 99, "purchaseAt": "1985-11-07T00:00:00Z", "trialPrice": 91}, {"currencyCode": "6NCiqdleq2jCNZAK", "currencyNamespace": "jBlI9fsL6HEOiPcS", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1980-08-30T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1978-05-30T00:00:00Z", "expireAt": "1999-02-06T00:00:00Z", "price": 17, "purchaseAt": "1984-03-02T00:00:00Z", "trialPrice": 31}, {"currencyCode": "58Lf5RXgVFrsR55c", "currencyNamespace": "pOV3Qg6eU0Mc21ZZ", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1975-08-23T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1976-01-27T00:00:00Z", "expireAt": "1992-06-17T00:00:00Z", "price": 26, "purchaseAt": "1972-11-17T00:00:00Z", "trialPrice": 36}], "W9HWHfZ3bFTqXqdz": [{"currencyCode": "pP7Rk1qbFWhtwNaV", "currencyNamespace": "Cqf0vP284yQAbudR", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1985-12-12T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1987-10-02T00:00:00Z", "expireAt": "1983-02-23T00:00:00Z", "price": 37, "purchaseAt": "1992-04-18T00:00:00Z", "trialPrice": 43}, {"currencyCode": "UueYd49OFDlbdIrx", "currencyNamespace": "qxAtw8vLsYBHN6M7", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1972-07-17T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1975-05-15T00:00:00Z", "expireAt": "1984-10-26T00:00:00Z", "price": 99, "purchaseAt": "1989-09-13T00:00:00Z", "trialPrice": 88}, {"currencyCode": "BJG8BfuSzytkPE6m", "currencyNamespace": "w3Zv0zD14WsQt5oi", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1984-03-22T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1998-06-18T00:00:00Z", "expireAt": "1999-11-23T00:00:00Z", "price": 15, "purchaseAt": "1989-07-15T00:00:00Z", "trialPrice": 94}]}, "saleConfig": {"currencyCode": "5dqId3gXUWVAmaDj", "price": 36}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "iZsIfqeLfl0wacx4", "stackable": false, "status": "ACTIVE", "tags": ["stsfrFqHu6f54mL4", "hAfiqX3ThREYkndZ", "IrjnjuCHkx8hm217"], "targetCurrencyCode": "8A4NUDAdwt7cj6v5", "targetNamespace": "DLEk9RkumkrnY4Lk", "thumbnailUrl": "sFD2le3UGhQnnmMg", "useCount": 21}' \
    'iVQ6covYDuI4l1d9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'CreateItem' test.out

#- 113 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'YaLVuL1mLP65pId3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'GetItemByAppId' test.out

#- 114 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'QueryItems' test.out

#- 115 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'ListBasicItemsByFeatures' test.out

#- 116 GetItems
$PYTHON -m $MODULE 'platform-get-items' \
    '6F25c13PNqPn7XRl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetItems' test.out

#- 117 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'nqiWP9WWQMGmm0bi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'GetItemBySku' test.out

#- 118 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'VjE8A3EsOz8LDnxg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'GetLocaleItemBySku' test.out

#- 119 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'L0t7Qhdw4vmSxnJc' \
    'yaijSCsFa6ipRu1A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetEstimatedPrice' test.out

#- 120 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'aFjz0yLelzMzWiPz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'GetItemIdBySku' test.out

#- 121 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetBulkItemIdBySkus' test.out

#- 122 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'ugdDu6rxIv2ZMtZX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'BulkGetLocaleItems' test.out

#- 123 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetAvailablePredicateTypes' test.out

#- 124 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    '{"itemIds": ["5KZK53tX2oxmEDDg", "GBgPWHmOLBLlsw2p", "DJDLeJwzbVEEQ0D6"]}' \
    'RcLpRxXCStzvOyY1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'ValidateItemPurchaseCondition' test.out

#- 125 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'tNKAVWv5cGRm3WTx' \
    --body '{"changes": [{"itemIdentities": ["0oyOrycewrnLBAZl", "vnOJeNxZdT1fZJTu", "tZpZZn6egDbFDXW3"], "itemIdentityType": "ITEM_SKU", "regionData": {"42ccGURTnJUdR3MU": [{"currencyCode": "QnEeANANjqBdfMMU", "currencyNamespace": "89e6CIBWn2Q3kMtF", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1992-03-05T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1982-12-06T00:00:00Z", "discountedPrice": 9, "expireAt": "1985-09-19T00:00:00Z", "price": 55, "purchaseAt": "1998-07-06T00:00:00Z", "trialPrice": 57}, {"currencyCode": "M9oFcQUp7hrvKVNd", "currencyNamespace": "Grr2TTTiTt8oRoQR", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1984-06-15T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1997-07-30T00:00:00Z", "discountedPrice": 6, "expireAt": "1989-12-24T00:00:00Z", "price": 95, "purchaseAt": "1988-12-27T00:00:00Z", "trialPrice": 19}, {"currencyCode": "hHCpApGunPxVvWyQ", "currencyNamespace": "vciFGxJNOaveGzkT", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1971-03-04T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1971-04-17T00:00:00Z", "discountedPrice": 18, "expireAt": "1998-12-17T00:00:00Z", "price": 95, "purchaseAt": "1986-11-08T00:00:00Z", "trialPrice": 14}], "7BApA1YByiGkJR30": [{"currencyCode": "lAinKfKXqYE8GuKF", "currencyNamespace": "RwAkAyYY8hSNUTpz", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1975-03-17T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1972-11-16T00:00:00Z", "discountedPrice": 36, "expireAt": "1980-12-10T00:00:00Z", "price": 74, "purchaseAt": "1972-03-11T00:00:00Z", "trialPrice": 21}, {"currencyCode": "sMu1kQcGm0x3DmUa", "currencyNamespace": "hjPVDOEmwpWiJYxv", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1992-11-06T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1986-10-04T00:00:00Z", "discountedPrice": 48, "expireAt": "1988-06-18T00:00:00Z", "price": 36, "purchaseAt": "1973-08-05T00:00:00Z", "trialPrice": 30}, {"currencyCode": "uj8cqdtNaFO3ABy1", "currencyNamespace": "AeDryAFewcN6U8vR", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1973-11-17T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1971-01-14T00:00:00Z", "discountedPrice": 10, "expireAt": "1985-12-30T00:00:00Z", "price": 87, "purchaseAt": "1973-06-13T00:00:00Z", "trialPrice": 31}], "E0TKRHukM2BVMu41": [{"currencyCode": "8S3o2DKmAp8kt815", "currencyNamespace": "6L7Wl7UfG3PbsgYD", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1989-10-28T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1979-12-28T00:00:00Z", "discountedPrice": 91, "expireAt": "1979-01-23T00:00:00Z", "price": 58, "purchaseAt": "1991-12-28T00:00:00Z", "trialPrice": 2}, {"currencyCode": "nZaGzamJ8JZ6lV9z", "currencyNamespace": "psDX7CWEoHK3yLZS", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1983-06-18T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1984-09-24T00:00:00Z", "discountedPrice": 100, "expireAt": "1973-11-22T00:00:00Z", "price": 19, "purchaseAt": "1977-11-08T00:00:00Z", "trialPrice": 81}, {"currencyCode": "kVq9bAefBF8tiF7m", "currencyNamespace": "i3iOrnB83a6h6dNf", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1983-02-16T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1999-03-24T00:00:00Z", "discountedPrice": 71, "expireAt": "1997-11-15T00:00:00Z", "price": 38, "purchaseAt": "1972-12-07T00:00:00Z", "trialPrice": 76}]}}, {"itemIdentities": ["amt1NNvdmy7qa1St", "MbwcUsu3gJ0yHA6K", "DH87AmGMvChuhxZJ"], "itemIdentityType": "ITEM_SKU", "regionData": {"ygLo40eCb82j4Oha": [{"currencyCode": "AiWk4TKx1WRjiCok", "currencyNamespace": "zg7q7bMwxVAujRx0", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1983-05-05T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1981-04-05T00:00:00Z", "discountedPrice": 43, "expireAt": "1996-03-04T00:00:00Z", "price": 99, "purchaseAt": "1974-07-18T00:00:00Z", "trialPrice": 76}, {"currencyCode": "RMMRloXySTO9W3BE", "currencyNamespace": "I4eB0PHoEfIdFP0Q", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1979-05-18T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1977-01-31T00:00:00Z", "discountedPrice": 29, "expireAt": "1994-08-21T00:00:00Z", "price": 88, "purchaseAt": "1984-04-28T00:00:00Z", "trialPrice": 97}, {"currencyCode": "Nqw2oEptJsPYgvPn", "currencyNamespace": "AlN2mJeW1LQJ8A7N", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1973-08-07T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1977-05-23T00:00:00Z", "discountedPrice": 49, "expireAt": "1991-09-12T00:00:00Z", "price": 62, "purchaseAt": "1978-08-29T00:00:00Z", "trialPrice": 83}], "1MAfVZhADFM15pfl": [{"currencyCode": "1N2CNDu3DpGXJrOg", "currencyNamespace": "VnrneQPU35uuCoR3", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1978-03-20T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1974-05-20T00:00:00Z", "discountedPrice": 78, "expireAt": "1993-07-11T00:00:00Z", "price": 70, "purchaseAt": "1974-08-27T00:00:00Z", "trialPrice": 90}, {"currencyCode": "nmZxob6vepvgW3Vm", "currencyNamespace": "nz3WsgPS6R3Uev7b", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1980-07-23T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1976-12-10T00:00:00Z", "discountedPrice": 77, "expireAt": "1997-08-30T00:00:00Z", "price": 93, "purchaseAt": "1984-03-10T00:00:00Z", "trialPrice": 11}, {"currencyCode": "vHbcJX1mqJ4BtZCH", "currencyNamespace": "dlmOzx9DrwT5dJMD", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1991-12-10T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1980-05-26T00:00:00Z", "discountedPrice": 43, "expireAt": "1978-12-22T00:00:00Z", "price": 97, "purchaseAt": "1988-07-04T00:00:00Z", "trialPrice": 98}], "JFRFLnsSyJhQApjt": [{"currencyCode": "9Vvn7MyjPjMUoUC9", "currencyNamespace": "cUOeLu9OVb7aBijw", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1981-12-31T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1990-09-08T00:00:00Z", "discountedPrice": 89, "expireAt": "1986-10-19T00:00:00Z", "price": 74, "purchaseAt": "1991-09-24T00:00:00Z", "trialPrice": 59}, {"currencyCode": "qFJaGDiDmatCvCem", "currencyNamespace": "bJFNyIwxPt19hjyI", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1990-09-27T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1997-03-16T00:00:00Z", "discountedPrice": 69, "expireAt": "1989-12-17T00:00:00Z", "price": 14, "purchaseAt": "1995-11-23T00:00:00Z", "trialPrice": 55}, {"currencyCode": "lHrqyBElA4m1Ywb6", "currencyNamespace": "nMhhSCXGzZMdNwUY", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1990-09-13T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1996-04-13T00:00:00Z", "discountedPrice": 66, "expireAt": "1991-06-08T00:00:00Z", "price": 78, "purchaseAt": "1982-07-13T00:00:00Z", "trialPrice": 18}]}}, {"itemIdentities": ["AuvUND3dJ4hbxnIu", "xtrWKvmz0RzwVRhR", "mllqqWYgDWbrtw6q"], "itemIdentityType": "ITEM_ID", "regionData": {"Y0RiyzWJZAZHklGm": [{"currencyCode": "HH8I1l3xgoVyEemJ", "currencyNamespace": "DvokY7UUVCHGWcVr", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1997-08-15T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1981-02-26T00:00:00Z", "discountedPrice": 4, "expireAt": "1988-10-18T00:00:00Z", "price": 14, "purchaseAt": "1977-10-16T00:00:00Z", "trialPrice": 73}, {"currencyCode": "k597xUXpiOLFQFxY", "currencyNamespace": "4AHLzQnClUtkXb0S", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1990-10-28T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1979-03-11T00:00:00Z", "discountedPrice": 47, "expireAt": "1976-06-07T00:00:00Z", "price": 6, "purchaseAt": "1974-01-14T00:00:00Z", "trialPrice": 77}, {"currencyCode": "DNBB9LNziCP1xQyg", "currencyNamespace": "VqAioKka1tx56Awx", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1989-09-30T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1977-08-21T00:00:00Z", "discountedPrice": 65, "expireAt": "1991-04-04T00:00:00Z", "price": 30, "purchaseAt": "1972-09-22T00:00:00Z", "trialPrice": 31}], "XAvFitLhI0sqjfua": [{"currencyCode": "9x08SJmn2gM2q6wu", "currencyNamespace": "aHlnk9AFkbwVa7DC", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1987-02-20T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1992-06-12T00:00:00Z", "discountedPrice": 63, "expireAt": "1977-09-03T00:00:00Z", "price": 9, "purchaseAt": "1986-06-13T00:00:00Z", "trialPrice": 67}, {"currencyCode": "HxwEbPLfnjlMfDJx", "currencyNamespace": "P4S8TNhXBTiwS2sB", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1972-04-26T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1979-03-02T00:00:00Z", "discountedPrice": 10, "expireAt": "1990-04-26T00:00:00Z", "price": 73, "purchaseAt": "1990-05-22T00:00:00Z", "trialPrice": 85}, {"currencyCode": "v1itpBPRbtgUMFAc", "currencyNamespace": "xhrY80cxjAXFOLYQ", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1996-07-14T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1988-07-23T00:00:00Z", "discountedPrice": 36, "expireAt": "1978-05-16T00:00:00Z", "price": 71, "purchaseAt": "1974-02-17T00:00:00Z", "trialPrice": 80}], "dhzarU0VtmwcYLuV": [{"currencyCode": "xqvaL6vdJr0yQVV1", "currencyNamespace": "r0LACcKuAd2SElOn", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1982-04-20T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1983-09-21T00:00:00Z", "discountedPrice": 69, "expireAt": "1976-01-13T00:00:00Z", "price": 79, "purchaseAt": "1987-09-09T00:00:00Z", "trialPrice": 4}, {"currencyCode": "GgAqoQkgiht0lsg1", "currencyNamespace": "U1DExMK4z32P13aQ", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1987-10-01T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1991-06-02T00:00:00Z", "discountedPrice": 95, "expireAt": "1985-08-25T00:00:00Z", "price": 32, "purchaseAt": "1983-06-27T00:00:00Z", "trialPrice": 7}, {"currencyCode": "bpyJTgwl3ZOMpzNQ", "currencyNamespace": "DtQNlDFMazvRX5v3", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1978-01-15T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1988-04-16T00:00:00Z", "discountedPrice": 44, "expireAt": "1971-07-27T00:00:00Z", "price": 24, "purchaseAt": "1972-09-23T00:00:00Z", "trialPrice": 1}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'BulkUpdateRegionData' test.out

#- 126 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    '8WEklkFFkJPn2yom' \
    'TQth1iJOyDZJCwuf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'SearchItems' test.out

#- 127 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'QueryUncategorizedItems' test.out

#- 128 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'YAURyXVoJ9qEel6x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetItem' test.out

#- 129 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    '{"appId": "5O5otpujfw64GJDW", "appType": "DLC", "baseAppId": "TiXwPjN8E3wXz4Q1", "boothName": "L3hAG9xOOi4DVUYo", "categoryPath": "37I8Mgh1DJARpi5K", "clazz": "zpbDPfXdGvodrl6U", "displayOrder": 84, "entitlementType": "DURABLE", "ext": {"wYZJq3OJhzlgtX87": {}, "XuWOIpQwptcvrooh": {}, "Lb6q3F16PO9YdwqE": {}}, "features": ["OyrgsLZV9arTxBgn", "szRnwVX2rvVr6DpL", "OqH9lyv8wx2JosSH"], "flexible": false, "images": [{"as": "LiHZfwcmqpHRQcJz", "caption": "so1tgoqsyjuA8sqe", "height": 53, "imageUrl": "bV9I8yo0u2hT9UYb", "smallImageUrl": "m2BWjzlqIA8csXOp", "width": 61}, {"as": "l4tChuDibBIH1dyZ", "caption": "PHtYHKqpl1Xk1CdF", "height": 45, "imageUrl": "nPDyKkSYIIOqTjad", "smallImageUrl": "q7tSbuLamxL9Ltl0", "width": 21}, {"as": "aWOjRinmMTxEz6bd", "caption": "DFDqRMyTZOXYRC3g", "height": 70, "imageUrl": "BHRe7JBlzH9CrXX7", "smallImageUrl": "cBfnjlfFFTD6KSEe", "width": 55}], "inventoryConfig": {"customAttributes": {"2x00SvR2yNPms1Dd": {}, "UL5bc6QMB9TtHXqe": {}, "aYlaYm2XGN51wxYT": {}}, "serverCustomAttributes": {"CHYaW7BAFZnpxmzs": {}, "0AQYJnB9w4rkop7L": {}, "L7Yqjh4lgGGsrJv0": {}}, "slotUsed": 63}, "itemIds": ["3M9oI3ymYms9fuih", "2WMLldoxYLZHiFEo", "5sDrk8BZ0jnV4jAA"], "itemQty": {"xGZ794ngDQya3dvy": 20, "L7HL2nKoPXxLMtU6": 15, "mYl0sA87gQx9kL8a": 20}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"EpNGaoJWjZSpZNjd": {"description": "KHqDX1jGg2X6VHZO", "localExt": {"ulL5KfkSA0amHSK4": {}, "Sz7fbw7cgHHvIEPv": {}, "qjKVvPP5x3gf1HnO": {}}, "longDescription": "zyuw55KAICc0N5Aq", "title": "naH49QFksDAGUgVc"}, "Ydzd3mUKKxi2anNF": {"description": "pYXwE37QpBIY8LEE", "localExt": {"tCmsemV8gAHQaitM": {}, "hleY83sh3B07O0XQ": {}, "WCZXaPi8oY6VkZP5": {}}, "longDescription": "7PyBLX7knj7y5qEO", "title": "p7hzPCxvetFhAgAk"}, "kEhd3Y16uyKwJ713": {"description": "r4F9WC342Uggyr64", "localExt": {"isEfxbFEabmT6Mmg": {}, "ebEkQ73QcKQldxIq": {}, "Mgf2PaNJqIMDWJUW": {}}, "longDescription": "3I4SKjp0NOc5dWAE", "title": "S7S7wBqBe4F2z2u3"}}, "lootBoxConfig": {"rewardCount": 45, "rewards": [{"lootBoxItems": [{"count": 69, "duration": 47, "endDate": "1983-03-04T00:00:00Z", "itemId": "BB3KkzIBx4VA9Zxb", "itemSku": "KQDqG7UJEMeseC0h", "itemType": "noI1dph0xgVXvWuS"}, {"count": 74, "duration": 14, "endDate": "1976-04-26T00:00:00Z", "itemId": "23JxAI3kOXwHnS2V", "itemSku": "OESYx49M1JdtImLI", "itemType": "5eTuHqCNtVlNaGzo"}, {"count": 34, "duration": 16, "endDate": "1979-08-05T00:00:00Z", "itemId": "QEdyLRX3etMjv8js", "itemSku": "kCHfqF5uo9BT2QqC", "itemType": "xWZGjDRc27d9a3Aa"}], "name": "ZO1VcAqwHJEyMrwN", "odds": 0.5619302985604823, "type": "REWARD_GROUP", "weight": 78}, {"lootBoxItems": [{"count": 54, "duration": 52, "endDate": "1989-09-29T00:00:00Z", "itemId": "Ck1fizRJy5JoIlHj", "itemSku": "TZ4mDmXZIBTi05ak", "itemType": "xBYozWzUW4RDVM8Y"}, {"count": 84, "duration": 59, "endDate": "1972-02-14T00:00:00Z", "itemId": "XDH8RZqUjELC82uP", "itemSku": "1nMUDAKQEkOvO52V", "itemType": "TPFFuLWL0HQkTuy4"}, {"count": 12, "duration": 82, "endDate": "1995-08-24T00:00:00Z", "itemId": "6Ejumf9ltGde7x4l", "itemSku": "uTsEk9TNqSiFJyMB", "itemType": "yoRKUrvfixr7UFzL"}], "name": "zGaWok215MnSNTPM", "odds": 0.7052168119860021, "type": "PROBABILITY_GROUP", "weight": 81}, {"lootBoxItems": [{"count": 11, "duration": 37, "endDate": "1991-08-21T00:00:00Z", "itemId": "W3RHxioyNedQ1E2l", "itemSku": "Qg6rSZj7yw7aPU0D", "itemType": "qhD5agSwSs0ORF2p"}, {"count": 78, "duration": 73, "endDate": "1992-04-24T00:00:00Z", "itemId": "CqPGUmF8pQCrEqds", "itemSku": "tmoPJurb0FVZK7so", "itemType": "nuzTm1gseYPsB00G"}, {"count": 64, "duration": 26, "endDate": "1996-04-20T00:00:00Z", "itemId": "EnOA6gFO3zfSvvmL", "itemSku": "gxlU5MdUdF7gHdIf", "itemType": "6eMd0iVUmBrFwFIE"}], "name": "Sxo8uFqKtoZiVPtw", "odds": 0.4986943873077997, "type": "REWARD", "weight": 52}], "rollFunction": "CUSTOM"}, "maxCount": 16, "maxCountPerUser": 4, "name": "CZiPRCujrja26Ygd", "optionBoxConfig": {"boxItems": [{"count": 94, "duration": 54, "endDate": "1992-11-27T00:00:00Z", "itemId": "55BielNg6kfRgfnB", "itemSku": "T7OdjPnywuIoLpkJ", "itemType": "EPfnaESuOM4olKFV"}, {"count": 37, "duration": 8, "endDate": "1993-10-19T00:00:00Z", "itemId": "fgNQjKhrrrStCg99", "itemSku": "ejNACAFAJlcWkS5j", "itemType": "nhMZsQ8CVsHXHYBx"}, {"count": 96, "duration": 75, "endDate": "1976-03-24T00:00:00Z", "itemId": "RoYFks2ULHooisOH", "itemSku": "hyiZyNxeNJcBIePM", "itemType": "wBjK11IFRybWjjYk"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 63, "fixedTrialCycles": 69, "graceDays": 65}, "regionData": {"CnQ2BiPScmfoBQ1V": [{"currencyCode": "O5Trcu36LS6o87DK", "currencyNamespace": "PLLTcjU87C2CAKbi", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1981-12-06T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1983-07-11T00:00:00Z", "expireAt": "1984-12-27T00:00:00Z", "price": 44, "purchaseAt": "1976-06-23T00:00:00Z", "trialPrice": 53}, {"currencyCode": "44D4d5jTjzZ8KpdO", "currencyNamespace": "xrQ8r5te5FkJ58wQ", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1980-08-03T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1971-11-23T00:00:00Z", "expireAt": "1980-01-31T00:00:00Z", "price": 91, "purchaseAt": "1976-08-21T00:00:00Z", "trialPrice": 13}, {"currencyCode": "9MEhGrQVQ3yKCwV9", "currencyNamespace": "chX3evM1seGH9ZwZ", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1990-12-10T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1977-10-21T00:00:00Z", "expireAt": "1991-12-08T00:00:00Z", "price": 41, "purchaseAt": "1971-12-26T00:00:00Z", "trialPrice": 45}], "een3aYjhar5GRzOA": [{"currencyCode": "fOXbaEHFX0sySxhk", "currencyNamespace": "hCpV5A2ZLHG60X6L", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1996-04-19T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1993-06-23T00:00:00Z", "expireAt": "1999-05-25T00:00:00Z", "price": 30, "purchaseAt": "1995-03-04T00:00:00Z", "trialPrice": 68}, {"currencyCode": "csvoF2EgsoZSKOzQ", "currencyNamespace": "IDAf44vyeNIfF5Ri", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1972-07-22T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1972-11-02T00:00:00Z", "expireAt": "1981-06-27T00:00:00Z", "price": 39, "purchaseAt": "1996-08-06T00:00:00Z", "trialPrice": 64}, {"currencyCode": "FDNIc86TKj3grgVd", "currencyNamespace": "qSpg9xpXCh79kxpJ", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1994-01-25T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1983-12-31T00:00:00Z", "expireAt": "1999-09-18T00:00:00Z", "price": 92, "purchaseAt": "1977-07-16T00:00:00Z", "trialPrice": 91}], "7lPUWhfLYtrkZ2V3": [{"currencyCode": "jzXzilslRzP96yJ7", "currencyNamespace": "RbX8fkG3hcRbcSuS", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1972-10-12T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1999-03-26T00:00:00Z", "expireAt": "1982-10-11T00:00:00Z", "price": 53, "purchaseAt": "1975-12-13T00:00:00Z", "trialPrice": 53}, {"currencyCode": "Jjmhy4f9F9usH1By", "currencyNamespace": "GD8DDRW0KNwlKcve", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1980-11-30T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1988-04-20T00:00:00Z", "expireAt": "1997-06-07T00:00:00Z", "price": 38, "purchaseAt": "1971-05-18T00:00:00Z", "trialPrice": 100}, {"currencyCode": "rUKREAt8zG7Mwy6q", "currencyNamespace": "t1KRlDGxhO1YbPoW", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1988-06-05T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1997-03-04T00:00:00Z", "expireAt": "1984-04-12T00:00:00Z", "price": 49, "purchaseAt": "1983-02-26T00:00:00Z", "trialPrice": 48}]}, "saleConfig": {"currencyCode": "R8RWtFcnNAoxNPXP", "price": 24}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "6kWXBTTodpLcEI0m", "stackable": true, "status": "ACTIVE", "tags": ["mA6nDD3EFfeJdwsk", "WKlSwI38LyDyLTQx", "eVjYAe1CNRQX4T37"], "targetCurrencyCode": "n6lgMV9tMXN2kDg7", "targetNamespace": "INFTJO4FUT152zR0", "thumbnailUrl": "PBTEvM3TgMsAS5t3", "useCount": 93}' \
    'hOyL8KXBfLq1zWLm' \
    'tFhefMqfbE0DZBwK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'UpdateItem' test.out

#- 130 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    '4s4YGhc9qjsGzedP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'DeleteItem' test.out

#- 131 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '{"count": 80, "orderNo": "fzatv4JzfVNAJbSL"}' \
    'Bzqs2u1EntDzkQLg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AcquireItem' test.out

#- 132 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'WQHXc3bRYKbJGFP8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetApp' test.out

#- 133 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '{"carousel": [{"alt": "HZNLJ7aPbRMRrbKj", "previewUrl": "oifZAWt13ISgdwAu", "thumbnailUrl": "m4b3t1Ph8xHfEAly", "type": "image", "url": "1ScAQ7gSO3GHo6ES", "videoSource": "vimeo"}, {"alt": "JsDilWhSc6XIxh1H", "previewUrl": "qBg5FhY2vclqnTby", "thumbnailUrl": "Z7fYvmiZxdNpmibP", "type": "video", "url": "IE1CQFSQS3RD8Q6Y", "videoSource": "generic"}, {"alt": "UihFznsLFP3013gs", "previewUrl": "IOArelbYwYTtGsRN", "thumbnailUrl": "ij1bUAIrKYw673Jv", "type": "video", "url": "TuIwxdK6goe9uJ8P", "videoSource": "vimeo"}], "developer": "rbuq9cXar8FKACMf", "forumUrl": "aESKKo0RBtKDj9Pg", "genres": ["FreeToPlay", "FreeToPlay", "Action"], "localizations": {"ODMMswus0ykKyOTF": {"announcement": "H9npo1k2W89U6PA5", "slogan": "Byr1VJKsNpin9ZAg"}, "5mDVmepTMiQqOA7W": {"announcement": "iIi8k4T7A6suz0JP", "slogan": "LhBV8H4Rs8p9AflD"}, "jkRQna4afJC9mgf0": {"announcement": "blFr8NUmSdS49Cyb", "slogan": "TerX6wW5HLYxM5DN"}}, "platformRequirements": {"6DJmnjBd7q6U3V1i": [{"additionals": "7ip9ibQlReTecqcb", "directXVersion": "ggfeYn1FnvTuTrRI", "diskSpace": "8Z87U0Y5R6IUWUGW", "graphics": "DcgSJ29TqsnbtXNB", "label": "eq2uoLHWsw0m7ZY4", "osVersion": "6mjkOA84jougrIsa", "processor": "MHmzafNaxCNIzvOh", "ram": "61wCAYs9Qae7TEBn", "soundCard": "zFuxHzrR3PiHyAFf"}, {"additionals": "iwIi9bI2X8C6xnSI", "directXVersion": "mJqwyGzE1BMLJmTv", "diskSpace": "UJIV0W2K8alZaxyE", "graphics": "ak02r4dRvrKr07n7", "label": "2icTrg8RyI3bDBIK", "osVersion": "GiLSqDVnEtbqHnY6", "processor": "D1Z2oKGmRbhR6rnS", "ram": "jFQf699gOqEWjr9T", "soundCard": "9UhsGYJ3NLSVOdqF"}, {"additionals": "xY9j8P8IFwNKh0Zn", "directXVersion": "i7P6ZfRFkQolDEty", "diskSpace": "xyMGw4ZEIMYFaIEr", "graphics": "69zjnPKVLZ59QuwB", "label": "bW2xX96TmFiMrqZa", "osVersion": "ZSR4SAMIG5DRP307", "processor": "xNIxMniv6VDtGhPQ", "ram": "u5IgTlvO4wr8D7AP", "soundCard": "HhihwdNSBKpqJ8V1"}], "kQHisGldXgqa99UN": [{"additionals": "yHIlnrLOesUoAwwC", "directXVersion": "O2c7aEAHcpdx91Ua", "diskSpace": "bvNvRaUrUqTcFsGX", "graphics": "xjR7vTeNdfPVWmEd", "label": "VFXX02sJsXg7AKOu", "osVersion": "2Xk8T0sqdmD20rol", "processor": "fU1yEokwoBSfRPMd", "ram": "PXru40VmHvpaJ6EF", "soundCard": "G9wLOlD7N2GNQs0I"}, {"additionals": "gMAbRc0I82pjV4UB", "directXVersion": "b0pZrHFxE9EAcMe8", "diskSpace": "RHXnsxazB0s0OGtk", "graphics": "rGuIEzLqOEqdEcHb", "label": "FrNLqqyBzPWvDsw3", "osVersion": "y3noSTunCZN39o0v", "processor": "ZqaSrHfwrqqHXHpP", "ram": "nC56p62cEYBMPDDN", "soundCard": "vuy4MWHW8YW1euC0"}, {"additionals": "ubVpUB9WTnYHGmKe", "directXVersion": "MnGn3hXTX65W9y7j", "diskSpace": "KRgCFKj2fpaEDgvM", "graphics": "XedU0CtjH3UPJy3C", "label": "nYG5ypxMPXQb9Aa9", "osVersion": "QMoQgjOf0byuj8Ux", "processor": "ptb2o5jdTreVKh6f", "ram": "lE9FaNdFDCH0BMCu", "soundCard": "fX5Ln9YKDyW9wNSX"}], "GvHGabfCgecNknWo": [{"additionals": "EbRoZQ4VuKeTQQXD", "directXVersion": "NtjgypGgBtsGOxHf", "diskSpace": "W3WBHUGCPEvc97uD", "graphics": "KDBhngmXpNaXSgg2", "label": "yJzaaUc8p87eTTm0", "osVersion": "92rucPAhnaYqSLkr", "processor": "3tlvhwbpOwvWyVZb", "ram": "XXgvJKjvhZn4m8rg", "soundCard": "QUG1gDFutWedPpbB"}, {"additionals": "wcmRSOW5MFhNeBer", "directXVersion": "cY9DbSYPsKMU8ah8", "diskSpace": "NJxYKZWUVW9NyUUd", "graphics": "krKCCEaIUUwPgILF", "label": "Eno141RnaYhr2WJy", "osVersion": "qCvAfWi7mDpF9Uxm", "processor": "jutqgr8019aVHHRL", "ram": "K0fv936lSL3gAK6Q", "soundCard": "qFlWlAR1frDQIVwm"}, {"additionals": "efiYRytVWtyJI7uj", "directXVersion": "eL0gjx8jAfmTLOwi", "diskSpace": "BSSe1E9DWrTYLcDO", "graphics": "MWy0wefl1KKxNl1B", "label": "u8GE15JzEvFlzpDn", "osVersion": "YuSqynNlJACpHVnd", "processor": "rAR7z9J0bNuepqWs", "ram": "DLjzow7MvJGnWbcV", "soundCard": "qeQS68NcKrOSqAvu"}]}, "platforms": ["IOS", "Android", "Linux"], "players": ["Single", "CrossPlatformMulti", "Single"], "primaryGenre": "Racing", "publisher": "q4B0c6hcP5jLY1Kx", "releaseDate": "1971-08-03T00:00:00Z", "websiteUrl": "FbyzOePaXR3ub0i4"}' \
    'catfNOlhlYHQh4Vg' \
    'YhBaVDBRlLxoAzlj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'UpdateApp' test.out

#- 134 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'rhdaWNQoeso9mKjT' \
    'RboTLjWe4LfJee5P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'DisableItem' test.out

#- 135 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'I5dFv5buhIZ4eMnC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'GetItemDynamicData' test.out

#- 136 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'DQFCYcyYCi2g6s9F' \
    'QKCfcu923YpsdjtV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'EnableItem' test.out

#- 137 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'RUIv3uIM3CoS6Jah' \
    'cK1Pr6BT8bcW21yK' \
    'VRUAUf5lebfPenWU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'FeatureItem' test.out

#- 138 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'EBZC8keF5vI1QiMb' \
    '8GRzCETFWSfJvAnp' \
    'vMcDHwA9mw8ujZZQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'DefeatureItem' test.out

#- 139 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'UNi4NDzBP7mmM4Zr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'GetLocaleItem' test.out

#- 140 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 96, "code": "amc3OX9fjEzscuFP", "comparison": "isLessThan", "name": "L1og70bKW5QYtGAV", "predicateType": "StatisticCodePredicate", "value": "vqyIVadq2JITEaFY", "values": ["CmQEyL35Lh1cCBgg", "BbL13OgHZysyny09", "2D4HUqIhXDNwseD5"]}, {"anyOf": 6, "code": "axRFeMgIQdJNm52k", "comparison": "isLessThan", "name": "q5MjU2f4833bcUoB", "predicateType": "EntitlementPredicate", "value": "LoSkvb8lbFBtF0IL", "values": ["nxdtDeCtbUIxxTu6", "SQF7Bt4rvdiz3ZJf", "WFdytTpAVx0pd4pu"]}, {"anyOf": 80, "code": "NhGU3RmYw0EwPDL8", "comparison": "includes", "name": "8ItD6AFXbQvGbKVl", "predicateType": "StatisticCodePredicate", "value": "4zKaJuBk11UoFtSC", "values": ["OXAylHS3htDNYuRa", "6jU8OLKdFhRNswdE", "gGhhAxzoBKOqmwgA"]}]}, {"operator": "and", "predicates": [{"anyOf": 7, "code": "L1i3SL7JlQ0WmwgE", "comparison": "isGreaterThan", "name": "y9cxgDaEUFiMTIV4", "predicateType": "SeasonTierPredicate", "value": "eEWrqYB9hLG74YMs", "values": ["FXqnFzR6C20jVL8h", "1JCrpnpPPUyyCN4M", "eTq0Wmf80d7wzxTt"]}, {"anyOf": 4, "code": "MUlqj2djHHFFRxJP", "comparison": "isLessThan", "name": "MLBfGHJseAA3xQG5", "predicateType": "StatisticCodePredicate", "value": "wZUe0kRnfBio030W", "values": ["uQPo1Bi27Mr8QiSB", "DtRFRReZoX0eYwpj", "uE8WdxjHSrIcoNi9"]}, {"anyOf": 81, "code": "yxoQHX7XexjvW4rZ", "comparison": "excludes", "name": "Ra4Wlon8ZzeHgabb", "predicateType": "SeasonPassPredicate", "value": "4kVmTj683Ybw4TKy", "values": ["tfbgUqbLQ3WTZF8g", "PTxRuzNfmvBcfNBF", "iIw9mkjC9qXOVUNH"]}]}, {"operator": "or", "predicates": [{"anyOf": 77, "code": "MTygZRBzJUpXr5Zk", "comparison": "isLessThan", "name": "HsWipvZANpRXHVqJ", "predicateType": "EntitlementPredicate", "value": "Zh8S62GO32C73Rnf", "values": ["mpLmiuZGk2Gg0Um3", "MxGfQHmg4I1PJybU", "IDxg4DkmnJtxZgIU"]}, {"anyOf": 71, "code": "6hECr4zqhZ9lpllw", "comparison": "excludes", "name": "FyGp6XhgI2SuEyr4", "predicateType": "EntitlementPredicate", "value": "HO0dKNHWBFM13F37", "values": ["X9HTu6c4mMUdJoKm", "yaU7qTgHxGQ4Dm2Y", "oSLUIzzQsIU3IZf9"]}, {"anyOf": 32, "code": "h6ERWyedt6rkPxW7", "comparison": "isNot", "name": "ya2ruQcikSHwHPfy", "predicateType": "SeasonTierPredicate", "value": "UhMXX7FiB3X634iu", "values": ["F8pqhqsqRF4kqMbz", "4sxPUl2WbQNFNB2I", "E43MBCGNyjqnDuWD"]}]}]}}' \
    '1qiZzXQxSDgH9L20' \
    'T6fVxvK30nHMYxf8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateItemPurchaseCondition' test.out

#- 141 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '{"orderNo": "xOR1DEgYR3iOynLL"}' \
    'tqSmaHvUExz8o7Tw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'ReturnItem' test.out

#- 142 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'QueryKeyGroups' test.out

#- 143 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    '{"description": "cWL7fNlyGuj0EkM7", "name": "M8G78KZj2jWyKAzX", "status": "INACTIVE", "tags": ["9kO0rmonOpgtONmM", "vrDH4IXc6tn8XayB", "I734jCTSnRqHTWC4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'CreateKeyGroup' test.out

#- 144 GetKeyGroupByBoothName
eval_tap 0 144 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 145 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'NCbltixkXwXO0Xem' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'GetKeyGroup' test.out

#- 146 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '{"description": "KHsUC5w7fmzF80bb", "name": "GhU1pjVwMsLdJrt5", "status": "ACTIVE", "tags": ["nAIz4y9yy462Mnwc", "hld3LWFhC1kBUvsU", "cnOXhewthszMsYOE"]}' \
    'mQiF1OsXfJG3psjI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateKeyGroup' test.out

#- 147 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'BzjaFmN0MInvVPAP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'GetKeyGroupDynamic' test.out

#- 148 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'EovHVVguusvVUxkC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'ListKeys' test.out

#- 149 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'G4IGPYHaRvV3JGi5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'UploadKeys' test.out

#- 150 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'QueryOrders' test.out

#- 151 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'GetOrderStatistics' test.out

#- 152 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'l0G5NBtXVTXK1Jdo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetOrder' test.out

#- 153 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    '{"description": "ClQQGLneKl3iXOvS"}' \
    'GgZzuoTiOgT4AtBZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'RefundOrder' test.out

#- 154 GetPaymentCallbackConfig
eval_tap 0 154 'GetPaymentCallbackConfig # SKIP deprecated' test.out

#- 155 UpdatePaymentCallbackConfig
eval_tap 0 155 'UpdatePaymentCallbackConfig # SKIP deprecated' test.out

#- 156 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetPaymentMerchantConfig' test.out

#- 157 UpdatePaymentDomainWhitelistConfig
$PYTHON -m $MODULE 'platform-update-payment-domain-whitelist-config' \
    '{"domains": ["JsMBPDcUuWC1NgHa", "xQlxs2MPGkLeY5Ce", "dGPB0iJF96NG7vOD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'UpdatePaymentDomainWhitelistConfig' test.out

#- 158 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'QueryPaymentNotifications' test.out

#- 159 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'QueryPaymentOrders' test.out

#- 160 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    '{"currencyCode": "PmfnV8dOr38jFYjF", "currencyNamespace": "RDj47EZTCCwz8yaw", "customParameters": {"NImZdPzt9koNSL3v": {}, "qGgJOWkI0sHphIU3": {}, "KaP7nk9iEaqudy3a": {}}, "description": "Yo02pzHannSLeEYv", "extOrderNo": "uciynwWb01HLrp6O", "extUserId": "W9Y7FIIEJMm4Kizs", "itemType": "SUBSCRIPTION", "language": "gBJZ-qJiN", "metadata": {"mVzOJYebI5Egye4C": "kNIFSC7IcfdqOCaq", "FaXYK6AzVrp3wn2B": "lIfmyT5owJEG08jO", "7JMvkh08NQQhBIt2": "H2PvWFnJMiszwcYW"}, "notifyUrl": "9Jy4n5q4WgYvJS0x", "omitNotification": true, "platform": "DyxqSYeCl4gEZgIM", "price": 61, "recurringPaymentOrderNo": "zc5JVuc5LBd3uXt6", "region": "TP1AE4lqnIwLN2lG", "returnUrl": "YqQSzIUdIqmVvmcA", "sandbox": true, "sku": "9gwMgZPR9Q5Lstog", "subscriptionId": "0ehjEmcjJzkf7rNu", "targetNamespace": "3ZARHXZ5yuJsfxI3", "targetUserId": "zuYwCYQw4Rr3lmey", "title": "ijwD3pYZEoKfBV4C"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'CreatePaymentOrderByDedicated' test.out

#- 161 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'X15snBgmflygDW6a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'ListExtOrderNoByExtTxId' test.out

#- 162 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'b0RoZeMIFYmEraqG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetPaymentOrder' test.out

#- 163 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '{"extTxId": "POCMPGtRg0HGzSGs", "paymentMethod": "8nBUQVBsF03D5vkA", "paymentProvider": "CHECKOUT"}' \
    's9WPwxzICEykNJeE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'ChargePaymentOrder' test.out

#- 164 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '{"description": "n6eiosoCvrGeDygO"}' \
    'ZbA1UGLox4eJuvLm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'RefundPaymentOrderByDedicated' test.out

#- 165 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '{"amount": 30, "currencyCode": "6wSqwns2XJfUl3ui", "notifyType": "REFUND", "paymentProvider": "WXPAY", "salesTax": 63, "vat": 5}' \
    '03Jk5kBnuo4jR1HY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'SimulatePaymentOrderNotification' test.out

#- 166 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'LJjnydxAGgqH3ytk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'GetPaymentOrderChargeStatus' test.out

#- 167 GetPsnEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-psn-entitlement-ownership' \
    '{"accessToken": "roZ2tfFjNF99VixS", "serviceLabel": 20}' \
    'Es3u4km3iKiNLRNa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'GetPsnEntitlementOwnership' test.out

#- 168 GetXboxEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-xbox-entitlement-ownership' \
    '{"delegationToken": "01SihgZby9mBdGrJ", "sandboxId": "Y5J0e9jWcVTCNxjd"}' \
    'v8GxhJoB4lAkbm1A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'GetXboxEntitlementOwnership' test.out

#- 169 GetPlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-get-platform-entitlement-config' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetPlatformEntitlementConfig' test.out

#- 170 UpdatePlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-update-platform-entitlement-config' \
    '{"allowedPlatformOrigins": ["GooglePlay", "IOS", "Nintendo"]}' \
    'GooglePlay' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'UpdatePlatformEntitlementConfig' test.out

#- 171 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Other' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'GetPlatformWalletConfig' test.out

#- 172 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    '{"allowedBalanceOrigins": ["Steam", "Twitch", "Twitch"]}' \
    'Steam' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'UpdatePlatformWalletConfig' test.out

#- 173 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'IOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'ResetPlatformWalletConfig' test.out

#- 174 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'GetRevocationConfig' test.out

#- 175 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'UpdateRevocationConfig' test.out

#- 176 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'DeleteRevocationConfig' test.out

#- 177 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'QueryRevocationHistories' test.out

#- 178 GetRevocationPluginConfig
$PYTHON -m $MODULE 'platform-get-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'GetRevocationPluginConfig' test.out

#- 179 UpdateRevocationPluginConfig
$PYTHON -m $MODULE 'platform-update-revocation-plugin-config' \
    '{"appConfig": {"appName": "Op8UlDmFYNBSDEgs"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "Mikj8NQNDlhAhwAc"}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'UpdateRevocationPluginConfig' test.out

#- 180 DeleteRevocationPluginConfig
$PYTHON -m $MODULE 'platform-delete-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'DeleteRevocationPluginConfig' test.out

#- 181 UploadRevocationPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'UploadRevocationPluginConfigCert' test.out

#- 182 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    '{"description": "mPZRllengCdfKGCB", "eventTopic": "ZMAbJnqDKuBGWmZt", "maxAwarded": 18, "maxAwardedPerUser": 82, "namespaceExpression": "7VJ7O7dNzDBzVmGS", "rewardCode": "holl8uD1hpBtpd4e", "rewardConditions": [{"condition": "Lc1PpHJmrL7AZ1MK", "conditionName": "cHBB1AfySUMZOWht", "eventName": "QEriyOLkuGKVQWNO", "rewardItems": [{"duration": 96, "endDate": "1987-08-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "h5VXa79702d31zPH", "quantity": 12, "sku": "CNhF9RCyMn5VX87u"}, {"duration": 92, "endDate": "1971-10-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "sq4hLUkLLTNMnmlF", "quantity": 52, "sku": "jrz4HAGIJOSxoJdI"}, {"duration": 71, "endDate": "1976-07-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "0J2JeqNTxshoZJns", "quantity": 55, "sku": "7wqr7wwPCgByCnlj"}]}, {"condition": "J7CYvapWO5JGco1t", "conditionName": "RG98viuYwQTHKPcc", "eventName": "8Z82WtwcihC87O1U", "rewardItems": [{"duration": 22, "endDate": "1981-03-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "tiAFqIsHod9kt3xk", "quantity": 89, "sku": "56dnYHk1iLtAXL33"}, {"duration": 99, "endDate": "1974-08-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "BnIHoRNWTVvIN7c2", "quantity": 41, "sku": "F6HtcJbqjCZkEvdW"}, {"duration": 82, "endDate": "1977-03-31T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "sva1jk545vt1Vu7d", "quantity": 38, "sku": "JF9lLvPS5jJ58vaR"}]}, {"condition": "aaxVQeMUb1kvSj6j", "conditionName": "cjlxGsLgfrhBTH1Q", "eventName": "V91XmB5Z6en6c5d6", "rewardItems": [{"duration": 10, "endDate": "1995-08-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CaXsZoyeqN5ouEcX", "quantity": 90, "sku": "2i1n2WJVJy6yBPVm"}, {"duration": 31, "endDate": "1996-01-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "96sJUnv5BwzKyxJq", "quantity": 56, "sku": "WKnNDFZOok9snWC9"}, {"duration": 59, "endDate": "1976-09-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "iRmbELIzawfXvKu5", "quantity": 95, "sku": "mPIGCrJozIio8nWa"}]}], "userIdExpression": "64x5pJSHZCzyWKP3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'CreateReward' test.out

#- 183 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'QueryRewards' test.out

#- 184 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'ExportRewards' test.out

#- 185 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'ImportRewards' test.out

#- 186 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'KusyvaitTsWtL2AA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetReward' test.out

#- 187 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    '{"description": "tjEKW31SlSm20Dzd", "eventTopic": "Kk8FlVcy0hcEMFRk", "maxAwarded": 28, "maxAwardedPerUser": 22, "namespaceExpression": "SAQhtiWA2DHIocFR", "rewardCode": "98KOabgb0l3UURlt", "rewardConditions": [{"condition": "NbDbdvc14DUjHqRa", "conditionName": "UZuU9T9SRQFfxRIU", "eventName": "U3K7sjvHHFmaUGIp", "rewardItems": [{"duration": 36, "endDate": "1971-05-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "zf5gWNxqxl2qgsli", "quantity": 27, "sku": "J94DAh1Mc7VkHxj8"}, {"duration": 21, "endDate": "1978-10-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "twMX4QAE2aV1l1P0", "quantity": 4, "sku": "sBYlx7rzEm3km2jj"}, {"duration": 80, "endDate": "1997-05-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qEmuEf6JRpqZEUH2", "quantity": 89, "sku": "yqvcwQ3uBzBm355I"}]}, {"condition": "U5aZu5bRvxm9KYr6", "conditionName": "0SyfWNB8u5Qlf4KG", "eventName": "o0N4g7UWRzPsMd90", "rewardItems": [{"duration": 72, "endDate": "1990-05-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "kh4kaHSpxt9CW0WY", "quantity": 75, "sku": "cHaJYkzClqPty2kx"}, {"duration": 14, "endDate": "1982-07-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "mp1e9JzR7Bat3pdb", "quantity": 20, "sku": "BB7o24lw21Z3nE04"}, {"duration": 58, "endDate": "1991-01-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "iwIMR5JsbLCG20BK", "quantity": 11, "sku": "YXVhTiaE4WKnEeaU"}]}, {"condition": "dAmgmnzKSVlXsRNM", "conditionName": "ykbnHTrHLmaTGFI1", "eventName": "atDOVS2F6Is27hn9", "rewardItems": [{"duration": 93, "endDate": "1982-08-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5Iehzt3ErL5T5rvB", "quantity": 90, "sku": "0ooHCnlq1H5IuOva"}, {"duration": 10, "endDate": "1989-12-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "dOXlxxdySywm5h2p", "quantity": 59, "sku": "x2lJjo1I9gluGDrb"}, {"duration": 84, "endDate": "1986-09-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "QRX4iVg8TK1CF9X9", "quantity": 26, "sku": "htHW6Gx9FaoDIwGJ"}]}], "userIdExpression": "3pRyNwb9JgVZofu7"}' \
    'lNuwrS7xf7BiZI9J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'UpdateReward' test.out

#- 188 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'ujxs7GKf2LOlVbEW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'DeleteReward' test.out

#- 189 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'ajKUr3rx7Sdt80ug' \
    --body '{"payload": {"FtH5gSuRJLGkijLE": {}, "JPCdahOY2goEK35C": {}, "Zu7WE18eU5rtQUWR": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'CheckEventCondition' test.out

#- 190 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    '{"conditionName": "Lvu3WEfwBn40sJji", "userId": "4hVE3lKNQy2rJxiP"}' \
    'PjJk44WHDDNDVgEx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'DeleteRewardConditionRecord' test.out

#- 191 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'QuerySections' test.out

#- 192 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    '{"active": false, "displayOrder": 26, "endDate": "1990-04-12T00:00:00Z", "ext": {"oHWS4koauo9jkTEI": {}, "52B8LI9vMEB8OHKs": {}, "qKaw1EmCxOMl6uh4": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 14, "itemCount": 85, "rule": "SEQUENCE"}, "items": [{"id": "0kqFKNcGHYIXDqQp", "sku": "OY256yQcC8CPFXan"}, {"id": "7LUfcQhcxynrF5qW", "sku": "YvJX1f7rYnPbkDk5"}, {"id": "g9y47AVCmFD0nKyU", "sku": "wcI9KJZt31la1wZg"}], "localizations": {"pPXxtcOPw0UBm7wc": {"description": "cELVo9RYTquwIrGg", "localExt": {"k3eqgOf7WwNZWyYu": {}, "M3y1TjdcOVw94gqQ": {}, "YOWGw7LSW6Kb9otd": {}}, "longDescription": "VBjacY5doQGhc8zS", "title": "CeJ4Q8PHY6vGzNfP"}, "WTQ1pJMwPVAUNYFO": {"description": "g7TplEkOZy73bRBt", "localExt": {"WCJCJuzB1jbh95vj": {}, "0V2ccQ60lub807E0": {}, "PGhia3QvaFIVfHyA": {}}, "longDescription": "iTeDDuvgKTfrZ6Tf", "title": "rQrFIsYsZ1dTn2pA"}, "64FJuEPymbIAwDAy": {"description": "NBagGD33WMVj7bfd", "localExt": {"fxyqKQ4YNnTTwZeu": {}, "X7f9iY3skbk25jLP": {}, "6zS6a5C6awft8NPN": {}}, "longDescription": "JCopJg7IJTeOWoVt", "title": "cblaKlhxMNx5h4l3"}}, "name": "ogPTLlSlGfh2XhfC", "rotationType": "FIXED_PERIOD", "startDate": "1974-11-26T00:00:00Z", "viewId": "jlBjzXLwoMxshoo8"}' \
    'aHsXJ87ywdDtou8N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'CreateSection' test.out

#- 193 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'p74s3RLe4gpS550e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'PurgeExpiredSection' test.out

#- 194 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'Q5WiZiQUzC0vBF10' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetSection' test.out

#- 195 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    '{"active": true, "displayOrder": 64, "endDate": "1973-02-20T00:00:00Z", "ext": {"OrgT5HMaelKs3hdN": {}, "cCPnrmZDNctQe0IM": {}, "586qYdNvmRITEU7u": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 88, "itemCount": 68, "rule": "SEQUENCE"}, "items": [{"id": "AsGfQVawbSlqUfFf", "sku": "ZytHO4xrQvXR88Ar"}, {"id": "NPkMbfhbrTb4ZPG4", "sku": "R5dqhreKq9si5LTZ"}, {"id": "GjfJI0GRPR9FWa3s", "sku": "AlKnzZ5Joq98jWsz"}], "localizations": {"WZxmbhMr5aDNyd7V": {"description": "DhThmXAsBwC4MOmS", "localExt": {"F5ZPpYXTbgh3hVKy": {}, "U97N87zJHVwE86VY": {}, "nuoHevgj9ralh2tj": {}}, "longDescription": "IEDpjLJD7E0dh077", "title": "pXU34waIIRxeTkl2"}, "7M6AggzKZ3nqWutr": {"description": "pjBOnBeqwBnFdy01", "localExt": {"mQjVblM1GnFG6ePp": {}, "jPG4iKj1VxNoFLwY": {}, "2aYPpdsN55f9R3a5": {}}, "longDescription": "ZvIk8F6ffaPP2hJS", "title": "GfW6ap0wsdPdG1EQ"}, "TyBW6pf9Ni5L9Nkv": {"description": "uqwvTTB6lW4R7V4J", "localExt": {"46ZNRNpLcI8Vh4bQ": {}, "O4Nc65zcFKgC0oME": {}, "pgLEiStlzCMldcic": {}}, "longDescription": "4UcTKpdyvGEAo7B9", "title": "gTsb09YBTADJQdJJ"}}, "name": "b27jRm1nyjO60S3g", "rotationType": "CUSTOM", "startDate": "1988-10-13T00:00:00Z", "viewId": "tl2wHKp1L42H1n3Z"}' \
    'vUrBoqK16btU6Soa' \
    'oiAtMgNN8B4oo9jF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'UpdateSection' test.out

#- 196 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'mBqiyicQHvr1zREq' \
    'WwsQaxbdG9IxEoxc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'DeleteSection' test.out

#- 197 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'ListStores' test.out

#- 198 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    '{"defaultLanguage": "gOEmGQpzN4HM3v5w", "defaultRegion": "AiimBQXCxR1cObsy", "description": "s0SaqnYIBTANshJc", "supportedLanguages": ["dLEofyiS3dO8j3ta", "WbShXMN0MRNkMX09", "nQEwFSce6VsIsSSd"], "supportedRegions": ["kP3IqaPaXJc57cVP", "8tXCteutO2hlDa0v", "oH7Al8vuxWTaiUJp"], "title": "IgLrblSQiwrmWKb8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'CreateStore' test.out

#- 199 GetCatalogDefinition
$PYTHON -m $MODULE 'platform-get-catalog-definition' \
    'VIEW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetCatalogDefinition' test.out

#- 200 DownloadCSVTemplates
$PYTHON -m $MODULE 'platform-download-csv-templates' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'DownloadCSVTemplates' test.out

#- 201 ExportStoreByCSV
$PYTHON -m $MODULE 'platform-export-store-by-csv' \
    '{"catalogType": "APP", "fieldsToBeIncluded": ["MSt4enxGbQr0GStn", "cRVLvJm4u9ltRo1c", "Xuco8zvapmS8p27d"], "idsToBeExported": ["vzUWMz6IheEap1Ph", "jtZknu6Ke0rhmQrB", "Lti0OZtmm5xYReY6"], "storeId": "SgfTy3HUPSrR6V6w"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'ExportStoreByCSV' test.out

#- 202 ImportStore
eval_tap 0 202 'ImportStore # SKIP deprecated' test.out

#- 203 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'GetPublishedStore' test.out

#- 204 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'DeletePublishedStore' test.out

#- 205 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetPublishedStoreBackup' test.out

#- 206 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'RollbackPublishedStore' test.out

#- 207 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'TNktWOwGcqmkqou4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'GetStore' test.out

#- 208 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    '{"defaultLanguage": "IX6ynCg7jZBPZUjh", "defaultRegion": "5Id1WwN3o2LnIKn5", "description": "bM9rW10Xi6WV5MHu", "supportedLanguages": ["vBu2QQOXQatBE5QB", "IDADPTgsgo0iTCIE", "KHYwj85RIJjlQAk4"], "supportedRegions": ["T5By0AqALCR39RH5", "UcRubJZYIgyBXZfT", "mD5U7RTvIuyjoeXO"], "title": "EFAR7ULC1He2xJmI"}' \
    'Q7lG3SSfJb7YC46l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'UpdateStore' test.out

#- 209 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '63YRc0T3d9XaFEWX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'DeleteStore' test.out

#- 210 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'tvTExHo1HliWVA9k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'QueryChanges' test.out

#- 211 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'YxDaegAgXI2ciZ5F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'PublishAll' test.out

#- 212 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'WoyqYl8KD0zlFtlt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'PublishSelected' test.out

#- 213 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'cFGPdVe0VJQksEtH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'SelectAllRecords' test.out

#- 214 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    'q5KHA9baTP1jNjpn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'SelectAllRecordsByCriteria' test.out

#- 215 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    '8azMyTBLnxtGnH0h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'GetStatistic' test.out

#- 216 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    '3TvkynRdR0cTxgD0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'UnselectAllRecords' test.out

#- 217 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'WOWAsThZ6Ln6xBAA' \
    'pmumWxYTfEEm2g8J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'SelectRecord' test.out

#- 218 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'pfOhv1dFmmwcX8cR' \
    'QpNggDqIfB0DPn1C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'UnselectRecord' test.out

#- 219 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'ZrBaO9y4CHHaydta' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'CloneStore' test.out

#- 220 ExportStore
eval_tap 0 220 'ExportStore # SKIP deprecated' test.out

#- 221 QueryImportHistory
$PYTHON -m $MODULE 'platform-query-import-history' \
    'KJNujTvCDwyDu1QG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'QueryImportHistory' test.out

#- 222 ImportStoreByCSV
$PYTHON -m $MODULE 'platform-import-store-by-csv' \
    'tmp.dat' \
    'tmp.dat' \
    'tmp.dat' \
    'AcJRAK1mgNt0pudy' \
    'tmp.dat' \
    'ASz9qbHEsbgt8Nb6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'ImportStoreByCSV' test.out

#- 223 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'QuerySubscriptions' test.out

#- 224 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'qoNGzjQQDw2Sc4DT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'RecurringChargeSubscription' test.out

#- 225 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'bergyuPtRgn6fWMW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GetTicketDynamic' test.out

#- 226 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    '{"orderNo": "qZYmAvVETTsjp3kT"}' \
    'D5DUdBvhgsfcLURA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'DecreaseTicketSale' test.out

#- 227 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'HqkEpmWErwMkbsCK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'GetTicketBoothID' test.out

#- 228 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    '{"count": 62, "orderNo": "4WEKYCuqx8xzh9bT"}' \
    'sHGm5hk6Ypn8KsMK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'IncreaseTicketSale' test.out

#- 229 Commit
$PYTHON -m $MODULE 'platform-commit' \
    '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 52, "currencyCode": "uARcHovGUZSzWfq3", "expireAt": "1974-09-17T00:00:00Z"}, "debitPayload": {"count": 33, "currencyCode": "sYo03H0HWXeUSuTJ", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 68, "entitlementCollectionId": "DXc5LH8xN38dVbdD", "entitlementOrigin": "Twitch", "itemIdentity": "kmfVW93ZW1tXAOpK", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 92, "entitlementId": "fqOSZxwOb5jkz9ih"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 3, "currencyCode": "6sjHoBLGz2Km7DEt", "expireAt": "1975-02-24T00:00:00Z"}, "debitPayload": {"count": 44, "currencyCode": "RZntMhunn3jSCD2A", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 55, "entitlementCollectionId": "nCwPe4TX4CK4IBY0", "entitlementOrigin": "Playstation", "itemIdentity": "KuFbs8Iv2Ij9B7VD", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 91, "entitlementId": "QFwqJrWlE1xE0Agb"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 33, "currencyCode": "bwUQUVEWE0xtN3v8", "expireAt": "1986-03-25T00:00:00Z"}, "debitPayload": {"count": 13, "currencyCode": "b1WomHQ23RrmGI0f", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 83, "entitlementCollectionId": "4tSghREoTAvCltzr", "entitlementOrigin": "Playstation", "itemIdentity": "TJgBjWwZMcxIcmhu", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 48, "entitlementId": "MHEeUDIyZ6bUl6Q4"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "KEmoFSme2B5xb6kb"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 37, "currencyCode": "roGyrFwTSdzLOXwP", "expireAt": "1978-02-15T00:00:00Z"}, "debitPayload": {"count": 84, "currencyCode": "5duijZETizaQixMg", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 84, "entitlementCollectionId": "WQ9PgUcB3N69aWeq", "entitlementOrigin": "Twitch", "itemIdentity": "XIaji4MOmP494vGl", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "hdCorBgPIEGgJfwb"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 44, "currencyCode": "K4sZzj7oPP3OeZVI", "expireAt": "1990-09-26T00:00:00Z"}, "debitPayload": {"count": 62, "currencyCode": "FQBJJHKR8nXRVh36", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 37, "entitlementCollectionId": "W5RFN9k93aNy4vvr", "entitlementOrigin": "Xbox", "itemIdentity": "3ApyAvkVtA8b9zvO", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 79, "entitlementId": "iSMHjVciAVrPuzKV"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 19, "currencyCode": "gHGJd9AlCqccvcf4", "expireAt": "1971-09-23T00:00:00Z"}, "debitPayload": {"count": 81, "currencyCode": "26GboaJ63McAoV2w", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 61, "entitlementCollectionId": "CiUOAYJUhwTgl0tv", "entitlementOrigin": "Epic", "itemIdentity": "ir64fqpyffEz0xbT", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 74, "entitlementId": "pXu2mBdRvF84eD5m"}, "type": "CREDIT_WALLET"}], "userId": "2245YlrGlfgrzLif"}, {"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 90, "currencyCode": "MNICniSwlnSYTuNV", "expireAt": "1971-07-30T00:00:00Z"}, "debitPayload": {"count": 20, "currencyCode": "e4T9TmQupOzuaRV8", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 89, "entitlementCollectionId": "1OuyVC7JcK5Udheu", "entitlementOrigin": "Oculus", "itemIdentity": "7HOMooXzmW321H7C", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 71, "entitlementId": "7BlGbNTtvAEsQs0W"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 60, "currencyCode": "NbqY9SXZMP793iEd", "expireAt": "1986-02-17T00:00:00Z"}, "debitPayload": {"count": 21, "currencyCode": "NGO3Dfmm8Q8A03ov", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 13, "entitlementCollectionId": "cVCnifE0YS9KhgP8", "entitlementOrigin": "Oculus", "itemIdentity": "KDvA3YyGsBgTJCc6", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 71, "entitlementId": "4MnrbjAM32RlQ3Wp"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 87, "currencyCode": "XNZCsESCHRPA5OQX", "expireAt": "1975-06-09T00:00:00Z"}, "debitPayload": {"count": 88, "currencyCode": "wQrDu49JFXjPc1tJ", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 67, "entitlementCollectionId": "aHYTZ2IdgUYmmt7H", "entitlementOrigin": "Twitch", "itemIdentity": "T5U0e2LY7yB5EiqQ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 45, "entitlementId": "vZmCSswSPGcfasR2"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "rrm0JBGkT1hNjHr2"}], "metadata": {"icYZYjakKtgPfJHb": {}, "uwF3aZQrVPWyZpnV": {}, "jbpotD8HTOOdvA4U": {}}, "needPreCheck": false, "transactionId": "4tDlI96Qjoaq06aI", "type": "2zoqmaPgdCvQwz6h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'Commit' test.out

#- 230 GetTradeHistoryByCriteria
$PYTHON -m $MODULE 'platform-get-trade-history-by-criteria' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'GetTradeHistoryByCriteria' test.out

#- 231 GetTradeHistoryByTransactionId
$PYTHON -m $MODULE 'platform-get-trade-history-by-transaction-id' \
    'dCMrHgpPD12BS4Q8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'GetTradeHistoryByTransactionId' test.out

#- 232 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    '{"achievements": [{"id": "u6QqK4CeZXmSBfgr", "value": 73}, {"id": "o1w8aAcuRQzdYhuE", "value": 92}, {"id": "pGVXsUvez1lbenag", "value": 15}], "steamUserId": "MpHxEcJG7c76ATou"}' \
    'p2zhRng3KibPdtHZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'UnlockSteamUserAchievement' test.out

#- 233 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'PKb8CPLdIk4I9TU6' \
    'FvvEdqHzEDtl5oR9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'GetXblUserAchievements' test.out

#- 234 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '{"achievements": [{"id": "m1dm3fGK1wINqvFr", "percentComplete": 55}, {"id": "Okn4KNYWbvsmtsOV", "percentComplete": 45}, {"id": "jtacFSVTvgh23BGE", "percentComplete": 1}], "serviceConfigId": "dy73ukTxjfHXQQVm", "titleId": "xHmCVmuzoO2qep49", "xboxUserId": "tDHFl18cQlJCgKFm"}' \
    'N851YX8ylpv3hDDL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'UpdateXblUserAchievement' test.out

#- 235 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'L1n4On03mToMhBjP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'AnonymizeCampaign' test.out

#- 236 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'D6aztTyMQghPWOOA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeEntitlement' test.out

#- 237 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'zTmCVFEHDMT1eDVb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'AnonymizeFulfillment' test.out

#- 238 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'cvyxtTxuptcOYSTj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'AnonymizeIntegration' test.out

#- 239 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    '2AWA5f61ztkSpGmf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'AnonymizeOrder' test.out

#- 240 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    '8BXosNylCwcf2iVx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'AnonymizePayment' test.out

#- 241 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'v9QtivQqeRyPorhT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'AnonymizeRevocation' test.out

#- 242 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'uFn3W0qApZ98a9g9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'AnonymizeSubscription' test.out

#- 243 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'AjLDQL5jZbyjCnTk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeWallet' test.out

#- 244 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'YE0HYHfBc64zDQaw' \
    'OCULUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetUserDLCByPlatform' test.out

#- 245 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'bbbHLcaHmXRdPvQL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'GetUserDLC' test.out

#- 246 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'VuKpiiZ4Imogp7RK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'QueryUserEntitlements' test.out

#- 247 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '[{"collectionId": "EcLehyAowu72oCUd", "endDate": "1990-10-13T00:00:00Z", "grantedCode": "ES0mVVI1FilcO4pa", "itemId": "jEhkRLMvZnYZKCk0", "itemNamespace": "zbREElwdZORocHSH", "language": "Mtk_bnNd", "metadata": {"aATHwPTM0LfcjvOk": {}, "o7332ZZa1YfuaQ7g": {}, "Pgiz2EBME5ikH5iU": {}}, "origin": "System", "quantity": 67, "region": "a2UtS4T1v2y9Je7a", "source": "PROMOTION", "startDate": "1992-04-08T00:00:00Z", "storeId": "fNdDyT3a0EGpHgGL"}, {"collectionId": "UqdG3kBfGvwjwtty", "endDate": "1980-01-21T00:00:00Z", "grantedCode": "4GvDvs1H5juf5Cq9", "itemId": "50XtiMxQDIHnPin3", "itemNamespace": "vZc9bUYgwdNmcpdl", "language": "Ie_xs", "metadata": {"nqjJaGGTFaJHecFy": {}, "9m5s6oIWMnk88GXM": {}, "rS82vN0N2236tI7v": {}}, "origin": "GooglePlay", "quantity": 48, "region": "Whx94eFnxfKdptYc", "source": "GIFT", "startDate": "1979-07-15T00:00:00Z", "storeId": "Pr2qLKBXRYt7v7Wf"}, {"collectionId": "g2omS11YyIWGPc92", "endDate": "1992-09-17T00:00:00Z", "grantedCode": "cmK9zTgGQs1FIKxC", "itemId": "XUhNdJ4cK7rz2VPJ", "itemNamespace": "8AZ9i1ml0sbgQ5zP", "language": "BC", "metadata": {"uokglAmxb5eaYqdX": {}, "kBqt2UfrBE1JhOOd": {}, "YFVxYR0XhaQ30cHb": {}}, "origin": "Epic", "quantity": 36, "region": "8FKz1j1HfaNk1P4h", "source": "REFERRAL_BONUS", "startDate": "1991-06-29T00:00:00Z", "storeId": "txahdhp0tmV4jjIk"}]' \
    'C8lqpB9cbsDlreKf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'GrantUserEntitlement' test.out

#- 248 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'jfpUz3jtg1bKaDBR' \
    'Om6TJ2qMul8cl55U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'GetUserAppEntitlementByAppId' test.out

#- 249 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    '4RB2xVHiARcFLzOW' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'QueryUserEntitlementsByAppType' test.out

#- 250 GetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-get-user-entitlements-by-ids' \
    'z8Gz5TN3bJ6UVKAd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlementsByIds' test.out

#- 251 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'Np2ReRw5WPjohGmJ' \
    'KCjbEtFKLGvBQOS8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'GetUserEntitlementByItemId' test.out

#- 252 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    '1LpIh5QqEOKQXnUY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'GetUserActiveEntitlementsByItemIds' test.out

#- 253 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'MXvJJrO8K9yVaSV6' \
    'MkQpPd0utGYDVGwp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementBySku' test.out

#- 254 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'KCkOgcVrMw1DAaC3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'ExistsAnyUserActiveEntitlement' test.out

#- 255 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'oGYmbE9E87RTBvlu' \
    '["7lo1foXU28IE7EVv", "QkoqOZIFeJQSrnPs", "cIMJRStF3LRa7q49"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 256 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'EdmhBpI13Mh9tHYQ' \
    'ilnHrNI7XsRCD3YO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 257 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'zMK1ZWOxnVMpyEzi' \
    'APi9dBg5J0me0Bhv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'GetUserEntitlementOwnershipByItemId' test.out

#- 258 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'ZVrOsZSqQjmdJGa6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementOwnershipByItemIds' test.out

#- 259 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'AahLvhIfKDFkuldV' \
    '3vhNCAUQUVGJTsED' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementOwnershipBySku' test.out

#- 260 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    '5tFgDMluY685drsU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'RevokeAllEntitlements' test.out

#- 261 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'waWMLdLGDjtirdqD' \
    'ck0QFovelKxdFe87' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'RevokeUserEntitlements' test.out

#- 262 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'vTbT1ykevWiIoube' \
    'xJQ22uV5cRj529cE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'GetUserEntitlement' test.out

#- 263 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    '{"collectionId": "GlYlBTFD4MBzAgdt", "endDate": "1989-02-13T00:00:00Z", "nullFieldList": ["faktaCbkIORjbuZi", "76GDzksM1Iq82IG5", "98WdAhvjsHqU3mTb"], "origin": "Nintendo", "reason": "zxkHXSiDFpwgjtHk", "startDate": "1992-07-21T00:00:00Z", "status": "SOLD", "useCount": 3}' \
    '1qt4AYI54fgXlDCL' \
    'FwNGzR7zvW33BLQ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'UpdateUserEntitlement' test.out

#- 264 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '{"metadata": {"NyteBZg7IM93LGdM": {}, "Kko1WdXcuqjnyBh9": {}, "36FR7fT7f00EZw65": {}}, "options": ["iq4fnnFA4ieAeG0J", "cWHLxYckKH0j3mmJ", "2Y5FsP84rgl0AQlB"], "platform": "ikeTeA9eq8hIKrzA", "requestId": "UsKqpjQGHI3Wkg4H", "useCount": 70}' \
    'O2Gg00JcXGaIUaL3' \
    'FoA27eK2U3IHpgmm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'ConsumeUserEntitlement' test.out

#- 265 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'QaQj7hyQjWqzvHab' \
    '6b9t7DWTaUGBJRTc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'DisableUserEntitlement' test.out

#- 266 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'rm3mIBuPZxqlGGOe' \
    '2VYsej3cSW6YWXMT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'EnableUserEntitlement' test.out

#- 267 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'lqVrGyQYDnbzj7Xg' \
    '2lcvB7TOu2FcuLwU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementHistories' test.out

#- 268 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    '5IJt4pAasYNW28u3' \
    'UZ3q6QdMAL9IC446' \
    --body '{"metadata": {"0Wck2oK2mLwkxgJX": {}, "K2OjNzQ95lceIy0l": {}, "nTniV8j7XmR8FUW4": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'RevokeUserEntitlement' test.out

#- 269 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    '{"reason": "2wLu5tQBUE3k2mUv", "useCount": 36}' \
    'm4nKNGlXp2jJfLGd' \
    '0zQqYmGkk8Pcq83l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlementByUseCount' test.out

#- 270 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    '2hWOuqsilAWXNFfx' \
    'IWM9jL08jtCIr8ST' \
    '99' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 271 RevokeUseCount
eval_tap 0 271 'RevokeUseCount # SKIP deprecated' test.out

#- 272 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    '{"platform": "IIeRmFR2TQ2rE5Ug", "requestId": "f8q6zX7Jc7TK5xO3", "useCount": 78}' \
    '5oEsCRrlY6AX1ksm' \
    'S6Cm75yFZVt1HZPc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'SellUserEntitlement' test.out

#- 273 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    '{"duration": 64, "endDate": "1972-01-13T00:00:00Z", "entitlementCollectionId": "LhB2mWrW0A29UflI", "entitlementOrigin": "Oculus", "itemId": "7Q3NwVn8PU8JfFPi", "itemSku": "Zpcqq8qH8MR9K5kA", "language": "67H3XOJlQfOCN2ke", "metadata": {"FNIQusmcAYWBLZg0": {}, "0dmqgWRmPnXpH8xi": {}, "fqavEfKK0Dei3ChL": {}}, "order": {"currency": {"currencyCode": "wkIGKtgDjDah0Uew", "currencySymbol": "hSyu7JMOvmbqHpLD", "currencyType": "VIRTUAL", "decimals": 64, "namespace": "64bsfWMA6zIWiASr"}, "ext": {"arIiILeXO18VYOBd": {}, "YdQraUweJSX5gGRL": {}, "c0R4vMMPlJqY7ujD": {}}, "free": true}, "orderNo": "9ZaFaHBtEtzzbIbJ", "origin": "Xbox", "overrideBundleItemQty": {"nsmYALYAas29PBhK": 19, "2iMkPiEKRgT1zZPa": 74, "OIkGhmAMgJu6c1uz": 58}, "quantity": 46, "region": "A657ulArgYuyjFEv", "source": "DLC", "startDate": "1979-12-28T00:00:00Z", "storeId": "fQ5iJtNrVbjnyYER"}' \
    'w24T1DBdzzVbhZKn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'FulfillItem' test.out

#- 274 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '{"code": "h9FfHsuwhOtgOWtZ", "language": "yHG_ZTYA_Ig", "region": "nH8xFDMoqbLU4KGs"}' \
    'evVGPnqXXPustpaZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'RedeemCode' test.out

#- 275 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    '{"itemId": "z47mZuZptSindV4K", "itemSku": "pifmfS94ybYG4wLa", "quantity": 85}' \
    '3F57a8i8FBQVq8F8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PreCheckFulfillItem' test.out

#- 276 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    '{"entitlementCollectionId": "UHFjnV4a8qkT208c", "entitlementOrigin": "Other", "metadata": {"EqnaczanLg5zKTta": {}, "PmN6tWQqV1V78ZIj": {}, "g1EtBZbAWeHGdU9m": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "s0rjVHzs9C25B5DY", "namespace": "IkGcoYjLN4VPTXzk"}, "item": {"itemId": "nDz9YRB0KErE7XXT", "itemName": "kVsvdGlmWWA02nKw", "itemSku": "O7XUNrraxsHn4uKh", "itemType": "XVFTTx0TcboB98Gf"}, "quantity": 91, "type": "CURRENCY"}, {"currency": {"currencyCode": "Z3T7DC5TO5zuEOtC", "namespace": "w7S3b8oIW8rduVEp"}, "item": {"itemId": "RjbhlZ8rATgmfiV8", "itemName": "x6LtOu3SAtYQcZ2M", "itemSku": "0m2eu4s6Vt77Z7VY", "itemType": "CzMbz1C3ZtjGu9Cx"}, "quantity": 0, "type": "CURRENCY"}, {"currency": {"currencyCode": "imgFFENNE15OyfCm", "namespace": "3JLSdyxEkUrupaAg"}, "item": {"itemId": "8X3qrN4NJQHucDPc", "itemName": "orTkEhvJJBHTf7gH", "itemSku": "QdNqoM8JpOKNAU33", "itemType": "hDeba57ZY9YNNrTc"}, "quantity": 6, "type": "CURRENCY"}], "source": "ORDER_REVOCATION", "transactionId": "nzDvUHgR2bX5lx9A"}' \
    'jwbpWgnIzWRtzH2w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'FulfillRewards' test.out

#- 277 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'WVwIlnX0PYoF43qd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'QueryUserIAPOrders' test.out

#- 278 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'lpBadznEopQjdlmC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'QueryAllUserIAPOrders' test.out

#- 279 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'Kky8f25OS6EXRpHj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'QueryUserIAPConsumeHistory' test.out

#- 280 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '{"itemIdentityType": "ITEM_ID", "language": "xMId-zhGU_yB", "productId": "cNk8k8qK4gJrux6t", "region": "lQDfleFLBKj8h7Zr", "transactionId": "O4pTU7jATbVBcDGu", "type": "APPLE"}' \
    'Ayw8HdDdyIIR5cs3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'MockFulfillIAPItem' test.out

#- 281 QueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription' \
    'jEJm9cqIJO6etrgP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'QueryUserThirdPartySubscription' test.out

#- 282 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-group-id' \
    'APPLE' \
    'WaPGfJVUla8UlMM4' \
    'Cc3k5J2qbHYNekyX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 283 GetThirdPartyPlatformSubscriptionOwnershipByProductId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-product-id' \
    'APPLE' \
    'tDH1ypF3hIsdFXbb' \
    'aFfchju2kAuottOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 284 QueryUserThirdPartySubscriptionTransactions
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription-transactions' \
    'wo884abNDjMPiZHx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 285 GetThirdPartySubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-subscription-details' \
    'hFeo51XVDI8f5EWn' \
    'dhcek3atmhTw5TDj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'GetThirdPartySubscriptionDetails' test.out

#- 286 GetSubscriptionHistory
$PYTHON -m $MODULE 'platform-get-subscription-history' \
    'WYgm2yGvhR6HS643' \
    'vgPdN21mWwtuqNbt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'GetSubscriptionHistory' test.out

#- 287 SyncSubscriptionTransaction
$PYTHON -m $MODULE 'platform-sync-subscription-transaction' \
    'aAfDzs5MyxW90cMZ' \
    '9NeyZ5n02q1qbbj3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'SyncSubscriptionTransaction' test.out

#- 288 GetThirdPartyUserSubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-user-subscription-details' \
    'sLmfYzDVAVhXts4C' \
    'dsniSJKrJ4BrdfV6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'GetThirdPartyUserSubscriptionDetails' test.out

#- 289 SyncSubscription
$PYTHON -m $MODULE 'platform-sync-subscription' \
    '58ZBVGgxlpGxhD9k' \
    'KX2uBUIh1pfP8bRB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'SyncSubscription' test.out

#- 290 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'Voq807roCNo3Qw4Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'QueryUserOrders' test.out

#- 291 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    '{"currencyCode": "54sNMs82e3yxhkTF", "currencyNamespace": "fQHB8O5ke34NGuML", "discountCodes": ["Q7iPaGqelc3lbrPk", "4M7Opf9oRlvBsYj4", "W2foKqIz9z80ICxp"], "discountedPrice": 71, "entitlementPlatform": "Other", "ext": {"cbdUz2cBWKIUuPLf": {}, "vTFl9DbHQLYWCwsA": {}, "VcQ0VGEUxlcNQWOp": {}}, "itemId": "RLETWMAv0uJ30L51", "language": "TxrdknW52x2o1yDO", "options": {"skipPriceValidation": true}, "platform": "Epic", "price": 8, "quantity": 46, "region": "u4NPuT03UI8xXkOT", "returnUrl": "RPX2RbN68q9Xjuvx", "sandbox": false, "sectionId": "SBmDL91zfHvKnS4T"}' \
    'BwlGi9OKYqmnMdDO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminCreateUserOrder' test.out

#- 292 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'YMCkcE680jXshhAr' \
    'mrrsTXqjhryZuWF0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'CountOfPurchasedItem' test.out

#- 293 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'aXyAfnT9KMwZkUmi' \
    'vHbmYwS4MpDJ1DYO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'GetUserOrder' test.out

#- 294 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    '{"status": "CLOSED", "statusReason": "IeXSROEb0iXucFoR"}' \
    'm7DFw5ArJzNAElyb' \
    'JSWLbZCdcwYHhOIG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'UpdateUserOrderStatus' test.out

#- 295 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'u0vXLFZoXt8k5ZtR' \
    'JGwh0BPRCWdTnytx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'FulfillUserOrder' test.out

#- 296 GetUserOrderGrant
eval_tap 0 296 'GetUserOrderGrant # SKIP deprecated' test.out

#- 297 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'mesJ8JDDcPDev3e8' \
    'oc7sh3o0r9VYIh3J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'GetUserOrderHistories' test.out

#- 298 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '{"additionalData": {"cardSummary": "j15pf4bXUrytKH5r"}, "authorisedTime": "1990-06-01T00:00:00Z", "chargebackReversedTime": "1986-05-08T00:00:00Z", "chargebackTime": "1971-01-20T00:00:00Z", "chargedTime": "1989-11-06T00:00:00Z", "createdTime": "1990-05-09T00:00:00Z", "currency": {"currencyCode": "xy49IPWxqs6jAQJW", "currencySymbol": "L8Yc3AKtQffBJPNo", "currencyType": "VIRTUAL", "decimals": 70, "namespace": "lAaW04oQXa8waozl"}, "customParameters": {"r2ftyZklpNPl881j": {}, "OSvCvj20fgU419HQ": {}, "Gug3ApiXAivNHSVq": {}}, "extOrderNo": "7Hy14PWQgyxy3AZ9", "extTxId": "Q29c3FLGnsacdakV", "extUserId": "uBk3eUIeGfzqhOBh", "issuedAt": "1991-10-20T00:00:00Z", "metadata": {"GwBZAszrs6F6qWE8": "F5UT7Jy1J0W4BcrV", "EEfr25k1H2s4V2KN": "0PLlR8cmHo3XR1Gq", "cOtFZDsjHNjL304s": "V2h9pg3yvd9MZqnU"}, "namespace": "seNuEx7YDEkdFOw3", "nonceStr": "4ZkvghT5B0olJY1q", "paymentData": {"discountAmount": 10, "discountCode": "yJYIYPCQLT4UtcQm", "subtotalPrice": 47, "tax": 55, "totalPrice": 80}, "paymentMethod": "geUljuQXNi35z75t", "paymentMethodFee": 87, "paymentOrderNo": "N6GGKXlt1XAswrMM", "paymentProvider": "CHECKOUT", "paymentProviderFee": 12, "paymentStationUrl": "tufusABAiEcZPc54", "price": 64, "refundedTime": "1978-08-28T00:00:00Z", "salesTax": 67, "sandbox": true, "sku": "t7hRJWz66woOwujZ", "status": "CHARGEBACK", "statusReason": "86aDmZpx6FpqFAR1", "subscriptionId": "FP2qDxqukQGmZ8QP", "subtotalPrice": 88, "targetNamespace": "TLF2CAqFwYdrzmGz", "targetUserId": "kvzgJn2pWVs6zZRX", "tax": 56, "totalPrice": 57, "totalTax": 54, "txEndTime": "1978-02-05T00:00:00Z", "type": "mYeCJwMPHx5qbq2e", "userId": "s6TWDRr2bTPUxXfv", "vat": 38}' \
    'ANoRioh11etL7rvP' \
    'zXTBq3cXU8GYxE0O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'ProcessUserOrderNotification' test.out

#- 299 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'hdSVFcSQWMXN21fc' \
    '6lGGfo4IJnwUyJDP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'DownloadUserOrderReceipt' test.out

#- 300 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    '{"currencyCode": "c4Bi2BT8WWMNZ7MQ", "currencyNamespace": "0xXiAUp37WFZG1bP", "customParameters": {"REFnLFvdjVz0bF4f": {}, "5a8wwsXbVcGQFcH3": {}, "a88llB2KCetfPNaS": {}}, "description": "ebuaBm42ZRTd7otF", "extOrderNo": "S5xUblp0GJFHhDBb", "extUserId": "jdusCtKYo61c23RG", "itemType": "OPTIONBOX", "language": "YwfA-mLkJ-261", "metadata": {"ammJN39lhBPiRxSS": "C369UVGTnts7qK33", "YCsDe0la83cvnj5U": "t4YTxIBMay1sHQox", "lbhfnh1larFYcM0O": "oFV93hG5GVHrcfGp"}, "notifyUrl": "WAuflVB1opvSUYD0", "omitNotification": true, "platform": "7Y5bCch6ur33FthZ", "price": 59, "recurringPaymentOrderNo": "FOWCXy70cM2iJtgp", "region": "MAKpwx7WN70b3lBn", "returnUrl": "Y61oiTLHdBClY8kI", "sandbox": true, "sku": "PYZARtb3TsS5jOBR", "subscriptionId": "YgnvYu1vzXsMr43y", "title": "cE5A2fFKAWLe45no"}' \
    'hGKrvpCUuClhTnLj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'CreateUserPaymentOrder' test.out

#- 301 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '{"description": "G2riY5IlAkHgxsUL"}' \
    'SOBCWJH9jh3zB9JE' \
    'YLPl0Rjsq0yRuQRa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'RefundUserPaymentOrder' test.out

#- 302 GetUserPlatformAccountClosureHistories
$PYTHON -m $MODULE 'platform-get-user-platform-account-closure-histories' \
    'rSVoIleZ7Ptbbcri' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'GetUserPlatformAccountClosureHistories' test.out

#- 303 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '{"code": "inQEr7oILTomzVEd", "orderNo": "qAFGjuRaB4ccMpIH"}' \
    '8Lan5Ny9rMiD8seo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'ApplyUserRedemption' test.out

#- 304 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    '{"meta": {"TU64hQTXu9MixCLk": {}, "CkF4GsByu7ccqHPL": {}, "Y7ScjfHWvp5yxoHD": {}}, "reason": "N8wbZhTBvAeHGP8M", "requestId": "EJHjkHXgaYcrI47D", "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "gAK3QR9g0C7nE1t5", "namespace": "8LdpQQXSvH7kwH9P"}, "entitlement": {"entitlementId": "KAIEqRaoWkdV23II"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "TEDjWcIzfsSrF9JB", "itemIdentityType": "ITEM_ID", "origin": "Oculus"}, "quantity": 38, "type": "ITEM"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "fyFO9PUA61ceL94U", "namespace": "MGbnwR8NQy5mWp1i"}, "entitlement": {"entitlementId": "7XAgvpl6VM46gEFq"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "hq8QCACdn9QBrEBZ", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 49, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "SF09VMOBfFhgytL5", "namespace": "jv2cyVSXxh4A5aA1"}, "entitlement": {"entitlementId": "bEwNCWytxJKphKxk"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "5xAVg39H5hnoP20t", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 31, "type": "ITEM"}], "source": "DLC", "transactionId": "jiJTcJCNU9JxdozQ"}' \
    'jrd9h3KvseGTWQwY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'DoRevocation' test.out

#- 305 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    '{"gameSessionId": "HbgonXMWBgwAHBLE", "payload": {"NBGh8mzbI7UUQoj4": {}, "0AF05z6BC0fH4Bly": {}, "XE2K4uNJRgQ3CCkl": {}}, "scid": "U97KkomnjFaT7NQe", "sessionTemplateName": "CqpaKPJkOezU2Rem"}' \
    'XA27tg6bypXmwZRp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'RegisterXblSessions' test.out

#- 306 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'U8Qcrmp46NHHKuQE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'QueryUserSubscriptions' test.out

#- 307 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'xWorl4PYKJ1GJKlZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'GetUserSubscriptionActivities' test.out

#- 308 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '{"grantDays": 41, "itemId": "6mxx5rFWCDjFeol1", "language": "Ra8c5c3F5otSicHN", "reason": "AFf6XoFjTyGzUy7G", "region": "y3lIbJD3ko0KsF8j", "source": "qH84W95YMkpzkat1"}' \
    'qYXphVMsbw6Rv3XZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PlatformSubscribeSubscription' test.out

#- 309 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    '4XgIfTmvZDu1OaoV' \
    'mtgO5YP56VohkMQr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 310 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'BSOet1EcW3bKxXuY' \
    'On0ULO8bwirHmfnB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'GetUserSubscription' test.out

#- 311 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'ivLKinrwTNNliEMZ' \
    'aebfXS8gZ4cc4oVq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'DeleteUserSubscription' test.out

#- 312 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    '{"immediate": false, "reason": "k9tqGzt1BHwaxrSe"}' \
    'pYwXWbcBNnyBdWMR' \
    'vISdcF4Db7MaqeC6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'CancelSubscription' test.out

#- 313 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    '{"grantDays": 13, "reason": "hdDbGzcJKa1wsM43"}' \
    '4xCGXTsh5xydeZAD' \
    'SKQFv0tnP05L7Nwx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'GrantDaysToSubscription' test.out

#- 314 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    '1i8sHEbX4mIdomBV' \
    'yorRK73vbWSNBzki' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'GetUserSubscriptionBillingHistories' test.out

#- 315 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    '{"additionalData": {"cardSummary": "EHyJEOg3iIjU3AAg"}, "authorisedTime": "1976-09-23T00:00:00Z", "chargebackReversedTime": "1998-08-15T00:00:00Z", "chargebackTime": "1973-10-16T00:00:00Z", "chargedTime": "1994-04-25T00:00:00Z", "createdTime": "1980-01-16T00:00:00Z", "currency": {"currencyCode": "mDaTzm1iyRQNy7RF", "currencySymbol": "RXuzS7oKchq3HFDA", "currencyType": "REAL", "decimals": 51, "namespace": "8snTqP81J1c6C2wv"}, "customParameters": {"WDhsYWwX5hKxgCMD": {}, "1qRyNe4g5DSTBpRP": {}, "aWHEoCnndVYqgBPm": {}}, "extOrderNo": "wdNn0rosYXZ8eImg", "extTxId": "Q2x0SgQXdYwRiDuK", "extUserId": "o24S6RgeY6mxarVs", "issuedAt": "1979-08-22T00:00:00Z", "metadata": {"09JpliIbzDdA20g9": "UeCPSEkHvpI9pfGr", "7q4J4HRfPSShguxC": "FDvHcOou9G8lXxC3", "R0xIfzLRFel1aMfE": "V5ZvvwEDVOZ5VOwn"}, "namespace": "n6MrDyExIjLvTJkl", "nonceStr": "9WnxI3c4i8HDHZe4", "paymentData": {"discountAmount": 24, "discountCode": "LK8QPEA7MUcU28Tj", "subtotalPrice": 29, "tax": 82, "totalPrice": 61}, "paymentMethod": "XKr5KBD3YwTJ4Hn5", "paymentMethodFee": 44, "paymentOrderNo": "qA2kk1A3H3rxXt6g", "paymentProvider": "ALIPAY", "paymentProviderFee": 74, "paymentStationUrl": "VWwNdNaPLrz9N2oR", "price": 47, "refundedTime": "1981-11-19T00:00:00Z", "salesTax": 7, "sandbox": true, "sku": "t1R6axg5VLrk3KBN", "status": "INIT", "statusReason": "zn0RXiwLSoaZygiL", "subscriptionId": "J4dBRmXwqKSWTRuD", "subtotalPrice": 56, "targetNamespace": "imEWxUgMEW1S9JMb", "targetUserId": "rmE7zBsX3PYLNcay", "tax": 88, "totalPrice": 10, "totalTax": 74, "txEndTime": "1984-03-09T00:00:00Z", "type": "eVIHcetoKKyITDGa", "userId": "FUZsvAcQqJMBspeH", "vat": 4}' \
    'q2zgtaigOB2XWLXB' \
    'kH6l2KW0sSf0vJS3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'ProcessUserSubscriptionNotification' test.out

#- 316 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    '{"count": 23, "orderNo": "3IumFyH8gFezb1WO"}' \
    'jy0XInTSZSMKJYcE' \
    '585zPfpDiAo4zAj1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AcquireUserTicket' test.out

#- 317 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'AgjctQkNA6tPxcpO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'QueryUserCurrencyWallets' test.out

#- 318 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    '{"allowOverdraft": false, "amount": 64, "balanceOrigin": "GooglePlay", "balanceSource": "EXPIRATION", "metadata": {"cMqPJvYXVa6273TG": {}, "laOPmEdjp63KfNpB": {}, "5Un5ObPhEk6MRN6z": {}}, "reason": "zKPZLWVB4YH2roup"}' \
    'mMfATapsn4uvJaBh' \
    'PA5LWJipgrvQaTdi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'DebitUserWalletByCurrencyCode' test.out

#- 319 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'KmmlpHUD2h7I7UbU' \
    'Nrp02FBwxeZXuYnl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'ListUserCurrencyTransactions' test.out

#- 320 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 34, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"95T6quy9PsI3dx75": {}, "GAWm1WfXALgsjwfd": {}, "3eYGpxI9DQs2vOJH": {}}, "reason": "76fEQ8WC3iZ6amfE", "walletPlatform": "Epic"}' \
    'HQzAvmPZRWnKIfYW' \
    '2kPDBgq17ElbCwKI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'CheckBalance' test.out

#- 321 CheckWallet
eval_tap 0 321 'CheckWallet # SKIP deprecated' test.out

#- 322 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '{"amount": 33, "expireAt": "1971-03-08T00:00:00Z", "metadata": {"i4gNvHnKuaNhVEaI": {}, "WElcUTlMDbUWJ5sp": {}, "S6gLd7l7OF4v4RTL": {}}, "origin": "Nintendo", "reason": "5yHbiXZ6ThrZy4bU", "source": "PROMOTION"}' \
    'MrRfpSxf1BnhjtAi' \
    'kWfrrIadsWMmGapP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'CreditUserWallet' test.out

#- 323 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 96, "debitBalanceSource": "TRADE", "metadata": {"enPlT7QiPDEUKBKA": {}, "2vpqA4MSD0izLTUR": {}, "YUzEglKz4HU03X04": {}}, "reason": "OxvZytaM4c4qTIV7", "walletPlatform": "Other"}' \
    'bSzJGQtaPFC2SxEM' \
    'chjQ84nuG9DGOS5k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'DebitByWalletPlatform' test.out

#- 324 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '{"amount": 87, "metadata": {"Kqt9eEQQ5qXZd41K": {}, "iSlLVmN9KSbiFMGQ": {}, "MewQlUnkcE3UYV2a": {}}, "walletPlatform": "IOS"}' \
    'GG1NypPAy9ZqaNyS' \
    'vpXwMac489Y6N0H6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PayWithUserWallet' test.out

#- 325 GetUserWallet
eval_tap 0 325 'GetUserWallet # SKIP deprecated' test.out

#- 326 DebitUserWallet
eval_tap 0 326 'DebitUserWallet # SKIP deprecated' test.out

#- 327 DisableUserWallet
eval_tap 0 327 'DisableUserWallet # SKIP deprecated' test.out

#- 328 EnableUserWallet
eval_tap 0 328 'EnableUserWallet # SKIP deprecated' test.out

#- 329 ListUserWalletTransactions
eval_tap 0 329 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 330 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'ListViews' test.out

#- 331 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    '{"displayOrder": 50, "localizations": {"W37EUwOviFJi304r": {"description": "wbySnVTSdmqyftEY", "localExt": {"Ql2xFFtZWlWKmQH3": {}, "tI9yHxuaa0zbT4NG": {}, "P7Xy3gYPJQEukOcB": {}}, "longDescription": "tFyzW1aKe15m4Nor", "title": "N2PP1hXmALwnidAm"}, "iLFK5Dwak0R9n1WB": {"description": "VWp96bYrG5ANSRCX", "localExt": {"Wy9C2oM6ZVdGQt7e": {}, "d5WKQJkzGQPBQoXp": {}, "XVvDLulelX30R2hP": {}}, "longDescription": "YkRArSfExoJMARmE", "title": "C7Kyhtx4sYsq0CbA"}, "1NZZ58G8Xryw8bfE": {"description": "6VA6HEvqN7kX4VVV", "localExt": {"BS89UUbLl2ciimYD": {}, "eDceMEtPkjYd9PNB": {}, "i79WHorOJPVoTCRV": {}}, "longDescription": "5enPlVeOc8uDGuA9", "title": "ZVtPuyxsPGoUCgc3"}}, "name": "BsZJVlVlewocIRWj"}' \
    'mJ81aRTbDoFbYLVq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'CreateView' test.out

#- 332 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'xK4NVV4KPvi1IDd9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'GetView' test.out

#- 333 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    '{"displayOrder": 14, "localizations": {"QavSCZfTzJfHZF17": {"description": "lZ95JmGny7g72f6S", "localExt": {"O7XayfUmZz42HE0t": {}, "7TAQm0TGMk4Dmrwx": {}, "C6EQr9lk8teEugVd": {}}, "longDescription": "3X7cq2K0e7A1xHVz", "title": "xmePZ06tOqoxMhyq"}, "IyPdnz3ReXTrC2sN": {"description": "ANyInXnunWNxg0gQ", "localExt": {"ztAjYiUb5SlpeaMD": {}, "VE3ODebYRPEkmK5e": {}, "PPaacnQTuUibmiz8": {}}, "longDescription": "AhOGRIwwo9w06X6X", "title": "zJiljntx5TSAxNBc"}, "htcaaoKZYk4Gliky": {"description": "I0LGO0eNNgl7jdIf", "localExt": {"7ptoc5rPRsGFfGRR": {}, "KQ4tLERFGopzQ87C": {}, "bxAJ0xdAPFrw8ssJ": {}}, "longDescription": "ejQ7qSiyUPY0Gnwc", "title": "v8NFIJFlyo9htDZj"}}, "name": "jGZzNcLBzqSh3UQr"}' \
    'HYlWFx0rb4eSExhC' \
    'hscwh8P6pejiRuUj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'UpdateView' test.out

#- 334 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'CpBUL68KLWODgQ2g' \
    'kEKZZQfGQJPF97t3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'DeleteView' test.out

#- 335 GetWalletConfig
$PYTHON -m $MODULE 'platform-get-wallet-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'GetWalletConfig' test.out

#- 336 UpdateWalletConfig
$PYTHON -m $MODULE 'platform-update-wallet-config' \
    '{"enablePaidForVCExpiration": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'UpdateWalletConfig' test.out

#- 337 QueryWallets
eval_tap 0 337 'QueryWallets # SKIP deprecated' test.out

#- 338 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    '[{"creditRequest": {"amount": 79, "expireAt": "1974-11-12T00:00:00Z", "metadata": {"7AsxVCXefUThofls": {}, "BWhnubnROvA1CxkX": {}, "WIlkrF4cf9E2pKWk": {}}, "origin": "Steam", "reason": "7et7rl9ow7BDniJH", "source": "SELL_BACK"}, "currencyCode": "dzL9gMSge48h6WQO", "userIds": ["WyUKgXL1FOiDEhOn", "3KuRxgkDm8ALwZab", "LVImJDNd0LTI6thf"]}, {"creditRequest": {"amount": 66, "expireAt": "1996-07-23T00:00:00Z", "metadata": {"xZHMK3ybnM1cQEih": {}, "WjWNwYN6xeNeZMtT": {}, "7f2d2NhlIgGSvbXe": {}}, "origin": "Playstation", "reason": "Hyw3mylk3Hwg4Wtj", "source": "TRADE"}, "currencyCode": "iicANHhXNQESalqi", "userIds": ["mMMSci9xEExP9jva", "689kzJWUj0IhAuSR", "13uRBo7tIuLW7T1d"]}, {"creditRequest": {"amount": 22, "expireAt": "1997-07-11T00:00:00Z", "metadata": {"d3qEIVQCbFYV3NuJ": {}, "gscT8dY4nux3S39s": {}, "GE4zXVkI5AV7Af2T": {}}, "origin": "Other", "reason": "N9WUqYyTxul6u3Ru", "source": "REWARD"}, "currencyCode": "S6I5h9Aa4tLrATtq", "userIds": ["jqfRNpfhafmEghm1", "K6FfhGrYgU3tXTmZ", "IhJQruDfpefgGxk7"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'BulkCredit' test.out

#- 339 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    '[{"currencyCode": "UKau7dzs6uA891lc", "request": {"allowOverdraft": true, "amount": 38, "balanceOrigin": "Other", "balanceSource": "EXPIRATION", "metadata": {"Ngtqv552OktaS7Id": {}, "9oPGerpovdmW3j3e": {}, "Spo6vhwdrFa4npr0": {}}, "reason": "qt5yxg5LXtD40Rsi"}, "userIds": ["6Pdx5D1ZrPFTEv91", "bRBputNAcV0wHVw4", "OJZ9KRfK3ElT6izH"]}, {"currencyCode": "KnFOHx4QGVt5sQ7M", "request": {"allowOverdraft": true, "amount": 79, "balanceOrigin": "System", "balanceSource": "ORDER_REVOCATION", "metadata": {"RwGWuXrmWB81vpVn": {}, "NLvfxMVPORdXWvsG": {}, "ZrPVAZ2ZLrDa1xpq": {}}, "reason": "IziihTn1qm3WYY19"}, "userIds": ["InV7B8tHIYiWBgIk", "W9QrR9bMgSr1OTY7", "V3CTRYI1Nyon9lvA"]}, {"currencyCode": "8o43VZXjofWhPJjq", "request": {"allowOverdraft": false, "amount": 42, "balanceOrigin": "GooglePlay", "balanceSource": "ORDER_REVOCATION", "metadata": {"6RBiYws6MPqsSKy9": {}, "SsYw3NP5yL2qIrhx": {}, "90T4EDNbgre3Ewho": {}}, "reason": "EBW0FNQL1GY5CSEz"}, "userIds": ["QHhwB99zMKOwz2mK", "Zsaak9MNj0mKis5K", "AvkSzld2vfGrbc2j"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'BulkDebit' test.out

#- 340 GetWallet
eval_tap 0 340 'GetWallet # SKIP deprecated' test.out

#- 341 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'P3wtM1fSokFngc55' \
    '9mMToWdIIC6lFVoA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'SyncOrders' test.out

#- 342 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    '{"allowedPaymentMethods": ["XWUBY9BL1BmvNwKX", "wiUQ1QS5fveJC1Tg", "5xtzTqaSWZu4moOY"], "apiKey": "d8XdHELjymTcNfNb", "authoriseAsCapture": true, "blockedPaymentMethods": ["CIiJp9P8xb23hdj1", "7CLEa8QbsGBZrZxD", "KJWeWYfQ5eExWeqj"], "clientKey": "0EGyRTt1yUKDmgUR", "dropInSettings": "bZe3BXyDfCse1Idj", "liveEndpointUrlPrefix": "n7UTJHBJE3tOlW5Q", "merchantAccount": "YRcQcxJjxgx0It94", "notificationHmacKey": "BuLjZOmtY6jje5os", "notificationPassword": "rYAf28mqvM4LzAMy", "notificationUsername": "18Az6wAqGqaSmwDv", "returnUrl": "oaPbcj2JPPSWbsPz", "settings": "R9vQiwMdHSV2fA6M"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'TestAdyenConfig' test.out

#- 343 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    '{"appId": "7yIgULctkrQt7UdV", "privateKey": "DHgEyEMT17gAkJ9Z", "publicKey": "OyUyKXZ4gnJD0btv", "returnUrl": "fiaLotp8rjTOGuuZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'TestAliPayConfig' test.out

#- 344 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    '{"publicKey": "KYSboPR01QNJxA5b", "secretKey": "UgJyfyqZXsJXmWao"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'TestCheckoutConfig' test.out

#- 345 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'DebugMatchedPaymentMerchantConfig' test.out

#- 346 TestNeonPayConfig
$PYTHON -m $MODULE 'platform-test-neon-pay-config' \
    '{"apiKey": "ddgjJ2F009o01wDw", "webhookSecretKey": "Pk87RGZxhbon95Kr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'TestNeonPayConfig' test.out

#- 347 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    '{"clientID": "4kABVvvoyJHCJBXa", "clientSecret": "uQb7rZO3cLAcITU9", "returnUrl": "eaHQK6btDxqspEHx", "webHookId": "J7HIZTmr9S9JzIoT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'TestPayPalConfig' test.out

#- 348 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    '{"allowedPaymentMethodTypes": ["TXKTR2Z9P66amF5l", "35onaRK2kOt01My9", "9Nzxfq4jTsNihBME"], "publishableKey": "N4c79eXbUHmcvCVo", "secretKey": "hS9cZeNhZq7LKZkG", "webhookSecret": "ycl5oKG2FV9jHnWg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'TestStripeConfig' test.out

#- 349 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    '{"appId": "7dx8OSOJ9EFaxeDD", "key": "8oVvwa87YrbanFFA", "mchid": "RSHMaf8ayqvkXvHf", "returnUrl": "j2e4dQJLp4KMIcg7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'TestWxPayConfig' test.out

#- 350 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    '{"apiKey": "4z6KA7qyrdGdWMrP", "flowCompletionUrl": "tZSPUCJfnrl3yUaw", "merchantId": 71, "projectId": 13, "projectSecretKey": "1hRJUWYF9TbCR4qG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'TestXsollaConfig' test.out

#- 351 GetPaymentMerchantConfig1
$PYTHON -m $MODULE 'platform-get-payment-merchant-config-1' \
    'KgfhTaBBmPDLRa6m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'GetPaymentMerchantConfig1' test.out

#- 352 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '{"allowedPaymentMethods": ["zkhzzfqsSgeEUzau", "X2BiTkHqFomi9qMK", "O7v11iTPPXFNeZn2"], "apiKey": "vRR0BflNL8jjbsyH", "authoriseAsCapture": true, "blockedPaymentMethods": ["ZC1b1ulnqTNaXTLY", "ftRvPlpA8xbm6EVV", "6HtbTcLIMpXtDVIH"], "clientKey": "pxYskyOZ9GTOpAmy", "dropInSettings": "jwPmzYZp1Cer18Ye", "liveEndpointUrlPrefix": "UzcRemWJu2baHMsM", "merchantAccount": "OQdoVhxkHAGG58la", "notificationHmacKey": "2mBmEsorfAQM1flk", "notificationPassword": "B5I8W0zaXLBbr6dE", "notificationUsername": "vFXUrJEtc0XkTqZC", "returnUrl": "dBgcQYrtBw2f7cfd", "settings": "tSv2P9Gxo0lrSb1D"}' \
    'eSFz0rREHwWGWNIB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'UpdateAdyenConfig' test.out

#- 353 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    '0y0jX59yF5X1xzey' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'TestAdyenConfigById' test.out

#- 354 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '{"appId": "lWJrNvKlRFeIOal5", "privateKey": "139ds1poYn2c28hY", "publicKey": "jUXTNy1fFdZFpgDZ", "returnUrl": "L5cgPFdfkkemcXh4"}' \
    'pNS6sh71nsTcYAqR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'UpdateAliPayConfig' test.out

#- 355 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'mpQJ4iKsMRzrkq6b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'TestAliPayConfigById' test.out

#- 356 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '{"publicKey": "bxROX48x3z6oqsby", "secretKey": "JVZinLIVPccaYI6l"}' \
    '6fKrVA93qreneWTQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'UpdateCheckoutConfig' test.out

#- 357 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    '0fb8ClHBQXSaPIU1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'TestCheckoutConfigById' test.out

#- 358 UpdateNeonPayConfig
$PYTHON -m $MODULE 'platform-update-neon-pay-config' \
    '{"apiKey": "SAfAfEzm7orhTTcA", "webhookSecretKey": "4tRZdrCvasM0LBo8"}' \
    'pp2WxzCDgXIN2T2y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'UpdateNeonPayConfig' test.out

#- 359 TestNeonPayConfigById
$PYTHON -m $MODULE 'platform-test-neon-pay-config-by-id' \
    '2ghUM22Sodo4xBNE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'TestNeonPayConfigById' test.out

#- 360 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '{"clientID": "56wEz4NNeslnTCls", "clientSecret": "U2sYSfcMmI5rwQFF", "returnUrl": "HJVtc0SoSjcBoYhf", "webHookId": "bT5F3zL27szSOYd9"}' \
    'Y0NpVE2aa5kTg04Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'UpdatePayPalConfig' test.out

#- 361 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'Rdr4bKBKfiq3tQEN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'TestPayPalConfigById' test.out

#- 362 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '{"allowedPaymentMethodTypes": ["j55DMrhcrF1L6pYs", "esFql7XfSkThfq5O", "wxwX51WDxmrewNJa"], "publishableKey": "fvdNvKldM0rekJkW", "secretKey": "WoqwGQqu93mWqYwI", "webhookSecret": "tRTQVKkxYEWAJyif"}' \
    'Vsl4tsCWoX1lSzPY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'UpdateStripeConfig' test.out

#- 363 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'NF01Lahplx2xZlab' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'TestStripeConfigById' test.out

#- 364 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    '{"appId": "LjqUbKYZvrSL9MpX", "key": "egzbRyBVxsaUZTA9", "mchid": "CH16ZXEFNNpDyHgA", "returnUrl": "VhWg8tkRHubWYDMe"}' \
    'jv14bJ1yJTjZ8h4A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'UpdateWxPayConfig' test.out

#- 365 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'c4ud51aru34XxqVe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'UpdateWxPayConfigCert' test.out

#- 366 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'NlhPSGr2GCSBlAc1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'TestWxPayConfigById' test.out

#- 367 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    '{"apiKey": "QqeDAODDXDcBp0Zm", "flowCompletionUrl": "4J2X1YZBUriOMFSl", "merchantId": 52, "projectId": 25, "projectSecretKey": "u34Wp4oAMBx4SopA"}' \
    'gGjVmLARmen8aoql' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'UpdateXsollaConfig' test.out

#- 368 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'm2gZZIIdtBLCiRje' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'TestXsollaConfigById' test.out

#- 369 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT"}' \
    'HYTWfraJoGjzdE2G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'UpdateXsollaUIConfig' test.out

#- 370 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'QueryPaymentProviderConfig' test.out

#- 371 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    '{"aggregate": "NEONPAY", "namespace": "vwmux5X7eWoUz63g", "region": "5ldLNvDsFRxvIWPh", "sandboxTaxJarApiToken": "DHlguiwW43ftI0ab", "specials": ["STRIPE", "CHECKOUT", "WXPAY"], "taxJarApiToken": "a3aQgfShTgH7QU5U", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'CreatePaymentProviderConfig' test.out

#- 372 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'GetAggregatePaymentProviders' test.out

#- 373 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'DebugMatchedPaymentProviderConfig' test.out

#- 374 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'GetSpecialPaymentProviders' test.out

#- 375 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    '{"aggregate": "ADYEN", "namespace": "0HTDvNXyTxvPRnlF", "region": "SQ6v7K73Xi2AB5OY", "sandboxTaxJarApiToken": "FvqKEDfQUOT5Zg2G", "specials": ["WXPAY", "STRIPE", "STRIPE"], "taxJarApiToken": "0Qscn1hnFXSNkph8", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    'XYagYLLaUNG3D8lK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'UpdatePaymentProviderConfig' test.out

#- 376 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'kUzgYxPns7F4XRUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'DeletePaymentProviderConfig' test.out

#- 377 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'GetPaymentTaxConfig' test.out

#- 378 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    '{"sandboxTaxJarApiToken": "iU2cKn41r9o0qDqN", "taxJarApiToken": "egcfIRO7qY6MNSv6", "taxJarEnabled": false, "taxJarProductCodesMapping": {"0nuIBjVZjOjrIUNP": "jErpmdsCqI9mZu9L", "EeOTaHP4LtwjLUYU": "JQk80tPmdgSg2KTH", "1uoBUpdqwNpqsh9j": "EInUNjjzDzEs7bfi"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'UpdatePaymentTaxConfig' test.out

#- 379 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    '9Y5qNyFFoN9kFG7q' \
    'Vot9rEFUcFqi9IXE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'SyncPaymentOrders' test.out

#- 380 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicGetRootCategories' test.out

#- 381 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'DownloadCategories' test.out

#- 382 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'nojjP0c29b1WNB9W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicGetCategory' test.out

#- 383 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'kCyToRi2vfZMlKU7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicGetChildCategories' test.out

#- 384 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'yv9DAnbOd7qQPOKI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicGetDescendantCategories' test.out

#- 385 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicListCurrencies' test.out

#- 386 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'EPICGAMES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'GeDLCDurableRewardShortMap' test.out

#- 387 GetAppleConfigVersion
$PYTHON -m $MODULE 'platform-get-apple-config-version' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'GetAppleConfigVersion' test.out

#- 388 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'GetIAPItemMapping' test.out

#- 389 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'aRoKBxDcndYM9mz3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicGetItemByAppId' test.out

#- 390 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicQueryItems' test.out

#- 391 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'tE3VsEwkafcV7jvy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicGetItemBySku' test.out

#- 392 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'a0krMPGafhhKkgPI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicGetEstimatedPrice' test.out

#- 393 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    '2HTPdp4vXIxOt6Cx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicBulkGetItems' test.out

#- 394 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    '{"itemIds": ["iNDALftVYMBY66nz", "5wiI9UtojzAhVtlX", "b0Ww9cX9qD3up8zS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicValidateItemPurchaseCondition' test.out

#- 395 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'qbSAJ6bSZOsVSW0y' \
    'fhrPlOVRke0Rw0rM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicSearchItems' test.out

#- 396 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'OzAoqZ9f1EMlA0Tg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicGetApp' test.out

#- 397 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'PiaTmgHDc2z6oQw2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicGetItemDynamicData' test.out

#- 398 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'U7bEMvRb14bhXWTQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicGetItem' test.out

#- 399 GetPaymentCustomization
eval_tap 0 399 'GetPaymentCustomization # SKIP deprecated' test.out

#- 400 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    '{"neonPayConfig": {"cancelUrl": "mF3l6HvpzhH0EfWL", "successUrl": "4qJaLzNq81FeQxv1"}, "paymentOrderNo": "WvDbJOO9Ei7svAbi", "paymentProvider": "WXPAY", "returnUrl": "f1R8Jo6PYMB78Pco", "ui": "oWLEHt7SGsO6cJrH", "zipCode": "6H0hqUIDOC2lhvjQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicGetPaymentUrl' test.out

#- 401 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'bxJ8kMyYjTMwxUt8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicGetPaymentMethods' test.out

#- 402 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'Wn0bPEgnVesvMZCU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicGetUnpaidPaymentOrder' test.out

#- 403 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '{"token": "gM3yTN4uuJ6Vj8z7"}' \
    'NX74cqoA0EYfSvI7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'Pay' test.out

#- 404 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'eknvgQgx9Q8w3YQS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicCheckPaymentOrderPaidStatus' test.out

#- 405 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'ALIPAY' \
    '9mKC8Pt64Un3vbUi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'GetPaymentPublicConfig' test.out

#- 406 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'PzqRlG9blKnrHstZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicGetQRCode' test.out

#- 407 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'mSBos9B4FBRgTZf5' \
    'xSoV4NMrEB2tJwa8' \
    'WALLET' \
    'wI71rpGgzgibcIwh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicNormalizePaymentReturnUrl' test.out

#- 408 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    '74WoYm2RpiaZTqwx' \
    'CHECKOUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'GetPaymentTaxValue' test.out

#- 409 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'W1Oq88IVmlOYuPb1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'GetRewardByCode' test.out

#- 410 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'QueryRewards1' test.out

#- 411 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'aUarkc4H54D1OSJ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'GetReward1' test.out

#- 412 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicListStores' test.out

#- 413 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicExistsAnyMyActiveEntitlement' test.out

#- 414 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'cWczEEGO3c34uFml' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 415 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'M5vFocITDTP5pBOk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 416 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'o0gsrX5YmIHaEjuL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 417 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicGetEntitlementOwnershipToken' test.out

#- 418 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    '{"gameId": "7g0PIjLnAoNjzCHC", "language": "lADt_knSN", "region": "kD8LYM65VLZiKm15"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'SyncTwitchDropsEntitlement' test.out

#- 419 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'hez2MgriZ60A9qKA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicGetMyWallet' test.out

#- 420 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'CSJnrZAWDQGJdqaQ' \
    --body '{"epicGamesJwtToken": "6yjAOKmxscQRCmbW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'SyncEpicGameDLC' test.out

#- 421 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'Tm1PRgpzXRHuGgWo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'SyncOculusDLC' test.out

#- 422 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'SnSmEo0dL02zFIdA' \
    --body '{"serviceLabel": 85}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicSyncPsnDlcInventory' test.out

#- 423 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'ICQMUv3sTgdlBfaa' \
    --body '{"serviceLabels": [92, 93]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 424 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    '{"appId": "RVKzwWqYcgoQp44I", "steamId": "wVEXXg779DcEb5nB"}' \
    'VeAEY89xEnoKKlyP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'SyncSteamDLC' test.out

#- 425 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'taGSVNlRTRrauD2s' \
    --body '{"xstsToken": "fxOt0yIgL5CqZtwn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'SyncXboxDLC' test.out

#- 426 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    '2hSKKZvM4WSz7P7y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicQueryUserEntitlements' test.out

#- 427 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    '5q6uDaCx8hxTiqpn' \
    'tZvRypScQ8aIsboq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicGetUserAppEntitlementByAppId' test.out

#- 428 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'QidXJhhgBD6TwYNv' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'PublicQueryUserEntitlementsByAppType' test.out

#- 429 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    'RH2T1hELaFk76mJb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'PublicGetUserEntitlementsByIds' test.out

#- 430 PublicGetUserEntitlementByItemId
eval_tap 0 430 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 431 PublicGetUserEntitlementBySku
eval_tap 0 431 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 432 PublicUserEntitlementHistory
$PYTHON -m $MODULE 'platform-public-user-entitlement-history' \
    'RjfhXvXWtnbIyFuv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'PublicUserEntitlementHistory' test.out

#- 433 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    '556ws3j4fKGtROyx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicExistsAnyUserActiveEntitlement' test.out

#- 434 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'uJkOFydDf9m3LSEj' \
    'LNMoKjXyYTCslAon' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 435 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'KsZdA911KfPQTy8l' \
    'x4YW9P4FFVdYJ2w3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 436 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'OGPS9CdMQW1gop8x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 437 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'EB5Wri70hzuPPRNn' \
    '7bSYv9Fk7PATOx8N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 438 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    '4N4Dg5mDZyNmi9Ne' \
    'e8E16CJURxlwSvm0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserEntitlement' test.out

#- 439 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "options": ["pK4Oh0DUc9D8rncl", "oMb1yETgQxGUEwv8", "hzsmReJ5mzZVaR7d"], "requestId": "mubH0qAuhWzVV19I", "useCount": 81}' \
    'lRlaYwp4MNvBgT09' \
    'Pvx7f7SN0lAsIrtT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'PublicConsumeUserEntitlement' test.out

#- 440 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    '{"requestId": "kAPhRsCrtV0KHq6V", "useCount": 38}' \
    'pmqXtI1ea94zZAdF' \
    'CTO6FC2QUf0Whdcu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'PublicSellUserEntitlement' test.out

#- 441 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 77}' \
    '4saje9BnJ8xXUB2j' \
    'gA8fRXdoImFIj7wm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 441 'PublicSplitUserEntitlement' test.out

#- 442 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    '{"entitlementId": "EGJ3sRDNuaHQZFDy", "metadata": {"operationSource": "INVENTORY"}, "useCount": 53}' \
    'earFrFMIeo9PYRTx' \
    'SprB0BtuiJEqmbaR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'PublicTransferUserEntitlement' test.out

#- 443 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '{"code": "x6F3iux9udWaDYHS", "language": "Eef-XFOV-792", "region": "BJ0JFvU4TSVKe3ye"}' \
    'keHdH8HulMLwKFaD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'PublicRedeemCode' test.out

#- 444 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '{"excludeOldTransactions": false, "language": "YOFy-rRrD_202", "productId": "WrAxnE6M2ryxqcxk", "receiptData": "HbchAPo9rtjQ5kvw", "region": "n03vGAW804TWUV2H", "transactionId": "AG9BYa4uwQ0r4tGU"}' \
    'p00rMLZ1eTfmUwkG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'PublicFulfillAppleIAPItem' test.out

#- 445 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'YQeInkHcPjNEn2se' \
    --body '{"epicGamesJwtToken": "1yYqxystC5YdtXrM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'SyncEpicGamesInventory' test.out

#- 446 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '{"autoAck": true, "autoConsume": true, "language": "CY", "orderId": "piMtnYep4qMEijH0", "packageName": "7e7HJsG6fiR0imQt", "productId": "0JNbgDRBXsG5NNHr", "purchaseTime": 30, "purchaseToken": "oIyM4jQ307TKpWz4", "region": "d2uiESs0ypsuzcbl", "subscriptionPurchase": true}' \
    'Dtn32tNBisbkvUfm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 446 'PublicFulfillGoogleIAPItem' test.out

#- 447 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'hkAHdGDOTSucllEU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 447 'SyncOculusConsumableEntitlements' test.out

#- 448 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'Rtdq3O6BR25zA3Ga' \
    --body '{"currencyCode": "AcY14lwQ2mYznYkM", "price": 0.1382444698277019, "productId": "U0vVreF40rVDDwsR", "serviceLabel": 11}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 448 'PublicReconcilePlayStationStore' test.out

#- 449 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    '{"currencyCode": "m83ei0Y4vfACaZq3", "price": 0.6289527815901883, "productId": "9FhVaHT51CYJCZK9", "serviceLabels": [1, 53, 22]}' \
    'ACBMfO0XbcSowirO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 449 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 450 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '{"appId": "9ad7UJNTw4TVlSOA", "currencyCode": "7hqkUzpJrfvCl5rW", "language": "poY", "price": 0.20892506255061283, "productId": "zO2FoQfKpeRnDp96", "region": "Q4Kc2SuWvtgC60a1", "steamId": "W5NbXGzAcTpSSar2"}' \
    'yACKSgTLLhfpe6fO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 450 'SyncSteamInventory' test.out

#- 451 PublicQueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-public-query-user-third-party-subscription' \
    'EPICGAMES' \
    'sJ2ndqYrqlR22SxG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 451 'PublicQueryUserThirdPartySubscription' test.out

#- 452 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    '{"gameId": "w0BBGpL3uAigOFar", "language": "xtF-rJft", "region": "G992PUNJjyBkLHCJ"}' \
    'w8ZxKr2hhzSgEVDT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 452 'SyncTwitchDropsEntitlement1' test.out

#- 453 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'chtwhQp2LAjJuLgI' \
    --body '{"currencyCode": "QF5kRUjrmuhxZB5A", "price": 0.1555218214968147, "productId": "ldy64tvczW9hkNRJ", "xstsToken": "KsIQO6Rf71ujkaWD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 453 'SyncXboxInventory' test.out

#- 454 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'qUU627KpJnSnPzwl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 454 'PublicQueryUserOrders' test.out

#- 455 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '{"currencyCode": "grOizTeAjnOyPNIV", "discountCodes": ["PxuMiEWl2YYuziEA", "w3l4lq6EBsgRIweA", "JUroJ8CWZayKnRlY"], "discountedPrice": 69, "ext": {"eUFWrh0jQ4KIS0c5": {}, "TxMgqbcYaXxQuiMi": {}, "8sc8nnqOjusG91vB": {}}, "itemId": "xBCUBoebiWj66Ddv", "language": "VLG_iNRJ", "price": 20, "quantity": 99, "region": "TjPlHf8VEuKiETik", "returnUrl": "SvZCHvMYNoHqAWl8", "sectionId": "2R5St1JUUoBHxMWn"}' \
    'M14FYcClCU4wN753' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 455 'PublicCreateUserOrder' test.out

#- 456 PublicPreviewOrderPrice
$PYTHON -m $MODULE 'platform-public-preview-order-price' \
    '{"currencyCode": "otU8VIKaNC4jAc6z", "discountCodes": ["RSjODCVkXOSEqmrC", "ZYFC0mjfQGtP1pKt", "lm5hUGLvZiKzCHyQ"], "discountedPrice": 36, "itemId": "Js3MYpXMKKRnnXfC", "price": 64, "quantity": 18}' \
    'KNLEWSf3xcBSJmVJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 456 'PublicPreviewOrderPrice' test.out

#- 457 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'zcCB0Zx2kIBmEY9A' \
    'GikaZJ2fla7ViPnP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserOrder' test.out

#- 458 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'IspBwL7FLtMU7AAR' \
    'IZojppBuCblNaT5z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 458 'PublicCancelUserOrder' test.out

#- 459 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'rESuLoU4WFfjqhTf' \
    '020WVESn3Lq3vc3O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 459 'PublicGetUserOrderHistories' test.out

#- 460 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'NzvBgKDPEX7ZirJa' \
    'KrszETGuWESPDCrs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 460 'PublicDownloadUserOrderReceipt' test.out

#- 461 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'w8wGhpJWYgTBMAqn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 461 'PublicGetPaymentAccounts' test.out

#- 462 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'V7TlTDpCts9eLzVb' \
    'card' \
    'wrWclMIjyB9r93Vg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 462 'PublicDeletePaymentAccount' test.out

#- 463 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'Ac9QZ9C2WWUGboRh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 463 'PublicListActiveSections' test.out

#- 464 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'myUZ7K1izC3Lzjpb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 464 'PublicQueryUserSubscriptions' test.out

#- 465 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    '{"currencyCode": "ZYwmB6mjB4WLkFEb", "itemId": "z1aaXClnbKhW1gHj", "language": "SQIu_144", "region": "3oVzLj603LYJG09e", "returnUrl": "H9Vq6reV8sJenmhe", "source": "K5KKqE1aHxZgS8uJ"}' \
    'AsbAxWxy80okxaYa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 465 'PublicSubscribeSubscription' test.out

#- 466 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'NSXzxd2oRSinjIKU' \
    '2N42M5XJnyM5TvM5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 466 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 467 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'NJ9UFoefZdeND5Ea' \
    'hSZeodABnaVuUHHB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 467 'PublicGetUserSubscription' test.out

#- 468 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'tfHmq5d54tGJLHnn' \
    'QAM0DREcq6d87tbC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 468 'PublicChangeSubscriptionBillingAccount' test.out

#- 469 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '{"immediate": false, "reason": "xGCZTRsbLMecwQkE"}' \
    '2St3jReFAEQ1wUcm' \
    'mNn9QvtiE6T5Ro5O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 469 'PublicCancelSubscription' test.out

#- 470 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'B4S56HA4d8Wj62EG' \
    'WzEbs46rc22tQQij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserSubscriptionBillingHistories' test.out

#- 471 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    '2Hme0GGfP6uytyYg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 471 'PublicListViews' test.out

#- 472 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'ZsusP2SPDjVIfftS' \
    'xnreb8TQnxnon3dB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 472 'PublicGetWallet' test.out

#- 473 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    '05wGQYx86tv0QClm' \
    'xWgu3QfhTr7idEkK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 473 'PublicListUserWalletTransactions' test.out

#- 474 PublicGetMyDLCContent
$PYTHON -m $MODULE 'platform-public-get-my-dlc-content' \
    'STEAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 474 'PublicGetMyDLCContent' test.out

#- 475 QueryFulfillments
$PYTHON -m $MODULE 'platform-query-fulfillments' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 475 'QueryFulfillments' test.out

#- 476 QueryItemsV2
$PYTHON -m $MODULE 'platform-query-items-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 476 'QueryItemsV2' test.out

#- 477 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 477 'ImportStore1' test.out

#- 478 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'nDGue6g9jqZCmyvD' \
    --body '{"itemIds": ["6hehEvadSH1guIXp", "IMMb5aCPbxlBpLPz", "m0ZpTtsmzJtuOWKZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 478 'ExportStore1' test.out

#- 479 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    '{"entitlementCollectionId": "OaSMJHAxVRHDzHpH", "entitlementOrigin": "Twitch", "metadata": {"665Va0hLs3hBUqY3": {}, "Yu7hr4BXCjFsJCGW": {}, "DLfbEBX1fDFq8rcY": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "270K70e3tmMl0aJw", "namespace": "JFaCvge5OzI8XNrS"}, "item": {"itemId": "x9JCxN4prJ1YNwel", "itemName": "ndOCI9YnUiShlx9P", "itemSku": "k08ti5dm4vsmWwxe", "itemType": "V5ju6lVC5woVY5O6"}, "quantity": 92, "type": "CURRENCY"}, {"currency": {"currencyCode": "lfNRSaYyKg9YnuBS", "namespace": "XnOHRbF4YesbUpxG"}, "item": {"itemId": "fZJIyifvwmr3YdfX", "itemName": "LG9siT3PGKK823NQ", "itemSku": "r5vYDp16dqn25YYa", "itemType": "UnMns2rAgvMe8884"}, "quantity": 60, "type": "CURRENCY"}, {"currency": {"currencyCode": "t7OWinIu82m9kXRK", "namespace": "vyQzliANA50CJxHu"}, "item": {"itemId": "5PfEPcGntuS4L5Cj", "itemName": "iqCS4e1g0qaRNKlY", "itemSku": "RZvjD4HQB0YyrKNt", "itemType": "7vK3ElLq6qbXSAmG"}, "quantity": 25, "type": "CURRENCY"}], "source": "PURCHASE", "transactionId": "HafpdFCVQ33tE9ZM"}' \
    'Z7dDUb3xQHAKaroE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 479 'FulfillRewardsV2' test.out

#- 480 FulfillItems
eval_tap 0 480 'FulfillItems # SKIP deprecated' test.out

#- 481 RetryFulfillItems
eval_tap 0 481 'RetryFulfillItems # SKIP deprecated' test.out

#- 482 RevokeItems
eval_tap 0 482 'RevokeItems # SKIP deprecated' test.out

#- 483 V2PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-v2-public-fulfill-apple-iap-item' \
    'L6WcEsfkqADxDJek' \
    --body '{"transactionId": "vCkzUk7CFpTd1Fy4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 483 'V2PublicFulfillAppleIAPItem' test.out

#- 484 FulfillItemsV3
$PYTHON -m $MODULE 'platform-fulfill-items-v3' \
    '{"items": [{"duration": 13, "endDate": "1971-04-10T00:00:00Z", "entitlementCollectionId": "swSqo64vyAZWdK1m", "entitlementOrigin": "Oculus", "itemId": "Riz5qKt4QbzYc1vS", "itemSku": "zFONRBPloB0ASE8U", "language": "Jr7JwsZBUsRaw0PY", "metadata": {"6G9sLHzVEFhnhT9r": {}, "EFK3sHMoD0LY4fDR": {}, "rTTMj0kVB2KgmSqp": {}}, "orderNo": "xVMx6QY29ePH3F68", "origin": "Other", "quantity": 71, "region": "w79F27fof6S1Rehi", "source": "IAP", "startDate": "1997-04-15T00:00:00Z", "storeId": "Z7d9vk8P3v6DcFUn"}, {"duration": 0, "endDate": "1998-11-19T00:00:00Z", "entitlementCollectionId": "vw4uhVCqrs11e0iP", "entitlementOrigin": "System", "itemId": "2k23rtJU0TZTwgZL", "itemSku": "JPddQRq4snlpfQTa", "language": "0wBlJwb8gc7EIBJI", "metadata": {"KoubLJP5UIfhGfCH": {}, "Q5GTdjvw8KQZ00gJ": {}, "M1CfnjdHJX3yCxhk": {}}, "orderNo": "o4vfBfr53TVizk09", "origin": "GooglePlay", "quantity": 14, "region": "yHgSbImHW11IEk63", "source": "REWARD", "startDate": "1984-05-04T00:00:00Z", "storeId": "JpaYZ5XmkLfftq8T"}, {"duration": 39, "endDate": "1988-11-15T00:00:00Z", "entitlementCollectionId": "UMASaXxaUHbPfHkA", "entitlementOrigin": "System", "itemId": "fLc0rovY832Umv7u", "itemSku": "1YlkQNEVsJzUPCRa", "language": "m34YuUk280BxAxex", "metadata": {"ZB4EErArsCARmVlN": {}, "fne35Jx8S9YCiABO": {}, "EkZ1hv7zx2tjZUmB": {}}, "orderNo": "7W0EhLgAiPA3yIE2", "origin": "IOS", "quantity": 51, "region": "RHDV6KTBcyqAgjLh", "source": "REDEEM_CODE", "startDate": "1985-05-17T00:00:00Z", "storeId": "V40Swjryqo0RU634"}]}' \
    '6MJE2Z5gvfvhJoQ6' \
    'KTnc70J3JNzhUB7B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 484 'FulfillItemsV3' test.out

#- 485 RetryFulfillItemsV3
$PYTHON -m $MODULE 'platform-retry-fulfill-items-v3' \
    'aWaCv0yipDxA1dpe' \
    'hk0z89ChLggpl5I3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 485 'RetryFulfillItemsV3' test.out

#- 486 RevokeItemsV3
$PYTHON -m $MODULE 'platform-revoke-items-v3' \
    'N3i0llxVU5WZTOvW' \
    '4MiVum8HuuXKL0kw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 486 'RevokeItemsV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
