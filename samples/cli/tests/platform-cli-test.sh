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
platform-update-catalog-config '{"enableInventoryCheck": true, "itemDeletionCheckConfig": ["ENTITLEMENT", "REWARD"]}' --login_with_auth "Bearer foo"
platform-get-loot-box-plugin-config --login_with_auth "Bearer foo"
platform-update-loot-box-plugin-config '{"appConfig": {"appName": "UZNmTBcvrbYCwZtx"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "LiBNrDjqoxcwgGLX"}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
platform-delete-loot-box-plugin-config --login_with_auth "Bearer foo"
platform-uplod-loot-box-plugin-config-cert --login_with_auth "Bearer foo"
platform-get-loot-box-grpc-info --login_with_auth "Bearer foo"
platform-get-section-plugin-config --login_with_auth "Bearer foo"
platform-update-section-plugin-config '{"appConfig": {"appName": "cekdqCt81P1ktfIo"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "eIP6rOvDz9KOsb39"}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
platform-delete-section-plugin-config --login_with_auth "Bearer foo"
platform-upload-section-plugin-config-cert --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category '{"categoryPath": "k6YmJFfRByjlBiuF", "localizationDisplayNames": {"M3FIoVk8T3GpAnkC": "mBUqg2SCnqntX9y1", "aZSWMiVi10sG6vxk": "fUcmqRRbceJ5i0Ee", "DxOgBnhhqElIaDml": "48wdNFLTm5T50x9W"}}' 'T0GfH2rtOa4EXsXz' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'OXQAk4mqrxzTtuLl' --login_with_auth "Bearer foo"
platform-update-category '{"localizationDisplayNames": {"4XlbGL8QOxtjzm8y": "2wNhmwoYZyI4EFZK", "BcYrCEAE7WIsfmx4": "0NLRc6m8heKnWhzf", "e2NubeoKFeIaFQCY": "oDPICpnduEEQlULd"}}' 'Jz4mnRBkMNxvvKgA' 'T8mJrYq6hRkloqxM' --login_with_auth "Bearer foo"
platform-delete-category '3gpwxcfMy9XzjjI5' 'YbsKoADkzJEN2VHz' --login_with_auth "Bearer foo"
platform-get-child-categories 'ih3bit0VWn3CO39P' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'XDNxtXgeO3FgkXhj' --login_with_auth "Bearer foo"
platform-query-codes 'DzaQY3snn2ZkP7cF' --login_with_auth "Bearer foo"
platform-create-codes '{"batchName": "dP43e5dC9XIBudfZ", "codeValue": "grbHDIDm4hMzF4Tx", "quantity": 30}' 'jCtoYetOO847g8Ou' --login_with_auth "Bearer foo"
platform-download 'dOfjnCuHZ3c46IjG' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'a23YvYmmDg7VYPXI' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'uvUYTZBRujIUE1Tq' --login_with_auth "Bearer foo"
platform-query-redeem-history '5jyAZvkRCMNFIurj' --login_with_auth "Bearer foo"
platform-get-code 'h2imdb4rbkXj0Zws' --login_with_auth "Bearer foo"
platform-disable-code 'VC0gL97ZVJSPqJiw' --login_with_auth "Bearer foo"
platform-enable-code 'v1qlYB1RSKs6gQxC' --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency '{"currencyCode": "3Gb7S0o4zGYY7KQI", "currencySymbol": "1AeFgPqaOkvo1aol", "currencyType": "VIRTUAL", "decimals": 26, "localizationDescriptions": {"4lkKB4EYOkQ1jMD3": "cym8xIfkOVW2grRE", "OLx0KOww3HICQLfl": "7MUBG7qtPu64yAtU", "RKLRkb738HGS6rDg": "MdIIlhS1fSiM9331"}}' --login_with_auth "Bearer foo"
platform-update-currency '{"localizationDescriptions": {"m7Ta1PsKc50Kv6ec": "nEevcAx2K2zkRenm", "PZnGBt4P7WnbdSJt": "jX7ZshZyZl5x4bRX", "BHUTrDzZSKscfOcY": "u3dpCROYqUiGKXVF"}}' 'Cmpo6sPwVOEDSJsE' --login_with_auth "Bearer foo"
platform-delete-currency 'K5QpNhlI2iS5EpGh' --login_with_auth "Bearer foo"
platform-get-currency-config 'hvXYck0upMzUYnb7' --login_with_auth "Bearer foo"
platform-get-currency-summary '6tFkEORV3bu1bNCt' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config '{"data": [{"id": "X7W40V6Do5sYadCC", "rewards": [{"currency": {"currencyCode": "FrHHC3DpZxkrQDXu", "namespace": "NFviMarv8mnfHK8C"}, "item": {"itemId": "CmE2lPnsbD3SGEdl", "itemName": "wuUccE536ugBp3HB", "itemSku": "vepnDCjgyJlXe36m", "itemType": "gWjLfFmteue9nzJ6"}, "quantity": 11, "type": "ITEM"}, {"currency": {"currencyCode": "H24T805tVg8JqU0j", "namespace": "ZpjvsugAOS7u8RiW"}, "item": {"itemId": "yerCSa8SRgwsAj1i", "itemName": "k1jglaDXTvKCWwNT", "itemSku": "Ahd2wrS0uPdjhdin", "itemType": "png5BLy8wbhMssAH"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "apIkY9Rf4wP57dBZ", "namespace": "NR88YbCtmKy8M9zV"}, "item": {"itemId": "rjfGXZnqAQUoY1Gj", "itemName": "lIIk0iKoTTS1j02o", "itemSku": "7JjTXAQN0qdskdQV", "itemType": "0TqI8EFnmDbxIxi4"}, "quantity": 12, "type": "CURRENCY"}]}, {"id": "lONk2Q5Y4Jvaizwi", "rewards": [{"currency": {"currencyCode": "ilatuUjjt9lIMGql", "namespace": "5ElEa9EIIlGcHB3C"}, "item": {"itemId": "fR3ncDlwi3v3MFFJ", "itemName": "1KesKoELCpobBEG8", "itemSku": "X645xpdXpai0rYaT", "itemType": "5hOPjaf3H0tYighU"}, "quantity": 50, "type": "CURRENCY"}, {"currency": {"currencyCode": "bLFzHEP8cM4NTwr0", "namespace": "KHaAsmTej52WKi6t"}, "item": {"itemId": "ArAURt9plCSVq8Pd", "itemName": "H6hJPUAc0RVwXgAg", "itemSku": "ntLMCuaXBWQi6BqP", "itemType": "g4xr0lCancUZGCHs"}, "quantity": 85, "type": "CURRENCY"}, {"currency": {"currencyCode": "oLfR1KtOv7Zy0b65", "namespace": "uvuKNuy0ytZQ7M6N"}, "item": {"itemId": "zy1adnSKOLFKx1dX", "itemName": "4LuWJu3pDMUAeeZ9", "itemSku": "7SBROPYuG6XqP6oo", "itemType": "7G73zdxTgOfnwIdl"}, "quantity": 82, "type": "ITEM"}]}, {"id": "a29fDLh741IslKHz", "rewards": [{"currency": {"currencyCode": "GlLKWUtDQs61OQAo", "namespace": "xyyQpRWCiiPDGQhN"}, "item": {"itemId": "PEwiJCf2XJVrlzqQ", "itemName": "ls1ozhLVA3kE8jKv", "itemSku": "gatOEBM70TdlNBJY", "itemType": "Ompu1VCarzBsV6xn"}, "quantity": 73, "type": "CURRENCY"}, {"currency": {"currencyCode": "rzzjrcaug6CWVG8S", "namespace": "WP3glU6muswVJnNn"}, "item": {"itemId": "N7kAa7j0riFc5HTH", "itemName": "QIoVsGo7dwV9DBqF", "itemSku": "KHQkETJyTlUrwDTn", "itemType": "oujQD4IEiH9Z5qXn"}, "quantity": 8, "type": "CURRENCY"}, {"currency": {"currencyCode": "cbsPheTH26IUJNvY", "namespace": "uGRUvpZaHCuESOiI"}, "item": {"itemId": "ZsMfB4ZH3mtgWgU4", "itemName": "pCAKxeE70CaunQNx", "itemSku": "ot371W9G4AvQkqsG", "itemType": "nmyo5JJTUVmb8GEX"}, "quantity": 64, "type": "CURRENCY"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"AyrIwMif3BOdkocV": "Td4BxqGWV6mTJ0sQ", "s6XNbjvqhnUVLWu8": "olKdxL6ozRmDD0jJ", "vlfV5OemPYdYT7DR": "OCjtuzFMbAG9YI89"}}, {"platform": "OCULUS", "platformDlcIdMap": {"2pqiXJF3WGRaoQom": "SJC4DdrKF7SUQPLG", "59e0k5ZtX6wK7PpU": "lcIW32iK7MGt1ixY", "5rA1WoVeJIePF8Zr": "QzP4zvtdxdbZUpd6"}}, {"platform": "XBOX", "platformDlcIdMap": {"Yzo8yO2KTK9tmmOn": "YnOpas6ghP1y4Zi7", "s7QBlk44Z44B1GZg": "Kg4uKxaCgcGLuC3b", "rWdTYCfHkIySok5D": "iXZtLW87rGysryod"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements-1 --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-enable-entitlement-origin-feature --login_with_auth "Bearer foo"
platform-get-entitlement-config-info --login_with_auth "Bearer foo"
platform-grant-entitlements '{"entitlementGrantList": [{"collectionId": "3dNQrmsApRA6HX3R", "endDate": "1982-08-08T00:00:00Z", "grantedCode": "rKt2ecozL0TOg54v", "itemId": "CE48L5oLF6M4lNa4", "itemNamespace": "JUMSHNgqRqCV7usa", "language": "oa_vPLX_Pd", "metadata": {"95HgXqKhTPkwfLM9": {}, "uSybRzWek2gZvRrv": {}, "r0n9d9lvccKMLhrT": {}}, "origin": "Oculus", "quantity": 61, "region": "cBE2ItBS3KtKZWe8", "source": "ACHIEVEMENT", "startDate": "1981-04-30T00:00:00Z", "storeId": "aS7RBx3vim02jBOx"}, {"collectionId": "rZDyvpcLYOWA8Njx", "endDate": "1991-01-02T00:00:00Z", "grantedCode": "naEok4nOOCzfsflh", "itemId": "jbngJOUn18G5MlfD", "itemNamespace": "Tk8aG40NlncceIZS", "language": "RGl-KPHf_vP", "metadata": {"U0Am4DZhl0bQxFJ3": {}, "sWCqQpQ2FbKPFMyc": {}, "MSQ4qfAacR0LgB5B": {}}, "origin": "Steam", "quantity": 8, "region": "vjcu2s6w3VifnKqm", "source": "REFERRAL_BONUS", "startDate": "1994-04-25T00:00:00Z", "storeId": "oGH1XEfY6QAYn6WQ"}, {"collectionId": "5UBEU1QAOHfZiGhx", "endDate": "1991-09-23T00:00:00Z", "grantedCode": "dcuDXSxSc3aZPV87", "itemId": "pna08gxefTYKhuxa", "itemNamespace": "Ec7M4P7UckSC6ePe", "language": "lIeT-Vtsa-688", "metadata": {"pATHccee9GXhKcjm": {}, "SEwdrkEnnqKzFsLf": {}, "YalUlfwEQKjU7eHG": {}}, "origin": "GooglePlay", "quantity": 2, "region": "TQN0OcNDLr36vzoh", "source": "GIFT", "startDate": "1983-03-13T00:00:00Z", "storeId": "jMQAg5mPYhrLTyU8"}], "userIds": ["ONDDwMvgI0HlyPR7", "OhgfY9JQYGF4bYXE", "cENx9xZlAchob44l"]}' --login_with_auth "Bearer foo"
platform-revoke-entitlements --body '["wZNiVsF6xG2mXEQd", "bzIVy8alncV7vWgS", "Hdfo07UctPErqxyM"]' --login_with_auth "Bearer foo"
platform-get-entitlement 'yOK06MqQBErxgjVB' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-query-iap-clawback-history --login_with_auth "Bearer foo"
platform-mock-play-station-stream-event --body '{"body": {"account": "ycvU4PbmRDcrg0Dj", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 87, "clientTransactionId": "LD1Lcvw6T6mZEiwx"}, {"amountConsumed": 47, "clientTransactionId": "RZ3ZprZ60zMjhTHe"}, {"amountConsumed": 15, "clientTransactionId": "oowmlTIKVowi0RY2"}], "entitlementId": "VN4ZONJREdUQ3z9F", "usageCount": 56}, {"clientTransaction": [{"amountConsumed": 61, "clientTransactionId": "xNNgnke4akncw7wu"}, {"amountConsumed": 31, "clientTransactionId": "TmXfJWBPrx9Ns8eL"}, {"amountConsumed": 52, "clientTransactionId": "9bpjb1tdA3QhjCMW"}], "entitlementId": "64f4XhIjSoTB2NMK", "usageCount": 39}, {"clientTransaction": [{"amountConsumed": 29, "clientTransactionId": "ezapPr2QEPx3zTxB"}, {"amountConsumed": 67, "clientTransactionId": "ivvQxevecWw7Rry0"}, {"amountConsumed": 74, "clientTransactionId": "hyd12uSE7BEv3aev"}], "entitlementId": "q6iohU1cg4W1IS3U", "usageCount": 44}], "purpose": "sJxlZcCTpTdRtCHv"}, "originalTitleName": "uk6B6XTmSLyn50si", "paymentProductSKU": "gBVZxiKdV57GvRyd", "purchaseDate": "9UuL02Le8HSCslsD", "sourceOrderItemId": "d4M1F5qRIblS7Nz8", "titleName": "1GRazPAANjfBoldF"}, "eventDomain": "OyqA2clJ5gEOaCgM", "eventSource": "6Yn6RugbNEIpGBFU", "eventType": "jOn5mM7k8nbLzvtC", "eventVersion": 70, "id": "sBq8vdhWVnuYLgpZ", "timestamp": "ehK0G2nmyuViB9kR"}' --login_with_auth "Bearer foo"
platform-mock-xbl-clawback-event --body '{"data": {"eventDate": "TcSQdTnNYGeAfYFG", "eventState": "3wSkHKufBdS3ZOok", "lineItemId": "ZB4cXnAXyuGz6Llx", "orderId": "Hv8SwyagYvDJ3w3U", "productId": "NgIGj2jZtEYT8sIP", "productType": "SE1XXPzySa0sZoFS", "purchasedDate": "6xCOWMpyh9pMsQgb", "sandboxId": "64ELbzDMwyo4nIRy", "skuId": "sQdbufXjYnSoIFeo", "subscriptionData": {"consumedDurationInDays": 43, "dateTime": "v67nuHCXWfwnwGio", "durationInDays": 98, "recurrenceId": "sJ4NpUtKp6M9I6nE"}}, "datacontenttype": "wnZhsjwJeGwaPSDM", "id": "Zz95OYKiqaZD63xe", "source": "5rruJVfLGea0Ztlz", "specVersion": "UcuHAXz0UV31MfuG", "subject": "aXsAuGsZaSHevO0T", "time": "QNEI3kfabxJWWSI1", "traceparent": "ECUo1NPpeFhUztXD", "type": "gB7n4C97uAPP8PAT"}' --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config '{"appAppleId": 77, "bundleId": "U6FYBZsWFbr3RSP0", "issuerId": "W9nBhvhf8Q0DtJMc", "keyId": "YQdN66bswAgt65X4", "password": "N1LQZmB61JMdtwCV", "version": "V1"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-p8-file --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config '{"sandboxId": "rYQue84dwmbwFEnA"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config '{"applicationName": "ZaWsQJtRYoagRJK5", "notificationTokenAudience": "PX9UcOvhPyE11TRT", "notificationTokenEmail": "2SKseoe8VLie0LBa", "packageName": "36KNzjf005CXNGeh", "serviceAccountId": "Q2aTjTDfKFDXC7eG"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config '{"data": [{"itemIdentity": "L5YhJDWh9YWqc0qg", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"2kNjCMDtDMrentgn": "3DhqciwIeShF9RKb", "9vvxuJlhXbWhbwPw": "ToC6knjVwVnzaqSf", "JiQFC2gXoda0kg16": "yUSpSOAjHJWwfCjY"}}, {"itemIdentity": "wWkLob9gKLqs2nEZ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"j1mqUav7k05HAQlt": "nSojV4jT65yclX2F", "tAz0vJjFIYWOaNds": "immkW2miH3xRHAKy", "4QxZkaXZ7vmiEd0J": "PxVyQpshaDwNqTbb"}}, {"itemIdentity": "FMXAMfVXe0GZeMgs", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"smH1EQrYmkPKTPOl": "hTtSiZNCxuogFteT", "HJe4BhSSQkQD6WmO": "t6D7ufFVTOhvQpfb", "Bke8aEdd36xj6wyS": "oltDxsbzxrlaKEfk"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-oculus-iap-config --login_with_auth "Bearer foo"
platform-update-oculus-iap-config '{"appId": "oYjY2o6ouRW9UtNq", "appSecret": "uwC3WgumrIz4NhGz"}' --login_with_auth "Bearer foo"
platform-delete-oculus-iap-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config '{"backOfficeServerClientId": "tZpr4U4fwQIiLXgm", "backOfficeServerClientSecret": "RasvjO4lj8m3XEwP", "enableStreamJob": true, "environment": "b4gd3xOeii8Jnmss", "streamName": "ep2xD2NY0kABeGs9", "streamPartnerName": "yxahld1pO0Gyf5PO"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-existed-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-playstation-iap-config '{"backOfficeServerClientId": "3COyMvczgEpzZ3Fb", "backOfficeServerClientSecret": "txfhcRC7IVYa6iZ5", "enableStreamJob": true, "environment": "cRxIsZvD6rmzVr5X", "streamName": "T1Nxw0v1dMQ9Rrbk", "streamPartnerName": "6C2cVWf6ttvbU1PO"}' --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config '{"appId": "6ApCD2VXidT7w0Oc", "env": "LIVE", "publisherAuthenticationKey": "N8WXBPp17PAewqSm", "syncMode": "TRANSACTION"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config '{"clientId": "x3B4t7WQnp8jXZed", "clientSecret": "gt5cyNe27HLtwtVO", "organizationId": "axgP6Jbct8puMybY"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config '{"enableClawback": true, "entraAppClientId": "BxjWOozGoDtsUuYo", "entraAppClientSecret": "5p8ED5QZAufwNa8l", "entraTenantId": "zfjv9oYMXMjlVHY1", "relyingPartyCert": "AHwF3vGoav7MK0Pc"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-query-third-party-notifications --login_with_auth "Bearer foo"
platform-query-abnormal-transactions --login_with_auth "Bearer foo"
platform-admin-get-steam-job-info --login_with_auth "Bearer foo"
platform-admin-reset-steam-job-time '{"env": "LIVE", "lastTime": "1999-09-01T00:00:00Z"}' --login_with_auth "Bearer foo"
platform-admin-refund-iap-order 'mUHVbMPimNhcZsU3' --login_with_auth "Bearer foo"
platform-query-steam-report-histories --login_with_auth "Bearer foo"
platform-query-third-party-subscription --login_with_auth "Bearer foo"
platform-get-iap-order-consume-details 'VAdMDcb4qlkiFAam' --login_with_auth "Bearer foo"
platform-download-invoice-details 'qvZI2KwjqPBiWXad' 'e41s3rH34mB2yPlR' 'pWjmHZAAvKTH8Muq' 'OPTIONBOX' 's2E41cK8QTwiIAvx' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'SvNDlmM5nQFMGzs7' 'fzjgyc44mEh9tRk8' 'knYSV30lnroQehMD' 'COINS' 'e1Il4aAtEbu4IjGd' --login_with_auth "Bearer foo"
platform-sync-in-game-item '{"categoryPath": "qthRxTjQ7gkZEY8r", "targetItemId": "G0q0Q2Qd2JzRbkF2", "targetNamespace": "I03dIjvBbA6bfbYa"}' 'JCJjfk2TUvn95FhO' --login_with_auth "Bearer foo"
platform-create-item '{"appId": "7VW3mbDVMDu87t0l", "appType": "DEMO", "baseAppId": "m5ydC6p25xCWTqUO", "boothName": "YZENJ1QHZQxPRXH7", "categoryPath": "uxBJEECQE1li3Bg7", "clazz": "Jxc9pUnZmvhidwCk", "displayOrder": 30, "entitlementType": "DURABLE", "ext": {"vXO6aj4hCmTC34jx": {}, "W4pIDwdqXpmRmut9": {}, "H9XyWI8bp8fQxRuX": {}}, "features": ["YjERL1rEQG02zccA", "91uYmtrHJbEGTUj7", "8wvLsWUNd6lPKvqD"], "flexible": false, "images": [{"as": "t83AdvBaagTiRJ8d", "caption": "aGTVX3Bb7jlz5IfH", "height": 13, "imageUrl": "e7NPzjOa8E7wY76P", "smallImageUrl": "xLv9HBEUe89AwEw1", "width": 68}, {"as": "nGUGUtV9GJ279GDb", "caption": "LNwjm3FK0nnX2poM", "height": 11, "imageUrl": "8y3Cz0YqCKUh5RD9", "smallImageUrl": "vNAp4jinFpnQ5xF9", "width": 45}, {"as": "HS0VgLu11A3HTovF", "caption": "i4tPAGfleyCA6jEt", "height": 6, "imageUrl": "g79HcLJXJ7mpVI6e", "smallImageUrl": "TYAjdPlCiQQC35cj", "width": 8}], "inventoryConfig": {"customAttributes": {"KyOVgvnWbfRJtsB7": {}, "cUQZ2QUAxJrINPXp": {}, "pPNO3AfmXcgwC3IN": {}}, "serverCustomAttributes": {"6tvKgLB9QmJIOq9d": {}, "P5szG71utjsQ4CrR": {}, "b9gUCeVz7fWbZIdh": {}}, "slotUsed": 9}, "itemIds": ["Urfuf4U3WeYeA9t2", "ENKKWrFtHIi1CMgK", "AOG5iDcCR5PbCvDL"], "itemQty": {"il8wj9cKM3Ar6MF3": 15, "JgehDJxEN7JlZc8L": 80, "l4tHGa4XfZcd9CVn": 67}, "itemType": "EXTENSION", "listable": true, "localizations": {"1bTHXIjfJKyFlM0u": {"description": "1uuoVdn9yVoSlKNc", "localExt": {"hPHNL4X3LLaGPGdq": {}, "LE8SohhhuiTnJarY": {}, "YkHBDdSzBXdxapwh": {}}, "longDescription": "d5IQYBQuxLvPuWYv", "title": "E3fsNy9Z9OhxXvCp"}, "9y7fLD2qfCXnlUnq": {"description": "xT1WsRNMZcA92hzC", "localExt": {"7MNa8vVe4MHX6AgM": {}, "ep90AyyUJyAK5PRM": {}, "RMwdvl0hv6g62GxB": {}}, "longDescription": "W2tQF5tkTjgJaMYv", "title": "NQOsDa4bkcgepqtx"}, "jbrztee7QLTGAak7": {"description": "Kaol01DK97D2xnik", "localExt": {"42miteR5eQAe1rzm": {}, "mgqBPRmd6mO4oI8K": {}, "Dqebm83raNBJ5y7a": {}}, "longDescription": "xEkvI4oxZEDxGiBn", "title": "Nbn0zaf7CaOSlHXr"}}, "lootBoxConfig": {"rewardCount": 96, "rewards": [{"lootBoxItems": [{"count": 75, "duration": 92, "endDate": "1991-08-01T00:00:00Z", "itemId": "qX9LM2IwEsdOGBXB", "itemSku": "wnzDX8v3xgC1Ge9P", "itemType": "dbTTAJ2Gp1r0sVZ6"}, {"count": 78, "duration": 65, "endDate": "1989-08-07T00:00:00Z", "itemId": "ZGYzQqV8d9mDdUIo", "itemSku": "iIJFNxuNOmUSWw18", "itemType": "T1IxVWCxdvPL9e4P"}, {"count": 18, "duration": 78, "endDate": "1982-08-27T00:00:00Z", "itemId": "xP8xj1LyEirURERn", "itemSku": "EMzpImW6sjAHyCK5", "itemType": "tNanGBrkzUvck3xT"}], "name": "tmOFMebS4AdlNzwo", "odds": 0.10432434466371099, "type": "REWARD_GROUP", "weight": 25}, {"lootBoxItems": [{"count": 15, "duration": 62, "endDate": "1979-03-30T00:00:00Z", "itemId": "Th4gUoj8u2WRcLiE", "itemSku": "tzVlnkflfn7pHY48", "itemType": "F1dl1q92m3iRlfnB"}, {"count": 53, "duration": 62, "endDate": "1976-01-18T00:00:00Z", "itemId": "0CwiAsR65yQ9ssuH", "itemSku": "dGmxncCEr0Kcgeqz", "itemType": "GbruNB72HHMkjzyB"}, {"count": 56, "duration": 4, "endDate": "1989-09-11T00:00:00Z", "itemId": "rI6MAugK5kypNrp2", "itemSku": "nFe9FmN86sK5LOq4", "itemType": "ft5jGcMICPUYnfG6"}], "name": "jl9U4jReteIMgzIS", "odds": 0.22950374832587384, "type": "PROBABILITY_GROUP", "weight": 75}, {"lootBoxItems": [{"count": 58, "duration": 84, "endDate": "1980-10-30T00:00:00Z", "itemId": "odJrhQW41q2OspCZ", "itemSku": "bt3Uta5I0uGcL1ko", "itemType": "yHjCH5olYLETRpAB"}, {"count": 55, "duration": 72, "endDate": "1977-11-27T00:00:00Z", "itemId": "iqMcBL4BzhDUjhKP", "itemSku": "wbwcvQU5kG8bXGFm", "itemType": "PAnOkDiJq4xQye7H"}, {"count": 33, "duration": 12, "endDate": "1978-04-30T00:00:00Z", "itemId": "VK3YVeOWs9mfVQh3", "itemSku": "jLBtn9pxpE7BYtzB", "itemType": "0B4CxyQrUpIFvORx"}], "name": "Ti79DpSjb39ukcR6", "odds": 0.037094988205735424, "type": "REWARD_GROUP", "weight": 62}], "rollFunction": "DEFAULT"}, "maxCount": 27, "maxCountPerUser": 9, "name": "vk3IfAKEbqcNXSGC", "optionBoxConfig": {"boxItems": [{"count": 59, "duration": 44, "endDate": "1997-11-13T00:00:00Z", "itemId": "FP1OW0nXOErQPS4V", "itemSku": "sRoYIK69yg9ADCGi", "itemType": "XaLs2xjHkinOD975"}, {"count": 27, "duration": 72, "endDate": "1984-12-26T00:00:00Z", "itemId": "ZjNRSzOTqcVNX3ah", "itemSku": "vxw9gwwhTnjN6wKZ", "itemType": "GW4y3f0R9s2kndhh"}, {"count": 78, "duration": 15, "endDate": "1982-08-09T00:00:00Z", "itemId": "mfIZsWhkS476dGGJ", "itemSku": "wJ00UH197MJ6zU7J", "itemType": "LMQyMWzYQCAaPJgo"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 30, "fixedTrialCycles": 71, "graceDays": 73}, "regionData": {"c895ImqK6tVsaUq3": [{"currencyCode": "stUh5J5Z9GiBiSAy", "currencyNamespace": "lX5cS0IeHpWCugmf", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1981-12-03T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1973-12-15T00:00:00Z", "expireAt": "1972-05-09T00:00:00Z", "price": 37, "purchaseAt": "1982-06-01T00:00:00Z", "trialPrice": 57}, {"currencyCode": "uD8PGqku59eFJrOX", "currencyNamespace": "yDYz9vMUOPG0iHDT", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1977-01-08T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1987-02-18T00:00:00Z", "expireAt": "1988-09-10T00:00:00Z", "price": 85, "purchaseAt": "1983-11-28T00:00:00Z", "trialPrice": 84}, {"currencyCode": "jApNHBVfNOURcjY3", "currencyNamespace": "YYT9oTynmfIuBWgJ", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1990-09-11T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1973-06-30T00:00:00Z", "expireAt": "1990-06-05T00:00:00Z", "price": 37, "purchaseAt": "1990-10-29T00:00:00Z", "trialPrice": 71}], "XMjiw6gYPvfn2Qt9": [{"currencyCode": "iyq3Nyk8ncu2Z3eD", "currencyNamespace": "HH9WaVO4iKhDcJ7T", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1996-11-19T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1972-06-05T00:00:00Z", "expireAt": "1991-12-12T00:00:00Z", "price": 78, "purchaseAt": "1992-09-24T00:00:00Z", "trialPrice": 43}, {"currencyCode": "RXBJ6mVV7JS9qjNL", "currencyNamespace": "wvI8JdiY3RRiLilm", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1977-09-19T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1975-01-27T00:00:00Z", "expireAt": "1994-11-03T00:00:00Z", "price": 76, "purchaseAt": "1986-10-11T00:00:00Z", "trialPrice": 89}, {"currencyCode": "eIVIjMcdlbdRXTGI", "currencyNamespace": "rdNL5gJPqTAjgqaT", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1998-01-02T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1974-11-21T00:00:00Z", "expireAt": "1994-03-26T00:00:00Z", "price": 73, "purchaseAt": "1993-09-01T00:00:00Z", "trialPrice": 20}], "0Hiqm5IuLryiEXqv": [{"currencyCode": "UWDjU1G0EVjVZw1T", "currencyNamespace": "oLuPakQN1MpOs1RV", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1972-11-05T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1999-08-15T00:00:00Z", "expireAt": "1999-07-11T00:00:00Z", "price": 74, "purchaseAt": "1973-01-15T00:00:00Z", "trialPrice": 31}, {"currencyCode": "tZTGJpqgl2IzNXGT", "currencyNamespace": "uQPIDpor7t1aJLNN", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1993-04-26T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1999-03-11T00:00:00Z", "expireAt": "1985-02-10T00:00:00Z", "price": 79, "purchaseAt": "1991-08-04T00:00:00Z", "trialPrice": 10}, {"currencyCode": "NPpmZDdMiCxmuCCV", "currencyNamespace": "uFjS1GC1d2b92B4v", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1985-03-17T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1999-07-04T00:00:00Z", "expireAt": "1988-01-03T00:00:00Z", "price": 82, "purchaseAt": "1994-04-12T00:00:00Z", "trialPrice": 71}]}, "saleConfig": {"currencyCode": "hcWm428XejRF94NI", "price": 26}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "rBZo0lNUBDShHD32", "stackable": true, "status": "INACTIVE", "tags": ["HbMrKYi0Zxs5SWCq", "ZXHLLa31oQf7BULn", "hjnnjKMEmtbiWsAQ"], "targetCurrencyCode": "ZDhutDM6BqguqD5x", "targetNamespace": "xGxBWtnTKUe2znsq", "thumbnailUrl": "PzPkwCBo2SwCUsTa", "useCount": 12}' '2EQfY3XCv4hdOa6F' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'dZhNMd1onFjGRbxt' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-items 'ABPXDmgNEJBhgGq5' --login_with_auth "Bearer foo"
platform-get-item-by-sku 'GIDhNC66szbCCf73' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'IFbRkPSSITz4TjCr' --login_with_auth "Bearer foo"
platform-get-estimated-price 'JHXGXku2YVuOzhxH' 'mnrrV9ZGWrZ05sxe' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku '6A6RpmKDebNkylby' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'nkgT9vayLLiizac7' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition '{"itemIds": ["Ge6zKJdlt7rjF5Ra", "JwvkWVco2LTo5ijl", "vDF8qBWCQ9dLWYyS"]}' '8zdhMeBXH8x6HdVf' --login_with_auth "Bearer foo"
platform-bulk-update-region-data 'ZVDAiU6iJOF7JKZF' --body '{"changes": [{"itemIdentities": ["Nk2NKy59X8iOg2sV", "BiCoeC5weXJl7Pei", "MH8z8dVej8N2yv6V"], "itemIdentityType": "ITEM_SKU", "regionData": {"nOK7xAvM7tuL81ls": [{"currencyCode": "R7xxSVp3Gd2TK0Hz", "currencyNamespace": "YviTgYmx82JVBRLP", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1988-09-16T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1985-06-07T00:00:00Z", "discountedPrice": 29, "expireAt": "1977-09-28T00:00:00Z", "price": 9, "purchaseAt": "1975-01-30T00:00:00Z", "trialPrice": 57}, {"currencyCode": "bguBF6Gsvvdl8jHz", "currencyNamespace": "9x7XZIjU4IK9lOLa", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1990-09-04T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1985-02-27T00:00:00Z", "discountedPrice": 66, "expireAt": "1989-08-19T00:00:00Z", "price": 40, "purchaseAt": "1979-07-22T00:00:00Z", "trialPrice": 34}, {"currencyCode": "TjdKNKgYazujsmSm", "currencyNamespace": "ylT1YtxIq73aMb48", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1988-01-26T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1975-09-09T00:00:00Z", "discountedPrice": 75, "expireAt": "1972-11-30T00:00:00Z", "price": 34, "purchaseAt": "1993-12-15T00:00:00Z", "trialPrice": 89}], "poGkUWNizk5UcPAG": [{"currencyCode": "v6c1ESC6hZYTYZbz", "currencyNamespace": "f5aANNNs5kgSZZNU", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1988-05-11T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1971-01-18T00:00:00Z", "discountedPrice": 38, "expireAt": "1995-07-29T00:00:00Z", "price": 55, "purchaseAt": "1991-05-05T00:00:00Z", "trialPrice": 67}, {"currencyCode": "mWJO5vzzXZj08a6K", "currencyNamespace": "1XRVfriSpPFnZBJZ", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1986-12-21T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1985-09-05T00:00:00Z", "discountedPrice": 35, "expireAt": "1975-07-24T00:00:00Z", "price": 98, "purchaseAt": "1973-08-02T00:00:00Z", "trialPrice": 0}, {"currencyCode": "i9ui3lvozTt9TsH7", "currencyNamespace": "A0TuU2aL4bPkk11s", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1980-08-05T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1987-01-30T00:00:00Z", "discountedPrice": 4, "expireAt": "1976-08-27T00:00:00Z", "price": 5, "purchaseAt": "1981-04-30T00:00:00Z", "trialPrice": 39}], "Zc2FbrTFznTgDIwZ": [{"currencyCode": "IRWf6T3by2kYSCdn", "currencyNamespace": "FKLc0xcTjqjdcEfU", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1991-10-19T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1997-06-10T00:00:00Z", "discountedPrice": 80, "expireAt": "1977-04-17T00:00:00Z", "price": 85, "purchaseAt": "1996-10-21T00:00:00Z", "trialPrice": 97}, {"currencyCode": "9rWynp1ck1vT90C6", "currencyNamespace": "o86cSRL9cgbUmulh", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1972-07-15T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1976-01-04T00:00:00Z", "discountedPrice": 65, "expireAt": "1989-10-28T00:00:00Z", "price": 36, "purchaseAt": "1977-09-07T00:00:00Z", "trialPrice": 86}, {"currencyCode": "WFw9GYxjiiOQAD77", "currencyNamespace": "ci0vfWVZoRRMPi57", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1989-01-06T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1984-01-01T00:00:00Z", "discountedPrice": 57, "expireAt": "1977-03-07T00:00:00Z", "price": 51, "purchaseAt": "1988-10-22T00:00:00Z", "trialPrice": 41}]}}, {"itemIdentities": ["zyv6gFZXI5nXJ7hL", "i6HweweRmyo91dIn", "7QqXBDXJcrqKmXDw"], "itemIdentityType": "ITEM_ID", "regionData": {"oLnWGP1PafIjLX8c": [{"currencyCode": "e0KbNN7Ycl2JfmQp", "currencyNamespace": "lvGjVQ4aebjfgGu4", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1992-10-18T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1976-02-13T00:00:00Z", "discountedPrice": 17, "expireAt": "1974-07-25T00:00:00Z", "price": 24, "purchaseAt": "1972-11-06T00:00:00Z", "trialPrice": 57}, {"currencyCode": "M4xjfkNL4lU6jaGf", "currencyNamespace": "sD1cfswmeFpvtDte", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1978-03-29T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1981-09-12T00:00:00Z", "discountedPrice": 77, "expireAt": "1976-07-19T00:00:00Z", "price": 77, "purchaseAt": "1989-11-22T00:00:00Z", "trialPrice": 91}, {"currencyCode": "W11vtpaTxi7k489j", "currencyNamespace": "RCn48bvkCPfKofwX", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1992-10-04T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1982-10-20T00:00:00Z", "discountedPrice": 5, "expireAt": "1983-12-30T00:00:00Z", "price": 97, "purchaseAt": "1977-12-29T00:00:00Z", "trialPrice": 23}], "XrA3XUGud4tVjmxE": [{"currencyCode": "f4XvVhFJTxFHITBg", "currencyNamespace": "9x4unq3eOMHIKeTy", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1987-05-15T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1985-12-06T00:00:00Z", "discountedPrice": 95, "expireAt": "1988-04-29T00:00:00Z", "price": 62, "purchaseAt": "1985-12-30T00:00:00Z", "trialPrice": 48}, {"currencyCode": "qbzHvDDl1jiLw3XM", "currencyNamespace": "GBA6JXDpA1tIC45C", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1971-11-07T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1983-04-29T00:00:00Z", "discountedPrice": 43, "expireAt": "1979-09-16T00:00:00Z", "price": 42, "purchaseAt": "1979-03-02T00:00:00Z", "trialPrice": 56}, {"currencyCode": "XONgUwJnUpryDeRc", "currencyNamespace": "pUvlrw2MwC1uuokp", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1988-11-04T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1975-11-05T00:00:00Z", "discountedPrice": 59, "expireAt": "1998-11-30T00:00:00Z", "price": 98, "purchaseAt": "1979-07-12T00:00:00Z", "trialPrice": 65}], "e5n9Lx3QcFo9gxOg": [{"currencyCode": "vDc7xMrRKvw8ISP2", "currencyNamespace": "WKmCRRXBxlalCHtW", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1989-02-19T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1980-11-02T00:00:00Z", "discountedPrice": 53, "expireAt": "1978-09-19T00:00:00Z", "price": 92, "purchaseAt": "1972-02-12T00:00:00Z", "trialPrice": 39}, {"currencyCode": "LWoQ5nuJhatQPxR7", "currencyNamespace": "dvBVC5zgOKLTDmHe", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1997-10-15T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1983-06-02T00:00:00Z", "discountedPrice": 49, "expireAt": "1973-09-09T00:00:00Z", "price": 9, "purchaseAt": "1980-12-21T00:00:00Z", "trialPrice": 75}, {"currencyCode": "yt4udIv22M18uux9", "currencyNamespace": "xBomQFPFWy5cwNPI", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1987-04-30T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1973-06-12T00:00:00Z", "discountedPrice": 46, "expireAt": "1979-08-31T00:00:00Z", "price": 12, "purchaseAt": "1997-02-10T00:00:00Z", "trialPrice": 58}]}}, {"itemIdentities": ["OJDUT0uKAPrARya2", "IMlNiXpF4qvsUUpH", "qi33TcBGkc0HjUcn"], "itemIdentityType": "ITEM_ID", "regionData": {"cNcJqrKxnMzSYoc4": [{"currencyCode": "ZjiMY4H34B6wVd8i", "currencyNamespace": "pcKDwQeUWtjCC2UH", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1987-11-10T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1991-01-31T00:00:00Z", "discountedPrice": 31, "expireAt": "1984-08-02T00:00:00Z", "price": 11, "purchaseAt": "1999-04-10T00:00:00Z", "trialPrice": 3}, {"currencyCode": "OS5mQNyRPZFPNP56", "currencyNamespace": "l1AT6OLKmZhCZxxP", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1992-08-15T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1977-11-30T00:00:00Z", "discountedPrice": 32, "expireAt": "1981-09-17T00:00:00Z", "price": 63, "purchaseAt": "1981-11-26T00:00:00Z", "trialPrice": 99}, {"currencyCode": "vlBIEgjse5kd6GED", "currencyNamespace": "o08yq5E5HleLoog4", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1973-11-03T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1995-08-13T00:00:00Z", "discountedPrice": 65, "expireAt": "1981-05-06T00:00:00Z", "price": 74, "purchaseAt": "1980-07-07T00:00:00Z", "trialPrice": 67}], "lXvVcJerTPW02PWs": [{"currencyCode": "HiKYArAxnKBfBfDl", "currencyNamespace": "rQQuAc10DjjwMv4v", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1977-12-05T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1993-06-12T00:00:00Z", "discountedPrice": 39, "expireAt": "1995-06-19T00:00:00Z", "price": 14, "purchaseAt": "1981-12-17T00:00:00Z", "trialPrice": 70}, {"currencyCode": "HEG0qfKegvFTD1sP", "currencyNamespace": "ykS8YLmwtYgWGcA0", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1978-09-28T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1998-10-03T00:00:00Z", "discountedPrice": 77, "expireAt": "1988-02-22T00:00:00Z", "price": 37, "purchaseAt": "1988-07-31T00:00:00Z", "trialPrice": 1}, {"currencyCode": "VmaGYxUX1B9oVuzG", "currencyNamespace": "2CnYX2YBF2g7TVtz", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1987-12-30T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1997-04-22T00:00:00Z", "discountedPrice": 86, "expireAt": "1972-02-29T00:00:00Z", "price": 32, "purchaseAt": "1999-04-18T00:00:00Z", "trialPrice": 17}], "nVfxPwc259HF9ejH": [{"currencyCode": "aILQruAuYyJLYGqM", "currencyNamespace": "v824ouSgkpK70uJm", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1978-08-01T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1986-04-28T00:00:00Z", "discountedPrice": 23, "expireAt": "1974-03-14T00:00:00Z", "price": 64, "purchaseAt": "1983-01-19T00:00:00Z", "trialPrice": 66}, {"currencyCode": "023dIvDiA0tQWlHw", "currencyNamespace": "BcTtztx3VAl6tXFb", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1984-01-21T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1971-07-29T00:00:00Z", "discountedPrice": 5, "expireAt": "1995-01-08T00:00:00Z", "price": 84, "purchaseAt": "1987-10-07T00:00:00Z", "trialPrice": 53}, {"currencyCode": "mKgE8CZ4AELr5lra", "currencyNamespace": "a5v5P5Cj8hgFsqHC", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1986-04-28T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1988-12-04T00:00:00Z", "discountedPrice": 97, "expireAt": "1975-04-17T00:00:00Z", "price": 79, "purchaseAt": "1979-09-11T00:00:00Z", "trialPrice": 36}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'tgKuiGTYgwWv5Xld' 'L6rOVGcRAn51rVAQ' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'Sxp4qTB54mKA3V9D' --login_with_auth "Bearer foo"
platform-update-item '{"appId": "KlCeZ7mLYsHooOIa", "appType": "SOFTWARE", "baseAppId": "GPrhn2etVIQvRkQJ", "boothName": "AtDUH9tx60AehGz1", "categoryPath": "ermJYXsYgL7TfyIl", "clazz": "AwjTZdRZJJzWZwvT", "displayOrder": 50, "entitlementType": "CONSUMABLE", "ext": {"47bbwMI4gGmvK9gW": {}, "596FwBNrFXt3TAuK": {}, "BwBcD12ae6r3hHwy": {}}, "features": ["KMRMG541PAiNjULs", "7dbh2iKNUl0qJqzo", "a4NpdOzg3hr6ucHf"], "flexible": true, "images": [{"as": "K5VTkdubkOFldMCQ", "caption": "98JH4n0JtgqzZv5k", "height": 99, "imageUrl": "Zs28Ff1kZp1Zktx3", "smallImageUrl": "N7WNMYIfcDKbLu8p", "width": 28}, {"as": "cfVCPdQhim9QKUAF", "caption": "TVYelIlGJg9wdc8b", "height": 16, "imageUrl": "cqnWrIprOv0BJ9Sg", "smallImageUrl": "l7H1sdH2RIJz1eI7", "width": 88}, {"as": "h2iNTwtnohddMzMT", "caption": "Q9P7sYLDWAJOA75K", "height": 61, "imageUrl": "BYJ2fkqYJoF2FI3v", "smallImageUrl": "yyqRzc20O7FdsJP1", "width": 67}], "inventoryConfig": {"customAttributes": {"VmdMKEohKzuMYDUT": {}, "LBeCidXjuGgx8ncX": {}, "ejmeZtzT0qj0ltsq": {}}, "serverCustomAttributes": {"fiZrthVvyX0OCKDJ": {}, "E3RMUddwSSgxCu8z": {}, "ru1DhGAYOHR5BWa9": {}}, "slotUsed": 98}, "itemIds": ["rthbfp0VgweLlT2s", "Y3SsTnDQY7kKU2u0", "6Q4veujxtyQENvJr"], "itemQty": {"BCqeg67d4RWOqO4U": 9, "bitNQLzwRoWnR0Ab": 21, "nPS2urJqerobWMZG": 98}, "itemType": "CODE", "listable": false, "localizations": {"TxahWlS6XdBaKSLC": {"description": "gOOPXM6XTUh2dJ90", "localExt": {"yqHDNacl4F9G6Dl5": {}, "TFwBY6HKXAblkT8V": {}, "GgSH8MGZGwiVj7eD": {}}, "longDescription": "Taka9ABfX1IByPEO", "title": "uPhGspRi3bhPQvBB"}, "JI5JxytpcubN4AUU": {"description": "PFPscZsXeJOD4DMt", "localExt": {"qfIGiGJovgWSRxZ8": {}, "N4UQ2fg3V1o2x0hL": {}, "5DuBDqMyIAzWze94": {}}, "longDescription": "MEdJFAy2JTllJkRG", "title": "B8jqJEd6eqqsBVyO"}, "NV0JRtozI0jpliCF": {"description": "Q6WgJpGPigdc5VyC", "localExt": {"4qvWjVac1cQvSxgT": {}, "NIUzxDgBlIbuzm7D": {}, "zJ20NFRJIhFXR2dY": {}}, "longDescription": "prPmbpuptECGd5cd", "title": "XC2Sesc6y68whNBY"}}, "lootBoxConfig": {"rewardCount": 22, "rewards": [{"lootBoxItems": [{"count": 7, "duration": 67, "endDate": "1975-08-21T00:00:00Z", "itemId": "7gD5i2Ni6AnWn3Nd", "itemSku": "EPhNHSH7eKDfRcng", "itemType": "EpTnRUQr3RLOM1vE"}, {"count": 47, "duration": 35, "endDate": "1972-02-25T00:00:00Z", "itemId": "bc4LWfKaY5c1tP5T", "itemSku": "DuI5f6m4KC07CnsZ", "itemType": "e32hqEcB1ExYMBb3"}, {"count": 4, "duration": 22, "endDate": "1982-06-21T00:00:00Z", "itemId": "bwjMNdxKWlBfnRyF", "itemSku": "S0Ed7gTM5AVrtBQi", "itemType": "DTcNnZa6Zuxk6u6H"}], "name": "XXdiC9ZDj4E4mv12", "odds": 0.503813838414652, "type": "REWARD_GROUP", "weight": 37}, {"lootBoxItems": [{"count": 49, "duration": 82, "endDate": "1978-02-13T00:00:00Z", "itemId": "oOLl13j84P0KqirJ", "itemSku": "4PkMFtsnFfz8Ew0X", "itemType": "8fBuBSKLSQ4GvLtz"}, {"count": 17, "duration": 60, "endDate": "1986-03-09T00:00:00Z", "itemId": "3rpBfBovqLwXBuT3", "itemSku": "0EYeRj17xGhaBKoU", "itemType": "fiHjGmCyPsKCJTv1"}, {"count": 18, "duration": 22, "endDate": "1972-06-27T00:00:00Z", "itemId": "9gvagF2cSuztsJ5t", "itemSku": "j64gV7nmDk29mcjS", "itemType": "uz9vbNStqPtQmQN6"}], "name": "eKAGiZFCftT0RWEC", "odds": 0.05884329343321382, "type": "PROBABILITY_GROUP", "weight": 100}, {"lootBoxItems": [{"count": 70, "duration": 95, "endDate": "1979-11-26T00:00:00Z", "itemId": "nulxcCKAru8pOaAV", "itemSku": "LDB4k3JwkdaxR7GJ", "itemType": "pYmuYCPG181q9GA5"}, {"count": 61, "duration": 85, "endDate": "1983-01-30T00:00:00Z", "itemId": "hc2Fh04JTsqDTynC", "itemSku": "ewqJligLlRxOelKy", "itemType": "kICRxF6HtlER2txs"}, {"count": 13, "duration": 33, "endDate": "1985-05-23T00:00:00Z", "itemId": "ejBd5o7iTST7R3Kb", "itemSku": "bQGERMNpqWb51y5R", "itemType": "UzvMfTkPy0fGvTGg"}], "name": "fLKsg0b1Bq78cE5O", "odds": 0.9331492672878167, "type": "PROBABILITY_GROUP", "weight": 25}], "rollFunction": "CUSTOM"}, "maxCount": 49, "maxCountPerUser": 2, "name": "q9odanhR1Zrm3thU", "optionBoxConfig": {"boxItems": [{"count": 45, "duration": 41, "endDate": "1995-06-14T00:00:00Z", "itemId": "87yfkycLSVdleSaA", "itemSku": "ylsmLYe2phYOgT5k", "itemType": "DTyPl3dKF7NXEjrJ"}, {"count": 79, "duration": 97, "endDate": "1976-12-01T00:00:00Z", "itemId": "i8jvc3P8Gwjg3IOH", "itemSku": "0SDHgYKqxJiFJdrm", "itemType": "j5vhzgsJwex7wq8Z"}, {"count": 86, "duration": 9, "endDate": "1976-11-15T00:00:00Z", "itemId": "XNaUNgdY2vfJuje5", "itemSku": "cPnmGjTvYa5Pqx1K", "itemType": "7qcAoijBPAp6EPb9"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 40, "fixedTrialCycles": 48, "graceDays": 80}, "regionData": {"rDKVpULjjiw3NeVG": [{"currencyCode": "4DJi9DaMrc0WFgKj", "currencyNamespace": "E945x2CPVYYG9Wvo", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1984-06-23T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1994-06-23T00:00:00Z", "expireAt": "1993-12-27T00:00:00Z", "price": 5, "purchaseAt": "1995-01-25T00:00:00Z", "trialPrice": 98}, {"currencyCode": "bKBsAyJMz4ILNDvh", "currencyNamespace": "B4Eoes9a6XaJeRbz", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1986-03-16T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1983-11-13T00:00:00Z", "expireAt": "1987-02-25T00:00:00Z", "price": 43, "purchaseAt": "1972-07-13T00:00:00Z", "trialPrice": 10}, {"currencyCode": "RUY0ilrNoFT98Sgt", "currencyNamespace": "Jd4Z5f8nfaKqdZFL", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1997-09-27T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1988-10-02T00:00:00Z", "expireAt": "1991-07-07T00:00:00Z", "price": 65, "purchaseAt": "1980-03-20T00:00:00Z", "trialPrice": 60}], "eXbsSgR43kIDzxBw": [{"currencyCode": "qRJTzrHNZWUsq5lQ", "currencyNamespace": "o2jy29EJigqYhyVh", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1981-12-07T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1981-01-17T00:00:00Z", "expireAt": "1994-07-25T00:00:00Z", "price": 46, "purchaseAt": "1993-05-04T00:00:00Z", "trialPrice": 53}, {"currencyCode": "dk0HATGylx2JG2KN", "currencyNamespace": "GfhzfCTxxrsRRLee", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1988-10-17T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1978-08-29T00:00:00Z", "expireAt": "1996-12-08T00:00:00Z", "price": 67, "purchaseAt": "1988-01-27T00:00:00Z", "trialPrice": 18}, {"currencyCode": "YohxMp3uOQIybqWf", "currencyNamespace": "G9BJ6FVKlbYHtbPt", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1981-01-08T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1991-02-19T00:00:00Z", "expireAt": "1982-12-28T00:00:00Z", "price": 42, "purchaseAt": "1976-02-19T00:00:00Z", "trialPrice": 31}], "FDa6wUQvehKqwCh8": [{"currencyCode": "6XmRkCEcfHDCdl59", "currencyNamespace": "Wp9A3tXGve6DdK6u", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1986-06-09T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1991-05-01T00:00:00Z", "expireAt": "1972-10-15T00:00:00Z", "price": 29, "purchaseAt": "1985-02-27T00:00:00Z", "trialPrice": 50}, {"currencyCode": "zBw3xLUcCEt0Dzmk", "currencyNamespace": "Jq1sml5bYt76BNsi", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1987-03-11T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1993-03-31T00:00:00Z", "expireAt": "1971-01-24T00:00:00Z", "price": 61, "purchaseAt": "1985-01-30T00:00:00Z", "trialPrice": 32}, {"currencyCode": "Fe8ATUqVxcSthrpn", "currencyNamespace": "MUBsnUfuQIcSbUt5", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1982-03-24T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1988-03-22T00:00:00Z", "expireAt": "1977-09-21T00:00:00Z", "price": 66, "purchaseAt": "1992-05-04T00:00:00Z", "trialPrice": 27}]}, "saleConfig": {"currencyCode": "uUsdtq4dOwNESzCE", "price": 99}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "9MM2Cqm84jVi9kIp", "stackable": true, "status": "ACTIVE", "tags": ["t1Bjj3b8QM8Rr45U", "CqPD9CeDEdCnnL6K", "LqXQgvwD3PsKDJiW"], "targetCurrencyCode": "xQBwaS7rDBf2S54p", "targetNamespace": "hbdyGDt47f9GWRlE", "thumbnailUrl": "9hqz6rjDNo4rhjxU", "useCount": 8}' 'sluiHZJ7O8sAQ32w' 'j9uaDzsr9xYiWRuu' --login_with_auth "Bearer foo"
platform-delete-item 'zQJiLc1eI9w3JEhx' --login_with_auth "Bearer foo"
platform-acquire-item '{"count": 85, "orderNo": "JsPoaIbYz8cK5jlp"}' 'Jdre5ur6yvWJDdvM' --login_with_auth "Bearer foo"
platform-get-app '7T7PX2vamIRZHzsI' --login_with_auth "Bearer foo"
platform-update-app '{"carousel": [{"alt": "YOCUoiCXNjrdQL2j", "previewUrl": "dx1eIba1sB0HsJ06", "thumbnailUrl": "DzfbzRYt4OVUyumB", "type": "image", "url": "Qmjo69wohJFyTNk5", "videoSource": "youtube"}, {"alt": "sQRj7N8IAjmsonjj", "previewUrl": "0ZR50BQ1U6aFD3O2", "thumbnailUrl": "kXQSc58zgZVl4gIF", "type": "video", "url": "qQMgZWAU6E92nHJz", "videoSource": "vimeo"}, {"alt": "1lRZ9Z1JBrHRzEOt", "previewUrl": "IxzPqb6n73m0jiaD", "thumbnailUrl": "H86d9rsKgzCsMulp", "type": "video", "url": "luexk87b9Z5BTsEA", "videoSource": "vimeo"}], "developer": "EdmW8saabP4xRowf", "forumUrl": "NojzPXI2v0prR3OE", "genres": ["Adventure", "Strategy", "RPG"], "localizations": {"DKFS6u9FHuv1M3qf": {"announcement": "ch4SqIV6LQPHlaeY", "slogan": "l4csFq65cU66yJaj"}, "4ovoKWE4EW0sw8v5": {"announcement": "peiuxoBJATauyD3X", "slogan": "CXVMiyEvMf9yilUE"}, "ujk6oqYo1HQYTFzw": {"announcement": "dOMdupwD4O3uNbcI", "slogan": "DcIyvZbOy1T4hfwk"}}, "platformRequirements": {"uVykH4RpfmjIXFGZ": [{"additionals": "5PKdbabJIkNnt9P1", "directXVersion": "Tkm08luh4dpPRMDb", "diskSpace": "UXBWTbpAogG2wlZk", "graphics": "LhuU5FI8NijFI0GK", "label": "wJ3vfXlsAMy2Zp2U", "osVersion": "AGxHnmSxvkG9UR5q", "processor": "9neoW6JBcGp9Rx2R", "ram": "fcRhXpmeeHdvphas", "soundCard": "9S7ivHEoLbUMM47f"}, {"additionals": "1UreUpxEkXIbE1ET", "directXVersion": "zRJZKMavu4Ul2Iai", "diskSpace": "eEbPSE7TGkeHsYsW", "graphics": "9oGBN1pYMBwbPZTl", "label": "MlUvFEiGprcNSQ9k", "osVersion": "EeXBZ6FVrBzyhyho", "processor": "S6a9oe0JaXFpff28", "ram": "uYbe4Cf2HEHvVevh", "soundCard": "ISjbtBJUK5fE3Ouf"}, {"additionals": "PSX3PdOU2V9yw94o", "directXVersion": "a8UJ34TIedV3HyoX", "diskSpace": "4VnO2LpBU08wfnlH", "graphics": "BXFIqFUmgUSMM5au", "label": "8GJT0mkVPI6zUtf3", "osVersion": "QaJPGrTNcXXTUIgg", "processor": "oH89QNmI17UDb19R", "ram": "6H7r1ta3m7jK5pxe", "soundCard": "82pgFiAS6piIzmc8"}], "rKrKEPGSAcong6eN": [{"additionals": "ERUf8kjci1Ctccv9", "directXVersion": "Gv4tOcbnuCqf0lm6", "diskSpace": "WBkIzjoSV31tvmMB", "graphics": "6jzrpRGESmooHiCV", "label": "4GUOnXpapXQGRakU", "osVersion": "bcG7PcR4eiU3Idi5", "processor": "5jNrGNT2VHTKuIT5", "ram": "FwwHj0Ur5F2PWGTT", "soundCard": "D81xhNP4t6kYBUjy"}, {"additionals": "XAn3bWQF6QcAiJpX", "directXVersion": "IrgroixptZhckUTG", "diskSpace": "kcBOE4qMcH1Kyi8Z", "graphics": "FvGcV8DY0XOkDstx", "label": "ZcY1HgAnZV4IOglV", "osVersion": "Lqb9lGAJUg21Lt7J", "processor": "wgwMUSuC3Bajy3Bc", "ram": "EMCtQs2FcEcvVAyI", "soundCard": "d6Cp85HVDsZBQgOn"}, {"additionals": "XuXsGThYZrmm0wrF", "directXVersion": "MnPpWgrQD4hEk0OL", "diskSpace": "jYsnignE7KcMF7fu", "graphics": "DbzRRYMNXWUsp1tO", "label": "ibJY9aL9ie6vvMbi", "osVersion": "NURrlm88QlKyuoya", "processor": "4JgakZyUV7t73VnS", "ram": "Fbuxd4KYZ0jk0UZd", "soundCard": "htnKu9oTc8pVkiyG"}], "sj5JdXzRxfNEjUMT": [{"additionals": "s8WIObJBTsvsw76u", "directXVersion": "ISRX0bKVoWtoUW1P", "diskSpace": "7ocuBAldDSUS7Haa", "graphics": "6unq1yQOSRvyiLBR", "label": "VtIDi2piIQFVmzMi", "osVersion": "dw70KSahpYZdKZRy", "processor": "R9AX7JjxvNZhM84D", "ram": "iZk6ySrB9SVFctW7", "soundCard": "YS0OkL78XeEAtALF"}, {"additionals": "I3v8yha4pd5A7MYc", "directXVersion": "pBD6lKNb8RxvN2u5", "diskSpace": "J7baOeLH19fqBwNb", "graphics": "Ne1ffYRtIvQaKyev", "label": "WYtZjK6J29v8MpBS", "osVersion": "po3AKRmnJkzJHAck", "processor": "UyBksYQfDm0RNFwi", "ram": "z70tRVLMlHi8i9gO", "soundCard": "VqajUWrgEsWDtaKz"}, {"additionals": "n8dZwnnGeZsZVgbP", "directXVersion": "zPFbrOMZMgWkFN7T", "diskSpace": "pkx6GcfyOg6ZUrrp", "graphics": "9ubg9mndW2JKmQaf", "label": "Us2bxYztOEyVbKIf", "osVersion": "1ZbzgUwd8DHoCQyk", "processor": "mXHYmkRlg7gYs6un", "ram": "PYQ9jNQN1di1ldhO", "soundCard": "h6HvjnYuV7NfC4A2"}]}, "platforms": ["IOS", "MacOS", "MacOS"], "players": ["CrossPlatformMulti", "Multi", "Coop"], "primaryGenre": "Action", "publisher": "6piDYXeHZ7FHls3n", "releaseDate": "1983-06-26T00:00:00Z", "websiteUrl": "eFdFfgK46GjCWaP8"}' 'huTmnq3FGQn3Ahu5' 'wxq6oJq4mChmQHQh' --login_with_auth "Bearer foo"
platform-disable-item 'O9IKBXDFQfXFD58s' 'G6uDhFYlrzJBYSeM' --body '{"featuresToCheck": ["CAMPAIGN", "DLC", "IAP"]}' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'gVZCj9ObVGT0Scwl' --login_with_auth "Bearer foo"
platform-enable-item '4kNmCi15XTJTgCNN' 'H7RtG5Xmo9Q0Wb07' --login_with_auth "Bearer foo"
platform-feature-item 'N17fkxZSc6VbE0AG' 'cekjMNHuPXtz8tXx' 'rmzafMUguyDoN91u' --login_with_auth "Bearer foo"
platform-defeature-item 'c28HoSpGt1g0GGbT' '4Hf2PPKOldkbgX9C' 'WJKwXXSbv5eg9q86' --login_with_auth "Bearer foo"
platform-get-locale-item 'IaDFjjx6uZerWbtw' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 13, "code": "gNRByjbE8lOLAfTX", "comparison": "includes", "name": "LzbrddqcKLa7Levx", "predicateType": "StatisticCodePredicate", "value": "HOSEhQRZIp693lRw", "values": ["KDdUvk0LEi26Ls7m", "tc43atCuCFxbfbz4", "aQERziPL4dHhOqG5"]}, {"anyOf": 19, "code": "WJlSlCQMDji329Pf", "comparison": "isGreaterThanOrEqual", "name": "hwlY4lPzlsCR5rVs", "predicateType": "StatisticCodePredicate", "value": "2Sy8Ww79LVeVskqe", "values": ["9rW8i8krFWJhe03c", "UB7RSayqGFguhh3b", "vadRthdbVApebRA0"]}, {"anyOf": 30, "code": "ZOzx6iCJTu60Iifz", "comparison": "isGreaterThan", "name": "hkk5PxsjqbCKpMv2", "predicateType": "SeasonPassPredicate", "value": "ky9DYkD2sIllFtBt", "values": ["RQvRUbUDSiefGEdL", "ucrtO2gCQD057DrD", "XJKG3rqBmILhtWm8"]}]}, {"operator": "and", "predicates": [{"anyOf": 66, "code": "gC2nzS9SiGUjVAw4", "comparison": "isLessThan", "name": "1K4CDuH1mMIfOCDy", "predicateType": "EntitlementPredicate", "value": "AHrHncR5dShqiBUI", "values": ["OA8H9VeHv0L2Acm9", "9esSsXegSEhrPpK2", "q8kxR4BuEksS2A9V"]}, {"anyOf": 6, "code": "0EYQEuGJVl8xs1WI", "comparison": "excludes", "name": "8C403HgoXCR6XOMX", "predicateType": "SeasonTierPredicate", "value": "CQGPCxwEdkyuT3Mg", "values": ["vBLE46bpuJip8Jyx", "zReRq0112ISArROI", "odcmM6v2AEozWWaY"]}, {"anyOf": 73, "code": "VwbrQKmb01yA7U7d", "comparison": "is", "name": "p8AmgwhYzk33J34f", "predicateType": "SeasonPassPredicate", "value": "IbfT22G5NpE130YW", "values": ["SgxpKWtdtdtVW9an", "Jg5VByeI3ycMcYYB", "ENmxb9e7vXZV3ig8"]}]}, {"operator": "and", "predicates": [{"anyOf": 23, "code": "xKJXCISQdwec1m8B", "comparison": "isLessThan", "name": "nlf1MfqUZXkjHvcU", "predicateType": "StatisticCodePredicate", "value": "lxNf09pefgFIiJss", "values": ["ShBKsQjXvfQgQDt6", "ce8NDMErA82FrR1G", "SogkewIzTOqKkcjR"]}, {"anyOf": 15, "code": "Pmswm5TCAU1cKApd", "comparison": "isNot", "name": "IlTk3Bpclrk4hIRn", "predicateType": "SeasonPassPredicate", "value": "znIKzAEAHQpBOgHE", "values": ["WOboMkyB7FTexsOZ", "0b2p3b63KrcwIcXM", "P5l94s7CbIJ7eHnV"]}, {"anyOf": 15, "code": "rr3KCAV9alq3hK1G", "comparison": "is", "name": "6DqwdQPQ9HkSSV8e", "predicateType": "SeasonTierPredicate", "value": "MgTTLS2FgarY903I", "values": ["NGIyEfRBEj7qms9A", "vpgJfuBs1Vpqn47G", "GQExPhgr9gGfC0Gj"]}]}]}}' 'VghTH2wToOnq9U5l' 'yW89Xwt3wmRTrDCj' --login_with_auth "Bearer foo"
platform-query-item-references 'hnKvsHezWTqgYPix' --login_with_auth "Bearer foo"
platform-return-item '{"orderNo": "tHk6lWq6tEeUmU96"}' 'FLEak0mJqjRYldcT' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group '{"description": "pdeCD9XPRi4bAQL7", "name": "VE2wL8Y4JFVUdzA8", "status": "ACTIVE", "tags": ["Rk5htdM5T3fDSrSH", "rkoqv2mM6soMaTvQ", "q2a9YdFNtRVSO0js"]}' --login_with_auth "Bearer foo"
platform-get-key-group '0hG9xmSnzd7zgUxA' --login_with_auth "Bearer foo"
platform-update-key-group '{"description": "ogcnGkXk17QPkJHR", "name": "hmLKQuQVFSKiXl8G", "status": "INACTIVE", "tags": ["uf6E8EajXLSAS8MK", "MaxQ1QyJCpKedhuz", "I7G9NCKKXu1bqI2M"]}' '5PmXfKnQ7BYGjCUD' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'MOrbmoRvWnfmGFy0' --login_with_auth "Bearer foo"
platform-list-keys 'eUoOBd90h9EDqSTO' --login_with_auth "Bearer foo"
platform-upload-keys 'foNewWjwMWDKEt6J' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'hbJ0fwTDaq6b5RpM' --login_with_auth "Bearer foo"
platform-refund-order '{"description": "whWPtndriXU9loOx"}' 'pmEuwDVc12r0DVUG' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config --login_with_auth "Bearer foo"
platform-update-payment-domain-whitelist-config '{"domains": ["gGHkapTCafFMdvYi", "CBuzUUwyI6Vtd4v9", "k4fv3kMiuQ3DhsKL"]}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated '{"currencyCode": "xjt5srPFxBgpFtDB", "currencyNamespace": "mTLH9kP9U53z6joB", "customParameters": {"AhAlJGI2YYb6ajBj": {}, "gq6eY4PBNHKPx62t": {}, "HxDb06ZFy3uglSp2": {}}, "description": "UxvF2uLXWilRD7HD", "extOrderNo": "6LCgdFxRGj00RT6L", "extUserId": "vcnGMJbJIYLssMvy", "itemType": "BUNDLE", "language": "hF-406", "metadata": {"pxaPHc9r8eToFmkH": "J6BPOKFLxIwKssw6", "47YwDudnGRufOUGf": "MjTU226l07jPlcYa", "qYM7YfBmhjI9Y28q": "VceS9UX48dKPCFUI"}, "notifyUrl": "eyYEymNXzNX6TGh4", "omitNotification": false, "platform": "Z8GlU8962e6gtn5p", "price": 96, "recurringPaymentOrderNo": "h6Z1oz9BaixUUvmz", "region": "bajE2gjooiDnc1NU", "returnUrl": "b51lEgUwQ9tkWaMO", "sandbox": false, "sku": "47CAT7cBP0918JaE", "subscriptionId": "BQBP766LUnBBR84i", "targetNamespace": "AO7sBQt6YJ2tWwF7", "targetUserId": "RnP1oK3c4RVfjB0z", "title": "i3XrYZUiN24ol1qq"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'balgizL97ycJV5Yq' --login_with_auth "Bearer foo"
platform-get-payment-order 'E2myQzl7X9fHr6Wv' --login_with_auth "Bearer foo"
platform-charge-payment-order '{"extTxId": "BxmBvNj3ktaDf9B2", "paymentMethod": "2HGgxakPt7IYzaZU", "paymentProvider": "NEONPAY"}' 'xs3GuA4S1dS7H7yI' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated '{"description": "S7b5TSDRIoMg7Dc5"}' 'APzfzXDELJFaIaEM' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification '{"amount": 100, "currencyCode": "8LaQzEb39sZTdFfC", "notifyType": "CHARGE", "paymentProvider": "WALLET", "salesTax": 27, "vat": 11}' 'aHLsXHlm1RJTTy9J' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'rNz1K5M1qgFddYvi' --login_with_auth "Bearer foo"
platform-get-psn-entitlement-ownership '{"accessToken": "fGHawNx6yhniEHLb", "serviceLabel": 62}' 'kLwioRaKnWhlh80B' --login_with_auth "Bearer foo"
platform-get-xbox-entitlement-ownership '{"delegationToken": "hYe2fJDS6T75Q4ul", "sandboxId": "onMFjmYqE1wJhfog"}' 'Wg2Apm0sUy18aWn6' --login_with_auth "Bearer foo"
platform-get-platform-entitlement-config 'Epic' --login_with_auth "Bearer foo"
platform-update-platform-entitlement-config '{"allowedPlatformOrigins": ["Steam", "Xbox", "Nintendo"]}' 'Oculus' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Other' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config '{"allowedBalanceOrigins": ["Nintendo", "Epic", "Steam"]}' 'IOS' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Epic' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config '{"appConfig": {"appName": "ZAIadKDEZywonA2S"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "9aulsL6NOV5agpS6"}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward '{"description": "UeKKlPKtE6gnYxmk", "eventTopic": "mCWbs5qugklBUS6u", "maxAwarded": 46, "maxAwardedPerUser": 59, "namespaceExpression": "WrCQt86Jrg8tLAJW", "rewardCode": "pcyNkUvqn6eXr6FN", "rewardConditions": [{"condition": "bKJ05Orya6LSSUlu", "conditionName": "gIAknXcSaVYcAYp7", "eventName": "qSiDvsfMUOpWv46s", "rewardItems": [{"duration": 86, "endDate": "1981-05-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "WiywnxuDLLuIaSxo", "quantity": 23, "sku": "oID2UqO0iAXA9dB4"}, {"duration": 18, "endDate": "1982-01-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "8HDOJ8TNiP8KgEAj", "quantity": 91, "sku": "dbRTI0i6dO3zkbDs"}, {"duration": 10, "endDate": "1980-03-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "xt6fX9j7rhZCAlDl", "quantity": 97, "sku": "MJBjrV0p9A7tcHrV"}]}, {"condition": "0MbJGr4drgkDuWS0", "conditionName": "5m0pGzazM2BUXnzU", "eventName": "EWTiKMJAf6AgbiED", "rewardItems": [{"duration": 80, "endDate": "1989-02-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "dZDGwqx7T3l1ut2o", "quantity": 50, "sku": "2FBS93Mg6TKwdRMr"}, {"duration": 1, "endDate": "1994-08-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Lrwh3d0ykRGkgqUN", "quantity": 72, "sku": "34xmIOjFLgKR4LjE"}, {"duration": 99, "endDate": "1975-03-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "OScvtQ92iD02YMvE", "quantity": 95, "sku": "PjpSAlZwFGpea5Ob"}]}, {"condition": "BB49Km4ClIQmkIdL", "conditionName": "CvNhZ6P8aqZ2yfrC", "eventName": "1V7ZpJZPHCMqvcYm", "rewardItems": [{"duration": 8, "endDate": "1974-09-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "iTP4PSrXUS6jYI9l", "quantity": 37, "sku": "cqclNlBORlC8Zkjs"}, {"duration": 49, "endDate": "1972-06-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "gxplHTPLzynjFZgF", "quantity": 58, "sku": "erw7UsyHq4bBb0n1"}, {"duration": 72, "endDate": "1974-03-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "US8BRPGV9n769zLJ", "quantity": 7, "sku": "QnKzDgDAtqE3kuyb"}]}], "userIdExpression": "wTQFYEJjIYwqfSRy"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'GgVk77fd1GS5Ykyh' --login_with_auth "Bearer foo"
platform-update-reward '{"description": "AiAItnWUmD225fp1", "eventTopic": "egsx3ErheNwqd5pr", "maxAwarded": 16, "maxAwardedPerUser": 4, "namespaceExpression": "rDwZ1HKsOpyq8agQ", "rewardCode": "uz86nc6jLF9DIW2n", "rewardConditions": [{"condition": "cJJKpqmgvUTr8XAt", "conditionName": "pOqUQxzqJZiWi3KQ", "eventName": "ffT5Tn61A1xW6okI", "rewardItems": [{"duration": 33, "endDate": "1981-04-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "d87ir9op4YfGTno5", "quantity": 29, "sku": "0rY0xfWddACyHSmo"}, {"duration": 36, "endDate": "1990-03-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "O3K1k5ZM8btmGsgX", "quantity": 80, "sku": "xAzc1nc3eFm950dt"}, {"duration": 98, "endDate": "1999-08-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "o7w4e3v5mh6Rum5p", "quantity": 2, "sku": "FaP0HJ98tE4UyoQg"}]}, {"condition": "0b0sGOkzxVt15LKm", "conditionName": "kQ7YBhsOuJ0ypkkt", "eventName": "2G4eFh2YNsdoxpLT", "rewardItems": [{"duration": 57, "endDate": "1986-11-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Q8t829Ido1JyveSR", "quantity": 18, "sku": "n9eIdhIBvTTupABJ"}, {"duration": 21, "endDate": "1993-07-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "GS54vl7gIKBc7OYT", "quantity": 51, "sku": "xf3EnzZVnkLT0Lb8"}, {"duration": 28, "endDate": "1998-04-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "pdN26BY5YI0jeO2z", "quantity": 78, "sku": "IQeoxYV4UcYzswAG"}]}, {"condition": "pXqQxctuVaqPJGAH", "conditionName": "EZmuQrZ8GaQ4OZ2n", "eventName": "Dodm4TNs8mAj6IKS", "rewardItems": [{"duration": 65, "endDate": "1994-01-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "wgZsRPOzwuDSdGl1", "quantity": 55, "sku": "oYfIksth24cZBpdD"}, {"duration": 65, "endDate": "1997-02-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "vzeU5iqhx6zv7EUR", "quantity": 93, "sku": "kbdOsyxX1tfW488o"}, {"duration": 25, "endDate": "1995-02-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "4jyCVJ0V8obTlGVT", "quantity": 16, "sku": "m7Y3wiNloJfey3HX"}]}], "userIdExpression": "L6SjljNPTXA3qbg5"}' '5SyienCODZ0mnOpP' --login_with_auth "Bearer foo"
platform-delete-reward 'TVxEgBFzG8tlkxWK' --login_with_auth "Bearer foo"
platform-check-event-condition 'CU1XN4gl7yHvEqpJ' --body '{"payload": {"SrDXVwCkhOQ161TF": {}, "jROYJm75VIuCOCkt": {}, "2W1DfI8QtgODk9K6": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record '{"conditionName": "DcMnyCPn1FylWdaN", "userId": "V1VaZTkbbuWiiA4U"}' 'TDgS2SVEo5M80LLb' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section '{"active": false, "displayOrder": 82, "endDate": "1981-12-19T00:00:00Z", "ext": {"GYH4ijqOVM50tCqk": {}, "ZfsSxAbDJ7sHCLup": {}, "8pmEosOXglQwwdeL": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 32, "itemCount": 9, "rule": "SEQUENCE"}, "items": [{"id": "lXYyNrXweiCnDldR", "sku": "PRfd6mLZ0GTJwEjo"}, {"id": "ZrRtaeWKMC8wsOBy", "sku": "QAMAgqFEzEt8umj5"}, {"id": "XhKnw7MHDwFVKUC2", "sku": "ecnpUDqvLQixPKVS"}], "localizations": {"mWa8TGko16XTqHc0": {"description": "cM7ixq8Tjnxp5Cl8", "localExt": {"ggaEmCcuK2hHviBE": {}, "WpbusO6EyVqstpgZ": {}, "pbz77y88rUFum2Zc": {}}, "longDescription": "A8iKcF0bkfjcTEFX", "title": "cTwEtnHxP5pVtN4j"}, "NVIdruEA39uCJzsE": {"description": "8WObt6t0w8LOBxE1", "localExt": {"5JYj4IqWK09l4wkr": {}, "zahXR1sDEDVKDINE": {}, "3HjCiVR1dQ8kuhb4": {}}, "longDescription": "pUwnGptHUplxzaDa", "title": "9PDwhu31d8eOdtrf"}, "q6ECDD6OGkuLs9gN": {"description": "pNon6DKW9A6AmnQT", "localExt": {"NFidImWONTvCPMGL": {}, "dbYEknHPKrZ7TiNB": {}, "E0HRsE0GHDOFjrfq": {}}, "longDescription": "JcyxT2a7fCFAUzLE", "title": "LiM573TdtWjfVciu"}}, "name": "LnLsBKGsALPuCOyp", "rotationType": "CUSTOM", "startDate": "1974-10-17T00:00:00Z", "viewId": "UAV95708zaP0wpZg"}' 'QEvFzox9wHocX3DR' --login_with_auth "Bearer foo"
platform-purge-expired-section 'WobEoGr8W97KBedc' --login_with_auth "Bearer foo"
platform-get-section 'r6PM51z7i0wQ9egK' --login_with_auth "Bearer foo"
platform-update-section '{"active": true, "displayOrder": 39, "endDate": "1991-09-07T00:00:00Z", "ext": {"6EG8I2lTviKbOgVu": {}, "N3nhkn6QIesNoYqv": {}, "VsakylHikKkpOjqw": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 35, "itemCount": 74, "rule": "SEQUENCE"}, "items": [{"id": "vfXXs8pDqm31AZSR", "sku": "kuw6q8FgqG46RsFK"}, {"id": "7eYlSU3vYcHZZjFe", "sku": "gVnZOn0tk4IATSIe"}, {"id": "fcqNEn4IZ0Dv6b8W", "sku": "taMVvLbG04KKnh3j"}], "localizations": {"vW0Qp3kTyL4CsLwi": {"description": "WUMcpxn4B6XoTNMu", "localExt": {"qZTHwo1IAJQpb6r8": {}, "ZeaSHwQuiH3Ozu4G": {}, "6bXxp0gYZyF9fJBJ": {}}, "longDescription": "kSOrF9Dg4FcDwBGy", "title": "BiHewZkwEeuzBBRS"}, "knxyWkZObuvig8sM": {"description": "uss76ezTrsDZNYUV", "localExt": {"48Oh6I45X7HvUtPY": {}, "ONZdFk75lkjQNHrj": {}, "aboGomguUqeuZh5q": {}}, "longDescription": "trRbNnGejdTGvZgN", "title": "5hshSe5YmZXKEQLk"}, "M6o3eGSP4Htmr90T": {"description": "qGf0OyqJ9ibJMmRg", "localExt": {"oxNwp1lGkYoq8HP1": {}, "TM0tefVQPWX1NPO5": {}, "Wn7rNG8rGp7Fadvo": {}}, "longDescription": "5EzpX0IttsRezyY9", "title": "GB5sf94ALBmvdncQ"}}, "name": "kcZb8cWdVH9bww15", "rotationType": "FIXED_PERIOD", "startDate": "1979-01-13T00:00:00Z", "viewId": "saYrJAe5Kd5QB96n"}' 'dlO6iPGC9RhzMC7V' '8BEphnRXnSpCzyb8' --login_with_auth "Bearer foo"
platform-delete-section 'FkoxQbrPngi87K58' 'pQswqKLutINusOsa' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store '{"defaultLanguage": "92F6iwkJIYOLarmp", "defaultRegion": "Wyvib9CDW21ANrlp", "description": "uXD9H1u1CvzWPcZw", "supportedLanguages": ["kj1l6bf2F9EXOBj7", "v8LHYivmD0ekycMK", "lwJTNL2UCWUtaAD7"], "supportedRegions": ["ZZx1iefATWcDSqGY", "RMdz07xEJ40epssg", "JJC3CX0hpB1ZGMMo"], "title": "5DSozCuFsrBMtoOe"}' --login_with_auth "Bearer foo"
platform-get-catalog-definition 'VIEW' --login_with_auth "Bearer foo"
platform-download-csv-templates --login_with_auth "Bearer foo"
platform-export-store-by-csv '{"catalogType": "ITEM", "fieldsToBeIncluded": ["fMCYxSeeJOlxa395", "rghZwGhdZJkkGhYv", "XYMIyaEMEqOpwetb"], "idsToBeExported": ["82b96rsH73hRfDgl", "29GWKpItMt4GszRu", "fkDFLYyNBPlMrkse"], "storeId": "9SGcMuV5phhU315L"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'UC6HSMQ32UznXNd6' --login_with_auth "Bearer foo"
platform-update-store '{"defaultLanguage": "ve29lqqtcLJW9eTJ", "defaultRegion": "vKNDFrx6LabyDnqX", "description": "jXKPIcxh0x7T6RQG", "supportedLanguages": ["nnW4ugGX6mKBbgTD", "9xL07ZzzIs3Jke34", "ZAUuLP897ooMLnem"], "supportedRegions": ["wKAvgDXNrFEE4Jf4", "hQpsLOcLtZw0efmE", "VcW7mxbS5UOoICxQ"], "title": "Mit8555Niy4NNFpR"}' 'E5pS85yTIRWvLRy5' --login_with_auth "Bearer foo"
platform-delete-store '8UKWPv3F7S0wCVlY' --login_with_auth "Bearer foo"
platform-query-changes 'Qi9cfMCeNnu6OIG1' --login_with_auth "Bearer foo"
platform-publish-all 'PPLRDEXLXZWXvqNC' --login_with_auth "Bearer foo"
platform-publish-selected 'HvNpeMjMzguq6HFI' --login_with_auth "Bearer foo"
platform-select-all-records 'qaqwH9J6JLb5f3SB' --login_with_auth "Bearer foo"
platform-select-all-records-by-criteria 'MyJUdwEBRrHAWUFq' --login_with_auth "Bearer foo"
platform-get-statistic 'TooGGnPEgY0t7QQW' --login_with_auth "Bearer foo"
platform-unselect-all-records 'l42byOwXgKyPhXmc' --login_with_auth "Bearer foo"
platform-select-record 'ysae8HpWH4xiz3fW' 'thJSu2pUIIuPLFAt' --login_with_auth "Bearer foo"
platform-unselect-record 'cWhjAP57QbWvSSp7' '1zEPPfmAQiqRRC2c' --login_with_auth "Bearer foo"
platform-clone-store 'aquMRtQOILcaDqUI' --login_with_auth "Bearer foo"
platform-query-import-history 'TBHQR5ISNoFR3GUx' --login_with_auth "Bearer foo"
platform-import-store-by-csv 'tmp.dat' 'tmp.dat' 'tmp.dat' 'dMuvmL0UBfwzaaeP' 'tmp.dat' '3Wd0Wrb8s3GW0CY0' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'vAfbq8xoCurq4lpH' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'XrbVBh60NUA2aKQw' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale '{"orderNo": "nXrmi6ya8u4sQPva"}' 'f1AcweR7tJW3MLMo' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'b1hUnIzIpUM8KK1k' --login_with_auth "Bearer foo"
platform-increase-ticket-sale '{"count": 66, "orderNo": "DYn6E9Gk51kOTJZl"}' 'uTekDMCGUJvERxNg' --login_with_auth "Bearer foo"
platform-commit '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 6, "currencyCode": "KnXPVZaDcXsV1Tns", "expireAt": "1997-03-02T00:00:00Z"}, "debitPayload": {"count": 30, "currencyCode": "9Pf2iogwxM5DZM0d", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 29, "entitlementCollectionId": "YeyNBQWUHDBnBeeP", "entitlementOrigin": "IOS", "itemIdentity": "WUV0WpmsQnp1n4YG", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 69, "entitlementId": "mTKOlDOy5vhSkxER"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 55, "currencyCode": "0N7Hvnuq1kJ1kpHc", "expireAt": "1992-06-09T00:00:00Z"}, "debitPayload": {"count": 24, "currencyCode": "nIc9z70LFQMI0oZu", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 14, "entitlementCollectionId": "jY0rNBbbB9txAvtR", "entitlementOrigin": "Xbox", "itemIdentity": "Xd0OoENg2Lw7uepm", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 1, "entitlementId": "hXojVZYz2zMU9jLz"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 66, "currencyCode": "922xiBgHSka0Pz7I", "expireAt": "1998-12-25T00:00:00Z"}, "debitPayload": {"count": 99, "currencyCode": "c5uShoj3dGHMeoi5", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 6, "entitlementCollectionId": "BOsQ0Gax0iX05IT9", "entitlementOrigin": "Playstation", "itemIdentity": "ArbyW10NkJFQxuMH", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 12, "entitlementId": "txY0MsPc9EMgf9JC"}, "type": "DEBIT_WALLET"}], "userId": "U2wEzUYUTmZ8JSMe"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 95, "currencyCode": "mRocp400RZe8Bzx9", "expireAt": "1971-07-06T00:00:00Z"}, "debitPayload": {"count": 67, "currencyCode": "zyC1aTWEmPgoy4Tk", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 85, "entitlementCollectionId": "Ew4Zeid4mRoFNxv1", "entitlementOrigin": "Oculus", "itemIdentity": "ckMQVjKk3bWJ0ZuY", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 2, "entitlementId": "3sI0x2hc8vaN1Off"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 90, "currencyCode": "MX7xSrz1EH6X2SM3", "expireAt": "1983-08-09T00:00:00Z"}, "debitPayload": {"count": 53, "currencyCode": "EFTdlKNh6GTzKjsC", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 83, "entitlementCollectionId": "xx24QM35bSkFrvGc", "entitlementOrigin": "IOS", "itemIdentity": "P3r1a8KIJH33aKkP", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 42, "entitlementId": "WD59MgTy1HA58Jt5"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 89, "currencyCode": "4e0uR47OzUGHeBKt", "expireAt": "1979-06-29T00:00:00Z"}, "debitPayload": {"count": 10, "currencyCode": "yRNgjZkdDppvEJiU", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 7, "entitlementCollectionId": "DGXgh8BKcLqtRZ93", "entitlementOrigin": "Twitch", "itemIdentity": "d9rTh3ureaIbxM3W", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 45, "entitlementId": "v9pZQjWAN0tny16Z"}, "type": "FULFILL_ITEM"}], "userId": "ZtuSJGQCrM7JEMRP"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 8, "currencyCode": "sLmP70LxN0f3JA27", "expireAt": "1992-07-23T00:00:00Z"}, "debitPayload": {"count": 45, "currencyCode": "5SjzQfOLYu9O46OO", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 52, "entitlementCollectionId": "nxnH0QIhoJRY807V", "entitlementOrigin": "Nintendo", "itemIdentity": "7TqtMiQgi7Aj28qC", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 9, "entitlementId": "wwZc4ZS1NMkrnHs1"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 22, "currencyCode": "hwqk140MolIrnlkR", "expireAt": "1995-02-22T00:00:00Z"}, "debitPayload": {"count": 2, "currencyCode": "I7VmnGIRMvXe6Bip", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 60, "entitlementCollectionId": "IFe2bzr6qQw6fSES", "entitlementOrigin": "IOS", "itemIdentity": "TO9SDKnMlnKW9jiN", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 42, "entitlementId": "It2nfhUaZGqjslu5"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "System", "count": 55, "currencyCode": "E6AacmZRXZm626PO", "expireAt": "1996-02-03T00:00:00Z"}, "debitPayload": {"count": 98, "currencyCode": "heP72AB8EO3Yrlyr", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 30, "entitlementCollectionId": "2tQm307IORTyHnLY", "entitlementOrigin": "Steam", "itemIdentity": "VsG6izJZruOJvSRF", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 89, "entitlementId": "Sdj8elbtHvDU91Dm"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "qrKWYOuITlYS2RYa"}], "metadata": {"D9WNKGhbLhjz1v0R": {}, "BIO2rkJGmPaK6HEV": {}, "IQJd3930TGewjRyf": {}}, "needPreCheck": false, "transactionId": "XSjap24esyjh6Wc3", "type": "migf2n6iQyr5cb5Y"}' --login_with_auth "Bearer foo"
platform-get-trade-history-by-criteria --login_with_auth "Bearer foo"
platform-get-trade-history-by-transaction-id 'L6fwBiaVPmmn0T5u' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement '{"achievements": [{"id": "zlmi2NY26xrkPPdg", "value": 56}, {"id": "pXjmtpNfCrIj9ntY", "value": 30}, {"id": "TsdD4d3kSbTkHPMU", "value": 44}], "steamUserId": "xr9Pa315FKDjG2Ap"}' 'SV94Jy6yCSXBqJqj' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'AbVwSaoj1ugjr8mP' 'kr3tZ506ERSVy5M3' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement '{"achievements": [{"id": "rrkxu0U9h9gCNVZx", "percentComplete": 69}, {"id": "i632w6LUrHuKBoNT", "percentComplete": 31}, {"id": "SWISs1dYrJKmx1BT", "percentComplete": 10}], "serviceConfigId": "iLFQejNZJNF2hm0T", "titleId": "qBQprHn3whPKU5ab", "xboxUserId": "nqw8fFa30pVbhr1B"}' 'Hh1arZAyuLcZoEkP' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'pqKhP2jWnRTglw0g' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'dWoE4esuiDrquccz' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment '4J6fFQezJ5E3iYHI' --login_with_auth "Bearer foo"
platform-anonymize-integration 'knvPcJkjRevVYfiE' --login_with_auth "Bearer foo"
platform-anonymize-order 'xpAgoK9YDq1x3dkb' --login_with_auth "Bearer foo"
platform-anonymize-payment 'JFDEBEOOvJ5BKeip' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'IldsgB4hOxb88WgK' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'SLIpneDQCfwucHRL' --login_with_auth "Bearer foo"
platform-anonymize-wallet '3o2NstrL6TsJeRcE' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform '7GuwKn63KIDTkUCq' 'EPICGAMES' --login_with_auth "Bearer foo"
platform-get-user-dlc '2HZMIL2P2bh14Lro' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'FTnAuujPeP9N0vdV' --login_with_auth "Bearer foo"
platform-grant-user-entitlement '[{"collectionId": "B5a2XkS3XQfMuzZh", "endDate": "1995-08-03T00:00:00Z", "grantedCode": "FnuJDzeEkDxaVogx", "itemId": "HrOon2OW4Zw5QwVK", "itemNamespace": "WNy2tnF2MifJR4hr", "language": "Gm", "metadata": {"DujYnVnFK6gB6ZxC": {}, "6yYUVUJYnQ3jOGmR": {}, "OIqxqQ0gcNeTflyv": {}}, "origin": "GooglePlay", "quantity": 95, "region": "w5ZtfwmOCKpFSMF0", "source": "PROMOTION", "startDate": "1973-10-20T00:00:00Z", "storeId": "GIZCTNiIRc9fEjkZ"}, {"collectionId": "hEpAJMCxMp2J0hDg", "endDate": "1999-05-16T00:00:00Z", "grantedCode": "kMgkvhoQe9gD9tGN", "itemId": "0nE7M36mI9u3EeZt", "itemNamespace": "LQij2JXsqdXfhZTT", "language": "Wc", "metadata": {"qGv7meuQhJuq1C6J": {}, "HkWMSUbqByWN2BCn": {}, "Rz9w2nur0B9jKaun": {}}, "origin": "Playstation", "quantity": 100, "region": "cylsau7wRQmL4i3e", "source": "REDEEM_CODE", "startDate": "1978-10-11T00:00:00Z", "storeId": "3o4TDraEEaDNJbVd"}, {"collectionId": "20FVHevCjthJUb7j", "endDate": "1990-06-25T00:00:00Z", "grantedCode": "uMrFaoLulzp3sZxI", "itemId": "mVK5yh2LcM8LaMW0", "itemNamespace": "ByjsRUrAHNRkIcC4", "language": "otg-BHSk_971", "metadata": {"lqxtLsR2AGOiPhNt": {}, "2IdH8aYYUT6mma83": {}, "3TDzk66ix88sAUrX": {}}, "origin": "Oculus", "quantity": 40, "region": "7MXxCvyy7caxz4MQ", "source": "PROMOTION", "startDate": "1993-11-26T00:00:00Z", "storeId": "jqPuQZX5KjdNrEwf"}]' 'Wo2MwulLg4bsO4YH' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'EYLjTSNDf3zazm6p' '5Y1tkG9WwU4Ty6Ch' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type '5QYyFjuBquE7xssm' 'DEMO' --login_with_auth "Bearer foo"
platform-get-user-entitlements-by-ids 'ypWzpNXgnoKIz8O8' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'NglJtZTh280vflFM' 'xIhlIT8AgyZJ16MM' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'd2bzOrTn2huwPgyU' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'zBUWiKoNGtvyk5xE' 'frJDxKsw5Xl7ZZrD' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'ZdbuvCFBaVcohewK' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'kVuGv9fQXkErF0dr' '["bYrrFQP6rW62Ctet", "BW3pvAJJieHhveGg", "97PY0txzvYwv7atn"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id '9EQv2Oj8TFNeGtJG' 'jKbMgCeuAYuzrmbW' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'ofEaKStqdKu4ROnO' 'NpJ849chqeiUGQMw' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'NwDlYSli3p8YaAde' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'l3hHMSLAiscGRWzk' 'Cl1ZKuPxjDUGRGcC' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'EPjbUy7F82Adu9BY' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'RHrVTehrqgvEtEs2' 'LpE0qfbvdU8hlDoC' --login_with_auth "Bearer foo"
platform-get-user-entitlement '9FnxqBlPBYJ7X6uV' 'y7FWTSfMi2CPVGxj' --login_with_auth "Bearer foo"
platform-update-user-entitlement '{"collectionId": "cdpdCqVeePMSqb8y", "endDate": "1992-05-13T00:00:00Z", "nullFieldList": ["ysv4VPaZWolXypwu", "cUqqqff2iWi4yP3u", "qNcig6YcDA8Z3g62"], "origin": "Nintendo", "reason": "uQHKersDmJLUHAKt", "startDate": "1973-03-25T00:00:00Z", "status": "CONSUMED", "useCount": 58}' '9fbdvUMDZeO4U55w' 'dCpVpnENiTc9NESV' --login_with_auth "Bearer foo"
platform-consume-user-entitlement '{"metadata": {"22eRBElD4K2Cy1tJ": {}, "cPAEkCeV29QsQk10": {}, "0eu5UcxuXXpt0YSP": {}}, "options": ["X04uEIdAwgDobopb", "dJeVCiKs2vLyH9kc", "SBdk7MwQzn28Le5n"], "platform": "eohqhCzroAzWQDve", "requestId": "0Z2G2N09VIbbsz24", "useCount": 11}' 'PGUbSaA00nKxQjYU' '6KlavIiLxU2I1GyJ' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'S48Hxu8Ju4XSAnlX' 'RYB9BgSZBvkehRn8' --login_with_auth "Bearer foo"
platform-enable-user-entitlement '3B0nrW1qx3NJTugV' 'WXz8dv7BiEUqnzxs' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories '2deMF8UAJIHEZv5z' 'yUUyNJkvA5xF3zHt' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'ZSd3QzXhkrN4pWry' 't4XTNwpp0ni1YfIg' --body '{"metadata": {"LZ4YIzElrLZOBLHC": {}, "KmLBaIwlokbAFW8R": {}, "gBUwBL28BqM8UzvK": {}}}' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement-by-use-count '{"reason": "qeoTiNKGRUMrimGA", "useCount": 53}' 'iOAh1SpLhMF2Pav1' '1FuU8iXCRz8Kgqgw' --login_with_auth "Bearer foo"
platform-pre-check-revoke-user-entitlement-by-use-count 'ijYxpGhsFArq6lol' 'bj7QKvtVRCPMjr5M' '29' --login_with_auth "Bearer foo"
platform-sell-user-entitlement '{"platform": "vw1GqUjjFp6R8mYZ", "requestId": "wKftVqSECsypS42N", "useCount": 26}' 'PHcN9drwqytieXpI' 'Zfr5XDq9dGLHjtgE' --login_with_auth "Bearer foo"
platform-fulfill-item '{"duration": 4, "endDate": "1982-10-15T00:00:00Z", "entitlementCollectionId": "JRAZxMWdoleYNHXe", "entitlementOrigin": "Xbox", "itemId": "ova15WVuE5cYVP9t", "itemSku": "QSa27BnPyq3I1BLt", "language": "GEZDRNkk4DJUofJX", "metadata": {"K8RGS0zCYRVmbfzw": {}, "Umsy0stUmKdXiiTO": {}, "bNdqkWa13g3pgHx6": {}}, "order": {"currency": {"currencyCode": "uPf6jQZcYerH933X", "currencySymbol": "7iXEEM2KOusNEHcI", "currencyType": "VIRTUAL", "decimals": 67, "namespace": "spT3MLwJZquMQSPp"}, "ext": {"5XD4S1ilfgff7Et4": {}, "uY8nlBwGNHgfgwZw": {}, "VMvshGmsg6ZJYnkH": {}}, "free": true}, "orderNo": "DawAjgHFQk0VzWRN", "origin": "System", "overrideBundleItemQty": {"sipbP027okM5E8tA": 0, "S861c0CJ7LzpFvOS": 65, "xXEdloYZBkatNLc4": 8}, "quantity": 8, "region": "ac75C6S2eHsH4Y84", "source": "EXPIRATION", "startDate": "1982-11-03T00:00:00Z", "storeId": "m7c5nPR0Y1sffUaZ"}' '64dFpiv8o9Gw4QtK' --login_with_auth "Bearer foo"
platform-redeem-code '{"code": "gyIeySoUxoMrj2J4", "language": "ihsQ_nYRK_NA", "region": "SyjEaFH2DRN6HIEq"}' 'IFEcS0ynIMOYWpUY' --login_with_auth "Bearer foo"
platform-pre-check-fulfill-item '{"itemId": "UQMooiKT57rmbjEn", "itemSku": "imeR7EFBz43E9FkO", "quantity": 85}' 'MFqvfDG5jvMOaXrD' --login_with_auth "Bearer foo"
platform-fulfill-rewards '{"entitlementCollectionId": "lEX42U0syrGNhBmg", "entitlementOrigin": "System", "metadata": {"2q0kIbrJ2S5Pf1Lv": {}, "g8kYEVylINJpxFY8": {}, "E6pU8eHjh0aTjIOa": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "t0snbE0yMvqF7TJ9", "namespace": "uB0zypjJiu7BIimN"}, "item": {"itemId": "uwB3hBVhuSMHhf5R", "itemName": "2MkxQTAYGfE6hXZ7", "itemSku": "XLoWCGf0dZEeXBd6", "itemType": "mGG6SHcZbX2wNnT6"}, "quantity": 55, "type": "ITEM"}, {"currency": {"currencyCode": "oqNLmPAUIMwa2wYq", "namespace": "6DsUq38bYvaWLoKz"}, "item": {"itemId": "HnngdfFnOfY9stXH", "itemName": "6LYXXMndxBPKmHVB", "itemSku": "7cNzHhvxc4xAPZ86", "itemType": "WNnQOhusPn4466u8"}, "quantity": 0, "type": "CURRENCY"}, {"currency": {"currencyCode": "qEFXUhGAwpYq1UqZ", "namespace": "ydOB0MThZW6LwcAg"}, "item": {"itemId": "57BYBVCbi0ifdPyK", "itemName": "f3SwHekWIz4rXlH5", "itemSku": "jw99HxCjXWcaXBcf", "itemType": "XXeV7BXefsSgZxSY"}, "quantity": 28, "type": "CURRENCY"}], "source": "PURCHASE", "transactionId": "aGXEbnmWR0H3EkrH"}' 'qaLNdfKszYZzOg11' --login_with_auth "Bearer foo"
platform-query-user-iap-orders '3h6fIaHSx5bClxUO' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'BmMwv5pmiIVnhlLo' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'Memsp7o3F2LQw7Y2' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item '{"itemIdentityType": "ITEM_SKU", "language": "Xt_Fa", "productId": "ufW5cWeg6eSCypsc", "region": "eITTkJGGCVF6LrIL", "transactionId": "DLviUCzmDAaW5xz1", "type": "APPLE"}' 'XnPNJgayPFcyUnKX' --login_with_auth "Bearer foo"
platform-admin-get-iap-order-line-items 'A3mcyMmX6WF8jtNA' 'VOYqSH533YlJ93CC' --login_with_auth "Bearer foo"
platform-admin-sync-steam-abnormal-transaction 'GBXv4fP4VPzhcH4U' --login_with_auth "Bearer foo"
platform-admin-sync-steam-iap-by-transaction '{"orderId": "JrrCKvrOAi7lMgkV"}' 'WJYzSCIDxWUxgOze' --login_with_auth "Bearer foo"
platform-query-user-third-party-subscription 'RNHIqK5PT404mFw4' --login_with_auth "Bearer foo"
platform-get-third-party-platform-subscription-ownership-by-group-id 'XBOX' 'UyirMVMOFES2J2Oz' 'NlJE3uqZz574g31c' --login_with_auth "Bearer foo"
platform-get-third-party-platform-subscription-ownership-by-product-id 'STEAM' 'N8VNPXNsmwTV8imJ' 'HNI0l6jJVzF1Oi2s' --login_with_auth "Bearer foo"
platform-query-user-third-party-subscription-transactions 'QuWUBBHZonSmzF83' --login_with_auth "Bearer foo"
platform-get-third-party-subscription-details '1vlCiZAZHCWMXxVh' '8HTrKqVwnpPn8N5x' --login_with_auth "Bearer foo"
platform-get-subscription-history 'MRgU7cPqNZrLCRRU' 'ysya4J3rvTzMTMSw' --login_with_auth "Bearer foo"
platform-sync-subscription-transaction 'rNov2GW9i54JY23A' 'UWFTLq0W1JqwKs1m' --login_with_auth "Bearer foo"
platform-get-third-party-user-subscription-details 'O80L7IOHlf6j8PZO' 'zUiQKZqz5NSp0B7L' --login_with_auth "Bearer foo"
platform-sync-subscription 'ODN3Boi2sSAO2n4M' 'ZQt753XQB93rOW0g' --login_with_auth "Bearer foo"
platform-query-user-orders 'uPoQbYzc1RDVhs2l' --login_with_auth "Bearer foo"
platform-admin-create-user-order '{"currencyCode": "hdzxxgibuqUuyW3c", "currencyNamespace": "Mz9YyduMomEHcU15", "discountCodes": ["VpXJTMx3Y8Um1iqe", "St4v8ry8IyqNVv0K", "hObg3OZ9j0HDtbqM"], "discountedPrice": 65, "entitlementPlatform": "IOS", "ext": {"iKBGm5Cj7RqnJUmf": {}, "DmofxvN8pRGoUtmb": {}, "WZbEjPyq35BWDoc3": {}}, "itemId": "qNcQFFyHv141NPqj", "language": "RUMKSQjFdjqTaZFs", "options": {"skipPriceValidation": false}, "platform": "Playstation", "price": 99, "quantity": 2, "region": "oM1rNJLM0OOVG5cG", "returnUrl": "6XxENbWqlX7idzjp", "sandbox": true, "sectionId": "Dfwl6XlCF6YxFMD8"}' 'tJQwZvUVInos5RK1' --login_with_auth "Bearer foo"
platform-count-of-purchased-item '00yH89i8ZDPXRL8c' 'bTAntB1STaab1Uei' --login_with_auth "Bearer foo"
platform-get-user-order 'bXg7RCe5BtKcwj6P' 'qqOgCimr3ZQNBBkr' --login_with_auth "Bearer foo"
platform-update-user-order-status '{"status": "FULFILLED", "statusReason": "u9czsYr3cFeVw70x"}' 'dNTuOdLKK0M2B2hb' 'qJin37P69t1KqeGz' --login_with_auth "Bearer foo"
platform-fulfill-user-order '7qbPnXEuOzzkoBmM' 'R9C4qPqJrAdh1HIk' --login_with_auth "Bearer foo"
platform-get-user-order-histories '7vCEq7FQ2S5VeW9d' 'dxzLPV8wDjsnyPh5' --login_with_auth "Bearer foo"
platform-process-user-order-notification '{"additionalData": {"cardSummary": "yNbYXmlAOi1SC3I1"}, "authorisedTime": "1993-03-13T00:00:00Z", "chargebackReversedTime": "1980-03-29T00:00:00Z", "chargebackTime": "1972-10-03T00:00:00Z", "chargedTime": "1972-11-04T00:00:00Z", "createdTime": "1984-06-07T00:00:00Z", "currency": {"currencyCode": "0GP6djn2Ps3IVT5h", "currencySymbol": "UZ3cnDq0ddZG0Epf", "currencyType": "VIRTUAL", "decimals": 55, "namespace": "vqarTvrG1DXZAWlv"}, "customParameters": {"z3c3XALMresGFfsH": {}, "4aXCDhshvEF8rHd2": {}, "50nyihcUVGHQczI5": {}}, "extOrderNo": "ZoTRUkjGoRkPs2SO", "extTxId": "9XrgXNIaU11cBXLw", "extUserId": "TfopqeZtHJnRgaGf", "issuedAt": "1990-11-13T00:00:00Z", "metadata": {"WcQ99M1yuXeqV31L": "X2ehcMnM6QtjzQjD", "lUMCGnxZwak7KHnz": "GASmVzePIroz41oQ", "CuXeTRyJQrNLTcqL": "VTN5Qf4tjPGpu27y"}, "namespace": "xb1of79zVTWIfgdN", "nonceStr": "phqe9fS1m77MAg4K", "paymentData": {"discountAmount": 30, "discountCode": "rcl2O47XVzU7qlNV", "subtotalPrice": 21, "tax": 31, "totalPrice": 14}, "paymentMethod": "qnmBS3XKDhp1OkMc", "paymentMethodFee": 63, "paymentOrderNo": "S3XxjkyNfj3XgTRT", "paymentProvider": "CHECKOUT", "paymentProviderFee": 70, "paymentStationUrl": "4flh775AQfzNjQ7I", "price": 41, "refundedTime": "1973-11-13T00:00:00Z", "salesTax": 92, "sandbox": false, "sku": "Y2epRDJjDyMDKQhu", "status": "REFUND_FAILED", "statusReason": "zLNsjdCFtKY0KsxR", "subscriptionId": "0rCFkyiQZfMnTbKd", "subtotalPrice": 47, "targetNamespace": "WbQaKFrTv4JWElmO", "targetUserId": "CxqPrq9I3XJWBxTL", "tax": 5, "totalPrice": 31, "totalTax": 83, "txEndTime": "1996-01-29T00:00:00Z", "type": "9UlEqtzDd7SgxdxB", "userId": "5kvtM8ah9bPsksce", "vat": 66}' 'LFzOlAZbDQAEJLbV' 'WH2XLIg3MgmdSvWp' --login_with_auth "Bearer foo"
platform-download-user-order-receipt '3h0xPsVY8qNwB2TY' '4v9NNfQSYLFKSl3F' --login_with_auth "Bearer foo"
platform-create-user-payment-order '{"currencyCode": "NFFJnt3rIwZdW02S", "currencyNamespace": "u6aCnL816aH6gOBU", "customParameters": {"IMeL0GL3aefSDME8": {}, "X2MxILI42BJMPkZm": {}, "ay4Csye3iJLtjsu6": {}}, "description": "ZJRCoDq3geuHFFaZ", "extOrderNo": "zPIjETqcKN1gaQ4B", "extUserId": "n0cPPtKaJlw31pdD", "itemType": "EXTENSION", "language": "cxEt-eydc", "metadata": {"F0LLhO3lGZ7eGOPj": "2XoFug8BUQUmPHnP", "umcazKAna0ji757a": "NDFeKnQP2j2WsQIm", "TwYkiuxzLrbJ0BkG": "zCNgesQlZZHIZH0i"}, "notifyUrl": "ks6kx0adnimPyyze", "omitNotification": true, "platform": "USD9ImtaPAocOQcp", "price": 57, "recurringPaymentOrderNo": "nwz27DWfGRVhbZTv", "region": "CPrrZCTU5WUJizF6", "returnUrl": "9PSsquWUafwbFPX1", "sandbox": true, "sku": "633pFgA7i9tqvfHm", "subscriptionId": "FvUZiUW5Y0CYw5OX", "title": "SGwQkJuy9oLFcHHc"}' 'raLXR2n9JQvq7NKW' --login_with_auth "Bearer foo"
platform-refund-user-payment-order '{"description": "IHYsii3fCh7sieJj"}' 'ZPAkiWumllU31uXP' 'wYxedGHCIkmt4bfJ' --login_with_auth "Bearer foo"
platform-get-user-platform-account-closure-histories 'OhNaIT0pv7XeqO8g' --login_with_auth "Bearer foo"
platform-apply-user-redemption '{"code": "Y3c4SryWB4yRaDxv", "orderNo": "xwaLM8HkVOW8PnLk"}' 'gqkqYZWPZTgKagTz' --login_with_auth "Bearer foo"
platform-do-revocation '{"meta": {"dcYcko7U3gH239Lh": {}, "Rx2Laa2RdtVb6VgA": {}, "5yFIH3s9UyeaFi8O": {}}, "reason": "E7BCK4FeVGrl5NpU", "requestId": "G9zblWEiHaUjyTHb", "revokeEntries": [{"currency": {"balanceOrigin": "Oculus", "currencyCode": "sSlstb3slUe94Nxh", "namespace": "XsVcqTYi1TMBMzaO"}, "entitlement": {"entitlementId": "rxuKvtUVtqbDWnJ2"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "wsBBRopVl38d4NZG", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 20, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "EmWxC75M88TKhFYk", "namespace": "A9aRNDe2IoPMSQKc"}, "entitlement": {"entitlementId": "g0OTT9JA0ll1RimB"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "lkxtP5Vok9sNK1OR", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 40, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "8au2wcWYyj3JvHqX", "namespace": "p4JR7xI59Z9tfGVs"}, "entitlement": {"entitlementId": "glnOxOXBfgBLuglk"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "8Hx0XYL0fJOPYpnP", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 66, "type": "CURRENCY"}], "source": "IAP", "transactionId": "ppYY1vlV0M2g6ore"}' 'qyBzWzCgMMWZuD6t' --login_with_auth "Bearer foo"
platform-register-xbl-sessions '{"gameSessionId": "mIR28xVxbtpSKOfi", "payload": {"IP3S6pypZqISn3ms": {}, "rykQFtW8QGKFZLrI": {}, "fqrZuu7IwKcT7sAs": {}}, "scid": "v2TKCbYMVkXEHmsH", "sessionTemplateName": "wIGGsusS0zZRODEK"}' 'PdudZsLaf8aZrXW8' --login_with_auth "Bearer foo"
platform-query-user-subscriptions '4dt0TSTmy7XF26K2' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'U7xttUz8nWKJjv06' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '{"grantDays": 84, "itemId": "RWDyGYIVFDbTvRYf", "language": "pJ4wM9WZfOOxAzms", "reason": "bhi5QJuc2SNBaOlX", "region": "fgsgBd7MYLLoPZrk", "source": "jRm5Ki0orhXrISEa"}' 'PZHLQkTHvndQsCKA' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'O2JRz3CGwtujkzxi' 'dLcAQWGVRg6DVso5' --login_with_auth "Bearer foo"
platform-get-user-subscription 'TJCSugdo4XTm8t1Y' 'TWqItjNWXm9sraeM' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'A78YSRS2fPy5fpbb' 'bMIu9lu18jIMBUM7' --login_with_auth "Bearer foo"
platform-cancel-subscription '{"immediate": false, "reason": "XmemN8LO03mnFSq9"}' 'jJTVFoFjxZjh5qUR' '1Pq4a4uaMfd0SQAf' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription '{"grantDays": 20, "reason": "IyzHL8jxakuVu5r5"}' 'B08VZxI4TU3apnZX' 'oJ4gI4EQKO8xC4D0' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'FsUo3IB2kX5REQZs' 'HyXzoIXNf0KbL9Hy' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '{"additionalData": {"cardSummary": "JttdgfLGO3ummpll"}, "authorisedTime": "1977-09-27T00:00:00Z", "chargebackReversedTime": "1995-05-02T00:00:00Z", "chargebackTime": "1972-08-20T00:00:00Z", "chargedTime": "1978-01-13T00:00:00Z", "createdTime": "1998-12-05T00:00:00Z", "currency": {"currencyCode": "un8hcO55hVjfWyK0", "currencySymbol": "2w5QytAmkanukAzA", "currencyType": "REAL", "decimals": 21, "namespace": "RvIUhUwguGgbLLN3"}, "customParameters": {"O7CEYjxqElP5lA2F": {}, "J0iGLRTXGsC5mxxs": {}, "e4eeuMgEctVEux2M": {}}, "extOrderNo": "SuwsEHlwdeJyhsHS", "extTxId": "6YqPudWviQsULL1t", "extUserId": "xfX9tqFSkGXoIcFN", "issuedAt": "1976-10-23T00:00:00Z", "metadata": {"pqN5bOfnqJ5bzDRz": "bhMxfEDE4TrtIHyy", "Mq79EdB9MxaF8QHG": "M2IuQYBO8m0HgTth", "479W8rXqwGVIRWgT": "NHCka3Wb5kH1BrLW"}, "namespace": "UetP7nmESQDV3BD1", "nonceStr": "nnEzoUlUWqP4ElzL", "paymentData": {"discountAmount": 0, "discountCode": "4KEm3uHBMCP5ckjp", "subtotalPrice": 15, "tax": 27, "totalPrice": 96}, "paymentMethod": "kcHgCfaWzPUvCnfq", "paymentMethodFee": 39, "paymentOrderNo": "wu8W1zvrKMRPvwA9", "paymentProvider": "CHECKOUT", "paymentProviderFee": 10, "paymentStationUrl": "6yJz03NETdywPqYe", "price": 36, "refundedTime": "1979-05-08T00:00:00Z", "salesTax": 74, "sandbox": false, "sku": "KIfFt4GYjUt4F1ZV", "status": "DELETED", "statusReason": "0aHbPXRns3qwYL6L", "subscriptionId": "wGlZGF7XQPLAcIL7", "subtotalPrice": 64, "targetNamespace": "cxRQR0NYdJzf3TMh", "targetUserId": "SaynVs05nZC4Os7h", "tax": 34, "totalPrice": 10, "totalTax": 71, "txEndTime": "1989-09-27T00:00:00Z", "type": "EabfVXBJPIZqZC5d", "userId": "6JuFdcfiNf0DOHKw", "vat": 48}' 'Q5rU2taDWh9JV5oc' '5IFQsrwHqFqwVA5m' --login_with_auth "Bearer foo"
platform-acquire-user-ticket '{"count": 29, "orderNo": "cLK0WTZbtmQkwC8a"}' 'zx3IRWme3C6p2r4D' '3NQdjrjkX3AMgK3J' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'gZufzssA284mG7uA' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code '{"allowOverdraft": false, "amount": 4, "balanceOrigin": "IOS", "balanceSource": "TRADE", "metadata": {"LYBsx8oqMzbE0ljQ": {}, "aBtb47V691j0FZp2": {}, "vjOXptxzx6kkaZYp": {}}, "reason": "l52sQR9Znp5d1eSw"}' 'rG2GBBEWrDbQ1Zzh' 'DuLHq9LTBstguOdN' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions '0O7l3GbKPHdDTQDE' 'EE2mTsn1NwJ71szs' --login_with_auth "Bearer foo"
platform-check-balance '{"amount": 82, "debitBalanceSource": "PAYMENT", "metadata": {"mnqZSWdEyOVYrTdD": {}, "q7IqbTVv8BLsqQW8": {}, "HSrEm5Y7jI232Sjk": {}}, "reason": "tijiNzTUe8KdizXm", "walletPlatform": "Oculus"}' 'kyKk0UXUF2523OTv' 'OmfVNJNDaSO3FEkk' --login_with_auth "Bearer foo"
platform-credit-user-wallet '{"amount": 90, "expireAt": "1988-05-23T00:00:00Z", "metadata": {"t6V8Bu7rIjGrxUMK": {}, "bv60ixUuUhopdqGr": {}, "qRZ124P7PauXTrpW": {}}, "origin": "Playstation", "reason": "vmjWq9fQqzulLGfQ", "source": "REDEEM_CODE"}' 'cmFkkRX6EqadAEIz' 'xld80Ynss7hc3VUx' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform '{"amount": 50, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"ZIgkTLqMeJPCbs8j": {}, "WmTteJhwNbwHGG39": {}, "YAZJ4HuLfeTfFBTO": {}}, "reason": "FFMJ9pq511jZcTK8", "walletPlatform": "Playstation"}' 'nWk0E7YaPblcWEyN' 'gvs5LEZrQXzSQRWR' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet '{"amount": 39, "metadata": {"dvZdj6AspWBfRnLc": {}, "Lbp7OmcrDJ7u1rrR": {}, "PcnG89rnNW1Yjfn8": {}}, "walletPlatform": "Nintendo"}' 'WvdNcwfUBMdNuTai' 'LxFMXRpDP9xutntU' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view '{"displayOrder": 31, "localizations": {"xHw4yYJOCViHwunQ": {"description": "wpC2eCFUAHZaYSvs", "localExt": {"WiNJtqXltZF6aSRm": {}, "HU5iR3hXIbzWPKOk": {}, "zftOgDQAWhulbrDf": {}}, "longDescription": "7q4cAnpmLiEu4CNt", "title": "X2lnqi7cHTSdGoLZ"}, "bC3UJruU4uIXBZsE": {"description": "YogFWiH9z4E8zmaZ", "localExt": {"5cg0REtUWY4fVIdq": {}, "wCWF5wmbOubTxAAe": {}, "DCowR3MeCNL1oNrF": {}}, "longDescription": "3SmgudQusJLsPlW7", "title": "ZyORFkN9EbKbTbrD"}, "zNgVEcw0lxRam16O": {"description": "6v4VjJf40LjUdORE", "localExt": {"LVXUFQyVlt9jmxmx": {}, "pfp41k1uDg59PhdU": {}, "XShabwyYCxTHrDel": {}}, "longDescription": "8oThvr8CUEzw4zL1", "title": "QeR3EYXBFpUX9y4t"}}, "name": "Y7o5FFi1n10vDgyo"}' 'HXIlrMl2RAukCL26' --login_with_auth "Bearer foo"
platform-get-view 'ihdMy9YCLNJEkvq6' --login_with_auth "Bearer foo"
platform-update-view '{"displayOrder": 90, "localizations": {"WotLNz0u8ySxA0yr": {"description": "jz4q7e0EJnADXC2y", "localExt": {"0DY1E1SMK9oA4vK5": {}, "6dsYI5SKV5pDANyJ": {}, "184miBhdVJt81fmL": {}}, "longDescription": "SyGuu5rbJVIwRMtw", "title": "ApGbXnR3yC6f2MHG"}, "Gedk0KzXRclOXdPY": {"description": "ZQxBnttu4yW5etl4", "localExt": {"Xk8Hd1lRtoPMvsu9": {}, "oswEPTvzwwGnpbx8": {}, "MCIjKzylqW8auyse": {}}, "longDescription": "P9wEEyYAnHPp4XzV", "title": "L5McglFCrjxqqxAY"}, "qXG2V3baMkZ9JCqB": {"description": "IkUID0EE9InZNLww", "localExt": {"AhW2b5OHKtUv4lTk": {}, "QNjxhXdj1CG0EBgs": {}, "t9Qu8Ofl2oB8VTjF": {}}, "longDescription": "0pD3NHU8iYUOtG5g", "title": "bQSKW2MdgCH4bWxR"}}, "name": "F6fBPa6GOuV5z0p8"}' 'jaJs2duQqawPrxi6' 'F4elhy9CZ94CAUVW' --login_with_auth "Bearer foo"
platform-delete-view '8FoEf8tjCjWc22qq' 'DfNz59jHwSDQHadm' --login_with_auth "Bearer foo"
platform-get-wallet-config --login_with_auth "Bearer foo"
platform-update-wallet-config '{"enablePaidForVCExpiration": true}' --login_with_auth "Bearer foo"
platform-bulk-credit '[{"creditRequest": {"amount": 30, "expireAt": "1972-09-07T00:00:00Z", "metadata": {"lzhPm7RmaOr6TLwV": {}, "yE42ApAb7CKt79wA": {}, "opZL9Cw6K9h55mwU": {}}, "origin": "Other", "reason": "oWw1qnCAvdnAcokJ", "source": "SELL_BACK"}, "currencyCode": "Gd0bkWrlhtfTywRW", "userIds": ["Dx9neFHWhDRJtyYE", "0hn2x1oTOX5gBQlV", "4fmg6btk3mAO4EtB"]}, {"creditRequest": {"amount": 42, "expireAt": "1981-05-20T00:00:00Z", "metadata": {"ygZleAoUuVKneoO1": {}, "0ytPdJ8SY3qoogOx": {}, "oPYvdIBJYyGURjEj": {}}, "origin": "Nintendo", "reason": "xllUrFYn7cSuO7Nx", "source": "REDEEM_CODE"}, "currencyCode": "gAocOqsd5v5n7eXC", "userIds": ["037hJMOEv5W0v25y", "5YdHivK2Q0WwolQy", "o9gZWdxfIdW8fNAM"]}, {"creditRequest": {"amount": 56, "expireAt": "1984-11-27T00:00:00Z", "metadata": {"vxBxJNPlvvYZw4MW": {}, "zWFTuNPf5JCSDyYy": {}, "4e5qoTZxSoZbQUnU": {}}, "origin": "Other", "reason": "9QROGDeJCyHvUsnL", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "0euBsccHPA2v9XP9", "userIds": ["fSNJlHCjxLNnYUlG", "QsFpy9ZVlLIFwLgT", "enfEX7lloLgIYqxF"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit '[{"currencyCode": "78nootfUs9559ilm", "request": {"allowOverdraft": true, "amount": 6, "balanceOrigin": "Steam", "balanceSource": "DLC_REVOCATION", "metadata": {"D3qDO5HXp5oVkhES": {}, "bHQ7hvTlzf7XwQtV": {}, "IYU87NgjDMcJxfMf": {}}, "reason": "YFlt3JvDgMiyBGyg"}, "userIds": ["iYXGk6BoBmSLi0R7", "WFTAY3Th5mOwPCPK", "VPlOGfFBlu2ZP0Ik"]}, {"currencyCode": "zDFMoNTQmlS8lMlY", "request": {"allowOverdraft": false, "amount": 96, "balanceOrigin": "Oculus", "balanceSource": "EXPIRATION", "metadata": {"urHix0QYycDH5we2": {}, "Mx0sYCnYPT4i4mxc": {}, "14iRfzJwKuc7EpiQ": {}}, "reason": "Ezz5N5osRYO7wbYh"}, "userIds": ["7EC3nDnhFvDlFd7i", "c8xhQqptccNorRls", "7q02W8tkTURUFmqN"]}, {"currencyCode": "yZpvWVJFK6ZuvlzG", "request": {"allowOverdraft": true, "amount": 71, "balanceOrigin": "System", "balanceSource": "TRADE", "metadata": {"156hIg0g8HIxpzm9": {}, "AcFhH4ZlYY3rEuHM": {}, "WwQNmCQmGCF963Cb": {}}, "reason": "sOawlRBQJH6fNekh"}, "userIds": ["vmW0567BFqbrPIux", "k077gxaj55huTA6A", "KmBXLi6GpnqAeMvg"]}]' --login_with_auth "Bearer foo"
platform-sync-orders '3w0FQ1520WM3TxWX' 'SdTiKdva2UREoBSF' --login_with_auth "Bearer foo"
platform-test-adyen-config '{"allowedPaymentMethods": ["tCLy2CqgCG7JwJCD", "qkzOdFwLJpIPxzLE", "1V9U1NgpH7Oc44yj"], "apiKey": "RdfqZgv34Gqqjelc", "authoriseAsCapture": true, "blockedPaymentMethods": ["0GJmPwUTWMx0MiPA", "jnWIhFrqSn4erXEt", "U1CaD8AqsMCGBNhm"], "clientKey": "Ut6fzYRn85brTu8F", "dropInSettings": "7cuCPh1TGZJmgWNH", "liveEndpointUrlPrefix": "WnvOBRCt4onqRo2P", "merchantAccount": "nMSRarKg4coy3AFp", "notificationHmacKey": "ULIn21Nf2FNgDWNC", "notificationPassword": "6yh7kgTHlrxKbsV4", "notificationUsername": "XtrI7SFBEgkwHifM", "returnUrl": "HYI581HbF7fMX9lD", "settings": "XYxGRJM92eX42WW2"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config '{"appId": "WKf5urEOpASBicX3", "privateKey": "ZwzZ7aVhrkmhSOEo", "publicKey": "zGOv8D0iVxzrec5k", "returnUrl": "NwJAxm0Rdm9l6nIh"}' --login_with_auth "Bearer foo"
platform-test-checkout-config '{"publicKey": "G5SilDDIsmj4h625", "secretKey": "dIsMKWBxF9RAIrI8"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-neon-pay-config '{"apiKey": "1ZR2kNzh60RQNaTE", "webhookSecretKey": "hMXMepgzY9jLiAdM"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config '{"clientID": "iQ7eDMkeBRMur18n", "clientSecret": "CxiV9bQMHpPbvflI", "returnUrl": "3LkRc1NgZaoYAaCC", "webHookId": "eRgtstsU3Qecxo4b"}' --login_with_auth "Bearer foo"
platform-test-stripe-config '{"allowedPaymentMethodTypes": ["QZO3P2f8TTOVf6jr", "r1OL606QpqCgxt0N", "gDSj1T6EdeYFmrLT"], "publishableKey": "0HbvS4kSSt3CyDgf", "secretKey": "6eFAiqSkHi0BR2El", "webhookSecret": "F6z6eJKuOW61akRF"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config '{"appId": "izqxCmudSXivAL3n", "key": "478mhb2I2yBJeCJg", "mchid": "hTrk68FWFzuLBdlr", "returnUrl": "KjUbgZQfw6Zys3mN"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config '{"apiKey": "8fIcC9CkharfqaoM", "flowCompletionUrl": "sGyv1RuSNdycDssU", "merchantId": 9, "projectId": 59, "projectSecretKey": "HiVDXzSJ8kbFAyid"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config-1 'bnXdMSwmkBkKC1h6' --login_with_auth "Bearer foo"
platform-update-adyen-config '{"allowedPaymentMethods": ["h45u0wuh9pY0011j", "SmHFTtfM2mGUUpq3", "ix7Am7W1fwJnV94B"], "apiKey": "rMSP31wAkVH75Ucm", "authoriseAsCapture": false, "blockedPaymentMethods": ["qcIo9lpz9oM52vHP", "lwVV3jlPKDEYahnl", "LJaLCvjRKKX1brmk"], "clientKey": "JDfdngbQD3pO8U3W", "dropInSettings": "94Z8IW2MAL9gYHEV", "liveEndpointUrlPrefix": "3wnTZTvYYf4ZFuV6", "merchantAccount": "L2AldoWWRN5wNYlF", "notificationHmacKey": "iliYmBrqrOc0NIli", "notificationPassword": "gBrOkBljwRENjt04", "notificationUsername": "ZpyTTZG1LxLdySvy", "returnUrl": "VqY8nxBZbHcPHEFu", "settings": "EVP9bF07gnWDULkJ"}' 'PQR0UJMr8ouccGH0' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'B4LCe2h0iFCCZgFW' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '{"appId": "s5s0nT89A88GDOUC", "privateKey": "lGyzYgnYTdim6PkR", "publicKey": "oq5TO65KWh8ztRJk", "returnUrl": "XxUAj3jzZvEaY103"}' 'YUIMuSjDHz0zPWMZ' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'QNNP2JqQqhISTBT1' --login_with_auth "Bearer foo"
platform-update-checkout-config '{"publicKey": "Gofv4SuaZ8yCB9TV", "secretKey": "ZnuzgvAZJRm71EC3"}' 'ENuvD8OPsp5Z3ez8' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id '4KVB7HeWPnVeFdy5' --login_with_auth "Bearer foo"
platform-update-neon-pay-config '{"apiKey": "ezlCU6SGzkMpTL2w", "webhookSecretKey": "xobjxAbagqEmXn6U"}' '2VeV2emK3JecJA4s' --login_with_auth "Bearer foo"
platform-test-neon-pay-config-by-id 'kqCbPxRkIAFQh9yD' --login_with_auth "Bearer foo"
platform-update-pay-pal-config '{"clientID": "doLE2s7mrVrmTJwt", "clientSecret": "BTzQTrNo1LcWNf7x", "returnUrl": "Hpi1JZJjIRtCfqDH", "webHookId": "Slo54zSnRN0zGMwo"}' 'rzym1z3ZdetOic9A' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'QOFWpdItLBhvKJq9' --login_with_auth "Bearer foo"
platform-update-stripe-config '{"allowedPaymentMethodTypes": ["tWz9yui8a6jOflFJ", "lZEhz1QDeh05hj92", "bwVVxJ62Q5AOAOyL"], "publishableKey": "65cPaOZA8BG8KcVW", "secretKey": "OX9n3YsjJexnFA9U", "webhookSecret": "mz3KPICya5Fk5TPa"}' 'EbX29cV8v7MXctih' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'txMnIr4b7jyfL3zM' --login_with_auth "Bearer foo"
platform-update-wx-pay-config '{"appId": "kklGCPISlsnVA6z0", "key": "uSfNNpJUYzJxnOyv", "mchid": "qmswrToyBIQumxDf", "returnUrl": "AxNqCUtizYM97ebZ"}' 'cYqwfIHPWMkOmrT5' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'HL16jMwECnmwJv4r' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'pqtzDaz0WUJlBCHz' --login_with_auth "Bearer foo"
platform-update-xsolla-config '{"apiKey": "J2v9K8c1zOlZg30p", "flowCompletionUrl": "agfP0FfOMBOpeQT4", "merchantId": 53, "projectId": 74, "projectSecretKey": "YIbU4i9mLyX46Alt"}' '08rrnG8y2ScXkwjp' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'Ap82pGcxvXaG9LzH' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT_DARK"}' 'S53jllopwirRo3A8' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config '{"aggregate": "XSOLLA", "namespace": "xnR0YaMsF3f5KLtp", "region": "TSsPMGDZTOwEP5Bh", "sandboxTaxJarApiToken": "h0NStWIggmhfAzVd", "specials": ["ALIPAY", "STRIPE", "PAYPAL"], "taxJarApiToken": "7Ao1z7FeJM2fWXGk", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config '{"aggregate": "ADYEN", "namespace": "SHksRkabpmvRsc7Z", "region": "YvXCT6m6mRZAlLBc", "sandboxTaxJarApiToken": "zJVeil7GbG1ISBCk", "specials": ["ADYEN", "XSOLLA", "NEONPAY"], "taxJarApiToken": "yljy5bYQdQ87hUHA", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' 'NntaIEtDI6MbhxkQ' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'dezbmf392ersoZ2K' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config '{"sandboxTaxJarApiToken": "bMb5jal0ruZmBXlG", "taxJarApiToken": "Sp85q6fuGfo5wSDH", "taxJarEnabled": false, "taxJarProductCodesMapping": {"LKPPIZx0zdNAagip": "ZwiaBrFrXtGMjujf", "HZB1gMI1B8DXb37D": "ffTZ7yQz337LLNCj", "IySe36SA5dxATLv5": "PkLvraRzChdjDGdl"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'k2A2jHbAPNGInvbn' 'f4ewKFFLoGggX4gQ' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'WyZocvYfr0Rnl02R' --login_with_auth "Bearer foo"
platform-public-get-child-categories '1IVNnaK6KS71Xs1B' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'phA9BXpKYgF9Ouig' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'STEAM' --login_with_auth "Bearer foo"
platform-get-apple-config-version --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'oQn9iHEqWO1cVCUI' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'Ox90FQdwLi3GOQkL' --login_with_auth "Bearer foo"
platform-public-get-estimated-price 'tpuRNeT1CULEMPaO' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'U5nukycAUlkUSZKU' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition '{"itemIds": ["rsxNRzF3NaUuCyQy", "ze6zPKu5sE89JW8U", "U0RsB6dvrpmInhHY"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'zVVlHGFSwjby6rMY' 'kVQnZDUAbINRKQsx' --login_with_auth "Bearer foo"
platform-public-get-app 'UO1YMxAndOj5O6IB' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'wXJjgQjgLoJyqwFV' --login_with_auth "Bearer foo"
platform-public-get-item 'Bd1ZjaRXEdWgS12b' --login_with_auth "Bearer foo"
platform-public-get-payment-url '{"neonPayConfig": {"cancelUrl": "SbPgOCWUogizeWOP", "successUrl": "UMrqgEIsMwNbfti0"}, "paymentOrderNo": "LoTBcNzyoCSw1t65", "paymentProvider": "XSOLLA", "returnUrl": "sHCVicuJ7onrUXVl", "ui": "B6xNel4Bxb9KwFYq", "zipCode": "dhEVq3hbsApeASfR"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods '0ljKxqZcLuhwNDvV' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'alv3bkoMXNzl1ywE' --login_with_auth "Bearer foo"
platform-pay '{"token": "PiunixlEAHZzHs8x"}' '5oPSkZFIV2feXnTR' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'lzAJy9oFOHB2KEsI' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'ADYEN' 'bzY1yxl7zeEpmSPO' --login_with_auth "Bearer foo"
platform-public-get-qr-code '6KwlJQlj9Ii2jARw' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'zowk9OoiPdnq9KBq' 'BwiNCsnK8CcO1OHb' 'PAYPAL' 'VGK6iolEw6IIpDc9' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'X5ijmtDGvd9ESdY0' 'ALIPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'rmQ2SaLd6M7TM3wn' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'JyExuo5z9RAcYgYZ' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'b7cAakJpqN6eubdp' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id '49JFwXG0EvoSHNC9' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku '7eEyhnL1QH5AlYRA' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement '{"gameId": "qCAC2gy1WF9QLNgD", "language": "KbK-HeGc", "region": "j6ICP75cm8YDChFi"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet '3zLvfQWC85MxWxvW' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc '0veFl3uU1aMD0mcz' --body '{"epicGamesJwtToken": "Wxc8f1s2QPMMZsf2"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'dvKZyHChRPHvdkcK' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'W21B5EFtD2pYaKTz' --body '{"serviceLabel": 20}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'gcE2XCwTkRUIX6IF' --body '{"serviceLabels": [81, 69, 46]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc '{"appId": "vtPJVsuzaBciSxwz", "steamId": "uIpGBYHTHoSVxgQC"}' 'bpZx5yMGIQ1ZxVIe' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'fYlKBJyQMqUEfDik' --body '{"xstsToken": "X6yOlgZrn0I6T0hv"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'cAFTaSWR4VOGIY7h' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'M6uhonkAe0FdTSSE' 'luBxM47BTww3nBTV' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'mBFZ6TIs9bTi2m7e' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlements-by-ids 'sYEqKkeuLWDfeFeE' --login_with_auth "Bearer foo"
platform-public-user-entitlement-history 'xlOFjRh8mLFTJLve' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'QSDWnMQGaYRxFWia' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id '7yJ2d87XjA0ajvb7' 'JcGUFgp6LkyXpxJe' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'FxhgTwyO51CUpcdx' 'L0a9VDhrqWCTXOxQ' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'UpyFgZhNpOTE4toH' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku '57yr01N33p1Gha8H' 'wpagvERZI6Cqhckn' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'hecNv2Tw6YKhVrYk' 'MqXkQ7qlaJjSYEse' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "options": ["tJaRyDlP9qIZJ5Kr", "x6KkHagEugKJxkU8", "Y58COtTNjnNSikJD"], "requestId": "g6ujKvq0CIa1YCK9", "useCount": 84}' 'rH9HR4reG0HwUXxQ' 'Tf5YpDUGYsJBEkYU' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement '{"requestId": "rLv4qUiTkFcLBrg2", "useCount": 72}' 'SHcwicUVq2XPljTZ' 'j5R0yZSVQ8SSeJ4q' --login_with_auth "Bearer foo"
platform-public-split-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 62}' '4PIKleuV271bwZ4n' 'iLSzQnv0C00dtNGG' --login_with_auth "Bearer foo"
platform-public-transfer-user-entitlement '{"entitlementId": "zbGYSYo9fY2EBZAH", "metadata": {"operationSource": "INVENTORY"}, "useCount": 49}' 'c4Xcae7VKl0ARzGE' 'ArlfE1NSmtcADoZv' --login_with_auth "Bearer foo"
platform-public-redeem-code '{"code": "d0La7P4JI4H7uDzk", "language": "biru_QD", "region": "rkyJFOVaewFcv9h3"}' '1YxuZnoSesWpLUHj' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item '{"excludeOldTransactions": false, "language": "jYD_iF", "productId": "4Cd9xTdt2K1CzpQW", "receiptData": "slNGnLYUYR0yOvJh", "region": "UjzcMtwINUlrhIpn", "transactionId": "lam2EefVopbpPhsa"}' 'na0uXG7GUTV1Bwgk' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'LDj4pjVktyoNSsEH' --body '{"epicGamesJwtToken": "lzyd0SarkhltUxgb"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '{"autoAck": false, "autoConsume": false, "language": "lLr-131", "orderId": "aqX8NuZtRUTKUvR6", "packageName": "9PImy6CcwlqJ4MO3", "productId": "L8x1H5OgzHypgsSe", "purchaseTime": 76, "purchaseToken": "DXpjyvLSHB1y3klH", "region": "uAGnidOyGuS0OG7o", "subscriptionPurchase": false}' 'tUlenimjIbm0riCa' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'Np8dUBDinAB6HqIW' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'Ii5Bvb1rcuEtWAF7' --body '{"currencyCode": "63kci7lT62BOHaso", "price": 0.9221227310193874, "productId": "3W3U2Mu9ZGMWou1U", "serviceLabel": 67}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels '{"currencyCode": "RVCf3gMWDAodCKqf", "price": 0.267678059630418, "productId": "zeexHA70NgJTxjtz", "serviceLabels": [0, 84, 13]}' 'cRGataPrcgTcA71d' --login_with_auth "Bearer foo"
platform-sync-steam-inventory '{"appId": "tqtSUN4zvBzGh3mh", "currencyCode": "IDNuMBZegHtB9uTC", "language": "CJ_248", "price": 0.04823362187358171, "productId": "k1l0qxRyQ2pi7xuA", "region": "ufJakIPXOQznHZTj", "steamId": "8oYfWObyNJKVSQsa"}' 'CokoGynp6xcqNKJn' --login_with_auth "Bearer foo"
platform-sync-steam-abnormal-transaction 'AhrSt96OaARAjHLG' --login_with_auth "Bearer foo"
platform-sync-steam-iap-by-transaction '{"orderId": "V3sNxS8uLBZiVRYI"}' 'yQLcslTEqgVNG8Aq' --login_with_auth "Bearer foo"
platform-public-query-user-third-party-subscription 'GOOGLE' 'UMPtigq9zOQOcAqB' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 '{"gameId": "j0bXhOr9OHt6zx1i", "language": "ygih_HI", "region": "8hHlQyMlgfkTsATh"}' 'LyflAqqAP4M78smY' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'dyge6DroOywOxI4G' --body '{"currencyCode": "6jZzoYIFAvYfT8XQ", "price": 0.3607042257021681, "productId": "2EOq6BFjmN4OqKGL", "xstsToken": "RpNWzKZtZnxgywmr"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders '4CYNGm7Tk1mMyeNR' --login_with_auth "Bearer foo"
platform-public-create-user-order '{"currencyCode": "sjQuDEgO3MEQNL6i", "discountCodes": ["DJLCB6WbXWIRpgjo", "LMxhx9nC3o6pXU5M", "jLRvQOgoaBooTawH"], "discountedPrice": 29, "ext": {"nGrwHeWoQXPFWFaK": {}, "bDgrGkv8SVwLyS4V": {}, "bHJvD0lL7aZUY9d1": {}}, "itemId": "Idud8bjYeBVMr7zH", "language": "Ncs-Mmpv", "price": 83, "quantity": 67, "region": "dfEmoIYwSxxAsfwD", "returnUrl": "MivWqHHGlnAnEu6E", "sectionId": "KYceTEqYudHlA4Ax"}' 'eEIfUxJ2xMSNNBxC' --login_with_auth "Bearer foo"
platform-public-preview-order-price '{"currencyCode": "eN3pGn46fGvodt41", "discountCodes": ["8yXV6qf6v5SgcJPZ", "PUh2nHQwpWi8HZ6C", "3MRdG8qAPiANv2Ar"], "discountedPrice": 24, "itemId": "VJ0fK2m6lQ5Ao8TI", "price": 93, "quantity": 18}' 'cupW0L5WsiuITRMS' --login_with_auth "Bearer foo"
platform-public-get-user-order 'POUfWQwr4PYf48r6' '6MaToxBiliy2vtRk' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'pqL6KrVcNz83J57t' '6OcYPQ5bk5IeuAi3' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'zWFGorCbncoj5RvE' 'tXiKyUGdNfMiwgSv' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'sTRmJsOm0wVFyHvF' 'hRMCFJuA0DEMgykq' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'qjoHTpIPMSRAuPI7' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'mSZQ5UDm1q51PlW2' 'card' '8LAiIzuo321Ll90I' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'BFsSb3FsV2PnCs9R' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions '0D5jZEwxcow6L7c3' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription '{"currencyCode": "COEP4AZx70uwV4Xg", "itemId": "vGTMHkXeEwuFJf7t", "language": "mQ", "region": "KikDE7hWvT5bzcfz", "returnUrl": "IpL2pWB4XsdrxIF6", "source": "kEAmKGNEmFPcUALN"}' 'ziO9Bz2wx4kDAm8X' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'Ileiujtv2NdQTYoH' 'ZogW8lBvniHdARad' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'fSoctA3GYO94ZOo9' '4gS5DHLB65fxQ06G' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'wTmobiBnfrnq9kOF' 'BWhUTPiKR3qcbHLG' --login_with_auth "Bearer foo"
platform-public-cancel-subscription '{"immediate": false, "reason": "4UiJSCbG4UmG3TkM"}' 'TzOcBIciiKwRs1E7' 'sH2G9MJ6F7Rr7O15' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'jqeKssQpme6eyM48' 'tE7eJRsXNeveQXqn' --login_with_auth "Bearer foo"
platform-public-list-views 'FRYmEIX40XOUoLOa' --login_with_auth "Bearer foo"
platform-public-get-wallet '7oDz00gxcoaH6u9T' 'Vf4DvEzpoPRiClZ6' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'rlwX99AHMLHqguYy' 'kVWzNwPcvGyieBsR' --login_with_auth "Bearer foo"
platform-public-get-my-dlc-content 'PSN' --login_with_auth "Bearer foo"
platform-query-fulfillments --login_with_auth "Bearer foo"
platform-query-items-v2 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'duW5lxSlorWEGN5b' --body '{"itemIds": ["PGSOSiiItrSrEJMB", "AIwTLkrMDFQfpQ9o", "0GJMTfqRRaZozM8x"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 '{"entitlementCollectionId": "CBoaS2FMwfWNCbN5", "entitlementOrigin": "System", "metadata": {"aYSTRYGFzgLZ7gEy": {}, "pQf2Pn9A4gcbDJ0L": {}, "mdnOPkIT1C6KGTpA": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "JZ6xullPROSfiW9z", "namespace": "cxmgNfTHu3vkZt9F"}, "item": {"itemId": "gWckjNpHhM2ZXp4N", "itemName": "0ROmUCTrS7Gi9Iig", "itemSku": "k9vamO7Q2WQwSWqS", "itemType": "s05rjISy4B0X9AJd"}, "quantity": 21, "type": "ITEM"}, {"currency": {"currencyCode": "UYCV8agvwOI2LlOQ", "namespace": "NRN132RdgwMXv9ol"}, "item": {"itemId": "KpRyWQim3qlART9m", "itemName": "PPmYUvlkBGPJFaFz", "itemSku": "kABC8zWMcYW5iRrw", "itemType": "32FRg8y4rOuj7J6i"}, "quantity": 20, "type": "CURRENCY"}, {"currency": {"currencyCode": "bcycXmBcrJLb7lab", "namespace": "yotifVk9KyqceGv0"}, "item": {"itemId": "CEDTVSjINYeKLowG", "itemName": "7UQB9pXzuCK5qd2m", "itemSku": "8A5axixm9X9TXNhN", "itemType": "8y1PVriIyv9kjuiA"}, "quantity": 68, "type": "CURRENCY"}], "source": "EXPIRATION", "transactionId": "x47etMikLFggYDc2"}' 'FMbzZoeKagnKf2Yi' --login_with_auth "Bearer foo"
platform-v2-public-fulfill-apple-iap-item 'fzvr9OqTsInGzHFp' --body '{"transactionId": "FXYJtHtqwoIwQBeI"}' --login_with_auth "Bearer foo"
platform-fulfill-items-v3 '{"items": [{"duration": 53, "endDate": "1974-11-09T00:00:00Z", "entitlementCollectionId": "YcFo9A93o22UgObC", "entitlementOrigin": "Xbox", "itemId": "ziNM8AB7RRxiZH3n", "itemSku": "gnitURdMjZLYCaek", "language": "lQcFY1QIk1h5EKvM", "metadata": {"Gd6hQ2mHjmLu4oFl": {}, "ReHy0JyZv7honqei": {}, "GTTqpgVsY1kPNdJi": {}}, "orderNo": "JXB3yjNUPIfvoXRO", "origin": "System", "quantity": 58, "region": "CMTsLA8vYVvrIAEe", "source": "EXPIRATION", "startDate": "1971-10-19T00:00:00Z", "storeId": "V0jsjAyVgxS54NNs"}, {"duration": 91, "endDate": "1996-01-27T00:00:00Z", "entitlementCollectionId": "EZjEb0Pv35fEk9s1", "entitlementOrigin": "GooglePlay", "itemId": "bFXkf7rQJ4Kj7Qyo", "itemSku": "9tUptiyZzRX8Y4rx", "language": "RWZPe4ZLAQWuBJwx", "metadata": {"ObZqMGxhffy9cHrL": {}, "Yfftad99JDcnn7f2": {}, "d8SOWP2dw6Uy88Wp": {}}, "orderNo": "QalG38VOo82aLD9j", "origin": "Epic", "quantity": 20, "region": "GeM8yxRfejqSbVgL", "source": "CONSUME_ENTITLEMENT", "startDate": "1983-01-20T00:00:00Z", "storeId": "FoyNFGpu5r2K0IvV"}, {"duration": 13, "endDate": "1984-11-05T00:00:00Z", "entitlementCollectionId": "GsGwyocvY9NePjLJ", "entitlementOrigin": "Xbox", "itemId": "CNBZpwRFNYxx2dr6", "itemSku": "DDuDHXcfvXPXJURX", "language": "3XwhOlgcpcOIxqCM", "metadata": {"SpZxby2J9vGOUeSe": {}, "Gb02vDPUpv5VEdIG": {}, "82dpIbfxVFfdvKQV": {}}, "orderNo": "gPQw3MVXe4xBPDWH", "origin": "Nintendo", "quantity": 68, "region": "LwxnJKjOo9fvfXF1", "source": "PAYMENT", "startDate": "1987-03-09T00:00:00Z", "storeId": "JlDDJ7z4Pb5jyGID"}]}' '39Ung1D57FjYKlJi' 'RIvhej77OSPwdzMS' --login_with_auth "Bearer foo"
platform-retry-fulfill-items-v3 'mrSvQdsAdTUGpd8K' 'FrXKFA2gdjQCYoE8' --login_with_auth "Bearer foo"
platform-revoke-items-v3 'b0CZetLfpFNyp737' '5rhOmR4zFjoJZVKZ' --login_with_auth "Bearer foo"
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
echo "1..497"

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
    'jOD2ePKAKYjJMVnY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'j2yKqavWpydepM3a' \
    --body '{"grantDays": "p069B9Okr0xJ5XRZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'VoxPGOLVBIlFgTAs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'Xgqx3mfB5ZwV25N7' \
    --body '{"grantDays": "NAvZdGuyYEYZE3Ka"}' \
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
    '{"clazz": "GSdhEGKcp6g1A8O9", "dryRun": true, "fulfillmentUrl": "cbYBK6XOBDpR7SH9", "itemType": "LOOTBOX", "purchaseConditionUrl": "ep9n7b17fsblalJr"}' \
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
    'sGpmmUeMikW3s54z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    '{"clazz": "ffAL2DZ7gBhy77iR", "dryRun": false, "fulfillmentUrl": "fFvWenMNV00KVuLF", "purchaseConditionUrl": "9WDnGO3bpQWmnS52"}' \
    'ZuuuI7F1xpVrcoXz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'SOEGEDYfiGPYo2K3' \
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
    '{"description": "dN3YBOJfvV6SuHov", "discountConfig": {"categories": [{"categoryPath": "oQlk5wL2oXDZ20Bw", "includeSubCategories": true}, {"categoryPath": "H4tz6KUC4jXGj2G0", "includeSubCategories": false}, {"categoryPath": "Z3JBYi9bBKBRpdbL", "includeSubCategories": true}], "currencyCode": "DUVEQTpfyAIoF7qs", "currencyNamespace": "ANBbEKQrgocpjGNe", "discountAmount": 27, "discountPercentage": 90, "discountType": "AMOUNT", "items": [{"itemId": "lDORLvP7ynTuXzaf", "itemName": "CqlMrrVIehVCf3Aw"}, {"itemId": "IzUdQ6sTrUg7Z0SL", "itemName": "rZraV3NLBUSrFnzE"}, {"itemId": "6yR1wLTgjsnB2LFV", "itemName": "rZRrOntm2KjbfCOu"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 60, "itemId": "BmFwUO7Y0xhMLwxg", "itemName": "RpTSUppvO3QG68Ke", "quantity": 61}, {"extraSubscriptionDays": 98, "itemId": "QJQEEVDAg045BvtP", "itemName": "d7ibBA3sd51mDooH", "quantity": 45}, {"extraSubscriptionDays": 95, "itemId": "ibq3Qcrtt8L5dIeb", "itemName": "sw7EjkMnJSziEA43", "quantity": 100}], "maxRedeemCountPerCampaignPerUser": 50, "maxRedeemCountPerCode": 33, "maxRedeemCountPerCodePerUser": 66, "maxSaleCount": 72, "name": "ulmByN5rcDA3Wcv9", "redeemEnd": "1978-03-08T00:00:00Z", "redeemStart": "1981-02-08T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["thQZvzRi7pqpajYE", "Hs9TIkcnrJ64BOKq", "ywS6DKNSeb2UMWOg"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'eYkCvqq0tO15pEVG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '{"description": "7sNihxpuuL7DJCxv", "discountConfig": {"categories": [{"categoryPath": "zZnh8oBAk1MNCAUm", "includeSubCategories": false}, {"categoryPath": "NkLU5ty3uQa7Fl3Z", "includeSubCategories": false}, {"categoryPath": "YgHaxeTT3ebuaYPN", "includeSubCategories": true}], "currencyCode": "2byTYCDBnAvf8JpF", "currencyNamespace": "uJSZistM75544PDl", "discountAmount": 98, "discountPercentage": 83, "discountType": "PERCENTAGE", "items": [{"itemId": "vvqkXDMPzOB08tpk", "itemName": "0qhZath4b4HtwEYX"}, {"itemId": "55pJNTX1sDjSWiSX", "itemName": "sV5rJ8eZXZ1TLMZn"}, {"itemId": "NL3DQK45IAtbyUDD", "itemName": "SJSV8pzl1lfIR7jn"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 72, "itemId": "b2iHHVN0ZBgvrigX", "itemName": "UT4fRbawD5yOvjgO", "quantity": 29}, {"extraSubscriptionDays": 66, "itemId": "pQfbXmtF0WFH7F2I", "itemName": "nhxtynUjuBCxkb2o", "quantity": 64}, {"extraSubscriptionDays": 63, "itemId": "xI1VVtVrVT6Hn8B2", "itemName": "d1hZUnoQwg5uqgoH", "quantity": 0}], "maxRedeemCountPerCampaignPerUser": 34, "maxRedeemCountPerCode": 64, "maxRedeemCountPerCodePerUser": 16, "maxSaleCount": 51, "name": "gYqmMqIdlRrQmuIL", "redeemEnd": "1976-08-02T00:00:00Z", "redeemStart": "1973-03-12T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["ZcQGHHGI7csI8ecZ", "SvzXYOytshBcKQyt", "Qagui6lsKF28n7UC"]}' \
    '7y1MKYVeoGFrDb8u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
$PYTHON -m $MODULE 'platform-rename-batch' \
    '{"newName": "nXv1iE7YgEZspOJ0", "oldName": "NiZl6OVLxKtkBpaC"}' \
    'G8Nu5m4ctwUNV8nc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
$PYTHON -m $MODULE 'platform-query-campaign-batch-names' \
    'ebaJ0DCuIeEStt3P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'byctX7HC2haQwVWO' \
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
    '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["CATALOG", "CAMPAIGN", "ENTITLEMENT"]}' \
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
    '{"appConfig": {"appName": "bVr6HSiXVzrG4EdK"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "QcbZJJ3AhkrMi0bn"}, "extendType": "CUSTOM"}' \
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
    '{"appConfig": {"appName": "Jvvi4Ys50iE7IjZo"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "ilJWhaW6jNsM94E2"}, "extendType": "APP"}' \
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
    '{"categoryPath": "Qb6S0VmaTR7E3mkD", "localizationDisplayNames": {"SQkgVMhLbM6H1MnN": "SKd0KStITvGQtzwj", "GtGTr238G8Aevk3k": "14782W2oNo3X4m6w", "ms9SPaHlqtDPry2v": "MON7sdhlilfpDT8o"}}' \
    '2iFrYtGfCZCcrvsV' \
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
    '2I4X26p21iDBZGJ8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '{"localizationDisplayNames": {"ZMLwPJ871nV5ALS7": "cneNLItUJgh74tyx", "kTR8ZCVJtkxjBJrN": "eQRsqkkKK2qxqzy4", "KSA5UtSXWjANSWIT": "9TLnuMLNJAEk3A6A"}}' \
    '6rYiIu8eLdWykhBx' \
    'LFnKnSYC9yyBYepI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'qtrikdAbdOT6iSRd' \
    'Eg8NYuc4q5sJVzaK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'GDOULJbjHphqjHGG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'AhfWaXqkA5fuVYOs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'MFo9tnqa4LEWGg1r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    '{"batchName": "4nW4pBcPPaiaM1og", "codeValue": "5rxUjGPKKLMoAy1s", "quantity": 41}' \
    'GJ70P9IqAyNlZ2Ow' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
$PYTHON -m $MODULE 'platform-download' \
    'FSebBkXkaxtY97TM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'JH8bO4GDHT6ZaUUk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'vlTKAhrxqHw7f813' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'qNjzlcxXsmGGcJha' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'uxfhVKIbRvUnyElH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'PuQE3Gc8bY4IH0OX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'HZP6VVB7qjDHMS49' \
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
    '{"currencyCode": "dkv8vxyg6giNKzeF", "currencySymbol": "nlgGRgYK3SeYvULY", "currencyType": "REAL", "decimals": 80, "localizationDescriptions": {"s5PZGTJmgofq7nlF": "5Ch8J2Qs990APOU4", "hcdwlnsTap2RJpHt": "ncLywP3WlLmNdQGk", "6vneHoB1PXO1vT1A": "onFO3syvkYd78GsJ"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    '{"localizationDescriptions": {"GLbnb4Nvw7fnm4Mn": "OqnqNerQoHiDIJay", "vSNt8EQXsMbYi1yE": "I9ychtyhjZSeDCKT", "4ilZB8apDTR3aL9s": "unWp7V1s8LmXm0Fa"}}' \
    'JMIjgzU02nZWwBdE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'FpfccauYDc86pxK9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'KhF4KRVPoIuzAuQN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'jAfvOE2cVjFp1CeC' \
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
    '{"data": [{"id": "EfaV4ZGGwbqOB4mD", "rewards": [{"currency": {"currencyCode": "3E7AFHqlTTkL8cmp", "namespace": "A0sZ0tgeR4UV5SMZ"}, "item": {"itemId": "8GUvWZvoCmprkv7A", "itemName": "8MRutCKCsqmx2zri", "itemSku": "OGB8b5qTFp3cIxOI", "itemType": "33nt54i5hdAezedc"}, "quantity": 32, "type": "CURRENCY"}, {"currency": {"currencyCode": "pbujZh1fYXF6R9Rz", "namespace": "3HVP2Y9WqSRiwV3U"}, "item": {"itemId": "Zg0UJLPMkeUwa6OV", "itemName": "KxCMxuf0P9r5f6fd", "itemSku": "myi4kQnOFbBtvBw8", "itemType": "1hUgtONCIoZ2rkom"}, "quantity": 90, "type": "CURRENCY"}, {"currency": {"currencyCode": "vUiJ7jBXy8psNoHN", "namespace": "alwgvju62rPFMbE1"}, "item": {"itemId": "cW57GaNZLT1z0GqD", "itemName": "ZN7ftHOhVy48YYg1", "itemSku": "AkRh3NmbRhMxKeIg", "itemType": "wq1NZmxa0ghRG020"}, "quantity": 87, "type": "CURRENCY"}]}, {"id": "pWTNKsVyK8EU8JYc", "rewards": [{"currency": {"currencyCode": "00PA2ef1jFeqQ8mB", "namespace": "pTuvLTJUzwXJFaWW"}, "item": {"itemId": "3JVdYpfHOYoLva2c", "itemName": "4JscEQfBFZXcSXpU", "itemSku": "81S5H9XsZyvZOFJ5", "itemType": "RrFZYcwfQ1Q2Bbcj"}, "quantity": 92, "type": "ITEM"}, {"currency": {"currencyCode": "dD1vECBb01VFFhO5", "namespace": "FcdTvIDQI2uIi2SN"}, "item": {"itemId": "ZKqlJZsdnY04DIyo", "itemName": "sprZPBaERb7U9kK4", "itemSku": "VctUmDhFVNa0JYzT", "itemType": "bdnOnEarWP4nrJ5f"}, "quantity": 81, "type": "ITEM"}, {"currency": {"currencyCode": "ESRVGeswvkzLNIIT", "namespace": "UJGj5FYaSgewLWHc"}, "item": {"itemId": "Bxz5LpdkRCAU8Hhm", "itemName": "XC68JFPdxhvBKee6", "itemSku": "wG66YPD4vNdENY1r", "itemType": "1rI0T97qA1OiblWl"}, "quantity": 53, "type": "ITEM"}]}, {"id": "qcONcJIsYRQz97fR", "rewards": [{"currency": {"currencyCode": "WI17eNP3Y2nWlS9S", "namespace": "fjh0htyVaGj4y9ah"}, "item": {"itemId": "S7h7XVlmc5Rs5FVQ", "itemName": "SIqObR55tV0BlN1i", "itemSku": "Fvw0GSLBmie8SJck", "itemType": "SRbu7hgmUm7RVCUR"}, "quantity": 63, "type": "ITEM"}, {"currency": {"currencyCode": "v7JRFMRaeIaQuPWP", "namespace": "lkxeotrNakKGvOSv"}, "item": {"itemId": "pmZZdlNXdx2kWmSq", "itemName": "odNZgfQyDVVkkqiM", "itemSku": "iRf2yCyM0Tp5GJHH", "itemType": "bsLJ73mCPhhmUyIw"}, "quantity": 14, "type": "CURRENCY"}, {"currency": {"currencyCode": "oVSLrbs5niXkjpkO", "namespace": "gRCC7qfz5jV7NTRY"}, "item": {"itemId": "ld9FJJ10goNq8uq7", "itemName": "9Du28SRRAMaQFEzp", "itemSku": "peticckSUon7awfo", "itemType": "l07696uxp5ieMjjO"}, "quantity": 10, "type": "ITEM"}]}]}' \
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
    '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"IVzGFBLJ5vbC9NfL": "TFJGOzAIAqpmkDdF", "Ss4s7u1VUuLmenyx": "TQVkEg5wouUKa35m", "8oH9zCfw7mCMkbvS": "Im7JROcwVmGyrBpn"}}, {"platform": "PSN", "platformDlcIdMap": {"F4VrRiFSPs2ZMcVF": "crixULzSeTnUWGxx", "fnMIDSCPr1m1Fg6t": "c250c2okDTem6o62", "xFY6TNqoLFFS4wB6": "Um7ir0n6O3vbYVjr"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"12Fapao5jo9nJoKE": "b8tHmFwLGan2SrKc", "kNxLWH6rjhRL9uxo": "V5Oe8ktlePEo1xBu", "RSv6VizgtOXZy9cQ": "6B074dTJZqeOllKQ"}}]}' \
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
    '{"entitlementGrantList": [{"collectionId": "NwJUGtC0tAhxn1ay", "endDate": "1980-05-20T00:00:00Z", "grantedCode": "mVXTs3tCu4F9IgDT", "itemId": "2tq2V2lMzfIQHCZ9", "itemNamespace": "0DqQgP6ynrQjYH0N", "language": "vP", "metadata": {"8qHTGdn7gE4bwLzD": {}, "Ew2PYt8x9SSaOZcE": {}, "vG6KZh954BmtuIFl": {}}, "origin": "IOS", "quantity": 11, "region": "QWqwTF2pOJsY86xA", "source": "GIFT", "startDate": "1989-04-23T00:00:00Z", "storeId": "y1iy01FkEEXlKiTI"}, {"collectionId": "DgP7wuXQdfW99Jgl", "endDate": "1993-02-04T00:00:00Z", "grantedCode": "coOlkkBxiXf8OBQR", "itemId": "qXWXQ3JdXdFz8pc0", "itemNamespace": "EEziE5yIvijq9ix1", "language": "VMOX_GRVR_991", "metadata": {"4WfGq8JCDnwGWgcc": {}, "uzuc6QDRMGdBPbUy": {}, "HTYPS8CGKXGon2ec": {}}, "origin": "Epic", "quantity": 19, "region": "65YAFLweD9Z7U2lN", "source": "IAP", "startDate": "1982-05-02T00:00:00Z", "storeId": "vBLZPBuekeBe4Tvb"}, {"collectionId": "3fHCIJZkwEcCRi2U", "endDate": "1996-05-25T00:00:00Z", "grantedCode": "ifTd5nAOF9VV7JgC", "itemId": "Om4wL729Hma0nCdC", "itemNamespace": "EFcf2doBrfHiHXXg", "language": "GVc-EyZq-Iy", "metadata": {"jIPOMXufZPWSe20J": {}, "fNvtNcWtpUkw98x3": {}, "tMM1bFFDIqKD8HJ4": {}}, "origin": "GooglePlay", "quantity": 61, "region": "hD3nL1saQxLYrz08", "source": "IAP", "startDate": "1980-03-04T00:00:00Z", "storeId": "7M5apPMc8ZR3bPCJ"}], "userIds": ["kEmGdCbwodVRjZJW", "5n5s6DODBmrqEhGl", "uCQpjuJzpPO7BPxV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["WlRFnIekrQ99ecme", "nxguw5bO8Vh4JaKY", "AsoMlLJGMl5xFgLj"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    '4mCShMFlbrRGjoBQ' \
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
    --body '{"body": {"account": "45Za4JR4S3iac6vL", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 9, "clientTransactionId": "WRucRpP1Tq7uYXhB"}, {"amountConsumed": 92, "clientTransactionId": "FPfF5DvveMdBsPt1"}, {"amountConsumed": 98, "clientTransactionId": "ZSyJ7IIUXlBlZMQe"}], "entitlementId": "SnOg5gf1SwrbpmoF", "usageCount": 87}, {"clientTransaction": [{"amountConsumed": 61, "clientTransactionId": "mahJlT5OUDEMwAjg"}, {"amountConsumed": 80, "clientTransactionId": "Tw8BJPFctwUMCRdx"}, {"amountConsumed": 83, "clientTransactionId": "OBu3TWmHDVmCGFoD"}], "entitlementId": "7aNFj9wORAVqRuNs", "usageCount": 37}, {"clientTransaction": [{"amountConsumed": 48, "clientTransactionId": "58kVk7F1KKOfFFLv"}, {"amountConsumed": 62, "clientTransactionId": "lXVk36IpbGquPnIP"}, {"amountConsumed": 47, "clientTransactionId": "DxGa1UuSr4ehnV8A"}], "entitlementId": "w9m6GvDSE2F7Ad69", "usageCount": 61}], "purpose": "6CV9KiWkbdpGqWQI"}, "originalTitleName": "PK6mVytM5mBRT39g", "paymentProductSKU": "KYLk9DmjJh6PnpTX", "purchaseDate": "WAUt8lgqNM4poGEv", "sourceOrderItemId": "IKCe3MrLxmnjmlAu", "titleName": "aBCdhzXb6cBMPNMm"}, "eventDomain": "jMi2uztFNfXg0Uvw", "eventSource": "aZ0py16ShGomFzUa", "eventType": "ppaaODZaZ6Vzztnn", "eventVersion": 39, "id": "pjVPfktNnl8UYH5k", "timestamp": "esuOtYHLqcdy05Yr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'MockPlayStationStreamEvent' test.out

#- 73 MockXblClawbackEvent
$PYTHON -m $MODULE 'platform-mock-xbl-clawback-event' \
    --body '{"data": {"eventDate": "qdFn8sQ7yc8xLKyB", "eventState": "fGLHEAKhp612Y2nc", "lineItemId": "Rf7tEGzYqRoHm6Et", "orderId": "yXqQbKWMJ0aODiWn", "productId": "6bPmSa85Riu1alaV", "productType": "EhjJZbwMHkFWLSzm", "purchasedDate": "AXAruYrVjX4HRTvm", "sandboxId": "3Qr9IkuW6jjofc6i", "skuId": "tDEsq0dHfYG6k853", "subscriptionData": {"consumedDurationInDays": 67, "dateTime": "Bh2E3wFchP3zTymf", "durationInDays": 98, "recurrenceId": "9FGGjJ0hRPUBFxM2"}}, "datacontenttype": "Fr3olO10RAyIZs2V", "id": "fCRhzfKDAGIAJuPh", "source": "QcZwXRE9FOZUVTfD", "specVersion": "c3w1tAXRrQtHkm0T", "subject": "thcx9W7PkFNVa7cz", "time": "D4wybVjqOKrqYGxc", "traceparent": "BxfjLUZHK0OO1yQs", "type": "MBQAdOfrtHWyGg5T"}' \
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
    '{"appAppleId": 95, "bundleId": "qJkFoZFZex0eOw31", "issuerId": "PXkVnetcvAuim14W", "keyId": "dh1qKoSDBbyqlJyf", "password": "VgaW6ziZF6ijZzA3", "version": "V2"}' \
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
    '{"sandboxId": "kosOcoAcV0T2G3vQ"}' \
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
    '{"applicationName": "ZNiqaXzRBra3I4K9", "notificationTokenAudience": "iBdljXtowifBfAw3", "notificationTokenEmail": "0kOykBuDJ0IPQeAL", "packageName": "4MZwEVJe7waGyB6g", "serviceAccountId": "2M5JiwtMOfDfoMgU"}' \
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
    '{"data": [{"itemIdentity": "2yFBTPfnmfN5E20O", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"CVBTrkvObsiHQgt7": "OfL6AcBPjUYURB3R", "src0qvV8Gq1cw3yt": "GWVKPoA1aKRZM1Ot", "0PWppB2H0G8Xko9l": "5J0IOZmnpzwHhig9"}}, {"itemIdentity": "d6vdgfrNiGrH0hDj", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"6IYpfINzNjk5V8T9": "pQjnGB83yonudf21", "g0NhuYvwCATIUep6": "1ZsSiqW7I03oSwCf", "YpN9jkLCsMYyyhEy": "BfFFZwkC1PRjBWzT"}}, {"itemIdentity": "uXttDREDWbOM3xQa", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"1POCjseK1xaSbMjy": "FrYsITcyT5AhNNH0", "Ht1yPtBwXIuYrbPU": "cvEOJ4PghksbaThW", "37NTbz8HiRmuknvX": "iTP0KrWQ3pgbHM0S"}}]}' \
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
    '{"appId": "vy3GRenDzwlTE9Cz", "appSecret": "hnck3GnyPFQHgn9j"}' \
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
    '{"backOfficeServerClientId": "VE6QGkZ8AVzeiaDi", "backOfficeServerClientSecret": "67E3rTwN2LrT85Ar", "enableStreamJob": false, "environment": "J6iuJsVjhLgaFeFJ", "streamName": "5QRuvEsU5QkmsmfF", "streamPartnerName": "hPTfXVzS3hFUXbdY"}' \
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
    '{"backOfficeServerClientId": "U08BQZXTcZnHoYaI", "backOfficeServerClientSecret": "I5c5UqVvKR3ydSEb", "enableStreamJob": true, "environment": "trPjqlB5c8a78gp4", "streamName": "BGN4NAydb6GgyFcz", "streamPartnerName": "EOMXF1T1sU9xsmAC"}' \
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
    '{"appId": "LFHrXWFobqnDkfPA", "env": "LIVE", "publisherAuthenticationKey": "gVss4JzVKSusdLum", "syncMode": "INVENTORY"}' \
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
    '{"clientId": "JzvDUlhTlBNpvkjg", "clientSecret": "48iVKCqEqeZP1CFa", "organizationId": "MkJVBkZU3qtk0dM4"}' \
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
    '{"enableClawback": true, "entraAppClientId": "ZGiSutb6wUxEikRy", "entraAppClientSecret": "HC9VWMnzbuNQNJxC", "entraTenantId": "bLEhfrPxIRdbUwkN", "relyingPartyCert": "6Tr6vRneC9JYmpKy"}' \
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

#- 107 QueryAbnormalTransactions
$PYTHON -m $MODULE 'platform-query-abnormal-transactions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'QueryAbnormalTransactions' test.out

#- 108 AdminGetSteamJobInfo
$PYTHON -m $MODULE 'platform-admin-get-steam-job-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'AdminGetSteamJobInfo' test.out

#- 109 AdminResetSteamJobTime
$PYTHON -m $MODULE 'platform-admin-reset-steam-job-time' \
    '{"env": "SANDBOX", "lastTime": "1987-04-13T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminResetSteamJobTime' test.out

#- 110 AdminRefundIAPOrder
$PYTHON -m $MODULE 'platform-admin-refund-iap-order' \
    'tqWw67LheLDvwZjt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'AdminRefundIAPOrder' test.out

#- 111 QuerySteamReportHistories
$PYTHON -m $MODULE 'platform-query-steam-report-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'QuerySteamReportHistories' test.out

#- 112 QueryThirdPartySubscription
$PYTHON -m $MODULE 'platform-query-third-party-subscription' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'QueryThirdPartySubscription' test.out

#- 113 GetIAPOrderConsumeDetails
$PYTHON -m $MODULE 'platform-get-iap-order-consume-details' \
    'hGMOB4HFIzTlGBnp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'GetIAPOrderConsumeDetails' test.out

#- 114 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'LBd02br9OfMbjgS5' \
    'WjduKixzScfrHzGY' \
    'C1TdLVDBDxK6laOk' \
    'BUNDLE' \
    'yplscfsZvvUpCMJR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'DownloadInvoiceDetails' test.out

#- 115 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'liFCmFC9uUxSxI4y' \
    'yrZIV9M22gRLsc6J' \
    'wt190s6yFiDZs0wy' \
    'CODE' \
    '3ACfS3A8JeRMYUCg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'GenerateInvoiceSummary' test.out

#- 116 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    '{"categoryPath": "n7oklNewpAIwtlAo", "targetItemId": "oXZ7HDb8g2BhzW03", "targetNamespace": "O2pp9qVpZbsppRsB"}' \
    'WQ7RdYqZaQ8swcFO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'SyncInGameItem' test.out

#- 117 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '{"appId": "shiWEFDMG99v5LSS", "appType": "DLC", "baseAppId": "VsYOwypw6F21uYow", "boothName": "kPNGANjli9XZkbrk", "categoryPath": "h3dQNtIEwCcfPmWj", "clazz": "X540aN2pvOi5UG7a", "displayOrder": 12, "entitlementType": "DURABLE", "ext": {"VhXIgoHE9eEvIyV2": {}, "DqxWhSV3r9vk4HQD": {}, "iwqJUZHP7HM6JB2P": {}}, "features": ["gqGNM6sO7IUwIv84", "6ZjZh9eggvvmXZU7", "lVGZ6lIs17PXJ8Ks"], "flexible": true, "images": [{"as": "TlbfUOSmR4F0p5g7", "caption": "b3MegxV9JnAJSu3M", "height": 62, "imageUrl": "yYJopKxd9MtXYGoZ", "smallImageUrl": "GkBNXT0feu7KKPXu", "width": 27}, {"as": "MUzpMmsvvKTljWsp", "caption": "MrC4TeRTNUYz7N4w", "height": 68, "imageUrl": "V6J5QloYCaB5Impx", "smallImageUrl": "pHJCcuqJR2TT3HEY", "width": 55}, {"as": "DjLIhvCNlBRcFsa0", "caption": "3Nqu13LgD6kOUZXQ", "height": 75, "imageUrl": "HLF7s3hgmxOOzP7v", "smallImageUrl": "teUYzMZzggFcJQkY", "width": 42}], "inventoryConfig": {"customAttributes": {"fW76v6GPVwWjIfhO": {}, "XemeTgiENbhdRohu": {}, "coiX0GAQZEbNr6Vt": {}}, "serverCustomAttributes": {"QiKwKuIHMjiIjX7E": {}, "u0WCXd8GX7ygT5ql": {}, "Bekxw9pO3vyRviPl": {}}, "slotUsed": 19}, "itemIds": ["ArVtIQyxp17b8SHv", "RIiJgGrdz6Ar6ZMG", "UI9Z0Fol65yD1dLB"], "itemQty": {"QJcBsvUaK2iHOkgy": 15, "bWTfPplY43FQpfFW": 25, "yLXmLsHXWPqYBJTz": 23}, "itemType": "EXTENSION", "listable": true, "localizations": {"302k4rdWgWYgFgw3": {"description": "mGmogCJXjHTGhyem", "localExt": {"qqwoT441DX6xwuD6": {}, "giqKLavCF9yVeJJw": {}, "yaY7Ho61RoV0VH7t": {}}, "longDescription": "hk8lnCROZodh1gbk", "title": "bnRcIufk5WE4zPvx"}, "A5061CF9079hQA91": {"description": "csvlQSS6PyDb3vKb", "localExt": {"Cw9eAGmM6lPAJMiz": {}, "ukBmcy1kbAWDUac6": {}, "5Jdlm1JJwmCAjTwt": {}}, "longDescription": "CqKdh92wuH9hLkAg", "title": "90cQgXeZnKRP6Gdv"}, "2QY9BadKJj4HkL0m": {"description": "k4HHDzXcKJowQbOr", "localExt": {"gveLe4hYQEGcivib": {}, "NKS0tBFxzru1A3Ob": {}, "caijxlHrcqzwGgl1": {}}, "longDescription": "SyrFazP5g67zq7XC", "title": "HkJzmy6DtxvO3nUi"}}, "lootBoxConfig": {"rewardCount": 98, "rewards": [{"lootBoxItems": [{"count": 79, "duration": 0, "endDate": "1990-02-14T00:00:00Z", "itemId": "UlRZSLj5xwmP8QMJ", "itemSku": "JJn2Lqw6aiKZbUJQ", "itemType": "92BTViMMFji1Gmfm"}, {"count": 46, "duration": 95, "endDate": "1975-03-08T00:00:00Z", "itemId": "N25xGSRRZnwlbMGh", "itemSku": "eYVteLiiIKPjokv6", "itemType": "HMQOekLKHziTw5M3"}, {"count": 74, "duration": 45, "endDate": "1972-08-01T00:00:00Z", "itemId": "kbV2y32kG5QTZnpx", "itemSku": "Ya2jDp3LzelXaUz9", "itemType": "AKozXBA29DPhYa8K"}], "name": "sjfnk7HKSWULkEKq", "odds": 0.678297948432276, "type": "PROBABILITY_GROUP", "weight": 92}, {"lootBoxItems": [{"count": 0, "duration": 29, "endDate": "1995-05-12T00:00:00Z", "itemId": "EtBnsggbEVNmymBN", "itemSku": "r5C2BOjUiOQVEbp3", "itemType": "z13pDy371QLVtDb6"}, {"count": 90, "duration": 35, "endDate": "1996-09-30T00:00:00Z", "itemId": "atSimmKudqURkyz4", "itemSku": "E3EI1bSCYaa8JSNQ", "itemType": "dhrnvuDGFiT4U6WQ"}, {"count": 88, "duration": 43, "endDate": "1982-02-25T00:00:00Z", "itemId": "sTHCgTvrGllrcttK", "itemSku": "4WgzdUhB2YhKWidq", "itemType": "RPQ1hSmShNaSmVFs"}], "name": "mFW74DkabvmYAT6q", "odds": 0.733718054807421, "type": "PROBABILITY_GROUP", "weight": 53}, {"lootBoxItems": [{"count": 59, "duration": 13, "endDate": "1992-05-20T00:00:00Z", "itemId": "aTNC1LAentTXWyBm", "itemSku": "b2Ir2yOaVvE1N52P", "itemType": "wdeTQhMz99aZ3fza"}, {"count": 55, "duration": 35, "endDate": "1986-04-07T00:00:00Z", "itemId": "lch9a9Knc6glMjwg", "itemSku": "8OWAT7d65hchXzG4", "itemType": "ffz0lXBDbBGrYGle"}, {"count": 0, "duration": 89, "endDate": "1977-10-15T00:00:00Z", "itemId": "gjm0xqJhfraXwzn0", "itemSku": "bbNK5rhgy51k1e1g", "itemType": "Z8QCEx41nhN2NMDX"}], "name": "EHz2uROYqy72xPht", "odds": 0.5539630699293991, "type": "REWARD_GROUP", "weight": 36}], "rollFunction": "DEFAULT"}, "maxCount": 90, "maxCountPerUser": 37, "name": "w0xHZOUW3jlXYz8a", "optionBoxConfig": {"boxItems": [{"count": 51, "duration": 84, "endDate": "1988-06-20T00:00:00Z", "itemId": "YdzaYe7WjwoU21Ed", "itemSku": "goOvT13nFPxMy9YN", "itemType": "TBZTR5tZmaZGxrhA"}, {"count": 85, "duration": 83, "endDate": "1978-06-29T00:00:00Z", "itemId": "REvGmmbGW3SttwZr", "itemSku": "mKkREJXucN3IEt8v", "itemType": "ZSqh6SjLdDyVf6ir"}, {"count": 31, "duration": 72, "endDate": "1982-09-25T00:00:00Z", "itemId": "xpCXFlM52jb80Nlw", "itemSku": "8icwWRvvZB46NCiq", "itemType": "dleq2jCNZAKjBlI9"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 77, "fixedTrialCycles": 87, "graceDays": 68}, "regionData": {"66cxtjNTXsCsfA2p": [{"currencyCode": "IWzC6nrUavXt7t0l", "currencyNamespace": "lsH39PXWtk222GY7", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1983-04-01T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1992-06-17T00:00:00Z", "expireAt": "1977-01-27T00:00:00Z", "price": 80, "purchaseAt": "1980-02-29T00:00:00Z", "trialPrice": 10}, {"currencyCode": "HWHfZ3bFTqXqdzpP", "currencyNamespace": "7Rk1qbFWhtwNaVCq", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1998-04-06T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1994-12-01T00:00:00Z", "expireAt": "1993-05-09T00:00:00Z", "price": 36, "purchaseAt": "1999-06-18T00:00:00Z", "trialPrice": 50}, {"currencyCode": "fJIrFQWIDC6PHVsn", "currencyNamespace": "UueYd49OFDlbdIrx", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1982-08-01T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1981-11-19T00:00:00Z", "expireAt": "1982-07-23T00:00:00Z", "price": 80, "purchaseAt": "1982-11-07T00:00:00Z", "trialPrice": 50}], "sYBHN6M7OpcFqK4F": [{"currencyCode": "BJG8BfuSzytkPE6m", "currencyNamespace": "w3Zv0zD14WsQt5oi", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1984-03-22T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1998-06-18T00:00:00Z", "expireAt": "1999-11-23T00:00:00Z", "price": 15, "purchaseAt": "1989-07-15T00:00:00Z", "trialPrice": 94}, {"currencyCode": "5dqId3gXUWVAmaDj", "currencyNamespace": "rn0iZsIfqeLfl0wa", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1982-12-26T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1975-04-24T00:00:00Z", "expireAt": "1980-09-03T00:00:00Z", "price": 40, "purchaseAt": "1980-05-29T00:00:00Z", "trialPrice": 11}, {"currencyCode": "WlRfPpgHg36d9NP5", "currencyNamespace": "nNvzIlwtYI9wKX9V", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1982-08-25T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1988-03-27T00:00:00Z", "expireAt": "1985-07-11T00:00:00Z", "price": 65, "purchaseAt": "1973-03-07T00:00:00Z", "trialPrice": 63}], "m2178A4NUDAdwt7c": [{"currencyCode": "j6v5DLEk9Rkumkrn", "currencyNamespace": "Y4LksFD2le3UGhQn", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1977-11-17T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1991-02-18T00:00:00Z", "expireAt": "1988-03-25T00:00:00Z", "price": 17, "purchaseAt": "1998-12-12T00:00:00Z", "trialPrice": 44}, {"currencyCode": "covYDuI4l1d9YaLV", "currencyNamespace": "uL1mLP65pId36F25", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1998-08-15T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1992-11-18T00:00:00Z", "expireAt": "1994-05-12T00:00:00Z", "price": 88, "purchaseAt": "1992-09-20T00:00:00Z", "trialPrice": 28}, {"currencyCode": "7AUUES36bRVaiOL6", "currencyNamespace": "Q5N2egLXRiNNV5Fy", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1978-04-04T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1990-02-19T00:00:00Z", "expireAt": "1971-11-11T00:00:00Z", "price": 75, "purchaseAt": "1997-07-28T00:00:00Z", "trialPrice": 40}]}, "saleConfig": {"currencyCode": "QFBHQ0FHWOul5WKk", "price": 51}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "CsFa6ipRu1AaFjz0", "stackable": true, "status": "ACTIVE", "tags": ["LelzMzWiPzugdDu6", "rxIv2ZMtZX5KZK53", "tX2oxmEDDgGBgPWH"], "targetCurrencyCode": "mOLBLlsw2pDJDLeJ", "targetNamespace": "wzbVEEQ0D6RcLpRx", "thumbnailUrl": "XCStzvOyY1tNKAVW", "useCount": 43}' \
    'NhnabXGs0qawVMpR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'CreateItem' test.out

#- 118 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'u5wP9CTLKxi1BjFM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'GetItemByAppId' test.out

#- 119 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'QueryItems' test.out

#- 120 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'ListBasicItemsByFeatures' test.out

#- 121 GetItems
$PYTHON -m $MODULE 'platform-get-items' \
    'OIsJO7EUYasMTHGg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetItems' test.out

#- 122 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'aQ2UErhcMpuZW4Kt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'GetItemBySku' test.out

#- 123 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'mXptKHAev0UqYpD2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetLocaleItemBySku' test.out

#- 124 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'R7YqidgD0wxHpQyn' \
    'tHsI11lC6BXyQW3e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'GetEstimatedPrice' test.out

#- 125 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'G0BvuCoP1hIpdIWa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'GetItemIdBySku' test.out

#- 126 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'GetBulkItemIdBySkus' test.out

#- 127 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'jZTyB7k7Q9zNJHkX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'BulkGetLocaleItems' test.out

#- 128 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetAvailablePredicateTypes' test.out

#- 129 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    '{"itemIds": ["mHB9cu1ZdRIZ1hHC", "pApGunPxVvWyQvci", "FGxJNOaveGzkTPeh"]}' \
    'ZVmZi1UYM7BApA1Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'ValidateItemPurchaseCondition' test.out

#- 130 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'ByiGkJR30lAinKfK' \
    --body '{"changes": [{"itemIdentities": ["XqYE8GuKFRwAkAyY", "Y8hSNUTpzSm7jdrP", "dkMMoylrI7DpmCIb"], "itemIdentityType": "ITEM_ID", "regionData": {"JWu7DAXtIeslnM3l": [{"currencyCode": "JQMDxu7Auj8cqdtN", "currencyNamespace": "aFO3ABy1AeDryAFe", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1972-09-27T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1996-09-14T00:00:00Z", "discountedPrice": 95, "expireAt": "1983-03-31T00:00:00Z", "price": 45, "purchaseAt": "1972-12-26T00:00:00Z", "trialPrice": 46}, {"currencyCode": "J3ebbfa3ep8cKNlb", "currencyNamespace": "024FzQsBlwn2pN8v", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1974-08-11T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1978-04-09T00:00:00Z", "discountedPrice": 22, "expireAt": "1976-06-12T00:00:00Z", "price": 14, "purchaseAt": "1987-08-05T00:00:00Z", "trialPrice": 41}, {"currencyCode": "6L7Wl7UfG3PbsgYD", "currencyNamespace": "gJ0JRrcPbe1REA4k", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1989-11-15T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1976-08-19T00:00:00Z", "discountedPrice": 98, "expireAt": "1976-03-30T00:00:00Z", "price": 52, "purchaseAt": "1978-06-04T00:00:00Z", "trialPrice": 27}], "DX7CWEoHK3yLZSpy": [{"currencyCode": "dGfNnNFMfXpIPlca", "currencyNamespace": "ufemZ4xlGtWc5UcG", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1978-02-01T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1991-02-09T00:00:00Z", "discountedPrice": 13, "expireAt": "1974-07-20T00:00:00Z", "price": 12, "purchaseAt": "1988-03-26T00:00:00Z", "trialPrice": 71}, {"currencyCode": "YsZ1L6IGHuO7u2tO", "currencyNamespace": "Upmu6zULXQMirzwM", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1975-08-08T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1992-10-27T00:00:00Z", "discountedPrice": 61, "expireAt": "1994-09-26T00:00:00Z", "price": 27, "purchaseAt": "1973-10-06T00:00:00Z", "trialPrice": 54}, {"currencyCode": "WyBg5c3Wq2dGygLo", "currencyNamespace": "40eCb82j4OhaAiWk", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1978-01-20T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1975-03-20T00:00:00Z", "discountedPrice": 48, "expireAt": "1975-03-17T00:00:00Z", "price": 58, "purchaseAt": "1978-03-28T00:00:00Z", "trialPrice": 73}], "zg7q7bMwxVAujRx0": [{"currencyCode": "pyulY8igLWA7yUan", "currencyNamespace": "MI437Ne6WvRNtbN9", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1978-02-10T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1989-01-29T00:00:00Z", "discountedPrice": 30, "expireAt": "1987-12-06T00:00:00Z", "price": 86, "purchaseAt": "1998-01-23T00:00:00Z", "trialPrice": 87}, {"currencyCode": "TDqm0SXzXNqw2oEp", "currencyNamespace": "tJsPYgvPnAlN2mJe", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1993-08-04T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1980-03-18T00:00:00Z", "discountedPrice": 55, "expireAt": "1979-01-30T00:00:00Z", "price": 80, "purchaseAt": "1997-10-10T00:00:00Z", "trialPrice": 76}, {"currencyCode": "RveArOFED1MAfVZh", "currencyNamespace": "ADFM15pfl1N2CNDu", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1982-05-03T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1987-06-06T00:00:00Z", "discountedPrice": 89, "expireAt": "1989-05-21T00:00:00Z", "price": 83, "purchaseAt": "1974-02-19T00:00:00Z", "trialPrice": 59}]}}, {"itemIdentities": ["VnrneQPU35uuCoR3", "Wc6j3UqRICnmZxob", "6vepvgW3Vmnz3Wsg"], "itemIdentityType": "ITEM_SKU", "regionData": {"S6R3Uev7bCsylPZD": [{"currencyCode": "z1fiXmZReVZ4inDP", "currencyNamespace": "7o0Aeler4oEJEmHH", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1974-12-08T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1992-03-21T00:00:00Z", "discountedPrice": 39, "expireAt": "1980-06-20T00:00:00Z", "price": 29, "purchaseAt": "1993-10-03T00:00:00Z", "trialPrice": 47}, {"currencyCode": "VY69dhSr3JiNweUi", "currencyNamespace": "dBVB2vTyC482FeT7", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1995-11-29T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1973-09-01T00:00:00Z", "discountedPrice": 77, "expireAt": "1980-06-20T00:00:00Z", "price": 25, "purchaseAt": "1987-11-30T00:00:00Z", "trialPrice": 98}, {"currencyCode": "FHQOjtRg7ST2UVRJ", "currencyNamespace": "N0qFJaGDiDmatCvC", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1977-04-30T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1980-10-16T00:00:00Z", "discountedPrice": 65, "expireAt": "1997-11-13T00:00:00Z", "price": 79, "purchaseAt": "1983-09-24T00:00:00Z", "trialPrice": 70}], "M14H49GbRHeTMH4j": [{"currencyCode": "K8hWOlHrqyBElA4m", "currencyNamespace": "1Ywb6nMhhSCXGzZM", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1991-07-04T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1997-01-16T00:00:00Z", "discountedPrice": 82, "expireAt": "1979-03-29T00:00:00Z", "price": 78, "purchaseAt": "1987-06-20T00:00:00Z", "trialPrice": 98}, {"currencyCode": "nGtw8AuvUND3dJ4h", "currencyNamespace": "bxnIuxtrWKvmz0Rz", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1995-01-17T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1978-02-28T00:00:00Z", "discountedPrice": 45, "expireAt": "1992-12-31T00:00:00Z", "price": 26, "purchaseAt": "1982-03-31T00:00:00Z", "trialPrice": 79}, {"currencyCode": "lqqWYgDWbrtw6qiR", "currencyNamespace": "U6n8IKPZ1kpSeRoo", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1998-06-27T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1974-03-08T00:00:00Z", "discountedPrice": 48, "expireAt": "1974-12-14T00:00:00Z", "price": 29, "purchaseAt": "1975-07-18T00:00:00Z", "trialPrice": 50}], "4LtkYsyCJFj0ayzo": [{"currencyCode": "jVNIrqZCtbJmJSU0", "currencyNamespace": "agO0PXHCyo70kyuu", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1976-12-18T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1977-12-19T00:00:00Z", "discountedPrice": 58, "expireAt": "1986-04-03T00:00:00Z", "price": 10, "purchaseAt": "1994-01-28T00:00:00Z", "trialPrice": 41}, {"currencyCode": "r0GXMgSK5Yx6dbDN", "currencyNamespace": "BB9LNziCP1xQygVq", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1975-10-14T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1982-10-30T00:00:00Z", "discountedPrice": 87, "expireAt": "1976-03-23T00:00:00Z", "price": 1, "purchaseAt": "1995-07-08T00:00:00Z", "trialPrice": 40}, {"currencyCode": "tk82oOOkHmCFldZ0", "currencyNamespace": "XAvFitLhI0sqjfua", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1998-12-06T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1980-10-19T00:00:00Z", "discountedPrice": 77, "expireAt": "1977-04-18T00:00:00Z", "price": 43, "purchaseAt": "1999-06-10T00:00:00Z", "trialPrice": 14}]}}, {"itemIdentities": ["PK7wBmEY4lD14f0X", "IJh3uxrBGEumeTG4", "34DmlbwWuZpKPB4r"], "itemIdentityType": "ITEM_SKU", "regionData": {"S8TNhXBTiwS2sBod": [{"currencyCode": "n1p1MJrZv1itpBPR", "currencyNamespace": "btgUMFAcxhrY80cx", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1996-09-15T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1991-09-13T00:00:00Z", "discountedPrice": 76, "expireAt": "1977-09-11T00:00:00Z", "price": 88, "purchaseAt": "1997-03-23T00:00:00Z", "trialPrice": 35}, {"currencyCode": "WtzrSIfMjxzBwWKz", "currencyNamespace": "JldpqtAlzVR0Wqkb", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1983-05-24T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1995-10-08T00:00:00Z", "discountedPrice": 98, "expireAt": "1995-01-19T00:00:00Z", "price": 36, "purchaseAt": "1999-10-29T00:00:00Z", "trialPrice": 74}, {"currencyCode": "ACcKuAd2SElOn16d", "currencyNamespace": "w0nzH9XMG2c5BWrz", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1974-03-12T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1974-03-19T00:00:00Z", "discountedPrice": 40, "expireAt": "1997-03-27T00:00:00Z", "price": 80, "purchaseAt": "1980-07-26T00:00:00Z", "trialPrice": 13}], "r8kTl05oiubu5HHl": [{"currencyCode": "b7VI1cHNU3pvbpyJ", "currencyNamespace": "Tgwl3ZOMpzNQDtQN", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1979-09-17T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1990-04-24T00:00:00Z", "discountedPrice": 2, "expireAt": "1984-05-31T00:00:00Z", "price": 44, "purchaseAt": "1979-12-28T00:00:00Z", "trialPrice": 33}, {"currencyCode": "X5v3UCobMU8bzcaf", "currencyNamespace": "0Qv0dFMnEcDHueqA", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1974-03-22T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1975-12-28T00:00:00Z", "discountedPrice": 72, "expireAt": "1979-11-28T00:00:00Z", "price": 13, "purchaseAt": "1983-09-02T00:00:00Z", "trialPrice": 9}, {"currencyCode": "ZJCwufYAURyXVoJ9", "currencyNamespace": "qEel6x5O5otpujfw", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1989-05-28T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1998-03-23T00:00:00Z", "discountedPrice": 22, "expireAt": "1994-04-01T00:00:00Z", "price": 16, "purchaseAt": "1987-03-22T00:00:00Z", "trialPrice": 47}], "qhGFAoxfL2vrevlU": [{"currencyCode": "aCgxl01oVwoWAbcs", "currencyNamespace": "kuBfcvcoAMPzCXwp", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1986-02-10T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1972-12-03T00:00:00Z", "discountedPrice": 68, "expireAt": "1973-06-26T00:00:00Z", "price": 29, "purchaseAt": "1996-01-21T00:00:00Z", "trialPrice": 6}, {"currencyCode": "rl6UOwYZJq3OJhzl", "currencyNamespace": "gtX87XuWOIpQwptc", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1980-02-27T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1976-04-27T00:00:00Z", "discountedPrice": 86, "expireAt": "1974-11-07T00:00:00Z", "price": 78, "purchaseAt": "1989-01-07T00:00:00Z", "trialPrice": 60}, {"currencyCode": "6q3F16PO9YdwqEsz", "currencyNamespace": "RnwVX2rvVr6DpLOy", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1974-06-17T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1990-10-16T00:00:00Z", "discountedPrice": 98, "expireAt": "1997-10-20T00:00:00Z", "price": 0, "purchaseAt": "1974-05-21T00:00:00Z", "trialPrice": 55}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'BulkUpdateRegionData' test.out

#- 131 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'TxBgnOqH9lyv8wx2' \
    'JosSHLipk5N6e79z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'SearchItems' test.out

#- 132 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'QueryUncategorizedItems' test.out

#- 133 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'CfL2ar4zJmB2wifD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'GetItem' test.out

#- 134 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    '{"appId": "A7LpND5zXLhrmEeB", "appType": "GAME", "baseAppId": "2hT9UYbm2BWjzlqI", "boothName": "A8csXOpDTl6yIwkT", "categoryPath": "TCLlRCEQSp3XwOSN", "clazz": "JT3B5f3ynPDyKkSY", "displayOrder": 70, "entitlementType": "DURABLE", "ext": {"XXuoJGXCyzA8a5uh": {}, "1LdVOaWOjRinmMTx": {}, "Ez6bdDFDqRMyTZOX": {}}, "features": ["VuvyXITMn2F86xZR", "YRC3gIRiYFpDlAEy", "HxnOP02x00SvR2yN"], "flexible": true, "images": [{"as": "ms1DdUL5bc6QMB9T", "caption": "tHXqeaYlaYm2XGN5", "height": 45, "imageUrl": "Hp9aCLekZch7a3b0", "smallImageUrl": "hFYqZQAUm9m9ht4J", "width": 38}, {"as": "p7LL7Yqjh4lgGGsr", "caption": "Jv0EyLkZej5voHh0", "height": 75, "imageUrl": "uih2WMLldoxYLZHi", "smallImageUrl": "FEo5sDrk8BZ0jnV4", "width": 19}, {"as": "KZ0tkEWAqM0EZhtI", "caption": "p1XL7HL2nKoPXxLM", "height": 40, "imageUrl": "GS2mYl0sA87gQx9k", "smallImageUrl": "L8a1tEpNGaoJWjZS", "width": 31}], "inventoryConfig": {"customAttributes": {"FJniJl9RPULWpWw5": {}, "UQBldfnMF2X9wbQz": {}, "3euR4MhLQs8XliOo": {}}, "serverCustomAttributes": {"WqixFdv5aDRSnCrI": {}, "Q2kChyafmo2nIKr9": {}, "krylalbZWuO0OVwG": {}}, "slotUsed": 95}, "itemIds": ["UgVcYdzd3mUKKxi2", "anNFpYXwE37QpBIY", "8LEEtCmsemV8gAHQ"], "itemQty": {"aitMhleY83sh3B07": 83, "mB9r9MA5lA6x0lY1": 85, "P57PyBLX7knj7y5q": 62}, "itemType": "BUNDLE", "listable": false, "localizations": {"p7hzPCxvetFhAgAk": {"description": "kEhd3Y16uyKwJ713", "localExt": {"r4F9WC342Uggyr64": {}, "isEfxbFEabmT6Mmg": {}, "ebEkQ73QcKQldxIq": {}}, "longDescription": "Mgf2PaNJqIMDWJUW", "title": "3I4SKjp0NOc5dWAE"}, "S7S7wBqBe4F2z2u3": {"description": "wwUBB3KkzIBx4VA9", "localExt": {"ZxbKQDqG7UJEMese": {}, "C0hnoI1dph0xgVXv": {}, "WuSKhoOQCljoyZp9": {}}, "longDescription": "rrR7RJbkDwkEjOWW", "title": "Czn2paEvjRIcSa26"}, "0P2hpjhYQEdyLRX3": {"description": "etMjv8jskCHfqF5u", "localExt": {"o9BT2QqCxWZGjDRc": {}, "27d9a3AaZO1VcAqw": {}, "HJEyMrwNINM4zHFF": {}}, "longDescription": "9ucrEcYD5hjgrxoE", "title": "VEIkvpWupGhtaU3o"}}, "lootBoxConfig": {"rewardCount": 59, "rewards": [{"lootBoxItems": [{"count": 30, "duration": 51, "endDate": "1990-07-16T00:00:00Z", "itemId": "zUW4RDVM8Y4PcXDH", "itemSku": "8RZqUjELC82uP1nM", "itemType": "UDAKQEkOvO52VTPF"}, {"count": 64, "duration": 76, "endDate": "1981-08-18T00:00:00Z", "itemId": "LWL0HQkTuy4fU6Ej", "itemSku": "umf9ltGde7x4luTs", "itemType": "Ek9TNqSiFJyMByoR"}, {"count": 75, "duration": 48, "endDate": "1995-05-22T00:00:00Z", "itemId": "pSofiZZNcWBxK2Sc", "itemSku": "BMbpsjgGDmxpN0sN", "itemType": "W3RHxioyNedQ1E2l"}], "name": "Qg6rSZj7yw7aPU0D", "odds": 0.26881883501770354, "type": "PROBABILITY_GROUP", "weight": 61}, {"lootBoxItems": [{"count": 29, "duration": 1, "endDate": "1997-02-16T00:00:00Z", "itemId": "Q3WcFld5DKwJoCrY", "itemSku": "rlOXZN7MoQZDN1sj", "itemType": "uHXDU9ZFHISuKMr6"}, {"count": 8, "duration": 25, "endDate": "1998-02-15T00:00:00Z", "itemId": "Ki3lHZdnYzFYEnOA", "itemSku": "6gFO3zfSvvmLgxlU", "itemType": "5MdUdF7gHdIf6eMd"}, {"count": 39, "duration": 18, "endDate": "1993-07-21T00:00:00Z", "itemId": "UmBrFwFIESxo8uFq", "itemSku": "KtoZiVPtwECFgcQR", "itemType": "sqYFtxbpKYKp18TP"}], "name": "WOixbTLfdOF3VtCU", "odds": 0.8377463850354149, "type": "REWARD_GROUP", "weight": 47}, {"lootBoxItems": [{"count": 81, "duration": 84, "endDate": "1972-03-22T00:00:00Z", "itemId": "CLC324P82gdsOb5J", "itemSku": "p6oxvvtB4aireJSZ", "itemType": "c7Cojp07DFR7IvEh"}, {"count": 27, "duration": 55, "endDate": "1989-08-21T00:00:00Z", "itemId": "AMSw1WGHPO22mCj7", "itemSku": "yFmbpItmTcMVUlRo", "itemType": "YFks2ULHooisOHhy"}, {"count": 17, "duration": 25, "endDate": "1997-07-12T00:00:00Z", "itemId": "ppuu6acpUdn8X5IZ", "itemSku": "jtFT6Bs8OO0CVqXF", "itemType": "6bMzRd2Z2WjutGAp"}], "name": "tSES09ZcFGPCokMw", "odds": 0.2871346295597408, "type": "REWARD", "weight": 78}], "rollFunction": "DEFAULT"}, "maxCount": 5, "maxCountPerUser": 66, "name": "jU87C2CAKbiD5PxA", "optionBoxConfig": {"boxItems": [{"count": 90, "duration": 44, "endDate": "1976-06-23T00:00:00Z", "itemId": "644D4d5jTjzZ8Kpd", "itemSku": "OxrQ8r5te5FkJ58w", "itemType": "QyrAb67d9kC9MEhG"}, {"count": 36, "duration": 94, "endDate": "1991-12-30T00:00:00Z", "itemId": "Q3yKCwV9chX3evM1", "itemSku": "seGH9ZwZcLnJPavR", "itemType": "Nr3ysEp4sIwslUQo"}, {"count": 5, "duration": 17, "endDate": "1971-09-04T00:00:00Z", "itemId": "aEHFX0sySxhkhCpV", "itemSku": "5A2ZLHG60X6LS9dY", "itemType": "e42oicsvoF2EgsoZ"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 87, "fixedTrialCycles": 68, "graceDays": 70}, "regionData": {"uLJEAS7pSDlIS4N3": [{"currencyCode": "VRydtvWZZFDNIc86", "currencyNamespace": "TKj3grgVdqSpg9xp", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1975-07-12T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1973-03-24T00:00:00Z", "expireAt": "1975-07-15T00:00:00Z", "price": 47, "purchaseAt": "1979-08-30T00:00:00Z", "trialPrice": 72}, {"currencyCode": "Qgdz6GmSzMPzB5ZP", "currencyNamespace": "4mdsjnGGtbn27LOq", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1987-10-03T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1988-10-19T00:00:00Z", "expireAt": "1976-06-01T00:00:00Z", "price": 89, "purchaseAt": "1983-01-07T00:00:00Z", "trialPrice": 81}, {"currencyCode": "X8fkG3hcRbcSuSkd", "currencyNamespace": "72wzQJjmhy4f9F9u", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1998-08-12T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1983-09-26T00:00:00Z", "expireAt": "1977-09-03T00:00:00Z", "price": 59, "purchaseAt": "1976-09-01T00:00:00Z", "trialPrice": 73}], "DRW0KNwlKcveutOH": [{"currencyCode": "Z2aWSL11msU7Qpcp", "currencyNamespace": "kApFODOqz4FKRWcv", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1995-07-28T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1996-09-24T00:00:00Z", "expireAt": "1999-06-03T00:00:00Z", "price": 74, "purchaseAt": "1997-03-04T00:00:00Z", "trialPrice": 54}, {"currencyCode": "9mxhR8RWtFcnNAox", "currencyNamespace": "NPXPlSv6kWXBTTod", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1994-01-14T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1986-10-06T00:00:00Z", "expireAt": "1999-11-03T00:00:00Z", "price": 26, "purchaseAt": "1979-09-11T00:00:00Z", "trialPrice": 65}, {"currencyCode": "ja3XlbCcD2bQLuFw", "currencyNamespace": "HyfWs9J4OjFm6OQM", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1995-03-17T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1996-07-31T00:00:00Z", "expireAt": "1975-02-05T00:00:00Z", "price": 25, "purchaseAt": "1998-03-16T00:00:00Z", "trialPrice": 58}], "Uydsgdt98KfbaQpg": [{"currencyCode": "EAKKLcKbPxGvL2c7", "currencyNamespace": "KalLFWBzkHql6eJa", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1990-05-30T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1990-06-23T00:00:00Z", "expireAt": "1973-06-14T00:00:00Z", "price": 48, "purchaseAt": "1999-05-27T00:00:00Z", "trialPrice": 93}, {"currencyCode": "hOyL8KXBfLq1zWLm", "currencyNamespace": "tFhefMqfbE0DZBwK", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1978-09-29T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1974-01-24T00:00:00Z", "expireAt": "1999-04-02T00:00:00Z", "price": 34, "purchaseAt": "1982-03-15T00:00:00Z", "trialPrice": 38}, {"currencyCode": "1D9Vwsfzatv4JzfV", "currencyNamespace": "NAJbSLBzqs2u1Ent", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1999-03-23T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1992-06-04T00:00:00Z", "expireAt": "1990-03-02T00:00:00Z", "price": 13, "purchaseAt": "1988-12-03T00:00:00Z", "trialPrice": 88}]}, "saleConfig": {"currencyCode": "0LDshHSWtyrOFmeG", "price": 67}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "bRMRrbKjoifZAWt1", "stackable": true, "status": "ACTIVE", "tags": ["4OlQUCJsDilWhSc6", "gdwAum4b3t1Ph8xH", "fEAlyda8FPutbAgA"], "targetCurrencyCode": "XIxh1HqBg5FhY2vc", "targetNamespace": "lqnTbyZ7fYvmiZxd", "thumbnailUrl": "NpmibPCLiJaHXEyu", "useCount": 77}' \
    'RD8Q6YcgyTtSOU4F' \
    'dUceGtntm6j0Apyr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateItem' test.out

#- 135 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'icmsku6ryZK7UKLh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'DeleteItem' test.out

#- 136 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '{"count": 79, "orderNo": "w673JvA3stZ6FN0o"}' \
    'mme6HiOrbuq9cXar' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'AcquireItem' test.out

#- 137 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    '8FKACMfaESKKo0RB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'GetApp' test.out

#- 138 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '{"carousel": [{"alt": "tKDj9PgWnODMMswu", "previewUrl": "s0ykKyOTFH9npo1k", "thumbnailUrl": "2W89U6PA5Byr1VJK", "type": "video", "url": "kHNYqepadIS0zRgi", "videoSource": "vimeo"}, {"alt": "MiQqOA7WiIi8k4T7", "previewUrl": "A6suz0JPLhBV8H4R", "thumbnailUrl": "s8p9AflDjkRQna4a", "type": "image", "url": "E7pA2BmAcotg9A9V", "videoSource": "vimeo"}, {"alt": "dS49CybTerX6wW5H", "previewUrl": "LYxM5DN6DJmnjBd7", "thumbnailUrl": "q6U3V1i7ip9ibQlR", "type": "image", "url": "MWoB0LkwHKKIT2D8", "videoSource": "youtube"}], "developer": "JKnP2TmDSwAt1UGN", "forumUrl": "ieMe0c6eA8xCvVNg", "genres": ["Action", "MassivelyMultiplayer", "MassivelyMultiplayer"], "localizations": {"XNBeq2uoLHWsw0m7": {"announcement": "ZY46mjkOA84jougr", "slogan": "IsaMHmzafNaxCNIz"}, "vOh61wCAYs9Qae7T": {"announcement": "EBnzFuxHzrR3PiHy", "slogan": "AFfiwIi9bI2X8C6x"}, "nSImJqwyGzE1BMLJ": {"announcement": "mTvUJIV0W2K8alZa", "slogan": "xyEak02r4dRvrKr0"}}, "platformRequirements": {"7n72icTrg8RyI3bD": [{"additionals": "BIKGiLSqDVnEtbqH", "directXVersion": "nY6D1Z2oKGmRbhR6", "diskSpace": "rnSjFQf699gOqEWj", "graphics": "r9T9UhsGYJ3NLSVO", "label": "dqFxY9j8P8IFwNKh", "osVersion": "0Zni7P6ZfRFkQolD", "processor": "EtyxyMGw4ZEIMYFa", "ram": "IEr69zjnPKVLZ59Q", "soundCard": "uwBbW2xX96TmFiMr"}, {"additionals": "qZaZSR4SAMIG5DRP", "directXVersion": "307xNIxMniv6VDtG", "diskSpace": "hPQu5IgTlvO4wr8D", "graphics": "7APHhihwdNSBKpqJ", "label": "8V1kQHisGldXgqa9", "osVersion": "9UNyHIlnrLOesUoA", "processor": "wwCO2c7aEAHcpdx9", "ram": "1UabvNvRaUrUqTcF", "soundCard": "sGXxjR7vTeNdfPVW"}, {"additionals": "mEdVFXX02sJsXg7A", "directXVersion": "KOu2Xk8T0sqdmD20", "diskSpace": "rolfU1yEokwoBSfR", "graphics": "PMdPXru40VmHvpaJ", "label": "6EFG9wLOlD7N2GNQ", "osVersion": "s0IgMAbRc0I82pjV", "processor": "4UBb0pZrHFxE9EAc", "ram": "Me8RHXnsxazB0s0O", "soundCard": "GtkrGuIEzLqOEqdE"}], "cHbFrNLqqyBzPWvD": [{"additionals": "sw3y3noSTunCZN39", "directXVersion": "o0vZqaSrHfwrqqHX", "diskSpace": "HpPnC56p62cEYBMP", "graphics": "DDNvuy4MWHW8YW1e", "label": "uC0ubVpUB9WTnYHG", "osVersion": "mKeMnGn3hXTX65W9", "processor": "y7jKRgCFKj2fpaED", "ram": "gvMXedU0CtjH3UPJ", "soundCard": "y3CnYG5ypxMPXQb9"}, {"additionals": "Aa9QMoQgjOf0byuj", "directXVersion": "8Uxptb2o5jdTreVK", "diskSpace": "h6flE9FaNdFDCH0B", "graphics": "MCufX5Ln9YKDyW9w", "label": "NSXGvHGabfCgecNk", "osVersion": "nWoEbRoZQ4VuKeTQ", "processor": "QXDNtjgypGgBtsGO", "ram": "xHfW3WBHUGCPEvc9", "soundCard": "7uDKDBhngmXpNaXS"}, {"additionals": "gg2yJzaaUc8p87eT", "directXVersion": "Tm092rucPAhnaYqS", "diskSpace": "Lkr3tlvhwbpOwvWy", "graphics": "VZbXXgvJKjvhZn4m", "label": "8rgQUG1gDFutWedP", "osVersion": "pbBwcmRSOW5MFhNe", "processor": "BercY9DbSYPsKMU8", "ram": "ah8NJxYKZWUVW9Ny", "soundCard": "UUdkrKCCEaIUUwPg"}], "ILFEno141RnaYhr2": [{"additionals": "WJyqCvAfWi7mDpF9", "directXVersion": "Uxmjutqgr8019aVH", "diskSpace": "HRLK0fv936lSL3gA", "graphics": "K6QqFlWlAR1frDQI", "label": "VwmefiYRytVWtyJI", "osVersion": "7ujeL0gjx8jAfmTL", "processor": "OwiBSSe1E9DWrTYL", "ram": "cDOMWy0wefl1KKxN", "soundCard": "l1Bu8GE15JzEvFlz"}, {"additionals": "pDnYuSqynNlJACpH", "directXVersion": "VndrAR7z9J0bNuep", "diskSpace": "qWsDLjzow7MvJGnW", "graphics": "bcVqeQS68NcKrOSq", "label": "AvumNXdNoD6gTOf0", "osVersion": "jHAc8PGncBz3SqYU", "processor": "IQnwGbMTiA96lnb5", "ram": "gdT3QnV1lkyfpfTo", "soundCard": "2MX3YvlKKTkjhbq0"}, {"additionals": "eRvkBW48O77tNIBY", "directXVersion": "TFfPUrNUOX0haxwo", "diskSpace": "Ud3ezYAdypb6oWXY", "graphics": "IQqBIhw3NQXGJDWt", "label": "QNJFHNbgt9uaoCeP", "osVersion": "9rZK0m4whjNMB89A", "processor": "oh6Jk84k7R0603b1", "ram": "ChdDIpRn2HgPRevB", "soundCard": "MjempE90i47qjDQA"}]}, "platforms": ["MacOS", "Linux", "Windows"], "players": ["Single", "Coop", "MMO"], "primaryGenre": "Sports", "publisher": "BKOA0L11TgHUfODR", "releaseDate": "1978-03-23T00:00:00Z", "websiteUrl": "csLmBbV1sCNpADwy"}' \
    'pkoh2Ufv88v1ngAJ' \
    'IsXT5AL1og70bKW5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateApp' test.out

#- 139 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'QYtGAVQvqyIVadq2' \
    'JITEaFYCmQEyL35L' \
    --body '{"featuresToCheck": ["CATALOG", "CAMPAIGN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DisableItem' test.out

#- 140 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'uluQOBuTuYNR4hzP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetItemDynamicData' test.out

#- 141 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'kGOuDvT1kGGvspIG' \
    'cvW7T4dk3MBzfrSZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'EnableItem' test.out

#- 142 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'GlXPukj7q5MjU2f4' \
    '833bcUoBfWLjRXOq' \
    'aoDBgsPHcNg0Bapd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'FeatureItem' test.out

#- 143 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    '2WF3ACWSPCOIejZf' \
    'SnIavouuFpqcq4Gd' \
    '9fk7fhp8GNMEX4Ps' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'DefeatureItem' test.out

#- 144 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    '5vorNX6W3h8ItD6A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'GetLocaleItem' test.out

#- 145 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 5, "code": "bQvGbKVlE5VulHAZ", "comparison": "isGreaterThan", "name": "o1C0ktvmekdbic6I", "predicateType": "SeasonPassPredicate", "value": "n5Hclx6xvlDEhlvz", "values": ["fYJAHmuYyTZt7v3m", "VBqt9fNnODJKrDdt", "60vGd1u3lR0fkCW4"]}, {"anyOf": 44, "code": "MTIV4pb5hZyPikzE", "comparison": "isGreaterThan", "name": "74YMs1JCrpnpPPUy", "predicateType": "StatisticCodePredicate", "value": "tph4Z0KsCWhJPpmp", "values": ["dQZznMUlqj2djHHF", "FRxJPvHewpv9IeC6", "jibu6WMYMScWAzVV"]}, {"anyOf": 77, "code": "3xQG5zPNH4eYMWbt", "comparison": "isLessThan", "name": "o030WDtRFRReZoX0", "predicateType": "EntitlementPredicate", "value": "SLyjqaJnmx4p5ShR", "values": ["QxqK7yxoQHX7Xexj", "vW4rZ57Ra4Wlon8Z", "3fI6ZeDWbxHSLn6k"]}]}, {"operator": "or", "predicates": [{"anyOf": 48, "code": "eHgabbmT81jfik6S", "comparison": "includes", "name": "bw4TKyPTxRuzNfmv", "predicateType": "StatisticCodePredicate", "value": "WXRfEoUuNmQrq6p7", "values": ["LNfQ0SXyMTygZRBz", "JUpXr5ZkwYPLnvik", "WrYOBpl77LsKN46X"]}, {"anyOf": 56, "code": "NpRXHVqJaiwkoaBb", "comparison": "isNot", "name": "H2Pz5V5CtSrcX7aR", "predicateType": "StatisticCodePredicate", "value": "8vZ9a77wOP10Abpb", "values": ["yFT8B6hECr4zqhZ9", "lpllwasnryjxylwR", "jZo2dQM3ZXq9atij"]}, {"anyOf": 97, "code": "uEyr4hactAHdK0X7", "comparison": "isLessThan", "name": "37X9HTu6c4mMUdJo", "predicateType": "SeasonTierPredicate", "value": "myaU7qTgHxGQ4Dm2", "values": ["YoSLUIzzQsIU3IZf", "Rk0DwXkYJ6aX6XRS", "93pQmmWWhMnRSn6P"]}]}, {"operator": "and", "predicates": [{"anyOf": 11, "code": "6OXqwh2Uj0IZZFXv", "comparison": "isGreaterThanOrEqual", "name": "iuF8pqhqsqRF4kqM", "predicateType": "EntitlementPredicate", "value": "5hVdagEETj8DNzQF", "values": ["9Ywa1VlJBmSCpF2z", "5O9ugNuq4uGu9km7", "KeyQB3SUe4ug9J3K"]}, {"anyOf": 74, "code": "8xOR1DEgYR3iOynL", "comparison": "isLessThan", "name": "QBm02aTdgp0WcRdr", "predicateType": "SeasonTierPredicate", "value": "WL7fNlyGuj0EkM7M", "values": ["MvrDH4IXc6tn8Xay", "8G78KZj2jWyKAzXY", "P9kO0rmonOpgtONm"]}, {"anyOf": 57, "code": "pfmMq65nYpNAwv9U", "comparison": "isGreaterThanOrEqual", "name": "NCbltixkXwXO0Xem", "predicateType": "StatisticCodePredicate", "value": "HsUC5w7fmzF80bbG", "values": ["nAIz4y9yy462Mnwc", "hU1pjVwMsLdJrt5F", "hld3LWFhC1kBUvsU"]}]}]}}' \
    'cnOXhewthszMsYOE' \
    'mQiF1OsXfJG3psjI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'UpdateItemPurchaseCondition' test.out

#- 146 QueryItemReferences
$PYTHON -m $MODULE 'platform-query-item-references' \
    'BzjaFmN0MInvVPAP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'QueryItemReferences' test.out

#- 147 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '{"orderNo": "EovHVVguusvVUxkC"}' \
    'G4IGPYHaRvV3JGi5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'ReturnItem' test.out

#- 148 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'QueryKeyGroups' test.out

#- 149 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    '{"description": "l0G5NBtXVTXK1Jdo", "name": "ClQQGLneKl3iXOvS", "status": "ACTIVE", "tags": ["5EB5GCOCowERMveD", "iI5BYvV5LF22GlLe", "48YQRsZpn4zsR2Kw"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'CreateKeyGroup' test.out

#- 150 GetKeyGroupByBoothName
eval_tap 0 150 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 151 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'SIl0Un3PT2bVzOt2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'GetKeyGroup' test.out

#- 152 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '{"description": "J0VxSVRWxJw7idbm", "name": "Ox0vyaMbcnlyBvXd", "status": "INACTIVE", "tags": ["mZdPzt9koNSL3vqG", "gJOWkI0sHphIU3Ka", "P7nk9iEaqudy3aYo"]}' \
    '02pzHannSLeEYvuc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'UpdateKeyGroup' test.out

#- 153 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'iynwWb01HLrp6OW9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'GetKeyGroupDynamic' test.out

#- 154 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'Y7FIIEJMm4Kizs3N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'ListKeys' test.out

#- 155 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'RbyYMyWPHp8NpreW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'UploadKeys' test.out

#- 156 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'QueryOrders' test.out

#- 157 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetOrderStatistics' test.out

#- 158 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'tVtRQu0coThNxwnn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'GetOrder' test.out

#- 159 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    '{"description": "poM2KSoHlpDFImJN"}' \
    'ovlZq1O6RDUgilQH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'RefundOrder' test.out

#- 160 GetPaymentCallbackConfig
eval_tap 0 160 'GetPaymentCallbackConfig # SKIP deprecated' test.out

#- 161 UpdatePaymentCallbackConfig
eval_tap 0 161 'UpdatePaymentCallbackConfig # SKIP deprecated' test.out

#- 162 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetPaymentMerchantConfig' test.out

#- 163 UpdatePaymentDomainWhitelistConfig
$PYTHON -m $MODULE 'platform-update-payment-domain-whitelist-config' \
    '{"domains": ["Cts6SUNxUWIGSkxj", "KL3EiP6WeXWf3dBA", "VfIM2oLFaTIhv5Xr"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'UpdatePaymentDomainWhitelistConfig' test.out

#- 164 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'QueryPaymentNotifications' test.out

#- 165 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'QueryPaymentOrders' test.out

#- 166 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    '{"currencyCode": "QvTAdisxP0DyxqSY", "currencyNamespace": "eCl4gEZgIMDALa4n", "customParameters": {"sITUeFKNh8kgmMjB": {}, "xD74LujtGQD9sT5L": {}, "HkWjFIo6VbU9gwMg": {}}, "description": "ZPR9Q5Lstog0ehjE", "extOrderNo": "mcjJzkf7rNu3ZARH", "extUserId": "XZ5yuJsfxI3zuYwC", "itemType": "COINS", "language": "Uut_EnYn", "metadata": {"SrrV6FB8DFwD7WXk": "w7te8pQfvxY5zPZK", "Md5ItnXbDbXW9Klf": "gVvjjjExRk4JHYGa", "2nnyqvFCYJOJl9lj": "s9WPwxzICEykNJeE"}, "notifyUrl": "n6eiosoCvrGeDygO", "omitNotification": true, "platform": "bA1UGLox4eJuvLmo", "price": 41, "recurringPaymentOrderNo": "wSqwns2XJfUl3uiE", "region": "O9E03Jk5kBnuo4jR", "returnUrl": "1HYLJjnydxAGgqH3", "sandbox": true, "sku": "P4zSxApJe0aplQXE", "subscriptionId": "aoGjonwKDYwjvKhx", "targetNamespace": "wtaxd74bEkQ8XN3x", "targetUserId": "Q0KaIZ1ISja5TxqN", "title": "8RXvgNzoX14Km851"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'CreatePaymentOrderByDedicated' test.out

#- 167 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'zHcDdphWEIlBnOKy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'ListExtOrderNoByExtTxId' test.out

#- 168 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'fAbdUB1OM5oKTXAN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'GetPaymentOrder' test.out

#- 169 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '{"extTxId": "lenFuUeRc2SCqQ9k", "paymentMethod": "grqAIaKAUBfyFCxs", "paymentProvider": "ALIPAY"}' \
    'AbJnqDKuBGWmZti7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'ChargePaymentOrder' test.out

#- 170 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '{"description": "VJ7O7dNzDBzVmGSh"}' \
    'oll8uD1hpBtpd4eL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'RefundPaymentOrderByDedicated' test.out

#- 171 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '{"amount": 5, "currencyCode": "bmuaFNPCECKSzHTT", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 57, "vat": 10}' \
    '1AfySUMZOWhtQEri' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'SimulatePaymentOrderNotification' test.out

#- 172 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'yOLkuGKVQWNOUAh5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'GetPaymentOrderChargeStatus' test.out

#- 173 GetPsnEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-psn-entitlement-ownership' \
    '{"accessToken": "VXa79702d31zPHg6", "serviceLabel": 39}' \
    'hF9RCyMn5VX87u49' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'GetPsnEntitlementOwnership' test.out

#- 174 GetXboxEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-xbox-entitlement-ownership' \
    '{"delegationToken": "Hsq4hLUkLLTNMnml", "sandboxId": "FzzwpEZwbcCEsJIB"}' \
    '0JkRcYhCT3pUMiOk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'GetXboxEntitlementOwnership' test.out

#- 175 GetPlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-get-platform-entitlement-config' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'GetPlatformEntitlementConfig' test.out

#- 176 UpdatePlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-update-platform-entitlement-config' \
    '{"allowedPlatformOrigins": ["Twitch", "Twitch", "Nintendo"]}' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'UpdatePlatformEntitlementConfig' test.out

#- 177 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Oculus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'GetPlatformWalletConfig' test.out

#- 178 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    '{"allowedBalanceOrigins": ["IOS", "Playstation", "IOS"]}' \
    'Other' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'UpdatePlatformWalletConfig' test.out

#- 179 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Oculus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'ResetPlatformWalletConfig' test.out

#- 180 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'GetRevocationConfig' test.out

#- 181 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'UpdateRevocationConfig' test.out

#- 182 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'DeleteRevocationConfig' test.out

#- 183 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'QueryRevocationHistories' test.out

#- 184 GetRevocationPluginConfig
$PYTHON -m $MODULE 'platform-get-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'GetRevocationPluginConfig' test.out

#- 185 UpdateRevocationPluginConfig
$PYTHON -m $MODULE 'platform-update-revocation-plugin-config' \
    '{"appConfig": {"appName": "y0WLYMNb0QsxPlx6"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "Gco1tRG98viuYwQT"}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'UpdateRevocationPluginConfig' test.out

#- 186 DeleteRevocationPluginConfig
$PYTHON -m $MODULE 'platform-delete-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'DeleteRevocationPluginConfig' test.out

#- 187 UploadRevocationPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'UploadRevocationPluginConfigCert' test.out

#- 188 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    '{"description": "KPcc8Z82WtwcihC8", "eventTopic": "7O1U2uYktiAFqIsH", "maxAwarded": 29, "maxAwardedPerUser": 30, "namespaceExpression": "d9kt3xkRSajXSTpU", "rewardCode": "3aCkzqs0hC50vEOI", "rewardConditions": [{"condition": "xc25vtorwrF6HtcJ", "conditionName": "bqjCZkEvdWNk2SHY", "eventName": "sva1jk545vt1Vu7d", "rewardItems": [{"duration": 38, "endDate": "1989-04-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "9lLvPS5jJ58vaRaa", "quantity": 48, "sku": "oGxE4QuZeQkRBv8h"}, {"duration": 14, "endDate": "1982-09-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "CTYPYD0WHJ0JzaJp", "quantity": 34, "sku": "5Z6en6c5d620U9ad"}, {"duration": 7, "endDate": "1996-05-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ZoyeqN5ouEcXRhWb", "quantity": 90, "sku": "2WJVJy6yBPVmpbwV"}]}, {"condition": "G3MwHy6yQU2RSNGW", "conditionName": "KnNDFZOok9snWC9C", "eventName": "FiRmbELIzawfXvKu", "rewardItems": [{"duration": 21, "endDate": "1994-04-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "PIGCrJozIio8nWa6", "quantity": 18, "sku": "x5pJSHZCzyWKP30K"}, {"duration": 42, "endDate": "1980-08-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "e3Cvn1QymYMLAdBS", "quantity": 98, "sku": "W31SlSm20DzdKk8F"}, {"duration": 24, "endDate": "1983-02-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "atall18E5J9knaLM", "quantity": 22, "sku": "iWA2DHIocFR98KOa"}]}, {"condition": "bgb0l3UURltNbDbd", "conditionName": "vc14DUjHqRaUZuU9", "eventName": "T9SRQFfxRIUU3K7s", "rewardItems": [{"duration": 20, "endDate": "1982-03-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "HFmaUGIprrzf5gWN", "quantity": 48, "sku": "b0LePf5b8MJ94DAh"}, {"duration": 79, "endDate": "1999-01-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "lwtoen6TTQtwMX4Q", "quantity": 55, "sku": "LqKRRnKy17sBYlx7"}, {"duration": 36, "endDate": "1974-08-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "hoDWRw7XYzZLlLq8", "quantity": 24, "sku": "JRpqZEUH2Rr5lkfH"}]}], "userIdExpression": "jqVCMpunzeSPkf8Y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'CreateReward' test.out

#- 189 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'QueryRewards' test.out

#- 190 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'ExportRewards' test.out

#- 191 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'ImportRewards' test.out

#- 192 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'vxm9KYr60SyfWNB8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'GetReward' test.out

#- 193 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    '{"description": "u5Qlf4KGo0N4g7UW", "eventTopic": "RzPsMd90Jrkh4kaH", "maxAwarded": 91, "maxAwardedPerUser": 65, "namespaceExpression": "pxt9CW0WYKxAYERG", "rewardCode": "PWWPobC0FiwNmp1e", "rewardConditions": [{"condition": "9JzR7Bat3pdbjxfK", "conditionName": "1P9wjSBBxjKNvNPi", "eventName": "wIMR5JsbLCG20BKf", "rewardItems": [{"duration": 42, "endDate": "1996-09-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "RLmLwLS7dIB0aGjt", "quantity": 80, "sku": "mnzKSVlXsRNMykbn"}, {"duration": 69, "endDate": "1991-07-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "avCN2N47HbR5lY76", "quantity": 23, "sku": "F6Is27hn9TSwEvJP"}, {"duration": 39, "endDate": "1972-09-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "rL5T5rvBRXJxUvm1", "quantity": 47, "sku": "1H5IuOvafRIdOXlx"}]}, {"condition": "xdySywm5h2pCfHjg", "conditionName": "41ZhheDDG5HJEFQR", "eventName": "X4iVg8TK1CF9X9mT", "rewardItems": [{"duration": 26, "endDate": "1988-11-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Gx9FaoDIwGJ3pRyN", "quantity": 46, "sku": "Ovsb9aicyajUNH4c"}, {"duration": 50, "endDate": "1981-07-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "f7BiZI9Jujxs7GKf", "quantity": 39, "sku": "LOlVbEWajKUr3rx7"}, {"duration": 91, "endDate": "1997-01-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "t80ugFtH5gSuRJLG", "quantity": 21, "sku": "zJ2OSkJGMDAkWOP9"}]}, {"condition": "y3eP20aRJVXYPkIG", "conditionName": "nj7nGzgSkTy0cIm2", "eventName": "Tc4sbYVp7amyDRQk", "rewardItems": [{"duration": 72, "endDate": "1993-07-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "p0uzzvAfa6BW7oGw", "quantity": 48, "sku": "U9LoHWS4koauo9jk"}, {"duration": 94, "endDate": "1999-09-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "uUrVMjqwLfyh5UUB", "quantity": 91, "sku": "w1EmCxOMl6uh44gP"}, {"duration": 85, "endDate": "1973-03-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "JZCSkIQI1h6OjoUY", "quantity": 86, "sku": "56yQcC8CPFXan7LU"}]}], "userIdExpression": "fcQhcxynrF5qWYvJ"}' \
    'X1f7rYnPbkDk5g9y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'UpdateReward' test.out

#- 194 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    '47AVCmFD0nKyUwcI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'DeleteReward' test.out

#- 195 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    '9KJZt31la1wZgpPX' \
    --body '{"payload": {"xtcOPw0UBm7wccEL": {}, "Vo9RYTquwIrGgk3e": {}, "qgOf7WwNZWyYuM3y": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'CheckEventCondition' test.out

#- 196 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    '{"conditionName": "1TjdcOVw94gqQYOW", "userId": "Gw7LSW6Kb9otdVBj"}' \
    'acY5doQGhc8zSCeJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'DeleteRewardConditionRecord' test.out

#- 197 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'QuerySections' test.out

#- 198 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    '{"active": true, "displayOrder": 88, "endDate": "1980-04-14T00:00:00Z", "ext": {"PHY6vGzNfPWTQ1pJ": {}, "MwPVAUNYFOg7TplE": {}, "kOZy73bRBtWCJCJu": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 65, "itemCount": 57, "rule": "SEQUENCE"}, "items": [{"id": "1jbh95vj0V2ccQ60", "sku": "lub807E0PGhia3Qv"}, {"id": "aFIVfHyAiTeDDuvg", "sku": "KTfrZ6TfrQrFIsYs"}, {"id": "Z1dTn2pA64FJuEPy", "sku": "mbIAwDAyNBagGD33"}], "localizations": {"WMVj7bfdfxyqKQ4Y": {"description": "NnTTwZeuX7f9iY3s", "localExt": {"kbk25jLP6zS6a5C6": {}, "awft8NPNJCopJg7I": {}, "JTeOWoVtcblaKlhx": {}}, "longDescription": "MNx5h4l3ogPTLlSl", "title": "Gfh2XhfCB53jlBjz"}, "XLwoMxshoo8aHsXJ": {"description": "87ywdDtou8Np74s3", "localExt": {"RLe4gpS550eQ5WiZ": {}, "iQUzC0vBF108QVF9": {}, "gKmJBuqEpgnV3xNd": {}}, "longDescription": "P3uQJ2ZdCStanvPw", "title": "uBVifTkflegYoVHY"}, "dQPAsGfQVawbSlqU": {"description": "fFfZytHO4xrQvXR8", "localExt": {"8ArNPkMbfhbrTb4Z": {}, "PG4R5dqhreKq9si5": {}, "LTZGjfJI0GRPR9FW": {}}, "longDescription": "a3sAlKnzZ5Joq98j", "title": "WszWZxmbhMr5aDNy"}}, "name": "d7VDhThmXAsBwC4M", "rotationType": "NONE", "startDate": "1975-04-15T00:00:00Z", "viewId": "Eo0RXgJkWelLk7pT"}' \
    'vUfmra4esdZ2v5vK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'CreateSection' test.out

#- 199 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'HsJ5DezdlRlTTSLm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'PurgeExpiredSection' test.out

#- 200 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'DolGdb7yXLAgfgES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetSection' test.out

#- 201 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    '{"active": true, "displayOrder": 59, "endDate": "1996-10-24T00:00:00Z", "ext": {"U34waIIRxeTkl27M": {}, "6AggzKZ3nqWutrpj": {}, "BOnBeqwBnFdy01mQ": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 98, "itemCount": 25, "rule": "SEQUENCE"}, "items": [{"id": "Jbg0TSRxhI4XnmuQ", "sku": "N65HKi5qvwLIqgfX"}, {"id": "vKjhXcfKE45hKdn2", "sku": "Ay5KgtWue3XkqcMK"}, {"id": "E9l0uRkf5RxDdVVe", "sku": "0VvPmen8keuXuWui"}], "localizations": {"tb85Ns7DhXCIneqd": {"description": "dStnBNigsnBpu24g", "localExt": {"a0d3NvXvIgvIynEa": {}, "AcX7fXbKWmraqNIK": {}, "PX6gPHT29wkZwM8c": {}}, "longDescription": "vObRjKxi25l9mb1m", "title": "SJffUaLwOsYRIJea"}, "rztP7sqwracbiPrT": {"description": "7cARnySCNlQCocWB", "localExt": {"q1VspKjs4jxjTNe3": {}, "vK6XXKdJ9YgLSRyj": {}, "x0xgbEuoPqi79JLK": {}}, "longDescription": "Hle3po9nK2MnWISZ", "title": "8LUxYanMQUFaZF74"}, "RbeEi4WAntBdOLVn": {"description": "sl61rzqSDNeQF7Q3", "localExt": {"XLgdI7tdEmvBnrNt": {}, "ew73bedVZ6xFNiFC": {}, "0HSIZAGhHJlyMBkb": {}}, "longDescription": "UPi2FDgx1gJONPjy", "title": "1ei7AZBrLdMJG912"}}, "name": "CJx1H9kC6LzFqk7M", "rotationType": "NONE", "startDate": "1991-06-08T00:00:00Z", "viewId": "JqtCtGvxKwuL3Muh"}' \
    'HXzy6WjNeNYuVWrq' \
    'xrNDhsaw4vbDPKG9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'UpdateSection' test.out

#- 202 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'aUuCw1ys0BxLbuju' \
    'XwWEJUvl8k6CNRAf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'DeleteSection' test.out

#- 203 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'ListStores' test.out

#- 204 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    '{"defaultLanguage": "p1s21wulz8cb64Kj", "defaultRegion": "GDHolxRGH5sQmA6X", "description": "L9p83Led5r4J7MEw", "supportedLanguages": ["KxtP0SkagDcL89Pj", "vtwaUDi2fDyXlYJu", "8bIkkFh5LqxA2jff"], "supportedRegions": ["0fTRIYip6c9di8Je", "efXJ2PdIoHdoDHgv", "wcWxlmJoJSnhyf4L"], "title": "6dZ66Zi7azAJHL5P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'CreateStore' test.out

#- 205 GetCatalogDefinition
$PYTHON -m $MODULE 'platform-get-catalog-definition' \
    'SECTION' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetCatalogDefinition' test.out

#- 206 DownloadCSVTemplates
$PYTHON -m $MODULE 'platform-download-csv-templates' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'DownloadCSVTemplates' test.out

#- 207 ExportStoreByCSV
$PYTHON -m $MODULE 'platform-export-store-by-csv' \
    '{"catalogType": "ITEM", "fieldsToBeIncluded": ["9RVZONAcvKXL23pp", "vor8grcvFvYajtvd", "iqyZzxREBSrOk54E"], "idsToBeExported": ["yWalLjCH6xr3vtL9", "JTQ5CWaR2DvfAXB1", "SrgLn5lUQ3Mt9iye"], "storeId": "7Sb3gSolD6u7wIci"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'ExportStoreByCSV' test.out

#- 208 ImportStore
eval_tap 0 208 'ImportStore # SKIP deprecated' test.out

#- 209 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'GetPublishedStore' test.out

#- 210 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'DeletePublishedStore' test.out

#- 211 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'GetPublishedStoreBackup' test.out

#- 212 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RollbackPublishedStore' test.out

#- 213 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'VVHoFtt4AP9G3HyB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GetStore' test.out

#- 214 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    '{"defaultLanguage": "ugfReiDLdSTRmElG", "defaultRegion": "hVQf227V7ADaQHt7", "description": "8b3DT7qRYPx0W6cX", "supportedLanguages": ["zOdGXLsEc8XzmjXX", "4csMlaBkq9QHEb66", "Bo3ALdAKAQUoGDOU"], "supportedRegions": ["FK4BcWOxnwerZoIJ", "2JMtHAD8gJdK4CJB", "Y63ASIuZtE2WuycI"], "title": "dVm37lVyVYhbj7X9"}' \
    '6t5WMLdod5DYqp6X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'UpdateStore' test.out

#- 215 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'DPJmYDZqWoL8k0jE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'DeleteStore' test.out

#- 216 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'Dj1R673CfYbn53kI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'QueryChanges' test.out

#- 217 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'RN1df13EvjSbGYcL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'PublishAll' test.out

#- 218 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'QEocUfUPAI2O4xXX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'PublishSelected' test.out

#- 219 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'wCsNtkQh3rUUKaN6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'SelectAllRecords' test.out

#- 220 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    '6Rjkt9zWkx2SjE4M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'SelectAllRecordsByCriteria' test.out

#- 221 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'M82Qw4C7p4YKcL3q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'GetStatistic' test.out

#- 222 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    't4lUCjplpfxQDpz3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'UnselectAllRecords' test.out

#- 223 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'ka75GSPrezfQIy1F' \
    'sYo03H0HWXeUSuTJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'SelectRecord' test.out

#- 224 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'RHgBRpSb3GL7YAU5' \
    'AnUkmfVW93ZW1tXA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'UnselectRecord' test.out

#- 225 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'OpK37SfSPivmYx19' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'CloneStore' test.out

#- 226 ExportStore
eval_tap 0 226 'ExportStore # SKIP deprecated' test.out

#- 227 QueryImportHistory
$PYTHON -m $MODULE 'platform-query-import-history' \
    'GWm87P1GbEQA6nI1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'QueryImportHistory' test.out

#- 228 ImportStoreByCSV
$PYTHON -m $MODULE 'platform-import-store-by-csv' \
    'tmp.dat' \
    'tmp.dat' \
    'tmp.dat' \
    'VhgTvfzwfgRZntMh' \
    'tmp.dat' \
    'unn3jSCD2AknCwPe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'ImportStoreByCSV' test.out

#- 229 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'QuerySubscriptions' test.out

#- 230 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    '4TX4CK4IBY01KuFb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'RecurringChargeSubscription' test.out

#- 231 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    's8Iv2Ij9B7VD3SyR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'GetTicketDynamic' test.out

#- 232 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    '{"orderNo": "3UCMUtsTLoeVLjxb"}' \
    'wUQUVEWE0xtN3v8D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'DecreaseTicketSale' test.out

#- 233 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'gFUrjRGzthYJKH9v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'GetTicketBoothID' test.out

#- 234 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    '{"count": 15, "orderNo": "a4tSghREoTAvCltz"}' \
    'rUTJgBjWwZMcxIcm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'IncreaseTicketSale' test.out

#- 235 Commit
$PYTHON -m $MODULE 'platform-commit' \
    '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 61, "currencyCode": "utMHEeUDIyZ6bUl6", "expireAt": "1992-11-18T00:00:00Z"}, "debitPayload": {"count": 98, "currencyCode": "DAwzeZS20lWbIy7i", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 37, "entitlementCollectionId": "roGyrFwTSdzLOXwP", "entitlementOrigin": "Nintendo", "itemIdentity": "fZ5duijZETizaQix", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 12, "entitlementId": "fOiLRYQkDw4MI4SE"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 18, "currencyCode": "My8NAiT9jmCgwDPg", "expireAt": "1982-11-19T00:00:00Z"}, "debitPayload": {"count": 2, "currencyCode": "tuMUpS3K4kKGKct8", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 72, "entitlementCollectionId": "QK7TEK4sZzj7oPP3", "entitlementOrigin": "Xbox", "itemIdentity": "BK25PGFQBJJHKR8n", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 97, "entitlementId": "f17nsndhy0Gtga4x"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 45, "currencyCode": "it3ApyAvkVtA8b9z", "expireAt": "1982-08-19T00:00:00Z"}, "debitPayload": {"count": 84, "currencyCode": "0MQnjUphnyKSPgLr", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 99, "entitlementCollectionId": "TdqgHGJd9AlCqccv", "entitlementOrigin": "Epic", "itemIdentity": "OncXNM18ZiBLaa5i", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 98, "entitlementId": "b6ODd1kj4Qj6RS5a"}, "type": "FULFILL_ITEM"}], "userId": "56ceteBSz425Kp2P"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 3, "currencyCode": "W8gpXu2mBdRvF84e", "expireAt": "1986-07-31T00:00:00Z"}, "debitPayload": {"count": 32, "currencyCode": "m02245YlrGlfgrzL", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 5, "entitlementCollectionId": "fZvRPXjiYCPM52HK", "entitlementOrigin": "Other", "itemIdentity": "ASyze4T9TmQupOzu", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 43, "entitlementId": "RV8Vw1OuyVC7JcK5"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 10, "currencyCode": "AcrY9Vdxzm1SnMFP", "expireAt": "1975-08-26T00:00:00Z"}, "debitPayload": {"count": 19, "currencyCode": "Ge7BlGbNTtvAEsQs", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 99, "entitlementCollectionId": "jgNbqY9SXZMP793i", "entitlementOrigin": "Steam", "itemIdentity": "GL8kITGmF087BWKC", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 30, "entitlementId": "zHgwFqS6c2YCA1r3"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 75, "currencyCode": "RhISjcIvS4I6tzdb", "expireAt": "1979-10-13T00:00:00Z"}, "debitPayload": {"count": 74, "currencyCode": "MnrbjAM32RlQ3Wpg", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 90, "entitlementCollectionId": "CsESCHRPA5OQX8tw", "entitlementOrigin": "Xbox", "itemIdentity": "daswUzfV36Hwf7gG", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 82, "entitlementId": "TZ2IdgUYmmt7HXJC"}, "type": "DEBIT_WALLET"}], "userId": "0e2LY7yB5EiqQhvZ"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 42, "currencyCode": "CSswSPGcfasR2Nrr", "expireAt": "1977-03-01T00:00:00Z"}, "debitPayload": {"count": 32, "currencyCode": "JBGkT1hNjHr2icYZ", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 18, "entitlementCollectionId": "HhBvqhixMPjP9lZT", "entitlementOrigin": "Xbox", "itemIdentity": "O6iUdCh9M0KC9zNZ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 94, "entitlementId": "WXjMCSId4tDlI96Q"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 30, "currencyCode": "GcD5vraJ3WftgZ43", "expireAt": "1980-06-25T00:00:00Z"}, "debitPayload": {"count": 87, "currencyCode": "ZLb7i2SZkIaANvZ0", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 91, "entitlementCollectionId": "2EGVDWs67zwXLLDt", "entitlementOrigin": "Xbox", "itemIdentity": "fgrJcwR3qktAdH94", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 15, "entitlementId": "ziEpGVXsUvez1lbe"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 69, "currencyCode": "gh9kCPNSZTIlkM5I", "expireAt": "1997-06-17T00:00:00Z"}, "debitPayload": {"count": 72, "currencyCode": "p2zhRng3KibPdtHZ", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 2, "entitlementCollectionId": "YJeKvshwdE9XuQ8g", "entitlementOrigin": "Playstation", "itemIdentity": "EdqHzEDtl5oR9m1d", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 92, "entitlementId": "3fGK1wINqvFrAsrm"}, "type": "FULFILL_ITEM"}], "userId": "YWbvsmtsOVvpKYJy"}], "metadata": {"OQGUiqcJ2Jldy73u": {}, "kTxjfHXQQVmxHmCV": {}, "muzoO2qep49tDHFl": {}}, "needPreCheck": true, "transactionId": "8cQlJCgKFmN851YX", "type": "8ylpv3hDDLL1n4On"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'Commit' test.out

#- 236 GetTradeHistoryByCriteria
$PYTHON -m $MODULE 'platform-get-trade-history-by-criteria' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'GetTradeHistoryByCriteria' test.out

#- 237 GetTradeHistoryByTransactionId
$PYTHON -m $MODULE 'platform-get-trade-history-by-transaction-id' \
    '03mToMhBjPD6aztT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetTradeHistoryByTransactionId' test.out

#- 238 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    '{"achievements": [{"id": "yMQghPWOOAzTmCVF", "value": 63}, {"id": "rNR2jH7Xx7m8IqIR", "value": 51}, {"id": "uptcOYSTj2AWA5f6", "value": 65}], "steamUserId": "ztkSpGmf8BXosNyl"}' \
    'Cwcf2iVxv9QtivQq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'UnlockSteamUserAchievement' test.out

#- 239 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'eRyPorhTuFn3W0qA' \
    'pZ98a9g9AjLDQL5j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'GetXblUserAchievements' test.out

#- 240 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '{"achievements": [{"id": "ZbyjCnTkYE0HYHfB", "percentComplete": 5}, {"id": "xtYbmQwS5kNxCPLe", "percentComplete": 75}, {"id": "HmXRdPvQLVuKpiiZ", "percentComplete": 45}], "serviceConfigId": "Imogp7RKEcLehyAo", "titleId": "wu72oCUdMES0mVVI", "xboxUserId": "1FilcO4pajEhkRLM"}' \
    'vZnYZKCk0zbREElw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'UpdateXblUserAchievement' test.out

#- 241 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'dZORocHSHulJHhAn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'AnonymizeCampaign' test.out

#- 242 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'Y7QeDSRroVkXb4xP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'AnonymizeEntitlement' test.out

#- 243 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'PUmUifQvfoZ7n3eR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeFulfillment' test.out

#- 244 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'MzJEQYwNGRl2gcWd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'AnonymizeIntegration' test.out

#- 245 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'DmIy4Ia2UtS4T1v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'AnonymizeOrder' test.out

#- 246 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'y9Je7apQfNdDyT3a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'AnonymizePayment' test.out

#- 247 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    '0EGpHgGLUqdG3kBf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'AnonymizeRevocation' test.out

#- 248 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'Gvwjwttys4GvDvs1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'AnonymizeSubscription' test.out

#- 249 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'H5juf5Cq950XtiMx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeWallet' test.out

#- 250 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'QDIHnPin3vZc9bUY' \
    'EPICGAMES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'GetUserDLCByPlatform' test.out

#- 251 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    '9LADbjj6viKPQxoV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'GetUserDLC' test.out

#- 252 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'P77RuEzCRLrZmVBF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'QueryUserEntitlements' test.out

#- 253 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '[{"collectionId": "c2P689TFuh1hFoX5", "endDate": "1987-02-18T00:00:00Z", "grantedCode": "XMrS82vN0N2236tI", "itemId": "7v0x9St2EFfU2Fby", "itemNamespace": "IXierPr2qLKBXRYt", "language": "WvL", "metadata": {"JH0gQxqxmEFytm0r": {}, "ZGlRUuJ7HggA1D8D": {}, "BtkE9JX7oDFoXpZ9": {}}, "origin": "Oculus", "quantity": 74, "region": "y7dEuiT7OrRdHjzN", "source": "GIFT", "startDate": "1997-02-08T00:00:00Z", "storeId": "bllwvt3TjGezRRUj"}, {"collectionId": "CNiQauO5Cfja0qWo", "endDate": "1979-11-29T00:00:00Z", "grantedCode": "WrZJAMVQaCd4UgSR", "itemId": "sFc8FKz1j1HfaNk1", "itemNamespace": "P4hC8wgvaTIntj0r", "language": "KK", "metadata": {"CKMOHEhe6apnthJs": {}, "QpzHxEsiEsZH3UVm": {}, "VcOxU0GsP6oBsZy1": {}}, "origin": "Nintendo", "quantity": 70, "region": "U4RB2xVHiARcFLzO", "source": "GIFT", "startDate": "1989-08-27T00:00:00Z", "storeId": "z8Gz5TN3bJ6UVKAd"}, {"collectionId": "Np2ReRw5WPjohGmJ", "endDate": "1989-08-15T00:00:00Z", "grantedCode": "CjbEtFKLGvBQOS81", "itemId": "LpIh5QqEOKQXnUYM", "itemNamespace": "XvJJrO8K9yVaSV6M", "language": "ss-DnpV", "metadata": {"tGYDVGwpKCkOgcVr": {}, "Mw1DAaC3oGYmbE9E": {}, "87RTBvlu7lo1foXU": {}}, "origin": "Oculus", "quantity": 54, "region": "IE7EVvQkoqOZIFeJ", "source": "OTHER", "startDate": "1993-08-02T00:00:00Z", "storeId": "rnPscIMJRStF3LRa"}]' \
    '7q49EdmhBpI13Mh9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'GrantUserEntitlement' test.out

#- 254 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'tHYQilnHrNI7XsRC' \
    'D3YOzMK1ZWOxnVMp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'GetUserAppEntitlementByAppId' test.out

#- 255 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'yEziAPi9dBg5J0me' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'QueryUserEntitlementsByAppType' test.out

#- 256 GetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-get-user-entitlements-by-ids' \
    'BhvZVrOsZSqQjmdJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'GetUserEntitlementsByIds' test.out

#- 257 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'Ga6AahLvhIfKDFku' \
    'ldV3vhNCAUQUVGJT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'GetUserEntitlementByItemId' test.out

#- 258 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'sED5tFgDMluY685d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'GetUserActiveEntitlementsByItemIds' test.out

#- 259 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'rsUwaWMLdLGDjtir' \
    'dqDck0QFovelKxdF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementBySku' test.out

#- 260 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'e87vTbT1ykevWiIo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'ExistsAnyUserActiveEntitlement' test.out

#- 261 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'ubexJQ22uV5cRj52' \
    '["9cEGlYlBTFD4MBzA", "gdtJfaktaCbkIORj", "buZi76GDzksM1Iq8"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 262 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    '2IG598WdAhvjsHqU' \
    '3mTbQzxkHXSiDFpw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 263 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'gjtHkQyb5yoi3fhB' \
    'KutgKyddONrCA3C8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'GetUserEntitlementOwnershipByItemId' test.out

#- 264 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'SvqUKqpSaqBWWsEe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'GetUserEntitlementOwnershipByItemIds' test.out

#- 265 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'PoWos4O5MRxu5cYF' \
    'tJZeinW64n9q4asI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementOwnershipBySku' test.out

#- 266 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'fg6qpRvHGYNAfvls' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'RevokeAllEntitlements' test.out

#- 267 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    '7pbw9yPFofHSVjTb' \
    'M9IHL2JcpnLuindE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'RevokeUserEntitlements' test.out

#- 268 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '3Ucg05FtWiuP1xyP' \
    'eWov5pJJdyu2TxbD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'GetUserEntitlement' test.out

#- 269 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    '{"collectionId": "TPkZkYfTO2Gg00Jc", "endDate": "1996-03-17T00:00:00Z", "nullFieldList": ["GaIUaL3FoA27eK2U", "3IHpgmmQaQj7hyQj", "WqzvHab6b9t7DWTa"], "origin": "System", "reason": "3hTzeUaFK6P6yxOl", "startDate": "1987-04-02T00:00:00Z", "status": "ACTIVE", "useCount": 67}' \
    'dtyrLQHkz1Es8nQb' \
    'k4SztMOdFHQXjAZr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'UpdateUserEntitlement' test.out

#- 270 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '{"metadata": {"DNCoJ22RroweT9Xa": {}, "nvbg8nAmHsrmzoPN": {}, "3GJz77wPralgkstR": {}}, "options": ["sUi0oaze9bInjdq2", "7RgguQ45JSoDgfLa", "yvPNWmvzOaDtopfG"], "platform": "PnF4i8PP7jdmy3Ks", "requestId": "RDI0m4nKNGlXp2jJ", "useCount": 11}' \
    'CKYcMJnrn1I3ypoE' \
    'AwuriKcfEberKsmt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'ConsumeUserEntitlement' test.out

#- 271 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'tvFw6Ev28mtO5isA' \
    'Id2vIIeRmFR2TQ2r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'DisableUserEntitlement' test.out

#- 272 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'E5Ugf8q6zX7Jc7TK' \
    '5xO3LzmzW8Oj3HDR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'EnableUserEntitlement' test.out

#- 273 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'oKRr6ZZRLgp1djMa' \
    'w9o5TdLhB2mWrW0A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementHistories' test.out

#- 274 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    '29UflIqBalvCur3y' \
    'S6PcP3N8ee3aFSyZ' \
    --body '{"metadata": {"kpxzyGW3kHAKNzH5": {}, "cJ1x2IhHEQwW44r5": {}, "yXnevZsdD9Iip75t": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'RevokeUserEntitlement' test.out

#- 275 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    '{"reason": "7Rgtj7pKnbtPAZsN", "useCount": 45}' \
    'ei3ChLwkIGKtgDjD' \
    'ah0UewhSyu7JMOvm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'RevokeUserEntitlementByUseCount' test.out

#- 276 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'bqHpLDqY64bsfWMA' \
    '6zIWiASrarIiILeX' \
    '83' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 277 RevokeUseCount
eval_tap 0 277 'RevokeUseCount # SKIP deprecated' test.out

#- 278 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    '{"platform": "xE1teY5Ma16Sr2B1", "requestId": "37kVZhkISgONgrrE", "useCount": 22}' \
    'JqY7ujDDLuoQJspL' \
    'LZbnusI9Nty8KpP0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'SellUserEntitlement' test.out

#- 279 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    '{"duration": 89, "endDate": "1971-10-06T00:00:00Z", "entitlementCollectionId": "s29PBhKjKkXDnEXV", "entitlementOrigin": "Playstation", "itemId": "gT1zZPaKlnIY3vGL", "itemSku": "ET05JQWhwijC7ydS", "language": "FRQ4V5OyypfQ5iJt", "metadata": {"NrVbjnyYERw24T1D": {}, "BdzzVbhZKnh9FfHs": {}, "uwhOtgOWtZuhAp0y": {}}, "order": {"currency": {"currencyCode": "xLpfWB0inH8xFDMo", "currencySymbol": "qbLU4KGsevVGPnqX", "currencyType": "REAL", "decimals": 86, "namespace": "Z9naIn2EhpBnamOq"}, "ext": {"QfF1i9lDi17TuzOC": {}, "kfreVXF3F57a8i8F": {}, "BQVq8F8UHFjnV4a8": {}}, "free": true}, "orderNo": "Q6h4G1JwgwqyIOpm", "origin": "Xbox", "overrideBundleItemQty": {"g5zKTtaPmN6tWQqV": 38, "V78ZIjg1EtBZbAWe": 68, "DOc9FNs0rjVHzs9C": 77}, "quantity": 89, "region": "B5DYIkGcoYjLN4VP", "source": "REFERRAL_BONUS", "startDate": "1976-04-19T00:00:00Z", "storeId": "1a1sBmUaCx3pnw2U"}' \
    'qOcXFVD0pboKkDZJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'FulfillItem' test.out

#- 280 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '{"code": "ufSvoXGyr43yZ4vi", "language": "wGg-wvHC_cs", "region": "98Gf5PcmWICZpV13"}' \
    'Vxw1InWyY5J5tCY0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'RedeemCode' test.out

#- 281 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    '{"itemId": "1FkbWfSwD66Xg5Qb", "itemSku": "c0EjxxzLQLRh64Y1", "quantity": 19}' \
    'YQcZ2M0m2eu4s6Vt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PreCheckFulfillItem' test.out

#- 282 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    '{"entitlementCollectionId": "77Z7VYCzMbz1C3Zt", "entitlementOrigin": "IOS", "metadata": {"CC1SEp55TimgFFEN": {}, "NE15OyfCm3JLSdyx": {}, "EkUrupaAg8X3qrN4": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "MDbsgiaaxIpP9oAI", "namespace": "CocQql5YfBZVQcDD"}, "item": {"itemId": "4zf1BZvQIrbCQWs1", "itemName": "jZYqrf4bxOoikruH", "itemSku": "KYKNEVJSzeli2Uey", "itemType": "4fuSj1kSeWA3702M"}, "quantity": 4, "type": "CURRENCY"}, {"currency": {"currencyCode": "0PYoF43qdlpBadzn", "namespace": "EopQjdlmCKky8f25"}, "item": {"itemId": "OS6EXRpHjQ4hViJ1", "itemName": "Z0GtE9ePlbHeBy2y", "itemSku": "YQJsEZNAnUcJCHba", "itemType": "M8I2sFnR0i1EP6ek"}, "quantity": 86, "type": "ITEM"}, {"currency": {"currencyCode": "zrmDqC827Ayw8HdD", "namespace": "dyIIR5cs3jEJm9cq"}, "item": {"itemId": "IJO6etrgPcoqdV16", "itemName": "bQzZjJiiJFm6K0Ms", "itemSku": "bekvKte7LEbOajs9", "itemType": "HWygfQVPPqE6XNxm"}, "quantity": 36, "type": "ITEM"}], "source": "IAP", "transactionId": "x6AenNJCzeLqjOhH"}' \
    'MsieBzDBhi6oZhjE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'FulfillRewards' test.out

#- 283 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'nbkZp3ZHkJnKJ2ks' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'QueryUserIAPOrders' test.out

#- 284 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'ygYZVyQIUbI6vW6l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'QueryAllUserIAPOrders' test.out

#- 285 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'vytcmR4QRN7ybL3l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'QueryUserIAPConsumeHistory' test.out

#- 286 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '{"itemIdentityType": "ITEM_SKU", "language": "qUJ-qUSA-dw", "productId": "zs5MyxW90cMZ9Ney", "region": "Z5n02q1qbbj3sLmf", "transactionId": "YzDVAVhXts4Cdsni", "type": "OCULUS"}' \
    'JKrJ4BrdfV658ZBV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'MockFulfillIAPItem' test.out

#- 287 AdminGetIAPOrderLineItems
$PYTHON -m $MODULE 'platform-admin-get-iap-order-line-items' \
    'GgxlpGxhD9kKX2uB' \
    'UIh1pfP8bRBVoq80' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminGetIAPOrderLineItems' test.out

#- 288 AdminSyncSteamAbnormalTransaction
$PYTHON -m $MODULE 'platform-admin-sync-steam-abnormal-transaction' \
    '7roCNo3Qw4Z54sNM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminSyncSteamAbnormalTransaction' test.out

#- 289 AdminSyncSteamIAPByTransaction
$PYTHON -m $MODULE 'platform-admin-sync-steam-iap-by-transaction' \
    '{"orderId": "s82e3yxhkTFfQHB8"}' \
    'O5ke34NGuMLQ7iPa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminSyncSteamIAPByTransaction' test.out

#- 290 QueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription' \
    'Gqelc3lbrPkW2foK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'QueryUserThirdPartySubscription' test.out

#- 291 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-group-id' \
    'PLAYSTATION' \
    'OaF8En9Ut2qFCzvp' \
    'inQCQg8fidwt7qJ1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 292 GetThirdPartyPlatformSubscriptionOwnershipByProductId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-product-id' \
    'APPLE' \
    '5wS8MCmOepp9Tx45' \
    'YPBPqcYNEbLCaeCu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 293 QueryUserThirdPartySubscriptionTransactions
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription-transactions' \
    'MBokWfuz2Zskdg2b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 294 GetThirdPartySubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-subscription-details' \
    '5IpRSAi9TY3ZiKfp' \
    'U2gMmaHuaBzeu4NP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'GetThirdPartySubscriptionDetails' test.out

#- 295 GetSubscriptionHistory
$PYTHON -m $MODULE 'platform-get-subscription-history' \
    'uT03UI8xXkOTRPX2' \
    'RbN68q9XjuvxGSBm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'GetSubscriptionHistory' test.out

#- 296 SyncSubscriptionTransaction
$PYTHON -m $MODULE 'platform-sync-subscription-transaction' \
    'DL91zfHvKnS4TBwl' \
    'Gi9OKYqmnMdDOYMC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'SyncSubscriptionTransaction' test.out

#- 297 GetThirdPartyUserSubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-user-subscription-details' \
    'kcE680jXshhArmrr' \
    'sTXqjhryZuWF0aXy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'GetThirdPartyUserSubscriptionDetails' test.out

#- 298 SyncSubscription
$PYTHON -m $MODULE 'platform-sync-subscription' \
    'AfnT9KMwZkUmivHb' \
    'mYwS4MpDJ1DYOnlV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'SyncSubscription' test.out

#- 299 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'rhflY3MzIef9mtXH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'QueryUserOrders' test.out

#- 300 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    '{"currencyCode": "bh3agt9HQKHNhlzY", "currencyNamespace": "RtA24gRvv870jG3e", "discountCodes": ["6kpEZmtrpzaLfufF", "4LQyLj7QmX1ijJDL", "oH0vIAAZ3D07rENh"], "discountedPrice": 34, "entitlementPlatform": "Oculus", "ext": {"jyW5nSpi08dnnmoW": {}, "GbDOWBzflDPp8sE7": {}, "bcL6xy49IPWxqs6j": {}}, "itemId": "AQJWL8Yc3AKtQffB", "language": "JPNo4VIzCxIBQt7B", "options": {"skipPriceValidation": true}, "platform": "Oculus", "price": 45, "quantity": 77, "region": "aozlr2ftyZklpNPl", "returnUrl": "881jOSvCvj20fgU4", "sandbox": false, "sectionId": "ug3ApiXAivNHSVq7"}' \
    'Hy14PWQgyxy3AZ9Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminCreateUserOrder' test.out

#- 301 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    '29c3FLGnsacdakVu' \
    'Bk3eUIeGfzqhOBhM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'CountOfPurchasedItem' test.out

#- 302 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'J8BCR0Pr4lUceWJi' \
    'dPUCDHoZPOFJliGQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'GetUserOrder' test.out

#- 303 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    '{"status": "FULFILLED", "statusReason": "EEfr25k1H2s4V2KN"}' \
    '0PLlR8cmHo3XR1Gq' \
    'cOtFZDsjHNjL304s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'UpdateUserOrderStatus' test.out

#- 304 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'V2h9pg3yvd9MZqnU' \
    'seNuEx7YDEkdFOw3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'FulfillUserOrder' test.out

#- 305 GetUserOrderGrant
eval_tap 0 305 'GetUserOrderGrant # SKIP deprecated' test.out

#- 306 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    '4ZkvghT5B0olJY1q' \
    'ewjIDEZedb90DCSo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'GetUserOrderHistories' test.out

#- 307 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '{"additionalData": {"cardSummary": "LAgeUljuQXNi35z7"}, "authorisedTime": "1987-06-04T00:00:00Z", "chargebackReversedTime": "1976-12-17T00:00:00Z", "chargebackTime": "1991-04-13T00:00:00Z", "chargedTime": "1972-09-28T00:00:00Z", "createdTime": "1979-09-28T00:00:00Z", "currency": {"currencyCode": "R08dqYhgjNEKxgig", "currencySymbol": "qjIaaftddfk3N3FU", "currencyType": "VIRTUAL", "decimals": 40, "namespace": "56c8ZJFga6qXT561"}, "customParameters": {"86aDmZpx6FpqFAR1": {}, "FP2qDxqukQGmZ8QP": {}, "R4rrBu0xMLSZM2re": {}}, "extOrderNo": "G0eUsKe4gH8U04S5", "extTxId": "FCpmYeCJwMPHx5qb", "extUserId": "q2es6TWDRr2bTPUx", "issuedAt": "1996-02-14T00:00:00Z", "metadata": {"iXANoRioh11etL7r": "vPzXTBq3cXU8GYxE", "0OhdSVFcSQWMXN21": "fc6lGGfo4IJnwUyJ", "DPc4Bi2BT8WWMNZ7": "MQ0xXiAUp37WFZG1"}, "namespace": "bPREFnLFvdjVz0bF", "nonceStr": "4f5a8wwsXbVcGQFc", "paymentData": {"discountAmount": 69, "discountCode": "BmznrLziwCnnibCj", "subtotalPrice": 28, "tax": 92, "totalPrice": 8}, "paymentMethod": "uxoSkuKry9iZZvtr", "paymentMethodFee": 10, "paymentOrderNo": "5xUblp0GJFHhDBbj", "paymentProvider": "ADYEN", "paymentProviderFee": 71, "paymentStationUrl": "usCtKYo61c23RG7T", "price": 97, "refundedTime": "1986-01-04T00:00:00Z", "salesTax": 40, "sandbox": true, "sku": "dlj1BAkRkfD5QI95", "status": "REFUNDING", "statusReason": "lhBPiRxSSC369UVG", "subscriptionId": "Tnts7qK33YCsDe0l", "subtotalPrice": 1, "targetNamespace": "jhAM4C34bBPbifHD", "targetUserId": "iBMsRy1ZmFMVlAha", "tax": 61, "totalPrice": 0, "totalTax": 38, "txEndTime": "1979-10-10T00:00:00Z", "type": "FYcM0OoFV93hG5GV", "userId": "HrcfGpWAuflVB1op", "vat": 43}' \
    'WbmcgfplQTNIZctT' \
    'ysFM89BCAF2MVozV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'ProcessUserOrderNotification' test.out

#- 308 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'ctDaMus5bsovjmmx' \
    'HjjlquESAZpAC3ME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'DownloadUserOrderReceipt' test.out

#- 309 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    '{"currencyCode": "gBrVUoMCPYZARtb3", "currencyNamespace": "TsS5jOBRYgnvYu1v", "customParameters": {"zXsMr43ycE5A2fFK": {}, "AWLe45nohGKrvpCU": {}, "uClhTnLjG2riY5Il": {}}, "description": "AkHgxsULSOBCWJH9", "extOrderNo": "jh3zB9JEYLPl0Rjs", "extUserId": "q0yRuQRarSVoIleZ", "itemType": "SUBSCRIPTION", "language": "BmB_LO", "metadata": {"HIIZTnztswBHIOUc": "pBs05S6VCRgcpqzF", "0Wdx4tTiOqvd6is3": "iMkUYXGJ52LhrcYm", "NqU8FNr2Sf2vnHOZ": "hdmTd8ENVRZH8lme"}, "notifyUrl": "TjzHxgwKaMjUptGD", "omitNotification": false, "platform": "29SPAGK8QxsXGgAK", "price": 51, "recurringPaymentOrderNo": "QR9g0C7nE1t58Ldp", "region": "QQXSvH7kwH9PKAIE", "returnUrl": "qRaoWkdV23II0TED", "sandbox": false, "sku": "h9NaXK6yInDEdr3J", "subscriptionId": "fyFO9PUA61ceL94U", "title": "MGbnwR8NQy5mWp1i"}' \
    '7XAgvpl6VM46gEFq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'CreateUserPaymentOrder' test.out

#- 310 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '{"description": "wJcySobYFsOpqr85"}' \
    'xVvxj351m51uwOol' \
    'qmdu4KlKLptx5DKF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'RefundUserPaymentOrder' test.out

#- 311 GetUserPlatformAccountClosureHistories
$PYTHON -m $MODULE 'platform-get-user-platform-account-closure-histories' \
    'WYNaRNbzpFsjJLsz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'GetUserPlatformAccountClosureHistories' test.out

#- 312 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '{"code": "OiHFs5xAVg39H5hn", "orderNo": "oP20tlphew85KPyj"}' \
    '4EGRMQTeDUODYJlL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'ApplyUserRedemption' test.out

#- 313 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    '{"meta": {"3GEb7CgXWeXJrzNr": {}, "t0fkjelr7hVgkvQd": {}, "to2PuC14Lu2G4Mw4": {}}, "reason": "Mo4TirGDZ6OUYrf6", "requestId": "N5BjG6bELZwjEmKg", "revokeEntries": [{"currency": {"balanceOrigin": "System", "currencyCode": "XlgbV3dBwrK8hpKl", "namespace": "mw63co2erbchkQ7n"}, "entitlement": {"entitlementId": "0C9lJb5WlmAWYUte"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "HHKuQExWorl4PYKJ", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 95, "type": "ITEM"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "KlZ26mxx5rFWCDjF", "namespace": "eol1Ra8c5c3F5otS"}, "entitlement": {"entitlementId": "icHNAFf6XoFjTyGz"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "y7Gy3lIbJD3ko0Ks", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 44, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "H84W95YMkpzkat1q", "namespace": "YXphVMsbw6Rv3XZ4"}, "entitlement": {"entitlementId": "XgIfTmvZDu1OaoVm"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "Ov7wz26xkkYYxgGL", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 39, "type": "ITEM"}], "source": "DLC", "transactionId": "EcW3bKxXuYOn0ULO"}' \
    '8bwirHmfnBivLKin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'DoRevocation' test.out

#- 314 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    '{"gameSessionId": "rwTNNliEMZaebfXS", "payload": {"8gZ4cc4oVqQk9tqG": {}, "zt1BHwaxrSepYwXW": {}, "bcBNnyBdWMRvISdc": {}}, "scid": "F4Db7MaqeC6go22o", "sessionTemplateName": "GxiuAknxwcqyDyOq"}' \
    'Q18AhUON0V9Qm5Gi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'RegisterXblSessions' test.out

#- 315 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'Vkyg2ApoZozOLaCr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'QueryUserSubscriptions' test.out

#- 316 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'fo6qFXI3sUf1uYi2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'GetUserSubscriptionActivities' test.out

#- 317 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '{"grantDays": 67, "itemId": "73vbWSNBzkiEHyJE", "language": "Og3iIjU3AAg7WG2e", "reason": "TsmDaTzm1iyRQNy7", "region": "RFRXuzS7oKchq3HF", "source": "DAp8snTqP81J1c6C"}' \
    '2wvWDhsYWwX5hKxg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PlatformSubscribeSubscription' test.out

#- 318 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'CMD1qRyNe4g5DSTB' \
    'pRPaWHEoCnndVYqg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 319 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'BPmwdNn0rosYXZ8e' \
    'ImgQ2x0SgQXdYwRi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'GetUserSubscription' test.out

#- 320 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'DuKo24S6RgeY6mxa' \
    'rVsr09JpliIbzDdA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'DeleteUserSubscription' test.out

#- 321 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    '{"immediate": true, "reason": "g9UeCPSEkHvpI9pf"}' \
    'Gr7q4J4HRfPSShgu' \
    'xCFDvHcOou9G8lXx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'CancelSubscription' test.out

#- 322 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    '{"grantDays": 59, "reason": "E5PpY0ZXXFyG4988"}' \
    'DpkyITbfvPjkpdcT' \
    'xG4LMLOAiZC06KMQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'GrantDaysToSubscription' test.out

#- 323 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'oJCvczbpTe8wnvbA' \
    'KMlJZvUxYzYBSzri' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'GetUserSubscriptionBillingHistories' test.out

#- 324 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    '{"additionalData": {"cardSummary": "ljJODaZNFJFbzIch"}, "authorisedTime": "1976-08-04T00:00:00Z", "chargebackReversedTime": "1988-04-18T00:00:00Z", "chargebackTime": "1977-06-26T00:00:00Z", "chargedTime": "1979-03-14T00:00:00Z", "createdTime": "1984-10-21T00:00:00Z", "currency": {"currencyCode": "2kk1A3H3rxXt6ggK", "currencySymbol": "wWIYIm0ypwg4VTJp", "currencyType": "VIRTUAL", "decimals": 81, "namespace": "64It1R6axg5VLrk3"}, "customParameters": {"KBNBApNgT5fUWdp4": {}, "LE1VnZFgkytfX1Nq": {}, "G3h3imEWxUgMEW1S": {}}, "extOrderNo": "9JMbrmE7zBsX3PYL", "extTxId": "NcayR34iibMmlb6v", "extUserId": "lF1mVrcAyqXXnKEt", "issuedAt": "1993-10-18T00:00:00Z", "metadata": {"QkLh10xq2zgtaigO": "B2XWLXBkH6l2KW0s", "Sf0vJS3l5sWDcfVx": "x8PSjamcbAWAUiz3", "UhK7hY9Xv4bnujVO": "haDvf3evXo0m3jJ0"}, "namespace": "xtenPXW0Eog3qNqo", "nonceStr": "Lr5uxNWDT3hlTaFf", "paymentData": {"discountAmount": 27, "discountCode": "jp63KfNpB5Un5ObP", "subtotalPrice": 14, "tax": 62, "totalPrice": 62}, "paymentMethod": "NbnYSDYXgkcUGG5h", "paymentMethodFee": 88, "paymentOrderNo": "YH2roupmMfATapsn", "paymentProvider": "CHECKOUT", "paymentProviderFee": 43, "paymentStationUrl": "NbPsWP4dql0EDA4c", "price": 95, "refundedTime": "1992-12-29T00:00:00Z", "salesTax": 100, "sandbox": true, "sku": "diKmmlpHUD2h7I7U", "status": "AUTHORISED", "statusReason": "7AWUdPJvJivl1uU4", "subscriptionId": "DMwBdaNaGlQD7ToP", "subtotalPrice": 24, "targetNamespace": "75GAWm1WfXALgsjw", "targetUserId": "fd3eYGpxI9DQs2vO", "tax": 74, "totalPrice": 100, "totalTax": 69, "txEndTime": "1987-08-09T00:00:00Z", "type": "6fEQ8WC3iZ6amfE0", "userId": "NHQzAvmPZRWnKIfY", "vat": 63}' \
    'kPDBgq17ElbCwKI3' \
    'aXhSEFUvuqvkzikf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'ProcessUserSubscriptionNotification' test.out

#- 325 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    '{"count": 1, "orderNo": "tQ7LhwHqc9mwHFQ3"}' \
    'JQtpRpQVAOexmqWb' \
    '9l5yHbiXZ6ThrZy4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AcquireUserTicket' test.out

#- 326 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'bUEBAVPV9L4ILPJq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'QueryUserCurrencyWallets' test.out

#- 327 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    '{"allowOverdraft": true, "amount": 56, "balanceOrigin": "Epic", "balanceSource": "EXPIRATION", "metadata": {"KXtFPmTQOO3dJd2Y": {}, "P1XIUKL9g3ACu1VG": {}, "eRPwa2XfZ7wxA0lv": {}}, "reason": "XbcZY7zXTdKQkADY"}' \
    'HyER3eNCfqyJ435I' \
    'kibSzJGQtaPFC2Sx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'DebitUserWalletByCurrencyCode' test.out

#- 328 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'EMchjQ84nuG9DGOS' \
    '5kQvK7NHpsIBYlUo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'ListUserCurrencyTransactions' test.out

#- 329 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 64, "debitBalanceSource": "TRADE", "metadata": {"WZPawFVpfXqbM5rN": {}, "HQHEfoYiLFQBUx73": {}, "FrGG1NypPAy9ZqaN": {}}, "reason": "ySvpXwMac489Y6N0", "walletPlatform": "Xbox"}' \
    'FAW37EUwOviFJi30' \
    '4rwbySnVTSdmqyft' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'CheckBalance' test.out

#- 330 CheckWallet
eval_tap 0 330 'CheckWallet # SKIP deprecated' test.out

#- 331 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '{"amount": 64, "expireAt": "1996-02-21T00:00:00Z", "metadata": {"Ql2xFFtZWlWKmQH3": {}, "tI9yHxuaa0zbT4NG": {}, "P7Xy3gYPJQEukOcB": {}}, "origin": "Other", "reason": "4du28xKiygvn2QBd", "source": "PURCHASE"}' \
    '2PP1hXmALwnidAmi' \
    'LFK5Dwak0R9n1WBV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'CreditUserWallet' test.out

#- 332 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 100, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"p96bYrG5ANSRCXWy": {}, "9C2oM6ZVdGQt7ed5": {}, "WKQJkzGQPBQoXpXV": {}}, "reason": "vDLulelX30R2hPYk", "walletPlatform": "Playstation"}' \
    'O9giI7gI536KVAx0' \
    'UzIc4Ou1SpoEwl9N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'DebitByWalletPlatform' test.out

#- 333 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '{"amount": 15, "metadata": {"58G8Xryw8bfE6VA6": {}, "HEvqN7kX4VVVBS89": {}, "UUbLl2ciimYDeDce": {}}, "walletPlatform": "Steam"}' \
    'EtPkjYd9PNBi79WH' \
    'orOJPVoTCRV5enPl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PayWithUserWallet' test.out

#- 334 GetUserWallet
eval_tap 0 334 'GetUserWallet # SKIP deprecated' test.out

#- 335 DebitUserWallet
eval_tap 0 335 'DebitUserWallet # SKIP deprecated' test.out

#- 336 DisableUserWallet
eval_tap 0 336 'DisableUserWallet # SKIP deprecated' test.out

#- 337 EnableUserWallet
eval_tap 0 337 'EnableUserWallet # SKIP deprecated' test.out

#- 338 ListUserWalletTransactions
eval_tap 0 338 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 339 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'ListViews' test.out

#- 340 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    '{"displayOrder": 97, "localizations": {"jYIugFoF3ValgZcN": {"description": "JSYGVxi7ACWF50CS", "localExt": {"EIj98y965Raxu2uj": {}, "ZqzkOZE6sOGLtoFJ": {}, "vwz5yKIpwoaQavSC": {}}, "longDescription": "ZfTzJfHZF17lZ95J", "title": "mGny7g72f6SO7Xay"}, "fUmZz42HE0t7TAQm": {"description": "0TGMk4DmrwxC6EQr", "localExt": {"9lk8teEugVd3X7cq": {}, "2K0e7A1xHVzxmePZ": {}, "06tOqoxMhyqIyPdn": {}}, "longDescription": "z3ReXTrC2sNANyIn", "title": "XnunWNxg0gQztAjY"}, "iUb5SlpeaMDVE3OD": {"description": "ebYRPEkmK5ePPaac", "localExt": {"nQTuUibmiz8AhOGR": {}, "Iwwo9w06X6XzJilj": {}, "ntx5TSAxNBchtcaa": {}}, "longDescription": "oKZYk4GlikyI0LGO", "title": "0eNNgl7jdIf7ptoc"}}, "name": "5rPRsGFfGRRKQ4tL"}' \
    'ERFGopzQ87CbxAJ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'CreateView' test.out

#- 341 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'xdAPFrw8ssJejQ7q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'GetView' test.out

#- 342 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    '{"displayOrder": 92, "localizations": {"TGeyfWQESVLLj435": {"description": "Tsq6xxQZBGiif91r", "localExt": {"gOdzASMsVBiv6rL3": {}, "ZEZRH0Pkkc62P13I": {}, "tOBeXpRUTmAHfO9F": {}}, "longDescription": "rQ9lwzAWiJH282OI", "title": "iKU7MRx3xefM47As"}, "xVCXefUThoflsBWh": {"description": "nubnROvA1CxkXWIl", "localExt": {"krF4cf9E2pKWkX7e": {}, "t7rl9ow7BDniJH2z": {}, "FRgcuTMYiBESlCYd": {}}, "longDescription": "Nui4AfrJuSaiOYxu", "title": "j6n1UTUHsgjv4O66"}, "qvH38lYKeEiUS3GY": {"description": "xZHMK3ybnM1cQEih", "localExt": {"WjWNwYN6xeNeZMtT": {}, "7f2d2NhlIgGSvbXe": {}, "1Hyw3mylk3Hwg4Wt": {}}, "longDescription": "j5wR9o07ypJFcZro", "title": "i0QeG6cD8trKjrFS"}}, "name": "u4MOj7pBAbAKLICu"}' \
    'RvKGIR3uSMSyy1zY' \
    '8VkZd3qEIVQCbFYV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'UpdateView' test.out

#- 343 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    '3NuJgscT8dY4nux3' \
    'S39sGE4zXVkI5AV7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'DeleteView' test.out

#- 344 GetWalletConfig
$PYTHON -m $MODULE 'platform-get-wallet-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'GetWalletConfig' test.out

#- 345 UpdateWalletConfig
$PYTHON -m $MODULE 'platform-update-wallet-config' \
    '{"enablePaidForVCExpiration": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'UpdateWalletConfig' test.out

#- 346 QueryWallets
eval_tap 0 346 'QueryWallets # SKIP deprecated' test.out

#- 347 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    '[{"creditRequest": {"amount": 95, "expireAt": "1974-11-22T00:00:00Z", "metadata": {"2Tu32ZzATykI3Y8s": {}, "pu5S6I5h9Aa4tLrA": {}, "TtqIhJQruDfpefgG": {}}, "origin": "Playstation", "reason": "q2UC1TCPCsq2BAEz", "source": "REFUND"}, "currencyCode": "m1K6FfhGrYgU3tXT", "userIds": ["mZUKau7dzs6uA891", "BehdYvksiAtxe6Fu", "lcyZTXiAJVwzchoA"]}, {"creditRequest": {"amount": 26, "expireAt": "1982-06-30T00:00:00Z", "metadata": {"j3eSpo6vhwdrFa4n": {}, "pr0qt5yxg5LXtD40": {}, "RsibRBputNAcV0wH": {}}, "origin": "IOS", "reason": "w4OJZ9KRfK3ElT6i", "source": "OTHER"}, "currencyCode": "RZPikticJyIfLP3Q", "userIds": ["V72N58lwa3vXLwnF", "4SvSmMtkqbFFNrsD", "4cYwTyG7sUevPhkY"]}, {"creditRequest": {"amount": 68, "expireAt": "1996-04-12T00:00:00Z", "metadata": {"WvsGZrPVAZ2ZLrDa": {}, "1xpqIziihTn1qm3W": {}, "YY19InV7B8tHIYiW": {}}, "origin": "Steam", "reason": "chnQw6dRB9aYleh3", "source": "PROMOTION"}, "currencyCode": "TY7V3CTRYI1Nyon9", "userIds": ["lvA8o43VZXjofWhP", "Jjqdf6RBiYws6MPq", "sSKy9SsYw3NP5yL2"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'BulkCredit' test.out

#- 348 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    '[{"currencyCode": "qIrhx90T4EDNbgre", "request": {"allowOverdraft": false, "amount": 64, "balanceOrigin": "Other", "balanceSource": "DLC_REVOCATION", "metadata": {"hoEBW0FNQL1GY5CS": {}, "EzZsaak9MNj0mKis": {}, "5KQHhwB99zMKOwz2": {}}, "reason": "mKAvkSzld2vfGrbc"}, "userIds": ["2jP3wtM1fSokFngc", "559mMToWdIIC6lFV", "oAXWUBY9BL1BmvNw"]}, {"currencyCode": "KXwiUQ1QS5fveJC1", "request": {"allowOverdraft": false, "amount": 9, "balanceOrigin": "GooglePlay", "balanceSource": "ORDER_REVOCATION", "metadata": {"cbarmjmzkYQMLffg": {}, "y1mpc59V2qKD8lNq": {}, "4hOjr98OLoHszOId": {}}, "reason": "SWIpaLpZwnDkDw7Z"}, "userIds": ["sI3cSyJGEsS9JnHf", "rilk8Q803RjC4wyc", "gOIphhydYZ7NEwrS"]}, {"currencyCode": "beKOjYbpVv23JUwr", "request": {"allowOverdraft": false, "amount": 90, "balanceOrigin": "Other", "balanceSource": "DLC_REVOCATION", "metadata": {"Kue5lw0m8Evy70CB": {}, "hCstkqyDQrrYVdLY": {}, "uxdWsAQcRaz03FZ9": {}}, "reason": "YTDWnlXZ0fFMUOsM"}, "userIds": ["pn2CnqA45FZIkMYC", "VBjVf2bpiMDOiSWO", "2D6XBEfj5FBqjqha"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'BulkDebit' test.out

#- 349 GetWallet
eval_tap 0 349 'GetWallet # SKIP deprecated' test.out

#- 350 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'CydNQhgapqGnYl69' \
    '8VRGqR2jdN2MQUBk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'SyncOrders' test.out

#- 351 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    '{"allowedPaymentMethods": ["nTnbrD6I10HAKBM6", "6Ig4h5oxaA4ecsKG", "NruoLw9nJkDd0eeH"], "apiKey": "TKcUcujMld5XM0y0", "authoriseAsCapture": false, "blockedPaymentMethods": ["7RGZxhbon95Kr4kA", "BVvvoyJHCJBXauQb", "7rZO3cLAcITU9eaH"], "clientKey": "QK6btDxqspEHxJ7H", "dropInSettings": "IZTmr9S9JzIoTTXK", "liveEndpointUrlPrefix": "TR2Z9P66amF5l35o", "merchantAccount": "naRK2kOt01My99Nz", "notificationHmacKey": "xfq4jTsNihBMEN4c", "notificationPassword": "79eXbUHmcvCVohS9", "notificationUsername": "cZeNhZq7LKZkGycl", "returnUrl": "5oKG2FV9jHnWg7dx", "settings": "8OSOJ9EFaxeDD8oV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'TestAdyenConfig' test.out

#- 352 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    '{"appId": "vwa87YrbanFFARSH", "privateKey": "Maf8ayqvkXvHfj2e", "publicKey": "4dQJLp4KMIcg74z6", "returnUrl": "KA7qyrdGdWMrPtZS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'TestAliPayConfig' test.out

#- 353 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    '{"publicKey": "PUCJfnrl3yUawIX1", "secretKey": "hRJUWYF9TbCR4qGK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'TestCheckoutConfig' test.out

#- 354 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'DebugMatchedPaymentMerchantConfig' test.out

#- 355 TestNeonPayConfig
$PYTHON -m $MODULE 'platform-test-neon-pay-config' \
    '{"apiKey": "gfhTaBBmPDLRa6mz", "webhookSecretKey": "khzzfqsSgeEUzauX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'TestNeonPayConfig' test.out

#- 356 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    '{"clientID": "2BiTkHqFomi9qMKO", "clientSecret": "7v11iTPPXFNeZn2v", "returnUrl": "RR0BflNL8jjbsyHu", "webHookId": "gFLvZcTCEMbloZsr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'TestPayPalConfig' test.out

#- 357 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    '{"allowedPaymentMethodTypes": ["rwFc43BEFzGxzXRz", "9ek9cTfklLvhREHX", "R9ZyR0gYn2o0UsgX"], "publishableKey": "0kqqfQGB8T8wu0Hy", "secretKey": "qob2hEKozEd4P5Au", "webhookSecret": "q8Vd4w6txSKD5jHX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'TestStripeConfig' test.out

#- 358 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    '{"appId": "Ot6NIhH6zSxo8OYo", "key": "hg3GlW72bmWwgdGm", "mchid": "7u6jzl05VURHB2aH", "returnUrl": "1OBjSbRTbA5ngX8n"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'TestWxPayConfig' test.out

#- 359 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    '{"apiKey": "Mk5seGmbg5yaV5Lt", "flowCompletionUrl": "dtmXxubnK90It1WE", "merchantId": 32, "projectId": 50, "projectSecretKey": "Bd8W8yL5eZhTnha9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'TestXsollaConfig' test.out

#- 360 GetPaymentMerchantConfig1
$PYTHON -m $MODULE 'platform-get-payment-merchant-config-1' \
    'eiJsMlXtygrzG2QU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'GetPaymentMerchantConfig1' test.out

#- 361 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '{"allowedPaymentMethods": ["ljK667R7aO0dO8De", "9iVlq9yqguKMz482", "n0E7GAZv2XPO8DiN"], "apiKey": "cJaVwdWa2ZFc4YAf", "authoriseAsCapture": true, "blockedPaymentMethods": ["iKsMRzrkq6bbxROX", "48x3z6oqsbyJVZin", "LIVPccaYI6l6fKrV"], "clientKey": "A93qreneWTQ0fb8C", "dropInSettings": "lHBQXSaPIU1SAfAf", "liveEndpointUrlPrefix": "Ezm7orhTTcA4tRZd", "merchantAccount": "rCvasM0LBo8pp2Wx", "notificationHmacKey": "zCDgXIN2T2y2ghUM", "notificationPassword": "22Sodo4xBNE56wEz", "notificationUsername": "4NNeslnTClsU2sYS", "returnUrl": "fcMmI5rwQFFHJVtc", "settings": "0SoSjcBoYhfbT5F3"}' \
    'zL27szSOYd9Y0NpV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'UpdateAdyenConfig' test.out

#- 362 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'E2aa5kTg04QRdr4b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'TestAdyenConfigById' test.out

#- 363 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '{"appId": "KBKfiq3tQENj55DM", "privateKey": "rhcrF1L6pYsesFql", "publicKey": "7XfSkThfq5OwxwX5", "returnUrl": "1WDxmrewNJafvdNv"}' \
    'KldM0rekJkWWoqwG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'UpdateAliPayConfig' test.out

#- 364 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'Qqu93mWqYwItRTQV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'TestAliPayConfigById' test.out

#- 365 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '{"publicKey": "KkxYEWAJyifVsl4t", "secretKey": "sCWoX1lSzPYNF01L"}' \
    'ahplx2xZlabLjqUb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'UpdateCheckoutConfig' test.out

#- 366 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'KYZvrSL9MpXegzbR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'TestCheckoutConfigById' test.out

#- 367 UpdateNeonPayConfig
$PYTHON -m $MODULE 'platform-update-neon-pay-config' \
    '{"apiKey": "yBVxsaUZTA9CH16Z", "webhookSecretKey": "XEFNNpDyHgAVhWg8"}' \
    'tkRHubWYDMejv14b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'UpdateNeonPayConfig' test.out

#- 368 TestNeonPayConfigById
$PYTHON -m $MODULE 'platform-test-neon-pay-config-by-id' \
    'J1yJTjZ8h4Ac4ud5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'TestNeonPayConfigById' test.out

#- 369 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '{"clientID": "1aru34XxqVeNlhPS", "clientSecret": "Gr2GCSBlAc1QqeDA", "returnUrl": "ODDXDcBp0Zm4J2X1", "webHookId": "YZBUriOMFSlzu34W"}' \
    'p4oAMBx4SopAgGjV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'UpdatePayPalConfig' test.out

#- 370 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'mLARmen8aoqlm2gZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'TestPayPalConfigById' test.out

#- 371 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '{"allowedPaymentMethodTypes": ["ZIIdtBLCiRje56hQ", "O7iHYTWfraJoGjzd", "E2Gt5Lh1PoGhJQuo"], "publishableKey": "TumHMIWouH7UIIac", "secretKey": "TNGavk8lWCQSbPCA", "webhookSecret": "cqI35Kja3aQgfShT"}' \
    'gH7QU5U5VKMgof3s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'UpdateStripeConfig' test.out

#- 372 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'bQFx7poAiVGM1Z1a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'TestStripeConfigById' test.out

#- 373 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    '{"appId": "MlYKe0aIgnVNiSDk", "key": "2FZXq6OW9kp9JuO0", "mchid": "Qscn1hnFXSNkph88", "returnUrl": "N5XYagYLLaUNG3D8"}' \
    'lKkUzgYxPns7F4XR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'UpdateWxPayConfig' test.out

#- 374 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'UTiU2cKn41r9o0qD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'UpdateWxPayConfigCert' test.out

#- 375 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'qNegcfIRO7qY6MNS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'TestWxPayConfigById' test.out

#- 376 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    '{"apiKey": "v6eRNd4FbsuGGAOC", "flowCompletionUrl": "vNpKR5WiIdTzoKek", "merchantId": 72, "projectId": 51, "projectSecretKey": "LEeOTaHP4LtwjLUY"}' \
    'UJQk80tPmdgSg2KT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'UpdateXsollaConfig' test.out

#- 377 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'H1uoBUpdqwNpqsh9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'TestXsollaConfigById' test.out

#- 378 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    'oXEL1xP0tQEooU04' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'UpdateXsollaUIConfig' test.out

#- 379 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'QueryPaymentProviderConfig' test.out

#- 380 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    '{"aggregate": "STRIPE", "namespace": "qNyFFoN9kFG7qVot", "region": "9rEFUcFqi9IXEnoj", "sandboxTaxJarApiToken": "jP0c29b1WNB9WkCy", "specials": ["ADYEN", "NEONPAY", "PAYPAL"], "taxJarApiToken": "Ri2vfZMlKU7yv9DA", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'CreatePaymentProviderConfig' test.out

#- 381 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'GetAggregatePaymentProviders' test.out

#- 382 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'DebugMatchedPaymentProviderConfig' test.out

#- 383 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'GetSpecialPaymentProviders' test.out

#- 384 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    '{"aggregate": "ADYEN", "namespace": "z872allb2jaRoKBx", "region": "DcndYM9mz3tE3VsE", "sandboxTaxJarApiToken": "wkafcV7jvya0krMP", "specials": ["XSOLLA", "ADYEN", "ADYEN"], "taxJarApiToken": "AtASkEknQOBTBGEd", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    'IxOt6CxiNDALftVY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'UpdatePaymentProviderConfig' test.out

#- 385 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'MBY66nz5wiI9Utoj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'DeletePaymentProviderConfig' test.out

#- 386 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'GetPaymentTaxConfig' test.out

#- 387 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    '{"sandboxTaxJarApiToken": "zAhVtlXb0Ww9cX9q", "taxJarApiToken": "D3up8zSqbSAJ6bSZ", "taxJarEnabled": true, "taxJarProductCodesMapping": {"4XU6HXjJ8oZkH55s": "6PT6eXj6a4a2T55J", "Sy63UIiICbL0NSbX": "YXl80IXa09qvdnZb", "UJ9uSIJAuvbRoyVK": "QWhRCa4MeqaWAGnt"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'UpdatePaymentTaxConfig' test.out

#- 388 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'Ki5VcfdJHSQ99Mzs' \
    'mCz9csPD3mAixnTR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'SyncPaymentOrders' test.out

#- 389 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicGetRootCategories' test.out

#- 390 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'DownloadCategories' test.out

#- 391 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'CntYAOhAPz9lCMI8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicGetCategory' test.out

#- 392 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'Jae96k6wPIbIRIji' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicGetChildCategories' test.out

#- 393 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'Yukur4iEhlcmn3nM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicGetDescendantCategories' test.out

#- 394 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicListCurrencies' test.out

#- 395 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'GeDLCDurableRewardShortMap' test.out

#- 396 GetAppleConfigVersion
$PYTHON -m $MODULE 'platform-get-apple-config-version' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'GetAppleConfigVersion' test.out

#- 397 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'GetIAPItemMapping' test.out

#- 398 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'TMwxUt8Wn0bPEgnV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicGetItemByAppId' test.out

#- 399 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicQueryItems' test.out

#- 400 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'esvMZCUgM3yTN4uu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicGetItemBySku' test.out

#- 401 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'J6Vj8z7NX74cqoA0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicGetEstimatedPrice' test.out

#- 402 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'EYfSvI7eknvgQgx9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicBulkGetItems' test.out

#- 403 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    '{"itemIds": ["Q8w3YQS19mKC8Pt6", "4Un3vbUiPzqRlG9b", "lKnrHstZmSBos9B4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicValidateItemPurchaseCondition' test.out

#- 404 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'FBRgTZf5xSoV4NMr' \
    'EB2tJwa8TyyPnCtN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicSearchItems' test.out

#- 405 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'FzlKslVxaomke2UP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicGetApp' test.out

#- 406 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'riXGZvs3NmW1Oq88' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicGetItemDynamicData' test.out

#- 407 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'IVmlOYuPb1aUarkc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicGetItem' test.out

#- 408 GetPaymentCustomization
eval_tap 0 408 'GetPaymentCustomization # SKIP deprecated' test.out

#- 409 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    '{"neonPayConfig": {"cancelUrl": "4H54D1OSJ3cWczEE", "successUrl": "GO3c34uFmlM5vFoc"}, "paymentOrderNo": "ITDTP5pBOko0gsrX", "paymentProvider": "NEONPAY", "returnUrl": "0OKZeelU0xovCm2Y", "ui": "CueyfFOVTaSJ3nJL", "zipCode": "nkD8LYM65VLZiKm1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicGetPaymentUrl' test.out

#- 410 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    '5hez2MgriZ60A9qK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicGetPaymentMethods' test.out

#- 411 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'ACSJnrZAWDQGJdqa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicGetUnpaidPaymentOrder' test.out

#- 412 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '{"token": "Q6yjAOKmxscQRCmb"}' \
    'WTm1PRgpzXRHuGgW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'Pay' test.out

#- 413 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'oSnSmEo0dL02zFId' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicCheckPaymentOrderPaidStatus' test.out

#- 414 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'WALLET' \
    'RICQMUv3sTgdlBfa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'GetPaymentPublicConfig' test.out

#- 415 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'aTSjUYSCaN626bkQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicGetQRCode' test.out

#- 416 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'htz2puGKoDDkN6vS' \
    'K5KlUCrFmKMrNHOU' \
    'WALLET' \
    '5Bqtu3c7SadVYWuZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicNormalizePaymentReturnUrl' test.out

#- 417 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'Yb5azP3Bn1T6t1Gt' \
    'ADYEN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'GetPaymentTaxValue' test.out

#- 418 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'n2hSKKZvM4WSz7P7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'GetRewardByCode' test.out

#- 419 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'QueryRewards1' test.out

#- 420 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'y5q6uDaCx8hxTiqp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'GetReward1' test.out

#- 421 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicListStores' test.out

#- 422 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicExistsAnyMyActiveEntitlement' test.out

#- 423 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'ntZvRypScQ8aIsbo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 424 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'qQidXJhhgBD6TwYN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 425 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'vWLRH2T1hELaFk76' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 426 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicGetEntitlementOwnershipToken' test.out

#- 427 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    '{"gameId": "mJbRjfhXvXWtnbIy", "language": "JVjW_SXbS", "region": "EExJQvJmELMA89ix"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'SyncTwitchDropsEntitlement' test.out

#- 428 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'WjkF5JwpR9Zt9Phw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'PublicGetMyWallet' test.out

#- 429 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'k7ORkQcyu5lxJ66H' \
    --body '{"epicGamesJwtToken": "GJ8Ih3lT8pzoI46P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'SyncEpicGameDLC' test.out

#- 430 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'cpuwiYC0cysoxUGX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'SyncOculusDLC' test.out

#- 431 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'NjS5quHgrhtzk9E9' \
    --body '{"serviceLabel": 4}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'PublicSyncPsnDlcInventory' test.out

#- 432 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    '0hzuPPRNn7bSYv9F' \
    --body '{"serviceLabels": [50, 20, 55]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 433 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    '{"appId": "PATOx8N4N4Dg5mDZ", "steamId": "yNmi9Nee8E16CJUR"}' \
    'xlwSvm0n7bp88FcF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'SyncSteamDLC' test.out

#- 434 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'KPGv9PMYogmUVrSe' \
    --body '{"xstsToken": "pOEo9ODEl88lSj9W"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'SyncXboxDLC' test.out

#- 435 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    '9Qui3Qm0WGaMwhFT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicQueryUserEntitlements' test.out

#- 436 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'Q6M5yBhQNfv11khO' \
    'gEX8q4XcyM1quCP7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserAppEntitlementByAppId' test.out

#- 437 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'gHWdrdkbXfhVXJ7M' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicQueryUserEntitlementsByAppType' test.out

#- 438 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    'tV0KHq6VsfzrlaPz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserEntitlementsByIds' test.out

#- 439 PublicGetUserEntitlementByItemId
eval_tap 0 439 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 440 PublicGetUserEntitlementBySku
eval_tap 0 440 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 441 PublicUserEntitlementHistory
$PYTHON -m $MODULE 'platform-public-user-entitlement-history' \
    'FVXIZH0z8HSYc270' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 441 'PublicUserEntitlementHistory' test.out

#- 442 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    '6OUmcszJVLPq9854' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'PublicExistsAnyUserActiveEntitlement' test.out

#- 443 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'qsjR0aEzhzFlD1ug' \
    'lEn1NwYqSpioGwh9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 444 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'SWxNzQ3DzIEearFr' \
    'FMIeo9PYRTxSprB0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 445 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'BtuiJEqmbaRx6F3i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 446 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'ux9udWaDYHSt1EEi' \
    'fnuSTtCN8i2tS7rA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 447 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'MAxwXuiaHCNLmnlR' \
    'PStXhqg4XeI32fET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlement' test.out

#- 448 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "options": ["AqdEBkZiYj6o1GSa", "6NGHHLhyP7oboUMl", "vsFaoUMm7qtHKySX"], "requestId": "XtUEByVbF44ZXRI1", "useCount": 96}' \
    'uwQ0r4tGUp00rMLZ' \
    '1eTfmUwkGYQeInkH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 448 'PublicConsumeUserEntitlement' test.out

#- 449 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    '{"requestId": "cPjNEn2se1yYqxys", "useCount": 39}' \
    '75jV5cXedykx4piM' \
    'tnYep4qMEijH07e7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 449 'PublicSellUserEntitlement' test.out

#- 450 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 72}' \
    'PYRRVlqfGGWhPklP' \
    'uT3em9Iz42YFoIyM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 450 'PublicSplitUserEntitlement' test.out

#- 451 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    '{"entitlementId": "4jQ307TKpWz4d2ui", "metadata": {"operationSource": "INVENTORY"}, "useCount": 58}' \
    'Ss0ypsuzcbl4Dtn3' \
    '2tNBisbkvUfmhkAH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 451 'PublicTransferUserEntitlement' test.out

#- 452 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '{"code": "dGDOTSucllEURtdq", "language": "pA-sKWZ-Ab", "region": "iZO9uil887oHlefk"}' \
    'OBCLDC1UuFwhyu1I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 452 'PublicRedeemCode' test.out

#- 453 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '{"excludeOldTransactions": false, "language": "Mm", "productId": "OY5Hn3skPtxMwqAH", "receiptData": "jAkfGd2BO7RPYaAC", "region": "BMfO0XbcSowirO9a", "transactionId": "d7UJNTw4TVlSOA7h"}' \
    'qkUzpJrfvCl5rW53' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 453 'PublicFulfillAppleIAPItem' test.out

#- 454 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    '0yMjnntV6lxz46ln' \
    --body '{"epicGamesJwtToken": "Mr9kgHzpU1KgX7tx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 454 'SyncEpicGamesInventory' test.out

#- 455 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '{"autoAck": false, "autoConsume": true, "language": "ygf", "orderId": "ELz081Q4jTsZOfif", "packageName": "LFOXzxoLgAvBNsJ2", "productId": "ndqYrqlR22SxGw0B", "purchaseTime": 57, "purchaseToken": "5BHryGVAVHgXTySx", "region": "0ui9SG992PUNJjyB", "subscriptionPurchase": false}' \
    'Y5q2zpchS4nABQWx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 455 'PublicFulfillGoogleIAPItem' test.out

#- 456 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    '7hXtj4En87TJ2E3g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 456 'SyncOculusConsumableEntitlements' test.out

#- 457 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'IQhGe5QDctKW2dDM' \
    --body '{"currencyCode": "adFf2HvnNcdQko24", "price": 0.557490580689339, "productId": "rllBLgRbKXSWc1Fj", "serviceLabel": 4}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 457 'PublicReconcilePlayStationStore' test.out

#- 458 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    '{"currencyCode": "kaWDqUU627KpJnSn", "price": 0.6737384252417576, "productId": "zwlgrOizTeAjnOyP", "serviceLabels": [72, 81, 3]}' \
    'c6MVnZY8ef430plD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 458 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 459 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '{"appId": "AbJOGJnISwkoUkED", "currencyCode": "T2ZbXq2jUheXRiR9", "language": "diE-zJlr-pu", "price": 0.19957041280604837, "productId": "u2ptkKPy0GiWFWBk", "region": "FOuRT7ullmbE3Pg5", "steamId": "tjXYlq6UHrZrPFUu"}' \
    'fhemqcYTjPlHf8VE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 459 'SyncSteamInventory' test.out

#- 460 SyncSteamAbnormalTransaction
$PYTHON -m $MODULE 'platform-sync-steam-abnormal-transaction' \
    'uKiETikSvZCHvMYN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 460 'SyncSteamAbnormalTransaction' test.out

#- 461 SyncSteamIAPByTransaction
$PYTHON -m $MODULE 'platform-sync-steam-iap-by-transaction' \
    '{"orderId": "oHqAWl82R5St1JUU"}' \
    'oBHxMWnM14FYcClC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 461 'SyncSteamIAPByTransaction' test.out

#- 462 PublicQueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-public-query-user-third-party-subscription' \
    'STADIA' \
    'wN753otU8VIKaNC4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 462 'PublicQueryUserThirdPartySubscription' test.out

#- 463 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    '{"gameId": "jAc6zZYFC0mjfQGt", "language": "kCQG-WNCi", "region": "bteulJ0qmAMOxQN2"}' \
    'tq3ANW3j2knM82Js' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 463 'SyncTwitchDropsEntitlement1' test.out

#- 464 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    '3MYpXMKKRnnXfC8i' \
    --body '{"currencyCode": "y9QcGEKMT2TWw1dh", "price": 0.1228160935889816, "productId": "6B7sXyB9QdOnACUx", "xstsToken": "cSQbRzuOGQIMxFKi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 464 'SyncXboxInventory' test.out

#- 465 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'XXSc289Q3xFWRYnN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 465 'PublicQueryUserOrders' test.out

#- 466 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '{"currencyCode": "SH7Ya78hgQeKzeNX", "discountCodes": ["adROUnBOxtwqDhMv", "blD46siktYX4HICm", "1vTtS6sumfKR96tu"], "discountedPrice": 7, "ext": {"szETGuWESPDCrsw8": {}, "wGhpJWYgTBMAqnV7": {}, "TlTDpCts9eLzVbQm": {}}, "itemId": "MiR5z2zAUSTeMo4h", "language": "WD", "price": 98, "quantity": 59, "region": "7tlGmSltmTF1Rc4F", "returnUrl": "RD9FCFOkoXzSvPYq", "sectionId": "CnSDUDcwHGbx7ME3"}' \
    'dwQ3jZw3dvKpTh9t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 466 'PublicCreateUserOrder' test.out

#- 467 PublicPreviewOrderPrice
$PYTHON -m $MODULE 'platform-public-preview-order-price' \
    '{"currencyCode": "3eP83oVzLj603LYJ", "discountCodes": ["S8uJAsbAxWxy80ok", "G09eH9Vq6reV8sJe", "nmheK5KKqE1aHxZg"], "discountedPrice": 49, "itemId": "wLhUrgmZNHpDHS67", "price": 8, "quantity": 71}' \
    'thQsFwNMAKYBTBZk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 467 'PublicPreviewOrderPrice' test.out

#- 468 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'ulsLmecCWLGmhIZe' \
    'ZanP0VcMDpu1IFvz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 468 'PublicGetUserOrder' test.out

#- 469 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    '6lS0e11XX6rxljZ4' \
    'aKEWT3it8CuVPPqz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 469 'PublicCancelUserOrder' test.out

#- 470 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'B1bxGCZTRsbLMecw' \
    'QkE2St3jReFAEQ1w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserOrderHistories' test.out

#- 471 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'UcmmNn9QvtiE6T5R' \
    'o5OB4S56HA4d8Wj6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 471 'PublicDownloadUserOrderReceipt' test.out

#- 472 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    '2EGWzEbs46rc22tQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 472 'PublicGetPaymentAccounts' test.out

#- 473 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'Qij2Hme0GGfP6uyt' \
    'paypal' \
    'YPpkUsIxAMvQ0TYy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 473 'PublicDeletePaymentAccount' test.out

#- 474 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'ioYSsqvixE24A0MB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 474 'PublicListActiveSections' test.out

#- 475 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'ZILiVJpRPjbkDPIc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 475 'PublicQueryUserSubscriptions' test.out

#- 476 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    '{"currencyCode": "5VKxCJv2JADKAlbi", "itemId": "wvSCh7gGsouhPkDu", "language": "ZVEe_HOfb_tu", "region": "40JxsNUjSVGhlo6B", "returnUrl": "JVxNK6m3dLvKKvOe", "source": "LQJ1DfSJm9R8uKJW"}' \
    'vSyKtpPL665Va0hL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 476 'PublicSubscribeSubscription' test.out

#- 477 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    's3hBUqY3Yu7hr4BX' \
    'CjFsJCGWDLfbEBX1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 477 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 478 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'fDFq8rcYfG8Z9PgW' \
    'jy2W7npJxp6vrbIU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 478 'PublicGetUserSubscription' test.out

#- 479 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'XHWViHiwgQxiaDuZ' \
    'wYsAt9fGKNjmyiX8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 479 'PublicChangeSubscriptionBillingAccount' test.out

#- 480 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '{"immediate": true, "reason": "UiShlx9Pk08ti5dm"}' \
    '4vsmWwxeV5ju6lVC' \
    '5woVY5O6TlfNRSaY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 480 'PublicCancelSubscription' test.out

#- 481 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'yKg9YnuBSXnOHRbF' \
    '4YesbUpxGfZJIyif' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 481 'PublicGetUserSubscriptionBillingHistories' test.out

#- 482 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'vwmr3YdfXLG9siT3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 482 'PublicListViews' test.out

#- 483 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'PGKK823NQr5vYDp1' \
    '6dqn25YYaUnMns2r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 483 'PublicGetWallet' test.out

#- 484 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'AgvMe8884Dt7OWin' \
    'Iu82m9kXRKvyQzli' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 484 'PublicListUserWalletTransactions' test.out

#- 485 PublicGetMyDLCContent
$PYTHON -m $MODULE 'platform-public-get-my-dlc-content' \
    'STEAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 485 'PublicGetMyDLCContent' test.out

#- 486 QueryFulfillments
$PYTHON -m $MODULE 'platform-query-fulfillments' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 486 'QueryFulfillments' test.out

#- 487 QueryItemsV2
$PYTHON -m $MODULE 'platform-query-items-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 487 'QueryItemsV2' test.out

#- 488 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 488 'ImportStore1' test.out

#- 489 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    '0IafEeZiiyd7fv9B' \
    --body '{"itemIds": ["MDJjJPbrYcp304cH", "si4N013hrlkY0fX6", "m0y4oC4cK1B2rFxE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 489 'ExportStore1' test.out

#- 490 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    '{"entitlementCollectionId": "peruU9eQbEZT9w60", "entitlementOrigin": "Nintendo", "metadata": {"YcGu5NpJQGVsYAcn": {}, "wttayXhbtq3oxkWk": {}, "WZM6QqbW0t691SXQ": {}}, "origin": "Oculus", "rewards": [{"currency": {"currencyCode": "k7CFpTd1Fy4galHY", "namespace": "LWoM0gqpktaqz3Ri"}, "item": {"itemId": "z5qKt4QbzYc1vSzF", "itemName": "ONRBPloB0ASE8UJr", "itemSku": "7JwsZBUsRaw0PY6G", "itemType": "9sLHzVEFhnhT9rEF"}, "quantity": 74, "type": "CURRENCY"}, {"currency": {"currencyCode": "3sHMoD0LY4fDRrTT", "namespace": "Mj0kVB2KgmSqpxVM"}, "item": {"itemId": "x6QY29ePH3F68SIK", "itemName": "aFfiPoFVLQtdZIql", "itemSku": "nvafBWIGruii3Qdm", "itemType": "RaNDlR1T3oWQcENh"}, "quantity": 45, "type": "CURRENCY"}, {"currency": {"currencyCode": "dIRZ2k23rtJU0TZT", "namespace": "wgZLJPddQRq4snlp"}, "item": {"itemId": "fQTa0wBlJwb8gc7E", "itemName": "IBJIKoubLJP5UIfh", "itemSku": "GfCHQ5GTdjvw8KQZ", "itemType": "00gJM1CfnjdHJX3y"}, "quantity": 58, "type": "ITEM"}], "source": "EXPIRATION", "transactionId": "6mO1Q9vB9Rk5lE0j"}' \
    'BagsqbYaDkTPschf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 490 'FulfillRewardsV2' test.out

#- 491 FulfillItems
eval_tap 0 491 'FulfillItems # SKIP deprecated' test.out

#- 492 RetryFulfillItems
eval_tap 0 492 'RetryFulfillItems # SKIP deprecated' test.out

#- 493 RevokeItems
eval_tap 0 493 'RevokeItems # SKIP deprecated' test.out

#- 494 V2PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-v2-public-fulfill-apple-iap-item' \
    'Q2CAJpaYZ5XmkLff' \
    --body '{"transactionId": "tq8TtIM2PLDNr5Ok"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 494 'V2PublicFulfillAppleIAPItem' test.out

#- 495 FulfillItemsV3
$PYTHON -m $MODULE 'platform-fulfill-items-v3' \
    '{"items": [{"duration": 80, "endDate": "1971-12-31T00:00:00Z", "entitlementCollectionId": "PfHkAIPuvmuzR0bw", "entitlementOrigin": "Nintendo", "itemId": "mv7u1YlkQNEVsJzU", "itemSku": "PCRam34YuUk280Bx", "language": "AxexZB4EErArsCAR", "metadata": {"mVlNfne35Jx8S9YC": {}, "iABOEkZ1hv7zx2tj": {}, "ZUmB7W0EhLgAiPA3": {}}, "orderNo": "yIE2iRHDV6KTBcyq", "origin": "Playstation", "quantity": 50, "region": "gjLhYxqBLkJqCtqM", "source": "PURCHASE", "startDate": "1995-05-16T00:00:00Z", "storeId": "346MJE2Z5gvfvhJo"}, {"duration": 87, "endDate": "1977-03-30T00:00:00Z", "entitlementCollectionId": "KTnc70J3JNzhUB7B", "entitlementOrigin": "Epic", "itemId": "ZC7HKktfQ6izlwJt", "itemSku": "4IiNBTayfr2v76Ux", "language": "MaLP7RdiZOl8iPlK", "metadata": {"L1fE7RH7T598FVz8": {}, "8R6CZzwdLFexMsFU": {}, "Bv4AFzMvefUJf082": {}}, "orderNo": "K6GVUNdcW7dNRHWk", "origin": "Playstation", "quantity": 1, "region": "YwtCmTIookYhYfhF", "source": "OTHER", "startDate": "1988-04-09T00:00:00Z", "storeId": "TllMN3QVCfIhWW0t"}, {"duration": 62, "endDate": "1993-03-03T00:00:00Z", "entitlementCollectionId": "DKkx4iquJNnPR6iz", "entitlementOrigin": "Epic", "itemId": "R8QGt6XnnlPMZif0", "itemSku": "yzj91ngcFk1baeHV", "language": "AJRjpW2of6fPBUud", "metadata": {"pBxjdBKusUy7Jasy": {}, "pzINO8hMgCgu7sNK": {}, "6cJUj06aJReifO1o": {}}, "orderNo": "QKqILibtG6MbnP79", "origin": "GooglePlay", "quantity": 99, "region": "l3Kb1CkI9RZfaGRA", "source": "SELL_BACK", "startDate": "1985-08-13T00:00:00Z", "storeId": "hq4MfYlNV4JpSajr"}]}' \
    'b3kPqQwgme45avoS' \
    '9lAap4MA8Sr2sPgH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 495 'FulfillItemsV3' test.out

#- 496 RetryFulfillItemsV3
$PYTHON -m $MODULE 'platform-retry-fulfill-items-v3' \
    'tfv4c99ySk8XEGR8' \
    'Q2ObtJj6xqptF3qX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 496 'RetryFulfillItemsV3' test.out

#- 497 RevokeItemsV3
$PYTHON -m $MODULE 'platform-revoke-items-v3' \
    'ZXFqaZPqlvbjyBz6' \
    'AbtYb7GaKj6QP6jh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 497 'RevokeItemsV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
