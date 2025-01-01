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
platform-grant-entitlements '{"entitlementGrantList": [{"collectionId": "hOrHflIOd6X3viLv", "endDate": "1980-05-08T00:00:00Z", "grantedCode": "Ek4mTIpUA9gxo8SV", "itemId": "38nEhoXmM2W7l6jH", "itemNamespace": "MA2rG3nakopAywel", "language": "sQd-490", "metadata": {"0NqoTow0qiOiC4j0": {}, "iktm0ZPLkLOsp0LZ": {}, "5njN86Hl8kUXzt6b": {}}, "origin": "Epic", "quantity": 5, "region": "9lvccKMLhrTrcBE2", "source": "REWARD", "startDate": "1982-06-11T00:00:00Z", "storeId": "rAejcq2LgkQuaS7R"}, {"collectionId": "Bx3vim02jBOxrZDy", "endDate": "1982-05-10T00:00:00Z", "grantedCode": "qx8CzPML52faXUr9", "itemId": "Sk4lq2faBcAXXKlh", "itemNamespace": "vyH8paOJtxqMPpcV", "language": "tX", "metadata": {"ncceIZSwgAIkgzh4": {}, "pTU0Am4DZhl0bQxF": {}, "J3sWCqQpQ2FbKPFM": {}}, "origin": "Playstation", "quantity": 24, "region": "cMSQ4qfAacR0LgB5", "source": "REDEEM_CODE", "startDate": "1987-08-15T00:00:00Z", "storeId": "Xvjcu2s6w3VifnKq"}, {"collectionId": "mTSoGH1XEfY6QAYn", "endDate": "1996-12-15T00:00:00Z", "grantedCode": "Q5UBEU1QAOHfZiGh", "itemId": "xOdcuDXSxSc3aZPV", "itemNamespace": "87pna08gxefTYKhu", "language": "HAE-oxnY_de", "metadata": {"6ePeN8i4GrFES9z7": {}, "xueHpATHccee9GXh": {}, "KcjmSEwdrkEnnqKz": {}}, "origin": "System", "quantity": 74, "region": "sLfYalUlfwEQKjU7", "source": "GIFT", "startDate": "1980-09-29T00:00:00Z", "storeId": "fF3TQN0OcNDLr36v"}], "userIds": ["LTyU8OhgfY9JQYGF", "4bYXEcENx9xZlAch", "zohZyjMQAg5mPYhr"]}' --login_with_auth "Bearer foo"
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
platform-create-item '{"appId": "2Qd2JzRbkF2I03dI", "appType": "DLC", "baseAppId": "CnnZxF8CmQr17W65", "boothName": "br34rBBN9tU6TDm5", "categoryPath": "GloFSKWM1eym5ydC", "clazz": "6p25xCWTqUOYZENJ", "displayOrder": 78, "entitlementType": "DURABLE", "ext": {"ZQxPRXH7uxBJEECQ": {}, "E1li3Bg7Jxc9pUnZ": {}, "mvhidwCkZwqjYLfT": {}}, "features": ["jF1c0W338HS6CBgV", "VzW0CpoBCbyJsF5I", "iCO1NDBvQvRPnAz4"], "flexible": true, "images": [{"as": "JbEGTUj7YjERL1rE", "caption": "QG02zccA8wvLsWUN", "height": 7, "imageUrl": "fCjOuSYht83AdvBa", "smallImageUrl": "agTiRJ8daGTVX3Bb", "width": 31}, {"as": "jlz5IfHgKjI9mwJS", "caption": "rN8jkIykR2zbaI6P", "height": 61, "imageUrl": "89AwEw1HO4FnKtx4", "smallImageUrl": "XLKAmlDr19uJ3nq6", "width": 97}, {"as": "nnX2poMfZ1hDHtbh", "caption": "4HtMlFgvh2Dp2Soi", "height": 70, "imageUrl": "pnQ5xF9wwbvMZyeD", "smallImageUrl": "eRnVfPUa6xVVBcq3", "width": 45}], "inventoryConfig": {"customAttributes": {"yCA6jEtcqsnzoVIL": {}, "jkwW61duF87aUyrd": {}, "t4XSpWBAetsanzqP": {}}, "serverCustomAttributes": {"8oxfrtbECD1CYPwa": {}, "iBAxfYL8Avt70ZUT": {}, "2fSk3LL0calqxEew": {}}, "slotUsed": 42}, "itemIds": ["QmJIOq9dP5szG71u", "tjsQ4CrRb9gUCeVz", "7fWbZIdhevfZvyV7"], "itemQty": {"AcodcZwKjYDdmJOl": 53, "HIi1CMgKAOG5iDcC": 89, "jq7sn8yreciPLfkV": 50}, "itemType": "LOOTBOX", "listable": true, "localizations": {"JsbGpO6JgehDJxEN": {"description": "7JlZc8LMq1o2jZWu", "localExt": {"4yA3r0u4q1bTHXIj": {}, "fJKyFlM0u1uuoVdn": {}, "9yVoSlKNchPHNL4X": {}}, "longDescription": "3LLaGPGdqLE8Sohh", "title": "huiTnJarYYkHBDdS"}, "zBXdxapwhd5IQYBQ": {"description": "uxLvPuWYvE3fsNy9", "localExt": {"Z9OhxXvCp9y7fLD2": {}, "qfCXnlUnqxT1WsRN": {}, "MZcA92hzC7MNa8vV": {}}, "longDescription": "e4MHX6AgMep90Ayy", "title": "UJyAK5PRMRMwdvl0"}, "hv6g62GxBW2tQF5t": {"description": "kTjgJaMYvNQOsDa4", "localExt": {"bkcgepqtxjbrztee": {}, "7QLTGAak7Kaol01D": {}, "K97D2xnik42miteR": {}}, "longDescription": "5eQAe1rzmmgqBPRm", "title": "d6mO4oI8KDqebm83"}}, "lootBoxConfig": {"rewardCount": 36, "rewards": [{"lootBoxItems": [{"count": 67, "duration": 1, "endDate": "1991-11-16T00:00:00Z", "itemId": "y2pgSGSUOK68eqGJ", "itemSku": "tWf1Ybgg8rdwY9bm", "itemType": "rvHmO07KNqX9LM2I"}, {"count": 46, "duration": 26, "endDate": "1986-06-06T00:00:00Z", "itemId": "sdOGBXBwnzDX8v3x", "itemSku": "gC1Ge9PdbTTAJ2Gp", "itemType": "1r0sVZ6LJAOddIL2"}, {"count": 23, "duration": 6, "endDate": "1974-12-11T00:00:00Z", "itemId": "mDdUIoiIJFNxuNOm", "itemSku": "USWw18T1IxVWCxdv", "itemType": "PL9e4P01vxP8xj1L"}], "name": "yEirURERnEMzpImW", "odds": 0.9435893525500683, "type": "REWARD", "weight": 31}, {"lootBoxItems": [{"count": 19, "duration": 7, "endDate": "1984-07-05T00:00:00Z", "itemId": "HyCK5tNanGBrkzUv", "itemSku": "ck3xTtmOFMebS4Ad", "itemType": "lNzwog2IhErkNhNc"}, {"count": 62, "duration": 29, "endDate": "1985-03-20T00:00:00Z", "itemId": "WwchW6zL9SkbLlrN", "itemSku": "XnGanMazb8jvRWen", "itemType": "URH48aJuALEcSqcE"}, {"count": 38, "duration": 88, "endDate": "1981-09-02T00:00:00Z", "itemId": "yQ9ssuHdGmxncCEr", "itemSku": "0KcgeqzGbruNB72H", "itemType": "HMkjzyBB4UFKiaoV"}], "name": "0VOem2yqPsMFxKyb", "odds": 0.6630105945591638, "type": "PROBABILITY_GROUP", "weight": 2}, {"lootBoxItems": [{"count": 41, "duration": 37, "endDate": "1993-10-23T00:00:00Z", "itemId": "6x9cLJ1APnNlsa2b", "itemSku": "RBr27fVMWuAfDqLM", "itemType": "R919IZPKOKiAVQXX"}, {"count": 83, "duration": 24, "endDate": "1998-05-11T00:00:00Z", "itemId": "q2OspCZbt3Uta5I0", "itemSku": "uGcL1koyHjCH5olY", "itemType": "LETRpABAmO2EGvJ4"}, {"count": 95, "duration": 56, "endDate": "1990-07-24T00:00:00Z", "itemId": "S93yOxNInDByhnol", "itemSku": "uO6ti0QP2ssiJ66O", "itemType": "zOj84O6tgohjtC7b"}], "name": "zjPpucddXJ5zifF8", "odds": 0.38806756120452723, "type": "REWARD", "weight": 63}], "rollFunction": "CUSTOM"}, "maxCount": 57, "maxCountPerUser": 28, "name": "YtzB0B4CxyQrUpIF", "optionBoxConfig": {"boxItems": [{"count": 43, "duration": 97, "endDate": "1992-12-23T00:00:00Z", "itemId": "77KeRWdECaFGzfZ2", "itemSku": "hxcJ2Fnemn7M23Sz", "itemType": "Uo4hNBDh9ZFP1OW0"}, {"count": 26, "duration": 5, "endDate": "1996-10-16T00:00:00Z", "itemId": "OErQPS4VsRoYIK69", "itemSku": "yg9ADCGiXaLs2xjH", "itemType": "kinOD975nARHCmhN"}, {"count": 68, "duration": 83, "endDate": "1993-05-12T00:00:00Z", "itemId": "uqIHsxvaUoXDmwWs", "itemSku": "ukxncuD3QxCXMd00", "itemType": "YBWCaVVmM45mfIZs"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 20, "fixedTrialCycles": 25, "graceDays": 91}, "regionData": {"LDIQch4IjDq9aT3q": [{"currencyCode": "ZyI0rYsWucAkXsVJ", "currencyNamespace": "bXi7eRZa7WwIc895", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1997-05-14T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1997-08-24T00:00:00Z", "expireAt": "1981-06-01T00:00:00Z", "price": 39, "purchaseAt": "1971-01-14T00:00:00Z", "trialPrice": 95}, {"currencyCode": "0U4pH16NUsVY21NV", "currencyNamespace": "Is7NRen2Y3Ns0QJQ", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1971-02-16T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1992-07-17T00:00:00Z", "expireAt": "1990-06-07T00:00:00Z", "price": 84, "purchaseAt": "1992-02-11T00:00:00Z", "trialPrice": 87}, {"currencyCode": "ds1BYx0EaURydf8Z", "currencyNamespace": "yyZeHAWGgJUbUJRM", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1976-09-04T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1994-02-17T00:00:00Z", "expireAt": "1992-04-04T00:00:00Z", "price": 2, "purchaseAt": "1971-09-19T00:00:00Z", "trialPrice": 95}], "7gHPTPQbvLt2NRqJ": [{"currencyCode": "GIKzLyH1y72L13Or", "currencyNamespace": "nyx34luLdvtsTKXM", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1975-02-09T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1989-02-16T00:00:00Z", "expireAt": "1986-02-23T00:00:00Z", "price": 86, "purchaseAt": "1983-06-24T00:00:00Z", "trialPrice": 11}, {"currencyCode": "xZfAcNg14Ws8TIP1", "currencyNamespace": "LKiFQoLDvumfqrgS", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1978-01-19T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1989-03-02T00:00:00Z", "expireAt": "1994-08-22T00:00:00Z", "price": 4, "purchaseAt": "1996-11-19T00:00:00Z", "trialPrice": 70}, {"currencyCode": "dN1MGRXBJ6mVV7JS", "currencyNamespace": "9qjNLwvI8JdiY3RR", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1975-04-03T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1992-04-09T00:00:00Z", "expireAt": "1972-12-04T00:00:00Z", "price": 18, "purchaseAt": "1987-04-17T00:00:00Z", "trialPrice": 65}], "pjS2DRfGt9GlyZVQ": [{"currencyCode": "4X67tPZSTpPq3xjr", "currencyNamespace": "ElvvDgw0ag7kSWE0", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1996-04-05T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1987-10-06T00:00:00Z", "expireAt": "1991-06-14T00:00:00Z", "price": 8, "purchaseAt": "1990-08-17T00:00:00Z", "trialPrice": 35}, {"currencyCode": "6ItxDT8p4n4XCFkD", "currencyNamespace": "1AJLCwszbZxuHSgD", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1991-05-29T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1998-03-18T00:00:00Z", "expireAt": "1993-04-26T00:00:00Z", "price": 97, "purchaseAt": "1987-09-17T00:00:00Z", "trialPrice": 35}, {"currencyCode": "bL2635KbtZTGJpqg", "currencyNamespace": "l2IzNXGTuQPIDpor", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1971-04-15T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1980-11-04T00:00:00Z", "expireAt": "1974-11-26T00:00:00Z", "price": 81, "purchaseAt": "1994-07-21T00:00:00Z", "trialPrice": 92}]}, "saleConfig": {"currencyCode": "6QIVC9Mfuc8VOsnm", "price": 27}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "VljdWYmELe74p38v", "stackable": true, "status": "ACTIVE", "tags": ["28XejRF94NIY9nMr", "BZo0lNUBDShHD32v", "2B4vEgj3HOmhcWm4"], "targetCurrencyCode": "vL28FPwTiXfLcxDC", "targetNamespace": "9Ynd02mECIQhfIhH", "thumbnailUrl": "tADUQ9zimQTQT95p", "useCount": 64}' 'ZDhutDM6BqguqD5x' --login_with_auth "Bearer foo"
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
platform-update-item '{"appId": "MEtgKuiGTYgwWv5X", "appType": "DLC", "baseAppId": "TajpwHITGeHTnqRb", "boothName": "zBB9ZFgJbQ3Fj1um", "categoryPath": "x4ItzkMJ7cudf4r9", "clazz": "16GPrhn2etVIQvRk", "displayOrder": 86, "entitlementType": "DURABLE", "ext": {"J41U4ooQ980ywmg1": {}, "pWpWit1QC7FKe0fn": {}, "HUlmU1unGKM0tgfe": {}}, "features": ["gW596FwBNrFXt3TA", "uKBwBcD12ae6r3hH", "Wy47bbwMI4gGmvK9"], "flexible": true, "images": [{"as": "JctAdxyZVKHA9Dka", "caption": "SOWgtg8yw8lHEbVD", "height": 47, "imageUrl": "oKMRMG541PAiNjUL", "smallImageUrl": "sx4SnKNXLMUaDSww", "width": 88}, {"as": "Q98JH4n0JtgqzZv5", "caption": "kVu4S95mj8YRvae4", "height": 11, "imageUrl": "3N7WNMYIfcDKbLu8", "smallImageUrl": "pnK34oA1keYXJvtg", "width": 14}, {"as": "FTVYelIlGJg9wdc8", "caption": "bihhWjfZpfcFBUsn", "height": 27, "imageUrl": "gl7H1sdH2RIJz1eI", "smallImageUrl": "7Q5pu9PutLf6IrvZ", "width": 29}], "inventoryConfig": {"customAttributes": {"TQ9P7sYLDWAJOA75": {}, "K4BYJ2fkqYJoF2FI": {}, "3vyyqRzc20O7FdsJ": {}}, "serverCustomAttributes": {"P1G9tyBTfERXdvgD": {}, "1Qf7Ot2DkUt3yexZ": {}, "BRvxYnEBhXtAVxCd": {}}, "slotUsed": 38}, "itemIds": ["meTrT7cF9oVCh89w", "NOkKYssVejcL3kR3", "hCGNgaJmuALlMQl9"], "itemQty": {"RLrthbfp0VgweLlT": 55, "sY3SsTnDQY7kKU2u": 15, "6Q4veujxtyQENvJr": 57}, "itemType": "APP", "listable": true, "localizations": {"YPK8IxrSZuxWl0Je": {"description": "4fJIyFAm3DQht4Jw", "localExt": {"nPS2urJqerobWMZG": {}, "VL5KLTxahWlS6XdB": {}, "aKSLCgOOPXM6XTUh": {}}, "longDescription": "2dJ90yqHDNacl4F9", "title": "G6Dl5TFwBY6HKXAb"}, "lkT8VGgSH8MGZGwi": {"description": "Vj7eDTaka9ABfX1I", "localExt": {"ByPEOuPhGspRi3bh": {}, "PQvBBJI5Jxytpcub": {}, "N4AUUPFPscZsXeJO": {}}, "longDescription": "D4DMtqfIGiGJovgW", "title": "SRxZ8N4UQ2fg3V1o"}, "2x0hL5DuBDqMyIAz": {"description": "Wze94MEdJFAy2JTl", "localExt": {"lJkRGB8jqJEd6eqq": {}, "sBVyONV0JRtozI0j": {}, "pliCFQ6WgJpGPigd": {}}, "longDescription": "c5VyC4qvWjVac1cQ", "title": "vSxgTNIUzxDgBlIb"}}, "lootBoxConfig": {"rewardCount": 41, "rewards": [{"lootBoxItems": [{"count": 22, "duration": 52, "endDate": "1997-04-08T00:00:00Z", "itemId": "u4htrsf8eIFSovTG", "itemSku": "XaMsq8ePN1oco2jx", "itemType": "8Upe8SjMvpqM8pug"}, {"count": 14, "duration": 56, "endDate": "1991-09-06T00:00:00Z", "itemId": "l9iCqfW6rqGOQny4", "itemSku": "ij4ysYPonb59gQff", "itemType": "kNOmubxEJr2qEAuJ"}, {"count": 2, "duration": 32, "endDate": "1982-09-06T00:00:00Z", "itemId": "Srcbc4LWfKaY5c1t", "itemSku": "P5TDuI5f6m4KC07C", "itemType": "nsZe32hqEcB1ExYM"}], "name": "Bb3ckvoaJYdMqGeg", "odds": 0.032335751368468, "type": "PROBABILITY_GROUP", "weight": 28}, {"lootBoxItems": [{"count": 89, "duration": 9, "endDate": "1983-12-28T00:00:00Z", "itemId": "FS0Ed7gTM5AVrtBQ", "itemSku": "iDTcNnZa6Zuxk6u6", "itemType": "HXXdiC9ZDj4E4mv1"}, {"count": 91, "duration": 64, "endDate": "1994-11-17T00:00:00Z", "itemId": "s7Nf95lGlPrf6obI", "itemSku": "dnI6Ag7eUYcYJ4Qz", "itemType": "XCmqr6gmPGaHP5SV"}, {"count": 85, "duration": 76, "endDate": "1982-06-05T00:00:00Z", "itemId": "RLiDi0mNHb6Lx8eq", "itemSku": "8SGNwEQO8dYXvBSY", "itemType": "vJBwb6CjZUMRf2VJ"}], "name": "etWsokvx3BHuTEcz", "odds": 0.2824451358060015, "type": "REWARD", "weight": 75}, {"lootBoxItems": [{"count": 37, "duration": 20, "endDate": "1989-12-17T00:00:00Z", "itemId": "5tj64gV7nmDk29mc", "itemSku": "jSuz9vbNStqPtQmQ", "itemType": "N6eKAGiZFCftT0RW"}, {"count": 62, "duration": 58, "endDate": "1972-03-20T00:00:00Z", "itemId": "jWYrnulxcCKAru8p", "itemSku": "OaAVLDB4k3Jwkdax", "itemType": "R7GJpYmuYCPG181q"}, {"count": 83, "duration": 67, "endDate": "1993-08-05T00:00:00Z", "itemId": "LkP5hc2Fh04JTsqD", "itemSku": "TynCewqJligLlRxO", "itemType": "elKykICRxF6HtlER"}], "name": "2txs4qrNARATn6KX", "odds": 0.6536238695411208, "type": "REWARD", "weight": 40}], "rollFunction": "CUSTOM"}, "maxCount": 74, "maxCountPerUser": 57, "name": "bbQGERMNpqWb51y5", "optionBoxConfig": {"boxItems": [{"count": 90, "duration": 7, "endDate": "1995-07-23T00:00:00Z", "itemId": "BqQsBpCJBIXLGYcw", "itemSku": "WVRK6UKk5ozrXA4H", "itemType": "ZHNyq9odanhR1Zrm"}, {"count": 35, "duration": 39, "endDate": "1995-02-23T00:00:00Z", "itemId": "aauufxkPHElug48T", "itemSku": "gfNu0rqXUOyToLPI", "itemType": "REGIKlJt3EP9kKwk"}, {"count": 63, "duration": 20, "endDate": "1991-05-17T00:00:00Z", "itemId": "Q8VOHGwbADMfuOmh", "itemSku": "0lciRhVZ2DeoODXM", "itemType": "zLSrzoiBnYi5UWs3"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 23, "fixedTrialCycles": 86, "graceDays": 9}, "regionData": {"lXNaUNgdY2vfJuje": [{"currencyCode": "5cPnmGjTvYa5Pqx1", "currencyNamespace": "K7qcAoijBPAp6EPb", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1991-12-01T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1981-07-10T00:00:00Z", "expireAt": "1991-05-18T00:00:00Z", "price": 88, "purchaseAt": "1986-06-07T00:00:00Z", "trialPrice": 76}, {"currencyCode": "s2yxf6MLZJ2jZfZb", "currencyNamespace": "pTJezzriCDWXT59S", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1998-08-18T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1992-07-06T00:00:00Z", "expireAt": "1996-10-24T00:00:00Z", "price": 61, "purchaseAt": "1987-01-15T00:00:00Z", "trialPrice": 100}, {"currencyCode": "4OMIzvTScdbKBsAy", "currencyNamespace": "JMz4ILNDvhB4Eoes", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1991-12-28T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1989-08-21T00:00:00Z", "expireAt": "1973-12-24T00:00:00Z", "price": 30, "purchaseAt": "1971-07-29T00:00:00Z", "trialPrice": 7}], "TPwD3jxF7vxRUY0i": [{"currencyCode": "lrNoFT98SgtJd4Z5", "currencyNamespace": "f8nfaKqdZFLbZEHx", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1986-02-07T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1996-02-02T00:00:00Z", "expireAt": "1971-12-26T00:00:00Z", "price": 38, "purchaseAt": "1994-01-28T00:00:00Z", "trialPrice": 13}, {"currencyCode": "7r1SQw80JfMpPrSq", "currencyNamespace": "YypRUnq5o4ETeCUY", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1972-03-09T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1974-05-13T00:00:00Z", "expireAt": "1980-03-03T00:00:00Z", "price": 99, "purchaseAt": "1983-07-08T00:00:00Z", "trialPrice": 98}, {"currencyCode": "w8OQ13t3uTw6zQuo", "currencyNamespace": "ZcXQpoTOxe8y1jor", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1985-02-23T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1982-07-08T00:00:00Z", "expireAt": "1989-05-18T00:00:00Z", "price": 37, "purchaseAt": "1985-12-27T00:00:00Z", "trialPrice": 74}], "RLee3TcJ7DQIi45a": [{"currencyCode": "CDHN9mVug2zkVf6K", "currencyNamespace": "gpKOcn3tMD9UT67b", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1993-06-14T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1974-05-07T00:00:00Z", "expireAt": "1987-09-24T00:00:00Z", "price": 61, "purchaseAt": "1974-01-06T00:00:00Z", "trialPrice": 98}, {"currencyCode": "6wUQvehKqwCh86Xm", "currencyNamespace": "RkCEcfHDCdl59Wp9", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1999-07-12T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1985-01-24T00:00:00Z", "expireAt": "1987-06-26T00:00:00Z", "price": 44, "purchaseAt": "1973-03-16T00:00:00Z", "trialPrice": 22}, {"currencyCode": "DdK6uvg8f2cIoByk", "currencyNamespace": "9fxtvsgeAxo57nKA", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1979-04-10T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1977-01-14T00:00:00Z", "expireAt": "1989-01-06T00:00:00Z", "price": 71, "purchaseAt": "1980-06-16T00:00:00Z", "trialPrice": 75}]}, "saleConfig": {"currencyCode": "BNsi4giR9434WpKK", "price": 8}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "UqVxcSthrpnMUBsn", "stackable": false, "status": "ACTIVE", "tags": ["mQeEweoBHTdwAk7Z", "KKAo9MM2Cqm84jVi", "QnbqY1cQwVEtAr5k"], "targetCurrencyCode": "9kIpqgrzpUkNOBWy", "targetNamespace": "dXV0Fi02aFr8CDap", "thumbnailUrl": "jwNOl4k8rVNrm8dr", "useCount": 44}' 'KDJiWxQBwaS7rDBf' '2S54phbdyGDt47f9' --login_with_auth "Bearer foo"
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
platform-update-item-purchase-condition '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 91, "code": "0GGbT4Hf2PPKOldk", "comparison": "excludes", "name": "vi9kg3rMIzNmhJTN", "predicateType": "SeasonPassPredicate", "value": "q86IaDFjjx6uZerW", "values": ["btwTX9gNRByjbE8l", "OLAfTXKLzbrddqcK", "La7LevxNHOSEhQRZ"]}, {"anyOf": 71, "code": "nTgtgW33wDwD9RKv", "comparison": "isLessThanOrEqual", "name": "4yFQFdrRoM6FoqCY", "predicateType": "SeasonTierPredicate", "value": "hOqG5KDdUvk0LEi2", "values": ["sCR5rVsyfcH7WjP7", "NQepUTGhwlY4lPzl", "6Ls7mjRxNmvvNtjJ"]}, {"anyOf": 69, "code": "VeVskqeUB7RSayqG", "comparison": "includes", "name": "j4ro5B19VE838c7O", "predicateType": "StatisticCodePredicate", "value": "ebRA09rW8i8krFWJ", "values": ["rZO8GuoXNSoVEBG7", "he03coRFok5d3AyG", "VbBPUWipz9C05Yab"]}]}, {"operator": "and", "predicates": [{"anyOf": 23, "code": "FCK5ucTFsAFzaO3y", "comparison": "isLessThan", "name": "pA3KMxBlrRytER1q", "predicateType": "EntitlementPredicate", "value": "EdLucrtO2gCQD057", "values": ["oCEkRdo6qHYIZWnX", "VAw4v3q6JRHcn7Ka", "DrDlgC2nzS9SiGUj"]}, {"anyOf": 33, "code": "qiBUI9esSsXegSEh", "comparison": "isGreaterThanOrEqual", "name": "mqWsGA76yxi0QzZW", "predicateType": "EntitlementPredicate", "value": "2A9VOA8H9VeHv0L2", "values": ["xs1WId9WlalqshF9", "Acm960EYQEuGJVl8", "Rh2o7GCQGPCxwEdk"]}, {"anyOf": 51, "code": "K30EX0FclpDl5Hsu", "comparison": "isGreaterThanOrEqual", "name": "ArROIodcmM6v2AEo", "predicateType": "StatisticCodePredicate", "value": "hFVQTRekLfjmy8zo", "values": ["A7U7dGMjupZkZQY8", "sRCRgVwbrQKmb01y", "CNyT4k3DIbfT22G5"]}]}, {"operator": "and", "predicates": [{"anyOf": 31, "code": "UCGBVfpctNFUsUQ6", "comparison": "isLessThan", "name": "XQcb2o1J5euLAbBg", "predicateType": "EntitlementPredicate", "value": "V3ig8Jg5VByeI3yc", "values": ["McYYBixKJXCISQdw", "ec1m8BusV9tUh74K", "Vo6Xqjz2xUKLNWSm"]}, {"anyOf": 11, "code": "yVvyelIJ8QgaLMqi", "comparison": "includes", "name": "36ULa7cfZl4VuY6r", "predicateType": "SeasonTierPredicate", "value": "2FrR1GSogkewIzTO", "values": ["lrk4hIRn0znIKzAE", "qKkcjRh3l2gAJOTC", "bx7J3gNLIlTk3Bpc"]}, {"anyOf": 55, "code": "6KLPXkvUv2XiXaBz", "comparison": "isGreaterThanOrEqual", "name": "bIJ7eHnVWOboMkyB", "predicateType": "SeasonTierPredicate", "value": "exsOZ0b2p3b63Krc", "values": ["OLGCcg16DqwdQPQ9", "wIcXMhGy83Xit6bo", "HkSSV8e1MgTTLS2F"]}]}]}}' 'garY903INGIyEfRB' 'Ej7qms9AGQExPhgr' --login_with_auth "Bearer foo"
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
platform-admin-create-user-order '{"currencyCode": "KT5EIHNhJQq94Re5", "currencyNamespace": "IM1akNKz9IltQUku", "discountCodes": ["3n32atB0QPQPEp5U", "twUWGt6tooHP5kAw", "w01zalTddhAQ1pwq"], "discountedPrice": 27, "entitlementPlatform": "GooglePlay", "ext": {"ybvUIfuulmeegRwP": {}, "Pbn7lttd21cS6IVE": {}, "4fzwG3BHaRcZ8NK4": {}}, "itemId": "gkLmvEOaRcqTgF0x", "language": "tQAXoDoFkmA3fgzc", "options": {"skipPriceValidation": true}, "platform": "Epic", "price": 43, "quantity": 13, "region": "yW3cMz9YyduMomEH", "returnUrl": "cU15St4v8ry8IyqN", "sandbox": false, "sectionId": "v0KVpXJTMx3Y8Um1"}' 'iqehObg3OZ9j0HDt' --login_with_auth "Bearer foo"
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
platform-bulk-credit '[{"creditRequest": {"amount": 96, "expireAt": "1992-06-22T00:00:00Z", "metadata": {"0cPZf5OvolfI0mqZ": {}, "ctohLheRaQkfMLFW": {}, "9B7jHZro4hhwnANA": {}}, "origin": "System", "reason": "tG5gbQSKW2MdgCH4", "source": "ACHIEVEMENT"}, "currencyCode": "Pcy83iXfYXNdMkdg", "userIds": ["9TMwxNcQ6CkVi8fq", "VPRqNbF5yLnYSa8x", "FLvcYexMMMiDFh5R"]}, {"creditRequest": {"amount": 5, "expireAt": "1998-05-12T00:00:00Z", "metadata": {"021cHN3QbzVuJZH3": {}, "k54cExxWKtdGTW4F": {}, "ILotv5ycTa0i6ifY": {}}, "origin": "Xbox", "reason": "79wAopZL9Cw6K9h5", "source": "TRADE"}, "currencyCode": "g9OGoWw1qnCAvdnA", "userIds": ["iFDxclBXap6j73do", "cokJ0rzqX2KJcYHg", "CWxhubMXbxNvT6wA"]}, {"creditRequest": {"amount": 13, "expireAt": "1985-02-15T00:00:00Z", "metadata": {"QlVDx9neFHWhDRJt": {}, "yYEt7ygZleAoUuVK": {}, "neoO10ytPdJ8SY3q": {}}, "origin": "Nintendo", "reason": "e4CO370OsbzRKKPd", "source": "REFUND"}, "currencyCode": "mjzLxllUrFYn7cSu", "userIds": ["dITmN9opaF0kh3pC", "RB3infEVxArF7TB6", "O7NxKHUHg0c4X7fH"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit '[{"currencyCode": "A6a71zAJpaPeudUt", "request": {"allowOverdraft": true, "amount": 87, "balanceOrigin": "Twitch", "balanceSource": "TRADE", "metadata": {"yAObZIbrA8XAKKWM": {}, "DebehSjpt0wrfWPX": {}, "aI1Jb75o2MFOa6xg": {}}, "reason": "Pt69QROGDeJCyHvU"}, "userIds": ["tleUBqBO0Ze049k9", "QO3oWdgXdm1IxL1O", "snLvXCSgQHvs25ei"]}, {"currencyCode": "W6ZLVJzRpUsITfVr", "request": {"allowOverdraft": true, "amount": 77, "balanceOrigin": "Steam", "balanceSource": "DLC_REVOCATION", "metadata": {"ukun42zPZvOd4yZy": {}, "MKyED3qDO5HXp5oV": {}, "khESbHQ7hvTlzf7X": {}}, "reason": "wQtVIYU87NgjDMcJ"}, "userIds": ["PCPKVPlOGfFBlu2Z", "xfMfYFlt3JvDgMiy", "BGygWFTAY3Th5mOw"]}, {"currencyCode": "P0IkiYXGk6BoBmSL", "request": {"allowOverdraft": false, "amount": 42, "balanceOrigin": "IOS", "balanceSource": "PAYMENT", "metadata": {"pM4SRtUE5P4kxmHt": {}, "FbjqurHix0QYycDH": {}, "5we2Mx0sYCnYPT4i": {}}, "reason": "4mxc14iRfzJwKuc7"}, "userIds": ["EpiQEzz5N5osRYO7", "FmqNc8xhQqptccNo", "wbYh7q02W8tkTURU"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'rRls7EC3nDnhFvDl' 'Fd7iyZpvWVJFK6Zu' --login_with_auth "Bearer foo"
platform-test-adyen-config '{"allowedPaymentMethods": ["vlzGCII156hIg0g8", "HIxpzm9AcFhH4ZlY", "Y3rEuHMWwQNmCQmG"], "apiKey": "CF963CbsOawlRBQJ", "authoriseAsCapture": false, "blockedPaymentMethods": ["VH8q8svV5hMOSfpy", "JkJlmJmTkFvB7wkY", "6nuUEGJ3k0HGtpK4"], "clientKey": "3uORGREOOwTuY8dh", "dropInSettings": "NCDWWpN3B6tedgFU", "liveEndpointUrlPrefix": "zBm5vGA3itKaF9z3", "merchantAccount": "WWuv3j8T9g1f6P3D", "notificationHmacKey": "3rVcC2g6t42jE1Wa", "notificationPassword": "d232YV7A2zHFGbN8", "notificationUsername": "AQaCaw9UF7cdSDd9", "returnUrl": "9DQZ7vnTx8HDXTJW", "settings": "iyw17ogzmbj4SLYD"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config '{"appId": "rZJvDLGvn6qtroZc", "privateKey": "p16HKXX1ft5nBA9x", "publicKey": "NIJVuMz04evSdE2F", "returnUrl": "McKd7c94rEmIYuAT"}' --login_with_auth "Bearer foo"
platform-test-checkout-config '{"publicKey": "5OAcUwYHGmG5rNDB", "secretKey": "F1oU37vjfyX5YLaM"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-neon-pay-config '{"apiKey": "0wmi0i1WABBbq8Iz", "webhookSecretKey": "ZsMFLX9ZhFXcFtfB"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config '{"clientID": "S3ZIHofhwyM6Bw2s", "clientSecret": "FGQ5DQoDwzrKPOZZ", "returnUrl": "nV3zR7YxSu6addoc", "webHookId": "g10Hy9jx7gBHTOHH"}' --login_with_auth "Bearer foo"
platform-test-stripe-config '{"allowedPaymentMethodTypes": ["Arjld0LnREsrrB2p", "J7V8BSrucjO3zvSM", "5KeVNHU9GcOivIfc"], "publishableKey": "CJt4U8VSgXoi9Fw2", "secretKey": "5b9qXzlIK2G6AUjB", "webhookSecret": "Cdf0Rp5e5IvFuN1o"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config '{"appId": "UsCnBmGMx5F6EhM3", "key": "dKvIG9MR0hTINvq1", "mchid": "VR9SJUfQEX996Mh1", "returnUrl": "sQ3Dw3uyjgQNAs91"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config '{"apiKey": "88Qm3W1De2McGd10", "flowCompletionUrl": "wefF0CJlH55RLEge", "merchantId": 54, "projectId": 65, "projectSecretKey": "sSpQdcmGHZuRVQ8t"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config-1 'zwqMayP8A3HGNI3B' --login_with_auth "Bearer foo"
platform-update-adyen-config '{"allowedPaymentMethods": ["fjkFd6MHo6gGQ5mC", "hYoKD7yqCR03RovQ", "Zhwfjkq9iyTbyD3D"], "apiKey": "01tRpuuyIagSSzEL", "authoriseAsCapture": true, "blockedPaymentMethods": ["H4euLufhQj2KP3LL", "xl9Hs2L2wlpKBVUR", "xHefz77a9fntCNiH"], "clientKey": "BRUNCPSre5GmZzCQ", "dropInSettings": "wilS3IxSjlyvR9Px", "liveEndpointUrlPrefix": "G9Lji2Vc88W8aLjI", "merchantAccount": "xVGpdOqguxvRwI9Z", "notificationHmacKey": "BTipMRlhK9DMMaI4", "notificationPassword": "ryVDvNaruZxwTfh9", "notificationUsername": "gEs6GF247cbBLjUr", "returnUrl": "5z03wxB3E9hrE9f9", "settings": "COFrOr6wJDBwIDsJ"}' 'HNg6TvNGjwI4TbTw' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'BufUorJouduhCEJ5' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '{"appId": "XiKDIE9YugcupLxV", "privateKey": "BcRkfhRuqkOTHSia", "publicKey": "7oFd1fEmDuyAsQGz", "returnUrl": "wJR5poI718RQnj4i"}' 'mu6XFfRcWDXhq1Ym' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'Geygr2S4Yw8NmPaB' --login_with_auth "Bearer foo"
platform-update-checkout-config '{"publicKey": "eryzX2hOPVVFqVqx", "secretKey": "jq1iG3TySOh8SI75"}' 'oXbyq8FBbur80Qwn' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'lgAVfqz6gQJh8sn0' --login_with_auth "Bearer foo"
platform-update-neon-pay-config '{"apiKey": "bVWRkvmAemh8lioB", "webhookSecretKey": "R7xTXcEIFod3lCzv"}' 'jHzDHOrSJ1vbB7LR' --login_with_auth "Bearer foo"
platform-test-neon-pay-config-by-id 'Hd96dGLgkfrZveFM' --login_with_auth "Bearer foo"
platform-update-pay-pal-config '{"clientID": "WAFT7l0l1jaOAMCz", "clientSecret": "bsoIgmKwwMDQPjUI", "returnUrl": "osq1l6xo0D4JRbNq", "webHookId": "O6IuP2PY5hhX6uNa"}' 'h9JoHPj7jFWxSv1l' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'YylYAiZ8c7Zd7EUo' --login_with_auth "Bearer foo"
platform-update-stripe-config '{"allowedPaymentMethodTypes": ["ezOLw8C1c5bBB3XZ", "7ColKwlsNvtFuunQ", "svdXGlD40xxIyVwY"], "publishableKey": "jn6dlC9Kfh9gHulo", "secretKey": "yce0cLJu4ljPWlCW", "webhookSecret": "TuGO8MnfOQu3wdT4"}' 'Aodp95o1RkX7iW7V' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'pCngWAv5DAG8dPdk' --login_with_auth "Bearer foo"
platform-update-wx-pay-config '{"appId": "KgQqjyzUZR2rFIAu", "key": "ALNhNCyscsMBRLsW", "mchid": "adk2OQ421q7Nb1vr", "returnUrl": "KthVvU5on065ApCk"}' 'VN3QchuQ6pntxB64' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert '8ss7rBnvQHAM8gSd' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'IybKUByHBzfvgtRT' --login_with_auth "Bearer foo"
platform-update-xsolla-config '{"apiKey": "PPzwJmKaLCx3gcid", "flowCompletionUrl": "EALWe6RG5wWznu5A", "merchantId": 20, "projectId": 3, "projectSecretKey": "wR1Z4fU7ICcaQtuu"}' 'KUw3dUwWHhQW3I1y' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id '9tjRLVOXBMa0JiIe' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' '0tUA7EKASk3USNLh' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config '{"aggregate": "STRIPE", "namespace": "7ebZcYqwfIHPWMkO", "region": "mrT5HL16jMwECnmw", "sandboxTaxJarApiToken": "Jv4rpqtzDaz0WUJl", "specials": ["WXPAY", "WXPAY", "WXPAY"], "taxJarApiToken": "fgwSPz14asyOdgn7", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config '{"aggregate": "ADYEN", "namespace": "8K1FlNkgbFE8U4me", "region": "K5grmPBsFH71Vrhs", "sandboxTaxJarApiToken": "ISYtegQbNA2WQrHT", "specials": ["CHECKOUT", "WALLET", "PAYPAL"], "taxJarApiToken": "T1VkChD3n0c1ryAk", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' '3jllopwirRo3A8Wx' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'nR0YaMsF3f5KLtpT' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config '{"sandboxTaxJarApiToken": "SsPMGDZTOwEP5Bhh", "taxJarApiToken": "0NStWIggmhfAzVdN", "taxJarEnabled": true, "taxJarProductCodesMapping": {"P7Ao1z7FeJM2fWXG": "k7JObSHksRkabpmv", "Rsc7ZYvXCT6m6mRZ": "AlLBczJVeil7GbG1", "ISBCkcnpxKUxLjmx": "hBS6YypRW7fNntaI"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'EtDI6MbhxkQdezbm' 'f392ersoZ2KbMb5j' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'al0ruZmBXlGSp85q' --login_with_auth "Bearer foo"
platform-public-get-child-categories '6fuGfo5wSDHnyabk' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories '493I3pvHKDaWhTN1' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'PSN' --login_with_auth "Bearer foo"
platform-get-apple-config-version --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'rFrXtGMjujfHZB1g' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'MI1B8DXb37DffTZ7' --login_with_auth "Bearer foo"
platform-public-get-estimated-price 'yQz337LLNCjIySe3' --login_with_auth "Bearer foo"
platform-public-bulk-get-items '6SA5dxATLv5PkLvr' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition '{"itemIds": ["aRzChdjDGdlk2A2j", "HbAPNGInvbnf4ewK", "FFLoGggX4gQWyZoc"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'vYfr0Rnl02R1IVNn' 'aK6KS71Xs1BphA9B' --login_with_auth "Bearer foo"
platform-public-get-app 'XpKYgF9OuigDP0Vj' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'my7j2BrdCAm3slCw' --login_with_auth "Bearer foo"
platform-public-get-item 'aBqHpE55sjxBGijw' --login_with_auth "Bearer foo"
platform-public-get-payment-url '{"neonPayConfig": {"cancelUrl": "0dQtZNonMrPkzUe9", "successUrl": "SglAJGyZS0I8FevJ"}, "paymentOrderNo": "iT98HUBp56Q4WETx", "paymentProvider": "PAYPAL", "returnUrl": "Ku5sE89JW8UU0RsB", "ui": "6dvrpmInhHYzVVlH", "zipCode": "GFSwjby6rMYkVQnZ"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'DUAbINRKQsxUO1YM' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'xAndOj5O6IBwXJjg' --login_with_auth "Bearer foo"
platform-pay '{"token": "QjgLoJyqwFVBd1Zj"}' 'aRXEdWgS12bSbPgO' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'CWUogizeWOPUMrqg' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'WXPAY' 'Je4n9eUlBQZ2UGeP' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'WXbAyGiXa9nUsHCV' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'icuJ7onrUXVlB6xN' 'el4Bxb9KwFYqdhEV' 'PAYPAL' 'OFVLZCBWuVIROZuq' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'dJBi8pkn98VtLNka' 'XSOLLA' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'koMXNzl1ywEPiuni' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'xlEAHZzHs8x5oPSk' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'ZFIV2feXnTRlzAJy' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id '9oFOHB2KEsIdtozV' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'ltBhoXE4wgcYT5Cd' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement '{"gameId": "jaJuUzFIeqaVr1CE", "language": "GPVJ", "region": "YuzC77J4irvZ9tkt"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'WLtDdlmVGK6iolEw' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc '6IIpDc9X5ijmtDGv' --body '{"epicGamesJwtToken": "d9ESdY0eTkBWA44Q"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'qsi5yOjvl5sRN2EN' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'n1RLi5iMPnbg7o1z' --body '{"serviceLabel": 81}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'pqUsliPyXZGYIW5Z' --body '{"serviceLabels": [61, 30, 39]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc '{"appId": "SHNC97eEyhnL1QH5", "steamId": "AlYRAqCAC2gy1WF9"}' 'QLNgDxAkwgfB8jIe' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'cOx5ugNCDd6jW6fj' --body '{"xstsToken": "tBcO3fWq9qfmBv0X"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'gJB6a7uykADFpinF' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'cH2ZMSYijqEuMfuY' 'FUS079tOpZYM1XV0' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'Op0damycnTUOoMkO' 'GAME' --login_with_auth "Bearer foo"
platform-public-get-user-entitlements-by-ids 'E2XCwTkRUIX6IFHN' --login_with_auth "Bearer foo"
platform-public-user-entitlement-history 'mB9mYBvtOwxjqyrj' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'DApeN5eAfRqSgH5x' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'IuBTYOdsvNyk52MQ' 'FkVVEf36S7yPgG48' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'bk6PwH1tdEAJSqXA' '0Wv0zWGvkc6byp3m' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'vyYT3GuaZVTxBlw1' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'IWeXKFT4rfSbbSlD' 'PGf9Fn32SJNPZkEf' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'kAcJTMS4pVRcCHIG' 'fmCMTr9ACnI2sMrE' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "options": ["QSDWnMQGaYRxFWia", "7yJ2d87XjA0ajvb7", "JcGUFgp6LkyXpxJe"], "requestId": "FxhgTwyO51CUpcdx", "useCount": 77}' 'fkl60ImLBv6nUU0r' '1rfX9stpvJUuyPdz' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement '{"requestId": "x8BM2wEgTtLRT5st", "useCount": 45}' 'pagvERZI6Cqhcknh' 'ecNv2Tw6YKhVrYkM' --login_with_auth "Bearer foo"
platform-public-split-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 79}' 'XkQ7qlaJjSYEseBY' 'CFGoKpXx60GmEX9x' --login_with_auth "Bearer foo"
platform-public-transfer-user-entitlement '{"entitlementId": "2BYpyKEBQ7TW7lZv", "metadata": {"operationSource": "INVENTORY"}, "useCount": 4}' 'COtTNjnNSikJDg6u' 'jKvq0CIa1YCK9PlM' --login_with_auth "Bearer foo"
platform-public-redeem-code '{"code": "eQprfgLGkHX1tdBj", "language": "NPde-kXcR_bv", "region": "X28DikGk8cWiX44a"}' 'zSHcwicUVq2XPljT' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item '{"excludeOldTransactions": false, "language": "UU-uNtJ", "productId": "c80yEO8dL6Jh10XM", "receiptData": "UGeDavCKradJmJFU", "region": "sU418vAlmfGg9NO1", "transactionId": "Z2DvnAxH3pS3jyCk"}' 'GKltBNE2UbhNtH3y' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'Yg4Qnn2uhdw7C9Bx' --body '{"epicGamesJwtToken": "1LQOTCbAPLC3iqrk"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '{"autoAck": true, "autoConsume": false, "language": "Sgph", "orderId": "OsKPNlG7rEXi6LEq", "packageName": "JERpbxEq07txnvZZ", "productId": "eAf7QBuZK5GJlBnc", "purchaseTime": 12, "purchaseToken": "QWslNGnLYUYR0yOv", "region": "JhUjzcMtwINUlrhI", "subscriptionPurchase": true}' 'dESOBV7wZJsg7wSv' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements '9lyRyTdYBUljvBzv' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'YNEtfgBFikt18cQ6' --body '{"currencyCode": "77SotDEtU2xBSEQ8", "price": 0.2813257130032113, "productId": "BKc2K6oJXxVEfnaq", "serviceLabel": 30}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels '{"currencyCode": "NuZtRUTKUvR69PIm", "price": 0.3985055789781933, "productId": "6CcwlqJ4MO3L8x1H", "serviceLabels": [48, 89, 84]}' 'gzHypgsSeKCvtPz7' --login_with_auth "Bearer foo"
platform-sync-steam-inventory '{"appId": "jagBG9a1TZ87ltCl", "currencyCode": "c3RDXF5055tUleni", "language": "dJ_fS", "price": 0.0642294447361339, "productId": "xd24ZKfvMf1T5FzY", "region": "Mf1jaCgZosntPzP1", "steamId": "vXXB92q150WEIetO"}' 'XMt37MXy7Fp7lUfQ' --login_with_auth "Bearer foo"
platform-public-query-user-third-party-subscription 'PLAYSTATION' 'u1U0RVCf3gMWDAod' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 '{"gameId": "CKqfqzeexHA70NgJ", "language": "xXwJ_dGAq", "region": "7W3taRvJ6lKWJwHO"}' '65aOFDwpqy7XOU3D' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'wglyMGNll4O8ELah' --body '{"currencyCode": "cNJqRjepck1l0qxR", "price": 0.39714773527428493, "productId": "Q2pi7xuAufJakIPX", "xstsToken": "OQznHZTj8oYfWOby"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'NJKVSQsaCokoGynp' --login_with_auth "Bearer foo"
platform-public-create-user-order '{"currencyCode": "6xcqNKJnAhrSt96O", "discountCodes": ["aARAjHLGV3sNxS8u", "LBZiVRYIyQLcslTE", "qgVNG8AqktgvjwNJ"], "discountedPrice": 54, "ext": {"zOQOcAqBj0bXhOr9": {}, "OHt6zx1i2W3GY7td": {}, "h8hHlQyMlgfkTsAT": {}}, "itemId": "hLyflAqqAP4M78sm", "language": "Dy-BFot-566", "price": 46, "quantity": 85, "region": "OxI4G6jZzoYIFAvY", "returnUrl": "fT8XQw2EOq6BFjmN", "sectionId": "4OqKGLRpNWzKZtZn"}' 'xgywmr4CYNGm7Tk1' --login_with_auth "Bearer foo"
platform-public-preview-order-price '{"currencyCode": "mMyeNRsjQuDEgO3M", "discountCodes": ["ooTawHLMxhx9nC3o", "6pXU5MDJLCB6WbXW", "EQNL6ijLRvQOgoaB"], "discountedPrice": 71, "itemId": "qZBrdTnGrwHeWoQX", "price": 84, "quantity": 64}' 'Q6nTj9rZpkSntuOe' --login_with_auth "Bearer foo"
platform-public-get-user-order 'aPAyPeEGBepK1Ix4' 'SwjCYjCHniVSn1gY' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'Gal5NrBtT0om9OlG' 'zpF25qu98RhktX6q' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'wkXbCLbh8t0zPkQW' 'RUlgE0kxzFMq9ttb' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'EHAEV7C65Ans9Squ' 'NSJIay5VdUdYy9Y9' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'OCSmmT3WKijbqhT3' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'uyQRXvvcUYDeWPZ8' 'paypal' 'Uh2nHQwpWi8HZ6C0' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'VJ0fK2m6lQ5Ao8TI' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'TYiHSR2SEJh1YDed' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription '{"currencyCode": "ZdNqkXPWZfT8ZfdK", "itemId": "p9q4nXuK0tJAYror", "language": "zKDP-hmSw_384", "region": "J57t6OcYPQ5bk5Ie", "returnUrl": "uAi3zWFGorCbncoj", "source": "5RvEtXiKyUGdNfMi"}' 'wgSvsTRmJsOm0wVF' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'yHvFhRMCFJuA0DEM' 'gykqqjoHTpIPMSRA' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'uPI7mSZQ5UDm1q51' 'PlW2HG8LAiIzuo32' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account '1Ll90IBFsSb3FsV2' 'PnCs9R0D5jZEwxco' --login_with_auth "Bearer foo"
platform-public-cancel-subscription '{"immediate": true, "reason": "xjOGQGlHm8VTN56t"}' 'JKwD8O07L9GG1uen' 'DihceaLdgPZI0fKW' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories '8LeQxItaK6s3Hha6' '9MgxjGJx62mkfVlu' --login_with_auth "Bearer foo"
platform-public-list-views '4bGB1pyk0PpxXZDy' --login_with_auth "Bearer foo"
platform-public-get-wallet '5Pmbu7RrD9a5mdlX' 'TCL467xHbAiD3Pr3' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'mXZO1PnbSlfVRlAI' '8F2f3mEv09kAA5hn' --login_with_auth "Bearer foo"
platform-public-get-my-dlc-content 'PSN' --login_with_auth "Bearer foo"
platform-query-fulfillments --login_with_auth "Bearer foo"
platform-query-items-v2 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 '5fxQ06GwTmobiBnf' --body '{"itemIds": ["rnq9kOFBWhUTPiKR", "3qcbHLGplYsS3jsR", "ZffCd00VrgPuNtOv"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 '{"entitlementCollectionId": "3jbhGBuW8KcyPMfD", "entitlementOrigin": "Steam", "metadata": {"r7O15jqeKssQpme6": {}, "eyM48tE7eJRsXNev": {}, "eQXqnFRYmEIX40XO": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "oLOa7oDz00gxcoaH", "namespace": "6u9TVf4DvEzpoPRi"}, "item": {"itemId": "ClZ6rlwX99AHMLHq", "itemName": "guYykVWzNwPcvGyi", "itemSku": "eBsRUduW5lxSlorW", "itemType": "EGN5bPGSOSiiItrS"}, "quantity": 35, "type": "ITEM"}, {"currency": {"currencyCode": "TZC37xPXxnfggnZ3", "namespace": "EZp6wSAufwYirs9l"}, "item": {"itemId": "wvPKd925u3fFLV0Y", "itemName": "eMrVaYSTRYGFzgLZ", "itemSku": "7gEypQf2Pn9A4gcb", "itemType": "DJ0LmdnOPkIT1C6K"}, "quantity": 67, "type": "ITEM"}, {"currency": {"currencyCode": "TpA7JZ6xullPROSf", "namespace": "iW9zcxmgNfTHu3vk"}, "item": {"itemId": "Zt9FgWckjNpHhM2Z", "itemName": "Xp4N0ROmUCTrS7Gi", "itemSku": "9Iigk9vamO7Q2WQw", "itemType": "SWqSs05rjISy4B0X"}, "quantity": 17, "type": "ITEM"}], "source": "REFERRAL_BONUS", "transactionId": "JdkT7UYCV8agvwOI"}' '2LlOQNRN132RdgwM' --login_with_auth "Bearer foo"
platform-v2-public-fulfill-apple-iap-item 'Xv9olKpRyWQim3ql' --body '{"transactionId": "ART9mPPmYUvlkBGP"}' --login_with_auth "Bearer foo"
platform-fulfill-items-v3 '{"items": [{"duration": 73, "endDate": "1992-09-15T00:00:00Z", "entitlementCollectionId": "uuLtYa86kvL6cBZQ", "entitlementOrigin": "Oculus", "itemId": "Rrw32FRg8y4rOuj7", "itemSku": "J6ijJbcycXmBcrJL", "language": "b7labyotifVk9Kyq", "metadata": {"ceGv0CEDTVSjINYe": {}, "KLowG7UQB9pXzuCK": {}, "5qd2m8A5axixm9X9": {}}, "orderNo": "TXNhN8y1PVriIyv9", "origin": "IOS", "quantity": 70, "region": "juiAGiXx47etMikL", "source": "EXPIRATION", "startDate": "1991-02-16T00:00:00Z", "storeId": "v9Nzs19eBq9a1L8S"}, {"duration": 10, "endDate": "1983-01-27T00:00:00Z", "entitlementCollectionId": "Yifzvr9OqTsInGzH", "entitlementOrigin": "System", "itemId": "eqaBeD2uBAvIXEc2", "itemSku": "CCgYcFo9A93o22Ug", "language": "ObCOiBWdw2b031dm", "metadata": {"4N41MOpmm04BlZUA": {}, "lYnCT11qD03er5md": {}, "raK47FdxXisVlo3a": {}}, "orderNo": "VOGARFDJcGWy826i", "origin": "IOS", "quantity": 34, "region": "CxAxQUM5DyrPfBmp", "source": "GIFT", "startDate": "1984-10-19T00:00:00Z", "storeId": "SFUZqVR5FWGfH66e"}, {"duration": 65, "endDate": "1985-08-25T00:00:00Z", "entitlementCollectionId": "kW1ZcgUSbbnffBWR", "entitlementOrigin": "Epic", "itemId": "UV0jsjAyVgxS54NN", "itemSku": "s3XdhMbQX9D1znEW", "language": "w9p7g4UsQCTKDh5n", "metadata": {"9yc34xF8qFllM1LT": {}, "rl4MP3Nl4T3ujvV7": {}, "W6ADLtn7oInn1Bz3": {}}, "orderNo": "wM3BI51etn17OcmS", "origin": "Nintendo", "quantity": 68, "region": "7f2d8SOWP2dw6Uy8", "source": "CONSUME_ENTITLEMENT", "startDate": "1995-06-14T00:00:00Z", "storeId": "pQalG38VOo82aLD9"}]}' 'jUjuDITjifWRbmtK' '7MTxcCWnMiCLsjro' --login_with_auth "Bearer foo"
platform-retry-fulfill-items-v3 'KHPApA8GsGwyocvY' '9NePjLJQJXwUApJW' --login_with_auth "Bearer foo"
platform-revoke-items-v3 'ohXn01RB7pu7BaON' 'XyE5fIDbsMi48xOY' --login_with_auth "Bearer foo"
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
echo "1..484"

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
    'VvEcEm53BYMBacQB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'IuDVs7U0AJtWPRte' \
    --body '{"grantDays": "szMTd0R5Fsrf9xbV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'fgvG617GmxzClkR3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'M6Twpwq3nLwxnJKj' \
    --body '{"grantDays": "Oo9fvfXF1VsikD3I"}' \
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
    '{"clazz": "phQQiRcOtsthUwgQ", "dryRun": true, "fulfillmentUrl": "1D57FjYKlJiRIvhe", "itemType": "CODE", "purchaseConditionUrl": "bi2llksf6GA8vTt9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'EXTENSION' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'kldCoyRdiOikUdqG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    '{"clazz": "ocLYBaRC7T5qSl7W", "dryRun": false, "fulfillmentUrl": "3ncPkqiTKzz72PKX", "purchaseConditionUrl": "jShM2DvesmMIbiQf"}' \
    'aHxl2YUNRLRjgKqS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'SYgZnVfa8govttlp' \
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
    '{"description": "FAq8oebnS4Y2zkGY", "discountConfig": {"categories": [{"categoryPath": "Tr9yJIveX52r6Inl", "includeSubCategories": true}, {"categoryPath": "JB9Al3mn2DsHDHzS", "includeSubCategories": true}, {"categoryPath": "zhU5Z44zgZ1fieLd", "includeSubCategories": false}], "currencyCode": "8O9N9cbYBK6XOBDp", "currencyNamespace": "R7SH93AE1Toj5vyg", "discountAmount": 98, "discountPercentage": 3, "discountType": "PERCENTAGE", "items": [{"itemId": "lalJrwQiU3DD0xZF", "itemName": "H1fHFLSr0O4rEZTb"}, {"itemId": "FDj2L2McvCrrR7h9", "itemName": "uKLXDaRf3pxKtJbR"}, {"itemId": "Y5luCwKrt6wn3yVr", "itemName": "RCh6j7rpv8K8fBAe"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 21, "itemId": "K3dN3YBOJfvV6SuH", "itemName": "ovoQlk5wL2oXDZ20", "quantity": 56}, {"extraSubscriptionDays": 59, "itemId": "w2H4tz6KUC4jXGj2", "itemName": "G0GZ3JBYi9bBKBRp", "quantity": 6}, {"extraSubscriptionDays": 8, "itemId": "bLCiwxOx2XQn94xP", "itemName": "qXhqeNMDGA3O5hQA", "quantity": 24}], "maxRedeemCountPerCampaignPerUser": 81, "maxRedeemCountPerCode": 9, "maxRedeemCountPerCodePerUser": 96, "maxSaleCount": 27, "name": "2g9imVMh3i7j095r", "redeemEnd": "1986-02-16T00:00:00Z", "redeemStart": "1990-08-16T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["lMrrVIehVCf3AwIz", "UdQ6sTrUg7Z0SLrZ", "raV3NLBUSrFnzE6y"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'FpSVdxFsXAp1rocl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '{"description": "yXllFitPamSKRzDI", "discountConfig": {"categories": [{"categoryPath": "ZgSk6suS90ZbDdmj", "includeSubCategories": true}, {"categoryPath": "IZtkSn8QRbA5V4gj", "includeSubCategories": true}, {"categoryPath": "v1W6cqnvSuKswQ7v", "includeSubCategories": true}], "currencyCode": "8GScnP5QzRBY1Ure", "currencyNamespace": "fgmVFBVz4KRCU0p4", "discountAmount": 18, "discountPercentage": 62, "discountType": "AMOUNT", "items": [{"itemId": "t01gzH17IcfJyGul", "itemName": "mByN5rcDA3Wcv9ou"}, {"itemId": "ALjgLZZzLU9w8MJR", "itemName": "IzIgJKg9y86BgnBQ"}, {"itemId": "tm5AilVhASFlYMVJ", "itemName": "tE2dAeC7pF73y9eA"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 27, "itemId": "sNihxpuuL7DJCxvz", "itemName": "Znh8oBAk1MNCAUmd", "quantity": 27}, {"extraSubscriptionDays": 22, "itemId": "LaVRUu5VbjwPa9rY", "itemName": "gHaxeTT3ebuaYPNB", "quantity": 31}, {"extraSubscriptionDays": 3, "itemId": "9wA4LxO2n7WJQFzB", "itemName": "CD9S03D7JLsIM3VO", "quantity": 79}], "maxRedeemCountPerCampaignPerUser": 89, "maxRedeemCountPerCode": 40, "maxRedeemCountPerCodePerUser": 43, "maxSaleCount": 1, "name": "vqkXDMPzOB08tpk0", "redeemEnd": "1979-03-03T00:00:00Z", "redeemStart": "1990-02-10T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["th4b4HtwEYX55pJN", "TX1sDjSWiSXsV5rJ", "8eZXZ1TLMZnNL3DQ"]}' \
    'K45IAtbyUDDSJSV8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
$PYTHON -m $MODULE 'platform-rename-batch' \
    '{"newName": "pzl1lfIR7jnetIJP", "oldName": "GObyWCLyFPHaxkKx"}' \
    'EDvSoi2X9SygvMG8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
$PYTHON -m $MODULE 'platform-query-campaign-batch-names' \
    'QAaWUhIguMvKDOrx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    '0wQXKEroyKz2reP6' \
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
    '{"appConfig": {"appName": "xI1VVtVrVT6Hn8B2"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "U5hujEfCMt95DEjx"}, "extendType": "CUSTOM"}' \
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
    '{"appConfig": {"appName": "Fyoczck0qJsgZPfu"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "LkeRUafUDP5b6BWf"}, "extendType": "APP"}' \
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
    '{"categoryPath": "I8ecZSvzXYOytshB", "localizationDisplayNames": {"cKQytQagui6lsKF2": "8n7UC7y1MKYVeoGF", "rDb8unXv1iE7YgEZ": "spOJ0NiZl6OVLxKt", "kBpaCG8Nu5m4ctwU": "NV8ncebaJ0DCuIeE"}}' \
    'Stt3PbyctX7HC2ha' \
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
    'QwVWONEpAPedzI2A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '{"localizationDisplayNames": {"dlqiyEJIQcbZJJ3A": "hkrMi0bnppEJFISz", "e88rGEr3cilJWhaW": "6jNsM94E2FQb6S0V", "maTR7E3mkDSQkgVM": "hLbM6H1MnNSKd0KS"}}' \
    'tITvGQtzwjGtGTr2' \
    '38G8Aevk3k14782W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    '2oNo3X4m6wms9SPa' \
    'HlqtDPry2vMON7sd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'hlilfpDT8o2iFrYt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'GfCZCcrvsV2I4X26' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'p21iDBZGJ8ZMLwPJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    '{"batchName": "871nV5ALS7cneNLI", "codeValue": "tUJgh74tyxkTR8ZC", "quantity": 97}' \
    'hCbXbeBEoTlfR33j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
$PYTHON -m $MODULE 'platform-download' \
    'qIRoXcCPaLXJM2B9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'bMohkWsFKIdycYHQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'cu7JkKBcLFRf50Y7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'ME2QmYiYqap7masU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'cayqmp7vhz1T6cSr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'ZL2CgHxdmYDj9vZN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'gfI1AeYHe8WPQGPc' \
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
    '{"currencyCode": "lChxLfbXrH6f2GDr", "currencySymbol": "NbLOjGz34ct0ctEe", "currencyType": "REAL", "decimals": 78, "localizationDescriptions": {"wYuLnI7cTzIUERPl": "QI99hMc4NbiJWP5r", "9EwbIGMGJ70P9IqA": "yNlZ2OwFSebBkXka", "xtY97TMJH8bO4GDH": "T6ZaUUkvlTKAhrxq"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    '{"localizationDescriptions": {"Hw7f813qNjzlcxXs": "mGGcJhauxfhVKIbR", "vUnyElHPuQE3Gc8b": "Y4IH0OXHZP6VVB7q", "jDHMS49dkv8vxyg6": "giNKzeFnlgGRgYK3"}}' \
    'SeYvULYNIhs5PZGT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'Jmgofq7nlF5Ch8J2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'Qs990APOU4hcdwln' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'sTap2RJpHtncLywP' \
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
    '{"data": [{"id": "3WlLmNdQGk6vneHo", "rewards": [{"currency": {"currencyCode": "B1PXO1vT1AonFO3s", "namespace": "yvkYd78GsJGLbnb4"}, "item": {"itemId": "Nvw7fnm4MnOqnqNe", "itemName": "rQoHiDIJayvSNt8E", "itemSku": "QXsMbYi1yEI9ycht", "itemType": "yhjZSeDCKT4ilZB8"}, "quantity": 1, "type": "ITEM"}, {"currency": {"currencyCode": "lMRG8vO0OSsJmhOJ", "namespace": "DUyyag9jBDJFJGOE"}, "item": {"itemId": "iWJ8cLrryS5a6A4t", "itemName": "L8YKMrUBL6dDTVwP", "itemSku": "It1hrg2mhbI0NDsh", "itemType": "b7ZzQuBPyNi1GhZH"}, "quantity": 63, "type": "ITEM"}, {"currency": {"currencyCode": "j6p5grjk5wzdksOU", "namespace": "ku8dtQoIrpvmM19X"}, "item": {"itemId": "4zFOvdRTpGmBUjfE", "itemName": "U9vL8H96tuVfQwYI", "itemSku": "qDWqbPmwQw8J7na1", "itemType": "POTXhXLRU5prAdqn"}, "quantity": 28, "type": "CURRENCY"}]}, {"id": "POiTVzAeQq6rnWJo", "rewards": [{"currency": {"currencyCode": "TpYoe2uHaWnO98Yw", "namespace": "qHZnEDkfmNbDTMGg"}, "item": {"itemId": "ET2yS6C8a8L0vQDS", "itemName": "4EVpBmsUzx64Gr4X", "itemSku": "Em0uYYuAmqhftIfe", "itemType": "2zdqZ7ht1vUiJ7jB"}, "quantity": 50, "type": "ITEM"}, {"currency": {"currencyCode": "8psNoHNalwgvju62", "namespace": "rPFMbE1cW57GaNZL"}, "item": {"itemId": "T1z0GqDZN7ftHOhV", "itemName": "y48YYg1AkRh3NmbR", "itemSku": "hMxKeIgwq1NZmxa0", "itemType": "ghRG020QpWTNKsVy"}, "quantity": 75, "type": "ITEM"}, {"currency": {"currencyCode": "np94a6GKY0BrHiWs", "namespace": "0B0RhxQtgVgbN8kr"}, "item": {"itemId": "872hJvrOCdAEZ2RH", "itemName": "t3uQ5nFrPXwxJZQp", "itemSku": "keDHr0hjKBpDMIvK", "itemType": "4qfQ0pQIcYMBktqq"}, "quantity": 54, "type": "ITEM"}]}, {"id": "BbcjSpv6Nt1oz4td", "rewards": [{"currency": {"currencyCode": "gfKu4bmK8kOKcEoC", "namespace": "RjQJlPY3p42OS9iG"}, "item": {"itemId": "NElTpMlvRDZSIuM0", "itemName": "OXOHPluvsry8AKSZ", "itemSku": "xOhUhl3Y0EshaG0u", "itemType": "DiJNUuxK22saWaGv"}, "quantity": 36, "type": "ITEM"}, {"currency": {"currencyCode": "zBdLvFUBZDnVrcwb", "namespace": "sD0RDLxWgEWwoHpV"}, "item": {"itemId": "8E1xQZLa7Kw77UpC", "itemName": "xNyx1jjdxNePPAJ6", "itemSku": "Z9UzqIhZZiK0QEG6", "itemType": "C9w4lVRNOF1Bg6OH"}, "quantity": 72, "type": "ITEM"}, {"currency": {"currencyCode": "IsYRQz97fRWI17eN", "namespace": "P3Y2nWlS9Sfjh0ht"}, "item": {"itemId": "yVaGj4y9ahS7h7XV", "itemName": "lmc5Rs5FVQSIqObR", "itemSku": "55tV0BlN1iFvw0GS", "itemType": "LBmie8SJckSRbu7h"}, "quantity": 13, "type": "CURRENCY"}]}]}' \
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
    '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"9pDiyybXY4v7JRFM": "RaeIaQuPWPlkxeot", "rNakKGvOSvpmZZdl": "NXdx2kWmSqodNZgf", "QyDVVkkqiMiRf2yC": "yM0Tp5GJHHbsLJ73"}}, {"platform": "OCULUS", "platformDlcIdMap": {"xts5HSQvRAPG9JoV": "SLrbs5niXkjpkOgR", "CC7qfz5jV7NTRYld": "9FJJ10goNq8uq79D", "u28SRRAMaQFEzppe": "ticckSUon7awfol0"}}, {"platform": "STEAM", "platformDlcIdMap": {"696uxp5ieMjjOfFS": "x3AJN97kUjwiCmWQ", "vbrxQpUSnos6QiHy": "rcGeRv27hj73Etuf", "HuNIp0GXpM4nbG7a": "ww2TANW1Or7TvLoL"}}]}' \
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
    '{"entitlementGrantList": [{"collectionId": "0wwHoRMNexBOron8", "endDate": "1982-09-16T00:00:00Z", "grantedCode": "IdUbp7xVMKfbAJfW", "itemId": "4iMIC52NUedhhkME", "itemNamespace": "18qGpSsyEPDWHcqf", "language": "fC_KAef", "metadata": {"CGtg812NQb5Glh8s": {}, "rTlTj61WdV2XUo1B": {}, "O1rE7E12Fapao5jo": {}}, "origin": "Nintendo", "quantity": 28, "region": "HjAx7rZTvew0WVDS", "source": "PROMOTION", "startDate": "1979-10-28T00:00:00Z", "storeId": "23LV7xZEEv7O1lwx"}, {"collectionId": "VTRll0GIEUJtMC8N", "endDate": "1983-06-15T00:00:00Z", "grantedCode": "V2HLHZT3oYJlC4ie", "itemId": "3InnSA22NHTb4qXY", "itemNamespace": "yJUAlKlTwdJEPoem", "language": "RMV-idpV_272", "metadata": {"2tq2V2lMzfIQHCZ9": {}, "0DqQgP6ynrQjYH0N": {}, "2loTnRa0KiQWPxd1": {}}, "origin": "GooglePlay", "quantity": 33, "region": "bwLzDEw2PYt8x9SS", "source": "ACHIEVEMENT", "startDate": "1974-12-02T00:00:00Z", "storeId": "cwiDWQFghmIi6fph"}, {"collectionId": "Dw3p9QWqwTF2pOJs", "endDate": "1997-07-28T00:00:00Z", "grantedCode": "86xAf5y1iy01FkEE", "itemId": "XlKiTIDgP7wuXQdf", "itemNamespace": "W99JglScoOlkkBxi", "language": "Fn-QVyX", "metadata": {"EDRuYBnWiEsOnDfI": {}, "AN04f5kSONmw1BDq": {}, "qSctLL4WfGq8JCDn": {}}, "origin": "Other", "quantity": 99, "region": "GWgccuzuc6QDRMGd", "source": "REFERRAL_BONUS", "startDate": "1992-09-24T00:00:00Z", "storeId": "bUyHTYPS8CGKXGon"}], "userIds": ["U2lNkorrw9QH3rNh", "DepQum4Dj7pR05RT", "2ecc65YAFLweD9Z7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["GXGRkYXifTd5nAOF", "9VV7JgCOm4wL729H", "ma0nCdCEFcf2doBr"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'fHiHXXgvu496H02y' \
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
    --body '{"body": {"account": "OVN1h41jIPOMXufZ", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 84, "clientTransactionId": "RqdGPzxXvZPtrhje"}, {"amountConsumed": 98, "clientTransactionId": "kw98x3tMM1bFFDIq"}, {"amountConsumed": 74, "clientTransactionId": "ncMUdmf8hD3nL1sa"}], "entitlementId": "QxLYrz08jh6Tyq7W", "usageCount": 95}, {"clientTransaction": [{"amountConsumed": 4, "clientTransactionId": "ilXgtf5UctyV3aSw"}, {"amountConsumed": 55, "clientTransactionId": "twReM5DcHde3fkHf"}, {"amountConsumed": 8, "clientTransactionId": "tH8WTOTeBOcYhf6n"}], "entitlementId": "GCnPjiIbJifs0arK", "usageCount": 49}, {"clientTransaction": [{"amountConsumed": 58, "clientTransactionId": "9ecmenxguw5bO8Vh"}, {"amountConsumed": 45, "clientTransactionId": "JaKYAsoMlLJGMl5x"}, {"amountConsumed": 65, "clientTransactionId": "spgvjt7eCLDu6PA3"}], "entitlementId": "PRnQtB410iWT0SIL", "usageCount": 97}], "purpose": "6vLeoIULJlWXmQFl"}, "originalTitleName": "ef1tSHJf6sVpwAAK", "paymentProductSKU": "KqmTy0ZSyJ7IIUXl", "purchaseDate": "BlZMQeSnOg5gf1Sw", "sourceOrderItemId": "rbpmoF4DvNA1wo9I", "titleName": "AxV5C71gTw8BJPFc"}, "eventDomain": "twUMCRdxXOBu3TWm", "eventSource": "HDVmCGFoD7aNFj9w", "eventType": "ORAVqRuNsXxRu4EQ", "eventVersion": 33, "id": "F1KKOfFFLvER3xqC", "timestamp": "wUgKa4oCBoJDxGa1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'MockPlayStationStreamEvent' test.out

#- 73 MockXblClawbackEvent
$PYTHON -m $MODULE 'platform-mock-xbl-clawback-event' \
    --body '{"data": {"eventDate": "UuSr4ehnV8Aw9m6G", "eventState": "vDSE2F7Ad69Dln4m", "lineItemId": "qFhgKKcGohdjQUwV", "orderId": "dPsArkepfK0DE3Ii", "productId": "bPSQnphnvAWBSOr7", "productType": "zljUKyhKkD7wAHMr", "purchasedDate": "v8zABDhYAVxvs3ug", "sandboxId": "NvvgI2k1P9nQxzj3", "skuId": "AnmpWfje5cAtTDvw", "subscriptionData": {"consumedDurationInDays": 65, "dateTime": "16ShGomFzUappaaO", "durationInDays": 60, "recurrenceId": "ZpFnVLb7xerpjVPf"}}, "datacontenttype": "ktNnl8UYH5kesuOt", "id": "YHLqcdy05YrqdFn8", "source": "sQ7yc8xLKyBfGLHE", "specVersion": "AKhp612Y2ncRf7tE", "subject": "GzYqRoHm6EtyXqQb", "time": "KWMJ0aODiWn6bPmS", "traceparent": "a85Riu1alaVEhjJZ", "type": "bwMHkFWLSzmAXAru"}' \
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
    '{"appAppleId": 35, "bundleId": "1vuaFyqjQsTGmzIt", "issuerId": "JIOkEIRsSWOV8Lyi", "keyId": "vYbMG9LXPbBh2E3w", "password": "FchP3zTymfVfny2M", "version": "V1"}' \
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
    '{"sandboxId": "sS08cY3fjI1YTT3q"}' \
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
    '{"applicationName": "UMd0U73RjVeYSM47", "notificationTokenAudience": "9gn62lizsWGrtIgV", "notificationTokenEmail": "Pb7hoo8YkNPW8mWO", "packageName": "JGtdXJGDsxRAR3NO", "serviceAccountId": "bYp43YXMHqWeVjnO"}' \
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
    '{"data": [{"itemIdentity": "URxGvOhz9s7ktWkJ", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"K0OO1yQsMBQAdOfr": "tHWyGg5TU3INkMgj", "snP8itevmjTJjj5t": "fFQv384ri6A7z0hs", "W0IHIYvJ7PPgVaFw": "Ghl5zqkzEu41hVfV"}}, {"itemIdentity": "C7eLVWGk0GjYReIZ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"RBra3I4K9iBdljXt": "owifBfAw30kOykBu", "DJ0IPQeAL4MZwEVJ": "e7waGyB6g2M5Jiwt", "MOfDfoMgU2yFBTPf": "nmfN5E20ORMCVBTr"}}, {"itemIdentity": "kvObsiHQgt7OfL6A", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"zZBo6ARaQnNZQ1R0": "PGBFVnc37aWVjM3i", "VKjr5VDqakKdW767": "GAH1oiS1JuO7MNoF", "PtRhYYIpNqVHbbCV": "wbitD5tWXZVvjYqr"}}]}' \
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
    '{"appId": "EXKUDlmtixw9FtBV", "appSecret": "AWT8PxL8674KYMeN"}' \
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
    '{"backOfficeServerClientId": "2W2CNqmO8JALtCiD", "backOfficeServerClientSecret": "uGQQsvWV3NSjXUXS", "enableStreamJob": false, "environment": "KY09x4TKOwsyRNna", "streamName": "LNhw0xGnXc29UDQx", "streamPartnerName": "eiBo2hB9u1v1POCj"}' \
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
    '{"backOfficeServerClientId": "seK1xaSbMjyFrYsI", "backOfficeServerClientSecret": "TcyT5AhNNH0Ht1yP", "enableStreamJob": true, "environment": "wBJax1jBd6Yng8ps", "streamName": "5XknDJZK5gFHyIOn", "streamPartnerName": "Lu9WBAS0qUswy0An"}' \
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
    '{"appId": "JZJdKrIn9hHHGg1c", "publisherAuthenticationKey": "TZsJp1b5yB8c9gCP"}' \
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
    '{"clientId": "FDZh6JfJfg4X1dZO", "clientSecret": "TBgYwLjPGFqkbTL8", "organizationId": "ifUAMUekrD0J6iuJ"}' \
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
    '{"enableClawback": true, "entraAppClientId": "JxWANt1bDay64EnF", "entraAppClientSecret": "yFeW0oNhddKrrhzw", "entraTenantId": "z2PFXC33KjLNUFQJ", "relyingPartyCert": "gCWV7dj8I5eVnflH"}' \
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
    '2hnMV6Yxtl5DKUhj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GetIAPOrderConsumeDetails' test.out

#- 109 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'By9oWPcMIQc5lRQo' \
    'jhJgpXVCubdw0sPr' \
    'gDKqHCs5GTdTLCxJ' \
    'EXTENSION' \
    'WFobqnDkfPAHNgVs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'DownloadInvoiceDetails' test.out

#- 110 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    's4JzVKSusdLumoHh' \
    '8TQWYk2vD3mUDwtT' \
    'F1ATVQnAexrRomTZ' \
    'OPTIONBOX' \
    'VBkZU3qtk0dM4GZG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GenerateInvoiceSummary' test.out

#- 111 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    '{"categoryPath": "iSutb6wUxEikRyHC", "targetItemId": "9VWMnzbuNQNJxCbL", "targetNamespace": "EhfrPxIRdbUwkN6T"}' \
    'r6vRneC9JYmpKyZG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'SyncInGameItem' test.out

#- 112 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '{"appId": "tqWw67LheLDvwZjt", "appType": "DEMO", "baseAppId": "JwZGVyknpOhuGhAn", "boothName": "lnjyPBj7h3hncU5v", "categoryPath": "gL62RA2BI7knizQ4", "clazz": "Jx8In4w8yRFOLeTQ", "displayOrder": 50, "entitlementType": "DURABLE", "ext": {"BcprByjUr7w9w1xK": {}, "UrLmQSkuEMRzyerp": {}, "ya2oBjbgBhOdXE8y": {}}, "features": ["7oklNewpAIwtlAoo", "1PNIzbnPB5wG65f3", "ACfS3A8JeRMYUCgn"], "flexible": false, "images": [{"as": "HDb8g2BhzW03O2pp", "caption": "9qVpZbsppRsBWQ7R", "height": 8, "imageUrl": "nDPJ9SMRzSo0RzUo", "smallImageUrl": "Sen8CjEhtRcnVsYO", "width": 47}, {"as": "arkgZ773cdzYhgH2", "caption": "4VR4hJnsU1m6zryX", "height": 25, "imageUrl": "tIEwCcfPmWjX540a", "smallImageUrl": "N2pvOi5UG7agVhXI", "width": 12}, {"as": "AFNEwXBsCkfqzKlz", "caption": "lLgHPF5iRWnREifO", "height": 64, "imageUrl": "ZHP7HM6JB2P6ZjZh", "smallImageUrl": "9eggvvmXZU7lVGZ6", "width": 23}], "inventoryConfig": {"customAttributes": {"kvdeu5DfAxsrX7Oi": {}, "SRs0z2RYA8fTlbfU": {}, "OSmR4F0p5g7b3Meg": {}}, "serverCustomAttributes": {"xV9JnAJSu3MX2yYJ": {}, "opKxd9MtXYGoZGkB": {}, "NXT0feu7KKPXunBZ": {}}, "slotUsed": 16}, "itemIds": ["pMmsvvKTljWspMrC", "4TeRTNUYz7N4wHLH", "x7FCWn7iOmKIN2ro"], "itemQty": {"JNZmgEGzqDHdLpDj": 78, "Aq2KVQNFGaJEyBVl": 87, "u13LgD6kOUZXQKRT": 97}, "itemType": "EXTENSION", "listable": false, "localizations": {"IwPCb2qOuIRbBL0n": {"description": "jCbitEJNHwfW76v6", "localExt": {"GPVwWjIfhOXemeTg": {}, "iENbhdRohucoiX0G": {}, "AQZEbNr6VtQiKwKu": {}}, "longDescription": "IHMjiIjX7Eu0WCXd", "title": "8GX7ygT5qlBekxw9"}, "pO3vyRviPljDYddT": {"description": "Dwgc6onXfoDvjI9j", "localExt": {"fJFTHcHvAfosnCXq": {}, "JplcwaBHILlCC7ov": {}, "jEbjKrZ2d6IbWTfP": {}}, "longDescription": "plY43FQpfFWm8VMH", "title": "jC8qrxvZsJd3RBYL"}, "4PAqdviBvToSQ7Eq": {"description": "HUhHn1qP3G2kSIur", "localExt": {"SOWI2donULQokdCS": {}, "sp87x6Jfe5YAYJeb": {}, "1GUdtB5G8NITA0g5": {}}, "longDescription": "8cqZn79u2grirdqE", "title": "LbdqXaPlAMGm4h3P"}}, "lootBoxConfig": {"rewardCount": 2, "rewards": [{"lootBoxItems": [{"count": 77, "duration": 69, "endDate": "1985-08-29T00:00:00Z", "itemId": "F9079hQA91csvlQS", "itemSku": "S6PyDb3vKbCw9eAG", "itemType": "mM6lPAJMizukBmcy"}, {"count": 74, "duration": 21, "endDate": "1983-01-08T00:00:00Z", "itemId": "k4a5FeKFm3raYpWl", "itemSku": "0MfF3iAQb4Iiy26m", "itemType": "51AwCv4UKmP7eczf"}, {"count": 28, "duration": 74, "endDate": "1996-12-19T00:00:00Z", "itemId": "gOqXhJZ6DIokID1Z", "itemSku": "Fk9fRCHfId0Dhnin", "itemType": "8RxnO0qs4FykFXDd"}], "name": "cUuEE9wh4CEOrPY2", "odds": 0.9851280142137447, "type": "REWARD", "weight": 54}, {"lootBoxItems": [{"count": 76, "duration": 84, "endDate": "1998-01-04T00:00:00Z", "itemId": "Xijb7GTIFWcZWKcG", "itemSku": "HG9MBp1AEcNUzfWw", "itemType": "pdraZO1lfHzX5CHN"}, {"count": 18, "duration": 98, "endDate": "1996-11-07T00:00:00Z", "itemId": "aLYUlRZSLj5xwmP8", "itemSku": "QMJJJn2Lqw6aiKZb", "itemType": "UJQ92BTViMMFji1G"}, {"count": 26, "duration": 28, "endDate": "1973-06-26T00:00:00Z", "itemId": "mwhN25xGSRRZnwlb", "itemSku": "MGheYVteLiiIKPjo", "itemType": "kv6HMQOekLKHziTw"}], "name": "5M3KvzpUEcp3cp4f", "odds": 0.7894256020874795, "type": "REWARD_GROUP", "weight": 23}, {"lootBoxItems": [{"count": 27, "duration": 78, "endDate": "1979-05-25T00:00:00Z", "itemId": "xYa2jDp3LzelXaUz", "itemSku": "9AKozXBA29DPhYa8", "itemType": "Ksjfnk7HKSWULkEK"}, {"count": 33, "duration": 16, "endDate": "1992-10-02T00:00:00Z", "itemId": "4ToqWjpaECYi7fBJ", "itemSku": "aU43PzOITmqjrcuI", "itemType": "H9i4ICwRHM518oPa"}, {"count": 61, "duration": 14, "endDate": "1971-04-08T00:00:00Z", "itemId": "6RZXatSimmKudqUR", "itemSku": "kyz4E3EI1bSCYaa8", "itemType": "JSNQdhrnvuDGFiT4"}], "name": "U6WQQwsTHCgTvrGl", "odds": 0.1795660116577802, "type": "REWARD", "weight": 2}], "rollFunction": "CUSTOM"}, "maxCount": 59, "maxCountPerUser": 39, "name": "EifQCe5eN88Z7U1e", "optionBoxConfig": {"boxItems": [{"count": 6, "duration": 58, "endDate": "1979-12-24T00:00:00Z", "itemId": "HnrPGydCRGPXLKNN", "itemSku": "fCxcAJoMhSZgpx0H", "itemType": "tzCgr8ybpAO0Pgh6"}, {"count": 96, "duration": 99, "endDate": "1973-07-26T00:00:00Z", "itemId": "nz7FjcRRIKcTVvso", "itemSku": "rmCNHH08vEf2WSsL", "itemType": "chLBElch9a9Knc6g"}, {"count": 23, "duration": 79, "endDate": "1979-03-18T00:00:00Z", "itemId": "4m1UpizE7fm00IB0", "itemSku": "YnQ5xpjcMxUGokG4", "itemType": "VQKR0ItcCnXFRjhk"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 53, "fixedTrialCycles": 53, "graceDays": 70}, "regionData": {"n0bbNK5rhgy51k1e": [{"currencyCode": "1gZ8QCEx41nhN2NM", "currencyNamespace": "DXEHz2uROYqy72xP", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1990-10-07T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1990-05-22T00:00:00Z", "expireAt": "1986-12-25T00:00:00Z", "price": 37, "purchaseAt": "1982-11-30T00:00:00Z", "trialPrice": 23}, {"currencyCode": "xHZOUW3jlXYz8azH", "currencyNamespace": "YdzaYe7WjwoU21Ed", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1978-02-20T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1977-06-23T00:00:00Z", "expireAt": "1989-09-11T00:00:00Z", "price": 27, "purchaseAt": "1986-09-14T00:00:00Z", "trialPrice": 95}, {"currencyCode": "PxMy9YNTBZTR5tZm", "currencyNamespace": "aZGxrhAPoREvGmmb", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1980-08-27T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1981-12-12T00:00:00Z", "expireAt": "1980-07-11T00:00:00Z", "price": 46, "purchaseAt": "1989-07-22T00:00:00Z", "trialPrice": 35}], "bZ7xvbLKNa3OJMFd": [{"currencyCode": "rQmX2OFLws9RV6lY", "currencyNamespace": "9IGsZjUsSUE7NuCY", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1992-06-28T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1991-03-07T00:00:00Z", "expireAt": "1976-01-18T00:00:00Z", "price": 14, "purchaseAt": "1982-02-10T00:00:00Z", "trialPrice": 89}, {"currencyCode": "e6pVMS5m8aRIev5s", "currencyNamespace": "4q7UwwraCDr326Q6", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1983-12-05T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1972-03-21T00:00:00Z", "expireAt": "1994-11-16T00:00:00Z", "price": 75, "purchaseAt": "1994-04-01T00:00:00Z", "trialPrice": 88}, {"currencyCode": "sCsfA2pIWzC6nrUa", "currencyNamespace": "vXt7t0llsH39PXWt", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1999-01-17T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1997-03-28T00:00:00Z", "expireAt": "1990-03-10T00:00:00Z", "price": 58, "purchaseAt": "1983-04-01T00:00:00Z", "trialPrice": 6}], "P7drhfBjZFgaGUfh": [{"currencyCode": "y5TZFoyfZ0XfCxPD", "currencyNamespace": "cH66JWKmTRqrvfJI", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1987-01-27T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1993-10-04T00:00:00Z", "expireAt": "1986-05-28T00:00:00Z", "price": 59, "purchaseAt": "1992-12-05T00:00:00Z", "trialPrice": 64}, {"currencyCode": "HVsnUueYd49OFDlb", "currencyNamespace": "dIrxqxAtw8vLsYBH", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1990-02-17T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1991-05-08T00:00:00Z", "expireAt": "1983-01-23T00:00:00Z", "price": 49, "purchaseAt": "1987-03-08T00:00:00Z", "trialPrice": 33}, {"currencyCode": "zWKQdVExukcKDUzh", "currencyNamespace": "KKARjqJSWImXvaLX", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1978-03-10T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1977-07-04T00:00:00Z", "expireAt": "1984-03-22T00:00:00Z", "price": 12, "purchaseAt": "1998-06-18T00:00:00Z", "trialPrice": 92}]}, "saleConfig": {"currencyCode": "OKy45dqId3gXUWVA", "price": 25}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "jrn0iZsIfqeLfl0w", "stackable": false, "status": "ACTIVE", "tags": ["4mL4hAfiqX3ThREY", "kndZIrjnjuCHkx8h", "cx4istsfrFqHu6f5"], "targetCurrencyCode": "m2178A4NUDAdwt7c", "targetNamespace": "j6v5DLEk9Rkumkrn", "thumbnailUrl": "Y4LksFD2le3UGhQn", "useCount": 27}' \
    'zMMHiVQ6covYDuI4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'CreateItem' test.out

#- 113 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'l1d9YaLVuL1mLP65' \
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
    'pId36F25c13PNqPn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetItems' test.out

#- 117 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    '7XRlnqiWP9WWQMGm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'GetItemBySku' test.out

#- 118 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'm0biVjE8A3EsOz8L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'GetLocaleItemBySku' test.out

#- 119 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'DnxgL0t7Qhdw4vmS' \
    'xnJcyaijSCsFa6ip' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetEstimatedPrice' test.out

#- 120 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'Ru1AaFjz0yLelzMz' \
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
    'WiPzugdDu6rxIv2Z' \
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
    '{"itemIds": ["MtZX5KZK53tX2oxm", "EDDgGBgPWHmOLBLl", "sw2pDJDLeJwzbVEE"]}' \
    'Q0D6RcLpRxXCStzv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'ValidateItemPurchaseCondition' test.out

#- 125 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'OyY1tNKAVWv5cGRm' \
    --body '{"changes": [{"itemIdentities": ["3WTx0oyOrycewrnL", "BAZlvnOJeNxZdT1f", "ZJTutZpZZn6egDbF"], "itemIdentityType": "ITEM_SKU", "regionData": {"hcMpuZW4KtmXptKH": [{"currencyCode": "Aev0UqYpD2R7Yqid", "currencyNamespace": "gD0wxHpQyntHsI11", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1985-11-14T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1985-09-16T00:00:00Z", "discountedPrice": 49, "expireAt": "1980-12-12T00:00:00Z", "price": 17, "purchaseAt": "1996-06-28T00:00:00Z", "trialPrice": 85}, {"currencyCode": "eG0BvuCoP1hIpdIW", "currencyNamespace": "ajZTyB7k7Q9zNJHk", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1993-10-01T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1985-02-14T00:00:00Z", "discountedPrice": 5, "expireAt": "1984-06-15T00:00:00Z", "price": 9, "purchaseAt": "1997-07-30T00:00:00Z", "trialPrice": 6}, {"currencyCode": "JUZSjWUPA9vXrqLx", "currencyNamespace": "UCyNQUITTM8jU9tf", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1984-11-18T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1976-12-10T00:00:00Z", "discountedPrice": 86, "expireAt": "1975-02-08T00:00:00Z", "price": 2, "purchaseAt": "1974-01-11T00:00:00Z", "trialPrice": 26}], "0Y8RDVgsQzaeOv7x": [{"currencyCode": "B8GlNYJeVVZQH5C7", "currencyNamespace": "6GaeCobrGOAvaYct", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1999-03-11T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1991-05-07T00:00:00Z", "discountedPrice": 83, "expireAt": "1984-04-06T00:00:00Z", "price": 91, "purchaseAt": "1989-04-12T00:00:00Z", "trialPrice": 57}, {"currencyCode": "7jdrPdkMMoylrI7D", "currencyNamespace": "pmCIb5JWu7DAXtIe", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1977-03-09T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1989-11-07T00:00:00Z", "discountedPrice": 47, "expireAt": "1976-06-24T00:00:00Z", "price": 73, "purchaseAt": "1982-12-19T00:00:00Z", "trialPrice": 87}, {"currencyCode": "MDxu7Auj8cqdtNaF", "currencyNamespace": "O3ABy1AeDryAFewc", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1982-01-16T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1982-10-18T00:00:00Z", "discountedPrice": 29, "expireAt": "1999-08-20T00:00:00Z", "price": 9, "purchaseAt": "1991-01-09T00:00:00Z", "trialPrice": 0}], "bfa3ep8cKNlb024F": [{"currencyCode": "zQsBlwn2pN8vqhPm", "currencyNamespace": "lYgFAu9gD8vsiDfz", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1974-02-26T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1997-11-04T00:00:00Z", "discountedPrice": 61, "expireAt": "1982-02-25T00:00:00Z", "price": 74, "purchaseAt": "1989-10-28T00:00:00Z", "trialPrice": 72}, {"currencyCode": "qSZCanZaGzamJ8JZ", "currencyNamespace": "6lV9zpsDX7CWEoHK", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1989-08-09T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1988-05-08T00:00:00Z", "discountedPrice": 47, "expireAt": "1983-06-18T00:00:00Z", "price": 7, "purchaseAt": "1984-09-24T00:00:00Z", "trialPrice": 100}, {"currencyCode": "fNnNFMfXpIPlcauf", "currencyNamespace": "emZ4xlGtWc5UcGIG", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1988-11-15T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1996-02-17T00:00:00Z", "discountedPrice": 15, "expireAt": "1983-02-16T00:00:00Z", "price": 70, "purchaseAt": "1999-03-24T00:00:00Z", "trialPrice": 71}]}}, {"itemIdentities": ["YsZ1L6IGHuO7u2tO", "Upmu6zULXQMirzwM", "shTQYUnfHWyBg5c3"], "itemIdentityType": "ITEM_ID", "regionData": {"q2dGygLo40eCb82j": [{"currencyCode": "4OhaAiWk4TKx1WRj", "currencyNamespace": "iCokzg7q7bMwxVAu", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1993-05-17T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1993-12-19T00:00:00Z", "discountedPrice": 31, "expireAt": "1983-07-22T00:00:00Z", "price": 31, "purchaseAt": "1981-06-21T00:00:00Z", "trialPrice": 24}, {"currencyCode": "u88WyRMMRloXySTO", "currencyNamespace": "9W3BEI4eB0PHoEfI", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1987-12-06T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1998-01-23T00:00:00Z", "discountedPrice": 87, "expireAt": "1994-01-01T00:00:00Z", "price": 60, "purchaseAt": "1979-05-18T00:00:00Z", "trialPrice": 54}, {"currencyCode": "m0SXzXNqw2oEptJs", "currencyNamespace": "PYgvPnAlN2mJeW1L", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1980-03-18T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1979-01-30T00:00:00Z", "discountedPrice": 80, "expireAt": "1997-10-10T00:00:00Z", "price": 76, "purchaseAt": "1993-12-12T00:00:00Z", "trialPrice": 43}], "PAny29oO2B8osfAc": [{"currencyCode": "B6Pd2uPwzliHiPYu", "currencyNamespace": "wUtR55gCTACz3aLd", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1997-06-14T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1985-09-21T00:00:00Z", "discountedPrice": 29, "expireAt": "1976-12-26T00:00:00Z", "price": 46, "purchaseAt": "1999-04-20T00:00:00Z", "trialPrice": 100}, {"currencyCode": "IQo88hLxgR5AJVEz", "currencyNamespace": "4FiSPgU3FLs6LbIw", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1982-09-19T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1985-02-04T00:00:00Z", "discountedPrice": 89, "expireAt": "1981-07-17T00:00:00Z", "price": 96, "purchaseAt": "1971-07-19T00:00:00Z", "trialPrice": 59}, {"currencyCode": "U8GVL2TVivHbcJX1", "currencyNamespace": "mqJ4BtZCHdlmOzx9", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1979-10-20T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1986-04-07T00:00:00Z", "discountedPrice": 70, "expireAt": "1972-10-02T00:00:00Z", "price": 72, "purchaseAt": "1994-11-05T00:00:00Z", "trialPrice": 61}], "T74NkroVwJFRFLns": [{"currencyCode": "SyJhQApjt9Vvn7My", "currencyNamespace": "jPjMUoUC9cUOeLu9", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1992-01-04T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1985-03-17T00:00:00Z", "discountedPrice": 18, "expireAt": "1981-03-22T00:00:00Z", "price": 89, "purchaseAt": "1982-02-24T00:00:00Z", "trialPrice": 69}, {"currencyCode": "7ST2UVRJN0qFJaGD", "currencyNamespace": "iDmatCvCembJFNyI", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1992-09-26T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1998-09-18T00:00:00Z", "discountedPrice": 16, "expireAt": "1971-03-21T00:00:00Z", "price": 90, "purchaseAt": "1983-10-06T00:00:00Z", "trialPrice": 70}, {"currencyCode": "eTMH4jK8hWOlHrqy", "currencyNamespace": "BElA4m1Ywb6nMhhS", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1996-09-20T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1984-08-04T00:00:00Z", "discountedPrice": 35, "expireAt": "1990-12-04T00:00:00Z", "price": 6, "purchaseAt": "1973-11-26T00:00:00Z", "trialPrice": 47}]}}, {"itemIdentities": ["89cqMuV8MLxiTO3G", "hLJ2qx2h93yz3Y7Y", "tgdQMhzpcpwawMF0"], "itemIdentityType": "ITEM_ID", "regionData": {"WYgDWbrtw6qiRU6n": [{"currencyCode": "8IKPZ1kpSeRooa84", "currencyNamespace": "wgi9Qjy4LtkYsyCJ", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1997-01-02T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1983-08-22T00:00:00Z", "discountedPrice": 53, "expireAt": "1988-04-25T00:00:00Z", "price": 67, "purchaseAt": "1976-01-21T00:00:00Z", "trialPrice": 81}, {"currencyCode": "VrHG4ehIhJk597xU", "currencyNamespace": "XpiOLFQFxY4AHLzQ", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1985-09-01T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1973-02-02T00:00:00Z", "discountedPrice": 41, "expireAt": "1980-03-26T00:00:00Z", "price": 66, "purchaseAt": "1971-11-17T00:00:00Z", "trialPrice": 91}, {"currencyCode": "gSK5Yx6dbDNBB9LN", "currencyNamespace": "ziCP1xQygVqAioKk", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1998-07-07T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1980-07-10T00:00:00Z", "discountedPrice": 20, "expireAt": "1999-07-29T00:00:00Z", "price": 30, "purchaseAt": "1982-12-02T00:00:00Z", "trialPrice": 48}], "OkHmCFldZ0XAvFit": [{"currencyCode": "LhI0sqjfua9x08SJ", "currencyNamespace": "mn2gM2q6wuaHlnk9", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1987-03-27T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1988-07-03T00:00:00Z", "discountedPrice": 73, "expireAt": "1995-02-27T00:00:00Z", "price": 0, "purchaseAt": "1999-06-12T00:00:00Z", "trialPrice": 61}, {"currencyCode": "xrBGEumeTG434Dml", "currencyNamespace": "bwWuZpKPB4rzvo2R", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1981-03-08T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1982-12-28T00:00:00Z", "discountedPrice": 2, "expireAt": "1980-12-08T00:00:00Z", "price": 56, "purchaseAt": "1980-04-27T00:00:00Z", "trialPrice": 65}, {"currencyCode": "dn1p1MJrZv1itpBP", "currencyNamespace": "RbtgUMFAcxhrY80c", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1975-08-08T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1974-11-29T00:00:00Z", "discountedPrice": 64, "expireAt": "1990-04-13T00:00:00Z", "price": 63, "purchaseAt": "1993-03-24T00:00:00Z", "trialPrice": 35}], "WtzrSIfMjxzBwWKz": [{"currencyCode": "JldpqtAlzVR0Wqkb", "currencyNamespace": "KYSr7IVc2WJyX67v", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1999-01-13T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1980-03-31T00:00:00Z", "discountedPrice": 31, "expireAt": "1991-05-04T00:00:00Z", "price": 27, "purchaseAt": "1991-09-23T00:00:00Z", "trialPrice": 23}, {"currencyCode": "dw0nzH9XMG2c5BWr", "currencyNamespace": "zKJ0Lj0VNzr8kTl0", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1975-06-16T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1971-06-16T00:00:00Z", "discountedPrice": 85, "expireAt": "1988-09-27T00:00:00Z", "price": 23, "purchaseAt": "1971-01-12T00:00:00Z", "trialPrice": 87}, {"currencyCode": "7VI1cHNU3pvbpyJT", "currencyNamespace": "gwl3ZOMpzNQDtQNl", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1987-11-01T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1978-01-08T00:00:00Z", "discountedPrice": 53, "expireAt": "1980-06-24T00:00:00Z", "price": 32, "purchaseAt": "1993-05-10T00:00:00Z", "trialPrice": 44}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'BulkUpdateRegionData' test.out

#- 126 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    '0ZKnX3Inv5lG8WEk' \
    'lkFFkJPn2yomTQth' \
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
    '1iJOyDZJCwufYAUR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetItem' test.out

#- 129 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    '{"appId": "yXVoJ9qEel6x5O5o", "appType": "GAME", "baseAppId": "GzbD5iC34s0kTiXw", "boothName": "PjN8E3wXz4Q1L3hA", "categoryPath": "G9xOOi4DVUYo37I8", "clazz": "Mgh1DJARpi5KzpbD", "displayOrder": 86, "entitlementType": "DURABLE", "ext": {"fXdGvodrl6UOwYZJ": {}, "q3OJhzlgtX87XuWO": {}, "IpQwptcvroohLb6q": {}}, "features": ["wVX2rvVr6DpLOyrg", "3F16PO9YdwqEszRn", "sLZV9arTxBgnOqH9"], "flexible": false, "images": [{"as": "YFOYmaaHSXapFLiH", "caption": "ZfwcmqpHRQcJzso1", "height": 40, "imageUrl": "B2wifDA7LpND5zXL", "smallImageUrl": "hrmEeBwTzs9QmLRe", "width": 63}, {"as": "WjzlqIA8csXOpDTl", "caption": "6yIwkTTCLlRCEQSp", "height": 69, "imageUrl": "wOSNJT3B5f3ynPDy", "smallImageUrl": "KkSYIIOqTjadq7tS", "width": 2}, {"as": "zA8a5uh1LdVOaWOj", "caption": "RinmMTxEz6bdDFDq", "height": 90, "imageUrl": "Zs4v14XFGIVeBHRe", "smallImageUrl": "7JBlzH9CrXX7cBfn", "width": 19}], "inventoryConfig": {"customAttributes": {"F86xZRHxnOP02x00": {}, "SvR2yNPms1DdUL5b": {}, "c6QMB9TtHXqeaYla": {}}, "serverCustomAttributes": {"Ym2XGN51wxYTCHYa": {}, "W7BAFZnpxmzs0AQY": {}, "JnB9w4rkop7LL7Yq": {}}, "slotUsed": 19}, "itemIds": ["SsR3HPQNrtkf3M9o", "I3ymYms9fuih2WML", "ldoxYLZHiFEo5sDr"], "itemQty": {"k8BZ0jnV4jAAxGZ7": 54, "4ngDQya3dvyjxR12": 28, "zHmDzxvCGS2mYl0s": 53}, "itemType": "BUNDLE", "listable": false, "localizations": {"7gQx9kL8a1tEpNGa": {"description": "oJWjZSpZNjdKHqDX", "localExt": {"1jGg2X6VHZOulL5K": {}, "fkSA0amHSK4Sz7fb": {}, "w7cgHHvIEPvqjKVv": {}}, "longDescription": "PP5x3gf1HnOzyuw5", "title": "5KAICc0N5AqnaH49"}, "QFksDAGUgVcYdzd3": {"description": "mUKKxi2anNFpYXwE", "localExt": {"37QpBIY8LEEtCmse": {}, "mV8gAHQaitMhleY8": {}, "3sh3B07O0XQWCZXa": {}}, "longDescription": "Pi8oY6VkZP57PyBL", "title": "X7knj7y5qEOp7hzP"}, "CxvetFhAgAkkEhd3": {"description": "Y16uyKwJ713r4F9W", "localExt": {"C342Uggyr64isEfx": {}, "bFEabmT6MmgebEkQ": {}, "73QcKQldxIqMgf2P": {}}, "longDescription": "aNJqIMDWJUW3I4SK", "title": "jp0NOc5dWAES7S7w"}}, "lootBoxConfig": {"rewardCount": 57, "rewards": [{"lootBoxItems": [{"count": 69, "duration": 34, "endDate": "1976-08-14T00:00:00Z", "itemId": "hQ1rqjRECHyhLYGn", "itemSku": "vEdCjYsnh0Y0rQlu", "itemType": "vKziVTCPTrqHc7vq"}, {"count": 1, "duration": 32, "endDate": "1996-02-27T00:00:00Z", "itemId": "xxiGOrXbWC2k23Jx", "itemSku": "AI3kOXwHnS2VOESY", "itemType": "x49M1JdtImLI5eTu"}, {"count": 68, "duration": 71, "endDate": "1979-01-17T00:00:00Z", "itemId": "CNtVlNaGzoqpAFVT", "itemSku": "8PkW7ouFIdlTuous", "itemType": "RcrhXNAh3Cu4ou02"}], "name": "9lD9VLXNwkZWTbX0", "odds": 0.6660381782598284, "type": "REWARD", "weight": 3}, {"lootBoxItems": [{"count": 33, "duration": 46, "endDate": "1988-09-28T00:00:00Z", "itemId": "9Qm4xKek7ZAZJCk1", "itemSku": "fizRJy5JoIlHjTZ4", "itemType": "mDmXZIBTi05akxBY"}, {"count": 30, "duration": 51, "endDate": "1990-07-16T00:00:00Z", "itemId": "zUW4RDVM8Y4PcXDH", "itemSku": "8RZqUjELC82uP1nM", "itemType": "UDAKQEkOvO52VTPF"}, {"count": 64, "duration": 76, "endDate": "1981-08-18T00:00:00Z", "itemId": "LWL0HQkTuy4fU6Ej", "itemSku": "umf9ltGde7x4luTs", "itemType": "Ek9TNqSiFJyMByoR"}], "name": "KUrvfixr7UFzLzGa", "odds": 0.7756747954342672, "type": "PROBABILITY_GROUP", "weight": 4}, {"lootBoxItems": [{"count": 20, "duration": 56, "endDate": "1999-11-13T00:00:00Z", "itemId": "15MnSNTPMRaYf8Ch", "itemSku": "h5tiLsXIOSE2JSDR", "itemType": "lSX5uOgZ3Msm86Jr"}, {"count": 61, "duration": 29, "endDate": "1971-02-23T00:00:00Z", "itemId": "Q3WcFld5DKwJoCrY", "itemSku": "rlOXZN7MoQZDN1sj", "itemType": "uHXDU9ZFHISuKMr6"}, {"count": 8, "duration": 25, "endDate": "1998-02-15T00:00:00Z", "itemId": "Ki3lHZdnYzFYEnOA", "itemSku": "6gFO3zfSvvmLgxlU", "itemType": "5MdUdF7gHdIf6eMd"}], "name": "0iVUmBrFwFIESxo8", "odds": 0.3239353609656598, "type": "REWARD_GROUP", "weight": 27}], "rollFunction": "DEFAULT"}, "maxCount": 31, "maxCountPerUser": 74, "name": "CHXIr8JndNzIiCZi", "optionBoxConfig": {"boxItems": [{"count": 85, "duration": 33, "endDate": "1993-08-21T00:00:00Z", "itemId": "FtxbpKYKp18TPWOi", "itemSku": "xbTLfdOF3VtCUZ0w", "itemType": "N81CLC324P82gdsO"}, {"count": 2, "duration": 11, "endDate": "1977-10-17T00:00:00Z", "itemId": "aESuOM4olKFVsSfg", "itemSku": "NQjKhrrrStCg99ej", "itemType": "NACAFAJlcWkS5jnh"}, {"count": 79, "duration": 19, "endDate": "1997-05-25T00:00:00Z", "itemId": "yFmbpItmTcMVUlRo", "itemSku": "YFks2ULHooisOHhy", "itemType": "iZyNxeNJcBIePMwB"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 39, "fixedTrialCycles": 70, "graceDays": 65}, "regionData": {"FRybWjjYkFvEHCnQ": [{"currencyCode": "2BiPScmfoBQ1VO5T", "currencyNamespace": "rcu36LS6o87DKPLL", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1987-03-16T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1995-10-02T00:00:00Z", "expireAt": "1984-11-19T00:00:00Z", "price": 59, "purchaseAt": "1972-10-08T00:00:00Z", "trialPrice": 57}, {"currencyCode": "MJys9gtFxWSkvzQZ", "currencyNamespace": "jQrgnXc87G37jhAB", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1979-06-09T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1988-09-15T00:00:00Z", "expireAt": "1985-03-22T00:00:00Z", "price": 72, "purchaseAt": "1989-03-07T00:00:00Z", "trialPrice": 62}, {"currencyCode": "wQyrAb67d9kC9MEh", "currencyNamespace": "GrQVQ3yKCwV9chX3", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1982-08-30T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1990-05-25T00:00:00Z", "expireAt": "1991-02-03T00:00:00Z", "price": 38, "purchaseAt": "1987-01-18T00:00:00Z", "trialPrice": 69}], "wbXgdwQnMuReen3a": [{"currencyCode": "Yjhar5GRzOAfOXba", "currencyNamespace": "EHFX0sySxhkhCpV5", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1999-12-23T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1990-10-27T00:00:00Z", "expireAt": "1988-09-25T00:00:00Z", "price": 54, "purchaseAt": "1985-01-21T00:00:00Z", "trialPrice": 77}, {"currencyCode": "yK8SnSvsUGLqYJev", "currencyNamespace": "KKJR5KWRgHuLJEAS", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1973-11-26T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1988-04-05T00:00:00Z", "expireAt": "1973-10-16T00:00:00Z", "price": 64, "purchaseAt": "1993-12-19T00:00:00Z", "trialPrice": 82}, {"currencyCode": "i6ydoL4tB0FUpx5T", "currencyNamespace": "LiooOqRm1Mxf3Nfj", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1996-08-19T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1975-07-12T00:00:00Z", "expireAt": "1982-02-05T00:00:00Z", "price": 20, "purchaseAt": "1975-07-15T00:00:00Z", "trialPrice": 47}], "pJyTba2Sx7lPUWhf": [{"currencyCode": "LYtrkZ2V3jzXzils", "currencyNamespace": "lRzP96yJ7RbX8fkG", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1991-12-22T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1971-01-18T00:00:00Z", "expireAt": "1988-12-26T00:00:00Z", "price": 41, "purchaseAt": "1975-08-11T00:00:00Z", "trialPrice": 22}, {"currencyCode": "RIQkIiA44zjyRqef", "currencyNamespace": "UM764xXmCkJL9p2O", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1990-10-25T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1972-06-24T00:00:00Z", "expireAt": "1985-02-01T00:00:00Z", "price": 43, "purchaseAt": "1973-06-08T00:00:00Z", "trialPrice": 92}, {"currencyCode": "OHZ2aWSL11msU7Qp", "currencyNamespace": "cpkApFODOqz4FKRW", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1971-10-22T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1988-04-24T00:00:00Z", "expireAt": "1982-07-31T00:00:00Z", "price": 26, "purchaseAt": "1996-09-24T00:00:00Z", "trialPrice": 39}]}, "saleConfig": {"currencyCode": "4ZA04yxGcMcYyrom", "price": 78}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "PXPlSv6kWXBTTodp", "stackable": false, "status": "INACTIVE", "tags": ["QLuFwHyfWs9J4OjF", "73LrEja3XlbCcD2b", "m6OQMQgWL3hmjUyd"], "targetCurrencyCode": "sgdt98KfbaQpgEAK", "targetNamespace": "KLcKbPxGvL2c7Kal", "thumbnailUrl": "LFWBzkHql6eJa7PZ", "useCount": 55}' \
    'MvexshOyL8KXBfLq' \
    '1zWLmtFhefMqfbE0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'UpdateItem' test.out

#- 130 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'DZBwK4s4YGhc9qjs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'DeleteItem' test.out

#- 131 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '{"count": 66, "orderNo": "D9Vwsfzatv4JzfVN"}' \
    'AJbSLBzqs2u1EntD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AcquireItem' test.out

#- 132 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'zkQLgWQHXc3bRYKb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetApp' test.out

#- 133 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '{"carousel": [{"alt": "JGFP8HZNLJ7aPbRM", "previewUrl": "RrbKjoifZAWt13IS", "thumbnailUrl": "gdwAum4b3t1Ph8xH", "type": "image", "url": "e7O061ScAQ7gSO3G", "videoSource": "youtube"}, {"alt": "OlQUCJsDilWhSc6X", "previewUrl": "Ixh1HqBg5FhY2vcl", "thumbnailUrl": "qnTbyZ7fYvmiZxdN", "type": "image", "url": "LRxydIE1CQFSQS3R", "videoSource": "vimeo"}, {"alt": "OO6qVUihFznsLFP3", "previewUrl": "013gsIOArelbYwYT", "thumbnailUrl": "tGsRNij1bUAIrKYw", "type": "video", "url": "3JvA3stZ6FN0omme", "videoSource": "youtube"}], "developer": "HiOrbuq9cXar8FKA", "forumUrl": "CMfaESKKo0RBtKDj", "genres": ["RPG", "Strategy", "Action"], "localizations": {"gWnODMMswus0ykKy": {"announcement": "OTFH9npo1k2W89U6", "slogan": "PA5Byr1VJKsNpin9"}, "ZAg5mDVmepTMiQqO": {"announcement": "A7WiIi8k4T7A6suz", "slogan": "0JPLhBV8H4Rs8p9A"}, "flDjkRQna4afJC9m": {"announcement": "gf0blFr8NUmSdS49", "slogan": "CybTerX6wW5HLYxM"}}, "platformRequirements": {"5DN6DJmnjBd7q6U3": [{"additionals": "V1i7ip9ibQlReTec", "directXVersion": "qcbggfeYn1FnvTuT", "diskSpace": "rRI8Z87U0Y5R6IUW", "graphics": "UGWDcgSJ29Tqsnbt", "label": "XNBeq2uoLHWsw0m7", "osVersion": "ZY46mjkOA84jougr", "processor": "IsaMHmzafNaxCNIz", "ram": "vOh61wCAYs9Qae7T", "soundCard": "EBnzFuxHzrR3PiHy"}, {"additionals": "AFfiwIi9bI2X8C6x", "directXVersion": "nSImJqwyGzE1BMLJ", "diskSpace": "mTvUJIV0W2K8alZa", "graphics": "xyEak02r4dRvrKr0", "label": "7n72icTrg8RyI3bD", "osVersion": "BIKGiLSqDVnEtbqH", "processor": "nY6D1Z2oKGmRbhR6", "ram": "rnSjFQf699gOqEWj", "soundCard": "r9T9UhsGYJ3NLSVO"}, {"additionals": "dqFxY9j8P8IFwNKh", "directXVersion": "0Zni7P6ZfRFkQolD", "diskSpace": "EtyxyMGw4ZEIMYFa", "graphics": "IEr69zjnPKVLZ59Q", "label": "uwBbW2xX96TmFiMr", "osVersion": "qZaZSR4SAMIG5DRP", "processor": "307xNIxMniv6VDtG", "ram": "hPQu5IgTlvO4wr8D", "soundCard": "7APHhihwdNSBKpqJ"}], "8V1kQHisGldXgqa9": [{"additionals": "9UNyHIlnrLOesUoA", "directXVersion": "wwCO2c7aEAHcpdx9", "diskSpace": "1UabvNvRaUrUqTcF", "graphics": "sGXxjR7vTeNdfPVW", "label": "mEdVFXX02sJsXg7A", "osVersion": "KOu2Xk8T0sqdmD20", "processor": "rolfU1yEokwoBSfR", "ram": "PMdPXru40VmHvpaJ", "soundCard": "6EFG9wLOlD7N2GNQ"}, {"additionals": "s0IgMAbRc0I82pjV", "directXVersion": "4UBb0pZrHFxE9EAc", "diskSpace": "Me8RHXnsxazB0s0O", "graphics": "GtkrGuIEzLqOEqdE", "label": "cHbFrNLqqyBzPWvD", "osVersion": "sw3y3noSTunCZN39", "processor": "o0vZqaSrHfwrqqHX", "ram": "HpPnC56p62cEYBMP", "soundCard": "DDNvuy4MWHW8YW1e"}, {"additionals": "uC0ubVpUB9WTnYHG", "directXVersion": "mKeMnGn3hXTX65W9", "diskSpace": "y7jKRgCFKj2fpaED", "graphics": "gvMXedU0CtjH3UPJ", "label": "y3CnYG5ypxMPXQb9", "osVersion": "Aa9QMoQgjOf0byuj", "processor": "8Uxptb2o5jdTreVK", "ram": "h6flE9FaNdFDCH0B", "soundCard": "MCufX5Ln9YKDyW9w"}], "NSXGvHGabfCgecNk": [{"additionals": "nWoEbRoZQ4VuKeTQ", "directXVersion": "QXDNtjgypGgBtsGO", "diskSpace": "xHfW3WBHUGCPEvc9", "graphics": "7uDKDBhngmXpNaXS", "label": "gg2yJzaaUc8p87eT", "osVersion": "Tm092rucPAhnaYqS", "processor": "Lkr3tlvhwbpOwvWy", "ram": "VZbXXgvJKjvhZn4m", "soundCard": "8rgQUG1gDFutWedP"}, {"additionals": "pbBwcmRSOW5MFhNe", "directXVersion": "BercY9DbSYPsKMU8", "diskSpace": "ah8NJxYKZWUVW9Ny", "graphics": "UUdkrKCCEaIUUwPg", "label": "ILFEno141RnaYhr2", "osVersion": "WJyqCvAfWi7mDpF9", "processor": "Uxmjutqgr8019aVH", "ram": "HRLK0fv936lSL3gA", "soundCard": "K6QqFlWlAR1frDQI"}, {"additionals": "VwmefiYRytVWtyJI", "directXVersion": "7ujeL0gjx8jAfmTL", "diskSpace": "OwiBSSe1E9DWrTYL", "graphics": "cDOMWy0wefl1KKxN", "label": "l1Bu8GE15JzEvFlz", "osVersion": "pDnYuSqynNlJACpH", "processor": "VndrAR7z9J0bNuep", "ram": "qWsDLjzow7MvJGnW", "soundCard": "bcVqeQS68NcKrOSq"}]}, "platforms": ["MacOS", "Linux", "Linux"], "players": ["LocalCoop", "MMO", "CrossPlatformMulti"], "primaryGenre": "Strategy", "publisher": "16s1Oq4B0c6hcP5j", "releaseDate": "1990-12-04T00:00:00Z", "websiteUrl": "Y1KxbFbyzOePaXR3"}' \
    'ub0i4catfNOlhlYH' \
    'Qh4VgYhBaVDBRlLx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'UpdateApp' test.out

#- 134 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'oAzljrhdaWNQoeso' \
    '9mKjTRboTLjWe4Lf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'DisableItem' test.out

#- 135 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'Jee5PI5dFv5buhIZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'GetItemDynamicData' test.out

#- 136 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    '4eMnCDQFCYcyYCi2' \
    'g6s9FQKCfcu923Yp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'EnableItem' test.out

#- 137 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'sdjtVRUIv3uIM3Co' \
    'S6JahcK1Pr6BT8bc' \
    'W21yKVRUAUf5lebf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'FeatureItem' test.out

#- 138 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'PenWUEBZC8keF5vI' \
    '1QiMb8GRzCETFWSf' \
    'JvAnpvMcDHwA9mw8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'DefeatureItem' test.out

#- 139 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'ujZZQUNi4NDzBP7m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'GetLocaleItem' test.out

#- 140 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 49, "code": "M4ZrXjamc3OX9fjE", "comparison": "isLessThanOrEqual", "name": "IsXT5AL1og70bKW5", "predicateType": "StatisticCodePredicate", "value": "YtGAVQvqyIVadq2J", "values": ["1cCBgg2D4HUqIhXD", "NwseD5BbL13OgHZy", "ITEaFYCmQEyL35Lh"]}, {"anyOf": 39, "code": "GcvW7T4dk3MBzfrS", "comparison": "excludes", "name": "GlXPukj7q5MjU2f4", "predicateType": "SeasonTierPredicate", "value": "3bcUoBfWLjRXOqao", "values": ["IavouuFpqcq4Gd9f", "F3ACWSPCOIejZfSn", "DBgsPHcNg0Bapd2W"]}, {"anyOf": 20, "code": "0pd4puXNhGU3RmYw", "comparison": "isGreaterThanOrEqual", "name": "EwPDL8fEraUQnzcZ", "predicateType": "StatisticCodePredicate", "value": "vGbKVlE5VulHAZZ2", "values": ["SKo1C0ktvmekdbic", "6I2n5Hclx6xvlDEh", "lvzVBqt9fNnODJKr"]}]}, {"operator": "or", "predicates": [{"anyOf": 90, "code": "dt60vGd1u3lR0fkC", "comparison": "includes", "name": "mwgELy9cxgDaEUFi", "predicateType": "SeasonPassPredicate", "value": "IV4pb5hZyPikzEmn", "values": ["ibu6WMYMScWAzVVd", "mdOWGrvu5JZsUPqt", "ph4Z0KsCWhJPpmpj"]}, {"anyOf": 88, "code": "xTtcIyIFNDIRhPIR", "comparison": "isNot", "name": "xJPvHewpv9IeC6LA", "predicateType": "SeasonTierPredicate", "value": "QG5zPNH4eYMWbtvk", "values": ["fI6ZeDWbxHSLn6kQ", "LyjqaJnmx4p5ShR3", "7OoIixOGXwFzXjpS"]}, {"anyOf": 49, "code": "Ni9NFQFpBDG4baNq", "comparison": "excludes", "name": "4rZ57Ra4Wlon8Zze", "predicateType": "EntitlementPredicate", "value": "GH0N4kVmTj683Ybw", "values": ["fNBFiIw9mkjC9qXO", "4TKyPTxRuzNfmvBc", "VUNHtfbgUqbLQ3WT"]}]}, {"operator": "and", "predicates": [{"anyOf": 65, "code": "Q0SXyMTygZRBzJUp", "comparison": "isLessThanOrEqual", "name": "r5ZkwYPLnvikBnp1", "predicateType": "StatisticCodePredicate", "value": "qJaiwkoaBb8UYH2P", "values": ["z5V5CtSrcX7aRP8v", "o2dQM3ZXq9atijyF", "Z9a77wOP10AbpbjZ"]}, {"anyOf": 94, "code": "m3ITROznZA6EVEXE", "comparison": "isGreaterThanOrEqual", "name": "lwasnryjxylwRVcy", "predicateType": "SeasonTierPredicate", "value": "8iHO0dKNHWBFM13F", "values": ["2YoSLUIzzQsIU3IZ", "37X9HTu6c4mMUdJo", "KmyaU7qTgHxGQ4Dm"]}, {"anyOf": 11, "code": "P7Yh6ERWyedt6rkP", "comparison": "isLessThanOrEqual", "name": "Rk0DwXkYJ6aX6XRS", "predicateType": "EntitlementPredicate", "value": "fyNRUhMXX7FiB3X6", "values": ["34iuF8pqhqsqRF4k", "NB2IE43MBCGNyjqn", "qMbz4sxPUl2WbQNF"]}]}]}}' \
    'DuWD1qiZzXQxSDgH' \
    '9L20T6fVxvK30nHM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateItemPurchaseCondition' test.out

#- 141 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '{"orderNo": "Yxf8xOR1DEgYR3iO"}' \
    'ynLLtqSmaHvUExz8' \
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
    '{"description": "o7TwcWL7fNlyGuj0", "name": "EkM7M8G78KZj2jWy", "status": "INACTIVE", "tags": ["jsrHy7SSarFsJyan", "oth2jhzr7POOjzRz", "lmVmpfmMq65nYpNA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'CreateKeyGroup' test.out

#- 144 GetKeyGroupByBoothName
eval_tap 0 144 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 145 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'wv9UsvPaX8W0GvPN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'GetKeyGroup' test.out

#- 146 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '{"description": "7gRfsySRn2FX0Ac7", "name": "CzuPXE90ufrBaS45", "status": "ACTIVE", "tags": ["rt5FnAIz4y9yy462", "Mnwchld3LWFhC1kB", "UvsUcnOXhewthszM"]}' \
    'sYOEmQiF1OsXfJG3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateKeyGroup' test.out

#- 147 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'psjIBzjaFmN0MInv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'GetKeyGroupDynamic' test.out

#- 148 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'VPAPEovHVVguusvV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'ListKeys' test.out

#- 149 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'UxkCG4IGPYHaRvV3' \
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
    'JGi5l0G5NBtXVTXK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetOrder' test.out

#- 153 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    '{"description": "1JdoClQQGLneKl3i"}' \
    'XOvSGgZzuoTiOgT4' \
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
    '{"domains": ["AtBZJsMBPDcUuWC1", "NgHaxQlxs2MPGkLe", "Y5CedGPB0iJF96NG"]}' \
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
    '{"currencyCode": "7vODPmfnV8dOr38j", "currencyNamespace": "FYjFRDj47EZTCCwz", "customParameters": {"8yawNImZdPzt9koN": {}, "SL3vqGgJOWkI0sHp": {}, "hIU3KaP7nk9iEaqu": {}}, "description": "dy3aYo02pzHannSL", "extOrderNo": "eEYvuciynwWb01HL", "extUserId": "rp6OW9Y7FIIEJMm4", "itemType": "SEASON", "language": "Jj-Spsg", "metadata": {"jL5qUyimmVzOJYeb": "I5Egye4CkNIFSC7I", "cfdqOCaqFaXYK6Az": "Vrp3wn2BlIfmyT5o", "wJEG08jO7JMvkh08": "NQQhBIt2H2PvWFnJ"}, "notifyUrl": "MiszwcYW9Jy4n5q4", "omitNotification": false, "platform": "AdisxP0DyxqSYeCl", "price": 54, "recurringPaymentOrderNo": "gEZgIMDALa4nsITU", "region": "eFKNh8kgmMjBxD74", "returnUrl": "LujtGQD9sT5LHkWj", "sandbox": false, "sku": "Io6VbU9gwMgZPR9Q", "subscriptionId": "5Lstog0ehjEmcjJz", "targetNamespace": "kf7rNu3ZARHXZ5yu", "targetUserId": "JsfxI3zuYwCYQw4R", "title": "r3lmeyijwD3pYZEo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'CreatePaymentOrderByDedicated' test.out

#- 161 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'KfBV4CX15snBgmfl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'ListExtOrderNoByExtTxId' test.out

#- 162 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'ygDW6ab0RoZeMIFY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetPaymentOrder' test.out

#- 163 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '{"extTxId": "mEraqGPOCMPGtRg0", "paymentMethod": "HGzSGs8nBUQVBsF0", "paymentProvider": "WXPAY"}' \
    'Jl9ljs9WPwxzICEy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'ChargePaymentOrder' test.out

#- 164 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '{"description": "kNJeEn6eiosoCvrG"}' \
    'eDygOZbA1UGLox4e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'RefundPaymentOrderByDedicated' test.out

#- 165 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '{"amount": 73, "currencyCode": "VB7vM6wSqwns2XJf", "notifyType": "REFUND", "paymentProvider": "NEONPAY", "salesTax": 50, "vat": 41}' \
    'HcWUCcahA1tjiBug' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'SimulatePaymentOrderNotification' test.out

#- 166 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'kSmA8prRvnuoHm9f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'GetPaymentOrderChargeStatus' test.out

#- 167 GetPsnEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-psn-entitlement-ownership' \
    '{"accessToken": "oRLP4zSxApJe0apl", "serviceLabel": 88}' \
    '9VixS5Es3u4km3iK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'GetPsnEntitlementOwnership' test.out

#- 168 GetXboxEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-xbox-entitlement-ownership' \
    '{"delegationToken": "iNLRNa01SihgZby9", "sandboxId": "mBdGrJY5J0e9jWcV"}' \
    'TCNxjdv8GxhJoB4l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'GetXboxEntitlementOwnership' test.out

#- 169 GetPlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-get-platform-entitlement-config' \
    'Playstation' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetPlatformEntitlementConfig' test.out

#- 170 UpdatePlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-update-platform-entitlement-config' \
    '{"allowedPlatformOrigins": ["IOS", "Epic", "Playstation"]}' \
    'Nintendo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'UpdatePlatformEntitlementConfig' test.out

#- 171 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Xbox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'GetPlatformWalletConfig' test.out

#- 172 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    '{"allowedBalanceOrigins": ["Epic", "Playstation", "Steam"]}' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'UpdatePlatformWalletConfig' test.out

#- 173 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'GooglePlay' \
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
    '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
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
    '{"appConfig": {"appName": "IlBnOKyfAbdUB1OM"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "oKTXANlenFuUeRc2"}, "extendType": "APP"}' \
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
    '{"description": "CqQ9kgrqAIaKAUBf", "eventTopic": "yFCxsJfyos4fOD6B", "maxAwarded": 100, "maxAwardedPerUser": 25, "namespaceExpression": "cwUNByHqsS7t8WUp", "rewardCode": "g0equIg7wIz8o3rF", "rewardConditions": [{"condition": "WvlE7bmuaFNPCECK", "conditionName": "SzHTT5beKYt4CDlW", "eventName": "ZzqpJeQd6tN5oH4E", "rewardItems": [{"duration": 100, "endDate": "1989-11-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "OUAh5VXa79702d31", "quantity": 52, "sku": "8ybCNhF9RCyMn5VX"}, {"duration": 35, "endDate": "1981-06-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Hsq4hLUkLLTNMnml", "quantity": 65, "sku": "Kjrz4HAGIJOSxoJd"}, {"duration": 71, "endDate": "1989-10-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "w70J2JeqNTxshoZJ", "quantity": 28, "sku": "aj7wqr7wwPCgByCn"}]}, {"condition": "ljJ7CYvapWO5JGco", "conditionName": "1tRG98viuYwQTHKP", "eventName": "cc8Z82WtwcihC87O", "rewardItems": [{"duration": 100, "endDate": "1994-03-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "TYAkogbV1bNoJJUh", "quantity": 77, "sku": "xkRSajXSTpU3aCkz"}, {"duration": 33, "endDate": "1999-05-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CBnIHoRNWTVvIN7c", "quantity": 36, "sku": "uh7Ls9nxKiaoWmrw"}, {"duration": 82, "endDate": "1977-03-31T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "sva1jk545vt1Vu7d", "quantity": 38, "sku": "JF9lLvPS5jJ58vaR"}]}, {"condition": "aaxVQeMUb1kvSj6j", "conditionName": "cjlxGsLgfrhBTH1Q", "eventName": "V91XmB5Z6en6c5d6", "rewardItems": [{"duration": 10, "endDate": "1995-08-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CaXsZoyeqN5ouEcX", "quantity": 90, "sku": "2i1n2WJVJy6yBPVm"}, {"duration": 31, "endDate": "1996-01-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "96sJUnv5BwzKyxJq", "quantity": 56, "sku": "WKnNDFZOok9snWC9"}, {"duration": 59, "endDate": "1976-09-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "iRmbELIzawfXvKu5", "quantity": 95, "sku": "mPIGCrJozIio8nWa"}]}], "userIdExpression": "64x5pJSHZCzyWKP3"}' \
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

#- 335 QueryWallets
eval_tap 0 335 'QueryWallets # SKIP deprecated' test.out

#- 336 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    '[{"creditRequest": {"amount": 41, "expireAt": "1990-02-26T00:00:00Z", "metadata": {"47AsxVCXefUThofl": {}, "sBWhnubnROvA1Cxk": {}, "XWIlkrF4cf9E2pKW": {}}, "origin": "IOS", "reason": "AC4I9fqjfISERaDf", "source": "TRADE"}, "currencyCode": "H2zFRgcuTMYiBESl", "userIds": ["CYdNui4AfrJuSaiO", "O66qvH38lYKeEiUS", "Yxuj6n1UTUHsgjv4"]}, {"creditRequest": {"amount": 4, "expireAt": "1987-09-16T00:00:00Z", "metadata": {"YxZHMK3ybnM1cQEi": {}, "hWjWNwYN6xeNeZMt": {}, "T7f2d2NhlIgGSvbX": {}}, "origin": "GooglePlay", "reason": "8zhoVbnYs36USYZP", "source": "SELL_BACK"}, "currencyCode": "j5wR9o07ypJFcZro", "userIds": ["RvKGIR3uSMSyy1zY", "i0QeG6cD8trKjrFS", "u4MOj7pBAbAKLICu"]}, {"creditRequest": {"amount": 91, "expireAt": "1995-03-22T00:00:00Z", "metadata": {"5xUgtPxWpU3njfM3": {}, "MLLEwpsdD0knPNT7": {}, "MZM5TUkTp46Y9LTN": {}}, "origin": "Other", "reason": "Tu32ZzATykI3Y8sp", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "uXCCJSaYmbf4tEBM", "userIds": ["WAIsbPmXPNCh5Rfq", "a56radYciedOlGrf", "2UC1TCPCsq2BAEzR"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'BulkCredit' test.out

#- 337 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    '[{"currencyCode": "TUc5ACZJjhP2aqyZ", "request": {"allowOverdraft": false, "amount": 32, "balanceOrigin": "Playstation", "balanceSource": "IAP_REVOCATION", "metadata": {"ZTXiAJVwzchoABeh": {}, "dYvksiAtxe6FuXv7": {}, "wMnItLay1ITOwqgF": {}}, "reason": "Dt8J1sETgOrOLZUb"}, "userIds": ["6jRox5zjnyjrUk4J", "AORZPikticJyIfLP", "Qfz7B7kt11ORM1E2"]}, {"currencyCode": "3Q4SvSmMtkqbFFNr", "request": {"allowOverdraft": true, "amount": 88, "balanceOrigin": "Steam", "balanceSource": "OTHER", "metadata": {"cYwTyG7sUevPhkYV": {}, "72N58lwa3vXLwnFG": {}, "nmLjqORwHyI3QRLh": {}}, "reason": "TWOcA2kF7G3yINin"}, "userIds": ["3D2r0PGvO0IGH5aA", "Z8QrU6nMGhT5oddK", "2chnQw6dRB9aYleh"]}, {"currencyCode": "xTCbwpHq5b9TYQLU", "request": {"allowOverdraft": false, "amount": 67, "balanceOrigin": "Oculus", "balanceSource": "TRADE", "metadata": {"df6RBiYws6MPqsSK": {}, "y9SsYw3NP5yL2qIr": {}, "hx90T4EDNbgre3Ew": {}}, "reason": "hoEBW0FNQL1GY5CS"}, "userIds": ["EzZsaak9MNj0mKis", "5KQHhwB99zMKOwz2", "mKAvkSzld2vfGrbc"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'BulkDebit' test.out

#- 338 GetWallet
eval_tap 0 338 'GetWallet # SKIP deprecated' test.out

#- 339 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    '2jP3wtM1fSokFngc' \
    '559mMToWdIIC6lFV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'SyncOrders' test.out

#- 340 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    '{"allowedPaymentMethods": ["oAXWUBY9BL1BmvNw", "KXwiUQ1QS5fveJC1", "Tg5xtzTqaSWZu4mo"], "apiKey": "OYd8XdHELjymTcNf", "authoriseAsCapture": false, "blockedPaymentMethods": ["b4CIiJp9P8xb23hd", "j17CLEa8QbsGBZrZ", "xDKJWeWYfQ5eExWe"], "clientKey": "qj0EGyRTt1yUKDmg", "dropInSettings": "URbZe3BXyDfCse1I", "liveEndpointUrlPrefix": "djn7UTJHBJE3tOlW", "merchantAccount": "5QYRcQcxJjxgx0It", "notificationHmacKey": "94BuLjZOmtY6jje5", "notificationPassword": "osrYAf28mqvM4LzA", "notificationUsername": "My18Az6wAqGqaSmw", "returnUrl": "DvoaPbcj2JPPSWbs", "settings": "PzR9vQiwMdHSV2fA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'TestAdyenConfig' test.out

#- 341 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    '{"appId": "6M7yIgULctkrQt7U", "privateKey": "dVDHgEyEMT17gAkJ", "publicKey": "9ZOyUyKXZ4gnJD0b", "returnUrl": "tvfiaLotp8rjTOGu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'TestAliPayConfig' test.out

#- 342 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    '{"publicKey": "uZKYSboPR01QNJxA", "secretKey": "5bUgJyfyqZXsJXmW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'TestCheckoutConfig' test.out

#- 343 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'DebugMatchedPaymentMerchantConfig' test.out

#- 344 TestNeonPayConfig
$PYTHON -m $MODULE 'platform-test-neon-pay-config' \
    '{"apiKey": "aoddgjJ2F009o01w", "webhookSecretKey": "DwPk87RGZxhbon95"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'TestNeonPayConfig' test.out

#- 345 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    '{"clientID": "Kr4kABVvvoyJHCJB", "clientSecret": "XauQb7rZO3cLAcIT", "returnUrl": "U9eaHQK6btDxqspE", "webHookId": "HxJ7HIZTmr9S9JzI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'TestPayPalConfig' test.out

#- 346 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    '{"allowedPaymentMethodTypes": ["oTTXKTR2Z9P66amF", "5l35onaRK2kOt01M", "y99Nzxfq4jTsNihB"], "publishableKey": "MEN4c79eXbUHmcvC", "secretKey": "VohS9cZeNhZq7LKZ", "webhookSecret": "kGycl5oKG2FV9jHn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'TestStripeConfig' test.out

#- 347 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    '{"appId": "Wg7dx8OSOJ9EFaxe", "key": "DD8oVvwa87YrbanF", "mchid": "FARSHMaf8ayqvkXv", "returnUrl": "Hfj2e4dQJLp4KMIc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'TestWxPayConfig' test.out

#- 348 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    '{"apiKey": "g74z6KA7qyrdGdWM", "flowCompletionUrl": "rPtZSPUCJfnrl3yU", "merchantId": 0, "projectId": 46, "projectSecretKey": "E1gohjzQBWPVD8fg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'TestXsollaConfig' test.out

#- 349 GetPaymentMerchantConfig1
$PYTHON -m $MODULE 'platform-get-payment-merchant-config-1' \
    'TZBggdAj0B017EuJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'GetPaymentMerchantConfig1' test.out

#- 350 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '{"allowedPaymentMethods": ["Vu3uC314IH9MRg40", "yRzHF2sUxlgcXZZg", "9Qz8cBJEfDTE8ndi"], "apiKey": "mKYOwqvWgcSMiL3A", "authoriseAsCapture": true, "blockedPaymentMethods": ["yHugFLvZcTCEMblo", "ZsrrwFc43BEFzGxz", "XRz9ek9cTfklLvhR"], "clientKey": "EHXR9ZyR0gYn2o0U", "dropInSettings": "sgX0kqqfQGB8T8wu", "liveEndpointUrlPrefix": "0Hyqob2hEKozEd4P", "merchantAccount": "5Auq8Vd4w6txSKD5", "notificationHmacKey": "jHXOt6NIhH6zSxo8", "notificationPassword": "OYohg3GlW72bmWwg", "notificationUsername": "dGm7u6jzl05VURHB", "returnUrl": "2aH1OBjSbRTbA5ng", "settings": "X8nMk5seGmbg5yaV"}' \
    '5LtdtmXxubnK90It' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'UpdateAdyenConfig' test.out

#- 351 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    '1WEpBd8W8yL5eZhT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'TestAdyenConfigById' test.out

#- 352 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '{"appId": "nha9eiJsMlXtygrz", "privateKey": "G2QUljK667R7aO0d", "publicKey": "O8De9iVlq9yqguKM", "returnUrl": "z482n0E7GAZv2XPO"}' \
    '8DiNcJaVwdWa2ZFc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'UpdateAliPayConfig' test.out

#- 353 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    '4YAfXGVqiimFcca0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'TestAliPayConfigById' test.out

#- 354 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '{"publicKey": "MFCaLqc1H9pctBog", "secretKey": "eWR41LE3hNpOlQnL"}' \
    'V2MdeaUWnsI5pKAF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'UpdateCheckoutConfig' test.out

#- 355 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'AjEaVGZXA8TH045L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'TestCheckoutConfigById' test.out

#- 356 UpdateNeonPayConfig
$PYTHON -m $MODULE 'platform-update-neon-pay-config' \
    '{"apiKey": "53XwwLUeWVf3gL2y", "webhookSecretKey": "czZXxdsLxTWwVPr4"}' \
    'U5NXmKyOdqZZYELS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'UpdateNeonPayConfig' test.out

#- 357 TestNeonPayConfigById
$PYTHON -m $MODULE 'platform-test-neon-pay-config-by-id' \
    'APxBDIEPT2GAxOHI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'TestNeonPayConfigById' test.out

#- 358 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '{"clientID": "nufNkRydUBWF1Nh9", "clientSecret": "i59vuR6CcSzvItwd", "returnUrl": "qe2s7ffSpc1OxKg4", "webHookId": "Uf3g4nlTA2frzx3v"}' \
    'b2Yn8hNVujI5u1iv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'UpdatePayPalConfig' test.out

#- 359 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'KmyBtn9fNT1GF6M2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'TestPayPalConfigById' test.out

#- 360 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '{"allowedPaymentMethodTypes": ["zSlbUz3WBHpFxzpk", "rOzs73jVKJexWAaz", "bTZ8xcQZYsCETX7e"], "publishableKey": "ZJ4NO0fjNEPoyNa1", "secretKey": "H6pgh7vmRlxBjIqe", "webhookSecret": "BpbdOgQElalEbCZE"}' \
    'VCPO4CPfrYjqZmUk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'UpdateStripeConfig' test.out

#- 361 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'z3Ex6g0nu0nDYcjN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'TestStripeConfigById' test.out

#- 362 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    '{"appId": "C6mnTmEkvGygUoYZ", "key": "DyX1XgjjnrUVMhDf", "mchid": "w4eyyzx2XNh0EY35", "returnUrl": "JVEQoV68grUjl9Qa"}' \
    'e3pK8C8CdtTw2J5Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'UpdateWxPayConfig' test.out

#- 363 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'QEu9BANVmy4KLyKR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'UpdateWxPayConfigCert' test.out

#- 364 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'CKGC9EJ56TgtZfrB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'TestWxPayConfigById' test.out

#- 365 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    '{"apiKey": "CM5NKhIaT1B5Rkbc", "flowCompletionUrl": "6yUtoHNPAPLpeC92", "merchantId": 89, "projectId": 91, "projectSecretKey": "OlmtwrNVp1hq3dVt"}' \
    'u3cDHRPMJTQpwuvc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'UpdateXsollaConfig' test.out

#- 366 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    '5CHBSCrAHrYQJhGB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'TestXsollaConfigById' test.out

#- 367 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT_DARK"}' \
    '6hQO7iHYTWfraJoG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'UpdateXsollaUIConfig' test.out

#- 368 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'QueryPaymentProviderConfig' test.out

#- 369 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    '{"aggregate": "CHECKOUT", "namespace": "RaOG40vwmux5X7eW", "region": "oUz63g5ldLNvDsFR", "sandboxTaxJarApiToken": "xvIWPhDHlguiwW43", "specials": ["ALIPAY", "WXPAY", "PAYPAL"], "taxJarApiToken": "AcqI35Kja3aQgfSh", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'CreatePaymentProviderConfig' test.out

#- 370 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'GetAggregatePaymentProviders' test.out

#- 371 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'DebugMatchedPaymentProviderConfig' test.out

#- 372 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'GetSpecialPaymentProviders' test.out

#- 373 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    '{"aggregate": "XSOLLA", "namespace": "p8I8SvYIsj0HTDvN", "region": "XyTxvPRnlFSQ6v7K", "sandboxTaxJarApiToken": "73Xi2AB5OYFvqKED", "specials": ["ALIPAY", "PAYPAL", "ALIPAY"], "taxJarApiToken": "kp9JuO0Qscn1hnFX", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    'MYOj7smPuH5BZrTs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'UpdatePaymentProviderConfig' test.out

#- 374 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'NJRR5uMT5lIHTRyE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'DeletePaymentProviderConfig' test.out

#- 375 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentTaxConfig' test.out

#- 376 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    '{"sandboxTaxJarApiToken": "idwdTqJoLD9kVnRY", "taxJarApiToken": "M4lgdcOb3Jx4X529", "taxJarEnabled": false, "taxJarProductCodesMapping": {"6MNSv6eRNd4FbsuG": "GAOCvNpKR5WiIdTz", "oKekJyqR0OkuudBw": "FtKhDkRzY1NTTWWM", "1JAu58gWdNz0xp2P": "HIttdH5OoXEL1xP0"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'UpdatePaymentTaxConfig' test.out

#- 377 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'tQEooU046EL2HqNu' \
    'u1OPm9hwPfrlE7xq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'SyncPaymentOrders' test.out

#- 378 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicGetRootCategories' test.out

#- 379 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'DownloadCategories' test.out

#- 380 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'yfwWmTGhwyWJ7EAB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicGetCategory' test.out

#- 381 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    '7kGxNwO0Z3aq4k3v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicGetChildCategories' test.out

#- 382 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'ORHgbQI9EqFrhz87' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicGetDescendantCategories' test.out

#- 383 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicListCurrencies' test.out

#- 384 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'GeDLCDurableRewardShortMap' test.out

#- 385 GetAppleConfigVersion
$PYTHON -m $MODULE 'platform-get-apple-config-version' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'GetAppleConfigVersion' test.out

#- 386 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'GetIAPItemMapping' test.out

#- 387 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'allb2jaRoKBxDcnd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicGetItemByAppId' test.out

#- 388 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicQueryItems' test.out

#- 389 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'YM9mz3tE3VsEwkaf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicGetItemBySku' test.out

#- 390 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'cV7jvya0krMPGafh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicGetEstimatedPrice' test.out

#- 391 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'hKkgPI2HTPdp4vXI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicBulkGetItems' test.out

#- 392 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    '{"itemIds": ["xOt6CxiNDALftVYM", "BY66nz5wiI9Utojz", "AhVtlXb0Ww9cX9qD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicValidateItemPurchaseCondition' test.out

#- 393 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    '3up8zSqbSAJ6bSZO' \
    'sVSW0yfhrPlOVRke' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicSearchItems' test.out

#- 394 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    '0Rw0rMOzAoqZ9f1E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicGetApp' test.out

#- 395 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'MlA0TgPiaTmgHDc2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicGetItemDynamicData' test.out

#- 396 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'z6oQw2U7bEMvRb14' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicGetItem' test.out

#- 397 GetPaymentCustomization
eval_tap 0 397 'GetPaymentCustomization # SKIP deprecated' test.out

#- 398 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    '{"neonPayConfig": {"cancelUrl": "bhXWTQmF3l6Hvpzh", "successUrl": "H0EfWL4qJaLzNq81"}, "paymentOrderNo": "FeQxv1WvDbJOO9Ei", "paymentProvider": "NEONPAY", "returnUrl": "svAbiWKf1R8Jo6PY", "ui": "MB78PcooWLEHt7SG", "zipCode": "sO6cJrH6H0hqUIDO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicGetPaymentUrl' test.out

#- 399 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'C2lhvjQbxJ8kMyYj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicGetPaymentMethods' test.out

#- 400 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'TMwxUt8Wn0bPEgnV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUnpaidPaymentOrder' test.out

#- 401 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '{"token": "esvMZCUgM3yTN4uu"}' \
    'J6Vj8z7NX74cqoA0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'Pay' test.out

#- 402 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'EYfSvI7eknvgQgx9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicCheckPaymentOrderPaidStatus' test.out

#- 403 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'WALLET' \
    '8w3YQS19mKC8Pt64' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'GetPaymentPublicConfig' test.out

#- 404 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'Un3vbUiPzqRlG9bl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicGetQRCode' test.out

#- 405 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'KnrHstZmSBos9B4F' \
    'BRgTZf5xSoV4NMrE' \
    'WXPAY' \
    'aKU8Ip9YwI71rpGg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicNormalizePaymentReturnUrl' test.out

#- 406 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'zgibcIwh74WoYm2R' \
    'PAYPAL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'GetPaymentTaxValue' test.out

#- 407 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'XGZvs3NmW1Oq88IV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'GetRewardByCode' test.out

#- 408 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'QueryRewards1' test.out

#- 409 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'mlOYuPb1aUarkc4H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'GetReward1' test.out

#- 410 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicListStores' test.out

#- 411 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicExistsAnyMyActiveEntitlement' test.out

#- 412 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    '54D1OSJ3cWczEEGO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 413 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    '3c34uFmlM5vFocIT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 414 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'DTP5pBOko0gsrX5Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 415 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicGetEntitlementOwnershipToken' test.out

#- 416 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    '{"gameId": "mIHaEjuL7g0PIjLn", "language": "dPU", "region": "yfFOVTaSJ3nJLnkD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'SyncTwitchDropsEntitlement' test.out

#- 417 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    '8LYM65VLZiKm15he' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicGetMyWallet' test.out

#- 418 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'z2MgriZ60A9qKACS' \
    --body '{"epicGamesJwtToken": "JnrZAWDQGJdqaQ6y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'SyncEpicGameDLC' test.out

#- 419 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'jAOKmxscQRCmbWTm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'SyncOculusDLC' test.out

#- 420 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    '1PRgpzXRHuGgWoSn' \
    --body '{"serviceLabel": 92}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicSyncPsnDlcInventory' test.out

#- 421 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'ASK80uHs4x776RIC' \
    --body '{"serviceLabels": [12, 79, 87]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 422 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    '{"appId": "hTcAcuTSz8tViSRV", "steamId": "KzwWqYcgoQp44IwV"}' \
    'EXXg779DcEb5nBVe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'SyncSteamDLC' test.out

#- 423 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'AEY89xEnoKKlyPta' \
    --body '{"xstsToken": "GSVNlRTRrauD2sfx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'SyncXboxDLC' test.out

#- 424 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'Ot0yIgL5CqZtwn2h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicQueryUserEntitlements' test.out

#- 425 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'SKKZvM4WSz7P7y5q' \
    '6uDaCx8hxTiqpntZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicGetUserAppEntitlementByAppId' test.out

#- 426 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'vRypScQ8aIsboqQi' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicQueryUserEntitlementsByAppType' test.out

#- 427 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    'WEfrT6ZPygSkfhXy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicGetUserEntitlementsByIds' test.out

#- 428 PublicGetUserEntitlementByItemId
eval_tap 0 428 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 429 PublicGetUserEntitlementBySku
eval_tap 0 429 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 430 PublicUserEntitlementHistory
$PYTHON -m $MODULE 'platform-public-user-entitlement-history' \
    'ykclGUJ6YBDI6H0B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'PublicUserEntitlementHistory' test.out

#- 431 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'LhMQNcUFUuoIPjHt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'PublicExistsAnyUserActiveEntitlement' test.out

#- 432 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'jlsAVWEExJQvJmEL' \
    'MA89ixWjkF5JwpR9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 433 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'Zt9Phwk7ORkQcyu5' \
    'lxJ66HGJ8Ih3lT8p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 434 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'zoI46PcpuwiYC0cy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 435 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'soxUGXNjS5quHgrh' \
    'tzk9E9cWWrZXa2EG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 436 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    '94tgrGpAyKwLIbU4' \
    '7jEqDJTlFzhUbELJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserEntitlement' test.out

#- 437 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "options": ["8E16CJURxlwSvm0n", "7bp88FcFKPGv9PMY", "ogmUVrSepOEo9ODE"], "requestId": "l88lSj9W9Qui3Qm0", "useCount": 99}' \
    'ubH0qAuhWzVV19I9' \
    'lRlaYwp4MNvBgT09' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicConsumeUserEntitlement' test.out

#- 438 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    '{"requestId": "Pvx7f7SN0lAsIrtT", "useCount": 21}' \
    'fhVXJ7MAA1c3t56E' \
    'pmqXtI1ea94zZAdF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'PublicSellUserEntitlement' test.out

#- 439 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 68}' \
    'TO6FC2QUf0Whdcum' \
    '4saje9BnJ8xXUB2j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'PublicSplitUserEntitlement' test.out

#- 440 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    '{"entitlementId": "gA8fRXdoImFIj7wm", "metadata": {"operationSource": "INVENTORY"}, "useCount": 16}' \
    'GJ3sRDNuaHQZFDy0' \
    'zd6uefjeTefS5buy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'PublicTransferUserEntitlement' test.out

#- 441 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '{"code": "st5TtTcS2Z7IW6c8", "language": "XC-357", "region": "dWaDYHSt1EEifnuS"}' \
    'TtCN8i2tS7rAMAxw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 441 'PublicRedeemCode' test.out

#- 442 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '{"excludeOldTransactions": true, "language": "IA_LoFm", "productId": "dH8HulMLwKFaDkx5", "receiptData": "oWYFAqdEBkZiYj6o", "region": "1GSa6NGHHLhyP7ob", "transactionId": "oUMlvsFaoUMm7qtH"}' \
    'KySXXtUEByVbF44Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'PublicFulfillAppleIAPItem' test.out

#- 443 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'XRI1UU4mMQOT2uy3' \
    --body '{"epicGamesJwtToken": "CoHMYJNBA3ZNRQrb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'SyncEpicGamesInventory' test.out

#- 444 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '{"autoAck": true, "autoConsume": false, "language": "KiT", "orderId": "mOtCi7uw6EucgA75", "packageName": "jV5cXedykx4piMtn", "productId": "Yep4qMEijH07e7HJ", "purchaseTime": 39, "purchaseToken": "YRRVlqfGGWhPklPu", "region": "T3em9Iz42YFoIyM4", "subscriptionPurchase": false}' \
    'HHnyDbUxgpdscOtC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'PublicFulfillGoogleIAPItem' test.out

#- 445 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'H10NfsDVwASx4C5v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'SyncOculusConsumableEntitlements' test.out

#- 446 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'Uvk9EIUbSzg8oOPB' \
    --body '{"currencyCode": "DgEhBUnAibqWQYai", "price": 0.0790170107426339, "productId": "asz9kvrFaaYiZO9u", "serviceLabel": 17}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 446 'PublicReconcilePlayStationStore' test.out

#- 447 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    '{"currencyCode": "wQ2mYznYkMiU0vVr", "price": 0.06807820396420994, "productId": "F40rVDDwsRfL40PO", "serviceLabels": [26, 45, 69]}' \
    'fACaZq3M9FhVaHT5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 447 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 448 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '{"appId": "1CYJCZK9kz9FkJg1", "currencyCode": "Z8rxzVxQff0U7Yg4", "language": "vsXL_Euup", "price": 0.42643974360396797, "productId": "7hqkUzpJrfvCl5rW", "region": "530yMjnntV6lxz46", "steamId": "lnMr9kgHzpU1KgX7"}' \
    'txYFVqqFEhELz081' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 448 'SyncSteamInventory' test.out

#- 449 PublicQueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-public-query-user-third-party-subscription' \
    'PLAYSTATION' \
    '4jTsZOfifLFOXzxo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 449 'PublicQueryUserThirdPartySubscription' test.out

#- 450 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    '{"gameId": "LgAvBNsJ2ndqYrql", "language": "TbuF-nchc", "region": "HryGVAVHgXTySx0u"}' \
    'i9SG992PUNJjyBkL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 450 'SyncTwitchDropsEntitlement1' test.out

#- 451 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'HCJw8ZxKr2hhzSgE' \
    --body '{"currencyCode": "VDTchtwhQp2LAjJu", "price": 0.6070421048984967, "productId": "gIQF5kRUjrmuhxZB", "xstsToken": "5Ajldy64tvczW9hk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 451 'SyncXboxInventory' test.out

#- 452 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'NRJKsIQO6Rf71ujk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 452 'PublicQueryUserOrders' test.out

#- 453 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '{"currencyCode": "aWDqUU627KpJnSnP", "discountCodes": ["zwlgrOizTeAjnOyP", "NIVw3l4lq6EBsgRI", "weAJUroJ8CWZayKn"], "discountedPrice": 89, "ext": {"DT2ZbXq2jUheXRiR": {}, "9ZCeUFWrh0jQ4KIS": {}, "0c5TxMgqbcYaXxQu": {}}, "itemId": "iMi8sc8nnqOjusG9", "language": "qcH-dKvz_QB", "price": 18, "quantity": 95, "region": "Wj66DdvqlwMH6jkW", "returnUrl": "zxyWSduldWnWT6iq", "sectionId": "bevlVe4ZffXJQ3ET"}' \
    'XfQnFfOmDYHeD3I4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 453 'PublicCreateUserOrder' test.out

#- 454 PublicPreviewOrderPrice
$PYTHON -m $MODULE 'platform-public-preview-order-price' \
    '{"currencyCode": "94uw3RdIA2wJ5cEs", "discountCodes": ["wcHbteulJ0qmAMOx", "LVhp4pvZaXuJcgND", "eHkDEsLlMzlivuvv"], "discountedPrice": 87, "itemId": "SjODCVkXOSEqmrC1", "price": 36, "quantity": 72}' \
    'quwAfUV3hQSgZIsL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 454 'PublicPreviewOrderPrice' test.out

#- 455 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'FKNLEWSf3xcBSJmV' \
    'JzcCB0Zx2kIBmEY9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserOrder' test.out

#- 456 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'AGikaZJ2fla7ViPn' \
    'PIspBwL7FLtMU7AA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 456 'PublicCancelUserOrder' test.out

#- 457 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'RIZojppBuCblNaT5' \
    'zrESuLoU4WFfjqhT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserOrderHistories' test.out

#- 458 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'f020WVESn3Lq3vc3' \
    'ONzvBgKDPEX7ZirJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 458 'PublicDownloadUserOrderReceipt' test.out

#- 459 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'aKrszETGuWESPDCr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 459 'PublicGetPaymentAccounts' test.out

#- 460 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'sw8wGhpJWYgTBMAq' \
    'card' \
    'uVzniCDkRRUbJiiv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 460 'PublicDeletePaymentAccount' test.out

#- 461 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'R8wrWclMIjyB9r93' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 461 'PublicListActiveSections' test.out

#- 462 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'VgAc9QZ9C2WWUGbo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 462 'PublicQueryUserSubscriptions' test.out

#- 463 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    '{"currencyCode": "RhmyUZ7K1izC3Lzj", "itemId": "pbZYwmB6mjB4WLkF", "language": "iBh_AAny-OX", "region": "bKhW1gHj8siRtfLB", "returnUrl": "rOtMCUfRqPgqjqL5", "source": "sOSWb72ObZi7fW36"}' \
    '9P70k7NWSskBCzJp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 463 'PublicSubscribeSubscription' test.out

#- 464 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'MLgGkyOUdt4mzjhw' \
    'LhUrgmZNHpDHS67d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 464 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 465 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'thQsFwNMAKYBTBZk' \
    'ulsLmecCWLGmhIZe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 465 'PublicGetUserSubscription' test.out

#- 466 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'ZanP0VcMDpu1IFvz' \
    '6lS0e11XX6rxljZ4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 466 'PublicChangeSubscriptionBillingAccount' test.out

#- 467 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '{"immediate": false, "reason": "nnQAM0DREcq6d87t"}' \
    'bCcUGlTsltY7Kk1O' \
    'unGWLmRsGb3tEZUv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 467 'PublicCancelSubscription' test.out

#- 468 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'ioSYTzxbogRXHBHx' \
    'z5rKcxfdG9prJLxA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 468 'PublicGetUserSubscriptionBillingHistories' test.out

#- 469 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'KKoiu3OVxYsGgVzs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 469 'PublicListViews' test.out

#- 470 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'IOyFrUNQTGPDgO1D' \
    'YPpkUsIxAMvQ0TYy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 470 'PublicGetWallet' test.out

#- 471 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'ioYSsqvixE24A0MB' \
    'ZILiVJpRPjbkDPIc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 471 'PublicListUserWalletTransactions' test.out

#- 472 PublicGetMyDLCContent
$PYTHON -m $MODULE 'platform-public-get-my-dlc-content' \
    'OCULUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 472 'PublicGetMyDLCContent' test.out

#- 473 QueryFulfillments
$PYTHON -m $MODULE 'platform-query-fulfillments' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 473 'QueryFulfillments' test.out

#- 474 QueryItemsV2
$PYTHON -m $MODULE 'platform-query-items-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 474 'QueryItemsV2' test.out

#- 475 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 475 'ImportStore1' test.out

#- 476 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'VKxCJv2JADKAlbiw' \
    --body '{"itemIds": ["vSCh7gGsouhPkDuF", "7dDQ83nAeUS40Jxs", "NUjSVGhlo6BJVxNK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 476 'ExportStore1' test.out

#- 477 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    '{"entitlementCollectionId": "6m3dLvKKvOeLQJ1D", "entitlementOrigin": "GooglePlay", "metadata": {"KZOaSMJHAxVRHDzH": {}, "pHJ0bdnZomYJoJJT": {}, "ExootNzMPSXZiLgC": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "GWDLfbEBX1fDFq8r", "namespace": "cYfG8Z9PgWjy2W7n"}, "item": {"itemId": "pJxp6vrbIUXHWViH", "itemName": "iwgQxiaDuZwYsAt9", "itemSku": "fGKNjmyiX8BwW15h", "itemType": "XKp1SF6rFNCe4IbY"}, "quantity": 49, "type": "CURRENCY"}, {"currency": {"currencyCode": "X1WWNf2XD8kjryYd", "namespace": "mc2XymIObjRrxucZ"}, "item": {"itemId": "TOtfIlJrMOPwdUCt", "itemName": "zH0oI7IMo6jYsbXI", "itemSku": "s1j2kdfY9jVoPTTf", "itemType": "SopAH3k7WRbBnExL"}, "quantity": 92, "type": "CURRENCY"}, {"currency": {"currencyCode": "lEBkIhkcYsdlko7a", "namespace": "PaqrCwlwxAYSodwJ"}, "item": {"itemId": "nbozMWXk0IafEeZi", "itemName": "iyd7fv9BMDJjJPbr", "itemSku": "Ycp304cHsi4N013h", "itemType": "rlkY0fX6m0y4oC4c"}, "quantity": 75, "type": "ITEM"}], "source": "REWARD", "transactionId": "vK3ElLq6qbXSAmGm"}' \
    'J8hHafpdFCVQ33tE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 477 'FulfillRewardsV2' test.out

#- 478 FulfillItems
eval_tap 0 478 'FulfillItems # SKIP deprecated' test.out

#- 479 RetryFulfillItems
eval_tap 0 479 'RetryFulfillItems # SKIP deprecated' test.out

#- 480 RevokeItems
eval_tap 0 480 'RevokeItems # SKIP deprecated' test.out

#- 481 V2PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-v2-public-fulfill-apple-iap-item' \
    '9ZMZ7dDUb3xQHAKa' \
    --body '{"transactionId": "roEL6WcEsfkqADxD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 481 'V2PublicFulfillAppleIAPItem' test.out

#- 482 FulfillItemsV3
$PYTHON -m $MODULE 'platform-fulfill-items-v3' \
    '{"items": [{"duration": 74, "endDate": "1973-03-29T00:00:00Z", "entitlementCollectionId": "1SXQ1p0o3UycSZQV", "entitlementOrigin": "Playstation", "itemId": "galHYLWoM0gqpkta", "itemSku": "qz3Riz5qKt4QbzYc", "language": "1vSzFONRBPloB0AS", "metadata": {"E8UJr7JwsZBUsRaw": {}, "0PY6G9sLHzVEFhnh": {}, "T9rEFK3sHMoD0LY4": {}}, "orderNo": "fDRrTTMj0kVB2Kgm", "origin": "Oculus", "quantity": 33, "region": "9Fxl7ZjEYGeuqo7I", "source": "PURCHASE", "startDate": "1993-06-29T00:00:00Z", "storeId": "IKaFfiPoFVLQtdZI"}, {"duration": 34, "endDate": "1999-03-28T00:00:00Z", "entitlementCollectionId": "ZZ7d9vk8P3v6DcFU", "entitlementOrigin": "Nintendo", "itemId": "RaNDlR1T3oWQcENh", "itemSku": "wdIRZ2k23rtJU0TZ", "language": "TwgZLJPddQRq4snl", "metadata": {"pfQTa0wBlJwb8gc7": {}, "EIBJIKoubLJP5UIf": {}, "hGfCHQ5GTdjvw8KQ": {}}, "orderNo": "Z00gJM1CfnjdHJX3", "origin": "Playstation", "quantity": 58, "region": "TZ6mO1Q9vB9Rk5lE", "source": "IAP", "startDate": "1975-08-17T00:00:00Z", "storeId": "9fyHgSbImHW11IEk"}, {"duration": 59, "endDate": "1985-08-05T00:00:00Z", "entitlementCollectionId": "pmSigPZeDvc6TeWX", "entitlementOrigin": "IOS", "itemId": "tIM2PLDNr5OkNSeT", "itemSku": "uk5fLc0rovY832Um", "language": "v7u1YlkQNEVsJzUP", "metadata": {"CRam34YuUk280BxA": {}, "xexZB4EErArsCARm": {}, "VlNfne35Jx8S9YCi": {}}, "orderNo": "ABOEkZ1hv7zx2tjZ", "origin": "Twitch", "quantity": 26, "region": "5P7kt5p0cLeBVGZZ", "source": "PURCHASE", "startDate": "1999-11-13T00:00:00Z", "storeId": "iRHDV6KTBcyqAgjL"}]}' \
    'hYxqBLkJqCtqM0Ox' \
    'Yqt9ra55fBFv8Nk1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 482 'FulfillItemsV3' test.out

#- 483 RetryFulfillItemsV3
$PYTHON -m $MODULE 'platform-retry-fulfill-items-v3' \
    'GKlklpO9ogE1Lt4T' \
    'vdOQZC7HKktfQ6iz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 483 'RetryFulfillItemsV3' test.out

#- 484 RevokeItemsV3
$PYTHON -m $MODULE 'platform-revoke-items-v3' \
    'lwJt4IiNBTayfr2v' \
    '76UxMaLP7RdiZOl8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 484 'RevokeItemsV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
