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
platform-query-entitlements --login_with_auth "Bearer foo"
platform-query-entitlements-1 --login_with_auth "Bearer foo"
platform-enable-entitlement-origin-feature --login_with_auth "Bearer foo"
platform-get-entitlement-config-info --login_with_auth "Bearer foo"
platform-grant-entitlements '{"entitlementGrantList": [{"collectionId": "hOrHflIOd6X3viLv", "endDate": "1980-05-08T00:00:00Z", "grantedCode": "Ek4mTIpUA9gxo8SV", "itemId": "38nEhoXmM2W7l6jH", "itemNamespace": "MA2rG3nakopAywel", "language": "sQd-490", "metadata": {"0NqoTow0qiOiC4j0": {}, "iktm0ZPLkLOsp0LZ": {}, "5njN86Hl8kUXzt6b": {}}, "origin": "Epic", "quantity": 5, "region": "9lvccKMLhrTrcBE2", "source": "REWARD", "startDate": "1982-06-11T00:00:00Z", "storeId": "rAejcq2LgkQuaS7R"}, {"collectionId": "Bx3vim02jBOxrZDy", "endDate": "1982-05-10T00:00:00Z", "grantedCode": "qx8CzPML52faXUr9", "itemId": "Sk4lq2faBcAXXKlh", "itemNamespace": "vyH8paOJtxqMPpcV", "language": "tX", "metadata": {"ncceIZSwgAIkgzh4": {}, "pTU0Am4DZhl0bQxF": {}, "J3sWCqQpQ2FbKPFM": {}}, "origin": "Playstation", "quantity": 24, "region": "cMSQ4qfAacR0LgB5", "source": "REDEEM_CODE", "startDate": "1987-08-15T00:00:00Z", "storeId": "Xvjcu2s6w3VifnKq"}, {"collectionId": "mTSoGH1XEfY6QAYn", "endDate": "1996-12-15T00:00:00Z", "grantedCode": "Q5UBEU1QAOHfZiGh", "itemId": "xOdcuDXSxSc3aZPV", "itemNamespace": "87pna08gxefTYKhu", "language": "HAE-oxnY_de", "metadata": {"6ePeN8i4GrFES9z7": {}, "xueHpATHccee9GXh": {}, "KcjmSEwdrkEnnqKz": {}}, "origin": "System", "quantity": 74, "region": "sLfYalUlfwEQKjU7", "source": "GIFT", "startDate": "1980-09-29T00:00:00Z", "storeId": "fF3TQN0OcNDLr36v"}], "userIds": ["4bYXEcENx9xZlAch", "LTyU8OhgfY9JQYGF", "zohZyjMQAg5mPYhr"]}' --login_with_auth "Bearer foo"
platform-revoke-entitlements --body '["ob44lONDDwMvgI0H", "lyPR7wZNiVsF6xG2", "mXEQdbzIVy8alncV"]' --login_with_auth "Bearer foo"
platform-get-entitlement '7vWgSHdfo07UctPE' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-query-iap-clawback-history --login_with_auth "Bearer foo"
platform-mock-play-station-stream-event --body '{"body": {"account": "rqxyMyOK06MqQBEr", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 47, "clientTransactionId": "eoc8fgvZDDhoO05o"}, {"amountConsumed": 75, "clientTransactionId": "g0DjQjBECXvea7H1"}, {"amountConsumed": 24, "clientTransactionId": "EiwxxElpMYSWIeVz"}], "entitlementId": "m7z9noowmlTIKVow", "usageCount": 16}, {"clientTransaction": [{"amountConsumed": 21, "clientTransactionId": "0RY2VN4ZONJREdUQ"}, {"amountConsumed": 39, "clientTransactionId": "z9F1BxNNgnke4akn"}, {"amountConsumed": 4, "clientTransactionId": "lrjcHp6B8Vj7rXFg"}], "entitlementId": "DnDkdZ9bpjb1tdA3", "usageCount": 88}, {"clientTransaction": [{"amountConsumed": 18, "clientTransactionId": "hjCMW64f4XhIjSoT"}, {"amountConsumed": 56, "clientTransactionId": "77AtYoFzLAATPY8P"}, {"amountConsumed": 84, "clientTransactionId": "zTxBGtEJIYppuUSs"}], "entitlementId": "KoHw2hyd12uSE7BE", "usageCount": 44}], "purpose": "rX2MVUGKSZ4GcLkt"}, "originalTitleName": "4pK32sJxlZcCTpTd", "paymentProductSKU": "RtCHvuk6B6XTmSLy", "purchaseDate": "n50sigBVZxiKdV57", "sourceOrderItemId": "GvRyd9UuL02Le8HS", "titleName": "CslsDd4M1F5qRIbl"}, "eventDomain": "S7Nz81GRazPAANjf", "eventSource": "BoldFOyqA2clJ5gE", "eventType": "OaCgM6Yn6RugbNEI", "eventVersion": 32, "id": "czdt7zqmSKxOEQlV", "timestamp": "cx6GqsBq8vdhWVnu"}' --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config '{"bundleId": "YLgpZehK0G2nmyuV", "password": "iB9kRTcSQdTnNYGe"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config '{"sandboxId": "AfYFG3wSkHKufBdS"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config '{"applicationName": "3ZOokZB4cXnAXyuG", "serviceAccountId": "z6LlxHv8SwyagYvD"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config '{"data": [{"itemIdentity": "J3w3UNgIGj2jZtEY", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"8sIPSE1XXPzySa0s": "ZoFS6xCOWMpyh9pM", "sQgb64ELbzDMwyo4": "nIRysQdbufXjYnSo", "IFeouC2m38kXrDZW": "lGVE9sJ4NpUtKp6M"}}, {"itemIdentity": "9I6nEwnZhsjwJeGw", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Bo4FUTH7CGfKSyxg": "RR1DiCqSMzpqIFGL", "kDs7ACC1RgBfoNrH": "lFi2qJLgmBLE35Yh", "yiDV90SeI5yppBHo": "ytVznCgNyx9fbT63"}}, {"itemIdentity": "ShEh8PbGikLjgjcj", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"ATLpUpxeJlsBJT6H": "h3OMjAjq2mK8lbSE", "Eelxnb5QxWG2HFnZ": "lA6HKWW4fI1IQcoB", "QELcNlZkqTZrKgXN": "wvm4e5GX6H742Oix"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-oculus-iap-config --login_with_auth "Bearer foo"
platform-update-oculus-iap-config '{"appId": "htAoKiVm6URT95Xh", "appSecret": "nUcvWB28MpusuhhD"}' --login_with_auth "Bearer foo"
platform-delete-oculus-iap-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config '{"backOfficeServerClientId": "J5slzgiWZEtyd56L", "backOfficeServerClientSecret": "fxnbY97jjYgXchCb", "enableStreamJob": false, "environment": "7eGL5YhJDWh9YWqc", "streamName": "0qgV6d9yOfIMLds2", "streamPartnerName": "DbPcaoMdtRLTmSvT"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-existed-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-playstation-iap-config '{"backOfficeServerClientId": "kQQgB7exYvmHMxr5", "backOfficeServerClientSecret": "hPCJJztJBg0tTJg4", "enableStreamJob": true, "environment": "IewOXE2AkCh3QIZs", "streamName": "Uf8lGFXcmwTERHcl", "streamPartnerName": "OdxIwqejxe18rNdb"}' --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config '{"appId": "8Otq6j1mqUav7k05", "publisherAuthenticationKey": "HAQltnSojV4jT65y"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config '{"clientId": "clX2FtAz0vJjFIYW", "clientSecret": "OaNdsimmkW2miH3x", "organizationId": "RHAKy4QxZkaXZ7vm"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config '{"relyingPartyCert": "iEd0JPxVyQpshaDw"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'NqTbbFMXAMfVXe0G' 'ZeMgsRsmH1EQrYmk' 'PKTPOlhTtSiZNCxu' 'COINS' 'YN2NVL70Iw157g00' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'jr9b8MuYmmeKTmBN' 'vGYxEQdf3ewoGGoY' '7xmFNAmjDDCvs78m' 'APP' 'aKEfkoYjY2o6ouRW' --login_with_auth "Bearer foo"
platform-sync-in-game-item '{"categoryPath": "9UtNquwC3WgumrIz", "targetItemId": "4NhGztZpr4U4fwQI", "targetNamespace": "iLXgmRasvjO4lj8m"}' '3XEwP2b4gd3xOeii' --login_with_auth "Bearer foo"
platform-create-item '{"appId": "8Jnmssep2xD2NY0k", "appType": "SOFTWARE", "baseAppId": "j3cvRFaTC11W0TGT", "boothName": "Cm4fZWuk6pQxDQpK", "categoryPath": "qxLGeMvr9TsvcMQ7", "clazz": "dBsaIecRxIsZvD6r", "displayOrder": 25, "entitlementType": "DURABLE", "ext": {"zVr5XT1Nxw0v1dMQ": {}, "9Rrbk6C2cVWf6ttv": {}, "bU1PO6ApCD2VXidT": {}}, "features": ["7w0Oc15N8WXBPp17", "np8jXZedgt5cyNe2", "PAewqSm5x3B4t7WQ"], "flexible": false, "images": [{"as": "HLtwtVOaxgP6Jbct", "caption": "8puMybYGxD9IPmms", "height": 76, "imageUrl": "oDtsUuYo5p8ED5QZ", "smallImageUrl": "AufwNa8lzfjv9oYM", "width": 18}, {"as": "MjlVHY1AHwF3vGoa", "caption": "v7MK0PcLnEkcokKw", "height": 4, "imageUrl": "imNhcZsU3VAdMDcb", "smallImageUrl": "4qlkiFAamqvZI2Kw", "width": 20}, {"as": "OrVSnLocLVVYamQc", "caption": "4wcG5nDBLJoJHbiQ", "height": 43, "imageUrl": "duE5p4cfs2E41cK8", "smallImageUrl": "QTwiIAvxSvNDlmM5", "width": 27}], "inventoryConfig": {"customAttributes": {"9BzupBsFpYc77GtR": {}, "UcCFeY5g4XgBsbfz": {}, "qxBPNe8ae1Il4aAt": {}}, "serverCustomAttributes": {"Ebu4IjGdqthRxTjQ": {}, "7gkZEY8rG0q0Q2Qd": {}, "2JzRbkF2I03dIjvB": {}}, "slotUsed": 2}, "itemIds": ["ZxF8CmQr17W65br3", "4rBBN9tU6TDm5Glo", "FSKWM1eym5ydC6p2"], "itemQty": {"5xCWTqUOYZENJ1QH": 34, "QxPRXH7uxBJEECQE": 23, "iZgbwwm5iGzXtckn": 35}, "itemType": "CODE", "listable": false, "localizations": {"dwCkZwqjYLfTiCO1": {"description": "NDBvQvRPnAz4VzW0", "localExt": {"CpoBCbyJsF5IjF1c": {}, "0W338HS6CBgVRyih": {}, "YNZ84CVhziXV8HwS": {}}, "longDescription": "mvcvcDKF19yVRafC", "title": "jOuSYht83AdvBaag"}, "TiRJ8daGTVX3Bb7j": {"description": "lz5IfHgKjI9mwJSr", "localExt": {"N8jkIykR2zbaI6PD": {}, "7fEscShnGUGUtV9G": {}, "J279GDbLNwjm3FK0": {}}, "longDescription": "nnX2poMfZ1hDHtbh", "title": "4HtMlFgvh2Dp2Soi"}, "IPp1yvfAHS0VgLu1": {"description": "1A3HTovFi4tPAGfl", "localExt": {"eyCA6jEtcqsnzoVI": {}, "LjkwW61duF87aUyr": {}, "dt4XSpWBAetsanzq": {}}, "longDescription": "P8oxfrtbECD1CYPw", "title": "aiBAxfYL8Avt70ZU"}}, "lootBoxConfig": {"rewardCount": 92, "rewards": [{"lootBoxItems": [{"count": 26, "duration": 12, "endDate": "1972-12-31T00:00:00Z", "itemId": "gwC3IN6tvKgLB9Qm", "itemSku": "JIOq9dP5szG71utj", "itemType": "sQ4CrRb9gUCeVz7f"}, {"count": 32, "duration": 3, "endDate": "1996-04-21T00:00:00Z", "itemId": "IdhevfZvyV7Acodc", "itemSku": "ZwKjYDdmJOlzwm9S", "itemType": "u4FnS98QqftSjq7s"}, {"count": 27, "duration": 44, "endDate": "1986-07-17T00:00:00Z", "itemId": "Lil8wj9cKM3Ar6MF", "itemSku": "35hCER4nGmWGgTJf", "itemType": "HlJl4tHGa4XfZcd9"}], "name": "CVnGqMX9FieeEssW", "odds": 0.4999617873158254, "type": "REWARD_GROUP", "weight": 24}, {"lootBoxItems": [{"count": 42, "duration": 2, "endDate": "1981-02-28T00:00:00Z", "itemId": "uoVdn9yVoSlKNchP", "itemSku": "HNL4X3LLaGPGdqLE", "itemType": "8SohhhuiTnJarYYk"}, {"count": 68, "duration": 44, "endDate": "1985-05-15T00:00:00Z", "itemId": "DdSzBXdxapwhd5IQ", "itemSku": "YBQuxLvPuWYvE3fs", "itemType": "Ny9Z9OhxXvCp9y7f"}, {"count": 76, "duration": 61, "endDate": "1983-11-06T00:00:00Z", "itemId": "qfCXnlUnqxT1WsRN", "itemSku": "MZcA92hzC7MNa8vV", "itemType": "e4MHX6AgMep90Ayy"}], "name": "UJyAK5PRMRMwdvl0", "odds": 0.12201686271815704, "type": "REWARD", "weight": 48}, {"lootBoxItems": [{"count": 13, "duration": 96, "endDate": "1986-01-19T00:00:00Z", "itemId": "GxBW2tQF5tkTjgJa", "itemSku": "MYvNQOsDa4bkcgep", "itemType": "qtxjbrztee7QLTGA"}, {"count": 1, "duration": 5, "endDate": "1976-10-08T00:00:00Z", "itemId": "7Kaol01DK97D2xni", "itemSku": "k42miteR5eQAe1rz", "itemType": "mmgqBPRmd6mO4oI8"}, {"count": 75, "duration": 61, "endDate": "1977-05-15T00:00:00Z", "itemId": "9yEYWNGMy2pgSGSU", "itemSku": "OK68eqGJtWf1Ybgg", "itemType": "8rdwY9bmrvHmO07K"}], "name": "NqX9LM2IwEsdOGBX", "odds": 0.44673192299802156, "type": "REWARD", "weight": 93}], "rollFunction": "CUSTOM"}, "maxCount": 2, "maxCountPerUser": 52, "name": "tefXWznDe4LQdXfF", "optionBoxConfig": {"boxItems": [{"count": 57, "duration": 94, "endDate": "1975-08-06T00:00:00Z", "itemId": "i2RAMEX5RMjBFVZG", "itemSku": "YzQqV8d9mDdUIoiI", "itemType": "JFNxuNOmUSWw18T1"}, {"count": 70, "duration": 45, "endDate": "1983-08-11T00:00:00Z", "itemId": "VWCxdvPL9e4P01vx", "itemSku": "P8xj1LyEirURERnE", "itemType": "MzpImW6sjAHyCK5t"}, {"count": 82, "duration": 4, "endDate": "1971-07-22T00:00:00Z", "itemId": "nGBrkzUvck3xTtmO", "itemSku": "FMebS4AdlNzwog2I", "itemType": "hErkNhNcECWwchW6"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 63, "fixedTrialCycles": 92, "graceDays": 40}, "regionData": {"kbLlrNXnGanMazb8": [{"currencyCode": "jvRWenURH48aJuAL", "currencyNamespace": "EcSqcE15u6D31DjO", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1980-01-31T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1987-04-12T00:00:00Z", "expireAt": "1985-07-09T00:00:00Z", "price": 95, "purchaseAt": "1977-01-24T00:00:00Z", "trialPrice": 53}, {"currencyCode": "CEr0KcgeqzGbruNB", "currencyNamespace": "72HHMkjzyBB4UFKi", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1978-08-03T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1981-02-23T00:00:00Z", "expireAt": "1995-10-26T00:00:00Z", "price": 82, "purchaseAt": "1973-03-30T00:00:00Z", "trialPrice": 25}, {"currencyCode": "ypNrp2nFe9FmN86s", "currencyNamespace": "K5LOq4ft5jGcMICP", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1980-02-16T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1974-03-16T00:00:00Z", "expireAt": "1995-04-01T00:00:00Z", "price": 79, "purchaseAt": "1996-06-13T00:00:00Z", "trialPrice": 55}], "jReteIMgzISomCso": [{"currencyCode": "dJrhQW41q2OspCZb", "currencyNamespace": "t3Uta5I0uGcL1koy", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1985-02-08T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1973-07-10T00:00:00Z", "expireAt": "1978-05-31T00:00:00Z", "price": 23, "purchaseAt": "1989-08-01T00:00:00Z", "trialPrice": 77}, {"currencyCode": "P5vHLjBJ9iqMcBL4", "currencyNamespace": "BzhDUjhKPwbwcvQU", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1981-09-23T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1971-06-14T00:00:00Z", "expireAt": "1996-03-06T00:00:00Z", "price": 67, "purchaseAt": "1998-09-10T00:00:00Z", "trialPrice": 87}, {"currencyCode": "mPAnOkDiJq4xQye7", "currencyNamespace": "HqnVK3YVeOWs9mfV", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1996-10-12T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1990-07-27T00:00:00Z", "expireAt": "1985-03-10T00:00:00Z", "price": 40, "purchaseAt": "1973-04-18T00:00:00Z", "trialPrice": 65}], "9pxpE7BYtzB0B4Cx": [{"currencyCode": "yQrUpIFvORxTi79D", "currencyNamespace": "pSjb39ukcR6c2E2r", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1977-03-29T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1999-10-04T00:00:00Z", "expireAt": "1990-02-09T00:00:00Z", "price": 55, "purchaseAt": "1999-10-24T00:00:00Z", "trialPrice": 91}, {"currencyCode": "EbqcNXSGCCvNowNm", "currencyNamespace": "dpcJgF88ySNq4Mj7", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1981-04-07T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1983-02-25T00:00:00Z", "expireAt": "1981-12-12T00:00:00Z", "price": 54, "purchaseAt": "1986-12-26T00:00:00Z", "trialPrice": 59}, {"currencyCode": "1OqKVOTniBgLsNhd", "currencyNamespace": "gQ0JWZjNRSzOTqcV", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1971-06-25T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1971-06-29T00:00:00Z", "expireAt": "1994-07-05T00:00:00Z", "price": 29, "purchaseAt": "1982-08-28T00:00:00Z", "trialPrice": 13}]}, "saleConfig": {"currencyCode": "mwWsukxncuD3QxCX", "price": 78}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "BWCaVVmM45mfIZsW", "stackable": false, "status": "INACTIVE", "tags": ["kS476dGGJwJ00UH1", "97MJ6zU7JLMQyMWz", "YQCAaPJgoxGJoJaS"], "targetCurrencyCode": "zUtY4ZD0Xtb0U4pH", "targetNamespace": "16NUsVY21NVIs7NR", "thumbnailUrl": "en2Y3Ns0QJQeaWyt", "useCount": 84}' 'QQpxsuD8PGqku59e' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'FJrOXyDYz9vMUOPG' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-items '0iHDT8QbF7gHPTPQ' --login_with_auth "Bearer foo"
platform-get-item-by-sku 'bvLt2NRqJGIKzLyH' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku '1y72L13Ornyx34lu' --login_with_auth "Bearer foo"
platform-get-estimated-price 'LdvtsTKXMjiw6gYP' 'vfn2Qt9iyq3Nyk8n' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'cu2Z3eDHH9WaVO4i' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'KhDcJ7TCcNIsQ3Pu' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition '{"itemIds": ["ppUxDSK8aOTGMudc", "xlCV4cNbJGQ57lPd", "inpjS2DRfGt9GlyZ"]}' 'VQ4X67tPZSTpPq3x' --login_with_auth "Bearer foo"
platform-bulk-update-region-data 'jrElvvDgw0ag7kSW' --body '{"changes": [{"itemIdentities": ["E0Hiqm5IuLryiEXq", "vUWDjU1G0EVjVZw1", "ToLuPakQN1MpOs1R"], "itemIdentityType": "ITEM_SKU", "regionData": {"bL2635KbtZTGJpqg": [{"currencyCode": "l2IzNXGTuQPIDpor", "currencyNamespace": "7t1aJLNNz6QIVC9M", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1981-12-11T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1978-04-12T00:00:00Z", "discountedPrice": 98, "expireAt": "1997-11-22T00:00:00Z", "price": 60, "purchaseAt": "1980-01-28T00:00:00Z", "trialPrice": 27}, {"currencyCode": "MiCxmuCCVuFjS1GC", "currencyNamespace": "1d2b92B4vEgj3HOm", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1972-03-19T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1972-02-21T00:00:00Z", "discountedPrice": 61, "expireAt": "1988-02-01T00:00:00Z", "price": 85, "purchaseAt": "1976-03-30T00:00:00Z", "trialPrice": 90}, {"currencyCode": "z96vd80msqIm5buf", "currencyNamespace": "nBqrpLeqhwVhjnnj", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1994-09-03T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1977-06-10T00:00:00Z", "discountedPrice": 10, "expireAt": "1971-11-03T00:00:00Z", "price": 18, "purchaseAt": "1972-07-12T00:00:00Z", "trialPrice": 38}], "DC9Ynd02mECIQhfI": [{"currencyCode": "hHtADUQ9zimQTQT9", "currencyNamespace": "5pFJUAJsyAfeKOuf", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1983-09-21T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1991-08-10T00:00:00Z", "discountedPrice": 30, "expireAt": "1995-02-27T00:00:00Z", "price": 41, "purchaseAt": "1996-04-13T00:00:00Z", "trialPrice": 42}, {"currencyCode": "TKUe2znsqPzPkwCB", "currencyNamespace": "o2SwCUsTag4MLAo3", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1981-12-09T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1999-01-27T00:00:00Z", "discountedPrice": 48, "expireAt": "1991-12-31T00:00:00Z", "price": 0, "purchaseAt": "1991-02-08T00:00:00Z", "trialPrice": 64}, {"currencyCode": "mn8Onb1a9gMz0F2U", "currencyNamespace": "BRmMhAbUWmFhdYLW", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1991-10-11T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1986-06-20T00:00:00Z", "discountedPrice": 15, "expireAt": "1999-11-17T00:00:00Z", "price": 53, "purchaseAt": "1985-03-21T00:00:00Z", "trialPrice": 95}], "6szbCCf73IFbRkPS": [{"currencyCode": "SITz4TjCrJHXGXku", "currencyNamespace": "2YVuOzhxHmnrrV9Z", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1980-01-27T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1982-05-31T00:00:00Z", "discountedPrice": 20, "expireAt": "1982-02-04T00:00:00Z", "price": 47, "purchaseAt": "1984-04-18T00:00:00Z", "trialPrice": 30}, {"currencyCode": "RpmKDebNkylbynkg", "currencyNamespace": "T9vayLLiizac7Ge6", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1989-11-11T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1976-02-02T00:00:00Z", "discountedPrice": 83, "expireAt": "1976-06-16T00:00:00Z", "price": 40, "purchaseAt": "1976-06-05T00:00:00Z", "trialPrice": 35}, {"currencyCode": "QJCiRFiZWwJ7NrTb", "currencyNamespace": "1XTB9YQzUJ9XlYJ8", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1983-12-09T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1986-04-13T00:00:00Z", "discountedPrice": 53, "expireAt": "1994-01-24T00:00:00Z", "price": 14, "purchaseAt": "1987-11-14T00:00:00Z", "trialPrice": 78}]}}, {"itemIdentities": ["eBXH8x6HdVfZVDAi", "U6iJOF7JKZFNk2NK", "y59X8iOg2sVBiCoe"], "itemIdentityType": "ITEM_SKU", "regionData": {"Hvv9rqvEoM8YmVjA": [{"currencyCode": "kO3HKsEp6KlqwW4d", "currencyNamespace": "jrexcbHdEtoQvpV3", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1999-01-18T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1981-01-26T00:00:00Z", "discountedPrice": 26, "expireAt": "1999-04-27T00:00:00Z", "price": 75, "purchaseAt": "1984-08-23T00:00:00Z", "trialPrice": 68}, {"currencyCode": "i8HeV6jbalHmqBBf", "currencyNamespace": "i7sSF5BoGiTCVsXs", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1987-05-30T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1982-03-16T00:00:00Z", "discountedPrice": 44, "expireAt": "1986-01-29T00:00:00Z", "price": 23, "purchaseAt": "1978-05-03T00:00:00Z", "trialPrice": 20}, {"currencyCode": "XtdsJQeJ1too0qvx", "currencyNamespace": "phTLEEBGTtZyTjdK", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1989-02-20T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1997-04-28T00:00:00Z", "discountedPrice": 1, "expireAt": "1986-07-29T00:00:00Z", "price": 62, "purchaseAt": "1981-03-17T00:00:00Z", "trialPrice": 56}], "smSmylT1YtxIq73a": [{"currencyCode": "Mb48jISd97KORRhx", "currencyNamespace": "SWLWLNfHRD3V15Qa", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1993-08-15T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1974-06-17T00:00:00Z", "discountedPrice": 49, "expireAt": "1997-10-14T00:00:00Z", "price": 94, "purchaseAt": "1987-05-29T00:00:00Z", "trialPrice": 2}, {"currencyCode": "beqWBdQuWfgBAKx2", "currencyNamespace": "7MSBqabUXOGkkoMU", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1983-03-17T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1998-07-23T00:00:00Z", "discountedPrice": 0, "expireAt": "1987-10-30T00:00:00Z", "price": 9, "purchaseAt": "1998-11-23T00:00:00Z", "trialPrice": 59}, {"currencyCode": "RVfriSpPFnZBJZkD", "currencyNamespace": "nEiyfa2LrnpZxNnL", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1971-05-19T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1993-04-22T00:00:00Z", "discountedPrice": 41, "expireAt": "1987-01-02T00:00:00Z", "price": 77, "purchaseAt": "1992-01-07T00:00:00Z", "trialPrice": 84}], "AziBOHEAj1cT3u6Z": [{"currencyCode": "c2FbrTFznTgDIwZI", "currencyNamespace": "RWf6T3by2kYSCdnF", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1992-01-16T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1998-12-14T00:00:00Z", "discountedPrice": 47, "expireAt": "1971-01-18T00:00:00Z", "price": 93, "purchaseAt": "1971-03-24T00:00:00Z", "trialPrice": 22}, {"currencyCode": "qjdcEfU61OJYMnW4", "currencyNamespace": "9rWynp1ck1vT90C6", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1987-01-18T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1993-10-04T00:00:00Z", "discountedPrice": 90, "expireAt": "1981-11-03T00:00:00Z", "price": 43, "purchaseAt": "1977-01-24T00:00:00Z", "trialPrice": 89}, {"currencyCode": "gbUmulhe98oaFKlQ", "currencyNamespace": "icdrxVhrtwSd9QWV", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1982-02-11T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1996-04-28T00:00:00Z", "discountedPrice": 37, "expireAt": "1993-07-09T00:00:00Z", "price": 89, "purchaseAt": "1980-11-11T00:00:00Z", "trialPrice": 59}]}}, {"itemIdentities": ["Pi57HyKKz5nyI6ul", "KNKoXa0dgx1JgjC5", "6pda3YhtQxpCYME6"], "itemIdentityType": "ITEM_SKU", "regionData": {"qXBDXJcrqKmXDwoE": [{"currencyCode": "V6tCdrxw1KOPhuvH", "currencyNamespace": "uYrGWDK41uMOC0mR", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1994-03-13T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1994-12-31T00:00:00Z", "discountedPrice": 88, "expireAt": "1987-03-23T00:00:00Z", "price": 0, "purchaseAt": "1973-03-25T00:00:00Z", "trialPrice": 3}, {"currencyCode": "tF5wnJDg9Q3WXiyd", "currencyNamespace": "COInVolsr6CHmj76", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1986-11-07T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1972-06-10T00:00:00Z", "discountedPrice": 11, "expireAt": "1997-05-31T00:00:00Z", "price": 63, "purchaseAt": "1982-10-15T00:00:00Z", "trialPrice": 26}, {"currencyCode": "TSiXjcY5ZPkv90ly", "currencyNamespace": "KSTWLxSFZ0LpupEi", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1993-01-12T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1976-04-21T00:00:00Z", "discountedPrice": 97, "expireAt": "1980-01-08T00:00:00Z", "price": 34, "purchaseAt": "1982-09-14T00:00:00Z", "trialPrice": 21}], "Ti1t530Wj1WfzIvc": [{"currencyCode": "3VlSXrA3XUGud4tV", "currencyNamespace": "jmxEf4XvVhFJTxFH", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1985-11-22T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1981-08-28T00:00:00Z", "discountedPrice": 48, "expireAt": "1997-06-23T00:00:00Z", "price": 41, "purchaseAt": "1992-04-13T00:00:00Z", "trialPrice": 3}, {"currencyCode": "q3eOMHIKeTyBG5dC", "currencyNamespace": "UoExnKfV3869IN4V", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1974-09-27T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1985-08-01T00:00:00Z", "discountedPrice": 66, "expireAt": "1995-10-19T00:00:00Z", "price": 95, "purchaseAt": "1996-08-29T00:00:00Z", "trialPrice": 63}, {"currencyCode": "pA1tIC45C0oaGouF", "currencyNamespace": "u4hXONgUwJnUpryD", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1993-05-17T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1972-05-12T00:00:00Z", "discountedPrice": 17, "expireAt": "1995-05-22T00:00:00Z", "price": 45, "purchaseAt": "1983-04-06T00:00:00Z", "trialPrice": 76}], "rw2MwC1uuokpaIjL": [{"currencyCode": "0Vxe5n9Lx3QcFo9g", "currencyNamespace": "xOgvDc7xMrRKvw8I", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1995-05-15T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1975-10-26T00:00:00Z", "discountedPrice": 25, "expireAt": "1995-08-23T00:00:00Z", "price": 53, "purchaseAt": "1993-12-18T00:00:00Z", "trialPrice": 87}, {"currencyCode": "BxlalCHtWlKxLpS8", "currencyNamespace": "fLWoQ5nuJhatQPxR", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1977-06-26T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1985-11-04T00:00:00Z", "discountedPrice": 98, "expireAt": "1986-08-19T00:00:00Z", "price": 32, "purchaseAt": "1974-07-30T00:00:00Z", "trialPrice": 69}, {"currencyCode": "gOKLTDmHe8c1eJ9s", "currencyNamespace": "de7Ryt4udIv22M18", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1981-12-05T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1996-10-27T00:00:00Z", "discountedPrice": 47, "expireAt": "1992-08-13T00:00:00Z", "price": 56, "purchaseAt": "1978-04-13T00:00:00Z", "trialPrice": 17}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'QFPFWy5cwNPI6aFo' '0MVwDZCIXFNEL3uW' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'VRz3V7YbJM3bNLWH' --login_with_auth "Bearer foo"
platform-update-item '{"appId": "AbCZixe2cQ6O30lp", "appType": "SOFTWARE", "baseAppId": "0HjUcnkpU9oVzl2k", "boothName": "BuLFXIeCEKZUTz3G", "categoryPath": "vCAZ5j24acYHbrry", "clazz": "HB6GO9zP3FaepA3b", "displayOrder": 91, "entitlementType": "CONSUMABLE", "ext": {"9nJM6vtT27xv85K5": {}, "MU2qmbeqaVemINdC": {}, "lpF7OvlBIEgjse5k": {}}, "features": ["d6GEDo08yq5E5Hle", "XvVcJerTPW02PWsH", "Loog4me2NBFp62xl"], "flexible": false, "images": [{"as": "DQMBSYAFLqp8PF5h", "caption": "CcoukWpnbz4ys7j6", "height": 24, "imageUrl": "PRtvhQIyLarjaLOK", "smallImageUrl": "nX51yAB8Pa3uNGKh", "width": 1}, {"as": "gWGcA0h4G1LZ1HaX", "caption": "5UBMbsF44VTsLDRz", "height": 6, "imageUrl": "nYX2YBF2g7TVtzYE", "smallImageUrl": "HUodh3iUfBthbepU", "width": 59}, {"as": "HF9ejHaILQruAuYy", "caption": "JLYGqMv824ouSgkp", "height": 76, "imageUrl": "q03BGdIk4oEogFVG", "smallImageUrl": "R71rJOBy6lsj1AKG", "width": 57}], "inventoryConfig": {"customAttributes": {"cTtztx3VAl6tXFbn": {}, "ATCzUOIzVcy9k3ie": {}, "64Vnwa0ClGQJultJ": {}}, "serverCustomAttributes": {"e32AiwKadEoIVmpr": {}, "wPsa9YD92CX0rITa": {}, "jpwHITGeHTnqRbzB": {}}, "slotUsed": 56}, "itemIds": ["xp4qTB54mKA3V9DK", "lCeZ7mLYsHooOIax", "Ipb1cIOJPS3lJ80Y"], "itemQty": {"J41U4ooQ980ywmg1": 31, "rmJYXsYgL7TfyIlA": 46, "UlmU1unGKM0tgfeW": 50}, "itemType": "APP", "listable": false, "localizations": {"7bbwMI4gGmvK9gW5": {"description": "96FwBNrFXt3TAuKB", "localExt": {"wBcD12ae6r3hHwya": {}, "4NpdOzg3hr6ucHf7": {}, "dbh2iKNUl0qJqzoK": {}}, "longDescription": "MRMG541PAiNjULsx", "title": "4SnKNXLMUaDSwwQl"}, "nNRZJHBSB4fZWEFI": {"description": "Zs28Ff1kZp1Zktx3", "localExt": {"N7WNMYIfcDKbLu8p": {}, "nK34oA1keYXJvtgg": {}, "DdXjbdjMBahFZZGM": {}}, "longDescription": "TcqnWrIprOv0BJ9S", "title": "gl7H1sdH2RIJz1eI"}, "7Q5pu9PutLf6IrvZ": {"description": "oBGQbO4S3rURGWUz", "localExt": {"PAE6SdV4D5jftRl9": {}, "rZmtQUvro8TWwXWs": {}, "z9TVmdMKEohKzuMY": {}}, "longDescription": "DUTLBeCidXjuGgx8", "title": "ncXejmeZtzT0qj0l"}}, "lootBoxConfig": {"rewardCount": 40, "rewards": [{"lootBoxItems": [{"count": 38, "duration": 25, "endDate": "1979-02-03T00:00:00Z", "itemId": "fiZrthVvyX0OCKDJ", "itemSku": "E3RMUddwSSgxCu8z", "itemType": "ru1DhGAYOHR5BWa9"}, {"count": 98, "duration": 36, "endDate": "1983-06-09T00:00:00Z", "itemId": "IkaQEl1iUProNB6h", "itemSku": "I6IpGcToWgFvdRhG", "itemType": "9NwV3zDuqVlVTypc"}, {"count": 34, "duration": 85, "endDate": "1973-10-27T00:00:00Z", "itemId": "g67d4RWOqO4U0bit", "itemSku": "NQLzwRoWnR0AbkCP", "itemType": "Y70FmvviVIBbcujF"}], "name": "8Vk5qb8NhWWwaxyM", "odds": 0.045862373723032146, "type": "PROBABILITY_GROUP", "weight": 59}, {"lootBoxItems": [{"count": 20, "duration": 12, "endDate": "1981-11-26T00:00:00Z", "itemId": "8l5IPSrwrJl7wYIV", "itemSku": "w13NCo9yXlbQ52FT", "itemType": "HTCj6SEAzT7TOpyi"}, {"count": 41, "duration": 91, "endDate": "1982-10-03T00:00:00Z", "itemId": "vQUm29Iacq4XRLaA", "itemSku": "643nTMtXSAyejnny", "itemType": "0Ju13b6o5uB2XM6I"}, {"count": 68, "duration": 47, "endDate": "1983-07-24T00:00:00Z", "itemId": "7EEvHyLmcvrZZOdw", "itemSku": "e1x8RjU6Bi8JXE52", "itemType": "sUBBq2SimQQoLbe5"}], "name": "YOJvxGRxUzrTwagH", "odds": 0.9667293997563111, "type": "REWARD", "weight": 51}, {"lootBoxItems": [{"count": 78, "duration": 70, "endDate": "1994-08-01T00:00:00Z", "itemId": "1IZKTdNFVBQ1crBX", "itemSku": "AupATO8uXsqVpdiW", "itemType": "o8SjDAM0Riw8wLYW"}, {"count": 19, "duration": 27, "endDate": "1978-04-02T00:00:00Z", "itemId": "F3LD1EDwBXw5uBYe", "itemSku": "QZOzATNSV9E9yyNb", "itemType": "7yaLXzAVYymOuhCk"}, {"count": 25, "duration": 42, "endDate": "1999-08-27T00:00:00Z", "itemId": "htrsf8eIFSovTGXa", "itemSku": "Msq8ePN1oco2jx8U", "itemType": "pe8SjMvpqM8puggO"}], "name": "EdG47gD5i2Ni6AnW", "odds": 0.216373824579849, "type": "PROBABILITY_GROUP", "weight": 82}], "rollFunction": "CUSTOM"}, "maxCount": 49, "maxCountPerUser": 63, "name": "sYPonb59gQffkNOm", "optionBoxConfig": {"boxItems": [{"count": 42, "duration": 32, "endDate": "1971-07-15T00:00:00Z", "itemId": "nRUQr3RLOM1vEx4g", "itemSku": "qDY6jwyKRxhkLe5z", "itemType": "ohg9s9utRQt28b6o"}, {"count": 74, "duration": 14, "endDate": "1985-05-17T00:00:00Z", "itemId": "OF74tz6aeXZOYwbw", "itemSku": "jMNdxKWlBfnRyFS0", "itemType": "Ed7gTM5AVrtBQiDT"}, {"count": 5, "duration": 82, "endDate": "1991-04-16T00:00:00Z", "itemId": "HDPTUEDPN1Kb4UTP", "itemSku": "WDXTSb55g8LSTs7N", "itemType": "f95lGlPrf6obIdnI"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 22, "fixedTrialCycles": 79, "graceDays": 9}, "regionData": {"FtsnFfz8Ew0X8fBu": [{"currencyCode": "BSKLSQ4GvLtz50D3", "currencyNamespace": "rpBfBovqLwXBuT30", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1997-11-24T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1993-01-28T00:00:00Z", "expireAt": "1975-06-23T00:00:00Z", "price": 48, "purchaseAt": "1985-09-20T00:00:00Z", "trialPrice": 91}, {"currencyCode": "haBKoUfiHjGmCyPs", "currencyNamespace": "KCJTv1ic9gvagF2c", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1980-07-29T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1989-05-25T00:00:00Z", "expireAt": "1976-10-19T00:00:00Z", "price": 88, "purchaseAt": "1999-06-06T00:00:00Z", "trialPrice": 40}, {"currencyCode": "j64gV7nmDk29mcjS", "currencyNamespace": "uz9vbNStqPtQmQN6", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1972-08-05T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1987-11-16T00:00:00Z", "expireAt": "1975-09-14T00:00:00Z", "price": 28, "purchaseAt": "1985-05-27T00:00:00Z", "trialPrice": 11}], "rsVBPZ64j0HUONsc": [{"currencyCode": "ofwYLQcDvkaEIIPo", "currencyNamespace": "JT83zEGXmVBZLyrH", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1985-09-21T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1998-07-16T00:00:00Z", "expireAt": "1980-04-14T00:00:00Z", "price": 33, "purchaseAt": "1971-12-02T00:00:00Z", "trialPrice": 67}, {"currencyCode": "RLkP5hc2Fh04JTsq", "currencyNamespace": "DTynCewqJligLlRx", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1976-03-08T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1972-07-26T00:00:00Z", "expireAt": "1996-03-25T00:00:00Z", "price": 70, "purchaseAt": "1996-08-16T00:00:00Z", "trialPrice": 51}, {"currencyCode": "RxF6HtlER2txs4qr", "currencyNamespace": "NARATn6KXOutlYBb", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1990-09-03T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1989-11-12T00:00:00Z", "expireAt": "1996-11-18T00:00:00Z", "price": 47, "purchaseAt": "1979-05-16T00:00:00Z", "trialPrice": 64}], "b51y5RUzvMfTkPy0": [{"currencyCode": "fGvTGgfLKsg0b1Bq", "currencyNamespace": "78cE5O5pmPnbiPJ9", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1975-07-01T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1983-04-11T00:00:00Z", "expireAt": "1997-01-03T00:00:00Z", "price": 35, "purchaseAt": "1988-04-06T00:00:00Z", "trialPrice": 35}, {"currencyCode": "thUvV87yfkycLSVd", "currencyNamespace": "leSaAylsmLYe2phY", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1994-09-02T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1976-10-12T00:00:00Z", "expireAt": "1986-10-27T00:00:00Z", "price": 94, "purchaseAt": "1977-07-19T00:00:00Z", "trialPrice": 72}, {"currencyCode": "Pl3dKF7NXEjrJMki", "currencyNamespace": "8jvc3P8Gwjg3IOH0", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1995-09-26T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1999-08-24T00:00:00Z", "expireAt": "1989-02-02T00:00:00Z", "price": 33, "purchaseAt": "1978-07-10T00:00:00Z", "trialPrice": 82}]}, "saleConfig": {"currencyCode": "JiFJdrmj5vhzgsJw", "price": 8}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "tYlYeMoCimJySocR", "stackable": true, "status": "INACTIVE", "tags": ["K9TFgi9j2XMh9Wpi", "fqjNjLOtNQts2yxf", "WDOrFZKPNoN9AWtL"], "targetCurrencyCode": "6MLZJ2jZfZbpTJez", "targetNamespace": "zriCDWXT59SRu0Yq", "thumbnailUrl": "UxKDc84OMIzvTScd", "useCount": 4}' '5YfxnUNcwjr7gSGh' 'nfuF4WZiQVICVpWd' --login_with_auth "Bearer foo"
platform-delete-item '3UM08gMXhdf3juXW' --login_with_auth "Bearer foo"
platform-acquire-item '{"count": 36, "orderNo": "JprIb3CJCAtvSG8C"}' 'fa9dzOJDGCTHIOFj' --login_with_auth "Bearer foo"
platform-get-app 'eXbsSgR43kIDzxBw' --login_with_auth "Bearer foo"
platform-update-app '{"carousel": [{"alt": "qRJTzrHNZWUsq5lQ", "previewUrl": "o2jy29EJigqYhyVh", "thumbnailUrl": "URx1yPeczRpdk0HA", "type": "video", "url": "poTOxe8y1jorNsg9", "videoSource": "vimeo"}, {"alt": "KYCKoISyXtHzoWGd", "previewUrl": "YohxMp3uOQIybqWf", "thumbnailUrl": "G9BJ6FVKlbYHtbPt", "type": "image", "url": "67bOwugFDa6wUQve", "videoSource": "generic"}, {"alt": "APOGBwweyFfXEOEA", "previewUrl": "Etbag82KgBgyCd5v", "thumbnailUrl": "jkfz3eR4DtNp129h", "type": "video", "url": "k9fxtvsgeAxo57nK", "videoSource": "vimeo"}], "developer": "q1sml5bYt76BNsi4", "forumUrl": "giR9434WpKKdzxou", "genres": ["Adventure", "RPG", "Racing"], "localizations": {"cSthrpnMUBsnUfuQ": {"announcement": "IcSbUt5UGkInFGpu", "slogan": "Usdtq4dOwNESzCEW"}, "9dUVhZjLftC3sCS8": {"announcement": "CpLCqPD9CeDEdCnn", "slogan": "L6Kt1Bjj3b8QM8Rr"}, "45ULqXQgvwD3PsKD": {"announcement": "JiWxQBwaS7rDBf2S", "slogan": "54phbdyGDt47f9GW"}}, "platformRequirements": {"RlE9hqz6rjDNo4rh": [{"additionals": "jxUdMM83WekqfWv0", "directXVersion": "4vvn9bk5qr8qs2mq", "diskSpace": "tnGAqXUjNypF6MMq", "graphics": "WpdEJsPoaIbYz8cK", "label": "5jlpJdre5ur6yvWJ", "osVersion": "DdvM7T7PX2vamIRZ", "processor": "HzsIYOCUoiCXNjrd", "ram": "QL2jdx1eIba1sB0H", "soundCard": "sJ06DzfbzRYt4OVU"}, {"additionals": "yumBeIqdQGZC5kM0", "directXVersion": "3HHijsQRj7N8IAjm", "diskSpace": "sonjj0ZR50BQ1U6a", "graphics": "FD3O2kXQSc58zgZV", "label": "l4gIF7v3qbZu9M3O", "osVersion": "xqVAT4H1lRZ9Z1JB", "processor": "rHRzEOtIxzPqb6n7", "ram": "3m0jiaDH86d9rsKg", "soundCard": "zCsMulpB8HZUtVVa"}, {"additionals": "JCiLgKOwrSfWhT5B", "directXVersion": "4WedopzwSluBtRFP", "diskSpace": "KThyGnbjmPDKFS6u", "graphics": "9FHuv1M3qfch4SqI", "label": "V6LQPHlaeYl4csFq", "osVersion": "65cU66yJaj4ovoKW", "processor": "E4EW0sw8v5peiuxo", "ram": "BJATauyD3XCXVMiy", "soundCard": "EvMf9yilUEujk6oq"}], "Yo1HQYTFzwdOMdup": [{"additionals": "wD4O3uNbcIDcIyvZ", "directXVersion": "bOy1T4hfwkuVykH4", "diskSpace": "RpfmjIXFGZ5PKdba", "graphics": "bJIkNnt9P1Tkm08l", "label": "uh4dpPRMDbUXBWTb", "osVersion": "pAogG2wlZkLhuU5F", "processor": "I8NijFI0GKwJ3vfX", "ram": "lsAMy2Zp2UAGxHnm", "soundCard": "SxvkG9UR5q9neoW6"}, {"additionals": "JBcGp9Rx2RfcRhXp", "directXVersion": "meeHdvphas9S7ivH", "diskSpace": "EoLbUMM47f1UreUp", "graphics": "xEkXIbE1ETzRJZKM", "label": "avu4Ul2IaieEbPSE", "osVersion": "7TGkeHsYsW9oGBN1", "processor": "pYMBwbPZTlMlUvFE", "ram": "iGprcNSQ9kEeXBZ6", "soundCard": "FVrBzyhyhoS6a9oe"}, {"additionals": "0JaXFpff28uYbe4C", "directXVersion": "f2HEHvVevhISjbtB", "diskSpace": "JUK5fE3OufPSX3Pd", "graphics": "OU2V9yw94oa8UJ34", "label": "TIedV3HyoX4VnO2L", "osVersion": "pBU08wfnlHBXFIqF", "processor": "UmgUSMM5au8GJT0m", "ram": "kVPI6zUtf3QaJPGr", "soundCard": "TNcXXTUIggoH89QN"}], "mI17UDb19R6H7r1t": [{"additionals": "a3m7jK5pxe82pgFi", "directXVersion": "AS6piIzmc8rKrKEP", "diskSpace": "GSAcong6eNERUf8k", "graphics": "jci1Ctccv9Gv4tOc", "label": "bnuCqf0lm6WBkIzj", "osVersion": "oSV31tvmMB6jzrpR", "processor": "GESmooHiCV4GUOnX", "ram": "papXQGRakUbcG7Pc", "soundCard": "R4eiU3Idi55jNrGN"}, {"additionals": "T2VHTKuIT5FwwHj0", "directXVersion": "Ur5F2PWGTTD81xhN", "diskSpace": "P4t6kYBUjyXAn3bW", "graphics": "QF6QcAiJpXIrgroi", "label": "xptZhckUTGkcBOE4", "osVersion": "qMcH1Kyi8ZFvGcV8", "processor": "DY0XOkDstxZcY1Hg", "ram": "AnZV4IOglVLqb9lG", "soundCard": "AJUg21Lt7JwgwMUS"}, {"additionals": "uC3Bajy3BcEMCtQs", "directXVersion": "2FcEcvVAyId6Cp85", "diskSpace": "HVDsZBQgOnXuXsGT", "graphics": "hYZrmm0wrFMnPpWg", "label": "rQD4hEk0OLjYsnig", "osVersion": "nE7KcMF7fuDbzRRY", "processor": "MNXWUsp1tOibJY9a", "ram": "L9ie6vvMbiNURrlm", "soundCard": "88QlKyuoya4JgakZ"}]}, "platforms": ["MacOS", "IOS", "IOS"], "players": ["MMO", "LocalCoop", "LocalCoop"], "primaryGenre": "Strategy", "publisher": "VnSFbuxd4KYZ0jk0", "releaseDate": "1994-09-10T00:00:00Z", "websiteUrl": "ZdhtnKu9oTc8pVki"}' 'yGsj5JdXzRxfNEjU' 'MTs8WIObJBTsvsw7' --login_with_auth "Bearer foo"
platform-disable-item '6uISRX0bKVoWtoUW' '1P7ocuBAldDSUS7H' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'aa6unq1yQOSRvyiL' --login_with_auth "Bearer foo"
platform-enable-item 'BRVtIDi2piIQFVmz' 'Midw70KSahpYZdKZ' --login_with_auth "Bearer foo"
platform-feature-item 'RyR9AX7JjxvNZhM8' '4DiZk6ySrB9SVFct' 'W7YS0OkL78XeEAtA' --login_with_auth "Bearer foo"
platform-defeature-item 'LFI3v8yha4pd5A7M' 'YcpBD6lKNb8RxvN2' 'u5J7baOeLH19fqBw' --login_with_auth "Bearer foo"
platform-get-locale-item 'NbNe1ffYRtIvQaKy' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 77, "code": "vWYtZjK6J29v8MpB", "comparison": "isLessThan", "name": "po3AKRmnJkzJHAck", "predicateType": "StatisticCodePredicate", "value": "yBksYQfDm0RNFwiz", "values": ["8dZwnnGeZsZVgbPz", "qajUWrgEsWDtaKzn", "70tRVLMlHi8i9gOV"]}, {"anyOf": 86, "code": "PeS193TNNzot3sVl", "comparison": "is", "name": "x6GcfyOg6ZUrrp9u", "predicateType": "EntitlementPredicate", "value": "WzWlTY70qdgJRvpZ", "values": ["rSpWX3KEe2BjV00R", "pgOoIOD74V21HWDA", "eCXFffjJJxlgjzIh"]}, {"anyOf": 10, "code": "9jNQN1di1ldhOh6H", "comparison": "isLessThan", "name": "PStVBUpKgOssFkz0", "predicateType": "EntitlementPredicate", "value": "36piDYXeHZ7FHls3", "values": ["nyvconqbHQqKLQKe", "rqbiKudv9z75SzoC", "3xmj6s0GqsWncp5L"]}]}, {"operator": "and", "predicates": [{"anyOf": 83, "code": "Mi2o1nR482D6gNCl", "comparison": "is", "name": "6uDhFYlrzJBYSeMu", "predicateType": "EntitlementPredicate", "value": "gVZCj9ObVGT0Scwl", "values": ["4kNmCi15XTJTgCNN", "H7RtG5Xmo9Q0Wb07", "N17fkxZSc6VbE0AG"]}, {"anyOf": 4, "code": "cOmbfJrCJQIj1haA", "comparison": "isGreaterThan", "name": "mzafMUguyDoN91uc", "predicateType": "EntitlementPredicate", "value": "8HoSpGt1g0GGbT4H", "values": ["DFjjx6uZerWbtwTX", "KwXXSbv5eg9q86Ia", "f2PPKOldkbgX9CWJ"]}, {"anyOf": 13, "code": "gNRByjbE8lOLAfTX", "comparison": "includes", "name": "LzbrddqcKLa7Levx", "predicateType": "StatisticCodePredicate", "value": "HOSEhQRZIp693lRw", "values": ["KDdUvk0LEi26Ls7m", "tc43atCuCFxbfbz4", "aQERziPL4dHhOqG5"]}]}, {"operator": "and", "predicates": [{"anyOf": 100, "code": "RxNmvvNtjJNQepUT", "comparison": "isGreaterThanOrEqual", "name": "hwlY4lPzlsCR5rVs", "predicateType": "StatisticCodePredicate", "value": "2Sy8Ww79LVeVskqe", "values": ["UB7RSayqGFguhh3b", "9rW8i8krFWJhe03c", "vadRthdbVApebRA0"]}, {"anyOf": 30, "code": "ZOzx6iCJTu60Iifz", "comparison": "isGreaterThan", "name": "hkk5PxsjqbCKpMv2", "predicateType": "SeasonPassPredicate", "value": "ky9DYkD2sIllFtBt", "values": ["RQvRUbUDSiefGEdL", "ucrtO2gCQD057DrD", "XJKG3rqBmILhtWm8"]}, {"anyOf": 23, "code": "Gt3MiBKohow3kKoa", "comparison": "isLessThan", "name": "1K4CDuH1mMIfOCDy", "predicateType": "EntitlementPredicate", "value": "AHrHncR5dShqiBUI", "values": ["OA8H9VeHv0L2Acm9", "q8kxR4BuEksS2A9V", "9esSsXegSEhrPpK2"]}]}]}}' '60EYQEuGJVl8xs1W' 'Id9WlalqshF9Rh2o' --login_with_auth "Bearer foo"
platform-return-item '{"orderNo": "7GCQGPCxwEdkyuT3"}' 'MgzReRq0112ISArR' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group '{"description": "OIodcmM6v2AEozWW", "name": "aYvBLE46bpuJip8J", "status": "INACTIVE", "tags": ["RgVwbrQKmb01yA7U", "7dGMjupZkZQY8CNy", "T4k3DIbfT22G5NpE"]}' --login_with_auth "Bearer foo"
platform-get-key-group '130YWSgxpKWtdtdt' --login_with_auth "Bearer foo"
platform-update-key-group '{"description": "VW9anENmxb9e7vXZ", "name": "V3ig8Jg5VByeI3yc", "status": "ACTIVE", "tags": ["aUaGlAyvIslt7N1q", "cxKs4nlf1MfqUZXk", "jHvcUOTlxNf09pef"]}' 'gFIiJssShBKsQjXv' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'fQgQDt6ce8NDMErA' --login_with_auth "Bearer foo"
platform-list-keys '82FrR1GSogkewIzT' --login_with_auth "Bearer foo"
platform-upload-keys 'OqKkcjRh3l2gAJOT' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'Cbx7J3gNLIlTk3Bp' --login_with_auth "Bearer foo"
platform-refund-order '{"description": "clrk4hIRn0znIKzA"}' 'EAHQpBOgHEP5l94s' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config '{"dryRun": true, "notifyUrl": "CbIJ7eHnVWOboMky", "privateKey": "B7FTexsOZ0b2p3b6"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config --login_with_auth "Bearer foo"
platform-update-payment-domain-whitelist-config '{"domains": ["3KrcwIcXMhGy83Xi", "t6boOLGCcg16Dqwd", "QPQ9HkSSV8e1MgTT"]}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated '{"currencyCode": "LS2FgarY903INGIy", "currencyNamespace": "EfRBEj7qms9AGQEx", "customParameters": {"Phgr9gGfC0GjvpgJ": {}, "fuBs1Vpqn47GVghT": {}, "H2wToOnq9U5lyW89": {}}, "description": "Xwt3wmRTrDCjhnKv", "extOrderNo": "sHezWTqgYPixtHk6", "extUserId": "lWq6tEeUmU96FLEa", "itemType": "CODE", "language": "Nv-JsYh", "metadata": {"jjv4Mwrv2vancmR6": "Z7rb21A2E9pX0BWC", "MqPsRk5htdM5T3fD": "SrSHrkoqv2mM6soM", "aTvQq2a9YdFNtRVS": "O0js0hG9xmSnzd7z"}, "notifyUrl": "gUxAogcnGkXk17QP", "omitNotification": false, "platform": "lPspQD9IRIpDDubn", "price": 40, "recurringPaymentOrderNo": "l8G2uf6E8EajXLSA", "region": "S8MKMaxQ1QyJCpKe", "returnUrl": "dhuzI7G9NCKKXu1b", "sandbox": true, "sku": "sSDspvgM16sZ6rjn", "subscriptionId": "kH4ExObppC6CMYDm", "targetNamespace": "5ge659UDEOF6gp5U", "targetUserId": "fmjtiVbqJnZcrqrP", "title": "ye7fCwi7Il2wIFlH"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'm9N6owMHMtJy1Oqn' --login_with_auth "Bearer foo"
platform-get-payment-order '59tEGm9NYeUT5P0n' --login_with_auth "Bearer foo"
platform-charge-payment-order '{"extTxId": "x8TqSZdZ5C8mFI9T", "paymentMethod": "nvzEqBNMF9CZvPxT", "paymentProvider": "WALLET"}' 'v9k4fv3kMiuQ3Dhs' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated '{"description": "KLxjt5srPFxBgpFt"}' 'DBmTLH9kP9U53z6j' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification '{"amount": 30, "currencyCode": "SvELgBe6dboSdhkB", "notifyType": "REFUND", "paymentProvider": "CHECKOUT", "salesTax": 54, "vat": 12}' 'zPkt1efGJeJaxyHY' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'utgXucx85vHA009F' --login_with_auth "Bearer foo"
platform-get-psn-entitlement-ownership '{"accessToken": "Ab21jxeWXk80y9ux", "serviceLabel": 13}' 'LCgdFxRGj00RT6Lv' --login_with_auth "Bearer foo"
platform-get-xbox-entitlement-ownership '{"delegationToken": "cnGMJbJIYLssMvy9", "sandboxId": "gkfTMRrXVRcAVRDX"}' '6gmDfNfPGYYSTunM' --login_with_auth "Bearer foo"
platform-get-platform-entitlement-config 'GooglePlay' --login_with_auth "Bearer foo"
platform-update-platform-entitlement-config '{"allowedPlatformOrigins": ["Twitch", "Other", "System"]}' 'Steam' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Playstation' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config '{"allowedBalanceOrigins": ["System", "GooglePlay", "Other"]}' 'Steam' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'GooglePlay' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config '{"appConfig": {"appName": "647YwDudnGRufOUG"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "iP2JQ24meDrwEuTy"}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward '{"description": "2qohglzO8AEl6A9s", "eventTopic": "h2x2ur2ccp7R7OqP", "maxAwarded": 34, "maxAwardedPerUser": 51, "namespaceExpression": "IjS4i0N9ytb3c8pV", "rewardCode": "Z8GlU8962e6gtn5p", "rewardConditions": [{"condition": "UARJM1T8QwMNOAzX", "conditionName": "myHEV4g9P6a280S5", "eventName": "RNB5dVCsB7xL4axS", "rewardItems": [{"duration": 85, "endDate": "1988-02-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "CAT7cBP0918JaEBQ", "quantity": 57, "sku": "RVTl0tR00oQgcHdG"}, {"duration": 67, "endDate": "1980-10-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "3x76U1EIcklttmrp", "quantity": 14, "sku": "K3c4RVfjB0zi3XrY"}, {"duration": 65, "endDate": "1994-02-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "R70eNLHkVrEFd8xA", "quantity": 35, "sku": "7ycJV5YqE2myQzl7"}]}, {"condition": "X9fHr6WvBxmBvNj3", "conditionName": "ktaDf9B22HGgxakP", "eventName": "t7IYzaZUTmvsEzLP", "rewardItems": [{"duration": 27, "endDate": "1994-04-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "snfmBerp84qjwzWp", "quantity": 58, "sku": "Mg7Dc5APzfzXDELJ"}, {"duration": 65, "endDate": "1998-01-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "IaEMW5bhJyL72WDy", "quantity": 15, "sku": "dFfC8x5aHLsXHlm1"}, {"duration": 89, "endDate": "1981-10-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "TTy9JrNz1K5M1qgF", "quantity": 6, "sku": "h8I9xk3sFl0cbuCR"}]}, {"condition": "M69XKkLwioRaKnWh", "conditionName": "lh80BhYe2fJDS6T7", "eventName": "5Q4ulonMFjmYqE1w", "rewardItems": [{"duration": 73, "endDate": "1974-05-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "0DwUj2HKUvPYUcQB", "quantity": 48, "sku": "n65Co0vdCk8so6JS"}, {"duration": 0, "endDate": "1987-10-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "DK46Eehx7xasqMY9", "quantity": 1, "sku": "dN2tmGuX6r0gBVUU"}, {"duration": 9, "endDate": "1977-10-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "KlPKtE6gnYxmkmCW", "quantity": 2, "sku": "aKoccaSwWcZmzCWG"}]}], "userIdExpression": "I1cIQcPWAShIhieS"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'false' --login_with_auth "Bearer foo"
platform-get-reward 'f3zKbyQk2vQTYX1x' --login_with_auth "Bearer foo"
platform-update-reward '{"description": "sth28NZZgsXycuQN", "eventTopic": "GIDeHlf6IcX1K9Jr", "maxAwarded": 74, "maxAwardedPerUser": 37, "namespaceExpression": "6Or2xx7rLwrPoWiy", "rewardCode": "wnxuDLLuIaSxoloI", "rewardConditions": [{"condition": "H1gBCWVFrvls0Zwo", "conditionName": "sKhDlLfTKxpVOXvG", "eventName": "SrdkqddI3ezqu6FB", "rewardItems": [{"duration": 10, "endDate": "1980-03-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "xt6fX9j7rhZCAlDl", "quantity": 97, "sku": "MJBjrV0p9A7tcHrV"}, {"duration": 5, "endDate": "1991-12-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CSoqHvH7g63cOx6y", "quantity": 35, "sku": "pGzazM2BUXnzUEWT"}, {"duration": 17, "endDate": "1985-10-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "MJAf6AgbiEDMfCck", "quantity": 66, "sku": "ogE5gcfF8AMGZ2FB"}]}, {"condition": "S93Mg6TKwdRMraDL", "conditionName": "rwh3d0ykRGkgqUNI", "eventName": "bJMJ9ABbKVWO2YED", "rewardItems": [{"duration": 18, "endDate": "1974-05-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ScvtQ92iD02YMvEU", "quantity": 80, "sku": "jpSAlZwFGpea5ObB"}, {"duration": 57, "endDate": "1996-08-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "m4ClIQmkIdLCvNhZ", "quantity": 0, "sku": "P8aqZ2yfrC1V7ZpJ"}, {"duration": 33, "endDate": "1992-08-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "CMqvcYmeDLYEzs2S", "quantity": 87, "sku": "SrXUS6jYI9lsQFD4"}]}, {"condition": "3Df5qUZOFzpFd6b5", "conditionName": "Jc5TETHcup8GG0VC", "eventName": "MTFJ6svTyo9RHget", "rewardItems": [{"duration": 15, "endDate": "1974-12-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "US8BRPGV9n769zLJ", "quantity": 7, "sku": "QnKzDgDAtqE3kuyb"}, {"duration": 47, "endDate": "1985-07-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "YEJjIYwqfSRy8GgV", "quantity": 22, "sku": "H2r0EKrk5VlnKsWC"}, {"duration": 85, "endDate": "1980-01-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "cAFn5CEPoH6opK5D", "quantity": 92, "sku": "rheNwqd5priclNNq"}]}], "userIdExpression": "LyrlzrJ4QHbfnAdt"}' 'kujxHff7n1yaNCcj' --login_with_auth "Bearer foo"
platform-delete-reward 'gFhS0URBhl0L5FCb' --login_with_auth "Bearer foo"
platform-check-event-condition 'On46W2B2uPQLrt2t' --body '{"payload": {"6bVpCgKvPXSDufmK": {}, "h783cV54JsVBRB0r": {}, "Y0xfWddACyHSmo4K": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record '{"conditionName": "X9TPO3K1k5ZM8btm", "userId": "GsgXNXbpqxh76Af5"}' 'JSwjw2fE2g6jXV7o' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section '{"active": false, "displayOrder": 18, "endDate": "1993-06-16T00:00:00Z", "ext": {"oDm9FaP0HJ98tE4U": {}, "yoQg0b0sGOkzxVt1": {}, "5LKmkQ7YBhsOuJ0y": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 88, "itemCount": 21, "rule": "SEQUENCE"}, "items": [{"id": "xVmRTawjiZPMoZZc", "sku": "yGEHxAKDQher3usA"}, {"id": "pPdJPn9eIdhIBvTT", "sku": "upABJ4RwH3EdKmYt"}, {"id": "bqQHNfIZwrMxf3En", "sku": "zZVnkLT0Lb85nmpd"}], "localizations": {"N26BY5YI0jeO2zMD": {"description": "Sy4kyqyKgrtEPdXX", "localExt": {"lt8geCdiXu3iNvn7": {}, "vLZ7h6alhJNGZF07": {}, "lsPP5OfHbXzWnVO2": {}}, "longDescription": "U4uyzZo1rj0ZrLQj", "title": "k4VoYfIksth24cZB"}, "pdDFfvzeU5iqhx6z": {"description": "v7EURTNIoG1DBdoK", "localExt": {"H6sREmmfwUZLZZS7": {}, "snx0Q2Gd8m7Y3wiN": {}, "loJfey3HXL6SjljN": {}}, "longDescription": "PTXA3qbg55SyienC", "title": "ODZ0mnOpPTVxEgBF"}, "zG8tlkxWKCU1XN4g": {"description": "l7yHvEqpJSrDXVwC", "localExt": {"khOQ161TFjROYJm7": {}, "5VIuCOCkt2W1DfI8": {}, "QtgODk9K6DcMnyCP": {}}, "longDescription": "n1FylWdaNV1VaZTk", "title": "bbuWiiA4UTDgS2SV"}}, "name": "Eo5M80LLbku9GYH4", "rotationType": "CUSTOM", "startDate": "1983-03-18T00:00:00Z", "viewId": "fppNCrscDPbklTHc"}' 'mgXsrVj3Mjml6BpC' --login_with_auth "Bearer foo"
platform-purge-expired-section 'ODWGOLMmCZUeelXY' --login_with_auth "Bearer foo"
platform-get-section 'yNrXweiCnDldRPRf' --login_with_auth "Bearer foo"
platform-update-section '{"active": false, "displayOrder": 10, "endDate": "1977-04-10T00:00:00Z", "ext": {"LZ0GTJwEjoZrRtae": {}, "WKMC8wsOByQAMAgq": {}, "FEzEt8umj5XhKnw7": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 70, "itemCount": 27, "rule": "SEQUENCE"}, "items": [{"id": "A1VynioJcAPwVHUG", "sku": "cs1ACMvoY4jWH9dF"}, {"id": "mOHW0j9suukPE4Jw", "sku": "QONQ2vCbMn0Oia33"}, {"id": "6uiiMTAductvUfVw", "sku": "LahtRedh1SiZlOpI"}], "localizations": {"Q8GL7jBF1R5OexAP": {"description": "zCG6ZKQClGc1636n", "localExt": {"bfM3J9G40Y62bCo9": {}, "41ALznQuHVskfCjU": {}, "K8GeX4Q0B2Cj0oOm": {}}, "longDescription": "BmXu1KiTTiz7yrIv", "title": "Qj2isN7bRwcr16lW"}, "5YwgZpjlMMtPWg82": {"description": "17m7qNkQiKp2oac8", "localExt": {"QTNEuBbeuQqm9wM7": {}, "mgTtUdPVcQijMBhs": {}, "0kDP6d3nuUZ41mSe": {}}, "longDescription": "S9SnGqhJOvykBcDp", "title": "zD9zh6dtPK4fVHLM"}, "vrCsH3RYxH2Up9Vt": {"description": "hPjFrK7Hip0eONFD", "localExt": {"gUPShG8wwFKY9AMp": {}, "cwJd4SrigIxAhbFM": {}, "ZfxaznlDQbzTiFrQ": {}}, "longDescription": "B1yUonirH4URx3Nk", "title": "KQBYrlUaMiFEWUT8"}}, "name": "cAFO5zEw8GENEJYP", "rotationType": "NONE", "startDate": "1988-07-12T00:00:00Z", "viewId": "2lTviKbOgVuN3nhk"}' 'n6QIesNoYqvVsaky' 'lHikKkpOjqwgKvfX' --login_with_auth "Bearer foo"
platform-delete-section 'Xs8pDqm31AZSRkuw' '6q8FgqG46RsFK7eY' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store '{"defaultLanguage": "lSU3vYcHZZjFegVn", "defaultRegion": "ZOn0tk4IATSIefcq", "description": "NEn4IZ0Dv6b8WtaM", "supportedLanguages": ["VvLbG04KKnh3jvW0", "Qp3kTyL4CsLwiWUM", "cpxn4B6XoTNMuqZT"], "supportedRegions": ["Hwo1IAJQpb6r8Zea", "SHwQuiH3Ozu4G6bX", "xp0gYZyF9fJBJkSO"], "title": "rF9Dg4FcDwBGyBiH"}' --login_with_auth "Bearer foo"
platform-get-catalog-definition 'APP' --login_with_auth "Bearer foo"
platform-download-csv-templates --login_with_auth "Bearer foo"
platform-export-store-by-csv '{"catalogType": "VIEW", "fieldsToBeIncluded": ["wZkwEeuzBBRSknxy", "WkZObuvig8sMuss7", "6ezTrsDZNYUV48Oh"], "idsToBeExported": ["6I45X7HvUtPYONZd", "Fk75lkjQNHrjaboG", "omguUqeuZh5qtrRb"], "storeId": "NnGejdTGvZgN5hsh"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'Se5YmZXKEQLkM6o3' --login_with_auth "Bearer foo"
platform-update-store '{"defaultLanguage": "eGSP4Htmr90TqGf0", "defaultRegion": "OyqJ9ibJMmRgoxNw", "description": "p1lGkYoq8HP1TM0t", "supportedLanguages": ["efVQPWX1NPO5Wn7r", "NG8rGp7Fadvo5Ezp", "X0IttsRezyY9GB5s"], "supportedRegions": ["f94ALBmvdncQkcZb", "8cWdVH9bww15zZsa", "YrJAe5Kd5QB96ndl"], "title": "O6iPGC9RhzMC7V8B"}' 'EphnRXnSpCzyb8Fk' --login_with_auth "Bearer foo"
platform-delete-store 'oxQbrPngi87K58pQ' --login_with_auth "Bearer foo"
platform-query-changes 'swqKLutINusOsa92' --login_with_auth "Bearer foo"
platform-publish-all 'F6iwkJIYOLarmpWy' --login_with_auth "Bearer foo"
platform-publish-selected 'vib9CDW21ANrlpuX' --login_with_auth "Bearer foo"
platform-select-all-records 'D9H1u1CvzWPcZwkj' --login_with_auth "Bearer foo"
platform-select-all-records-by-criteria '1l6bf2F9EXOBj7v8' --login_with_auth "Bearer foo"
platform-get-statistic 'LHYivmD0ekycMKlw' --login_with_auth "Bearer foo"
platform-unselect-all-records 'JTNL2UCWUtaAD7ZZ' --login_with_auth "Bearer foo"
platform-select-record 'x1iefATWcDSqGYRM' 'dz07xEJ40epssgJJ' --login_with_auth "Bearer foo"
platform-unselect-record 'C3CX0hpB1ZGMMo5D' 'SozCuFsrBMtoOeLf' --login_with_auth "Bearer foo"
platform-clone-store 'MCYxSeeJOlxa395r' --login_with_auth "Bearer foo"
platform-query-import-history 'ghZwGhdZJkkGhYvX' --login_with_auth "Bearer foo"
platform-import-store-by-csv 'tmp.dat' 'tmp.dat' 'tmp.dat' 'YMIyaEMEqOpwetb8' 'tmp.dat' '2b96rsH73hRfDgl2' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription '9GWKpItMt4GszRuf' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'kDFLYyNBPlMrkse9' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale '{"orderNo": "SGcMuV5phhU315LU"}' 'C6HSMQ32UznXNd6v' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'e29lqqtcLJW9eTJv' --login_with_auth "Bearer foo"
platform-increase-ticket-sale '{"count": 74, "orderNo": "qeXjaf1f5fjNMZjK"}' 'J05puX3197WrMnJt' --login_with_auth "Bearer foo"
platform-commit '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 100, "currencyCode": "vSMFw8X4zxbdfXgu", "expireAt": "1978-06-11T00:00:00Z"}, "debitPayload": {"count": 29, "currencyCode": "zzIs3Jke34ZAUuLP", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 88, "entitlementCollectionId": "ooMLnemwKAvgDXNr", "entitlementOrigin": "System", "itemIdentity": "fMH5Tu1ky1ZYvyeH", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 45, "entitlementId": "foFkUDP864shbnQ3"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 98, "currencyCode": "ICxQMit8555Niy4N", "expireAt": "1991-03-06T00:00:00Z"}, "debitPayload": {"count": 65, "currencyCode": "8CJ88aMPGFFAQZbf", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 49, "entitlementCollectionId": "mVTEbiRq5Juikmpa", "entitlementOrigin": "Oculus", "itemIdentity": "YQi9cfMCeNnu6OIG", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 86, "entitlementId": "v8H1f451FVZ630HN"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Other", "count": 82, "currencyCode": "ZSrz7pMjESLLMPKD", "expireAt": "1996-07-01T00:00:00Z"}, "debitPayload": {"count": 77, "currencyCode": "H9J6JLb5f3SBMyJU", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 11, "entitlementCollectionId": "wEBRrHAWUFqTooGG", "entitlementOrigin": "Nintendo", "itemIdentity": "NffZENs9X0hFMdzr", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 46, "entitlementId": "vhc1YjHmmulSBIEl"}, "type": "CREDIT_WALLET"}], "userId": "WH4xiz3fWthJSu2p"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 70, "currencyCode": "WHb5sbX6asrjV7XJ", "expireAt": "1994-01-11T00:00:00Z"}, "debitPayload": {"count": 84, "currencyCode": "WvSSp71zEPPfmAQi", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 2, "entitlementCollectionId": "RRC2caquMRtQOILc", "entitlementOrigin": "Epic", "itemIdentity": "9gE6SrYKq6lcVOhP", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 95, "entitlementId": "EHbiKHW7flVolAWE"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 100, "currencyCode": "SPDTRqjlvwnnCA5t", "expireAt": "1973-02-14T00:00:00Z"}, "debitPayload": {"count": 75, "currencyCode": "bq8xoCurq4lpHXrb", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 56, "entitlementCollectionId": "UdgNlyU4IJnqtrjC", "entitlementOrigin": "Xbox", "itemIdentity": "6ya8u4sQPvaf1Acw", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 59, "entitlementId": "R7tJW3MLMob1hUnI"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "System", "count": 70, "currencyCode": "MyF7CcNu2DYn6E9G", "expireAt": "1976-10-25T00:00:00Z"}, "debitPayload": {"count": 47, "currencyCode": "1kOTJZluTekDMCGU", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 83, "entitlementCollectionId": "ERxNg8djSb4Vt2vK", "entitlementOrigin": "Oculus", "itemIdentity": "5vlCdI519Pf2iogw", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 16, "entitlementId": "M5DZM0dgozmco417"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "xdYQg34WUV0WpmsQ"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 56, "currencyCode": "p1n4YGumTKOlDOy5", "expireAt": "1982-06-14T00:00:00Z"}, "debitPayload": {"count": 15, "currencyCode": "g51ZTogG0N7Hvnuq", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 21, "entitlementCollectionId": "5RMmmGdWl0wpj5tV", "entitlementOrigin": "GooglePlay", "itemIdentity": "FQMI0oZuEjY0rNBb", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 55, "entitlementId": "cyzTMBY7Xd0OoENg"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 27, "currencyCode": "uepmahXojVZYz2zM", "expireAt": "1994-10-16T00:00:00Z"}, "debitPayload": {"count": 69, "currencyCode": "jLzNV3GaG43R6nlR", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 22, "entitlementCollectionId": "EAYqRBeSc5uShoj3", "entitlementOrigin": "Epic", "itemIdentity": "XpW1l70pcZgIn4lP", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 16, "entitlementId": "iX05IT9Agsjl5Nmn"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 49, "currencyCode": "xuMHnfOlX6HYVEia", "expireAt": "1973-02-21T00:00:00Z"}, "debitPayload": {"count": 35, "currencyCode": "f9JCJiEvhL8ZfwCV", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 80, "entitlementCollectionId": "spUOyHC9eKeXzrvz", "entitlementOrigin": "Steam", "itemIdentity": "x9aGEI22BTCZs97T", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 66, "entitlementId": "pEw4Zeid4mRoFNxv"}, "type": "FULFILL_ITEM"}], "userId": "ckMQVjKk3bWJ0ZuY"}], "metadata": {"Se3sI0x2hc8vaN1O": {}, "ff5gRZZMW3huAIzB": {}, "PWBYKAEFTdlKNh6G": {}}, "needPreCheck": false, "transactionId": "zKjsCqxx24QM35bS", "type": "kFrvGciNHb7OY5YI"}' --login_with_auth "Bearer foo"
platform-get-trade-history-by-criteria --login_with_auth "Bearer foo"
platform-get-trade-history-by-transaction-id 'pOLJW52uz3c8pz63' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement '{"achievements": [{"id": "M0g4xXT5Ts4e0uR4", "value": 42}, {"id": "OzUGHeBKtpvyRNgj", "value": 83}, {"id": "kdDppvEJiUiDGXgh", "value": 56}], "steamUserId": "3yoMxzRR6xd9rTh3"}' 'ureaIbxM3Wev9pZQ' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'jWAN0tny16ZHZtuS' 'JGQCrM7JEMRPkdTc' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement '{"achievements": [{"id": "AzkIlndN5xeayr3v", "percentComplete": 96}, {"id": "SjzQfOLYu9O46OOz", "percentComplete": 52}, {"id": "nxnH0QIhoJRY807V", "percentComplete": 25}], "serviceConfigId": "7TqtMiQgi7Aj28qC", "titleId": "RbwwZc4ZS1NMkrnH", "xboxUserId": "s1Iyhwqk140MolIr"}' 'nlkRVbcX435TDYpk' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'k2Gza6DrSycophHw' --login_with_auth "Bearer foo"
platform-anonymize-entitlement '3EoEEClTO9SDKnMl' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'nKW9jiNMu9QVrMeD' --login_with_auth "Bearer foo"
platform-anonymize-integration '4bD8gISE34yIAZQe' --login_with_auth "Bearer foo"
platform-anonymize-order 'igiA3wBrmBYIlZeh' --login_with_auth "Bearer foo"
platform-anonymize-payment 'eP72AB8EO3YrlyrW' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'owUpUDVLlTtuJJsH' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'ZVsG6izJZruOJvSR' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'FLDSdj8elbtHvDU9' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform '1DmHzwiqVPCJ5j18' 'PSN' --login_with_auth "Bearer foo"
platform-get-user-dlc 'RYaD9WNKGhbLhjz1' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'v0RBIO2rkJGmPaK6' --login_with_auth "Bearer foo"
platform-grant-user-entitlement '[{"collectionId": "HEVIQJd3930TGewj", "endDate": "1993-07-17T00:00:00Z", "grantedCode": "O9XSjap24esyjh6W", "itemId": "c3migf2n6iQyr5cb", "itemNamespace": "5YL6fwBiaVPmmn0T", "language": "VgaB", "metadata": {"mi2NY26xrkPPdg3p": {}, "XjmtpNfCrIj9ntYo": {}, "3dupUHNu8abrVVOK": {}}, "origin": "Playstation", "quantity": 83, "region": "r9Pa315FKDjG2ApS", "source": "PROMOTION", "startDate": "1989-07-14T00:00:00Z", "storeId": "IyZAFQ6lZfa2jdNv"}, {"collectionId": "pWf32JS1av9VNpVL", "endDate": "1994-10-29T00:00:00Z", "grantedCode": "ERSVy5M3rrkxu0U9", "itemId": "h9gCNVZxHGxhZqNX", "itemNamespace": "J6JXSh0Z3SWISs1d", "language": "Sk", "metadata": {"x1BT6iLFQejNZJNF": {}, "2hm0TqBQprHn3whP": {}, "KU5abnqw8fFa30pV": {}}, "origin": "Epic", "quantity": 80, "region": "hr1BHh1arZAyuLcZ", "source": "OTHER", "startDate": "1997-09-03T00:00:00Z", "storeId": "JOQxWeHypqCWMDPR"}, {"collectionId": "I2cCk8zHR8VyCC0E", "endDate": "1992-01-17T00:00:00Z", "grantedCode": "wE0cXokXbwKDtVmr", "itemId": "YQu7hZvHfiT9s9pK", "itemNamespace": "8HuUY1QQHQ0NCEdd", "language": "BUkY-fpVp-ml", "metadata": {"xlpvqaB9P9GaukfC": {}, "EIeSBLhTfzigzHcR": {}, "uJgYaj4I8Dzyh1N0": {}}, "origin": "Twitch", "quantity": 89, "region": "EKNoMtHvjM7X1fjz", "source": "IAP", "startDate": "1985-04-22T00:00:00Z", "storeId": "qbbHGJGOTvKKRTHD"}]' 'ntaFiufH2YR6QU7f' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'j6w17arNs12hOoLV' 'M7UFnuJDzeEkDxaV' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'ogxHrOon2OW4Zw5Q' 'GAME' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'PcdOuq0m0rvakR8r' 'cwojLRjhcaJ56nGl' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'YZ2tod2BGBXjNyRC' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'tPOr1FU3QZy3gdDm' 's3kb1htW0UGJpwQZ' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'lXuzu3m9u67JjCDw' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'g186hGWKfO9MnoT3' '["t99HmcxzjDhTrcBK", "tU956hOg8oukDVdw", "eG0sFHxTHa2k60Sz"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'CqUgq1gLbcIMevTm' 'C631p7q794bu49lI' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'NFTtERAXT2h3hcQ2' 'wV3ZbBTnNQnVUhA5' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'WnzVZdj8tsyzC4Qa' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'LXp3o4TDraEEaDNJ' 'bVd20FVHevCjthJU' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'b7jKuMrFaoLulzp3' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'sZxImVK5yh2LcM8L' 'aMW0ByjsRUrAHNRk' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'IcC4wNFzsbrtYvLh' '56AWXoMiowdWSs9D' --login_with_auth "Bearer foo"
platform-update-user-entitlement '{"collectionId": "Q0VU1HED9CGo9aUX", "endDate": "1976-08-28T00:00:00Z", "nullFieldList": ["rh0UyqxVWlIMY5tT", "Jw4KV104MtMhKHmS", "jqPuQZX5KjdNrEwf"], "origin": "Nintendo", "reason": "V97SJLlrwXmIGamR", "startDate": "1985-10-30T00:00:00Z", "status": "REVOKED", "useCount": 19}' 'RuFLx4rV4CXVMrDY' 'Ke2eTf1axo16GqT2' --login_with_auth "Bearer foo"
platform-consume-user-entitlement '{"metadata": {"vSLLiMvcu39YZJyp": {}, "WzpNXgnoKIz8O8Ng": {}, "lJtZTh280vflFMxI": {}}, "options": ["hlIT8AgyZJ16MMd2", "bzOrTn2huwPgyUzB", "UWiKoNGtvyk5xEfr"], "platform": "JDxKsw5Xl7ZZrDZd", "requestId": "buvCFBaVcohewKkV", "useCount": 42}' 'tw1SrM2nhSEanfUY' 'rMU6A43UKGpvC1cr' --login_with_auth "Bearer foo"
platform-disable-user-entitlement '5T1PSXhduTWchzXD' 'v3TAtBjP4HSuiYCb' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'G0UyYUJmNL8p6Abd' 'tU0CDrlQpKB8qoel' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories '2QK3aSOYdmMDikc3' 'Fjm9HoQDemtiQvUR' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'YZCeF30RT9rBgM8o' '7lxXq7TkdM7FVDCB' --body '{"metadata": {"cvVegrZddP8lLQo6": {}, "tHj4z4cAM4LMJfWN": {}, "ZIxAgBpeubprKX68": {}}}' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement-by-use-count '{"reason": "jTyRd3LrR1x6U1v6", "useCount": 51}' 'xqBlPBYJ7X6uVy7F' 'WTSfMi2CPVGxjcdp' --login_with_auth "Bearer foo"
platform-pre-check-revoke-user-entitlement-by-use-count 'dCqVeePMSqb8y8qJ' 'TUQY40Zrpn0vAD9Y' '37' --login_with_auth "Bearer foo"
platform-sell-user-entitlement '{"platform": "qqqff2iWi4yP3uqN", "requestId": "cig6YcDA8Z3g62oG", "useCount": 69}' 'wkrjLI4EHJEEWgki' '9fbdvUMDZeO4U55w' --login_with_auth "Bearer foo"
platform-fulfill-item '{"duration": 6, "endDate": "1994-08-22T00:00:00Z", "entitlementCollectionId": "oRh6r0e0J6vyqPw7", "entitlementOrigin": "GooglePlay", "itemId": "lmV3kES0Hi88UYgS", "itemSku": "V40OvY7apPCrN5bE", "language": "hmuHgKeWizEpw1zN", "metadata": {"0mOYgGhHMz9dddLW": {}, "JWDuSYtCaIv4Lp91": {}, "wYUJPbvzn8TYoMDA": {}}, "order": {"currency": {"currencyCode": "aUXSuBQdvdhJoT0W", "currencySymbol": "K5ngNUxDKfZYofPG", "currencyType": "VIRTUAL", "decimals": 2, "namespace": "ZX6plErw0Gb0ceCb"}, "ext": {"phW4YMhJ0S50bez9": {}, "ZLHW882riiPfRQ3r": {}, "J0f5lwXvRNDBnmL1": {}}, "free": true}, "orderNo": "Qn77hiP1lzkzjYDw", "origin": "Other", "overrideBundleItemQty": {"mLBordrJkD6vy60u": 88, "UAJIHEZv5zyUUyNJ": 20, "Yx2TqkhlqMnE9Wj9": 16}, "quantity": 62, "region": "krN4pWryt4XTNwpp", "source": "EXPIRATION", "startDate": "1978-03-09T00:00:00Z", "storeId": "GaJsdCZND0wgYOil"}' 'X1e1825iasunESjc' --login_with_auth "Bearer foo"
platform-redeem-code '{"code": "gr2drXG5NkKCySLA", "language": "wl-TlQD", "region": "FYRSa2OULZ0iOZJi"}' 'OAh1SpLhMF2Pav11' --login_with_auth "Bearer foo"
platform-pre-check-fulfill-item '{"itemId": "FuU8iXCRz8Kgqgwi", "itemSku": "jYxpGhsFArq6lolb", "quantity": 19}' 'lNYYlHPwKDpJmkeo' --login_with_auth "Bearer foo"
platform-fulfill-rewards '{"entitlementCollectionId": "Akp3Z4pgyJYwclb4", "entitlementOrigin": "GooglePlay", "metadata": {"KftVqSECsypS42Nm": {}, "YQ8HlHbHnfs4tLVO": {}, "YQCWMktmiKd9vLPP": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "w52JRAZxMWdoleYN", "namespace": "HXeOpaRDwYLge851"}, "item": {"itemId": "PbK2MFKvw5TWjAh4", "itemName": "gy41LLzQ2IjY5PeN", "itemSku": "r4JmYxH2qs28hePJ", "itemType": "jMp0TKKUBfPNI9f2"}, "quantity": 30, "type": "CURRENCY"}, {"currency": {"currencyCode": "LWDPSZexfKVxqdxm", "namespace": "h5QWxuQuI7gdDTDb"}, "item": {"itemId": "3WdnOpzTrRzCCafA", "itemName": "DJfWBspT3MLwJZqu", "itemSku": "MQSPp5XD4S1ilfgf", "itemType": "f7Et4uY8nlBwGNHg"}, "quantity": 11, "type": "CURRENCY"}, {"currency": {"currencyCode": "bQQ13FhD3NExUFip", "namespace": "JsUiDawAjgHFQk0V"}, "item": {"itemId": "zWRNFNiUn2yXMSCc", "itemName": "HADYpS861c0CJ7Lz", "itemSku": "pFvOSF6xKA6yrnvX", "itemType": "Y5dDwneac75C6S2e"}, "quantity": 69, "type": "CURRENCY"}], "source": "PAYMENT", "transactionId": "Qwj5xPvm7c5nPR0Y"}' '1sffUaZ64dFpiv8o' --login_with_auth "Bearer foo"
platform-query-user-iap-orders '9Gw4QtKgyIeySoUx' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'oMrj2J4JGQZAtyjT' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'xnlmSyjEaFH2DRN6' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item '{"itemIdentityType": "ITEM_ID", "language": "fQZj_DukZ_tv", "productId": "4Zu0SbTt6M2Xizik", "region": "Ch6q0yq2WAHtL7IW", "transactionId": "E3MFqvfDG5jvMOaX", "type": "PLAYSTATION"}' 'bcebBd5wb5H3qppo' --login_with_auth "Bearer foo"
platform-query-user-orders 'CiHMD4iBK2O7qYtO' --login_with_auth "Bearer foo"
platform-admin-create-user-order '{"currencyCode": "HV5hnpjc5CNLnnEv", "currencyNamespace": "o25aEtdjls5oadse", "discountCodes": ["D4HDmdvhMXxiKR29", "LKIhNU43K8bihdw3", "Jg7y4Q9CU3fjSRaX"], "discountedPrice": 31, "entitlementPlatform": "GooglePlay", "ext": {"rp0UHlWUxkBefhxR": {}, "trqbv56oqwnCLVc2": {}, "qHZuuedbBOd19DqZ": {}}, "itemId": "JRYV1oqNLmPAUIMw", "language": "a2wYq6DsUq38bYva", "options": {"skipPriceValidation": false}, "platform": "Nintendo", "price": 50, "quantity": 76, "region": "94eP7yh0zsKhR60H", "returnUrl": "ZwUwk48XK7MXHbEw", "sandbox": true, "sectionId": "B7cNzHhvxc4xAPZ8"}' '6WNnQOhusPn4466u' --login_with_auth "Bearer foo"
platform-count-of-purchased-item '8agb5HPsBU0Eo6QJ' '9vBRJ4UP09fabC01' --login_with_auth "Bearer foo"
platform-get-user-order 'Thm9f4AWpyiKVT3O' 'vEujx5yjtQSCJaOH' --login_with_auth "Bearer foo"
platform-update-user-order-status '{"status": "FULFILL_FAILED", "statusReason": "H5jw99HxCjXWcaXB"}' 'cfXXeV7BXefsSgZx' 'SYnVwXqF6K0WA76K' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'l2mHHoz6qBQnEDgX' '49n1xTDFcmOm1sqd' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'IWU6ERylESgf5dXM' 'rPoYSohfrLyXMSrC' --login_with_auth "Bearer foo"
platform-process-user-order-notification '{"additionalData": {"cardSummary": "62xYtDwflNGfufW5"}, "authorisedTime": "1972-08-25T00:00:00Z", "chargebackReversedTime": "1973-02-19T00:00:00Z", "chargebackTime": "1989-11-04T00:00:00Z", "chargedTime": "1973-12-16T00:00:00Z", "createdTime": "1985-12-14T00:00:00Z", "currency": {"currencyCode": "ypsceITTkJGGCVF6", "currencySymbol": "LrILDLviUCzmDAaW", "currencyType": "VIRTUAL", "decimals": 90, "namespace": "z1c7ZuZXUCBYnkY0"}, "customParameters": {"LEBSYBdUSiTOrhB8": {}, "hVs29WOKmZRTtgyc": {}, "LzXz6lUMKi5mweME": {}}, "extOrderNo": "Zo2ZnL1Zg2JfH4f7", "extTxId": "3jAevOnES6YJLlb2", "extUserId": "AfUEEBbqMMKvkOsR", "issuedAt": "1998-06-29T00:00:00Z", "metadata": {"fHUyirMVMOFES2J2": "OzNlJE3uqZz574g3", "1cA0PwZxTIZVSGQy": "Tzhs9Asy4d629N4Y", "nolVWA2dWxBs056j": "kPCUuE1pgdHvlQKi"}, "namespace": "R7SDQUDavOlKT5EI", "nonceStr": "HNhJQq94Re5IM1ak", "paymentData": {"discountAmount": 82, "discountCode": "RUysya4J3rvTzMTM", "subtotalPrice": 92, "tax": 57, "totalPrice": 46}, "paymentMethod": "0QPQPEp5UtwUWGt6", "paymentMethodFee": 40, "paymentOrderNo": "UWFTLq0W1JqwKs1m", "paymentProvider": "ALIPAY", "paymentProviderFee": 16, "paymentStationUrl": "0L7IOHlf6j8PZOzU", "price": 17, "refundedTime": "1977-12-15T00:00:00Z", "salesTax": 8, "sandbox": false, "sku": "Zqz5NSp0B7LODN3B", "status": "CHARGEBACK_REVERSED", "statusReason": "6IVE4fzwG3BHaRcZ", "subscriptionId": "8NK4gkLmvEOaRcqT", "subtotalPrice": 12, "targetNamespace": "zc1RDVhs2lhdzxxg", "targetUserId": "ibuqUuyW3cMz9Yyd", "tax": 43, "totalPrice": 87, "totalTax": 78, "txEndTime": "1983-04-24T00:00:00Z", "type": "41M1gzGCbaxw33rN", "userId": "bE4bbDU4FMTbQaAN", "vat": 72}' '8Um1iqehObg3OZ9j' '0HDtbqMFlgHKQIRt' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'LfPngD83roOeqE7f' 'cCAeExeQX43LpmdM' --login_with_auth "Bearer foo"
platform-create-user-payment-order '{"currencyCode": "iZeyIrA4QUKSJgEC", "currencyNamespace": "zvaWUCA7wKru7ry3", "customParameters": {"AQ2sEHvSxjWoM1rN": {}, "JLM0OOVG5cG6XxEN": {}, "bWqlX7idzjpKDfwl": {}}, "description": "6XlCF6YxFMD8tJQw", "extOrderNo": "ZvUVInos5RK100yH", "extUserId": "89i8ZDPXRL8cbTAn", "itemType": "EXTENSION", "language": "ch_AgBr_601", "metadata": {"6UGXPhoNZlXMef7A": "vS3TfKx6ByTygbtO", "tcQS4Cmgw1wRUnIV": "YxY6OhdkrYiCinoV", "Ozo4Plv1IlTpEhjT": "FYdzsUNvQAn2LuMj"}, "notifyUrl": "LqwmVz3zKsfjz1mF", "omitNotification": false, "platform": "CEq7FQ2S5VeW9ddx", "price": 52, "recurringPaymentOrderNo": "2A4R3wDdSkNfHJtA", "region": "3QiX9ZvtydbaVb0s", "returnUrl": "cd97A0GP6djn2Ps3", "sandbox": false, "sku": "T5hUZ3cnDq0ddZG0", "subscriptionId": "EpfGAqHKcSxUc2Yg", "title": "Rpk2IFGIgIpscUpV"}' 'Aciu2XPPUxzXHUvx' --login_with_auth "Bearer foo"
platform-refund-user-payment-order '{"description": "hvTZcvRKoaM4ozSA"}' 'g8FTLrByWOJhboco' 'GlPzdfxcC3rpWhSp' --login_with_auth "Bearer foo"
platform-get-user-platform-account-closure-histories 'q0InxMLpP7n7M3JX' --login_with_auth "Bearer foo"
platform-apply-user-redemption '{"code": "jEvsj5WcQ99M1yuX", "orderNo": "eqV31LX2ehcMnM6Q"}' 'tjzQjDlUMCGnxZwa' --login_with_auth "Bearer foo"
platform-do-revocation '{"meta": {"k7KHnzGASmVzePIr": {}, "oz41oQCuXeTRyJQr": {}, "NLTcqLVTN5Qf4tjP": {}}, "reason": "Gpu27yxb1of79zVT", "revokeEntries": [{"currency": {"balanceOrigin": "Steam", "currencyCode": "IfgdNphqe9fS1m77", "namespace": "MAg4KoZQPLhDSJx9"}, "entitlement": {"entitlementId": "jzxaRKph4kiIFgS4"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "hp1OkMcErmeH0lX1", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 19, "type": "ITEM"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "aXgQ94flh775AQfz", "namespace": "NjQ7IuMSY2epRDJj"}, "entitlement": {"entitlementId": "DyMDKQhuTjtQZyIi"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "tKY0KsxR0rCFkyiQ", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 84, "type": "ITEM"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "nTbKdwNhiIP7dpJ8", "namespace": "B8VwFQnVco2oCn1K"}, "entitlement": {"entitlementId": "vJmbjapW9UlEqtzD"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "KFEtwESJCe2ksG3n", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 85, "type": "ENTITLEMENT"}], "source": "IAP", "transactionId": "H2fILFzOlAZbDQAE"}' 'JLbVWH2XLIg3Mgmd' --login_with_auth "Bearer foo"
platform-register-xbl-sessions '{"gameSessionId": "SvWp3h0xPsVY8qNw", "payload": {"B2TY4v9NNfQSYLFK": {}, "Sl3FNFFJnt3rIwZd": {}, "W02Su6aCnL816aH6": {}}, "scid": "gOBUIMeL0GL3aefS", "sessionTemplateName": "DME8X2MxILI42BJM"}' 'PkZmay4Csye3iJLt' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'jsu6ZJRCoDq3geuH' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'FFaZzPIjETqcKN1g' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '{"grantDays": 0, "itemId": "3z2rtjWpJAlKHF0e", "language": "bxhJ1176CeD4dWCp", "reason": "4wqlQJcZroNQiefB", "region": "nPluOIjZyvlGDQGv", "source": "6pNNowEuVVZM28w4"}' 'mnYvvlt1es7A4PFd' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'uN4gx0UC6eWKCFGS' '97Si6XyLVPrkUxyZ' --login_with_auth "Bearer foo"
platform-get-user-subscription '1OH5Nn4nMT8QOyTu' 'USD9ImtaPAocOQcp' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'BWSNrCjSNEAdojkC' 'MmYyTGO07foRZ6Fu' --login_with_auth "Bearer foo"
platform-cancel-subscription '{"immediate": false, "reason": "9PSsquWUafwbFPX1"}' '5633pFgA7i9tqvfH' 'mFvUZiUW5Y0CYw5O' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription '{"grantDays": 38, "reason": "SGwQkJuy9oLFcHHc"}' 'raLXR2n9JQvq7NKW' 'IHYsii3fCh7sieJj' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'ZPAkiWumllU31uXP' 'wYxedGHCIkmt4bfJ' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '{"additionalData": {"cardSummary": "OhNaIT0pv7XeqO8g"}, "authorisedTime": "1997-08-06T00:00:00Z", "chargebackReversedTime": "1999-01-18T00:00:00Z", "chargebackTime": "1972-08-17T00:00:00Z", "chargedTime": "1978-12-29T00:00:00Z", "createdTime": "1973-05-28T00:00:00Z", "currency": {"currencyCode": "WTGYx2ihgioL8VvE", "currencySymbol": "zHGTt9emdCLmzJbd", "currencyType": "REAL", "decimals": 100, "namespace": "ykVAnmnRfUilcKA8"}, "customParameters": {"4d9pMsl7zrNJvDiP": {}, "2hNNEI8QrQ6H1ro5": {}, "CtU8UjgyCUpM1JBc": {}}, "extOrderNo": "Tzf4dz1BojPoQg97", "extTxId": "6409vFd5z9r4nJWU", "extUserId": "vLp1wxGF747468MX", "issuedAt": "1995-05-10T00:00:00Z", "metadata": {"i1TMBMzaOrxuKvtU": "VtqbDWnJ2i9TRmJO", "qIl7U12hO5vpk9DO": "SgbsdGVPLD9A5Nmu", "ZDUV3yHurgOfba1X": "eoHYTNoRol84Ulkx"}, "namespace": "tP5Vok9sNK1ORg3t", "nonceStr": "ChsS3fFpaS1uq1mH", "paymentData": {"discountAmount": 29, "discountCode": "p4JR7xI59Z9tfGVs", "subtotalPrice": 13, "tax": 35, "totalPrice": 22}, "paymentMethod": "kWHNxiaNyqBfgw58", "paymentMethodFee": 69, "paymentOrderNo": "LIoshGnFSuHmrqej", "paymentProvider": "NEONPAY", "paymentProviderFee": 85, "paymentStationUrl": "PnhBDOWqDU8N3DjV", "price": 97, "refundedTime": "1973-06-09T00:00:00Z", "salesTax": 34, "sandbox": true, "sku": "n0jfyDbtIXICLkK8", "status": "REFUND_FAILED", "statusReason": "vbnTg3znlg8nmzQx", "subscriptionId": "1RsYhcRlv16Wwe8Y", "subtotalPrice": 76, "targetNamespace": "QFtW8QGKFZLrIfqr", "targetUserId": "Zuu7IwKcT7sAsv2T", "tax": 75, "totalPrice": 59, "totalTax": 67, "txEndTime": "1971-04-30T00:00:00Z", "type": "YMVkXEHmsHwIGGsu", "userId": "sS0zZRODEKPdudZs", "vat": 77}' '6aGJx5OFp3jKEx4a' 'SGdwTPX4ig3NVFFk' --login_with_auth "Bearer foo"
platform-acquire-user-ticket '{"count": 85, "orderNo": "8nWKJjv06PuffHgh"}' 'AQfAsYXVzBenLtaA' 'oYyRfiCWrm3s1Ah3' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'TII70MIcBMJ04508' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code '{"allowOverdraft": false, "amount": 81, "balanceOrigin": "Twitch", "balanceSource": "TRADE", "metadata": {"edx0CVRpd7SwZw2U": {}, "kjDzJ4NuMMgI13np": {}, "lXaUQV5QEvKElLfb": {}}, "reason": "B7gwwAR1xFrnyirw"}' '3iJt5iA3JS2xeaJ0' '8JrSHPqdhKHn6ZjZ' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'Mdr1C2TIQzRJY7Uf' 'YSrdN0JVz4U43EcV' --login_with_auth "Bearer foo"
platform-check-balance '{"amount": 20, "debitBalanceSource": "OTHER", "metadata": {"IMBUM77XmemN8LO0": {}, "3mnFSq9jJTVFoFjx": {}, "Zjh5qUR1Pq4a4uaM": {}}, "reason": "fd0SQAfYIyzHL8jx", "walletPlatform": "Epic"}' 'VY6g3PO4hKAeF4GU' 'V5m96qcCJsVOWtu5' --login_with_auth "Bearer foo"
platform-credit-user-wallet '{"amount": 91, "expireAt": "1991-12-06T00:00:00Z", "metadata": {"8xC4D0FsUo3IB2kX": {}, "5REQZsHyXzoIXNf0": {}, "KbL9HyJttdgfLGO3": {}}, "origin": "Other", "reason": "brq1xsGpdobYun8h", "source": "ACHIEVEMENT"}' 'g73c6UpmA4ehxNII' 'lcrZzgameT2mLkkA' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform '{"amount": 79, "debitBalanceSource": "PAYMENT", "metadata": {"jHyI0e2Axj0nZHjm": {}, "oKHJngwMe1AnQVj6": {}, "QQjZtkNJCnDSrsSe": {}}, "reason": "y2BqOxgwCymCDYsu", "walletPlatform": "GooglePlay"}' 'EHlwdeJyhsHS6YqP' 'udWviQsULL1txfX9' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet '{"amount": 40, "metadata": {"Q2Y6ZGOiqrg3lpqN": {}, "5bOfnqJ5bzDRzbhM": {}, "xfEDE4TrtIHyyMq7": {}}, "walletPlatform": "Steam"}' 'ATxd7Mzjv1gSj8kc' 'NhoqcRZRNATojM7d' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view '{"displayOrder": 0, "localizations": {"rXqwGVIRWgTNHCka": {"description": "3Wb5kH1BrLWUetP7", "localExt": {"nmESQDV3BD1nnEzo": {}, "UlUWqP4ElzL44KEm": {}, "3uHBMCP5ckjphURs": {}}, "longDescription": "4ksgsKJ2R6Jacwwu", "title": "8W1zvrKMRPvwA9k6"}, "yJz03NETdywPqYer": {"description": "rpOm4M2pM4fIfcHB", "localExt": {"WZM50aHbPXRns3qw": {}, "YL6LwGlZGF7XQPLA": {}, "cIL7FvAMWqhyyNZH": {}}, "longDescription": "1CducB5y5iMdeBG7", "title": "REG4meKEabfVXBJP"}, "IZqZC5d6JuFdcfiN": {"description": "f0DOHKwxDF5GJhCj", "localExt": {"VHiCn2hTefT8gPFJ": {}, "4WndMpQhcLK0WTZb": {}, "tmQkwC8azx3IRWme": {}}, "longDescription": "3C6p2r4D3NQdjrjk", "title": "X3AMgK3JgZufzssA"}}, "name": "284mG7uAojLYBsx8"}' 'oqMzbE0ljQaBtb47' --login_with_auth "Bearer foo"
platform-get-view 'V691j0FZp2vjOXpt' --login_with_auth "Bearer foo"
platform-update-view '{"displayOrder": 49, "localizations": {"PTdurR3MYda0Y0BC": {"description": "O4qPnvxERWjKasq5", "localExt": {"zQ6uZNwKjnX7vDIq": {}, "pcjmaq5KBCsHlwNr": {}, "fKJrkzwR40tfd9GF": {}}, "longDescription": "XChtxB10d4Q8nlBt", "title": "hUSu4WNfTvD5UcES"}, "1eLMZs9lSQVDp16q": {"description": "VIqXCK9dS5JTbdJE", "localExt": {"e6mnkYAfw61kyKk0": {}, "UXUF2523OTvOmfVN": {}, "JNDaSO3FEkk4It6V": {}}, "longDescription": "8Bu7rIjGrxUMKbv6", "title": "0ixUuUhopdqGrqRZ"}, "124P7PauXTrpWAjw": {"description": "atSvtPbAFn8oWQcm", "localExt": {"FkkRX6EqadAEIzxl": {}, "d80Ynss7hc3VUxxZ": {}, "IgkTLqMeJPCbs8jW": {}}, "longDescription": "mTteJhwNbwHGG39Y", "title": "AZJ4HuLfeTfFBTOF"}}, "name": "FMJ9pq511jZcTK8z"}' 'mMfyshYk3b5cAFVo' '85r1b8Yp2QnuhQuI' --login_with_auth "Bearer foo"
platform-delete-view 'dvZdj6AspWBfRnLc' 'Lbp7OmcrDJ7u1rrR' --login_with_auth "Bearer foo"
platform-bulk-credit '[{"creditRequest": {"amount": 86, "expireAt": "1972-04-26T00:00:00Z", "metadata": {"rnOzbsFBqg6dziWv": {}, "dNcwfUBMdNuTaiLx": {}, "FMXRpDP9xutntU8x": {}}, "origin": "System", "reason": "oj9rgr5RffM5JXvP", "source": "ACHIEVEMENT"}, "currencyCode": "C2eCFUAHZaYSvsWi", "userIds": ["NJtqXltZF6aSRmHU", "tOgDQAWhulbrDf7q", "5iR3hXIbzWPKOkzf"]}, {"creditRequest": {"amount": 5, "expireAt": "1998-08-05T00:00:00Z", "metadata": {"aXFY7SQkym9KvKMH": {}, "K5fbqioeoRIplY0D": {}, "IzRCNAO6ZpqXJmPJ": {}}, "origin": "Oculus", "reason": "iH9z4E8zmaZ5cg0R", "source": "PROMOTION"}, "currencyCode": "L16HQdtAneXGgxNg", "userIds": ["33ZIUrIkfmdXVvaP", "rXLZnuMNpKEIs3GC", "QzzKdFg7N7piT8Vc"]}, {"creditRequest": {"amount": 81, "expireAt": "1995-09-01T00:00:00Z", "metadata": {"K7tkJWFpHt7MdKu9": {}, "Xwn5GHJDGatrYOMO": {}, "91CYEjX867n9PT9f": {}}, "origin": "Other", "reason": "7mMuBXPDKCriRKzT", "source": "SELL_BACK"}, "currencyCode": "59PhdUXShabwyYCx", "userIds": ["UX9y4tY7o5FFi1n1", "zw4zL1QeR3EYXBFp", "THrDel8oThvr8CUE"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit '[{"currencyCode": "0vDgyoHXIlrMl2RA", "request": {"allowOverdraft": true, "amount": 6, "balanceOrigin": "IOS", "balanceSource": "OTHER", "metadata": {"CL26ihdMy9YCLNJE": {}, "kvq6SUSt8xd8EgE1": {}, "5XNuw6Y7sToQNkuZ": {}}, "reason": "zJ1XBxw01iBBQukg"}, "userIds": ["2sKjIeyFS97dYD7L", "Q94ZvPCWcMX0ov3U", "kcTKYpCfl6HPy5cJ"]}, {"currencyCode": "fAV5iOfzwt3bpxRN", "request": {"allowOverdraft": true, "amount": 81, "balanceOrigin": "IOS", "balanceSource": "OTHER", "metadata": {"KoMjCPtEKeBWTm78": {}, "Fn8TvZVTe4L2lXrV": {}, "PX6r5ZTcnVVOKMAp": {}}, "reason": "TcWsFRUlWBp4gBs9"}, "userIds": ["qSPYZgPm4JLsXVtB", "Q7HMPO4ozK705ykR", "UufgsVbG6TUe3jbu"]}, {"currencyCode": "OEetHsxAJ8Ny1LRk", "request": {"allowOverdraft": true, "amount": 96, "balanceOrigin": "System", "balanceSource": "EXPIRATION", "metadata": {"hrl5nkpEdBe8bYWd": {}, "ok4UnUEOyP0cPZf5": {}, "OvolfI0mqZctohLh": {}}, "reason": "eRaQkfMLFW9B7jHZ"}, "userIds": ["NGrcQyoA1TWPcy83", "iXfYXNdMkdg9TMwx", "ro4hhwnANAGp8zGq"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'NcQ6CkVi8fqVPRqN' 'bF5yLnYSa8xFLvcY' --login_with_auth "Bearer foo"
platform-test-adyen-config '{"allowedPaymentMethods": ["exMMMiDFh5RbW021", "cHN3QbzVuJZH3k54", "cExxWKtdGTW4FILo"], "apiKey": "tv5ycTa0i6ifYP1z", "authoriseAsCapture": false, "blockedPaymentMethods": ["AopZL9Cw6K9h55mw", "UvhdBOgumV4wAsd4", "ifGd0bkWrlhtfTyw"], "clientKey": "RW4fmg6btk3mAO4E", "dropInSettings": "tB0hn2x1oTOX5gBQ", "liveEndpointUrlPrefix": "lVDx9neFHWhDRJty", "merchantAccount": "YEt7ygZleAoUuVKn", "notificationHmacKey": "eoO10ytPdJ8SY3qo", "notificationPassword": "ogOxoPYvdIBJYyGU", "notificationUsername": "RjEjnslEYM8ngVT1", "returnUrl": "ewVxvgAocOqsd5v5", "settings": "n7eXCo9gZWdxfIdW"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config '{"appId": "8fNAM5YdHivK2Q0W", "privateKey": "wolQy037hJMOEv5W", "publicKey": "0v25yAObZIbrA8XA", "returnUrl": "KKWMDebehSjpt0wr"}' --login_with_auth "Bearer foo"
platform-test-checkout-config '{"publicKey": "fWPXaI1Jb75o2MFO", "secretKey": "a6xgPt69QROGDeJC"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-neon-pay-config '{"apiKey": "yHvUsnLvXCSgQHvs", "webhookSecretKey": "25eiQO3oWdgXdm1I"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config '{"clientID": "xL1OtleUBqBO0Ze0", "clientSecret": "49k9W6ZLVJzRpUsI", "returnUrl": "TfVruDukun42zPZv", "webHookId": "Od4yZyMKyED3qDO5"}' --login_with_auth "Bearer foo"
platform-test-stripe-config '{"allowedPaymentMethodTypes": ["HXp5oVkhESbHQ7hv", "Tlzf7XwQtVIYU87N", "gjDMcJxfMfYFlt3J"], "publishableKey": "vDgMiyBGygWFTAY3", "secretKey": "Th5mOwPCPKVPlOGf", "webhookSecret": "FBlu2ZP0IkiYXGk6"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config '{"appId": "BoBmSLi0R7zDFMoN", "key": "TQmlS8lMlY8Ujprh", "mchid": "CxhzW6ZM7LkTVrtV", "returnUrl": "JZVhxCVdjPutJ8dk"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config '{"apiKey": "AVOJ5imghdfVhjnj", "flowCompletionUrl": "d66A1SQmWGSQLAVP", "merchantId": 53, "projectId": 99, "projectSecretKey": "J7zX5lB80k2smdkB"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config-1 'S2MaIP7PjngEFggq' --login_with_auth "Bearer foo"
platform-update-adyen-config '{"allowedPaymentMethods": ["91cpgvoDBgYfLBdG", "NAZEvbvxqa0K7VUb", "jUnzirnEsxSE4vBz"], "apiKey": "G7VK8sWEshmZf5fE", "authoriseAsCapture": false, "blockedPaymentMethods": ["QNmCQmGCF963CbsO", "awlRBQJH6fNekhk0", "77gxaj55huTA6Avm"], "clientKey": "W0567BFqbrPIuxKm", "dropInSettings": "BXLi6GpnqAeMvg3w", "liveEndpointUrlPrefix": "0FQ1520WM3TxWXSd", "merchantAccount": "TiKdva2UREoBSFtC", "notificationHmacKey": "Ly2CqgCG7JwJCDqk", "notificationPassword": "zOdFwLJpIPxzLE1V", "notificationUsername": "9U1NgpH7Oc44yjRd", "returnUrl": "fqZgv34GqqjelcN0", "settings": "GJmPwUTWMx0MiPAj"}' 'nWIhFrqSn4erXEtU' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id '1CaD8AqsMCGBNhmU' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '{"appId": "t6fzYRn85brTu8F7", "privateKey": "cuCPh1TGZJmgWNHW", "publicKey": "nvOBRCt4onqRo2Pn", "returnUrl": "MSRarKg4coy3AFpU"}' 'LIn21Nf2FNgDWNC6' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'yh7kgTHlrxKbsV4X' --login_with_auth "Bearer foo"
platform-update-checkout-config '{"publicKey": "trI7SFBEgkwHifMH", "secretKey": "YI581HbF7fMX9lDX"}' 'YxGRJM92eX42WW2W' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'Kf5urEOpASBicX3Z' --login_with_auth "Bearer foo"
platform-update-neon-pay-config '{"apiKey": "wzZ7aVhrkmhSOEoz", "webhookSecretKey": "GOv8D0iVxzrec5kN"}' 'wJAxm0Rdm9l6nIhG' --login_with_auth "Bearer foo"
platform-test-neon-pay-config-by-id '5SilDDIsmj4h625d' --login_with_auth "Bearer foo"
platform-update-pay-pal-config '{"clientID": "IsMKWBxF9RAIrI81", "clientSecret": "ZR2kNzh60RQNaTEh", "returnUrl": "MXMepgzY9jLiAdMi", "webHookId": "Q7eDMkeBRMur18nC"}' 'xiV9bQMHpPbvflI3' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'LkRc1NgZaoYAaCCe' --login_with_auth "Bearer foo"
platform-update-stripe-config '{"allowedPaymentMethodTypes": ["RgtstsU3Qecxo4bQ", "ZO3P2f8TTOVf6jrr", "1OL606QpqCgxt0Ng"], "publishableKey": "DSj1T6EdeYFmrLT0", "secretKey": "HbvS4kSSt3CyDgf6", "webhookSecret": "eFAiqSkHi0BR2ElF"}' '6z6eJKuOW61akRFi' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'zqxCmudSXivAL3n4' --login_with_auth "Bearer foo"
platform-update-wx-pay-config '{"appId": "78mhb2I2yBJeCJgh", "key": "Trk68FWFzuLBdlrK", "mchid": "jUbgZQfw6Zys3mN8", "returnUrl": "fIcC9CkharfqaoMs"}' 'Gyv1RuSNdycDssUe' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'HiVDXzSJ8kbFAyid' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'bnXdMSwmkBkKC1h6' --login_with_auth "Bearer foo"
platform-update-xsolla-config '{"apiKey": "h45u0wuh9pY0011j", "flowCompletionUrl": "SmHFTtfM2mGUUpq3", "merchantId": 17, "projectId": 89, "projectSecretKey": "x7Am7W1fwJnV94Br"}' 'MSP31wAkVH75UcmN' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'XK5RqcIo9lpz9oM5' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT"}' 'PlwVV3jlPKDEYahn' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config '{"aggregate": "CHECKOUT", "namespace": "DBwIDsJHNg6TvNGj", "region": "wI4TbTwBufUorJou", "sandboxTaxJarApiToken": "duhCEJ5XiKDIE9Yu", "specials": ["ALIPAY", "ADYEN", "STRIPE"], "taxJarApiToken": "upLxVBcRkfhRuqkO", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config '{"aggregate": "ADYEN", "namespace": "ia7oFd1fEmDuyAsQ", "region": "GzwJR5poI718RQnj", "sandboxTaxJarApiToken": "4imu6XFfRcWDXhq1", "specials": ["NEONPAY", "XSOLLA", "XSOLLA"], "taxJarApiToken": "1LxLdySvyVqY8nxB", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' 'yzX2hOPVVFqVqxjq' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config '1iG3TySOh8SI75oX' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config '{"sandboxTaxJarApiToken": "byq8FBbur80Qwnlg", "taxJarApiToken": "AVfqz6gQJh8sn0bV", "taxJarEnabled": false, "taxJarProductCodesMapping": {"GDOUClGyzYgnYTdi": "m6PkRoq5TO65KWh8", "ztRJkXxUAj3jzZvE": "aY103YUIMuSjDHz0", "zPWMZQNNP2JqQqhI": "STBT1Gofv4SuaZ8y"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'CB9TVZnuzgvAZJRm' '71EC3ENuvD8OPsp5' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'Z3ez84KVB7HeWPnV' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'eFdy5ezlCU6SGzkM' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'pTL2wxobjxAbagqE' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'OCULUS' --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'wlsNvtFuunQsvdXG' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'lD40xxIyVwYjn6dl' --login_with_auth "Bearer foo"
platform-public-get-estimated-price 'C9Kfh9gHuloyce0c' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'LJu4ljPWlCWTuGO8' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition '{"itemIds": ["MnfOQu3wdT4Aodp9", "5o1RkX7iW7VpCngW", "Av5DAG8dPdkKgQqj"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'yzUZR2rFIAuALNhN' 'CyscsMBRLsWadk2O' --login_with_auth "Bearer foo"
platform-public-get-app 'Q421q7Nb1vrKthVv' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'U5on065ApCkVN3Qc' --login_with_auth "Bearer foo"
platform-public-get-item 'huQ6pntxB648ss7r' --login_with_auth "Bearer foo"
platform-public-get-payment-url '{"neonPayConfig": {"cancelUrl": "BnvQHAM8gSdIybKU", "successUrl": "ByHBzfvgtRTPPzwJ"}, "paymentOrderNo": "mKaLCx3gcidEALWe", "paymentProvider": "ADYEN", "returnUrl": "RG5wWznu5AjwR1Z4", "ui": "fU7ICcaQtuuKUw3d", "zipCode": "UwWHhQW3I1y9tjRL"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'VOXBMa0JiIe1AY0t' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'UA7EKASk3USNLhOB' --login_with_auth "Bearer foo"
platform-pay '{"token": "lxRBLgohp8ByTi2F"}' '6AyUX8w77riPlPgJ' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'cLbeQf9MICxX7xKy' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'WXPAY' 'CHzJ2v9K8c1zOlZg' --login_with_auth "Bearer foo"
platform-public-get-qr-code '30pagfP0FfOMBOpe' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'QT4zYIbU4i9mLyX4' '6Alt08rrnG8y2ScX' 'CHECKOUT' 'rHTkJT1VkChD3n0c' --login_with_auth "Bearer foo"
platform-get-payment-tax-value '1ryAkRvdPR8gx2rX' 'ADYEN' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'o3A8WxnR0YaMsF3f' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 '5KLtpTSsPMGDZTOw' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'EP5Bhh0NStWIggmh' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'fAzVdNYP7Ao1z7Fe' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'JM2fWXGk7JObSHks' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement '{"gameId": "RkabpmvRsc7ZYvXC", "language": "pNkl", "region": "ZAlLBczJVeil7GbG"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet '1ISBCkcnpxKUxLjm' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'xhBS6YypRW7fNnta' --body '{"epicGamesJwtToken": "IEtDI6MbhxkQdezb"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'mf392ersoZ2KbMb5' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'jal0ruZmBXlGSp85' --body '{"serviceLabel": 34}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'EUI21aSaIsMyLKPP' --body '{"serviceLabels": [71, 70, 47]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc '{"appId": "zdNAagipZwiaBrFr", "steamId": "XtGMjujfHZB1gMI1"}' 'B8DXb37DffTZ7yQz' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc '337LLNCjIySe36SA' --body '{"xstsToken": "5dxATLv5PkLvraRz"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'ChdjDGdlk2A2jHbA' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'PNGInvbnf4ewKFFL' 'oGggX4gQWyZocvYf' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'r0Rnl02R1IVNnaK6' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlements-by-ids '71Xs1BphA9BXpKYg' --login_with_auth "Bearer foo"
platform-public-user-entitlement-history 'F9OuigDP0Vjmy7j2' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'BrdCAm3slCwaBqHp' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'E55sjxBGijw0dQtZ' 'NonMrPkzUe9SglAJ' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'GyZS0I8FevJiT98H' 'UBp56Q4WETxtGMs5' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'tPKPuK0K4PiMDTR7' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'LxihuOn57io0d9dG' '3yzaNbGeASX83SLi' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'IbAP2qyUnHnfrEdD' 'fY4TTxu8goZgsX4R' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "options": ["JyqwFVBd1ZjaRXEd", "WgS12bSbPgOCWUog", "izeWOPUMrqgEIsMw"], "requestId": "Nbfti0LoTBcNzyoC", "useCount": 92}' 'GiXa9nUsHCVicuJ7' 'onrUXVlB6xNel4Bx' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement '{"requestId": "b9KwFYqdhEVq3hbs", "useCount": 55}' 'CBWuVIROZuqdJBi8' 'pkn98VtLNkaIQJfk' --login_with_auth "Bearer foo"
platform-public-split-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 61}' 'l1ywEPiunixlEAHZ' 'zHs8x5oPSkZFIV2f' --login_with_auth "Bearer foo"
platform-public-transfer-user-entitlement '{"entitlementId": "eXnTRlzAJy9oFOHB", "metadata": {"operationSource": "INVENTORY"}, "useCount": 75}' 'VTqPbzY1yxl7zeEp' 'mSPO6KwlJQlj9Ii2' --login_with_auth "Bearer foo"
platform-public-redeem-code '{"code": "jARwzowk9OoiPdnq", "language": "lcQ-JSpV-lL", "region": "8CcO1OHbpQZtwW3E"}' 'wLre1bL4dJnkRLJb' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item '{"excludeOldTransactions": true, "language": "Dpi_zVoE_xu", "productId": "A44Qqsi5yOjvl5sR", "receiptData": "N2ENn1RLi5iMPnbg", "region": "7o1zYpqUsliPyXZG", "transactionId": "YIW5ZDtWbdkzPP47"}' 'RcUIi2CoNj4EG2em' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'xKQk8cBrt5E8k8rz' --body '{"epicGamesJwtToken": "DZ08j6ICP75cm8YD"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '{"autoAck": true, "language": "Jg", "orderId": "zLvfQWC85MxWxvW0", "packageName": "veFl3uU1aMD0mczW", "productId": "xc8f1s2QPMMZsf2d", "purchaseTime": 43, "purchaseToken": "YFUS079tOpZYM1XV", "region": "0Op0damycnTUOoMk"}' 'OppZNOkqxc42HKv5' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'wvtPJVsuzaBciSxw' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'zuIpGBYHTHoSVxgQ' --body '{"currencyCode": "CbpZx5yMGIQ1ZxVI", "price": 0.07693773275957116, "productId": "fYlKBJyQMqUEfDik", "serviceLabel": 3}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels '{"currencyCode": "6yOlgZrn0I6T0hvc", "price": 0.4230405970578861, "productId": "FTaSWR4VOGIY7hM6", "serviceLabels": [41, 92, 14]}' 'onkAe0FdTSSEluBx' --login_with_auth "Bearer foo"
platform-sync-steam-inventory '{"appId": "M47BTww3nBTVmBFZ", "currencyCode": "6TIs9bTi2m7eNsYE", "language": "vln", "price": 0.9171438613812968, "productId": "pVRcCHIGfmCMTr9A", "region": "CnI2sMrEgl7ZR1HC", "steamId": "kf2Sw78lLGKjDHuX"}' 't358gzqRMuMPrIek' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 '{"gameId": "xq58fikq83hqJ7HP", "language": "dEvQ", "region": "VW5fkl60ImLBv6nU"}' 'U0r1rfX9stpvJUuy' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'Pdzx8BM2wEgTtLRT' --body '{"currencyCode": "5stwQFUEbTPQ8p7V", "price": 0.6248651904388964, "productId": "lxEXnqHwMyKpwphj", "xstsToken": "UXvM1GqMkZ44UXgd"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'BqtJaRyDlP9qIZJ5' --login_with_auth "Bearer foo"
platform-public-create-user-order '{"currencyCode": "Krx6KkHagEugKJxk", "discountCodes": ["K9PlMeQprfgLGkHX", "JDg6ujKvq0CIa1YC", "U8Y58COtTNjnNSik"], "discountedPrice": 48, "ext": {"tdBjKmCBXETZwqdz": {}, "AX28DikGk8cWiX44": {}, "azSHcwicUVq2XPlj": {}}, "itemId": "TZj5R0yZSVQ8SSeJ", "language": "ZZf", "price": 9, "quantity": 73, "region": "uV271bwZ4niLSzQn", "returnUrl": "v0C00dtNGGzbGYSY", "sectionId": "o9fY2EBZAHQXc4Xc"}' 'ae7VKl0ARzGEArlf' --login_with_auth "Bearer foo"
platform-public-preview-order-price '{"currencyCode": "E1NSmtcADoZvd0La", "discountCodes": ["7P4JI4H7uDzkOHTd", "nUtdrRcs3GeOsKPN", "lG7rEXi6LEqJERpb"], "discountedPrice": 48, "itemId": "UHjGaIcZN28gH4Cd", "price": 42, "quantity": 47}' 'ZK5GJlBncg8tQnJO' --login_with_auth "Bearer foo"
platform-public-get-user-order 'KHC16xjJZ4kiU3N8' '556ll2LQWpdESOBV' --login_with_auth "Bearer foo"
platform-public-cancel-user-order '7wZJsg7wSv9lyRyT' 'dYBUljvBzvYNEtfg' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'BFikt18cQ677SotD' 'EtU2xBSEQ8rBKc2K' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt '6oJXxVEfnaqX8NuZ' 'tRUTKUvR69PImy6C' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'cwlqJ4MO3L8x1H5O' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'gzHypgsSeKCvtPz7' 'card' 'SHB1y3klHuAGnidO' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'yGuS0OG7ohiL2943' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'ClrNhEdxd24ZKfvM' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription '{"currencyCode": "f1T5FzYMf1jaCgZo", "itemId": "sntPzP1vXXB92q15", "language": "yfjc_596", "region": "2Mu9ZGMWou1U0RVC", "returnUrl": "f3gMWDAodCKqfqze", "source": "exHA70NgJTxjtzgO"}' '7W3taRvJ6lKWJwHO' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id '65aOFDwpqy7XOU3D' 'wglyMGNll4O8ELah' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'cNJqRjepck1l0qxR' 'yQ2pi7xuAufJakIP' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'XOQznHZTj8oYfWOb' 'yNJKVSQsaCokoGyn' --login_with_auth "Bearer foo"
platform-public-cancel-subscription '{"immediate": true, "reason": "yIKh1YtTY4AejyQc"}' '5Dac7hSLldWx5Dyn' 'iVESUgrROrP1ip3j' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'NG68DByf2UMPtigq' '9zOQOcAqBj0bXhOr' --login_with_auth "Bearer foo"
platform-public-list-views '9OHt6zx1i2W3GY7t' --login_with_auth "Bearer foo"
platform-public-get-wallet 'dh8hHlQyMlgfkTsA' 'ThLyflAqqAP4M78s' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'mYdyge6DroOywOxI' '4G6jZzoYIFAvYfT8' --login_with_auth "Bearer foo"
platform-public-get-my-dlc-content 'PSN' --login_with_auth "Bearer foo"
platform-query-fulfillments --login_with_auth "Bearer foo"
platform-query-items-v2 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'Qw2EOq6BFjmN4OqK' --body '{"itemIds": ["GLRpNWzKZtZnxgyw", "mr4CYNGm7Tk1mMye", "NRsjQuDEgO3MEQNL"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 '{"entitlementCollectionId": "6ijLRvQOgoaBooTa", "entitlementOrigin": "Other", "metadata": {"da9h9FgvfhiLEAkA": {}, "7n6516ydoRT1qZBr": {}, "dTnGrwHeWoQXPFWF": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "Tj9rZpkSntuOeaPA", "namespace": "yPeEGBepK1Ix4Swj"}, "item": {"itemId": "CYjCHniVSn1gYGal", "itemName": "5NrBtT0om9OlGzpF", "itemSku": "25qu98RhktX6qwkX", "itemType": "bCLbh8t0zPkQWRUl"}, "quantity": 13, "type": "ITEM"}, {"currency": {"currencyCode": "EqYudHlA4AxeEIfU", "namespace": "xJ2xMSNNBxCeN3pG"}, "item": {"itemId": "n46fGvodt413MRdG", "itemName": "8qAPiANv2Ar8yXV6", "itemSku": "qf6v5SgcJPZPUh2n", "itemType": "HQwpWi8HZ6C0VJ0f"}, "quantity": 74, "type": "ITEM"}, {"currency": {"currencyCode": "2m6lQ5Ao8TITYiHS", "namespace": "R2SEJh1YDedZdNqk"}, "item": {"itemId": "XPWZfT8ZfdKp9q4n", "itemName": "XuK0tJAYror2XdtS", "itemSku": "CG7ZExOoIpWzacOv", "itemType": "wUsnIbQM3ZAtyEWK"}, "quantity": 100, "type": "CURRENCY"}], "source": "ORDER_REVOCATION", "transactionId": "ZRUL7wS3HaMTXAX6"}' 'y0STTN2sBEijjjpv' --login_with_auth "Bearer foo"
platform-fulfill-items '{"items": [{"duration": 91, "endDate": "1980-07-31T00:00:00Z", "entitlementCollectionId": "Om0wVFyHvFhRMCFJ", "entitlementOrigin": "Other", "itemId": "jJBxbrbuFay9PXgE", "itemSku": "QS4871QSmsspn5sN", "language": "fifK65tvaH9jwcO4", "metadata": {"8pthyYpBJDHIIxTI": {}, "GI5EssYllIqjJzuQ": {}, "8GglVgxjOGQGlHm8": {}}, "orderNo": "VTN56tJKwD8O07L9", "origin": "System", "quantity": 21, "region": "G1uenDihceaLdgPZ", "source": "SELL_BACK", "startDate": "1998-09-01T00:00:00Z", "storeId": "fKW8LeQxItaK6s3H"}, {"duration": 15, "endDate": "1995-01-01T00:00:00Z", "entitlementCollectionId": "B4XsdrxIF6kEAmKG", "entitlementOrigin": "Xbox", "itemId": "u4bGB1pyk0PpxXZD", "itemSku": "y5Pmbu7RrD9a5mdl", "language": "XTCL467xHbAiD3Pr", "metadata": {"3mXZO1PnbSlfVRlA": {}, "I8F2f3mEv09kAA5h": {}, "nQtd4bcivHGIEplR": {}}, "orderNo": "pcHDWcIoJ45L0Ze3", "origin": "Twitch", "quantity": 0, "region": "R3qcbHLGplYsS3js", "source": "DLC", "startDate": "1977-02-15T00:00:00Z", "storeId": "G3TkMTzOcBIciiKw"}, {"duration": 89, "endDate": "1975-06-05T00:00:00Z", "entitlementCollectionId": "GBuW8KcyPMfDWSEE", "entitlementOrigin": "Nintendo", "itemId": "O15jqeKssQpme6ey", "itemSku": "M48tE7eJRsXNeveQ", "language": "XqnFRYmEIX40XOUo", "metadata": {"LOa7oDz00gxcoaH6": {}, "u9TVf4DvEzpoPRiC": {}, "lZ6rlwX99AHMLHqg": {}}, "orderNo": "uYykVWzNwPcvGyie", "origin": "Steam", "quantity": 94, "region": "sRUduW5lxSlorWEG", "source": "REFERRAL_BONUS", "startDate": "1971-11-29T00:00:00Z", "storeId": "PGSOSiiItrSrEJMB"}]}' 'AIwTLkrMDFQfpQ9o' '0GJMTfqRRaZozM8x' --login_with_auth "Bearer foo"
platform-revoke-items 'CBoaS2FMwfWNCbN5' 'GelVOU0hHnsCl5k6' --login_with_auth "Bearer foo"
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
echo "1..462"

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
    'Jxh5mkmQzKg0jWCj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'pGwh7pLAi5JmzvM6' \
    --body '{"grantDays": "JFKB8ikHpl3sNRaD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'EC2OkXA3WqypoOw0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'H2s0sibQNBz81zRP' \
    --body '{"grantDays": "ntxpgi7tXIcNEcGJ"}' \
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
    '{"clazz": "jOCXpuix5vnPeTu9", "dryRun": false, "fulfillmentUrl": "Ss05rjISy4B0X9AJ", "itemType": "BUNDLE", "purchaseConditionUrl": "k43DGV1SCkw8U0d4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'OPTIONBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'lOQNRN132RdgwMXv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    '{"clazz": "9olKpRyWQim3qlAR", "dryRun": true, "fulfillmentUrl": "9mPPmYUvlkBGPJFa", "purchaseConditionUrl": "FzkABC8zWMcYW5iR"}' \
    'rw32FRg8y4rOuj7J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    '6ijJbcycXmBcrJLb' \
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
    '{"description": "7labyotifVk9Kyqc", "discountConfig": {"categories": [{"categoryPath": "eGv0CEDTVSjINYeK", "includeSubCategories": true}, {"categoryPath": "owG7UQB9pXzuCK5q", "includeSubCategories": false}, {"categoryPath": "VuKDoklYmkytCAH8", "includeSubCategories": false}], "currencyCode": "iqe7gfV1G6bYgIbV", "currencyNamespace": "Kp4Kgew2mHDksA6M", "discountAmount": 44, "discountPercentage": 61, "discountType": "AMOUNT", "items": [{"itemId": "zs19eBq9a1L8S1yd", "itemName": "uOwscICro6P8FWIP"}, {"itemId": "eqaBeD2uBAvIXEc2", "itemName": "CCgYcFo9A93o22Ug"}, {"itemId": "ObCOiBWdw2b031dm", "itemName": "4N41MOpmm04BlZUA"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 8, "itemId": "nCT11qD03er5mdra", "itemName": "K47FdxXisVlo3aVO", "quantity": 66}, {"extraSubscriptionDays": 22, "itemId": "ARFDJcGWy826ilCx", "itemName": "AxQUM5DyrPfBmpZI", "quantity": 53}, {"extraSubscriptionDays": 73, "itemId": "SFUZqVR5FWGfH66e", "itemName": "FCMTsLA8vYVvrIAE", "quantity": 9}], "maxRedeemCountPerCampaignPerUser": 88, "maxRedeemCountPerCode": 15, "maxRedeemCountPerCodePerUser": 1, "maxSaleCount": 95, "name": "JN1SjCFLDNJfAhJG", "redeemEnd": "1982-01-30T00:00:00Z", "redeemStart": "1986-02-26T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["Eb0Pv35fEk9s11bF", "Xkf7rQJ4Kj7Qyo9t", "UptiyZzRX8Y4rxRW"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'Pe4ZLAQWuBJwxObZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '{"description": "qMGxhffy9cHrLYff", "discountConfig": {"categories": [{"categoryPath": "tad99JDcnn7f2d8S", "includeSubCategories": true}, {"categoryPath": "WP2dw6Uy88WpQalG", "includeSubCategories": true}, {"categoryPath": "o82aLD9jUjuDITji", "includeSubCategories": false}], "currencyCode": "fejqSbVgLd1FoyNF", "currencyNamespace": "Gpu5r2K0IvVg5LwU", "discountAmount": 50, "discountPercentage": 45, "discountType": "AMOUNT", "items": [{"itemId": "yocvY9NePjLJQJXw", "itemName": "UApJWohXn01RB7pu"}, {"itemId": "7BaONXyE5fIDbsMi", "itemName": "48xOYVvEcEm53BYM"}, {"itemId": "BacQBIuDVs7U0AJt", "itemName": "WPRteszMTd0R5Fsr"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 48, "itemId": "fxVFfdvKQVgPQw3M", "itemName": "VXe4xBPDWHRHCCVD", "quantity": 57}, {"extraSubscriptionDays": 74, "itemId": "RjPUQWYVxGQVFJlD", "itemName": "DJ7z4Pb5jyGID39U", "quantity": 27}, {"extraSubscriptionDays": 88, "itemId": "g1D57FjYKlJiRIvh", "itemName": "ej77OSPwdzMSmrSv", "quantity": 87}], "maxRedeemCountPerCampaignPerUser": 8, "maxRedeemCountPerCode": 38, "maxRedeemCountPerCodePerUser": 21, "maxSaleCount": 55, "name": "ldCoyRdiOikUdqGo", "redeemEnd": "1972-01-29T00:00:00Z", "redeemStart": "1990-03-19T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["aRC7T5qSl7WN3ncP", "kqiTKzz72PKXjShM", "2DvesmMIbiQfaHxl"]}' \
    '2YUNRLRjgKqSSYgZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
$PYTHON -m $MODULE 'platform-rename-batch' \
    '{"newName": "nVfa8govttlpFAq8", "oldName": "oebnS4Y2zkGYTr9y"}' \
    'JIveX52r6Inl9VTJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
$PYTHON -m $MODULE 'platform-query-campaign-batch-names' \
    'B9Al3mn2DsHDHzSV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'JzhU5Z44zgZ1fieL' \
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
    '{"appConfig": {"appName": "A8O9N9cbYBK6XOBD"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "aUccuBYep9n7b17f"}, "extendType": "CUSTOM"}' \
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
    '{"appConfig": {"appName": "VvLSJvdsGpmmUeMi"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "FH1fHFLSr0O4rEZT"}, "extendType": "APP"}' \
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
    '{"categoryPath": "hy77iRVFfFvWenMN", "localizationDisplayNames": {"V00KVuLF9WDnGO3b": "pQWmnS52ZuuuI7F1", "xpVrcoXzSOEGEDYf": "iGPYo2K3dN3YBOJf", "vV6SuHovoQlk5wL2": "oXDZ20Bw2H4tz6KU"}}' \
    'C4jXGj2G0GZ3JBYi' \
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
    '9bBKBRpdbLCiwxOx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '{"localizationDisplayNames": {"2XQn94xPqXhqeNMD": "GA3O5hQAl6U2g9im", "VMh3i7j095rDL6lE": "uB1ZIMIs1dFvYokH", "9t2u8ZZnyHKkk6Gh": "25tEcX9GegDnrYz0"}}' \
    'GFpSVdxFsXAp1roc' \
    'lyXllFitPamSKRzD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'IZgSk6suS90ZbDdm' \
    'jU11QIZtkSn8QRbA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    '5V4gjWv1W6cqnvSu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'KswQ7vH8GScnP5Qz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'RBY1UrefgmVFBVz4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    '{"batchName": "KRCU0p4jIt01gzH1", "codeValue": "7IcfJyGulmByN5rc", "quantity": 60}' \
    '98WRjqYieXRthQZv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
$PYTHON -m $MODULE 'platform-download' \
    'zRi7pqpajYEHs9TI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'kcnrJ64BOKqywS6D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'KNSeb2UMWOgVeYkC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'vqq0tO15pEVG7sNi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'hxpuuL7DJCxvzZnh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    '8oBAk1MNCAUmdnLa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'VRUu5VbjwPa9rYgH' \
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
    '{"currencyCode": "axeTT3ebuaYPNBp9", "currencySymbol": "wA4LxO2n7WJQFzBC", "currencyType": "VIRTUAL", "decimals": 16, "localizationDescriptions": {"S03D7JLsIM3VOMRv": "vqkXDMPzOB08tpk0", "qhZath4b4HtwEYX5": "5pJNTX1sDjSWiSXs", "V5rJ8eZXZ1TLMZnN": "L3DQK45IAtbyUDDS"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    '{"localizationDescriptions": {"JSV8pzl1lfIR7jne": "tIJPGObyWCLyFPHa", "xkKxEDvSoi2X9Syg": "vMG8QAaWUhIguMvK", "DOrx0wQXKEroyKz2": "reP63EVHT72VuhoG"}}' \
    'P2IFXGU5hujEfCMt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    '95DEjxqhgYqmMqId' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'lRrQmuILkeRUafUD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'P5b6BWfm7cYCpDIJ' \
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
    '{"data": [{"id": "G42ILhUoCh8lmKKo", "rewards": [{"currency": {"currencyCode": "cC5Ea29JhfFGN964", "namespace": "J8WOgsAj2Rmf1DXv"}, "item": {"itemId": "AIkzTRNRVyeEGu1I", "itemName": "COCmLAmcaEFBKgy9", "itemSku": "2LYqtQcDN7OMCehk", "itemType": "42acy8wsWaPyppR3"}, "quantity": 53, "type": "ITEM"}, {"currency": {"currencyCode": "7HC2haQwVWONEpAP", "namespace": "edzI2AdlqiyEJIQc"}, "item": {"itemId": "bZJJ3AhkrMi0bnpp", "itemName": "EJFISze88rGEr3ci", "itemSku": "lJWhaW6jNsM94E2F", "itemType": "Qb6S0VmaTR7E3mkD"}, "quantity": 91, "type": "CURRENCY"}, {"currency": {"currencyCode": "QkgVMhLbM6H1MnNS", "namespace": "Kd0KStITvGQtzwjG"}, "item": {"itemId": "tGTr238G8Aevk3k1", "itemName": "4782W2oNo3X4m6wm", "itemSku": "s9SPaHlqtDPry2vM", "itemType": "ON7sdhlilfpDT8o2"}, "quantity": 18, "type": "CURRENCY"}]}, {"id": "rYtGfCZCcrvsV2I4", "rewards": [{"currency": {"currencyCode": "X26p21iDBZGJ8ZML", "namespace": "wPJ871nV5ALS7cne"}, "item": {"itemId": "NLItUJgh74tyxkTR", "itemName": "8ZCVJtkxjBJrNeQR", "itemSku": "sqkkKK2qxqzy4KSA", "itemType": "5UtSXWjANSWIT9TL"}, "quantity": 28, "type": "ITEM"}, {"currency": {"currencyCode": "HQcu7JkKBcLFRf50", "namespace": "Y7ME2QmYiYqap7ma"}, "item": {"itemId": "sUcayqmp7vhz1T6c", "itemName": "SrZL2CgHxdmYDj9v", "itemSku": "ZNgfI1AeYHe8WPQG", "itemType": "PclChxLfbXrH6f2G"}, "quantity": 61, "type": "ITEM"}, {"currency": {"currencyCode": "qkA5fuVYOsMFo9tn", "namespace": "qa4LEWGg1r4nW4pB"}, "item": {"itemId": "cPPaiaM1og5rxUjG", "itemName": "PKKLMoAy1stmxPFz", "itemSku": "0i1IK3QzkcRwFPpX", "itemType": "GlKR9ss8b8udl6fL"}, "quantity": 21, "type": "ITEM"}]}, {"id": "DHT6ZaUUkvlTKAhr", "rewards": [{"currency": {"currencyCode": "xqHw7f813qNjzlcx", "namespace": "XsmGGcJhauxfhVKI"}, "item": {"itemId": "bRvUnyElHPuQE3Gc", "itemName": "8bY4IH0OXHZP6VVB", "itemSku": "7qjDHMS49dkv8vxy", "itemType": "g6giNKzeFnlgGRgY"}, "quantity": 74, "type": "ITEM"}, {"currency": {"currencyCode": "SeYvULYNIhs5PZGT", "namespace": "Jmgofq7nlF5Ch8J2"}, "item": {"itemId": "Qs990APOU4hcdwln", "itemName": "sTap2RJpHtncLywP", "itemSku": "3WlLmNdQGk6vneHo", "itemType": "B1PXO1vT1AonFO3s"}, "quantity": 50, "type": "ITEM"}, {"currency": {"currencyCode": "vkYd78GsJGLbnb4N", "namespace": "vw7fnm4MnOqnqNer"}, "item": {"itemId": "QoHiDIJayvSNt8EQ", "itemName": "XsMbYi1yEI9ychty", "itemSku": "hjZSeDCKT4ilZB8a", "itemType": "pDTR3aL9sunWp7V1"}, "quantity": 37, "type": "ITEM"}]}]}' \
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
    '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"yyag9jBDJFJGOEiW": "J8cLrryS5a6A4tL8", "YKMrUBL6dDTVwPIt": "1hrg2mhbI0NDshb7", "ZzQuBPyNi1GhZHEj": "6p5grjk5wzdksOUk"}}, {"platform": "PSN", "platformDlcIdMap": {"kL8cmpA0sZ0tgeR4": "UV5SMZ8GUvWZvoCm", "prkv7A8MRutCKCsq": "mx2zriOGB8b5qTFp", "3cIxOI33nt54i5hd": "AezedcppbujZh1fY"}}, {"platform": "OCULUS", "platformDlcIdMap": {"F6R9Rz3HVP2Y9WqS": "RiwV3UZg0UJLPMke", "Uwa6OVKxCMxuf0P9": "r5f6fdmyi4kQnOFb", "BtvBw81hUgtONCIo": "Z2rkomSj52mAIMo6"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'UpdatePlatformDLCConfig' test.out

#- 62 DeletePlatformDLCConfig
$PYTHON -m $MODULE 'platform-delete-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'DeletePlatformDLCConfig' test.out

#- 63 QueryEntitlements
$PYTHON -m $MODULE 'platform-query-entitlements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'QueryEntitlements' test.out

#- 64 QueryEntitlements1
$PYTHON -m $MODULE 'platform-query-entitlements-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'QueryEntitlements1' test.out

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
    '{"entitlementGrantList": [{"collectionId": "EW9QhzU8FwQtZpfU", "endDate": "1978-05-26T00:00:00Z", "grantedCode": "yoiUjmqOyQ7ammFg", "itemId": "HprdM9viFWmezrQO", "itemNamespace": "WH03zyr7kRbC31YM", "language": "nFYs", "metadata": {"D7djt1VeOFBDA3gv": {}, "CRfoBijpbMblGWnp": {}, "94a6GKY0BrHiWs0B": {}}, "origin": "Nintendo", "quantity": 16, "region": "BpTuvLTJUzwXJFaW", "source": "PURCHASE", "startDate": "1999-05-15T00:00:00Z", "storeId": "JVdYpfHOYoLva2c4"}, {"collectionId": "JscEQfBFZXcSXpU8", "endDate": "1998-03-10T00:00:00Z", "grantedCode": "S5H9XsZyvZOFJ5Rr", "itemId": "FZYcwfQ1Q2BbcjSp", "itemNamespace": "v6Nt1oz4tdgfKu4b", "language": "Cl", "metadata": {"vIDQI2uIi2SNZKql": {}, "JZsdnY04DIyosprZ": {}, "PBaERb7U9kK4VctU": {}}, "origin": "Nintendo", "quantity": 50, "region": "DhFVNa0JYzTbdnOn", "source": "REFERRAL_BONUS", "startDate": "1974-01-02T00:00:00Z", "storeId": "aG0uDiJNUuxK22sa"}, {"collectionId": "WaGvrzBdLvFUBZDn", "endDate": "1995-05-20T00:00:00Z", "grantedCode": "aSgewLWHcBxz5Lpd", "itemId": "kRCAU8HhmXC68JFP", "itemNamespace": "dxhvBKee6wG66YPD", "language": "Wko-814", "metadata": {"ZZiK0QEG6C9w4lVR": {}, "NOF1Bg6OHZzvdZHo": {}, "Im4tKNhPjNIQGFxG": {}}, "origin": "Other", "quantity": 22, "region": "gnSiZtChE0uof77A", "source": "REDEEM_CODE", "startDate": "1991-12-30T00:00:00Z", "storeId": "I5tdPeFz9pGYsLNE"}], "userIds": ["AdpLVTVsj9pDiyyb", "G3qYJr6PuCVK9WmD", "Grfy9qHKufJfk0Me"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["XY4v7JRFMRaeIaQu", "PWPlkxeotrNakKGv", "OSvpmZZdlNXdx2kW"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'mSqodNZgfQyDVVkk' \
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
    --body '{"body": {"account": "qiMiRf2yCyM0Tp5G", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 73, "clientTransactionId": "40gKSizvmxts5HSQ"}, {"amountConsumed": 43, "clientTransactionId": "IwgQS9kVFUbeTeB9"}, {"amountConsumed": 75, "clientTransactionId": "XkjpkOgRCC7qfz5j"}], "entitlementId": "V7NTRYld9FJJ10go", "usageCount": 80}, {"clientTransaction": [{"amountConsumed": 0, "clientTransactionId": "q8uq79Du28SRRAMa"}, {"amountConsumed": 87, "clientTransactionId": "t6aqjKzWDAauqLKa"}, {"amountConsumed": 36, "clientTransactionId": "awfol07696uxp5ie"}], "entitlementId": "MjjOfFSx3AJN97kU", "usageCount": 19}, {"clientTransaction": [{"amountConsumed": 59, "clientTransactionId": "wiCmWQvbrxQpUSno"}, {"amountConsumed": 37, "clientTransactionId": "kDdFSs4s7u1VUuLm"}, {"amountConsumed": 9, "clientTransactionId": "3EtufHuNIp0GXpM4"}], "entitlementId": "nbG7aww2TANW1Or7", "usageCount": 93}], "purpose": "bvSIm7JROcwVmGyr"}, "originalTitleName": "BpnTPF4VrRiFSPs2", "paymentProductSKU": "ZMcVFcrixULzSeTn", "purchaseDate": "UWGxxfnMIDSCPr1m", "sourceOrderItemId": "1Fg6tc250c2okDTe", "titleName": "m6o62xFY6TNqoLFF"}, "eventDomain": "S4wB6Um7ir0n6O3v", "eventSource": "bYVjrcErgoApAxyD", "eventType": "nHjAx7rZTvew0WVD", "eventVersion": 92, "id": "2SrKckNxLWH6rjhR", "timestamp": "L9uxoV5Oe8ktlePE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'MockPlayStationStreamEvent' test.out

#- 73 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetAppleIAPConfig' test.out

#- 74 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    '{"bundleId": "o1xBuRSv6VizgtOX", "password": "Zy9cQ6B074dTJZqe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateAppleIAPConfig' test.out

#- 75 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteAppleIAPConfig' test.out

#- 76 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetEpicGamesIAPConfig' test.out

#- 77 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    '{"sandboxId": "OllKQNwJUGtC0tAh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UpdateEpicGamesIAPConfig' test.out

#- 78 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'DeleteEpicGamesIAPConfig' test.out

#- 79 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'GetGoogleIAPConfig' test.out

#- 80 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    '{"applicationName": "xn1ay6ruu7PYWHOD", "serviceAccountId": "Rb6skOj0lfYFGnQC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UpdateGoogleIAPConfig' test.out

#- 81 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteGoogleIAPConfig' test.out

#- 82 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateGoogleP12File' test.out

#- 83 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetIAPItemConfig' test.out

#- 84 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    '{"data": [{"itemIdentity": "AWidWPjYgyebU6rH", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"jYH0N2loTnRa0KiQ": "WPxd1gqlwx9CE4Wc", "smYtCkIgcwiDWQFg": "hmIi6fphDw3p9QWq", "wTF2pOJsY86xAf5y": "1iy01FkEEXlKiTID"}}, {"itemIdentity": "gP7wuXQdfW99JglS", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"8jZqj7k0YiLqOUSB": "uwR388REDRuYBnWi", "EsOnDfIAN04f5kSO": "Nmw1BDqqSctLL4Wf", "Gq8JCDnwGWgccuzu": "c6QDRMGdBPbUyHTY"}}, {"itemIdentity": "PS8CGKXGon2ecc65", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"AFLweD9Z7U2lNkor": "rw9QH3rNhDepQum4", "Dj7pR05RTGXGRkYX": "ifTd5nAOF9VV7JgC", "Om4wL729Hma0nCdC": "EFcf2doBrfHiHXXg"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'UpdateIAPItemConfig' test.out

#- 85 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'DeleteIAPItemConfig' test.out

#- 86 GetOculusIAPConfig
$PYTHON -m $MODULE 'platform-get-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'GetOculusIAPConfig' test.out

#- 87 UpdateOculusIAPConfig
$PYTHON -m $MODULE 'platform-update-oculus-iap-config' \
    '{"appId": "vu496H02yOVN1h41", "appSecret": "jIPOMXufZPWSe20J"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'UpdateOculusIAPConfig' test.out

#- 88 DeleteOculusIAPConfig
$PYTHON -m $MODULE 'platform-delete-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'DeleteOculusIAPConfig' test.out

#- 89 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'GetPlayStationIAPConfig' test.out

#- 90 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    '{"backOfficeServerClientId": "fNvtNcWtpUkw98x3", "backOfficeServerClientSecret": "tMM1bFFDIqKD8HJ4", "enableStreamJob": false, "environment": "0DetCeJ4x0wf5mQx", "streamName": "6Hs7M5apPMc8ZR3b", "streamPartnerName": "PCJ5n5s6DODBmrqE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'UpdatePlaystationIAPConfig' test.out

#- 91 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'DeletePlaystationIAPConfig' test.out

#- 92 ValidateExistedPlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-existed-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'ValidateExistedPlaystationIAPConfig' test.out

#- 93 ValidatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-playstation-iap-config' \
    '{"backOfficeServerClientId": "hGlkEmGdCbwodVRj", "backOfficeServerClientSecret": "ZJWuCQpjuJzpPO7B", "enableStreamJob": false, "environment": "xVWlRFnIekrQ99ec", "streamName": "menxguw5bO8Vh4Ja", "streamPartnerName": "KYAsoMlLJGMl5xFg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'ValidatePlaystationIAPConfig' test.out

#- 94 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'GetSteamIAPConfig' test.out

#- 95 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    '{"appId": "Lj4mCShMFlbrRGjo", "publisherAuthenticationKey": "BQ45Za4JR4S3iac6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'UpdateSteamIAPConfig' test.out

#- 96 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'DeleteSteamIAPConfig' test.out

#- 97 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'GetTwitchIAPConfig' test.out

#- 98 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    '{"clientId": "vLeoIULJlWXmQFle", "clientSecret": "f1tSHJf6sVpwAAKK", "organizationId": "qmTy0ZSyJ7IIUXlB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'UpdateTwitchIAPConfig' test.out

#- 99 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'DeleteTwitchIAPConfig' test.out

#- 100 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetXblIAPConfig' test.out

#- 101 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    '{"relyingPartyCert": "lZMQeSnOg5gf1Swr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateXblIAPConfig' test.out

#- 102 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DeleteXblAPConfig' test.out

#- 103 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'UpdateXblBPCertFile' test.out

#- 104 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'bpmoF4DvNA1wo9IA' \
    'xV5C71gTw8BJPFct' \
    'wUMCRdxXOBu3TWmH' \
    'MEDIA' \
    '7o1z37uuqLDQF12k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'DownloadInvoiceDetails' test.out

#- 105 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'YfBqeQxos58kVk7F' \
    '1KKOfFFLvER3xqCw' \
    'UgKa4oCBoJDxGa1U' \
    'INGAMEITEM' \
    '4ULwAKO8n42UuxEy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'GenerateInvoiceSummary' test.out

#- 106 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    '{"categoryPath": "fzZJsZd9sB6CV9Ki", "targetItemId": "WkbdpGqWQIPK6mVy", "targetNamespace": "tM5mBRT39gKYLk9D"}' \
    'mjJh6PnpTXWAUt8l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'SyncInGameItem' test.out

#- 107 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '{"appId": "gqNM4poGEvIKCe3M", "appType": "GAME", "baseAppId": "zABDhYAVxvs3ugNv", "boothName": "vgI2k1P9nQxzj3An", "categoryPath": "mpWfje5cAtTDvwFH", "clazz": "coODi5oF1pccdjjZ", "displayOrder": 31, "entitlementType": "CONSUMABLE", "ext": {"FnVLb7xerpjVPfkt": {}, "Nnl8UYH5kesuOtYH": {}, "Lqcdy05YrqdFn8sQ": {}}, "features": ["YqRoHm6EtyXqQbKW", "hp612Y2ncRf7tEGz", "7yc8xLKyBfGLHEAK"], "flexible": true, "images": [{"as": "J0aODiWn6bPmSa85", "caption": "Riu1alaVEhjJZbwM", "height": 68, "imageUrl": "hINqKvoYKio4M51v", "smallImageUrl": "uaFyqjQsTGmzItJI", "width": 84}, {"as": "jjofc6itDEsq0dHf", "caption": "YG6k853GERdJdphe", "height": 31, "imageUrl": "P3zTymfVfny2M0Ks", "smallImageUrl": "S08cY3fjI1YTT3qU", "width": 80}, {"as": "AyIZs2VfCRhzfKDA", "caption": "GIAJuPhQcZwXRE9F", "height": 82, "imageUrl": "7hoo8YkNPW8mWOJG", "smallImageUrl": "tdXJGDsxRAR3NObY", "width": 32}], "inventoryConfig": {"customAttributes": {"NVa7czD4wybVjqOK": {}, "rqYGxcBxfjLUZHK0": {}, "OO1yQsMBQAdOfrtH": {}}, "serverCustomAttributes": {"WyGg5TU3INkMgjsn": {}, "P8itevmjTJjj5tfF": {}, "Qv384ri6A7z0hsW0": {}}, "slotUsed": 71}, "itemIds": ["yqlJyfVgaW6ziZF6", "ijZzA3MkosOcoAcV", "0T2G3vQZNiqaXzRB"], "itemQty": {"ra3I4K9iBdljXtow": 18, "kdvyuDHFFstLhZzl": 9, "IPQeAL4MZwEVJe7w": 2}, "itemType": "MEDIA", "listable": true, "localizations": {"yB6g2M5JiwtMOfDf": {"description": "oMgU2yFBTPfnmfN5", "localExt": {"E20ORMCVBTrkvObs": {}, "iHQgt7OfL6AcBPjU": {}, "YURB3Rsrc0qvV8Gq": {}}, "longDescription": "1cw3ytGWVKPoA1aK", "title": "RZM1Ot0PWppB2H0G"}, "8Xko9l5J0IOZmnpz": {"description": "wHhig9d6vdgfrNiG", "localExt": {"rH0hDjH6IYpfINzN": {}, "jk5V8T9pQjnGB83y": {}, "onudf21g0NhuYvwC": {}}, "longDescription": "ATIUep61ZsSiqW7I", "title": "03oSwCfYpN9jkLCs"}, "MYyyhEyBfFFZwkC1": {"description": "PRjBWzTuXttDREDW", "localExt": {"bOM3xQaraaEVt3vs": {}, "BCXpIgQzkWzcBqVc": {}, "uTTrIk6hU0mqdwBJ": {}}, "longDescription": "ax1jBd6Yng8ps5Xk", "title": "nDJZK5gFHyIOnLu9"}}, "lootBoxConfig": {"rewardCount": 99, "rewards": [{"lootBoxItems": [{"count": 89, "duration": 55, "endDate": "1977-08-04T00:00:00Z", "itemId": "uknvXiTP0KrWQ3pg", "itemSku": "bHM0Svy3GRenDzwl", "itemType": "TE9Czhnck3GnyPFQ"}, {"count": 68, "duration": 10, "endDate": "1974-10-23T00:00:00Z", "itemId": "n9jVE6QGkZ8AVzei", "itemSku": "aDi67E3rTwN2LrT8", "itemType": "5Arfe6EweJxWANt1"}, {"count": 2, "duration": 9, "endDate": "1986-09-19T00:00:00Z", "itemId": "ay64EnFyFeW0oNhd", "itemSku": "dKrrhzwz2PFXC33K", "itemType": "jLNUFQJgCWV7dj8I"}], "name": "5eVnflH2hnMV6Yxt", "odds": 0.18236846497780856, "type": "REWARD", "weight": 40}, {"lootBoxItems": [{"count": 75, "duration": 36, "endDate": "1994-12-05T00:00:00Z", "itemId": "hjBy9oWPcMIQc5lR", "itemSku": "QojhJgpXVCubdw0s", "itemType": "PrgDKqHCs5GTdTLC"}, {"count": 48, "duration": 35, "endDate": "1989-05-13T00:00:00Z", "itemId": "WFobqnDkfPAHNgVs", "itemSku": "s4JzVKSusdLumoHh", "itemType": "8TQWYk2vD3mUDwtT"}, {"count": 65, "duration": 97, "endDate": "1998-10-25T00:00:00Z", "itemId": "ATVQnAexrRomTZFH", "itemSku": "X4cgtkxEx6tlxks0", "itemType": "yGW8qDWfr7MF8Ptq"}], "name": "10XBhcJfG9qYAEpR", "odds": 0.9043978906785245, "type": "REWARD", "weight": 11}, {"lootBoxItems": [{"count": 85, "duration": 99, "endDate": "1983-10-12T00:00:00Z", "itemId": "EsCETqKlcFcaL6XO", "itemSku": "oO3WqBsbDmsTk9Uu", "itemType": "iQwezvArAKJwZGVy"}, {"count": 21, "duration": 65, "endDate": "1978-10-12T00:00:00Z", "itemId": "pOhuGhAnlnjyPBj7", "itemSku": "h3hncU5vgL62RA2B", "itemType": "I7knizQ4Jx8In4w8"}, {"count": 50, "duration": 47, "endDate": "1993-10-24T00:00:00Z", "itemId": "FOLeTQyplscfsZvv", "itemSku": "UpCMJRliFCmFC9uU", "itemType": "xSxI4yyrZIV9M22g"}], "name": "RLsc6Jwt190s6yFi", "odds": 0.4804135331905889, "type": "REWARD", "weight": 38}], "rollFunction": "DEFAULT"}, "maxCount": 51, "maxCountPerUser": 11, "name": "ldbDDntsSQ8DEsKT", "optionBoxConfig": {"boxItems": [{"count": 28, "duration": 79, "endDate": "1982-04-26T00:00:00Z", "itemId": "5xDz8asARtI3TVV2", "itemSku": "QmlqRK5roG1oZArF", "itemType": "JBUmMx7nzK8rRAYv"}, {"count": 44, "duration": 89, "endDate": "1983-01-31T00:00:00Z", "itemId": "nDPJ9SMRzSo0RzUo", "itemSku": "Sen8CjEhtRcnVsYO", "itemType": "wypw6F21uYowkPNG"}, {"count": 54, "duration": 82, "endDate": "1995-03-19T00:00:00Z", "itemId": "R4hJnsU1m6zryXmv", "itemSku": "vvPmueVVC0ymY7AB", "itemType": "WgZVxM4rAqxlnHLA"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 47, "fixedTrialCycles": 10, "graceDays": 63}, "regionData": {"BsCkfqzKlzlLgHPF": [{"currencyCode": "5iRWnREifOFJQwGP", "currencyNamespace": "y5zGebVw9nLvVm8U", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1987-01-08T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1971-09-24T00:00:00Z", "expireAt": "1977-01-09T00:00:00Z", "price": 98, "purchaseAt": "1987-04-29T00:00:00Z", "trialPrice": 27}, {"currencyCode": "6lIs17PXJ8KsgqGN", "currencyNamespace": "M6sO7IUwIv84zQjc", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1989-04-10T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1993-08-25T00:00:00Z", "expireAt": "1993-09-15T00:00:00Z", "price": 92, "purchaseAt": "1997-01-05T00:00:00Z", "trialPrice": 32}, {"currencyCode": "DQN21JlwPxpuUZm1", "currencyNamespace": "GVuI2Eihx6IJwMzU", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1997-09-21T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1990-09-20T00:00:00Z", "expireAt": "1997-03-21T00:00:00Z", "price": 56, "purchaseAt": "1990-11-20T00:00:00Z", "trialPrice": 97}], "XT0feu7KKPXunBZi": [{"currencyCode": "qYaReD04717oGCmr", "currencyNamespace": "TUcZy3DDSxpWZV6J", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1978-04-19T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1971-03-14T00:00:00Z", "expireAt": "1985-11-24T00:00:00Z", "price": 24, "purchaseAt": "1988-10-28T00:00:00Z", "trialPrice": 25}, {"currencyCode": "IN2roJNZmgEGzqDH", "currencyNamespace": "dLpDjLIhvCNlBRcF", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1971-07-23T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1999-11-19T00:00:00Z", "expireAt": "1976-05-20T00:00:00Z", "price": 87, "purchaseAt": "1981-03-13T00:00:00Z", "trialPrice": 70}, {"currencyCode": "LgD6kOUZXQKRTVR9", "currencyNamespace": "5IwPCb2qOuIRbBL0", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1984-08-22T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1971-02-28T00:00:00Z", "expireAt": "1975-09-20T00:00:00Z", "price": 40, "purchaseAt": "1972-09-13T00:00:00Z", "trialPrice": 73}], "JNHwfW76v6GPVwWj": [{"currencyCode": "IfhOXemeTgiENbhd", "currencyNamespace": "RohucoiX0GAQZEbN", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1984-12-10T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1999-12-09T00:00:00Z", "expireAt": "1992-03-06T00:00:00Z", "price": 76, "purchaseAt": "1994-06-29T00:00:00Z", "trialPrice": 30}, {"currencyCode": "KuIHMjiIjX7Eu0WC", "currencyNamespace": "Xd8GX7ygT5qlBekx", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1979-05-06T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1991-07-18T00:00:00Z", "expireAt": "1999-05-26T00:00:00Z", "price": 43, "purchaseAt": "1972-07-22T00:00:00Z", "trialPrice": 36}, {"currencyCode": "RviPljDYddTDwgc6", "currencyNamespace": "onXfoDvjI9jfJFTH", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1988-06-26T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1990-02-11T00:00:00Z", "expireAt": "1987-04-28T00:00:00Z", "price": 96, "purchaseAt": "1980-10-09T00:00:00Z", "trialPrice": 27}]}, "saleConfig": {"currencyCode": "9Z0Fol65yD1dLBQJ", "price": 5}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "vjEbjKrZ2d6IbWTf", "stackable": true, "status": "INACTIVE", "tags": ["k4rdWgWYgFgw3mGm", "sHXWPqYBJTzlt302", "dzrvCDzH5ACyLXmL"], "targetCurrencyCode": "ogCJXjHTGhyemqqw", "targetNamespace": "oT441DX6xwuD6giq", "thumbnailUrl": "KLavCF9yVeJJwyaY", "useCount": 67}' \
    'Ho61RoV0VH7thk8l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'CreateItem' test.out

#- 108 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'nCROZodh1gbkbnRc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GetItemByAppId' test.out

#- 109 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'QueryItems' test.out

#- 110 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'ListBasicItemsByFeatures' test.out

#- 111 GetItems
$PYTHON -m $MODULE 'platform-get-items' \
    'Iufk5WE4zPvxA506' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'GetItems' test.out

#- 112 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    '1CF9079hQA91csvl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'GetItemBySku' test.out

#- 113 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'QSS6PyDb3vKbCw9e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'GetLocaleItemBySku' test.out

#- 114 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'AGmM6lPAJMizukBm' \
    'cy1kbAWDUac65Jdl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'GetEstimatedPrice' test.out

#- 115 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'm1JJwmCAjTwtCqKd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'GetItemIdBySku' test.out

#- 116 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetBulkItemIdBySkus' test.out

#- 117 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'h92wuH9hLkAg90cQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'BulkGetLocaleItems' test.out

#- 118 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'GetAvailablePredicateTypes' test.out

#- 119 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    '{"itemIds": ["gXeZnKRP6Gdv2QY9", "BadKJj4HkL0mk4HH", "DzXcKJowQbOrgveL"]}' \
    'e4hYQEGcivibNKS0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'ValidateItemPurchaseCondition' test.out

#- 120 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'tBFxzru1A3Obcaij' \
    --body '{"changes": [{"itemIdentities": ["xlHrcqzwGgl1SyrF", "azP5g67zq7XCHkJz", "my6DtxvO3nUiVM7U"], "itemIdentityType": "ITEM_ID", "regionData": {"UlRZSLj5xwmP8QMJ": [{"currencyCode": "JJn2Lqw6aiKZbUJQ", "currencyNamespace": "92BTViMMFji1Gmfm", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1975-03-08T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1985-10-14T00:00:00Z", "discountedPrice": 11, "expireAt": "1982-07-20T00:00:00Z", "price": 66, "purchaseAt": "1990-12-18T00:00:00Z", "trialPrice": 3}, {"currencyCode": "RZnwlbMGheYVteLi", "currencyNamespace": "iIKPjokv6HMQOekL", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1975-07-04T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1986-11-11T00:00:00Z", "discountedPrice": 10, "expireAt": "1999-08-14T00:00:00Z", "price": 74, "purchaseAt": "1982-01-23T00:00:00Z", "trialPrice": 53}, {"currencyCode": "kbV2y32kG5QTZnpx", "currencyNamespace": "Ya2jDp3LzelXaUz9", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1989-07-27T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1976-07-26T00:00:00Z", "discountedPrice": 46, "expireAt": "1996-09-09T00:00:00Z", "price": 56, "purchaseAt": "1991-08-04T00:00:00Z", "trialPrice": 74}], "29DPhYa8Ksjfnk7H": [{"currencyCode": "KSWULkEKqQ4ToqWj", "currencyNamespace": "paECYi7fBJaU43Pz", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1991-04-08T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1979-03-17T00:00:00Z", "discountedPrice": 17, "expireAt": "1980-11-25T00:00:00Z", "price": 4, "purchaseAt": "1993-06-17T00:00:00Z", "trialPrice": 97}, {"currencyCode": "IH9i4ICwRHM518oP", "currencyNamespace": "a2glj6rHbkWMDSiP", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1995-09-03T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1983-03-23T00:00:00Z", "discountedPrice": 11, "expireAt": "1983-01-08T00:00:00Z", "price": 52, "purchaseAt": "1994-05-28T00:00:00Z", "trialPrice": 62}, {"currencyCode": "wXLyVVZqZpYAdyPa", "currencyNamespace": "fGBlwnYRpUkTKjXx", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1974-06-05T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1994-03-29T00:00:00Z", "discountedPrice": 69, "expireAt": "1982-08-24T00:00:00Z", "price": 79, "purchaseAt": "1974-04-06T00:00:00Z", "trialPrice": 93}], "laEVugbCEifQCe5e": [{"currencyCode": "N88Z7U1e8C1HnrPG", "currencyNamespace": "ydCRGPXLKNNfCxcA", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1971-11-12T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1975-06-26T00:00:00Z", "discountedPrice": 92, "expireAt": "1977-02-23T00:00:00Z", "price": 55, "purchaseAt": "1978-07-13T00:00:00Z", "trialPrice": 34}, {"currencyCode": "HtzCgr8ybpAO0Pgh", "currencyNamespace": "6Uenz7FjcRRIKcTV", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1991-04-26T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1999-04-04T00:00:00Z", "discountedPrice": 85, "expireAt": "1985-07-04T00:00:00Z", "price": 81, "purchaseAt": "1972-10-01T00:00:00Z", "trialPrice": 10}, {"currencyCode": "H08vEf2WSsLchLBE", "currencyNamespace": "lch9a9Knc6glMjwg", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1975-08-09T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1994-09-04T00:00:00Z", "discountedPrice": 8, "expireAt": "1973-04-14T00:00:00Z", "price": 14, "purchaseAt": "1998-01-12T00:00:00Z", "trialPrice": 72}]}}, {"itemIdentities": ["hXzG4ffz0lXBDbBG", "rYGleamVgjm0xqJh", "fraXwzn0bbNK5rhg"], "itemIdentityType": "ITEM_SKU", "regionData": {"41XUfp7AVnf8BzBB": [{"currencyCode": "qEvMtJopw2r5pKsX", "currencyNamespace": "nIYkKH6MNrEsOlIF", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1995-09-11T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1998-12-28T00:00:00Z", "discountedPrice": 19, "expireAt": "1976-08-16T00:00:00Z", "price": 52, "purchaseAt": "1976-01-03T00:00:00Z", "trialPrice": 51}, {"currencyCode": "OvZUgW2ZMVJhOyVa", "currencyNamespace": "O1sgnJF31EULHtVt", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1997-05-17T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1986-12-26T00:00:00Z", "discountedPrice": 86, "expireAt": "1977-06-11T00:00:00Z", "price": 39, "purchaseAt": "1997-09-03T00:00:00Z", "trialPrice": 26}, {"currencyCode": "6fcv3nPROvD1FiqE", "currencyNamespace": "UhsD6QxKzbZ7xvbL", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1972-01-09T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1999-11-25T00:00:00Z", "discountedPrice": 71, "expireAt": "1989-09-01T00:00:00Z", "price": 78, "purchaseAt": "1980-09-13T00:00:00Z", "trialPrice": 7}], "vZSqh6SjLdDyVf6i": [{"currencyCode": "rpvxpCXFlM52jb80", "currencyNamespace": "Nlw8icwWRvvZB46N", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1971-05-15T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1972-10-14T00:00:00Z", "discountedPrice": 24, "expireAt": "1973-02-07T00:00:00Z", "price": 44, "purchaseAt": "1979-05-31T00:00:00Z", "trialPrice": 18}, {"currencyCode": "4q7UwwraCDr326Q6", "currencyNamespace": "6cxtjNTXsCsfA2pI", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1985-12-27T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1996-05-15T00:00:00Z", "discountedPrice": 14, "expireAt": "1994-01-01T00:00:00Z", "price": 64, "purchaseAt": "1982-05-26T00:00:00Z", "trialPrice": 37}, {"currencyCode": "t7t0llsH39PXWtk2", "currencyNamespace": "22GY7L58lP7drhfB", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1997-02-10T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1997-02-17T00:00:00Z", "discountedPrice": 1, "expireAt": "1972-09-22T00:00:00Z", "price": 64, "purchaseAt": "1994-02-08T00:00:00Z", "trialPrice": 33}], "hy5TZFoyfZ0XfCxP": [{"currencyCode": "DcH66JWKmTRqrvfJ", "currencyNamespace": "IrFQWIDC6PHVsnUu", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1972-09-09T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1999-11-28T00:00:00Z", "discountedPrice": 90, "expireAt": "1987-09-02T00:00:00Z", "price": 6, "purchaseAt": "1976-06-14T00:00:00Z", "trialPrice": 2}, {"currencyCode": "QGjCShSTNyM9yuMO", "currencyNamespace": "FavgMWyxizWKQdVE", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1981-02-16T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1981-01-21T00:00:00Z", "discountedPrice": 92, "expireAt": "1989-07-26T00:00:00Z", "price": 60, "purchaseAt": "1983-06-12T00:00:00Z", "trialPrice": 52}, {"currencyCode": "kPE6mw3Zv0zD14Ws", "currencyNamespace": "Qt5oimAfS3Sh33Tu", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1997-10-05T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1972-01-28T00:00:00Z", "discountedPrice": 86, "expireAt": "1974-07-04T00:00:00Z", "price": 96, "purchaseAt": "1977-06-23T00:00:00Z", "trialPrice": 98}]}}, {"itemIdentities": ["ZkT3zo8gxMqM1wUd", "XsMjUbhRjnDrYWlR", "fPpgHg36d9NP5nNv"], "itemIdentityType": "ITEM_SKU", "regionData": {"ThREYkndZIrjnjuC": [{"currencyCode": "Hkx8hm2178A4NUDA", "currencyNamespace": "dwt7cj6v5DLEk9Rk", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1977-12-24T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1972-05-28T00:00:00Z", "discountedPrice": 28, "expireAt": "1978-11-13T00:00:00Z", "price": 77, "purchaseAt": "1972-03-27T00:00:00Z", "trialPrice": 36}, {"currencyCode": "sFD2le3UGhQnnmMg", "currencyNamespace": "k0WYv2NTpSejfbYn", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1971-04-18T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1975-06-17T00:00:00Z", "discountedPrice": 67, "expireAt": "1990-12-14T00:00:00Z", "price": 94, "purchaseAt": "1977-03-22T00:00:00Z", "trialPrice": 77}, {"currencyCode": "QVaJ9ioRZ1HvMCIX", "currencyNamespace": "TQG7AUUES36bRVai", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1977-11-21T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1999-03-05T00:00:00Z", "discountedPrice": 8, "expireAt": "1995-02-17T00:00:00Z", "price": 20, "purchaseAt": "1990-09-03T00:00:00Z", "trialPrice": 88}], "A3EsOz8LDnxgL0t7": [{"currencyCode": "Qhdw4vmSxnJcyaij", "currencyNamespace": "SCsFa6ipRu1AaFjz", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1990-06-04T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1976-04-01T00:00:00Z", "discountedPrice": 29, "expireAt": "1984-12-22T00:00:00Z", "price": 79, "purchaseAt": "1983-07-28T00:00:00Z", "trialPrice": 62}, {"currencyCode": "WiPzugdDu6rxIv2Z", "currencyNamespace": "MtZX5KZK53tX2oxm", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1986-02-27T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1999-02-15T00:00:00Z", "discountedPrice": 88, "expireAt": "1987-10-15T00:00:00Z", "price": 56, "purchaseAt": "1996-02-19T00:00:00Z", "trialPrice": 13}, {"currencyCode": "PWHmOLBLlsw2pDJD", "currencyNamespace": "LeJwzbVEEQ0D6RcL", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1993-02-25T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1992-07-21T00:00:00Z", "discountedPrice": 57, "expireAt": "1988-12-27T00:00:00Z", "price": 15, "purchaseAt": "1981-07-30T00:00:00Z", "trialPrice": 85}], "vOyY1tNKAVWv5cGR": [{"currencyCode": "m3WTx0oyOrycewrn", "currencyNamespace": "LBAZlvnOJeNxZdT1", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1989-06-14T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1980-06-01T00:00:00Z", "discountedPrice": 79, "expireAt": "1978-09-29T00:00:00Z", "price": 67, "purchaseAt": "1977-02-19T00:00:00Z", "trialPrice": 0}, {"currencyCode": "egDbFDXW3N42ccGU", "currencyNamespace": "RTnJUdR3MUQnEeAN", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1996-03-13T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1979-03-12T00:00:00Z", "discountedPrice": 57, "expireAt": "1972-01-29T00:00:00Z", "price": 13, "purchaseAt": "1973-09-03T00:00:00Z", "trialPrice": 78}, {"currencyCode": "0wxHpQyntHsI11lC", "currencyNamespace": "6BXyQW3eG0BvuCoP", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1988-05-03T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1972-05-22T00:00:00Z", "discountedPrice": 71, "expireAt": "1982-10-25T00:00:00Z", "price": 0, "purchaseAt": "1995-03-17T00:00:00Z", "trialPrice": 81}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'BulkUpdateRegionData' test.out

#- 121 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'ZTyB7k7Q9zNJHkXm' \
    'HB9cu1ZdRIZ1hHCp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'SearchItems' test.out

#- 122 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'QueryUncategorizedItems' test.out

#- 123 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'ApGunPxVvWyQvciF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetItem' test.out

#- 124 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    '{"appId": "GxJNOaveGzkTPehZ", "appType": "DEMO", "baseAppId": "mZi1UYM7BApA1YBy", "boothName": "iGkJR30lAinKfKXq", "categoryPath": "YE8GuKFRwAkAyYY8", "clazz": "hSNUTpzSm7jdrPdk", "displayOrder": 79, "entitlementType": "DURABLE", "ext": {"oylrI7DpmCIb5JWu": {}, "7DAXtIeslnM3lJQM": {}, "Dxu7Auj8cqdtNaFO": {}}, "features": ["6U8vRJ3ebbfa3ep8", "cKNlb024FzQsBlwn", "3ABy1AeDryAFewcN"], "flexible": true, "images": [{"as": "o2DKmAp8kt8156L7", "caption": "Wl7UfG3PbsgYDgJ0", "height": 72, "imageUrl": "qSZCanZaGzamJ8JZ", "smallImageUrl": "6lV9zpsDX7CWEoHK", "width": 69}, {"as": "yLZSpydGfNnNFMfX", "caption": "pIPlcaufemZ4xlGt", "height": 100, "imageUrl": "nB83a6h6dNfg9f25", "smallImageUrl": "YsZ1L6IGHuO7u2tO", "width": 95}, {"as": "a1StMbwcUsu3gJ0y", "caption": "HA6KDH87AmGMvChu", "height": 14, "imageUrl": "q2dGygLo40eCb82j", "smallImageUrl": "4OhaAiWk4TKx1WRj", "width": 17}], "inventoryConfig": {"customAttributes": {"j92JkMWuFc2x9p8s": {}, "ArSRypvu88WyRMMR": {}, "loXySTO9W3BEI4eB": {}}, "serverCustomAttributes": {"0PHoEfIdFP0QarAd": {}, "oCQoVI26D2IdXV2R": {}, "NnCRn6spzE0Dj97A": {}}, "slotUsed": 36}, "itemIds": ["8A7NZLQPAny29oO2", "B8osfAcB6Pd2uPwz", "liHiPYuwUtR55gCT"], "itemQty": {"ACz3aLd0f0QGkwoI": 87, "6j3UqRICnmZxob6v": 10, "iSPgU3FLs6LbIwwx": 65}, "itemType": "MEDIA", "listable": false, "localizations": {"RyUyU8GVL2TVivHb": {"description": "cJX1mqJ4BtZCHdlm", "localExt": {"Ozx9DrwT5dJMDgZP": {}, "QtuRIVY69dhSr3Ji": {}, "NweUidBVB2vTyC48": {}}, "longDescription": "2FeT76mWyDrmG0FH", "title": "QOjtRg7ST2UVRJN0"}, "qFJaGDiDmatCvCem": {"description": "bJFNyIwxPt19hjyI", "localExt": {"7ALyZHQ8V4AejtUM": {}, "6llcl5hdZoPhVcQ4": {}, "wXeArPe089cqMuV8": {}}, "longDescription": "MLxiTO3GhLJ2qx2h", "title": "93yz3Y7YtgdQMhzp"}, "cpwawMF0j9IirMeP": {"description": "7fy5Y0RiyzWJZAZH", "localExt": {"klGmHH8I1l3xgoVy": {}, "EemJDvokY7UUVCHG": {}, "WcVrHG4ehIhJk597": {}}, "longDescription": "xUXpiOLFQFxY4AHL", "title": "zQnClUtkXb0SoMLq"}}, "lootBoxConfig": {"rewardCount": 17, "rewards": [{"lootBoxItems": [{"count": 47, "duration": 20, "endDate": "1980-01-27T00:00:00Z", "itemId": "gLSGTnWHCZ6XwqnO", "itemSku": "eIUKAIvQjUxtk82o", "itemType": "OOkHmCFldZ0XAvFi"}, {"count": 39, "duration": 84, "endDate": "1990-06-26T00:00:00Z", "itemId": "hI0sqjfua9x08SJm", "itemSku": "n2gM2q6wuaHlnk9A", "itemType": "FkbwVa7DCVegPEDD"}, {"count": 41, "duration": 67, "endDate": "1988-07-07T00:00:00Z", "itemId": "34DmlbwWuZpKPB4r", "itemSku": "zvo2R5Q7tM4YbPsF", "itemType": "33KhfoL7PlFt47mQ"}], "name": "AQQzQAxQ8GRgWKOB", "odds": 0.5716185655254051, "type": "REWARD", "weight": 65}, {"lootBoxItems": [{"count": 13, "duration": 83, "endDate": "1987-10-31T00:00:00Z", "itemId": "mEZ8kWtzrSIfMjxz", "itemSku": "BwWKzJldpqtAlzVR", "itemType": "0WqkbKYSr7IVc2WJ"}, {"count": 51, "duration": 57, "endDate": "1996-01-20T00:00:00Z", "itemId": "67v7JTcrppNGl78V", "itemSku": "MGk3b5E1GgAqoQkg", "itemType": "iht0lsg1U1DExMK4"}, {"count": 52, "duration": 2, "endDate": "1999-06-09T00:00:00Z", "itemId": "2P13aQRTMzFLsBDz", "itemSku": "dO8IwGdLKPo5zR4q", "itemType": "58Tka2qLo5spq850"}], "name": "ZKnX3Inv5lG8WEkl", "odds": 0.170802489309977, "type": "REWARD_GROUP", "weight": 65}, {"lootBoxItems": [{"count": 64, "duration": 78, "endDate": "1976-04-19T00:00:00Z", "itemId": "JPn2yomTQth1iJOy", "itemSku": "DZJCwufYAURyXVoJ", "itemType": "9qEel6x5O5otpujf"}, {"count": 46, "duration": 17, "endDate": "1985-09-22T00:00:00Z", "itemId": "4s0kTiXwPjN8E3wX", "itemSku": "z4Q1L3hAG9xOOi4D", "itemType": "VUYo37I8Mgh1DJAR"}, {"count": 31, "duration": 80, "endDate": "1975-12-11T00:00:00Z", "itemId": "5KzpbDPfXdGvodrl", "itemSku": "6UOwYZJq3OJhzlgt", "itemType": "X87XuWOIpQwptcvr"}], "name": "oohLb6q3F16PO9Yd", "odds": 0.35538537560136163, "type": "REWARD", "weight": 50}], "rollFunction": "DEFAULT"}, "maxCount": 43, "maxCountPerUser": 38, "name": "10mRO0tK1CH6ozET", "optionBoxConfig": {"boxItems": [{"count": 66, "duration": 49, "endDate": "1994-05-23T00:00:00Z", "itemId": "gu96JYKhAD9xM9T3", "itemSku": "YcYFOYmaaHSXapFL", "itemType": "iHZfwcmqpHRQcJzs"}, {"count": 30, "duration": 73, "endDate": "1998-04-08T00:00:00Z", "itemId": "tgoqsyjuA8sqeXbV", "itemSku": "9I8yo0u2hT9UYbm2", "itemType": "BWjzlqIA8csXOpDT"}, {"count": 23, "duration": 40, "endDate": "1985-07-19T00:00:00Z", "itemId": "huDibBIH1dyZPHtY", "itemSku": "HKqpl1Xk1CdFvYqf", "itemType": "oYzBc16XXXuoJGXC"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 53, "fixedTrialCycles": 43, "graceDays": 53}, "regionData": {"LamxL9Ltl0k2ZOJH": [{"currencyCode": "BnYPNYKWhYLsAlPZ", "currencyNamespace": "s4v14XFGIVeBHRe7", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1976-04-08T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1984-09-07T00:00:00Z", "expireAt": "1988-07-18T00:00:00Z", "price": 97, "purchaseAt": "1985-06-18T00:00:00Z", "trialPrice": 36}, {"currencyCode": "vyXITMn2F86xZRHx", "currencyNamespace": "nOP02x00SvR2yNPm", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1986-04-20T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1979-12-19T00:00:00Z", "expireAt": "1990-01-10T00:00:00Z", "price": 82, "purchaseAt": "1972-12-15T00:00:00Z", "trialPrice": 79}, {"currencyCode": "8Ri3CuA2GelFQyuD", "currencyNamespace": "Wvfe4Hp9aCLekZch", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1971-05-11T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1974-04-12T00:00:00Z", "expireAt": "1987-07-29T00:00:00Z", "price": 37, "purchaseAt": "1979-08-05T00:00:00Z", "trialPrice": 88}], "QYJnB9w4rkop7LL7": [{"currencyCode": "Yqjh4lgGGsrJv0Ey", "currencyNamespace": "LkZej5voHh0KRDJj", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1987-04-03T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1990-04-26T00:00:00Z", "expireAt": "1978-07-12T00:00:00Z", "price": 44, "purchaseAt": "1997-04-24T00:00:00Z", "trialPrice": 77}, {"currencyCode": "OxT54t5Ffna72ji4", "currencyNamespace": "B86NKZ0tkEWAqM0E", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1971-06-09T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1972-05-06T00:00:00Z", "expireAt": "1981-07-16T00:00:00Z", "price": 20, "purchaseAt": "1990-07-13T00:00:00Z", "trialPrice": 90}, {"currencyCode": "HL2nKoPXxLMtU6hL", "currencyNamespace": "liy7em6ox8O9f2oj", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1992-04-29T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1991-09-22T00:00:00Z", "expireAt": "1971-05-04T00:00:00Z", "price": 73, "purchaseAt": "1990-11-30T00:00:00Z", "trialPrice": 19}], "paGFJniJl9RPULWp": [{"currencyCode": "Ww5UQBldfnMF2X9w", "currencyNamespace": "bQz3euR4MhLQs8Xl", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1991-09-27T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1981-10-13T00:00:00Z", "expireAt": "1979-09-06T00:00:00Z", "price": 17, "purchaseAt": "1992-07-13T00:00:00Z", "trialPrice": 45}, {"currencyCode": "Fdv5aDRSnCrIQ2kC", "currencyNamespace": "hyafmo2nIKr9kryl", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1976-01-01T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1988-06-16T00:00:00Z", "expireAt": "1993-11-28T00:00:00Z", "price": 64, "purchaseAt": "1997-03-19T00:00:00Z", "trialPrice": 83}, {"currencyCode": "sDAGUgVcYdzd3mUK", "currencyNamespace": "Kxi2anNFpYXwE37Q", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1985-10-10T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1979-11-06T00:00:00Z", "expireAt": "1974-09-13T00:00:00Z", "price": 63, "purchaseAt": "1984-06-10T00:00:00Z", "trialPrice": 55}]}, "saleConfig": {"currencyCode": "CmsemV8gAHQaitMh", "price": 24}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "83sh3B07O0XQWCZX", "stackable": false, "status": "ACTIVE", "tags": ["X7knj7y5qEOp7hzP", "CxvetFhAgAkkEhd3", "Pi8oY6VkZP57PyBL"], "targetCurrencyCode": "Y16uyKwJ713r4F9W", "targetNamespace": "C342Uggyr64isEfx", "thumbnailUrl": "bFEabmT6MmgebEkQ", "useCount": 45}' \
    '3QcKQldxIqMgf2Pa' \
    'NJqIMDWJUW3I4SKj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'UpdateItem' test.out

#- 125 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'p0NOc5dWAES7S7wB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'DeleteItem' test.out

#- 126 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '{"count": 34, "orderNo": "lhQ1rqjRECHyhLYG"}' \
    'nvEdCjYsnh0Y0rQl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AcquireItem' test.out

#- 127 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'uvKziVTCPTrqHc7v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'GetApp' test.out

#- 128 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '{"carousel": [{"alt": "qaXxxiGOrXbWC2k2", "previewUrl": "3JxAI3kOXwHnS2VO", "thumbnailUrl": "ESYx49M1JdtImLI5", "type": "image", "url": "vjRIcSa260P2hpjh", "videoSource": "vimeo"}, {"alt": "QEdyLRX3etMjv8js", "previewUrl": "kCHfqF5uo9BT2QqC", "thumbnailUrl": "xWZGjDRc27d9a3Aa", "type": "image", "url": "O1VcAqwHJEyMrwNI", "videoSource": "youtube"}, {"alt": "ZAZJCk1fizRJy5Jo", "previewUrl": "IlHjTZ4mDmXZIBTi", "thumbnailUrl": "05akxBYozWzUW4RD", "type": "video", "url": "8Y4PcXDH8RZqUjEL", "videoSource": "vimeo"}], "developer": "ti03vAJizEosjuIs", "forumUrl": "TXKAQ4uWLCMgN7rU", "genres": ["RPG", "MassivelyMultiplayer", "Casual"], "localizations": {"y4fU6Ejumf9ltGde": {"announcement": "7x4luTsEk9TNqSiF", "slogan": "JyMByoRKUrvfixr7"}, "UFzLzGaWok215MnS": {"announcement": "NTPMRaYf8Chh5tiL", "slogan": "sXIOSE2JSDRlSX5u"}, "OgZ3Msm86Jr35oZQ": {"announcement": "3WcFld5DKwJoCrYr", "slogan": "lOXZN7MoQZDN1sju"}}, "platformRequirements": {"HXDU9ZFHISuKMr6e": [{"additionals": "9VKi3lHZdnYzFYEn", "directXVersion": "OA6gFO3zfSvvmLgx", "diskSpace": "lU5MdUdF7gHdIf6e", "graphics": "Md0iVUmBrFwFIESx", "label": "o8uFqKtoZiVPtwEC", "osVersion": "FgcQRsqYFtxbpKYK", "processor": "p18TPWOixbTLfdOF", "ram": "3VtCUZ0wN81CLC32", "soundCard": "4P82gdsOb5Jp6oxv"}, {"additionals": "vtB4aireJSZc7Coj", "directXVersion": "p07DFR7IvEhnKAMS", "diskSpace": "w1WGHPO22mCj7yFm", "graphics": "bpItmTcMVUlRoYFk", "label": "s2ULHooisOHhyiZy", "osVersion": "NxeNJcBIePMwBjK1", "processor": "1IFRybWjjYkFvEHC", "ram": "nQ2BiPScmfoBQ1VO", "soundCard": "5Trcu36LS6o87DKP"}, {"additionals": "LLTcjU87C2CAKbiD", "directXVersion": "5PxA5v9644D4d5jT", "diskSpace": "jzZ8KpdOxrQ8r5te", "graphics": "5FkJ58wQyrAb67d9", "label": "kC9MEhGrQVQ3yKCw", "osVersion": "V9chX3evM1seGH9Z", "processor": "wZcLnJPavRNr3ysE", "ram": "p4sIwslUQociDSNS", "soundCard": "6hf28TvyyZjEMbPR"}], "NKUABS8cyK8SnSvs": [{"additionals": "UGLqYJevKKJR5KWR", "directXVersion": "gHuLJEAS7pSDlIS4", "diskSpace": "N3VRydtvWZZFDNIc", "graphics": "86TKj3grgVdqSpg9", "label": "xpXCh79kxpJyTba2", "osVersion": "Sx7lPUWhfLYtrkZ2", "processor": "V3jzXzilslRzP96y", "ram": "J7RbX8fkG3hcRbcS", "soundCard": "uSkd72wzQJjmhy4f"}, {"additionals": "9F9usH1ByGD8DDRW", "directXVersion": "0KNwlKcveutOHZ2a", "diskSpace": "WSL11msU7QpcpkAp", "graphics": "FODOqz4FKRWcvJIw", "label": "zW53tKi9mxhR8RWt", "osVersion": "FcnNAoxNPXPlSv6k", "processor": "WXBTTodpLcEI0mWF", "ram": "WKlSwI38LyDyLTQx", "soundCard": "mA6nDD3EFfeJdwsk"}, {"additionals": "eVjYAe1CNRQX4T37", "directXVersion": "n6lgMV9tMXN2kDg7", "diskSpace": "INFTJO4FUT152zR0", "graphics": "PBTEvM3TgMsAS5t3", "label": "TYXNAGl1xy1H8Ag2", "osVersion": "XY2TnyPCVsWzhPIe", "processor": "HkoUSeT3lv51D9Vw", "ram": "sfzatv4JzfVNAJbS", "soundCard": "LBzqs2u1EntDzkQL"}], "gWQHXc3bRYKbJGFP": [{"additionals": "8HZNLJ7aPbRMRrbK", "directXVersion": "joifZAWt13ISgdwA", "diskSpace": "um4b3t1Ph8xHfEAl", "graphics": "yda8FPutbAgA4OlQ", "label": "UCJsDilWhSc6XIxh", "osVersion": "1HqBg5FhY2vclqnT", "processor": "byZ7fYvmiZxdNpmi", "ram": "bPCLiJaHXEyuLQOO", "soundCard": "6qVUihFznsLFP301"}, {"additionals": "3gsIOArelbYwYTtG", "directXVersion": "sRNij1bUAIrKYw67", "diskSpace": "3JvA3stZ6FN0omme", "graphics": "6HiOrbuq9cXar8FK", "label": "ACMfaESKKo0RBtKD", "osVersion": "j9PgWnODMMswus0y", "processor": "kKyOTFH9npo1k2W8", "ram": "9U6PA5Byr1VJKsNp", "soundCard": "in9ZAg5mDVmepTMi"}, {"additionals": "QqOA7WiIi8k4T7A6", "directXVersion": "suz0JPLhBV8H4Rs8", "diskSpace": "p9AflDjkRQna4afJ", "graphics": "C9mgf0blFr8NUmSd", "label": "S49CybTerX6wW5HL", "osVersion": "YxM5DN6DJmnjBd7q", "processor": "6U3V1i7ip9ibQlRe", "ram": "TecqcbggfeYn1Fnv", "soundCard": "TuTrRI8Z87U0Y5R6"}]}, "platforms": ["Windows", "IOS", "Android"], "players": ["Multi", "Single", "Coop"], "primaryGenre": "Simulation", "publisher": "0c6eA8xCvVNgS0wU", "releaseDate": "1981-08-15T00:00:00Z", "websiteUrl": "ETmRwwaH21xuey3f"}' \
    'B1KN5EzSmB6aO1Jq' \
    'ypofIkM1Wvc2CcOr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'UpdateApp' test.out

#- 129 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'a4RXenU5naN6UuNA' \
    'RNfA4hpoNUAwafK1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'DisableItem' test.out

#- 130 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'QxxK2sBBkQz8nIgo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'GetItemDynamicData' test.out

#- 131 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'YpZYIYto2cpXUnj1' \
    'kXAEnU9CvpIjJ6tB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'EnableItem' test.out

#- 132 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    '2fqN6D76apW4CsuQ' \
    'x2nME1E8lGIgW2AW' \
    'qhlJfHgWSAjBmziL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'FeatureItem' test.out

#- 133 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'kAEWkqMo2uv4G0hb' \
    '2TC5zbxqSMQf3ZXR' \
    'gmEXKPavNUDslWRg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DefeatureItem' test.out

#- 134 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'XzKcDEz6ivQvlpRK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'GetLocaleItem' test.out

#- 135 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 17, "code": "gGd8OJWfXgBkof2D", "comparison": "includes", "name": "yMGw4ZEIMYFaIEr6", "predicateType": "StatisticCodePredicate", "value": "4csEU6rwlyAZXRlt", "values": ["iXun5fD0BBCts02K", "gz1gL82ANle3vQP0", "XTRz9WtMMb9e3S9b"]}, {"anyOf": 64, "code": "gTlvO4wr8D7APHhi", "comparison": "includes", "name": "7meOUBb0ZMyPVBow", "predicateType": "SeasonTierPredicate", "value": "sGldXgqa99UNyHIl", "values": ["nrLOesUoAwwCO2c7", "RaUrUqTcFsGXxjR7", "aEAHcpdx91UabvNv"]}, {"anyOf": 44, "code": "1mgHDq7oo2SQp9UX", "comparison": "isGreaterThanOrEqual", "name": "EGGpt55fVsBfrc4O", "predicateType": "SeasonTierPredicate", "value": "06MAINAypeu3ZwgL", "values": ["ruEu9pKFWxMrOrO7", "F3XSMYkGVjcYe2ww", "m2fUVM4vgvN5a9nl"]}]}, {"operator": "or", "predicates": [{"anyOf": 1, "code": "2pjV4UBb0pZrHFxE", "comparison": "isNot", "name": "6OE3PKy2vHH6XrTj", "predicateType": "SeasonPassPredicate", "value": "OGtkrGuIEzLqOEqd", "values": ["EcHbFrNLqqyBzPWv", "Dsw3y3noSTunCZN3", "9o0vZqaSrHfwrqqH"]}, {"anyOf": 81, "code": "HpPnC56p62cEYBMP", "comparison": "isNot", "name": "bmIkQbE3nPbd7YNY", "predicateType": "StatisticCodePredicate", "value": "JL8jGfdMvM0zEHmT", "values": ["tuyipF1FB9RNF3G6", "hs6Oydk9jSSY0aqj", "jeExTo07XGD7r4dv"]}, {"anyOf": 37, "code": "CnYG5ypxMPXQb9Aa", "comparison": "isGreaterThan", "name": "NI4WIT2qYutqii44", "predicateType": "SeasonPassPredicate", "value": "SSMR4zJKYxouzcD0", "values": ["pPXkdTrLYN48A5DL", "eKISP0coyLHG52kc", "kL19tXrv2bC14hfB"]}]}, {"operator": "or", "predicates": [{"anyOf": 68, "code": "VuKeTQQXDNtjgypG", "comparison": "includes", "name": "TDHO8mQoGOS84jEV", "predicateType": "StatisticCodePredicate", "value": "n0aQHrmMgGX6WiX9", "values": ["nTAD7nNuqrknaj1F", "WPUEwP8KagnEKkfR", "ks8OhmWshFK5hyfw"]}, {"anyOf": 33, "code": "vWyVZbXXgvJKjvhZ", "comparison": "isGreaterThan", "name": "wXDX8MGlijaR3VVk", "predicateType": "EntitlementPredicate", "value": "nD09WBTm7Hy1AvjH", "values": ["8TO5OIzshGgQ4Thu", "gQFOWwlpo3MnSMNd", "jVtLt8CrUFIkcZk3"]}, {"anyOf": 96, "code": "gILFEno141RnaYhr", "comparison": "isLessThanOrEqual", "name": "8XF9eX2LXwaZwDM1", "predicateType": "StatisticCodePredicate", "value": "jutqgr8019aVHHRL", "values": ["K0fv936lSL3gAK6Q", "efiYRytVWtyJI7uj", "qFlWlAR1frDQIVwm"]}]}]}}' \
    'eL0gjx8jAfmTLOwi' \
    'BSSe1E9DWrTYLcDO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateItemPurchaseCondition' test.out

#- 136 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '{"orderNo": "MWy0wefl1KKxNl1B"}' \
    'u8GE15JzEvFlzpDn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'ReturnItem' test.out

#- 137 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'QueryKeyGroups' test.out

#- 138 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    '{"description": "YuSqynNlJACpHVnd", "name": "rAR7z9J0bNuepqWs", "status": "INACTIVE", "tags": ["h02srNNRw3Y1j6vi", "ZbWeu0WyHCl9Xs4E", "416s1Oq4B0c6hcP5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'CreateKeyGroup' test.out

#- 139 GetKeyGroupByBoothName
eval_tap 0 139 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 140 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'jLY1KxbFbyzOePaX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetKeyGroup' test.out

#- 141 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '{"description": "R3ub0i4catfNOlhl", "name": "YHQh4VgYhBaVDBRl", "status": "INACTIVE", "tags": ["vlKKTkjhbq0eRvkB", "W48O77tNIBYTFfPU", "rNUOX0haxwoUd3ez"]}' \
    'YAdypb6oWXYIQqBI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'UpdateKeyGroup' test.out

#- 142 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'hw3NQXGJDWtQNJFH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'GetKeyGroupDynamic' test.out

#- 143 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'Nbgt9uaoCeP9rZK0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'ListKeys' test.out

#- 144 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'm4whjNMB89Aoh6Jk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'UploadKeys' test.out

#- 145 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'QueryOrders' test.out

#- 146 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'GetOrderStatistics' test.out

#- 147 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    '84k7R0603b1ChdDI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'GetOrder' test.out

#- 148 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    '{"description": "pRn2HgPRevBMjemp"}' \
    'E90i47qjDQAAvYZZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'RefundOrder' test.out

#- 149 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentCallbackConfig' test.out

#- 150 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    '{"dryRun": true, "notifyUrl": "JvAnpvMcDHwA9mw8", "privateKey": "ujZZQUNi4NDzBP7m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'UpdatePaymentCallbackConfig' test.out

#- 151 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentMerchantConfig' test.out

#- 152 UpdatePaymentDomainWhitelistConfig
$PYTHON -m $MODULE 'platform-update-payment-domain-whitelist-config' \
    '{"domains": ["mM4ZrXjamc3OX9fj", "EzscuFPv5tNXWb8n", "1xyB1MxbBG0waudr"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'UpdatePaymentDomainWhitelistConfig' test.out

#- 153 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'QueryPaymentNotifications' test.out

#- 154 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'QueryPaymentOrders' test.out

#- 155 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    '{"currencyCode": "udTuIy3VLkd3YGg9", "currencyNamespace": "Bzi8uluQOBuTuYNR", "customParameters": {"4hzPkGOuDvT1kGGv": {}, "spIGcvW7T4dk3MBz": {}, "frSZGlXPukj7q5Mj": {}}, "description": "U2f4833bcUoBfWLj", "extOrderNo": "RXOqaoDBgsPHcNg0", "extUserId": "Bapd2WF3ACWSPCOI", "itemType": "BUNDLE", "language": "JTF-DjJA-kV", "metadata": {"fWFdytTpAVx0pd4p": "uXNhGU3RmYw0EwPD", "L8fEraUQnzcZCIvQ": "UYP4zKaJuBk11UoF", "tSCgGhhAxzoBKOqm": "wgAOXAylHS3htDNY"}, "notifyUrl": "uRa6jU8OLKdFhRNs", "omitNotification": true, "platform": "0vGd1u3lR0fkCW4f", "price": 45, "recurringPaymentOrderNo": "JAHmuYyTZt7v3mvP", "region": "olaFeEWrqYB9hLG7", "returnUrl": "4YMs1JCrpnpPPUyy", "sandbox": true, "sku": "ph4Z0KsCWhJPpmpj", "subscriptionId": "ibu6WMYMScWAzVVd", "targetNamespace": "QZznMUlqj2djHHFF", "targetUserId": "RxJPvHewpv9IeC6L", "title": "AtGzNwZUe0kRnfBi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'CreatePaymentOrderByDedicated' test.out

#- 156 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'o030WDtRFRReZoX0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'ListExtOrderNoByExtTxId' test.out

#- 157 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'eYwpjuQPo1Bi27Mr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetPaymentOrder' test.out

#- 158 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '{"extTxId": "8QiSBuE8WdxjHSrI", "paymentMethod": "coNi9NFQFpBDG4ba", "paymentProvider": "STRIPE"}' \
    'qdGxNGcHil6iUOTW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'ChargePaymentOrder' test.out

#- 159 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '{"description": "xf4GH0N4kVmTj683"}' \
    'Ybw4TKyPTxRuzNfm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'RefundPaymentOrderByDedicated' test.out

#- 160 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '{"amount": 43, "currencyCode": "lWXRfEoUuNmQrq6p", "notifyType": "REFUND", "paymentProvider": "WXPAY", "salesTax": 69, "vat": 31}' \
    'tfbgUqbLQ3WTZF8g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'SimulatePaymentOrderNotification' test.out

#- 161 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'P7LgkxhkSSID9PxP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'GetPaymentOrderChargeStatus' test.out

#- 162 GetPsnEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-psn-entitlement-ownership' \
    '{"accessToken": "yXJHsWipvZANpRXH", "serviceLabel": 97}' \
    'BujZh8S62GO32C73' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetPsnEntitlementOwnership' test.out

#- 163 GetXboxEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-xbox-entitlement-ownership' \
    '{"delegationToken": "RnfIDxg4DkmnJtxZ", "sandboxId": "gIUMxGfQHmg4I1PJ"}' \
    'ybUmpLmiuZGk2Gg0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'GetXboxEntitlementOwnership' test.out

#- 164 GetPlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-get-platform-entitlement-config' \
    'Nintendo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'GetPlatformEntitlementConfig' test.out

#- 165 UpdatePlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-update-platform-entitlement-config' \
    '{"allowedPlatformOrigins": ["Steam", "System", "GooglePlay"]}' \
    'Steam' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'UpdatePlatformEntitlementConfig' test.out

#- 166 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Steam' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'GetPlatformWalletConfig' test.out

#- 167 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    '{"allowedBalanceOrigins": ["Playstation", "Oculus", "Nintendo"]}' \
    'Playstation' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'UpdatePlatformWalletConfig' test.out

#- 168 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Playstation' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'ResetPlatformWalletConfig' test.out

#- 169 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetRevocationConfig' test.out

#- 170 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'UpdateRevocationConfig' test.out

#- 171 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'DeleteRevocationConfig' test.out

#- 172 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'QueryRevocationHistories' test.out

#- 173 GetRevocationPluginConfig
$PYTHON -m $MODULE 'platform-get-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'GetRevocationPluginConfig' test.out

#- 174 UpdateRevocationPluginConfig
$PYTHON -m $MODULE 'platform-update-revocation-plugin-config' \
    '{"appConfig": {"appName": "EqkFFyGp6XhgI2Su"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "y18iHO0dKNHWBFM1"}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'UpdateRevocationPluginConfig' test.out

#- 175 DeleteRevocationPluginConfig
$PYTHON -m $MODULE 'platform-delete-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'DeleteRevocationPluginConfig' test.out

#- 176 UploadRevocationPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'UploadRevocationPluginConfigCert' test.out

#- 177 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    '{"description": "37X9HTu6c4mMUdJo", "eventTopic": "KmyaU7qTgHxGQ4Dm", "maxAwarded": 87, "maxAwardedPerUser": 95, "namespaceExpression": "oSLUIzzQsIU3IZf9", "rewardCode": "3pQmmWWhMnRSn6PR", "rewardConditions": [{"condition": "k0DwXkYJ6aX6XRSX", "conditionName": "g6OXqwh2Uj0IZZFX", "eventName": "v7pY5cNIYdQRni6I", "rewardItems": [{"duration": 11, "endDate": "1979-09-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "5hVdagEETj8DNzQF", "quantity": 71, "sku": "Ywa1VlJBmSCpF2z5"}, {"duration": 82, "endDate": "1998-05-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "iZzXQxSDgH9L20T6", "quantity": 10, "sku": "B3SUe4ug9J3KKHHa"}, {"duration": 91, "endDate": "1998-06-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "FS7fAGmA4gy2QBm0", "quantity": 69, "sku": "aTdgp0WcRdrrdOKQ"}]}, {"condition": "bXXiMg5RAaD5a0gq", "conditionName": "yakuryISjsrHy7SS", "eventName": "arFsJyanoth2jhzr", "rewardItems": [{"duration": 85, "endDate": "1988-11-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "jzRzlmVmpfmMq65n", "quantity": 27, "sku": "pNAwv9UsvPaX8W0G"}, {"duration": 44, "endDate": "1982-12-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "XemKHsUC5w7fmzF8", "quantity": 42, "sku": "bbGhU1pjVwMsLdJr"}, {"duration": 41, "endDate": "1994-01-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "nAIz4y9yy462Mnwc", "quantity": 16, "sku": "qcPfBJ9GOHxUkZCv"}]}, {"condition": "qVRe3F78EGvZd49h", "conditionName": "W95i4Rm9sBef6ymE", "eventName": "EU6G6YVa5GGFvLtW", "rewardItems": [{"duration": 23, "endDate": "1978-06-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "VVguusvVUxkCG4IG", "quantity": 85, "sku": "fLtFTRx1fcfy4uTV"}, {"duration": 3, "endDate": "1985-07-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "v0l7RvPOKq8iNNYL", "quantity": 8, "sku": "5oWJPoo8QT5EB5GC"}, {"duration": 82, "endDate": "1991-08-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "owERMveDiI5BYvV5", "quantity": 78, "sku": "C1NgHaxQlxs2MPGk"}]}], "userIdExpression": "LeY5CedGPB0iJF96"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'CreateReward' test.out

#- 178 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'QueryRewards' test.out

#- 179 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'ExportRewards' test.out

#- 180 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'ImportRewards' test.out

#- 181 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    '7vODPmfnV8dOr38j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetReward' test.out

#- 182 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    '{"description": "FYjFRDj47EZTCCwz", "eventTopic": "8yawNImZdPzt9koN", "maxAwarded": 91, "maxAwardedPerUser": 72, "namespaceExpression": "L3vqGgJOWkI0sHph", "rewardCode": "IU3KaP7nk9iEaqud", "rewardConditions": [{"condition": "y3aYo02pzHannSLe", "conditionName": "EYvuciynwWb01HLr", "eventName": "p6OW9Y7FIIEJMm4K", "rewardItems": [{"duration": 18, "endDate": "1988-07-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "s3NRbyYMyWPHp8Np", "quantity": 35, "sku": "JYebI5Egye4CkNIF"}, {"duration": 90, "endDate": "1977-08-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "7IcfdqOCaqFaXYK6", "quantity": 54, "sku": "ovlZq1O6RDUgilQH"}, {"duration": 57, "endDate": "1978-06-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "s6SUNxUWIGSkxjKL", "quantity": 88, "sku": "EiP6WeXWf3dBAVfI"}]}, {"condition": "M2oLFaTIhv5XrQvT", "conditionName": "AdisxP0DyxqSYeCl", "eventName": "4gEZgIMDALa4nsIT", "rewardItems": [{"duration": 96, "endDate": "1985-02-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "FKNh8kgmMjBxD74L", "quantity": 41, "sku": "LN2lGYqQSzIUdIqm"}, {"duration": 98, "endDate": "1978-06-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "VbU9gwMgZPR9Q5Ls", "quantity": 40, "sku": "omdWWRi7OHZeGP4o"}, {"duration": 81, "endDate": "1994-06-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "3ZARHXZ5yuJsfxI3", "quantity": 52, "sku": "40sjQ8mtTN08V3MM"}]}, {"condition": "SrrV6FB8DFwD7WXk", "conditionName": "w7te8pQfvxY5zPZK", "eventName": "Md5ItnXbDbXW9Klf", "rewardItems": [{"duration": 14, "endDate": "1991-08-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "MPGtRg0HGzSGs8nB", "quantity": 95, "sku": "yqvFCYJOJl9ljs9W"}, {"duration": 85, "endDate": "1993-07-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "9fFrbdregZfA6pBI", "quantity": 30, "sku": "qoaoYoHcrIwc6qkD"}, {"duration": 11, "endDate": "1978-07-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "4eJuvLmou5AtB5J9", "quantity": 72, "sku": "xYqy0HcWUCcahA1t"}]}], "userIdExpression": "jiBugkSmA8prRvnu"}' \
    'oHm9foRLP4zSxApJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'UpdateReward' test.out

#- 183 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'e0aplQXEaoGjonwK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'DeleteReward' test.out

#- 184 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'DYwjvKhxwtaxd74b' \
    --body '{"payload": {"EkQ8XN3xQ0KaIZ1I": {}, "Sja5TxqN8RXvgNzo": {}, "X14Km851zHcDdphW": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'CheckEventCondition' test.out

#- 185 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    '{"conditionName": "EIlBnOKyfAbdUB1O", "userId": "M5oKTXANlenFuUeR"}' \
    'c2SCqQ9kgrqAIaKA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'DeleteRewardConditionRecord' test.out

#- 186 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'QuerySections' test.out

#- 187 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    '{"active": true, "displayOrder": 57, "endDate": "1972-02-13T00:00:00Z", "ext": {"fKGCBZMAbJnqDKuB": {}, "GWmZti7VJ7O7dNzD": {}, "BzVmGSholl8uD1hp": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 35, "itemCount": 39, "rule": "SEQUENCE"}, "items": [{"id": "WvlE7bmuaFNPCECK", "sku": "SzHTT5beKYt4CDlW"}, {"id": "ZzqpJeQd6tN5oH4E", "sku": "7JosGEpOKUFWLtsL"}, {"id": "f278ybCNhF9RCyMn", "sku": "5VX87u49Hsq4hLUk"}], "localizations": {"LLTNMnmlFzzwpEZw": {"description": "bcCEsJIB0JkRcYhC", "localExt": {"T3pUMiOk2aKaj7wq": {}, "r7wwPCgByCnljJ7C": {}, "YvapWO5JGco1tRG9": {}}, "longDescription": "8viuYwQTHKPcc8Z8", "title": "2WtwcihC87O1U2uY"}, "ktiAFqIsHod9kt3x": {"description": "kRSajXSTpU3aCkzq", "localExt": {"s0hC50vEOIxc25vt": {}, "orwrF6HtcJbqjCZk": {}, "EvdWNk2SHYsva1jk": {}}, "longDescription": "545vt1Vu7dsmzSUs", "title": "CVLjw2QHwjLRnoGx"}, "E4QuZeQkRBv8hh81": {"description": "CTYPYD0WHJ0JzaJp", "localExt": {"qg9JgEy7Iad7fAMC": {}, "aXsZoyeqN5ouEcXR": {}, "hWbROnhOUSnN2Kpf": {}}, "longDescription": "XJ96sJUnv5BwzKyx", "title": "JqBCaof96NNQPxPe"}}, "name": "1HYkf4KjUJVMedBE", "rotationType": "FIXED_PERIOD", "startDate": "1973-10-26T00:00:00Z", "viewId": "14kmPIGCrJozIio8"}' \
    'nWa64x5pJSHZCzyW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'CreateSection' test.out

#- 188 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'KP30KusyvaitTsWt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'PurgeExpiredSection' test.out

#- 189 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'L2AAtjEKW31SlSm2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'GetSection' test.out

#- 190 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    '{"active": true, "displayOrder": 99, "endDate": "1984-12-27T00:00:00Z", "ext": {"dKk8FlVcy0hcEMFR": {}, "kn8SAQhtiWA2DHIo": {}, "cFR98KOabgb0l3UU": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 24, "itemCount": 40, "rule": "SEQUENCE"}, "items": [{"id": "rx8aUB1xXuK2MwrR", "sku": "JukMTkO00KLgddr0"}, {"id": "UUiy5jm1w2g65Jka", "sku": "oPuBsuSb0LePf5b8"}, {"id": "MJ94DAh1Mc7VkHxj", "sku": "8k5KSFtbEoEr5LqK"}], "localizations": {"RRnKy17sBYlx7rzE": {"description": "m3km2jjNrqEmuEf6", "localExt": {"JRpqZEUH2Rr5lkfH": {}, "jqVCMpunzeSPkf8Y": {}, "5ksiqVvcGZxTP7pd": {}}, "longDescription": "uqX3e9tt0zz5gs7Y", "title": "uyxJLe1TkfLiM9Eq"}, "yhFh7mq6sgk5cHaJ": {"description": "YkzClqPty2kxgyry", "localExt": {"1MM9eo43Qi5cRehB": {}, "B7o24lw21Z3nE04C": {}, "bkpn0yX44aL9f0Qy": {}}, "longDescription": "O5YXVhTiaE4WKnEe", "title": "aUdAmgmnzKSVlXsR"}, "NMykbnHTrHLmaTGF": {"description": "I1atDOVS2F6Is27h", "localExt": {"n9TSwEvJPZcYrXKM": {}, "nNZIm0ooHCnlq1H5": {}, "IuOvafRIdOXlxxdy": {}}, "longDescription": "Sywm5h2pCfHjg41Z", "title": "hheDDG5HJEFQRX4i"}}, "name": "Vg8TK1CF9X9mTmMV", "rotationType": "CUSTOM", "startDate": "1987-12-10T00:00:00Z", "viewId": "x9FaoDIwGJ3pRyNw"}' \
    'b9JgVZofu7lNuwrS' \
    '7xf7BiZI9Jujxs7G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'UpdateSection' test.out

#- 191 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'Kf2LOlVbEWajKUr3' \
    'rx7Sdt80ugFtH5gS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'DeleteSection' test.out

#- 192 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'ListStores' test.out

#- 193 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    '{"defaultLanguage": "uRJLGkijLEJPCdah", "defaultRegion": "OY2goEK35CZu7WE1", "description": "8eU5rtQUWRLvu3WE", "supportedLanguages": ["fwBn40sJji4hVE3l", "KNQy2rJxiPPjJk44", "WHDDNDVgExcmm4fk"], "supportedRegions": ["oNMVNk6z4A3FI60u", "UrVMjqwLfyh5UUBS", "KyenhZ56H3l3jc10"], "title": "60kqFKNcGHYIXDqQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'CreateStore' test.out

#- 194 GetCatalogDefinition
$PYTHON -m $MODULE 'platform-get-catalog-definition' \
    'ITEM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetCatalogDefinition' test.out

#- 195 DownloadCSVTemplates
$PYTHON -m $MODULE 'platform-download-csv-templates' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'DownloadCSVTemplates' test.out

#- 196 ExportStoreByCSV
$PYTHON -m $MODULE 'platform-export-store-by-csv' \
    '{"catalogType": "APP", "fieldsToBeIncluded": ["yQcC8CPFXan7LUfc", "QhcxynrF5qWYvJX1", "f7rYnPbkDk5g9y47"], "idsToBeExported": ["AVCmFD0nKyUwcI9K", "JZt31la1wZgpPXxt", "cOPw0UBm7wccELVo"], "storeId": "9RYTquwIrGgk3eqg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'ExportStoreByCSV' test.out

#- 197 ImportStore
eval_tap 0 197 'ImportStore # SKIP deprecated' test.out

#- 198 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'GetPublishedStore' test.out

#- 199 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'DeletePublishedStore' test.out

#- 200 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetPublishedStoreBackup' test.out

#- 201 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'RollbackPublishedStore' test.out

#- 202 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'Of7WwNZWyYuM3y1T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GetStore' test.out

#- 203 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    '{"defaultLanguage": "jdcOVw94gqQYOWGw", "defaultRegion": "7LSW6Kb9otdVBjac", "description": "Y5doQGhc8zSCeJ4Q", "supportedLanguages": ["8PHY6vGzNfPWTQ1p", "JMwPVAUNYFOg7Tpl", "EkOZy73bRBtWCJCJ"], "supportedRegions": ["uzB1jbh95vj0V2cc", "Q60lub807E0PGhia", "3QvaFIVfHyAiTeDD"], "title": "uvgKTfrZ6TfrQrFI"}' \
    'sYsZ1dTn2pA64FJu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'UpdateStore' test.out

#- 204 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'EPymbIAwDAyNBagG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'DeleteStore' test.out

#- 205 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'D33WMVj7bfdfxyqK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'QueryChanges' test.out

#- 206 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'Q4YNnTTwZeuX7f9i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'PublishAll' test.out

#- 207 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'Y3skbk25jLP6zS6a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'PublishSelected' test.out

#- 208 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    '5C6awft8NPNJCopJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'SelectAllRecords' test.out

#- 209 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    'g7IJTeOWoVtcblaK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'SelectAllRecordsByCriteria' test.out

#- 210 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'lhxMNx5h4l3ogPTL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'GetStatistic' test.out

#- 211 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'lSlGfh2XhfCB53jl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'UnselectAllRecords' test.out

#- 212 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'BjzXLwoMxshoo8aH' \
    'sXJ87ywdDtou8Np7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'SelectRecord' test.out

#- 213 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    '4s3RLe4gpS550eQ5' \
    'WiZiQUzC0vBF108Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'UnselectRecord' test.out

#- 214 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'VF9gKmJBuqEpgnV3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'CloneStore' test.out

#- 215 ExportStore
eval_tap 0 215 'ExportStore # SKIP deprecated' test.out

#- 216 QueryImportHistory
$PYTHON -m $MODULE 'platform-query-import-history' \
    'xNdP3uQJ2ZdCStan' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'QueryImportHistory' test.out

#- 217 ImportStoreByCSV
$PYTHON -m $MODULE 'platform-import-store-by-csv' \
    'tmp.dat' \
    'tmp.dat' \
    'tmp.dat' \
    'vPwuBVifTkflegYo' \
    'tmp.dat' \
    'VHYdQPAsGfQVawbS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'ImportStoreByCSV' test.out

#- 218 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'QuerySubscriptions' test.out

#- 219 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'lqUfFfZytHO4xrQv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'RecurringChargeSubscription' test.out

#- 220 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'XR88ArNPkMbfhbrT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'GetTicketDynamic' test.out

#- 221 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    '{"orderNo": "b4ZPG4R5dqhreKq9"}' \
    'si5LTZGjfJI0GRPR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'DecreaseTicketSale' test.out

#- 222 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    '9FWa3sAlKnzZ5Joq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'GetTicketBoothID' test.out

#- 223 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    '{"count": 1, "orderNo": "jWszWZxmbhMr5aDN"}' \
    'yd7VDhThmXAsBwC4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'IncreaseTicketSale' test.out

#- 224 Commit
$PYTHON -m $MODULE 'platform-commit' \
    '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Twitch", "count": 15, "currencyCode": "OmSF5ZPpYXTbgh3h", "expireAt": "1995-10-21T00:00:00Z"}, "debitPayload": {"count": 44, "currencyCode": "yU97N87zJHVwE86V", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 27, "entitlementCollectionId": "J5DezdlRlTTSLmDo", "entitlementOrigin": "Nintendo", "itemIdentity": "EDpjLJD7E0dh077p", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 47, "entitlementId": "cJJmXX0pmy1KDJtg"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "System", "count": 75, "currencyCode": "wOewtMPXhsCdeun9", "expireAt": "1992-07-03T00:00:00Z"}, "debitPayload": {"count": 81, "currencyCode": "BnFdy01mQjVblM1G", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 91, "entitlementCollectionId": "FG6ePpjPG4iKj1Vx", "entitlementOrigin": "Xbox", "itemIdentity": "5qvwLIqgfXvKjhXc", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 76, "entitlementId": "R3a5ZvIk8F6ffaPP"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 74, "currencyCode": "XkqcMKE9l0uRkf5R", "expireAt": "1983-12-12T00:00:00Z"}, "debitPayload": {"count": 60, "currencyCode": "TyBW6pf9Ni5L9Nkv", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 42, "entitlementCollectionId": "qwvTTB6lW4R7V4J4", "entitlementOrigin": "GooglePlay", "itemIdentity": "ZNRNpLcI8Vh4bQO4", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 13, "entitlementId": "65zcFKgC0oMEpgLE"}, "type": "DEBIT_WALLET"}], "userId": "AcX7fXbKWmraqNIK"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 32, "currencyCode": "X6gPHT29wkZwM8cv", "expireAt": "1992-01-06T00:00:00Z"}, "debitPayload": {"count": 56, "currencyCode": "RjKxi25l9mb1mSJf", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 51, "entitlementCollectionId": "UaLwOsYRIJearztP", "entitlementOrigin": "Oculus", "itemIdentity": "L42H1n3ZvUrBoqK1", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 59, "entitlementId": "tU6SoaoiAtMgNN8B"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 30, "currencyCode": "xjTNe3vK6XXKdJ9Y", "expireAt": "1974-12-26T00:00:00Z"}, "debitPayload": {"count": 76, "currencyCode": "EqWwsQaxbdG9IxEo", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 4, "entitlementCollectionId": "JLKHle3po9nK2MnW", "entitlementOrigin": "System", "itemIdentity": "AiimBQXCxR1cObsy", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 92, "entitlementId": "RbeEi4WAntBdOLVn"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 23, "currencyCode": "fyiS3dO8j3taWbSh", "expireAt": "1996-02-17T00:00:00Z"}, "debitPayload": {"count": 78, "currencyCode": "dI7tdEmvBnrNtew7", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 2, "entitlementCollectionId": "e6VsIsSSdkP3IqaP", "entitlementOrigin": "Epic", "itemIdentity": "AGhHJlyMBkbUPi2F", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 84, "entitlementId": "gx1gJONPjy1ei7AZ"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "WTaiUJpIgLrblSQi"}, {"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 59, "currencyCode": "rmWKb8IhCNJqtCtG", "expireAt": "1981-12-16T00:00:00Z"}, "debitPayload": {"count": 47, "currencyCode": "r0GStncRVLvJm4u9", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 9, "entitlementCollectionId": "tRo1cXuco8zvapmS", "entitlementOrigin": "Other", "itemIdentity": "p27dvzUWMz6IheEa", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 49, "entitlementId": "1PhjtZknu6Ke0rhm"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 81, "currencyCode": "BLti0OZtmm5xYReY", "expireAt": "1993-10-24T00:00:00Z"}, "debitPayload": {"count": 13, "currencyCode": "jGDHolxRGH5sQmA6", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 77, "entitlementCollectionId": "tWOwGcqmkqou4IX6", "entitlementOrigin": "Playstation", "itemIdentity": "xtP0SkagDcL89Pjv", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 99, "entitlementId": "waUDi2fDyXlYJu8b"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 64, "currencyCode": "i6WV5MHuvBu2QQOX", "expireAt": "1993-03-11T00:00:00Z"}, "debitPayload": {"count": 1, "currencyCode": "p6c9di8JeefXJ2Pd", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 30, "entitlementCollectionId": "iTCIEKHYwj85RIJj", "entitlementOrigin": "IOS", "itemIdentity": "Snhyf4L6dZ66Zi7a", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 55, "entitlementId": "RH5UcRubJZYIgyBX"}, "type": "CREDIT_WALLET"}], "userId": "L23ppvor8grcvFvY"}], "metadata": {"ajtvdiqyZzxREBSr": {}, "Ok54EyWalLjCH6xr": {}, "3vtL9JTQ5CWaR2Dv": {}}, "needPreCheck": false, "transactionId": "XtvTExHo1HliWVA9", "type": "kYxDaegAgXI2ciZ5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'Commit' test.out

#- 225 GetTradeHistoryByCriteria
$PYTHON -m $MODULE 'platform-get-trade-history-by-criteria' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GetTradeHistoryByCriteria' test.out

#- 226 GetTradeHistoryByTransactionId
$PYTHON -m $MODULE 'platform-get-trade-history-by-transaction-id' \
    'FWoyqYl8KD0zlFtl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'GetTradeHistoryByTransactionId' test.out

#- 227 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    '{"achievements": [{"id": "tcFGPdVe0VJQksEt", "value": 68}, {"id": "mElGhVQf227V7ADa", "value": 88}, {"id": "8azMyTBLnxtGnH0h", "value": 93}], "steamUserId": "cXzOdGXLsEc8Xzmj"}' \
    'XX4csMlaBkq9QHEb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'UnlockSteamUserAchievement' test.out

#- 228 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    '66Bo3ALdAKAQUoGD' \
    'OUFK4BcWOxnwerZo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'GetXblUserAchievements' test.out

#- 229 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '{"achievements": [{"id": "IJ2JMtHAD8gJdK4C", "percentComplete": 73}, {"id": "BaO9y4CHHaydtaKJ", "percentComplete": 81}, {"id": "IdVm37lVyVYhbj7X", "percentComplete": 89}], "serviceConfigId": "6t5WMLdod5DYqp6X", "titleId": "DPJmYDZqWoL8k0jE", "xboxUserId": "Dj1R673CfYbn53kI"}' \
    'RN1df13EvjSbGYcL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'UpdateXblUserAchievement' test.out

#- 230 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'QEocUfUPAI2O4xXX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeCampaign' test.out

#- 231 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'wCsNtkQh3rUUKaN6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AnonymizeEntitlement' test.out

#- 232 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    '6Rjkt9zWkx2SjE4M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'AnonymizeFulfillment' test.out

#- 233 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'M82Qw4C7p4YKcL3q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'AnonymizeIntegration' test.out

#- 234 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    't4lUCjplpfxQDpz3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'AnonymizeOrder' test.out

#- 235 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'ka75GSPrezfQIy1F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'AnonymizePayment' test.out

#- 236 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'sYo03H0HWXeUSuTJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeRevocation' test.out

#- 237 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'RHgBRpSb3GL7YAU5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'AnonymizeSubscription' test.out

#- 238 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'AnUkmfVW93ZW1tXA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'AnonymizeWallet' test.out

#- 239 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'OpK37SfSPivmYx19' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'GetUserDLCByPlatform' test.out

#- 240 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'kz9ihTe86sjHoBLG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GetUserDLC' test.out

#- 241 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'z2Km7DEtivDSv0mm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'QueryUserEntitlements' test.out

#- 242 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '[{"collectionId": "NGIWjV9L9aA57kR2", "endDate": "1984-08-18T00:00:00Z", "grantedCode": "X4CK4IBY01KuFbs8", "itemId": "Iv2Ij9B7VD3SyR3U", "itemNamespace": "CMUtsTLoeVLjxbwU", "language": "MvCx_355", "metadata": {"tN3v8DgFUrjRGzth": {}, "YJKH9vhOLpoWOSJS": {}, "0kU6fD66yb2MtSEi": {}}, "origin": "Twitch", "quantity": 14, "region": "cxIcmhutMHEeUDIy", "source": "ACHIEVEMENT", "startDate": "1993-04-12T00:00:00Z", "storeId": "l6Q4DAwzeZS20lWb"}, {"collectionId": "Iy7iWsAEY3T2YDXu", "endDate": "1989-10-31T00:00:00Z", "grantedCode": "SzkSZfZ5duijZETi", "itemId": "zaQixMgpWQ9PgUcB", "itemNamespace": "3N69aWeqMy8NAiT9", "language": "NM_eVrh", "metadata": {"lNtuMUpS3K4kKGKc": {}, "t8SZQK7TEK4sZzj7": {}, "oPP3OeZVILEaXbHn": {}}, "origin": "GooglePlay", "quantity": 75, "region": "R8gT3if17nsndhy0", "source": "REWARD", "startDate": "1976-06-08T00:00:00Z", "storeId": "93aNy4vvrPXP6Snc"}, {"collectionId": "4UqgNJcVC0MQnjUp", "endDate": "1975-01-21T00:00:00Z", "grantedCode": "nyKSPgLrITdqgHGJ", "itemId": "d9AlCqccvcf4aG26", "itemNamespace": "GboaJ63McAoV2wAC", "language": "vL_uv", "metadata": {"5aO256ceteBSz425": {}, "Kp2PGW8gpXu2mBdR": {}, "vF84eD5m02245Ylr": {}}, "origin": "System", "quantity": 18, "region": "lfgrzLifZvRPXjiY", "source": "REFERRAL_BONUS", "startDate": "1993-12-02T00:00:00Z", "storeId": "wlnSYTuNVajwq9on"}]' \
    'I9NBO48v6DUJRe1L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'GrantUserEntitlement' test.out

#- 243 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'pwuZIoLrVS0AcrY9' \
    'Vdxzm1SnMFP7ijRI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'GetUserAppEntitlementByAppId' test.out

#- 244 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    '315PPtar2LEaQgwj' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'QueryUserEntitlementsByAppType' test.out

#- 245 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'D6Y555p9oqb5MeMG' \
    'L8kITGmF087BWKC6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementByItemId' test.out

#- 246 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'wzHgwFqS6c2YCA1r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'GetUserActiveEntitlementsByItemIds' test.out

#- 247 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    '312BKDvA3YyGsBgT' \
    'JCc6734MnrbjAM32' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'GetUserEntitlementBySku' test.out

#- 248 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'RlQ3Wpg0XNZCsESC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'ExistsAnyUserActiveEntitlement' test.out

#- 249 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'HRPA5OQX8twQrDu4' \
    '["9JFXjPc1tJBaHYTZ", "2IdgUYmmt7HXJCUj", "wNMnmrmR9dDVbvyN"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 250 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'upYCzyYEaMgXsszL' \
    '7hpsSwAQxtDEUm4P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 251 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'nTTyHhBvqhixMPjP' \
    '9lZT5O6iUdCh9M0K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'GetUserEntitlementOwnershipByItemId' test.out

#- 252 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'C9zNZRaWXjMCSId4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'GetUserEntitlementOwnershipByItemIds' test.out

#- 253 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'tDlI96Qjoaq06aI2' \
    'zoqmaPgdCvQwz6hd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementOwnershipBySku' test.out

#- 254 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'CMrHgpPD12BS4Q8u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'RevokeAllEntitlements' test.out

#- 255 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    '6QqK4CeZXmSBfgrJ' \
    'cwR3qktAdH94tziE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'RevokeUserEntitlements' test.out

#- 256 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'pGVXsUvez1lbenag' \
    'h9kCPNSZTIlkM5IY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'GetUserEntitlement' test.out

#- 257 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    '{"collectionId": "JnbFprRWLjHPiPqv", "endDate": "1991-12-02T00:00:00Z", "nullFieldList": ["MmYJeKvshwdE9XuQ", "8gykJm5GMKtZSng8", "Oi6TDpSGwc7wXieE"], "origin": "Xbox", "reason": "srmYYu40w6szojkv", "startDate": "1975-05-12T00:00:00Z", "status": "INACTIVE", "useCount": 76}' \
    'acFSVTvgh23BGEa5' \
    'ftmSBKQ3zAXk9qVr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'UpdateUserEntitlement' test.out

#- 258 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '{"metadata": {"zEqsDwIwRyHKWspP": {}, "tJlLDOjXTWGIrWq2": {}, "VvH0roA20Sfzrc9Y": {}}, "options": ["YsgvVLN3usfhiyCf", "1FOddxtE52sFK1jN", "p3OwcrNR2jH7Xx7m"], "platform": "8IqIRyUqaCbbMa2L", "requestId": "qgJOAfFwvvgYPIFE", "useCount": 97}' \
    'XosNylCwcf2iVxv9' \
    'QtivQqeRyPorhTuF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'ConsumeUserEntitlement' test.out

#- 259 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'n3W0qApZ98a9g9Aj' \
    'LDQL5jZbyjCnTkYE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'DisableUserEntitlement' test.out

#- 260 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    '0HYHfBc64zDQawQP' \
    'bbbHLcaHmXRdPvQL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'EnableUserEntitlement' test.out

#- 261 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'VuKpiiZ4Imogp7RK' \
    'EcLehyAowu72oCUd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'GetUserEntitlementHistories' test.out

#- 262 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'MES0mVVI1FilcO4p' \
    'ajEhkRLMvZnYZKCk' \
    --body '{"metadata": {"0zbREElwdZORocHS": {}, "HulJHhAnY7QeDSRr": {}, "oVkXb4xPPUmUifQv": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'RevokeUserEntitlement' test.out

#- 263 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    '{"reason": "foZ7n3eRMzJEQYwN", "useCount": 67}' \
    'EBME5ikH5iUT9GB4' \
    'bGcYzy0T6Q89155m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'RevokeUserEntitlementByUseCount' test.out

#- 264 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'M6RsYxtVcgA1q0sR' \
    '85DcnV5fUvb2OK8s' \
    '5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 265 RevokeUseCount
eval_tap 0 265 'RevokeUseCount # SKIP deprecated' test.out

#- 266 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    '{"platform": "4GvDvs1H5juf5Cq9", "requestId": "50XtiMxQDIHnPin3", "useCount": 45}' \
    'mYotZCA9LADbjj6v' \
    'iKPQxoVP77RuEzCR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'SellUserEntitlement' test.out

#- 267 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    '{"duration": 77, "endDate": "1987-05-25T00:00:00Z", "entitlementCollectionId": "TFaJHecFy9m5s6oI", "entitlementOrigin": "IOS", "itemId": "Mnk88GXMrS82vN0N", "itemSku": "2236tI7v0x9St2EF", "language": "fU2FbyIXierPr2qL", "metadata": {"KBXRYt7v7Wfg2omS": {}, "11YyIWGPc92PcmK9": {}, "zTgGQs1FIKxCXUhN": {}}, "order": {"currency": {"currencyCode": "dJ4cK7rz2VPJ8AZ9", "currencySymbol": "i1ml0sbgQ5zPZbll", "currencyType": "VIRTUAL", "decimals": 29, "namespace": "vt3TjGezRRUjCNiQ"}, "ext": {"auO5Cfja0qWoqWrZ": {}, "JAMVQaCd4UgSRsFc": {}, "8FKz1j1HfaNk1P4h": {}}, "free": true}, "orderNo": "N0txahdhp0tmV4jj", "origin": "System", "overrideBundleItemQty": {"KMOHEhe6apnthJsQ": 31, "fjfpUz3jtg1bKaDB": 89, "OxU0GsP6oBsZy1nI": 9}, "quantity": 1, "region": "RB2xVHiARcFLzOW7", "source": "SELL_BACK", "startDate": "1984-06-04T00:00:00Z", "storeId": "8Gz5TN3bJ6UVKAdN"}' \
    'p2ReRw5WPjohGmJK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'FulfillItem' test.out

#- 268 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '{"code": "CjbEtFKLGvBQOS81", "language": "LPEj", "region": "5QqEOKQXnUYMXvJJ"}' \
    'rO8K9yVaSV6MkQpP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'RedeemCode' test.out

#- 269 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    '{"itemId": "d0utGYDVGwpKCkOg", "itemSku": "cVrMw1DAaC3oGYmb", "quantity": 62}' \
    'I7J4njh6wMyuNtA5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PreCheckFulfillItem' test.out

#- 270 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    '{"entitlementCollectionId": "mMerAvf2EK1rsQWD", "entitlementOrigin": "System", "metadata": {"svihoAZBd4hkykRL": {}, "wN2LHFkXjhDf4RPT": {}, "S1xmIM78uco5di3s": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "7XsRCD3YOzMK1ZWO", "namespace": "xnVMpyEziAPi9dBg"}, "item": {"itemId": "5J0me0BhvZVrOsZS", "itemName": "qQjmdJGa6AahLvhI", "itemSku": "fKDFkuldV3vhNCAU", "itemType": "QUVGJTsED5tFgDMl"}, "quantity": 41, "type": "ITEM"}, {"currency": {"currencyCode": "685drsUwaWMLdLGD", "namespace": "jtirdqDck0QFovel"}, "item": {"itemId": "KxdFe87vTbT1ykev", "itemName": "WiIoubexJQ22uV5c", "itemSku": "Rj529cEGlYlBTFD4", "itemType": "MBzAgdtJfaktaCbk"}, "quantity": 70, "type": "ITEM"}, {"currency": {"currencyCode": "ORjbuZi76GDzksM1", "namespace": "Iq82IG598WdAhvjs"}, "item": {"itemId": "HqU3mTbQzxkHXSiD", "itemName": "FpwgjtHkQyb5yoi3", "itemSku": "fhBKutgKyddONrCA", "itemType": "3C8SvqUKqpSaqBWW"}, "quantity": 38, "type": "CURRENCY"}], "source": "SELL_BACK", "transactionId": "7IM93LGdMKko1WdX"}' \
    'cuqjnyBh936FR7fT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'FulfillRewards' test.out

#- 271 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    '7f00EZw65iq4fnnF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'QueryUserIAPOrders' test.out

#- 272 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'A4ieAeG0JcWHLxYc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'QueryAllUserIAPOrders' test.out

#- 273 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'kKH0j3mmJ2Y5FsP8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'QueryUserIAPConsumeHistory' test.out

#- 274 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '{"itemIdentityType": "ITEM_SKU", "language": "GvL", "productId": "AQlBikeTeA9eq8hI", "region": "KrzAUsKqpjQGHI3W", "transactionId": "kg4HIrEmqfnhjjtI", "type": "APPLE"}' \
    'ipAfw6xTfJiEwGhG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'MockFulfillIAPItem' test.out

#- 275 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'bMCnu8NHDPiOQzKh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'QueryUserOrders' test.out

#- 276 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    '{"currencyCode": "R4x3pYj5be9x03hT", "currencyNamespace": "zeUaFK6P6yxOlFhd", "discountCodes": ["tyrLQHkz1Es8nQbk", "NCoJ22RroweT9Xan", "4SztMOdFHQXjAZrD"], "discountedPrice": 44, "entitlementPlatform": "Other", "ext": {"bg8nAmHsrmzoPN3G": {}, "Jz77wPralgkstRsU": {}, "i0oaze9bInjdq27R": {}}, "itemId": "gguQ45JSoDgfLayv", "language": "PNWmvzOaDtopfGPn", "options": {"skipPriceValidation": false}, "platform": "Other", "price": 77, "quantity": 85, "region": "u5tQBUE3k2mUvrQP", "returnUrl": "FxSaRrDsF1CKYcMJ", "sandbox": false, "sectionId": "qYmGkk8Pcq83l2hW"}' \
    'OuqsilAWXNFfxIWM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'AdminCreateUserOrder' test.out

#- 277 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    '9jL08jtCIr8STWui' \
    'yz2eOgny7d8WVlcO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'CountOfPurchasedItem' test.out

#- 278 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'TKoZimYNHB2ph25o' \
    'EsCRrlY6AX1ksmS6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'GetUserOrder' test.out

#- 279 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    '{"status": "INIT", "statusReason": "RLgp1djMaw9o5TdL"}' \
    'hB2mWrW0A29UflIq' \
    'BalvCur3yS6PcP3N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'UpdateUserOrderStatus' test.out

#- 280 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    '8ee3aFSyZkpxzyGW' \
    '3kHAKNzH5cJ1x2Ih' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'FulfillUserOrder' test.out

#- 281 GetUserOrderGrant
eval_tap 0 281 'GetUserOrderGrant # SKIP deprecated' test.out

#- 282 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'HEQwW44r5yXnevZs' \
    'dD9Iip75t7Rgtj7p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'GetUserOrderHistories' test.out

#- 283 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '{"additionalData": {"cardSummary": "KnbtPAZsNwKWlHT7"}, "authorisedTime": "1982-03-22T00:00:00Z", "chargebackReversedTime": "1977-10-09T00:00:00Z", "chargebackTime": "1982-09-24T00:00:00Z", "chargedTime": "1991-10-26T00:00:00Z", "createdTime": "1981-02-24T00:00:00Z", "currency": {"currencyCode": "DgQ4TLdkZgouTEi1", "currencySymbol": "9doNSCRrqi0F1FGx", "currencyType": "REAL", "decimals": 100, "namespace": "rYszqB4U4xH3NpxE"}, "customParameters": {"EE1xE1teY5Ma16Sr": {}, "2B137kVZhkISgONg": {}, "rrElIGGV8sY9ZaFa": {}}, "extOrderNo": "HBtEtzzbIbJ6nsmY", "extTxId": "ALYAas29PBhKjKkX", "extUserId": "DnEXVzzBDNoUXOIk", "issuedAt": "1987-02-28T00:00:00Z", "metadata": {"3vGLET05JQWhwijC": "7ydSFRQ4V5OyypfQ", "5iJtNrVbjnyYERw2": "4T1DBdzzVbhZKnh9", "FfHsuwhOtgOWtZuh": "Ap0yxLpfWB0inH8x"}, "namespace": "FDMoqbLU4KGsevVG", "nonceStr": "PnqXXPustpaZz47m", "paymentData": {"discountAmount": 27, "discountCode": "uZptSindV4Kpifmf", "subtotalPrice": 91, "tax": 43, "totalPrice": 51}, "paymentMethod": "4ybYG4wLaPxhpGOD", "paymentMethodFee": 25, "paymentOrderNo": "8FBQVq8F8UHFjnV4", "paymentProvider": "ADYEN", "paymentProviderFee": 65, "paymentStationUrl": "8qkT208c4Eqnacza", "price": 28, "refundedTime": "1977-11-07T00:00:00Z", "salesTax": 80, "sandbox": false, "sku": "MgpfDY1FR9rKaxaW", "status": "CHARGED", "statusReason": "V78ZIjg1EtBZbAWe", "subscriptionId": "HGdU9mllRGwL1hP0", "subtotalPrice": 71, "targetNamespace": "25B5DYIkGcoYjLN4", "targetUserId": "VPTXzknDz9YRB0KE", "tax": 36, "totalPrice": 62, "totalTax": 31, "txEndTime": "1977-07-01T00:00:00Z", "type": "XTkVsvdGlmWWA02n", "userId": "KwO7XUNrraxsHn4u", "vat": 74}' \
    'vipgYCZiVhuUlRF8' \
    'bgS0Z3T7DC5TO5zu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'ProcessUserOrderNotification' test.out

#- 284 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'EOtCw7S3b8oIW8rd' \
    'uVEpRjbhlZ8rATgm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'DownloadUserOrderReceipt' test.out

#- 285 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    '{"currencyCode": "fiV8x6LtOu3SAtYQ", "currencyNamespace": "cZ2M0m2eu4s6Vt77", "customParameters": {"Z7VYCzMbz1C3ZtjG": {}, "u9CxaM7nweO9MSck": {}, "JNZeDhfW7AVHVE6T": {}}, "description": "amhtDUacOPwPczqM", "extOrderNo": "DbsgiaaxIpP9oAIC", "extUserId": "ocQql5YfBZVQcDD4", "itemType": "LOOTBOX", "language": "Floc-SeBE_JQ", "metadata": {"NNrTcdcnzDvUHgR2": "bX5lx9AjwbpWgnIz", "WRtzH2wWVwIlnX0P": "YoF43qdlpBadznEo", "pQjdlmCKky8f25OS": "6EXRpHjQ4hViJ1Z0"}, "notifyUrl": "GtE9ePlbHeBy2yYQ", "omitNotification": false, "platform": "sEZNAnUcJCHbaM8I", "price": 19, "recurringPaymentOrderNo": "sFnR0i1EP6ekQzrm", "region": "DqC827Ayw8HdDdyI", "returnUrl": "IR5cs3jEJm9cqIJO", "sandbox": true, "sku": "etrgPcoqdV16bQzZ", "subscriptionId": "jJiiJFm6K0Msbekv", "title": "Kte7LEbOajs9HWyg"}' \
    'fQVPPqE6XNxmrOFx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'CreateUserPaymentOrder' test.out

#- 286 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '{"description": "6AenNJCzeLqjOhHM"}' \
    'sieBzDBhi6oZhjEn' \
    'bkZp3ZHkJnKJ2ksy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'RefundUserPaymentOrder' test.out

#- 287 GetUserPlatformAccountClosureHistories
$PYTHON -m $MODULE 'platform-get-user-platform-account-closure-histories' \
    'gYZVyQIUbI6vW6lv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'GetUserPlatformAccountClosureHistories' test.out

#- 288 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '{"code": "ytcmR4QRN7ybL3lT", "orderNo": "1Ois7OsTElVV8XJ7"}' \
    'Jg2JP8JKQ1Fia4jQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'ApplyUserRedemption' test.out

#- 289 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    '{"meta": {"zEGsQTmKTeq9hsX0": {}, "E1pSQzkJa95maQLA": {}, "JLoGMHeP6XZjcdrs": {}}, "reason": "St4spX9eT2jwH7OD", "revokeEntries": [{"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "fqj84XXtngQG9E03", "namespace": "eUwSRO9eoka5Ufs9"}, "entitlement": {"entitlementId": "UTtAImWjuqib3nbP"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "NGuMLQ7iPaGqelc3", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 2, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Oculus", "currencyCode": "spUKyKWqOaF8En9U", "namespace": "t2qFCzvpinQCQg8f"}, "entitlement": {"entitlementId": "idwt7qJ1Y75wS8MC"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "PLfvTFl9DbHQLYWC", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 38, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "bLCaeCuMBokWfuz2", "namespace": "Zskdg2b5IpRSAi9T"}, "entitlement": {"entitlementId": "Y3ZiKfpU2gMmaHua"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "6bwcKYeFoxUWdvEB", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 85, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "2RbN68q9XjuvxGSB"}' \
    'mDL91zfHvKnS4TBw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'DoRevocation' test.out

#- 290 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    '{"gameSessionId": "lGi9OKYqmnMdDOYM", "payload": {"CkcE680jXshhArmr": {}, "rsTXqjhryZuWF0aX": {}, "yAfnT9KMwZkUmivH": {}}, "scid": "bmYwS4MpDJ1DYOnl", "sessionTemplateName": "VrhflY3MzIef9mtX"}' \
    'Hbh3agt9HQKHNhlz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'RegisterXblSessions' test.out

#- 291 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'YRtA24gRvv870jG3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'QueryUserSubscriptions' test.out

#- 292 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'e6kpEZmtrpzaLfuf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'GetUserSubscriptionActivities' test.out

#- 293 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '{"grantDays": 64, "itemId": "wh0BPRCWdTnytxme", "language": "sJ8JDDcPDev3e8oc", "reason": "7sh3o0r9VYIh3Jj1", "region": "5pf4bXUrytKH5rM5", "source": "4pVKLq2niQIIF3Qc"}' \
    '9pq9UUur5zNNHf53' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PlatformSubscribeSubscription' test.out

#- 294 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'CHNLzMNElAaW04oQ' \
    'Xa8waozlr2ftyZkl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 295 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'pNPl881jOSvCvj20' \
    'fgU419HQGug3ApiX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'GetUserSubscription' test.out

#- 296 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'AivNHSVq7Hy14PWQ' \
    'gyxy3AZ9Q29c3FLG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'DeleteUserSubscription' test.out

#- 297 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    '{"immediate": false, "reason": "1NZANUG3XywOPxcL"}' \
    'TU0y3maqZGwBZAsz' \
    'rs6F6qWE8F5UT7Jy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'CancelSubscription' test.out

#- 298 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    '{"grantDays": 85, "reason": "J0W4BcrVEEfr25k1"}' \
    'H2s4V2KN0PLlR8cm' \
    'Ho3XR1GqcOtFZDsj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'GrantDaysToSubscription' test.out

#- 299 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'HNjL304sV2h9pg3y' \
    'vd9MZqnUseNuEx7Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'GetUserSubscriptionBillingHistories' test.out

#- 300 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    '{"additionalData": {"cardSummary": "DEkdFOw34ZkvghT5"}, "authorisedTime": "1984-11-11T00:00:00Z", "chargebackReversedTime": "1997-07-16T00:00:00Z", "chargebackTime": "1978-05-12T00:00:00Z", "chargedTime": "1977-04-17T00:00:00Z", "createdTime": "1989-10-13T00:00:00Z", "currency": {"currencyCode": "Y1qewjIDEZedb90D", "currencySymbol": "CSoLAgeUljuQXNi3", "currencyType": "VIRTUAL", "decimals": 52, "namespace": "LBGlN6GGKXlt1XAs"}, "customParameters": {"wrMMjtufusABAiEc": {}, "ZPc54ZoDD56c8ZJF": {}, "ga6qXT56186aDmZp": {}}, "extOrderNo": "x6FpqFAR1FP2qDxq", "extTxId": "ukQGmZ8QPR4rrBu0", "extUserId": "xMLSZM2reG0eUsKe", "issuedAt": "1978-02-19T00:00:00Z", "metadata": {"WVs6zZRXBAexxsuL": "kWktcAykay7LItVj", "r1YSzeXfUiXANoRi": "oh11etL7rvPzXTBq", "3cXU8GYxE0OhdSVF": "cSQWMXN21fc6lGGf"}, "namespace": "o4IJnwUyJDPc4Bi2", "nonceStr": "BT8WWMNZ7MQ0xXiA", "paymentData": {"discountAmount": 95, "discountCode": "aIt0NDFEcKEQaxvt", "subtotalPrice": 72, "tax": 44, "totalPrice": 67}, "paymentMethod": "djVz0bF4f5a8wwsX", "paymentMethodFee": 2, "paymentOrderNo": "OEqFcFlBmznrLziw", "paymentProvider": "WXPAY", "paymentProviderFee": 58, "paymentStationUrl": "nnibCjn2uxoSkuKr", "price": 50, "refundedTime": "1993-03-05T00:00:00Z", "salesTax": 6, "sandbox": false, "sku": "vtreyTjGpaUSGjv2", "status": "DELETED", "statusReason": "BbjdusCtKYo61c23", "subscriptionId": "RG7T7E4yKJUPzM18", "subtotalPrice": 53, "targetNamespace": "fD5QI95OctLxGf6S", "targetUserId": "ilVAgYAplPOe3Qpv", "tax": 49, "totalPrice": 0, "totalTax": 58, "txEndTime": "1979-06-03T00:00:00Z", "type": "uevE8jhAM4C34bBP", "userId": "bifHDiBMsRy1ZmFM", "vat": 98}' \
    'fnh1larFYcM0OoFV' \
    '93hG5GVHrcfGpWAu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'ProcessUserSubscriptionNotification' test.out

#- 301 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    '{"count": 10, "orderNo": "A2ZLrkeWbmcgfplQ"}' \
    'TNIZctTysFM89BCA' \
    'F2MVozVctDaMus5b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AcquireUserTicket' test.out

#- 302 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'sovjmmxHjjlquESA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'QueryUserCurrencyWallets' test.out

#- 303 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    '{"allowOverdraft": false, "amount": 30, "balanceOrigin": "Playstation", "balanceSource": "EXPIRATION", "metadata": {"C3MEgBrVUoMCPYZA": {}, "Rtb3TsS5jOBRYgnv": {}, "Yu1vzXsMr43ycE5A": {}}, "reason": "2fFKAWLe45nohGKr"}' \
    'vpCUuClhTnLjG2ri' \
    'Y5IlAkHgxsULSOBC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'DebitUserWalletByCurrencyCode' test.out

#- 304 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'WJH9jh3zB9JEYLPl' \
    '0Rjsq0yRuQRarSVo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'ListUserCurrencyTransactions' test.out

#- 305 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 72, "debitBalanceSource": "EXPIRATION", "metadata": {"leZ7PtbbcriinQEr": {}, "7oILTomzVEdqAFGj": {}, "uRaB4ccMpIH8Lan5": {}}, "reason": "Ny9rMiD8seoTU64h", "walletPlatform": "Xbox"}' \
    'u9MixCLkCkF4GsBy' \
    'u7ccqHPLY7ScjfHW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'CheckBalance' test.out

#- 306 CheckWallet
eval_tap 0 306 'CheckWallet # SKIP deprecated' test.out

#- 307 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '{"amount": 44, "expireAt": "1991-05-06T00:00:00Z", "metadata": {"VRZH8lmeTjzHxgwK": {}, "aMjUptGDH129SPAG": {}, "K8QxsXGgAK3QR9g0": {}}, "origin": "Steam", "reason": "qWj25jcDQ7S4nZym", "source": "PURCHASE"}' \
    '7kwH9PKAIEqRaoWk' \
    'dV23II0TEDjWcIzf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'CreditUserWallet' test.out

#- 308 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 39, "debitBalanceSource": "PAYMENT", "metadata": {"yInDEdr3JfyFO9PU": {}, "A61ceL94UMGbnwR8": {}, "NQy5mWp1i7XAgvpl": {}}, "reason": "6VM46gEFqwJcySob", "walletPlatform": "Epic"}' \
    'FsOpqr85xVvxj351' \
    'm51uwOolqmdu4KlK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'DebitByWalletPlatform' test.out

#- 309 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '{"amount": 77, "metadata": {"yVSXxh4A5aA1bEwN": {}, "CWytxJKphKxkJ5Y2": {}, "qNwo7fOIEm4CCHTj": {}}, "walletPlatform": "IOS"}' \
    'w85KPyj4EGRMQTeD' \
    'UODYJlL3GEb7CgXW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PayWithUserWallet' test.out

#- 310 GetUserWallet
eval_tap 0 310 'GetUserWallet # SKIP deprecated' test.out

#- 311 DebitUserWallet
eval_tap 0 311 'DebitUserWallet # SKIP deprecated' test.out

#- 312 DisableUserWallet
eval_tap 0 312 'DisableUserWallet # SKIP deprecated' test.out

#- 313 EnableUserWallet
eval_tap 0 313 'EnableUserWallet # SKIP deprecated' test.out

#- 314 ListUserWalletTransactions
eval_tap 0 314 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 315 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'ListViews' test.out

#- 316 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    '{"displayOrder": 10, "localizations": {"gonXMWBgwAHBLENB": {"description": "Gh8mzbI7UUQoj40A", "localExt": {"F05z6BC0fH4BlyXE": {}, "2K4uNJRgQ3CCklU9": {}, "7KkomnjFaT7NQeCq": {}}, "longDescription": "paKPJkOezU2RemXA", "title": "27tg6bypXmwZRpU8"}, "Qcrmp46NHHKuQExW": {"description": "orl4PYKJ1GJKlZ26", "localExt": {"mxx5rFWCDjFeol1R": {}, "a8c5c3F5otSicHNA": {}, "Ff6XoFjTyGzUy7Gy": {}}, "longDescription": "3lIbJD3ko0KsF8jq", "title": "H84W95YMkpzkat1q"}, "YXphVMsbw6Rv3XZ4": {"description": "XgIfTmvZDu1OaoVm", "localExt": {"tgO5YP56VohkMQrB": {}, "SOet1EcW3bKxXuYO": {}, "n0ULO8bwirHmfnBi": {}}, "longDescription": "vLKinrwTNNliEMZa", "title": "ebfXS8gZ4cc4oVqQ"}}, "name": "k9tqGzt1BHwaxrSe"}' \
    'pYwXWbcBNnyBdWMR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'CreateView' test.out

#- 317 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'vISdcF4Db7MaqeC6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'GetView' test.out

#- 318 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    '{"displayOrder": 13, "localizations": {"hdDbGzcJKa1wsM43": {"description": "4xCGXTsh5xydeZAD", "localExt": {"SKQFv0tnP05L7Nwx": {}, "1i8sHEbX4mIdomBV": {}, "yorRK73vbWSNBzki": {}}, "longDescription": "EHyJEOg3iIjU3AAg", "title": "7WG2eTsmDaTzm1iy"}, "RQNy7RFRXuzS7oKc": {"description": "hq3HFDAp8snTqP81", "localExt": {"J1c6C2wvWDhsYWwX": {}, "5hKxgCMD1qRyNe4g": {}, "5DSTBpRPaWHEoCnn": {}}, "longDescription": "dVYqgBPmwdNn0ros", "title": "YXZ8eImgQ2x0SgQX"}, "dYwRiDuKo24S6Rge": {"description": "Y6mxarVsr09JpliI", "localExt": {"bzDdA20g9UeCPSEk": {}, "HvpI9pfGr7q4J4HR": {}, "fPSShguxCFDvHcOo": {}}, "longDescription": "u9G8lXxC3R0xIfzL", "title": "RFel1aMfEV5ZvvwE"}}, "name": "DVOZ5VOwnn6MrDyE"}' \
    'xIjLvTJkl9WnxI3c' \
    '4i8HDHZe4XLK8QPE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'UpdateView' test.out

#- 319 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'A7MUcU28Tjo0XKr5' \
    'KBD3YwTJ4Hn5XqA2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'DeleteView' test.out

#- 320 QueryWallets
eval_tap 0 320 'QueryWallets # SKIP deprecated' test.out

#- 321 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    '[{"creditRequest": {"amount": 22, "expireAt": "1972-03-30T00:00:00Z", "metadata": {"nsW6uK889Ccm0VWw": {}, "NdNaPLrz9N2oRxNd": {}, "2x7bzAMbnc0ESgND": {}}, "origin": "Xbox", "reason": "Bzn0RXiwLSoaZygi", "source": "REDEEM_CODE"}, "currencyCode": "VnZFgkytfX1NqG3h", "userIds": ["yR34iibMmlb6vlF1", "brmE7zBsX3PYLNca", "3imEWxUgMEW1S9JM"]}, {"creditRequest": {"amount": 25, "expireAt": "1994-08-28T00:00:00Z", "metadata": {"rcAyqXXnKEtSQkLh": {}, "10xq2zgtaigOB2XW": {}, "LXBkH6l2KW0sSf0v": {}}, "origin": "Twitch", "reason": "Sw93IumFyH8gFezb", "source": "SELL_BACK"}, "currencyCode": "amcbAWAUiz3UhK7h", "userIds": ["Y9Xv4bnujVOhaDvf", "3evXo0m3jJ0xtenP", "XW0Eog3qNqoLr5ux"]}, {"creditRequest": {"amount": 82, "expireAt": "1995-08-26T00:00:00Z", "metadata": {"TGlaOPmEdjp63KfN": {}, "pB5Un5ObPhEk6MRN": {}, "6zzKPZLWVB4YH2ro": {}}, "origin": "Other", "reason": "JTdlIm2TA1uiNbPs", "source": "REWARD"}, "currencyCode": "hPA5LWJipgrvQaTd", "userIds": ["iKmmlpHUD2h7I7Ub", "UNrp02FBwxeZXuYn", "lq95T6quy9PsI3dx"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'BulkCredit' test.out

#- 322 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    '[{"currencyCode": "75GAWm1WfXALgsjw", "request": {"allowOverdraft": false, "amount": 16, "balanceOrigin": "Epic", "balanceSource": "OTHER", "metadata": {"3eYGpxI9DQs2vOJH": {}, "76fEQ8WC3iZ6amfE": {}, "0NHQzAvmPZRWnKIf": {}}, "reason": "YW2kPDBgq17ElbCw"}, "userIds": ["KI3aXhSEFUvuqvkz", "ikf2tQ7LhwHqc9mw", "HFQ3JQtpRpQVAOex"]}, {"currencyCode": "mqWb9l5yHbiXZ6Th", "request": {"allowOverdraft": true, "amount": 62, "balanceOrigin": "Steam", "balanceSource": "ORDER_REVOCATION", "metadata": {"3MXGMrRfpSxf1Bnh": {}, "jtAikWfrrIadsWMm": {}, "GapPUenPlT7QiPDE": {}}, "reason": "UKBKA2vpqA4MSD0i"}, "userIds": ["03X04OxvZytaM4c4", "qTIV7vRV6x146gCI", "zLTURYUzEglKz4HU"]}, {"currencyCode": "rSkEiZX9iHZkthOU", "request": {"allowOverdraft": true, "amount": 85, "balanceOrigin": "Xbox", "balanceSource": "PAYMENT", "metadata": {"Bx2Kqt9eEQQ5qXZd": {}, "41KiSlLVmN9KSbiF": {}, "MGQMewQlUnkcE3UY": {}}, "reason": "V2aj9PL4PQGJJokF"}, "userIds": ["304rwbySnVTSdmqy", "eKLbBQG16At6ZhNx", "uLFAW37EUwOviFJi"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'BulkDebit' test.out

#- 323 GetWallet
eval_tap 0 323 'GetWallet # SKIP deprecated' test.out

#- 324 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'ftEYQl2xFFtZWlWK' \
    'mQH3tI9yHxuaa0zb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'SyncOrders' test.out

#- 325 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    '{"allowedPaymentMethods": ["T4NGP7Xy3gYPJQEu", "kOcBtFyzW1aKe15m", "4NorN2PP1hXmALwn"], "apiKey": "idAmiLFK5Dwak0R9", "authoriseAsCapture": false, "blockedPaymentMethods": ["Fbd8VDJQUNNivS5r", "4NDhqj2sHH7hGbYO", "jo5zLgQb3hA8P6Xc"], "clientKey": "QUNHo5ZFndtlgufb", "dropInSettings": "SdQgTPPO9giI7gI5", "liveEndpointUrlPrefix": "36KVAx0UzIc4Ou1S", "merchantAccount": "poEwl9NhPbf7Fy05", "notificationHmacKey": "sDwOSuSEBEXGahht", "notificationPassword": "xfa1XwrrRMEWbPuY", "notificationUsername": "tBYRa3zvDFLgLp1g", "returnUrl": "9EhVfDOcOmH7fDSv", "settings": "D2JNOQnrQjYIugFo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'TestAdyenConfig' test.out

#- 326 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    '{"appId": "F3ValgZcNJSYGVxi", "privateKey": "7ACWF50CSEIj98y9", "publicKey": "65Raxu2ujZqzkOZE", "returnUrl": "6sOGLtoFJvwz5yKI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'TestAliPayConfig' test.out

#- 327 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    '{"publicKey": "pwoaQavSCZfTzJfH", "secretKey": "ZF17lZ95JmGny7g7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'TestCheckoutConfig' test.out

#- 328 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'DebugMatchedPaymentMerchantConfig' test.out

#- 329 TestNeonPayConfig
$PYTHON -m $MODULE 'platform-test-neon-pay-config' \
    '{"apiKey": "2f6SO7XayfUmZz42", "webhookSecretKey": "HE0t7TAQm0TGMk4D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'TestNeonPayConfig' test.out

#- 330 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    '{"clientID": "mrwxC6EQr9lk8teE", "clientSecret": "ugVd3X7cq2K0e7A1", "returnUrl": "xHVzxmePZ06tOqox", "webHookId": "MhyqIyPdnz3ReXTr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'TestPayPalConfig' test.out

#- 331 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    '{"allowedPaymentMethodTypes": ["C2sNANyInXnunWNx", "g0gQztAjYiUb5Slp", "eaMDVE3ODebYRPEk"], "publishableKey": "mK5ePPaacnQTuUib", "secretKey": "miz8AhOGRIwwo9w0", "webhookSecret": "6X6XzJiljntx5TSA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'TestStripeConfig' test.out

#- 332 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    '{"appId": "xNBchtcaaoKZYk4G", "key": "likyI0LGO0eNNgl7", "mchid": "jdIf7ptoc5rPRsGF", "returnUrl": "fGRRKQ4tLERFGopz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'TestWxPayConfig' test.out

#- 333 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    '{"apiKey": "Q87CbxAJ0xdAPFrw", "flowCompletionUrl": "8ssJejQ7qSiyUPY0", "merchantId": 67, "projectId": 62, "projectSecretKey": "nwcv8NFIJFlyo9ht"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'TestXsollaConfig' test.out

#- 334 GetPaymentMerchantConfig1
$PYTHON -m $MODULE 'platform-get-payment-merchant-config-1' \
    'DZjjGZzNcLBzqSh3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentMerchantConfig1' test.out

#- 335 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '{"allowedPaymentMethods": ["UQrHYlWFx0rb4eSE", "xhChscwh8P6pejiR", "uUjCpBUL68KLWODg"], "apiKey": "Q2gkEKZZQfGQJPF9", "authoriseAsCapture": true, "blockedPaymentMethods": ["t3thMfA2pxZ7ocAt", "gWGRZGmCEL7IaqoD", "DiQ322lITGdQLjyg"], "clientKey": "zdLTAC4I9fqjfISE", "dropInSettings": "RaDf2LdzL9gMSge4", "liveEndpointUrlPrefix": "8h6WQOLVImJDNd0L", "merchantAccount": "TI6thfWyUKgXL1FO", "notificationHmacKey": "iDEhOn3KuRxgkDm8", "notificationPassword": "ALwZabFzMOJSqY46", "notificationUsername": "n4gzDKwFxpxbYvPC", "returnUrl": "vcqkfowSDA1NKgkK", "settings": "4huDhAO8zhoVbnYs"}' \
    '36USYZPYliicANHh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'UpdateAdyenConfig' test.out

#- 336 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'XNQESalqimMMSci9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'TestAdyenConfigById' test.out

#- 337 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '{"appId": "xEExP9jva13uRBo7", "privateKey": "tIuLW7T1d689kzJW", "publicKey": "Uj0IhAuSR15xUgtP", "returnUrl": "xWpU3njfM3MLLEwp"}' \
    'sdD0knPNT7MZM5TU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'UpdateAliPayConfig' test.out

#- 338 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'kTp46Y9LTNtGN9WU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'TestAliPayConfigById' test.out

#- 339 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '{"publicKey": "qYyTxul6u3RuXCCJ", "secretKey": "SaYmbf4tEBMWAIsb"}' \
    'PmXPNCh5Rfq2UC1T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'UpdateCheckoutConfig' test.out

#- 340 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'CPCsq2BAEzRa56ra' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'TestCheckoutConfigById' test.out

#- 341 UpdateNeonPayConfig
$PYTHON -m $MODULE 'platform-update-neon-pay-config' \
    '{"apiKey": "dYciedOlGrfTUc5A", "webhookSecretKey": "CZJjhP2aqyZJps39"}' \
    'vNgtqv552OktaS7I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'UpdateNeonPayConfig' test.out

#- 342 TestNeonPayConfigById
$PYTHON -m $MODULE 'platform-test-neon-pay-config-by-id' \
    'd9oPGerpovdmW3j3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'TestNeonPayConfigById' test.out

#- 343 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '{"clientID": "eSpo6vhwdrFa4npr", "clientSecret": "0qt5yxg5LXtD40Rs", "returnUrl": "ibRBputNAcV0wHVw", "webHookId": "4OJZ9KRfK3ElT6iz"}' \
    'H6Pdx5D1ZrPFTEv9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'UpdatePayPalConfig' test.out

#- 344 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '1KnFOHx4QGVt5sQ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'TestPayPalConfigById' test.out

#- 345 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '{"allowedPaymentMethodTypes": ["M74MHRwGWuXrmWB8", "1vpVnNLvfxMVPORd", "XWvsGZrPVAZ2ZLrD"], "publishableKey": "a1xpqIziihTn1qm3", "secretKey": "WYY19InV7B8tHIYi", "webhookSecret": "WBgIkW9QrR9bMgSr"}' \
    '1OTY7V3CTRYI1Nyo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'UpdateStripeConfig' test.out

#- 346 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'n9lvA8o43VZXjofW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'TestStripeConfigById' test.out

#- 347 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    '{"appId": "hPJjqdf6RBiYws6M", "key": "PqsSKy9SsYw3NP5y", "mchid": "L2qIrhx90T4EDNbg", "returnUrl": "re3EwhoEBW0FNQL1"}' \
    'GY5CSEzZsaak9MNj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'UpdateWxPayConfig' test.out

#- 348 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    '0mKis5KQHhwB99zM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'UpdateWxPayConfigCert' test.out

#- 349 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'KOwz2mKAvkSzld2v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'TestWxPayConfigById' test.out

#- 350 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    '{"apiKey": "fGrbc2jP3wtM1fSo", "flowCompletionUrl": "kFngc559mMToWdII", "merchantId": 58, "projectId": 8, "projectSecretKey": "6lFVoAXWUBY9BL1B"}' \
    'mvNwKXwiUQ1QS5fv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'UpdateXsollaConfig' test.out

#- 351 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'eJC1Tg5xtzTqaSWZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'TestXsollaConfigById' test.out

#- 352 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '{"device": "MOBILE", "showCloseButton": false, "size": "SMALL", "theme": "DARK"}' \
    'Lffgy1mpc59V2qKD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'UpdateXsollaUIConfig' test.out

#- 353 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'QueryPaymentProviderConfig' test.out

#- 354 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    '{"aggregate": "CHECKOUT", "namespace": "b4CIiJp9P8xb23hd", "region": "j17CLEa8QbsGBZrZ", "sandboxTaxJarApiToken": "xDKJWeWYfQ5eExWe", "specials": ["PAYPAL", "WALLET", "CHECKOUT"], "taxJarApiToken": "cgOIphhydYZ7NEwr", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'CreatePaymentProviderConfig' test.out

#- 355 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'GetAggregatePaymentProviders' test.out

#- 356 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'DebugMatchedPaymentProviderConfig' test.out

#- 357 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'GetSpecialPaymentProviders' test.out

#- 358 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    '{"aggregate": "XSOLLA", "namespace": "e3BXyDfCse1Idjn7", "region": "UTJHBJE3tOlW5QYR", "sandboxTaxJarApiToken": "cQcxJjxgx0It94Bu", "specials": ["ALIPAY", "CHECKOUT", "WXPAY"], "taxJarApiToken": "ZOmtY6jje5osrYAf", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    'sAQcRaz03FZ9YTDW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'UpdatePaymentProviderConfig' test.out

#- 359 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'nlXZ0fFMUOsM2D6X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'DeletePaymentProviderConfig' test.out

#- 360 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'GetPaymentTaxConfig' test.out

#- 361 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    '{"sandboxTaxJarApiToken": "BEfj5FBqjqhaVBjV", "taxJarApiToken": "f2bpiMDOiSWOpn2C", "taxJarEnabled": false, "taxJarProductCodesMapping": {"tkrQt7UdVDHgEyEM": "T17gAkJ9ZOyUyKXZ", "4gnJD0btvfiaLotp": "8rjTOGuuZKYSboPR", "01QNJxA5bUgJyfyq": "ZXsJXmWaoddgjJ2F"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'UpdatePaymentTaxConfig' test.out

#- 362 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    '009o01wDwPk87RGZ' \
    'xhbon95Kr4kABVvv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'SyncPaymentOrders' test.out

#- 363 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicGetRootCategories' test.out

#- 364 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'DownloadCategories' test.out

#- 365 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'oyJHCJBXauQb7rZO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicGetCategory' test.out

#- 366 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    '3cLAcITU9eaHQK6b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicGetChildCategories' test.out

#- 367 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'tDxqspEHxJ7HIZTm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicGetDescendantCategories' test.out

#- 368 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicListCurrencies' test.out

#- 369 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'GeDLCDurableRewardShortMap' test.out

#- 370 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'GetIAPItemMapping' test.out

#- 371 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'Y1ug8s10bVJXCswq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicGetItemByAppId' test.out

#- 372 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicQueryItems' test.out

#- 373 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'H9mC39RMuXDX1RgE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicGetItemBySku' test.out

#- 374 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'kBolpVL29zMvjDni' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicGetEstimatedPrice' test.out

#- 375 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'Dn8AYrRRr985p7F8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicBulkGetItems' test.out

#- 376 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    '{"itemIds": ["iN9R9kmB5pdeZ7Pq", "PhviqqmJ2XxbkLOO", "WQT73tzAjekCOilO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicValidateItemPurchaseCondition' test.out

#- 377 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'poouKkx1qj85bRrV' \
    'wuOnqEPcdhXj214N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicSearchItems' test.out

#- 378 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'DtW9jjIhrEmkNYBh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicGetApp' test.out

#- 379 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'eQNR4zCS89KqvbOl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicGetItemDynamicData' test.out

#- 380 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    '0Dayb9zBS6MQ3orS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicGetItem' test.out

#- 381 GetPaymentCustomization
eval_tap 0 381 'GetPaymentCustomization # SKIP deprecated' test.out

#- 382 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    '{"neonPayConfig": {"cancelUrl": "yb3fSoG1E1gohjzQ", "successUrl": "BWPVD8fgTZBggdAj"}, "paymentOrderNo": "0B017EuJVu3uC314", "paymentProvider": "XSOLLA", "returnUrl": "qsSgeEUzauX2BiTk", "ui": "HqFomi9qMKO7v11i", "zipCode": "TPPXFNeZn2vRR0Bf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicGetPaymentUrl' test.out

#- 383 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'lNL8jjbsyHugFLvZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicGetPaymentMethods' test.out

#- 384 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'cTCEMbloZsrrwFc4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicGetUnpaidPaymentOrder' test.out

#- 385 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '{"token": "3BEFzGxzXRz9ek9c"}' \
    'TfklLvhREHXR9ZyR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'Pay' test.out

#- 386 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    '0gYn2o0UsgX0kqqf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicCheckPaymentOrderPaidStatus' test.out

#- 387 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'XSOLLA' \
    'p1Cer18YeUzcRemW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'GetPaymentPublicConfig' test.out

#- 388 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'Ju2baHMsMOQdoVhx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicGetQRCode' test.out

#- 389 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'kHAGG58la2mBmEso' \
    'rfAQM1flkB5I8W0z' \
    'ADYEN' \
    '2bmWwgdGm7u6jzl0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicNormalizePaymentReturnUrl' test.out

#- 390 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    '5VURHB2aH1OBjSbR' \
    'WALLET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'GetPaymentTaxValue' test.out

#- 391 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'bA5ngX8nMk5seGmb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'GetRewardByCode' test.out

#- 392 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'QueryRewards1' test.out

#- 393 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'g5yaV5LtdtmXxubn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'GetReward1' test.out

#- 394 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicListStores' test.out

#- 395 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicExistsAnyMyActiveEntitlement' test.out

#- 396 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'K90It1WEpBd8W8yL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 397 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    '5eZhTnha9eiJsMlX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 398 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'tygrzG2QUljK667R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 399 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicGetEntitlementOwnershipToken' test.out

#- 400 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    '{"gameId": "7aO0dO8De9iVlq9y", "language": "DGU_emNC", "region": "E7GAZv2XPO8DiNcJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'SyncTwitchDropsEntitlement' test.out

#- 401 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'aVwdWa2ZFc4YAfXG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicGetMyWallet' test.out

#- 402 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'VqiimFcca0MFCaLq' \
    --body '{"epicGamesJwtToken": "c1H9pctBogeWR41L"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'SyncEpicGameDLC' test.out

#- 403 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'E3hNpOlQnLV2Mdea' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'SyncOculusDLC' test.out

#- 404 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'UWnsI5pKAFAjEaVG' \
    --body '{"serviceLabel": 58}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicSyncPsnDlcInventory' test.out

#- 405 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'XA8TH045L53XwwLU' \
    --body '{"serviceLabels": [10, 100, 62]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 406 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    '{"appId": "zm7orhTTcA4tRZdr", "steamId": "CvasM0LBo8pp2Wxz"}' \
    'CDgXIN2T2y2ghUM2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'SyncSteamDLC' test.out

#- 407 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    '2Sodo4xBNE56wEz4' \
    --body '{"xstsToken": "NNeslnTClsU2sYSf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'SyncXboxDLC' test.out

#- 408 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'cMmI5rwQFFHJVtc0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicQueryUserEntitlements' test.out

#- 409 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'SoSjcBoYhfbT5F3z' \
    'L27szSOYd9Y0NpVE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserAppEntitlementByAppId' test.out

#- 410 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    '2aa5kTg04QRdr4bK' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicQueryUserEntitlementsByAppType' test.out

#- 411 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    'T1GF6M2zSlbUz3WB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicGetUserEntitlementsByIds' test.out

#- 412 PublicGetUserEntitlementByItemId
eval_tap 0 412 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 413 PublicGetUserEntitlementBySku
eval_tap 0 413 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 414 PublicUserEntitlementHistory
$PYTHON -m $MODULE 'platform-public-user-entitlement-history' \
    'HpFxzpkrOzs73jVK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicUserEntitlementHistory' test.out

#- 415 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'JexWAazbTZ8xcQZY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicExistsAnyUserActiveEntitlement' test.out

#- 416 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'sCETX7eZJ4NO0fjN' \
    'EPoyNa1H6pgh7vmR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 417 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'lxBjIqeBpbdOgQEl' \
    'alEbCZEVCPO4CPfr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 418 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'YjqZmUkz3Ex6g0nu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 419 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    '0nDYcjNC6mnTmEkv' \
    'GygUoYZDyX1Xgjjn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 420 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'rUVMhDfw4eyyzx2X' \
    'Nh0EY35JVEQoV68g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicGetUserEntitlement' test.out

#- 421 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "options": ["RHubWYDMejv14bJ1", "yJTjZ8h4Ac4ud51a", "ru34XxqVeNlhPSGr"], "requestId": "2GCSBlAc1QqeDAOD", "useCount": 61}' \
    'B5Rkbc6yUtoHNPAP' \
    'LpeC92ROlmtwrNVp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicConsumeUserEntitlement' test.out

#- 422 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    '{"requestId": "1hq3dVtu3cDHRPMJ", "useCount": 93}' \
    'Rmen8aoqlm2gZZII' \
    'dtBLCiRje56hQO7i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicSellUserEntitlement' test.out

#- 423 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 81}' \
    'TWfraJoGjzdE2Gt5' \
    'Lh1PoGhJQuoTumHM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicSplitUserEntitlement' test.out

#- 424 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    '{"entitlementId": "IWouH7UIIacTNGav", "metadata": {"operationSource": "INVENTORY"}, "useCount": 23}' \
    '8lWCQSbPCAcqI35K' \
    'ja3aQgfShTgH7QU5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicTransferUserEntitlement' test.out

#- 425 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '{"code": "U5VKMgof3sbQFx7p", "language": "rb", "region": "VGM1Z1aMlYKe0aIg"}' \
    'nVNiSDk2FZXq6OW9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicRedeemCode' test.out

#- 426 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '{"excludeOldTransactions": false, "language": "hkc-TRCy", "productId": "6CStrsDUMYOj7smP", "receiptData": "uH5BZrTsNJRR5uMT", "region": "5lIHTRyEidwdTqJo", "transactionId": "LD9kVnRYM4lgdcOb"}' \
    '3Jx4X529dtXtK0d0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicFulfillAppleIAPItem' test.out

#- 427 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'nuIBjVZjOjrIUNPj' \
    --body '{"epicGamesJwtToken": "ErpmdsCqI9mZu9LE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'SyncEpicGamesInventory' test.out

#- 428 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '{"autoAck": false, "language": "puKA-cmXU-ve", "orderId": "YUJQk80tPmdgSg2K", "packageName": "TH1uoBUpdqwNpqsh", "productId": "9jEInUNjjzDzEs7b", "purchaseTime": 10, "purchaseToken": "U046EL2HqNuu1OPm", "region": "9hwPfrlE7xqyfwWm"}' \
    'TGhwyWJ7EAB7kGxN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'PublicFulfillGoogleIAPItem' test.out

#- 429 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'wO0Z3aq4k3vORHgb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'SyncOculusConsumableEntitlements' test.out

#- 430 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'QI9EqFrhz872allb' \
    --body '{"currencyCode": "2jaRoKBxDcndYM9m", "price": 0.4185544386647515, "productId": "3tE3VsEwkafcV7jv", "serviceLabel": 49}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'PublicReconcilePlayStationStore' test.out

#- 431 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    '{"currencyCode": "70QWAB8aAtASkEkn", "price": 0.6893042987564908, "productId": "OBTBGEdEfyK3mIRH", "serviceLabels": [81, 61, 55]}' \
    '4vLT0RK95W5F4wbg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 432 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '{"appId": "jwLQ0g8wHSHjSLr6", "currencyCode": "q5SdMiLPibZ6RvJ4", "language": "bQlI_ApzS_kR", "price": 0.9763313656654108, "productId": "oZkH55s6PT6eXj6a", "region": "4a2T55JSy63UIiIC", "steamId": "bL0NSbXYXl80IXa0"}' \
    '9qvdnZbUJ9uSIJAu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'SyncSteamInventory' test.out

#- 433 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    '{"gameId": "vbRoyVKQWhRCa4Me", "language": "mAa-TgmE", "region": "Qxv1WvDbJOO9Ei7s"}' \
    'vAbiWKf1R8Jo6PYM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'SyncTwitchDropsEntitlement1' test.out

#- 434 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'B78PcooWLEHt7SGs' \
    --body '{"currencyCode": "O6cJrH6H0hqUIDOC", "price": 0.8797140804086031, "productId": "lhvjQbxJ8kMyYjTM", "xstsToken": "wxUt8Wn0bPEgnVes"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'SyncXboxInventory' test.out

#- 435 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'vMZCUgM3yTN4uuJ6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicQueryUserOrders' test.out

#- 436 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '{"currencyCode": "Vj8z7NX74cqoA0EY", "discountCodes": ["w3YQS19mKC8Pt64U", "fSvI7eknvgQgx9Q8", "n3vbUiPzqRlG9blK"], "discountedPrice": 28, "ext": {"ReV2Sgd0wMGZHEIF": {}, "drXoIkuJvjMnmfWa": {}, "KU8Ip9YwI71rpGgz": {}}, "itemId": "gibcIwh74WoYm2Rp", "language": "hA-XoYN", "price": 100, "quantity": 16, "region": "1Oq88IVmlOYuPb1a", "returnUrl": "Uarkc4H54D1OSJ3c", "sectionId": "WczEEGO3c34uFmlM"}' \
    '5vFocITDTP5pBOko' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'PublicCreateUserOrder' test.out

#- 437 PublicPreviewOrderPrice
$PYTHON -m $MODULE 'platform-public-preview-order-price' \
    '{"currencyCode": "0gsrX5YmIHaEjuL7", "discountCodes": ["EzGFMhZeUFOp0vi3", "KdVx6o2rdsiMHF2Q", "g0PIjLnAoNjzCHCU"], "discountedPrice": 68, "itemId": "Z60A9qKACSJnrZAW", "price": 61, "quantity": 50}' \
    'QGJdqaQ6yjAOKmxs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicPreviewOrderPrice' test.out

#- 438 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'cQRCmbWTm1PRgpzX' \
    'RHuGgWoSnSmEo0dL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserOrder' test.out

#- 439 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    '02zFIdAPaaghTcAc' \
    'uTSz8tViSRVKzwWq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'PublicCancelUserOrder' test.out

#- 440 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'YcgoQp44IwVEXXg7' \
    '79DcEb5nBVeAEY89' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'PublicGetUserOrderHistories' test.out

#- 441 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'xEnoKKlyPtaGSVNl' \
    'RTRrauD2sfxOt0yI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 441 'PublicDownloadUserOrderReceipt' test.out

#- 442 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'gL5CqZtwn2hSKKZv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'PublicGetPaymentAccounts' test.out

#- 443 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'M4WSz7P7y5q6uDaC' \
    'paypal' \
    '8Pk58cdH7Udivafv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'PublicDeletePaymentAccount' test.out

#- 444 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'HNmSOYNlojMWEfrT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'PublicListActiveSections' test.out

#- 445 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    '6ZPygSkfhXyykclG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'PublicQueryUserSubscriptions' test.out

#- 446 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    '{"currencyCode": "UJ6YBDI6H0BLhMQN", "itemId": "cUFUuoIPjHtjlsAV", "language": "ff-676", "region": "LMA89ixWjkF5JwpR", "returnUrl": "9Zt9Phwk7ORkQcyu", "source": "5lxJ66HGJ8Ih3lT8"}' \
    'pzoI46PcpuwiYC0c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 446 'PublicSubscribeSubscription' test.out

#- 447 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'ysoxUGXNjS5quHgr' \
    'htzk9E9cWWrZXa2E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 447 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 448 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'G94tgrGpAyKwLIbU' \
    '47jEqDJTlFzhUbEL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 448 'PublicGetUserSubscription' test.out

#- 449 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'JwcO8QnqAnLORg2D' \
    'XpK4Oh0DUc9D8rnc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 449 'PublicChangeSubscriptionBillingAccount' test.out

#- 450 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '{"immediate": false, "reason": "YogmUVrSepOEo9OD"}' \
    'El88lSj9W9Qui3Qm' \
    '0WGaMwhFTQ6M5yBh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 450 'PublicCancelSubscription' test.out

#- 451 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'QNfv11khOgEX8q4X' \
    'cyM1quCP7gHWdrdk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 451 'PublicGetUserSubscriptionBillingHistories' test.out

#- 452 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'bXfhVXJ7MAA1c3t5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 452 'PublicListViews' test.out

#- 453 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    '6EpmqXtI1ea94zZA' \
    'dFCTO6FC2QUf0Whd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 453 'PublicGetWallet' test.out

#- 454 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'cum4saje9BnJ8xXU' \
    'B2jgA8fRXdoImFIj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 454 'PublicListUserWalletTransactions' test.out

#- 455 PublicGetMyDLCContent
$PYTHON -m $MODULE 'platform-public-get-my-dlc-content' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 455 'PublicGetMyDLCContent' test.out

#- 456 QueryFulfillments
$PYTHON -m $MODULE 'platform-query-fulfillments' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 456 'QueryFulfillments' test.out

#- 457 QueryItemsV2
$PYTHON -m $MODULE 'platform-query-items-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 457 'QueryItemsV2' test.out

#- 458 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 458 'ImportStore1' test.out

#- 459 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'wmEGJ3sRDNuaHQZF' \
    --body '{"itemIds": ["Dy0zd6uefjeTefS5", "buyst5TtTcS2Z7IW", "6c8m0c4Rv5qoB4BU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 459 'ExportStore1' test.out

#- 460 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    '{"entitlementCollectionId": "Ekv7eDzPw2vYMDB3", "entitlementOrigin": "Twitch", "metadata": {"i2tS7rAMAxwXuiaH": {}, "CNLmnlRPStXhqg4X": {}, "eI32fETDPQVe026c": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "WrAxnE6M2ryxqcxk", "namespace": "HbchAPo9rtjQ5kvw"}, "item": {"itemId": "n03vGAW804TWUV2H", "itemName": "AG9BYa4uwQ0r4tGU", "itemSku": "p00rMLZ1eTfmUwkG", "itemType": "YQeInkHcPjNEn2se"}, "quantity": 47, "type": "ITEM"}, {"currency": {"currencyCode": "6EucgA75jV5cXedy", "namespace": "kx4piMtnYep4qMEi"}, "item": {"itemId": "jH07e7HJsG6fiR0i", "itemName": "mQt0JNbgDRBXsG5N", "itemSku": "NHroQDKwoHHnyDbU", "itemType": "xgpdscOtCH10NfsD"}, "quantity": 98, "type": "CURRENCY"}, {"currency": {"currencyCode": "wASx4C5vUvk9EIUb", "namespace": "Szg8oOPBDgEhBUnA"}, "item": {"itemId": "ibqWQYaieasz9kvr", "itemName": "FaaYiZO9uil887oH", "itemSku": "lefkOBCLDC1UuFwh", "itemType": "yu1Iem83ei0Y4vfA"}, "quantity": 59, "type": "CURRENCY"}], "source": "ACHIEVEMENT", "transactionId": "PtxMwqAHjAkfGd2B"}' \
    'O7RPYaACBMfO0Xbc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 460 'FulfillRewardsV2' test.out

#- 461 FulfillItems
$PYTHON -m $MODULE 'platform-fulfill-items' \
    '{"items": [{"duration": 92, "endDate": "1984-04-28T00:00:00Z", "entitlementCollectionId": "VxQff0U7Yg4JRkEi", "entitlementOrigin": "IOS", "itemId": "eToF7Xn3jX3NYM8l", "itemSku": "ZTtctONZpmzO2FoQ", "language": "fKpeRnDp96Q4Kc2S", "metadata": {"uWvtgC60a1W5NbXG": {}, "zAcTpSSar2yACKSg": {}, "TLLhfpe6fOhcjuBy": {}}, "orderNo": "eSW8hYtAfRY6IM5B", "origin": "System", "quantity": 76, "region": "ryGVAVHgXTySx0ui", "source": "IAP", "startDate": "1987-12-18T00:00:00Z", "storeId": "92PUNJjyBkLHCJw8"}, {"duration": 15, "endDate": "1983-10-28T00:00:00Z", "entitlementCollectionId": "4nABQWx7hXtj4En8", "entitlementOrigin": "Xbox", "itemId": "TJ2E3gIQhGe5QDct", "itemSku": "KW2dDMadFf2HvnNc", "language": "dQko24IrllBLgRbK", "metadata": {"XSWc1FjcdL1VlSgx": {}, "KddpVjWORqaRaiKe": {}, "3J6MjaTVKbc6MVnZ": {}}, "orderNo": "Y8ef430plDAbJOGJ", "origin": "Nintendo", "quantity": 71, "region": "CWZayKnRlYPxuMiE", "source": "IAP", "startDate": "1974-02-09T00:00:00Z", "storeId": "YYuziEAHUJuW7Y2K"}, {"duration": 72, "endDate": "1986-10-25T00:00:00Z", "entitlementCollectionId": "H6UuvOmu2ptkKPy0", "entitlementOrigin": "System", "itemId": "QuiMi8sc8nnqOjus", "itemSku": "G91vBxBCUBoebiWj", "language": "66DdvqlwMH6jkWzx", "metadata": {"yWSduldWnWT6iqbe": {}, "vlVe4ZffXJQ3ETXf": {}, "QnFfOmDYHeD3I494": {}}, "orderNo": "uw3RdIA2wJ5cEseH", "origin": "IOS", "quantity": 59, "region": "VIKaNC4jAc6zZYFC", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1978-03-19T00:00:00Z", "storeId": "vZaXuJcgNDwcHbte"}]}' \
    'ulJ0qmAMOxQN2tq3' \
    'ANW3j2knM82Js3MY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 461 'FulfillItems' test.out

#- 462 RevokeItems
$PYTHON -m $MODULE 'platform-revoke-items' \
    'pXMKKRnnXfC8iy9Q' \
    'cGEKMT2TWw1dhh6B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 462 'RevokeItems' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
