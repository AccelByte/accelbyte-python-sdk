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
platform-grant-entitlements '{"entitlementGrantList": [{"collectionId": "hOrHflIOd6X3viLv", "endDate": "1980-05-08T00:00:00Z", "grantedCode": "Ek4mTIpUA9gxo8SV", "itemId": "38nEhoXmM2W7l6jH", "itemNamespace": "MA2rG3nakopAywel", "language": "sQd-490", "metadata": {"0NqoTow0qiOiC4j0": {}, "iktm0ZPLkLOsp0LZ": {}, "5njN86Hl8kUXzt6b": {}}, "origin": "Epic", "quantity": 5, "region": "9lvccKMLhrTrcBE2", "source": "REWARD", "startDate": "1982-06-11T00:00:00Z", "storeId": "rAejcq2LgkQuaS7R"}, {"collectionId": "Bx3vim02jBOxrZDy", "endDate": "1982-05-10T00:00:00Z", "grantedCode": "qx8CzPML52faXUr9", "itemId": "Sk4lq2faBcAXXKlh", "itemNamespace": "vyH8paOJtxqMPpcV", "language": "tX", "metadata": {"ncceIZSwgAIkgzh4": {}, "pTU0Am4DZhl0bQxF": {}, "J3sWCqQpQ2FbKPFM": {}}, "origin": "Playstation", "quantity": 24, "region": "cMSQ4qfAacR0LgB5", "source": "REDEEM_CODE", "startDate": "1987-08-15T00:00:00Z", "storeId": "Xvjcu2s6w3VifnKq"}, {"collectionId": "mTSoGH1XEfY6QAYn", "endDate": "1996-12-15T00:00:00Z", "grantedCode": "Q5UBEU1QAOHfZiGh", "itemId": "xOdcuDXSxSc3aZPV", "itemNamespace": "87pna08gxefTYKhu", "language": "HAE-oxnY_de", "metadata": {"6ePeN8i4GrFES9z7": {}, "xueHpATHccee9GXh": {}, "KcjmSEwdrkEnnqKz": {}}, "origin": "System", "quantity": 74, "region": "sLfYalUlfwEQKjU7", "source": "GIFT", "startDate": "1980-09-29T00:00:00Z", "storeId": "fF3TQN0OcNDLr36v"}], "userIds": ["4bYXEcENx9xZlAch", "zohZyjMQAg5mPYhr", "LTyU8OhgfY9JQYGF"]}' --login_with_auth "Bearer foo"
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
platform-create-item '{"appId": "2Qd2JzRbkF2I03dI", "appType": "DLC", "baseAppId": "CnnZxF8CmQr17W65", "boothName": "br34rBBN9tU6TDm5", "categoryPath": "GloFSKWM1eym5ydC", "clazz": "6p25xCWTqUOYZENJ", "displayOrder": 78, "entitlementType": "DURABLE", "ext": {"ZQxPRXH7uxBJEECQ": {}, "E1li3Bg7Jxc9pUnZ": {}, "mvhidwCkZwqjYLfT": {}}, "features": ["VzW0CpoBCbyJsF5I", "jF1c0W338HS6CBgV", "iCO1NDBvQvRPnAz4"], "flexible": true, "images": [{"as": "JbEGTUj7YjERL1rE", "caption": "QG02zccA8wvLsWUN", "height": 7, "imageUrl": "fCjOuSYht83AdvBa", "smallImageUrl": "agTiRJ8daGTVX3Bb", "width": 31}, {"as": "jlz5IfHgKjI9mwJS", "caption": "rN8jkIykR2zbaI6P", "height": 61, "imageUrl": "89AwEw1HO4FnKtx4", "smallImageUrl": "XLKAmlDr19uJ3nq6", "width": 97}, {"as": "nnX2poMfZ1hDHtbh", "caption": "4HtMlFgvh2Dp2Soi", "height": 70, "imageUrl": "pnQ5xF9wwbvMZyeD", "smallImageUrl": "eRnVfPUa6xVVBcq3", "width": 45}], "inventoryConfig": {"customAttributes": {"yCA6jEtcqsnzoVIL": {}, "jkwW61duF87aUyrd": {}, "t4XSpWBAetsanzqP": {}}, "serverCustomAttributes": {"8oxfrtbECD1CYPwa": {}, "iBAxfYL8Avt70ZUT": {}, "2fSk3LL0calqxEew": {}}, "slotUsed": 42}, "itemIds": ["QmJIOq9dP5szG71u", "tjsQ4CrRb9gUCeVz", "7fWbZIdhevfZvyV7"], "itemQty": {"AcodcZwKjYDdmJOl": 53, "HIi1CMgKAOG5iDcC": 89, "jq7sn8yreciPLfkV": 50}, "itemType": "LOOTBOX", "listable": true, "localizations": {"JsbGpO6JgehDJxEN": {"description": "7JlZc8LMq1o2jZWu", "localExt": {"4yA3r0u4q1bTHXIj": {}, "fJKyFlM0u1uuoVdn": {}, "9yVoSlKNchPHNL4X": {}}, "longDescription": "3LLaGPGdqLE8Sohh", "title": "huiTnJarYYkHBDdS"}, "zBXdxapwhd5IQYBQ": {"description": "uxLvPuWYvE3fsNy9", "localExt": {"Z9OhxXvCp9y7fLD2": {}, "qfCXnlUnqxT1WsRN": {}, "MZcA92hzC7MNa8vV": {}}, "longDescription": "e4MHX6AgMep90Ayy", "title": "UJyAK5PRMRMwdvl0"}, "hv6g62GxBW2tQF5t": {"description": "kTjgJaMYvNQOsDa4", "localExt": {"bkcgepqtxjbrztee": {}, "7QLTGAak7Kaol01D": {}, "K97D2xnik42miteR": {}}, "longDescription": "5eQAe1rzmmgqBPRm", "title": "d6mO4oI8KDqebm83"}}, "lootBoxConfig": {"rewardCount": 36, "rewards": [{"lootBoxItems": [{"count": 67, "duration": 1, "endDate": "1991-11-16T00:00:00Z", "itemId": "y2pgSGSUOK68eqGJ", "itemSku": "tWf1Ybgg8rdwY9bm", "itemType": "rvHmO07KNqX9LM2I"}, {"count": 46, "duration": 26, "endDate": "1986-06-06T00:00:00Z", "itemId": "sdOGBXBwnzDX8v3x", "itemSku": "gC1Ge9PdbTTAJ2Gp", "itemType": "1r0sVZ6LJAOddIL2"}, {"count": 23, "duration": 6, "endDate": "1974-12-11T00:00:00Z", "itemId": "mDdUIoiIJFNxuNOm", "itemSku": "USWw18T1IxVWCxdv", "itemType": "PL9e4P01vxP8xj1L"}], "name": "yEirURERnEMzpImW", "odds": 0.9435893525500683, "type": "REWARD", "weight": 31}, {"lootBoxItems": [{"count": 19, "duration": 7, "endDate": "1984-07-05T00:00:00Z", "itemId": "HyCK5tNanGBrkzUv", "itemSku": "ck3xTtmOFMebS4Ad", "itemType": "lNzwog2IhErkNhNc"}, {"count": 62, "duration": 29, "endDate": "1985-03-20T00:00:00Z", "itemId": "WwchW6zL9SkbLlrN", "itemSku": "XnGanMazb8jvRWen", "itemType": "URH48aJuALEcSqcE"}, {"count": 38, "duration": 88, "endDate": "1981-09-02T00:00:00Z", "itemId": "yQ9ssuHdGmxncCEr", "itemSku": "0KcgeqzGbruNB72H", "itemType": "HMkjzyBB4UFKiaoV"}], "name": "0VOem2yqPsMFxKyb", "odds": 0.6630105945591638, "type": "PROBABILITY_GROUP", "weight": 2}, {"lootBoxItems": [{"count": 41, "duration": 37, "endDate": "1993-10-23T00:00:00Z", "itemId": "6x9cLJ1APnNlsa2b", "itemSku": "RBr27fVMWuAfDqLM", "itemType": "R919IZPKOKiAVQXX"}, {"count": 83, "duration": 24, "endDate": "1998-05-11T00:00:00Z", "itemId": "q2OspCZbt3Uta5I0", "itemSku": "uGcL1koyHjCH5olY", "itemType": "LETRpABAmO2EGvJ4"}, {"count": 95, "duration": 56, "endDate": "1990-07-24T00:00:00Z", "itemId": "S93yOxNInDByhnol", "itemSku": "uO6ti0QP2ssiJ66O", "itemType": "zOj84O6tgohjtC7b"}], "name": "zjPpucddXJ5zifF8", "odds": 0.38806756120452723, "type": "REWARD", "weight": 63}], "rollFunction": "CUSTOM"}, "maxCount": 57, "maxCountPerUser": 28, "name": "YtzB0B4CxyQrUpIF", "optionBoxConfig": {"boxItems": [{"count": 43, "duration": 97, "endDate": "1992-12-23T00:00:00Z", "itemId": "77KeRWdECaFGzfZ2", "itemSku": "hxcJ2Fnemn7M23Sz", "itemType": "Uo4hNBDh9ZFP1OW0"}, {"count": 26, "duration": 5, "endDate": "1996-10-16T00:00:00Z", "itemId": "OErQPS4VsRoYIK69", "itemSku": "yg9ADCGiXaLs2xjH", "itemType": "kinOD975nARHCmhN"}, {"count": 68, "duration": 83, "endDate": "1993-05-12T00:00:00Z", "itemId": "uqIHsxvaUoXDmwWs", "itemSku": "ukxncuD3QxCXMd00", "itemType": "YBWCaVVmM45mfIZs"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 20, "fixedTrialCycles": 25, "graceDays": 91}, "regionData": {"LDIQch4IjDq9aT3q": [{"currencyCode": "ZyI0rYsWucAkXsVJ", "currencyNamespace": "bXi7eRZa7WwIc895", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1997-05-14T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1997-08-24T00:00:00Z", "expireAt": "1981-06-01T00:00:00Z", "price": 39, "purchaseAt": "1971-01-14T00:00:00Z", "trialPrice": 95}, {"currencyCode": "0U4pH16NUsVY21NV", "currencyNamespace": "Is7NRen2Y3Ns0QJQ", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1971-02-16T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1992-07-17T00:00:00Z", "expireAt": "1990-06-07T00:00:00Z", "price": 84, "purchaseAt": "1992-02-11T00:00:00Z", "trialPrice": 87}, {"currencyCode": "ds1BYx0EaURydf8Z", "currencyNamespace": "yyZeHAWGgJUbUJRM", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1976-09-04T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1994-02-17T00:00:00Z", "expireAt": "1992-04-04T00:00:00Z", "price": 2, "purchaseAt": "1971-09-19T00:00:00Z", "trialPrice": 95}], "7gHPTPQbvLt2NRqJ": [{"currencyCode": "GIKzLyH1y72L13Or", "currencyNamespace": "nyx34luLdvtsTKXM", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1975-02-09T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1989-02-16T00:00:00Z", "expireAt": "1986-02-23T00:00:00Z", "price": 86, "purchaseAt": "1983-06-24T00:00:00Z", "trialPrice": 11}, {"currencyCode": "xZfAcNg14Ws8TIP1", "currencyNamespace": "LKiFQoLDvumfqrgS", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1978-01-19T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1989-03-02T00:00:00Z", "expireAt": "1994-08-22T00:00:00Z", "price": 4, "purchaseAt": "1996-11-19T00:00:00Z", "trialPrice": 70}, {"currencyCode": "dN1MGRXBJ6mVV7JS", "currencyNamespace": "9qjNLwvI8JdiY3RR", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1975-04-03T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1992-04-09T00:00:00Z", "expireAt": "1972-12-04T00:00:00Z", "price": 18, "purchaseAt": "1987-04-17T00:00:00Z", "trialPrice": 65}], "pjS2DRfGt9GlyZVQ": [{"currencyCode": "4X67tPZSTpPq3xjr", "currencyNamespace": "ElvvDgw0ag7kSWE0", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1996-04-05T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1987-10-06T00:00:00Z", "expireAt": "1991-06-14T00:00:00Z", "price": 8, "purchaseAt": "1990-08-17T00:00:00Z", "trialPrice": 35}, {"currencyCode": "6ItxDT8p4n4XCFkD", "currencyNamespace": "1AJLCwszbZxuHSgD", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1991-05-29T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1998-03-18T00:00:00Z", "expireAt": "1993-04-26T00:00:00Z", "price": 97, "purchaseAt": "1987-09-17T00:00:00Z", "trialPrice": 35}, {"currencyCode": "bL2635KbtZTGJpqg", "currencyNamespace": "l2IzNXGTuQPIDpor", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1971-04-15T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1980-11-04T00:00:00Z", "expireAt": "1974-11-26T00:00:00Z", "price": 81, "purchaseAt": "1994-07-21T00:00:00Z", "trialPrice": 92}]}, "saleConfig": {"currencyCode": "6QIVC9Mfuc8VOsnm", "price": 27}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "VljdWYmELe74p38v", "stackable": true, "status": "ACTIVE", "tags": ["2B4vEgj3HOmhcWm4", "BZo0lNUBDShHD32v", "28XejRF94NIY9nMr"], "targetCurrencyCode": "vL28FPwTiXfLcxDC", "targetNamespace": "9Ynd02mECIQhfIhH", "thumbnailUrl": "tADUQ9zimQTQT95p", "useCount": 64}' 'ZDhutDM6BqguqD5x' --login_with_auth "Bearer foo"
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
platform-update-item '{"appId": "MEtgKuiGTYgwWv5X", "appType": "DLC", "baseAppId": "TajpwHITGeHTnqRb", "boothName": "zBB9ZFgJbQ3Fj1um", "categoryPath": "x4ItzkMJ7cudf4r9", "clazz": "16GPrhn2etVIQvRk", "displayOrder": 86, "entitlementType": "DURABLE", "ext": {"J41U4ooQ980ywmg1": {}, "pWpWit1QC7FKe0fn": {}, "HUlmU1unGKM0tgfe": {}}, "features": ["uKBwBcD12ae6r3hH", "Wy47bbwMI4gGmvK9", "gW596FwBNrFXt3TA"], "flexible": true, "images": [{"as": "JctAdxyZVKHA9Dka", "caption": "SOWgtg8yw8lHEbVD", "height": 47, "imageUrl": "oKMRMG541PAiNjUL", "smallImageUrl": "sx4SnKNXLMUaDSww", "width": 88}, {"as": "Q98JH4n0JtgqzZv5", "caption": "kVu4S95mj8YRvae4", "height": 11, "imageUrl": "3N7WNMYIfcDKbLu8", "smallImageUrl": "pnK34oA1keYXJvtg", "width": 14}, {"as": "FTVYelIlGJg9wdc8", "caption": "bihhWjfZpfcFBUsn", "height": 27, "imageUrl": "gl7H1sdH2RIJz1eI", "smallImageUrl": "7Q5pu9PutLf6IrvZ", "width": 29}], "inventoryConfig": {"customAttributes": {"TQ9P7sYLDWAJOA75": {}, "K4BYJ2fkqYJoF2FI": {}, "3vyyqRzc20O7FdsJ": {}}, "serverCustomAttributes": {"P1G9tyBTfERXdvgD": {}, "1Qf7Ot2DkUt3yexZ": {}, "BRvxYnEBhXtAVxCd": {}}, "slotUsed": 38}, "itemIds": ["meTrT7cF9oVCh89w", "NOkKYssVejcL3kR3", "hCGNgaJmuALlMQl9"], "itemQty": {"RLrthbfp0VgweLlT": 55, "sY3SsTnDQY7kKU2u": 15, "6Q4veujxtyQENvJr": 57}, "itemType": "APP", "listable": true, "localizations": {"YPK8IxrSZuxWl0Je": {"description": "4fJIyFAm3DQht4Jw", "localExt": {"nPS2urJqerobWMZG": {}, "VL5KLTxahWlS6XdB": {}, "aKSLCgOOPXM6XTUh": {}}, "longDescription": "2dJ90yqHDNacl4F9", "title": "G6Dl5TFwBY6HKXAb"}, "lkT8VGgSH8MGZGwi": {"description": "Vj7eDTaka9ABfX1I", "localExt": {"ByPEOuPhGspRi3bh": {}, "PQvBBJI5Jxytpcub": {}, "N4AUUPFPscZsXeJO": {}}, "longDescription": "D4DMtqfIGiGJovgW", "title": "SRxZ8N4UQ2fg3V1o"}, "2x0hL5DuBDqMyIAz": {"description": "Wze94MEdJFAy2JTl", "localExt": {"lJkRGB8jqJEd6eqq": {}, "sBVyONV0JRtozI0j": {}, "pliCFQ6WgJpGPigd": {}}, "longDescription": "c5VyC4qvWjVac1cQ", "title": "vSxgTNIUzxDgBlIb"}}, "lootBoxConfig": {"rewardCount": 41, "rewards": [{"lootBoxItems": [{"count": 22, "duration": 52, "endDate": "1997-04-08T00:00:00Z", "itemId": "u4htrsf8eIFSovTG", "itemSku": "XaMsq8ePN1oco2jx", "itemType": "8Upe8SjMvpqM8pug"}, {"count": 14, "duration": 56, "endDate": "1991-09-06T00:00:00Z", "itemId": "l9iCqfW6rqGOQny4", "itemSku": "ij4ysYPonb59gQff", "itemType": "kNOmubxEJr2qEAuJ"}, {"count": 2, "duration": 32, "endDate": "1982-09-06T00:00:00Z", "itemId": "Srcbc4LWfKaY5c1t", "itemSku": "P5TDuI5f6m4KC07C", "itemType": "nsZe32hqEcB1ExYM"}], "name": "Bb3ckvoaJYdMqGeg", "odds": 0.032335751368468, "type": "PROBABILITY_GROUP", "weight": 28}, {"lootBoxItems": [{"count": 89, "duration": 9, "endDate": "1983-12-28T00:00:00Z", "itemId": "FS0Ed7gTM5AVrtBQ", "itemSku": "iDTcNnZa6Zuxk6u6", "itemType": "HXXdiC9ZDj4E4mv1"}, {"count": 91, "duration": 64, "endDate": "1994-11-17T00:00:00Z", "itemId": "s7Nf95lGlPrf6obI", "itemSku": "dnI6Ag7eUYcYJ4Qz", "itemType": "XCmqr6gmPGaHP5SV"}, {"count": 85, "duration": 76, "endDate": "1982-06-05T00:00:00Z", "itemId": "RLiDi0mNHb6Lx8eq", "itemSku": "8SGNwEQO8dYXvBSY", "itemType": "vJBwb6CjZUMRf2VJ"}], "name": "etWsokvx3BHuTEcz", "odds": 0.2824451358060015, "type": "REWARD", "weight": 75}, {"lootBoxItems": [{"count": 37, "duration": 20, "endDate": "1989-12-17T00:00:00Z", "itemId": "5tj64gV7nmDk29mc", "itemSku": "jSuz9vbNStqPtQmQ", "itemType": "N6eKAGiZFCftT0RW"}, {"count": 62, "duration": 58, "endDate": "1972-03-20T00:00:00Z", "itemId": "jWYrnulxcCKAru8p", "itemSku": "OaAVLDB4k3Jwkdax", "itemType": "R7GJpYmuYCPG181q"}, {"count": 83, "duration": 67, "endDate": "1993-08-05T00:00:00Z", "itemId": "LkP5hc2Fh04JTsqD", "itemSku": "TynCewqJligLlRxO", "itemType": "elKykICRxF6HtlER"}], "name": "2txs4qrNARATn6KX", "odds": 0.6536238695411208, "type": "REWARD", "weight": 40}], "rollFunction": "CUSTOM"}, "maxCount": 74, "maxCountPerUser": 57, "name": "bbQGERMNpqWb51y5", "optionBoxConfig": {"boxItems": [{"count": 90, "duration": 7, "endDate": "1995-07-23T00:00:00Z", "itemId": "BqQsBpCJBIXLGYcw", "itemSku": "WVRK6UKk5ozrXA4H", "itemType": "ZHNyq9odanhR1Zrm"}, {"count": 35, "duration": 39, "endDate": "1995-02-23T00:00:00Z", "itemId": "aauufxkPHElug48T", "itemSku": "gfNu0rqXUOyToLPI", "itemType": "REGIKlJt3EP9kKwk"}, {"count": 63, "duration": 20, "endDate": "1991-05-17T00:00:00Z", "itemId": "Q8VOHGwbADMfuOmh", "itemSku": "0lciRhVZ2DeoODXM", "itemType": "zLSrzoiBnYi5UWs3"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 23, "fixedTrialCycles": 86, "graceDays": 9}, "regionData": {"lXNaUNgdY2vfJuje": [{"currencyCode": "5cPnmGjTvYa5Pqx1", "currencyNamespace": "K7qcAoijBPAp6EPb", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1991-12-01T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1981-07-10T00:00:00Z", "expireAt": "1991-05-18T00:00:00Z", "price": 88, "purchaseAt": "1986-06-07T00:00:00Z", "trialPrice": 76}, {"currencyCode": "s2yxf6MLZJ2jZfZb", "currencyNamespace": "pTJezzriCDWXT59S", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1998-08-18T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1992-07-06T00:00:00Z", "expireAt": "1996-10-24T00:00:00Z", "price": 61, "purchaseAt": "1987-01-15T00:00:00Z", "trialPrice": 100}, {"currencyCode": "4OMIzvTScdbKBsAy", "currencyNamespace": "JMz4ILNDvhB4Eoes", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1991-12-28T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1989-08-21T00:00:00Z", "expireAt": "1973-12-24T00:00:00Z", "price": 30, "purchaseAt": "1971-07-29T00:00:00Z", "trialPrice": 7}], "TPwD3jxF7vxRUY0i": [{"currencyCode": "lrNoFT98SgtJd4Z5", "currencyNamespace": "f8nfaKqdZFLbZEHx", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1986-02-07T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1996-02-02T00:00:00Z", "expireAt": "1971-12-26T00:00:00Z", "price": 38, "purchaseAt": "1994-01-28T00:00:00Z", "trialPrice": 13}, {"currencyCode": "7r1SQw80JfMpPrSq", "currencyNamespace": "YypRUnq5o4ETeCUY", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1972-03-09T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1974-05-13T00:00:00Z", "expireAt": "1980-03-03T00:00:00Z", "price": 99, "purchaseAt": "1983-07-08T00:00:00Z", "trialPrice": 98}, {"currencyCode": "w8OQ13t3uTw6zQuo", "currencyNamespace": "ZcXQpoTOxe8y1jor", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1985-02-23T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1982-07-08T00:00:00Z", "expireAt": "1989-05-18T00:00:00Z", "price": 37, "purchaseAt": "1985-12-27T00:00:00Z", "trialPrice": 74}], "RLee3TcJ7DQIi45a": [{"currencyCode": "CDHN9mVug2zkVf6K", "currencyNamespace": "gpKOcn3tMD9UT67b", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1993-06-14T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1974-05-07T00:00:00Z", "expireAt": "1987-09-24T00:00:00Z", "price": 61, "purchaseAt": "1974-01-06T00:00:00Z", "trialPrice": 98}, {"currencyCode": "6wUQvehKqwCh86Xm", "currencyNamespace": "RkCEcfHDCdl59Wp9", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1999-07-12T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1985-01-24T00:00:00Z", "expireAt": "1987-06-26T00:00:00Z", "price": 44, "purchaseAt": "1973-03-16T00:00:00Z", "trialPrice": 22}, {"currencyCode": "DdK6uvg8f2cIoByk", "currencyNamespace": "9fxtvsgeAxo57nKA", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1979-04-10T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1977-01-14T00:00:00Z", "expireAt": "1989-01-06T00:00:00Z", "price": 71, "purchaseAt": "1980-06-16T00:00:00Z", "trialPrice": 75}]}, "saleConfig": {"currencyCode": "BNsi4giR9434WpKK", "price": 8}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "UqVxcSthrpnMUBsn", "stackable": false, "status": "ACTIVE", "tags": ["KKAo9MM2Cqm84jVi", "QnbqY1cQwVEtAr5k", "mQeEweoBHTdwAk7Z"], "targetCurrencyCode": "9kIpqgrzpUkNOBWy", "targetNamespace": "dXV0Fi02aFr8CDap", "thumbnailUrl": "jwNOl4k8rVNrm8dr", "useCount": 44}' 'KDJiWxQBwaS7rDBf' '2S54phbdyGDt47f9' --login_with_auth "Bearer foo"
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
platform-update-item-purchase-condition '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 91, "code": "0GGbT4Hf2PPKOldk", "comparison": "excludes", "name": "vi9kg3rMIzNmhJTN", "predicateType": "SeasonPassPredicate", "value": "q86IaDFjjx6uZerW", "values": ["OLAfTXKLzbrddqcK", "La7LevxNHOSEhQRZ", "btwTX9gNRByjbE8l"]}, {"anyOf": 71, "code": "nTgtgW33wDwD9RKv", "comparison": "isLessThanOrEqual", "name": "4yFQFdrRoM6FoqCY", "predicateType": "SeasonTierPredicate", "value": "hOqG5KDdUvk0LEi2", "values": ["6Ls7mjRxNmvvNtjJ", "NQepUTGhwlY4lPzl", "sCR5rVsyfcH7WjP7"]}, {"anyOf": 69, "code": "VeVskqeUB7RSayqG", "comparison": "includes", "name": "j4ro5B19VE838c7O", "predicateType": "StatisticCodePredicate", "value": "ebRA09rW8i8krFWJ", "values": ["rZO8GuoXNSoVEBG7", "VbBPUWipz9C05Yab", "he03coRFok5d3AyG"]}]}, {"operator": "and", "predicates": [{"anyOf": 23, "code": "FCK5ucTFsAFzaO3y", "comparison": "isLessThan", "name": "pA3KMxBlrRytER1q", "predicateType": "EntitlementPredicate", "value": "EdLucrtO2gCQD057", "values": ["DrDlgC2nzS9SiGUj", "oCEkRdo6qHYIZWnX", "VAw4v3q6JRHcn7Ka"]}, {"anyOf": 33, "code": "qiBUI9esSsXegSEh", "comparison": "isGreaterThanOrEqual", "name": "mqWsGA76yxi0QzZW", "predicateType": "EntitlementPredicate", "value": "2A9VOA8H9VeHv0L2", "values": ["xs1WId9WlalqshF9", "Rh2o7GCQGPCxwEdk", "Acm960EYQEuGJVl8"]}, {"anyOf": 51, "code": "K30EX0FclpDl5Hsu", "comparison": "isGreaterThanOrEqual", "name": "ArROIodcmM6v2AEo", "predicateType": "StatisticCodePredicate", "value": "hFVQTRekLfjmy8zo", "values": ["CNyT4k3DIbfT22G5", "A7U7dGMjupZkZQY8", "sRCRgVwbrQKmb01y"]}]}, {"operator": "and", "predicates": [{"anyOf": 31, "code": "UCGBVfpctNFUsUQ6", "comparison": "isLessThan", "name": "XQcb2o1J5euLAbBg", "predicateType": "EntitlementPredicate", "value": "V3ig8Jg5VByeI3yc", "values": ["ec1m8BusV9tUh74K", "Vo6Xqjz2xUKLNWSm", "McYYBixKJXCISQdw"]}, {"anyOf": 11, "code": "yVvyelIJ8QgaLMqi", "comparison": "includes", "name": "36ULa7cfZl4VuY6r", "predicateType": "SeasonTierPredicate", "value": "2FrR1GSogkewIzTO", "values": ["lrk4hIRn0znIKzAE", "qKkcjRh3l2gAJOTC", "bx7J3gNLIlTk3Bpc"]}, {"anyOf": 55, "code": "6KLPXkvUv2XiXaBz", "comparison": "isGreaterThanOrEqual", "name": "bIJ7eHnVWOboMkyB", "predicateType": "SeasonTierPredicate", "value": "exsOZ0b2p3b63Krc", "values": ["HkSSV8e1MgTTLS2F", "wIcXMhGy83Xit6bo", "OLGCcg16DqwdQPQ9"]}]}]}}' 'garY903INGIyEfRB' 'Ej7qms9AGQExPhgr' --login_with_auth "Bearer foo"
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
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config '{"dryRun": false, "notifyUrl": "gp5UfmjtiVbqJnZc", "privateKey": "rqrPye7fCwi7Il2w"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config --login_with_auth "Bearer foo"
platform-update-payment-domain-whitelist-config '{"domains": ["IFlHm9N6owMHMtJy", "1Oqn59tEGm9NYeUT", "5P0nx8TqSZdZ5C8m"]}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated '{"currencyCode": "FI9TnvzEqBNMF9CZ", "currencyNamespace": "vPxT5zbreMc9fBoU", "customParameters": {"3RHNDFjLKFrepy56": {}, "eW1kmb15QeIQF51c": {}, "4MqJzDSvELgBe6db": {}}, "description": "oSdhkBzAzPkt1efG", "extOrderNo": "JeJaxyHYutgXucx8", "extUserId": "5vHA009FAb21jxeW", "itemType": "CODE", "language": "Ls-eYGm_gl", "metadata": {"xRGj00RT6LvcnGMJ": "bJIYLssMvy9gkfTM", "RrXVRcAVRDX6gmDf": "NfPGYYSTunMgt3C8", "hEguCqlMHiQN3HWJ": "w9zIWsiP2JQ24meD"}, "notifyUrl": "rwEuTyM2qohglzO8", "omitNotification": true, "platform": "I9Y28qVceS9UX48d", "price": 75, "recurringPaymentOrderNo": "7R7OqPqIjS4i0N9y", "region": "tb3c8pVZ8GlU8962", "returnUrl": "e6gtn5pUARJM1T8Q", "sandbox": true, "sku": "ixUUvmzbajE2gjoo", "subscriptionId": "iDnc1NUb51lEgUwQ", "targetNamespace": "9tkWaMOH47CAT7cB", "targetUserId": "P0918JaEBQBP766L", "title": "UnBBR84iAO7sBQt6"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'YJ2tWwF7RnP1oK3c' --login_with_auth "Bearer foo"
platform-get-payment-order '4RVfjB0zi3XrYZUi' --login_with_auth "Bearer foo"
platform-charge-payment-order '{"extTxId": "N24ol1qqbalgizL9", "paymentMethod": "7ycJV5YqE2myQzl7", "paymentProvider": "ALIPAY"}' '9pmAIc6VSfE9nbE2' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated '{"description": "PMv12ZSRJkujxbCu"}' '1HFaj6Vxs3GuA4S1' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification '{"amount": 8, "currencyCode": "snfmBerp84qjwzWp", "notifyType": "REFUND", "paymentProvider": "XSOLLA", "salesTax": 13, "vat": 44}' 'Dc5APzfzXDELJFaI' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'aEMW5bhJyL72WDyh' --login_with_auth "Bearer foo"
platform-get-psn-entitlement-ownership '{"accessToken": "BsCCbnfihnXKxGxa", "serviceLabel": 42}' 'JTTy9JrNz1K5M1qg' --login_with_auth "Bearer foo"
platform-get-xbox-entitlement-ownership '{"delegationToken": "FddYvifGHawNx6yh", "sandboxId": "niEHLbEQKc0aUvrK"}' 'XDIjYC4df9qswSlp' --login_with_auth "Bearer foo"
platform-get-platform-entitlement-config 'Steam' --login_with_auth "Bearer foo"
platform-update-platform-entitlement-config '{"allowedPlatformOrigins": ["Twitch", "Xbox", "Steam"]}' 'GooglePlay' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Other' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config '{"allowedBalanceOrigins": ["IOS", "IOS", "IOS"]}' 'Nintendo' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Playstation' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config '{"appConfig": {"appName": "3OSesE5p0DwUj2HK"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "sUy18aWn65Co0vdC"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward '{"description": "d8Jpa19GJDK46Eeh", "eventTopic": "x7xasqMY9aulsL6N", "maxAwarded": 83, "maxAwardedPerUser": 98, "namespaceExpression": "6r0gBVUUeKKlPKtE", "rewardCode": "6gnYxmkmCWbs5qug", "rewardConditions": [{"condition": "klBUS6uwWrCQt86J", "conditionName": "rg8tLAJWpcyNkUvq", "eventName": "n6eXr6FNbKJ05Ory", "rewardItems": [{"duration": 0, "endDate": "1991-10-31T00:00:00Z", "identityType": "ITEM_ID", "itemId": "UlugIAknXcSaVYcA", "quantity": 4, "sku": "p7qSiDvsfMUOpWv4"}, {"duration": 47, "endDate": "1980-05-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "oWiywnxuDLLuIaSx", "quantity": 30, "sku": "YoID2UqO0iAXA9dB"}, {"duration": 18, "endDate": "1982-01-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "8HDOJ8TNiP8KgEAj", "quantity": 91, "sku": "dbRTI0i6dO3zkbDs"}]}, {"condition": "eh4tJdoGcwMBmegq", "conditionName": "VUaWMJBjrV0p9A7t", "eventName": "cHrV0MbJGr4drgkD", "rewardItems": [{"duration": 43, "endDate": "1999-01-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5m0pGzazM2BUXnzU", "quantity": 63, "sku": "gr3Cc4M2O7NrTQO7"}, {"duration": 74, "endDate": "1973-11-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "dZDGwqx7T3l1ut2o", "quantity": 50, "sku": "2FBS93Mg6TKwdRMr"}, {"duration": 1, "endDate": "1994-08-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Lrwh3d0ykRGkgqUN", "quantity": 72, "sku": "34xmIOjFLgKR4LjE"}]}, {"condition": "WhOScvtQ92iD02YM", "conditionName": "vEUNfoL7JCcMo7Gx", "eventName": "xXdbYCRexPekTsQx", "rewardItems": [{"duration": 78, "endDate": "1972-11-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CvNhZ6P8aqZ2yfrC", "quantity": 71, "sku": "V7ZpJZPHCMqvcYme"}, {"duration": 60, "endDate": "1998-10-31T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "iTP4PSrXUS6jYI9l", "quantity": 37, "sku": "cqclNlBORlC8Zkjs"}, {"duration": 49, "endDate": "1972-06-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "gxplHTPLzynjFZgF", "quantity": 58, "sku": "erw7UsyHq4bBb0n1"}]}], "userIdExpression": "JhPUS8BRPGV9n769"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'uSqQnKzDgDAtqE3k' --login_with_auth "Bearer foo"
platform-update-reward '{"description": "uybwTQFYEJjIYwqf", "eventTopic": "SRy8GgVk77fd1GS5", "maxAwarded": 98, "maxAwardedPerUser": 21, "namespaceExpression": "lnKsWCPccAFn5CEP", "rewardCode": "oH6opK5DSO8JyX4I", "rewardConditions": [{"condition": "E1z3rDwZ1HKsOpyq", "conditionName": "8agQuz86nc6jLF9D", "eventName": "IW2ncJJKpqmgvUTr", "rewardItems": [{"duration": 15, "endDate": "1996-03-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0L5FCbOn46W2B2uP", "quantity": 87, "sku": "QffT5Tn61A1xW6ok"}, {"duration": 71, "endDate": "1986-05-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "md87ir9op4YfGTno", "quantity": 55, "sku": "oHzqY3DgykA8zBJX"}, {"duration": 36, "endDate": "1990-03-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "O3K1k5ZM8btmGsgX", "quantity": 80, "sku": "xAzc1nc3eFm950dt"}]}, {"condition": "VAo7w4e3v5mh6Rum", "conditionName": "5pbgEt39uJQpgEtc", "eventName": "hTe3nt7t9ztprSfW", "rewardItems": [{"duration": 76, "endDate": "1992-04-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "kQ7YBhsOuJ0ypkkt", "quantity": 26, "sku": "G4eFh2YNsdoxpLTB"}, {"duration": 79, "endDate": "1988-07-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "8t829Ido1JyveSRi", "quantity": 56, "sku": "9eIdhIBvTTupABJ4"}, {"duration": 90, "endDate": "1998-07-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "GS54vl7gIKBc7OYT", "quantity": 51, "sku": "xf3EnzZVnkLT0Lb8"}]}, {"condition": "5nmpdN26BY5YI0je", "conditionName": "O2zMDSy4kyqyKgrt", "eventName": "EPdXXlt8geCdiXu3", "rewardItems": [{"duration": 18, "endDate": "1987-11-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "vn7vLZ7h6alhJNGZ", "quantity": 65, "sku": "nDodm4TNs8mAj6IK"}, {"duration": 91, "endDate": "1991-09-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "4uyzZo1rj0ZrLQjk", "quantity": 97, "sku": "A2vaNeDiSqTfmAVg"}, {"duration": 65, "endDate": "1997-02-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "vzeU5iqhx6zv7EUR", "quantity": 93, "sku": "kbdOsyxX1tfW488o"}]}], "userIdExpression": "YUT4jyCVJ0V8obTl"}' 'GVThz4bm41oIcV33' --login_with_auth "Bearer foo"
platform-delete-reward 'yjPxibDjfF7JkjCV' --login_with_auth "Bearer foo"
platform-check-event-condition 'pZKMxkFkBtXMU6KR' --body '{"payload": {"Im5xBoIi99ctgFXa": {}, "sxp5h780ktjQw2yX": {}, "zaQWaF2PqUfbpMpR": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record '{"conditionName": "l6xRyV19cborUHeC", "userId": "pqnZ5NW623WWn2ZJ"}' 'Y3QvRa7CDRTcsAHz' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section '{"active": true, "displayOrder": 7, "endDate": "1998-12-26T00:00:00Z", "ext": {"dZyyWbUQpbcv3Iwm": {}, "L7a1K3zIUYJmdF1Y": {}, "tWNSQlcMzxfppNCr": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 41, "itemCount": 5, "rule": "SEQUENCE"}, "items": [{"id": "DPbklTHcmgXsrVj3", "sku": "Mjml6BpCODWGOLMm"}, {"id": "CZUeelXYyNrXweiC", "sku": "nDldRPRfd6mLZ0GT"}, {"id": "JwEjoZrRtaeWKMC8", "sku": "wsOByQAMAgqFEzEt"}], "localizations": {"8umj5XhKnw7MHDwF": {"description": "VKUC2ecnpUDqvLQi", "localExt": {"xPKVSmWa8TGko16X": {}, "TqHc0cM7ixq8Tjnx": {}, "p5Cl8ggaEmCcuK2h": {}}, "longDescription": "HviBEWpbusO6EyVq", "title": "stpgZpbz77y88rUF"}, "um2ZcA8iKcF0bkfj": {"description": "cTEFXcTwEtnHxP5p", "localExt": {"VtN4jNVIdruEA39u": {}, "CJzsE8WObt6t0w8L": {}, "OBxE15JYj4IqWK09": {}}, "longDescription": "l4wkrzahXR1sDEDV", "title": "KDINE3HjCiVR1dQ8"}, "kuhb4pUwnGptHUpl": {"description": "xzaDa9PDwhu31d8e", "localExt": {"Odtrfq6ECDD6OGku": {}, "Ls9gNpNon6DKW9A6": {}, "AmnQTNFidImWONTv": {}}, "longDescription": "CPMGLdbYEknHPKrZ", "title": "7TiNBE0HRsE0GHDO"}}, "name": "FjrfqJcyxT2a7fCF", "rotationType": "FIXED_PERIOD", "startDate": "1987-05-18T00:00:00Z", "viewId": "zLELiM573TdtWjfV"}' 'ciuLnLsBKGsALPuC' --login_with_auth "Bearer foo"
platform-purge-expired-section 'OyphUUAV95708zaP' --login_with_auth "Bearer foo"
platform-get-section '0wpZgQEvFzox9wHo' --login_with_auth "Bearer foo"
platform-update-section '{"active": false, "displayOrder": 27, "endDate": "1996-03-05T00:00:00Z", "ext": {"3DRWobEoGr8W97KB": {}, "edcr6PM51z7i0wQ9": {}, "egK2t46EG8I2lTvi": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 86, "itemCount": 83, "rule": "SEQUENCE"}, "items": [{"id": "8IEbc9YITN98j4P2", "sku": "AGeidXRRnIAJfKVj"}, {"id": "On6rtILNJVv2DLLU", "sku": "yBt5hDs45siG30Lv"}, {"id": "9iGa5mkZjnRXVcg6", "sku": "AByNpBo2JYkwLdmR"}], "localizations": {"97u9MVUii4KpYcb1": {"description": "AUsESaBOTHnbX9tC", "localExt": {"9PQlFAGbMtEybfcA": {}, "l0mnsAkRT2k0Azdg": {}, "IunRkTxsGdrpNELM": {}}, "longDescription": "8Lfkut0wnT24wh59", "title": "RGSbBMh7jpszuVk6"}, "iPdJ2boQqCCyJfTh": {"description": "vCJieqRSGN8Mm74H", "localExt": {"lSZzp4aEW4GkHG5O": {}, "IVuGv47XJpkMiopQ": {}, "rVL3ZZTVxqa9XM2g": {}}, "longDescription": "Y14iWk12Jffk8dwK", "title": "NPUOHNZxML3yoBM9"}, "qxd6PWz7sVnMxge2": {"description": "inL8fBFP1ABaIKrE", "localExt": {"t8d3o7cTS9OIIMEr": {}, "nNTLXHrsOFsbhRow": {}, "4iaYKy0IjsDgbJ37": {}}, "longDescription": "DN2lDvdh7okHl1wM", "title": "ht2Izq7TCUJhDsDe"}}, "name": "fAS09VyQB1vR1mx6", "rotationType": "NONE", "startDate": "1984-07-19T00:00:00Z", "viewId": "7GL1CrO4ZuoGZSxT"}' 'zm8oMSPIHPtqzIWI' 'zg8pbjnt1iBV8Dpb' --login_with_auth "Bearer foo"
platform-delete-section 'jGts4UZDTfhAyZKh' 'qilty9NVlgxUmnfd' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store '{"defaultLanguage": "OAmu1dX1NqD20RUv", "defaultRegion": "vYeJZw6QZFN7wFCn", "description": "qpvNesGiVnt9p2to", "supportedLanguages": ["7Yja1soDE1K0SvGr", "MYwPmPXC2LfL2m5r", "P2A20t6foPPH94SU"], "supportedRegions": ["inY5diUlqgvY7dPP", "yahppgxJhk4EdTZ0", "00rS92594HLvWFsX"], "title": "HtMP0k9L5dREQbCq"}' --login_with_auth "Bearer foo"
platform-get-catalog-definition 'APP' --login_with_auth "Bearer foo"
platform-download-csv-templates --login_with_auth "Bearer foo"
platform-export-store-by-csv '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["h0gpABFBER6WNcDO", "sRzBkf9A6HjCnFRd", "SihcvszzQLZBktk0"], "idsToBeExported": ["siMup01kyaFwwD7w", "ecuQb4GNQHVZMKGB", "nzh4suaGIzttTncV"], "storeId": "Bf5g3oeuHiNyLkfP"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'QPmjUkvSs5YmIejo' --login_with_auth "Bearer foo"
platform-update-store '{"defaultLanguage": "zmG5HlrIfMAvvpkA", "defaultRegion": "HRJHZyfrXZmiJX4C", "description": "jKCeIRIr997KKpJX", "supportedLanguages": ["TLbYWpqeXjaf1f5f", "jNMZjKJ05puX3197", "WrMnJtovSMFw8X4z"], "supportedRegions": ["xbdfXgunt1oMNZ68", "eovHSH3xV3URIRVD", "YBd6hMB0l7sg7IfM"], "title": "H5Tu1ky1ZYvyeHmf"}' 'oFkUDP864shbnQ3b' --login_with_auth "Bearer foo"
platform-delete-store 'VvuvpsDJXPCWkX4K' --login_with_auth "Bearer foo"
platform-query-changes 'pi8CJ88aMPGFFAQZ' --login_with_auth "Bearer foo"
platform-publish-all 'bfbmVTEbiRq5Juik' --login_with_auth "Bearer foo"
platform-publish-selected 'mpat75rVbN9ZBtzJ' --login_with_auth "Bearer foo"
platform-select-all-records '33tCwv8H1f451FVZ' --login_with_auth "Bearer foo"
platform-select-all-records-by-criteria '630HNBYZSrz7pMjE' --login_with_auth "Bearer foo"
platform-get-statistic 'SLLMPKDXLki6Oz5B' --login_with_auth "Bearer foo"
platform-unselect-all-records 'ygt8Q0RjSf1srB7h' --login_with_auth "Bearer foo"
platform-select-record 'GwGbUmQmJHNffZEN' 's9X0hFMdzryvhc1Y' --login_with_auth "Bearer foo"
platform-unselect-record 'jHmmulSBIElc2CdR' 'vBb0aGnMt625bWHb' --login_with_auth "Bearer foo"
platform-clone-store '5sbX6asrjV7XJUOt' --login_with_auth "Bearer foo"
platform-query-import-history 'HlzXNHEPpzlMlx7b' --login_with_auth "Bearer foo"
platform-import-store-by-csv 'tmp.dat' 'tmp.dat' 'tmp.dat' '2H2THLwZGikW7TFA' 'tmp.dat' '9gE6SrYKq6lcVOhP' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'JIcEHbiKHW7flVol' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'AWEMmQSPDTRqjlvw' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale '{"orderNo": "nnCA5tfK5ushaKTP"}' 'VjyOUpR3uUdgNlyU' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id '4IJnqtrjCOsE8Vjv' --login_with_auth "Bearer foo"
platform-increase-ticket-sale '{"count": 52, "orderNo": "QPvaf1AcweR7tJW3"}' 'MLMob1hUnIzIpUM8' --login_with_auth "Bearer foo"
platform-commit '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Twitch", "count": 4, "currencyCode": "K1kGFN0NUNGKxdlA", "expireAt": "1995-10-13T00:00:00Z"}, "debitPayload": {"count": 60, "currencyCode": "ZluTekDMCGUJvERx", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 12, "entitlementCollectionId": "ioKnXPVZaDcXsV1T", "entitlementOrigin": "Nintendo", "itemIdentity": "dI519Pf2iogwxM5D", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 1, "entitlementId": "gozmco41750xdYQg"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 96, "currencyCode": "g6Zt1Lr5BlO8K6LH", "expireAt": "1999-01-22T00:00:00Z"}, "debitPayload": {"count": 75, "currencyCode": "Saa8XYHug51ZTogG", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 69, "entitlementCollectionId": "vXYBar5RMmmGdWl0", "entitlementOrigin": "Other", "itemIdentity": "c9z70LFQMI0oZuEj", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 81, "entitlementId": "iGE2cyzTMBY7Xd0O"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 62, "currencyCode": "XR2Rf4noXDFaEUkP", "expireAt": "1994-08-13T00:00:00Z"}, "debitPayload": {"count": 26, "currencyCode": "z2zMU9jLzNV3GaG4", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 17, "entitlementCollectionId": "nlRPrEAYqRBeSc5u", "entitlementOrigin": "GooglePlay", "itemIdentity": "oZ1nXpW1l70pcZgI", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 66, "entitlementId": "lPghHyMEHBzArbyW"}, "type": "DEBIT_WALLET"}], "userId": "NkJFQxuMHnfOlX6H"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 98, "currencyCode": "c9EMgf9JCJiEvhL8", "expireAt": "1997-02-11T00:00:00Z"}, "debitPayload": {"count": 96, "currencyCode": "wCVJW9yspUOyHC9e", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 89, "entitlementCollectionId": "XzrvzBllwzyC1aTW", "entitlementOrigin": "Steam", "itemIdentity": "Zs97TJI8GPrM24F3", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 9, "entitlementId": "mRoFNxv10ckMQVjK"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 19, "currencyCode": "WJ0ZuYSe3sI0x2hc", "expireAt": "1990-06-23T00:00:00Z"}, "debitPayload": {"count": 40, "currencyCode": "aN1Off5gRZZMW3hu", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 62, "entitlementCollectionId": "IzBPWBYKAEFTdlKN", "entitlementOrigin": "GooglePlay", "itemIdentity": "cdFlo7oAsOlfLB1J", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 4, "entitlementId": "SkFrvGciNHb7OY5Y"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 77, "currencyCode": "aKkPuWD59MgTy1HA", "expireAt": "1999-07-06T00:00:00Z"}, "debitPayload": {"count": 72, "currencyCode": "XT5Ts4e0uR47OzUG", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 24, "entitlementCollectionId": "eBKtpvyRNgjZkdDp", "entitlementOrigin": "Oculus", "itemIdentity": "iDaxlPdhwmcH03yo", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 48, "entitlementId": "tRZ93LuR8OEyICvw"}, "type": "CREDIT_WALLET"}], "userId": "bxM3Wev9pZQjWAN0"}, {"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 29, "currencyCode": "ny16ZHZtuSJGQCrM", "expireAt": "1997-10-16T00:00:00Z"}, "debitPayload": {"count": 28, "currencyCode": "EMRPkdTcAzkIlndN", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 73, "entitlementCollectionId": "eayr3vUKMuIiz2Mi", "entitlementOrigin": "Playstation", "itemIdentity": "O46OOzz9p57qSpHe", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 90, "entitlementId": "zO87cg7TqtMiQgi7"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 38, "currencyCode": "28qCRbwwZc4ZS1NM", "expireAt": "1976-03-28T00:00:00Z"}, "debitPayload": {"count": 35, "currencyCode": "oCAZuolAWnxkImVb", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 71, "entitlementCollectionId": "P0QX31gI7VmnGIRM", "entitlementOrigin": "Other", "itemIdentity": "kk2Gza6DrSycophH", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 88, "entitlementId": "3EoEEClTO9SDKnMl"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 12, "currencyCode": "W9jiNMu9QVrMeD4b", "expireAt": "1986-05-12T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "gISE34yIAZQeigiA", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 56, "entitlementCollectionId": "m626POXWVj3KP1mX", "entitlementOrigin": "Steam", "itemIdentity": "iYHXBU3Uk2tQm307", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 83, "entitlementId": "TtuJJsHZVsG6izJZ"}, "type": "FULFILL_ITEM"}], "userId": "ZURmoGgxVRMPf8g1"}], "metadata": {"rbhfIMStMnSqrKWY": {}, "OuITlYS2RYaD9WNK": {}, "GhbLhjz1v0RBIO2r": {}}, "needPreCheck": false, "transactionId": "s6O0Qj0ccMkdz6zP", "type": "z3BVHAqp4O9XSjap"}' --login_with_auth "Bearer foo"
platform-get-trade-history-by-criteria --login_with_auth "Bearer foo"
platform-get-trade-history-by-transaction-id '24esyjh6Wc3migf2' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement '{"achievements": [{"id": "n6iQyr5cb5YL6fwB", "value": 17}, {"id": "HAkltcR3eHFbiAlu", "value": 69}, {"id": "Y26xrkPPdg3pXjmt", "value": 31}], "steamUserId": "8PZbYVD8RiaTsdD4"}' 'd3kSbTkHPMUvOAUX' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'kw36cr2WJQqS7Tq4' 'YIyZAFQ6lZfa2jdN' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement '{"achievements": [{"id": "vpWf32JS1av9VNpV", "percentComplete": 78}, {"id": "506ERSVy5M3rrkxu", "percentComplete": 65}, {"id": "U9h9gCNVZxHGxhZq", "percentComplete": 82}], "serviceConfigId": "LUrHuKBoNTpPQXDN", "titleId": "Hto74GcmVf0fbCU9", "xboxUserId": "QdPuWeMEeL0EJG67"}' 'g4W1eAmDxP23qstM' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'uikKc6VNU8570siW' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'm3V9sirE0JOQxWeH' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'ypqCWMDPRI2cCk8z' --login_with_auth "Bearer foo"
platform-anonymize-integration 'HR8VyCC0EQwE0cXo' --login_with_auth "Bearer foo"
platform-anonymize-order 'kXbwKDtVmrYQu7hZ' --login_with_auth "Bearer foo"
platform-anonymize-payment 'vHfiT9s9pK8HuUY1' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'QQHQ0NCEddJtx6GV' --login_with_auth "Bearer foo"
platform-anonymize-subscription '01vD7lNLxlpvqaB9' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'P9GaukfCEIeSBLhT' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'fzigzHcRuJgYaj4I' 'PSN' --login_with_auth "Bearer foo"
platform-get-user-dlc 'Dzyh1N0JEKNoMtHv' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'jM7X1fjzknv2HZMI' --login_with_auth "Bearer foo"
platform-grant-user-entitlement '[{"collectionId": "L2P2bh14LroFTnAu", "endDate": "1981-10-05T00:00:00Z", "grantedCode": "jPeP9N0vdVB5a2Xk", "itemId": "S3XQfMuzZh4AhZRe", "itemNamespace": "2hgU56xtyJtnbTDX", "language": "qgy", "metadata": {"Zw5QwVKWNy2tnF2M": {}, "ifJR4hr4gdJDujYn": {}, "VnFK6gB6ZxC6yYUV": {}}, "origin": "Xbox", "quantity": 72, "region": "yRCtPOr1FU3QZy3g", "source": "GIFT", "startDate": "1974-08-29T00:00:00Z", "storeId": "cNeTflyvUh3w5Ztf"}, {"collectionId": "wmOCKpFSMF0tfGIZ", "endDate": "1985-07-03T00:00:00Z", "grantedCode": "TNiIRc9fEjkZhEpA", "itemId": "JMCxMp2J0hDg2kMg", "itemNamespace": "kvhoQe9gD9tGN0nE", "language": "oi_Vvif", "metadata": {"eZtLQij2JXsqdXfh": {}, "ZTTaCeqGv7meuQhJ": {}, "uq1C6JHkWMSUbqBy": {}}, "origin": "GooglePlay", "quantity": 80, "region": "3hcQ2wV3ZbBTnNQn", "source": "ACHIEVEMENT", "startDate": "1974-06-17T00:00:00Z", "storeId": "A5WnzVZdj8tsyzC4"}, {"collectionId": "QaLXp3o4TDraEEaD", "endDate": "1991-05-12T00:00:00Z", "grantedCode": "JbVd20FVHevCjthJ", "itemId": "Ub7jKuMrFaoLulzp", "itemNamespace": "3sZxImVK5yh2LcM8", "language": "MBVo-gZKS-ri", "metadata": {"aq1cT88H6RCW8gJm": {}, "GzDlqxtLsR2AGOiP": {}, "hNt2IdH8aYYUT6mm": {}}, "origin": "Epic", "quantity": 1, "region": "833TDzk66ix88sAU", "source": "PROMOTION", "startDate": "1997-05-16T00:00:00Z", "storeId": "tTJw4KV104MtMhKH"}]' 'mSjqPuQZX5KjdNrE' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'wfWo2MwulLg4bsO4' 'YHEYLjTSNDf3zazm' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type '6p5Y1tkG9WwU4Ty6' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-get-user-entitlements-by-ids '6GqT2vSLLiMvcu39' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'YZJypWzpNXgnoKIz' '8O8NglJtZTh280vf' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'lFMxIhlIT8AgyZJ1' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku '6MMd2bzOrTn2huwP' 'gyUzBUWiKoNGtvyk' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement '5xEfrJDxKsw5Xl7Z' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'ZrDZdbuvCFBaVcoh' '["ewKkVuGv9fQXkErF", "0drbYrrFQP6rW62C", "tetBW3pvAJJieHhv"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'eGg97PY0txzvYwv7' 'atn9EQv2Oj8TFNeG' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'tJGjKbMgCeuAYuzr' 'mbWofEaKStqdKu4R' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'OnONpJ849chqeiUG' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'QMwNwDlYSli3p8Ya' 'Adel3hHMSLAiscGR' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'WzkCl1ZKuPxjDUGR' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'GcCEPjbUy7F82Adu' '9BYRHrVTehrqgvEt' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'Es2LpE0qfbvdU8hl' 'DoC9FnxqBlPBYJ7X' --login_with_auth "Bearer foo"
platform-update-user-entitlement '{"collectionId": "6uVy7FWTSfMi2CPV", "endDate": "1987-07-02T00:00:00Z", "nullFieldList": ["xjcdpdCqVeePMSqb", "8y8qJTUQY40Zrpn0", "vAD9YsPeDWrAVQZS"], "origin": "Other", "reason": "P3uqNcig6YcDA8Z3", "startDate": "1974-05-03T00:00:00Z", "status": "INACTIVE", "useCount": 67}' 'QHKersDmJLUHAKtf' 'XCKOna8DdjtZhh6o' --login_with_auth "Bearer foo"
platform-consume-user-entitlement '{"metadata": {"fsUoRh6r0e0J6vyq": {}, "Pw7YlmV3kES0Hi88": {}, "UYgSV40OvY7apPCr": {}}, "options": ["N5bEhmuHgKeWizEp", "w1zN0mOYgGhHMz9d", "ddLWJWDuSYtCaIv4"], "platform": "Lp91wYUJPbvzn8TY", "requestId": "oMDAaUXSuBQdvdhJ", "useCount": 30}' 'e0Z2G2N09VIbbsz2' '4fQKDZX6plErw0Gb' --login_with_auth "Bearer foo"
platform-disable-user-entitlement '0ceCbphW4YMhJ0S5' '0bez9ZLHW882riiP' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'fRQ3rJ0f5lwXvRND' 'BnmL1KQn77hiP1lz' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'kzjYDw6mLBordrJk' 'D6vy60uRMT1Xw9K9' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'Yb68a8ygYx2Tqkhl' 'qMnE9Wj90EQzOidr' --body '{"metadata": {"WnLrXqImgDf3GaJs": {}, "dCZND0wgYOilX1e1": {}, "825iasunESjcgr2d": {}}}' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement-by-use-count '{"reason": "rXG5NkKCySLA8cKC", "useCount": 38}' 'KqeoTiNKGRUMrimG' 'Az6OhmHOpCdr3WzD' --login_with_auth "Bearer foo"
platform-pre-check-revoke-user-entitlement-by-use-count 'm3hJdd6uaO9TiTPn' 'Ih2iaIBpYC4txul6' '98' --login_with_auth "Bearer foo"
platform-sell-user-entitlement '{"platform": "lbj7QKvtVRCPMjr5", "requestId": "M3vw1GqUjjFp6R8m", "useCount": 3}' 'ZwKftVqSECsypS42' 'NmYQ8HlHbHnfs4tL' --login_with_auth "Bearer foo"
platform-fulfill-item '{"duration": 97, "endDate": "1988-11-23T00:00:00Z", "entitlementCollectionId": "Zfr5XDq9dGLHjtgE", "entitlementOrigin": "Epic", "itemId": "w52JRAZxMWdoleYN", "itemSku": "HXeOpaRDwYLge851", "language": "PbK2MFKvw5TWjAh4", "metadata": {"gy41LLzQ2IjY5PeN": {}, "r4JmYxH2qs28hePJ": {}, "jMp0TKKUBfPNI9f2": {}}, "order": {"currency": {"currencyCode": "oLWDPSZexfKVxqdx", "currencySymbol": "mh5QWxuQuI7gdDTD", "currencyType": "REAL", "decimals": 99, "namespace": "X7iXEEM2KOusNEHc"}, "ext": {"I95GGdJvucDbs6Ud": {}, "ccuM2ykRj3WnyAaU": {}, "aQBKFedL2uduXvZU": {}}, "free": false}, "orderNo": "wZwVMvshGmsg6ZJY", "origin": "Nintendo", "overrideBundleItemQty": {"sUiDawAjgHFQk0Vz": 100, "geesipbP027okM5E": 61, "tAajVSvLRj306RDu": 1}, "quantity": 84, "region": "SixXEdloYZBkatNL", "source": "CONSUME_ENTITLEMENT", "startDate": "1982-04-17T00:00:00Z", "storeId": "2eq0O6VsXtOlQwj5"}' 'xPvm7c5nPR0Y1sff' --login_with_auth "Bearer foo"
platform-redeem-code '{"code": "UaZ64dFpiv8o9Gw4", "language": "UFmG_sYtO", "region": "xoMrj2J4JGQZAtyj"}' 'TxnlmSyjEaFH2DRN' --login_with_auth "Bearer foo"
platform-pre-check-fulfill-item '{"itemId": "6HIEqIFEcS0ynIMO", "itemSku": "YWpUYUQMooiKT57r", "quantity": 24}' 'zikCh6q0yq2WAHtL' --login_with_auth "Bearer foo"
platform-fulfill-rewards '{"entitlementCollectionId": "7IWE3MFqvfDG5jvM", "entitlementOrigin": "Xbox", "metadata": {"SYQbcebBd5wb5H3q": {}, "ppoCiHMD4iBK2O7q": {}, "YtOHV5hnpjc5CNLn": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "pxFY8E6pU8eHjh0a", "namespace": "TjIOaQt0snbE0yMv"}, "item": {"itemId": "qF7TJ9uB0zypjJiu", "itemName": "7BIimNuwB3hBVhuS", "itemSku": "MHhf5R2MkxQTAYGf", "itemType": "E6hXZ7XLoWCGf0dZ"}, "quantity": 63, "type": "CURRENCY"}, {"currency": {"currencyCode": "c2qHZuuedbBOd19D", "namespace": "qZJRYV1oqNLmPAUI"}, "item": {"itemId": "Mwa2wYq6DsUq38bY", "itemName": "vaWLoKzHnngdfFnO", "itemSku": "fY9stXH6LYXXMndx", "itemType": "BPKmHVB7cNzHhvxc"}, "quantity": 4, "type": "ITEM"}, {"currency": {"currencyCode": "JqYSxVKUYMimVLzA", "namespace": "P6aOzsTqEFXUhGAw"}, "item": {"itemId": "pYq1UqZydOB0MThZ", "itemName": "W6LwcAg57BYBVCbi", "itemSku": "0ifdPyKf3SwHekWI", "itemType": "z4rXlH5jw99HxCjX"}, "quantity": 100, "type": "CURRENCY"}], "source": "ACHIEVEMENT", "transactionId": "Vg6DLEZ6DxpwBm2N"}' '8PdQ5mQaGXEbnmWR' --login_with_auth "Bearer foo"
platform-query-user-iap-orders '0H3EkrHqaLNdfKsz' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'YZzOg113h6fIaHSx' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history '5bClxUOBmMwv5pmi' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item '{"itemIdentityType": "ITEM_ID", "language": "HqL", "productId": "SohfrLyXMSrC62xY", "region": "tDwflNGfufW5cWeg", "transactionId": "6eSCypsceITTkJGG", "type": "TWITCH"}' 'C8wk7HMbJhNwZgf5' --login_with_auth "Bearer foo"
platform-query-user-third-party-subscription 'nlMDORYuXnPNJgay' --login_with_auth "Bearer foo"
platform-get-third-party-platform-subscription-ownership-by-group-id 'XBOX' 'nkY0LEBSYBdUSiTO' 'rhB8hVs29WOKmZRT' --login_with_auth "Bearer foo"
platform-get-third-party-platform-subscription-ownership-by-product-id 'STADIA' 'lJ93CCGBXv4fP4VP' 'zhcH4UJrrCKvrOAi' --login_with_auth "Bearer foo"
platform-query-user-third-party-subscription-transactions '7lMgkVWJYzSCIDxW' --login_with_auth "Bearer foo"
platform-get-third-party-subscription-details 'UxgOzeRNHIqK5PT4' '04mFw4HJv5T2kIQO' --login_with_auth "Bearer foo"
platform-get-subscription-history 'ecfLsYKTmUnKlrOs' 'JmEwjGYN8VNPXNsm' --login_with_auth "Bearer foo"
platform-sync-subscription-transaction 'wTV8imJHNI0l6jJV' 'zF1Oi2sQuWUBBHZo' --login_with_auth "Bearer foo"
platform-get-third-party-user-subscription-details 'nSmzF831vlCiZAZH' 'CWMXxVh8HTrKqVwn' --login_with_auth "Bearer foo"
platform-sync-subscription 'pPn8N5xMRgU7cPqN' 'ZrLCRRUysya4J3rv' --login_with_auth "Bearer foo"
platform-query-user-orders 'TzMTMSwrNov2GW9i' --login_with_auth "Bearer foo"
platform-admin-create-user-order '{"currencyCode": "54JY23AUWFTLq0W1", "currencyNamespace": "JqwKs1mO80L7IOHl", "discountCodes": ["NSp0B7LODN3Boi2s", "f6j8PZOzUiQKZqz5", "SAO2n4MZQt753XQB"], "discountedPrice": 14, "entitlementPlatform": "IOS", "ext": {"rOW0guPoQbYzc1RD": {}, "Vhs2lhdzxxgibuqU": {}, "uyW3cMz9YyduMomE": {}}, "itemId": "HcU15St4v8ry8Iyq", "language": "NVv0KVpXJTMx3Y8U", "options": {"skipPriceValidation": false}, "platform": "Steam", "price": 67, "quantity": 18, "region": "erDCWcl3VSJENQop", "returnUrl": "eHD6iKBGm5Cj7Rqn", "sandbox": true, "sectionId": "UmfDmofxvN8pRGoU"}' 'tmbWZbEjPyq35BWD' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'oc3qNcQFFyHv141N' 'PqjRUMKSQjFdjqTa' --login_with_auth "Bearer foo"
platform-get-user-order 'ZFsWzbqwTZQIN5jC' '6a8mEVCXHmFnrSL0' --login_with_auth "Bearer foo"
platform-update-user-order-status '{"status": "REFUND_FAILED", "statusReason": "idzjpKDfwl6XlCF6"}' 'YxFMD8tJQwZvUVIn' 'os5RK100yH89i8ZD' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'PXRL8cbTAntB1STa' 'ab1UeibXg7RCe5Bt' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'Kcwj6PqqOgCimr3Z' 'QNBBkrXu9czsYr3c' --login_with_auth "Bearer foo"
platform-process-user-order-notification '{"additionalData": {"cardSummary": "FeVw70xdNTuOdLKK"}, "authorisedTime": "1998-05-21T00:00:00Z", "chargebackReversedTime": "1990-03-06T00:00:00Z", "chargebackTime": "1985-08-20T00:00:00Z", "chargedTime": "1999-03-08T00:00:00Z", "createdTime": "1975-04-21T00:00:00Z", "currency": {"currencyCode": "bqJin37P69t1KqeG", "currencySymbol": "z7qbPnXEuOzzkoBm", "currencyType": "REAL", "decimals": 77, "namespace": "C4qPqJrAdh1HIk7v"}, "customParameters": {"CEq7FQ2S5VeW9ddx": {}, "zLPV8wDjsnyPh5yN": {}, "bYXmlAOi1SC3I1Sj": {}}, "extOrderNo": "kH42LtyZKrTJo0L5", "extTxId": "sHil4Q0mqa8Gatrj", "extUserId": "bJ5YT7uvqarTvrG1", "issuedAt": "1986-02-23T00:00:00Z", "metadata": {"ZAWlvz3c3XALMres": "GFfsH4aXCDhshvEF", "8rHd250nyihcUVGH": "QczI5ZoTRUkjGoRk", "Ps2SO9XrgXNIaU11": "cBXLwTfopqeZtHJn"}, "namespace": "RgaGfLMFbvyI5PZG", "nonceStr": "zVLcmZKKKYARape2", "paymentData": {"discountAmount": 39, "discountCode": "tjzQjDlUMCGnxZwa", "subtotalPrice": 21, "tax": 75, "totalPrice": 60}, "paymentMethod": "HnzGASmVzePIroz4", "paymentMethodFee": 61, "paymentOrderNo": "oQCuXeTRyJQrNLTc", "paymentProvider": "PAYPAL", "paymentProviderFee": 78, "paymentStationUrl": "seYCyiB4tDCWx3cE", "price": 47, "refundedTime": "1971-07-07T00:00:00Z", "salesTax": 94, "sandbox": false, "sku": "i1v2abpCWytPEi9Z", "status": "AUTHORISE_FAILED", "statusReason": "9fS1m77MAg4KoZQP", "subscriptionId": "LhDSJx9jzxaRKph4", "subtotalPrice": 22, "targetNamespace": "mBS3XKDhp1OkMcEr", "targetUserId": "meH0lX1hj0LaXgQ9", "tax": 11, "totalPrice": 29, "totalTax": 24, "txEndTime": "1991-03-02T00:00:00Z", "type": "BzgQ4CRwg0sKVeSp", "userId": "Mny0GrvKI5EVB9ZF", "vat": 52}' 'jtQZyIiAmCL8bNTT' 'fqLCv9DYBOProN4U' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'WbQaKFrTv4JWElmO' 'CxqPrq9I3XJWBxTL' --login_with_auth "Bearer foo"
platform-create-user-payment-order '{"currencyCode": "cOef8MgIwkrKFEtw", "currencyNamespace": "ESJCe2ksG3nZE13H", "customParameters": {"2fILFzOlAZbDQAEJ": {}, "LbVWH2XLIg3MgmdS": {}, "vWp3h0xPsVY8qNwB": {}}, "description": "2TY4v9NNfQSYLFKS", "extOrderNo": "l3FNFFJnt3rIwZdW", "extUserId": "02Su6aCnL816aH6g", "itemType": "SUBSCRIPTION", "language": "ckvw", "metadata": {"8bD5mGFFmKTTUxG0": "mpmFxxDNXGlGJvHf", "558h1ltyhiSGhfqX": "hxBJ7zLXioAGkWgS", "DdDQvpRfGe3z2rtj": "WpJAlKHF0ebxhJ11"}, "notifyUrl": "76CeD4dWCp4wqlQJ", "omitNotification": false, "platform": "lGZ7eGOPj2XoFug8", "price": 57, "recurringPaymentOrderNo": "ZyvlGDQGv6pNNowE", "region": "uVVZM28w4mnYvvlt", "returnUrl": "1es7A4PFduN4gx0U", "sandbox": true, "sku": "LrbJ0BkGzCNgesQl", "subscriptionId": "ZZHIZH0iks6kx0ad", "title": "nimPyyzezsHdFftH"}' 'HR6xbcVVonwz27DW' --login_with_auth "Bearer foo"
platform-refund-user-payment-order '{"description": "fGRVhbZTvCPrrZCT"}' 'U5WUJizF69PSsquW' 'UafwbFPX15633pFg' --login_with_auth "Bearer foo"
platform-get-user-platform-account-closure-histories 'A7i9tqvfHmFvUZiU' --login_with_auth "Bearer foo"
platform-apply-user-redemption '{"code": "W5Y0CYw5OXSGwQkJ", "orderNo": "uy9oLFcHHcraLXR2"}' 'n9JQvq7NKWIHYsii' --login_with_auth "Bearer foo"
platform-do-revocation '{"meta": {"3fCh7sieJjZPAkiW": {}, "umllU31uXPwYxedG": {}, "HCIkmt4bfJOhNaIT": {}}, "reason": "0pv7XeqO8gY3c4Sr", "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "TGYx2ihgioL8VvEz", "namespace": "HGTt9emdCLmzJbdk"}, "entitlement": {"entitlementId": "ykVAnmnRfUilcKA8"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "3gH239LhRx2Laa2R", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 39, "type": "ITEM"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "b6VgA5yFIH3s9Uye", "namespace": "aFi8OE7BCK4FeVGr"}, "entitlement": {"entitlementId": "l5NpUG9zblWEiHaU"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "Fd5z9r4nJWUvLp1w", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 65, "type": "ITEM"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "47468MXUq3uIffkI", "namespace": "pPmrWVxNZUvkiU2j"}, "entitlement": {"entitlementId": "XSwsBBRopVl38d4N"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "Gtk6EmWxC75M88TK", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 65, "type": "ENTITLEMENT"}], "source": "IAP", "transactionId": "5NmuZDUV3yHurgOf"}' 'ba1XeoHYTNoRol84' --login_with_auth "Bearer foo"
platform-register-xbl-sessions '{"gameSessionId": "UlkxtP5Vok9sNK1O", "payload": {"Rg3tChsS3fFpaS1u": {}, "q1mH3oYfPK2QiAUh": {}, "Ifi17YrkWHNxiaNy": {}}, "scid": "qBfgw58Hx0XYL0fJ", "sessionTemplateName": "OPYpnPqGlPnhBDOW"}' 'qDU8N3DjVUt0n0jf' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'yDbtIXICLkK8Zvbn' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'Tg3znlg8nmzQx1Rs' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '{"grantDays": 50, "itemId": "hcRlv16Wwe8YK3lZ", "language": "FslECI9QzuQcsjFe", "reason": "hD6uTDYnqyNgN7Go", "region": "eMsezFZsTBHkgcJ0", "source": "DcEt23pci6xEljer"}' '6aGJx5OFp3jKEx4a' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'SGdwTPX4ig3NVFFk' 'P7O3F4vsohRWDyGY' --login_with_auth "Bearer foo"
platform-get-user-subscription 'IVFDbTvRYfpJ4wM9' 'WZfOOxAzmsbhi5QJ' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'uc2SNBaOlXfgsgBd' '7MYLLoPZrkjRm5Ki' --login_with_auth "Bearer foo"
platform-cancel-subscription '{"immediate": false, "reason": "UkjDzJ4NuMMgI13n"}' 'plXaUQV5QEvKElLf' 'bB7gwwAR1xFrnyir' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription '{"grantDays": 46, "reason": "Rg6DVso5TJCSugdo"}' '4XTm8t1YTWqItjNW' 'Xm9sraeMA78YSRS2' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'fPy5fpbbbMIu9lu1' '8jIMBUM77XmemN8L' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '{"additionalData": {"cardSummary": "O03mnFSq9jJTVFoF"}, "authorisedTime": "1975-07-11T00:00:00Z", "chargebackReversedTime": "1998-03-16T00:00:00Z", "chargebackTime": "1996-02-27T00:00:00Z", "chargedTime": "1979-05-14T00:00:00Z", "createdTime": "1990-04-27T00:00:00Z", "currency": {"currencyCode": "R1Pq4a4uaMfd0SQA", "currencySymbol": "fYIyzHL8jxakuVu5", "currencyType": "VIRTUAL", "decimals": 83, "namespace": "5B08VZxI4TU3apnZ"}, "customParameters": {"XoJ4gI4EQKO8xC4D": {}, "0FsUo3IB2kX5REQZ": {}, "sHyXzoIXNf0KbL9H": {}}, "extOrderNo": "yJttdgfLGO3ummpl", "extTxId": "lnV6B62P1Kazg73c", "extUserId": "6UpmA4ehxNIIlcrZ", "issuedAt": "1982-12-31T00:00:00Z", "metadata": {"gameT2mLkkAMjHyI": "0e2Axj0nZHjmoKHJ", "ngwMe1AnQVj6QQjZ": "tkNJCnDSrsSey2Bq", "OxgwCymCDYsuff3b": "7G5FDX4mu0qPHb9L"}, "namespace": "l2EFEb8GnsthmQ2Y", "nonceStr": "6ZGOiqrg3lpqN5bO", "paymentData": {"discountAmount": 10, "discountCode": "g0MzWS9usxxnMhjv", "subtotalPrice": 62, "tax": 60, "totalPrice": 93}, "paymentMethod": "yED4prRVibTATxd7", "paymentMethodFee": 78, "paymentOrderNo": "aF8QHGM2IuQYBO8m", "paymentProvider": "XSOLLA", "paymentProviderFee": 88, "paymentStationUrl": "gTth479W8rXqwGVI", "price": 90, "refundedTime": "1991-10-25T00:00:00Z", "salesTax": 14, "sandbox": true, "sku": "TNHCka3Wb5kH1BrL", "status": "REQUEST_FOR_INFORMATION", "statusReason": "3ePBxQNz2IUEHMzl", "subscriptionId": "5jhwVDsuzwJ4v50e", "subtotalPrice": 30, "targetNamespace": "44KEm3uHBMCP5ckj", "targetUserId": "phURs4ksgsKJ2R6J", "tax": 0, "totalPrice": 10, "totalTax": 6, "txEndTime": "1979-07-06T00:00:00Z", "type": "sPGgJZyRwigaMu07", "userId": "Zek8WObpf0FHYfVi", "vat": 63}' 'errpOm4M2pM4fIfc' 'HBWZM50aHbPXRns3' --login_with_auth "Bearer foo"
platform-acquire-user-ticket '{"count": 33, "orderNo": "jOyHLyKe2foqsVIf"}' 'gBTr8RcxRQR0NYdJ' 'zf3TMhSaynVs05nZ' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'C4Os7hqIH2NgARSG' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code '{"allowOverdraft": true, "amount": 68, "balanceOrigin": "Xbox", "balanceSource": "ORDER_REVOCATION", "metadata": {"H2K0UuJdeGNquQna": {}, "XpDQ5rU2taDWh9JV": {}, "5oc5IFQsrwHqFqwV": {}}, "reason": "A5mozeeOjIFQfXV3"}' 'YW3ug3nCXhD7FUz1' 'iOe0pHa0LmseIRXe' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'oerZAxbDPXU5xJBh' 'IpJ9b0Ap7CmSiKPj' --login_with_auth "Bearer foo"
platform-check-balance '{"amount": 5, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"wAw5GdxpvLfa4b4h": {}, "TaZBGdX66DqPTdur": {}, "R3MYda0Y0BCO4qPn": {}}, "reason": "vxERWjKasq5zQ6uZ", "walletPlatform": "Other"}' 'ZzhDuLHq9LTBstgu' 'OdN0O7l3GbKPHdDT' --login_with_auth "Bearer foo"
platform-credit-user-wallet '{"amount": 87, "expireAt": "1993-08-23T00:00:00Z", "metadata": {"40tfd9GFXChtxB10": {}, "d4Q8nlBthUSu4WNf": {}, "TvD5UcES1eLMZs9l": {}}, "origin": "System", "reason": "Dp16qVIqXCK9dS5J", "source": "REFUND"}' 'ijiNzTUe8KdizXmr' 'mK0sCUsqxKocHomt' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform '{"amount": 19, "debitBalanceSource": "EXPIRATION", "metadata": {"oU1kUqRedwIu1TSR": {}, "r6r8mzfMedpcKhvH": {}, "PlvYanGqEkn9OEVw": {}}, "reason": "LWGT4MXhmzvRQb7c", "walletPlatform": "Playstation"}' 'vmjWq9fQqzulLGfQ' 'MqSLQDlRFYMVfiAM' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet '{"amount": 1, "metadata": {"xld80Ynss7hc3VUx": {}, "xZIgkTLqMeJPCbs8": {}, "jWmTteJhwNbwHGG3": {}}, "walletPlatform": "Xbox"}' 'YAZJ4HuLfeTfFBTO' 'FFMJ9pq511jZcTK8' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view '{"displayOrder": 52, "localizations": {"nWk0E7YaPblcWEyN": {"description": "gvs5LEZrQXzSQRWR", "localExt": {"s9EGnRPgYlJElgJ8": {}, "kx1WEeDbql13FtQM": {}, "u41rnOzbsFBqg6dz": {}}, "longDescription": "iWvdNcwfUBMdNuTa", "title": "iLxFMXRpDP9xutnt"}, "U8xHw4yYJOCViHwu": {"description": "nQwpC2eCFUAHZaYS", "localExt": {"vsWiNJtqXltZF6aS": {}, "RmHU5iR3hXIbzWPK": {}, "OkzftOgDQAWhulbr": {}}, "longDescription": "Df7q4cAnpmLiEu4C", "title": "NtX2lnqi7cHTSdGo"}, "LZbC3UJruU4uIXBZ": {"description": "sEYogFWiH9z4E8zm", "localExt": {"aZ5cg0REtUWY4fVI": {}, "dqwCWF5wmbOubTxA": {}, "AeDCowR3MeCNL1oN": {}}, "longDescription": "rF3SmgudQusJLsPl", "title": "W7ZyORFkN9EbKbTb"}}, "name": "rDzNgVEcw0lxRam1"}' '6O6v4VjJf40LjUdO' --login_with_auth "Bearer foo"
platform-get-view 'RELVXUFQyVlt9jmx' --login_with_auth "Bearer foo"
platform-update-view '{"displayOrder": 25, "localizations": {"XPDKCriRKzTZ7TXA": {"description": "VRnUVbxEJcKHE764", "localExt": {"EwhQfxFKIOGT1WKS": {}, "mLoA0ILaESC1GJXs": {}, "oBwqh0TQXa2j7v3z": {}}, "longDescription": "QJoQLTAlW75icIKU", "title": "pXazsFrmaGNoi3RP"}, "TgWotLNz0u8ySxA0": {"description": "yrjz4q7e0EJnADXC", "localExt": {"2y0DY1E1SMK9oA4v": {}, "K56dsYI5SKV5pDAN": {}, "yJ184miBhdVJt81f": {}}, "longDescription": "mLSyGuu5rbJVIwRM", "title": "twApGbXnR3yC6f2M"}, "HGGedk0KzXRclOXd": {"description": "PYZQxBnttu4yW5et", "localExt": {"l4Xk8Hd1lRtoPMvs": {}, "u9oswEPTvzwwGnpb": {}, "x8MCIjKzylqW8auy": {}}, "longDescription": "seP9wEEyYAnHPp4X", "title": "zVL5McglFCrjxqqx"}}, "name": "AYqXG2V3baMkZ9JC"}' 'qBIkUID0EE9InZNL' 'wwAhW2b5OHKtUv4l' --login_with_auth "Bearer foo"
platform-delete-view 'TkQNjxhXdj1CG0EB' 'gst9Qu8Ofl2oB8VT' --login_with_auth "Bearer foo"
platform-bulk-credit '[{"creditRequest": {"amount": 19, "expireAt": "1975-09-19T00:00:00Z", "metadata": {"HZro4hhwnANAGp8z": {}, "GqNGrcQyoA1TWPcy": {}, "83iXfYXNdMkdg9TM": {}}, "origin": "Other", "reason": "jaJs2duQqawPrxi6", "source": "PURCHASE"}, "currencyCode": "NbF5yLnYSa8xFLvc", "userIds": ["1cHN3QbzVuJZH3k5", "YexMMMiDFh5RbW02", "4cExxWKtdGTW4FIL"]}, {"creditRequest": {"amount": 30, "expireAt": "1982-06-11T00:00:00Z", "metadata": {"VyE42ApAb7CKt79w": {}, "AopZL9Cw6K9h55mw": {}, "UvhdBOgumV4wAsd4": {}}, "origin": "IOS", "reason": "J0rzqX2KJcYHgiFD", "source": "OTHER"}, "currencyCode": "W4fmg6btk3mAO4Et", "userIds": ["VDx9neFHWhDRJtyY", "Et7ygZleAoUuVKne", "B0hn2x1oTOX5gBQl"]}, {"creditRequest": {"amount": 31, "expireAt": "1989-11-26T00:00:00Z", "metadata": {"cqCkUXRj8gQHEe4C": {}, "O370OsbzRKKPd6mj": {}, "zLxllUrFYn7cSuO7": {}}, "origin": "Xbox", "reason": "xvgAocOqsd5v5n7e", "source": "REWARD"}, "currencyCode": "mN9opaF0kh3pCRB3", "userIds": ["infEVxArF7TB6A6a", "UmAvxBxJNPlvvYZw", "71zAJpaPeudUtKPJ"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit '[{"currencyCode": "4MWzWFTuNPf5JCSD", "request": {"allowOverdraft": true, "amount": 2, "balanceOrigin": "System", "balanceSource": "ORDER_REVOCATION", "metadata": {"1Jb75o2MFOa6xgPt": {}, "69QROGDeJCyHvUsn": {}, "LvXCSgQHvs25eiQO": {}}, "reason": "3oWdgXdm1IxL1Otl"}, "userIds": ["eUBqBO0Ze049k9W6", "ZLVJzRpUsITfVruD", "ukun42zPZvOd4yZy"]}, {"currencyCode": "MKyED3qDO5HXp5oV", "request": {"allowOverdraft": false, "amount": 4, "balanceOrigin": "GooglePlay", "balanceSource": "EXPIRATION", "metadata": {"ESbHQ7hvTlzf7XwQ": {}, "tVIYU87NgjDMcJxf": {}, "MfYFlt3JvDgMiyBG": {}}, "reason": "ygWFTAY3Th5mOwPC"}, "userIds": ["R7zDFMoNTQmlS8lM", "IkiYXGk6BoBmSLi0", "PKVPlOGfFBlu2ZP0"]}, {"currencyCode": "lY8UjprhCxhzW6ZM", "request": {"allowOverdraft": true, "amount": 23, "balanceOrigin": "GooglePlay", "balanceSource": "PAYMENT", "metadata": {"2Mx0sYCnYPT4i4mx": {}, "c14iRfzJwKuc7Epi": {}, "QEzz5N5osRYO7wbY": {}}, "reason": "h7q02W8tkTURUFmq"}, "userIds": ["iyZpvWVJFK6Zuvlz", "Nc8xhQqptccNorRl", "s7EC3nDnhFvDlFd7"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'GCII156hIg0g8HIx' 'pzm9AcFhH4ZlYY3r' --login_with_auth "Bearer foo"
platform-test-adyen-config '{"allowedPaymentMethods": ["EuHMWwQNmCQmGCF9", "63CbsOawlRBQJH6f", "Nekhk077gxaj55hu"], "apiKey": "TA6AvmW0567BFqbr", "authoriseAsCapture": false, "blockedPaymentMethods": ["IuxKmBXLi6GpnqAe", "Mvg3w0FQ1520WM3T", "xWXSdTiKdva2UREo"], "clientKey": "BSFtCLy2CqgCG7Jw", "dropInSettings": "JCDqkzOdFwLJpIPx", "liveEndpointUrlPrefix": "zLE1V9U1NgpH7Oc4", "merchantAccount": "4yjRdfqZgv34Gqqj", "notificationHmacKey": "elcN0GJmPwUTWMx0", "notificationPassword": "MiPAjnWIhFrqSn4e", "notificationUsername": "rXEtU1CaD8AqsMCG", "returnUrl": "BNhmUt6fzYRn85br", "settings": "Tu8F7cuCPh1TGZJm"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config '{"appId": "gWNHWnvOBRCt4onq", "privateKey": "Ro2PnMSRarKg4coy", "publicKey": "3AFpULIn21Nf2FNg", "returnUrl": "DWNC6yh7kgTHlrxK"}' --login_with_auth "Bearer foo"
platform-test-checkout-config '{"publicKey": "bsV4XtrI7SFBEgkw", "secretKey": "HifMHYI581HbF7fM"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-neon-pay-config '{"apiKey": "X9lDXYxGRJM92eX4", "webhookSecretKey": "2WW2WKf5urEOpASB"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config '{"clientID": "icX3ZwzZ7aVhrkmh", "clientSecret": "SOEozGOv8D0iVxzr", "returnUrl": "ec5kNwJAxm0Rdm9l", "webHookId": "6nIhG5SilDDIsmj4"}' --login_with_auth "Bearer foo"
platform-test-stripe-config '{"allowedPaymentMethodTypes": ["h625dIsMKWBxF9RA", "IrI81ZR2kNzh60RQ", "NaTEhMXMepgzY9jL"], "publishableKey": "iAdMiQ7eDMkeBRMu", "secretKey": "r18nCxiV9bQMHpPb", "webhookSecret": "vflI3LkRc1NgZaoY"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config '{"appId": "AaCCeRgtstsU3Qec", "key": "xo4bQZO3P2f8TTOV", "mchid": "f6jrr1OL606QpqCg", "returnUrl": "xt0NgDSj1T6EdeYF"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config '{"apiKey": "mrLT0HbvS4kSSt3C", "flowCompletionUrl": "yDgf6eFAiqSkHi0B", "merchantId": 88, "projectId": 18, "projectSecretKey": "2ElF6z6eJKuOW61a"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config-1 'kRFizqxCmudSXivA' --login_with_auth "Bearer foo"
platform-update-adyen-config '{"allowedPaymentMethods": ["L3n478mhb2I2yBJe", "CJghTrk68FWFzuLB", "dlrKjUbgZQfw6Zys"], "apiKey": "3mN8fIcC9Ckharfq", "authoriseAsCapture": false, "blockedPaymentMethods": ["Hefz77a9fntCNiHB", "RUNCPSre5GmZzCQw", "ilS3IxSjlyvR9PxG"], "clientKey": "9Lji2Vc88W8aLjIx", "dropInSettings": "VGpdOqguxvRwI9ZB", "liveEndpointUrlPrefix": "TipMRlhK9DMMaI4r", "merchantAccount": "yVDvNaruZxwTfh9g", "notificationHmacKey": "Es6GF247cbBLjUr5", "notificationPassword": "z03wxB3E9hrE9f9C", "notificationUsername": "OFrOr6wJDBwIDsJH", "returnUrl": "Ng6TvNGjwI4TbTwB", "settings": "ufUorJouduhCEJ5X"}' 'iKDIE9YugcupLxVB' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'cRkfhRuqkOTHSia7' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '{"appId": "oFd1fEmDuyAsQGzw", "privateKey": "JR5poI718RQnj4im", "publicKey": "u6XFfRcWDXhq1YmG", "returnUrl": "eygr2S4Yw8NmPaBe"}' 'ryzX2hOPVVFqVqxj' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'q1iG3TySOh8SI75o' --login_with_auth "Bearer foo"
platform-update-checkout-config '{"publicKey": "Xbyq8FBbur80Qwnl", "secretKey": "gAVfqz6gQJh8sn0b"}' 'VWRkvmAemh8lioBR' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id '7xTXcEIFod3lCzvj' --login_with_auth "Bearer foo"
platform-update-neon-pay-config '{"apiKey": "HzDHOrSJ1vbB7LRH", "webhookSecretKey": "d96dGLgkfrZveFMW"}' 'AFT7l0l1jaOAMCzb' --login_with_auth "Bearer foo"
platform-test-neon-pay-config-by-id 'soIgmKwwMDQPjUIo' --login_with_auth "Bearer foo"
platform-update-pay-pal-config '{"clientID": "sq1l6xo0D4JRbNqO", "clientSecret": "6IuP2PY5hhX6uNah", "returnUrl": "9JoHPj7jFWxSv1lY", "webHookId": "ylYAiZ8c7Zd7EUoe"}' 'zOLw8C1c5bBB3XZ7' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'ColKwlsNvtFuunQs' --login_with_auth "Bearer foo"
platform-update-stripe-config '{"allowedPaymentMethodTypes": ["vdXGlD40xxIyVwYj", "n6dlC9Kfh9gHuloy", "ce0cLJu4ljPWlCWT"], "publishableKey": "uGO8MnfOQu3wdT4A", "secretKey": "odp95o1RkX7iW7Vp", "webhookSecret": "CngWAv5DAG8dPdkK"}' 'gQqjyzUZR2rFIAuA' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'LNhNCyscsMBRLsWa' --login_with_auth "Bearer foo"
platform-update-wx-pay-config '{"appId": "dk2OQ421q7Nb1vrK", "key": "thVvU5on065ApCkV", "mchid": "N3QchuQ6pntxB648", "returnUrl": "ss7rBnvQHAM8gSdI"}' 'ybKUByHBzfvgtRTP' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'PzwJmKaLCx3gcidE' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'ALWe6RG5wWznu5Aj' --login_with_auth "Bearer foo"
platform-update-xsolla-config '{"apiKey": "wR1Z4fU7ICcaQtuu", "flowCompletionUrl": "KUw3dUwWHhQW3I1y", "merchantId": 40, "projectId": 53, "projectSecretKey": "jRLVOXBMa0JiIe1A"}' 'Y0tUA7EKASk3USNL' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'hOBlxRBLgohp8ByT' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT_DARK"}' 'mrT5HL16jMwECnmw' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config '{"aggregate": "XSOLLA", "namespace": "cLbeQf9MICxX7xKy", "region": "CfgwSPz14asyOdgn", "sandboxTaxJarApiToken": "77gN8K1FlNkgbFE8", "specials": ["NEONPAY", "ALIPAY", "WALLET"], "taxJarApiToken": "K5grmPBsFH71Vrhs", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config '{"aggregate": "NEONPAY", "namespace": "egQbNA2WQrHTkJT1", "region": "VkChD3n0c1ryAkRv", "sandboxTaxJarApiToken": "dPR8gx2rX5dck8NF", "specials": ["NEONPAY", "ALIPAY", "ADYEN"], "taxJarApiToken": "LMehg047axU5ktNy", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' 'RIvO2Sgz30hejqdk' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'tHIO1VdtMSews1Tr' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config '{"sandboxTaxJarApiToken": "U4FhAfKDcDG5bMTb", "taxJarApiToken": "a1tUlFGcP6eL7EpW", "taxJarEnabled": true, "taxJarProductCodesMapping": {"YvXCT6m6mRZAlLBc": "zJVeil7GbG1ISBCk", "cnpxKUxLjmxhBS6Y": "ypRW7fNntaIEtDI6", "MbhxkQdezbmf392e": "rsoZ2KbMb5jal0ru"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'ZmBXlGSp85q6fuGf' 'o5wSDHnyabk493I3' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'pvHKDaWhTN1qyxpU' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'zWIZWJTDzWguhujw' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories '1EoR58uCVldefonH' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'XBOX' --login_with_auth "Bearer foo"
platform-get-apple-config-version --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id '7LLNCjIySe36SA5d' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'xATLv5PkLvraRzCh' --login_with_auth "Bearer foo"
platform-public-get-estimated-price 'djDGdlk2A2jHbAPN' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'GInvbnf4ewKFFLoG' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition '{"itemIds": ["ggX4gQWyZocvYfr0", "Rnl02R1IVNnaK6KS", "71Xs1BphA9BXpKYg"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'F9OuigDP0Vjmy7j2' 'BrdCAm3slCwaBqHp' --login_with_auth "Bearer foo"
platform-public-get-app 'E55sjxBGijw0dQtZ' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'NonMrPkzUe9SglAJ' --login_with_auth "Bearer foo"
platform-public-get-item 'GyZS0I8FevJiT98H' --login_with_auth "Bearer foo"
platform-public-get-payment-url '{"neonPayConfig": {"cancelUrl": "UBp56Q4WETxtGMs5", "successUrl": "tPKPuK0K4PiMDTR7"}, "paymentOrderNo": "LxihuOn57io0d9dG", "paymentProvider": "ADYEN", "returnUrl": "yzaNbGeASX83SLiI", "ui": "bAP2qyUnHnfrEdDf", "zipCode": "Y4TTxu8goZgsX4Rw"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'fM4qnUdcQqZ9F1ui' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'vPob0YZEuXQACDDQ' --login_with_auth "Bearer foo"
platform-pay '{"token": "ryNf9VGxbOeJe4n9"}' 'eUlBQZ2UGePWXbAy' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'GiXa9nUsHCVicuJ7' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'NEONPAY' '9bSqqyAPha5b6PQT' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'PTytHeeXo7gOFVLZ' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'CBWuVIROZuqdJBi8' 'pkn98VtLNkaIQJfk' 'XSOLLA' 'zl1ywEPiunixlEAH' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'ZzHs8x5oPSkZFIV2' 'ALIPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'qNeKpOxPrlG9svdq' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'siVTqPbzY1yxl7ze' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'EpmSPO6KwlJQlj9I' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'i2jARwzowk9OoiPd' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'nq9KBqBwiNCsnK8C' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement '{"gameId": "cO1OHbpQZtwW3EwL", "language": "jEj_mCDz", "region": "ijmtDGvd9ESdY0eT"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'kBWA44Qqsi5yOjvl' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc '5sRN2ENn1RLi5iMP' --body '{"epicGamesJwtToken": "nbg7o1zYpqUsliPy"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'XZGYIW5ZDtWbdkzP' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'P47RcUIi2CoNj4EG' --body '{"serviceLabel": 55}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'emxKQk8cBrt5E8k8' --body '{"serviceLabels": [36, 45, 52]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc '{"appId": "gfB8jIecOx5ugNCD", "steamId": "d6jW6fjtBcO3fWq9"}' 'qfmBv0XgJB6a7uyk' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'ADFpinFcH2ZMSYij' --body '{"xstsToken": "qEuMfuYFUS079tOp"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'ZYM1XV0Op0damycn' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'TUOoMkOppZNOkqxc' '42HKv5wvtPJVsuza' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'BciSxwzuIpGBYHTH' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlements-by-ids 'RqSgH5xIuBTYOdsv' --login_with_auth "Bearer foo"
platform-public-user-entitlement-history 'Nyk52MQFkVVEf36S' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement '7yPgG48bk6PwH1td' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'EAJSqXA0Wv0zWGvk' 'c6byp3mvyYT3GuaZ' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'VTxBlw1IWeXKFT4r' 'fSbbSlDPGf9Fn32S' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'JNPZkEfkAcJTMS4p' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'VRcCHIGfmCMTr9AC' 'nI2sMrEgl7ZR1HCk' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'f2Sw78lLGKjDHuXt' '358gzqRMuMPrIekx' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "options": ["kyXpxJeFxhgTwyO5", "1CUpcdxL0a9VDhrq", "WCTXOxQUpyFgZhNp"], "requestId": "OTE4toH57yr01N33", "useCount": 31}' 'tLRT5stwQFUEbTPQ' '8p7VMlxEXnqHwMyK' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement '{"requestId": "pwphjUXvM1GqMkZ4", "useCount": 19}' 'UXgdBqtJaRyDlP9q' 'IZJ5Krx6KkHagEug' --login_with_auth "Bearer foo"
platform-public-split-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 100}' 'kU8Y58COtTNjnNSi' 'kJDg6ujKvq0CIa1Y' --login_with_auth "Bearer foo"
platform-public-transfer-user-entitlement '{"entitlementId": "CK9PlMeQprfgLGkH", "metadata": {"operationSource": "INVENTORY"}, "useCount": 40}' 'QTf5YpDUGYsJBEkY' 'UrLv4qUiTkFcLBrg' --login_with_auth "Bearer foo"
platform-public-redeem-code '{"code": "2JB0WiCpVBwvAffJ", "language": "JU-rtzx", "region": "SSeJ4qy4PIKleuV2"}' '71bwZ4niLSzQnv0C' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item '{"excludeOldTransactions": false, "language": "Tvo-ahLz", "productId": "SYo9fY2EBZAHQXc4", "receiptData": "Xcae7VKl0ARzGEAr", "region": "lfE1NSmtcADoZvd0", "transactionId": "La7P4JI4H7uDzkOH"}' 'TdnUtdrRcs3GeOsK' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'PNlG7rEXi6LEqJER' --body '{"epicGamesJwtToken": "pbxEq07txnvZZeAf"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '{"autoAck": true, "autoConsume": false, "language": "VXu_360", "orderId": "pQWslNGnLYUYR0yO", "packageName": "vJhUjzcMtwINUlrh", "productId": "Ipnlam2EefVopbpP", "purchaseTime": 15, "purchaseToken": "v9lyRyTdYBUljvBz", "region": "vYNEtfgBFikt18cQ", "subscriptionPurchase": true}' '77SotDEtU2xBSEQ8' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'rBKc2K6oJXxVEfna' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'qX8NuZtRUTKUvR69' --body '{"currencyCode": "PImy6CcwlqJ4MO3L", "price": 0.9767332992170906, "productId": "x1H5OgzHypgsSeKC", "serviceLabel": 44}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels '{"currencyCode": "pjyvLSHB1y3klHuA", "price": 0.5270778401136915, "productId": "nidOyGuS0OG7ohiL", "serviceLabels": [8, 16, 27]}' '3ClrNhEdxd24ZKfv' --login_with_auth "Bearer foo"
platform-sync-steam-inventory '{"appId": "Mf1T5FzYMf1jaCgZ", "currencyCode": "osntPzP1vXXB92q1", "language": "vy-pTiq", "price": 0.7971873380694604, "productId": "Mt37MXy7Fp7lUfQq", "region": "XrqGadwvKlJFX1ZH", "steamId": "V9yo9Ur1hfhmGEKu"}' 'VUZdCacRGataPrcg' --login_with_auth "Bearer foo"
platform-public-query-user-third-party-subscription 'APPLE' 'WJwHO65aOFDwpqy7' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 '{"gameId": "XOU3DwglyMGNll4O", "language": "Vmu_Jo", "region": "IoMZCjGiOZJpUf9R"}' 'pcfEQn0O6D8PGQua' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'zAypgWhTED5YmPTB' --body '{"currencyCode": "Ukm2FyvdguCYVqFy", "price": 0.5493845520346308, "productId": "Kh1YtTY4AejyQc5D", "xstsToken": "ac7hSLldWx5DyniV"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'ESUgrROrP1ip3jNG' --login_with_auth "Bearer foo"
platform-public-create-user-order '{"currencyCode": "68DByf2UMPtigq9z", "discountCodes": ["8hHlQyMlgfkTsATh", "OQOcAqBj0bXhOr9O", "Ht6zx1i2W3GY7tdh"], "discountedPrice": 77, "ext": {"0aWrshpmb1C9Al7e": {}, "WrbNRE0xyYPUZHyL": {}, "GQ52IjGpRJCUJpsc": {}}, "itemId": "OTkWETSJ04c5MGIn", "language": "tQZo_ImUQ", "price": 45, "quantity": 48, "region": "vmziSSiSpXeWOGay", "returnUrl": "fRkQvoN06SpNOnuS", "sectionId": "ksfm7hcIFdkdrwAc"}' 'K2lUda9h9FgvfhiL' --login_with_auth "Bearer foo"
platform-public-preview-order-price '{"currencyCode": "EAkA7n6516ydoRT1", "discountCodes": ["wLyS4VbHJvD0lL7a", "qZBrdTnGrwHeWoQX", "PFWFaKbDgrGkv8SV"], "discountedPrice": 96, "itemId": "SwjCYjCHniVSn1gY", "price": 67, "quantity": 36}' 'al5NrBtT0om9OlGz' --login_with_auth "Bearer foo"
platform-public-get-user-order 'pF25qu98RhktX6qw' 'kXbCLbh8t0zPkQWR' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'UlgE0kxzFMq9ttbE' 'HAEV7C65Ans9SquN' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'SJIay5VdUdYy9Y9O' 'CSmmT3WKijbqhT3u' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'yQRXvvcUYDeWPZ8y' 'hwQ0gIdj1lTJdNLm' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'AvEdEBVAU3rbkv8V' --login_with_auth "Bearer foo"
platform-public-delete-payment-account '98cupW0L5WsiuITR' 'card' 'SPOUfWQwr4PYf48r' --login_with_auth "Bearer foo"
platform-public-list-active-sections '66MaToxBiliy2vtR' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'kpqL6KrVcNz83J57' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription '{"currencyCode": "t6OcYPQ5bk5IeuAi", "itemId": "3zWFGorCbncoj5Rv", "language": "uUz_Zvht", "region": "TTN2sBEijjjpvSzG", "returnUrl": "kED0oweFYDBPyd1j", "source": "JBxbrbuFay9PXgEQ"}' 'S4871QSmsspn5sNf' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'ifK65tvaH9jwcO48' 'pthyYpBJDHIIxTIG' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'I5EssYllIqjJzuQ8' 'GglVgxjOGQGlHm8V' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'TN56tJKwD8O07L9G' 'G1uenDihceaLdgPZ' --login_with_auth "Bearer foo"
platform-public-cancel-subscription '{"immediate": true, "reason": "0fKW8LeQxItaK6s3"}' 'Hha69MgxjGJx62mk' 'fVlu4bGB1pyk0Ppx' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'XZDy5Pmbu7RrD9a5' 'mdlXTCL467xHbAiD' --login_with_auth "Bearer foo"
platform-public-list-views '3Pr3mXZO1PnbSlfV' --login_with_auth "Bearer foo"
platform-public-get-wallet 'RlAI8F2f3mEv09kA' 'A5hnQtd4bcivHGIE' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'plRpcHDWcIoJ45L0' 'Ze3YamxKDSZTl4Ui' --login_with_auth "Bearer foo"
platform-public-get-my-dlc-content 'XBOX' --login_with_auth "Bearer foo"
platform-query-fulfillments --login_with_auth "Bearer foo"
platform-query-items-v2 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'S3jsRZffCd00VrgP' --body '{"itemIds": ["uNtOv3jbhGBuW8Kc", "yPMfDWSEEpKoJlmh", "MQUCx70QjYbzemOT"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 '{"entitlementCollectionId": "URzzAOIBarB7kcer", "entitlementOrigin": "Steam", "metadata": {"SvPLeQZIpKFXgnsx": {}, "x3c2bUsO7FP8RmOs": {}, "tZAGDgiVsV2OttwJ": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "9AHMLHqguYykVWzN", "namespace": "wPcvGyieBsRUduW5"}, "item": {"itemId": "lxSlorWEGN5bPGSO", "itemName": "SiiItrSrEJMBAIwT", "itemSku": "LkrMDFQfpQ9o0GJM", "itemType": "TfqRRaZozM8xCBoa"}, "quantity": 91, "type": "ITEM"}, {"currency": {"currencyCode": "2FMwfWNCbN5GelVO", "namespace": "U0hHnsCl5k6Jxh5m"}, "item": {"itemId": "kmQzKg0jWCjpGwh7", "itemName": "pLAi5JmzvM6JFKB8", "itemSku": "ikHpl3sNRaDEC2Ok", "itemType": "XA3WqypoOw0H2s0s"}, "quantity": 17, "type": "CURRENCY"}, {"currency": {"currencyCode": "bQNBz81zRPntxpgi", "namespace": "7tXIcNEcGJjOCXpu"}, "item": {"itemId": "ix5vnPeTu9evbRov", "itemName": "7Bm40CtZiAxk43DG", "itemSku": "V1SCkw8U0d4FvVmP", "itemType": "MtpRMWSQ8Szi1IrG"}, "quantity": 16, "type": "CURRENCY"}], "source": "REDEEM_CODE", "transactionId": "RmR5BGRJhFwxmkGf"}' 'PI3j4luXQuuLtYa8' --login_with_auth "Bearer foo"
platform-fulfill-items '{"items": [{"duration": 22, "endDate": "1984-06-27T00:00:00Z", "entitlementCollectionId": "WMcYW5iRrw32FRg8", "entitlementOrigin": "Playstation", "itemId": "dvW1hbvGenRbm3Qt", "itemSku": "sY5WaKM5YY6pYrme", "language": "MIHLS8egV8XhgDjb", "metadata": {"rum8UxcutmVg8APW": {}, "Kxoj6MF68VuKDokl": {}, "YmkytCAH8Jiqe7gf": {}}, "orderNo": "V1G6bYgIbVKp4Kge", "origin": "Other", "quantity": 9, "region": "mHDksA6Mv9Nzs19e", "source": "REWARD", "startDate": "1997-05-12T00:00:00Z", "storeId": "oeKagnKf2Yifzvr9"}, {"duration": 83, "endDate": "1980-05-14T00:00:00Z", "entitlementCollectionId": "o6P8FWIPeqaBeD2u", "entitlementOrigin": "Steam", "itemId": "qwoIwQBeIALI8JNI", "itemSku": "II4jrzrPsuMziNM8", "language": "AB7RRxiZH3ngnitU", "metadata": {"RdMjZLYCaeklQcFY": {}, "1QIk1h5EKvMGd6hQ": {}, "2mHjmLu4oFlReHy0": {}}, "orderNo": "JyZv7honqeiGTTqp", "origin": "GooglePlay", "quantity": 61, "region": "VsY1kPNdJiJXB3yj", "source": "EXPIRATION", "startDate": "1987-06-23T00:00:00Z", "storeId": "fH66eFCMTsLA8vYV"}, {"duration": 43, "endDate": "1977-05-23T00:00:00Z", "entitlementCollectionId": "ffBWRaJN1SjCFLDN", "entitlementOrigin": "Twitch", "itemId": "S54NNs3XdhMbQX9D", "itemSku": "1znEWw9p7g4UsQCT", "language": "KDh5n9yc34xF8qFl", "metadata": {"lM1LTrl4MP3Nl4T3": {}, "ujvV7W6ADLtn7oIn": {}, "n1Bz3wM3BI51etn1": {}}, "orderNo": "7OcmSVHZ6wtPVAwg", "origin": "Other", "quantity": 6, "region": "xYxXJTduZp1nNYHR", "source": "SELL_BACK", "startDate": "1978-04-16T00:00:00Z", "storeId": "82aLD9jUjuDITjif"}]}' 'WRbmtK7MTxcCWnMi' 'CLsjroKHPApA8GsG' --login_with_auth "Bearer foo"
platform-retry-fulfill-items 'wyocvY9NePjLJQJX' 'wUApJWohXn01RB7p' --login_with_auth "Bearer foo"
platform-revoke-items 'u7BaONXyE5fIDbsM' 'i48xOYVvEcEm53BY' --login_with_auth "Bearer foo"
platform-v2-public-fulfill-apple-iap-item 'MBacQBIuDVs7U0AJ' --body '{"transactionId": "tWPRteszMTd0R5Fs"}' --login_with_auth "Bearer foo"
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
echo "1..481"

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
    'rf9xbVfgvG617Gmx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'zClkR3M6Twpwq3nL' \
    --body '{"grantDays": "wxnJKjOo9fvfXF1V"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'sikD3IphQQiRcOts' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'thUwgQzNHUZ0l1FR' \
    --body '{"grantDays": "fOjJUmCbi2llksf6"}' \
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
    '{"clazz": "GA8vTt92kldCoyRd", "dryRun": false, "fulfillmentUrl": "KFrXKFA2gdjQCYoE", "itemType": "APP", "purchaseConditionUrl": "5qSl7WN3ncPkqiTK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'LOOTBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'rhOmR4zFjoJZVKZj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    '{"clazz": "OD2ePKAKYjJMVnYj", "dryRun": true, "fulfillmentUrl": "jgKqSSYgZnVfa8go", "purchaseConditionUrl": "vttlpFAq8oebnS4Y"}' \
    '2zkGYTr9yJIveX52' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'r6Inl9VTJB9Al3mn' \
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
    '{"description": "2DsHDHzSVJzhU5Z4", "discountConfig": {"categories": [{"categoryPath": "4zgZ1fieLdl3Y82D", "includeSubCategories": false}, {"categoryPath": "j5kPuNRZZaUccuBY", "includeSubCategories": false}, {"categoryPath": "E1Toj5vygVvLSJvd", "includeSubCategories": true}], "currencyCode": "QiU3DD0xZFH1fHFL", "currencyNamespace": "Sr0O4rEZTbFDj2L2", "discountAmount": 79, "discountPercentage": 65, "discountType": "AMOUNT", "items": [{"itemId": "fFvWenMNV00KVuLF", "itemName": "9WDnGO3bpQWmnS52"}, {"itemId": "ZuuuI7F1xpVrcoXz", "itemName": "SOEGEDYfiGPYo2K3"}, {"itemId": "dN3YBOJfvV6SuHov", "itemName": "oQlk5wL2oXDZ20Bw"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 44, "itemId": "tz6KUC4jXGj2G0GZ", "itemName": "3JBYi9bBKBRpdbLC", "quantity": 17}, {"extraSubscriptionDays": 96, "itemId": "wxOx2XQn94xPqXhq", "itemName": "eNMDGA3O5hQAl6U2", "quantity": 13}, {"extraSubscriptionDays": 23, "itemId": "9imVMh3i7j095rDL", "itemName": "6lEuB1ZIMIs1dFvY", "quantity": 29}], "maxRedeemCountPerCampaignPerUser": 52, "maxRedeemCountPerCode": 21, "maxRedeemCountPerCodePerUser": 96, "maxSaleCount": 69, "name": "dQ6sTrUg7Z0SLrZr", "redeemEnd": "1971-06-14T00:00:00Z", "redeemStart": "1991-09-04T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["X9GegDnrYz0GFpSV", "dxFsXAp1roclyXll", "FitPamSKRzDIZgSk"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'Y0xhMLwxgRpTSUpp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '{"description": "vO3QG68KeD7QJQEE", "discountConfig": {"categories": [{"categoryPath": "VDAg045BvtPd7ibB", "includeSubCategories": true}, {"categoryPath": "8GScnP5QzRBY1Ure", "includeSubCategories": false}, {"categoryPath": "3Qcrtt8L5dIebsw7", "includeSubCategories": true}], "currencyCode": "It01gzH17IcfJyGu", "currencyNamespace": "lmByN5rcDA3Wcv9o", "discountAmount": 42, "discountPercentage": 10, "discountType": "PERCENTAGE", "items": [{"itemId": "XRthQZvzRi7pqpaj", "itemName": "YEHs9TIkcnrJ64BO"}, {"itemId": "KqywS6DKNSeb2UMW", "itemName": "OgVeYkCvqq0tO15p"}, {"itemId": "EVG7sNihxpuuL7DJ", "itemName": "CxvzZnh8oBAk1MNC"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 95, "itemId": "KWNkLU5ty3uQa7Fl", "itemName": "3ZhSMLtrwnjTJVDl", "quantity": 15}, {"extraSubscriptionDays": 86, "itemId": "112byTYCDBnAvf8J", "itemName": "pFuJSZistM75544P", "quantity": 60}, {"extraSubscriptionDays": 24, "itemId": "VOMRvvqkXDMPzOB0", "itemName": "8tpk0qhZath4b4Ht", "quantity": 45}], "maxRedeemCountPerCampaignPerUser": 1, "maxRedeemCountPerCode": 62, "maxRedeemCountPerCodePerUser": 78, "maxSaleCount": 30, "name": "55pJNTX1sDjSWiSX", "redeemEnd": "1980-07-13T00:00:00Z", "redeemStart": "1995-01-15T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["30BqC5W7g7hiwumJ", "TI3jlZPjoCdGiIP6", "cB3Pj63MJXIuLWYb"]}' \
    '2iHHVN0ZBgvrigXU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
$PYTHON -m $MODULE 'platform-rename-batch' \
    '{"newName": "T4fRbawD5yOvjgOo", "oldName": "pQfbXmtF0WFH7F2I"}' \
    'nhxtynUjuBCxkb2o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
$PYTHON -m $MODULE 'platform-query-campaign-batch-names' \
    'F99xI1VVtVrVT6Hn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    '8B2d1hZUnoQwg5uq' \
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
    '{"enableInventoryCheck": false}' \
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
    '{"appConfig": {"appName": "EjxqhgYqmMqIdlRr"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "fuelAiZBZcQGHHGI"}, "extendType": "APP"}' \
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
    '{"appConfig": {"appName": "fm7cYCpDIJG42ILh"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "oCh8lmKKocC5Ea29"}, "extendType": "APP"}' \
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
    '{"categoryPath": "n7UC7y1MKYVeoGFr", "localizationDisplayNames": {"Db8unXv1iE7YgEZs": "pOJ0NiZl6OVLxKtk", "BpaCG8Nu5m4ctwUN": "V8ncebaJ0DCuIeES", "tt3PbyctX7HC2haQ": "wVWONEpAPedzI2Ad"}}' \
    'lqiyEJIQcbZJJ3Ah' \
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
    'krMi0bnppEJFISze' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '{"localizationDisplayNames": {"88rGEr3cilJWhaW6": "jNsM94E2FQb6S0Vm", "aTR7E3mkDSQkgVMh": "LbM6H1MnNSKd0KSt", "ITvGQtzwjGtGTr23": "8G8Aevk3k14782W2"}}' \
    'oNo3X4m6wms9SPaH' \
    'lqtDPry2vMON7sdh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'lilfpDT8o2iFrYtG' \
    'fCZCcrvsV2I4X26p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    '21iDBZGJ8ZMLwPJ8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    '71nV5ALS7cneNLIt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'UJgh74tyxkTR8ZCV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    '{"batchName": "JtkxjBJrNeQRsqkk", "codeValue": "KK2qxqzy4KSA5UtS", "quantity": 79}' \
    'WjANSWIT9TLnuMLN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
$PYTHON -m $MODULE 'platform-download' \
    'JAEk3A6A6rYiIu8e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'LdWykhBxLFnKnSYC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    '9yyBYepIqtrikdAb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'dOT6iSRdEg8NYuc4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'q5sJVzaKGDOULJbj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'HphqjHGGAhfWaXqk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'A5fuVYOsMFo9tnqa' \
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
    '{"currencyCode": "4LEWGg1r4nW4pBcP", "currencySymbol": "PaiaM1og5rxUjGPK", "currencyType": "VIRTUAL", "decimals": 77, "localizationDescriptions": {"9EwbIGMGJ70P9IqA": "yNlZ2OwFSebBkXka", "xtY97TMJH8bO4GDH": "T6ZaUUkvlTKAhrxq", "Hw7f813qNjzlcxXs": "mGGcJhauxfhVKIbR"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    '{"localizationDescriptions": {"vUnyElHPuQE3Gc8b": "Y4IH0OXHZP6VVB7q", "jDHMS49dkv8vxyg6": "giNKzeFnlgGRgYK3", "SeYvULYNIhs5PZGT": "Jmgofq7nlF5Ch8J2"}}' \
    'Qs990APOU4hcdwln' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'sTap2RJpHtncLywP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    '3WlLmNdQGk6vneHo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'B1PXO1vT1AonFO3s' \
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
    '{"data": [{"id": "yvkYd78GsJGLbnb4", "rewards": [{"currency": {"currencyCode": "Nvw7fnm4MnOqnqNe", "namespace": "rQoHiDIJayvSNt8E"}, "item": {"itemId": "QXsMbYi1yEI9ycht", "itemName": "yhjZSeDCKT4ilZB8", "itemSku": "apDTR3aL9sunWp7V", "itemType": "1s8LmXm0FaJMIjgz"}, "quantity": 95, "type": "ITEM"}, {"currency": {"currencyCode": "02nZWwBdEFpfccau", "namespace": "YDc86pxK9KhF4KRV"}, "item": {"itemId": "PoIuzAuQNjAfvOE2", "itemName": "cVjFp1CeCEfaV4ZG", "itemSku": "GwbqOB4mD3E7AFHq", "itemType": "lTTkL8cmpA0sZ0tg"}, "quantity": 8, "type": "ITEM"}, {"currency": {"currencyCode": "UV5SMZ8GUvWZvoCm", "namespace": "prkv7A8MRutCKCsq"}, "item": {"itemId": "mx2zriOGB8b5qTFp", "itemName": "3cIxOI33nt54i5hd", "itemSku": "AezedcppbujZh1fY", "itemType": "XF6R9Rz3HVP2Y9Wq"}, "quantity": 91, "type": "CURRENCY"}]}, {"id": "nEDkfmNbDTMGgET2", "rewards": [{"currency": {"currencyCode": "yS6C8a8L0vQDS4EV", "namespace": "pBmsUzx64Gr4XEm0"}, "item": {"itemId": "uYYuAmqhftIfe2zd", "itemName": "qZ7ht1vUiJ7jBXy8", "itemSku": "psNoHNalwgvju62r", "itemType": "PFMbE1cW57GaNZLT"}, "quantity": 31, "type": "ITEM"}, {"currency": {"currencyCode": "rdM9viFWmezrQOWH", "namespace": "03zyr7kRbC31YMJf"}, "item": {"itemId": "RiD7djt1VeOFBDA3", "itemName": "gvCRfoBijpbMblGW", "itemSku": "np94a6GKY0BrHiWs", "itemType": "0B0RhxQtgVgbN8kr"}, "quantity": 73, "type": "CURRENCY"}, {"currency": {"currencyCode": "hJvrOCdAEZ2RHt3u", "namespace": "Q5nFrPXwxJZQpkeD"}, "item": {"itemId": "Hr0hjKBpDMIvK4qf", "itemName": "Q0pQIcYMBktqqAAF", "itemSku": "6YG1dD1vECBb01VF", "itemType": "FhO5FcdTvIDQI2uI"}, "quantity": 18, "type": "CURRENCY"}]}, {"id": "NZKqlJZsdnY04DIy", "rewards": [{"currency": {"currencyCode": "osprZPBaERb7U9kK", "namespace": "4VctUmDhFVNa0JYz"}, "item": {"itemId": "TbdnOnEarWP4nrJ5", "itemName": "fNESRVGeswvkzLNI", "itemSku": "ITUJGj5FYaSgewLW", "itemType": "HcBxz5LpdkRCAU8H"}, "quantity": 16, "type": "CURRENCY"}, {"currency": {"currencyCode": "ZLa7Kw77UpCxNyx1", "namespace": "jjdxNePPAJ6Z9Uzq"}, "item": {"itemId": "IhZZiK0QEG6C9w4l", "itemName": "VRNOF1Bg6OHZzvdZ", "itemSku": "HoIm4tKNhPjNIQGF", "itemType": "xGwgnSiZtChE0uof"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "y9ahS7h7XVlmc5Rs", "namespace": "5FVQSIqObR55tV0B"}, "item": {"itemId": "lN1iFvw0GSLBmie8", "itemName": "SJckSRbu7hgmUm7R", "itemSku": "VCUREDdoGatGQ1Se", "itemType": "OXsg4jofp9PvlQ1x"}, "quantity": 7, "type": "CURRENCY"}]}]}' \
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
    '{"data": [{"platform": "PSN", "platformDlcIdMap": {"r4JDpvZgvPGHjV7M": "NTpM7fSods1zdVT0", "aWj58Othvd3jzMDA": "f40gKSizvmxts5HS", "QvRAPG9JoVSLrbs5": "niXkjpkOgRCC7qfz"}}, {"platform": "PSN", "platformDlcIdMap": {"jV7NTRYld9FJJ10g": "oNq8uq79Du28SRRA", "MaQFEzppeticckSU": "on7awfol07696uxp", "5ieMjjOfFSx3AJN9": "7kUjwiCmWQvbrxQp"}}, {"platform": "STEAM", "platformDlcIdMap": {"Snos6QiHyrcGeRv2": "7hj73EtufHuNIp0G", "XpM4nbG7aww2TANW": "1Or7TvLoL0wwHoRM", "NexBOron8wIdUbp7": "xVMKfbAJfW4iMIC5"}}]}' \
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
    '{"entitlementGrantList": [{"collectionId": "2NUedhhkME18qGpS", "endDate": "1980-12-09T00:00:00Z", "grantedCode": "yEPDWHcqfYp2EFxE", "itemId": "aEHCGtg812NQb5Gl", "itemNamespace": "h8srTlTj61WdV2XU", "language": "qc_wfJS_810", "metadata": {"oApAxyDnHjAx7rZT": {}, "vew0WVDSMNr23LV7": {}, "xZEEv7O1lwxVTRll": {}}, "origin": "System", "quantity": 22, "region": "IEUJtMC8NyV2HLHZ", "source": "REDEEM_CODE", "startDate": "1999-02-19T00:00:00Z", "storeId": "oYJlC4ie3InnSA22"}, {"collectionId": "NHTb4qXYyJUAlKlT", "endDate": "1982-06-07T00:00:00Z", "grantedCode": "dJEPoemVtmVXTs3t", "itemId": "Cu4F9IgDT2tq2V2l", "itemNamespace": "MzfIQHCZ90DqQgP6", "language": "RNi_SNiw", "metadata": {"N2loTnRa0KiQWPxd": {}, "1gqlwx9CE4WcsmYt": {}, "CkIgcwiDWQFghmIi": {}}, "origin": "Steam", "quantity": 10, "region": "mtuIFllfSUnaUhC4", "source": "REDEEM_CODE", "startDate": "1989-06-01T00:00:00Z", "storeId": "1AS2jTKoTYeHaCuN"}, {"collectionId": "7zpX9vp4QJdCrwkz", "endDate": "1998-02-08T00:00:00Z", "grantedCode": "nw2oxKye8jZqj7k0", "itemId": "YiLqOUSBuwR388RE", "itemNamespace": "DRuYBnWiEsOnDfIA", "language": "JKQF", "metadata": {"x16vo60jgvwV3C9h": {}, "J1kSZonK02WHGVKD": {}, "cKulj3Pdegy4G6LO": {}}, "origin": "Nintendo", "quantity": 92, "region": "ak8CYp6DPdukc04j", "source": "PROMOTION", "startDate": "1996-01-08T00:00:00Z", "storeId": "AFLweD9Z7U2lNkor"}], "userIds": ["Dj7pR05RTGXGRkYX", "rw9QH3rNhDepQum4", "ifTd5nAOF9VV7JgC"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["Om4wL729Hma0nCdC", "EFcf2doBrfHiHXXg", "vu496H02yOVN1h41"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'jIPOMXufZPWSe20J' \
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
    --body '{"body": {"account": "fNvtNcWtpUkw98x3", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 40, "clientTransactionId": "ihhgbeAZoFncMUdm"}, {"amountConsumed": 11, "clientTransactionId": "0DetCeJ4x0wf5mQx"}, {"amountConsumed": 68, "clientTransactionId": "jh6Tyq7WUilXgtf5"}], "entitlementId": "UctyV3aSw4twReM5", "usageCount": 61}, {"clientTransaction": [{"amountConsumed": 23, "clientTransactionId": "cHde3fkHf7tH8WTO"}, {"amountConsumed": 93, "clientTransactionId": "uCQpjuJzpPO7BPxV"}, {"amountConsumed": 100, "clientTransactionId": "bJifs0arKxCcNv8F"}], "entitlementId": "QCyQBqKxayGvw7Mq", "usageCount": 83}, {"clientTransaction": [{"amountConsumed": 37, "clientTransactionId": "sypCJmfRnW0spgvj"}, {"amountConsumed": 40, "clientTransactionId": "CShMFlbrRGjoBQ45"}, {"amountConsumed": 1, "clientTransactionId": "10iWT0SILVGXCWRu"}], "entitlementId": "cRpP1Tq7uYXhB6FP", "usageCount": 11}], "purpose": "f6sVpwAAKKqmTy0Z"}, "originalTitleName": "SyJ7IIUXlBlZMQeS", "paymentProductSKU": "nOg5gf1SwrbpmoF4", "purchaseDate": "DvNA1wo9IAxV5C71", "sourceOrderItemId": "gTw8BJPFctwUMCRd", "titleName": "xXOBu3TWmHDVmCGF"}, "eventDomain": "oD7aNFj9wORAVqRu", "eventSource": "NsXxRu4EQqR3KbYW", "eventType": "tFzplXVk36IpbGqu", "eventVersion": 85, "id": "CBoJDxGa1UuSr4eh", "timestamp": "nV8Aw9m6GvDSE2F7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'MockPlayStationStreamEvent' test.out

#- 73 MockXblClawbackEvent
$PYTHON -m $MODULE 'platform-mock-xbl-clawback-event' \
    --body '{"data": {"eventDate": "Ad69Dln4mqFhgKKc", "eventState": "GohdjQUwVdPsArke", "lineItemId": "pfK0DE3IibPSQnph", "orderId": "nvAWBSOr7zljUKyh", "productId": "KkD7wAHMrv8zABDh", "productType": "YAVxvs3ugNvvgI2k", "purchasedDate": "1P9nQxzj3AnmpWfj", "sandboxId": "e5cAtTDvwFHcoODi", "skuId": "5oF1pccdjjZpFnVL", "subscriptionData": {"consumedDurationInDays": 2, "dateTime": "ztnntoxwsNtNxWoH", "durationInDays": 46, "recurrenceId": "H5kesuOtYHLqcdy0"}}, "datacontenttype": "5YrqdFn8sQ7yc8xL", "id": "KyBfGLHEAKhp612Y", "source": "2ncRf7tEGzYqRoHm", "specVersion": "6EtyXqQbKWMJ0aOD", "subject": "iWn6bPmSa85Riu1a", "time": "laVEhjJZbwMHkFWL", "traceparent": "SzmAXAruYrVjX4HR", "type": "Tvm3Qr9IkuW6jjof"}' \
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
    '{"appAppleId": 5, "bundleId": "sSWOV8LyivYbMG9L", "issuerId": "XPbBh2E3wFchP3zT", "keyId": "ymfVfny2M0KsS08c", "password": "Y3fjI1YTT3qUMd0U", "version": "V2"}' \
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
    '{"sandboxId": "3RjVeYSM479gn62l"}' \
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
    '{"applicationName": "izsWGrtIgVPb7hoo", "notificationTokenAudience": "8YkNPW8mWOJGtdXJ", "notificationTokenEmail": "GDsxRAR3NObYp43Y", "packageName": "XMHqWeVjnOURxGvO", "serviceAccountId": "hz9s7ktWkJDaHg6k"}' \
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
    '{"data": [{"itemIdentity": "DVjxhxRxjeDrqCfJ", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"5TU3INkMgjsnP8it": "evmjTJjj5tfFQv38", "4ri6A7z0hsW0IHIY": "vJ7PPgVaFwGhl5zq", "kzEu41hVfVC7eLVW": "Gk0GjYReIZaDC2Au"}}, {"itemIdentity": "2bEpymbJ4dPJmkdv", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"Aw30kOykBuDJ0IPQ": "eAL4MZwEVJe7waGy", "B6g2M5JiwtMOfDfo": "MgU2yFBTPfnmfN5E", "20ORMCVBTrkvObsi": "HQgt7OfL6AcBPjUY"}}, {"itemIdentity": "URB3Rsrc0qvV8Gq1", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"c37aWVjM3iVKjr5V": "DqakKdW767GAH1oi", "S1JuO7MNoFPtRhYY": "IpNqVHbbCVwbitD5", "tWXZVvjYqrEXKUDl": "mtixw9FtBVAWT8Px"}}]}' \
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
    '{"appId": "L8674KYMeN2W2CNq", "appSecret": "mO8JALtCiDuGQQsv"}' \
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
    '{"backOfficeServerClientId": "WV3NSjXUXSMKY09x", "backOfficeServerClientSecret": "4TKOwsyRNnaLNhw0", "enableStreamJob": true, "environment": "jBWzTuXttDREDWbO", "streamName": "M3xQaraaEVt3vsBC", "streamPartnerName": "XpIgQzkWzcBqVcuT"}' \
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
    '{"backOfficeServerClientId": "TrIk6hU0mqdwBJax", "backOfficeServerClientSecret": "1jBd6Yng8ps5XknD", "enableStreamJob": false, "environment": "ZK5gFHyIOnLu9WBA", "streamName": "S0qUswy0AnJZJdKr", "streamPartnerName": "In9hHHGg1cTZsJp1"}' \
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
    '{"appId": "b5yB8c9gCPFDZh6J", "publisherAuthenticationKey": "fJfg4X1dZOTBgYwL"}' \
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
    '{"clientId": "jPGFqkbTL8ifUAMU", "clientSecret": "ekrD0J6iuJsVjhLg", "organizationId": "aFeFJ5QRuvEsU5Qk"}' \
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
    '{"enableClawback": false, "entraAppClientId": "NhddKrrhzwz2PFXC", "entraAppClientSecret": "33KjLNUFQJgCWV7d", "entraTenantId": "j8I5eVnflH2hnMV6", "relyingPartyCert": "Yxtl5DKUhjBy9oWP"}' \
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
    'cMIQc5lRQojhJgpX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GetIAPOrderConsumeDetails' test.out

#- 109 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'VCubdw0sPrgDKqHC' \
    's5GTdTLCxJqK7dgs' \
    'grnpVE1acxZoDXdP' \
    'SUBSCRIPTION' \
    'SusdLumoHh8TQWYk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'DownloadInvoiceDetails' test.out

#- 110 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    '2vD3mUDwtTF1ATVQ' \
    'nAexrRomTZFHX4cg' \
    'tkxEx6tlxks0yGW8' \
    'EXTENSION' \
    'wUxEikRyHC9VWMnz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GenerateInvoiceSummary' test.out

#- 111 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    '{"categoryPath": "buNQNJxCbLEhfrPx", "targetItemId": "IRdbUwkN6Tr6vRne", "targetNamespace": "C9JYmpKyZGtqWw67"}' \
    'LheLDvwZjthGMOB4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'SyncInGameItem' test.out

#- 112 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '{"appId": "HFIzTlGBnpLBd02b", "appType": "GAME", "baseAppId": "j7h3hncU5vgL62RA", "boothName": "2BI7knizQ4Jx8In4", "categoryPath": "w8yRFOLeTQyplscf", "clazz": "sZvvUpCMJRliFCmF", "displayOrder": 59, "entitlementType": "CONSUMABLE", "ext": {"uUxSxI4yyrZIV9M2": {}, "2gRLsc6Jwt190s6y": {}, "FiDZs0wyldbDDnts": {}}, "features": ["K5roG1oZArFJBUmM", "SQ8DEsKT6Mw5xDz8", "asARtI3TVV2QmlqR"], "flexible": true, "images": [{"as": "ZbsppRsBWQ7RdYqZ", "caption": "aQ8swcFOshiWEFDM", "height": 67, "imageUrl": "CjEhtRcnVsYOwypw", "smallImageUrl": "6F21uYowkPNGANjl", "width": 17}, {"as": "hJnsU1m6zryXmvvv", "caption": "PmueVVC0ymY7ABWg", "height": 84, "imageUrl": "VxM4rAqxlnHLAFNE", "smallImageUrl": "wXBsCkfqzKlzlLgH", "width": 86}, {"as": "9vk4HQDiwqJUZHP7", "caption": "HM6JB2P6ZjZh9egg", "height": 43, "imageUrl": "UeFUbaGb5on2kvde", "smallImageUrl": "u5DfAxsrX7OiSRs0", "width": 53}], "inventoryConfig": {"customAttributes": {"UwIv84zQjc88fKtD": {}, "QSbDQN21JlwPxpuU": {}, "Zm1GVuI2Eihx6IJw": {}}, "serverCustomAttributes": {"MzUqM16MYY2MVvo3": {}, "MMCL4aV6oMUzpMms": {}, "vvKTljWspMrC4TeR": {}}, "slotUsed": 93}, "itemIds": ["y3DDSxpWZV6J5Qlo", "YCaB5ImpxpHJCcuq", "JR2TT3HEYBW8Aq2K"], "itemQty": {"VQNFGaJEyBVlQ5iH": 23, "gD6kOUZXQKRTVR95": 71, "gmxOOzP7vteUYzMZ": 52}, "itemType": "MEDIA", "listable": false, "localizations": {"bitEJNHwfW76v6GP": {"description": "VwWjIfhOXemeTgiE", "localExt": {"NbhdRohucoiX0GAQ": {}, "ZEbNr6VtQiKwKuIH": {}, "MjiIjX7Eu0WCXd8G": {}}, "longDescription": "X7ygT5qlBekxw9pO", "title": "3vyRviPljDYddTDw"}, "gc6onXfoDvjI9jfJ": {"description": "FTHcHvAfosnCXqJp", "localExt": {"lcwaBHILlCC7ovjE": {}, "bjKrZ2d6IbWTfPpl": {}, "Y43FQpfFWm8VMHjC": {}}, "longDescription": "8qrxvZsJd3RBYL4P", "title": "AqdviBvToSQ7EqHU"}, "hHn1qP3G2kSIurSO": {"description": "WI2donULQokdCSsp", "localExt": {"87x6Jfe5YAYJeb1G": {}, "UdtB5G8NITA0g58c": {}, "qZn79u2grirdqELb": {}}, "longDescription": "dqXaPlAMGm4h3PbL", "title": "HDa7uqaaxqXPKuNA"}}, "lootBoxConfig": {"rewardCount": 9, "rewards": [{"lootBoxItems": [{"count": 91, "duration": 75, "endDate": "1993-10-20T00:00:00Z", "itemId": "6PyDb3vKbCw9eAGm", "itemSku": "M6lPAJMizukBmcy1", "itemType": "kbAWDUac65Jdlm1J"}, {"count": 73, "duration": 23, "endDate": "1982-04-11T00:00:00Z", "itemId": "MfF3iAQb4Iiy26m5", "itemSku": "1AwCv4UKmP7eczfn", "itemType": "YgOqXhJZ6DIokID1"}, {"count": 64, "duration": 69, "endDate": "1976-03-29T00:00:00Z", "itemId": "9fRCHfId0Dhnin8R", "itemSku": "xnO0qs4FykFXDdcU", "itemType": "uEE9wh4CEOrPY29A"}], "name": "1L1Xijb7GTIFWcZW", "odds": 0.5894730545708318, "type": "PROBABILITY_GROUP", "weight": 24}, {"lootBoxItems": [{"count": 67, "duration": 68, "endDate": "1993-09-24T00:00:00Z", "itemId": "yrFazP5g67zq7XCH", "itemSku": "kJzmy6DtxvO3nUiV", "itemType": "M7UfbH7Qv0Eyy6G3"}, {"count": 27, "duration": 86, "endDate": "1990-10-16T00:00:00Z", "itemId": "Sb2WXmcXtuUYtYkP", "itemSku": "AHldms0Nwlx85unv", "itemType": "bUiBJfyM9bc1hgFv"}, {"count": 76, "duration": 66, "endDate": "1991-02-23T00:00:00Z", "itemId": "2erV4ccUhiQnHGDN", "itemSku": "Xw2L4mp580sUSlEf", "itemType": "C6ckbV2y32kG5QTZ"}], "name": "npxYa2jDp3LzelXa", "odds": 0.7501659188920303, "type": "REWARD", "weight": 67}, {"lootBoxItems": [{"count": 6, "duration": 53, "endDate": "1978-10-30T00:00:00Z", "itemId": "zlwFNJyyLozi8eBq", "itemSku": "PD6pfcv9jGr7b2hH", "itemType": "baUEtBnsggbEVNmy"}, {"count": 25, "duration": 96, "endDate": "1985-11-22T00:00:00Z", "itemId": "3PzOITmqjrcuIH9i", "itemSku": "4ICwRHM518oPa2gl", "itemType": "j6rHbkWMDSiPRcEy"}, {"count": 11, "duration": 49, "endDate": "1971-07-29T00:00:00Z", "itemId": "UswXLyVVZqZpYAdy", "itemSku": "PafGBlwnYRpUkTKj", "itemType": "XxvgslvMllaEVugb"}], "name": "CEifQCe5eN88Z7U1", "odds": 0.07648171587043007, "type": "PROBABILITY_GROUP", "weight": 58}], "rollFunction": "DEFAULT"}, "maxCount": 89, "maxCountPerUser": 69, "name": "PQ1hSmShNaSmVFsm", "optionBoxConfig": {"boxItems": [{"count": 65, "duration": 59, "endDate": "1996-07-11T00:00:00Z", "itemId": "74DkabvmYAT6qTg6", "itemSku": "ZOaTNC1LAentTXWy", "itemType": "Bmb2Ir2yOaVvE1N5"}, {"count": 24, "duration": 85, "endDate": "1985-07-04T00:00:00Z", "itemId": "NHH08vEf2WSsLchL", "itemSku": "BElch9a9Knc6glMj", "itemType": "wg8OWAT7d65hchXz"}, {"count": 66, "duration": 28, "endDate": "1999-12-15T00:00:00Z", "itemId": "ffz0lXBDbBGrYGle", "itemSku": "amVgjm0xqJhfraXw", "itemType": "zn0bbNK5rhgy51k1"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 13, "fixedTrialCycles": 54, "graceDays": 97}, "regionData": {"8QCEx41nhN2NMDXE": [{"currencyCode": "Hz2uROYqy72xPhtI", "currencyNamespace": "M8Rw0xHZOUW3jlXY", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1994-12-29T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1992-10-03T00:00:00Z", "expireAt": "1981-01-24T00:00:00Z", "price": 95, "purchaseAt": "1983-02-22T00:00:00Z", "trialPrice": 0}, {"currencyCode": "W2ZMVJhOyVaO1sgn", "currencyNamespace": "JF31EULHtVtkZrE0", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1980-09-07T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1971-02-19T00:00:00Z", "expireAt": "1997-01-16T00:00:00Z", "price": 67, "purchaseAt": "1982-07-08T00:00:00Z", "trialPrice": 35}, {"currencyCode": "nPROvD1FiqEUhsD6", "currencyNamespace": "QxKzbZ7xvbLKNa3O", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1980-09-13T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1982-05-24T00:00:00Z", "expireAt": "1997-12-13T00:00:00Z", "price": 92, "purchaseAt": "1977-05-16T00:00:00Z", "trialPrice": 14}], "2OFLws9RV6lY9IGs": [{"currencyCode": "ZjUsSUE7NuCYEOWN", "currencyNamespace": "kgUfe6pVMS5m8aRI", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1982-05-17T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1975-08-21T00:00:00Z", "expireAt": "1979-11-24T00:00:00Z", "price": 95, "purchaseAt": "1984-07-03T00:00:00Z", "trialPrice": 75}, {"currencyCode": "wraCDr326Q66cxtj", "currencyNamespace": "NTXsCsfA2pIWzC6n", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1994-01-01T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1982-05-26T00:00:00Z", "expireAt": "1996-05-25T00:00:00Z", "price": 40, "purchaseAt": "1993-06-06T00:00:00Z", "trialPrice": 5}, {"currencyCode": "llsH39PXWtk222GY", "currencyNamespace": "7L58lP7drhfBjZFg", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1987-09-14T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1994-02-08T00:00:00Z", "expireAt": "1979-03-06T00:00:00Z", "price": 50, "purchaseAt": "1979-01-28T00:00:00Z", "trialPrice": 93}], "zpP7Rk1qbFWhtwNa": [{"currencyCode": "VCqf0vP284yQAbud", "currencyNamespace": "R95sQ1FygQvoX9pE", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1976-06-14T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1993-01-21T00:00:00Z", "expireAt": "1987-10-12T00:00:00Z", "price": 19, "purchaseAt": "1979-08-23T00:00:00Z", "trialPrice": 48}, {"currencyCode": "ShSTNyM9yuMOFavg", "currencyNamespace": "MWyxizWKQdVExukc", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1983-06-12T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1976-03-03T00:00:00Z", "expireAt": "1992-10-25T00:00:00Z", "price": 62, "purchaseAt": "1990-08-07T00:00:00Z", "trialPrice": 25}, {"currencyCode": "RjqJSWImXvaLXkvZ", "currencyNamespace": "vwk0v0OKy45dqId3", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1996-04-08T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1981-08-04T00:00:00Z", "expireAt": "1976-04-12T00:00:00Z", "price": 93, "purchaseAt": "1971-09-04T00:00:00Z", "trialPrice": 53}]}, "saleConfig": {"currencyCode": "jrn0iZsIfqeLfl0w", "price": 0}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "x4istsfrFqHu6f54", "stackable": false, "status": "ACTIVE", "tags": ["78A4NUDAdwt7cj6v", "ZIrjnjuCHkx8hm21", "4hAfiqX3ThREYknd"], "targetCurrencyCode": "5DLEk9RkumkrnY4L", "targetNamespace": "ksFD2le3UGhQnnmM", "thumbnailUrl": "gk0WYv2NTpSejfbY", "useCount": 28}' \
    '9YaLVuL1mLP65pId' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'CreateItem' test.out

#- 113 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    '36F25c13PNqPn7XR' \
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
    'lnqiWP9WWQMGmm0b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetItems' test.out

#- 117 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'iVjE8A3EsOz8LDnx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'GetItemBySku' test.out

#- 118 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'gL0t7Qhdw4vmSxnJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'GetLocaleItemBySku' test.out

#- 119 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'cyaijSCsFa6ipRu1' \
    'AaFjz0yLelzMzWiP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetEstimatedPrice' test.out

#- 120 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'zugdDu6rxIv2ZMtZ' \
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
    'X5KZK53tX2oxmEDD' \
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
    '{"itemIds": ["gGBgPWHmOLBLlsw2", "pDJDLeJwzbVEEQ0D", "6RcLpRxXCStzvOyY"]}' \
    '1tNKAVWv5cGRm3WT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'ValidateItemPurchaseCondition' test.out

#- 125 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'x0oyOrycewrnLBAZ' \
    --body '{"changes": [{"itemIdentities": ["lvnOJeNxZdT1fZJT", "utZpZZn6egDbFDXW", "3N42ccGURTnJUdR3"], "itemIdentityType": "ITEM_SKU", "regionData": {"nEeANANjqBdfMMU8": [{"currencyCode": "9e6CIBWn2Q3kMtF5", "currencyNamespace": "tiwPCAxM9oFcQUp7", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1979-10-12T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1995-10-22T00:00:00Z", "discountedPrice": 0, "expireAt": "1995-03-17T00:00:00Z", "price": 81, "purchaseAt": "1997-01-23T00:00:00Z", "trialPrice": 93}, {"currencyCode": "Grr2TTTiTt8oRoQR", "currencyNamespace": "f0A1eAJUZSjWUPA9", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1996-06-15T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1977-05-15T00:00:00Z", "discountedPrice": 85, "expireAt": "1990-07-13T00:00:00Z", "price": 49, "purchaseAt": "1995-06-25T00:00:00Z", "trialPrice": 59}, {"currencyCode": "WyQvciFGxJNOaveG", "currencyNamespace": "zkTPehZVmZi1UYM7", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1984-07-25T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1971-08-11T00:00:00Z", "discountedPrice": 9, "expireAt": "1998-11-27T00:00:00Z", "price": 44, "purchaseAt": "1985-07-21T00:00:00Z", "trialPrice": 47}], "iGkJR30lAinKfKXq": [{"currencyCode": "YE8GuKFRwAkAyYY8", "currencyNamespace": "hSNUTpzSm7jdrPdk", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1998-07-16T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1976-12-15T00:00:00Z", "discountedPrice": 35, "expireAt": "1972-10-15T00:00:00Z", "price": 67, "purchaseAt": "1977-08-30T00:00:00Z", "trialPrice": 31}, {"currencyCode": "x3DmUahjPVDOEmwp", "currencyNamespace": "WiJYxvvQCHIreoYD", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1991-05-15T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1972-06-13T00:00:00Z", "discountedPrice": 89, "expireAt": "1991-07-19T00:00:00Z", "price": 0, "purchaseAt": "1983-09-15T00:00:00Z", "trialPrice": 6}, {"currencyCode": "O3ABy1AeDryAFewc", "currencyNamespace": "N6U8vRJ3ebbfa3ep", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1989-10-21T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1993-03-31T00:00:00Z", "discountedPrice": 68, "expireAt": "1971-06-23T00:00:00Z", "price": 21, "purchaseAt": "1998-11-09T00:00:00Z", "trialPrice": 64}], "BVMu418S3o2DKmAp": [{"currencyCode": "8kt8156L7Wl7UfG3", "currencyNamespace": "PbsgYDgJ0JRrcPbe", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1987-09-03T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1983-12-30T00:00:00Z", "discountedPrice": 25, "expireAt": "1976-10-20T00:00:00Z", "price": 32, "purchaseAt": "1983-10-16T00:00:00Z", "trialPrice": 80}, {"currencyCode": "Z6lV9zpsDX7CWEoH", "currencyNamespace": "K3yLZSpydGfNnNFM", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1979-08-07T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1973-12-11T00:00:00Z", "discountedPrice": 11, "expireAt": "1976-08-15T00:00:00Z", "price": 5, "purchaseAt": "1987-01-01T00:00:00Z", "trialPrice": 41}, {"currencyCode": "tiF7mi3iOrnB83a6", "currencyNamespace": "h6dNfg9f25YsZ1L6", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1998-09-30T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1981-11-18T00:00:00Z", "discountedPrice": 83, "expireAt": "1981-01-24T00:00:00Z", "price": 42, "purchaseAt": "1977-07-24T00:00:00Z", "trialPrice": 40}]}}, {"itemIdentities": ["7qa1StMbwcUsu3gJ", "0yHA6KDH87AmGMvC", "huhxZJsDNCQEtOnY"], "itemIdentityType": "ITEM_SKU", "regionData": {"j4OhaAiWk4TKx1WR": [{"currencyCode": "jiCokzg7q7bMwxVA", "currencyNamespace": "ujRx0pyulY8igLWA", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1995-04-22T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1996-04-17T00:00:00Z", "discountedPrice": 51, "expireAt": "1990-10-05T00:00:00Z", "price": 94, "purchaseAt": "1991-11-20T00:00:00Z", "trialPrice": 9}, {"currencyCode": "BEI4eB0PHoEfIdFP", "currencyNamespace": "0QarAdoCQoVI26D2", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1980-10-17T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1980-12-09T00:00:00Z", "discountedPrice": 90, "expireAt": "1997-11-17T00:00:00Z", "price": 13, "purchaseAt": "1977-06-22T00:00:00Z", "trialPrice": 59}, {"currencyCode": "PnAlN2mJeW1LQJ8A", "currencyNamespace": "7NZLQPAny29oO2B8", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1980-02-13T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1984-08-07T00:00:00Z", "discountedPrice": 5, "expireAt": "1986-08-14T00:00:00Z", "price": 64, "purchaseAt": "1990-12-09T00:00:00Z", "trialPrice": 7}], "5pfl1N2CNDu3DpGX": [{"currencyCode": "JrOgVnrneQPU35uu", "currencyNamespace": "CoR3Wc6j3UqRICnm", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1978-09-11T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1984-06-21T00:00:00Z", "discountedPrice": 65, "expireAt": "1973-03-09T00:00:00Z", "price": 31, "purchaseAt": "1993-06-20T00:00:00Z", "trialPrice": 84}, {"currencyCode": "gW3Vmnz3WsgPS6R3", "currencyNamespace": "Uev7bCsylPZDz1fi", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1972-10-20T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1996-02-03T00:00:00Z", "discountedPrice": 97, "expireAt": "1977-05-17T00:00:00Z", "price": 72, "purchaseAt": "1975-04-21T00:00:00Z", "trialPrice": 55}, {"currencyCode": "DP7o0Aeler4oEJEm", "currencyNamespace": "HHU4T74NkroVwJFR", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1974-04-21T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1980-05-23T00:00:00Z", "discountedPrice": 92, "expireAt": "1999-07-12T00:00:00Z", "price": 74, "purchaseAt": "1989-03-05T00:00:00Z", "trialPrice": 16}], "NweUidBVB2vTyC48": [{"currencyCode": "2FeT76mWyDrmG0FH", "currencyNamespace": "QOjtRg7ST2UVRJN0", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1987-04-12T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1988-12-30T00:00:00Z", "discountedPrice": 13, "expireAt": "1987-11-29T00:00:00Z", "price": 61, "purchaseAt": "1993-03-05T00:00:00Z", "trialPrice": 21}, {"currencyCode": "DmatCvCembJFNyIw", "currencyNamespace": "xPt19hjyI7ALyZHQ", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1995-11-23T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1976-02-09T00:00:00Z", "discountedPrice": 69, "expireAt": "1975-05-26T00:00:00Z", "price": 40, "purchaseAt": "1979-07-24T00:00:00Z", "trialPrice": 79}, {"currencyCode": "BElA4m1Ywb6nMhhS", "currencyNamespace": "CXGzZMdNwUYOkFXn", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1982-07-13T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1984-06-17T00:00:00Z", "discountedPrice": 83, "expireAt": "1982-09-22T00:00:00Z", "price": 81, "purchaseAt": "1974-08-29T00:00:00Z", "trialPrice": 77}]}}, {"itemIdentities": ["3dJ4hbxnIuxtrWKv", "mz0RzwVRhRmllqqW", "YgDWbrtw6qiRU6n8"], "itemIdentityType": "ITEM_SKU", "regionData": {"1kpSeRooa84wgi9Q": [{"currencyCode": "jy4LtkYsyCJFj0ay", "currencyNamespace": "zojVNIrqZCtbJmJS", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1974-12-02T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1992-03-04T00:00:00Z", "discountedPrice": 84, "expireAt": "1988-11-05T00:00:00Z", "price": 58, "purchaseAt": "1987-07-18T00:00:00Z", "trialPrice": 87}, {"currencyCode": "o70kyuutjjQDfdr0", "currencyNamespace": "GXMgSK5Yx6dbDNBB", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1997-03-05T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1996-12-03T00:00:00Z", "discountedPrice": 46, "expireAt": "1998-05-11T00:00:00Z", "price": 49, "purchaseAt": "1977-12-17T00:00:00Z", "trialPrice": 83}, {"currencyCode": "ygVqAioKka1tx56A", "currencyNamespace": "wxAJU0XOoXFpKZ7s", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1992-11-02T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1974-03-02T00:00:00Z", "discountedPrice": 71, "expireAt": "1994-08-27T00:00:00Z", "price": 38, "purchaseAt": "1988-05-12T00:00:00Z", "trialPrice": 7}], "jfua9x08SJmn2gM2": [{"currencyCode": "q6wuaHlnk9AFkbwV", "currencyNamespace": "a7DCVegPEDDuHxwE", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1992-03-30T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1971-02-15T00:00:00Z", "discountedPrice": 47, "expireAt": "1977-03-17T00:00:00Z", "price": 42, "purchaseAt": "1977-11-14T00:00:00Z", "trialPrice": 31}, {"currencyCode": "fDJxP4S8TNhXBTiw", "currencyNamespace": "S2sBodn1p1MJrZv1", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1981-05-06T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1977-12-09T00:00:00Z", "discountedPrice": 87, "expireAt": "1993-08-03T00:00:00Z", "price": 3, "purchaseAt": "1992-06-08T00:00:00Z", "trialPrice": 88}, {"currencyCode": "gUMFAcxhrY80cxjA", "currencyNamespace": "XFOLYQX2ryH4oq6f", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1975-07-17T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1984-01-04T00:00:00Z", "discountedPrice": 57, "expireAt": "1980-07-07T00:00:00Z", "price": 96, "purchaseAt": "1995-10-25T00:00:00Z", "trialPrice": 98}], "zJldpqtAlzVR0Wqk": [{"currencyCode": "bKYSr7IVc2WJyX67", "currencyNamespace": "v7JTcrppNGl78VMG", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1990-09-22T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1999-01-14T00:00:00Z", "discountedPrice": 66, "expireAt": "1974-08-18T00:00:00Z", "price": 54, "purchaseAt": "1996-05-11T00:00:00Z", "trialPrice": 35}, {"currencyCode": "oQkgiht0lsg1U1DE", "currencyNamespace": "xMK4z32P13aQRTMz", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1985-08-25T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1983-06-27T00:00:00Z", "discountedPrice": 7, "expireAt": "1971-12-04T00:00:00Z", "price": 32, "purchaseAt": "1983-10-07T00:00:00Z", "trialPrice": 73}, {"currencyCode": "wGdLKPo5zR4q58Tk", "currencyNamespace": "a2qLo5spq850ZKnX", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1971-07-27T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1972-09-23T00:00:00Z", "discountedPrice": 1, "expireAt": "1973-09-09T00:00:00Z", "price": 88, "purchaseAt": "1976-06-24T00:00:00Z", "trialPrice": 24}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'BulkUpdateRegionData' test.out

#- 126 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    '0dFMnEcDHueqAKTj' \
    'dRpgYeuitqLYJ7E9' \
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
    'mP2Be9WZ9kuWMnRc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetItem' test.out

#- 129 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    '{"appId": "GzbD5iC34s0kTiXw", "appType": "DEMO", "baseAppId": "jN8E3wXz4Q1L3hAG", "boothName": "9xOOi4DVUYo37I8M", "categoryPath": "gh1DJARpi5KzpbDP", "clazz": "fXdGvodrl6UOwYZJ", "displayOrder": 35, "entitlementType": "DURABLE", "ext": {"OJhzlgtX87XuWOIp": {}, "QwptcvroohLb6q3F": {}, "16PO9YdwqEszRnwV": {}}, "features": ["v8wx2JosSHLipk5N", "ZV9arTxBgnOqH9ly", "X2rvVr6DpLOyrgsL"], "flexible": true, "images": [{"as": "e79zCfL2ar4zJmB2", "caption": "wifDA7LpND5zXLhr", "height": 25, "imageUrl": "yo0u2hT9UYbm2BWj", "smallImageUrl": "zlqIA8csXOpDTl6y", "width": 71}, {"as": "uDibBIH1dyZPHtYH", "caption": "Kqpl1Xk1CdFvYqfo", "height": 21, "imageUrl": "zBc16XXXuoJGXCyz", "smallImageUrl": "A8a5uh1LdVOaWOjR", "width": 16}, {"as": "BnYPNYKWhYLsAlPZ", "caption": "s4v14XFGIVeBHRe7", "height": 73, "imageUrl": "DlAEyVuvyXITMn2F", "smallImageUrl": "86xZRHxnOP02x00S", "width": 43}], "inventoryConfig": {"customAttributes": {"zUY6EuVZznqQVYO5": {}, "728Ri3CuA2GelFQy": {}, "uDWvfe4Hp9aCLekZ": {}}, "serverCustomAttributes": {"ch7a3b0hFYqZQAUm": {}, "9m9ht4JsrC6ho0XS": {}, "sR3HPQNrtkf3M9oI": {}}, "slotUsed": 20}, "itemIds": ["ymYms9fuih2WMLld", "oxYLZHiFEo5sDrk8", "BZ0jnV4jAAxGZ794"], "itemQty": {"ngDQya3dvyjxR120": 52, "KoPXxLMtU6hLliy7": 9, "87gQx9kL8a1tEpNG": 1}, "itemType": "COINS", "listable": false, "localizations": {"paGFJniJl9RPULWp": {"description": "Ww5UQBldfnMF2X9w", "localExt": {"bQz3euR4MhLQs8Xl": {}, "iOoWqixFdv5aDRSn": {}, "CrIQ2kChyafmo2nI": {}}, "longDescription": "Kr9krylalbZWuO0O", "title": "VwGUgR3PEWI0N4k2"}, "W2caqaRVdR05rSil": {"description": "F29Lpg0zAUzpliq5", "localExt": {"0demc4rS3d2v2ibO": {}, "04gNmB9r9MA5lA6x": {}, "0lY16PWsrsxYq77i": {}}, "longDescription": "FOu0ybeoERsKMCPm", "title": "tnE1aHAuVZKYNaKh"}, "i81nO4RNjvO8rZ5N": {"description": "L7EbburWcSjdGGqd", "localExt": {"31L6KqJTL11T4vlB": {}, "RDjj3FKvRIguqDEJ": {}, "fdxsQXLRJRONKh0R": {}}, "longDescription": "0RXJ6anzAeqD1Hlh", "title": "Q1rqjRECHyhLYGnv"}}, "lootBoxConfig": {"rewardCount": 62, "rewards": [{"lootBoxItems": [{"count": 71, "duration": 7, "endDate": "1984-08-21T00:00:00Z", "itemId": "x4VA9ZxbKQDqG7UJ", "itemSku": "EMeseC0hnoI1dph0", "itemType": "xgVXvWuSKhoOQClj"}, {"count": 29, "duration": 50, "endDate": "1976-11-30T00:00:00Z", "itemId": "p9rrR7RJbkDwkEjO", "itemSku": "WWCzn2paEvjRIcSa", "itemType": "260P2hpjhYQEdyLR"}, {"count": 100, "duration": 9, "endDate": "1978-06-11T00:00:00Z", "itemId": "uFIdlTuousRcrhXN", "itemSku": "Ah3Cu4ou029lD9VL", "itemType": "XNwkZWTbX0PZb0I9"}], "name": "Qm4xKek7ZAZJCk1f", "odds": 0.13397265996121144, "type": "REWARD", "weight": 35}, {"lootBoxItems": [{"count": 90, "duration": 62, "endDate": "1989-01-21T00:00:00Z", "itemId": "y5JoIlHjTZ4mDmXZ", "itemSku": "IBTi05akxBYozWzU", "itemType": "W4RDVM8Y4PcXDH8R"}, {"count": 63, "duration": 34, "endDate": "1988-03-14T00:00:00Z", "itemId": "1znti03vAJizEosj", "itemSku": "uIsTXKAQ4uWLCMgN", "itemType": "7rU1yiWEODovRwzU"}, {"count": 24, "duration": 87, "endDate": "1980-03-07T00:00:00Z", "itemId": "Gde7x4luTsEk9TNq", "itemSku": "SiFJyMByoRKUrvfi", "itemType": "xr7UFzLzGaWok215"}], "name": "MnSNTPMRaYf8Chh5", "odds": 0.3172811298580245, "type": "PROBABILITY_GROUP", "weight": 17}, {"lootBoxItems": [{"count": 77, "duration": 29, "endDate": "1980-07-21T00:00:00Z", "itemId": "XIOSE2JSDRlSX5uO", "itemSku": "gZ3Msm86Jr35oZQ3", "itemType": "WcFld5DKwJoCrYrl"}, {"count": 83, "duration": 64, "endDate": "1996-05-04T00:00:00Z", "itemId": "N7MoQZDN1sjuHXDU", "itemSku": "9ZFHISuKMr6e9VKi", "itemType": "3lHZdnYzFYEnOA6g"}, {"count": 65, "duration": 33, "endDate": "1992-10-22T00:00:00Z", "itemId": "3zfSvvmLgxlU5MdU", "itemSku": "dF7gHdIf6eMd0iVU", "itemType": "mBrFwFIESxo8uFqK"}], "name": "toZiVPtwECFgcQRs", "odds": 0.26130486060784164, "type": "REWARD", "weight": 65}], "rollFunction": "DEFAULT"}, "maxCount": 41, "maxCountPerUser": 19, "name": "xbpKYKp18TPWOixb", "optionBoxConfig": {"boxItems": [{"count": 94, "duration": 8, "endDate": "1990-03-29T00:00:00Z", "itemId": "fdOF3VtCUZ0wN81C", "itemSku": "LC324P82gdsOb5Jp", "itemType": "6oxvvtB4aireJSZc"}, {"count": 18, "duration": 58, "endDate": "1989-04-30T00:00:00Z", "itemId": "hrrrStCg99ejNACA", "itemSku": "FAJlcWkS5jnhMZsQ", "itemType": "8CVsHXHYBx7KkpRA"}, {"count": 0, "duration": 22, "endDate": "1975-06-01T00:00:00Z", "itemId": "vn5yFNSoKf7tdmVp", "itemSku": "puu6acpUdn8X5IZj", "itemType": "tFT6Bs8OO0CVqXF6"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 56, "fixedTrialCycles": 89, "graceDays": 18}, "regionData": {"d2Z2WjutGAptSES0": [{"currencyCode": "9ZcFGPCokMwrtVvG", "currencyNamespace": "hHzNdHMJys9gtFxW", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1981-08-01T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1997-08-25T00:00:00Z", "expireAt": "1976-12-18T00:00:00Z", "price": 6, "purchaseAt": "1980-02-26T00:00:00Z", "trialPrice": 18}, {"currencyCode": "nXc87G37jhABEz5T", "currencyNamespace": "57ICJiWEPnZsQ3Ns", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1985-02-22T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1990-07-26T00:00:00Z", "expireAt": "1986-06-23T00:00:00Z", "price": 16, "purchaseAt": "1981-09-23T00:00:00Z", "trialPrice": 20}, {"currencyCode": "rQVQ3yKCwV9chX3e", "currencyNamespace": "vM1seGH9ZwZcLnJP", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1982-02-02T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1973-11-19T00:00:00Z", "expireAt": "1978-05-24T00:00:00Z", "price": 0, "purchaseAt": "1983-05-30T00:00:00Z", "trialPrice": 19}], "Ep4sIwslUQociDSN": [{"currencyCode": "S6hf28TvyyZjEMbP", "currencyNamespace": "RNKUABS8cyK8SnSv", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1995-03-04T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1972-11-09T00:00:00Z", "expireAt": "1980-05-14T00:00:00Z", "price": 43, "purchaseAt": "1997-04-23T00:00:00Z", "trialPrice": 72}, {"currencyCode": "F2EgsoZSKOzQIDAf", "currencyNamespace": "44vyeNIfF5Ri6ydo", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1980-08-10T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1987-09-02T00:00:00Z", "expireAt": "1979-11-18T00:00:00Z", "price": 48, "purchaseAt": "1988-01-15T00:00:00Z", "trialPrice": 94}, {"currencyCode": "86TKj3grgVdqSpg9", "currencyNamespace": "xpXCh79kxpJyTba2", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1993-07-21T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1990-12-05T00:00:00Z", "expireAt": "1992-07-21T00:00:00Z", "price": 100, "purchaseAt": "1985-03-02T00:00:00Z", "trialPrice": 12}], "ZP4mdsjnGGtbn27L": [{"currencyCode": "OqX7FWHHlsxNkfgF", "currencyNamespace": "88XOEWI4jARIQkIi", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1976-04-16T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1974-03-21T00:00:00Z", "expireAt": "1983-07-21T00:00:00Z", "price": 90, "purchaseAt": "1973-05-20T00:00:00Z", "trialPrice": 8}, {"currencyCode": "F9usH1ByGD8DDRW0", "currencyNamespace": "KNwlKcveutOHZ2aW", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1984-06-01T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1995-07-28T00:00:00Z", "expireAt": "1993-09-20T00:00:00Z", "price": 31, "purchaseAt": "1972-11-13T00:00:00Z", "trialPrice": 32}, {"currencyCode": "wy6qt1KRlDGxhO1Y", "currencyNamespace": "bPoWmG714ZA04yxG", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1990-01-14T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1997-09-14T00:00:00Z", "expireAt": "1983-01-21T00:00:00Z", "price": 36, "purchaseAt": "1977-04-29T00:00:00Z", "trialPrice": 82}]}, "saleConfig": {"currencyCode": "mMVFEaTLz3hmDX1C", "price": 94}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "M8SS73LrEja3XlbC", "stackable": false, "status": "INACTIVE", "tags": ["NRQX4T37n6lgMV9t", "LyDyLTQxmA6nDD3E", "FfeJdwskeVjYAe1C"], "targetCurrencyCode": "MXN2kDg7INFTJO4F", "targetNamespace": "UT152zR0PBTEvM3T", "thumbnailUrl": "gMsAS5t3TYXNAGl1", "useCount": 49}' \
    'fLq1zWLmtFhefMqf' \
    'bE0DZBwK4s4YGhc9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'UpdateItem' test.out

#- 130 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'qjsGzedPNuJ4GH00' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'DeleteItem' test.out

#- 131 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '{"count": 11, "orderNo": "y8DGO7yuqGFaSZmL"}' \
    'nl13NthHP0LDshHS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AcquireItem' test.out

#- 132 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'WtyrOFmeGGIRRLbs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetApp' test.out

#- 133 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '{"carousel": [{"alt": "mgDO0TIQbgg12LHW", "previewUrl": "qVdQIiLCN04Qo69t", "thumbnailUrl": "jPCe7O061ScAQ7gS", "type": "image", "url": "3GHo6ESwn8otu3o1", "videoSource": "vimeo"}, {"alt": "6XIxh1HqBg5FhY2v", "previewUrl": "clqnTbyZ7fYvmiZx", "thumbnailUrl": "dNpmibPCLiJaHXEy", "type": "video", "url": "3RD8Q6YcgyTtSOU4", "videoSource": "youtube"}, {"alt": "P3013gsIOArelbYw", "previewUrl": "YTtGsRNij1bUAIrK", "thumbnailUrl": "Yw673JvA3stZ6FN0", "type": "image", "url": "oe9uJ8PAnT6lHom6", "videoSource": "youtube"}], "developer": "8FKACMfaESKKo0RB", "forumUrl": "tKDj9PgWnODMMswu", "genres": ["Indie", "RPG", "RPG"], "localizations": {"c8YuKlQjnj5QjrVi": {"announcement": "62ITQp6NklXSUYkH", "slogan": "NYqepadIS0zRgire"}, "2ntrz0FUDXjV0Gmc": {"announcement": "FSjmJGQU5YRHjMz3", "slogan": "bo23SF3XkwdkgeNE"}, "7pA2BmAcotg9A9Vv": {"announcement": "bcAi4ZmdXz2NXfbC", "slogan": "ObijIWdRSDSq6oIY"}}, "platformRequirements": {"8wqc2OcvjggLVwAQ": [{"additionals": "MWoB0LkwHKKIT2D8", "directXVersion": "YJKnP2TmDSwAt1UG", "diskSpace": "NieMe0c6eA8xCvVN", "graphics": "gS0wUvETmRwwaH21", "label": "xuey3fB1KN5EzSmB", "osVersion": "6aO1JqypofIkM1Wv", "processor": "c2CcOra4RXenU5na", "ram": "N6UuNARNfA4hpoNU", "soundCard": "AwafK1QxxK2sBBkQ"}, {"additionals": "z8nIgoYpZYIYto2c", "directXVersion": "pXUnj1kXAEnU9Cvp", "diskSpace": "IjJ6tB2fqN6D76ap", "graphics": "W4CsuQx2nME1E8lG", "label": "IgW2AWqhlJfHgWSA", "osVersion": "jBmziLkAEWkqMo2u", "processor": "v4G0hb2TC5zbxqSM", "ram": "Qf3ZXRgmEXKPavNU", "soundCard": "DslWRgXzKcDEz6iv"}, {"additionals": "QvlpRKagGd8OJWfX", "directXVersion": "gBkof2DgN1OHBaKI", "diskSpace": "f5hoyD0oT4csEU6r", "graphics": "wlyAZXRltXTRz9Wt", "label": "MMb9e3S9biXun5fD", "osVersion": "0BBCts02Kgz1gL82", "processor": "ANle3vQP0F7CVBRF", "ram": "OlmRZZrSiE7meOUB", "soundCard": "b0ZMyPVBowpLOlv3"}], "wNvAi5e5Cp2Id8Pq": [{"additionals": "gbZMgBinMuWrJOAv", "directXVersion": "HxG7UhRxqteme7V0", "diskSpace": "mE4XANjqP7L1mgHD", "graphics": "q7oo2SQp9UXJYEGG", "label": "pt55fVsBfrc4OJ06", "osVersion": "MAINAypeu3ZwgLF3", "processor": "XSMYkGVjcYe2wwru", "ram": "Eu9pKFWxMrOrO7m2", "soundCard": "fUVM4vgvN5a9nlua"}, {"additionals": "2qF5WhoaEpbMKCe8", "directXVersion": "F6OE3PKy2vHH6XrT", "diskSpace": "j3i1nC0J9A8DUtbT", "graphics": "9Nimqnzt0awizcaX", "label": "FFkKf2QcbDNp9wVg", "osVersion": "loPqugy2zhY3CjOq", "processor": "LPkNLoeCULsEptE9", "ram": "wdsebmIkQbE3nPbd", "soundCard": "7YNYQJL8jGfdMvM0"}, {"additionals": "zEHmThs6Oydk9jSS", "directXVersion": "Y0aqjjeExTo07XGD", "diskSpace": "7r4dvtuyipF1FB9R", "graphics": "NF3G6sPweMmOIXU6", "label": "IcFkTWMTXNI4WIT2", "osVersion": "qYutqii44IKSSMR4", "processor": "zJKYxouzcD0pPXkd", "ram": "TrLYN48A5DLkL19t", "soundCard": "Xrv2bC14hfBeKISP"}], "0coyLHG52kcFEHKN": [{"additionals": "66TOzJSyl83HhHTD", "directXVersion": "HO8mQoGOS84jEVRG", "diskSpace": "n0aQHrmMgGX6WiX9", "graphics": "WPUEwP8KagnEKkfR", "label": "nTAD7nNuqrknaj1F", "osVersion": "ks8OhmWshFK5hyfw", "processor": "qkxFeK2HSaUyXEOQ", "ram": "UwXDX8MGlijaR3VV", "soundCard": "k7nD09WBTm7Hy1Av"}, {"additionals": "jH8TO5OIzshGgQ4T", "directXVersion": "hugQFOWwlpo3MnSM", "diskSpace": "NdjVtLt8CrUFIkcZ", "graphics": "k3UEaPstaXtLCGf6", "label": "Pjb7W28XF9eX2LXw", "osVersion": "aZwDM1CYDLmaPDEU", "processor": "bDvBUnl1NO7rLa2X", "ram": "TR4IEvU0JE2kLOQb", "soundCard": "2CBEoV5Nm182ykfY"}, {"additionals": "01GcykfqRyXIVnis", "directXVersion": "4SKjpYMZV5AVm0vO", "diskSpace": "Tpy2xyajHMUnKflm", "graphics": "cC3pOWLT8ckEy2SM", "label": "QcmxebThGYrgNOim", "osVersion": "VrZzkyKHvwa7cbRj", "processor": "2at5ZJSh02srNNRw", "ram": "3Y1j6viZbWeu0WyH", "soundCard": "Cl9Xs4E416s1Oq4B"}]}, "platforms": ["Android", "Android", "Android"], "players": ["CrossPlatformMulti", "Coop", "Multi"], "primaryGenre": "Strategy", "publisher": "Ac8PGncBz3SqYUIQ", "releaseDate": "1978-07-04T00:00:00Z", "websiteUrl": "R3ub0i4catfNOlhl"}' \
    'YHQh4VgYhBaVDBRl' \
    'LxoAzljrhdaWNQoe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'UpdateApp' test.out

#- 134 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'so9mKjTRboTLjWe4' \
    'LfJee5PI5dFv5buh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'DisableItem' test.out

#- 135 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'IZ4eMnCDQFCYcyYC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'GetItemDynamicData' test.out

#- 136 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'i2g6s9FQKCfcu923' \
    'YpsdjtVRUIv3uIM3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'EnableItem' test.out

#- 137 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'CoS6JahcK1Pr6BT8' \
    'bcW21yKVRUAUf5le' \
    'bfPenWUEBZC8keF5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'FeatureItem' test.out

#- 138 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'vI1QiMb8GRzCETFW' \
    'SfJvAnpvMcDHwA9m' \
    'w8ujZZQUNi4NDzBP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'DefeatureItem' test.out

#- 139 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    '7mmM4ZrXjamc3OX9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'GetLocaleItem' test.out

#- 140 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 14, "code": "jEzscuFPv5tNXWb8", "comparison": "isGreaterThan", "name": "W5QYtGAVQvqyIVad", "predicateType": "SeasonTierPredicate", "value": "udTuIy3VLkd3YGg9", "values": ["4hzPkGOuDvT1kGGv", "Bzi8uluQOBuTuYNR", "spIGcvW7T4dk3MBz"]}, {"anyOf": 11, "code": "gIQdJNm52k6wEP9r", "comparison": "is", "name": "2f4833bcUoBfWLjR", "predicateType": "EntitlementPredicate", "value": "OqaoDBgsPHcNg0Ba", "values": ["Gd9fk7fhp8GNMEX4", "ZfSnIavouuFpqcq4", "pd2WF3ACWSPCOIej"]}, {"anyOf": 85, "code": "RmYw0EwPDL8fEraU", "comparison": "isLessThanOrEqual", "name": "nzcZCIvQUYP4zKaJ", "predicateType": "SeasonTierPredicate", "value": "AZZ2SKo1C0ktvmek", "values": ["dbic6I2n5Hclx6xv", "DJKrDdt60vGd1u3l", "lDEhlvzVBqt9fNnO"]}]}, {"operator": "and", "predicates": [{"anyOf": 73, "code": "kCW4fYJAHmuYyTZt", "comparison": "isNot", "name": "v3mvPolaFeEWrqYB", "predicateType": "SeasonPassPredicate", "value": "hLG74YMs1JCrpnpP", "values": ["PUyyCN4MFXqnFzR6", "C20jVL8heTq0Wmf8", "0d7wzxTtcIyIFNDI"]}, {"anyOf": 88, "code": "HHFFRxJPvHewpv9I", "comparison": "includes", "name": "eAA3xQG5zPNH4eYM", "predicateType": "EntitlementPredicate", "value": "btvk7OoIixOGXwFz", "values": ["XjpSLyjqaJnmx4p5", "ShR3fI6ZeDWbxHSL", "n6kQxqK7yxoQHX7X"]}, {"anyOf": 8, "code": "baNqdGxNGcHil6iU", "comparison": "isLessThanOrEqual", "name": "xf4GH0N4kVmTj683", "predicateType": "EntitlementPredicate", "value": "bw4TKyPTxRuzNfmv", "values": ["WTZF8gP7LgkxhkSS", "XOVUNHtfbgUqbLQ3", "BcfNBFiIw9mkjC9q"]}]}, {"operator": "or", "predicates": [{"anyOf": 96, "code": "9PxPyXJHsWipvZAN", "comparison": "isGreaterThanOrEqual", "name": "p1ILBujZh8S62GO3", "predicateType": "StatisticCodePredicate", "value": "H2Pz5V5CtSrcX7aR", "values": ["jyFT8B6hECr4zqhZ", "P8vZ9a77wOP10Abp", "bjZo2dQM3ZXq9ati"]}, {"anyOf": 63, "code": "lpllwasnryjxylwR", "comparison": "isLessThan", "name": "cy18iHO0dKNHWBFM", "predicateType": "SeasonTierPredicate", "value": "37X9HTu6c4mMUdJo", "values": ["KmyaU7qTgHxGQ4Dm", "2YoSLUIzzQsIU3IZ", "f93pQmmWWhMnRSn6"]}, {"anyOf": 84, "code": "xW72ya2ruQcikSHw", "comparison": "includes", "name": "fyNRUhMXX7FiB3X6", "predicateType": "SeasonTierPredicate", "value": "iuF8pqhqsqRF4kqM", "values": ["2IE43MBCGNyjqnDu", "bz4sxPUl2WbQNFNB", "WD1qiZzXQxSDgH9L"]}]}]}}' \
    '20T6fVxvK30nHMYx' \
    'f8xOR1DEgYR3iOyn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateItemPurchaseCondition' test.out

#- 141 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '{"orderNo": "LLtqSmaHvUExz8o7"}' \
    'TwcWL7fNlyGuj0Ek' \
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
    '{"description": "M7M8G78KZj2jWyKA", "name": "zXYP9kO0rmonOpgt", "status": "INACTIVE", "tags": ["NmMvrDH4IXc6tn8X", "ayBI734jCTSnRqHT", "WC4NCbltixkXwXO0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'CreateKeyGroup' test.out

#- 144 GetKeyGroupByBoothName
eval_tap 0 144 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 145 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'XemKHsUC5w7fmzF8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'GetKeyGroup' test.out

#- 146 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '{"description": "0bbGhU1pjVwMsLdJ", "name": "rt5FnAIz4y9yy462", "status": "INACTIVE", "tags": ["nwchld3LWFhC1kBU", "vsUcnOXhewthszMs", "YOEmQiF1OsXfJG3p"]}' \
    'sjIBzjaFmN0MInvV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateKeyGroup' test.out

#- 147 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'PAPEovHVVguusvVU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'GetKeyGroupDynamic' test.out

#- 148 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'xkCG4IGPYHaRvV3J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'ListKeys' test.out

#- 149 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'Gi5l0G5NBtXVTXK1' \
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
    'JdoClQQGLneKl3iX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetOrder' test.out

#- 153 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    '{"description": "OvSGgZzuoTiOgT4A"}' \
    'tBZJsMBPDcUuWC1N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'RefundOrder' test.out

#- 154 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'GetPaymentCallbackConfig' test.out

#- 155 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    '{"dryRun": false, "notifyUrl": "GlLe48YQRsZpn4zs", "privateKey": "R2KwSIl0Un3PT2bV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'UpdatePaymentCallbackConfig' test.out

#- 156 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetPaymentMerchantConfig' test.out

#- 157 UpdatePaymentDomainWhitelistConfig
$PYTHON -m $MODULE 'platform-update-payment-domain-whitelist-config' \
    '{"domains": ["zOt2J0VxSVRWxJw7", "idbmOx0vyaMbcnly", "BvXdpoYVZKx8oPBJ"]}' \
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
    '{"currencyCode": "ncKdyabXymlDvbcA", "currencyNamespace": "puoA5PCdXT4YD9fD", "customParameters": {"zx1WPpvLBMMNJG6T": {}, "uQ90jhJCrrsBPvGh": {}, "WiPLLd5eChF7cguj": {}}, "description": "Itr2ZFjL5qUyimmV", "extOrderNo": "zOJYebI5Egye4CkN", "extUserId": "IFSC7IcfdqOCaqFa", "itemType": "OPTIONBOX", "language": "lk_VxLR", "metadata": {"q1O6RDUgilQHCts6": "SUNxUWIGSkxjKL3E", "iP6WeXWf3dBAVfIM": "2oLFaTIhv5XrQvTA", "disxP0DyxqSYeCl4": "gEZgIMDALa4nsITU"}, "notifyUrl": "eFKNh8kgmMjBxD74", "omitNotification": true, "platform": "ujtGQD9sT5LHkWjF", "price": 71, "recurringPaymentOrderNo": "VvmcAsPgT6XUEeRK", "region": "SDbomdWWRi7OHZeG", "returnUrl": "P4o1Tgbe8J8xso71", "sandbox": true, "sku": "LeHVV40sjQ8mtTN0", "subscriptionId": "8V3MMSrrV6FB8DFw", "targetNamespace": "D7WXkw7te8pQfvxY", "targetUserId": "5zPZKMd5ItnXbDbX", "title": "W9KlfgVvjjjExRk4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'CreatePaymentOrderByDedicated' test.out

#- 161 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'JHYGa2nnyqvFCYJO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'ListExtOrderNoByExtTxId' test.out

#- 162 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'Jl9ljs9WPwxzICEy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetPaymentOrder' test.out

#- 163 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '{"extTxId": "kNJeEn6eiosoCvrG", "paymentMethod": "eDygOZbA1UGLox4e", "paymentProvider": "STRIPE"}' \
    'B7vM6wSqwns2XJfU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'ChargePaymentOrder' test.out

#- 164 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '{"description": "l3uiEO9E03Jk5kBn"}' \
    'uo4jR1HYLJjnydxA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'RefundPaymentOrderByDedicated' test.out

#- 165 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '{"amount": 68, "currencyCode": "9foRLP4zSxApJe0a", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 23, "vat": 88}' \
    '9VixS5Es3u4km3iK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'SimulatePaymentOrderNotification' test.out

#- 166 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'iNLRNa01SihgZby9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'GetPaymentOrderChargeStatus' test.out

#- 167 GetPsnEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-psn-entitlement-ownership' \
    '{"accessToken": "mBdGrJY5J0e9jWcV", "serviceLabel": 93}' \
    'qN8RXvgNzoX14Km8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'GetPsnEntitlementOwnership' test.out

#- 168 GetXboxEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-xbox-entitlement-ownership' \
    '{"delegationToken": "51zHcDdphWEIlBnO", "sandboxId": "KyfAbdUB1OM5oKTX"}' \
    'ANlenFuUeRc2SCqQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'GetXboxEntitlementOwnership' test.out

#- 169 GetPlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-get-platform-entitlement-config' \
    'IOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetPlatformEntitlementConfig' test.out

#- 170 UpdatePlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-update-platform-entitlement-config' \
    '{"allowedPlatformOrigins": ["Nintendo", "GooglePlay", "Xbox"]}' \
    'Oculus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'UpdatePlatformEntitlementConfig' test.out

#- 171 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Oculus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'GetPlatformWalletConfig' test.out

#- 172 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    '{"allowedBalanceOrigins": ["Playstation", "IOS", "Twitch"]}' \
    'Nintendo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'UpdatePlatformWalletConfig' test.out

#- 173 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Epic' \
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
    '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
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
    '{"appConfig": {"appName": "dfKGCBZMAbJnqDKu"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "B14cwUNByHqsS7t8"}, "extendType": "CUSTOM"}' \
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
    '{"description": "Upg0equIg7wIz8o3", "eventTopic": "rFWvlE7bmuaFNPCE", "maxAwarded": 57, "maxAwardedPerUser": 54, "namespaceExpression": "KSzHTT5beKYt4CDl", "rewardCode": "WZzqpJeQd6tN5oH4", "rewardConditions": [{"condition": "E7JosGEpOKUFWLts", "conditionName": "Lf278ybCNhF9RCyM", "eventName": "n5VX87u49Hsq4hLU", "rewardItems": [{"duration": 21, "endDate": "1986-11-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "nmlFzzwpEZwbcCEs", "quantity": 73, "sku": "oJdIIw70J2JeqNTx"}, {"duration": 37, "endDate": "1991-02-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "oZJnsAkX5sxny0WL", "quantity": 51, "sku": "MNb0QsxPlx64IQUp"}, {"duration": 91, "endDate": "1972-04-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "1tRG98viuYwQTHKP", "quantity": 4, "sku": "3rnYfZ8c8zURCckW"}]}, {"condition": "WVlTYAkogbV1bNoJ", "conditionName": "JUhL5p56dnYHk1iL", "eventName": "tAXL33WCBnIHoRNW", "rewardItems": [{"duration": 93, "endDate": "1999-06-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "IN7c2uh7Ls9nxKia", "quantity": 30, "sku": "kEvdWNk2SHYsva1j"}, {"duration": 20, "endDate": "1991-05-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "vt1Vu7dsmzSUsCVL", "quantity": 19, "sku": "jJ58vaRaaxVQeMUb"}, {"duration": 21, "endDate": "1973-06-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "j6jcjlxGsLgfrhBT", "quantity": 69, "sku": "HJ0JzaJpqg9JgEy7"}]}, {"condition": "Iad7fAMCaXsZoyeq", "conditionName": "N5ouEcXRhWbROnhO", "eventName": "USnN2KpfXJ96sJUn", "rewardItems": [{"duration": 45, "endDate": "1983-08-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "wzKyxJqBCaof96NN", "quantity": 87, "sku": "k9snWC9CFiRmbELI"}, {"duration": 52, "endDate": "1973-01-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "wfXvKu5UsuFOUXoh", "quantity": 63, "sku": "Iio8nWa64x5pJSHZ"}, {"duration": 58, "endDate": "1993-07-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "zfhG3hC9Be3Cvn1Q", "quantity": 50, "sku": "tL2AAtjEKW31SlSm"}]}], "userIdExpression": "20DzdKk8FlVcy0hc"}' \
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
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'ImportRewards' test.out

#- 186 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    '18E5J9knaLMlveXW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetReward' test.out

#- 187 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    '{"description": "FZqotaiZN3MPuYWk", "eventTopic": "5lHvw9RXrx8aUB1x", "maxAwarded": 96, "maxAwardedPerUser": 42, "namespaceExpression": "jHqRaUZuU9T9SRQF", "rewardCode": "fxRIUU3K7sjvHHFm", "rewardConditions": [{"condition": "aUGIprrzf5gWNxqx", "conditionName": "l2qgslinTPbY1473", "eventName": "RFPlwtoen6TTQtwM", "rewardItems": [{"duration": 63, "endDate": "1979-12-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "LqKRRnKy17sBYlx7", "quantity": 36, "sku": "h8hoDWRw7XYzZLlL"}, {"duration": 33, "endDate": "1973-04-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Fyb34DDyqvcwQ3uB", "quantity": 52, "sku": "CMpunzeSPkf8Y5ks"}, {"duration": 18, "endDate": "1977-05-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Yr60SyfWNB8u5Qlf", "quantity": 41, "sku": "KGo0N4g7UWRzPsMd"}]}, {"condition": "90Jrkh4kaHSpxt9C", "conditionName": "W0WYKxAYERGPWWPo", "eventName": "bC0FiwNmp1e9JzR7", "rewardItems": [{"duration": 55, "endDate": "1991-12-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "t3pdbjxfK1P9wjSB", "quantity": 55, "sku": "3nE04Cbkpn0yX44a"}, {"duration": 76, "endDate": "1990-08-18T00:00:00Z", "identityType": "ITEM_ID", "itemId": "G20BKfuTGRLmLwLS", "quantity": 28, "sku": "dIB0aGjtNbryvmke"}, {"duration": 26, "endDate": "1980-04-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "NMykbnHTrHLmaTGF", "quantity": 72, "sku": "HbR5lY76lAzKbyHp"}]}, {"condition": "hqwB5Iehzt3ErL5T", "conditionName": "5rvBRXJxUvm1xIvC", "eventName": "ywA95KVla3LCTgTk", "rewardItems": [{"duration": 85, "endDate": "1983-06-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "cVfRHox2lJjo1I9g", "quantity": 24, "sku": "DDG5HJEFQRX4iVg8"}, {"duration": 93, "endDate": "1989-10-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "1CF9X9mTmMVfQaiQ", "quantity": 75, "sku": "oDIwGJ3pRyNwb9Jg"}, {"duration": 98, "endDate": "1971-03-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "cyajUNH4cyuoR5Yk", "quantity": 90, "sku": "I9Jujxs7GKf2LOlV"}]}], "userIdExpression": "bEWajKUr3rx7Sdt8"}' \
    '0ugFtH5gSuRJLGki' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'UpdateReward' test.out

#- 188 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'jLEJPCdahOY2goEK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'DeleteReward' test.out

#- 189 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    '35CZu7WE18eU5rtQ' \
    --body '{"payload": {"UWRLvu3WEfwBn40s": {}, "Jji4hVE3lKNQy2rJ": {}, "xiPPjJk44WHDDNDV": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'CheckEventCondition' test.out

#- 190 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    '{"conditionName": "gExcmm4fkoNMVNk6", "userId": "z4A3FI60uUrVMjqw"}' \
    'Lfyh5UUBSKyenhZ5' \
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
    '{"active": false, "displayOrder": 68, "endDate": "1999-06-10T00:00:00Z", "ext": {"l3jc1060kqFKNcGH": {}, "YIXDqQpOY256yQcC": {}, "8CPFXan7LUfcQhcx": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 6, "itemCount": 27, "rule": "SEQUENCE"}, "items": [{"id": "IbTi8dxU11tPBlMC", "sku": "z6SSpxt0aZZr3SbJ"}, {"id": "HkTstBGTm2OFHVEo", "sku": "RljsGF5AYZlEYqTV"}, {"id": "SCLemvpJXl2drfGI", "sku": "gu0ksPtzdXjtRaBO"}], "localizations": {"lhg63PduP0G77oZV": {"description": "8BGfavVPOhaaf5eE", "localExt": {"xcjABRx8qNMv4XLW": {}, "0xlb6yLTssmZXLvx": {}, "Rhf6ICrMr8z6e2UD": {}}, "longDescription": "BycYrDDg5iDNLOJJ", "title": "mzGW9AQMDnaFw1u7"}, "BLbxxmghZp6iVAJ6": {"description": "lYOK3cwO9ln34fiL", "localExt": {"xPN5xKoNNYd5p2yV": {}, "sBAv2ZVlrnlY8y91": {}, "hD1ZHh1VjLqa0AOD": {}}, "longDescription": "LarMcrlOCtMCyPHn", "title": "S8uePyiByYQOgKKv"}, "9kQYaSI3bbqZQkXA": {"description": "ns7VrdNH8v1oP98h", "localExt": {"anhE18UbY1Zkrfk0": {}, "Xn6jwfR02GfMrXzI": {}, "7oWD1mZ9rW6QdtPe": {}}, "longDescription": "4YleMg5NGs1Pmz6A", "title": "mebh0FbOWyhAnMP6"}}, "name": "BdBw6d4UOI7Tr9NH", "rotationType": "CUSTOM", "startDate": "1974-05-11T00:00:00Z", "viewId": "eEWIpyYx9wOuNquv"}' \
    '2qkqRR9Nwd8OrgT5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'CreateSection' test.out

#- 193 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'HMaelKs3hdNcCPnr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'PurgeExpiredSection' test.out

#- 194 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'mZDNctQe0IM586qY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetSection' test.out

#- 195 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    '{"active": false, "displayOrder": 21, "endDate": "1991-02-08T00:00:00Z", "ext": {"vmRITEU7usHknnfY": {}, "NY7ZXicpAJw7Ct9A": {}, "mEoUNlmQjebaV8c1": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 65, "itemCount": 15, "rule": "SEQUENCE"}, "items": [{"id": "xX6qNntgmml0ts1u", "sku": "w7WvaRDN6waXRBRT"}, {"id": "78fZc6LpvtY7Bk3j", "sku": "0Rt5ai8x1JHTPfAT"}, {"id": "k2jDkPq7n0VqgiBJ", "sku": "sxKkXhiEo0RXgJkW"}], "localizations": {"elLk7pTvUfmra4es": {"description": "dZ2v5vKHsJ5Dezdl", "localExt": {"RlTTSLmDolGdb7yX": {}, "LAgfgESHWCK8LccJ": {}, "JmXX0pmy1KDJtg9F": {}}, "longDescription": "wOewtMPXhsCdeun9", "title": "QN513GmIqfQ8mJbg"}, "0TSRxhI4XnmuQN65": {"description": "HKi5qvwLIqgfXvKj", "localExt": {"hXcfKE45hKdn2Ay5": {}, "KgtWue3XkqcMKE9l": {}, "0uRkf5RxDdVVe0Vv": {}}, "longDescription": "Pmen8keuXuWuitb8", "title": "5Ns7DhXCIneqddSt"}, "nBNigsnBpu24ga0d": {"description": "3NvXvIgvIynEaAcX", "localExt": {"7fXbKWmraqNIKPX6": {}, "gPHT29wkZwM8cvOb": {}, "RjKxi25l9mb1mSJf": {}}, "longDescription": "fUaLwOsYRIJearzt", "title": "P7sqwracbiPrT7cA"}}, "name": "RnySCNlQCocWBq1V", "rotationType": "FIXED_PERIOD", "startDate": "1991-05-01T00:00:00Z", "viewId": "N8B4oo9jFmBqiyic"}' \
    'QHvr1zREqWwsQaxb' \
    'dG9IxEoxcgOEmGQp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'UpdateSection' test.out

#- 196 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'zN4HM3v5wAiimBQX' \
    'CxR1cObsys0SaqnY' \
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
    '{"defaultLanguage": "IBTANshJcdLEofyi", "defaultRegion": "S3dO8j3taWbShXMN", "description": "0MRNkMX09nQEwFSc", "supportedLanguages": ["e6VsIsSSdkP3IqaP", "aXJc57cVP8tXCteu", "tO2hlDa0voH7Al8v"], "supportedRegions": ["uxWTaiUJpIgLrblS", "QiwrmWKb8IhCNJqt", "CtGvxKwuL3MuhHXz"], "title": "y6WjNeNYuVWrqxrN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'CreateStore' test.out

#- 199 GetCatalogDefinition
$PYTHON -m $MODULE 'platform-get-catalog-definition' \
    'SECTION' \
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
    '{"catalogType": "ITEM", "fieldsToBeIncluded": ["hsaw4vbDPKG9aUuC", "w1ys0BxLbujuXwWE", "JUvl8k6CNRAfp1s2"], "idsToBeExported": ["1wulz8cb64KjGDHo", "lxRGH5sQmA6XL9p8", "3Led5r4J7MEwKxtP"], "storeId": "0SkagDcL89Pjvtwa"}' \
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
    'UDi2fDyXlYJu8bIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'GetStore' test.out

#- 208 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    '{"defaultLanguage": "kFh5LqxA2jff0fTR", "defaultRegion": "IYip6c9di8JeefXJ", "description": "2PdIoHdoDHgvwcWx", "supportedLanguages": ["lmJoJSnhyf4L6dZ6", "6Zi7azAJHL5PE9RV", "ZONAcvKXL23ppvor"], "supportedRegions": ["8grcvFvYajtvdiqy", "ZzxREBSrOk54EyWa", "lLjCH6xr3vtL9JTQ"], "title": "5CWaR2DvfAXB1Srg"}' \
    'Ln5lUQ3Mt9iye7Sb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'UpdateStore' test.out

#- 209 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '3gSolD6u7wIciVVH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'DeleteStore' test.out

#- 210 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'oFtt4AP9G3HyBugf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'QueryChanges' test.out

#- 211 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'ReiDLdSTRmElGhVQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'PublishAll' test.out

#- 212 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'f227V7ADaQHt78b3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'PublishSelected' test.out

#- 213 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'DT7qRYPx0W6cXzOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'SelectAllRecords' test.out

#- 214 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    'GXLsEc8XzmjXX4cs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'SelectAllRecordsByCriteria' test.out

#- 215 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'MlaBkq9QHEb66Bo3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'GetStatistic' test.out

#- 216 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'ALdAKAQUoGDOUFK4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'UnselectAllRecords' test.out

#- 217 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'BcWOxnwerZoIJ2JM' \
    'tHAD8gJdK4CJBY63' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'SelectRecord' test.out

#- 218 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'ASIuZtE2WuycIdVm' \
    '37lVyVYhbj7X96t5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'UnselectRecord' test.out

#- 219 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'WMLdod5DYqp6XDPJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'CloneStore' test.out

#- 220 ExportStore
eval_tap 0 220 'ExportStore # SKIP deprecated' test.out

#- 221 QueryImportHistory
$PYTHON -m $MODULE 'platform-query-import-history' \
    'mYDZqWoL8k0jEDj1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'QueryImportHistory' test.out

#- 222 ImportStoreByCSV
$PYTHON -m $MODULE 'platform-import-store-by-csv' \
    'tmp.dat' \
    'tmp.dat' \
    'tmp.dat' \
    'R673CfYbn53kIRN1' \
    'tmp.dat' \
    'df13EvjSbGYcLQEo' \
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
    'cUfUPAI2O4xXXwCs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'RecurringChargeSubscription' test.out

#- 225 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'NtkQh3rUUKaN66Rj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GetTicketDynamic' test.out

#- 226 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    '{"orderNo": "kt9zWkx2SjE4MM82"}' \
    'Qw4C7p4YKcL3qt4l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'DecreaseTicketSale' test.out

#- 227 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'UCjplpfxQDpz3ka7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'GetTicketBoothID' test.out

#- 228 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    '{"count": 30, "orderNo": "GSPrezfQIy1FsYo0"}' \
    '3H0HWXeUSuTJRHgB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'IncreaseTicketSale' test.out

#- 229 Commit
$PYTHON -m $MODULE 'platform-commit' \
    '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 76, "currencyCode": "Sb3GL7YAU5AnUkmf", "expireAt": "1995-05-10T00:00:00Z"}, "debitPayload": {"count": 100, "currencyCode": "8PstBnVeYTD7i7fq", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 44, "entitlementCollectionId": "xwOb5jkz9ihTe86s", "entitlementOrigin": "IOS", "itemIdentity": "A6nI1VhgTvfzwfgR", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 44, "entitlementId": "tMhunn3jSCD2AknC"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 85, "currencyCode": "R2ACNzI10tZr3Ajm", "expireAt": "1982-01-08T00:00:00Z"}, "debitPayload": {"count": 48, "currencyCode": "s8Iv2Ij9B7VD3SyR", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 95, "entitlementCollectionId": "JrWlE1xE0Agbtqaw", "entitlementOrigin": "Oculus", "itemIdentity": "QUVEWE0xtN3v8DgF", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 30, "entitlementId": "jRGzthYJKH9vhOLp"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 100, "currencyCode": "hREoTAvCltzrUTJg", "expireAt": "1985-06-09T00:00:00Z"}, "debitPayload": {"count": 20, "currencyCode": "SEiRgh67ylD9xIb4", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 61, "entitlementCollectionId": "71qZ2QmEuNVKEmoF", "entitlementOrigin": "Nintendo", "itemIdentity": "20lWbIy7iWsAEY3T", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 94, "entitlementId": "DXuJSzkSZfZ5duij"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "HtddVhZ7lfOiLRYQ"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 5, "currencyCode": "Dw4MI4SEqiXIaji4", "expireAt": "1991-11-30T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "mP494vGlNtuMUpS3", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 63, "entitlementCollectionId": "KGKct8SZQK7TEK4s", "entitlementOrigin": "IOS", "itemIdentity": "zj7oPP3OeZVILEaX", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 73, "entitlementId": "HnhR8gT3if17nsnd"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 50, "currencyCode": "N9k93aNy4vvrPXP6", "expireAt": "1994-08-03T00:00:00Z"}, "debitPayload": {"count": 28, "currencyCode": "vkVtA8b9zvOaiSMH", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 31, "entitlementCollectionId": "VciAVrPuzKV1Wj7J", "entitlementOrigin": "Twitch", "itemIdentity": "QrgnhZMehNOncXNM", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 30, "entitlementId": "iBLaa5iN5b6ODd1k"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 88, "currencyCode": "JUhwTgl0tvWir64f", "expireAt": "1979-08-01T00:00:00Z"}, "debitPayload": {"count": 31, "currencyCode": "425Kp2PGW8gpXu2m", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 7, "entitlementCollectionId": "FWbYOy7zpSeyGBLa", "entitlementOrigin": "Other", "itemIdentity": "rGlfgrzLifZvRPXj", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 27, "entitlementId": "YCPM52HK8ASyze4T"}, "type": "DEBIT_WALLET"}], "userId": "TmQupOzuaRV8Vw1O"}, {"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 76, "currencyCode": "yVC7JcK5UdheuW7H", "expireAt": "1991-11-07T00:00:00Z"}, "debitPayload": {"count": 7, "currencyCode": "ooXzmW321H7CGe7B", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 67, "entitlementCollectionId": "PPtar2LEaQgwjgNb", "entitlementOrigin": "Oculus", "itemIdentity": "555p9oqb5MeMGL8k", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 60, "entitlementId": "F087BWKC6wzHgwFq"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 5, "currencyCode": "E0YS9KhgP8rRhISj", "expireAt": "1972-07-19T00:00:00Z"}, "debitPayload": {"count": 72, "currencyCode": "GsBgTJCc6734Mnrb", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 83, "entitlementCollectionId": "AM32RlQ3Wpg0XNZC", "entitlementOrigin": "Oculus", "itemIdentity": "gAEVfEZshgoviRWd", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 61, "entitlementId": "swUzfV36Hwf7gG4i"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 71, "currencyCode": "J6PGvsYDnaTT5U0e", "expireAt": "1999-11-08T00:00:00Z"}, "debitPayload": {"count": 77, "currencyCode": "nmrmR9dDVbvyNupY", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 46, "entitlementCollectionId": "zyYEaMgXsszL7hps", "entitlementOrigin": "System", "itemIdentity": "wAQxtDEUm4PnTTyH", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 22, "entitlementId": "BvqhixMPjP9lZT5O"}, "type": "DEBIT_WALLET"}], "userId": "PWyZpnVjbpotD8HT"}], "metadata": {"OOdvA4UhdTY2DNsF": {}, "uGcD5vraJ3WftgZ4": {}, "3r4ZLb7i2SZkIaAN": {}}, "needPreCheck": true, "transactionId": "12BS4Q8u6QqK4CeZ", "type": "XmSBfgrJcwR3qktA"}' \
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
    'dH94tziEpGVXsUve' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'GetTradeHistoryByTransactionId' test.out

#- 232 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    '{"achievements": [{"id": "z1lbenagh9kCPNSZ", "value": 94}, {"id": "7c76AToup2zhRng3", "value": 76}, {"id": "jHPiPqvMMmYJeKvs", "value": 14}], "steamUserId": "k4I9TU6FvvEdqHzE"}' \
    'Dtl5oR9m1dm3fGK1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'UnlockSteamUserAchievement' test.out

#- 233 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'wINqvFrAsrmYYu40' \
    'w6szojkvjtacFSVT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'GetXblUserAchievements' test.out

#- 234 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '{"achievements": [{"id": "vgh23BGEa5ftmSBK", "percentComplete": 87}, {"id": "jfHXQQVmxHmCVmuz", "percentComplete": 29}, {"id": "wRyHKWspPtJlLDOj", "percentComplete": 24}], "serviceConfigId": "TWGIrWq2VvH0roA2", "titleId": "0Sfzrc9YYsgvVLN3", "xboxUserId": "usfhiyCf1FOddxtE"}' \
    '52sFK1jNp3OwcrNR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'UpdateXblUserAchievement' test.out

#- 235 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    '2jH7Xx7m8IqIRyUq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'AnonymizeCampaign' test.out

#- 236 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'aCbbMa2LqgJOAfFw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeEntitlement' test.out

#- 237 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'vvgYPIFEVZLGzEgl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'AnonymizeFulfillment' test.out

#- 238 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'Ee95LWKrkj7TPuig' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'AnonymizeIntegration' test.out

#- 239 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'p3RiJofgD4VypGT4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'AnonymizeOrder' test.out

#- 240 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'cTfKNrjPqUk0t9aq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'AnonymizePayment' test.out

#- 241 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'uw2B2UVIQMA6BOpx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'AnonymizeRevocation' test.out

#- 242 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'tYbmQwS5kNxCPLeK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'AnonymizeSubscription' test.out

#- 243 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'M4cQl8DlY91SXBeH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeWallet' test.out

#- 244 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'wrkPCaAycmEvk3rV' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetUserDLCByPlatform' test.out

#- 245 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'LjZT9qayJJtW8sqk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'GetUserDLC' test.out

#- 246 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'uIBd1NrGWPVvOhMT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'QueryUserEntitlements' test.out

#- 247 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '[{"collectionId": "dfTjLVxzjyQsgv5n", "endDate": "1997-11-25T00:00:00Z", "grantedCode": "n7Tiakc1Rzb4MCHH", "itemId": "4aATHwPTM0LfcjvO", "itemNamespace": "ko7332ZZa1YfuaQ7", "language": "fq", "metadata": {"wNGRl2gcWdDmIy4I": {}, "a2UtS4T1v2y9Je7a": {}, "pQfNdDyT3a0EGpHg": {}}, "origin": "System", "quantity": 38, "region": "LUqdG3kBfGvwjwtt", "source": "REDEEM_CODE", "startDate": "1980-05-28T00:00:00Z", "storeId": "cK4MyIy9F8aBXzn8"}, {"collectionId": "z72hf4D4NOpbUDny", "endDate": "1995-06-25T00:00:00Z", "grantedCode": "mYotZCA9LADbjj6v", "itemId": "iKPQxoVP77RuEzCR", "itemNamespace": "LrZmVBFc2P689TFu", "language": "ky", "metadata": {"oX56gzosv2p6WtLf": {}, "gPM8t1tgWhx94eFn": {}, "xfKdptYcgxbMBZz4": {}}, "origin": "GooglePlay", "quantity": 89, "region": "YZPuTkhJH0gQxqxm", "source": "REFERRAL_BONUS", "startDate": "1988-09-14T00:00:00Z", "storeId": "WGPc92PcmK9zTgGQ"}, {"collectionId": "s1FIKxCXUhNdJ4cK", "endDate": "1978-05-26T00:00:00Z", "grantedCode": "XpZ9sy7dEuiT7OrR", "itemId": "dHjzNhfc3uokglAm", "itemNamespace": "xb5eaYqdXkBqt2Uf", "language": "JcA-OqRp", "metadata": {"rZJAMVQaCd4UgSRs": {}, "Fc8FKz1j1HfaNk1P": {}, "4hC8wgvaTIntj0re": {}}, "origin": "IOS", "quantity": 20, "region": "mCKMOHEhe6apnthJ", "source": "PROMOTION", "startDate": "1973-12-14T00:00:00Z", "storeId": "KfjfpUz3jtg1bKaD"}]' \
    'BROm6TJ2qMul8cl5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'GrantUserEntitlement' test.out

#- 248 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    '5U4RB2xVHiARcFLz' \
    'OW7Uz8Gz5TN3bJ6U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'GetUserAppEntitlementByAppId' test.out

#- 249 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'VKAdNp2ReRw5WPjo' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'QueryUserEntitlementsByAppType' test.out

#- 250 GetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-get-user-entitlements-by-ids' \
    'JRGwBPZ82ML7i85x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlementsByIds' test.out

#- 251 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'AiG2FleXiqNPeymX' \
    'gMK8gaxYcDDZjCrk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'GetUserEntitlementByItemId' test.out

#- 252 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'lUdoPRrSlMOoEllC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'GetUserActiveEntitlementsByItemIds' test.out

#- 253 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'itDiZDBLqmmiE0hD' \
    '2A6L9zZJpI7J4njh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementBySku' test.out

#- 254 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    '6wMyuNtA5mMerAvf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'ExistsAnyUserActiveEntitlement' test.out

#- 255 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    '2EK1rsQWD1svihoA' \
    '["ZBd4hkykRLwN2LHF", "kXjhDf4RPTS1xmIM", "78uco5di3sJNayfJ"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 256 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'akaJtAFsemukeOnQ' \
    'qvXAFVKLeOpEjPJD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 257 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'BPU8LPr0bjy4nFkl' \
    '8n6PSoXYb9tc6rYy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'GetUserEntitlementOwnershipByItemId' test.out

#- 258 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'OiaUKC8t4GV0JiE7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementOwnershipByItemIds' test.out

#- 259 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'ZbWP80ZctunIw8zz' \
    'jr1oeY1p4P0xno1l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementOwnershipBySku' test.out

#- 260 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'uSqciM4rfqsoJ7Ak' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'RevokeAllEntitlements' test.out

#- 261 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'LiYjJvlKhH1ccnrp' \
    '3T2fKqq9CzJlj0UG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'RevokeUserEntitlements' test.out

#- 262 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'tCqJnqpaur75iSsL' \
    'SqGKfGJDmzFepqpo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'GetUserEntitlement' test.out

#- 263 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    '{"collectionId": "IzofQ17bQpOtqU8Y", "endDate": "1999-10-07T00:00:00Z", "nullFieldList": ["DFSnh5IbdftTLRLU", "GwenKzXRT99U5B5j", "9CT2YI1qt4AYI54f"], "origin": "GooglePlay", "reason": "tgKyddONrCA3C8Sv", "startDate": "1979-08-14T00:00:00Z", "status": "SOLD", "useCount": 78}' \
    'qpSaqBWWsEePoWos' \
    '4O5MRxu5cYFtJZei' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'UpdateUserEntitlement' test.out

#- 264 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '{"metadata": {"nW64n9q4asIfg6qp": {}, "RvHGYNAfvls7pbw9": {}, "yPFofHSVjTbM9IHL": {}}, "options": ["2JcpnLuindE3Ucg0", "5FtWiuP1xyPeWov5", "pJJdyu2TxbDTPkZk"], "platform": "YfTO2Gg00JcXGaIU", "requestId": "aL3FoA27eK2U3IHp", "useCount": 12}' \
    'bMCnu8NHDPiOQzKh' \
    'R4x3pYj5be9x03hT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'ConsumeUserEntitlement' test.out

#- 265 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'zeUaFK6P6yxOlFhd' \
    'tyrLQHkz1Es8nQbk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'DisableUserEntitlement' test.out

#- 266 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    '4SztMOdFHQXjAZrD' \
    'NCoJ22RroweT9Xan' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'EnableUserEntitlement' test.out

#- 267 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'vbg8nAmHsrmzoPN3' \
    'GJz77wPralgkstRs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementHistories' test.out

#- 268 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'Ui0oaze9bInjdq27' \
    'RgguQ45JSoDgfLay' \
    --body '{"metadata": {"vPNWmvzOaDtopfGP": {}, "nF4i8PP7jdmy3KsR": {}, "DI0m4nKNGlXp2jJf": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'RevokeUserEntitlement' test.out

#- 269 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    '{"reason": "LGd0zQqYmGkk8Pcq", "useCount": 47}' \
    '3l2hWOuqsilAWXNF' \
    'fxIWM9jL08jtCIr8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlementByUseCount' test.out

#- 270 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'STWuiyz2eOgny7d8' \
    'WVlcOTKoZimYNHB2' \
    '32' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 271 RevokeUseCount
eval_tap 0 271 'RevokeUseCount # SKIP deprecated' test.out

#- 272 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    '{"platform": "O3LzmzW8Oj3HDRoK", "requestId": "Rr6ZZRLgp1djMaw9", "useCount": 29}' \
    'PcFbl4XrKUphPevx' \
    'Fz1b7Q3NwVn8PU8J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'SellUserEntitlement' test.out

#- 273 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    '{"duration": 11, "endDate": "1972-09-15T00:00:00Z", "entitlementCollectionId": "P3N8ee3aFSyZkpxz", "entitlementOrigin": "Playstation", "itemId": "kA67H3XOJlQfOCN2", "itemSku": "keFNIQusmcAYWBLZ", "language": "g00dmqgWRmPnXpH8", "metadata": {"xifqavEfKK0Dei3C": {}, "hLwkIGKtgDjDah0U": {}, "ewhSyu7JMOvmbqHp": {}}, "order": {"currency": {"currencyCode": "LDqY64bsfWMA6zIW", "currencySymbol": "iASrarIiILeXO18V", "currencyType": "REAL", "decimals": 82, "namespace": "Y5Ma16Sr2B137kVZ"}, "ext": {"hkISgONgrrElIGGV": {}, "8sY9ZaFaHBtEtzzb": {}, "IbJ6nsmYALYAas29": {}}, "free": false}, "orderNo": "BhKjKkXDnEXVzzBD", "origin": "Xbox", "overrideBundleItemQty": {"ZPaKlnIY3vGLET05": 73, "1uzCA657ulArgYuy": 19, "5OyypfQ5iJtNrVbj": 28}, "quantity": 57, "region": "yYERw24T1DBdzzVb", "source": "EXPIRATION", "startDate": "1979-10-29T00:00:00Z", "storeId": "hPsMMX4Dg6kBhhmA"}' \
    'mGWgONbsaq6FR89F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'FulfillItem' test.out

#- 274 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '{"code": "VcE5vUWRlOGzgjng", "language": "Wf_154", "region": "naIn2EhpBnamOqQf"}' \
    'F1i9lDi17TuzOCkf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'RedeemCode' test.out

#- 275 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    '{"itemId": "reVXF3F57a8i8FBQ", "itemSku": "Vq8F8UHFjnV4a8qk", "quantity": 94}' \
    'h4G1JwgwqyIOpmNM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PreCheckFulfillItem' test.out

#- 276 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    '{"entitlementCollectionId": "gpfDY1FR9rKaxaWs", "entitlementOrigin": "Steam", "metadata": {"78ZIjg1EtBZbAWeH": {}, "GdU9mllRGwL1hP0I": {}, "LR0Ela7ZLwTA0wt5": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "PTXzknDz9YRB0KEr", "namespace": "E7XXTkVsvdGlmWWA"}, "item": {"itemId": "02nKwO7XUNrraxsH", "itemName": "n4uKhXVFTTx0Tcbo", "itemSku": "B98Gf5PcmWICZpV1", "itemType": "3Vxw1InWyY5J5tCY"}, "quantity": 35, "type": "CURRENCY"}, {"currency": {"currencyCode": "kbWfSwD66Xg5Qbc0", "namespace": "EjxxzLQLRh64Y1jo"}, "item": {"itemId": "pYiTRZEzq26aXSjy", "itemName": "AQ2QsMJlAxZUci2C", "itemSku": "C1SEp55TimgFFENN", "itemType": "E15OyfCm3JLSdyxE"}, "quantity": 22, "type": "CURRENCY"}, {"currency": {"currencyCode": "UrupaAg8X3qrN4NJ", "namespace": "QHucDPcorTkEhvJJ"}, "item": {"itemId": "BHTf7gHQdNqoM8Jp", "itemName": "OKNAU33hDeba57ZY", "itemSku": "9YNNrTcdcnzDvUHg", "itemType": "R2bX5lx9AjwbpWgn"}, "quantity": 70, "type": "ITEM"}], "source": "REFERRAL_BONUS", "transactionId": "Sj1kSeWA3702Mcnn"}' \
    'KWV37CLHYvul2IsF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'FulfillRewards' test.out

#- 277 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'Exmn4GV4MH5mOZyT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'QueryUserIAPOrders' test.out

#- 278 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'MMDazz0zG1FmCCyw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'QueryAllUserIAPOrders' test.out

#- 279 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'XfHj329WcNk8k8qK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'QueryUserIAPConsumeHistory' test.out

#- 280 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '{"itemIdentityType": "ITEM_ID", "language": "kfR-OUwL", "productId": "QDfleFLBKj8h7ZrO", "region": "4pTU7jATbVBcDGud", "transactionId": "QQm98BKOdsoaTqFh", "type": "APPLE"}' \
    'EJm9cqIJO6etrgPc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'MockFulfillIAPItem' test.out

#- 281 QueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription' \
    'oqdV16bQzZjJiiJF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'QueryUserThirdPartySubscription' test.out

#- 282 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-group-id' \
    'OCULUS' \
    'c3k5J2qbHYNekyXL' \
    'tDH1ypF3hIsdFXbb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 283 GetThirdPartyPlatformSubscriptionOwnershipByProductId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-product-id' \
    'APPLE' \
    '6XNxmrOFx6AenNJC' \
    'zeLqjOhHMsieBzDB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 284 QueryUserThirdPartySubscriptionTransactions
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription-transactions' \
    'hi6oZhjEnbkZp3ZH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 285 GetThirdPartySubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-subscription-details' \
    'kJnKJ2ksygYZVyQI' \
    'UbI6vW6lvytcmR4Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'GetThirdPartySubscriptionDetails' test.out

#- 286 GetSubscriptionHistory
$PYTHON -m $MODULE 'platform-get-subscription-history' \
    'RN7ybL3lT1Ois7Os' \
    'TElVV8XJ7Jg2JP8J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'GetSubscriptionHistory' test.out

#- 287 SyncSubscriptionTransaction
$PYTHON -m $MODULE 'platform-sync-subscription-transaction' \
    'KQ1Fia4jQzEGsQTm' \
    'KTeq9hsX0E1pSQzk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'SyncSubscriptionTransaction' test.out

#- 288 GetThirdPartyUserSubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-user-subscription-details' \
    'Ja95maQLAJLoGMHe' \
    'P6XZjcdrsSt4spX9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'GetThirdPartyUserSubscriptionDetails' test.out

#- 289 SyncSubscription
$PYTHON -m $MODULE 'platform-sync-subscription' \
    'eT2jwH7ODZfqj84X' \
    'XtngQG9E03eUwSRO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'SyncSubscription' test.out

#- 290 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    '9eoka5Ufs9UTtAIm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'QueryUserOrders' test.out

#- 291 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    '{"currencyCode": "Wjuqib3nbPkju9PQ", "currencyNamespace": "5pN0XXmk4owknspU", "discountCodes": ["KyKWqOaF8En9Ut2q", "t7qJ1Y75wS8MCmOe", "FCzvpinQCQg8fidw"], "discountedPrice": 32, "entitlementPlatform": "Other", "ext": {"p9Tx45YPBPqcYNEb": {}, "LCaeCuMBokWfuz2Z": {}, "skdg2b5IpRSAi9TY": {}}, "itemId": "3ZiKfpU2gMmaHuaB", "language": "zeu4NPuT03UI8xXk", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 85, "quantity": 51, "region": "X2RbN68q9XjuvxGS", "returnUrl": "BmDL91zfHvKnS4TB", "sandbox": true, "sectionId": "mKcwvGguz7SAcGvV"}' \
    '4lCJgcrAut2gYpuK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminCreateUserOrder' test.out

#- 292 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'bE8ulWHoG1zC1K7o' \
    'T3iNe5yhZbqmAgI6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'CountOfPurchasedItem' test.out

#- 293 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'LUauh1GlEo4faeHI' \
    'eXSROEb0iXucFoRm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'GetUserOrder' test.out

#- 294 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    '{"status": "REFUNDED", "statusReason": "DFw5ArJzNAElybJS"}' \
    'WLbZCdcwYHhOIGu0' \
    'vXLFZoXt8k5ZtRJG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'UpdateUserOrderStatus' test.out

#- 295 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'wh0BPRCWdTnytxme' \
    'sJ8JDDcPDev3e8oc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'FulfillUserOrder' test.out

#- 296 GetUserOrderGrant
eval_tap 0 296 'GetUserOrderGrant # SKIP deprecated' test.out

#- 297 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    '7sh3o0r9VYIh3Jj1' \
    '5pf4bXUrytKH5rM5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'GetUserOrderHistories' test.out

#- 298 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '{"additionalData": {"cardSummary": "4pVKLq2niQIIF3Qc"}, "authorisedTime": "1975-05-08T00:00:00Z", "chargebackReversedTime": "1984-05-14T00:00:00Z", "chargebackTime": "1992-10-20T00:00:00Z", "chargedTime": "1994-10-30T00:00:00Z", "createdTime": "1981-05-22T00:00:00Z", "currency": {"currencyCode": "Yc3AKtQffBJPNo4V", "currencySymbol": "IzCxIBQt7BEsLhZn", "currencyType": "VIRTUAL", "decimals": 37, "namespace": "2ftyZklpNPl881jO"}, "customParameters": {"SvCvj20fgU419HQG": {}, "ug3ApiXAivNHSVq7": {}, "Hy14PWQgyxy3AZ9Q": {}}, "extOrderNo": "29c3FLGnsacdakVu", "extTxId": "Bk3eUIeGfzqhOBhM", "extUserId": "J8BCR0Pr4lUceWJi", "issuedAt": "1972-09-21T00:00:00Z", "metadata": {"PUCDHoZPOFJliGQw": "zPSicmKe5tLTY4T6", "1Ztjv4HjtKUJ2g5i": "Kvkb6yaN0rJRTtAo", "roj50ibuYM4wRG0l": "N0X5kMcmOdLuSZLY"}, "namespace": "kIABWq6LMyqmJBIa", "nonceStr": "yJYIYPCQLT4UtcQm", "paymentData": {"discountAmount": 47, "discountCode": "AgeUljuQXNi35z75", "subtotalPrice": 39, "tax": 23, "totalPrice": 87}, "paymentMethod": "N6GGKXlt1XAswrMM", "paymentMethodFee": 19, "paymentOrderNo": "gigqjIaaftddfk3N", "paymentProvider": "XSOLLA", "paymentProviderFee": 29, "paymentStationUrl": "UGt7hRJWz66woOwu", "price": 18, "refundedTime": "1997-03-07T00:00:00Z", "salesTax": 33, "sandbox": true, "sku": "aDmZpx6FpqFAR1FP", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "qDxqukQGmZ8QPR4r", "subscriptionId": "rBu0xMLSZM2reG0e", "subtotalPrice": 95, "targetNamespace": "gJn2pWVs6zZRXBAe", "targetUserId": "xxsuLkWktcAykay7", "tax": 77, "totalPrice": 70, "totalTax": 93, "txEndTime": "1981-08-30T00:00:00Z", "type": "jr1YSzeXfUiXANoR", "userId": "ioh11etL7rvPzXTB", "vat": 34}' \
    'YqyDBVeKhVWlgMI2' \
    'a4HuuQiMf3ZtSRaK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'ProcessUserOrderNotification' test.out

#- 299 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'TvnYQcQK3OLU5xNe' \
    'aLjRoNMmfyuSugV6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'DownloadUserOrderReceipt' test.out

#- 300 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    '{"currencyCode": "3aIt0NDFEcKEQaxv", "currencyNamespace": "tIGC9xYvHbX0ptwZ", "customParameters": {"qHLOEqFcFlBmznrL": {}, "ziwCnnibCjn2uxoS": {}, "kuKry9iZZvtreyTj": {}}, "description": "GpaUSGjv2AbKgIoG", "extOrderNo": "vyLZGyV2nNIKGyVa", "extUserId": "tdlj1BAkRkfD5QI9", "itemType": "SUBSCRIPTION", "language": "CH-IhsF_616", "metadata": {"GTnts7qK33YCsDe0": "la83cvnj5Ut4YTxI", "BMay1sHQoxlbhfnh": "1larFYcM0OoFV93h", "G5GVHrcfGpWAuflV": "B1opvSUYD0K7Y5bC"}, "notifyUrl": "ch6ur33FthZ0FOWC", "omitNotification": true, "platform": "ozVctDaMus5bsovj", "price": 25, "recurringPaymentOrderNo": "7WN70b3lBnY61oiT", "region": "LHdBClY8kIt120hK", "returnUrl": "XcluepkD2cjAyU8t", "sandbox": false, "sku": "1vzXsMr43ycE5A2f", "subscriptionId": "FKAWLe45nohGKrvp", "title": "CUuClhTnLjG2riY5"}' \
    'IlAkHgxsULSOBCWJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'CreateUserPaymentOrder' test.out

#- 301 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '{"description": "H9jh3zB9JEYLPl0R"}' \
    'jsq0yRuQRarSVoIl' \
    'eZ7PtbbcriinQEr7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'RefundUserPaymentOrder' test.out

#- 302 GetUserPlatformAccountClosureHistories
$PYTHON -m $MODULE 'platform-get-user-platform-account-closure-histories' \
    'oILTomzVEdqAFGju' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'GetUserPlatformAccountClosureHistories' test.out

#- 303 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '{"code": "RaB4ccMpIH8Lan5N", "orderNo": "y9rMiD8seoTU64hQ"}' \
    'TXu9MixCLkCkF4Gs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'ApplyUserRedemption' test.out

#- 304 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    '{"meta": {"Byu7ccqHPLY7Scjf": {}, "HWvp5yxoHDN8wbZh": {}, "TBvAeHGP8MEJHjkH": {}}, "reason": "XgaYcrI47DABOUyT", "revokeEntries": [{"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "9g0C7nE1t58LdpQQ", "namespace": "XSvH7kwH9PKAIEqR"}, "entitlement": {"entitlementId": "aoWkdV23II0TEDjW"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "NaXK6yInDEdr3Jfy", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 35, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "hki2j4K5qHkvYSU2", "namespace": "i8wpPg4f6CytNOpT"}, "entitlement": {"entitlementId": "cy8nFxnyUhq8QCAC"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "FsOpqr85xVvxj351", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 84, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "wOolqmdu4KlKLptx", "namespace": "5DKFWYNaRNbzpFsj"}, "entitlement": {"entitlementId": "JLszOiHFs5xAVg39"}, "item": {"entitlementOrigin": "System", "itemIdentity": "7fOIEm4CCHTjiJTc", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 81, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "JxdozQjrd9h3Kvse"}' \
    'GTWQwYHbgonXMWBg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'DoRevocation' test.out

#- 305 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    '{"gameSessionId": "wAHBLENBGh8mzbI7", "payload": {"UUQoj40AF05z6BC0": {}, "fH4BlyXE2K4uNJRg": {}, "Q3CCklU97KkomnjF": {}}, "scid": "aT7NQeCqpaKPJkOe", "sessionTemplateName": "zU2RemXA27tg6byp"}' \
    'XmwZRpU8Qcrmp46N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'RegisterXblSessions' test.out

#- 306 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'HHKuQExWorl4PYKJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'QueryUserSubscriptions' test.out

#- 307 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    '1GJKlZ26mxx5rFWC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'GetUserSubscriptionActivities' test.out

#- 308 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '{"grantDays": 60, "itemId": "ZASgNbyIgL74DNNI", "language": "ekar0ZUahrGZV8Wp", "reason": "FG2gRMkdKgCuxFa4", "region": "ix8vdZvwAMOmTtBE", "source": "JjCyABy7DKD883wa"}' \
    'e7z4E6bRC4ufnScs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PlatformSubscribeSubscription' test.out

#- 309 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'yhWe6QJ1Ov7wz26x' \
    'kkYYxgGLN3OJhmFy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 310 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'ZH05CCwf21Y2Taz2' \
    'uFpz174OkRp3BkdV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'GetUserSubscription' test.out

#- 311 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'bqgNrZPytIR58rTL' \
    'Npt4RpqpKk9toELR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'DeleteUserSubscription' test.out

#- 312 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    '{"immediate": true, "reason": "4cMw2Lh6XTFr1d0v"}' \
    '5MiCVrY2QOMJmNbA' \
    'v9VCU7hdDbGzcJKa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'CancelSubscription' test.out

#- 313 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    '{"grantDays": 27, "reason": "wsM434xCGXTsh5xy"}' \
    'deZADSKQFv0tnP05' \
    'L7Nwx1i8sHEbX4mI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'GrantDaysToSubscription' test.out

#- 314 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'domBVyorRK73vbWS' \
    'NBzkiEHyJEOg3iIj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'GetUserSubscriptionBillingHistories' test.out

#- 315 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    '{"additionalData": {"cardSummary": "U3AAg7WG2eTsmDaT"}, "authorisedTime": "1984-12-12T00:00:00Z", "chargebackReversedTime": "1977-12-04T00:00:00Z", "chargebackTime": "1998-11-29T00:00:00Z", "chargedTime": "1975-05-17T00:00:00Z", "createdTime": "1983-12-23T00:00:00Z", "currency": {"currencyCode": "4lxwyKbYKZdZvXUV", "currencySymbol": "ezIt3HezhSE8IGOa", "currencyType": "VIRTUAL", "decimals": 5, "namespace": "ievm4IDxtFXsff5u"}, "customParameters": {"ksqDpH01I9KImkc3": {}, "YwK5J3GyOQJLupcf": {}, "cMQlt7ssE0BVP1MH": {}}, "extOrderNo": "JQhmZHHktlLrVbhm", "extTxId": "9d4y2SbI0OO1ouou", "extUserId": "cz4taACOl097nqfM", "issuedAt": "1987-01-24T00:00:00Z", "metadata": {"4iGEw5EhhlxYtAWr": "3elzD6WKsCrHf4vU", "4AqkG2jU9DouFSA3": "CLtlE5PpY0ZXXFyG", "4988DpkyITbfvPjk": "pdcTxG4LMLOAiZC0"}, "namespace": "6KMQoJCvczbpTe8w", "nonceStr": "nvbAKMlJZvUxYzYB", "paymentData": {"discountAmount": 91, "discountCode": "cU28Tjo0XKr5KBD3", "subtotalPrice": 71, "tax": 45, "totalPrice": 4}, "paymentMethod": "TJ4Hn5XqA2kk1A3H", "paymentMethodFee": 75, "paymentOrderNo": "rxXt6ggKwWIYIm0y", "paymentProvider": "PAYPAL", "paymentProviderFee": 35, "paymentStationUrl": "wg4VTJpu64It1R6a", "price": 48, "refundedTime": "1971-02-24T00:00:00Z", "salesTax": 27, "sandbox": false, "sku": "VLrk3KBNBApNgT5f", "status": "REFUND_FAILED", "statusReason": "SoaZygiLJ4dBRmXw", "subscriptionId": "qKSWTRuDBWveCv1R", "subtotalPrice": 18, "targetNamespace": "EW1S9JMbrmE7zBsX", "targetUserId": "3PYLNcayR34iibMm", "tax": 23, "totalPrice": 9, "totalTax": 2, "txEndTime": "1981-04-29T00:00:00Z", "type": "vlF1mVrcAyqXXnKE", "userId": "tSQkLh10xq2zgtai", "vat": 13}' \
    'bgV76h8tj65I0OW9' \
    'DhwNHdSw93IumFyH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'ProcessUserSubscriptionNotification' test.out

#- 316 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    '{"count": 48, "orderNo": "gFezb1WOjy0XInTS"}' \
    'ZSMKJYcE585zPfpD' \
    'iAo4zAj1AgjctQkN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AcquireUserTicket' test.out

#- 317 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'A6tPxcpOjecMqPJv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'QueryUserCurrencyWallets' test.out

#- 318 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    '{"allowOverdraft": true, "amount": 98, "balanceOrigin": "Epic", "balanceSource": "IAP_REVOCATION", "metadata": {"6273TGlaOPmEdjp6": {}, "3KfNpB5Un5ObPhEk": {}, "6MRN6zzKPZLWVB4Y": {}}, "reason": "H2roupmMfATapsn4"}' \
    'uvJaBhPA5LWJipgr' \
    'vQaTdiKmmlpHUD2h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'DebitUserWalletByCurrencyCode' test.out

#- 319 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    '7I7UbUNrp02FBwxe' \
    'ZXuYnlq95T6quy9P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'ListUserCurrencyTransactions' test.out

#- 320 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 39, "debitBalanceSource": "OTHER", "metadata": {"ToPlTTR6ePboL66X": {}, "hyfKhLtqZR2r4RfV": {}, "Og9ZWFBw7Tk0E680": {}}, "reason": "aIGz1A2cXngjJWPf", "walletPlatform": "Playstation"}' \
    'nKIfYW2kPDBgq17E' \
    'lbCwKI3aXhSEFUvu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'CheckBalance' test.out

#- 321 CheckWallet
eval_tap 0 321 'CheckWallet # SKIP deprecated' test.out

#- 322 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '{"amount": 35, "expireAt": "1989-06-23T00:00:00Z", "metadata": {"uaNhVEaIWElcUTlM": {}, "DbUWJ5spS6gLd7l7": {}, "OF4v4RTLnsM4wpXh": {}}, "origin": "GooglePlay", "reason": "ThrZy4bUEBAVPV9L", "source": "TRADE"}' \
    '1BnhjtAikWfrrIad' \
    'sWMmGapPUenPlT7Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'CreditUserWallet' test.out

#- 323 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 18, "debitBalanceSource": "PAYMENT", "metadata": {"ACu1VGeRPwa2XfZ7": {}, "wxA0lvXbcZY7zXTd": {}, "KQkADYHyER3eNCfq": {}}, "reason": "yJ435IkibSzJGQta", "walletPlatform": "Steam"}' \
    'FC2SxEMchjQ84nuG' \
    '9DGOS5kQvK7NHpsI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'DebitByWalletPlatform' test.out

#- 324 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '{"amount": 56, "metadata": {"qXZd41KiSlLVmN9K": {}, "SbiFMGQMewQlUnkc": {}, "E3UYV2aj9PL4PQGJ": {}}, "walletPlatform": "Nintendo"}' \
    'ZqaNySvpXwMac489' \
    'Y6N0H6yn3PYiqbIB' \
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
    '{"displayOrder": 43, "localizations": {"Ji304rwbySnVTSdm": {"description": "qyftEYQl2xFFtZWl", "localExt": {"WKmQH3tI9yHxuaa0": {}, "zbT4NGP7Xy3gYPJQ": {}, "EukOcBtFyzW1aKe1": {}}, "longDescription": "5m4NorN2PP1hXmAL", "title": "wnidAmiLFK5Dwak0"}, "R9n1WBVWp96bYrG5": {"description": "ANSRCXWy9C2oM6ZV", "localExt": {"dGQt7ed5WKQJkzGQ": {}, "PBQoXpXVvDLulelX": {}, "30R2hPYkRArSfExo": {}}, "longDescription": "JMARmEC7Kyhtx4sY", "title": "sq0CbA1NZZ58G8Xr"}, "yw8bfE6VA6HEvqN7": {"description": "kX4VVVBS89UUbLl2", "localExt": {"ciimYDeDceMEtPkj": {}, "Yd9PNBi79WHorOJP": {}, "VoTCRV5enPlVeOc8": {}}, "longDescription": "uDGuA9ZVtPuyxsPG", "title": "oUCgc3BsZJVlVlew"}}, "name": "ocIRWjmJ81aRTbDo"}' \
    'FbYLVqxK4NVV4KPv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'CreateView' test.out

#- 332 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'i1IDd9h3DkrqAqSq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'GetView' test.out

#- 333 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    '{"displayOrder": 4, "localizations": {"fHZF17lZ95JmGny7": {"description": "g72f6SO7XayfUmZz", "localExt": {"42HE0t7TAQm0TGMk": {}, "4DmrwxC6EQr9lk8t": {}, "eEugVd3X7cq2K0e7": {}}, "longDescription": "A1xHVzxmePZ06tOq", "title": "oxMhyqIyPdnz3ReX"}, "TrC2sNANyInXnunW": {"description": "Nxg0gQztAjYiUb5S", "localExt": {"lpeaMDVE3ODebYRP": {}, "EkmK5ePPaacnQTuU": {}, "ibmiz8AhOGRIwwo9": {}}, "longDescription": "w06X6XzJiljntx5T", "title": "SAxNBchtcaaoKZYk"}, "4GlikyI0LGO0eNNg": {"description": "l7jdIf7ptoc5rPRs", "localExt": {"GFfGRRKQ4tLERFGo": {}, "pzQ87CbxAJ0xdAPF": {}, "rw8ssJejQ7qSiyUP": {}}, "longDescription": "Y0Gnwcv8NFIJFlyo", "title": "9htDZjjGZzNcLBzq"}}, "name": "Sh3UQrHYlWFx0rb4"}' \
    'eSExhChscwh8P6pe' \
    'jiRuUjCpBUL68KLW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'UpdateView' test.out

#- 334 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'ODgQ2gkEKZZQfGQJ' \
    'PF97t3thMfA2pxZ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'DeleteView' test.out

#- 335 QueryWallets
eval_tap 0 335 'QueryWallets # SKIP deprecated' test.out

#- 336 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    '[{"creditRequest": {"amount": 30, "expireAt": "1973-01-25T00:00:00Z", "metadata": {"UThoflsBWhnubnRO": {}, "vA1CxkXWIlkrF4cf": {}, "9E2pKWkX7et7rl9o": {}}, "origin": "Other", "reason": "SERaDf2LdzL9gMSg", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "YiBESlCYdNui4Afr", "userIds": ["Hsgjv4O66qvH38lY", "JuSaiOYxuj6n1UTU", "KeEiUS3GYxZHMK3y"]}, {"creditRequest": {"amount": 4, "expireAt": "1977-04-19T00:00:00Z", "metadata": {"M1cQEihWjWNwYN6x": {}, "eNeZMtT7f2d2NhlI": {}, "gGSvbXe1Hyw3mylk": {}}, "origin": "System", "reason": "USYZPYliicANHhXN", "source": "REFUND"}, "currencyCode": "FcZroi0QeG6cD8tr", "userIds": ["KLICuRvKGIR3uSMS", "KjrFSu4MOj7pBAbA", "yy1zY8VkZd3qEIVQ"]}, {"creditRequest": {"amount": 60, "expireAt": "1995-01-06T00:00:00Z", "metadata": {"3njfM3MLLEwpsdD0": {}, "knPNT7MZM5TUkTp4": {}, "6Y9LTNtGN9WUqYyT": {}}, "origin": "Playstation", "reason": "I3Y8spu5S6I5h9Aa", "source": "TRADE"}, "currencyCode": "f4tEBMWAIsbPmXPN", "userIds": ["dOlGrfTUc5ACZJjh", "2BAEzRa56radYcie", "Ch5Rfq2UC1TCPCsq"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'BulkCredit' test.out

#- 337 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    '[{"currencyCode": "P2aqyZJps39vNgtq", "request": {"allowOverdraft": true, "amount": 52, "balanceOrigin": "Epic", "balanceSource": "DLC_REVOCATION", "metadata": {"2OktaS7Id9oPGerp": {}, "ovdmW3j3eSpo6vhw": {}, "drFa4npr0qt5yxg5": {}}, "reason": "LXtD40RsibRBputN"}, "userIds": ["AcV0wHVw4OJZ9KRf", "K3ElT6izH6Pdx5D1", "ZrPFTEv91KnFOHx4"]}, {"currencyCode": "QGVt5sQ7M74MHRwG", "request": {"allowOverdraft": true, "amount": 11, "balanceOrigin": "Other", "balanceSource": "IAP_REVOCATION", "metadata": {"PhkYV72N58lwa3vX": {}, "LwnFGnmLjqORwHyI": {}, "3QRLhTWOcA2kF7G3": {}}, "reason": "yINinZ8QrU6nMGhT"}, "userIds": ["5oddK2chnQw6dRB9", "aYleh3D2r0PGvO0I", "GH5aAxTCbwpHq5b9"]}, {"currencyCode": "TYQLU6VNGYuzawgh", "request": {"allowOverdraft": false, "amount": 48, "balanceOrigin": "Steam", "balanceSource": "IAP_REVOCATION", "metadata": {"GV6FopCasHzSLbZZ": {}, "FVIz8Axh7D6vDwgT": {}, "WzfQZmZcPHcdeyMG": {}}, "reason": "ra3yLwQHFxeaeIRE"}, "userIds": ["Kg0DnxN18EaQxhuW", "KfKrgrQb1IEYi9kZ", "hajv4y7mpuDenMHv"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'BulkDebit' test.out

#- 338 GetWallet
eval_tap 0 338 'GetWallet # SKIP deprecated' test.out

#- 339 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'CJxPolhQomjBGEe1' \
    'V7Qe1VtpXfKrTUd4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'SyncOrders' test.out

#- 340 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    '{"allowedPaymentMethods": ["eK4cPdj9IYCmOOsk", "IKiuKPVqNdfcbarm", "jmzkYQMLffgy1mpc"], "apiKey": "59V2qKD8lNq4hOjr", "authoriseAsCapture": true, "blockedPaymentMethods": ["LoHszOIdSWIpaLpZ", "wnDkDw7Zrilk8Q80", "3RjC4wycgOIphhyd"], "clientKey": "YZ7NEwrSsI3cSyJG", "dropInSettings": "EsS9JnHfbeKOjYbp", "liveEndpointUrlPrefix": "Vv23JUwrktKue5lw", "merchantAccount": "0m8Evy70CBhCstkq", "notificationHmacKey": "yDQrrYVdLYuxdWsA", "notificationPassword": "QcRaz03FZ9YTDWnl", "notificationUsername": "XZ0fFMUOsM2D6XBE", "returnUrl": "fj5FBqjqhaVBjVf2", "settings": "bpiMDOiSWOpn2Cnq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'TestAdyenConfig' test.out

#- 341 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    '{"appId": "A45FZIkMYCCydNQh", "privateKey": "gapqGnYl698VRGqR", "publicKey": "2jdN2MQUBknTnbrD", "returnUrl": "6I10HAKBM66Ig4h5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'TestAliPayConfig' test.out

#- 342 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    '{"publicKey": "oxaA4ecsKGNruoLw", "secretKey": "9nJkDd0eeHTKcUcu"}' \
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
    '{"apiKey": "jMld5XM0y0hA8uAI", "webhookSecretKey": "GJlt6gj5YD5232Ju"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'TestNeonPayConfig' test.out

#- 345 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    '{"clientID": "steSb6Rq9qeFktXe", "clientSecret": "u9Xij04Bqjp8LL57", "returnUrl": "sci4swWJ6ouP7mWY", "webHookId": "1ug8s10bVJXCswqH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'TestPayPalConfig' test.out

#- 346 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    '{"allowedPaymentMethodTypes": ["9mC39RMuXDX1RgEk", "BolpVL29zMvjDniD", "n8AYrRRr985p7F8i"], "publishableKey": "N9R9kmB5pdeZ7PqP", "secretKey": "hviqqmJ2XxbkLOOW", "webhookSecret": "QT73tzAjekCOilOp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'TestStripeConfig' test.out

#- 347 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    '{"appId": "oouKkx1qj85bRrVw", "key": "uOnqEPcdhXj214ND", "mchid": "tW9jjIhrEmkNYBhe", "returnUrl": "QNR4zCS89KqvbOl0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'TestWxPayConfig' test.out

#- 348 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    '{"apiKey": "Dayb9zBS6MQ3orSy", "flowCompletionUrl": "b3fSoG1E1gohjzQB", "merchantId": 99, "projectId": 64, "projectSecretKey": "PVD8fgTZBggdAj0B"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'TestXsollaConfig' test.out

#- 349 GetPaymentMerchantConfig1
$PYTHON -m $MODULE 'platform-get-payment-merchant-config-1' \
    '017EuJVu3uC314IH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'GetPaymentMerchantConfig1' test.out

#- 350 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '{"allowedPaymentMethods": ["9MRg40yRzHF2sUxl", "gcXZZg9Qz8cBJEfD", "TE8ndimKYOwqvWgc"], "apiKey": "SMiL3ADcBZC1b1ul", "authoriseAsCapture": false, "blockedPaymentMethods": ["CEMbloZsrrwFc43B", "EFzGxzXRz9ek9cTf", "klLvhREHXR9ZyR0g"], "clientKey": "Yn2o0UsgX0kqqfQG", "dropInSettings": "B8T8wu0Hyqob2hEK", "liveEndpointUrlPrefix": "ozEd4P5Auq8Vd4w6", "merchantAccount": "txSKD5jHXOt6NIhH", "notificationHmacKey": "6zSxo8OYohg3GlW7", "notificationPassword": "2bmWwgdGm7u6jzl0", "notificationUsername": "5VURHB2aH1OBjSbR", "returnUrl": "TbA5ngX8nMk5seGm", "settings": "bg5yaV5LtdtmXxub"}' \
    'nK90It1WEpBd8W8y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'UpdateAdyenConfig' test.out

#- 351 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'L5eZhTnha9eiJsMl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'TestAdyenConfigById' test.out

#- 352 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '{"appId": "XtygrzG2QUljK667", "privateKey": "R7aO0dO8De9iVlq9", "publicKey": "yqguKMz482n0E7GA", "returnUrl": "Zv2XPO8DiNcJaVwd"}' \
    'Wa2ZFc4YAfXGVqii' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'UpdateAliPayConfig' test.out

#- 353 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'mFcca0MFCaLqc1H9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'TestAliPayConfigById' test.out

#- 354 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '{"publicKey": "pctBogeWR41LE3hN", "secretKey": "pOlQnLV2MdeaUWns"}' \
    'I5pKAFAjEaVGZXA8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'UpdateCheckoutConfig' test.out

#- 355 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'TH045L53XwwLUeWV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'TestCheckoutConfigById' test.out

#- 356 UpdateNeonPayConfig
$PYTHON -m $MODULE 'platform-update-neon-pay-config' \
    '{"apiKey": "f3gL2yczZXxdsLxT", "webhookSecretKey": "WwVPr4U5NXmKyOdq"}' \
    'ZZYELSAPxBDIEPT2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'UpdateNeonPayConfig' test.out

#- 357 TestNeonPayConfigById
$PYTHON -m $MODULE 'platform-test-neon-pay-config-by-id' \
    'GAxOHInufNkRydUB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'TestNeonPayConfigById' test.out

#- 358 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '{"clientID": "WF1Nh9i59vuR6CcS", "clientSecret": "zvItwdqe2s7ffSpc", "returnUrl": "1OxKg4Uf3g4nlTA2", "webHookId": "frzx3vb2Yn8hNVuj"}' \
    'I5u1ivKmyBtn9fNT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'UpdatePayPalConfig' test.out

#- 359 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '1GF6M2zSlbUz3WBH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'TestPayPalConfigById' test.out

#- 360 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '{"allowedPaymentMethodTypes": ["pFxzpkrOzs73jVKJ", "exWAazbTZ8xcQZYs", "CETX7eZJ4NO0fjNE"], "publishableKey": "PoyNa1H6pgh7vmRl", "secretKey": "xBjIqeBpbdOgQEla", "webhookSecret": "lEbCZEVCPO4CPfrY"}' \
    'jqZmUkz3Ex6g0nu0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'UpdateStripeConfig' test.out

#- 361 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'nDYcjNC6mnTmEkvG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'TestStripeConfigById' test.out

#- 362 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    '{"appId": "ygUoYZDyX1Xgjjnr", "key": "UVMhDfw4eyyzx2XN", "mchid": "h0EY35JVEQoV68gr", "returnUrl": "Ujl9Qae3pK8C8Cdt"}' \
    'Tw2J5ZQEu9BANVmy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'UpdateWxPayConfig' test.out

#- 363 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    '4KLyKRCKGC9EJ56T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'UpdateWxPayConfigCert' test.out

#- 364 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'gtZfrBCM5NKhIaT1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'TestWxPayConfigById' test.out

#- 365 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    '{"apiKey": "B5Rkbc6yUtoHNPAP", "flowCompletionUrl": "LpeC92ROlmtwrNVp", "merchantId": 53, "projectId": 15, "projectSecretKey": "MBx4SopAgGjVmLAR"}' \
    'men8aoqlm2gZZIId' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'UpdateXsollaConfig' test.out

#- 366 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'tBLCiRje56hQO7iH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'TestXsollaConfigById' test.out

#- 367 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DARK"}' \
    'raJoGjzdE2Gt5Lh1' \
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
    '{"aggregate": "CHECKOUT", "namespace": "X7eWoUz63g5ldLNv", "region": "DsFRxvIWPhDHlgui", "sandboxTaxJarApiToken": "wW43ftI0abvQQBya", "specials": ["ALIPAY", "ALIPAY", "WALLET"], "taxJarApiToken": "fShTgH7QU5U5VKMg", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
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
    '{"aggregate": "STRIPE", "namespace": "sbQFx7poAiVGM1Z1", "region": "aMlYKe0aIgnVNiSD", "sandboxTaxJarApiToken": "k2FZXq6OW9kp9JuO", "specials": ["WALLET", "PAYPAL", "PAYPAL"], "taxJarApiToken": "cn1hnFXSNkph88N5", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    'H5BZrTsNJRR5uMT5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'UpdatePaymentProviderConfig' test.out

#- 374 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'lIHTRyEidwdTqJoL' \
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
    '{"sandboxTaxJarApiToken": "D9kVnRYM4lgdcOb3", "taxJarApiToken": "Jx4X529dtXtK0d0n", "taxJarEnabled": true, "taxJarProductCodesMapping": {"d4FbsuGGAOCvNpKR": "5WiIdTzoKekJyqR0", "OkuudBwFtKhDkRzY": "1NTTWWM1JAu58gWd", "Nz0xp2PHIttdH5Oo": "XEL1xP0tQEooU046"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'UpdatePaymentTaxConfig' test.out

#- 377 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'EL2HqNuu1OPm9hwP' \
    'frlE7xqyfwWmTGhw' \
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
    'yWJ7EAB7kGxNwO0Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicGetCategory' test.out

#- 381 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    '3aq4k3vORHgbQI9E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicGetChildCategories' test.out

#- 382 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'qFrhz872allb2jaR' \
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
    'OCULUS' \
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
    'gNxUznu6Mjx3XgwC' \
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
    'S1yYFaMMSsZH370Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicGetItemBySku' test.out

#- 390 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'WAB8aAtASkEknQOB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicGetEstimatedPrice' test.out

#- 391 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'TBGEdEfyK3mIRHA7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicBulkGetItems' test.out

#- 392 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    '{"itemIds": ["4vLT0RK95W5F4wbg", "jwLQ0g8wHSHjSLr6", "q5SdMiLPibZ6RvJ4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicValidateItemPurchaseCondition' test.out

#- 393 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'FpirWyaX4XU6HXjJ' \
    '8oZkH55s6PT6eXj6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicSearchItems' test.out

#- 394 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'a4a2T55JSy63UIiI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicGetApp' test.out

#- 395 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'CbL0NSbXYXl80IXa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicGetItemDynamicData' test.out

#- 396 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    '09qvdnZbUJ9uSIJA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicGetItem' test.out

#- 397 GetPaymentCustomization
eval_tap 0 397 'GetPaymentCustomization # SKIP deprecated' test.out

#- 398 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    '{"neonPayConfig": {"cancelUrl": "uvbRoyVKQWhRCa4M", "successUrl": "eqaWAGntKi5VcfdJ"}, "paymentOrderNo": "HSQ99MzsmCz9csPD", "paymentProvider": "NEONPAY", "returnUrl": "R8Jo6PYMB78PcooW", "ui": "LEHt7SGsO6cJrH6H", "zipCode": "0hqUIDOC2lhvjQbx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicGetPaymentUrl' test.out

#- 399 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'J8kMyYjTMwxUt8Wn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicGetPaymentMethods' test.out

#- 400 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    '0bPEgnVesvMZCUgM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUnpaidPaymentOrder' test.out

#- 401 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '{"token": "3yTN4uuJ6Vj8z7NX"}' \
    '74cqoA0EYfSvI7ek' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'Pay' test.out

#- 402 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'nvgQgx9Q8w3YQS19' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicCheckPaymentOrderPaidStatus' test.out

#- 403 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'NEONPAY' \
    'VwavR2tWflzm98aj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'GetPaymentPublicConfig' test.out

#- 404 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    '22sDOpjchReV2Sgd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicGetQRCode' test.out

#- 405 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    '0wMGZHEIFdrXoIku' \
    'JvjMnmfWaKU8Ip9Y' \
    'STRIPE' \
    'yPnCtNFzlKslVxao' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicNormalizePaymentReturnUrl' test.out

#- 406 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'mke2UPriXGZvs3Nm' \
    'CHECKOUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'GetPaymentTaxValue' test.out

#- 407 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    '1Oq88IVmlOYuPb1a' \
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
    'Uarkc4H54D1OSJ3c' \
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
    'WczEEGO3c34uFmlM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 413 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    '5vFocITDTP5pBOko' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 414 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    '0gsrX5YmIHaEjuL7' \
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
    '{"gameId": "g0PIjLnAoNjzCHCU", "language": "ADtw_knSN", "region": "kD8LYM65VLZiKm15"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'SyncTwitchDropsEntitlement' test.out

#- 417 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'hez2MgriZ60A9qKA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicGetMyWallet' test.out

#- 418 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'CSJnrZAWDQGJdqaQ' \
    --body '{"epicGamesJwtToken": "6yjAOKmxscQRCmbW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'SyncEpicGameDLC' test.out

#- 419 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'Tm1PRgpzXRHuGgWo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'SyncOculusDLC' test.out

#- 420 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'SnSmEo0dL02zFIdA' \
    --body '{"serviceLabel": 85}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicSyncPsnDlcInventory' test.out

#- 421 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'ICQMUv3sTgdlBfaa' \
    --body '{"serviceLabels": [92, 93]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 422 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    '{"appId": "RVKzwWqYcgoQp44I", "steamId": "wVEXXg779DcEb5nB"}' \
    'VeAEY89xEnoKKlyP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'SyncSteamDLC' test.out

#- 423 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'taGSVNlRTRrauD2s' \
    --body '{"xstsToken": "fxOt0yIgL5CqZtwn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'SyncXboxDLC' test.out

#- 424 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    '2hSKKZvM4WSz7P7y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicQueryUserEntitlements' test.out

#- 425 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    '5q6uDaCx8hxTiqpn' \
    'tZvRypScQ8aIsboq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicGetUserAppEntitlementByAppId' test.out

#- 426 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'QidXJhhgBD6TwYNv' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicQueryUserEntitlementsByAppType' test.out

#- 427 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    'RH2T1hELaFk76mJb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicGetUserEntitlementsByIds' test.out

#- 428 PublicGetUserEntitlementByItemId
eval_tap 0 428 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 429 PublicGetUserEntitlementBySku
eval_tap 0 429 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 430 PublicUserEntitlementHistory
$PYTHON -m $MODULE 'platform-public-user-entitlement-history' \
    'RjfhXvXWtnbIyFuv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'PublicUserEntitlementHistory' test.out

#- 431 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    '556ws3j4fKGtROyx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'PublicExistsAnyUserActiveEntitlement' test.out

#- 432 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'uJkOFydDf9m3LSEj' \
    'LNMoKjXyYTCslAon' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 433 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'KsZdA911KfPQTy8l' \
    'x4YW9P4FFVdYJ2w3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 434 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'OGPS9CdMQW1gop8x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 435 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'EB5Wri70hzuPPRNn' \
    '7bSYv9Fk7PATOx8N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 436 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    '4N4Dg5mDZyNmi9Ne' \
    'e8E16CJURxlwSvm0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserEntitlement' test.out

#- 437 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "options": ["pK4Oh0DUc9D8rncl", "oMb1yETgQxGUEwv8", "hzsmReJ5mzZVaR7d"], "requestId": "mubH0qAuhWzVV19I", "useCount": 81}' \
    'lRlaYwp4MNvBgT09' \
    'Pvx7f7SN0lAsIrtT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicConsumeUserEntitlement' test.out

#- 438 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    '{"requestId": "kAPhRsCrtV0KHq6V", "useCount": 38}' \
    'pmqXtI1ea94zZAdF' \
    'CTO6FC2QUf0Whdcu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'PublicSellUserEntitlement' test.out

#- 439 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 77}' \
    '4saje9BnJ8xXUB2j' \
    'gA8fRXdoImFIj7wm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'PublicSplitUserEntitlement' test.out

#- 440 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    '{"entitlementId": "EGJ3sRDNuaHQZFDy", "metadata": {"operationSource": "INVENTORY"}, "useCount": 53}' \
    'earFrFMIeo9PYRTx' \
    'SprB0BtuiJEqmbaR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'PublicTransferUserEntitlement' test.out

#- 441 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '{"code": "x6F3iux9udWaDYHS", "language": "Eef-XFOV-792", "region": "BJ0JFvU4TSVKe3ye"}' \
    'keHdH8HulMLwKFaD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 441 'PublicRedeemCode' test.out

#- 442 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '{"excludeOldTransactions": false, "language": "YOFy-rRrD_202", "productId": "WrAxnE6M2ryxqcxk", "receiptData": "HbchAPo9rtjQ5kvw", "region": "n03vGAW804TWUV2H", "transactionId": "AG9BYa4uwQ0r4tGU"}' \
    'p00rMLZ1eTfmUwkG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'PublicFulfillAppleIAPItem' test.out

#- 443 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'YQeInkHcPjNEn2se' \
    --body '{"epicGamesJwtToken": "1yYqxystC5YdtXrM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'SyncEpicGamesInventory' test.out

#- 444 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '{"autoAck": true, "autoConsume": true, "language": "CY", "orderId": "piMtnYep4qMEijH0", "packageName": "7e7HJsG6fiR0imQt", "productId": "0JNbgDRBXsG5NNHr", "purchaseTime": 30, "purchaseToken": "oIyM4jQ307TKpWz4", "region": "d2uiESs0ypsuzcbl", "subscriptionPurchase": true}' \
    'Dtn32tNBisbkvUfm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'PublicFulfillGoogleIAPItem' test.out

#- 445 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'hkAHdGDOTSucllEU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'SyncOculusConsumableEntitlements' test.out

#- 446 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'Rtdq3O6BR25zA3Ga' \
    --body '{"currencyCode": "AcY14lwQ2mYznYkM", "price": 0.1382444698277019, "productId": "U0vVreF40rVDDwsR", "serviceLabel": 11}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 446 'PublicReconcilePlayStationStore' test.out

#- 447 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    '{"currencyCode": "m83ei0Y4vfACaZq3", "price": 0.6289527815901883, "productId": "9FhVaHT51CYJCZK9", "serviceLabels": [1, 53, 22]}' \
    'ACBMfO0XbcSowirO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 447 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 448 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '{"appId": "9ad7UJNTw4TVlSOA", "currencyCode": "7hqkUzpJrfvCl5rW", "language": "poY", "price": 0.20892506255061283, "productId": "zO2FoQfKpeRnDp96", "region": "Q4Kc2SuWvtgC60a1", "steamId": "W5NbXGzAcTpSSar2"}' \
    'yACKSgTLLhfpe6fO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 448 'SyncSteamInventory' test.out

#- 449 PublicQueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-public-query-user-third-party-subscription' \
    'EPICGAMES' \
    'sJ2ndqYrqlR22SxG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 449 'PublicQueryUserThirdPartySubscription' test.out

#- 450 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    '{"gameId": "w0BBGpL3uAigOFar", "language": "xtF-rJft", "region": "G992PUNJjyBkLHCJ"}' \
    'w8ZxKr2hhzSgEVDT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 450 'SyncTwitchDropsEntitlement1' test.out

#- 451 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'chtwhQp2LAjJuLgI' \
    --body '{"currencyCode": "QF5kRUjrmuhxZB5A", "price": 0.1555218214968147, "productId": "ldy64tvczW9hkNRJ", "xstsToken": "KsIQO6Rf71ujkaWD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 451 'SyncXboxInventory' test.out

#- 452 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'qUU627KpJnSnPzwl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 452 'PublicQueryUserOrders' test.out

#- 453 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '{"currencyCode": "grOizTeAjnOyPNIV", "discountCodes": ["w3l4lq6EBsgRIweA", "PxuMiEWl2YYuziEA", "JUroJ8CWZayKnRlY"], "discountedPrice": 69, "ext": {"eUFWrh0jQ4KIS0c5": {}, "TxMgqbcYaXxQuiMi": {}, "8sc8nnqOjusG91vB": {}}, "itemId": "xBCUBoebiWj66Ddv", "language": "VLG_iNRJ", "price": 20, "quantity": 99, "region": "TjPlHf8VEuKiETik", "returnUrl": "SvZCHvMYNoHqAWl8", "sectionId": "2R5St1JUUoBHxMWn"}' \
    'M14FYcClCU4wN753' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 453 'PublicCreateUserOrder' test.out

#- 454 PublicPreviewOrderPrice
$PYTHON -m $MODULE 'platform-public-preview-order-price' \
    '{"currencyCode": "otU8VIKaNC4jAc6z", "discountCodes": ["RSjODCVkXOSEqmrC", "lm5hUGLvZiKzCHyQ", "ZYFC0mjfQGtP1pKt"], "discountedPrice": 36, "itemId": "Js3MYpXMKKRnnXfC", "price": 64, "quantity": 18}' \
    'KNLEWSf3xcBSJmVJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 454 'PublicPreviewOrderPrice' test.out

#- 455 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'zcCB0Zx2kIBmEY9A' \
    'GikaZJ2fla7ViPnP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserOrder' test.out

#- 456 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'IspBwL7FLtMU7AAR' \
    'IZojppBuCblNaT5z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 456 'PublicCancelUserOrder' test.out

#- 457 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'rESuLoU4WFfjqhTf' \
    '020WVESn3Lq3vc3O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserOrderHistories' test.out

#- 458 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'NzvBgKDPEX7ZirJa' \
    'KrszETGuWESPDCrs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 458 'PublicDownloadUserOrderReceipt' test.out

#- 459 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'w8wGhpJWYgTBMAqn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 459 'PublicGetPaymentAccounts' test.out

#- 460 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'V7TlTDpCts9eLzVb' \
    'card' \
    'wrWclMIjyB9r93Vg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 460 'PublicDeletePaymentAccount' test.out

#- 461 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'Ac9QZ9C2WWUGboRh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 461 'PublicListActiveSections' test.out

#- 462 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'myUZ7K1izC3Lzjpb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 462 'PublicQueryUserSubscriptions' test.out

#- 463 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    '{"currencyCode": "ZYwmB6mjB4WLkFEb", "itemId": "z1aaXClnbKhW1gHj", "language": "SQIu_144", "region": "3oVzLj603LYJG09e", "returnUrl": "H9Vq6reV8sJenmhe", "source": "K5KKqE1aHxZgS8uJ"}' \
    'AsbAxWxy80okxaYa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 463 'PublicSubscribeSubscription' test.out

#- 464 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'NSXzxd2oRSinjIKU' \
    '2N42M5XJnyM5TvM5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 464 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 465 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'NJ9UFoefZdeND5Ea' \
    'hSZeodABnaVuUHHB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 465 'PublicGetUserSubscription' test.out

#- 466 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'tfHmq5d54tGJLHnn' \
    'QAM0DREcq6d87tbC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 466 'PublicChangeSubscriptionBillingAccount' test.out

#- 467 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '{"immediate": false, "reason": "xGCZTRsbLMecwQkE"}' \
    '2St3jReFAEQ1wUcm' \
    'mNn9QvtiE6T5Ro5O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 467 'PublicCancelSubscription' test.out

#- 468 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'B4S56HA4d8Wj62EG' \
    'WzEbs46rc22tQQij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 468 'PublicGetUserSubscriptionBillingHistories' test.out

#- 469 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    '2Hme0GGfP6uytyYg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 469 'PublicListViews' test.out

#- 470 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'ZsusP2SPDjVIfftS' \
    'xnreb8TQnxnon3dB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 470 'PublicGetWallet' test.out

#- 471 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    '05wGQYx86tv0QClm' \
    'xWgu3QfhTr7idEkK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 471 'PublicListUserWalletTransactions' test.out

#- 472 PublicGetMyDLCContent
$PYTHON -m $MODULE 'platform-public-get-my-dlc-content' \
    'STEAM' \
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
    'nDGue6g9jqZCmyvD' \
    --body '{"itemIds": ["6hehEvadSH1guIXp", "IMMb5aCPbxlBpLPz", "m0ZpTtsmzJtuOWKZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 476 'ExportStore1' test.out

#- 477 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    '{"entitlementCollectionId": "OaSMJHAxVRHDzHpH", "entitlementOrigin": "Twitch", "metadata": {"665Va0hLs3hBUqY3": {}, "Yu7hr4BXCjFsJCGW": {}, "DLfbEBX1fDFq8rcY": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "270K70e3tmMl0aJw", "namespace": "JFaCvge5OzI8XNrS"}, "item": {"itemId": "x9JCxN4prJ1YNwel", "itemName": "ndOCI9YnUiShlx9P", "itemSku": "k08ti5dm4vsmWwxe", "itemType": "V5ju6lVC5woVY5O6"}, "quantity": 92, "type": "CURRENCY"}, {"currency": {"currencyCode": "lfNRSaYyKg9YnuBS", "namespace": "XnOHRbF4YesbUpxG"}, "item": {"itemId": "fZJIyifvwmr3YdfX", "itemName": "LG9siT3PGKK823NQ", "itemSku": "r5vYDp16dqn25YYa", "itemType": "UnMns2rAgvMe8884"}, "quantity": 60, "type": "CURRENCY"}, {"currency": {"currencyCode": "t7OWinIu82m9kXRK", "namespace": "vyQzliANA50CJxHu"}, "item": {"itemId": "5PfEPcGntuS4L5Cj", "itemName": "iqCS4e1g0qaRNKlY", "itemSku": "RZvjD4HQB0YyrKNt", "itemType": "7vK3ElLq6qbXSAmG"}, "quantity": 25, "type": "CURRENCY"}], "source": "PURCHASE", "transactionId": "HafpdFCVQ33tE9ZM"}' \
    'Z7dDUb3xQHAKaroE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 477 'FulfillRewardsV2' test.out

#- 478 FulfillItems
$PYTHON -m $MODULE 'platform-fulfill-items' \
    '{"items": [{"duration": 76, "endDate": "1976-03-28T00:00:00Z", "entitlementCollectionId": "cEsfkqADxDJekvCk", "entitlementOrigin": "Playstation", "itemId": "1p0o3UycSZQVy88s", "itemSku": "wSqo64vyAZWdK1mq", "language": "L00vgrlsz3iDMttQ", "metadata": {"b0e0hIOG3ck0l8mO": {}, "K0kpUyeNZKy2iBQo": {}, "tCRSvH1Da6ph8feF": {}}, "orderNo": "AQdPnACAmtiWRzvY", "origin": "Twitch", "quantity": 93, "region": "UsYMz1jDEdxhs9Fx", "source": "IAP", "startDate": "1990-07-11T00:00:00Z", "storeId": "ZjEYGeuqo7IFvww7"}, {"duration": 64, "endDate": "1987-02-10T00:00:00Z", "entitlementCollectionId": "27fof6S1Rehi3ZZ7", "entitlementOrigin": "Epic", "itemId": "fBWIGruii3QdmRaN", "itemSku": "DlR1T3oWQcENhwdI", "language": "RZ2k23rtJU0TZTwg", "metadata": {"ZLJPddQRq4snlpfQ": {}, "Ta0wBlJwb8gc7EIB": {}, "JIKoubLJP5UIfhGf": {}}, "orderNo": "CHQ5GTdjvw8KQZ00", "origin": "GooglePlay", "quantity": 63, "region": "JM1CfnjdHJX3yCxh", "source": "IAP", "startDate": "1977-05-02T00:00:00Z", "storeId": "O1Q9vB9Rk5lE0jBa"}, {"duration": 14, "endDate": "1983-05-29T00:00:00Z", "entitlementCollectionId": "HgSbImHW11IEk63C", "entitlementOrigin": "Nintendo", "itemId": "JpaYZ5XmkLfftq8T", "itemSku": "tIM2PLDNr5OkNSeT", "language": "uk5fLc0rovY832Um", "metadata": {"v7u1YlkQNEVsJzUP": {}, "CRam34YuUk280BxA": {}, "xexZB4EErArsCARm": {}}, "orderNo": "VlNfne35Jx8S9YCi", "origin": "Playstation", "quantity": 57, "region": "zEWcOfLKVkXlzMBM", "source": "REWARD", "startDate": "1992-03-23T00:00:00Z", "storeId": "0EhLgAiPA3yIE2iR"}]}' \
    'HDV6KTBcyqAgjLhY' \
    'xqBLkJqCtqM0OxYq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 478 'FulfillItems' test.out

#- 479 RetryFulfillItems
$PYTHON -m $MODULE 'platform-retry-fulfill-items' \
    't9ra55fBFv8Nk1GK' \
    'lklpO9ogE1Lt4Tvd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 479 'RetryFulfillItems' test.out

#- 480 RevokeItems
$PYTHON -m $MODULE 'platform-revoke-items' \
    'OQZC7HKktfQ6izlw' \
    'Jt4IiNBTayfr2v76' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 480 'RevokeItems' test.out

#- 481 V2PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-v2-public-fulfill-apple-iap-item' \
    'UxMaLP7RdiZOl8iP' \
    --body '{"transactionId": "lKL1fE7RH7T598FV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 481 'V2PublicFulfillAppleIAPItem' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
