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
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config '{"appAppleId": 54, "bundleId": "LgpZehK0G2nmyuVi", "issuerId": "B9kRTcSQdTnNYGeA", "keyId": "fYFG3wSkHKufBdS3", "password": "ZOokZB4cXnAXyuGz", "version": "V2"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-p8-file --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config '{"sandboxId": "lxHv8SwyagYvDJ3w"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config '{"applicationName": "3UNgIGj2jZtEYT8s", "notificationTokenAudience": "IPSE1XXPzySa0sZo", "notificationTokenEmail": "FS6xCOWMpyh9pMsQ", "packageName": "gb64ELbzDMwyo4nI", "serviceAccountId": "RysQdbufXjYnSoIF"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config '{"data": [{"itemIdentity": "eouC2m38kXrDZWlG", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"E9sJ4NpUtKp6M9I6": "nEwnZhsjwJeGwaPS", "DMZz95OYKiqaZD63": "xe5rruJVfLGea0Zt", "lzUcuHAXz0UV31Mf": "uGaXsAuGsZaSHevO"}}, {"itemIdentity": "0TQNEI3kfabxJWWS", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"1ECUo1NPpeFhUztX": "DgB7n4C97uAPP8PA", "TLpUpxeJlsBJT6Hh": "3OMjAjq2mK8lbSEE", "elxnb5QxWG2HFnZl": "A6HKWW4fI1IQcoBQ"}}, {"itemIdentity": "ELcNlZkqTZrKgXNw", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"nAZaWsQJtRYoagRJ": "K5PX9UcOvhPyE11T", "RT2SKseoe8VLie0L": "Ba36KNzjf005CXNG", "ehQ2aTjTDfKFDXC7": "eGL5YhJDWh9YWqc0"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-oculus-iap-config --login_with_auth "Bearer foo"
platform-update-oculus-iap-config '{"appId": "qgV6d9yOfIMLds2D", "appSecret": "bPcaoMdtRLTmSvTk"}' --login_with_auth "Bearer foo"
platform-delete-oculus-iap-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config '{"backOfficeServerClientId": "QQgB7exYvmHMxr5h", "backOfficeServerClientSecret": "PCJJztJBg0tTJg46", "enableStreamJob": false, "environment": "ewOXE2AkCh3QIZsU", "streamName": "f8lGFXcmwTERHclO", "streamPartnerName": "dxIwqejxe18rNdb8"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-existed-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-playstation-iap-config '{"backOfficeServerClientId": "Otq6j1mqUav7k05H", "backOfficeServerClientSecret": "AQltnSojV4jT65yc", "enableStreamJob": false, "environment": "4AbGptKaWNvPbpg7", "streamName": "yrRvXfZ6rvgvEY3H", "streamPartnerName": "ht1SwqTsKKKo37NH"}' --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config '{"appId": "DOQe91Ps3ztUIV0d", "publisherAuthenticationKey": "S6hIH9c4Vfkyrwpu"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config '{"clientId": "XxbaERbfgPmi0eHk", "clientSecret": "t1mr9EOIFg0dnWIY", "organizationId": "N2NVL70Iw157g00j"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config '{"relyingPartyCert": "r9b8MuYmmeKTmBNv"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-query-third-party-notifications --login_with_auth "Bearer foo"
platform-query-third-party-subscription --login_with_auth "Bearer foo"
platform-download-invoice-details 'GYxEQdf3ewoGGoY7' 'xmFNAmjDDCvs78mc' 'MdiS76YApGJ9ufwL' 'CODE' 'tNquwC3WgumrIz4N' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'hGztZpr4U4fwQIiL' 'XgmRasvjO4lj8m3X' 'EwP2b4gd3xOeii8J' 'COINS' 'DvPRCzBrVUxmDOj3' --login_with_auth "Bearer foo"
platform-sync-in-game-item '{"categoryPath": "cvRFaTC11W0TGTCm", "targetItemId": "4fZWuk6pQxDQpKqx", "targetNamespace": "LGeMvr9TsvcMQ7dB"}' 'saIecRxIsZvD6rmz' --login_with_auth "Bearer foo"
platform-create-item '{"appId": "Vr5XT1Nxw0v1dMQ9", "appType": "GAME", "baseAppId": "Afgc050XIZRW491e", "boothName": "94mQjVOOBnIWhunE", "categoryPath": "lqZUodp3IhtCSHy1", "clazz": "ei1fIrPvfHnRN06E", "displayOrder": 19, "entitlementType": "CONSUMABLE", "ext": {"RwEQlNapJRfk4f9Z": {}, "cw1pEHAyNFxcVTKu": {}, "AQTGh5BxjWOozGoD": {}}, "features": ["tsUuYo5p8ED5QZAu", "jlVHY1AHwF3vGoav", "fwNa8lzfjv9oYMXM"], "flexible": false, "images": [{"as": "MK0PcLnEkcokKwcQ", "caption": "0baDT9OyJ2h23GUS", "height": 24, "imageUrl": "amU7syGlElXdEAOr", "smallImageUrl": "VSnLocLVVYamQc4w", "width": 5}, {"as": "B2yPlRpWjmHZAAvK", "caption": "TH8MuqIg0Czkguwu", "height": 74, "imageUrl": "wiIAvxSvNDlmM5nQ", "smallImageUrl": "FMGzs7fzjgyc44mE", "width": 16}, {"as": "CFeY5g4XgBsbfzqx", "caption": "BPNe8ae1Il4aAtEb", "height": 43, "imageUrl": "xm09wpGAbpEmDY9v", "smallImageUrl": "Lh3u6EDsUmrV6kH4", "width": 82}], "inventoryConfig": {"customAttributes": {"RbkF2I03dIjvBbA6": {}, "bfbYaJCJjfk2TUvn": {}, "95FhO7VW3mbDVMDu": {}}, "serverCustomAttributes": {"87t0ldWf7iSGIiKF": {}, "tWtn4Yr2svKM6pqL": {}, "GZ0TBujELAUK6mQ5": {}}, "slotUsed": 17}, "itemIds": ["i3Bg7Jxc9pUnZmvh", "idwCkZwqjYLfTiCO", "1NDBvQvRPnAz4VzW"], "itemQty": {"0CpoBCbyJsF5IjF1": 4, "fQxRuX91uYmtrHJb": 62, "YNZ84CVhziXV8HwS": 26}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"cvcDKF19yVRafCjO": {"description": "uSYht83AdvBaagTi", "localExt": {"RJ8daGTVX3Bb7jlz": {}, "5IfHgKjI9mwJSrN8": {}, "jkIykR2zbaI6PD7f": {}}, "longDescription": "EscShnGUGUtV9GJ2", "title": "79GDbLNwjm3FK0nn"}, "X2poMfZ1hDHtbh4H": {"description": "tMlFgvh2Dp2SoiIP", "localExt": {"p1yvfAHS0VgLu11A": {}, "3HTovFi4tPAGfley": {}, "CA6jEtcqsnzoVILj": {}}, "longDescription": "kwW61duF87aUyrdt", "title": "4XSpWBAetsanzqP8"}, "oxfrtbECD1CYPwai": {"description": "BAxfYL8Avt70ZUT2", "localExt": {"fSk3LL0calqxEewu": {}, "GS469k2hG0WKt4sU": {}, "manYxM0UHZVNYzGM": {}}, "longDescription": "NIpWoSLkUrfuf4U3", "title": "WeYeA9t2ENKKWrFt"}}, "lootBoxConfig": {"rewardCount": 68, "rewards": [{"lootBoxItems": [{"count": 47, "duration": 70, "endDate": "1977-03-14T00:00:00Z", "itemId": "9Su4FnS98QqftSjq", "itemSku": "7sn8yreciPLfkVyy", "itemType": "JsbGpO6JgehDJxEN"}, {"count": 13, "duration": 73, "endDate": "1994-04-01T00:00:00Z", "itemId": "JfHlJl4tHGa4XfZc", "itemSku": "d9CVnGqMX9FieeEs", "itemType": "sWEUl07bhwntCVqi"}, {"count": 30, "duration": 83, "endDate": "1993-10-14T00:00:00Z", "itemId": "lKNchPHNL4X3LLaG", "itemSku": "PGdqLE8SohhhuiTn", "itemType": "JarYYkHBDdSzBXdx"}], "name": "apwhd5IQYBQuxLvP", "odds": 0.3344010813815791, "type": "REWARD_GROUP", "weight": 45}, {"lootBoxItems": [{"count": 57, "duration": 61, "endDate": "1999-10-28T00:00:00Z", "itemId": "fsNy9Z9OhxXvCp9y", "itemSku": "7fLD2qfCXnlUnqxT", "itemType": "1WsRNMZcA92hzC7M"}, {"count": 82, "duration": 1, "endDate": "1999-05-25T00:00:00Z", "itemId": "vVe4MHX6AgMep90A", "itemSku": "yyUJyAK5PRMRMwdv", "itemType": "l0hv6g62GxBW2tQF"}, {"count": 39, "duration": 9, "endDate": "1976-11-11T00:00:00Z", "itemId": "jgJaMYvNQOsDa4bk", "itemSku": "cgepqtxjbrztee7Q", "itemType": "LTGAak7Kaol01DK9"}], "name": "7D2xnik42miteR5e", "odds": 0.6869443928406916, "type": "REWARD", "weight": 18}, {"lootBoxItems": [{"count": 9, "duration": 31, "endDate": "1998-09-26T00:00:00Z", "itemId": "rzmmgqBPRmd6mO4o", "itemSku": "I8KDqebm83raNBJ5", "itemType": "y7axEkvI4oxZEDxG"}, {"count": 17, "duration": 57, "endDate": "1971-04-22T00:00:00Z", "itemId": "gg8rdwY9bmrvHmO0", "itemSku": "7KNqX9LM2IwEsdOG", "itemType": "BXBwnzDX8v3xgC1G"}, {"count": 9, "duration": 88, "endDate": "1972-12-13T00:00:00Z", "itemId": "XfFBii2RAMEX5RMj", "itemSku": "BFVZGYzQqV8d9mDd", "itemType": "UIoiIJFNxuNOmUSW"}], "name": "w18T1IxVWCxdvPL9", "odds": 0.0706410703944903, "type": "REWARD_GROUP", "weight": 87}], "rollFunction": "CUSTOM"}, "maxCount": 78, "maxCountPerUser": 44, "name": "DRqkpiFK5BtiQ272", "optionBoxConfig": {"boxItems": [{"count": 96, "duration": 63, "endDate": "1978-11-16T00:00:00Z", "itemId": "9UBJWodpdwsX1jor", "itemSku": "cyR0x3YiHF8ITGPR", "itemType": "QBCgIs1Q2lzxl0yF"}, {"count": 70, "duration": 25, "endDate": "1974-09-08T00:00:00Z", "itemId": "7TTh4gUoj8u2WRcL", "itemSku": "iEtzVlnkflfn7pHY", "itemType": "48F1dl1q92m3iRlf"}, {"count": 28, "duration": 55, "endDate": "1985-11-06T00:00:00Z", "itemId": "Ak0CwiAsR65yQ9ss", "itemSku": "uHdGmxncCEr0Kcge", "itemType": "qzGbruNB72HHMkjz"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 59, "fixedTrialCycles": 56, "graceDays": 4}, "regionData": {"4UFKiaoV0VOem2yq": [{"currencyCode": "PsMFxKybPkbuS6x9", "currencyNamespace": "cLJ1APnNlsa2bRBr", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1995-04-01T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1996-06-13T00:00:00Z", "expireAt": "1984-03-16T00:00:00Z", "price": 11, "purchaseAt": "1993-08-31T00:00:00Z", "trialPrice": 9}, {"currencyCode": "qLMR919IZPKOKiAV", "currencyNamespace": "QXXOmqFHLbyXmgCN", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1996-01-02T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1988-06-19T00:00:00Z", "expireAt": "1998-02-01T00:00:00Z", "price": 42, "purchaseAt": "1977-09-28T00:00:00Z", "trialPrice": 3}, {"currencyCode": "cL1koyHjCH5olYLE", "currencyNamespace": "TRpABAmO2EGvJ4UM", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1999-07-14T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1991-02-28T00:00:00Z", "expireAt": "1983-10-23T00:00:00Z", "price": 81, "purchaseAt": "1992-10-10T00:00:00Z", "trialPrice": 46}], "nDByhnoluO6ti0QP": [{"currencyCode": "2ssiJ66OzOj84O6t", "currencyNamespace": "gohjtC7bzjPpucdd", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1984-08-15T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1981-02-11T00:00:00Z", "expireAt": "1977-09-17T00:00:00Z", "price": 32, "purchaseAt": "1983-07-10T00:00:00Z", "trialPrice": 32}, {"currencyCode": "59anrNSleywHbHig", "currencyNamespace": "6IKWVZ77KeRWdECa", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1973-03-30T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1999-12-20T00:00:00Z", "expireAt": "1974-07-10T00:00:00Z", "price": 4, "purchaseAt": "1972-10-21T00:00:00Z", "trialPrice": 62}, {"currencyCode": "2Fnemn7M23SzUo4h", "currencyNamespace": "NBDh9ZFP1OW0nXOE", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1992-07-18T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1993-11-20T00:00:00Z", "expireAt": "1995-05-08T00:00:00Z", "price": 37, "purchaseAt": "1993-11-07T00:00:00Z", "trialPrice": 30}], "j7mulP4tQ6R1OqKV": [{"currencyCode": "OTniBgLsNhdgQ0JW", "currencyNamespace": "ZjNRSzOTqcVNX3ah", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1982-04-25T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1996-08-24T00:00:00Z", "expireAt": "1974-04-11T00:00:00Z", "price": 47, "purchaseAt": "1982-07-03T00:00:00Z", "trialPrice": 100}, {"currencyCode": "hTnjN6wKZGW4y3f0", "currencyNamespace": "R9s2kndhhZhwAiLs", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1995-02-28T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1976-04-11T00:00:00Z", "expireAt": "1993-10-31T00:00:00Z", "price": 60, "purchaseAt": "1988-12-15T00:00:00Z", "trialPrice": 7}, {"currencyCode": "ch4IjDq9aT3qZyI0", "currencyNamespace": "rYsWucAkXsVJbXi7", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1993-02-21T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1971-07-11T00:00:00Z", "expireAt": "1987-10-19T00:00:00Z", "price": 46, "purchaseAt": "1978-10-11T00:00:00Z", "trialPrice": 73}]}, "saleConfig": {"currencyCode": "c895ImqK6tVsaUq3", "price": 38}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "6NUsVY21NVIs7NRe", "stackable": false, "status": "ACTIVE", "tags": ["BYx0EaURydf8ZyyZ", "Ns0QJQeaWytPfds1", "eHAWGgJUbUJRMbkc"], "targetCurrencyCode": "TglbU86FyOjApNHB", "targetNamespace": "VfNOURcjY3YYT9oT", "thumbnailUrl": "ynmfIuBWgJTNFfM8", "useCount": 79}' 'TKXMjiw6gYPvfn2Q' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 't9iyq3Nyk8ncu2Z3' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-items 'eDHH9WaVO4iKhDcJ' --login_with_auth "Bearer foo"
platform-get-item-by-sku '7TCcNIsQ3PuppUxD' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'SK8aOTGMudcxlCV4' --login_with_auth "Bearer foo"
platform-get-estimated-price 'cNbJGQ57lPdinpjS' '2DRfGt9GlyZVQ4X6' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku '7tPZSTpPq3xjrElv' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'vDgw0ag7kSWE0Hiq' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition '{"itemIds": ["m5IuLryiEXqvUWDj", "U1G0EVjVZw1ToLuP", "akQN1MpOs1RVFrcg"]}' '2CXxepx78fvsyhE2' --login_with_auth "Bearer foo"
platform-bulk-update-region-data 'BKtyTDSIM7mkmvZ7' --body '{"changes": [{"itemIdentities": ["Cmsh4US8o4jfMANP", "pmZDdMiCxmuCCVuF", "jS1GC1d2b92B4vEg"], "itemIdentityType": "ITEM_ID", "regionData": {"TxaTIz0jcgDI8Pkz": [{"currencyCode": "96vd80msqIm5bufn", "currencyNamespace": "BqrpLeqhwVhjnnjK", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1977-06-10T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1971-11-03T00:00:00Z", "discountedPrice": 18, "expireAt": "1972-07-12T00:00:00Z", "price": 38, "purchaseAt": "1986-08-08T00:00:00Z", "trialPrice": 59}, {"currencyCode": "QHbMrKYi0Zxs5SWC", "currencyNamespace": "qZXHLLa31oQf7BUL", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1997-10-14T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1995-03-03T00:00:00Z", "discountedPrice": 53, "expireAt": "1981-10-20T00:00:00Z", "price": 41, "purchaseAt": "1980-08-30T00:00:00Z", "trialPrice": 51}, {"currencyCode": "M6BqguqD5xxGxBWt", "currencyNamespace": "nTKUe2znsqPzPkwC", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1978-03-15T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1993-02-24T00:00:00Z", "discountedPrice": 46, "expireAt": "1990-08-24T00:00:00Z", "price": 59, "purchaseAt": "1994-06-01T00:00:00Z", "trialPrice": 93}], "ih2EQfY3XCv4hdOa": [{"currencyCode": "6FdZhNMd1onFjGRb", "currencyNamespace": "xtABPXDmgNEJBhgG", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1984-09-19T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1988-06-14T00:00:00Z", "discountedPrice": 60, "expireAt": "1981-03-01T00:00:00Z", "price": 81, "purchaseAt": "1984-08-18T00:00:00Z", "trialPrice": 20}, {"currencyCode": "66szbCCf73IFbRkP", "currencyNamespace": "SSITz4TjCrJHXGXk", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1999-11-22T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1994-12-29T00:00:00Z", "discountedPrice": 41, "expireAt": "1972-12-02T00:00:00Z", "price": 57, "purchaseAt": "1984-01-23T00:00:00Z", "trialPrice": 16}, {"currencyCode": "JfIfXshuLUk5Wdpx", "currencyNamespace": "jZx5noXPhPUTKbon", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1981-07-22T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1977-11-20T00:00:00Z", "discountedPrice": 21, "expireAt": "1977-02-26T00:00:00Z", "price": 53, "purchaseAt": "1994-06-29T00:00:00Z", "trialPrice": 84}], "vayLLiizac7Ge6zK": [{"currencyCode": "Jdlt7rjF5RaJwvkW", "currencyNamespace": "Vco2LTo5ijlvDF8q", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1976-08-23T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1989-01-28T00:00:00Z", "discountedPrice": 55, "expireAt": "1990-07-23T00:00:00Z", "price": 86, "purchaseAt": "1997-07-15T00:00:00Z", "trialPrice": 62}, {"currencyCode": "S8zdhMeBXH8x6HdV", "currencyNamespace": "fZVDAiU6iJOF7JKZ", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1999-07-16T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1997-10-27T00:00:00Z", "discountedPrice": 50, "expireAt": "1998-04-03T00:00:00Z", "price": 60, "purchaseAt": "1975-09-04T00:00:00Z", "trialPrice": 83}, {"currencyCode": "4MYXlrJ81lHvv9rq", "currencyNamespace": "vEoM8YmVjAkO3HKs", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1979-06-27T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1995-03-31T00:00:00Z", "discountedPrice": 92, "expireAt": "1979-04-21T00:00:00Z", "price": 46, "purchaseAt": "1992-10-25T00:00:00Z", "trialPrice": 6}]}}, {"itemIdentities": ["xAvM7tuL81lsR7xx", "SVp3Gd2TK0HzYviT", "gYmx82JVBRLPZ6Iz"], "itemIdentityType": "ITEM_SKU", "regionData": {"tne5dbguBF6Gsvvd": [{"currencyCode": "l8jHz9x7XZIjU4IK", "currencyNamespace": "9lOLaZaMphKCqTq3", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1995-10-24T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1991-02-07T00:00:00Z", "discountedPrice": 76, "expireAt": "1989-02-20T00:00:00Z", "price": 18, "purchaseAt": "1997-04-28T00:00:00Z", "trialPrice": 1}, {"currencyCode": "EEXBLIxGnNuhoJM3", "currencyNamespace": "WWPvvCiCf33ViEdq", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1978-07-09T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1994-03-24T00:00:00Z", "discountedPrice": 99, "expireAt": "1995-11-02T00:00:00Z", "price": 100, "purchaseAt": "1996-11-19T00:00:00Z", "trialPrice": 77}, {"currencyCode": "izk5UcPAGv6c1ESC", "currencyNamespace": "6hZYTYZbzf5aANNN", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1974-03-29T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1974-08-10T00:00:00Z", "discountedPrice": 91, "expireAt": "1989-07-11T00:00:00Z", "price": 81, "purchaseAt": "1995-11-07T00:00:00Z", "trialPrice": 70}], "SBqabUXOGkkoMUZn": [{"currencyCode": "1YXj5zFZeOCOR9Nv", "currencyNamespace": "BQZSJPOIKrRBrYVz", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1981-05-23T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1977-05-09T00:00:00Z", "discountedPrice": 24, "expireAt": "1997-06-18T00:00:00Z", "price": 48, "purchaseAt": "1978-11-18T00:00:00Z", "trialPrice": 52}, {"currencyCode": "nLRH36bqS2oFY76P", "currencyNamespace": "U1AziBOHEAj1cT3u", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1981-09-13T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1971-05-29T00:00:00Z", "discountedPrice": 56, "expireAt": "1994-10-17T00:00:00Z", "price": 65, "purchaseAt": "1973-08-02T00:00:00Z", "trialPrice": 27}, {"currencyCode": "0jvA54CSqZFDsO1s", "currencyNamespace": "kRjOU1SMfQVQa6bl", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1972-12-23T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1972-09-09T00:00:00Z", "discountedPrice": 7, "expireAt": "1973-01-13T00:00:00Z", "price": 6, "purchaseAt": "1991-10-19T00:00:00Z", "trialPrice": 96}], "YMnW49rWynp1ck1v": [{"currencyCode": "T90C6o86cSRL9cgb", "currencyNamespace": "Umulhe98oaFKlQic", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1987-07-09T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1983-02-26T00:00:00Z", "discountedPrice": 19, "expireAt": "1980-03-10T00:00:00Z", "price": 39, "purchaseAt": "1975-07-06T00:00:00Z", "trialPrice": 83}, {"currencyCode": "Sd9QWVMYz7TU1Tsx", "currencyNamespace": "sChSclSkb5aBi9K9", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1983-10-25T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1991-10-26T00:00:00Z", "discountedPrice": 13, "expireAt": "1978-09-18T00:00:00Z", "price": 1, "purchaseAt": "1996-10-08T00:00:00Z", "trialPrice": 6}, {"currencyCode": "5nXJ7hLi6HweweRm", "currencyNamespace": "yo91dIn7QqXBDXJc", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1979-12-04T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1984-04-07T00:00:00Z", "discountedPrice": 6, "expireAt": "1996-08-23T00:00:00Z", "price": 37, "purchaseAt": "1982-07-09T00:00:00Z", "trialPrice": 29}]}}, {"itemIdentities": ["oLnWGP1PafIjLX8c", "e0KbNN7Ycl2JfmQp", "lvGjVQ4aebjfgGu4"], "itemIdentityType": "ITEM_ID", "regionData": {"2oWJlfglLM4xjfkN": [{"currencyCode": "L4lU6jaGfsD1cfsw", "currencyNamespace": "meFpvtDtetoQVFL8", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1980-05-04T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1971-07-13T00:00:00Z", "discountedPrice": 76, "expireAt": "1975-05-11T00:00:00Z", "price": 41, "purchaseAt": "1976-05-11T00:00:00Z", "trialPrice": 62}, {"currencyCode": "89jRCn48bvkCPfKo", "currencyNamespace": "fwXOIZZQAJza84lK", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1999-11-26T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1971-09-24T00:00:00Z", "discountedPrice": 93, "expireAt": "1981-01-24T00:00:00Z", "price": 48, "purchaseAt": "1981-08-15T00:00:00Z", "trialPrice": 97}, {"currencyCode": "bNrSUAW2ak7ISDrB", "currencyNamespace": "Vg6NuDZvPb1kuUfN", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1994-01-31T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1994-02-01T00:00:00Z", "discountedPrice": 49, "expireAt": "1985-02-20T00:00:00Z", "price": 66, "purchaseAt": "1979-01-29T00:00:00Z", "trialPrice": 58}], "PHEaqbzHvDDl1jiL": [{"currencyCode": "w3XMGBA6JXDpA1tI", "currencyNamespace": "C45C0oaGouFu4hXO", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1977-06-30T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1989-08-07T00:00:00Z", "discountedPrice": 28, "expireAt": "1972-05-12T00:00:00Z", "price": 28, "purchaseAt": "1980-07-20T00:00:00Z", "trialPrice": 48}, {"currencyCode": "DeRcpUvlrw2MwC1u", "currencyNamespace": "uokpaIjL0Vxe5n9L", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1993-12-07T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1985-09-11T00:00:00Z", "discountedPrice": 29, "expireAt": "1987-11-27T00:00:00Z", "price": 13, "purchaseAt": "1986-07-11T00:00:00Z", "trialPrice": 92}, {"currencyCode": "OgvDc7xMrRKvw8IS", "currencyNamespace": "P2WKmCRRXBxlalCH", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1995-01-30T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1990-10-24T00:00:00Z", "discountedPrice": 13, "expireAt": "1983-05-28T00:00:00Z", "price": 76, "purchaseAt": "1984-05-04T00:00:00Z", "trialPrice": 65}], "S8fLWoQ5nuJhatQP": [{"currencyCode": "xR7dvBVC5zgOKLTD", "currencyNamespace": "mHe8c1eJ9sde7Ryt", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1989-01-25T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1988-05-16T00:00:00Z", "discountedPrice": 45, "expireAt": "1989-12-14T00:00:00Z", "price": 79, "purchaseAt": "1981-09-07T00:00:00Z", "trialPrice": 50}, {"currencyCode": "uux9xBomQFPFWy5c", "currencyNamespace": "wNPI6aFo0MVwDZCI", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1994-11-19T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1986-11-07T00:00:00Z", "discountedPrice": 42, "expireAt": "1999-10-19T00:00:00Z", "price": 42, "purchaseAt": "1984-12-09T00:00:00Z", "trialPrice": 97}, {"currencyCode": "rARya2IMlNiXpF4q", "currencyNamespace": "vsUUpHqi33TcBGkc", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1985-03-20T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1995-11-07T00:00:00Z", "discountedPrice": 4, "expireAt": "1984-04-17T00:00:00Z", "price": 62, "purchaseAt": "1976-01-23T00:00:00Z", "trialPrice": 31}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'NcJqrKxnMzSYoc4Z' 'jiMY4H34B6wVd8ip' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'cKDwQeUWtjCC2UH6' --login_with_auth "Bearer foo"
platform-update-item '{"appId": "jzMO3AfmOS5mQNyR", "appType": "GAME", "baseAppId": "ZFPNP56l1AT6OLKm", "boothName": "ZhCZxxPPdPwOtEuW", "categoryPath": "BSO2jJepUnEEgja2", "clazz": "mIE2kLTnJwc5XmkC", "displayOrder": 42, "entitlementType": "CONSUMABLE", "ext": {"L5W4tKt6G3j9LYdG": {}, "7xVPqBqe9RDQMBSY": {}, "AFLqp8PF5hCcoukW": {}}, "features": ["2HEG0qfKegvFTD1s", "pnbz4ys7j6lxuU3u", "PykS8YLmwtYgWGcA"], "flexible": false, "images": [{"as": "SnJIIgsAVmaGYxUX", "caption": "1B9oVuzG2CnYX2YB", "height": 64, "imageUrl": "yK3ggFDh2kaZP7pn", "smallImageUrl": "nVfxPwc259HF9ejH", "width": 2}, {"as": "qh7GAi4FEIu44u83", "caption": "ZLRxYlYqlpq03BGd", "height": 72, "imageUrl": "L0uzElixc023dIvD", "smallImageUrl": "iA0tQWlHwBcTtztx", "width": 42}, {"as": "VAl6tXFbnATCzUOI", "caption": "zVcy9k3ie64Vnwa0", "height": 57, "imageUrl": "a5v5P5Cj8hgFsqHC", "smallImageUrl": "9h5JPiMEtgKuiGTY", "width": 13}], "inventoryConfig": {"customAttributes": {"2CX0rITajpwHITGe": {}, "HTnqRbzBB9ZFgJbQ": {}, "3Fj1umx4ItzkMJ7c": {}}, "serverCustomAttributes": {"udf4r916GPrhn2et": {}, "VIQvRkQJAtDUH9tx": {}, "60AehGz1ermJYXsY": {}}, "slotUsed": 13}, "itemIds": ["C7FKe0fnHUlmU1un", "GKM0tgfeWy47bbwM", "I4gGmvK9gW596FwB"], "itemQty": {"NrFXt3TAuKBwBcD1": 38, "ae6r3hHwya4NpdOz": 14, "KHA9DkaSOWgtg8yw": 95}, "itemType": "CODE", "listable": false, "localizations": {"HEbVDwBAqanOlscR": {"description": "IWw82k5K5VTkdubk", "localExt": {"OFldMCQ98JH4n0Jt": {}, "gqzZv5kVu4S95mj8": {}, "YRvae4f4lhBPbarb": {}}, "longDescription": "WEm8bVtZcfVCPdQh", "title": "im9QKUAFTVYelIlG"}, "Jg9wdc8bihhWjfZp": {"description": "fcFBUsnnDJlmD1iE", "localExt": {"okbUiYzCQh2iNTwt": {}, "nohddMzMTQ9P7sYL": {}, "DWAJOA75K4BYJ2fk": {}}, "longDescription": "qYJoF2FI3vyyqRzc", "title": "20O7FdsJP1G9tyBT"}, "fERXdvgD1Qf7Ot2D": {"description": "kUt3yexZBRvxYnEB", "localExt": {"hXtAVxCd3meTrT7c": {}, "F9oVCh89wNOkKYss": {}, "VejcL3kR3hCGNgaJ": {}}, "longDescription": "muALlMQl9RLrthbf", "title": "p0VgweLlT2sY3SsT"}}, "lootBoxConfig": {"rewardCount": 28, "rewards": [{"lootBoxItems": [{"count": 67, "duration": 59, "endDate": "1972-12-14T00:00:00Z", "itemId": "ToWgFvdRhG9NwV3z", "itemSku": "DuqVlVTypcYPK8Ix", "itemType": "rSZuxWl0Je4fJIyF"}, {"count": 55, "duration": 45, "endDate": "1977-12-23T00:00:00Z", "itemId": "3DQht4JwnPS2urJq", "itemSku": "erobWMZGVL5KLTxa", "itemType": "hWlS6XdBaKSLCgOO"}, {"count": 86, "duration": 70, "endDate": "1991-12-06T00:00:00Z", "itemId": "6XTUh2dJ90yqHDNa", "itemSku": "cl4F9G6Dl5TFwBY6", "itemType": "HKXAblkT8VGgSH8M"}], "name": "GZGwiVj7eDTaka9A", "odds": 0.44994608480260434, "type": "PROBABILITY_GROUP", "weight": 94}, {"lootBoxItems": [{"count": 79, "duration": 40, "endDate": "1988-08-11T00:00:00Z", "itemId": "SAyejnny0Ju13b6o", "itemSku": "5uB2XM6IHy7EEvHy", "itemType": "LmcvrZZOdwe1x8Rj"}, {"count": 95, "duration": 60, "endDate": "1985-11-15T00:00:00Z", "itemId": "i8JXE52sUBBq2Sim", "itemSku": "QQoLbe5YOJvxGRxU", "itemType": "zrTwagH7BMT1IZKT"}, {"count": 7, "duration": 81, "endDate": "1990-09-15T00:00:00Z", "itemId": "EdJFAy2JTllJkRGB", "itemSku": "8jqJEd6eqqsBVyON", "itemType": "V0JRtozI0jpliCFQ"}], "name": "6WgJpGPigdc5VyC4", "odds": 0.25977602401847255, "type": "REWARD", "weight": 82}, {"lootBoxItems": [{"count": 99, "duration": 90, "endDate": "1975-01-07T00:00:00Z", "itemId": "E9yyNb7yaLXzAVYy", "itemSku": "mOuhCkZu4htrsf8e", "itemType": "IFSovTGXaMsq8ePN"}, {"count": 32, "duration": 30, "endDate": "1981-01-22T00:00:00Z", "itemId": "ECGd5cdXC2Sesc6y", "itemSku": "68whNBYl9iCqfW6r", "itemType": "qGOQny4ij4ysYPon"}, {"count": 2, "duration": 69, "endDate": "1973-02-19T00:00:00Z", "itemId": "KDfRcngEpTnRUQr3", "itemSku": "RLOM1vEx4gqDY6jw", "itemType": "yKRxhkLe5zohg9s9"}], "name": "utRQt28b6o3K0COF", "odds": 0.9543678868350761, "type": "REWARD", "weight": 63}], "rollFunction": "DEFAULT"}, "maxCount": 48, "maxCountPerUser": 1, "name": "MBb3ckvoaJYdMqGe", "optionBoxConfig": {"boxItems": [{"count": 12, "duration": 55, "endDate": "1972-02-12T00:00:00Z", "itemId": "g3eRvBZXN3cjIXmF", "itemSku": "WRJnj8xN7HDPTUED", "itemType": "PN1Kb4UTPWDXTSb5"}, {"count": 25, "duration": 14, "endDate": "1982-11-07T00:00:00Z", "itemId": "2FNXypoOLl13j84P", "itemSku": "0KqirJ4PkMFtsnFf", "itemType": "z8Ew0X8fBuBSKLSQ"}, {"count": 92, "duration": 66, "endDate": "1995-06-26T00:00:00Z", "itemId": "PvRLiDi0mNHb6Lx8", "itemSku": "eq8SGNwEQO8dYXvB", "itemType": "SYvJBwb6CjZUMRf2"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 72, "fixedTrialCycles": 39, "graceDays": 94}, "regionData": {"Wsokvx3BHuTEczr9": [{"currencyCode": "KjQ3ttz8MTBt1xk9", "currencyNamespace": "IyssSA8nP5PQjpzk", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1993-01-04T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1975-02-11T00:00:00Z", "expireAt": "1996-10-23T00:00:00Z", "price": 7, "purchaseAt": "1984-04-12T00:00:00Z", "trialPrice": 66}, {"currencyCode": "NZWosrsVBPZ64j0H", "currencyNamespace": "UONscofwYLQcDvka", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1988-10-30T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1985-12-06T00:00:00Z", "expireAt": "1985-04-27T00:00:00Z", "price": 73, "purchaseAt": "1976-10-24T00:00:00Z", "trialPrice": 47}, {"currencyCode": "zEGXmVBZLyrH9J7B", "currencyNamespace": "oysmaORLkP5hc2Fh", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1979-08-30T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1994-12-05T00:00:00Z", "expireAt": "1983-08-28T00:00:00Z", "price": 28, "purchaseAt": "1995-08-17T00:00:00Z", "trialPrice": 90}], "ewqJligLlRxOelKy": [{"currencyCode": "kICRxF6HtlER2txs", "currencyNamespace": "4qrNARATn6KXOutl", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1971-01-10T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1993-02-23T00:00:00Z", "expireAt": "1987-11-05T00:00:00Z", "price": 62, "purchaseAt": "1993-10-23T00:00:00Z", "trialPrice": 79}, {"currencyCode": "Xx25FZfQIodVBqQs", "currencyNamespace": "BpCJBIXLGYcwWVRK", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1998-10-21T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1976-05-19T00:00:00Z", "expireAt": "1978-08-01T00:00:00Z", "price": 4, "purchaseAt": "1980-09-04T00:00:00Z", "trialPrice": 53}, {"currencyCode": "O5pmPnbiPJ9j4vxm", "currencyNamespace": "bH3rVaauufxkPHEl", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1974-02-02T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1994-02-02T00:00:00Z", "expireAt": "1974-02-15T00:00:00Z", "price": 1, "purchaseAt": "1991-08-06T00:00:00Z", "trialPrice": 41}], "ylsmLYe2phYOgT5k": [{"currencyCode": "DTyPl3dKF7NXEjrJ", "currencyNamespace": "Mki8jvc3P8Gwjg3I", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1975-12-28T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1974-08-31T00:00:00Z", "expireAt": "1995-09-26T00:00:00Z", "price": 12, "purchaseAt": "1999-08-24T00:00:00Z", "trialPrice": 75}, {"currencyCode": "eoODXMzLSrzoiBnY", "currencyNamespace": "i5UWs3tYlYeMoCim", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1972-05-03T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1982-12-27T00:00:00Z", "expireAt": "1973-06-27T00:00:00Z", "price": 73, "purchaseAt": "1994-06-10T00:00:00Z", "trialPrice": 99}, {"currencyCode": "je5cPnmGjTvYa5Pq", "currencyNamespace": "x1K7qcAoijBPAp6E", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1975-11-26T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1990-11-22T00:00:00Z", "expireAt": "1992-07-25T00:00:00Z", "price": 40, "purchaseAt": "1983-11-18T00:00:00Z", "trialPrice": 35}]}, "saleConfig": {"currencyCode": "Qts2yxf6MLZJ2jZf", "price": 61}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "TJezzriCDWXT59SR", "stackable": true, "status": "INACTIVE", "tags": ["ScdbKBsAyJMz4ILN", "0YqUxKDc84OMIzvT", "DvhB4Eoes9a6XaJe"], "targetCurrencyCode": "RbzTPwD3jxF7vxRU", "targetNamespace": "Y0ilrNoFT98SgtJd", "thumbnailUrl": "4Z5f8nfaKqdZFLbZ", "useCount": 63}' 'IOFjeXbsSgR43kID' 'zxBwqRJTzrHNZWUs' --login_with_auth "Bearer foo"
platform-delete-item 'q5lQo2jy29EJigqY' --login_with_auth "Bearer foo"
platform-acquire-item '{"count": 15, "orderNo": "Wxw8OQ13t3uTw6zQ"}' 'uoZcXQpoTOxe8y1j' --login_with_auth "Bearer foo"
platform-get-app 'orNsg9ZKYCKoISyX' --login_with_auth "Bearer foo"
platform-update-app '{"carousel": [{"alt": "tHzoWGdYohxMp3uO", "previewUrl": "QIybqWfG9BJ6FVKl", "thumbnailUrl": "bYHtbPtaxvagSlpG", "type": "image", "url": "a6wUQvehKqwCh86X", "videoSource": "generic"}, {"alt": "FfXEOEAEtbag82Kg", "previewUrl": "BgyCd5vjkfz3eR4D", "thumbnailUrl": "tNp129hzBw3xLUcC", "type": "video", "url": "Axo57nKAbZpsbJ4I", "videoSource": "vimeo"}, {"alt": "76BNsi4giR9434Wp", "previewUrl": "KKdzxoufCNlFoOcW", "thumbnailUrl": "QQy4bjmQeEweoBHT", "type": "image", "url": "GkInFGpuUsdtq4dO", "videoSource": "vimeo"}], "developer": "tAr5kKKAo9MM2Cqm", "forumUrl": "84jVi9kIpqgrzpUk", "genres": ["Strategy", "Adventure", "Strategy"], "localizations": {"DEdCnnL6Kt1Bjj3b": {"announcement": "8QM8Rr45ULqXQgvw", "slogan": "D3PsKDJiWxQBwaS7"}, "rDBf2S54phbdyGDt": {"announcement": "47f9GWRlE9hqz6rj", "slogan": "DNo4rhjxUdMM83We"}, "kqfWv04vvn9bk5qr": {"announcement": "8qs2mqtnGAqXUjNy", "slogan": "pF6MMqWpdEJsPoaI"}}, "platformRequirements": {"bYz8cK5jlpJdre5u": [{"additionals": "r6yvWJDdvM7T7PX2", "directXVersion": "vamIRZHzsIYOCUoi", "diskSpace": "CXNjrdQL2jdx1eIb", "graphics": "a1sB0HsJ06DzfbzR", "label": "Yt4OVUyumBeIqdQG", "osVersion": "ZC5kM03HHijsQRj7", "processor": "N8IAjmsonjj0ZR50", "ram": "BQ1U6aFD3O2kXQSc", "soundCard": "58zgZVl4gIF7v3qb"}, {"additionals": "Zu9M3OxqVAT4H1lR", "directXVersion": "Z9Z1JBrHRzEOtIxz", "diskSpace": "Pqb6n73m0jiaDH86", "graphics": "d9rsKgzCsMulpB8H", "label": "ZUtVVaJCiLgKOwrS", "osVersion": "fWhT5B4WedopzwSl", "processor": "uBtRFPKThyGnbjmP", "ram": "DKFS6u9FHuv1M3qf", "soundCard": "ch4SqIV6LQPHlaeY"}, {"additionals": "l4csFq65cU66yJaj", "directXVersion": "4ovoKWE4EW0sw8v5", "diskSpace": "peiuxoBJATauyD3X", "graphics": "CXVMiyEvMf9yilUE", "label": "ujk6oqYo1HQYTFzw", "osVersion": "dOMdupwD4O3uNbcI", "processor": "DcIyvZbOy1T4hfwk", "ram": "uVykH4RpfmjIXFGZ", "soundCard": "5PKdbabJIkNnt9P1"}], "Tkm08luh4dpPRMDb": [{"additionals": "UXBWTbpAogG2wlZk", "directXVersion": "LhuU5FI8NijFI0GK", "diskSpace": "wJ3vfXlsAMy2Zp2U", "graphics": "AGxHnmSxvkG9UR5q", "label": "9neoW6JBcGp9Rx2R", "osVersion": "fcRhXpmeeHdvphas", "processor": "9S7ivHEoLbUMM47f", "ram": "1UreUpxEkXIbE1ET", "soundCard": "zRJZKMavu4Ul2Iai"}, {"additionals": "eEbPSE7TGkeHsYsW", "directXVersion": "9oGBN1pYMBwbPZTl", "diskSpace": "MlUvFEiGprcNSQ9k", "graphics": "EeXBZ6FVrBzyhyho", "label": "S6a9oe0JaXFpff28", "osVersion": "uYbe4Cf2HEHvVevh", "processor": "ISjbtBJUK5fE3Ouf", "ram": "PSX3PdOU2V9yw94o", "soundCard": "a8UJ34TIedV3HyoX"}, {"additionals": "4VnO2LpBU08wfnlH", "directXVersion": "BXFIqFUmgUSMM5au", "diskSpace": "8GJT0mkVPI6zUtf3", "graphics": "QaJPGrTNcXXTUIgg", "label": "oH89QNmI17UDb19R", "osVersion": "6H7r1ta3m7jK5pxe", "processor": "82pgFiAS6piIzmc8", "ram": "rKrKEPGSAcong6eN", "soundCard": "ERUf8kjci1Ctccv9"}], "Gv4tOcbnuCqf0lm6": [{"additionals": "WBkIzjoSV31tvmMB", "directXVersion": "6jzrpRGESmooHiCV", "diskSpace": "4GUOnXpapXQGRakU", "graphics": "bcG7PcR4eiU3Idi5", "label": "5jNrGNT2VHTKuIT5", "osVersion": "FwwHj0Ur5F2PWGTT", "processor": "D81xhNP4t6kYBUjy", "ram": "XAn3bWQF6QcAiJpX", "soundCard": "IrgroixptZhckUTG"}, {"additionals": "kcBOE4qMcH1Kyi8Z", "directXVersion": "FvGcV8DY0XOkDstx", "diskSpace": "ZcY1HgAnZV4IOglV", "graphics": "Lqb9lGAJUg21Lt7J", "label": "wgwMUSuC3Bajy3Bc", "osVersion": "EMCtQs2FcEcvVAyI", "processor": "d6Cp85HVDsZBQgOn", "ram": "XuXsGThYZrmm0wrF", "soundCard": "MnPpWgrQD4hEk0OL"}, {"additionals": "jYsnignE7KcMF7fu", "directXVersion": "DbzRRYMNXWUsp1tO", "diskSpace": "ibJY9aL9ie6vvMbi", "graphics": "NURrlm88QlKyuoya", "label": "4JgakZyUV7t73VnS", "osVersion": "Fbuxd4KYZ0jk0UZd", "processor": "htnKu9oTc8pVkiyG", "ram": "sj5JdXzRxfNEjUMT", "soundCard": "s8WIObJBTsvsw76u"}]}, "platforms": ["Windows", "Windows", "MacOS"], "players": ["Coop", "Multi", "CrossPlatformMulti"], "primaryGenre": "MassivelyMultiplayer", "publisher": "mWP0HzSdiylLhVYs", "releaseDate": "1984-04-10T00:00:00Z", "websiteUrl": "7Haa6unq1yQOSRvy"}' 'iLBRVtIDi2piIQFV' 'mzMidw70KSahpYZd' --login_with_auth "Bearer foo"
platform-disable-item 'KZRyR9AX7JjxvNZh' 'M84DiZk6ySrB9SVF' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'ctW7YS0OkL78XeEA' --login_with_auth "Bearer foo"
platform-enable-item 'tALFI3v8yha4pd5A' '7MYcpBD6lKNb8Rxv' --login_with_auth "Bearer foo"
platform-feature-item 'N2u5J7baOeLH19fq' 'BwNbNe1ffYRtIvQa' 'KyevWYtZjK6J29v8' --login_with_auth "Bearer foo"
platform-defeature-item 'MpBSpo3AKRmnJkzJ' 'HAckUyBksYQfDm0R' 'NFwiz70tRVLMlHi8' --login_with_auth "Bearer foo"
platform-get-locale-item 'i9gOVqajUWrgEsWD' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 0, "code": "kil67kRngoUa83EC", "comparison": "is", "name": "bPzPFbrOMZMgWkFN", "predicateType": "SeasonTierPredicate", "value": "Tpkx6GcfyOg6ZUrr", "values": ["p9ubg9mndW2JKmQa", "f1ZbzgUwd8DHoCQy", "fUs2bxYztOEyVbKI"]}, {"anyOf": 21, "code": "zIhpgOoIOD74V21H", "comparison": "isNot", "name": "YQ9jNQN1di1ldhOh", "predicateType": "EntitlementPredicate", "value": "HvjnYuV7NfC4A2OD", "values": ["CWaP8huTmnq3FGQn", "D6vl5eFdFfgK46Gj", "iZhbfb8QqCyK1XH9"]}, {"anyOf": 53, "code": "LrqbiKudv9z75Szo", "comparison": "isNot", "name": "HQhO9IKBXDFQfXFD", "predicateType": "StatisticCodePredicate", "value": "sG6uDhFYlrzJBYSe", "values": ["MuJfQecutjS029Bi", "NTVItrH2X78hxJga", "JWOG1m7MKclr5igj"]}]}, {"operator": "and", "predicates": [{"anyOf": 10, "code": "07N17fkxZSc6VbE0", "comparison": "isLessThanOrEqual", "name": "oMcOmbfJrCJQIj1h", "predicateType": "EntitlementPredicate", "value": "xrmzafMUguyDoN91", "values": ["uc28HoSpGt1g0GGb", "T4Hf2PPKOldkbgX9", "CWJKwXXSbv5eg9q8"]}, {"anyOf": 46, "code": "IaDFjjx6uZerWbtw", "comparison": "includes", "name": "9gNRByjbE8lOLAfT", "predicateType": "StatisticCodePredicate", "value": "KLzbrddqcKLa7Lev", "values": ["xNHOSEhQRZIp693l", "Rwtc43atCuCFxbfb", "z4aQERziPL4dHhOq"]}, {"anyOf": 67, "code": "xO6qdFpc71sSck3g", "comparison": "includes", "name": "mjRxNmvvNtjJNQep", "predicateType": "EntitlementPredicate", "value": "TGhwlY4lPzlsCR5r", "values": ["b5WAEvdRF9bqMj4r", "o5B19VE838c7OydV", "VsyfcH7WjP7HuGz3"]}]}, {"operator": "or", "predicates": [{"anyOf": 54, "code": "0zCqoMZvpIOO97Dm", "comparison": "excludes", "name": "5ZOzx6iCJTu60Iif", "predicateType": "StatisticCodePredicate", "value": "uoXNSoVEBG7VbBPU", "values": ["A3KMxBlrRytER1qd", "Wipz9C05YabFX4FC", "K5ucTFsAFzaO3yJp"]}, {"anyOf": 94, "code": "dLucrtO2gCQD057D", "comparison": "isGreaterThanOrEqual", "name": "SGGt3MiBKohow3kK", "predicateType": "SeasonPassPredicate", "value": "w4v3q6JRHcn7KaoC", "values": ["qWsGA76yxi0QzZWf", "EkRdo6qHYIZWnXqQ", "1oHFJ9Q0vqsL9Som"]}, {"anyOf": 25, "code": "A9VOA8H9VeHv0L2A", "comparison": "excludes", "name": "jsodyJQVVBrShGbI", "predicateType": "SeasonTierPredicate", "value": "WId9WlalqshF9Rh2", "values": ["3MgzReRq0112ISAr", "o7GCQGPCxwEdkyuT", "ROIodcmM6v2AEozW"]}]}]}}' 'WaYvBLE46bpuJip8' 'JyxJ39vrtuWWrqTZ' --login_with_auth "Bearer foo"
platform-return-item '{"orderNo": "bSqBSKp8AmgwhYzk"}' '33J34fiTxK63OHpn' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group '{"description": "UCGBVfpctNFUsUQ6", "name": "ZXQcb2o1J5euLAbB", "status": "ACTIVE", "tags": ["ZV3ig8Jg5VByeI3y", "cMcYYBixKJXCISQd", "wec1m8BusV9tUh74"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'KVo6Xqjz2xUKLNWS' --login_with_auth "Bearer foo"
platform-update-key-group '{"description": "mYyVvyelIJ8QgaLM", "name": "qi836ULa7cfZl4Vu", "status": "INACTIVE", "tags": ["6rsZyo6CBRRnoOik", "IxXKKIR6kPmswm5T", "CAU1cKApdJDnE73G"]}' 'LmSZns5owBhoUg4L' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'sGP6KLPXkvUv2XiX' --login_with_auth "Bearer foo"
platform-list-keys 'aBzsmaxjTZPlLity' --login_with_auth "Bearer foo"
platform-upload-keys 'tGka7Kv5TacQKF4O' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'lRGdmXxETLEQrr3K' --login_with_auth "Bearer foo"
platform-refund-order '{"description": "CAV9alq3hK1G4kKo"}' 'oSNNUZuiynZ64Iwn' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config '{"dryRun": false, "notifyUrl": "TTLS2FgarY903ING", "privateKey": "IyEfRBEj7qms9AGQ"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config --login_with_auth "Bearer foo"
platform-update-payment-domain-whitelist-config '{"domains": ["ExPhgr9gGfC0Gjvp", "gJfuBs1Vpqn47GVg", "hTH2wToOnq9U5lyW"]}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated '{"currencyCode": "89Xwt3wmRTrDCjhn", "currencyNamespace": "KvsHezWTqgYPixtH", "customParameters": {"k6lWq6tEeUmU96FL": {}, "Eak0mJqjRYldcTpd": {}, "eCD9XPRi4bAQL7VE": {}}, "description": "2wL8Y4JFVUdzA8bv", "extOrderNo": "XlDhG7BrorbKIKuO", "extUserId": "XJPm5ztrr09CDA8I", "itemType": "CODE", "language": "Bz-wy", "metadata": {"SO0js0hG9xmSnzd7": "zgUxAogcnGkXk17Q", "PkJHRhmLKQuQVFSK": "iXl8G2uf6E8EajXL", "SAS8MKMaxQ1QyJCp": "KedhuzI7G9NCKKXu"}, "notifyUrl": "1bqI2M5PmXfKnQ7B", "omitNotification": false, "platform": "GjCUDMOrbmoRvWnf", "price": 25, "recurringPaymentOrderNo": "m5ge659UDEOF6gp5", "region": "UfmjtiVbqJnZcrqr", "returnUrl": "Pye7fCwi7Il2wIFl", "sandbox": false, "sku": "RpMwhWPtndriXU9l", "subscriptionId": "oOxpmEuwDVc12r0D", "targetNamespace": "VUGgGHkapTCafFMd", "targetUserId": "vYiCBuzUUwyI6Vtd", "title": "4v9k4fv3kMiuQ3Dh"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'sKLxjt5srPFxBgpF' --login_with_auth "Bearer foo"
platform-get-payment-order 'tDBmTLH9kP9U53z6' --login_with_auth "Bearer foo"
platform-charge-payment-order '{"extTxId": "joBAhAlJGI2YYb6a", "paymentMethod": "jBjgq6eY4PBNHKPx", "paymentProvider": "WALLET"}' '2tHxDb06ZFy3uglS' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated '{"description": "p2UxvF2uLXWilRD7"}' 'HD6LCgdFxRGj00RT' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification '{"amount": 58, "currencyCode": "LvcnGMJbJIYLssMv", "notifyType": "REFUND", "paymentProvider": "ALIPAY", "salesTax": 22, "vat": 67}' 'fTMRrXVRcAVRDX6g' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'mDfNfPGYYSTunMgt' --login_with_auth "Bearer foo"
platform-get-psn-entitlement-ownership '{"accessToken": "3C8hEguCqlMHiQN3", "serviceLabel": 68}' 'nGRufOUGfMjTU226' --login_with_auth "Bearer foo"
platform-get-xbox-entitlement-ownership '{"delegationToken": "l07jPlcYaqYM7YfB", "sandboxId": "mhjI9Y28qVceS9UX"}' '48dKPCFUIeyYEymN' --login_with_auth "Bearer foo"
platform-get-platform-entitlement-config 'Playstation' --login_with_auth "Bearer foo"
platform-update-platform-entitlement-config '{"allowedPlatformOrigins": ["Xbox", "Playstation", "Oculus"]}' 'Epic' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Xbox' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config '{"allowedBalanceOrigins": ["Epic", "IOS", "Oculus"]}' 'Epic' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Steam' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config '{"appConfig": {"appName": "962e6gtn5pUARJM1"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "QwMNOAzXmyHEV4g9"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward '{"description": "6a280S5RNB5dVCsB", "eventTopic": "7xL4axSPgPCiwLxC", "maxAwarded": 65, "maxAwardedPerUser": 84, "namespaceExpression": "LDixZwVtt3RVTl0t", "rewardCode": "R00oQgcHdGGK3x76", "rewardConditions": [{"condition": "U1EIcklttmrpgF5s", "conditionName": "zl0sMY8es36r1FgR", "eventName": "70eNLHkVrEFd8xAr", "rewardItems": [{"duration": 100, "endDate": "1983-10-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "uCAIfNBSHgpFNw9K", "quantity": 68, "sku": "pmAIc6VSfE9nbE2P"}, {"duration": 79, "endDate": "1974-06-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "2ZSRJkujxbCu1HFa", "quantity": 20, "sku": "UTmvsEzLPnnGsnfm"}, {"duration": 55, "endDate": "1983-02-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "S7b5TSDRIoMg7Dc5", "quantity": 55, "sku": "jsEzwtLPxK1os4qR"}]}, {"condition": "8LaQzEb39sZTdFfC", "conditionName": "8x5aHLsXHlm1RJTT", "eventName": "y9JrNz1K5M1qgFdd", "rewardItems": [{"duration": 71, "endDate": "1982-03-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "fGHawNx6yhniEHLb", "quantity": 62, "sku": "kLwioRaKnWhlh80B"}, {"duration": 15, "endDate": "1972-02-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "9qswSlpCI8DhjlxU", "quantity": 50, "sku": "FjmYqE1wJhfogWg2"}, {"duration": 55, "endDate": "1988-05-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "UvPYUcQBxMSdOOsn", "quantity": 59, "sku": "Nd8Jpa19GJDK46Ee"}]}, {"condition": "hx7xasqMY9aulsL6", "conditionName": "NOV5agpS6A5mkufB", "eventName": "pWVxIK9D2bTcgaKo", "rewardItems": [{"duration": 5, "endDate": "1981-01-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "aSwWcZmzCWGI1cIQ", "quantity": 4, "sku": "rg8tLAJWpcyNkUvq"}, {"duration": 27, "endDate": "1971-07-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Qk2vQTYX1xsth28N", "quantity": 91, "sku": "ZgsXycuQNGIDeHlf"}, {"duration": 55, "endDate": "1988-01-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "X1K9JrK6Or2xx7rL", "quantity": 47, "sku": "sXvpOjrpRo4mYrCe"}]}], "userIdExpression": "QUnYoID2UqO0iAXA"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'false' --login_with_auth "Bearer foo"
platform-get-reward 'dB4ib8HDOJ8TNiP8' --login_with_auth "Bearer foo"
platform-update-reward '{"description": "KgEAj3dbRTI0i6dO", "eventTopic": "3zkbDseh4tJdoGcw", "maxAwarded": 79, "maxAwardedPerUser": 57, "namespaceExpression": "rhZCAlDlVKBsLZiB", "rewardCode": "RXszE7CL1cQCSoqH", "rewardConditions": [{"condition": "vH7g63cOx6yrIw37", "conditionName": "pKOLrF5i3gr3Cc4M", "eventName": "2O7NrTQO7KLdZDGw", "rewardItems": [{"duration": 33, "endDate": "1986-07-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "T3l1ut2oyolliYsT", "quantity": 73, "sku": "6TKwdRMraDLrwh3d"}, {"duration": 75, "endDate": "1983-03-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "7tprnacA34xmIOjF", "quantity": 77, "sku": "KVWO2YEDiqkwKbpd"}, {"duration": 21, "endDate": "1999-03-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "D02YMvEUNfoL7JCc", "quantity": 78, "sku": "Gpea5ObBB49Km4Cl"}]}, {"condition": "IQmkIdLCvNhZ6P8a", "conditionName": "qZ2yfrC1V7ZpJZPH", "eventName": "CMqvcYmeDLYEzs2S", "rewardItems": [{"duration": 87, "endDate": "1993-05-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "XUS6jYI9lsQFD43D", "quantity": 11, "sku": "ORlC8ZkjsxYtgxpl"}, {"duration": 69, "endDate": "1994-09-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "cup8GG0VCMTFJ6sv", "quantity": 93, "sku": "q4bBb0n1JhPUS8BR"}, {"duration": 84, "endDate": "1987-09-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "V9n769zLJdKMexeJ", "quantity": 5, "sku": "AtqE3kuybwTQFYEJ"}]}, {"condition": "jIYwqfSRy8GgVk77", "conditionName": "fd1GS5YkyhAiAItn", "eventName": "WUmD225fp1egsx3E", "rewardItems": [{"duration": 36, "endDate": "1992-02-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "JyX4IE1z3rDwZ1HK", "quantity": 37, "sku": "lzrJ4QHbfnAdtkuj"}, {"duration": 47, "endDate": "1990-09-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "9DIW2ncJJKpqmgvU", "quantity": 93, "sku": "RBhl0L5FCbOn46W2"}, {"duration": 57, "endDate": "1996-03-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "3KQffT5Tn61A1xW6", "quantity": 29, "sku": "XSDufmKh783cV54J"}]}], "userIdExpression": "sVBRB0rY0xfWddAC"}' 'yHSmo4KX9TPO3K1k' --login_with_auth "Bearer foo"
platform-delete-reward '5ZM8btmGsgXNXbpq' --login_with_auth "Bearer foo"
platform-check-event-condition 'xh76Af5JSwjw2fE2' --body '{"payload": {"g6jXV7oai2oDm9Fa": {}, "P0HJ98tE4UyoQg0b": {}, "0sGOkzxVt15LKmkQ": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record '{"conditionName": "7YBhsOuJ0ypkkt2G", "userId": "4eFh2YNsdoxpLTBM"}' '9Q8t829Ido1JyveS' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section '{"active": false, "displayOrder": 26, "endDate": "1985-05-16T00:00:00Z", "ext": {"eIdhIBvTTupABJ4R": {}, "wH3EdKmYtbqQHNfI": {}, "ZwrMxf3EnzZVnkLT": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 76, "itemCount": 84, "rule": "SEQUENCE"}, "items": [{"id": "l3Z2zSBbs4PAV72u", "sku": "8AxE2IQeoxYV4UcY"}, {"id": "zswAGpXqQxctuVaq", "sku": "PJGAHEZmuQrZ8GaQ"}, {"id": "4OZ2nDodm4TNs8mA", "sku": "j6IKSYFdJwgZsRPO"}], "localizations": {"zwuDSdGl1A2vaNeD": {"description": "iSqTfmAVg50kOdJa", "localExt": {"gEmTuaxlxgywkbdO": {}, "syxX1tfW488oYUT4": {}, "jyCVJ0V8obTlGVTh": {}}, "longDescription": "z4bm41oIcV33yjPx", "title": "ibDjfF7JkjCVpZKM"}, "xkFkBtXMU6KRIm5x": {"description": "BoIi99ctgFXasxp5", "localExt": {"h780ktjQw2yXzaQW": {}, "aF2PqUfbpMpRl6xR": {}, "yV19cborUHeCpqnZ": {}}, "longDescription": "5NW623WWn2ZJY3Qv", "title": "Ra7CDRTcsAHzD3dZ"}, "yyWbUQpbcv3IwmL7": {"description": "a1K3zIUYJmdF1YtW", "localExt": {"NSQlcMzxfppNCrsc": {}, "DPbklTHcmgXsrVj3": {}, "Mjml6BpCODWGOLMm": {}}, "longDescription": "CZUeelXYyNrXweiC", "title": "nDldRPRfd6mLZ0GT"}}, "name": "JwEjoZrRtaeWKMC8", "rotationType": "FIXED_PERIOD", "startDate": "1997-05-24T00:00:00Z", "viewId": "Vdw5UMa8ymxtEFLw"}' 'ELCY2vIddlxnA1Vy' --login_with_auth "Bearer foo"
platform-purge-expired-section 'nioJcAPwVHUGcs1A' --login_with_auth "Bearer foo"
platform-get-section 'CMvoY4jWH9dFmOHW' --login_with_auth "Bearer foo"
platform-update-section '{"active": false, "displayOrder": 4, "endDate": "1998-05-24T00:00:00Z", "ext": {"cM7ixq8Tjnxp5Cl8": {}, "ggaEmCcuK2hHviBE": {}, "WpbusO6EyVqstpgZ": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 3, "itemCount": 90, "rule": "SEQUENCE"}, "items": [{"id": "iZlOpIQ8GL7jBF1R", "sku": "5OexAPzCG6ZKQClG"}, {"id": "c1636nbfM3J9G40Y", "sku": "62bCo941ALznQuHV"}, {"id": "skfCjUK8GeX4Q0B2", "sku": "Cj0oOmBmXu1KiTTi"}], "localizations": {"z7yrIvQj2isN7bRw": {"description": "cr16lW5YwgZpjlMM", "localExt": {"tPWg8217m7qNkQiK": {}, "p2oac8QTNEuBbeuQ": {}, "qm9wM7mgTtUdPVcQ": {}}, "longDescription": "ijMBhs0kDP6d3nuU", "title": "Z41mSeS9SnGqhJOv"}, "ykBcDpzD9zh6dtPK": {"description": "4fVHLMvrCsH3RYxH", "localExt": {"2Up9VthPjFrK7Hip": {}, "0eONFDgUPShG8wwF": {}, "KY9AMpcwJd4SrigI": {}}, "longDescription": "xAhbFMZfxaznlDQb", "title": "zTiFrQB1yUonirH4"}, "URx3NkKQBYrlUaMi": {"description": "FEWUT8cAFO5zEw8G", "localExt": {"ENEJYPKxxOw7xNQ9": {}, "8IEbc9YITN98j4P2": {}, "AGeidXRRnIAJfKVj": {}}, "longDescription": "On6rtILNJVv2DLLU", "title": "yBt5hDs45siG30Lv"}}, "name": "9iGa5mkZjnRXVcg6", "rotationType": "FIXED_PERIOD", "startDate": "1997-08-09T00:00:00Z", "viewId": "jFegVnZOn0tk4IAT"}' 'SIefcqNEn4IZ0Dv6' 'b8WtaMVvLbG04KKn' --login_with_auth "Bearer foo"
platform-delete-section 'h3jvW0Qp3kTyL4Cs' 'LwiWUMcpxn4B6XoT' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store '{"defaultLanguage": "NMuqZTHwo1IAJQpb", "defaultRegion": "6r8ZeaSHwQuiH3Oz", "description": "u4G6bXxp0gYZyF9f", "supportedLanguages": ["JBJkSOrF9Dg4FcDw", "BGyBiHewZkwEeuzB", "BRSknxyWkZObuvig"], "supportedRegions": ["8sMuss76ezTrsDZN", "YUV48Oh6I45X7HvU", "tPYONZdFk75lkjQN"], "title": "HrjaboGomguUqeuZ"}' --login_with_auth "Bearer foo"
platform-get-catalog-definition 'APP' --login_with_auth "Bearer foo"
platform-download-csv-templates --login_with_auth "Bearer foo"
platform-export-store-by-csv '{"catalogType": "APP", "fieldsToBeIncluded": ["5qtrRbNnGejdTGvZ", "gN5hshSe5YmZXKEQ", "LkM6o3eGSP4Htmr9"], "idsToBeExported": ["0TqGf0OyqJ9ibJMm", "RgoxNwp1lGkYoq8H", "P1TM0tefVQPWX1NP"], "storeId": "O5Wn7rNG8rGp7Fad"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'vo5EzpX0IttsRezy' --login_with_auth "Bearer foo"
platform-update-store '{"defaultLanguage": "Y9GB5sf94ALBmvdn", "defaultRegion": "cQkcZb8cWdVH9bww", "description": "15zZsaYrJAe5Kd5Q", "supportedLanguages": ["B96ndlO6iPGC9Rhz", "MC7V8BEphnRXnSpC", "zyb8FkoxQbrPngi8"], "supportedRegions": ["7K58pQswqKLutINu", "sOsa92F6iwkJIYOL", "armpWyvib9CDW21A"], "title": "NrlpuXD9H1u1CvzW"}' 'PcZwkj1l6bf2F9EX' --login_with_auth "Bearer foo"
platform-delete-store 'OBj7v8LHYivmD0ek' --login_with_auth "Bearer foo"
platform-query-changes 'ycMKlwJTNL2UCWUt' --login_with_auth "Bearer foo"
platform-publish-all 'aAD7ZZx1iefATWcD' --login_with_auth "Bearer foo"
platform-publish-selected 'SqGYRMdz07xEJ40e' --login_with_auth "Bearer foo"
platform-select-all-records 'pssgJJC3CX0hpB1Z' --login_with_auth "Bearer foo"
platform-select-all-records-by-criteria 'GMMo5DSozCuFsrBM' --login_with_auth "Bearer foo"
platform-get-statistic 'toOeLfMCYxSeeJOl' --login_with_auth "Bearer foo"
platform-unselect-all-records 'xa395rghZwGhdZJk' --login_with_auth "Bearer foo"
platform-select-record 'kGhYvXYMIyaEMEqO' 'pwetb82b96rsH73h' --login_with_auth "Bearer foo"
platform-unselect-record 'RfDgl29GWKpItMt4' 'GszRufkDFLYyNBPl' --login_with_auth "Bearer foo"
platform-clone-store 'Mrkse9SGcMuV5phh' --login_with_auth "Bearer foo"
platform-query-import-history 'U315LUC6HSMQ32Uz' --login_with_auth "Bearer foo"
platform-import-store-by-csv 'tmp.dat' 'tmp.dat' 'tmp.dat' 'nXNd6ve29lqqtcLJ' 'tmp.dat' 'W9eTJvKNDFrx6Lab' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'yDnqXjXKPIcxh0x7' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'T6RQGnnW4ugGX6mK' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale '{"orderNo": "BbgTD9xL07ZzzIs3"}' 'Jke34ZAUuLP897oo' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'MLnemwKAvgDXNrFE' --login_with_auth "Bearer foo"
platform-increase-ticket-sale '{"count": 63, "orderNo": "H5Tu1ky1ZYvyeHmf"}' 'oFkUDP864shbnQ3b' --login_with_auth "Bearer foo"
platform-commit '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 44, "currencyCode": "CxQMit8555Niy4NN", "expireAt": "1987-05-02T00:00:00Z"}, "debitPayload": {"count": 58, "currencyCode": "RE5pS85yTIRWvLRy", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 74, "entitlementCollectionId": "biRq5Juikmpat75r", "entitlementOrigin": "Epic", "itemIdentity": "bN9ZBtzJ33tCwv8H", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 10, "entitlementId": "EXLXZWXvqNCHvNpe"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 79, "currencyCode": "pMjESLLMPKDXLki6", "expireAt": "1992-10-12T00:00:00Z"}, "debitPayload": {"count": 52, "currencyCode": "Lb5f3SBMyJUdwEBR", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 68, "entitlementCollectionId": "hGwGbUmQmJHNffZE", "entitlementOrigin": "Xbox", "itemIdentity": "t7QQWl42byOwXgKy", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 15, "entitlementId": "HmmulSBIElc2CdRv"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 11, "currencyCode": "0aGnMt625bWHb5sb", "expireAt": "1996-06-01T00:00:00Z"}, "debitPayload": {"count": 4, "currencyCode": "asrjV7XJUOtHlzXN", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 53, "entitlementCollectionId": "EPpzlMlx7b2H2THL", "entitlementOrigin": "Other", "itemIdentity": "uMRtQOILcaDqUITB", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 90, "entitlementId": "6lcVOhPJIcEHbiKH"}, "type": "CREDIT_WALLET"}], "userId": "UBfwzaaeP3Wd0Wrb"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 37, "currencyCode": "lvwnnCA5tfK5usha", "expireAt": "1989-06-11T00:00:00Z"}, "debitPayload": {"count": 94, "currencyCode": "rq4lpHXrbVBh60NU", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 96, "entitlementCollectionId": "2aKQwnXrmi6ya8u4", "entitlementOrigin": "Oculus", "itemIdentity": "zhJwNX4bhqCjlwrm", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 79, "entitlementId": "SRV86iic1FIMyF7C"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 81, "currencyCode": "1kGFN0NUNGKxdlAU", "expireAt": "1986-09-18T00:00:00Z"}, "debitPayload": {"count": 23, "currencyCode": "QuGPzAuT7M6OBrNw", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 30, "entitlementCollectionId": "djSb4Vt2vKQ5vlCd", "entitlementOrigin": "System", "itemIdentity": "ZioDiBgprzahPB0F", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 1, "entitlementId": "gozmco41750xdYQg"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 96, "currencyCode": "g6Zt1Lr5BlO8K6LH", "expireAt": "1999-01-22T00:00:00Z"}, "debitPayload": {"count": 75, "currencyCode": "Saa8XYHug51ZTogG", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 69, "entitlementCollectionId": "vXYBar5RMmmGdWl0", "entitlementOrigin": "Other", "itemIdentity": "c9z70LFQMI0oZuEj", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 81, "entitlementId": "iGE2cyzTMBY7Xd0O"}, "type": "DEBIT_WALLET"}], "userId": "cXR2Rf4noXDFaEUk"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 97, "currencyCode": "UBnB0ZEJH3ebM71T", "expireAt": "1974-09-24T00:00:00Z"}, "debitPayload": {"count": 90, "currencyCode": "xiBgHSka0Pz7I1Wk", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 42, "entitlementCollectionId": "a0oZ1nXpW1l70pcZ", "entitlementOrigin": "GooglePlay", "itemIdentity": "sQ0Gax0iX05IT9Ag", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 4, "entitlementId": "jl5NmnSHhxNmCe4t"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 79, "currencyCode": "HYVEiaereFCPJU2w", "expireAt": "1986-11-07T00:00:00Z"}, "debitPayload": {"count": 52, "currencyCode": "8ZfwCVJW9yspUOyH", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 31, "entitlementCollectionId": "9eKeXzrvzBllwzyC", "entitlementOrigin": "Epic", "itemIdentity": "BTCZs97TJI8GPrM2", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 64, "entitlementId": "id4mRoFNxv10ckMQ"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 27, "currencyCode": "k3bWJ0ZuYSe3sI0x", "expireAt": "1999-11-07T00:00:00Z"}, "debitPayload": {"count": 14, "currencyCode": "YGLt1AjKhh3JMX7x", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 14, "entitlementCollectionId": "z1EH6X2SM3xzsNrJ", "entitlementOrigin": "Playstation", "itemIdentity": "KNh6GTzKjsCqxx24", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 4, "entitlementId": "SkFrvGciNHb7OY5Y"}, "type": "FULFILL_ITEM"}], "userId": "33aKkPuWD59MgTy1"}], "metadata": {"HA58Jt5NaROjSKFE": {}, "uZo2ElXYSS4ezBRS": {}, "iOyReviDaxlPdhwm": {}}, "needPreCheck": false, "transactionId": "h8BKcLqtRZ93LuR8", "type": "OEyICvwgwBFehwtd"}' --login_with_auth "Bearer foo"
platform-get-trade-history-by-criteria --login_with_auth "Bearer foo"
platform-get-trade-history-by-transaction-id 'JLdn3R2wo8beVQvg' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement '{"achievements": [{"id": "eP9qOHaLwYnXxrz7", "value": 37}, {"id": "TcAzkIlndN5xeayr", "value": 52}, {"id": "vUKMuIiz2MiAAKcv", "value": 54}], "steamUserId": "zz9p57qSpHerzO87"}' 'cg7TqtMiQgi7Aj28' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'qCRbwwZc4ZS1NMkr' 'nHs1Iyhwqk140Mol' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement '{"achievements": [{"id": "IrnlkRVbcX435TDY", "percentComplete": 31}, {"id": "vXe6BiphIFe2bzr6", "percentComplete": 33}, {"id": "w3EoEEClTO9SDKnM", "percentComplete": 23}], "serviceConfigId": "12gpmShlmIt2nfhU", "titleId": "aZGqjslu59GT2E6A", "xboxUserId": "acmZRXZm626POXWV"}' 'j3KP1mX0iYHXBU3U' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'k2tQm307IORTyHnL' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'YDAAg1YA4kZURmoG' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'gxVRMPf8g1rbhfIM' --login_with_auth "Bearer foo"
platform-anonymize-integration 'StMnSqrKWYOuITlY' --login_with_auth "Bearer foo"
platform-anonymize-order 'S2RYaD9WNKGhbLhj' --login_with_auth "Bearer foo"
platform-anonymize-payment 'z1v0RBIO2rkJGmPa' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'K6HEVIQJd3930TGe' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'wjRyfo4nWVZZbKFs' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'KOmgEhjH2wFzCpxx' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'JLfAg5cFT0gHAklt' 'EPICGAMES' --login_with_auth "Bearer foo"
platform-get-user-dlc 'n0T5uzlmi2NY26xr' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'kPPdg3pXjmtpNfCr' --login_with_auth "Bearer foo"
platform-grant-user-entitlement '[{"collectionId": "Ij9ntYo3dupUHNu8", "endDate": "1971-01-14T00:00:00Z", "grantedCode": "kHPMUvOAUXkw36cr", "itemId": "2WJQqS7Tq4YIyZAF", "itemNamespace": "Q6lZfa2jdNvpWf32", "language": "JuRA_599", "metadata": {"ERSVy5M3rrkxu0U9": {}, "h9gCNVZxHGxhZqNX": {}, "J6JXSh0Z3SWISs1d": {}}, "origin": "Nintendo", "quantity": 36, "region": "74GcmVf0fbCU9QdP", "source": "PURCHASE", "startDate": "1989-11-21T00:00:00Z", "storeId": "eMEeL0EJG67g4W1e"}, {"collectionId": "AmDxP23qstMuikKc", "endDate": "1995-01-05T00:00:00Z", "grantedCode": "NU8570siWm3V9sir", "itemId": "E0JOQxWeHypqCWMD", "itemNamespace": "PRI2cCk8zHR8VyCC", "language": "fCr-138", "metadata": {"kXbwKDtVmrYQu7hZ": {}, "vHfiT9s9pK8HuUY1": {}, "QQHQ0NCEddJtx6GV": {}}, "origin": "Steam", "quantity": 82, "region": "vD7lNLxlpvqaB9P9", "source": "REWARD", "startDate": "1974-01-05T00:00:00Z", "storeId": "Oxb88WgKSLIpneDQ"}, {"collectionId": "CfwucHRL3o2NstrL", "endDate": "1974-06-02T00:00:00Z", "grantedCode": "N0JEKNoMtHvjM7X1", "itemId": "fjzknv2HZMIL2P2b", "itemNamespace": "h14LroFTnAuujPeP", "language": "ovVF", "metadata": {"VB5a2XkS3XQfMuzZ": {}, "h4AhZRe2hgU56xty": {}, "JtnbTDXu7FbleSP5": {}}, "origin": "Xbox", "quantity": 98, "region": "cdOuq0m0rvakR8rc", "source": "PURCHASE", "startDate": "1979-05-02T00:00:00Z", "storeId": "4gdJDujYnVnFK6gB"}]' '6ZxC6yYUVUJYnQ3j' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'OGmROIqxqQ0gcNeT' 'flyvUh3w5ZtfwmOC' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'KpFSMF0tfGIZCTNi' 'DEMO' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'c9fEjkZhEpAJMCxM' 'p2J0hDg2kMgkvhoQ' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'e9gD9tGN0nE7M36m' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'I9u3EeZtLQij2JXs' 'qdXfhZTTaCeqGv7m' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'euQhJuq1C6JHkWMS' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'UbqByWN2BCnRz9w2' '["nur0B9jKaunAcyls", "au7wRQmL4i3eRyIE", "CEDa1I4lwXqwPfq3"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'VzHQjtolx64w1gyv' 'jacKtGqxMnoAXRlc' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'q0mYWKQYlqMmu2pv' 'F6rP03bQaq1cT88H' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids '6RCW8gJmGzDlqxtL' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'sR2AGOiPhNt2IdH8' 'aYYUT6mma833TDzk' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements '66ix88sAUrXr7MXx' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'Cvyy7caxz4MQrODL' 'NlxiEjQBCZx9DJ4V' --login_with_auth "Bearer foo"
platform-get-user-entitlement '97SJLlrwXmIGamRC' 'ARuFLx4rV4CXVMrD' --login_with_auth "Bearer foo"
platform-update-user-entitlement '{"collectionId": "YKe2eTf1axo16GqT", "endDate": "1999-07-20T00:00:00Z", "nullFieldList": ["vSLLiMvcu39YZJyp", "WzpNXgnoKIz8O8Ng", "lJtZTh280vflFMxI"], "origin": "IOS", "reason": "bP4QVey9pEz1TV5c", "startDate": "1995-07-24T00:00:00Z", "status": "INACTIVE", "useCount": 84}' 'PBsw01i5Mf7WvbNS' 'eeDNfUESLlwHv3Jg' --login_with_auth "Bearer foo"
platform-consume-user-entitlement '{"metadata": {"teOLyKp8a1VqxXnR": {}, "hDd9TGkO6aIYqftw": {}, "1SrM2nhSEanfUYrM": {}}, "options": ["U6A43UKGpvC1cr5T", "1PSXhduTWchzXDv3", "TAtBjP4HSuiYCbG0"], "platform": "UyYUJmNL8p6AbdtU", "requestId": "0CDrlQpKB8qoel2Q", "useCount": 76}' 'StqdKu4ROnONpJ84' '9chqeiUGQMwNwDlY' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'Sli3p8YaAdel3hHM' 'SLAiscGRWzkCl1ZK' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'uPxjDUGRGcCEPjbU' 'y7F82Adu9BYRHrVT' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'ehrqgvEtEs2LpE0q' 'fbvdU8hlDoC9Fnxq' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'BlPBYJ7X6uVy7FWT' 'SfMi2CPVGxjcdpdC' --body '{"metadata": {"qVeePMSqb8y8qJTU": {}, "QY40Zrpn0vAD9YsP": {}, "eDWrAVQZSvgWuCuL": {}}}' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement-by-use-count '{"reason": "sUGrVQAbhS54ZuQH", "useCount": 75}' 'krjLI4EHJEEWgki9' 'fbdvUMDZeO4U55wd' --login_with_auth "Bearer foo"
platform-pre-check-revoke-user-entitlement-by-use-count 'CpVpnENiTc9NESV2' '2eRBElD4K2Cy1tJc' '86' --login_with_auth "Bearer foo"
platform-sell-user-entitlement '{"platform": "SV40OvY7apPCrN5b", "requestId": "EhmuHgKeWizEpw1z", "useCount": 81}' '4uEIdAwgDobopbdJ' 'eVCiKs2vLyH9kcSB' --login_with_auth "Bearer foo"
platform-fulfill-item '{"duration": 7, "endDate": "1982-03-27T00:00:00Z", "entitlementCollectionId": "YUJPbvzn8TYoMDAa", "entitlementOrigin": "GooglePlay", "itemId": "XSuBQdvdhJoT0WK5", "itemSku": "ngNUxDKfZYofPGUb", "language": "SaA00nKxQjYU6Kla", "metadata": {"vIiLxU2I1GyJS48H": {}, "xu8Ju4XSAnlXRYB9": {}, "BgSZBvkehRn83B0n": {}}, "order": {"currency": {"currencyCode": "rW1qx3NJTugVWXz8", "currencySymbol": "dv7BiEUqnzxs2deM", "currencyType": "VIRTUAL", "decimals": 88, "namespace": "UAJIHEZv5zyUUyNJ"}, "ext": {"kvA5xF3zHtZSd3Qz": {}, "XhkrN4pWryt4XTNw": {}, "pp0ni1YfIgLZ4YIz": {}}, "free": true}, "orderNo": "YOilX1e1825iasun", "origin": "Steam", "overrideBundleItemQty": {"lokbAFW8RgBUwBL2": 92, "BqM8UzvKqeoTiNKG": 89, "ULZ0iOZJiOAh1SpL": 14}, "quantity": 6, "region": "MF2Pav11FuU8iXCR", "source": "REFERRAL_BONUS", "startDate": "1994-03-04T00:00:00Z", "storeId": "KgqgwijYxpGhsFAr"}' 'q6lolbj7QKvtVRCP' --login_with_auth "Bearer foo"
platform-redeem-code '{"code": "Mjr5M3vw1GqUjjFp", "language": "XCNM_Us", "region": "VqSECsypS42NmYQ8"}' 'HlHbHnfs4tLVOYQC' --login_with_auth "Bearer foo"
platform-pre-check-fulfill-item '{"itemId": "WMktmiKd9vLPP0w5", "itemSku": "2JRAZxMWdoleYNHX", "quantity": 10}' 'nova15WVuE5cYVP9' --login_with_auth "Bearer foo"
platform-fulfill-rewards '{"entitlementCollectionId": "tQSa27BnPyq3I1BL", "entitlementOrigin": "Other", "metadata": {"1LLzQ2IjY5PeNr4J": {}, "mYxH2qs28hePJjMp": {}, "0TKKUBfPNI9f2oLW": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "bNdqkWa13g3pgHx6", "namespace": "uPf6jQZcYerH933X"}, "item": {"itemId": "7iXEEM2KOusNEHcI", "itemName": "95GGdJvucDbs6Udc", "itemSku": "cuM2ykRj3WnyAaUa", "itemType": "QBKFedL2uduXvZUb"}, "quantity": 87, "type": "ITEM"}, {"currency": {"currencyCode": "13FhD3NExUFipJsU", "namespace": "iDawAjgHFQk0VzWR"}, "item": {"itemId": "NFNiUn2yXMSCcHAD", "itemName": "YpS861c0CJ7LzpFv", "itemSku": "OSF6xKA6yrnvXY5d", "itemType": "Dwneac75C6S2eHsH"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "4hL75QboMHCtzEF9", "namespace": "FSeg6WYgtfuqJHrs"}, "item": {"itemId": "4e3RnWR30MdBZezf", "itemName": "wc3H0qSbMq4GLj8a", "itemSku": "GsH0qE5p601ak59y", "itemType": "FSfdZIv8oYWPUS4Z"}, "quantity": 42, "type": "CURRENCY"}], "source": "ACHIEVEMENT", "transactionId": "oiKT57rmbjEnimeR"}' '7EFBz43E9FkOPVu2' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'fDtOjW1iSYQbcebB' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'd5wb5H3qppoCiHMD' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history '4iBK2O7qYtOHV5hn' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item '{"itemIdentityType": "ITEM_ID", "language": "fC-ojmo", "productId": "JpxFY8E6pU8eHjh0", "region": "aTjIOaQt0snbE0yM", "transactionId": "vqF7TJ9uB0zypjJi", "type": "STADIA"}' 'R29LKIhNU43K8bih' --login_with_auth "Bearer foo"
platform-query-user-third-party-subscription 'dw3prp0UHlWUxkBe' --login_with_auth "Bearer foo"
platform-get-third-party-platform-subscription-ownership-by-group-id 'EPICGAMES' 'E6hXZ7XLoWCGf0dZ' 'EeXBd6mGG6SHcZbX' --login_with_auth "Bearer foo"
platform-get-third-party-platform-subscription-ownership-by-product-id 'TWITCH' 'wNnT6A9zosmDnXon' 'cy7NZQ4PkAPXBCfk' --login_with_auth "Bearer foo"
platform-query-user-third-party-subscription-transactions 'E1Fb0y94eP7yh0zs' --login_with_auth "Bearer foo"
platform-get-third-party-subscription-details 'KhR60HZwUwk48XK7' 'MXHbEwAvvpEeHhXi' --login_with_auth "Bearer foo"
platform-get-subscription-history 'JcJqYSxVKUYMimVL' 'zAP6aOzsTqEFXUhG' --login_with_auth "Bearer foo"
platform-sync-subscription-transaction 'AwpYq1UqZydOB0MT' 'hZW6LwcAg57BYBVC' --login_with_auth "Bearer foo"
platform-get-third-party-user-subscription-details 'bi0ifdPyKf3SwHek' 'WIz4rXlH5jw99HxC' --login_with_auth "Bearer foo"
platform-sync-subscription 'jXWcaXBcfXXeV7BX' 'efsSgZxSYnVwXqF6' --login_with_auth "Bearer foo"
platform-query-user-orders 'K0WA76Kl2mHHoz6q' --login_with_auth "Bearer foo"
platform-admin-create-user-order '{"currencyCode": "BQnEDgX49n1xTDFc", "currencyNamespace": "mOm1sqdIWU6ERylE", "discountCodes": ["NGfufW5cWeg6eSCy", "LyXMSrC62xYtDwfl", "Sgf5dXMrPoYSohfr"], "discountedPrice": 32, "entitlementPlatform": "Epic", "ext": {"sceITTkJGGCVF6Lr": {}, "ILDLviUCzmDAaW5x": {}, "z1c7ZuZXUCBYnkY0": {}}, "itemId": "LEBSYBdUSiTOrhB8", "language": "hVs29WOKmZRTtgyc", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 58, "quantity": 67, "region": "z6lUMKi5mweMEZo2", "returnUrl": "ZnL1Zg2JfH4f73jA", "sandbox": false, "sectionId": "JYzSCIDxWUxgOzeR"}' 'NHIqK5PT404mFw4H' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'Jv5T2kIQOecfLsYK' 'TmUnKlrOsJmEwjGY' --login_with_auth "Bearer foo"
platform-get-user-order 'N8VNPXNsmwTV8imJ' 'HNI0l6jJVzF1Oi2s' --login_with_auth "Bearer foo"
platform-update-user-order-status '{"status": "REFUND_FAILED", "statusReason": "VWA2dWxBs056jkPC"}' 'UuE1pgdHvlQKiR7S' 'DQUDavOlKT5EIHNh' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'JQq94Re5IM1akNKz' '9IltQUku3n32atB0' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'QPQPEp5UtwUWGt6t' 'ooHP5kAww01zalTd' --login_with_auth "Bearer foo"
platform-process-user-order-notification '{"additionalData": {"cardSummary": "dhAQ1pwqnybvUIfu"}, "authorisedTime": "1981-04-05T00:00:00Z", "chargebackReversedTime": "1975-04-12T00:00:00Z", "chargebackTime": "1992-02-01T00:00:00Z", "chargedTime": "1990-02-04T00:00:00Z", "createdTime": "1997-02-17T00:00:00Z", "currency": {"currencyCode": "qz5NSp0B7LODN3Bo", "currencySymbol": "i2sSAO2n4MZQt753", "currencyType": "VIRTUAL", "decimals": 14, "namespace": "3rOW0guPoQbYzc1R"}, "customParameters": {"DVhs2lhdzxxgibuq": {}, "UuyW3cMz9YyduMom": {}, "EHcU15St4v8ry8Iy": {}}, "extOrderNo": "qNVv0KVpXJTMx3Y8", "extTxId": "Um1iqehObg3OZ9j0", "extUserId": "HDtbqMFlgHKQIRtL", "issuedAt": "1974-12-23T00:00:00Z", "metadata": {"PngD83roOeqE7fcC": "AeExeQX43LpmdMiZ", "eyIrA4QUKSJgECzv": "aWUCA7wKru7ry3AQ", "2sEHvSxjWoM1rNJL": "M0OOVG5cG6XxENbW"}, "namespace": "qlX7idzjpKDfwl6X", "nonceStr": "lCF6YxFMD8tJQwZv", "paymentData": {"discountAmount": 96, "discountCode": "QtLhzylaquioT3QB", "subtotalPrice": 40, "tax": 60, "totalPrice": 55}, "paymentMethod": "PXRL8cbTAntB1STa", "paymentMethodFee": 0, "paymentOrderNo": "F1Qwzz606UGXPhoN", "paymentProvider": "ADYEN", "paymentProviderFee": 23, "paymentStationUrl": "wj6PqqOgCimr3ZQN", "price": 57, "refundedTime": "1994-08-08T00:00:00Z", "salesTax": 50, "sandbox": false, "sku": "gbtOtcQS4Cmgw1wR", "status": "REFUND_FAILED", "statusReason": "0xdNTuOdLKK0M2B2", "subscriptionId": "hbqJin37P69t1Kqe", "subtotalPrice": 67, "targetNamespace": "hjTFYdzsUNvQAn2L", "targetUserId": "uMjLqwmVz3zKsfjz", "tax": 22, "totalPrice": 26, "totalTax": 64, "txEndTime": "1982-03-23T00:00:00Z", "type": "CEq7FQ2S5VeW9ddx", "userId": "zLPV8wDjsnyPh5yN", "vat": 2}' '3QiX9ZvtydbaVb0s' 'cd97A0GP6djn2Ps3' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'IVT5hUZ3cnDq0ddZ' 'G0EpfGAqHKcSxUc2' --login_with_auth "Bearer foo"
platform-create-user-payment-order '{"currencyCode": "YgRpk2IFGIgIpscU", "currencyNamespace": "pVAciu2XPPUxzXHU", "customParameters": {"vxhvTZcvRKoaM4oz": {}, "SAg8FTLrByWOJhbo": {}, "coGlPzdfxcC3rpWh": {}}, "description": "Spq0InxMLpP7n7M3", "extOrderNo": "JXjEvsj5WcQ99M1y", "extUserId": "uXeqV31LX2ehcMnM", "itemType": "SUBSCRIPTION", "language": "USK_JAeN", "metadata": {"4Cdd1QYvww4XDokl": "tgq2vXtUnY6UhDJ4", "pe0s0Cuhl3dU9b4s": "eYCyiB4tDCWx3cEX", "8wTi1v2abpCWytPE": "i9Ze0hL9rPkV5GkS"}, "notifyUrl": "rcl2O47XVzU7qlNV", "omitNotification": false, "platform": "ph4kiIFgS4fLqlrK", "price": 66, "recurringPaymentOrderNo": "cErmeH0lX1hj0LaX", "region": "gQ94flh775AQfzNj", "returnUrl": "Q7IuMSY2epRDJjDy", "sandbox": true, "sku": "DKQhuTjtQZyIiAmC", "subscriptionId": "L8bNTTfqLCv9DYBO", "title": "ProN4UWbQaKFrTv4"}' 'JWElmOCxqPrq9I3X' --login_with_auth "Bearer foo"
platform-refund-user-payment-order '{"description": "JWBxTLcOef8MgIwk"}' 'rKFEtwESJCe2ksG3' 'nZE13H2fILFzOlAZ' --login_with_auth "Bearer foo"
platform-get-user-platform-account-closure-histories 'bDQAEJLbVWH2XLIg' --login_with_auth "Bearer foo"
platform-apply-user-redemption '{"code": "3MgmdSvWp3h0xPsV", "orderNo": "Y8qNwB2TY4v9NNfQ"}' 'SYLFKSl3FNFFJnt3' --login_with_auth "Bearer foo"
platform-do-revocation '{"meta": {"rIwZdW02Su6aCnL8": {}, "16aH6gOBUIMeL0GL": {}, "3aefSDME8X2MxILI": {}}, "reason": "42BJMPkZmay4Csye", "revokeEntries": [{"currency": {"balanceOrigin": "Nintendo", "currencyCode": "iJLtjsu6ZJRCoDq3", "namespace": "geuHFFaZzPIjETqc"}, "entitlement": {"entitlementId": "KN1gaQ4Bn0cPPtKa"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "HF0ebxhJ1176CeD4", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 100, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "KF0LLhO3lGZ7eGOP", "namespace": "j2XoFug8BUQUmPHn"}, "entitlement": {"entitlementId": "PumcazKAna0ji757"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "4mnYvvlt1es7A4PF", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 46, "type": "ITEM"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "gx0UC6eWKCFGS97S", "namespace": "i6XyLVPrkUxyZ1OH"}, "entitlement": {"entitlementId": "5Nn4nMT8QOyTuUSD"}, "item": {"entitlementOrigin": "System", "itemIdentity": "ImtaPAocOQcpBWSN", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 60, "type": "CURRENCY"}], "source": "DLC", "transactionId": "NEAdojkCMmYyTGO0"}' '7foRZ6FujpIWo0qJ' --login_with_auth "Bearer foo"
platform-register-xbl-sessions '{"gameSessionId": "tqp4Q6XgICLgMHcP", "payload": {"1eE6sjWQllYsONpp": {}, "6QGW56CNiszHE69D": {}, "1MMoaf6KlgRtwaM2": {}}, "scid": "IoyY1wpIdjcAtTj1", "sessionTemplateName": "IMuuhxxlulfmya73"}' 'hX0a8Ri85PA9wNpm' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'rK5Y5heA2ewWnFcq' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'HxXP3kRhtrBcBofW' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '{"grantDays": 94, "itemId": "WB4yRaDxvxwaLM8H", "language": "kVOW8PnLkgqkqYZW", "reason": "PZTgKagTzdcYcko7", "region": "U3gH239LhRx2Laa2", "source": "RdtVb6VgA5yFIH3s"}' '9UyeaFi8OE7BCK4F' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'eVGrl5NpUG9zblWE' 'iHaUjyTHb0sSlstb' --login_with_auth "Bearer foo"
platform-get-user-subscription '3slUe94NxhXsVcqT' 'Yi1TMBMzaOrxuKvt' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'UVtqbDWnJ2i9TRmJ' 'OqIl7U12hO5vpk9D' --login_with_auth "Bearer foo"
platform-cancel-subscription '{"immediate": true, "reason": "SgbsdGVPLD9A5Nmu"}' 'ZDUV3yHurgOfba1X' 'eoHYTNoRol84Ulkx' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription '{"grantDays": 40, "reason": "uyrI87uSyXP6C0jX"}' 'S8au2wcWYyj3JvHq' 'Xp4JR7xI59Z9tfGV' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'sglnOxOXBfgBLugl' 'kd9LIoshGnFSuHmr' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '{"additionalData": {"cardSummary": "qej8PRppYY1vlV0M"}, "authorisedTime": "1999-02-19T00:00:00Z", "chargebackReversedTime": "1986-03-20T00:00:00Z", "chargebackTime": "1978-05-23T00:00:00Z", "chargedTime": "1995-01-31T00:00:00Z", "createdTime": "1980-05-17T00:00:00Z", "currency": {"currencyCode": "0n0jfyDbtIXICLkK", "currencySymbol": "8ZvbnTg3znlg8nmz", "currencyType": "VIRTUAL", "decimals": 92, "namespace": "RsYhcRlv16Wwe8YK"}, "customParameters": {"3lZFslECI9QzuQcs": {}, "jFehD6uTDYnqyNgN": {}, "7GoeMsezFZsTBHkg": {}}, "extOrderNo": "cJ0DcEt23pci6xEl", "extTxId": "jer6aGJx5OFp3jKE", "extUserId": "x4aSGdwTPX4ig3NV", "issuedAt": "1987-06-05T00:00:00Z", "metadata": {"FkP7O3F4vsohRWDy": "GYIVFDbTvRYfpJ4w", "M9WZfOOxAzmsbhi5": "QJuc2SNBaOlXfgsg", "Bd7MYLLoPZrkjRm5": "Ki0orhXrISEaPZHL"}, "namespace": "QkTHvndQsCKAO2JR", "nonceStr": "z3CGwtujkzxidLcA", "paymentData": {"discountAmount": 87, "discountCode": "yirw3iJt5iA3JS2x", "subtotalPrice": 10, "tax": 14, "totalPrice": 0}, "paymentMethod": "do4XTm8t1YTWqItj", "paymentMethodFee": 80, "paymentOrderNo": "jZMdr1C2TIQzRJY7", "paymentProvider": "ALIPAY", "paymentProviderFee": 11, "paymentStationUrl": "YSrdN0JVz4U43EcV", "price": 19, "refundedTime": "1987-10-08T00:00:00Z", "salesTax": 89, "sandbox": true, "sku": "BUM77XmemN8LO03m", "status": "CHARGEBACK_REVERSED", "statusReason": "G4v5D6ylZguO918X", "subscriptionId": "7rLoexHBMBMMAYok", "subtotalPrice": 92, "targetNamespace": "SQAfYIyzHL8jxaku", "targetUserId": "Vu5r5B08VZxI4TU3", "tax": 0, "totalPrice": 32, "totalTax": 26, "txEndTime": "1979-01-17T00:00:00Z", "type": "XoJ4gI4EQKO8xC4D", "userId": "0FsUo3IB2kX5REQZ", "vat": 37}' 'r1y5Ihr531Kajxq7' 'lzuVRVEvhKIbrq1x' --login_with_auth "Bearer foo"
platform-acquire-user-ticket '{"count": 38, "orderNo": "nV6B62P1Kazg73c6"}' 'UpmA4ehxNIIlcrZz' 'gameT2mLkkAMjHyI' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets '0e2Axj0nZHjmoKHJ' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code '{"allowOverdraft": false, "amount": 63, "balanceOrigin": "GooglePlay", "balanceSource": "EXPIRATION", "metadata": {"wMe1AnQVj6QQjZtk": {}, "NJCnDSrsSey2BqOx": {}, "gwCymCDYsuff3b7G": {}}, "reason": "5FDX4mu0qPHb9Ll2"}' 'EFEb8GnsthmQ2Y6Z' 'GOiqrg3lpqN5bOfn' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'qJ5bzDRzbhMxfEDE' '4TrtIHyyMq79EdB9' --login_with_auth "Bearer foo"
platform-check-balance '{"amount": 80, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"Mzjv1gSj8kcNhoqc": {}, "RZRNATojM7daV0Vw": {}, "R3yNKDtMqMrAGpdy": {}}, "reason": "F6WDHn3ePBxQNz2I", "walletPlatform": "Steam"}' 'EHMzl5jhwVDsuzwJ' '4v50eoaIBrTh0EKk' --login_with_auth "Bearer foo"
platform-credit-user-wallet '{"amount": 73, "expireAt": "1992-03-08T00:00:00Z", "metadata": {"5ckjphURs4ksgsKJ": {}, "2R6Jacwwu8W1zvrK": {}, "MRPvwA9k6yJz03NE": {}}, "origin": "System", "reason": "dywPqYerrpOm4M2p", "source": "REDEEM_CODE"}' '4GYjUt4F1ZVy2qFf' 'Sr3psWjOyHLyKe2f' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform '{"amount": 31, "debitBalanceSource": "OTHER", "metadata": {"qsVIfgBTr8RcxRQR": {}, "0NYdJzf3TMhSaynV": {}, "s05nZC4Os7hqIH2N": {}}, "reason": "gARSG3QQNGNH2K0U", "walletPlatform": "Other"}' 'FdcfiNf0DOHKwxDF' '5GJhCjVHiCn2hTef' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet '{"amount": 94, "metadata": {"QsrwHqFqwVA5moze": {}, "eOjIFQfXV3YW3ug3": {}, "nCXhD7FUz1iOe0pH": {}}, "walletPlatform": "Epic"}' 'djrjkX3AMgK3JgZu' 'fzssA284mG7uAojL' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view '{"displayOrder": 31, "localizations": {"Bsx8oqMzbE0ljQaB": {"description": "tb47V691j0FZp2vj", "localExt": {"OXptxzx6kkaZYpl5": {}, "2sQR9Znp5d1eSwrG": {}, "2GBBEWrDbQ1ZzhDu": {}}, "longDescription": "LHq9LTBstguOdN0O", "title": "7l3GbKPHdDTQDEEE"}, "2mTsn1NwJ71szsNm": {"description": "nqZSWdEyOVYrTdDq", "localExt": {"7IqbTVv8BLsqQW8H": {}, "SrEm5Y7jI232Sjkt": {}, "ijiNzTUe8KdizXmr": {}}, "longDescription": "mK0sCUsqxKocHomt", "title": "joU1kUqRedwIu1TS"}, "Rr6r8mzfMedpcKhv": {"description": "HPlvYanGqEkn9OEV", "localExt": {"wLWGT4MXhmzvRQb7": {}, "c0vmjWq9fQqzulLG": {}, "fQMqSLQDlRFYMVfi": {}}, "longDescription": "AMa6Pco7Mfvikslp", "title": "yL9BYLVVznF6hMYf"}}, "name": "ksp8VQhYSFeBOp0i"}' 'lGQFwHUtZugblT3a' --login_with_auth "Bearer foo"
platform-get-view 'IDKn9qJXncm5igpA' --login_with_auth "Bearer foo"
platform-update-view '{"displayOrder": 9, "localizations": {"TK8zmMfyshYk3b5c": {"description": "AFVo85r1b8Yp2Qnu", "localExt": {"hQuIdvZdj6AspWBf": {}, "RnLcLbp7OmcrDJ7u": {}, "1rrRPcnG89rnNW1Y": {}}, "longDescription": "jfn8lY4DnYRxY8Zh", "title": "Heb0CaPFDjrSotKn"}, "pJWALpToj9rgr5Rf": {"description": "fM5JXvPdzEpDln04", "localExt": {"F8BQjzobhDa8VxKO": {}, "rfVfBRIfkStOqdXq": {}, "hDMQ6tBLljC7gcT3": {}}, "longDescription": "M1DArk4L80aXFY7S", "title": "Qkym9KvKMHK5fbqi"}, "oeoRIplY0DIzRCNA": {"description": "O6ZpqXJmPJso6M11", "localExt": {"LLZWKgWxn9YL16HQ": {}, "dtAneXGgxNg33ZIU": {}, "rIkfmdXVvaPQzzKd": {}}, "longDescription": "Fg7N7piT8VcrXLZn", "title": "uMNpKEIs3GC9VTK7"}}, "name": "tkJWFpHt7MdKu9Xw"}' 'n5GHJDGatrYOMO91' 'CYEjX867n9PT9fR7' --login_with_auth "Bearer foo"
platform-delete-view 'mMuBXPDKCriRKzTZ' '7TXAVRnUVbxEJcKH' --login_with_auth "Bearer foo"
platform-bulk-credit '[{"creditRequest": {"amount": 64, "expireAt": "1988-05-23T00:00:00Z", "metadata": {"64EwhQfxFKIOGT1W": {}, "KSmLoA0ILaESC1GJ": {}, "XsoBwqh0TQXa2j7v": {}}, "origin": "GooglePlay", "reason": "zQJoQLTAlW75icIK", "source": "REWARD"}, "currencyCode": "26ihdMy9YCLNJEkv", "userIds": ["Nuw6Y7sToQNkuZzJ", "1XBxw01iBBQukgQ9", "q6SUSt8xd8EgE15X"]}, {"creditRequest": {"amount": 76, "expireAt": "1997-06-23T00:00:00Z", "metadata": {"6dsYI5SKV5pDANyJ": {}, "184miBhdVJt81fmL": {}, "SyGuu5rbJVIwRMtw": {}}, "origin": "Playstation", "reason": "Ofzwt3bpxRNt6lKo", "source": "REDEEM_CODE"}, "currencyCode": "edk0KzXRclOXdPYZ", "userIds": ["swEPTvzwwGnpbx8M", "k8Hd1lRtoPMvsu9o", "QxBnttu4yW5etl4X"]}, {"creditRequest": {"amount": 59, "expireAt": "1974-10-11T00:00:00Z", "metadata": {"sVbG6TUe3jbuQ7HM": {}, "PO4ozK705ykRqSPY": {}, "ZgPm4JLsXVtBOEet": {}}, "origin": "System", "reason": "2V3baMkZ9JCqBIkU", "source": "PURCHASE"}, "currencyCode": "l5nkpEdBe8bYWdok", "userIds": ["olfI0mqZctohLheR", "4UnUEOyP0cPZf5Ov", "aQkfMLFW9B7jHZro"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit '[{"currencyCode": "4hhwnANAGp8zGqNG", "request": {"allowOverdraft": true, "amount": 100, "balanceOrigin": "Epic", "balanceSource": "PAYMENT", "metadata": {"MdgCH4bWxRF6fBPa": {}, "6GOuV5z0p8jaJs2d": {}, "uQqawPrxi6F4elhy": {}}, "reason": "9CZ94CAUVW8FoEf8"}, "userIds": ["Pm7RmaOr6TLwVyE4", "jHwSDQHadmAo0lzh", "tjCjWc22qqDfNz59"]}, {"currencyCode": "2ApAb7CKt79wAopZ", "request": {"allowOverdraft": true, "amount": 90, "balanceOrigin": "Other", "balanceSource": "EXPIRATION", "metadata": {"6K9h55mwUvhdBOgu": {}, "mV4wAsd4ifGd0bkW": {}, "rlhtfTywRW4fmg6b": {}}, "reason": "tk3mAO4EtB0hn2x1"}, "userIds": ["eAoUuVKneoO10ytP", "HWhDRJtyYEt7ygZl", "oTOX5gBQlVDx9neF"]}, {"currencyCode": "dJ8SY3qoogOxoPYv", "request": {"allowOverdraft": false, "amount": 4, "balanceOrigin": "System", "balanceSource": "ORDER_REVOCATION", "metadata": {"BJYyGURjEjnslEYM": {}, "8ngVT1ewVxvgAocO": {}, "qsd5v5n7eXCo9gZW": {}}, "reason": "dxfIdW8fNAM5YdHi"}, "userIds": ["MOEv5W0v25yAObZI", "vK2Q0WwolQy037hJ", "brA8XAKKWMDebehS"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'jpt0wrfWPXaI1Jb7' '5o2MFOa6xgPt69QR' --login_with_auth "Bearer foo"
platform-test-adyen-config '{"allowedPaymentMethods": ["OGDeJCyHvUsnLvXC", "SgQHvs25eiQO3oWd", "gXdm1IxL1OtleUBq"], "apiKey": "BO0Ze049k9W6ZLVJ", "authoriseAsCapture": true, "blockedPaymentMethods": ["py9ZVlLIFwLgT78n", "ootfUs9559ilm3ca", "uhrw9Yn2z5cnbm7z"], "clientKey": "2Aa24yBTw3wfNGyW", "dropInSettings": "f3VujS7Bq5bcfPW4", "liveEndpointUrlPrefix": "pPZB9YXltCxyztUn", "merchantAccount": "j17t3gHBXvjvziex", "notificationHmacKey": "zOLbOWbtcJUxM3AW", "notificationPassword": "yDkA5LmART6kulpM", "notificationUsername": "4SRtUE5P4kxmHtFb", "returnUrl": "jqurHix0QYycDH5w", "settings": "e2Mx0sYCnYPT4i4m"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config '{"appId": "xc14iRfzJwKuc7Ep", "privateKey": "iQEzz5N5osRYO7wb", "publicKey": "Yh7q02W8tkTURUFm", "returnUrl": "qNc8xhQqptccNorR"}' --login_with_auth "Bearer foo"
platform-test-checkout-config '{"publicKey": "ls7EC3nDnhFvDlFd", "secretKey": "7iyZpvWVJFK6Zuvl"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-neon-pay-config '{"apiKey": "zGCII156hIg0g8HI", "webhookSecretKey": "xpzm9AcFhH4ZlYY3"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config '{"clientID": "rEuHMWwQNmCQmGCF", "clientSecret": "963CbsOawlRBQJH6", "returnUrl": "fNekhk077gxaj55h", "webHookId": "uTA6AvmW0567BFqb"}' --login_with_auth "Bearer foo"
platform-test-stripe-config '{"allowedPaymentMethodTypes": ["rPIuxKmBXLi6Gpnq", "AeMvg3w0FQ1520WM", "3TxWXSdTiKdva2UR"], "publishableKey": "EoBSFtCLy2CqgCG7", "secretKey": "JwJCDqkzOdFwLJpI", "webhookSecret": "PxzLE1V9U1NgpH7O"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config '{"appId": "c44yjRdfqZgv34Gq", "key": "qjelcN0GJmPwUTWM", "mchid": "x0MiPAjnWIhFrqSn", "returnUrl": "4erXEtU1CaD8AqsM"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config '{"apiKey": "CGBNhmUt6fzYRn85", "flowCompletionUrl": "brTu8F7cuCPh1TGZ", "merchantId": 73, "projectId": 80, "projectSecretKey": "mgWNHWnvOBRCt4on"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config-1 'qRo2PnMSRarKg4co' --login_with_auth "Bearer foo"
platform-update-adyen-config '{"allowedPaymentMethods": ["y3AFpULIn21Nf2FN", "gDWNC6yh7kgTHlrx", "KbsV4XtrI7SFBEgk"], "apiKey": "wHifMHYI581HbF7f", "authoriseAsCapture": false, "blockedPaymentMethods": ["HofhwyM6Bw2sFGQ5", "DQoDwzrKPOZZnV3z", "R7YxSu6addocg10H"], "clientKey": "y9jx7gBHTOHHArjl", "dropInSettings": "d0LnREsrrB2pJ7V8", "liveEndpointUrlPrefix": "BSrucjO3zvSM5KeV", "merchantAccount": "NHU9GcOivIfcCJt4", "notificationHmacKey": "U8VSgXoi9Fw25b9q", "notificationPassword": "XzlIK2G6AUjBCdf0", "notificationUsername": "Rp5e5IvFuN1oUsCn", "returnUrl": "BmGMx5F6EhM3dKvI", "settings": "G9MR0hTINvq1VR9S"}' 'JUfQEX996Mh1sQ3D' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'w3uyjgQNAs9188Qm' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '{"appId": "3W1De2McGd10wefF", "privateKey": "0CJlH55RLEgeAsSp", "publicKey": "QdcmGHZuRVQ8tzwq", "returnUrl": "MayP8A3HGNI3Bfjk"}' 'Fd6MHo6gGQ5mChYo' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'KD7yqCR03RovQZhw' --login_with_auth "Bearer foo"
platform-update-checkout-config '{"publicKey": "fjkq9iyTbyD3D01t", "secretKey": "RpuuyIagSSzEL8H4"}' 'euLufhQj2KP3LLxl' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id '9Hs2L2wlpKBVURxH' --login_with_auth "Bearer foo"
platform-update-neon-pay-config '{"apiKey": "efz77a9fntCNiHBR", "webhookSecretKey": "UNCPSre5GmZzCQwi"}' 'lS3IxSjlyvR9PxG9' --login_with_auth "Bearer foo"
platform-test-neon-pay-config-by-id 'Lji2Vc88W8aLjIxV' --login_with_auth "Bearer foo"
platform-update-pay-pal-config '{"clientID": "GpdOqguxvRwI9ZBT", "clientSecret": "ipMRlhK9DMMaI4ry", "returnUrl": "VDvNaruZxwTfh9gE", "webHookId": "s6GF247cbBLjUr5z"}' '03wxB3E9hrE9f9CO' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'FrOr6wJDBwIDsJHN' --login_with_auth "Bearer foo"
platform-update-stripe-config '{"allowedPaymentMethodTypes": ["g6TvNGjwI4TbTwBu", "fUorJouduhCEJ5Xi", "KDIE9YugcupLxVBc"], "publishableKey": "RkfhRuqkOTHSia7o", "secretKey": "Fd1fEmDuyAsQGzwJ", "webhookSecret": "R5poI718RQnj4imu"}' '6XFfRcWDXhq1YmGe' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'ygr2S4Yw8NmPaBer' --login_with_auth "Bearer foo"
platform-update-wx-pay-config '{"appId": "yzX2hOPVVFqVqxjq", "key": "1iG3TySOh8SI75oX", "mchid": "byq8FBbur80Qwnlg", "returnUrl": "AVfqz6gQJh8sn0bV"}' 'WRkvmAemh8lioBR7' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'xTXcEIFod3lCzvjH' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'zDHOrSJ1vbB7LRHd' --login_with_auth "Bearer foo"
platform-update-xsolla-config '{"apiKey": "96dGLgkfrZveFMWA", "flowCompletionUrl": "FT7l0l1jaOAMCzbs", "merchantId": 30, "projectId": 14, "projectSecretKey": "IgmKwwMDQPjUIosq"}' '1l6xo0D4JRbNqO6I' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'uP2PY5hhX6uNah9J' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT"}' 'jFWxSv1lYylYAiZ8' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config '{"aggregate": "ADYEN", "namespace": "5ezlCU6SGzkMpTL2", "region": "wxobjxAbagqEmXn6", "sandboxTaxJarApiToken": "U2VeV2emK3JecJA4", "specials": ["PAYPAL", "WALLET", "CHECKOUT"], "taxJarApiToken": "xIyVwYjn6dlC9Kfh", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config '{"aggregate": "XSOLLA", "namespace": "Huloyce0cLJu4ljP", "region": "WlCWTuGO8MnfOQu3", "sandboxTaxJarApiToken": "wdT4Aodp95o1RkX7", "specials": ["CHECKOUT", "WALLET", "NEONPAY"], "taxJarApiToken": "nRN0zGMworzym1z3", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' 'QqjyzUZR2rFIAuAL' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'NhNCyscsMBRLsWad' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config '{"sandboxTaxJarApiToken": "k2OQ421q7Nb1vrKt", "taxJarApiToken": "hVvU5on065ApCkVN", "taxJarEnabled": true, "taxJarProductCodesMapping": {"chuQ6pntxB648ss7": "rBnvQHAM8gSdIybK", "UByHBzfvgtRTPPzw": "JmKaLCx3gcidEALW", "e6RG5wWznu5AjwR1": "Z4fU7ICcaQtuuKUw"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders '3dUwWHhQW3I1y9tj' 'RLVOXBMa0JiIe1AY' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category '0tUA7EKASk3USNLh' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'OBlxRBLgohp8ByTi' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories '2F6AyUX8w77riPlP' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'EPICGAMES' --login_with_auth "Bearer foo"
platform-get-apple-config-version --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'wJv4rpqtzDaz0WUJ' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'lBCHzJ2v9K8c1zOl' --login_with_auth "Bearer foo"
platform-public-get-estimated-price 'Zg30pagfP0FfOMBO' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'peQT4zYIbU4i9mLy' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition '{"itemIds": ["X46Alt08rrnG8y2S", "cXkwjpAp82pGcxvX", "aG9LzHpMS53jllop"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'wirRo3A8WxnR0YaM' 'sF3f5KLtpTSsPMGD' --login_with_auth "Bearer foo"
platform-public-get-app 'ZTOwEP5Bhh0NStWI' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'ggmhfAzVdNYP7Ao1' --login_with_auth "Bearer foo"
platform-public-get-item 'z7FeJM2fWXGk7JOb' --login_with_auth "Bearer foo"
platform-public-get-payment-url '{"neonPayConfig": {"cancelUrl": "SHksRkabpmvRsc7Z", "successUrl": "YvXCT6m6mRZAlLBc"}, "paymentOrderNo": "zJVeil7GbG1ISBCk", "paymentProvider": "ADYEN", "returnUrl": "Fyljy5bYQdQ87hUH", "ui": "A0FJZwP8GslMpx3m", "zipCode": "7lEXTmnTbtjK9Rsy"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'oqT3adB48Jxp2zaI' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'tg9jTNZvpFEUI21a' --login_with_auth "Bearer foo"
platform-pay '{"token": "SaIsMyLKPPIZx0zd"}' 'NAagipZwiaBrFrXt' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'GMjujfHZB1gMI1B8' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'WXPAY' 'EoR58uCVldefonHJ' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'ZAiX4abmqqi90KTW' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'wZk0HGeJNaBjVdMB' '5kMzKycYrhr4FnNz' 'ADYEN' 'Invbnf4ewKFFLoGg' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'gX4gQWyZocvYfr0R' 'NEONPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'MlWOl9feWO2bmOik' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'TBJHTEm5PSeyod5L' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id '6OooYoQn9iHEqWO1' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'cVCUIOx90FQdwLi3' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'GOQkLtpuRNeT1CUL' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement '{"gameId": "EMPaOU5nukycAUlk", "language": "uljw-YWol", "region": "zF3NaUuCyQyze6zP"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'Ku5sE89JW8UU0RsB' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc '6dvrpmInhHYzVVlH' --body '{"epicGamesJwtToken": "GFSwjby6rMYkVQnZ"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'DUAbINRKQsxUO1YM' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'xAndOj5O6IBwXJjg' --body '{"serviceLabel": 88}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'sX4RwfM4qnUdcQqZ' --body '{"serviceLabels": [64, 89, 63]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc '{"appId": "uivPob0YZEuXQACD", "steamId": "DQryNf9VGxbOeJe4"}' 'n9eUlBQZ2UGePWXb' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'AyGiXa9nUsHCVicu' --body '{"xstsToken": "J7onrUXVlB6xNel4"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'Bxb9KwFYqdhEVq3h' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'bsApeASfR0ljKxqZ' 'cLuhwNDvValv3bko' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'MXNzl1ywEPiunixl' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-public-get-user-entitlements-by-ids 'IhMSaDRp17dUWHcj' --login_with_auth "Bearer foo"
platform-public-user-entitlement-history 'rb6qNeKpOxPrlG9s' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'vdqsiVTqPbzY1yxl' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id '7zeEpmSPO6KwlJQl' 'j9Ii2jARwzowk9Oo' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'iPdnq9KBqBwiNCsn' 'K8CcO1OHbpQZtwW3' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'EwLre1bL4dJnkRLJ' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'bMvOGSd7uMrmQ2Sa' 'Ld6M7TM3wnJyExuo' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement '5z9RAcYgYZb7cAak' 'JpqN6eubdp49JFwX' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "options": ["ZDtWbdkzPP47RcUI", "i2CoNj4EG2emxKQk", "8cBrt5E8k8rzDZ08"], "requestId": "j6ICP75cm8YDChFi", "useCount": 12}' 'zLvfQWC85MxWxvW0' 'veFl3uU1aMD0mczW' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement '{"requestId": "xc8f1s2QPMMZsf2d", "useCount": 43}' 'YFUS079tOpZYM1XV' '0Op0damycnTUOoMk' --login_with_auth "Bearer foo"
platform-public-split-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 32}' 'E2XCwTkRUIX6IFHN' 'mB9mYBvtOwxjqyrj' --login_with_auth "Bearer foo"
platform-public-transfer-user-entitlement '{"entitlementId": "DApeN5eAfRqSgH5x", "metadata": {"operationSource": "INVENTORY"}, "useCount": 41}' 'Zx5yMGIQ1ZxVIefY' 'lKBJyQMqUEfDikX6' --login_with_auth "Bearer foo"
platform-public-redeem-code '{"code": "yOlgZrn0I6T0hvcA", "language": "WvAa_phBj-nW", "region": "6uhonkAe0FdTSSEl"}' 'uBxM47BTww3nBTVm' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item '{"excludeOldTransactions": true, "language": "gFgv_Kf", "productId": "eNsYEqKkeuLWDfeF", "receiptData": "eExlOFjRh8mLFTJL", "region": "veQSDWnMQGaYRxFW", "transactionId": "ia7yJ2d87XjA0ajv"}' 'b7JcGUFgp6LkyXpx' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'JeFxhgTwyO51CUpc' --body '{"epicGamesJwtToken": "dxL0a9VDhrqWCTXO"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '{"autoAck": true, "autoConsume": true, "language": "PSYF_359", "orderId": "TE4toH57yr01N33p", "packageName": "1Gha8HwpagvERZI6", "productId": "CqhcknhecNv2Tw6Y", "purchaseTime": 74, "purchaseToken": "wphjUXvM1GqMkZ44", "region": "UXgdBqtJaRyDlP9q", "subscriptionPurchase": false}' '5Krx6KkHagEugKJx' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'kU8Y58COtTNjnNSi' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'kJDg6ujKvq0CIa1Y' --body '{"currencyCode": "CK9PlMeQprfgLGkH", "price": 0.8038620188420197, "productId": "1tdBjKmCBXETZwqd", "serviceLabel": 52}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels '{"currencyCode": "YUrLv4qUiTkFcLBr", "price": 0.09793608636967577, "productId": "2JB0WiCpVBwvAffJ", "serviceLabels": [40, 2, 19]}' '5R0yZSVQ8SSeJ4qy' --login_with_auth "Bearer foo"
platform-sync-steam-inventory '{"appId": "4PIKleuV271bwZ4n", "currencyCode": "iLSzQnv0C00dtNGG", "language": "WBa", "price": 0.7225223190599697, "productId": "Yo9fY2EBZAHQXc4X", "region": "cae7VKl0ARzGEArl", "steamId": "fE1NSmtcADoZvd0L"}' 'a7P4JI4H7uDzkOHT' --login_with_auth "Bearer foo"
platform-public-query-user-third-party-subscription 'APPLE' 'C3iqrkyJFOVaewFc' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 '{"gameId": "v9h31YxuZnoSesWp", "language": "Yvfi_TjYD", "region": "ZN28gH4Cd9xTdt2K"}' '1CzpQWslNGnLYUYR' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory '0yOvJhUjzcMtwINU' --body '{"currencyCode": "lrhIpnlam2EefVop", "price": 0.017658859186727938, "productId": "pPhsana0uXG7GUTV", "xstsToken": "1BwgkLDj4pjVktyo"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'NSsEHlzyd0Sarkhl' --login_with_auth "Bearer foo"
platform-public-create-user-order '{"currencyCode": "tUxgbN5eElQNESFL", "discountCodes": ["GwnDG8kz4kvEv6tN", "jGRhrmRAxRGeIKGl", "D8hCc9onSNjbQEqF"], "discountedPrice": 59, "ext": {"SeKCvtPz7jagBG9a": {}, "1TZ87ltClc3RDXF5": {}, "055tUlenimjIbm0r": {}}, "itemId": "iCaNp8dUBDinAB6H", "language": "ojG", "price": 1, "quantity": 58, "region": "Bvb1rcuEtWAF763k", "returnUrl": "ci7lT62BOHaso53W", "sectionId": "3U2Mu9ZGMWou1U0R"}' 'VCf3gMWDAodCKqfq' --login_with_auth "Bearer foo"
platform-public-preview-order-price '{"currencyCode": "zeexHA70NgJTxjtz", "discountCodes": ["gO7W3taRvJ6lKWJw", "3DwglyMGNll4O8EL", "HO65aOFDwpqy7XOU"], "discountedPrice": 0, "itemId": "CiiIoMZCjGiOZJpU", "price": 10, "quantity": 90}' '9RpcfEQn0O6D8PGQ' --login_with_auth "Bearer foo"
platform-public-get-user-order 'uazAypgWhTED5YmP' 'TBUkm2FyvdguCYVq' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'FyIKh1YtTY4AejyQ' 'c5Dac7hSLldWx5Dy' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'niVESUgrROrP1ip3' 'jNG68DByf2UMPtig' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'q9zOQOcAqBj0bXhO' 'r9OHt6zx1i2W3GY7' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'tdh8hHlQyMlgfkTs' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'AThLyflAqqAP4M78' 'paypal' 'l7eWrbNRE0xyYPUZ' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'HyLGQ52IjGpRJCUJ' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'pscOTkWETSJ04c5M' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription '{"currencyCode": "GInO4yznh2YpZvvm", "itemId": "ziSSiSpXeWOGayfR", "language": "Es_oJsV-357", "region": "ksfm7hcIFdkdrwAc", "returnUrl": "K2lUda9h9FgvfhiL", "source": "EAkA7n6516ydoRT1"}' 'qZBrdTnGrwHeWoQX' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'PFWFaKbDgrGkv8SV' 'wLyS4VbHJvD0lL7a' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'ZUY9d1Idud8bjYeB' 'VMr7zHYmRE4X36KU' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'OdfEmoIYwSxxAsfw' 'DMivWqHHGlnAnEu6' --login_with_auth "Bearer foo"
platform-public-cancel-subscription '{"immediate": true, "reason": "WRUlgE0kxzFMq9tt"}' 'bEHAEV7C65Ans9Sq' 'uNSJIay5VdUdYy9Y' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories '9OCSmmT3WKijbqhT' '3uyQRXvvcUYDeWPZ' --login_with_auth "Bearer foo"
platform-public-list-views '8yhwQ0gIdj1lTJdN' --login_with_auth "Bearer foo"
platform-public-get-wallet 'LmAvEdEBVAU3rbkv' '8V98cupW0L5WsiuI' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'TRMSPOUfWQwr4PYf' '48r66MaToxBiliy2' --login_with_auth "Bearer foo"
platform-public-get-my-dlc-content 'PSN' --login_with_auth "Bearer foo"
platform-query-fulfillments --login_with_auth "Bearer foo"
platform-query-items-v2 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'r2XdtSCG7ZExOoIp' --body '{"itemIds": ["WzacOvwUsnIbQM3Z", "AtyEWKWoZRUL7wS3", "HaMTXAX6y0STTN2s"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 '{"entitlementCollectionId": "BEijjjpvSzGkED0o", "entitlementOrigin": "Other", "metadata": {"HvFhRMCFJuA0DEMg": {}, "ykqqjoHTpIPMSRAu": {}, "PI7mSZQ5UDm1q51P": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "vaH9jwcO48pthyYp", "namespace": "BJDHIIxTIGI5EssY"}, "item": {"itemId": "llIqjJzuQ8GglVgx", "itemName": "jOGQGlHm8VTN56tJ", "itemSku": "KwD8O07L9GG1uenD", "itemType": "ihceaLdgPZI0fKW8"}, "quantity": 77, "type": "CURRENCY"}, {"currency": {"currencyCode": "5bzcfzIpL2pWB4Xs", "namespace": "drxIF6kEAmKGNEmF"}, "item": {"itemId": "PcUALNziO9Bz2wx4", "itemName": "kDAm8XIleiujtv2N", "itemSku": "dQTYoHZogW8lBvni", "itemType": "HdARadfSoctA3GYO"}, "quantity": 12, "type": "CURRENCY"}, {"currency": {"currencyCode": "Oo94gS5DHLB65fxQ", "namespace": "06GwTmobiBnfrnq9"}, "item": {"itemId": "kOFBWhUTPiKR3qcb", "itemName": "HLGplYsS3jsRZffC", "itemSku": "d00VrgPuNtOv3jbh", "itemType": "GBuW8KcyPMfDWSEE"}, "quantity": 31, "type": "CURRENCY"}], "source": "GIFT", "transactionId": "lmhMQUCx70QjYbze"}' 'mOTURzzAOIBarB7k' --login_with_auth "Bearer foo"
platform-fulfill-items '{"items": [{"duration": 4, "endDate": "1993-02-03T00:00:00Z", "entitlementCollectionId": "YmEIX40XOUoLOa7o", "entitlementOrigin": "Steam", "itemId": "sxx3c2bUsO7FP8Rm", "itemSku": "OstZAGDgiVsV2Ott", "language": "wJaMxPDIJ5hFQHum", "metadata": {"FvPKqupHj72TlLs9": {}, "64iABOgTKtnaA7O3": {}, "5Iaytd9CsAMTZC37": {}}, "orderNo": "xPXxnfggnZ3EZp6w", "origin": "Twitch", "quantity": 54, "region": "MTfqRRaZozM8xCBo", "source": "ACHIEVEMENT", "startDate": "1993-06-13T00:00:00Z", "storeId": "2FMwfWNCbN5GelVO"}, {"duration": 96, "endDate": "1997-09-20T00:00:00Z", "entitlementCollectionId": "hHnsCl5k6Jxh5mkm", "entitlementOrigin": "Playstation", "itemId": "zKg0jWCjpGwh7pLA", "itemSku": "i5JmzvM6JFKB8ikH", "language": "pl3sNRaDEC2OkXA3", "metadata": {"WqypoOw0H2s0sibQ": {}, "NBz81zRPntxpgi7t": {}, "XIcNEcGJjOCXpuix": {}}, "orderNo": "5vnPeTu9evbRov7B", "origin": "Nintendo", "quantity": 50, "region": "40CtZiAxk43DGV1S", "source": "REWARD", "startDate": "1971-03-28T00:00:00Z", "storeId": "gvwOI2LlOQNRN132"}, {"duration": 89, "endDate": "1996-01-23T00:00:00Z", "entitlementCollectionId": "SQ8Szi1IrGidRmR5", "entitlementOrigin": "Steam", "itemId": "3qlART9mPPmYUvlk", "itemSku": "BGPJFaFzkABC8zWM", "language": "cYW5iRrw32FRg8y4", "metadata": {"rOuj7J6ijJbcycXm": {}, "BcrJLb7labyotifV": {}, "k9KyqceGv0CEDTVS": {}}, "orderNo": "jINYeKLowG7UQB9p", "origin": "Nintendo", "quantity": 51, "region": "j6MF68VuKDoklYmk", "source": "REDEEM_CODE", "startDate": "1981-08-23T00:00:00Z", "storeId": "9TXNhN8y1PVriIyv"}]}' '9kjuiAGiXx47etMi' 'kLFggYDc2FMbzZoe' --login_with_auth "Bearer foo"
platform-retry-fulfill-items 'KagnKf2Yifzvr9Oq' 'TsInGzHFpFXYJtHt' --login_with_auth "Bearer foo"
platform-revoke-items 'qwoIwQBeIALI8JNI' 'II4jrzrPsuMziNM8' --login_with_auth "Bearer foo"
platform-v2-public-fulfill-apple-iap-item 'AB7RRxiZH3ngnitU' --body '{"transactionId": "RdMjZLYCaeklQcFY"}' --login_with_auth "Bearer foo"
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
echo "1..478"

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
    '1QIk1h5EKvMGd6hQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    '2mHjmLu4oFlReHy0' \
    --body '{"grantDays": "JyZv7honqeiGTTqp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'gVsY1kPNdJiJXB3y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'jNUPIfvoXRO0CkW1' \
    --body '{"grantDays": "ZcgUSbbnffBWRaJN"}' \
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
    '{"clazz": "1SjCFLDNJfAhJGwS", "dryRun": false, "fulfillmentUrl": "EZjEb0Pv35fEk9s1", "itemType": "BUNDLE", "purchaseConditionUrl": "bFXkf7rQJ4Kj7Qyo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'INGAMEITEM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'tUptiyZzRX8Y4rxR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    '{"clazz": "WZPe4ZLAQWuBJwxO", "dryRun": false, "fulfillmentUrl": "n7oInn1Bz3wM3BI5", "purchaseConditionUrl": "1etn17OcmSVHZ6wt"}' \
    'PVAwgvxYxXJTduZp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    '1nNYHREmm1cBuaRa' \
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
    '{"description": "GeM8yxRfejqSbVgL", "discountConfig": {"categories": [{"categoryPath": "d1FoyNFGpu5r2K0I", "includeSubCategories": true}, {"categoryPath": "ApA8GsGwyocvY9Ne", "includeSubCategories": false}, {"categoryPath": "jLJQJXwUApJWohXn", "includeSubCategories": false}], "currencyCode": "1RB7pu7BaONXyE5f", "currencyNamespace": "IDbsMi48xOYVvEcE", "discountAmount": 25, "discountPercentage": 59, "discountType": "PERCENTAGE", "items": [{"itemId": "pZxby2J9vGOUeSeG", "itemName": "b02vDPUpv5VEdIG8"}, {"itemId": "2dpIbfxVFfdvKQVg", "itemName": "PQw3MVXe4xBPDWHR"}, {"itemId": "HCCVDBRjPUQWYVxG", "itemName": "QVFJlDDJ7z4Pb5jy"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 60, "itemId": "hUwgQzNHUZ0l1FRf", "itemName": "OjJUmCbi2llksf6G", "quantity": 54}, {"extraSubscriptionDays": 26, "itemId": "8vTt92kldCoyRdiO", "itemName": "ikUdqGocLYBaRC7T", "quantity": 34}, {"extraSubscriptionDays": 58, "itemId": "Sl7WN3ncPkqiTKzz", "itemName": "72PKXjShM2DvesmM", "quantity": 71}], "maxRedeemCountPerCampaignPerUser": 3, "maxRedeemCountPerCode": 9, "maxRedeemCountPerCodePerUser": 17, "maxSaleCount": 85, "name": "QfaHxl2YUNRLRjgK", "redeemEnd": "1979-06-22T00:00:00Z", "redeemStart": "1993-05-03T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["depM3ap069B9Okr0", "xJ5XRZVoxPGOLVBI", "lFgTAsXgqx3mfB5Z"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'JB9Al3mn2DsHDHzS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '{"description": "VJzhU5Z44zgZ1fie", "discountConfig": {"categories": [{"categoryPath": "Ldl3Y82DOj5kPuNR", "includeSubCategories": true}, {"categoryPath": "ZaUccuBYep9n7b17", "includeSubCategories": false}, {"categoryPath": "gVvLSJvdsGpmmUeM", "includeSubCategories": false}], "currencyCode": "ZFH1fHFLSr0O4rEZ", "currencyNamespace": "TbFDj2L2McvCrrR7", "discountAmount": 15, "discountPercentage": 80, "discountType": "PERCENTAGE", "items": [{"itemId": "00KVuLF9WDnGO3bp", "itemName": "QWmnS52ZuuuI7F1x"}, {"itemId": "pVrcoXzSOEGEDYfi", "itemName": "GPYo2K3dN3YBOJfv"}, {"itemId": "V6SuHovoQlk5wL2o", "itemName": "XDZ20Bw2H4tz6KUC"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 67, "itemId": "Gj2G0GZ3JBYi9bBK", "itemName": "BRpdbLCiwxOx2XQn", "quantity": 72}, {"extraSubscriptionDays": 29, "itemId": "xPqXhqeNMDGA3O5h", "itemName": "QAl6U2g9imVMh3i7", "quantity": 19}, {"extraSubscriptionDays": 94, "itemId": "095rDL6lEuB1ZIMI", "itemName": "s1dFvYokH9t2u8ZZ", "quantity": 26}], "maxRedeemCountPerCampaignPerUser": 51, "maxRedeemCountPerCode": 69, "maxRedeemCountPerCodePerUser": 75, "maxSaleCount": 92, "name": "kk6Gh25tEcX9GegD", "redeemEnd": "1977-09-05T00:00:00Z", "redeemStart": "1979-07-18T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["FpSVdxFsXAp1rocl", "yXllFitPamSKRzDI", "ZgSk6suS90ZbDdmj"]}' \
    'U11QIZtkSn8QRbA5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
$PYTHON -m $MODULE 'platform-rename-batch' \
    '{"newName": "V4gjWv1W6cqnvSuK", "oldName": "swQ7vH8GScnP5QzR"}' \
    'BY1UrefgmVFBVz4K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
$PYTHON -m $MODULE 'platform-query-campaign-batch-names' \
    'RCU0p4jIt01gzH17' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'IcfJyGulmByN5rcD' \
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
    '{"appConfig": {"appName": "8WRjqYieXRthQZvz"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "9w8MJRIzIgJKg9y8"}, "extendType": "CUSTOM"}' \
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
    '{"appConfig": {"appName": "BgnBQtm5AilVhASF"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "b2UMWOgVeYkCvqq0"}, "extendType": "CUSTOM"}' \
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
    '{"categoryPath": "y9eALKWinUJ7bAuU", "localizationDisplayNames": {"J7Fxg5LijlQTVq8B": "h1p0NCKWNkLU5ty3", "uQa7Fl3ZhSMLtrwn": "jTJVDlh112byTYCD", "BnAvf8JpFuJSZist": "M75544PDlVK8taSc"}}' \
    'pV0NtCxDDz5rxt6L' \
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
    'flBJjokLAaL4oAF2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '{"localizationDisplayNames": {"lqx8yneWKrOy4xcg": "30BqC5W7g7hiwumJ", "TI3jlZPjoCdGiIP6": "cB3Pj63MJXIuLWYb", "2iHHVN0ZBgvrigXU": "T4fRbawD5yOvjgOo"}}' \
    'pQfbXmtF0WFH7F2I' \
    'nhxtynUjuBCxkb2o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'F99xI1VVtVrVT6Hn' \
    '8B2d1hZUnoQwg5uq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'goHaFyoczck0qJsg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'ZPfuelAiZBZcQGHH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'GI7csI8ecZSvzXYO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    '{"batchName": "ytshBcKQytQagui6", "codeValue": "lsKF28n7UC7y1MKY", "quantity": 98}' \
    'OgsAj2Rmf1DXvAIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
$PYTHON -m $MODULE 'platform-download' \
    'zTRNRVyeEGu1ICOC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'mLAmcaEFBKgy92LY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'qtQcDN7OMCehk42a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'cy8wsWaPyppR3ztP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'SALA8LlV2sccbVr6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'HSiXVzrG4EdKn8ey' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'pTzI497DG0ZNoJvv' \
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
    '{"currencyCode": "i4Ys50iE7IjZoDzM", "currencySymbol": "mMgoMxZZ9AutWDfV", "currencyType": "REAL", "decimals": 97, "localizationDescriptions": {"ql9CdDX4xiHpdfKH": "35RWUUVEHCB5wzF6", "oLIrAwjAsgo51XHJ": "BG2PmyeFaBiT3SyL", "HXZSyfjukWmkfkiF": "2GZPuyWBVH66JU1I"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    '{"localizationDescriptions": {"ICVNNRV4lBToTcn1": "l44ebrKEKdeo779K", "G5yCz9jVs1lYK1Mx": "9rEFkDqb31AZzwiQ", "BaGdS41VRIyAHjYx": "VhCbXbeBEoTlfR33"}}' \
    'jqIRoXcCPaLXJM2B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    '9bMohkWsFKIdycYH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'Qcu7JkKBcLFRf50Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    '7ME2QmYiYqap7mas' \
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
    '{"data": [{"id": "Ucayqmp7vhz1T6cS", "rewards": [{"currency": {"currencyCode": "rZL2CgHxdmYDj9vZ", "namespace": "NgfI1AeYHe8WPQGP"}, "item": {"itemId": "clChxLfbXrH6f2GD", "itemName": "rNbLOjGz34ct0ctE", "itemSku": "eH43wYuLnI7cTzIU", "itemType": "ERPlQI99hMc4NbiJ"}, "quantity": 100, "type": "ITEM"}, {"currency": {"currencyCode": "LMoAy1stmxPFz0i1", "namespace": "IK3QzkcRwFPpXGlK"}, "item": {"itemId": "R9ss8b8udl6fLkxF", "itemName": "nAqyvjBy0NXg7zd6", "itemSku": "SFpkV7cAICgWFJZG", "itemType": "nNa5yOM68r4W1fDZ"}, "quantity": 77, "type": "ITEM"}, {"currency": {"currencyCode": "80oPQ0s7QhC8hgSg", "namespace": "ytNEojK3YgWH9l7r"}, "item": {"itemId": "v6XUSINd4keCeiw7", "itemName": "P2PtUrPawQPaHARr", "itemSku": "hjbEU5n0PNuFyKW9", "itemType": "5dJsGoBIjCKlD3ax"}, "quantity": 90, "type": "ITEM"}]}, {"id": "ivItV1txLINmdHTG", "rewards": [{"currency": {"currencyCode": "LtX6TN5ctYX1sZnY", "namespace": "F3hWmCCIrP0lJXex"}, "item": {"itemId": "seo2e6BCNJTTRIHD", "itemName": "KdVfOUr14yZH00n8", "itemSku": "MsRjaB8iurBWW5jS", "itemType": "Ji0seeGJIqnatME8"}, "quantity": 66, "type": "ITEM"}, {"currency": {"currencyCode": "nNWfAY1yY6D1Euus", "namespace": "f0eOzoSyKttYwUUl"}, "item": {"itemId": "MRG8vO0OSsJmhOJD", "itemName": "Uyyag9jBDJFJGOEi", "itemSku": "WJ8cLrryS5a6A4tL", "itemType": "8YKMrUBL6dDTVwPI"}, "quantity": 41, "type": "ITEM"}, {"currency": {"currencyCode": "hrg2mhbI0NDshb7Z", "namespace": "zQuBPyNi1GhZHEj6"}, "item": {"itemId": "p5grjk5wzdksOUku", "itemName": "8dtQoIrpvmM19X4z", "itemSku": "FOvdRTpGmBUjfEU9", "itemType": "vL8H96tuVfQwYIqD"}, "quantity": 100, "type": "ITEM"}]}, {"id": "qbPmwQw8J7na1POT", "rewards": [{"currency": {"currencyCode": "XhXLRU5prAdqnnPO", "namespace": "iTVzAeQq6rnWJoTp"}, "item": {"itemId": "Yoe2uHaWnO98YwqH", "itemName": "ZnEDkfmNbDTMGgET", "itemSku": "2yS6C8a8L0vQDS4E", "itemType": "VpBmsUzx64Gr4XEm"}, "quantity": 39, "type": "ITEM"}, {"currency": {"currencyCode": "vBw81hUgtONCIoZ2", "namespace": "rkomSj52mAIMo6EW"}, "item": {"itemId": "9QhzU8FwQtZpfUoy", "itemName": "oiUjmqOyQ7ammFgH", "itemSku": "prdM9viFWmezrQOW", "itemType": "H03zyr7kRbC31YMJ"}, "quantity": 11, "type": "ITEM"}, {"currency": {"currencyCode": "RiD7djt1VeOFBDA3", "namespace": "gvCRfoBijpbMblGW"}, "item": {"itemId": "np94a6GKY0BrHiWs", "itemName": "0B0RhxQtgVgbN8kr", "itemSku": "872hJvrOCdAEZ2RH", "itemType": "t3uQ5nFrPXwxJZQp"}, "quantity": 21, "type": "CURRENCY"}]}]}' \
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
    '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"SXpU81S5H9XsZyvZ": "OFJ5RrFZYcwfQ1Q2", "BbcjSpv6Nt1oz4td": "gfKu4bmK8kOKcEoC", "RjQJlPY3p42OS9iG": "NElTpMlvRDZSIuM0"}}, {"platform": "OCULUS", "platformDlcIdMap": {"HPluvsry8AKSZxOh": "Uhl3Y0EshaG0uDiJ", "NUuxK22saWaGvrzB": "dLvFUBZDnVrcwbsD", "0RDLxWgEWwoHpV8E": "1xQZLa7Kw77UpCxN"}}, {"platform": "STEAM", "platformDlcIdMap": {"ee6wG66YPD4vNdEN": "Y1r1rI0T97qA1Oib", "lWlz2LXQNqcONcJI": "sYRQz97fRWI17eNP", "3Y2nWlS9Sfjh0hty": "VaGj4y9ahS7h7XVl"}}]}' \
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
    '{"entitlementGrantList": [{"collectionId": "mc5Rs5FVQSIqObR5", "endDate": "1973-06-13T00:00:00Z", "grantedCode": "Jfk0MeG3qYJr6PuC", "itemId": "VK9WmDAdpLVTVsj9", "itemNamespace": "pDiyybXY4v7JRFMR", "language": "Eu", "metadata": {"OXsg4jofp9PvlQ1x": {}, "dmr4JDpvZgvPGHjV": {}, "7MNTpM7fSods1zdV": {}}, "origin": "IOS", "quantity": 21, "region": "aWj58Othvd3jzMDA", "source": "GIFT", "startDate": "1989-10-02T00:00:00Z", "storeId": "0gKSizvmxts5HSQv"}, {"collectionId": "RAPG9JoVSLrbs5ni", "endDate": "1996-02-18T00:00:00Z", "grantedCode": "kjpkOgRCC7qfz5jV", "itemId": "7NTRYld9FJJ10goN", "itemNamespace": "q8uq79Du28SRRAMa", "language": "UgfA-KPlF-Cb", "metadata": {"ckSUon7awfol0769": {}, "6uxp5ieMjjOfFSx3": {}, "AJN97kUjwiCmWQvb": {}}, "origin": "Oculus", "quantity": 83, "region": "xQpUSnos6QiHyrcG", "source": "GIFT", "startDate": "1981-12-25T00:00:00Z", "storeId": "1VUuLmenyxTQVkEg"}, {"collectionId": "5wouUKa35m8oH9zC", "endDate": "1973-11-23T00:00:00Z", "grantedCode": "w7mCMkbvSIm7JROc", "itemId": "wVmGyrBpnTPF4VrR", "itemNamespace": "iFSPs2ZMcVFcrixU", "language": "auoE", "metadata": {"dhhkME18qGpSsyEP": {}, "DWHcqfYp2EFxEaEH": {}, "CGtg812NQb5Glh8s": {}}, "origin": "Oculus", "quantity": 92, "region": "TlTj61WdV2XUo1BO", "source": "PROMOTION", "startDate": "1995-09-05T00:00:00Z", "storeId": "jrcErgoApAxyDnHj"}], "userIds": ["Ax7rZTvew0WVDSMN", "r23LV7xZEEv7O1lw", "xVTRll0GIEUJtMC8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["NyV2HLHZT3oYJlC4", "ie3InnSA22NHTb4q", "XYyJUAlKlTwdJEPo"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'emVtmVXTs3tCu4F9' \
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
    --body '{"body": {"account": "IgDT2tq2V2lMzfIQ", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 68, "clientTransactionId": "dWPjYgyebU6rHFir"}, {"amountConsumed": 27, "clientTransactionId": "H0N2loTnRa0KiQWP"}, {"amountConsumed": 47, "clientTransactionId": "7gE4bwLzDEw2PYt8"}], "entitlementId": "x9SSaOZcEvG6KZh9", "usageCount": 17}, {"clientTransaction": [{"amountConsumed": 56, "clientTransactionId": "fphDw3p9QWqwTF2p"}, {"amountConsumed": 84, "clientTransactionId": "x11AS2jTKoTYeHaC"}, {"amountConsumed": 41, "clientTransactionId": "kEEXlKiTIDgP7wuX"}], "entitlementId": "QdfW99JglScoOlkk", "usageCount": 56}, {"clientTransaction": [{"amountConsumed": 21, "clientTransactionId": "xiXf8OBQRqXWXQ3J"}, {"amountConsumed": 7, "clientTransactionId": "EDRuYBnWiEsOnDfI"}, {"amountConsumed": 54, "clientTransactionId": "vijq9ix16vo60jgv"}], "entitlementId": "wV3C9hJ1kSZonK02", "usageCount": 99}], "purpose": "GWgccuzuc6QDRMGd"}, "originalTitleName": "BPbUyHTYPS8CGKXG", "paymentProductSKU": "on2ecc65YAFLweD9", "purchaseDate": "Z7U2lNkorrw9QH3r", "sourceOrderItemId": "NhDepQum4Dj7pR05", "titleName": "RTGXGRkYXifTd5nA"}, "eventDomain": "OF9VV7JgCOm4wL72", "eventSource": "9Hma0nCdCEFcf2do", "eventType": "BrfHiHXXgvu496H0", "eventVersion": 100, "id": "yOVN1h41jIPOMXuf", "timestamp": "ZPWSe20JfNvtNcWt"}' \
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
    '{"appAppleId": 32, "bundleId": "eVBnTrsYihhgbeAZ", "issuerId": "oFncMUdmf8hD3nL1", "keyId": "saQxLYrz08jh6Tyq", "password": "7WUilXgtf5UctyV3", "version": "V1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateAppleIAPConfig' test.out

#- 75 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteAppleIAPConfig' test.out

#- 76 UpdateAppleP8File
$PYTHON -m $MODULE 'platform-update-apple-p8-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'UpdateAppleP8File' test.out

#- 77 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'GetEpicGamesIAPConfig' test.out

#- 78 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    '{"sandboxId": "DODBmrqEhGlkEmGd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UpdateEpicGamesIAPConfig' test.out

#- 79 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'DeleteEpicGamesIAPConfig' test.out

#- 80 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetGoogleIAPConfig' test.out

#- 81 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    '{"applicationName": "CbwodVRjZJWuCQpj", "notificationTokenAudience": "uJzpPO7BPxVWlRFn", "notificationTokenEmail": "IekrQ99ecmenxguw", "packageName": "5bO8Vh4JaKYAsoMl", "serviceAccountId": "LJGMl5xFgLj4mCSh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'UpdateGoogleIAPConfig' test.out

#- 82 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'DeleteGoogleIAPConfig' test.out

#- 83 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateGoogleP12File' test.out

#- 84 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetIAPItemConfig' test.out

#- 85 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    '{"data": [{"itemIdentity": "MFlbrRGjoBQ45Za4", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"R4S3iac6vLeoIULJ": "lWXmQFlef1tSHJf6", "sVpwAAKKqmTy0ZSy": "J7IIUXlBlZMQeSnO", "g5gf1SwrbpmoF4Dv": "NA1wo9IAxV5C71gT"}}, {"itemIdentity": "w8BJPFctwUMCRdxX", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"ekbO0sk7o1z37uuq": "LDQF12kYfBqeQxos", "58kVk7F1KKOfFFLv": "ER3xqCwUgKa4oCBo", "JDxGa1UuSr4ehnV8": "Aw9m6GvDSE2F7Ad6"}}, {"itemIdentity": "9Dln4mqFhgKKcGoh", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"IPK6mVytM5mBRT39": "gKYLk9DmjJh6PnpT", "XWAUt8lgqNM4poGE": "vIKCe3MrLxmnjmlA", "uaBCdhzXb6cBMPNM": "mjMi2uztFNfXg0Uv"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'UpdateIAPItemConfig' test.out

#- 86 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'DeleteIAPItemConfig' test.out

#- 87 GetOculusIAPConfig
$PYTHON -m $MODULE 'platform-get-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetOculusIAPConfig' test.out

#- 88 UpdateOculusIAPConfig
$PYTHON -m $MODULE 'platform-update-oculus-iap-config' \
    '{"appId": "waZ0py16ShGomFzU", "appSecret": "appaaODZaZ6Vzztn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdateOculusIAPConfig' test.out

#- 89 DeleteOculusIAPConfig
$PYTHON -m $MODULE 'platform-delete-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'DeleteOculusIAPConfig' test.out

#- 90 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetPlayStationIAPConfig' test.out

#- 91 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    '{"backOfficeServerClientId": "ntoxwsNtNxWoH5wV", "backOfficeServerClientSecret": "HJVaEnaycYsKkgX0", "enableStreamJob": true, "environment": "MDxvlK9RnTEYv5eD", "streamName": "hCxwy85vlhWw1RCg", "streamPartnerName": "Hr3f6UqFGCvsMFEF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UpdatePlaystationIAPConfig' test.out

#- 92 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DeletePlaystationIAPConfig' test.out

#- 93 ValidateExistedPlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-existed-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'ValidateExistedPlaystationIAPConfig' test.out

#- 94 ValidatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-playstation-iap-config' \
    '{"backOfficeServerClientId": "lXHBOK1RqtKYVObV", "backOfficeServerClientSecret": "orIVWWLaVJwe2KAc", "enableStreamJob": false, "environment": "EhjJZbwMHkFWLSzm", "streamName": "AXAruYrVjX4HRTvm", "streamPartnerName": "3Qr9IkuW6jjofc6i"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'ValidatePlaystationIAPConfig' test.out

#- 95 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'GetSteamIAPConfig' test.out

#- 96 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    '{"appId": "tDEsq0dHfYG6k853", "publisherAuthenticationKey": "GERdJdphepF9dfsn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'UpdateSteamIAPConfig' test.out

#- 97 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'DeleteSteamIAPConfig' test.out

#- 98 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'GetTwitchIAPConfig' test.out

#- 99 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    '{"clientId": "g9FGGjJ0hRPUBFxM", "clientSecret": "2Fr3olO10RAyIZs2", "organizationId": "VfCRhzfKDAGIAJuP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'UpdateTwitchIAPConfig' test.out

#- 100 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'DeleteTwitchIAPConfig' test.out

#- 101 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'GetXblIAPConfig' test.out

#- 102 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    '{"relyingPartyCert": "hQcZwXRE9FOZUVTf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'UpdateXblIAPConfig' test.out

#- 103 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'DeleteXblAPConfig' test.out

#- 104 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'UpdateXblBPCertFile' test.out

#- 105 QueryThirdPartyNotifications
$PYTHON -m $MODULE 'platform-query-third-party-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'QueryThirdPartyNotifications' test.out

#- 106 QueryThirdPartySubscription
$PYTHON -m $MODULE 'platform-query-third-party-subscription' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'QueryThirdPartySubscription' test.out

#- 107 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'Dc3w1tAXRrQtHkm0' \
    'Tthcx9W7PkFNVa7c' \
    'zD4wybVjqOKrqYGx' \
    'APP' \
    '9s7ktWkJDaHg6kDV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'DownloadInvoiceDetails' test.out

#- 108 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'jxhxRxjeDrqCfJEj' \
    'rqJkFoZFZex0eOw3' \
    '1PXkVnetcvAuim14' \
    'CODE' \
    'dh1qKoSDBbyqlJyf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GenerateInvoiceSummary' test.out

#- 109 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    '{"categoryPath": "VgaW6ziZF6ijZzA3", "targetItemId": "MkosOcoAcV0T2G3v", "targetNamespace": "QZNiqaXzRBra3I4K"}' \
    '9iBdljXtowifBfAw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'SyncInGameItem' test.out

#- 110 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '{"appId": "30kOykBuDJ0IPQeA", "appType": "DLC", "baseAppId": "4MZwEVJe7waGyB6g", "boothName": "2M5JiwtMOfDfoMgU", "categoryPath": "2yFBTPfnmfN5E20O", "clazz": "RMCVBTrkvObsiHQg", "displayOrder": 39, "entitlementType": "CONSUMABLE", "ext": {"OfL6AcBPjUYURB3R": {}, "src0qvV8Gq1cw3yt": {}, "GWVKPoA1aKRZM1Ot": {}}, "features": ["d6vdgfrNiGrH0hDj", "5J0IOZmnpzwHhig9", "0PWppB2H0G8Xko9l"], "flexible": true, "images": [{"as": "6IYpfINzNjk5V8T9", "caption": "pQjnGB83yonudf21", "height": 12, "imageUrl": "YMeN2W2CNqmO8JAL", "smallImageUrl": "tCiDuGQQsvWV3NSj", "width": 31}, {"as": "UXSMKY09x4TKOwsy", "caption": "RNnaLNhw0xGnXc29", "height": 96, "imageUrl": "ttDREDWbOM3xQara", "smallImageUrl": "aEVt3vsBCXpIgQzk", "width": 99}, {"as": "YsITcyT5AhNNH0Ht", "caption": "1yPtBwXIuYrbPUcv", "height": 63, "imageUrl": "8ps5XknDJZK5gFHy", "smallImageUrl": "IOnLu9WBAS0qUswy", "width": 55}], "inventoryConfig": {"customAttributes": {"KrWQ3pgbHM0Svy3G": {}, "RenDzwlTE9Czhnck": {}, "3GnyPFQHgn9jVE6Q": {}}, "serverCustomAttributes": {"GkZ8AVzeiaDi67E3": {}, "rTwN2LrT85Arfe6E": {}, "weJxWANt1bDay64E": {}}, "slotUsed": 27}, "itemIds": ["vEsU5QkmsmfFhPTf", "XVzS3hFUXbdYU08B", "QZXTcZnHoYaII5c5"], "itemQty": {"UqVvKR3ydSEb2trP": 20, "jBy9oWPcMIQc5lRQ": 29, "NAydb6GgyFczEOMX": 64}, "itemType": "BUNDLE", "listable": true, "localizations": {"T1sU9xsmACLFHrXW": {"description": "FobqnDkfPAHNgVss", "localExt": {"4JzVKSusdLumoHh8": {}, "TQWYk2vD3mUDwtTF": {}, "1ATVQnAexrRomTZF": {}}, "longDescription": "HX4cgtkxEx6tlxks", "title": "0yGW8qDWfr7MF8Pt"}, "q10XBhcJfG9qYAEp": {"description": "R44fWWEsCETqKlcF", "localExt": {"caL6XOoO3WqBsbDm": {}, "sTk9UuiQwezvArAK": {}, "JwZGVyknpOhuGhAn": {}}, "longDescription": "lnjyPBj7h3hncU5v", "title": "gL62RA2BI7knizQ4"}, "Jx8In4w8yRFOLeTQ": {"description": "yplscfsZvvUpCMJR", "localExt": {"liFCmFC9uUxSxI4y": {}, "yrZIV9M22gRLsc6J": {}, "wt190s6yFiDZs0wy": {}}, "longDescription": "ldbDDntsSQ8DEsKT", "title": "6Mw5xDz8asARtI3T"}}, "lootBoxConfig": {"rewardCount": 98, "rewards": [{"lootBoxItems": [{"count": 30, "duration": 97, "endDate": "1996-12-12T00:00:00Z", "itemId": "7HDb8g2BhzW03O2p", "itemSku": "p9qVpZbsppRsBWQ7", "itemType": "RdYqZaQ8swcFOshi"}, {"count": 99, "duration": 30, "endDate": "1986-09-13T00:00:00Z", "itemId": "en8CjEhtRcnVsYOw", "itemSku": "ypw6F21uYowkPNGA", "itemType": "Njli9XZkbrkh3dQN"}, {"count": 39, "duration": 43, "endDate": "1988-06-24T00:00:00Z", "itemId": "EwCcfPmWjX540aN2", "itemSku": "pvOi5UG7agVhXIgo", "itemType": "HE9eEvIyV2DqxWhS"}], "name": "V3r9vk4HQDiwqJUZ", "odds": 0.5349724344274266, "type": "REWARD_GROUP", "weight": 45}, {"lootBoxItems": [{"count": 66, "duration": 68, "endDate": "1992-11-10T00:00:00Z", "itemId": "y5zGebVw9nLvVm8U", "itemSku": "eFUbaGb5on2kvdeu", "itemType": "5DfAxsrX7OiSRs0z"}, {"count": 46, "duration": 90, "endDate": "1988-06-20T00:00:00Z", "itemId": "A8fTlbfUOSmR4F0p", "itemSku": "5g7b3MegxV9JnAJS", "itemType": "u3MX2yYJopKxd9Mt"}, {"count": 78, "duration": 67, "endDate": "1978-11-15T00:00:00Z", "itemId": "ZGkBNXT0feu7KKPX", "itemSku": "unBZiqYaReD04717", "itemType": "oGCmrTUcZy3DDSxp"}], "name": "WZV6J5QloYCaB5Im", "odds": 0.24500074708347697, "type": "REWARD", "weight": 31}, {"lootBoxItems": [{"count": 36, "duration": 69, "endDate": "1978-10-18T00:00:00Z", "itemId": "JNZmgEGzqDHdLpDj", "itemSku": "LIhvCNlBRcFsa03N", "itemType": "qu13LgD6kOUZXQKR"}, {"count": 93, "duration": 65, "endDate": "1995-12-17T00:00:00Z", "itemId": "s3hgmxOOzP7vteUY", "itemSku": "zMZzggFcJQkYueQL", "itemType": "LJPh6HpodpzuBQwT"}, {"count": 92, "duration": 93, "endDate": "1974-03-08T00:00:00Z", "itemId": "qr03Mp14S8HG9ID7", "itemSku": "mZ4eKHaAP4PYToJA", "itemType": "MgJkC8UGlqb7cexe"}], "name": "EhHz7OKYNIMPTFnr", "odds": 0.030977701006588143, "type": "REWARD", "weight": 37}], "rollFunction": "DEFAULT"}, "maxCount": 7, "maxCountPerUser": 50, "name": "ru1PotArVtIQyxp1", "optionBoxConfig": {"boxItems": [{"count": 29, "duration": 2, "endDate": "1977-02-12T00:00:00Z", "itemId": "HvRIiJgGrdz6Ar6Z", "itemSku": "MGUI9Z0Fol65yD1d", "itemType": "LBQJcBsvUaK2iHOk"}, {"count": 13, "duration": 50, "endDate": "1988-02-27T00:00:00Z", "itemId": "bWTfPplY43FQpfFW", "itemSku": "m8VMHjC8qrxvZsJd", "itemType": "3RBYL4PAqdviBvTo"}, {"count": 91, "duration": 46, "endDate": "1993-04-13T00:00:00Z", "itemId": "EqHUhHn1qP3G2kSI", "itemSku": "urSOWI2donULQokd", "itemType": "CSsp87x6Jfe5YAYJ"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 2, "fixedTrialCycles": 67, "graceDays": 68}, "regionData": {"UdtB5G8NITA0g58c": [{"currencyCode": "qZn79u2grirdqELb", "currencyNamespace": "dqXaPlAMGm4h3PbL", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1987-01-05T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1979-01-04T00:00:00Z", "expireAt": "1975-01-07T00:00:00Z", "price": 88, "purchaseAt": "1983-08-01T00:00:00Z", "trialPrice": 33}, {"currencyCode": "91csvlQSS6PyDb3v", "currencyNamespace": "KbCw9eAGmM6lPAJM", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1984-06-01T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1976-06-14T00:00:00Z", "expireAt": "1985-04-12T00:00:00Z", "price": 55, "purchaseAt": "1972-07-21T00:00:00Z", "trialPrice": 74}, {"currencyCode": "kbAWDUac65Jdlm1J", "currencyNamespace": "JwmCAjTwtCqKdh92", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1981-10-01T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1974-07-09T00:00:00Z", "expireAt": "1990-08-23T00:00:00Z", "price": 22, "purchaseAt": "1981-08-03T00:00:00Z", "trialPrice": 14}], "UKmP7eczfnYgOqXh": [{"currencyCode": "JZ6DIokID1ZFk9fR", "currencyNamespace": "CHfId0Dhnin8RxnO", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1982-06-01T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1999-10-31T00:00:00Z", "expireAt": "1987-02-07T00:00:00Z", "price": 50, "purchaseAt": "1999-03-26T00:00:00Z", "trialPrice": 16}, {"currencyCode": "FXDdcUuEE9wh4CEO", "currencyNamespace": "rPY29A1L1Xijb7GT", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1972-05-16T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1984-07-01T00:00:00Z", "expireAt": "1995-09-18T00:00:00Z", "price": 75, "purchaseAt": "1974-01-25T00:00:00Z", "trialPrice": 24}, {"currencyCode": "GHG9MBp1AEcNUzfW", "currencyNamespace": "wpdraZO1lfHzX5CH", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1995-11-08T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1990-02-14T00:00:00Z", "expireAt": "1994-01-10T00:00:00Z", "price": 24, "purchaseAt": "1988-12-22T00:00:00Z", "trialPrice": 88}], "SLj5xwmP8QMJJJn2": [{"currencyCode": "Lqw6aiKZbUJQ92BT", "currencyNamespace": "ViMMFji1GmfmwhN2", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1983-09-20T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1994-12-17T00:00:00Z", "expireAt": "1971-12-23T00:00:00Z", "price": 5, "purchaseAt": "1997-04-19T00:00:00Z", "trialPrice": 16}, {"currencyCode": "wlbMGheYVteLiiIK", "currencyNamespace": "Pjokv6HMQOekLKHz", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1994-06-29T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1986-11-11T00:00:00Z", "expireAt": "1973-08-20T00:00:00Z", "price": 74, "purchaseAt": "1982-01-23T00:00:00Z", "trialPrice": 53}, {"currencyCode": "kbV2y32kG5QTZnpx", "currencyNamespace": "Ya2jDp3LzelXaUz9", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1989-07-27T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1976-07-26T00:00:00Z", "expireAt": "1982-09-13T00:00:00Z", "price": 56, "purchaseAt": "1991-08-04T00:00:00Z", "trialPrice": 74}]}, "saleConfig": {"currencyCode": "29DPhYa8Ksjfnk7H", "price": 74}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "kEKqQ4ToqWjpaECY", "stackable": false, "status": "INACTIVE", "tags": ["rcuIH9i4ICwRHM51", "8oPa2glj6rHbkWMD", "7fBJaU43PzOITmqj"], "targetCurrencyCode": "SiPRcEyfbUswXLyV", "targetNamespace": "VZqZpYAdyPafGBlw", "thumbnailUrl": "nYRpUkTKjXxvgslv", "useCount": 79}' \
    'gTvrGllrcttK4Wgz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'CreateItem' test.out

#- 111 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'dUhB2YhKWidqRPQ1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'GetItemByAppId' test.out

#- 112 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'QueryItems' test.out

#- 113 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'ListBasicItemsByFeatures' test.out

#- 114 GetItems
$PYTHON -m $MODULE 'platform-get-items' \
    'hSmShNaSmVFsmFW7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'GetItems' test.out

#- 115 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    '4DkabvmYAT6qTg6Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'GetItemBySku' test.out

#- 116 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'OaTNC1LAentTXWyB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetLocaleItemBySku' test.out

#- 117 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'mb2Ir2yOaVvE1N52' \
    'PwdeTQhMz99aZ3fz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'GetEstimatedPrice' test.out

#- 118 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'a0rlzqNhVNwgXBCZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'GetItemIdBySku' test.out

#- 119 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetBulkItemIdBySkus' test.out

#- 120 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'r4m1UpizE7fm00IB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'BulkGetLocaleItems' test.out

#- 121 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetAvailablePredicateTypes' test.out

#- 122 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    '{"itemIds": ["0YnQ5xpjcMxUGokG", "4VQKR0ItcCnXFRjh", "k7tzIHqZpgJqlw44"]}' \
    '1XUfp7AVnf8BzBBq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'ValidateItemPurchaseCondition' test.out

#- 123 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'EvMtJopw2r5pKsXn' \
    --body '{"changes": [{"itemIdentities": ["IYkKH6MNrEsOlIFw", "6Fqa6YXBlVXOvZUg", "W2ZMVJhOyVaO1sgn"], "itemIdentityType": "ITEM_ID", "regionData": {"EULHtVtkZrE0YPmt": [{"currencyCode": "E6fcv3nPROvD1Fiq", "currencyNamespace": "EUhsD6QxKzbZ7xvb", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1972-01-09T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1999-11-25T00:00:00Z", "discountedPrice": 71, "expireAt": "1989-09-01T00:00:00Z", "price": 78, "purchaseAt": "1980-09-13T00:00:00Z", "trialPrice": 7}, {"currencyCode": "vZSqh6SjLdDyVf6i", "currencyNamespace": "rpvxpCXFlM52jb80", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1992-06-28T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1991-03-07T00:00:00Z", "discountedPrice": 22, "expireAt": "1972-02-28T00:00:00Z", "price": 45, "purchaseAt": "1995-02-07T00:00:00Z", "trialPrice": 89}, {"currencyCode": "e6pVMS5m8aRIev5s", "currencyNamespace": "4q7UwwraCDr326Q6", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1983-12-05T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1972-03-21T00:00:00Z", "discountedPrice": 92, "expireAt": "1991-10-26T00:00:00Z", "price": 94, "purchaseAt": "1976-12-20T00:00:00Z", "trialPrice": 37}], "Do4ih358Lf5RXgVF": [{"currencyCode": "rsR55cpOV3Qg6eU0", "currencyNamespace": "Mc21ZZliCydumMW9", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1976-09-30T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1987-02-20T00:00:00Z", "discountedPrice": 1, "expireAt": "1972-09-22T00:00:00Z", "price": 64, "purchaseAt": "1994-02-08T00:00:00Z", "trialPrice": 33}, {"currencyCode": "hy5TZFoyfZ0XfCxP", "currencyNamespace": "DcH66JWKmTRqrvfJ", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1981-09-17T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1992-12-24T00:00:00Z", "discountedPrice": 99, "expireAt": "1988-08-29T00:00:00Z", "price": 37, "purchaseAt": "1985-12-12T00:00:00Z", "trialPrice": 85}, {"currencyCode": "FygQvoX9pEJ3R0cu", "currencyNamespace": "QGjCShSTNyM9yuMO", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1990-02-17T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1991-05-08T00:00:00Z", "discountedPrice": 50, "expireAt": "1972-07-17T00:00:00Z", "price": 64, "purchaseAt": "1975-05-15T00:00:00Z", "trialPrice": 53}], "K4FBJG8BfuSzytkP": [{"currencyCode": "E6mw3Zv0zD14WsQt", "currencyNamespace": "5oimAfS3Sh33TufY", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1999-12-07T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1982-04-12T00:00:00Z", "discountedPrice": 100, "expireAt": "1981-08-04T00:00:00Z", "price": 21, "purchaseAt": "1977-01-02T00:00:00Z", "trialPrice": 61}, {"currencyCode": "zo8gxMqM1wUdXsMj", "currencyNamespace": "UbhRjnDrYWlRfPpg", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1990-01-25T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1991-08-03T00:00:00Z", "discountedPrice": 85, "expireAt": "1973-03-09T00:00:00Z", "price": 28, "purchaseAt": "1979-11-22T00:00:00Z", "trialPrice": 45}, {"currencyCode": "3ThREYkndZIrjnju", "currencyNamespace": "CHkx8hm2178A4NUD", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1979-07-04T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1988-01-22T00:00:00Z", "discountedPrice": 63, "expireAt": "1976-09-23T00:00:00Z", "price": 31, "purchaseAt": "1981-01-01T00:00:00Z", "trialPrice": 96}]}}, {"itemIdentities": ["DLEk9RkumkrnY4Lk", "sFD2le3UGhQnnmMg", "k0WYv2NTpSejfbYn"], "itemIdentityType": "ITEM_ID", "regionData": {"YaLVuL1mLP65pId3": [{"currencyCode": "6F25c13PNqPn7XRl", "currencyNamespace": "nqiWP9WWQMGmm0bi", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1990-09-03T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1984-03-05T00:00:00Z", "discountedPrice": 81, "expireAt": "1986-11-17T00:00:00Z", "price": 38, "purchaseAt": "1995-11-30T00:00:00Z", "trialPrice": 52}, {"currencyCode": "Fy4ilLbKzQFBHQ0F", "currencyNamespace": "HWOul5WKkzjzRnLL", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1978-09-24T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1987-06-13T00:00:00Z", "discountedPrice": 91, "expireAt": "1998-08-03T00:00:00Z", "price": 59, "purchaseAt": "1971-09-22T00:00:00Z", "trialPrice": 38}, {"currencyCode": "jz0yLelzMzWiPzug", "currencyNamespace": "dDu6rxIv2ZMtZX5K", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1977-06-13T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1996-07-29T00:00:00Z", "discountedPrice": 30, "expireAt": "1983-07-14T00:00:00Z", "price": 76, "purchaseAt": "1977-08-18T00:00:00Z", "trialPrice": 63}], "Sh2QJWgWvIZGJOPk": [{"currencyCode": "JvsZhfMwJPOcRFJT", "currencyNamespace": "eKbAMIJChPyIhVPm", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1997-07-23T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1979-11-23T00:00:00Z", "discountedPrice": 52, "expireAt": "1990-07-31T00:00:00Z", "price": 8, "purchaseAt": "1995-07-07T00:00:00Z", "trialPrice": 100}, {"currencyCode": "SNhnabXGs0qawVMp", "currencyNamespace": "Ru5wP9CTLKxi1BjF", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1997-10-10T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1980-10-20T00:00:00Z", "discountedPrice": 82, "expireAt": "1973-09-11T00:00:00Z", "price": 74, "purchaseAt": "1995-06-13T00:00:00Z", "trialPrice": 1}, {"currencyCode": "tZpZZn6egDbFDXW3", "currencyNamespace": "N42ccGURTnJUdR3M", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1996-09-01T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1973-08-29T00:00:00Z", "discountedPrice": 54, "expireAt": "1998-11-17T00:00:00Z", "price": 89, "purchaseAt": "1984-11-20T00:00:00Z", "trialPrice": 19}], "qidgD0wxHpQyntHs": [{"currencyCode": "I11lC6BXyQW3eG0B", "currencyNamespace": "vuCoP1hIpdIWajZT", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1985-05-26T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1994-12-09T00:00:00Z", "discountedPrice": 94, "expireAt": "1975-07-31T00:00:00Z", "price": 93, "purchaseAt": "1991-06-06T00:00:00Z", "trialPrice": 73}, {"currencyCode": "8oRoQRf0A1eAJUZS", "currencyNamespace": "jWUPA9vXrqLxUCyN", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1972-10-09T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1994-09-14T00:00:00Z", "discountedPrice": 93, "expireAt": "1987-11-10T00:00:00Z", "price": 49, "purchaseAt": "1989-03-18T00:00:00Z", "trialPrice": 81}, {"currencyCode": "U9tfr6NkPjb60b0Y", "currencyNamespace": "8RDVgsQzaeOv7xB8", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1991-10-17T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1973-08-09T00:00:00Z", "discountedPrice": 97, "expireAt": "1975-04-22T00:00:00Z", "price": 75, "purchaseAt": "1993-02-13T00:00:00Z", "trialPrice": 69}]}}, {"itemIdentities": ["KXqYE8GuKFRwAkAy", "YY8hSNUTpzSm7jdr", "PdkMMoylrI7DpmCI"], "itemIdentityType": "ITEM_ID", "regionData": {"UahjPVDOEmwpWiJY": [{"currencyCode": "xvvQCHIreoYDgNe1", "currencyNamespace": "RyydtCBznu3BT2fe", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1980-01-20T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1991-09-16T00:00:00Z", "discountedPrice": 95, "expireAt": "1983-03-31T00:00:00Z", "price": 45, "purchaseAt": "1972-12-26T00:00:00Z", "trialPrice": 46}, {"currencyCode": "J3ebbfa3ep8cKNlb", "currencyNamespace": "024FzQsBlwn2pN8v", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1974-08-11T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1978-04-09T00:00:00Z", "discountedPrice": 22, "expireAt": "1976-06-12T00:00:00Z", "price": 14, "purchaseAt": "1987-08-05T00:00:00Z", "trialPrice": 41}, {"currencyCode": "6L7Wl7UfG3PbsgYD", "currencyNamespace": "gJ0JRrcPbe1REA4k", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1989-11-15T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1976-08-19T00:00:00Z", "discountedPrice": 98, "expireAt": "1976-03-30T00:00:00Z", "price": 52, "purchaseAt": "1978-06-04T00:00:00Z", "trialPrice": 27}], "DX7CWEoHK3yLZSpy": [{"currencyCode": "dGfNnNFMfXpIPlca", "currencyNamespace": "ufemZ4xlGtWc5UcG", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1978-02-01T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1991-02-09T00:00:00Z", "discountedPrice": 13, "expireAt": "1974-07-20T00:00:00Z", "price": 12, "purchaseAt": "1988-03-26T00:00:00Z", "trialPrice": 71}, {"currencyCode": "YsZ1L6IGHuO7u2tO", "currencyNamespace": "Upmu6zULXQMirzwM", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1975-08-08T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1992-10-27T00:00:00Z", "discountedPrice": 61, "expireAt": "1994-09-26T00:00:00Z", "price": 27, "purchaseAt": "1973-10-06T00:00:00Z", "trialPrice": 54}, {"currencyCode": "WyBg5c3Wq2dGygLo", "currencyNamespace": "40eCb82j4OhaAiWk", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1978-01-20T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1975-03-20T00:00:00Z", "discountedPrice": 48, "expireAt": "1975-03-17T00:00:00Z", "price": 58, "purchaseAt": "1978-03-28T00:00:00Z", "trialPrice": 73}], "zg7q7bMwxVAujRx0": [{"currencyCode": "pyulY8igLWA7yUan", "currencyNamespace": "MI437Ne6WvRNtbN9", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1978-02-10T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1989-01-29T00:00:00Z", "discountedPrice": 30, "expireAt": "1987-12-06T00:00:00Z", "price": 86, "purchaseAt": "1998-01-23T00:00:00Z", "trialPrice": 87}, {"currencyCode": "TDqm0SXzXNqw2oEp", "currencyNamespace": "tJsPYgvPnAlN2mJe", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1993-08-04T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1980-03-18T00:00:00Z", "discountedPrice": 55, "expireAt": "1979-01-30T00:00:00Z", "price": 80, "purchaseAt": "1997-10-10T00:00:00Z", "trialPrice": 76}, {"currencyCode": "RveArOFED1MAfVZh", "currencyNamespace": "ADFM15pfl1N2CNDu", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1982-05-03T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1987-06-06T00:00:00Z", "discountedPrice": 89, "expireAt": "1989-05-21T00:00:00Z", "price": 83, "purchaseAt": "1974-02-19T00:00:00Z", "trialPrice": 59}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'BulkUpdateRegionData' test.out

#- 124 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'VnrneQPU35uuCoR3' \
    'Wc6j3UqRICnmZxob' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'SearchItems' test.out

#- 125 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'QueryUncategorizedItems' test.out

#- 126 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    '6vepvgW3Vmnz3Wsg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'GetItem' test.out

#- 127 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    '{"appId": "PS6R3Uev7bCsylPZ", "appType": "SOFTWARE", "baseAppId": "TVivHbcJX1mqJ4Bt", "boothName": "ZCHdlmOzx9DrwT5d", "categoryPath": "JMDgZPQtuRIVY69d", "clazz": "hSr3JiNweUidBVB2", "displayOrder": 45, "entitlementType": "DURABLE", "ext": {"yC482FeT76mWyDrm": {}, "G0FHQOjtRg7ST2UV": {}, "RJN0qFJaGDiDmatC": {}}, "features": ["hjyI7ALyZHQ8V4Ae", "jtUM6llcl5hdZoPh", "vCembJFNyIwxPt19"], "flexible": false, "images": [{"as": "cQ4wXeArPe089cqM", "caption": "uV8MLxiTO3GhLJ2q", "height": 48, "imageUrl": "hbxnIuxtrWKvmz0R", "smallImageUrl": "zwVRhRmllqqWYgDW", "width": 3}, {"as": "eP7fy5Y0RiyzWJZA", "caption": "ZHklGmHH8I1l3xgo", "height": 97, "imageUrl": "y4LtkYsyCJFj0ayz", "smallImageUrl": "ojVNIrqZCtbJmJSU", "width": 1}, {"as": "xUXpiOLFQFxY4AHL", "caption": "zQnClUtkXb0SoMLq", "height": 17, "imageUrl": "x6dbDNBB9LNziCP1", "smallImageUrl": "xQygVqAioKka1tx5", "width": 53}], "inventoryConfig": {"customAttributes": {"oOOkHmCFldZ0XAvF": {}, "itLhI0sqjfua9x08": {}, "SJmn2gM2q6wuaHln": {}}, "serverCustomAttributes": {"k9AFkbwVa7DCVegP": {}, "EDDuHxwEbPLfnjlM": {}, "fDJxP4S8TNhXBTiw": {}}, "slotUsed": 90}, "itemIds": ["YbPsF33KhfoL7PlF", "t47mQAQQzQAxQ8GR", "gWKOBJYYXgFmEZ8k"], "itemQty": {"WtzrSIfMjxzBwWKz": 72, "mwcYLuVxqvaL6vdJ": 36, "YSr7IVc2WJyX67v7": 73}, "itemType": "APP", "listable": true, "localizations": {"rppNGl78VMGk3b5E": {"description": "1GgAqoQkgiht0lsg", "localExt": {"1U1DExMK4z32P13a": {}, "QRTMzFLsBDzdO8Iw": {}, "GdLKPo5zR4q58Tka": {}}, "longDescription": "2qLo5spq850ZKnX3", "title": "Inv5lG8WEklkFFkJ"}, "Pn2yomTQth1iJOyD": {"description": "ZJCwufYAURyXVoJ9", "localExt": {"qEel6x5O5otpujfw": {}, "64GJDWklFkqhGFAo": {}, "xfL2vrevlUaCgxl0": {}}, "longDescription": "1oVwoWAbcskuBfcv", "title": "coAMPzCXwpgD8MOf"}, "YXcljy6EB8dB8wCi": {"description": "Yq2y16Jp7HjPDG07", "localExt": {"XwughkPLKDhdMf1o": {}, "4pweyQyv10mRO0tK": {}, "1CH6ozETFSgu96JY": {}}, "longDescription": "KhAD9xM9T3YcYFOY", "title": "maaHSXapFLiHZfwc"}}, "lootBoxConfig": {"rewardCount": 26, "rewards": [{"lootBoxItems": [{"count": 33, "duration": 52, "endDate": "1978-08-20T00:00:00Z", "itemId": "HRQcJzso1tgoqsyj", "itemSku": "uA8sqeXbV9I8yo0u", "itemType": "2hT9UYbm2BWjzlqI"}, {"count": 54, "duration": 1, "endDate": "1977-01-20T00:00:00Z", "itemId": "ryoVkl4tChuDibBI", "itemSku": "H1dyZPHtYHKqpl1X", "itemType": "k1CdFvYqfoYzBc16"}, {"count": 34, "duration": 94, "endDate": "1996-03-13T00:00:00Z", "itemId": "uoJGXCyzA8a5uh1L", "itemSku": "dVOaWOjRinmMTxEz", "itemType": "6bdDFDqRMyTZOXYR"}], "name": "C3gIRiYFpDlAEyVu", "odds": 0.3392429932583654, "type": "REWARD", "weight": 70}, {"lootBoxItems": [{"count": 5, "duration": 94, "endDate": "1985-11-15T00:00:00Z", "itemId": "fnjlfFFTD6KSEeAE", "itemSku": "d96gzUY6EuVZznqQ", "itemType": "VYO5728Ri3CuA2Ge"}, {"count": 23, "duration": 23, "endDate": "1987-01-03T00:00:00Z", "itemId": "QyuDWvfe4Hp9aCLe", "itemSku": "kZch7a3b0hFYqZQA", "itemType": "Um9m9ht4JsrC6ho0"}, {"count": 19, "duration": 90, "endDate": "1974-05-31T00:00:00Z", "itemId": "4lgGGsrJv0EyLkZe", "itemSku": "j5voHh0KRDJjPEF1", "itemType": "LpvoOxT54t5Ffna7"}], "name": "2ji4B86NKZ0tkEWA", "odds": 0.2691257537565669, "type": "REWARD_GROUP", "weight": 13}, {"lootBoxItems": [{"count": 60, "duration": 63, "endDate": "1992-07-13T00:00:00Z", "itemId": "htIp1XL7HL2nKoPX", "itemSku": "xLMtU6hLliy7em6o", "itemType": "x8O9f2ojEQrZ645L"}, {"count": 84, "duration": 19, "endDate": "1978-01-02T00:00:00Z", "itemId": "SpZNjdKHqDX1jGg2", "itemSku": "X6VHZOulL5KfkSA0", "itemType": "amHSK4Sz7fbw7cgH"}, {"count": 68, "duration": 30, "endDate": "1981-10-13T00:00:00Z", "itemId": "qixFdv5aDRSnCrIQ", "itemSku": "2kChyafmo2nIKr9k", "itemType": "rylalbZWuO0OVwGU"}], "name": "gR3PEWI0N4k2W2ca", "odds": 0.27260048843928875, "type": "PROBABILITY_GROUP", "weight": 81}], "rollFunction": "CUSTOM"}, "maxCount": 7, "maxCountPerUser": 90, "name": "XwE37QpBIY8LEEtC", "optionBoxConfig": {"boxItems": [{"count": 24, "duration": 52, "endDate": "1980-05-09T00:00:00Z", "itemId": "emV8gAHQaitMhleY", "itemSku": "83sh3B07O0XQWCZX", "itemType": "aPi8oY6VkZP57PyB"}, {"count": 76, "duration": 33, "endDate": "1996-03-22T00:00:00Z", "itemId": "iFOu0ybeoERsKMCP", "itemSku": "mtnE1aHAuVZKYNaK", "itemType": "hi81nO4RNjvO8rZ5"}, {"count": 82, "duration": 77, "endDate": "1994-02-19T00:00:00Z", "itemId": "EbburWcSjdGGqd31", "itemSku": "L6KqJTL11T4vlBRD", "itemType": "jj3FKvRIguqDEJfd"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 37, "fixedTrialCycles": 99, "graceDays": 88}, "regionData": {"JUW3I4SKjp0NOc5d": [{"currencyCode": "WAES7S7wBqBe4F2z", "currencyNamespace": "2u3wwUBB3KkzIBx4", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1977-03-03T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1996-01-05T00:00:00Z", "expireAt": "1998-10-23T00:00:00Z", "price": 36, "purchaseAt": "1993-12-13T00:00:00Z", "trialPrice": 61}, {"currencyCode": "luvKziVTCPTrqHc7", "currencyNamespace": "vqaXxxiGOrXbWC2k", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1977-08-04T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1989-04-26T00:00:00Z", "expireAt": "1999-07-15T00:00:00Z", "price": 20, "purchaseAt": "1997-11-25T00:00:00Z", "trialPrice": 32}, {"currencyCode": "XwHnS2VOESYx49M1", "currencyNamespace": "JdtImLI5eTuHqCNt", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1991-12-28T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1974-07-27T00:00:00Z", "expireAt": "1978-05-01T00:00:00Z", "price": 19, "purchaseAt": "1979-03-06T00:00:00Z", "trialPrice": 32}], "YQEdyLRX3etMjv8j": [{"currencyCode": "skCHfqF5uo9BT2Qq", "currencyNamespace": "CxWZGjDRc27d9a3A", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1997-01-05T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1996-12-02T00:00:00Z", "expireAt": "1972-08-06T00:00:00Z", "price": 3, "purchaseAt": "1979-07-04T00:00:00Z", "trialPrice": 70}, {"currencyCode": "HJEyMrwNINM4zHFF", "currencyNamespace": "9ucrEcYD5hjgrxoE", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1986-10-06T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1976-06-25T00:00:00Z", "expireAt": "1997-05-05T00:00:00Z", "price": 70, "purchaseAt": "1996-08-12T00:00:00Z", "trialPrice": 42}, {"currencyCode": "Ti05akxBYozWzUW4", "currencyNamespace": "RDVM8Y4PcXDH8RZq", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1984-11-06T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1985-06-08T00:00:00Z", "expireAt": "1975-06-22T00:00:00Z", "price": 86, "purchaseAt": "1982-08-03T00:00:00Z", "trialPrice": 28}], "JizEosjuIsTXKAQ4": [{"currencyCode": "uWLCMgN7rU1yiWEO", "currencyNamespace": "DovRwzU7QiANYIF1", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1994-09-08T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1997-09-02T00:00:00Z", "expireAt": "1982-03-28T00:00:00Z", "price": 62, "purchaseAt": "1984-08-13T00:00:00Z", "trialPrice": 81}, {"currencyCode": "NPCCnVKYp3EQx9pS", "currencyNamespace": "ofiZZNcWBxK2ScBM", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1990-05-26T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1975-02-23T00:00:00Z", "expireAt": "1991-09-18T00:00:00Z", "price": 93, "purchaseAt": "1986-12-06T00:00:00Z", "trialPrice": 25}, {"currencyCode": "MRaYf8Chh5tiLsXI", "currencyNamespace": "OSE2JSDRlSX5uOgZ", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1992-04-07T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1997-08-24T00:00:00Z", "expireAt": "1989-05-14T00:00:00Z", "price": 35, "purchaseAt": "1975-09-05T00:00:00Z", "trialPrice": 29}]}, "saleConfig": {"currencyCode": "agSwSs0ORF2pLQCq", "price": 85}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "OXZN7MoQZDN1sjuH", "stackable": true, "status": "INACTIVE", "tags": ["7cqKdwnwTyTyr1XX", "seYPsB00G8moKbti", "b0FVZK7sonuzTm1g"], "targetCurrencyCode": "DYClbgXA2XATEcyK", "targetNamespace": "tSz6QsS6BHqs2Z5a", "thumbnailUrl": "knpCHXIr8JndNzIi", "useCount": 57}' \
    'QRsqYFtxbpKYKp18' \
    'TPWOixbTLfdOF3Vt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'UpdateItem' test.out

#- 128 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'CUZ0wN81CLC324P8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'DeleteItem' test.out

#- 129 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '{"count": 31, "orderNo": "gdsOb5Jp6oxvvtB4"}' \
    'aireJSZc7Cojp07D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AcquireItem' test.out

#- 130 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'FR7IvEhnKAMSw1WG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'GetApp' test.out

#- 131 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '{"carousel": [{"alt": "HPO22mCj7yFmbpIt", "previewUrl": "mTcMVUlRoYFks2UL", "thumbnailUrl": "HooisOHhyiZyNxeN", "type": "image", "url": "cBIePMwBjK11IFRy", "videoSource": "generic"}, {"alt": "s8OO0CVqXF6bMzRd", "previewUrl": "2Z2WjutGAptSES09", "thumbnailUrl": "ZcFGPCokMwrtVvGh", "type": "video", "url": "7C2CAKbiD5PxA5v9", "videoSource": "vimeo"}, {"alt": "44D4d5jTjzZ8KpdO", "previewUrl": "xrQ8r5te5FkJ58wQ", "thumbnailUrl": "yrAb67d9kC9MEhGr", "type": "image", "url": "Q3yKCwV9chX3evM1", "videoSource": "vimeo"}], "developer": "NscwbXgdwQnMuRee", "forumUrl": "n3aYjhar5GRzOAfO", "genres": ["Casual", "Action", "Racing"], "localizations": {"aEHFX0sySxhkhCpV": {"announcement": "5A2ZLHG60X6LS9dY", "slogan": "e42oicsvoF2EgsoZ"}, "SKOzQIDAf44vyeNI": {"announcement": "fF5Ri6ydoL4tB0FU", "slogan": "px5TLiooOqRm1Mxf"}, "3NfjnW9axvejxDQg": {"announcement": "dz6GmSzMPzB5ZP4m", "slogan": "dsjnGGtbn27LOqX7"}}, "platformRequirements": {"FWHHlsxNkfgF88XO": [{"additionals": "EWI4jARIQkIiA44z", "directXVersion": "jyRqefUM764xXmCk", "diskSpace": "JL9p2OQ5Ll9C3fSn", "graphics": "ntsqrUKREAt8zG7M", "label": "wy6qt1KRlDGxhO1Y", "osVersion": "bPoWmG714ZA04yxG", "processor": "cMcYyromMVFEaTLz", "ram": "3hmDX1C9gHM8SS73", "soundCard": "LrEja3XlbCcD2bQL"}, {"additionals": "uFwHyfWs9J4OjFm6", "directXVersion": "OQMQgWL3hmjUydsg", "diskSpace": "dt98KfbaQpgEAKKL", "graphics": "cKbPxGvL2c7KalLF", "label": "WBzkHql6eJa7PZ2M", "osVersion": "vexshOyL8KXBfLq1", "processor": "zWLmtFhefMqfbE0D", "ram": "ZBwK4s4YGhc9qjsG", "soundCard": "zedPNuJ4GH001y8D"}, {"additionals": "GO7yuqGFaSZmLnl1", "directXVersion": "3NthHP0LDshHSWty", "diskSpace": "rOFmeGGIRRLbsmgD", "graphics": "O0TIQbgg12LHWqVd", "label": "QIiLCN04Qo69tjPC", "osVersion": "e7O061ScAQ7gSO3G", "processor": "Ho6ESwn8otu3o1B2", "ram": "P8cdPJAnmCFUZdH9", "soundCard": "CHHozRud9g15dSBh"}], "pLRxydIE1CQFSQS3": [{"additionals": "RD8Q6YcgyTtSOU4F", "directXVersion": "dUceGtntm6j0Apyr", "diskSpace": "icmsku6ryZK7UKLh", "graphics": "MA3DOG2TuIwxdK6g", "label": "oe9uJ8PAnT6lHom6", "osVersion": "RSj2xFFFrIQFWJ2a", "processor": "MIxqQycDpbOcYim2", "ram": "syYc8YuKlQjnj5Qj", "soundCard": "rVi62ITQp6NklXSU"}, {"additionals": "YkHNYqepadIS0zRg", "directXVersion": "ire2ntrz0FUDXjV0", "diskSpace": "GmcFSjmJGQU5YRHj", "graphics": "Mz3bo23SF3Xkwdkg", "label": "eNE7pA2BmAcotg9A", "osVersion": "9VvbcAi4ZmdXz2NX", "processor": "fbCObijIWdRSDSq6", "ram": "oIY8wqc2OcvjggLV", "soundCard": "wAQMWoB0LkwHKKIT"}, {"additionals": "2D8YJKnP2TmDSwAt", "directXVersion": "1UGNieMe0c6eA8xC", "diskSpace": "vVNgS0wUvETmRwwa", "graphics": "H21xuey3fB1KN5Ez", "label": "SmB6aO1JqypofIkM", "osVersion": "1Wvc2CcOra4RXenU", "processor": "5naN6UuNARNfA4hp", "ram": "oNUAwafK1QxxK2sB", "soundCard": "BkQz8nIgoYpZYIYt"}], "o2cpXUnj1kXAEnU9": [{"additionals": "CvpIjJ6tB2fqN6D7", "directXVersion": "6apW4CsuQx2nME1E", "diskSpace": "8lGIgW2AWqhlJfHg", "graphics": "WSAjBmziLkAEWkqM", "label": "o2uv4G0hb2TC5zbx", "osVersion": "qSMQf3ZXRgmEXKPa", "processor": "vNUDslWRgXzKcDEz", "ram": "6ivQvlpRKagGd8OJ", "soundCard": "WfXgBkof2DgN1OHB"}, {"additionals": "aKIf5hoyD0oT4csE", "directXVersion": "U6rwlyAZXRltXTRz", "diskSpace": "9WtMMb9e3S9biXun", "graphics": "5fD0BBCts02Kgz1g", "label": "L82ANle3vQP0F7CV", "osVersion": "BRFOlmRZZrSiE7me", "processor": "OUBb0ZMyPVBowpLO", "ram": "lv3wNvAi5e5Cp2Id", "soundCard": "8PqgbZMgBinMuWrJ"}, {"additionals": "OAvHxG7UhRxqteme", "directXVersion": "7V0mE4XANjqP7L1m", "diskSpace": "gHDq7oo2SQp9UXJY", "graphics": "EGGpt55fVsBfrc4O", "label": "J06MAINAypeu3Zwg", "osVersion": "LF3XSMYkGVjcYe2w", "processor": "wruEu9pKFWxMrOrO", "ram": "7m2fUVM4vgvN5a9n", "soundCard": "lua2qF5WhoaEpbMK"}]}, "platforms": ["MacOS", "MacOS", "Android"], "players": ["MMO", "Multi", "MMO"], "primaryGenre": "RPG", "publisher": "OE3PKy2vHH6XrTj3", "releaseDate": "1975-11-29T00:00:00Z", "websiteUrl": "1nC0J9A8DUtbT9Ni"}' \
    'mqnzt0awizcaXFFk' \
    'Kf2QcbDNp9wVgloP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'UpdateApp' test.out

#- 132 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'qugy2zhY3CjOqLPk' \
    'NLoeCULsEptE9wds' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'DisableItem' test.out

#- 133 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'ebmIkQbE3nPbd7YN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'GetItemDynamicData' test.out

#- 134 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'YQJL8jGfdMvM0zEH' \
    'mThs6Oydk9jSSY0a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'EnableItem' test.out

#- 135 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'qjjeExTo07XGD7r4' \
    'dvtuyipF1FB9RNF3' \
    'G6sPweMmOIXU6IcF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'FeatureItem' test.out

#- 136 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'kTWMTXNI4WIT2qYu' \
    'tqii44IKSSMR4zJK' \
    'YxouzcD0pPXkdTrL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DefeatureItem' test.out

#- 137 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'YN48A5DLkL19tXrv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'GetLocaleItem' test.out

#- 138 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 91, "code": "C14hfBeKISP0coyL", "comparison": "isGreaterThan", "name": "G52kcFEHKN66TOzJ", "predicateType": "StatisticCodePredicate", "value": "tjgypGgBtsGOxHfW", "values": ["3WBHUGCPEvc97uDK", "JzaaUc8p87eTTm09", "DBhngmXpNaXSgg2y"]}, {"anyOf": 34, "code": "rucPAhnaYqSLkr3t", "comparison": "isGreaterThan", "name": "FK5hyfwqkxFeK2HS", "predicateType": "EntitlementPredicate", "value": "vJKjvhZn4m8rgQUG", "values": ["DbSYPsKMU8ah8NJx", "1gDFutWedPpbBwcm", "RSOW5MFhNeBercY9"]}, {"anyOf": 30, "code": "KZWUVW9NyUUdkrKC", "comparison": "isNot", "name": "FIkcZk3UEaPstaXt", "predicateType": "StatisticCodePredicate", "value": "RnaYhr2WJyqCvAfW", "values": ["8019aVHHRLK0fv93", "i7mDpF9Uxmjutqgr", "6lSL3gAK6QqFlWlA"]}]}, {"operator": "and", "predicates": [{"anyOf": 2, "code": "rDQIVwmefiYRytVW", "comparison": "isLessThan", "name": "01GcykfqRyXIVnis", "predicateType": "SeasonPassPredicate", "value": "SKjpYMZV5AVm0vOT", "values": ["cmxebThGYrgNOimV", "C3pOWLT8ckEy2SMQ", "py2xyajHMUnKflmc"]}, {"anyOf": 35, "code": "pHVndrAR7z9J0bNu", "comparison": "includes", "name": "t5ZJSh02srNNRw3Y", "predicateType": "SeasonPassPredicate", "value": "bcVqeQS68NcKrOSq", "values": ["IQnwGbMTiA96lnb5", "jHAc8PGncBz3SqYU", "AvumNXdNoD6gTOf0"]}, {"anyOf": 12, "code": "lhlYHQh4VgYhBaVD", "comparison": "isNot", "name": "MX3YvlKKTkjhbq0e", "predicateType": "SeasonPassPredicate", "value": "vkBW48O77tNIBYTF", "values": ["3ezYAdypb6oWXYIQ", "fPUrNUOX0haxwoUd", "qBIhw3NQXGJDWtQN"]}]}, {"operator": "and", "predicates": [{"anyOf": 80, "code": "sdjtVRUIv3uIM3Co", "comparison": "isLessThan", "name": "JahcK1Pr6BT8bcW2", "predicateType": "StatisticCodePredicate", "value": "R0603b1ChdDIpRn2", "values": ["47qjDQAAvYZZABKO", "A0L11TgHUfODRocs", "HgPRevBMjempE90i"]}, {"anyOf": 78, "code": "QUNi4NDzBP7mmM4Z", "comparison": "isGreaterThanOrEqual", "name": "h2Ufv88v1ngAJIsX", "predicateType": "StatisticCodePredicate", "value": "v5tNXWb8n1xyB1Mx", "values": ["bBG0waudrudTuIy3", "VLkd3YGg9Bzi8ulu", "QOBuTuYNR4hzPkGO"]}, {"anyOf": 43, "code": "5BbL13OgHZysyny0", "comparison": "excludes", "name": "axRFeMgIQdJNm52k", "predicateType": "SeasonTierPredicate", "value": "q5MjU2f4833bcUoB", "values": ["fWLjRXOqaoDBgsPH", "cNg0Bapd2WF3ACWS", "PCOIejZfSnIavouu"]}]}]}}' \
    'Fpqcq4Gd9fk7fhp8' \
    'GNMEX4Ps5vorNX6W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateItemPurchaseCondition' test.out

#- 139 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '{"orderNo": "3h8ItD6AFXbQvGbK"}' \
    'VlE5VulHAZZ2SKo1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'ReturnItem' test.out

#- 140 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'QueryKeyGroups' test.out

#- 141 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    '{"description": "C0ktvmekdbic6I2n", "name": "5Hclx6xvlDEhlvzV", "status": "INACTIVE", "tags": ["Ra6jU8OLKdFhRNsw", "dEfL1i3SL7JlQ0Wm", "wgELy9cxgDaEUFiM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'CreateKeyGroup' test.out

#- 142 GetKeyGroupByBoothName
eval_tap 0 142 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 143 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'TIV4pb5hZyPikzEm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'GetKeyGroup' test.out

#- 144 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '{"description": "nmdOWGrvu5JZsUPq", "name": "tph4Z0KsCWhJPpmp", "status": "ACTIVE", "tags": ["VL8heTq0Wmf80d7w", "zxTtcIyIFNDIRhPI", "RCNW8MLBfGHJseAA"]}' \
    '3xQG5zPNH4eYMWbt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'UpdateKeyGroup' test.out

#- 145 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'vk7OoIixOGXwFzXj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'GetKeyGroupDynamic' test.out

#- 146 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'pSLyjqaJnmx4p5Sh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'ListKeys' test.out

#- 147 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'R3fI6ZeDWbxHSLn6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'UploadKeys' test.out

#- 148 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'QueryOrders' test.out

#- 149 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'GetOrderStatistics' test.out

#- 150 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'kQxqK7yxoQHX7Xex' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'GetOrder' test.out

#- 151 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    '{"description": "jvW4rZ57Ra4Wlon8"}' \
    'ZzeHgabbmT81jfik' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'RefundOrder' test.out

#- 152 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetPaymentCallbackConfig' test.out

#- 153 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    '{"dryRun": false, "notifyUrl": "bw4TKyPTxRuzNfmv", "privateKey": "BcfNBFiIw9mkjC9q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UpdatePaymentCallbackConfig' test.out

#- 154 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'GetPaymentMerchantConfig' test.out

#- 155 UpdatePaymentDomainWhitelistConfig
$PYTHON -m $MODULE 'platform-update-payment-domain-whitelist-config' \
    '{"domains": ["XOVUNHtfbgUqbLQ3", "WTZF8gP7LgkxhkSS", "ID9PxPyXJHsWipvZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'UpdatePaymentDomainWhitelistConfig' test.out

#- 156 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'QueryPaymentNotifications' test.out

#- 157 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'QueryPaymentOrders' test.out

#- 158 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    '{"currencyCode": "ANpRXHVqJaiwkoaB", "currencyNamespace": "b8UYH2Pz5V5CtSrc", "customParameters": {"X7aRP8vZ9a77wOP1": {}, "0AbpbjZo2dQM3ZXq": {}, "9atijyFT8B6hECr4": {}}, "description": "zqhZ9lpllwasnryj", "extOrderNo": "xylwRVcy18iHO0dK", "extUserId": "NHWBFM13F37X9HTu", "itemType": "EXTENSION", "language": "UF", "metadata": {"0F8qXSfSkxhrHhjW": "xkDQUTY21m19Eiqp", "yu9P7Yh6ERWyedt6": "rkPxW72ya2ruQcik", "SHwHPfyNRUhMXX7F": "iB3X634iuF8pqhqs"}, "notifyUrl": "qRF4kqMbz4sxPUl2", "omitNotification": false, "platform": "bQNFNB2IE43MBCGN", "price": 50, "recurringPaymentOrderNo": "SCpF2z5O9ugNuq4u", "region": "Gu9km7KeyQB3SUe4", "returnUrl": "ug9J3KKHHaSwFS7f", "sandbox": true, "sku": "3iOynLLtqSmaHvUE", "subscriptionId": "xz8o7TwcWL7fNlyG", "targetNamespace": "uj0EkM7M8G78KZj2", "targetUserId": "jWyKAzXYP9kO0rmo", "title": "nOpgtONmMvrDH4IX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'CreatePaymentOrderByDedicated' test.out

#- 159 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'c6tn8XayBI734jCT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'ListExtOrderNoByExtTxId' test.out

#- 160 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'SnRqHTWC4NCbltix' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'GetPaymentOrder' test.out

#- 161 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '{"extTxId": "kXwXO0XemKHsUC5w", "paymentMethod": "7fmzF80bbGhU1pjV", "paymentProvider": "STRIPE"}' \
    'aS458bBTbcqQVkSI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'ChargePaymentOrder' test.out

#- 162 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '{"description": "XLGF8dtk8bqcPfBJ"}' \
    '9GOHxUkZCvqVRe3F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'RefundPaymentOrderByDedicated' test.out

#- 163 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '{"amount": 41, "currencyCode": "8EGvZd49hW95i4Rm", "notifyType": "CHARGE", "paymentProvider": "PAYPAL", "salesTax": 74, "vat": 56}' \
    'G3psjIBzjaFmN0MI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'SimulatePaymentOrderNotification' test.out

#- 164 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'nvVPAPEovHVVguus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'GetPaymentOrderChargeStatus' test.out

#- 165 GetPsnEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-psn-entitlement-ownership' \
    '{"accessToken": "vVUxkCG4IGPYHaRv", "serviceLabel": 97}' \
    'x1fcfy4uTVbxv0l7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'GetPsnEntitlementOwnership' test.out

#- 166 GetXboxEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-xbox-entitlement-ownership' \
    '{"delegationToken": "RvPOKq8iNNYLY5oW", "sandboxId": "JPoo8QT5EB5GCOCo"}' \
    'wERMveDiI5BYvV5L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'GetXboxEntitlementOwnership' test.out

#- 167 GetPlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-get-platform-entitlement-config' \
    'Xbox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'GetPlatformEntitlementConfig' test.out

#- 168 UpdatePlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-update-platform-entitlement-config' \
    '{"allowedPlatformOrigins": ["Xbox", "GooglePlay", "System"]}' \
    'Xbox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'UpdatePlatformEntitlementConfig' test.out

#- 169 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Nintendo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetPlatformWalletConfig' test.out

#- 170 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    '{"allowedBalanceOrigins": ["Epic", "Twitch", "Playstation"]}' \
    'GooglePlay' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'UpdatePlatformWalletConfig' test.out

#- 171 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'IOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'ResetPlatformWalletConfig' test.out

#- 172 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'GetRevocationConfig' test.out

#- 173 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'UpdateRevocationConfig' test.out

#- 174 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'DeleteRevocationConfig' test.out

#- 175 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'QueryRevocationHistories' test.out

#- 176 GetRevocationPluginConfig
$PYTHON -m $MODULE 'platform-get-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'GetRevocationPluginConfig' test.out

#- 177 UpdateRevocationPluginConfig
$PYTHON -m $MODULE 'platform-update-revocation-plugin-config' \
    '{"appConfig": {"appName": "LeY5CedGPB0iJF96"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "7vODPmfnV8dOr38j"}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'UpdateRevocationPluginConfig' test.out

#- 178 DeleteRevocationPluginConfig
$PYTHON -m $MODULE 'platform-delete-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'DeleteRevocationPluginConfig' test.out

#- 179 UploadRevocationPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'UploadRevocationPluginConfigCert' test.out

#- 180 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    '{"description": "jFRDj47EZTCCwz8y", "eventTopic": "awNImZdPzt9koNSL", "maxAwarded": 5, "maxAwardedPerUser": 44, "namespaceExpression": "KdyabXymlDvbcApu", "rewardCode": "oA5PCdXT4YD9fDzx", "rewardConditions": [{"condition": "1WPpvLBMMNJG6TuQ", "conditionName": "90jhJCrrsBPvGhWi", "eventName": "PLLd5eChF7cgujIt", "rewardItems": [{"duration": 36, "endDate": "1999-11-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "jL5qUyimmVzOJYeb", "quantity": 71, "sku": "tRQu0coThNxwnnpo"}, {"duration": 78, "endDate": "1974-02-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "SoHlpDFImJNovlZq", "quantity": 47, "sku": "O6RDUgilQHCts6SU"}, {"duration": 82, "endDate": "1982-03-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "kxjKL3EiP6WeXWf3", "quantity": 6, "sku": "WFnJMiszwcYW9Jy4"}]}, {"condition": "n5q4WgYvJS0xuVsk", "conditionName": "VlA0TNAcmfUmAzc5", "eventName": "JVuc5LBd3uXt6TP1", "rewardItems": [{"duration": 54, "endDate": "1975-09-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "4lqnIwLN2lGYqQSz", "quantity": 72, "sku": "HkWjFIo6VbU9gwMg"}, {"duration": 96, "endDate": "1992-09-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "9Q5Lstog0ehjEmcj", "quantity": 73, "sku": "eGP4o1Tgbe8J8xso"}, {"duration": 42, "endDate": "1998-10-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "LeHVV40sjQ8mtTN0", "quantity": 24, "sku": "V3MMSrrV6FB8DFwD"}]}, {"condition": "7WXkw7te8pQfvxY5", "conditionName": "zPZKMd5ItnXbDbXW", "eventName": "9KlfgVvjjjExRk4J", "rewardItems": [{"duration": 69, "endDate": "1993-09-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "a2nnyqvFCYJOJl9l", "quantity": 19, "sku": "kZ8CS09fFrbdregZ"}, {"duration": 12, "endDate": "1978-08-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "pBIXqoaoYoHcrIwc", "quantity": 33, "sku": "UGLox4eJuvLmou5A"}, {"duration": 40, "endDate": "1982-08-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "5J9XxYqy0HcWUCca", "quantity": 15, "sku": "Jk5kBnuo4jR1HYLJ"}]}], "userIdExpression": "jnydxAGgqH3ytkro"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'CreateReward' test.out

#- 181 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'QueryRewards' test.out

#- 182 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'ExportRewards' test.out

#- 183 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'ImportRewards' test.out

#- 184 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    '2tfFjNF99VixS5Es' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'GetReward' test.out

#- 185 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    '{"description": "3u4km3iKiNLRNa01", "eventTopic": "SihgZby9mBdGrJY5", "maxAwarded": 73, "maxAwardedPerUser": 71, "namespaceExpression": "e9jWcVTCNxjdv8Gx", "rewardCode": "hJoB4lAkbm1Abh9Q", "rewardConditions": [{"condition": "xLBfhpOp8UlDmFYN", "conditionName": "BSDEgsUMikj8NQND", "eventName": "lhAhwAc8mPZRllen", "rewardItems": [{"duration": 14, "endDate": "1994-08-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "dfKGCBZMAbJnqDKu", "quantity": 57, "sku": "B14cwUNByHqsS7t8"}, {"duration": 100, "endDate": "1985-07-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "VmGSholl8uD1hpBt", "quantity": 32, "sku": "WvlE7bmuaFNPCECK"}, {"duration": 92, "endDate": "1998-07-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "T5beKYt4CDlWZzqp", "quantity": 74, "sku": "EriyOLkuGKVQWNOU"}]}, {"condition": "Ah5VXa79702d31zP", "conditionName": "Hg6tXTsGmv1XM6sr", "eventName": "8tSaA0g0OCIEQYU4", "rewardItems": [{"duration": 32, "endDate": "1977-10-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "U7Kjrz4HAGIJOSxo", "quantity": 72, "sku": "B0JkRcYhCT3pUMiO"}, {"duration": 22, "endDate": "1978-01-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "aj7wqr7wwPCgByCn", "quantity": 22, "sku": "0QsxPlx64IQUpSTo"}, {"duration": 61, "endDate": "1980-12-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "G98viuYwQTHKPcc8", "quantity": 11, "sku": "2WtwcihC87O1U2uY"}]}, {"condition": "ktiAFqIsHod9kt3x", "conditionName": "kRSajXSTpU3aCkzq", "eventName": "s0hC50vEOIxc25vt", "rewardItems": [{"duration": 29, "endDate": "1980-01-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "2uh7Ls9nxKiaoWmr", "quantity": 47, "sku": "WNk2SHYsva1jk545"}, {"duration": 44, "endDate": "1994-06-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "1Vu7dsmzSUsCVLjw", "quantity": 86, "sku": "8vaRaaxVQeMUb1kv"}, {"duration": 91, "endDate": "1976-03-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "jcjlxGsLgfrhBTH1", "quantity": 87, "sku": "0JzaJpqg9JgEy7Ia"}]}], "userIdExpression": "d7fAMCaXsZoyeqN5"}' \
    'ouEcXRhWbROnhOUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'UpdateReward' test.out

#- 186 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'nN2KpfXJ96sJUnv5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'DeleteReward' test.out

#- 187 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'BwzKyxJqBCaof96N' \
    --body '{"payload": {"NQPxPe1HYkf4KjUJ": {}, "VMedBEWe14kmPIGC": {}, "rJozIio8nWa64x5p": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'CheckEventCondition' test.out

#- 188 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    '{"conditionName": "JSHZCzyWKP30Kusy", "userId": "vaitTsWtL2AAtjEK"}' \
    'W31SlSm20DzdKk8F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'DeleteRewardConditionRecord' test.out

#- 189 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'QuerySections' test.out

#- 190 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    '{"active": false, "displayOrder": 49, "endDate": "1995-02-01T00:00:00Z", "ext": {"cy0hcEMFRkn8SAQh": {}, "tiWA2DHIocFR98KO": {}, "abgb0l3UURltNbDb": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 0, "itemCount": 45, "rule": "SEQUENCE"}, "items": [{"id": "B1xXuK2MwrRJukMT", "sku": "kO00KLgddr0UUiy5"}, {"id": "jm1w2g65JkaoPuBs", "sku": "uSb0LePf5b8MJ94D"}, {"id": "Ah1Mc7VkHxj8k5KS", "sku": "FtbEoEr5LqKRRnKy"}], "localizations": {"17sBYlx7rzEm3km2": {"description": "jjNrqEmuEf6JRpqZ", "localExt": {"EUH2Rr5lkfHjqVCM": {}, "punzeSPkf8Y5ksiq": {}, "VvcGZxTP7pduqX3e": {}}, "longDescription": "9tt0zz5gs7YuyxJL", "title": "e1TkfLiM9EqyhFh7"}, "mq6sgk5cHaJYkzCl": {"description": "qPty2kxgyry1MM9e", "localExt": {"o43Qi5cRehBB7o24": {}, "lw21Z3nE04Cbkpn0": {}, "yX44aL9f0QyO5YXV": {}}, "longDescription": "hTiaE4WKnEeaUdAm", "title": "gmnzKSVlXsRNMykb"}, "nHTrHLmaTGFI1atD": {"description": "OVS2F6Is27hn9TSw", "localExt": {"EvJPZcYrXKMnNZIm": {}, "0ooHCnlq1H5IuOva": {}, "fRIdOXlxxdySywm5": {}}, "longDescription": "h2pCfHjg41ZhheDD", "title": "G5HJEFQRX4iVg8TK"}}, "name": "1CF9X9mTmMVfQaiQ", "rotationType": "NONE", "startDate": "1978-01-26T00:00:00Z", "viewId": "DIwGJ3pRyNwb9JgV"}' \
    'Zofu7lNuwrS7xf7B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'CreateSection' test.out

#- 191 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'iZI9Jujxs7GKf2LO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'PurgeExpiredSection' test.out

#- 192 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'lVbEWajKUr3rx7Sd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'GetSection' test.out

#- 193 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    '{"active": true, "displayOrder": 61, "endDate": "1998-09-17T00:00:00Z", "ext": {"ugFtH5gSuRJLGkij": {}, "LEJPCdahOY2goEK3": {}, "5CZu7WE18eU5rtQU": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 90, "itemCount": 66, "rule": "SEQUENCE"}, "items": [{"id": "vu3WEfwBn40sJji4", "sku": "hVE3lKNQy2rJxiPP"}, {"id": "jJk44WHDDNDVgExc", "sku": "mm4fkoNMVNk6z4A3"}, {"id": "FI60uUrVMjqwLfyh", "sku": "5UUBSKyenhZ56H3l"}], "localizations": {"3jc1060kqFKNcGHY": {"description": "IXDqQpOY256yQcC8", "localExt": {"CPFXan7LUfcQhcxy": {}, "nrF5qWYvJX1f7rYn": {}, "PbkDk5g9y47AVCmF": {}}, "longDescription": "D0nKyUwcI9KJZt31", "title": "la1wZgpPXxtcOPw0"}, "UBm7wccELVo9RYTq": {"description": "uwIrGgk3eqgOf7Ww", "localExt": {"NZWyYuM3y1TjdcOV": {}, "w94gqQYOWGw7LSW6": {}, "Kb9otdVBjacY5doQ": {}}, "longDescription": "Ghc8zSCeJ4Q8PHY6", "title": "vGzNfPWTQ1pJMwPV"}, "AUNYFOg7TplEkOZy": {"description": "73bRBtWCJCJuzB1j", "localExt": {"bh95vj0V2ccQ60lu": {}, "b807E0PGhia3QvaF": {}, "IVfHyAiTeDDuvgKT": {}}, "longDescription": "frZ6TfrQrFIsYsZ1", "title": "dTn2pA64FJuEPymb"}}, "name": "IAwDAyNBagGD33WM", "rotationType": "CUSTOM", "startDate": "1975-12-30T00:00:00Z", "viewId": "7bfdfxyqKQ4YNnTT"}' \
    'wZeuX7f9iY3skbk2' \
    '5jLP6zS6a5C6awft' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'UpdateSection' test.out

#- 194 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    '8NPNJCopJg7IJTeO' \
    'WoVtcblaKlhxMNx5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'DeleteSection' test.out

#- 195 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'ListStores' test.out

#- 196 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    '{"defaultLanguage": "h4l3ogPTLlSlGfh2", "defaultRegion": "XhfCB53jlBjzXLwo", "description": "Mxshoo8aHsXJ87yw", "supportedLanguages": ["dDtou8Np74s3RLe4", "gpS550eQ5WiZiQUz", "C0vBF108QVF9gKmJ"], "supportedRegions": ["BuqEpgnV3xNdP3uQ", "J2ZdCStanvPwuBVi", "fTkflegYoVHYdQPA"], "title": "sGfQVawbSlqUfFfZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'CreateStore' test.out

#- 197 GetCatalogDefinition
$PYTHON -m $MODULE 'platform-get-catalog-definition' \
    'SECTION' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'GetCatalogDefinition' test.out

#- 198 DownloadCSVTemplates
$PYTHON -m $MODULE 'platform-download-csv-templates' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'DownloadCSVTemplates' test.out

#- 199 ExportStoreByCSV
$PYTHON -m $MODULE 'platform-export-store-by-csv' \
    '{"catalogType": "ITEM", "fieldsToBeIncluded": ["tHO4xrQvXR88ArNP", "kMbfhbrTb4ZPG4R5", "dqhreKq9si5LTZGj"], "idsToBeExported": ["fJI0GRPR9FWa3sAl", "KnzZ5Joq98jWszWZ", "xmbhMr5aDNyd7VDh"], "storeId": "ThmXAsBwC4MOmSF5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'ExportStoreByCSV' test.out

#- 200 ImportStore
eval_tap 0 200 'ImportStore # SKIP deprecated' test.out

#- 201 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'GetPublishedStore' test.out

#- 202 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'DeletePublishedStore' test.out

#- 203 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'GetPublishedStoreBackup' test.out

#- 204 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'RollbackPublishedStore' test.out

#- 205 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'ZPpYXTbgh3hVKyU9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetStore' test.out

#- 206 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    '{"defaultLanguage": "7N87zJHVwE86VYnu", "defaultRegion": "oHevgj9ralh2tjIE", "description": "DpjLJD7E0dh077pX", "supportedLanguages": ["U34waIIRxeTkl27M", "6AggzKZ3nqWutrpj", "BOnBeqwBnFdy01mQ"], "supportedRegions": ["jVblM1GnFG6ePpjP", "G4iKj1VxNoFLwY2a", "YPpdsN55f9R3a5Zv"], "title": "Ik8F6ffaPP2hJSGf"}' \
    'W6ap0wsdPdG1EQTy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'UpdateStore' test.out

#- 207 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'BW6pf9Ni5L9Nkvuq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'DeleteStore' test.out

#- 208 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'wvTTB6lW4R7V4J46' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'QueryChanges' test.out

#- 209 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'ZNRNpLcI8Vh4bQO4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'PublishAll' test.out

#- 210 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'Nc65zcFKgC0oMEpg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'PublishSelected' test.out

#- 211 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'LEiStlzCMldcic4U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'SelectAllRecords' test.out

#- 212 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    'cTKpdyvGEAo7B9gT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'SelectAllRecordsByCriteria' test.out

#- 213 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'sb09YBTADJQdJJb2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GetStatistic' test.out

#- 214 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    '7jRm1nyjO60S3gf5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'UnselectAllRecords' test.out

#- 215 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'tl2wHKp1L42H1n3Z' \
    'vUrBoqK16btU6Soa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'SelectRecord' test.out

#- 216 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'oiAtMgNN8B4oo9jF' \
    'mBqiyicQHvr1zREq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'UnselectRecord' test.out

#- 217 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'WwsQaxbdG9IxEoxc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'CloneStore' test.out

#- 218 ExportStore
eval_tap 0 218 'ExportStore # SKIP deprecated' test.out

#- 219 QueryImportHistory
$PYTHON -m $MODULE 'platform-query-import-history' \
    'gOEmGQpzN4HM3v5w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'QueryImportHistory' test.out

#- 220 ImportStoreByCSV
$PYTHON -m $MODULE 'platform-import-store-by-csv' \
    'tmp.dat' \
    'tmp.dat' \
    'tmp.dat' \
    'AiimBQXCxR1cObsy' \
    'tmp.dat' \
    's0SaqnYIBTANshJc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'ImportStoreByCSV' test.out

#- 221 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'QuerySubscriptions' test.out

#- 222 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'dLEofyiS3dO8j3ta' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'RecurringChargeSubscription' test.out

#- 223 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'WbShXMN0MRNkMX09' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'GetTicketDynamic' test.out

#- 224 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    '{"orderNo": "nQEwFSce6VsIsSSd"}' \
    'kP3IqaPaXJc57cVP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'DecreaseTicketSale' test.out

#- 225 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    '8tXCteutO2hlDa0v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GetTicketBoothID' test.out

#- 226 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    '{"count": 29, "orderNo": "jy1ei7AZBrLdMJG9"}' \
    '12CJx1H9kC6LzFqk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'IncreaseTicketSale' test.out

#- 227 Commit
$PYTHON -m $MODULE 'platform-commit' \
    '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 79, "currencyCode": "CNJqtCtGvxKwuL3M", "expireAt": "1981-12-28T00:00:00Z"}, "debitPayload": {"count": 14, "currencyCode": "VLvJm4u9ltRo1cXu", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 47, "entitlementCollectionId": "o8zvapmS8p27dvzU", "entitlementOrigin": "Twitch", "itemIdentity": "uCw1ys0BxLbujuXw", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 62, "entitlementId": "6Ke0rhmQrBLti0OZ"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 45, "currencyCode": "m5xYReY6SgfTy3HU", "expireAt": "1992-12-20T00:00:00Z"}, "debitPayload": {"count": 91, "currencyCode": "GH5sQmA6XL9p83Le", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 25, "entitlementCollectionId": "5r4J7MEwKxtP0Ska", "entitlementOrigin": "GooglePlay", "itemIdentity": "PZUjh5Id1WwN3o2L", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 60, "entitlementId": "IKn5bM9rW10Xi6WV"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 55, "currencyCode": "HuvBu2QQOXQatBE5", "expireAt": "1993-03-09T00:00:00Z"}, "debitPayload": {"count": 56, "currencyCode": "8JeefXJ2PdIoHdoD", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 75, "entitlementCollectionId": "gvwcWxlmJoJSnhyf", "entitlementOrigin": "Twitch", "itemIdentity": "By0AqALCR39RH5Uc", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 42, "entitlementId": "9RVZONAcvKXL23pp"}, "type": "FULFILL_ITEM"}], "userId": "7RTvIuyjoeXOEFAR"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 96, "currencyCode": "yZzxREBSrOk54EyW", "expireAt": "1971-04-04T00:00:00Z"}, "debitPayload": {"count": 12, "currencyCode": "LjCH6xr3vtL9JTQ5", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 7, "entitlementCollectionId": "WaR2DvfAXB1SrgLn", "entitlementOrigin": "IOS", "itemIdentity": "lUQ3Mt9iye7Sb3gS", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 22, "entitlementId": "ciZ5FWoyqYl8KD0z"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 65, "currencyCode": "P9G3HyBugfReiDLd", "expireAt": "1994-09-03T00:00:00Z"}, "debitPayload": {"count": 93, "currencyCode": "tHq5KHA9baTP1jNj", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 1, "entitlementCollectionId": "n8azMyTBLnxtGnH0", "entitlementOrigin": "GooglePlay", "itemIdentity": "W6cXzOdGXLsEc8Xz", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 100, "entitlementId": "jXX4csMlaBkq9QHE"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 42, "currencyCode": "6Bo3ALdAKAQUoGDO", "expireAt": "1995-02-26T00:00:00Z"}, "debitPayload": {"count": 64, "currencyCode": "v1dFmmwcX8cRQpNg", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 73, "entitlementCollectionId": "DqIfB0DPn1CZrBaO", "entitlementOrigin": "Playstation", "itemIdentity": "ASIuZtE2WuycIdVm", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 60, "entitlementId": "lVyVYhbj7X96t5WM"}, "type": "CREDIT_WALLET"}], "userId": "t0pudyASz9qbHEsb"}, {"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 34, "currencyCode": "t8Nb6qoNGzjQQDw2", "expireAt": "1994-02-09T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "Ybn53kIRN1df13Ev", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 100, "entitlementCollectionId": "SbGYcLQEocUfUPAI", "entitlementOrigin": "IOS", "itemIdentity": "O4xXXwCsNtkQh3rU", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 74, "entitlementId": "HqkEpmWErwMkbsCK"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 63, "currencyCode": "M82Qw4C7p4YKcL3q", "expireAt": "1980-04-15T00:00:00Z"}, "debitPayload": {"count": 23, "currencyCode": "hk6Ypn8KsMKfuARc", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 30, "entitlementCollectionId": "GSPrezfQIy1FsYo0", "entitlementOrigin": "System", "itemIdentity": "PIJabCPMhqOeDXc5", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 47, "entitlementId": "GL7YAU5AnUkmfVW9"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Other", "count": 100, "currencyCode": "BnVeYTD7i7fqOSZx", "expireAt": "1982-11-28T00:00:00Z"}, "debitPayload": {"count": 48, "currencyCode": "b5jkz9ihTe86sjHo", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 71, "entitlementCollectionId": "LGz2Km7DEtivDSv0", "entitlementOrigin": "Nintendo", "itemIdentity": "hunn3jSCD2AknCwP", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 54, "entitlementId": "TX4CK4IBY01KuFbs"}, "type": "FULFILL_ITEM"}], "userId": "Iv2Ij9B7VD3SyR3U"}], "metadata": {"CMUtsTLoeVLjxbwU": {}, "QUVEWE0xtN3v8DgF": {}, "UrjRGzthYJKH9vhO": {}}, "needPreCheck": true, "transactionId": "poWOSJS0kU6fD66y", "type": "b2MtSEiRgh67ylD9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'Commit' test.out

#- 228 GetTradeHistoryByCriteria
$PYTHON -m $MODULE 'platform-get-trade-history-by-criteria' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'GetTradeHistoryByCriteria' test.out

#- 229 GetTradeHistoryByTransactionId
$PYTHON -m $MODULE 'platform-get-trade-history-by-transaction-id' \
    'xIb44v71qZ2QmEuN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GetTradeHistoryByTransactionId' test.out

#- 230 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    '{"achievements": [{"id": "VKEmoFSme2B5xb6k", "value": 2}, {"id": "WsAEY3T2YDXuJSzk", "value": 91}, {"id": "Pp0OS1jOq8HtddVh", "value": 48}], "steamUserId": "7lfOiLRYQkDw4MI4"}' \
    'SEqiXIaji4MOmP49' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'UnlockSteamUserAchievement' test.out

#- 231 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    '4vGlNtuMUpS3K4kK' \
    'GKct8SZQK7TEK4sZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'GetXblUserAchievements' test.out

#- 232 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '{"achievements": [{"id": "zj7oPP3OeZVILEaX", "percentComplete": 3}, {"id": "JJHKR8nXRVh36pW5", "percentComplete": 89}, {"id": "hy0Gtga4xRRNit3A", "percentComplete": 32}], "serviceConfigId": "6Snc4UqgNJcVC0MQ", "titleId": "njUphnyKSPgLrITd", "xboxUserId": "qgHGJd9AlCqccvcf"}' \
    '4aG26GboaJ63McAo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'UpdateXblUserAchievement' test.out

#- 233 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'V2wACiUOAYJUhwTg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'AnonymizeCampaign' test.out

#- 234 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'l0tvWir64fqpyffE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'AnonymizeEntitlement' test.out

#- 235 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'z0xbTHKA2YqU0FWb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'AnonymizeFulfillment' test.out

#- 236 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'YOy7zpSeyGBLauvi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeIntegration' test.out

#- 237 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'jI1vUPcP4XMNICni' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'AnonymizeOrder' test.out

#- 238 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'SwlnSYTuNVajwq9o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'AnonymizePayment' test.out

#- 239 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'nI9NBO48v6DUJRe1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'AnonymizeRevocation' test.out

#- 240 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'LpwuZIoLrVS0AcrY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'AnonymizeSubscription' test.out

#- 241 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    '9Vdxzm1SnMFP7ijR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'AnonymizeWallet' test.out

#- 242 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'I315PPtar2LEaQgw' \
    'OCULUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'GetUserDLCByPlatform' test.out

#- 243 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'kD6Y555p9oqb5MeM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'GetUserDLC' test.out

#- 244 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'GL8kITGmF087BWKC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'QueryUserEntitlements' test.out

#- 245 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '[{"collectionId": "6wzHgwFqS6c2YCA1", "endDate": "1980-02-26T00:00:00Z", "grantedCode": "312BKDvA3YyGsBgT", "itemId": "JCc6734MnrbjAM32", "itemNamespace": "RlQ3Wpg0XNZCsESC", "language": "Fsfq-qGrP_040", "metadata": {"Du49JFXjPc1tJBaH": {}, "YTZ2IdgUYmmt7HXJ": {}, "CUjwNMnmrmR9dDVb": {}}, "origin": "Other", "quantity": 44, "region": "yNupYCzyYEaMgXss", "source": "REDEEM_CODE", "startDate": "1980-11-04T00:00:00Z", "storeId": "rm0JBGkT1hNjHr2i"}, {"collectionId": "cYZYjakKtgPfJHbu", "endDate": "1982-09-19T00:00:00Z", "grantedCode": "lZT5O6iUdCh9M0KC", "itemId": "9zNZRaWXjMCSId4t", "itemNamespace": "DlI96Qjoaq06aI2z", "language": "yQ", "metadata": {"tgZ43r4ZLb7i2SZk": {}, "IaANvZ0I2EGVDWs6": {}, "7zwXLLDtNRfmo1w8": {}}, "origin": "Epic", "quantity": 33, "region": "AcuRQzdYhuES7Bnc", "source": "GIFT", "startDate": "1982-03-11T00:00:00Z", "storeId": "ez1lbenagh9kCPNS"}, {"collectionId": "ZTIlkM5IYJnbFprR", "endDate": "1995-10-29T00:00:00Z", "grantedCode": "KibPdtHZPKb8CPLd", "itemId": "Ik4I9TU6FvvEdqHz", "itemNamespace": "EDtl5oR9m1dm3fGK", "language": "XCj-IgER-433", "metadata": {"4KNYWbvsmtsOVvpK": {}, "YJyOQGUiqcJ2Jldy": {}, "73ukTxjfHXQQVmxH": {}}, "origin": "Nintendo", "quantity": 62, "region": "CVmuzoO2qep49tDH", "source": "REWARD", "startDate": "1977-04-08T00:00:00Z", "storeId": "LDOjXTWGIrWq2VvH"}]' \
    '0roA20Sfzrc9YYsg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'GrantUserEntitlement' test.out

#- 246 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'vVLN3usfhiyCf1FO' \
    'ddxtE52sFK1jNp3O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'GetUserAppEntitlementByAppId' test.out

#- 247 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'wcrNR2jH7Xx7m8Iq' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'QueryUserEntitlementsByAppType' test.out

#- 248 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'yUqaCbbMa2LqgJOA' \
    'fFwvvgYPIFEVZLGz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlementByItemId' test.out

#- 249 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'EglEe95LWKrkj7TP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'GetUserActiveEntitlementsByItemIds' test.out

#- 250 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'uigp3RiJofgD4Vyp' \
    'GT4cTfKNrjPqUk0t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlementBySku' test.out

#- 251 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    '9aquw2B2UVIQMA6B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'ExistsAnyUserActiveEntitlement' test.out

#- 252 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'OpxtYbmQwS5kNxCP' \
    '["LeKM4cQl8DlY91SX", "BeHwrkPCaAycmEvk", "3rVTLjZT9qayJJtW"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 253 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    '8sqkuIBd1NrGWPVv' \
    'OhMTdfTjLVxzjyQs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 254 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'gv5n6Vn7Tiakc1Rz' \
    'b4MCHH4aATHwPTM0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'GetUserEntitlementOwnershipByItemId' test.out

#- 255 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'LfcjvOko7332ZZa1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'GetUserEntitlementOwnershipByItemIds' test.out

#- 256 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'YfuaQ7gPgiz2EBME' \
    '5ikH5iUT9GB4bGcY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'GetUserEntitlementOwnershipBySku' test.out

#- 257 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'zy0T6Q89155mM6Rs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'RevokeAllEntitlements' test.out

#- 258 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'YxtVcgA1q0sR85Dc' \
    'nV5fUvb2OK8scK4M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'RevokeUserEntitlements' test.out

#- 259 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'yIy9F8aBXzn8z72h' \
    'f4D4NOpbUDnyVmYo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlement' test.out

#- 260 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    '{"collectionId": "tZCA9LADbjj6viKP", "endDate": "1992-07-08T00:00:00Z", "nullFieldList": ["2l1kZWnqjJaGGTFa", "JHecFy9m5s6oIWMn", "k88GXMrS82vN0N22"], "origin": "Xbox", "reason": "6tI7v0x9St2EFfU2", "startDate": "1987-10-28T00:00:00Z", "status": "ACTIVE", "useCount": 6}' \
    'yIXierPr2qLKBXRY' \
    't7v7Wfg2omS11YyI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'UpdateUserEntitlement' test.out

#- 261 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '{"metadata": {"WGPc92PcmK9zTgGQ": {}, "s1FIKxCXUhNdJ4cK": {}, "7rz2VPJ8AZ9i1ml0": {}}, "options": ["sbgQ5zPZbllwvt3T", "jGezRRUjCNiQauO5", "Cfja0qWoqWrZJAMV"], "platform": "QaCd4UgSRsFc8FKz", "requestId": "1j1HfaNk1P4hC8wg", "useCount": 44}' \
    'ahdhp0tmV4jjIkC8' \
    'lqpB9cbsDlreKfjf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'ConsumeUserEntitlement' test.out

#- 262 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'pUz3jtg1bKaDBROm' \
    '6TJ2qMul8cl55U4R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'DisableUserEntitlement' test.out

#- 263 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'B2xVHiARcFLzOW7U' \
    'z8Gz5TN3bJ6UVKAd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'EnableUserEntitlement' test.out

#- 264 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'Np2ReRw5WPjohGmJ' \
    'KCjbEtFKLGvBQOS8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'GetUserEntitlementHistories' test.out

#- 265 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    '1LpIh5QqEOKQXnUY' \
    'MXvJJrO8K9yVaSV6' \
    --body '{"metadata": {"MkQpPd0utGYDVGwp": {}, "KCkOgcVrMw1DAaC3": {}, "oGYmbE9E87RTBvlu": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'RevokeUserEntitlement' test.out

#- 266 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    '{"reason": "7lo1foXU28IE7EVv", "useCount": 87}' \
    'rsQWD1svihoAZBd4' \
    'hkykRLwN2LHFkXjh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'RevokeUserEntitlementByUseCount' test.out

#- 267 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'Df4RPTS1xmIM78uc' \
    'o5di3sJNayfJakaJ' \
    '40' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 268 RevokeUseCount
eval_tap 0 268 'RevokeUseCount # SKIP deprecated' test.out

#- 269 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    '{"platform": "MK1ZWOxnVMpyEziA", "requestId": "Pi9dBg5J0me0BhvZ", "useCount": 97}' \
    'Pr0bjy4nFkl8n6PS' \
    'oXYb9tc6rYyOiaUK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'SellUserEntitlement' test.out

#- 270 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    '{"duration": 58, "endDate": "1974-11-25T00:00:00Z", "entitlementCollectionId": "t4GV0JiE7ZbWP80Z", "entitlementOrigin": "Epic", "itemId": "DMluY685drsUwaWM", "itemSku": "LdLGDjtirdqDck0Q", "language": "FovelKxdFe87vTbT", "metadata": {"1ykevWiIoubexJQ2": {}, "2uV5cRj529cEGlYl": {}, "BTFD4MBzAgdtJfak": {}}, "order": {"currency": {"currencyCode": "taCbkIORjbuZi76G", "currencySymbol": "DzksM1Iq82IG598W", "currencyType": "REAL", "decimals": 71, "namespace": "AhvjsHqU3mTbQzxk"}, "ext": {"HXSiDFpwgjtHkQyb": {}, "5yoi3fhBKutgKydd": {}, "ONrCA3C8SvqUKqpS": {}}, "free": false}, "orderNo": "yteBZg7IM93LGdMK", "origin": "IOS", "overrideBundleItemQty": {"Rxu5cYFtJZeinW64": 27, "FR7fT7f00EZw65iq": 82, "fnnFA4ieAeG0JcWH": 77}, "quantity": 92, "region": "xYckKH0j3mmJ2Y5F", "source": "PAYMENT", "startDate": "1975-12-07T00:00:00Z", "storeId": "ndE3Ucg05FtWiuP1"}' \
    'xyPeWov5pJJdyu2T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'FulfillItem' test.out

#- 271 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '{"code": "xbDTPkZkYfTO2Gg0", "language": "kH", "region": "XGaIUaL3FoA27eK2"}' \
    'U3IHpgmmQaQj7hyQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'RedeemCode' test.out

#- 272 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    '{"itemId": "jWqzvHab6b9t7DWT", "itemSku": "aUGBJRTcrm3mIBuP", "quantity": 82}' \
    'xqlGGOe2VYsej3cS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PreCheckFulfillItem' test.out

#- 273 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    '{"entitlementCollectionId": "W6YWXMTlqVrGyQYD", "entitlementOrigin": "Nintendo", "metadata": {"AZrDNCoJ22RroweT": {}, "9Xanvbg8nAmHsrmz": {}, "oPN3GJz77wPralgk": {}}, "origin": "Oculus", "rewards": [{"currency": {"currencyCode": "9IC4460Wck2oK2mL", "namespace": "wkxgJXK2OjNzQ95l"}, "item": {"itemId": "ceIy0lnTniV8j7Xm", "itemName": "R8FUW42wLu5tQBUE", "itemSku": "3k2mUvrQPFxSaRrD", "itemType": "sF1CKYcMJnrn1I3y"}, "quantity": 31, "type": "CURRENCY"}, {"currency": {"currencyCode": "cq83l2hWOuqsilAW", "namespace": "XNFfxIWM9jL08jtC"}, "item": {"itemId": "Ir8STWuiyz2eOgny", "itemName": "7d8WVlcOTKoZimYN", "itemSku": "HB2ph25oEsCRrlY6", "itemType": "AX1ksmS6Cm75yFZV"}, "quantity": 41, "type": "CURRENCY"}, {"currency": {"currencyCode": "1HZPcFbl4XrKUphP", "namespace": "evxFz1b7Q3NwVn8P"}, "item": {"itemId": "U8JfFPiZpcqq8qH8", "itemName": "MR9K5kA67H3XOJlQ", "itemSku": "fOCN2keFNIQusmcA", "itemType": "YWBLZg00dmqgWRmP"}, "quantity": 28, "type": "ITEM"}], "source": "EXPIRATION", "transactionId": "H8xifqavEfKK0Dei"}' \
    '3ChLwkIGKtgDjDah' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'FulfillRewards' test.out

#- 274 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    '0UewhSyu7JMOvmbq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'QueryUserIAPOrders' test.out

#- 275 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'HpLDqY64bsfWMA6z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'QueryAllUserIAPOrders' test.out

#- 276 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'IWiASrarIiILeXO1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'QueryUserIAPConsumeHistory' test.out

#- 277 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '{"itemIdentityType": "ITEM_SKU", "language": "pc", "productId": "dQraUweJSX5gGRLc", "region": "0R4vMMPlJqY7ujDD", "transactionId": "LuoQJspLLZbnusI9", "type": "OCULUS"}' \
    'ty8KpP0RHI8icuY9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'MockFulfillIAPItem' test.out

#- 278 QueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription' \
    '2iMkPiEKRgT1zZPa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'QueryUserThirdPartySubscription' test.out

#- 279 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-group-id' \
    'OCULUS' \
    'IkGhmAMgJu6c1uzC' \
    'A657ulArgYuyjFEv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 280 GetThirdPartyPlatformSubscriptionOwnershipByProductId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-product-id' \
    'EPICGAMES' \
    'pfQ5iJtNrVbjnyYE' \
    'Rw24T1DBdzzVbhZK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 281 QueryUserThirdPartySubscriptionTransactions
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription-transactions' \
    'nh9FfHsuwhOtgOWt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 282 GetThirdPartySubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-subscription-details' \
    'ZuhAp0yxLpfWB0in' \
    'H8xFDMoqbLU4KGse' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'GetThirdPartySubscriptionDetails' test.out

#- 283 GetSubscriptionHistory
$PYTHON -m $MODULE 'platform-get-subscription-history' \
    'vVGPnqXXPustpaZz' \
    '47mZuZptSindV4Kp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'GetSubscriptionHistory' test.out

#- 284 SyncSubscriptionTransaction
$PYTHON -m $MODULE 'platform-sync-subscription-transaction' \
    'ifmfS94ybYG4wLaP' \
    'xhpGODmwJCF4HCv6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'SyncSubscriptionTransaction' test.out

#- 285 GetThirdPartyUserSubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-user-subscription-details' \
    'DG2DfogFpQ6h4G1J' \
    'wgwqyIOpmNMgpfDY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'GetThirdPartyUserSubscriptionDetails' test.out

#- 286 SyncSubscription
$PYTHON -m $MODULE 'platform-sync-subscription' \
    '1FR9rKaxaWsCGgI7' \
    '9Hr331YipwCDOc9F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'SyncSubscription' test.out

#- 287 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'Ns0rjVHzs9C25B5D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'QueryUserOrders' test.out

#- 288 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    '{"currencyCode": "YIkGcoYjLN4VPTXz", "currencyNamespace": "knDz9YRB0KErE7XX", "discountCodes": ["TkVsvdGlmWWA02nK", "hXVFTTx0TcboB98G", "wO7XUNrraxsHn4uK"], "discountedPrice": 10, "entitlementPlatform": "GooglePlay", "ext": {"5PcmWICZpV13Vxw1": {}, "InWyY5J5tCY01Fkb": {}, "WfSwD66Xg5Qbc0Ej": {}}, "itemId": "xxzLQLRh64Y1jopY", "language": "iTRZEzq26aXSjyAQ", "options": {"skipPriceValidation": true}, "platform": "Steam", "price": 80, "quantity": 52, "region": "JlAxZUci2CC1SEp5", "returnUrl": "5TimgFFENNE15Oyf", "sandbox": true, "sectionId": "fW7AVHVE6TamhtDU"}' \
    'acOPwPczqMDbsgia' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminCreateUserOrder' test.out

#- 289 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'axIpP9oAICocQql5' \
    'YfBZVQcDD4zf1BZv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'CountOfPurchasedItem' test.out

#- 290 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'QIrbCQWs1jZYqrf4' \
    'bxOoikruHKYKNEVJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'GetUserOrder' test.out

#- 291 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    '{"status": "FULFILL_FAILED", "statusReason": "zeli2Uey4fuSj1kS"}' \
    'eWA3702McnnKWV37' \
    'CLHYvul2IsFExmn4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'UpdateUserOrderStatus' test.out

#- 292 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'GV4MH5mOZyTMMDaz' \
    'z0zG1FmCCywXfHj3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'FulfillUserOrder' test.out

#- 293 GetUserOrderGrant
eval_tap 0 293 'GetUserOrderGrant # SKIP deprecated' test.out

#- 294 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    '29WcNk8k8qK4gJru' \
    'x6tlQDfleFLBKj8h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'GetUserOrderHistories' test.out

#- 295 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '{"additionalData": {"cardSummary": "7ZrO4pTU7jATbVBc"}, "authorisedTime": "1986-09-21T00:00:00Z", "chargebackReversedTime": "1999-06-15T00:00:00Z", "chargebackTime": "1972-08-07T00:00:00Z", "chargedTime": "1992-07-19T00:00:00Z", "createdTime": "1992-07-03T00:00:00Z", "currency": {"currencyCode": "m98BKOdsoaTqFhdL", "currencySymbol": "fBWZeRFQvrB1lsWa", "currencyType": "REAL", "decimals": 68, "namespace": "V16bQzZjJiiJFm6K"}, "customParameters": {"0MsbekvKte7LEbOa": {}, "js9HWygfQVPPqE6X": {}, "NxmrOFx6AenNJCze": {}}, "extOrderNo": "LqjOhHMsieBzDBhi", "extTxId": "6oZhjEnbkZp3ZHkJ", "extUserId": "nKJ2ksygYZVyQIUb", "issuedAt": "1988-04-11T00:00:00Z", "metadata": {"6vW6lvytcmR4QRN7": "ybL3lT1Ois7OsTEl", "VV8XJ7Jg2JP8JKQ1": "Fia4jQzEGsQTmKTe", "q9hsX0E1pSQzkJa9": "5maQLAJLoGMHeP6X"}, "namespace": "ZjcdrsSt4spX9eT2", "nonceStr": "jwH7ODZfqj84XXtn", "paymentData": {"discountAmount": 13, "discountCode": "07roCNo3Qw4Z54sN", "subtotalPrice": 79, "tax": 0, "totalPrice": 37}, "paymentMethod": "5Ufs9UTtAImWjuqi", "paymentMethodFee": 3, "paymentOrderNo": "5ke34NGuMLQ7iPaG", "paymentProvider": "PAYPAL", "paymentProviderFee": 25, "paymentStationUrl": "elc3lbrPkW2foKqI", "price": 52, "refundedTime": "1987-07-29T00:00:00Z", "salesTax": 62, "sandbox": false, "sku": "0ICxp4M7Opf9oRlv", "status": "INIT", "statusReason": "8fidwt7qJ1Y75wS8", "subscriptionId": "MCmOepp9Tx45YPBP", "subtotalPrice": 34, "targetNamespace": "WCwsAVcQ0VGEUxlc", "targetUserId": "NQWOpRLETWMAv0uJ", "tax": 54, "totalPrice": 18, "totalTax": 76, "txEndTime": "1994-07-08T00:00:00Z", "type": "ZiKfpU2gMmaHuaBz", "userId": "eu4NPuT03UI8xXkO", "vat": 93}' \
    'Uyzq5bzdNEHv6Gma' \
    'okUOIadEDAmp524I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'ProcessUserOrderNotification' test.out

#- 296 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'RplmKcwvGguz7SAc' \
    'GvV4lCJgcrAut2gY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'DownloadUserOrderReceipt' test.out

#- 297 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    '{"currencyCode": "puKbE8ulWHoG1zC1", "currencyNamespace": "K7oT3iNe5yhZbqmA", "customParameters": {"gI6LUauh1GlEo4fa": {}, "eHIeXSROEb0iXucF": {}, "oRm7DFw5ArJzNAEl": {}}, "description": "ybJSWLbZCdcwYHhO", "extOrderNo": "IGu0vXLFZoXt8k5Z", "extUserId": "tRJGwh0BPRCWdTny", "itemType": "INGAMEITEM", "language": "YfM", "metadata": {"sJ8JDDcPDev3e8oc": "7sh3o0r9VYIh3Jj1", "5pf4bXUrytKH5rM5": "4pVKLq2niQIIF3Qc", "9pq9UUur5zNNHf53": "CHNLzMNElAaW04oQ"}, "notifyUrl": "Xa8waozlr2ftyZkl", "omitNotification": true, "platform": "z8vDIkHRMj2pIYdQ", "price": 15, "recurringPaymentOrderNo": "gU419HQGug3ApiXA", "region": "ivNHSVq7Hy14PWQg", "returnUrl": "yxy3AZ9Q29c3FLGn", "sandbox": true, "sku": "NZANUG3XywOPxcLT", "subscriptionId": "U0y3maqZGwBZAszr", "title": "s6F6qWE8F5UT7Jy1"}' \
    'J0W4BcrVEEfr25k1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'CreateUserPaymentOrder' test.out

#- 298 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '{"description": "H2s4V2KN0PLlR8cm"}' \
    'Ho3XR1GqcOtFZDsj' \
    'HNjL304sV2h9pg3y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'RefundUserPaymentOrder' test.out

#- 299 GetUserPlatformAccountClosureHistories
$PYTHON -m $MODULE 'platform-get-user-platform-account-closure-histories' \
    'vd9MZqnUseNuEx7Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'GetUserPlatformAccountClosureHistories' test.out

#- 300 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '{"code": "DEkdFOw34ZkvghT5", "orderNo": "B0olJY1qewjIDEZe"}' \
    'db90DCSoLAgeUlju' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'ApplyUserRedemption' test.out

#- 301 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    '{"meta": {"QXNi35z75tQmcrR0": {}, "8dqYhgjNEKxgigqj": {}, "Iaaftddfk3N3FUGt": {}}, "reason": "7hRJWz66woOwujZi", "revokeEntries": [{"currency": {"balanceOrigin": "Oculus", "currencyCode": "6aDmZpx6FpqFAR1F", "namespace": "P2qDxqukQGmZ8QPR"}, "entitlement": {"entitlementId": "4rrBu0xMLSZM2reG"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "eUsKe4gH8U04S5FC", "itemIdentityType": "ITEM_ID", "origin": "GooglePlay"}, "quantity": 25, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "eCJwMPHx5qbq2es6", "namespace": "TWDRr2bTPUxXfvsO"}, "entitlement": {"entitlementId": "wNGBX5w0CKM4KgSa"}, "item": {"entitlementOrigin": "System", "itemIdentity": "Bq3cXU8GYxE0OhdS", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 91, "type": "ITEM"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "WMXN21fc6lGGfo4I", "namespace": "JnwUyJDPc4Bi2BT8"}, "entitlement": {"entitlementId": "WWMNZ7MQ0xXiAUp3"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "FZG1bPREFnLFvdjV", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 3, "type": "ITEM"}], "source": "DLC", "transactionId": "4f5a8wwsXbVcGQFc"}' \
    'H3a88llB2KCetfPN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'DoRevocation' test.out

#- 302 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    '{"gameSessionId": "aSebuaBm42ZRTd7o", "payload": {"tFS5xUblp0GJFHhD": {}, "BbjdusCtKYo61c23": {}, "RG7T7E4yKJUPzM18": {}}, "scid": "zammJN39lhBPiRxS", "sessionTemplateName": "SC369UVGTnts7qK3"}' \
    '3YCsDe0la83cvnj5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'RegisterXblSessions' test.out

#- 303 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'Ut4YTxIBMay1sHQo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'QueryUserSubscriptions' test.out

#- 304 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'xlbhfnh1larFYcM0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'GetUserSubscriptionActivities' test.out

#- 305 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '{"grantDays": 84, "itemId": "SDQ0zyrZOMqd75oC", "language": "p2u2A2ZLrkeWbmcg", "reason": "fplQTNIZctTysFM8", "region": "9BCAF2MVozVctDaM", "source": "us5bsovjmmxHjjlq"}' \
    'uESAZpAC3MEgBrVU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PlatformSubscribeSubscription' test.out

#- 306 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'oMCPYZARtb3TsS5j' \
    'OBRYgnvYu1vzXsMr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 307 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    '43ycE5A2fFKAWLe4' \
    '5nohGKrvpCUuClhT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'GetUserSubscription' test.out

#- 308 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'nLjG2riY5IlAkHgx' \
    'sULSOBCWJH9jh3zB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'DeleteUserSubscription' test.out

#- 309 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    '{"immediate": false, "reason": "JEYLPl0Rjsq0yRuQ"}' \
    'RarSVoIleZ7Ptbbc' \
    'riinQEr7oILTomzV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'CancelSubscription' test.out

#- 310 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    '{"grantDays": 62, "reason": "OUcpBs05S6VCRgcp"}' \
    'qzF0Wdx4tTiOqvd6' \
    'is3iMkUYXGJ52Lhr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'GrantDaysToSubscription' test.out

#- 311 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'cYmNqU8FNr2Sf2vn' \
    'HOZhdmTd8ENVRZH8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'GetUserSubscriptionBillingHistories' test.out

#- 312 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    '{"additionalData": {"cardSummary": "lmeTjzHxgwKaMjUp"}, "authorisedTime": "1980-11-14T00:00:00Z", "chargebackReversedTime": "1987-09-05T00:00:00Z", "chargebackTime": "1985-10-17T00:00:00Z", "chargedTime": "1988-09-28T00:00:00Z", "createdTime": "1998-03-17T00:00:00Z", "currency": {"currencyCode": "29SPAGK8QxsXGgAK", "currencySymbol": "3QR9g0C7nE1t58Ld", "currencyType": "REAL", "decimals": 91, "namespace": "QQXSvH7kwH9PKAIE"}, "customParameters": {"qRaoWkdV23II0TED": {}, "jWcIzfsSrF9JBbs3": {}, "ioKOVcrfhki2j4K5": {}}, "extOrderNo": "qHkvYSU2i8wpPg4f", "extTxId": "6CytNOpTcy8nFxny", "extUserId": "Uhq8QCACdn9QBrEB", "issuedAt": "1997-07-07T00:00:00Z", "metadata": {"0FGcSF09VMOBfFhg": "ytL5jv2cyVSXxh4A", "5aA1bEwNCWytxJKp": "hKxkJ5Y2qNwo7fOI", "Em4CCHTjiJTcJCNU": "9JxdozQjrd9h3Kvs"}, "namespace": "eGTWQwYHbgonXMWB", "nonceStr": "gwAHBLENBGh8mzbI", "paymentData": {"discountAmount": 29, "discountCode": "UUQoj40AF05z6BC0", "subtotalPrice": 11, "tax": 68, "totalPrice": 94}, "paymentMethod": "4BlyXE2K4uNJRgQ3", "paymentMethodFee": 59, "paymentOrderNo": "G6bELZwjEmKgZXlg", "paymentProvider": "ADYEN", "paymentProviderFee": 82, "paymentStationUrl": "V3dBwrK8hpKlmw63", "price": 4, "refundedTime": "1973-04-30T00:00:00Z", "salesTax": 25, "sandbox": false, "sku": "A27tg6bypXmwZRpU", "status": "CHARGEBACK_REVERSED", "statusReason": "Qcrmp46NHHKuQExW", "subscriptionId": "orl4PYKJ1GJKlZ26", "subtotalPrice": 25, "targetNamespace": "PIqi1GB1ZASgNbyI", "targetUserId": "gL74DNNIekar0ZUa", "tax": 16, "totalPrice": 10, "totalTax": 36, "txEndTime": "1987-04-30T00:00:00Z", "type": "V8WpFG2gRMkdKgCu", "userId": "xFa4ix8vdZvwAMOm", "vat": 93}' \
    '5YMkpzkat1qYXphV' \
    'Msbw6Rv3XZ4XgIfT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'ProcessUserSubscriptionNotification' test.out

#- 313 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    '{"count": 25, "orderNo": "ScsyhWe6QJ1Ov7wz"}' \
    '26xkkYYxgGLN3OJh' \
    'mFyZH05CCwf21Y2T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AcquireUserTicket' test.out

#- 314 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'az2uFpz174OkRp3B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'QueryUserCurrencyWallets' test.out

#- 315 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    '{"allowOverdraft": false, "amount": 47, "balanceOrigin": "Epic", "balanceSource": "PAYMENT", "metadata": {"VbqgNrZPytIR58rT": {}, "LNpt4RpqpKk9toEL": {}, "RS24cMw2Lh6XTFr1": {}}, "reason": "d0v5MiCVrY2QOMJm"}' \
    'NbAv9VCU7hdDbGzc' \
    'JKa1wsM434xCGXTs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'DebitUserWalletByCurrencyCode' test.out

#- 316 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'h5xydeZADSKQFv0t' \
    'nP05L7Nwx1i8sHEb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'ListUserCurrencyTransactions' test.out

#- 317 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 34, "debitBalanceSource": "OTHER", "metadata": {"mIdomBVyorRK73vb": {}, "WSNBzkiEHyJEOg3i": {}, "IjU3AAg7WG2eTsmD": {}}, "reason": "aTzm1iyRQNy7RFRX", "walletPlatform": "Other"}' \
    'ZdZvXUVezIt3Hezh' \
    'SE8IGOaRsievm4ID' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'CheckBalance' test.out

#- 318 CheckWallet
eval_tap 0 318 'CheckWallet # SKIP deprecated' test.out

#- 319 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '{"amount": 48, "expireAt": "1974-06-09T00:00:00Z", "metadata": {"sYWwX5hKxgCMD1qR": {}, "yNe4g5DSTBpRPaWH": {}, "EoCnndVYqgBPmwdN": {}}, "origin": "Nintendo", "reason": "0BVP1MHJQhmZHHkt", "source": "DLC"}' \
    'SgQXdYwRiDuKo24S' \
    '6RgeY6mxarVsr09J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'CreditUserWallet' test.out

#- 320 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 33, "debitBalanceSource": "EXPIRATION", "metadata": {"7nqfMF4iGEw5Ehhl": {}, "xYtAWr3elzD6WKsC": {}, "rHf4vU4AqkG2jU9D": {}}, "reason": "ouFSA3CLtlE5PpY0", "walletPlatform": "Playstation"}' \
    'XXFyG4988DpkyITb' \
    'fvPjkpdcTxG4LMLO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'DebitByWalletPlatform' test.out

#- 321 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '{"amount": 55, "metadata": {"ExIjLvTJkl9WnxI3": {}, "c4i8HDHZe4XLK8QP": {}, "EA7MUcU28Tjo0XKr": {}}, "walletPlatform": "Xbox"}' \
    'KBD3YwTJ4Hn5XqA2' \
    'kk1A3H3rxXt6ggKw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PayWithUserWallet' test.out

#- 322 GetUserWallet
eval_tap 0 322 'GetUserWallet # SKIP deprecated' test.out

#- 323 DebitUserWallet
eval_tap 0 323 'DebitUserWallet # SKIP deprecated' test.out

#- 324 DisableUserWallet
eval_tap 0 324 'DisableUserWallet # SKIP deprecated' test.out

#- 325 EnableUserWallet
eval_tap 0 325 'EnableUserWallet # SKIP deprecated' test.out

#- 326 ListUserWalletTransactions
eval_tap 0 326 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 327 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'ListViews' test.out

#- 328 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    '{"displayOrder": 100, "localizations": {"wNdNaPLrz9N2oRxN": {"description": "d2x7bzAMbnc0ESgN", "localExt": {"D3Bzn0RXiwLSoaZy": {}, "giLJ4dBRmXwqKSWT": {}, "RuDBWveCv1Rj0emR": {}}, "longDescription": "qo5yTUCEJDyanAif", "title": "sUA6fKzeVIHcetoK"}, "KyITDGaFUZsvAcQq": {"description": "JMBspeHcHhz8Ok8b", "localExt": {"gV76h8tj65I0OW9D": {}, "hwNHdSw93IumFyH8": {}, "gFezb1WOjy0XInTS": {}}, "longDescription": "ZSMKJYcE585zPfpD", "title": "iAo4zAj1AgjctQkN"}, "A6tPxcpOjecMqPJv": {"description": "YXVa6273TGlaOPmE", "localExt": {"djp63KfNpB5Un5Ob": {}, "PhEk6MRN6zzKPZLW": {}, "VB4YH2roupmMfATa": {}}, "longDescription": "psn4uvJaBhPA5LWJ", "title": "ipgrvQaTdiKmmlpH"}}, "name": "UD2h7I7UbUNrp02F"}' \
    'BwxeZXuYnlq95T6q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'CreateView' test.out

#- 329 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'uy9PsI3dx75GAWm1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'GetView' test.out

#- 330 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    '{"displayOrder": 100, "localizations": {"oL66XhyfKhLtqZR2": {"description": "r4RfVOg9ZWFBw7Tk", "localExt": {"0E680aIGz1A2cXng": {}, "jJWPf2xqt2uL9EtE": {}, "NwWqOZUVxd7bZpS2": {}}, "longDescription": "i4gNvHnKuaNhVEaI", "title": "WElcUTlMDbUWJ5sp"}, "S6gLd7l7OF4v4RTL": {"description": "nsM4wpXhdaJDB3MX", "localExt": {"GMrRfpSxf1BnhjtA": {}, "ikWfrrIadsWMmGap": {}, "PUenPlT7QiPDEUKB": {}}, "longDescription": "KA2vpqA4MSD0izLT", "title": "URYUzEglKz4HU03X"}, "04OxvZytaM4c4qTI": {"description": "V7vRV6x146gCIrSk", "localExt": {"EiZX9iHZkthOUUtP": {}, "Bx2Kqt9eEQQ5qXZd": {}, "41KiSlLVmN9KSbiF": {}}, "longDescription": "MGQMewQlUnkcE3UY", "title": "V2aj9PL4PQGJJokF"}}, "name": "eKLbBQG16At6ZhNx"}' \
    'uLFAW37EUwOviFJi' \
    '304rwbySnVTSdmqy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'UpdateView' test.out

#- 331 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'ftEYQl2xFFtZWlWK' \
    'mQH3tI9yHxuaa0zb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'DeleteView' test.out

#- 332 QueryWallets
eval_tap 0 332 'QueryWallets # SKIP deprecated' test.out

#- 333 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    '[{"creditRequest": {"amount": 94, "expireAt": "1978-09-20T00:00:00Z", "metadata": {"NGP7Xy3gYPJQEukO": {}, "cBtFyzW1aKe15m4N": {}, "orN2PP1hXmALwnid": {}}, "origin": "Playstation", "reason": "kKYCj9livHcRCMFb", "source": "ACHIEVEMENT"}, "currencyCode": "BVWp96bYrG5ANSRC", "userIds": ["XWy9C2oM6ZVdGQt7", "ed5WKQJkzGQPBQoX", "pXVvDLulelX30R2h"]}, {"creditRequest": {"amount": 86, "expireAt": "1974-03-30T00:00:00Z", "metadata": {"PPO9giI7gI536KVA": {}, "x0UzIc4Ou1SpoEwl": {}, "9NhPbf7Fy05sDwOS": {}}, "origin": "Other", "reason": "A6HEvqN7kX4VVVBS", "source": "IAP"}, "currencyCode": "9UUbLl2ciimYDeDc", "userIds": ["PlVeOc8uDGuA9ZVt", "WHorOJPVoTCRV5en", "eMEtPkjYd9PNBi79"]}, {"creditRequest": {"amount": 86, "expireAt": "1972-06-17T00:00:00Z", "metadata": {"NJSYGVxi7ACWF50C": {}, "SEIj98y965Raxu2u": {}, "jZqzkOZE6sOGLtoF": {}}, "origin": "Twitch", "reason": "V4KPvi1IDd9h3Dkr", "source": "IAP"}, "currencyCode": "ZfTzJfHZF17lZ95J", "userIds": ["mGny7g72f6SO7Xay", "0TGMk4DmrwxC6EQr", "fUmZz42HE0t7TAQm"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'BulkCredit' test.out

#- 334 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    '[{"currencyCode": "9lk8teEugVd3X7cq", "request": {"allowOverdraft": false, "amount": 77, "balanceOrigin": "Steam", "balanceSource": "TRADE", "metadata": {"oeAhwgfo77M8FJYR": {}, "hM0dJBA4b3QbH3tC": {}, "VfHKGFiQvPyj1FCk": {}}, "reason": "4QM8cZueXeYkC0oo"}, "userIds": ["ckOjWhMg8bi8TTnK", "7aThH67UFGXrkXmm", "6au871df3bxo2Xjw"]}, {"currencyCode": "MhbcaFVUwJJdMacF", "request": {"allowOverdraft": false, "amount": 41, "balanceOrigin": "Nintendo", "balanceSource": "PAYMENT", "metadata": {"236DRyTtXhEPzahV": {}, "XYKrblYxb89S0lys": {}, "rMEifhjrwrJGqlmy": {}}, "reason": "y5EAtMaJvnkbpELC"}, "userIds": ["Lpc5HR4Bp38TGeyf", "CQEX7DlAjoDECQ1A", "WQESVLLj435Tsq6x"]}, {"currencyCode": "xQZBGiif91rgOdzA", "request": {"allowOverdraft": false, "amount": 80, "balanceOrigin": "Oculus", "balanceSource": "TRADE", "metadata": {"VBiv6rL3ZEZRH0Pk": {}, "kc62P13ItOBeXpRU": {}, "TmAHfO9FrQ9lwzAW": {}}, "reason": "iJH282OIiKU7MRx3"}, "userIds": ["hoflsBWhnubnROvA", "1CxkXWIlkrF4cf9E", "xefM47AsxVCXefUT"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'BulkDebit' test.out

#- 335 GetWallet
eval_tap 0 335 'GetWallet # SKIP deprecated' test.out

#- 336 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    '2pKWkX7et7rl9ow7' \
    'BDniJH2zFRgcuTMY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'SyncOrders' test.out

#- 337 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    '{"allowedPaymentMethods": ["iBESlCYdNui4AfrJ", "uSaiOYxuj6n1UTUH", "sgjv4O66qvH38lYK"], "apiKey": "eEiUS3GYxZHMK3yb", "authoriseAsCapture": false, "blockedPaymentMethods": ["n4gzDKwFxpxbYvPC", "vcqkfowSDA1NKgkK", "4huDhAO8zhoVbnYs"], "clientKey": "36USYZPYliicANHh", "dropInSettings": "XNQESalqimMMSci9", "liveEndpointUrlPrefix": "xEExP9jva13uRBo7", "merchantAccount": "tIuLW7T1d689kzJW", "notificationHmacKey": "Uj0IhAuSR15xUgtP", "notificationPassword": "xWpU3njfM3MLLEwp", "notificationUsername": "sdD0knPNT7MZM5TU", "returnUrl": "kTp46Y9LTNtGN9WU", "settings": "qYyTxul6u3RuXCCJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'TestAdyenConfig' test.out

#- 338 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    '{"appId": "SaYmbf4tEBMWAIsb", "privateKey": "PmXPNCh5Rfq2UC1T", "publicKey": "CPCsq2BAEzRa56ra", "returnUrl": "dYciedOlGrfTUc5A"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'TestAliPayConfig' test.out

#- 339 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    '{"publicKey": "CZJjhP2aqyZJps39", "secretKey": "vNgtqv552OktaS7I"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'TestCheckoutConfig' test.out

#- 340 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'DebugMatchedPaymentMerchantConfig' test.out

#- 341 TestNeonPayConfig
$PYTHON -m $MODULE 'platform-test-neon-pay-config' \
    '{"apiKey": "d9oPGerpovdmW3j3", "webhookSecretKey": "eSpo6vhwdrFa4npr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'TestNeonPayConfig' test.out

#- 342 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    '{"clientID": "0qt5yxg5LXtD40Rs", "clientSecret": "ibRBputNAcV0wHVw", "returnUrl": "4OJZ9KRfK3ElT6iz", "webHookId": "H6Pdx5D1ZrPFTEv9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'TestPayPalConfig' test.out

#- 343 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    '{"allowedPaymentMethodTypes": ["1KnFOHx4QGVt5sQ7", "M74MHRwGWuXrmWB8", "1vpVnNLvfxMVPORd"], "publishableKey": "XWvsGZrPVAZ2ZLrD", "secretKey": "a1xpqIziihTn1qm3", "webhookSecret": "WYY19InV7B8tHIYi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'TestStripeConfig' test.out

#- 344 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    '{"appId": "WBgIkW9QrR9bMgSr", "key": "1OTY7V3CTRYI1Nyo", "mchid": "n9lvA8o43VZXjofW", "returnUrl": "hPJjqdf6RBiYws6M"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'TestWxPayConfig' test.out

#- 345 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    '{"apiKey": "PqsSKy9SsYw3NP5y", "flowCompletionUrl": "L2qIrhx90T4EDNbg", "merchantId": 35, "projectId": 87, "projectSecretKey": "e3EwhoEBW0FNQL1G"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'TestXsollaConfig' test.out

#- 346 GetPaymentMerchantConfig1
$PYTHON -m $MODULE 'platform-get-payment-merchant-config-1' \
    'Y5CSEzZsaak9MNj0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'GetPaymentMerchantConfig1' test.out

#- 347 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '{"allowedPaymentMethods": ["mKis5KQHhwB99zMK", "Owz2mKAvkSzld2vf", "Grbc2jP3wtM1fSok"], "apiKey": "Fngc559mMToWdIIC", "authoriseAsCapture": false, "blockedPaymentMethods": ["VtpXfKrTUd4eK4cP", "dj9IYCmOOskIKiuK", "PVqNdfcbarmjmzkY"], "clientKey": "QMLffgy1mpc59V2q", "dropInSettings": "KD8lNq4hOjr98OLo", "liveEndpointUrlPrefix": "HszOIdSWIpaLpZwn", "merchantAccount": "DkDw7Zrilk8Q803R", "notificationHmacKey": "jC4wycgOIphhydYZ", "notificationPassword": "7NEwrSsI3cSyJGEs", "notificationUsername": "S9JnHfbeKOjYbpVv", "returnUrl": "23JUwrktKue5lw0m", "settings": "8Evy70CBhCstkqyD"}' \
    'QrrYVdLYuxdWsAQc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'UpdateAdyenConfig' test.out

#- 348 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'Raz03FZ9YTDWnlXZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'TestAdyenConfigById' test.out

#- 349 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '{"appId": "0fFMUOsM2D6XBEfj", "privateKey": "5FBqjqhaVBjVf2bp", "publicKey": "iMDOiSWOpn2CnqA4", "returnUrl": "5FZIkMYCCydNQhga"}' \
    'pqGnYl698VRGqR2j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'UpdateAliPayConfig' test.out

#- 350 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'dN2MQUBknTnbrD6I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'TestAliPayConfigById' test.out

#- 351 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '{"publicKey": "10HAKBM66Ig4h5ox", "secretKey": "aA4ecsKGNruoLw9n"}' \
    'JkDd0eeHTKcUcujM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'UpdateCheckoutConfig' test.out

#- 352 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'ld5XM0y0hA8uAIGJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'TestCheckoutConfigById' test.out

#- 353 UpdateNeonPayConfig
$PYTHON -m $MODULE 'platform-update-neon-pay-config' \
    '{"apiKey": "lt6gj5YD5232Just", "webhookSecretKey": "eSb6Rq9qeFktXeu9"}' \
    'Xij04Bqjp8LL57sc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'UpdateNeonPayConfig' test.out

#- 354 TestNeonPayConfigById
$PYTHON -m $MODULE 'platform-test-neon-pay-config-by-id' \
    'i4swWJ6ouP7mWY1u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'TestNeonPayConfigById' test.out

#- 355 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '{"clientID": "g8s10bVJXCswqH9m", "clientSecret": "C39RMuXDX1RgEkBo", "returnUrl": "lpVL29zMvjDniDn8", "webHookId": "AYrRRr985p7F8iN9"}' \
    'R9kmB5pdeZ7PqPhv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'UpdatePayPalConfig' test.out

#- 356 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'iqqmJ2XxbkLOOWQT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'TestPayPalConfigById' test.out

#- 357 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '{"allowedPaymentMethodTypes": ["73tzAjekCOilOpoo", "uKkx1qj85bRrVwuO", "nqEPcdhXj214NDtW"], "publishableKey": "9jjIhrEmkNYBheQN", "secretKey": "R4zCS89KqvbOl0Da", "webhookSecret": "yb9zBS6MQ3orSyb3"}' \
    'fSoG1E1gohjzQBWP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'UpdateStripeConfig' test.out

#- 358 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'VD8fgTZBggdAj0B0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'TestStripeConfigById' test.out

#- 359 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    '{"appId": "17EuJVu3uC314IH9", "key": "MRg40yRzHF2sUxlg", "mchid": "cXZZg9Qz8cBJEfDT", "returnUrl": "E8ndimKYOwqvWgcS"}' \
    'MiL3ADcBZC1b1uln' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'UpdateWxPayConfig' test.out

#- 360 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'qTNaXTLYftRvPlpA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'UpdateWxPayConfigCert' test.out

#- 361 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    '8xbm6EVV6HtbTcLI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'TestWxPayConfigById' test.out

#- 362 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    '{"apiKey": "MpXtDVIHpxYskyOZ", "flowCompletionUrl": "9GTOpAmyjwPmzYZp", "merchantId": 58, "projectId": 93, "projectSecretKey": "er18YeUzcRemWJu2"}' \
    'baHMsMOQdoVhxkHA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'UpdateXsollaConfig' test.out

#- 363 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'GG58la2mBmEsorfA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'TestXsollaConfigById' test.out

#- 364 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT_DARK"}' \
    'lkB5I8W0zaXLBbr6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'UpdateXsollaUIConfig' test.out

#- 365 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'QueryPaymentProviderConfig' test.out

#- 366 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    '{"aggregate": "ADYEN", "namespace": "Gm7u6jzl05VURHB2", "region": "aH1OBjSbRTbA5ngX", "sandboxTaxJarApiToken": "8nMk5seGmbg5yaV5", "specials": ["WXPAY", "PAYPAL", "ALIPAY"], "taxJarApiToken": "dtmXxubnK90It1WE", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'CreatePaymentProviderConfig' test.out

#- 367 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'GetAggregatePaymentProviders' test.out

#- 368 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'DebugMatchedPaymentProviderConfig' test.out

#- 369 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'GetSpecialPaymentProviders' test.out

#- 370 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    '{"aggregate": "STRIPE", "namespace": "0jX59yF5X1xzeylW", "region": "JrNvKlRFeIOal513", "sandboxTaxJarApiToken": "9ds1poYn2c28hYjU", "specials": ["CHECKOUT", "CHECKOUT", "WALLET"], "taxJarApiToken": "q9yqguKMz482n0E7", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    'fkkemcXh4pNS6sh7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'UpdatePaymentProviderConfig' test.out

#- 371 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    '1nsTcYAqRmpQJ4iK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'DeletePaymentProviderConfig' test.out

#- 372 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'GetPaymentTaxConfig' test.out

#- 373 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    '{"sandboxTaxJarApiToken": "sMRzrkq6bbxROX48", "taxJarApiToken": "x3z6oqsbyJVZinLI", "taxJarEnabled": false, "taxJarProductCodesMapping": {"PccaYI6l6fKrVA93": "qreneWTQ0fb8ClHB", "QXSaPIU1SAfAfEzm": "7orhTTcA4tRZdrCv", "asM0LBo8pp2WxzCD": "gXIN2T2y2ghUM22S"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'UpdatePaymentTaxConfig' test.out

#- 374 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'odo4xBNE56wEz4NN' \
    'eslnTClsU2sYSfcM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'SyncPaymentOrders' test.out

#- 375 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicGetRootCategories' test.out

#- 376 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'DownloadCategories' test.out

#- 377 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'mI5rwQFFHJVtc0So' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicGetCategory' test.out

#- 378 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'SjcBoYhfbT5F3zL2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicGetChildCategories' test.out

#- 379 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    '7szSOYd9Y0NpVE2a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicGetDescendantCategories' test.out

#- 380 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicListCurrencies' test.out

#- 381 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'EPICGAMES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'GeDLCDurableRewardShortMap' test.out

#- 382 GetAppleConfigVersion
$PYTHON -m $MODULE 'platform-get-apple-config-version' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'GetAppleConfigVersion' test.out

#- 383 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'GetIAPItemMapping' test.out

#- 384 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    '5u1ivKmyBtn9fNT1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicGetItemByAppId' test.out

#- 385 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicQueryItems' test.out

#- 386 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'GF6M2zSlbUz3WBHp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicGetItemBySku' test.out

#- 387 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'FxzpkrOzs73jVKJe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicGetEstimatedPrice' test.out

#- 388 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'xWAazbTZ8xcQZYsC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicBulkGetItems' test.out

#- 389 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    '{"itemIds": ["ETX7eZJ4NO0fjNEP", "oyNa1H6pgh7vmRlx", "BjIqeBpbdOgQElal"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicValidateItemPurchaseCondition' test.out

#- 390 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'EbCZEVCPO4CPfrYj' \
    'qZmUkz3Ex6g0nu0n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicSearchItems' test.out

#- 391 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'DYcjNC6mnTmEkvGy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicGetApp' test.out

#- 392 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'gUoYZDyX1XgjjnrU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicGetItemDynamicData' test.out

#- 393 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'VMhDfw4eyyzx2XNh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicGetItem' test.out

#- 394 GetPaymentCustomization
eval_tap 0 394 'GetPaymentCustomization # SKIP deprecated' test.out

#- 395 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    '{"neonPayConfig": {"cancelUrl": "0EY35JVEQoV68grU", "successUrl": "jl9Qae3pK8C8CdtT"}, "paymentOrderNo": "w2J5ZQEu9BANVmy4", "paymentProvider": "WALLET", "returnUrl": "XxqVeNlhPSGr2GCS", "ui": "BlAc1QqeDAODDXDc", "zipCode": "Bp0Zm4J2X1YZBUri"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicGetPaymentUrl' test.out

#- 396 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'OMFSlzu34Wp4oAMB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicGetPaymentMethods' test.out

#- 397 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'x4SopAgGjVmLARme' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUnpaidPaymentOrder' test.out

#- 398 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '{"token": "n8aoqlm2gZZIIdtB"}' \
    'LCiRje56hQO7iHYT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'Pay' test.out

#- 399 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'WfraJoGjzdE2Gt5L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicCheckPaymentOrderPaidStatus' test.out

#- 400 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'ALIPAY' \
    'ux5X7eWoUz63g5ld' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'GetPaymentPublicConfig' test.out

#- 401 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'LNvDsFRxvIWPhDHl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicGetQRCode' test.out

#- 402 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'guiwW43ftI0abvQQ' \
    'ByahJAdStJsp8I8S' \
    'STRIPE' \
    '5VKMgof3sbQFx7po' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicNormalizePaymentReturnUrl' test.out

#- 403 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'AiVGM1Z1aMlYKe0a' \
    'XSOLLA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'GetPaymentTaxValue' test.out

#- 404 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'B5OYFvqKEDfQUOT5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'GetRewardByCode' test.out

#- 405 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'QueryRewards1' test.out

#- 406 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'Zg2G1BWvZyqW6CSt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'GetReward1' test.out

#- 407 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicListStores' test.out

#- 408 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicExistsAnyMyActiveEntitlement' test.out

#- 409 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'rsDUMYOj7smPuH5B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 410 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'ZrTsNJRR5uMT5lIH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 411 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'TRyEidwdTqJoLD9k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 412 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicGetEntitlementOwnershipToken' test.out

#- 413 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    '{"gameId": "VnRYM4lgdcOb3Jx4", "language": "QDUn-EsNo_045", "region": "jOjrIUNPjErpmdsC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'SyncTwitchDropsEntitlement' test.out

#- 414 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'qI9mZu9LEeOTaHP4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicGetMyWallet' test.out

#- 415 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'LtwjLUYUJQk80tPm' \
    --body '{"epicGamesJwtToken": "dgSg2KTH1uoBUpdq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'SyncEpicGameDLC' test.out

#- 416 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'wNpqsh9jEInUNjjz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'SyncOculusDLC' test.out

#- 417 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'DzEs7bfi9Y5qNyFF' \
    --body '{"serviceLabel": 30}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicSyncPsnDlcInventory' test.out

#- 418 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'uu1OPm9hwPfrlE7x' \
    --body '{"serviceLabels": [64, 49, 35]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 419 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    '{"appId": "qi9IXEnojjP0c29b", "steamId": "1WNB9WkCyToRi2vf"}' \
    'ZMlKU7yv9DAnbOd7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'SyncSteamDLC' test.out

#- 420 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'qQPOKIe1lgNxUznu' \
    --body '{"xstsToken": "6Mjx3XgwCS1yYFaM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'SyncXboxDLC' test.out

#- 421 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'MSsZH370QWAB8aAt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicQueryUserEntitlements' test.out

#- 422 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'ASkEknQOBTBGEdEf' \
    'yK3mIRHA74vLT0RK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicGetUserAppEntitlementByAppId' test.out

#- 423 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    '95W5F4wbgjwLQ0g8' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicQueryUserEntitlementsByAppType' test.out

#- 424 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    'AhVtlXb0Ww9cX9qD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicGetUserEntitlementsByIds' test.out

#- 425 PublicGetUserEntitlementByItemId
eval_tap 0 425 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 426 PublicGetUserEntitlementBySku
eval_tap 0 426 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 427 PublicUserEntitlementHistory
$PYTHON -m $MODULE 'platform-public-user-entitlement-history' \
    '3up8zSqbSAJ6bSZO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicUserEntitlementHistory' test.out

#- 428 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'sVSW0yfhrPlOVRke' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'PublicExistsAnyUserActiveEntitlement' test.out

#- 429 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    '0Rw0rMOzAoqZ9f1E' \
    'MlA0TgPiaTmgHDc2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 430 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'z6oQw2U7bEMvRb14' \
    'bhXWTQmF3l6Hvpzh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 431 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'H0EfWL4qJaLzNq81' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 432 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'FeQxv1WvDbJOO9Ei' \
    '7svAbiWKf1R8Jo6P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 433 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'YMB78PcooWLEHt7S' \
    'GsO6cJrH6H0hqUID' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserEntitlement' test.out

#- 434 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "options": ["ukur4iEhlcmn3nMM", "88ZHroUTLxsZkcJy", "594BukgYrUkqKLhO"], "requestId": "tCoMjjcsvkUgpfrF", "useCount": 32}' \
    'fSvI7eknvgQgx9Q8' \
    'w3YQS19mKC8Pt64U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicConsumeUserEntitlement' test.out

#- 435 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    '{"requestId": "n3vbUiPzqRlG9blK", "useCount": 28}' \
    'ReV2Sgd0wMGZHEIF' \
    'drXoIkuJvjMnmfWa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicSellUserEntitlement' test.out

#- 436 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 95}' \
    'Jwa8TyyPnCtNFzlK' \
    'slVxaomke2UPriXG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'PublicSplitUserEntitlement' test.out

#- 437 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    '{"entitlementId": "Zvs3NmW1Oq88IVml", "metadata": {"operationSource": "INVENTORY"}, "useCount": 41}' \
    'rMB0ErGNqgTj0m5a' \
    'Xzvl2LFs9Vq7fPpW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicTransferUserEntitlement' test.out

#- 438 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '{"code": "rWijvCWVmkHmWlx3", "language": "bM_iYGx_938", "region": "OKZeelU0xovCm2YC"}' \
    'ueyfFOVTaSJ3nJLn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'PublicRedeemCode' test.out

#- 439 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '{"excludeOldTransactions": false, "language": "eIn-nmHN", "productId": "5hez2MgriZ60A9qK", "receiptData": "ACSJnrZAWDQGJdqa", "region": "Q6yjAOKmxscQRCmb", "transactionId": "WTm1PRgpzXRHuGgW"}' \
    'oSnSmEo0dL02zFId' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'PublicFulfillAppleIAPItem' test.out

#- 440 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'APaaghTcAcuTSz8t' \
    --body '{"epicGamesJwtToken": "ViSRVKzwWqYcgoQp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'SyncEpicGamesInventory' test.out

#- 441 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '{"autoAck": false, "autoConsume": true, "language": "aWwQ-PeeK_093", "orderId": "5KlUCrFmKMrNHOU2", "packageName": "5Bqtu3c7SadVYWuZ", "productId": "Yb5azP3Bn1T6t1Gt", "purchaseTime": 5, "purchaseToken": "n2hSKKZvM4WSz7P7", "region": "y5q6uDaCx8hxTiqp", "subscriptionPurchase": false}' \
    '7UdivafvHNmSOYNl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 441 'PublicFulfillGoogleIAPItem' test.out

#- 442 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'ojMWEfrT6ZPygSkf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'SyncOculusConsumableEntitlements' test.out

#- 443 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'hXyykclGUJ6YBDI6' \
    --body '{"currencyCode": "H0BLhMQNcUFUuoIP", "price": 0.15512924889142565, "productId": "HtjlsAVWEExJQvJm", "serviceLabel": 63}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'PublicReconcilePlayStationStore' test.out

#- 444 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    '{"currencyCode": "xuJkOFydDf9m3LSE", "price": 0.14718442399715714, "productId": "LNMoKjXyYTCslAon", "serviceLabels": [24, 75, 38]}' \
    'xJ66HGJ8Ih3lT8pz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 445 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '{"appId": "oI46PcpuwiYC0cys", "currencyCode": "oxUGXNjS5quHgrht", "language": "LxS_xHyZ-Oh", "price": 0.9554856120702988, "productId": "bSYv9Fk7PATOx8N4", "region": "N4Dg5mDZyNmi9Nee", "steamId": "8E16CJURxlwSvm0n"}' \
    '7bp88FcFKPGv9PMY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'SyncSteamInventory' test.out

#- 446 PublicQueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-public-query-user-third-party-subscription' \
    'OCULUS' \
    'Mb1yETgQxGUEwv8h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 446 'PublicQueryUserThirdPartySubscription' test.out

#- 447 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    '{"gameId": "zsmReJ5mzZVaR7dm", "language": "hCA-bgVu", "region": "Q6M5yBhQNfv11khO"}' \
    'gEX8q4XcyM1quCP7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 447 'SyncTwitchDropsEntitlement1' test.out

#- 448 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'gHWdrdkbXfhVXJ7M' \
    --body '{"currencyCode": "AA1c3t56EpmqXtI1", "price": 0.07690192397998241, "productId": "a94zZAdFCTO6FC2Q", "xstsToken": "Uf0Whdcum4saje9B"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 448 'SyncXboxInventory' test.out

#- 449 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'nJ8xXUB2jgA8fRXd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 449 'PublicQueryUserOrders' test.out

#- 450 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '{"currencyCode": "oImFIj7wmEGJ3sRD", "discountCodes": ["NuaHQZFDy0zd6uef", "cS2Z7IW6c8m0c4Rv", "jeTefS5buyst5TtT"], "discountedPrice": 47, "ext": {"qoB4BUEkv7eDzPw2": {}, "vYMDB34LBJ0JFvU4": {}, "TSVKe3yekeHdH8Hu": {}}, "itemId": "lMLwKFaDkx5oWYFA", "language": "rDx_LJCK_837", "price": 0, "quantity": 80, "region": "NGHHLhyP7oboUMlv", "returnUrl": "sFaoUMm7qtHKySXX", "sectionId": "tUEByVbF44ZXRI1U"}' \
    'U4mMQOT2uy3CoHMY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 450 'PublicCreateUserOrder' test.out

#- 451 PublicPreviewOrderPrice
$PYTHON -m $MODULE 'platform-public-preview-order-price' \
    '{"currencyCode": "JNBA3ZNRQrb2Dz3s", "discountCodes": ["75jV5cXedykx4piM", "65mOtCi7uw6EucgA", "tnYep4qMEijH07e7"], "discountedPrice": 68, "itemId": "rPYRRVlqfGGWhPkl", "price": 85, "quantity": 13}' \
    'uT3em9Iz42YFoIyM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 451 'PublicPreviewOrderPrice' test.out

#- 452 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    '4jQ307TKpWz4d2ui' \
    'ESs0ypsuzcbl4Dtn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 452 'PublicGetUserOrder' test.out

#- 453 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    '32tNBisbkvUfmhkA' \
    'HdGDOTSucllEURtd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 453 'PublicCancelUserOrder' test.out

#- 454 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'q3O6BR25zA3GaAcY' \
    '14lwQ2mYznYkMiU0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserOrderHistories' test.out

#- 455 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'vVreF40rVDDwsRfL' \
    '40POY5Hn3skPtxMw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 455 'PublicDownloadUserOrderReceipt' test.out

#- 456 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'qAHjAkfGd2BO7RPY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 456 'PublicGetPaymentAccounts' test.out

#- 457 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'aACBMfO0XbcSowir' \
    'card' \
    '9ad7UJNTw4TVlSOA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 457 'PublicDeletePaymentAccount' test.out

#- 458 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    '7hqkUzpJrfvCl5rW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 458 'PublicListActiveSections' test.out

#- 459 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    '530yMjnntV6lxz46' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 459 'PublicQueryUserSubscriptions' test.out

#- 460 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    '{"currencyCode": "lnMr9kgHzpU1KgX7", "itemId": "txYFVqqFEhELz081", "language": "QtKu-627", "region": "fLFOXzxoLgAvBNsJ", "returnUrl": "2ndqYrqlR22SxGw0", "source": "BBGpL3uAigOFar5V"}' \
    'eA5QE4kXQFZRL6YQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 460 'PublicSubscribeSubscription' test.out

#- 461 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'zBY5q2zpchS4nABQ' \
    'Wx7hXtj4En87TJ2E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 461 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 462 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    '3gIQhGe5QDctKW2d' \
    'DMadFf2HvnNcdQko' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 462 'PublicGetUserSubscription' test.out

#- 463 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    '24IrllBLgRbKXSWc' \
    '1FjcdL1VlSgxKddp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 463 'PublicChangeSubscriptionBillingAccount' test.out

#- 464 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '{"immediate": false, "reason": "jWORqaRaiKe3J6Mj"}' \
    'aTVKbc6MVnZY8ef4' \
    '30plDAbJOGJnISwk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 464 'PublicCancelSubscription' test.out

#- 465 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'oUkEDT2ZbXq2jUhe' \
    'XRiR9ZCeUFWrh0jQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 465 'PublicGetUserSubscriptionBillingHistories' test.out

#- 466 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    '4KIS0c5TxMgqbcYa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 466 'PublicListViews' test.out

#- 467 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'XxQuiMi8sc8nnqOj' \
    'usG91vBxBCUBoebi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 467 'PublicGetWallet' test.out

#- 468 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'Wj66DdvqlwMH6jkW' \
    'zxyWSduldWnWT6iq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 468 'PublicListUserWalletTransactions' test.out

#- 469 PublicGetMyDLCContent
$PYTHON -m $MODULE 'platform-public-get-my-dlc-content' \
    'EPICGAMES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 469 'PublicGetMyDLCContent' test.out

#- 470 QueryFulfillments
$PYTHON -m $MODULE 'platform-query-fulfillments' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 470 'QueryFulfillments' test.out

#- 471 QueryItemsV2
$PYTHON -m $MODULE 'platform-query-items-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 471 'QueryItemsV2' test.out

#- 472 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 472 'ImportStore1' test.out

#- 473 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'vZCHvMYNoHqAWl82' \
    --body '{"itemIds": ["R5St1JUUoBHxMWnM", "14FYcClCU4wN753o", "tU8VIKaNC4jAc6zZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 473 'ExportStore1' test.out

#- 474 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    '{"entitlementCollectionId": "YFC0mjfQGtP1pKtl", "entitlementOrigin": "Nintendo", "metadata": {"cHbteulJ0qmAMOxQ": {}, "N2tq3ANW3j2knM82": {}, "Js3MYpXMKKRnnXfC": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "iy9QcGEKMT2TWw1d", "namespace": "hh6B7sXyB9QdOnAC"}, "item": {"itemId": "UxcSQbRzuOGQIMxF", "itemName": "KiXXSc289Q3xFWRY", "itemSku": "nNSH7Ya78hgQeKze", "itemType": "NXadROUnBOxtwqDh"}, "quantity": 80, "type": "ITEM"}, {"currency": {"currencyCode": "20WVESn3Lq3vc3ON", "namespace": "zvBgKDPEX7ZirJaK"}, "item": {"itemId": "rszETGuWESPDCrsw", "itemName": "8wGhpJWYgTBMAqnV", "itemSku": "7TlTDpCts9eLzVbQ", "itemType": "mMiR5z2zAUSTeMo4"}, "quantity": 15, "type": "ITEM"}, {"currency": {"currencyCode": "6vddaV7tlGmSltmT", "namespace": "F1Rc4FRD9FCFOkoX"}, "item": {"itemId": "zSvPYqCnSDUDcwHG", "itemName": "bx7ME3dwQ3jZw3dv", "itemSku": "KpTh9t3eP83oVzLj", "itemType": "603LYJG09eH9Vq6r"}, "quantity": 8, "type": "CURRENCY"}], "source": "PAYMENT", "transactionId": "fW369P70k7NWSskB"}' \
    'CzJpMLgGkyOUdt4m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 474 'FulfillRewardsV2' test.out

#- 475 FulfillItems
$PYTHON -m $MODULE 'platform-fulfill-items' \
    '{"items": [{"duration": 52, "endDate": "1978-03-17T00:00:00Z", "entitlementCollectionId": "kxaYaNSXzxd2oRSi", "entitlementOrigin": "Nintendo", "itemId": "7dthQsFwNMAKYBTB", "itemSku": "ZkulsLmecCWLGmhI", "language": "ZeZanP0VcMDpu1IF", "metadata": {"vz6lS0e11XX6rxlj": {}, "Z4aKEWT3it8CuVPP": {}, "qzB1bxGCZTRsbLMe": {}}, "orderNo": "cwQkE2St3jReFAEQ", "origin": "Other", "quantity": 44, "region": "UcmmNn9QvtiE6T5R", "source": "ORDER_REVOCATION", "startDate": "1983-11-27T00:00:00Z", "storeId": "rKcxfdG9prJLxAKK"}, {"duration": 29, "endDate": "1995-03-08T00:00:00Z", "entitlementCollectionId": "zEbs46rc22tQQij2", "entitlementOrigin": "System", "itemId": "rUNQTGPDgO1DYPpk", "itemSku": "UsIxAMvQ0TYyioYS", "language": "sqvixE24A0MBZILi", "metadata": {"VJpRPjbkDPIc5VKx": {}, "CJv2JADKAlbiwvSC": {}, "h7gGsouhPkDuF7dD": {}}, "orderNo": "Q83nAeUS40JxsNUj", "origin": "Twitch", "quantity": 98, "region": "Mb5aCPbxlBpLPzm0", "source": "PURCHASE", "startDate": "1978-10-24T00:00:00Z", "storeId": "TtsmzJtuOWKZOaSM"}, {"duration": 73, "endDate": "1981-09-28T00:00:00Z", "entitlementCollectionId": "KJWvSyKtpPL665Va", "entitlementOrigin": "Nintendo", "itemId": "hLs3hBUqY3Yu7hr4", "itemSku": "BXCjFsJCGWDLfbEB", "language": "X1fDFq8rcYfG8Z9P", "metadata": {"gWjy2W7npJxp6vrb": {}, "IUXHWViHiwgQxiaD": {}, "uZwYsAt9fGKNjmyi": {}}, "orderNo": "X8BwW15hXKp1SF6r", "origin": "System", "quantity": 6, "region": "NCe4IbY0HX1WWNf2", "source": "REWARD", "startDate": "1986-07-05T00:00:00Z", "storeId": "kjryYdmc2XymIObj"}]}' \
    'RrxucZTOtfIlJrMO' \
    'PwdUCtzH0oI7IMo6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 475 'FulfillItems' test.out

#- 476 RetryFulfillItems
$PYTHON -m $MODULE 'platform-retry-fulfill-items' \
    'jYsbXIs1j2kdfY9j' \
    'VoPTTfSopAH3k7WR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 476 'RetryFulfillItems' test.out

#- 477 RevokeItems
$PYTHON -m $MODULE 'platform-revoke-items' \
    'bBnExLSlEBkIhkcY' \
    'sdlko7aPaqrCwlwx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 477 'RevokeItems' test.out

#- 478 V2PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-v2-public-fulfill-apple-iap-item' \
    'AYSodwJnbozMWXk0' \
    --body '{"transactionId": "IafEeZiiyd7fv9BM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 478 'V2PublicFulfillAppleIAPItem' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
