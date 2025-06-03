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
platform-update-catalog-config '{"enableInventoryCheck": true, "itemDeletionCheckConfig": ["REWARD", "ENTITLEMENT"]}' --login_with_auth "Bearer foo"
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
platform-get-dlc-item-config-history 'X7W40V6Do5sYadCC' --login_with_auth "Bearer foo"
platform-restore-dlc-item-config-history 'FrHHC3DpZxkrQDXu' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config '{"data": [{"autoUpdate": true, "id": "UcqsuGKHhMRWLVd3", "rewards": [{"currency": {"currencyCode": "DlhLuIpomM8sm1Mi", "namespace": "aI1mX2tJoARtdbBe"}, "item": {"itemId": "7udsMrok0WvGYYnx", "itemName": "4V709xbnGezKsDwG", "itemSku": "2omOR2nvYI9TVqJd", "itemType": "vzcWbfUpaXp5JMl5"}, "quantity": 77, "type": "ITEM"}, {"currency": {"currencyCode": "L4bTxBmZjdrrIxsB", "namespace": "0NRsB1fPqqRRulpq"}, "item": {"itemId": "pymDkQhtrHWwRVnw", "itemName": "VBOqOHi8pWGd1juY", "itemSku": "hiqjRJOqB5F93zFQ", "itemType": "bJndUDpdONneAczb"}, "quantity": 57, "type": "CURRENCY"}, {"currency": {"currencyCode": "dHb2slt71B1SmZp2", "namespace": "JZp50CnPb71ORYcm"}, "item": {"itemId": "QbTU5JX8ccLjMXJR", "itemName": "k0eaKQDOJvrTefgl", "itemSku": "Ss6g4iY9u02aCNYI", "itemType": "Wekp18lOC3mNqF7B"}, "quantity": 24, "type": "ITEM"}], "rvn": 23}, {"autoUpdate": true, "id": "cghVHfPEspxwhRON", "rewards": [{"currency": {"currencyCode": "0bc1eMbEIjowLqc3", "namespace": "ecjXJbZDKKoxLE1Y"}, "item": {"itemId": "3Dymtj3giPg4x4yi", "itemName": "PX6ues1Hhhkg1yLV", "itemSku": "bLFzHEP8cM4NTwr0", "itemType": "KHaAsmTej52WKi6t"}, "quantity": 54, "type": "ITEM"}, {"currency": {"currencyCode": "awQUWDFJvJBWic7U", "namespace": "kBeIXuqDuAXI66bQ"}, "item": {"itemId": "71w0deoV9Lx5RDA1", "itemName": "l2XcrciYNEzvSZIP", "itemSku": "khSgORcz5S5BvmgB", "itemType": "Lxh4ijFnE3Tam69q"}, "quantity": 92, "type": "ITEM"}, {"currency": {"currencyCode": "Z7PC6f6QkmZXElW9", "namespace": "YfRSse6AAz3S4czz"}, "item": {"itemId": "0QKFlAVmVLu4AOec", "itemName": "0z8eBeeoip68J1ns", "itemSku": "v4W2OJhtafxMSJlH", "itemType": "eb34sZKHcl5LLLOe"}, "quantity": 48, "type": "ITEM"}], "rvn": 76}, {"autoUpdate": true, "id": "4fZvWtND2tcBFpX8", "rewards": [{"currency": {"currencyCode": "lNtFEJ7tnkY6Mca5", "namespace": "afj12K2IzrBvvWm4"}, "item": {"itemId": "udE0OXudXgNne8kJ", "itemName": "ATwlc6esUp6Sw1I9", "itemSku": "8jeZQ7hfxnhLd3Kn", "itemType": "aknoed9DHhLOqQGh"}, "quantity": 58, "type": "CURRENCY"}, {"currency": {"currencyCode": "Ur6iTrjyEgarAdNJ", "namespace": "OIG36I6tRbRcrEve"}, "item": {"itemId": "MdAdiPKDUVSC00PY", "itemName": "eDcagginxnFIna3y", "itemSku": "ddcbsPheTH26IUJN", "itemType": "vYuGRUvpZaHCuESO"}, "quantity": 16, "type": "CURRENCY"}, {"currency": {"currencyCode": "IZsMfB4ZH3mtgWgU", "namespace": "4pCAKxeE70CaunQN"}, "item": {"itemId": "xot371W9G4AvQkqs", "itemName": "Gnmyo5JJTUVmb8GE", "itemSku": "XFTlEMEsFzYqwgK1", "itemType": "Np5nodqpLm7FhJBN"}, "quantity": 51, "type": "ITEM"}], "rvn": 54}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"s6XNbjvqhnUVLWu8": "olKdxL6ozRmDD0jJ", "vlfV5OemPYdYT7DR": "OCjtuzFMbAG9YI89", "hmguB8FOTjMLo4b9": "rIzqYkEpstyVTBcr"}}, {"platform": "XBOX", "platformDlcIdMap": {"59e0k5ZtX6wK7PpU": "lcIW32iK7MGt1ixY", "5rA1WoVeJIePF8Zr": "QzP4zvtdxdbZUpd6", "FJtHJ1pyVwyKQLY6": "FEO65Rb3z7CYLM8I"}}, {"platform": "OCULUS", "platformDlcIdMap": {"s7QBlk44Z44B1GZg": "Kg4uKxaCgcGLuC3b", "rWdTYCfHkIySok5D": "iXZtLW87rGysryod", "3dNQrmsApRA6HX3R": "wrKt2ecozL0TOg54"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements-1 --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-enable-entitlement-origin-feature --login_with_auth "Bearer foo"
platform-get-entitlement-config-info --login_with_auth "Bearer foo"
platform-grant-entitlements '{"entitlementGrantList": [{"collectionId": "vCE48L5oLF6M4lNa", "endDate": "1976-10-20T00:00:00Z", "grantedCode": "opAywelu01nryEJ0", "itemId": "NqoTow0qiOiC4j0i", "itemNamespace": "ktm0ZPLkLOsp0LZ5", "language": "ZK", "metadata": {"6Hl8kUXzt6bSc6bW": {}, "vgpVyW9dD1kOmvrA": {}, "ejcq2LgkQuaS7RBx": {}}, "origin": "Steam", "quantity": 44, "region": "74HUtipUWYhWV1qx", "source": "REFERRAL_BONUS", "startDate": "1991-07-28T00:00:00Z", "storeId": "WA8NjxOnaEok4nOO"}, {"collectionId": "CzfsflhjbngJOUn1", "endDate": "1971-09-29T00:00:00Z", "grantedCode": "OJtxqMPpcVfRwNj5", "itemId": "47fH0XrKEDpEY8Vn", "itemNamespace": "ocGAjci0V3tBf2jn", "language": "Thxl-rHQN", "metadata": {"bKPFMycMSQ4qfAac": {}, "R0LgB5BUXvjcu2s6": {}, "w3VifnKqmTSoGH1X": {}}, "origin": "Steam", "quantity": 66, "region": "fY6QAYn6WQ5UBEU1", "source": "REDEEM_CODE", "startDate": "1987-11-26T00:00:00Z", "storeId": "WdsbYuVEGVxYheR3"}, {"collectionId": "j5mNZ6vwv7K8Asvt", "endDate": "1998-02-08T00:00:00Z", "grantedCode": "j1Rx59hesNWy2NvZ", "itemId": "85DDKDAF8KDsBZOu", "itemNamespace": "YQJ03BAHZ7c53q7a", "language": "ho", "metadata": {"cmnnx6RVBrop9v7a": {}, "ZK3h65hbN15zfQSf": {}, "QrtfF3TQN0OcNDLr": {}}, "origin": "Oculus", "quantity": 63, "region": "vzohZyjMQAg5mPYh", "source": "PROMOTION", "startDate": "1979-11-08T00:00:00Z", "storeId": "ysFO3Zvc1BZG99Ly"}], "userIds": ["ffoflEIByYqeKN0m", "vfvHEsJKQQewVLMU", "oAnaRcYp7FUjfIGa"]}' --login_with_auth "Bearer foo"
platform-revoke-entitlements --body '["eGelYF5wWaDhukU4", "khGG4vZFTYnPkmSu", "4PWam1jxR7SETWjt"]' --login_with_auth "Bearer foo"
platform-get-entitlement 'eoc8fgvZDDhoO05o' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-query-iap-clawback-history --login_with_auth "Bearer foo"
platform-mock-play-station-stream-event --body '{"body": {"account": "KqymxLD1Lcvw6T6m", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 24, "clientTransactionId": "EiwxxElpMYSWIeVz"}, {"amountConsumed": 25, "clientTransactionId": "hTHeh94TSenE5hCF"}, {"amountConsumed": 21, "clientTransactionId": "0RY2VN4ZONJREdUQ"}], "entitlementId": "3z9F1BxNNgnke4ak", "usageCount": 27}, {"clientTransaction": [{"amountConsumed": 28, "clientTransactionId": "cw7wu9TmXfJWBPrx"}, {"amountConsumed": 60, "clientTransactionId": "Ns8eLzYEvwSWTaLQ"}, {"amountConsumed": 18, "clientTransactionId": "hjCMW64f4XhIjSoT"}], "entitlementId": "B2NMKtezapPr2QEP", "usageCount": 48}, {"clientTransaction": [{"amountConsumed": 84, "clientTransactionId": "zTxBGtEJIYppuUSs"}, {"amountConsumed": 75, "clientTransactionId": "Rry0KK5rgAGO0dW8"}, {"amountConsumed": 36, "clientTransactionId": "3aevq6iohU1cg4W1"}], "entitlementId": "IS3Uv1BpWoJBaqdg", "usageCount": 40}], "purpose": "FHcunsS1lnaO2m9v"}, "originalTitleName": "qjhbeK2qN8g6x2Py", "paymentProductSKU": "YDo5R3hLiD5sf5y1", "purchaseDate": "JsxJNGmyt0SQDUDo", "sourceOrderItemId": "WBZVGLlkUetzCAWc", "titleName": "9x1aMjgGim51T107"}, "eventDomain": "XIZRZ7tZdIs0xf4c", "eventSource": "zdt7zqmSKxOEQlVc", "eventType": "x6GqsBq8vdhWVnuY", "eventVersion": 77, "id": "eIVXtoWAXhMlW4tL", "timestamp": "qX7OICf5oD1e6oI9"}' --login_with_auth "Bearer foo"
platform-mock-xbl-clawback-event --body '{"data": {"eventDate": "FmYel0kOw72o8Zkg", "eventState": "k0jS6rDWUwfhKvrf", "lineItemId": "2AaH4yCWrHSppnIZ", "orderId": "kNnTn3rzH5NvAtcv", "productId": "NedgS1fUfKmihDbm", "productType": "u8ePWlQMVDXEHeiG", "purchasedDate": "TnwyEw6hIWDZrpP7", "sandboxId": "rz3ISW510kHr4isT", "skuId": "KWjmv67nuHCXWfwn", "subscriptionData": {"consumedDurationInDays": 47, "dateTime": "GVE9sJ4NpUtKp6M9", "durationInDays": 71, "recurrenceId": "x1AeLtzcPJ3jtDYB"}}, "datacontenttype": "o4FUTH7CGfKSyxgR", "id": "R1DiCqSMzpqIFGLk", "source": "Ds7ACC1RgBfoNrHl", "specVersion": "Fi2qJLgmBLE35Yhy", "subject": "iDV90SeI5yppBHoy", "time": "tVznCgNyx9fbT63S", "traceparent": "hEh8PbGikLjgjcj3", "type": "4uulU6FYBZsWFbr3"}' --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config '{"appAppleId": 90, "bundleId": "Hh3OMjAjq2mK8lbS", "issuerId": "EEelxnb5QxWG2HFn", "keyId": "ZlA6HKWW4fI1IQco", "password": "BQELcNlZkqTZrKgX", "version": "V2"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-p8-file --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config '{"sandboxId": "EnAZaWsQJtRYoagR"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config '{"applicationName": "JK5PX9UcOvhPyE11", "notificationTokenAudience": "TRT2SKseoe8VLie0", "notificationTokenEmail": "LBa36KNzjf005CXN", "packageName": "GehQ2aTjTDfKFDXC", "serviceAccountId": "7eGL5YhJDWh9YWqc"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config '{"data": [{"itemIdentity": "0qgV6d9yOfIMLds2", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"entgn3DhqciwIeSh": "F9RKb9vvxuJlhXbW", "hbwPwToC6knjVwVn": "zaqSfJiQFC2gXoda", "0kg16yUSpSOAjHJW": "wfCjYwWkLob9gKLq"}}, {"itemIdentity": "s2nEZhpByfHZinxN", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"HAQltnSojV4jT65y": "clX2FtAz0vJjFIYW", "OaNdsimmkW2miH3x": "RHAKy4QxZkaXZ7vm", "iEd0JPxVyQpshaDw": "NqTbbFMXAMfVXe0G"}}, {"itemIdentity": "ZeMgsRsmH1EQrYmk", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"KTPOlhTtSiZNCxuo": "gFteTHJe4BhSSQkQ", "D6WmOt6D7ufFVTOh": "vQpfbBke8aEdd36x", "j6wySoltDxsbzxrl": "aKEfkoYjY2o6ouRW"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-oculus-iap-config --login_with_auth "Bearer foo"
platform-update-oculus-iap-config '{"appId": "9UtNquwC3WgumrIz", "appSecret": "4NhGztZpr4U4fwQI"}' --login_with_auth "Bearer foo"
platform-delete-oculus-iap-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config '{"backOfficeServerClientId": "iLXgmRasvjO4lj8m", "backOfficeServerClientSecret": "3XEwP2b4gd3xOeii", "enableStreamJob": false, "environment": "DvPRCzBrVUxmDOj3", "streamName": "cvRFaTC11W0TGTCm", "streamPartnerName": "4fZWuk6pQxDQpKqx"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-existed-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-playstation-iap-config '{"backOfficeServerClientId": "LGeMvr9TsvcMQ7dB", "backOfficeServerClientSecret": "saIecRxIsZvD6rmz", "enableStreamJob": true, "environment": "YbuU5ar5qTLWUCy0", "streamName": "Afgc050XIZRW491e", "streamPartnerName": "94mQjVOOBnIWhunE"}' --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config '{"appId": "lqZUodp3IhtCSHy1", "env": "LIVE", "publisherAuthenticationKey": "wqSm5x3B4t7WQnp8", "syncMode": "INVENTORY"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config '{"clientId": "RwEQlNapJRfk4f9Z", "clientSecret": "cw1pEHAyNFxcVTKu", "organizationId": "AQTGh5BxjWOozGoD"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config '{"enableClawback": true, "entraAppClientId": "3kaPj0O4zd8Tb7cU", "entraAppClientSecret": "NGPTBxiFFCrn7djj", "entraTenantId": "s69FTFVGUVhvKhJC", "relyingPartyCert": "meisql14mUHVbMPi"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-query-third-party-notifications --login_with_auth "Bearer foo"
platform-query-abnormal-transactions --login_with_auth "Bearer foo"
platform-admin-get-steam-job-info --login_with_auth "Bearer foo"
platform-admin-reset-steam-job-time '{"env": "LIVE", "lastTime": "1998-11-17T00:00:00Z"}' --login_with_auth "Bearer foo"
platform-admin-refund-iap-order 'baDT9OyJ2h23GUS2' --login_with_auth "Bearer foo"
platform-query-steam-report-histories --login_with_auth "Bearer foo"
platform-query-third-party-subscription --login_with_auth "Bearer foo"
platform-get-iap-order-consume-details 'amU7syGlElXdEAOr' --login_with_auth "Bearer foo"
platform-download-invoice-details 'VSnLocLVVYamQc4w' 'cG5nDBLJoJHbiQ5d' 'uE5p4cfs2E41cK8Q' 'SEASON' 'wiIAvxSvNDlmM5nQ' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'FMGzs7fzjgyc44mE' 'h9tRk8knYSV30lnr' 'oQehMDli6t9unQLY' 'INGAMEITEM' 'xm09wpGAbpEmDY9v' --login_with_auth "Bearer foo"
platform-sync-in-game-item '{"categoryPath": "Lh3u6EDsUmrV6kH4", "targetItemId": "OotKwG3UC6XCnnZx", "targetNamespace": "F8CmQr17W65br34r"}' 'BBN9tU6TDm5GloFS' --login_with_auth "Bearer foo"
platform-create-item '{"appId": "KWM1eym5ydC6p25x", "appType": "SOFTWARE", "baseAppId": "tWtn4Yr2svKM6pqL", "boothName": "GZ0TBujELAUK6mQ5", "categoryPath": "iZgbwwm5iGzXtckn", "clazz": "rgidKupvXO6aj4hC", "displayOrder": 26, "entitlementType": "DURABLE", "ext": {"DBvQvRPnAz4VzW0C": {}, "poBCbyJsF5IjF1c0": {}, "W338HS6CBgVRyihY": {}}, "features": ["vcvcDKF19yVRafCj", "NZ84CVhziXV8HwSm", "OuSYht83AdvBaagT"], "flexible": false, "images": [{"as": "OrP9lzpiX0VuFpZu", "caption": "m7izxe7NPzjOa8E7", "height": 45, "imageUrl": "jkIykR2zbaI6PD7f", "smallImageUrl": "EscShnGUGUtV9GJ2", "width": 54}, {"as": "9GDbLNwjm3FK0nnX", "caption": "2poMfZ1hDHtbh4Ht", "height": 80, "imageUrl": "5RD9vNAp4jinFpnQ", "smallImageUrl": "5xF9wwbvMZyeDeRn", "width": 98}, {"as": "TovFi4tPAGfleyCA", "caption": "6jEtcqsnzoVILjkw", "height": 99, "imageUrl": "VI6eTYAjdPlCiQQC", "smallImageUrl": "35cj4KyOVgvnWbfR", "width": 72}], "inventoryConfig": {"customAttributes": {"rtbECD1CYPwaiBAx": {}, "fYL8Avt70ZUT2fSk": {}, "3LL0calqxEewuGS4": {}}, "serverCustomAttributes": {"69k2hG0WKt4sUman": {}, "YxM0UHZVNYzGMNIp": {}, "WoSLkUrfuf4U3WeY": {}}, "slotUsed": 9}, "itemIds": ["cZwKjYDdmJOlzwm9", "Su4FnS98QqftSjq7", "sn8yreciPLfkVyyJ"], "itemQty": {"sbGpO6JgehDJxEN7": 73, "TJfHlJl4tHGa4XfZ": 4, "A3r0u4q1bTHXIjfJ": 74}, "itemType": "EXTENSION", "listable": true, "localizations": {"WEUl07bhwntCVqiY": {"description": "OJf5KwMZQjzvjSoz", "localExt": {"v6CTRDl0zp9CzHFw": {}, "inkBNi4gvqgl6TZ9": {}, "TGVPmv34h6T7Esuf": {}}, "longDescription": "mfxKYB4LM6H6QXmp", "title": "Z9X3fUSR1l9xLPBs"}, "mAUrD9L1IiD6MlcE": {"description": "PhMDFzjHZ3sIhzOx", "localExt": {"2CXKlvIomU3pIxM9": {}, "n8D2eLMe3lt9qfx2": {}, "UDcgVE7L9FK6e0Mr": {}}, "longDescription": "Pc4vtxk9hVKlG56H", "title": "lzGr7XjdyRJunZPk"}, "p6ccIBnWyPw8mj7g": {"description": "yQ7XdIszGRj46COP", "localExt": {"ipH1MWVTHG0qHJCW": {}, "EfOJpZm9yEYWNGMy": {}, "2pgSGSUOK68eqGJt": {}}, "longDescription": "Wf1Ybgg8rdwY9bmr", "title": "vHmO07KNqX9LM2Iw"}}, "lootBoxConfig": {"rewardCount": 63, "rewards": [{"lootBoxItems": [{"count": 39, "duration": 37, "endDate": "1979-01-28T00:00:00Z", "itemId": "ISQ83TTbtefXWznD", "itemSku": "e4LQdXfFBii2RAME", "itemType": "X5RMjBFVZGYzQqV8"}, {"count": 6, "duration": 15, "endDate": "1992-04-12T00:00:00Z", "itemId": "jNDKv2LWfXqjr8fS", "itemSku": "79En3wYowBdkaZ3y", "itemType": "6i38XQjLDRqkpiFK"}, {"count": 63, "duration": 57, "endDate": "1975-06-12T00:00:00Z", "itemId": "rURERnEMzpImW6sj", "itemSku": "AHyCK5tNanGBrkzU", "itemType": "vck3xTtmOFMebS4A"}], "name": "dlNzwog2IhErkNhN", "odds": 0.03454867570074471, "type": "REWARD", "weight": 29}, {"lootBoxItems": [{"count": 58, "duration": 20, "endDate": "1996-06-27T00:00:00Z", "itemId": "u2WRcLiEtzVlnkfl", "itemSku": "fn7pHY48F1dl1q92", "itemType": "m3iRlfnBAk0CwiAs"}, {"count": 88, "duration": 41, "endDate": "1986-07-16T00:00:00Z", "itemId": "31DjOsrs3CUYATdq", "itemSku": "nQGbqiqOkNeATj7e", "itemType": "Gjodd7CcJUrI6MAu"}, {"count": 13, "duration": 98, "endDate": "1989-11-24T00:00:00Z", "itemId": "5kypNrp2nFe9FmN8", "itemSku": "6sK5LOq4ft5jGcMI", "itemType": "CPUYnfG6jl9U4jRe"}], "name": "teIMgzISomCsodJr", "odds": 0.11742432270174363, "type": "REWARD_GROUP", "weight": 100}, {"lootBoxItems": [{"count": 83, "duration": 24, "endDate": "1998-05-11T00:00:00Z", "itemId": "q2OspCZbt3Uta5I0", "itemSku": "uGcL1koyHjCH5olY", "itemType": "LETRpABAmO2EGvJ4"}, {"count": 95, "duration": 56, "endDate": "1990-07-24T00:00:00Z", "itemId": "S93yOxNInDByhnol", "itemSku": "uO6ti0QP2ssiJ66O", "itemType": "zOj84O6tgohjtC7b"}, {"count": 53, "duration": 100, "endDate": "1976-06-02T00:00:00Z", "itemId": "PpucddXJ5zifF8y9", "itemSku": "59anrNSleywHbHig", "itemType": "6IKWVZ77KeRWdECa"}], "name": "FGzfZ2hxcJ2Fnemn", "odds": 0.9534163069059409, "type": "REWARD_GROUP", "weight": 10}], "rollFunction": "DEFAULT"}, "maxCount": 75, "maxCountPerUser": 91, "name": "EbqcNXSGCCvNowNm", "optionBoxConfig": {"boxItems": [{"count": 8, "duration": 32, "endDate": "1977-01-20T00:00:00Z", "itemId": "XOErQPS4VsRoYIK6", "itemSku": "9yg9ADCGiXaLs2xj", "itemType": "HkinOD975nARHCmh"}, {"count": 81, "duration": 53, "endDate": "1988-11-27T00:00:00Z", "itemId": "SXuqIHsxvaUoXDmw", "itemSku": "WsukxncuD3QxCXMd", "itemType": "00YBWCaVVmM45mfI"}, {"count": 37, "duration": 38, "endDate": "1995-02-28T00:00:00Z", "itemId": "pmLDIQch4IjDq9aT", "itemSku": "3qZyI0rYsWucAkXs", "itemType": "VJbXi7eRZa7WwIc8"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 26, "fixedTrialCycles": 34, "graceDays": 75}, "regionData": {"ZD0Xtb0U4pH16NUs": [{"currencyCode": "VY21NVIs7NRen2Y3", "currencyNamespace": "Ns0QJQeaWytPfds1", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1996-08-24T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1998-12-03T00:00:00Z", "expireAt": "1986-09-25T00:00:00Z", "price": 1, "purchaseAt": "1979-03-26T00:00:00Z", "trialPrice": 89}, {"currencyCode": "u59eFJrOXyDYz9vM", "currencyNamespace": "UOPG0iHDT8QbF7gH", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1991-12-02T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1992-08-01T00:00:00Z", "expireAt": "1971-05-09T00:00:00Z", "price": 44, "purchaseAt": "1991-10-30T00:00:00Z", "trialPrice": 68}, {"currencyCode": "t2NRqJGIKzLyH1y7", "currencyNamespace": "2L13Ornyx34luLdv", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1990-10-29T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1996-11-11T00:00:00Z", "expireAt": "1976-04-29T00:00:00Z", "price": 18, "purchaseAt": "1973-07-02T00:00:00Z", "trialPrice": 74}], "gYPvfn2Qt9iyq3Ny": [{"currencyCode": "k8ncu2Z3eDHH9WaV", "currencyNamespace": "O4iKhDcJ7TCcNIsQ", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1978-05-05T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1994-10-12T00:00:00Z", "expireAt": "1982-09-02T00:00:00Z", "price": 25, "purchaseAt": "1994-10-24T00:00:00Z", "trialPrice": 98}, {"currencyCode": "8aOTGMudcxlCV4cN", "currencyNamespace": "bJGQ57lPdinpjS2D", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1988-09-19T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1980-10-07T00:00:00Z", "expireAt": "1975-09-24T00:00:00Z", "price": 79, "purchaseAt": "1976-01-20T00:00:00Z", "trialPrice": 50}, {"currencyCode": "dlbdRXTGIrdNL5gJ", "currencyNamespace": "PqTAjgqaTHf1ANTJ", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1998-09-29T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1979-04-10T00:00:00Z", "expireAt": "1976-09-26T00:00:00Z", "price": 70, "purchaseAt": "1991-06-14T00:00:00Z", "trialPrice": 8}], "LryiEXqvUWDjU1G0": [{"currencyCode": "EVjVZw1ToLuPakQN", "currencyNamespace": "1MpOs1RVFrcg2CXx", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1978-06-10T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1997-09-21T00:00:00Z", "expireAt": "1974-10-24T00:00:00Z", "price": 43, "purchaseAt": "1979-06-02T00:00:00Z", "trialPrice": 33}, {"currencyCode": "yhE2BKtyTDSIM7mk", "currencyNamespace": "mvZ7Cmsh4US8o4jf", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1991-06-13T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1972-05-07T00:00:00Z", "expireAt": "1977-11-27T00:00:00Z", "price": 60, "purchaseAt": "1980-01-28T00:00:00Z", "trialPrice": 27}, {"currencyCode": "MiCxmuCCVuFjS1GC", "currencyNamespace": "1d2b92B4vEgj3HOm", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1972-03-19T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1972-02-21T00:00:00Z", "expireAt": "1998-08-29T00:00:00Z", "price": 70, "purchaseAt": "1996-01-30T00:00:00Z", "trialPrice": 85}]}, "saleConfig": {"currencyCode": "jRF94NIY9nMrBZo0", "price": 24}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "BDShHD32vvL28FPw", "stackable": true, "status": "ACTIVE", "tags": ["Zxs5SWCqZXHLLa31", "oQf7BULnZDhutDM6", "mtbiWsAQHbMrKYi0"], "targetCurrencyCode": "BqguqD5xxGxBWtnT", "targetNamespace": "KUe2znsqPzPkwCBo", "thumbnailUrl": "2SwCUsTag4MLAo3m", "useCount": 43}' '1P2xaNfmn8Onb1a9' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'gMz0F2UBRmMhAbUW' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-items 'mFhdYLWzMuv3zkUY' --login_with_auth "Bearer foo"
platform-get-item-by-sku '0n0BAZkwbYkBLyO6' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'A0FqfhnaB3YxKNdO' --login_with_auth "Bearer foo"
platform-get-estimated-price 'TacCcJfIfXshuLUk' '5WdpxjZx5noXPhPU' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'TKbonoucNmzwOZOK' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items '56sDkci5rZ8iMlOu' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition '{"itemIds": ["ksQJCiRFiZWwJ7Nr", "Tb1XTB9YQzUJ9XlY", "J8BzP6EUmUXGM5an"]}' 'Iloyj9lhbvuQdW2j' --login_with_auth "Bearer foo"
platform-bulk-update-region-data 'wKUckc794ryY91lX' --body '{"changes": [{"itemIdentities": ["8DD4MYXlrJ81lHvv", "9rqvEoM8YmVjAkO3", "HKsEp6KlqwW4djre"], "itemIdentityType": "ITEM_SKU", "regionData": {"7tuL81lsR7xxSVp3": [{"currencyCode": "Gd2TK0HzYviTgYmx", "currencyNamespace": "82JVBRLPZ6Iz8tne", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1971-02-22T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1981-08-10T00:00:00Z", "discountedPrice": 37, "expireAt": "1987-07-18T00:00:00Z", "price": 13, "purchaseAt": "1987-05-30T00:00:00Z", "trialPrice": 2}, {"currencyCode": "vvdl8jHz9x7XZIjU", "currencyNamespace": "4IK9lOLaZaMphKCq", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1994-03-16T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1972-10-29T00:00:00Z", "discountedPrice": 16, "expireAt": "1991-02-07T00:00:00Z", "price": 76, "purchaseAt": "1989-02-20T00:00:00Z", "trialPrice": 18}, {"currencyCode": "YazujsmSmylT1Ytx", "currencyNamespace": "Iq73aMb48jISd97K", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1993-12-18T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1974-05-03T00:00:00Z", "discountedPrice": 47, "expireAt": "1987-03-26T00:00:00Z", "price": 99, "purchaseAt": "1995-11-02T00:00:00Z", "trialPrice": 100}], "WLNfHRD3V15QaGGL": [{"currencyCode": "46LuxJF3sbeqWBdQ", "currencyNamespace": "uWfgBAKx27MSBqab", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1991-05-05T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1977-03-25T00:00:00Z", "discountedPrice": 100, "expireAt": "1976-10-16T00:00:00Z", "price": 30, "purchaseAt": "1991-11-08T00:00:00Z", "trialPrice": 96}, {"currencyCode": "vzzXZj08a6K1XRVf", "currencyNamespace": "riSpPFnZBJZkDnEi", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1973-08-02T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1975-11-10T00:00:00Z", "discountedPrice": 42, "expireAt": "1980-03-11T00:00:00Z", "price": 27, "purchaseAt": "1999-05-04T00:00:00Z", "trialPrice": 24}, {"currencyCode": "ZxNnLRH36bqS2oFY", "currencyNamespace": "76PU1AziBOHEAj1c", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1981-04-30T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1997-01-17T00:00:00Z", "discountedPrice": 42, "expireAt": "1998-09-09T00:00:00Z", "price": 72, "purchaseAt": "1971-05-29T00:00:00Z", "trialPrice": 56}], "TFznTgDIwZIRWf6T": [{"currencyCode": "3by2kYSCdnFKLc0x", "currencyNamespace": "cTjqjdcEfU61OJYM", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1996-10-21T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1993-05-19T00:00:00Z", "discountedPrice": 99, "expireAt": "1985-07-16T00:00:00Z", "price": 13, "purchaseAt": "1977-05-03T00:00:00Z", "trialPrice": 92}, {"currencyCode": "ck1vT90C6o86cSRL", "currencyNamespace": "9cgbUmulhe98oaFK", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1992-03-05T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1972-07-02T00:00:00Z", "discountedPrice": 8, "expireAt": "1980-09-27T00:00:00Z", "price": 48, "purchaseAt": "1996-07-07T00:00:00Z", "trialPrice": 14}, {"currencyCode": "jiiOQAD77ci0vfWV", "currencyNamespace": "ZoRRMPi57HyKKz5n", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1989-06-13T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1977-07-20T00:00:00Z", "discountedPrice": 74, "expireAt": "1981-11-23T00:00:00Z", "price": 75, "purchaseAt": "1974-04-28T00:00:00Z", "trialPrice": 65}]}}, {"itemIdentities": ["Xa0dgx1JgjC56pda", "3YhtQxpCYME6x21p", "dX2QSPAd9sxoLnWG"], "itemIdentityType": "ITEM_ID", "regionData": {"1PafIjLX8ce0KbNN": [{"currencyCode": "7Ycl2JfmQplvGjVQ", "currencyNamespace": "4aebjfgGu472oWJl", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1974-07-25T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1972-11-06T00:00:00Z", "discountedPrice": 57, "expireAt": "1991-11-28T00:00:00Z", "price": 70, "purchaseAt": "1983-04-22T00:00:00Z", "trialPrice": 19}, {"currencyCode": "Volsr6CHmj763vLw", "currencyNamespace": "tYEJTSiXjcY5ZPkv", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1990-10-24T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1993-11-02T00:00:00Z", "discountedPrice": 45, "expireAt": "1983-06-07T00:00:00Z", "price": 92, "purchaseAt": "1978-09-15T00:00:00Z", "trialPrice": 1}, {"currencyCode": "Z0LpupEi5DbkVs3q", "currencyNamespace": "FTi1t530Wj1WfzIv", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1998-12-26T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1977-12-29T00:00:00Z", "discountedPrice": 23, "expireAt": "1996-10-26T00:00:00Z", "price": 35, "purchaseAt": "1989-08-06T00:00:00Z", "trialPrice": 25}], "3XUGud4tVjmxEf4X": [{"currencyCode": "vVhFJTxFHITBg9x4", "currencyNamespace": "unq3eOMHIKeTyBG5", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1992-09-30T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1986-09-04T00:00:00Z", "discountedPrice": 0, "expireAt": "1983-05-12T00:00:00Z", "price": 28, "purchaseAt": "1971-11-01T00:00:00Z", "trialPrice": 51}, {"currencyCode": "fV3869IN4V1OdhH4", "currencyNamespace": "GVU7Exlkmc4xYiLj", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1997-06-16T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1987-06-16T00:00:00Z", "discountedPrice": 35, "expireAt": "1974-08-14T00:00:00Z", "price": 16, "purchaseAt": "1991-06-10T00:00:00Z", "trialPrice": 80}, {"currencyCode": "zn8jAdTn6xBhrcir", "currencyNamespace": "yLm67rkadH5Y41SL", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1985-12-03T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1979-07-12T00:00:00Z", "discountedPrice": 65, "expireAt": "1973-01-04T00:00:00Z", "price": 28, "purchaseAt": "1996-10-31T00:00:00Z", "trialPrice": 23}], "x3QcFo9gxOgvDc7x": [{"currencyCode": "MrRKvw8ISP2WKmCR", "currencyNamespace": "RXBxlalCHtWlKxLp", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1980-11-01T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1995-04-27T00:00:00Z", "discountedPrice": 13, "expireAt": "1993-06-17T00:00:00Z", "price": 50, "purchaseAt": "1978-01-17T00:00:00Z", "trialPrice": 43}, {"currencyCode": "Giq9j2EyIknfLDpg", "currencyNamespace": "HnMOn8nc3gUZ8ZFy", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1986-02-05T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1998-12-17T00:00:00Z", "discountedPrice": 75, "expireAt": "1983-08-17T00:00:00Z", "price": 39, "purchaseAt": "1996-06-12T00:00:00Z", "trialPrice": 42}, {"currencyCode": "JBqK4QtEydPWLPBY", "currencyNamespace": "iR3UbJc1ZYapx7C4", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1981-07-03T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1986-02-16T00:00:00Z", "discountedPrice": 11, "expireAt": "1985-11-30T00:00:00Z", "price": 70, "purchaseAt": "1989-08-28T00:00:00Z", "trialPrice": 65}]}}, {"itemIdentities": ["UT0uKAPrARya2IMl", "NiXpF4qvsUUpHqi3", "3TcBGkc0HjUcnkpU"], "itemIdentityType": "ITEM_ID", "regionData": {"qrKxnMzSYoc4ZjiM": [{"currencyCode": "Y4H34B6wVd8ipcKD", "currencyNamespace": "wQeUWtjCC2UH6jzM", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1984-08-02T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1999-04-10T00:00:00Z", "discountedPrice": 3, "expireAt": "1991-10-19T00:00:00Z", "price": 25, "purchaseAt": "1993-04-21T00:00:00Z", "trialPrice": 81}, {"currencyCode": "JM6vtT27xv85K5MU", "currencyNamespace": "2qmbeqaVemINdClp", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1991-06-20T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1976-12-29T00:00:00Z", "discountedPrice": 56, "expireAt": "1991-10-11T00:00:00Z", "price": 63, "purchaseAt": "1975-02-26T00:00:00Z", "trialPrice": 74}, {"currencyCode": "jse5kd6GEDo08yq5", "currencyNamespace": "E5HleLoog4me2NBF", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1980-07-07T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1977-03-22T00:00:00Z", "discountedPrice": 44, "expireAt": "1995-10-31T00:00:00Z", "price": 4, "purchaseAt": "1997-10-16T00:00:00Z", "trialPrice": 6}], "erTPW02PWsHiKYAr": [{"currencyCode": "AxnKBfBfDlrQQuAc", "currencyNamespace": "10DjjwMv4vrIPRtv", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1993-10-06T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1983-09-09T00:00:00Z", "discountedPrice": 76, "expireAt": "1986-12-29T00:00:00Z", "price": 36, "purchaseAt": "1979-03-22T00:00:00Z", "trialPrice": 12}, {"currencyCode": "aLOKnX51yAB8Pa3u", "currencyNamespace": "NGKhaLlJzJMSnJII", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1988-07-31T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1995-04-11T00:00:00Z", "discountedPrice": 1, "expireAt": "1995-09-23T00:00:00Z", "price": 55, "purchaseAt": "1997-11-05T00:00:00Z", "trialPrice": 48}, {"currencyCode": "bsF44VTsLDRzdq22", "currencyNamespace": "cbnyK3ggFDh2kaZP", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1999-04-18T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1977-02-13T00:00:00Z", "discountedPrice": 12, "expireAt": "1985-07-11T00:00:00Z", "price": 40, "purchaseAt": "1992-02-23T00:00:00Z", "trialPrice": 45}], "bepUCTWiZ1uqh7GA": [{"currencyCode": "i4FEIu44u83ZLRxY", "currencyNamespace": "lYqlpq03BGdIk4oE", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1974-03-14T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1983-01-19T00:00:00Z", "discountedPrice": 66, "expireAt": "1998-12-21T00:00:00Z", "price": 8, "purchaseAt": "1980-10-08T00:00:00Z", "trialPrice": 73}, {"currencyCode": "vDiA0tQWlHwBcTtz", "currencyNamespace": "tx3VAl6tXFbnATCz", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1987-10-07T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1977-11-01T00:00:00Z", "discountedPrice": 5, "expireAt": "1974-07-23T00:00:00Z", "price": 63, "purchaseAt": "1976-08-24T00:00:00Z", "trialPrice": 16}, {"currencyCode": "4AELr5lraa5v5P5C", "currencyNamespace": "j8hgFsqHC9h5JPiM", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1981-06-30T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1992-10-21T00:00:00Z", "discountedPrice": 37, "expireAt": "1981-01-06T00:00:00Z", "price": 18, "purchaseAt": "1987-08-28T00:00:00Z", "trialPrice": 13}]}}]}' --login_with_auth "Bearer foo"
platform-search-items '2CX0rITajpwHITGe' 'HTnqRbzBB9ZFgJbQ' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item '3Fj1umx4ItzkMJ7c' --login_with_auth "Bearer foo"
platform-update-item '{"appId": "udf4r916GPrhn2et", "appType": "GAME", "baseAppId": "lJ80YJ41U4ooQ980", "boothName": "ywmg1pWpWit1QC7F", "categoryPath": "Ke0fnHUlmU1unGKM", "clazz": "0tgfeWy47bbwMI4g", "displayOrder": 66, "entitlementType": "DURABLE", "ext": {"mvK9gW596FwBNrFX": {}, "t3TAuKBwBcD12ae6": {}, "r3hHwya4NpdOzg3h": {}}, "features": ["iNjULsx4SnKNXLMU", "r6ucHf7dbh2iKNUl", "0qJqzoKMRMG541PA"], "flexible": false, "images": [{"as": "FldMCQ98JH4n0Jtg", "caption": "qzZv5kVu4S95mj8Y", "height": 89, "imageUrl": "1Zktx3N7WNMYIfcD", "smallImageUrl": "KbLu8pnK34oA1keY", "width": 72}, {"as": "QKUAFTVYelIlGJg9", "caption": "wdc8bihhWjfZpfcF", "height": 56, "imageUrl": "BJ9Sgl7H1sdH2RIJ", "smallImageUrl": "z1eI7Q5pu9PutLf6", "width": 71}, {"as": "dMzMTQ9P7sYLDWAJ", "caption": "OA75K4BYJ2fkqYJo", "height": 64, "imageUrl": "Rl9rZmtQUvro8TWw", "smallImageUrl": "XWsz9TVmdMKEohKz", "width": 42}], "inventoryConfig": {"customAttributes": {"vgD1Qf7Ot2DkUt3y": {}, "exZBRvxYnEBhXtAV": {}, "xCd3meTrT7cF9oVC": {}}, "serverCustomAttributes": {"h89wNOkKYssVejcL": {}, "3kR3hCGNgaJmuALl": {}, "MQl9RLrthbfp0Vgw": {}}, "slotUsed": 8}, "itemIds": ["ProNB6hI6IpGcToW", "gFvdRhG9NwV3zDuq", "VlVTypcYPK8IxrSZ"], "itemQty": {"uxWl0Je4fJIyFAm3": 60, "WnR0AbkCPY70Fmvv": 17, "obWMZGVL5KLTxahW": 23}, "itemType": "CODE", "listable": true, "localizations": {"dBaKSLCgOOPXM6XT": {"description": "Uh2dJ90yqHDNacl4", "localExt": {"F9G6Dl5TFwBY6HKX": {}, "AblkT8VGgSH8MGZG": {}, "wiVj7eDTaka9ABfX": {}}, "longDescription": "1IByPEOuPhGspRi3", "title": "bhPQvBBJI5Jxytpc"}, "ubN4AUUPFPscZsXe": {"description": "JOD4DMtqfIGiGJov", "localExt": {"gWSRxZ8N4UQ2fg3V": {}, "1o2x0hL5DuBDqMyI": {}, "AzWze94MEdJFAy2J": {}}, "longDescription": "TllJkRGB8jqJEd6e", "title": "qqsBVyONV0JRtozI"}, "0jpliCFQ6WgJpGPi": {"description": "gdc5VyC4qvWjVac1", "localExt": {"cQvSxgTNIUzxDgBl": {}, "Ibuzm7DzJ20NFRJI": {}, "hFXR2dYprPmbpupt": {}}, "longDescription": "ECGd5cdXC2Sesc6y", "title": "68whNBYl9iCqfW6r"}}, "lootBoxConfig": {"rewardCount": 34, "rewards": [{"lootBoxItems": [{"count": 81, "duration": 66, "endDate": "1975-12-03T00:00:00Z", "itemId": "6AnWn3NdEPhNHSH7", "itemSku": "eKDfRcngEpTnRUQr", "itemType": "3RLOM1vEx4gqDY6j"}, {"count": 47, "duration": 74, "endDate": "1983-01-06T00:00:00Z", "itemId": "KRxhkLe5zohg9s9u", "itemSku": "tRQt28b6o3K0COF7", "itemType": "4tz6aeXZOYwbwjMN"}, {"count": 8, "duration": 78, "endDate": "1982-05-16T00:00:00Z", "itemId": "KWlBfnRyFS0Ed7gT", "itemSku": "M5AVrtBQiDTcNnZa", "itemType": "6Zuxk6u6HXXdiC9Z"}], "name": "Dj4E4mv12FNXypoO", "odds": 0.5973550840073164, "type": "PROBABILITY_GROUP", "weight": 66}, {"lootBoxItems": [{"count": 23, "duration": 85, "endDate": "1975-05-29T00:00:00Z", "itemId": "84P0KqirJ4PkMFts", "itemSku": "nFfz8Ew0X8fBuBSK", "itemType": "LSQ4GvLtz50D3rpB"}, {"count": 10, "duration": 2, "endDate": "1985-04-26T00:00:00Z", "itemId": "Lx8eq8SGNwEQO8dY", "itemSku": "XvBSYvJBwb6CjZUM", "itemType": "Rf2VJetWsokvx3BH"}, {"count": 42, "duration": 64, "endDate": "1994-09-04T00:00:00Z", "itemId": "cSuztsJ5tj64gV7n", "itemSku": "mDk29mcjSuz9vbNS", "itemType": "tqPtQmQN6eKAGiZF"}], "name": "CftT0RWECdjWYrnu", "odds": 0.18347224617825675, "type": "REWARD", "weight": 30}, {"lootBoxItems": [{"count": 5, "duration": 11, "endDate": "1985-06-30T00:00:00Z", "itemId": "KAru8pOaAVLDB4k3", "itemSku": "JwkdaxR7GJpYmuYC", "itemType": "PG181q9GA5DydC2D"}, {"count": 15, "duration": 96, "endDate": "1998-10-16T00:00:00Z", "itemId": "KOc4VPDUR9ayazqX", "itemSku": "RqegIUicYXXzxsBF", "itemType": "rUs9BYp6TgCejBd5"}, {"count": 29, "duration": 28, "endDate": "1975-10-25T00:00:00Z", "itemId": "TST7R3KbbQGERMNp", "itemSku": "qWb51y5RUzvMfTkP", "itemType": "y0fGvTGgfLKsg0b1"}], "name": "Bq78cE5O5pmPnbiP", "odds": 0.5751201366143256, "type": "PROBABILITY_GROUP", "weight": 20}], "rollFunction": "CUSTOM"}, "maxCount": 16, "maxCountPerUser": 45, "name": "R1Zrm3thUvV87yfk", "optionBoxConfig": {"boxItems": [{"count": 50, "duration": 62, "endDate": "1972-04-02T00:00:00Z", "itemId": "LSVdleSaAylsmLYe", "itemSku": "2phYOgT5kDTyPl3d", "itemType": "KF7NXEjrJMki8jvc"}, {"count": 60, "duration": 86, "endDate": "1990-02-07T00:00:00Z", "itemId": "Gwjg3IOH0SDHgYKq", "itemSku": "xJiFJdrmj5vhzgsJ", "itemType": "wex7wq8ZPlXNaUNg"}, {"count": 6, "duration": 92, "endDate": "1996-04-27T00:00:00Z", "itemId": "2vfJuje5cPnmGjTv", "itemSku": "Ya5Pqx1K7qcAoijB", "itemType": "PAp6EPb988NzxrDK"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 95, "fixedTrialCycles": 49, "graceDays": 77}, "regionData": {"f6MLZJ2jZfZbpTJe": [{"currencyCode": "zzriCDWXT59SRu0Y", "currencyNamespace": "qUxKDc84OMIzvTSc", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1972-11-01T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1973-05-31T00:00:00Z", "expireAt": "1982-08-01T00:00:00Z", "price": 27, "purchaseAt": "1983-10-20T00:00:00Z", "trialPrice": 80}, {"currencyCode": "Mz4ILNDvhB4Eoes9", "currencyNamespace": "a6XaJeRbzTPwD3jx", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1972-07-13T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1993-03-11T00:00:00Z", "expireAt": "1996-06-16T00:00:00Z", "price": 18, "purchaseAt": "1996-03-31T00:00:00Z", "trialPrice": 36}, {"currencyCode": "JprIb3CJCAtvSG8C", "currencyNamespace": "fa9dzOJDGCTHIOFj", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1996-02-02T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1993-05-31T00:00:00Z", "expireAt": "1994-01-28T00:00:00Z", "price": 13, "purchaseAt": "1993-05-24T00:00:00Z", "trialPrice": 92}], "kIDzxBwqRJTzrHNZ": [{"currencyCode": "WUsq5lQo2jy29EJi", "currencyNamespace": "gqYhyVhURx1yPecz", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1972-12-21T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1981-05-02T00:00:00Z", "expireAt": "1988-07-31T00:00:00Z", "price": 4, "purchaseAt": "1994-09-18T00:00:00Z", "trialPrice": 87}, {"currencyCode": "ylx2JG2KNGfhzfCT", "currencyNamespace": "xxrsRRLee3TcJ7DQ", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1997-04-26T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1971-07-18T00:00:00Z", "expireAt": "1985-11-12T00:00:00Z", "price": 61, "purchaseAt": "1979-10-02T00:00:00Z", "trialPrice": 81}, {"currencyCode": "uOQIybqWfG9BJ6FV", "currencyNamespace": "KlbYHtbPtaxvagSl", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1987-08-31T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1971-07-07T00:00:00Z", "expireAt": "1987-12-16T00:00:00Z", "price": 97, "purchaseAt": "1981-02-05T00:00:00Z", "trialPrice": 9}], "DAPOGBwweyFfXEOE": [{"currencyCode": "AEtbag82KgBgyCd5", "currencyNamespace": "vjkfz3eR4DtNp129", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1984-03-26T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1982-02-15T00:00:00Z", "expireAt": "1999-07-05T00:00:00Z", "price": 49, "purchaseAt": "1981-11-05T00:00:00Z", "trialPrice": 44}, {"currencyCode": "UcCEt0DzmkJq1sml", "currencyNamespace": "5bYt76BNsi4giR94", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1996-01-28T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1987-10-28T00:00:00Z", "expireAt": "1973-10-30T00:00:00Z", "price": 8, "purchaseAt": "1984-07-29T00:00:00Z", "trialPrice": 94}, {"currencyCode": "xoufCNlFoOcWQQy4", "currencyNamespace": "bjmQeEweoBHTdwAk", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1981-01-15T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1979-05-31T00:00:00Z", "expireAt": "1997-01-24T00:00:00Z", "price": 39, "purchaseAt": "1972-05-15T00:00:00Z", "trialPrice": 87}]}, "saleConfig": {"currencyCode": "4dOwNESzCEW9dUVh", "price": 59}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "ftC3sCS8CpLCqPD9", "stackable": true, "status": "ACTIVE", "tags": ["OBWydXV0Fi02aFr8", "m8drv8QD2JOe2Ntz", "CDapjwNOl4k8rVNr"], "targetCurrencyCode": "7EFvowPgIGuetxFM", "targetNamespace": "qXCQMAqQ2ZRGzNtr", "thumbnailUrl": "ThFa9XU8mosluiHZ", "useCount": 72}' 'kqfWv04vvn9bk5qr' '8qs2mqtnGAqXUjNy' --login_with_auth "Bearer foo"
platform-delete-item 'pF6MMqWpdEJsPoaI' --login_with_auth "Bearer foo"
platform-acquire-item '{"count": 3, "orderNo": "7gw07FlounC3vJKB"}' 'C7SwgoViPeIB4Ehy' --login_with_auth "Bearer foo"
platform-get-app '0Y5aSJVDginxAM77' --login_with_auth "Bearer foo"
platform-update-app '{"carousel": [{"alt": "eY9C14FbfiI2NPvl", "previewUrl": "1kCY5bEokxXxkWZb", "thumbnailUrl": "jf7GZxaossQmjo69", "type": "video", "url": "C5kM03HHijsQRj7N", "videoSource": "youtube"}, {"alt": "IAjmsonjj0ZR50BQ", "previewUrl": "1U6aFD3O2kXQSc58", "thumbnailUrl": "zgZVl4gIF7v3qbZu", "type": "video", "url": "M3OxqVAT4H1lRZ9Z", "videoSource": "youtube"}, {"alt": "JBrHRzEOtIxzPqb6", "previewUrl": "n73m0jiaDH86d9rs", "thumbnailUrl": "KgzCsMulpB8HZUtV", "type": "image", "url": "aJCiLgKOwrSfWhT5", "videoSource": "vimeo"}], "developer": "abP4xRowfNojzPXI", "forumUrl": "2v0prR3OEey0MkZw", "genres": ["Simulation", "Simulation", "MassivelyMultiplayer"], "localizations": {"wNN3UYhic03qGEg5": {"announcement": "fNzBVrjo3g8CfRwt", "slogan": "yl1HeT7VEPgG40Qy"}, "XzsOzgck078IghoQ": {"announcement": "Bp2mWAOYksczxBS0", "slogan": "OBCa2vWadLmQtYKm"}, "EMzicbuL2S3RiW8d": {"announcement": "LTCBfGUdVEdvdQL7", "slogan": "sVwcZ2PofaJoSqtr"}}, "platformRequirements": {"EOqxH46fRTSZoDdT": [{"additionals": "0fefo74eg3Nt2c0r", "directXVersion": "4GqF0NHglOVuNZ9L", "diskSpace": "zNeJnBurh54CWbYb", "graphics": "0Pebyt8b4DGscjwr", "label": "izsFUgYwbaLvqvQ2", "osVersion": "NbmDITuymTBjn3d2", "processor": "sFzMS3QaVjZF7Ax6", "ram": "115Kg9U8vrQJXQxo", "soundCard": "IbVi2CLEk277Ivjj"}, {"additionals": "1A647XQ3koaAfZIi", "directXVersion": "m0sFPm1YN27bojDV", "diskSpace": "aZLpx4kEWYkO6KrK", "graphics": "UMhJrASBh61hmWKS", "label": "SrF35anDGvur19V1", "osVersion": "8oIrUKXttgAI2QdW", "processor": "JFLmoPEgd8EMspOs", "ram": "8nkic9gj5vyUMAAm", "soundCard": "IHYbsxG5N066FXb8"}, {"additionals": "8SbLOa21DiSFsm0X", "directXVersion": "XQJWszvTQEuALzDN", "diskSpace": "p1SZ58aDllwzTRHa", "graphics": "k1MXxj7Esrg7900n", "label": "ml5BidsK9dCEzhVn", "osVersion": "Ov0PQbVIaKiHfoeo", "processor": "rY7A1otGFyv2SMjb", "ram": "Er50qGdCZIc6EFqB", "soundCard": "KxbS7Q2OgRucL1jw"}], "RXzfjDZZBmOau6sy": [{"additionals": "me06c6SKLc2mEC3I", "directXVersion": "Xl5XCbkOfHaGr5kd", "diskSpace": "azlypvt6lSLfU7HB", "graphics": "yGXPMqxj4hBgVY3Y", "label": "AxZLKbcOdyjqf6Q4", "osVersion": "oiwoJcaRMEb15LBl", "processor": "TVufc5ZyODR2NVyn", "ram": "4PRqf3eRbZqBAoKG", "soundCard": "cVCdMiSNV4qBrt1k"}, {"additionals": "cLmRv6EJtl5xWnsb", "directXVersion": "8oWq94RImNWVIJnh", "diskSpace": "hwFDV1VitaomvWTz", "graphics": "dsW4N70wYS4Kj7Yi", "label": "2VvoQNW8Yc481dYd", "osVersion": "vGxJAMDRA1LF7jdW", "processor": "lekFwO94VBCV9qJh", "ram": "Wva2FPBujX0geYCp", "soundCard": "GJM4sqsPNJMiZXXO"}, {"additionals": "FwmGWAvNF0Z0Gkwx", "directXVersion": "UNYyNwGiKrknH0Y5", "diskSpace": "mrQgLC6D2qsFiQHg", "graphics": "lUQMZi5WjMZfOadp", "label": "gegCUjTdi1Ehr8Ot", "osVersion": "qpNJ9R8TuNy4ejmV", "processor": "A3vMCsGyPd12B8QN", "ram": "Uz0hFFNbH6j2W4ro", "soundCard": "ZM2UKAXEEsL5D0oi"}], "FchQnVeq3g2AB2WI": [{"additionals": "RUQmauIY5HXCZ0W4", "directXVersion": "XmWP0HzSdiylLhVY", "diskSpace": "szm8xY33OQbumu2Q", "graphics": "HLyZNuysyM4OfCzd", "label": "QCXMAWnf87YPNOe9", "osVersion": "Eevf1fhMg1E2k7QL", "processor": "FrVgtX7y0fPOieDC", "ram": "ow2zXyFFVpM87yqE", "soundCard": "wEacQMTlqN4LKkxJ"}, {"additionals": "5v3SBafnKNiMPbFk", "directXVersion": "FGA85W3HJkqgS2B3", "diskSpace": "7wwoPYOHiIsxmsLB", "graphics": "PBJuNLnWRrtW870q", "label": "D88ZcduZSe7W20UZ", "osVersion": "cDaiq0nEZ7PyhqFJ", "processor": "kDClOsKmfsgJdmzs", "ram": "DPsWh1k0cQ08NG6d", "soundCard": "X2TZkil67kRngoUa"}, {"additionals": "83ECh1gqPeS193TN", "directXVersion": "Nzot3sVli3GN2XTr", "diskSpace": "FibRAhzzEWzWlTY7", "graphics": "0qdgJRvpZrSpWX3K", "label": "Ee2BjV00ReCXFffj", "osVersion": "JJxlgjzIhpgOoIOD", "processor": "74V21HWDAfvXwdxb", "ram": "yp4HAPbBbNPStVBU", "soundCard": "pKgOssFkz0F36piD"}]}, "platforms": ["Linux", "MacOS", "Android"], "players": ["MMO", "Multi", "Multi"], "primaryGenre": "Simulation", "publisher": "H9D6vl5eFdFfgK46", "releaseDate": "1987-11-07T00:00:00Z", "websiteUrl": "jCWaP8huTmnq3FGQ"}' 'n3Ahu5wxq6oJq4mC' 'hmQHQhO9IKBXDFQf' --login_with_auth "Bearer foo"
platform-disable-item 'XFD58sG6uDhFYlrz' 'JBYSeMuJfQecutjS' --body '{"featuresToCheck": ["REWARD", "ENTITLEMENT", "IAP"]}' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data '0Scwl4kNmCi15XTJ' --login_with_auth "Bearer foo"
platform-enable-item 'TgCNNH7RtG5Xmo9Q' '0Wb07N17fkxZSc6V' --login_with_auth "Bearer foo"
platform-feature-item 'bE0AGcekjMNHuPXt' 'z8tXxrmzafMUguyD' 'oN91uc28HoSpGt1g' --login_with_auth "Bearer foo"
platform-defeature-item '0GGbT4Hf2PPKOldk' 'bgX9CWJKwXXSbv5e' 'g9q86IaDFjjx6uZe' --login_with_auth "Bearer foo"
platform-get-locale-item 'rWbtwTX9gNRByjbE' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 37, "code": "OLAfTXKLzbrddqcK", "comparison": "isGreaterThanOrEqual", "name": "a7LevxNHOSEhQRZI", "predicateType": "SeasonTierPredicate", "value": "TgtgW33wDwD9RKvQ", "values": ["Yw7AlxO6qdFpc71s", "X4yFQFdrRoM6FoqC", "Sck3ggZWJlSlCQMD"]}, {"anyOf": 20, "code": "JNQepUTGhwlY4lPz", "comparison": "isGreaterThan", "name": "NcpK1QkB2Sy8Ww79", "predicateType": "SeasonTierPredicate", "value": "eVskqeUB7RSayqGF", "values": ["guhh3bvadRthdbVA", "Jhe03coRFok5d3Ay", "pebRA09rW8i8krFW"]}, {"anyOf": 67, "code": "60IifzMhkk5Pxsjq", "comparison": "excludes", "name": "VbBPUWipz9C05Yab", "predicateType": "SeasonPassPredicate", "value": "4FCK5ucTFsAFzaO3", "values": ["1qdTelFAadM9y66D", "rf4SSGGt3MiBKoho", "yJpA3KMxBlrRytER"]}]}, {"operator": "or", "predicates": [{"anyOf": 95, "code": "3kKoaP1K4CDuH1mM", "comparison": "excludes", "name": "fOCDyVAHrHncR5dS", "predicateType": "SeasonPassPredicate", "value": "qQ1oHFJ9Q0vqsL9S", "values": ["WfmP2sx0KO5bEJaP", "omqWsGA76yxi0QzZ", "nAFjsodyJQVVBrSh"]}, {"anyOf": 66, "code": "8xs1WId9WlalqshF", "comparison": "includes", "name": "XOMXwKdfqk8T4QHK", "predicateType": "StatisticCodePredicate", "value": "MgzReRq0112ISArR", "values": ["aYvBLE46bpuJip8J", "yxJ39vrtuWWrqTZb", "OIodcmM6v2AEozWW"]}, {"anyOf": 90, "code": "7dGMjupZkZQY8CNy", "comparison": "is", "name": "4fiTxK63OHpnUCGB", "predicateType": "EntitlementPredicate", "value": "WSgxpKWtdtdtVW9a", "values": ["BixKJXCISQdwec1m", "8Jg5VByeI3ycMcYY", "nENmxb9e7vXZV3ig"]}]}, {"operator": "or", "predicates": [{"anyOf": 57, "code": "4nlf1MfqUZXkjHvc", "comparison": "isLessThanOrEqual", "name": "OTlxNf09pefgFIiJ", "predicateType": "SeasonTierPredicate", "value": "IJ8QgaLMqi836ULa", "values": ["CBRRnoOikIxXKKIR", "6kPmswm5TCAU1cKA", "7cfZl4VuY6rsZyo6"]}, {"anyOf": 32, "code": "gNLIlTk3Bpclrk4h", "comparison": "isLessThan", "name": "Rn0znIKzAEAHQpBO", "predicateType": "EntitlementPredicate", "value": "vUv2XiXaBzsmaxjT", "values": ["ZPlLitytGka7Kv5T", "LEQrr3KCAV9alq3h", "acQKF4OlRGdmXxET"]}, {"anyOf": 74, "code": "Ccg16DqwdQPQ9HkS", "comparison": "includes", "name": "IwncZPk82GF3eTC0", "predicateType": "SeasonTierPredicate", "value": "INGIyEfRBEj7qms9", "values": ["GVghTH2wToOnq9U5", "jvpgJfuBs1Vpqn47", "AGQExPhgr9gGfC0G"]}]}]}}' 'lyW89Xwt3wmRTrDC' 'jhnKvsHezWTqgYPi' --login_with_auth "Bearer foo"
platform-query-item-references 'xtHk6lWq6tEeUmU9' --login_with_auth "Bearer foo"
platform-return-item '{"orderNo": "6FLEak0mJqjRYldc"}' 'TpdeCD9XPRi4bAQL' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group '{"description": "7VE2wL8Y4JFVUdzA", "name": "8bvXlDhG7BrorbKI", "status": "INACTIVE", "tags": ["rkoqv2mM6soMaTvQ", "q2a9YdFNtRVSO0js", "0hG9xmSnzd7zgUxA"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'ogcnGkXk17QPkJHR' --login_with_auth "Bearer foo"
platform-update-key-group '{"description": "hmLKQuQVFSKiXl8G", "name": "2uf6E8EajXLSAS8M", "status": "ACTIVE", "tags": ["UqWHBW78XREZCiTN", "Axq26gZrPqCsSDsp", "vgM16sZ6rjnkH4Ex"]}' 'ObppC6CMYDm5ge65' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic '9UDEOF6gp5Ufmjti' --login_with_auth "Bearer foo"
platform-list-keys 'VbqJnZcrqrPye7fC' --login_with_auth "Bearer foo"
platform-upload-keys 'wi7Il2wIFlHm9N6o' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'wMHMtJy1Oqn59tEG' --login_with_auth "Bearer foo"
platform-refund-order '{"description": "m9NYeUT5P0nx8TqS"}' 'ZdZ5C8mFI9TnvzEq' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config --login_with_auth "Bearer foo"
platform-update-payment-domain-whitelist-config '{"domains": ["BNMF9CZvPxT5zbre", "Mc9fBoU3RHNDFjLK", "Frepy56eW1kmb15Q"]}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated '{"currencyCode": "eIQF51c4MqJzDSvE", "currencyNamespace": "LgBe6dboSdhkBzAz", "customParameters": {"Pkt1efGJeJaxyHYu": {}, "tgXucx85vHA009FA": {}, "b21jxeWXk80y9uxg": {}}, "description": "VLGgK8aVSCN6oCET", "extOrderNo": "Q8gIDRdD2wwMXwKV", "extUserId": "XGPhEJsc7rZpxaPH", "itemType": "APP", "language": "NS_ovFO", "metadata": {"YYSTunMgt3C8hEgu": "CqlMHiQN3HWJw9zI", "WsiP2JQ24meDrwEu": "TyM2qohglzO8AEl6", "A9sh2x2ur2ccp7R7": "OqPqIjS4i0N9ytb3"}, "notifyUrl": "c8pVZ8GlU8962e6g", "omitNotification": true, "platform": "vCmlh6Z1oz9BaixU", "price": 95, "recurringPaymentOrderNo": "AzXmyHEV4g9P6a28", "region": "0S5RNB5dVCsB7xL4", "returnUrl": "axSPgPCiwLxCFLDi", "sandbox": true, "sku": "8JaEBQBP766LUnBB", "subscriptionId": "R84iAO7sBQt6YJ2t", "targetNamespace": "WwF7RnP1oK3c4RVf", "targetUserId": "jB0zi3XrYZUiN24o", "title": "l1qqbalgizL97ycJ"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'V5YqE2myQzl7X9fH' --login_with_auth "Bearer foo"
platform-get-payment-order 'r6WvBxmBvNj3ktaD' --login_with_auth "Bearer foo"
platform-charge-payment-order '{"extTxId": "f9B22HGgxakPt7IY", "paymentMethod": "zaZUTmvsEzLPnnGs", "paymentProvider": "NEONPAY"}' '7H7yIS7b5TSDRIoM' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated '{"description": "g7Dc5APzfzXDELJF"}' 'aIaEMW5bhJyL72WD' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification '{"amount": 51, "currencyCode": "TdFfC8x5aHLsXHlm", "notifyType": "CHARGE", "paymentProvider": "STRIPE", "salesTax": 73, "vat": 31}' 'TTy9JrNz1K5M1qgF' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'ddYvifGHawNx6yhn' --login_with_auth "Bearer foo"
platform-get-psn-entitlement-ownership '{"accessToken": "iEHLbEQKc0aUvrKX", "serviceLabel": 60}' 'lh80BhYe2fJDS6T7' --login_with_auth "Bearer foo"
platform-get-xbox-entitlement-ownership '{"delegationToken": "5Q4ulonMFjmYqE1w", "sandboxId": "JhfogWg2Apm0sUy1"}' '8aWn65Co0vdCk8so' --login_with_auth "Bearer foo"
platform-get-platform-entitlement-config 'Epic' --login_with_auth "Bearer foo"
platform-update-platform-entitlement-config '{"allowedPlatformOrigins": ["Twitch", "Epic", "System"]}' 'Playstation' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Steam' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config '{"allowedBalanceOrigins": ["System", "Twitch", "Epic"]}' 'Epic' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Steam' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config '{"appConfig": {"appName": "7xasqMY9aulsL6NO"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "agpS6A5mkufBpWVx"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward '{"description": "K9D2bTcgaKoccaSw", "eventTopic": "WcZmzCWGI1cIQcPW", "maxAwarded": 55, "maxAwardedPerUser": 39, "namespaceExpression": "ShIhieSKUf3zKbyQ", "rewardCode": "k2vQTYX1xsth28NZ", "rewardConditions": [{"condition": "ZgsXycuQNGIDeHlf", "conditionName": "6IcX1K9JrK6Or2xx", "eventName": "7rLwrPoWiywnxuDL", "rewardItems": [{"duration": 78, "endDate": "1979-06-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "IaSxoloIH1gBCWVF", "quantity": 36, "sku": "A9dB4ib8HDOJ8TNi"}, {"duration": 85, "endDate": "1983-05-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "OXvGSrdkqddI3ezq", "quantity": 41, "sku": "kbDseh4tJdoGcwMB"}, {"duration": 25, "endDate": "1974-02-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CAlDlVKBsLZiBRXs", "quantity": 53, "sku": "tcHrV0MbJGr4drgk"}]}, {"condition": "DuWS05m0pGzazM2B", "conditionName": "UXnzUEWTiKMJAf6A", "eventName": "gbiEDMfCckWogE5g", "rewardItems": [{"duration": 5, "endDate": "1999-02-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "F8AMGZ2FBS93Mg6T", "quantity": 75, "sku": "pscwLcUml3KuoMKh"}, {"duration": 89, "endDate": "1980-09-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "kgqUNIbJMJ9ABbKV", "quantity": 90, "sku": "O2YEDiqkwKbpdk7w"}, {"duration": 24, "endDate": "1998-08-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "YMvEUNfoL7JCcMo7", "quantity": 67, "sku": "a5ObBB49Km4ClIQm"}]}, {"condition": "kIdLCvNhZ6P8aqZ2", "conditionName": "yfrC1V7ZpJZPHCMq", "eventName": "vcYmeDLYEzs2SQUd", "rewardItems": [{"duration": 75, "endDate": "1994-05-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "jYI9lsQFD43Df5qU", "quantity": 84, "sku": "ZkjsxYtgxplHTPLz"}, {"duration": 50, "endDate": "1981-04-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "jFZgF3erw7UsyHq4", "quantity": 2, "sku": "9RHget5hzB52BDFo"}, {"duration": 32, "endDate": "1982-04-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "69zLJdKMexeJc7Nv", "quantity": 12, "sku": "3kuybwTQFYEJjIYw"}]}], "userIdExpression": "qfSRy8GgVk77fd1G"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'false' --login_with_auth "Bearer foo"
platform-get-reward '5YkyhAiAItnWUmD2' --login_with_auth "Bearer foo"
platform-update-reward '{"description": "25fp1egsx3ErheNw", "eventTopic": "qd5priclNNqLyrlz", "maxAwarded": 35, "maxAwardedPerUser": 49, "namespaceExpression": "J4QHbfnAdtkujxHf", "rewardCode": "f7n1yaNCcjgFhS0U", "rewardConditions": [{"condition": "RBhl0L5FCbOn46W2", "conditionName": "B2uPQLrt2t6bVpCg", "eventName": "KvPXSDufmKh783cV", "rewardItems": [{"duration": 11, "endDate": "1989-09-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Tno5oHzqY3DgykA8", "quantity": 53, "sku": "HSmo4KX9TPO3K1k5"}, {"duration": 15, "endDate": "1991-04-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "SXbn6l5xAzc1nc3e", "quantity": 64, "sku": "f5JSwjw2fE2g6jXV"}, {"duration": 25, "endDate": "1978-03-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "6Rum5pbgEt39uJQp", "quantity": 13, "sku": "4UyoQg0b0sGOkzxV"}]}, {"condition": "t15LKmkQ7YBhsOuJ", "conditionName": "0ypkkt2G4eFh2YNs", "eventName": "doxpLTBM9Q8t829I", "rewardItems": [{"duration": 6, "endDate": "1999-04-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "1JyveSRiBq23kyH9", "quantity": 20, "sku": "TTupABJ4RwH3EdKm"}, {"duration": 43, "endDate": "1980-03-31T00:00:00Z", "identityType": "ITEM_ID", "itemId": "7gIKBc7OYTylFRAJ", "quantity": 74, "sku": "ZVnkLT0Lb85nmpdN"}, {"duration": 38, "endDate": "1985-12-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5YI0jeO2zMDSy4ky", "quantity": 33, "sku": "4UcYzswAGpXqQxct"}]}, {"condition": "uVaqPJGAHEZmuQrZ", "conditionName": "8GaQ4OZ2nDodm4TN", "eventName": "s8mAj6IKSYFdJwgZ", "rewardItems": [{"duration": 38, "endDate": "1978-12-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "OzwuDSdGl1A2vaNe", "quantity": 59, "sku": "th24cZBpdDFfvzeU"}, {"duration": 14, "endDate": "1975-09-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "mTuaxlxgywkbdOsy", "quantity": 48, "sku": "BdoKH6sREmmfwUZL"}, {"duration": 97, "endDate": "1997-10-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "8obTlGVThz4bm41o", "quantity": 71, "sku": "oJfey3HXL6SjljNP"}]}], "userIdExpression": "TXA3qbg55SyienCO"}' 'DZ0mnOpPTVxEgBFz' --login_with_auth "Bearer foo"
platform-delete-reward 'G8tlkxWKCU1XN4gl' --login_with_auth "Bearer foo"
platform-check-event-condition '7yHvEqpJSrDXVwCk' --body '{"payload": {"hOQ161TFjROYJm75": {}, "VIuCOCkt2W1DfI8Q": {}, "tgODk9K6DcMnyCPn": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record '{"conditionName": "1FylWdaNV1VaZTkb", "userId": "buWiiA4UTDgS2SVE"}' 'o5M80LLbku9GYH4i' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section '{"active": false, "displayOrder": 12, "endDate": "1979-05-08T00:00:00Z", "ext": {"OVM50tCqkZfsSxAb": {}, "DJ7sHCLup8pmEosO": {}, "XglQwwdeLVpmXqRw": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 20, "itemCount": 5, "rule": "SEQUENCE"}, "items": [{"id": "3W2ANmE3VVsQ1fm9", "sku": "EUdiaRjuLsKZoqnp"}, {"id": "KwhpZVdw5UMa8ymx", "sku": "tEFLwELCY2vIddlx"}, {"id": "nA1VynioJcAPwVHU", "sku": "Gcs1ACMvoY4jWH9d"}], "localizations": {"FmOHW0j9suukPE4J": {"description": "wQONQ2vCbMn0Oia3", "localExt": {"36uiiMTAductvUfV": {}, "wLahtRedh1SiZlOp": {}, "IQ8GL7jBF1R5OexA": {}}, "longDescription": "PzCG6ZKQClGc1636", "title": "nbfM3J9G40Y62bCo"}, "941ALznQuHVskfCj": {"description": "UK8GeX4Q0B2Cj0oO", "localExt": {"mBmXu1KiTTiz7yrI": {}, "vQj2isN7bRwcr16l": {}, "W5YwgZpjlMMtPWg8": {}}, "longDescription": "217m7qNkQiKp2oac", "title": "8QTNEuBbeuQqm9wM"}, "7mgTtUdPVcQijMBh": {"description": "s0kDP6d3nuUZ41mS", "localExt": {"eS9SnGqhJOvykBcD": {}, "pzD9zh6dtPK4fVHL": {}, "MvrCsH3RYxH2Up9V": {}}, "longDescription": "thPjFrK7Hip0eONF", "title": "DgUPShG8wwFKY9AM"}}, "name": "pcwJd4SrigIxAhbF", "rotationType": "NONE", "startDate": "1997-02-10T00:00:00Z", "viewId": "zaP0wpZgQEvFzox9"}' 'wHocX3DRWobEoGr8' --login_with_auth "Bearer foo"
platform-purge-expired-section 'W97KBedcr6PM51z7' --login_with_auth "Bearer foo"
platform-get-section 'i0wQ9egK2t46EG8I' --login_with_auth "Bearer foo"
platform-update-section '{"active": true, "displayOrder": 23, "endDate": "1992-07-01T00:00:00Z", "ext": {"viKbOgVuN3nhkn6Q": {}, "IesNoYqvVsakylHi": {}, "kKkpOjqwgKvfXXs8": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 61, "itemCount": 61, "rule": "SEQUENCE"}, "items": [{"id": "LLUyBt5hDs45siG3", "sku": "0Lv9iGa5mkZjnRXV"}, {"id": "cg6AByNpBo2JYkwL", "sku": "dmR97u9MVUii4KpY"}, {"id": "cb1AUsESaBOTHnbX", "sku": "9tC9PQlFAGbMtEyb"}], "localizations": {"fcAl0mnsAkRT2k0A": {"description": "zdgIunRkTxsGdrpN", "localExt": {"ELM8Lfkut0wnT24w": {}, "h59RGSbBMh7jpszu": {}, "Vk6iPdJ2boQqCCyJ": {}}, "longDescription": "fThvCJieqRSGN8Mm", "title": "74HlSZzp4aEW4GkH"}, "G5OIVuGv47XJpkMi": {"description": "opQrVL3ZZTVxqa9X", "localExt": {"M2gY14iWk12Jffk8": {}, "dwKNPUOHNZxML3yo": {}, "BM9qxd6PWz7sVnMx": {}}, "longDescription": "ge2inL8fBFP1ABaI", "title": "KrEt8d3o7cTS9OII"}, "MErnNTLXHrsOFsbh": {"description": "Row4iaYKy0IjsDgb", "localExt": {"J37DN2lDvdh7okHl": {}, "1wMht2Izq7TCUJhD": {}, "sDefAS09VyQB1vR1": {}}, "longDescription": "mx6K17GL1CrO4Zuo", "title": "GZSxTzm8oMSPIHPt"}}, "name": "qzIWIzg8pbjnt1iB", "rotationType": "NONE", "startDate": "1986-01-23T00:00:00Z", "viewId": "pbjGts4UZDTfhAyZ"}' 'Khqilty9NVlgxUmn' 'fdOAmu1dX1NqD20R' --login_with_auth "Bearer foo"
platform-delete-section 'UvvYeJZw6QZFN7wF' 'CnqpvNesGiVnt9p2' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store '{"defaultLanguage": "to7Yja1soDE1K0Sv", "defaultRegion": "GrMYwPmPXC2LfL2m", "description": "5rP2A20t6foPPH94", "supportedLanguages": ["SUinY5diUlqgvY7d", "PPyahppgxJhk4EdT", "Z000rS92594HLvWF"], "supportedRegions": ["sXHtMP0k9L5dREQb", "Cqfh0gpABFBER6WN", "cDOsRzBkf9A6HjCn"], "title": "FRdSihcvszzQLZBk"}' --login_with_auth "Bearer foo"
platform-get-catalog-definition 'ITEM' --login_with_auth "Bearer foo"
platform-download-csv-templates --login_with_auth "Bearer foo"
platform-export-store-by-csv '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["lxa395rghZwGhdZJ", "kkGhYvXYMIyaEMEq", "Opwetb82b96rsH73"], "idsToBeExported": ["hRfDgl29GWKpItMt", "4GszRufkDFLYyNBP", "lMrkse9SGcMuV5ph"], "storeId": "hU315LUC6HSMQ32U"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'znXNd6ve29lqqtcL' --login_with_auth "Bearer foo"
platform-update-store '{"defaultLanguage": "JW9eTJvKNDFrx6La", "defaultRegion": "byDnqXjXKPIcxh0x", "description": "7T6RQGnnW4ugGX6m", "supportedLanguages": ["KBbgTD9xL07ZzzIs", "3Jke34ZAUuLP897o", "oMLnemwKAvgDXNrF"], "supportedRegions": ["EE4Jf4hQpsLOcLtZ", "w0efmEVcW7mxbS5U", "OoICxQMit8555Niy"], "title": "4NNFpRE5pS85yTIR"}' 'WvLRy58UKWPv3F7S' --login_with_auth "Bearer foo"
platform-delete-store '0wCVlYQi9cfMCeNn' --login_with_auth "Bearer foo"
platform-query-changes 'u6OIG1PPLRDEXLXZ' --login_with_auth "Bearer foo"
platform-publish-all 'WXvqNCHvNpeMjMzg' --login_with_auth "Bearer foo"
platform-publish-selected 'uq6HFIqaqwH9J6JL' --login_with_auth "Bearer foo"
platform-select-all-records 'b5f3SBMyJUdwEBRr' --login_with_auth "Bearer foo"
platform-select-all-records-by-criteria 'HAWUFqTooGGnPEgY' --login_with_auth "Bearer foo"
platform-get-statistic '0t7QQWl42byOwXgK' --login_with_auth "Bearer foo"
platform-unselect-all-records 'yPhXmcysae8HpWH4' --login_with_auth "Bearer foo"
platform-select-record 'xiz3fWthJSu2pUII' 'uPLFAtcWhjAP57Qb' --login_with_auth "Bearer foo"
platform-unselect-record 'WvSSp71zEPPfmAQi' 'qRRC2caquMRtQOIL' --login_with_auth "Bearer foo"
platform-clone-store 'caDqUITBHQR5ISNo' --login_with_auth "Bearer foo"
platform-query-import-history 'FR3GUxdMuvmL0UBf' --login_with_auth "Bearer foo"
platform-import-store-by-csv 'tmp.dat' 'tmp.dat' 'tmp.dat' 'wzaaeP3Wd0Wrb8s3' 'tmp.dat' 'GW0CY0vAfbq8xoCu' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'rq4lpHXrbVBh60NU' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'A2aKQwnXrmi6ya8u' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale '{"orderNo": "4sQPvaf1AcweR7tJ"}' 'W3MLMob1hUnIzIpU' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'M8KK1kGFN0NUNGKx' --login_with_auth "Bearer foo"
platform-increase-ticket-sale '{"count": 7, "orderNo": "kOTJZluTekDMCGUJ"}' 'vERxNg8djSb4Vt2v' --login_with_auth "Bearer foo"
platform-commit '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Twitch", "count": 88, "currencyCode": "sV1TnsZioDiBgprz", "expireAt": "1971-07-11T00:00:00Z"}, "debitPayload": {"count": 16, "currencyCode": "M5DZM0dgozmco417", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 59, "entitlementCollectionId": "xdYQg34WUV0WpmsQ", "entitlementOrigin": "Nintendo", "itemIdentity": "BlO8K6LH4dSaa8XY", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 41, "entitlementId": "hSkxERZ2AQ1jvXYB"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 21, "currencyCode": "5RMmmGdWl0wpj5tV", "expireAt": "1973-09-21T00:00:00Z"}, "debitPayload": {"count": 74, "currencyCode": "QMI0oZuEjY0rNBbb", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 4, "entitlementCollectionId": "9txAvtRQvqJacXR2", "entitlementOrigin": "Twitch", "itemIdentity": "f4noXDFaEUkPUBnB", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 78, "entitlementId": "EJH3ebM71Tg922xi"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 14, "currencyCode": "RPrEAYqRBeSc5uSh", "expireAt": "1978-03-17T00:00:00Z"}, "debitPayload": {"count": 28, "currencyCode": "dGHMeoi5DBOsQ0Ga", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 12, "entitlementCollectionId": "0iX05IT9Agsjl5Nm", "entitlementOrigin": "Nintendo", "itemIdentity": "kJFQxuMHnfOlX6HY", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 62, "entitlementId": "9EMgf9JCJiEvhL8Z"}, "type": "CREDIT_WALLET"}], "userId": "UTmZ8JSMeNmRocp4"}, {"operations": [{"creditPayload": {"balanceOrigin": "Twitch", "count": 10, "currencyCode": "RZe8Bzx9aGEI22BT", "expireAt": "1985-09-04T00:00:00Z"}, "debitPayload": {"count": 25, "currencyCode": "s97TJI8GPrM24F3c", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 24, "entitlementCollectionId": "lFgM62HQtgzQhO3n", "entitlementOrigin": "Epic", "itemIdentity": "j8DlP6OGbn8vmfMY", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "aN1Off5gRZZMW3hu"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 71, "currencyCode": "H6X2SM3xzsNrJzWB", "expireAt": "1972-01-27T00:00:00Z"}, "debitPayload": {"count": 67, "currencyCode": "Flo7oAsOlfLB1J19", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 92, "entitlementCollectionId": "5rTfiL2P3r1a8KIJ", "entitlementOrigin": "System", "itemIdentity": "pOLJW52uz3c8pz63", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 14, "entitlementId": "58Jt5NaROjSKFEuZ"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 62, "currencyCode": "HeBKtpvyRNgjZkdD", "expireAt": "1978-06-27T00:00:00Z"}, "debitPayload": {"count": 32, "currencyCode": "iDaxlPdhwmcH03yo", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 48, "entitlementCollectionId": "tRZ93LuR8OEyICvw", "entitlementOrigin": "GooglePlay", "itemIdentity": "bxM3Wev9pZQjWAN0", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 29, "entitlementId": "ny16ZHZtuSJGQCrM"}, "type": "DEBIT_WALLET"}], "userId": "EMRPkdTcAzkIlndN"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 73, "currencyCode": "eayr3vUKMuIiz2Mi", "expireAt": "1984-11-25T00:00:00Z"}, "debitPayload": {"count": 54, "currencyCode": "46OOzz9p57qSpHer", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 84, "entitlementCollectionId": "807VmBT4wZXQZZrS", "entitlementOrigin": "Oculus", "itemIdentity": "28qCRbwwZc4ZS1NM", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 21, "entitlementId": "rnHs1Iyhwqk140Mo"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 71, "currencyCode": "P0QX31gI7VmnGIRM", "expireAt": "1981-03-26T00:00:00Z"}, "debitPayload": {"count": 22, "currencyCode": "e6BiphIFe2bzr6qQ", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 63, "entitlementCollectionId": "6fSESkM19OPMBb12", "entitlementOrigin": "GooglePlay", "itemIdentity": "W9jiNMu9QVrMeD4b", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 33, "entitlementId": "8gISE34yIAZQeigi"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Other", "count": 56, "currencyCode": "m626POXWVj3KP1mX", "expireAt": "1998-09-02T00:00:00Z"}, "debitPayload": {"count": 16, "currencyCode": "O3YrlyrWowUpUDVL", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 83, "entitlementCollectionId": "TtuJJsHZVsG6izJZ", "entitlementOrigin": "Oculus", "itemIdentity": "ZURmoGgxVRMPf8g1", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 41, "entitlementId": "bhfIMStMnSqrKWYO"}, "type": "FULFILL_ITEM"}], "userId": "J5j18Ou3aY8nceFU"}], "metadata": {"5GKmcEKp8AQwqgJs": {}, "6O0Qj0ccMkdz6zPz": {}, "3BVHAqp4O9XSjap2": {}}, "needPreCheck": false, "transactionId": "esyjh6Wc3migf2n6", "type": "iQyr5cb5YL6fwBia"}' --login_with_auth "Bearer foo"
platform-get-trade-history-by-criteria --login_with_auth "Bearer foo"
platform-get-trade-history-by-transaction-id 'VPmmn0T5uzlmi2NY' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement '{"achievements": [{"id": "26xrkPPdg3pXjmtp", "value": 81}, {"id": "PZbYVD8RiaTsdD4d", "value": 82}, {"id": "kSbTkHPMUvOAUXkw", "value": 65}], "steamUserId": "cr2WJQqS7Tq4YIyZ"}' 'AFQ6lZfa2jdNvpWf' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements '32JS1av9VNpVLT0L' 'vqcfSdO1nAjY5FvA' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement '{"achievements": [{"id": "Db3GUQgci632w6LU", "percentComplete": 35}, {"id": "6JXSh0Z3SWISs1dY", "percentComplete": 36}, {"id": "74GcmVf0fbCU9QdP", "percentComplete": 42}], "serviceConfigId": "JNF2hm0TqBQprHn3", "titleId": "whPKU5abnqw8fFa3", "xboxUserId": "0pVbhr1BHh1arZAy"}' 'uLcZoEkPpqKhP2jW' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'nRTglw0gdWoE4esu' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'iDrquccz4J6fFQez' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'J5E3iYHIknvPcJkj' --login_with_auth "Bearer foo"
platform-anonymize-integration 'RevVYfiExpAgoK9Y' --login_with_auth "Bearer foo"
platform-anonymize-order 'Dq1x3dkbJFDEBEOO' --login_with_auth "Bearer foo"
platform-anonymize-payment 'vJ5BKeipIldsgB4h' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'Oxb88WgKSLIpneDQ' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'CfwucHRL3o2NstrL' --login_with_auth "Bearer foo"
platform-anonymize-wallet '6TsJeRcE7GuwKn63' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'KIDTkUCqbbHGJGOT' 'PSN' --login_with_auth "Bearer foo"
platform-get-user-dlc '2bh14LroFTnAuujP' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'eP9N0vdVB5a2XkS3' --login_with_auth "Bearer foo"
platform-grant-user-entitlement '[{"collectionId": "XQfMuzZh4AhZRe2h", "endDate": "1974-09-05T00:00:00Z", "grantedCode": "U56xtyJtnbTDXu7F", "itemId": "bleSP5PcdOuq0m0r", "itemNamespace": "vakR8rcwojLRjhca", "language": "OwOO", "metadata": {"Z2tod2BGBXjNyRCt": {}, "POr1FU3QZy3gdDms": {}, "3kb1htW0UGJpwQZl": {}}, "origin": "Steam", "quantity": 43, "region": "KpFSMF0tfGIZCTNi", "source": "REWARD", "startDate": "1993-02-24T00:00:00Z", "storeId": "c9fEjkZhEpAJMCxM"}, {"collectionId": "p2J0hDg2kMgkvhoQ", "endDate": "1973-03-06T00:00:00Z", "grantedCode": "9gD9tGN0nE7M36mI", "itemId": "9u3EeZtLQij2JXsq", "itemNamespace": "dXfhZTTaCeqGv7me", "language": "QrI_UdLk", "metadata": {"FTtERAXT2h3hcQ2w": {}, "V3ZbBTnNQnVUhA5W": {}, "nzVZdj8tsyzC4QaL": {}}, "origin": "Playstation", "quantity": 31, "region": "IECEDa1I4lwXqwPf", "source": "PROMOTION", "startDate": "1999-09-08T00:00:00Z", "storeId": "zHQjtolx64w1gyvj"}, {"collectionId": "acKtGqxMnoAXRlcq", "endDate": "1998-10-25T00:00:00Z", "grantedCode": "mYWKQYlqMmu2pvF6", "itemId": "rP03bQaq1cT88H6R", "itemNamespace": "CW8gJmGzDlqxtLsR", "language": "bP_yruH-808", "metadata": {"YYUT6mma833TDzk6": {}, "6ix88sAUrXr7MXxC": {}, "vyy7caxz4MQrODLN": {}}, "origin": "Nintendo", "quantity": 87, "region": "xiEjQBCZx9DJ4V97", "source": "PURCHASE", "startDate": "1989-04-03T00:00:00Z", "storeId": "LlrwXmIGamRCARuF"}]' 'Lx4rV4CXVMrDYKe2' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'eTf1axo16GqT2vSL' 'LiMvcu39YZJypWzp' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'NXgnoKIz8O8NglJt' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-get-user-entitlements-by-ids 'Th280vflFMxIhlIT' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id '8AgyZJ16MMd2bzOr' 'Tn2huwPgyUzBUWiK' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'oNGtvyk5xEfrJDxK' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'sw5Xl7ZZrDZdbuvC' 'FBaVcohewKkVuGv9' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'fQXkErF0drbYrrFQ' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'P6rW62CtetBW3pvA' '["JJieHhveGg97PY0t", "xzvYwv7atn9EQv2O", "j8TFNeGtJGjKbMgC"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'euAYuzrmbWofEaKS' 'tqdKu4ROnONpJ849' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'chqeiUGQMwNwDlYS' 'li3p8YaAdel3hHMS' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'LAiscGRWzkCl1ZKu' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'PxjDUGRGcCEPjbUy' '7F82Adu9BYRHrVTe' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'hrqgvEtEs2LpE0qf' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'bvdU8hlDoC9FnxqB' 'lPBYJ7X6uVy7FWTS' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'fMi2CPVGxjcdpdCq' 'VeePMSqb8y8qJTUQ' --login_with_auth "Bearer foo"
platform-update-user-entitlement '{"collectionId": "Y40Zrpn0vAD9YsPe", "endDate": "1986-02-08T00:00:00Z", "nullFieldList": ["WrAVQZSvgWuCuLsU", "GrVQAbhS54ZuQHKe", "rsDmJLUHAKtfXCKO"], "origin": "Nintendo", "reason": "dvUMDZeO4U55wdCp", "startDate": "1995-02-26T00:00:00Z", "status": "INACTIVE", "useCount": 28}' 'r0e0J6vyqPw7YlmV' '3kES0Hi88UYgSV40' --login_with_auth "Bearer foo"
platform-consume-user-entitlement '{"metadata": {"OvY7apPCrN5bEhmu": {}, "HgKeWizEpw1zN0mO": {}, "YgGhHMz9dddLWJWD": {}}, "options": ["uSYtCaIv4Lp91wYU", "JPbvzn8TYoMDAaUX", "SuBQdvdhJoT0WK5n"], "platform": "gNUxDKfZYofPGUbS", "requestId": "aA00nKxQjYU6Klav", "useCount": 71}' 'W4YMhJ0S50bez9ZL' 'HW882riiPfRQ3rJ0' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'f5lwXvRNDBnmL1KQ' 'n77hiP1lzkzjYDw6' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'mLBordrJkD6vy60u' 'RMT1Xw9K9Yb68a8y' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'gYx2TqkhlqMnE9Wj' '90EQzOidrWnLrXqI' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'mgDf3GaJsdCZND0w' 'gYOilX1e1825iasu' --body '{"metadata": {"nESjcgr2drXG5NkK": {}, "CySLA8cKCs0dFYRS": {}, "a2OULZ0iOZJiOAh1": {}}}' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement-by-use-count '{"reason": "SpLhMF2Pav11FuU8", "useCount": 17}' 'uaO9TiTPnIh2iaIB' 'pYC4txul6VKYlNYY' --login_with_auth "Bearer foo"
platform-pre-check-revoke-user-entitlement-by-use-count 'lHPwKDpJmkeoAkp3' 'Z4pgyJYwclb4gd4Q' '13' --login_with_auth "Bearer foo"
platform-sell-user-entitlement '{"platform": "qSECsypS42NmYQ8H", "requestId": "lHbHnfs4tLVOYQCW", "useCount": 79}' 'Dq9dGLHjtgE2bTXJ' 'xCCFqPNDqWrpkWnn' --login_with_auth "Bearer foo"
platform-fulfill-item '{"duration": 29, "endDate": "1978-06-29T00:00:00Z", "entitlementCollectionId": "aRDwYLge851PbK2M", "entitlementOrigin": "System", "itemId": "a27BnPyq3I1BLtGE", "itemSku": "ZDRNkk4DJUofJXK8", "language": "RGS0zCYRVmbfzwUm", "metadata": {"sy0stUmKdXiiTObN": {}, "dqkWa13g3pgHx6uP": {}, "f6jQZcYerH933X7i": {}}, "order": {"currency": {"currencyCode": "XEEM2KOusNEHcI95", "currencySymbol": "GGdJvucDbs6Udccu", "currencyType": "VIRTUAL", "decimals": 60, "namespace": "kRj3WnyAaUaQBKFe"}, "ext": {"dL2uduXvZUbQQ13F": {}, "hD3NExUFipJsUiDa": {}, "wAjgHFQk0VzWRNFN": {}}, "free": false}, "orderNo": "pbP027okM5E8tAaj", "origin": "Other", "overrideBundleItemQty": {"c0CJ7LzpFvOSF6xK": 55, "loYZBkatNLc42eq0": 82, "5C6S2eHsH4Y84hL7": 6}, "quantity": 86, "region": "5nPR0Y1sffUaZ64d", "source": "OTHER", "startDate": "1974-03-12T00:00:00Z", "storeId": "tfuqJHrs4e3RnWR3"}' '0MdBZezfwc3H0qSb' --login_with_auth "Bearer foo"
platform-redeem-code '{"code": "Mq4GLj8aGsH0qE5p", "language": "oAiK-jggu_uk", "region": "ynIMOYWpUYUQMooi"}' 'KT57rmbjEnimeR7E' --login_with_auth "Bearer foo"
platform-pre-check-fulfill-item '{"itemId": "FBz43E9FkOPVu2fD", "itemSku": "tOjW1iSYQbcebBd5", "quantity": 45}' '0syrGNhBmgT2q0kI' --login_with_auth "Bearer foo"
platform-fulfill-rewards '{"entitlementCollectionId": "brJ2S5Pf1Lvg8kYE", "entitlementOrigin": "Playstation", "metadata": {"CNLnnEvo25aEtdjl": {}, "s5oadseJg7y4Q9CU": {}, "3fjSRaXD4HDmdvhM": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "xiKR29LKIhNU43K8", "namespace": "bihdw3prp0UHlWUx"}, "item": {"itemId": "kBefhxRtrqbv56oq", "itemName": "wnCLVc2qHZuuedbB", "itemSku": "Od19DqZJRYV1oqNL", "itemType": "mPAUIMwa2wYq6DsU"}, "quantity": 33, "type": "ITEM"}, {"currency": {"currencyCode": "38bYvaWLoKzHnngd", "namespace": "fFnOfY9stXH6LYXX"}, "item": {"itemId": "MndxBPKmHVB7cNzH", "itemName": "hvxc4xAPZ86WNnQO", "itemSku": "husPn4466u8agb5H", "itemType": "PsBU0Eo6QJ9vBRJ4"}, "quantity": 95, "type": "CURRENCY"}, {"currency": {"currencyCode": "fabC01Thm9f4AWpy", "namespace": "iKVT3OvEujx5yjtQ"}, "item": {"itemId": "SCJaOHzpb623EciY", "itemName": "oYOPVg6DLEZ6Dxpw", "itemSku": "Bm2N8PdQ5mQaGXEb", "itemType": "nmWR0H3EkrHqaLNd"}, "quantity": 11, "type": "CURRENCY"}], "source": "PAYMENT", "transactionId": "EDgX49n1xTDFcmOm"}' '1sqdIWU6ERylESgf' --login_with_auth "Bearer foo"
platform-query-user-iap-orders '5dXMrPoYSohfrLyX' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'MSrC62xYtDwflNGf' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'ufW5cWeg6eSCypsc' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item '{"itemIdentityType": "ITEM_ID", "language": "jYuv", "productId": "JGGCVF6LrILDLviU", "region": "CzmDAaW5xz1c7ZuZ", "transactionId": "XUCBYnkY0LEBSYBd", "type": "OCULUS"}' 'iTOrhB8hVs29WOKm' --login_with_auth "Bearer foo"
platform-admin-get-iap-order-line-items 'ZRTtgycLzXz6lUMK' 'i5mweMEZo2ZnL1Zg' --login_with_auth "Bearer foo"
platform-admin-sync-steam-abnormal-transaction '2JfH4f73jAevOnES' --login_with_auth "Bearer foo"
platform-admin-sync-steam-iap-by-transaction '{"orderId": "6YJLlb2AfUEEBbqM"}' 'MKvkOsR1fHUyirMV' --login_with_auth "Bearer foo"
platform-query-user-third-party-subscription 'MOFES2J2OzNlJE3u' --login_with_auth "Bearer foo"
platform-get-third-party-platform-subscription-ownership-by-group-id 'PLAYSTATION' 'rOsJmEwjGYN8VNPX' 'NsmwTV8imJHNI0l6' --login_with_auth "Bearer foo"
platform-get-third-party-platform-subscription-ownership-by-product-id 'GOOGLE' 'd629N4YnolVWA2dW' 'xBs056jkPCUuE1pg' --login_with_auth "Bearer foo"
platform-query-user-third-party-subscription-transactions 'dHvlQKiR7SDQUDav' --login_with_auth "Bearer foo"
platform-get-third-party-subscription-details 'OlKT5EIHNhJQq94R' 'e5IM1akNKz9IltQU' --login_with_auth "Bearer foo"
platform-get-subscription-history 'ku3n32atB0QPQPEp' '5UtwUWGt6tooHP5k' --login_with_auth "Bearer foo"
platform-sync-subscription-transaction 'Aww01zalTddhAQ1p' 'wqnybvUIfuulmeeg' --login_with_auth "Bearer foo"
platform-get-third-party-user-subscription-details 'RwPPbn7lttd21cS6' 'IVE4fzwG3BHaRcZ8' --login_with_auth "Bearer foo"
platform-sync-subscription 'NK4gkLmvEOaRcqTg' 'F0xtQAXoDoFkmA3f' --login_with_auth "Bearer foo"
platform-query-user-orders 'gzcwdgJMjIyGfiNB' --login_with_auth "Bearer foo"
platform-admin-create-user-order '{"currencyCode": "Qy41M1gzGCbaxw33", "currencyNamespace": "rNbE4bbDU4FMTbQa", "discountCodes": ["SJENQopeHD6iKBGm", "5Cj7RqnJUmfDmofx", "ANJOODGerDCWcl3V"], "discountedPrice": 44, "entitlementPlatform": "GooglePlay", "ext": {"8pRGoUtmbWZbEjPy": {}, "q35BWDoc3qNcQFFy": {}, "Hv141NPqjRUMKSQj": {}}, "itemId": "FdjqTaZFsWzbqwTZ", "language": "QIN5jC6a8mEVCXHm", "options": {"skipPriceValidation": false}, "platform": "Nintendo", "price": 99, "quantity": 35, "region": "qlX7idzjpKDfwl6X", "returnUrl": "lCF6YxFMD8tJQwZv", "sandbox": true, "sectionId": "Inos5RK100yH89i8"}' 'ZDPXRL8cbTAntB1S' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'Taab1UeibXg7RCe5' 'BtKcwj6PqqOgCimr' --login_with_auth "Bearer foo"
platform-get-user-order '3ZQNBBkrXu9czsYr' '3cFeVw70xdNTuOdL' --login_with_auth "Bearer foo"
platform-update-user-order-status '{"status": "REFUNDING", "statusReason": "dkrYiCinoVOzo4Pl"}' 'v1IlTpEhjTFYdzsU' 'NvQAn2LuMjLqwmVz' --login_with_auth "Bearer foo"
platform-fulfill-user-order '3zKsfjz1mFkyxoUz' 'fMFoXCOguSq2A4R3' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'wDdSkNfHJtA3QiX9' 'ZvtydbaVb0scd97A' --login_with_auth "Bearer foo"
platform-process-user-order-notification '{"additionalData": {"cardSummary": "0GP6djn2Ps3IVT5h"}, "authorisedTime": "1995-04-12T00:00:00Z", "chargebackReversedTime": "1999-05-12T00:00:00Z", "chargebackTime": "1972-01-08T00:00:00Z", "chargedTime": "1978-09-03T00:00:00Z", "createdTime": "1987-05-16T00:00:00Z", "currency": {"currencyCode": "atrjbJ5YT7uvqarT", "currencySymbol": "vrG1DXZAWlvz3c3X", "currencyType": "VIRTUAL", "decimals": 31, "namespace": "LMresGFfsH4aXCDh"}, "customParameters": {"shvEF8rHd250nyih": {}, "cUVGHQczI5ZoTRUk": {}, "jGoRkPs2SO9XrgXN": {}}, "extOrderNo": "IaU11cBXLwTfopqe", "extTxId": "ZtHJnRgaGfLMFbvy", "extUserId": "I5PZGzVLcmZKKKYA", "issuedAt": "1993-11-11T00:00:00Z", "metadata": {"ape2tsNczam4Cdd1": "QYvww4XDokltgq2v", "XtUnY6UhDJ4pe0s0": "Cuhl3dU9b4seYCyi", "B4tDCWx3cEX8wTi1": "v2abpCWytPEi9Ze0"}, "namespace": "hL9rPkV5GkSrcl2O", "nonceStr": "47XVzU7qlNVk7qnm", "paymentData": {"discountAmount": 57, "discountCode": "IFgS4fLqlrKGiS3X", "subtotalPrice": 47, "tax": 69, "totalPrice": 18}, "paymentMethod": "0lX1hj0LaXgQ94fl", "paymentMethodFee": 16, "paymentOrderNo": "BzgQ4CRwg0sKVeSp", "paymentProvider": "NEONPAY", "paymentProviderFee": 8, "paymentStationUrl": "y0GrvKI5EVB9ZFzL", "price": 82, "refundedTime": "1993-05-26T00:00:00Z", "salesTax": 18, "sandbox": true, "sku": "dCFtKY0KsxR0rCFk", "status": "DELETED", "statusReason": "9DYBOProN4UWbQaK", "subscriptionId": "FrTv4JWElmOCxqPr", "subtotalPrice": 34, "targetNamespace": "oCn1KvJmbjapW9Ul", "targetUserId": "EqtzDd7SgxdxB5kv", "tax": 40, "totalPrice": 20, "totalTax": 79, "txEndTime": "1980-09-23T00:00:00Z", "type": "ah9bPsksceGUEX8E", "userId": "RZcKSYLo6y7yJMow", "vat": 88}' 'g3MgmdSvWp3h0xPs' 'VY8qNwB2TY4v9NNf' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'QSYLFKSl3FNFFJnt' '3rIwZdW02Su6aCnL' --login_with_auth "Bearer foo"
platform-create-user-payment-order '{"currencyCode": "816aH6gOBUIMeL0G", "currencyNamespace": "L3aefSDME8X2MxIL", "customParameters": {"I42BJMPkZmay4Csy": {}, "e3iJLtjsu6ZJRCoD": {}, "q3geuHFFaZzPIjET": {}}, "description": "qcKN1gaQ4Bn0cPPt", "extOrderNo": "KaJlw31pdDrXQ47W", "extUserId": "SGyDCKF0LLhO3lGZ", "itemType": "SUBSCRIPTION", "language": "rh", "metadata": {"Pj2XoFug8BUQUmPH": "nPumcazKAna0ji75", "7aNDFeKnQP2j2WsQ": "ImTwYkiuxzLrbJ0B", "kGzCNgesQlZZHIZH": "0iks6kx0adnimPyy"}, "notifyUrl": "zezsHdFftHHR6xbc", "omitNotification": false, "platform": "Vonwz27DWfGRVhbZ", "price": 93, "recurringPaymentOrderNo": "CMmYyTGO07foRZ6F", "region": "ujpIWo0qJtqp4Q6X", "returnUrl": "gICLgMHcP1eE6sjW", "sandbox": false, "sku": "mFvUZiUW5Y0CYw5O", "subscriptionId": "XSGwQkJuy9oLFcHH", "title": "craLXR2n9JQvq7NK"}' 'WIHYsii3fCh7sieJ' --login_with_auth "Bearer foo"
platform-refund-user-payment-order '{"description": "jZPAkiWumllU31uX"}' 'PwYxedGHCIkmt4bf' 'JOhNaIT0pv7XeqO8' --login_with_auth "Bearer foo"
platform-get-user-platform-account-closure-histories 'gY3c4SryWB4yRaDx' --login_with_auth "Bearer foo"
platform-apply-user-redemption '{"code": "vxwaLM8HkVOW8PnL", "orderNo": "kgqkqYZWPZTgKagT"}' 'zdcYcko7U3gH239L' --login_with_auth "Bearer foo"
platform-do-revocation '{"meta": {"hRx2Laa2RdtVb6Vg": {}, "A5yFIH3s9UyeaFi8": {}, "OE7BCK4FeVGrl5Np": {}}, "reason": "UG9zblWEiHaUjyTH", "requestId": "b0sSlstb3slUe94N", "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "47468MXUq3uIffkI", "namespace": "pPmrWVxNZUvkiU2j"}, "entitlement": {"entitlementId": "XSwsBBRopVl38d4N"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "Gtk6EmWxC75M88TK", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 65, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "5NmuZDUV3yHurgOf", "namespace": "ba1XeoHYTNoRol84"}, "entitlement": {"entitlementId": "UlkxtP5Vok9sNK1O"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "g3tChsS3fFpaS1uq", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 69, "type": "ITEM"}, {"currency": {"balanceOrigin": "Oculus", "currencyCode": "3oYfPK2QiAUhIfi1", "namespace": "7YrkWHNxiaNyqBfg"}, "entitlement": {"entitlementId": "w58Hx0XYL0fJOPYp"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "qej8PRppYY1vlV0M", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 20, "type": "CURRENCY"}], "source": "ORDER", "transactionId": "Ut0n0jfyDbtIXICL"}' 'kK8ZvbnTg3znlg8n' --login_with_auth "Bearer foo"
platform-register-xbl-sessions '{"gameSessionId": "mzQx1RsYhcRlv16W", "payload": {"we8YK3lZFslECI9Q": {}, "zuQcsjFehD6uTDYn": {}, "qyNgN7GoeMsezFZs": {}}, "scid": "TBHkgcJ0DcEt23pc", "sessionTemplateName": "i6xEljer6aGJx5OF"}' 'p3jKEx4aSGdwTPX4' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'ig3NVFFkP7O3F4vs' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'ohRWDyGYIVFDbTvR' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '{"grantDays": 53, "itemId": "fpJ4wM9WZfOOxAzm", "language": "sbhi5QJuc2SNBaOl", "reason": "XfgsgBd7MYLLoPZr", "region": "kjRm5Ki0orhXrISE", "source": "aPZHLQkTHvndQsCK"}' 'AO2JRz3CGwtujkzx' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'idLcAQWGVRg6DVso' '5TJCSugdo4XTm8t1' --login_with_auth "Bearer foo"
platform-get-user-subscription 'YTWqItjNWXm9srae' 'MA78YSRS2fPy5fpb' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'bbMIu9lu18jIMBUM' '77XmemN8LO03mnFS' --login_with_auth "Bearer foo"
platform-cancel-subscription '{"immediate": true, "reason": "5D6ylZguO918X7rL"}' 'oexHBMBMMAYokSWF' 'wajRGUyklfLVY6g3' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription '{"grantDays": 86, "reason": "r5B08VZxI4TU3apn"}' 'ZXoJ4gI4EQKO8xC4' 'D0FsUo3IB2kX5REQ' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'ZsHyXzoIXNf0KbL9' 'HyJttdgfLGO3ummp' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '{"additionalData": {"cardSummary": "llnV6B62P1Kazg73"}, "authorisedTime": "1972-02-29T00:00:00Z", "chargebackReversedTime": "1995-03-15T00:00:00Z", "chargebackTime": "1978-02-11T00:00:00Z", "chargedTime": "1977-08-03T00:00:00Z", "createdTime": "1983-10-30T00:00:00Z", "currency": {"currencyCode": "ehxNIIlcrZzgameT", "currencySymbol": "2mLkkAMjHyI0e2Ax", "currencyType": "REAL", "decimals": 77, "namespace": "0nZHjmoKHJngwMe1"}, "customParameters": {"AnQVj6QQjZtkNJCn": {}, "DSrsSey2BqOxgwCy": {}, "mCDYsuff3b7G5FDX": {}}, "extOrderNo": "4mu0qPHb9Ll2EFEb", "extTxId": "8GnsthmQ2Y6ZGOiq", "extUserId": "rg3lpqN5bOfnqJ5b", "issuedAt": "1983-08-30T00:00:00Z", "metadata": {"usxxnMhjv66DyED4": "prRVibTATxd7Mzjv", "1gSj8kcNhoqcRZRN": "ATojM7daV0VwR3yN", "KDtMqMrAGpdyF6WD": "Hn3ePBxQNz2IUEHM"}, "namespace": "zl5jhwVDsuzwJ4v5", "nonceStr": "0eoaIBrTh0EKkJio", "paymentData": {"discountAmount": 96, "discountCode": "kjphURs4ksgsKJ2R", "subtotalPrice": 58, "tax": 73, "totalPrice": 28}, "paymentMethod": "acwwu8W1zvrKMRPv", "paymentMethodFee": 46, "paymentOrderNo": "07Zek8WObpf0FHYf", "paymentProvider": "PAYPAL", "paymentProviderFee": 17, "paymentStationUrl": "YerrpOm4M2pM4fIf", "price": 5, "refundedTime": "1981-10-02T00:00:00Z", "salesTax": 56, "sandbox": true, "sku": "0aHbPXRns3qwYL6L", "status": "CHARGE_FAILED", "statusReason": "Ke2foqsVIfgBTr8R", "subscriptionId": "cxRQR0NYdJzf3TMh", "subtotalPrice": 91, "targetNamespace": "B5y5iMdeBG7REG4m", "targetUserId": "eKEabfVXBJPIZqZC", "tax": 6, "totalPrice": 74, "totalTax": 73, "txEndTime": "1995-06-16T00:00:00Z", "type": "uJdeGNquQnaXpDQ5", "userId": "rU2taDWh9JV5oc5I", "vat": 64}' 'T8gPFJ4WndMpQhcL' 'K0WTZbtmQkwC8azx' --login_with_auth "Bearer foo"
platform-acquire-user-ticket '{"count": 27, "orderNo": "IRWme3C6p2r4D3NQ"}' 'djrjkX3AMgK3JgZu' 'fzssA284mG7uAojL' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'YBsx8oqMzbE0ljQa' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code '{"allowOverdraft": true, "amount": 49, "balanceOrigin": "Other", "balanceSource": "IAP_REVOCATION", "metadata": {"b47V691j0FZp2vjO": {}, "Xptxzx6kkaZYpl52": {}, "sQR9Znp5d1eSwrG2": {}}, "reason": "GBBEWrDbQ1ZzhDuL"}' 'Hq9LTBstguOdN0O7' 'l3GbKPHdDTQDEEE2' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'mTsn1NwJ71szsNmn' 'qZSWdEyOVYrTdDq7' --login_with_auth "Bearer foo"
platform-check-balance '{"amount": 71, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"qbTVv8BLsqQW8HSr": {}, "Em5Y7jI232Sjktij": {}, "iNzTUe8KdizXmrmK": {}}, "reason": "0sCUsqxKocHomtjo", "walletPlatform": "IOS"}' 'JNDaSO3FEkk4It6V' '8Bu7rIjGrxUMKbv6' --login_with_auth "Bearer foo"
platform-credit-user-wallet '{"amount": 2, "expireAt": "1975-04-21T00:00:00Z", "metadata": {"xUuUhopdqGrqRZ12": {}, "4P7PauXTrpWAjwat": {}, "SvtPbAFn8oWQcmFk": {}}, "origin": "IOS", "reason": "DlRFYMVfiAMa6Pco", "source": "SELL_BACK"}' 'MfvikslpyL9BYLVV' 'znF6hMYfksp8VQhY' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform '{"amount": 92, "debitBalanceSource": "OTHER", "metadata": {"FeBOp0ilGQFwHUtZ": {}, "ugblT3aIDKn9qJXn": {}, "cm5igpAewbmnWk0E": {}}, "reason": "7YaPblcWEyNgvs5L", "walletPlatform": "Steam"}' '8Yp2QnuhQuIdvZdj' '6AspWBfRnLcLbp7O' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet '{"amount": 26, "metadata": {"Dbql13FtQMu41rnO": {}, "zbsFBqg6dziWvdNc": {}, "wfUBMdNuTaiLxFMX": {}}, "walletPlatform": "Oculus"}' 'pDP9xutntU8xHw4y' 'YJOCViHwunQwpC2e' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view '{"displayOrder": 58, "localizations": {"Dln04F8BQjzobhDa": {"description": "8VxKOrfVfBRIfkSt", "localExt": {"OqdXqhDMQ6tBLljC": {}, "7gcT3M1DArk4L80a": {}, "XFY7SQkym9KvKMHK": {}}, "longDescription": "5fbqioeoRIplY0DI", "title": "zRCNAO6ZpqXJmPJs"}, "o6M11LLZWKgWxn9Y": {"description": "L16HQdtAneXGgxNg", "localExt": {"33ZIUrIkfmdXVvaP": {}, "QzzKdFg7N7piT8Vc": {}, "rXLZnuMNpKEIs3GC": {}}, "longDescription": "9VTK7tkJWFpHt7Md", "title": "Ku9Xwn5GHJDGatrY"}, "OMO91CYEjX867n9P": {"description": "T9fR7mMuBXPDKCri", "localExt": {"RKzTZ7TXAVRnUVbx": {}, "EJcKHE764EwhQfxF": {}, "KIOGT1WKSmLoA0IL": {}}, "longDescription": "aESC1GJXsoBwqh0T", "title": "QXa2j7v3zQJoQLTA"}}, "name": "lW75icIKUpXazsFr"}' 'maGNoi3RPTgWotLN' --login_with_auth "Bearer foo"
platform-get-view 'z0u8ySxA0yrjz4q7' --login_with_auth "Bearer foo"
platform-update-view '{"displayOrder": 10, "localizations": {"oQNkuZzJ1XBxw01i": {"description": "BBQukgQ94ZvPCWcM", "localExt": {"X0ov3U2sKjIeyFS9": {}, "7dYD7LkcTKYpCfl6": {}, "HPy5cJfAV5iOfzwt": {}}, "longDescription": "3bpxRNt6lKoMjCPt", "title": "EKeBWTm78Fn8TvZV"}, "Te4L2lXrVPX6r5ZT": {"description": "cnVVOKMApTcWsFRU", "localExt": {"lWBp4gBs9UufgsVb": {}, "G6TUe3jbuQ7HMPO4": {}, "ozK705ykRqSPYZgP": {}}, "longDescription": "m4JLsXVtBOEetHsx", "title": "AJ8Ny1LRkPU9hrl5"}, "nkpEdBe8bYWdok4U": {"description": "nUEOyP0cPZf5Ovol", "localExt": {"fI0mqZctohLheRaQ": {}, "kfMLFW9B7jHZro4h": {}, "hwnANAGp8zGqNGrc": {}}, "longDescription": "QyoA1TWPcy83iXfY", "title": "XNdMkdg9TMwxNcQ6"}}, "name": "CkVi8fqVPRqNbF5y"}' 'LnYSa8xFLvcYexMM' 'MiDFh5RbW021cHN3' --login_with_auth "Bearer foo"
platform-delete-view 'QbzVuJZH3k54cExx' 'WKtdGTW4FILotv5y' --login_with_auth "Bearer foo"
platform-get-wallet-config --login_with_auth "Bearer foo"
platform-update-wallet-config '{"enablePaidForVCExpiration": false}' --login_with_auth "Bearer foo"
platform-bulk-credit '[{"creditRequest": {"amount": 94, "expireAt": "1984-01-02T00:00:00Z", "metadata": {"pAb7CKt79wAopZL9": {}, "Cw6K9h55mwUvhdBO": {}, "gumV4wAsd4ifGd0b": {}}, "origin": "IOS", "reason": "2KJcYHgiFDxclBXa", "source": "GIFT"}, "currencyCode": "btk3mAO4EtB0hn2x", "userIds": ["leAoUuVKneoO10yt", "1oTOX5gBQlVDx9ne", "FHWhDRJtyYEt7ygZ"]}, {"creditRequest": {"amount": 86, "expireAt": "1996-01-26T00:00:00Z", "metadata": {"Rj8gQHEe4CO370Os": {}, "bzRKKPd6mjzLxllU": {}, "rFYn7cSuO7NxKHUH": {}}, "origin": "GooglePlay", "reason": "Oqsd5v5n7eXCo9gZ", "source": "REWARD"}, "currencyCode": "F0kh3pCRB3infEVx", "userIds": ["ArF7TB6A6a71zAJp", "xJNPlvvYZw4MWzWF", "aPeudUtKPJUmAvxB"]}, {"creditRequest": {"amount": 95, "expireAt": "1976-06-22T00:00:00Z", "metadata": {"pt0wrfWPXaI1Jb75": {}, "o2MFOa6xgPt69QRO": {}, "GDeJCyHvUsnLvXCS": {}}, "origin": "GooglePlay", "reason": "sccHPA2v9XP9enfE", "source": "REWARD"}, "currencyCode": "dm1IxL1OtleUBqBO", "userIds": ["pUsITfVruDukun42", "0Ze049k9W6ZLVJzR", "zPZvOd4yZyMKyED3"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit '[{"currencyCode": "qDO5HXp5oVkhESbH", "request": {"allowOverdraft": false, "amount": 17, "balanceOrigin": "Other", "balanceSource": "ORDER_REVOCATION", "metadata": {"Tlzf7XwQtVIYU87N": {}, "gjDMcJxfMfYFlt3J": {}, "vDgMiyBGygWFTAY3": {}}, "reason": "Th5mOwPCPKVPlOGf"}, "userIds": ["TQmlS8lMlY8Ujprh", "BoBmSLi0R7zDFMoN", "FBlu2ZP0IkiYXGk6"]}, {"currencyCode": "CxhzW6ZM7LkTVrtV", "request": {"allowOverdraft": true, "amount": 98, "balanceOrigin": "Nintendo", "balanceSource": "DLC_REVOCATION", "metadata": {"YPT4i4mxc14iRfzJ": {}, "wKuc7EpiQEzz5N5o": {}, "sRYO7wbYh7q02W8t": {}}, "reason": "kTURUFmqNc8xhQqp"}, "userIds": ["tccNorRls7EC3nDn", "hFvDlFd7iyZpvWVJ", "FK6ZuvlzGCII156h"]}, {"currencyCode": "Ig0g8HIxpzm9AcFh", "request": {"allowOverdraft": true, "amount": 24, "balanceOrigin": "Steam", "balanceSource": "TRADE", "metadata": {"shmZf5fEdvjbyJPQ": {}, "1qdRcJjsme1OukIf": {}, "IZVH8q8svV5hMOSf": {}}, "reason": "pyJkJlmJmTkFvB7w"}, "userIds": ["kY6nuUEGJ3k0HGtp", "K43uORGREOOwTuY8", "dhNCDWWpN3B6tedg"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'FUzBm5vGA3itKaF9' 'z3WWuv3j8T9g1f6P' --login_with_auth "Bearer foo"
platform-test-adyen-config '{"allowedPaymentMethods": ["3D3rVcC2g6t42jE1", "Wad232YV7A2zHFGb", "N8AQaCaw9UF7cdSD"], "apiKey": "d99DQZ7vnTx8HDXT", "authoriseAsCapture": false, "blockedPaymentMethods": ["Wiyw17ogzmbj4SLY", "DrZJvDLGvn6qtroZ", "cp16HKXX1ft5nBA9"], "clientKey": "xNIJVuMz04evSdE2", "dropInSettings": "FMcKd7c94rEmIYuA", "liveEndpointUrlPrefix": "T5OAcUwYHGmG5rND", "merchantAccount": "BF1oU37vjfyX5YLa", "notificationHmacKey": "M0wmi0i1WABBbq8I", "notificationPassword": "zZsMFLX9ZhFXcFtf", "notificationUsername": "BS3ZIHofhwyM6Bw2", "returnUrl": "sFGQ5DQoDwzrKPOZ", "settings": "ZnV3zR7YxSu6addo"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config '{"appId": "cg10Hy9jx7gBHTOH", "privateKey": "HArjld0LnREsrrB2", "publicKey": "pJ7V8BSrucjO3zvS", "returnUrl": "M5KeVNHU9GcOivIf"}' --login_with_auth "Bearer foo"
platform-test-checkout-config '{"publicKey": "cCJt4U8VSgXoi9Fw", "secretKey": "25b9qXzlIK2G6AUj"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-neon-pay-config '{"apiKey": "BCdf0Rp5e5IvFuN1", "webhookSecretKey": "oUsCnBmGMx5F6EhM"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config '{"clientID": "3dKvIG9MR0hTINvq", "clientSecret": "1VR9SJUfQEX996Mh", "returnUrl": "1sQ3Dw3uyjgQNAs9", "webHookId": "188Qm3W1De2McGd1"}' --login_with_auth "Bearer foo"
platform-test-stripe-config '{"allowedPaymentMethodTypes": ["0wefF0CJlH55RLEg", "eAsSpQdcmGHZuRVQ", "8tzwqMayP8A3HGNI"], "publishableKey": "3BfjkFd6MHo6gGQ5", "secretKey": "mChYoKD7yqCR03Ro", "webhookSecret": "vQZhwfjkq9iyTbyD"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config '{"appId": "3D01tRpuuyIagSSz", "key": "EL8H4euLufhQj2KP", "mchid": "3LLxl9Hs2L2wlpKB", "returnUrl": "VURxHefz77a9fntC"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config '{"apiKey": "NiHBRUNCPSre5GmZ", "flowCompletionUrl": "zCQwilS3IxSjlyvR", "merchantId": 57, "projectId": 86, "projectSecretKey": "kKC1h6h45u0wuh9p"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config-1 'Y0011jSmHFTtfM2m' --login_with_auth "Bearer foo"
platform-update-adyen-config '{"allowedPaymentMethods": ["GUUpq3ix7Am7W1fw", "JnV94BrMSP31wAkV", "H75UcmNXK5RqcIo9"], "apiKey": "lpz9oM52vHPlwVV3", "authoriseAsCapture": false, "blockedPaymentMethods": ["9COFrOr6wJDBwIDs", "JHNg6TvNGjwI4TbT", "wBufUorJouduhCEJ"], "clientKey": "5XiKDIE9YugcupLx", "dropInSettings": "VBcRkfhRuqkOTHSi", "liveEndpointUrlPrefix": "a7oFd1fEmDuyAsQG", "merchantAccount": "zwJR5poI718RQnj4", "notificationHmacKey": "imu6XFfRcWDXhq1Y", "notificationPassword": "mGeygr2S4Yw8NmPa", "notificationUsername": "BeryzX2hOPVVFqVq", "returnUrl": "xjq1iG3TySOh8SI7", "settings": "5oXbyq8FBbur80Qw"}' 'nlgAVfqz6gQJh8sn' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id '0bVWRkvmAemh8lio' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '{"appId": "BR7xTXcEIFod3lCz", "privateKey": "vjHzDHOrSJ1vbB7L", "publicKey": "RHd96dGLgkfrZveF", "returnUrl": "MWAFT7l0l1jaOAMC"}' 'zbsoIgmKwwMDQPjU' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'Iosq1l6xo0D4JRbN' --login_with_auth "Bearer foo"
platform-update-checkout-config '{"publicKey": "qO6IuP2PY5hhX6uN", "secretKey": "ah9JoHPj7jFWxSv1"}' 'lYylYAiZ8c7Zd7EU' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'oezOLw8C1c5bBB3X' --login_with_auth "Bearer foo"
platform-update-neon-pay-config '{"apiKey": "Z7ColKwlsNvtFuun", "webhookSecretKey": "QsvdXGlD40xxIyVw"}' 'Yjn6dlC9Kfh9gHul' --login_with_auth "Bearer foo"
platform-test-neon-pay-config-by-id 'oyce0cLJu4ljPWlC' --login_with_auth "Bearer foo"
platform-update-pay-pal-config '{"clientID": "WTuGO8MnfOQu3wdT", "clientSecret": "4Aodp95o1RkX7iW7", "returnUrl": "VpCngWAv5DAG8dPd", "webHookId": "kKgQqjyzUZR2rFIA"}' 'uALNhNCyscsMBRLs' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'Wadk2OQ421q7Nb1v' --login_with_auth "Bearer foo"
platform-update-stripe-config '{"allowedPaymentMethodTypes": ["rKthVvU5on065ApC", "kVN3QchuQ6pntxB6", "48ss7rBnvQHAM8gS"], "publishableKey": "dIybKUByHBzfvgtR", "secretKey": "TPPzwJmKaLCx3gci", "webhookSecret": "dEALWe6RG5wWznu5"}' 'AjwR1Z4fU7ICcaQt' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'uuKUw3dUwWHhQW3I' --login_with_auth "Bearer foo"
platform-update-wx-pay-config '{"appId": "1y9tjRLVOXBMa0Ji", "key": "Ie1AY0tUA7EKASk3", "mchid": "USNLhOBlxRBLgohp", "returnUrl": "8ByTi2F6AyUX8w77"}' 'riPlPgJcLbeQf9MI' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'CxX7xKyCfgwSPz14' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'asyOdgn77gN8K1Fl' --login_with_auth "Bearer foo"
platform-update-xsolla-config '{"apiKey": "NkgbFE8U4meK5grm", "flowCompletionUrl": "PBsFH71VrhsISYte", "merchantId": 12, "projectId": 66, "projectSecretKey": "QbNA2WQrHTkJT1Vk"}' 'ChD3n0c1ryAkRvdP' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'R8gx2rX5dck8NFKP' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT_DARK"}' 'Mehg047axU5ktNyw' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config '{"aggregate": "XSOLLA", "namespace": "TOwEP5Bhh0NStWIg", "region": "gmhfAzVdNYP7Ao1z", "sandboxTaxJarApiToken": "7FeJM2fWXGk7JObS", "specials": ["XSOLLA", "STRIPE", "CHECKOUT"], "taxJarApiToken": "UlFGcP6eL7EpWtPi", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config '{"aggregate": "CHECKOUT", "namespace": "T6m6mRZAlLBczJVe", "region": "il7GbG1ISBCkcnpx", "sandboxTaxJarApiToken": "KUxLjmxhBS6YypRW", "specials": ["ALIPAY", "STRIPE", "NEONPAY"], "taxJarApiToken": "8GslMpx3m7lEXTmn", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' 'bmf392ersoZ2KbMb' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config '5jal0ruZmBXlGSp8' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config '{"sandboxTaxJarApiToken": "5q6fuGfo5wSDHnya", "taxJarApiToken": "bk493I3pvHKDaWhT", "taxJarEnabled": false, "taxJarProductCodesMapping": {"1qyxpUzWIZWJTDzW": "guhujw1EoR58uCVl", "defonHJZAiX4abmq": "qi90KTWwZk0HGeJN", "aBjVdMB5kMzKycYr": "hr4FnNzdT4pWwIVX"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'p9avUr6IydpXW0MO' '0eT9okl6MlWOl9fe' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'WO2bmOikTBJHTEm5' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'PSeyod5L6OooYoQn' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories '9iHEqWO1cVCUIOx9' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'PSN' --login_with_auth "Bearer foo"
platform-get-apple-config-version --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'FQdwLi3GOQkLtpuR' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'NeT1CULEMPaOU5nu' --login_with_auth "Bearer foo"
platform-public-get-estimated-price 'kycAUlkUSZKUrsxN' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'RzF3NaUuCyQyze6z' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition '{"itemIds": ["PKu5sE89JW8UU0Rs", "B6dvrpmInhHYzVVl", "HGFSwjby6rMYkVQn"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'ZDUAbINRKQsxUO1Y' 'MxAndOj5O6IBwXJj' --login_with_auth "Bearer foo"
platform-public-get-app 'gQjgLoJyqwFVBd1Z' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'jaRXEdWgS12bSbPg' --login_with_auth "Bearer foo"
platform-public-get-item 'OCWUogizeWOPUMrq' --login_with_auth "Bearer foo"
platform-public-get-payment-url '{"neonPayConfig": {"cancelUrl": "gEIsMwNbfti0LoTB", "successUrl": "cNzyoCSw1t653G3y"}, "paymentOrderNo": "dYmGzvx9bSqqyAPh", "paymentProvider": "ADYEN", "returnUrl": "Nel4Bxb9KwFYqdhE", "ui": "Vq3hbsApeASfR0lj", "zipCode": "KxqZcLuhwNDvValv"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods '3bkoMXNzl1ywEPiu' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'nixlEAHZzHs8x5oP' --login_with_auth "Bearer foo"
platform-pay '{"token": "SkZFIV2feXnTRlzA"}' 'Jy9oFOHB2KEsIdto' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'zVltBhoXE4wgcYT5' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'WXPAY' 'lJQlj9Ii2jARwzow' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'k9OoiPdnq9KBqBwi' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'NCsnK8CcO1OHbpQZ' 'twW3EwLre1bL4dJn' 'CHECKOUT' 'jmtDGvd9ESdY0eTk' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'BWA44Qqsi5yOjvl5' 'PAYPAL' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'xuo5z9RAcYgYZb7c' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'AakJpqN6eubdp49J' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'FwXG0EvoSHNC97eE' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'yhnL1QH5AlYRAqCA' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'C2gy1WF9QLNgDxAk' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement '{"gameId": "wgfB8jIecOx5ugNC", "language": "eDd", "region": "Fi3zLvfQWC85MxWx"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'vW0veFl3uU1aMD0m' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'czWxc8f1s2QPMMZs' --body '{"epicGamesJwtToken": "f2dvKZyHChRPHvdk"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'cKW21B5EFtD2pYaK' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'Tz1gcE2XCwTkRUIX' --body '{"serviceLabel": 75}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'IFHNmB9mYBvtOwxj' --body '{"serviceLabels": [48, 33, 50]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc '{"appId": "wzuIpGBYHTHoSVxg", "steamId": "QCbpZx5yMGIQ1ZxV"}' 'IefYlKBJyQMqUEfD' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'ikX6yOlgZrn0I6T0' --body '{"xstsToken": "hvcAFTaSWR4VOGIY"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements '7hM6uhonkAe0FdTS' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'SEluBxM47BTww3nB' 'TVmBFZ6TIs9bTi2m' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type '7eNsYEqKkeuLWDfe' 'DEMO' --login_with_auth "Bearer foo"
platform-public-get-user-entitlements-by-ids 'GfmCMTr9ACnI2sMr' --login_with_auth "Bearer foo"
platform-public-user-entitlement-history 'Egl7ZR1HCkf2Sw78' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'lLGKjDHuXt358gzq' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'RMuMPrIekxq58fik' 'q83hqJ7HP63Se6kV' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'W5fkl60ImLBv6nUU' '0r1rfX9stpvJUuyP' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'dzx8BM2wEgTtLRT5' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'stwQFUEbTPQ8p7VM' 'lxEXnqHwMyKpwphj' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'UXvM1GqMkZ44UXgd' 'BqtJaRyDlP9qIZJ5' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "options": ["9x2BYpyKEBQ7TW7l", "ZvDbwFJJhBRdq8Bg", "AI81k4Gr7jVVx5l3"], "requestId": "yrH9HR4reG0HwUXx", "useCount": 87}' 'dBjKmCBXETZwqdzA' 'X28DikGk8cWiX44a' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement '{"requestId": "zSHcwicUVq2XPljT", "useCount": 2}' 'j5R0yZSVQ8SSeJ4q' 'y4PIKleuV271bwZ4' --login_with_auth "Bearer foo"
platform-public-split-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 0}' 'iLSzQnv0C00dtNGG' 'zbGYSYo9fY2EBZAH' --login_with_auth "Bearer foo"
platform-public-transfer-user-entitlement '{"entitlementId": "QXc4Xcae7VKl0ARz", "metadata": {"operationSource": "INVENTORY"}, "useCount": 62}' 'ArlfE1NSmtcADoZv' 'd0La7P4JI4H7uDzk' --login_with_auth "Bearer foo"
platform-public-redeem-code '{"code": "OHTdnUtdrRcs3GeO", "language": "Xmg_fz", "region": "Xi6LEqJERpbxEq07"}' 'txnvZZeAf7QBuZK5' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item '{"excludeOldTransactions": false, "language": "dOa_239", "productId": "GnLYUYR0yOvJhUjz", "receiptData": "cMtwINUlrhIpnlam", "region": "2EefVopbpPhsana0", "transactionId": "uXG7GUTV1BwgkLDj"}' '4pjVktyoNSsEHlzy' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'd0SarkhltUxgbN5e' --body '{"epicGamesJwtToken": "ElQNESFLD8hCc9on"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '{"autoAck": true, "autoConsume": false, "language": "Bwrv-hsXN_Zd", "orderId": "kvEv6tNjGRhrmRAx", "packageName": "RGeIKGlCJmDXpjyv", "productId": "LSHB1y3klHuAGnid", "purchaseTime": 83, "purchaseToken": "c3RDXF5055tUleni", "region": "mjIbm0riCaNp8dUB", "subscriptionPurchase": true}' 'f1T5FzYMf1jaCgZo' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'sntPzP1vXXB92q15' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store '0WEIetOXMt37MXy7' --body '{"currencyCode": "Fp7lUfQqXrqGadwv", "price": 0.580747158160111, "productId": "lJFX1ZHV9yo9Ur1h", "serviceLabel": 10}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels '{"currencyCode": "A70NgJTxjtzgO7W3", "price": 0.31546935676456456, "productId": "aRvJ6lKWJwHO65aO", "serviceLabels": [81, 65, 59]}' '4zvBzGh3mhIDNuMB' --login_with_auth "Bearer foo"
platform-sync-steam-inventory '{"appId": "ZegHtB9uTCiiIoMZ", "currencyCode": "CjGiOZJpUf9RpcfE", "language": "YNVb_kAqK_663", "price": 0.24593028086658053, "productId": "gWhTED5YmPTBUkm2", "region": "FyvdguCYVqFyIKh1", "steamId": "YtTY4AejyQc5Dac7"}' 'hSLldWx5DyniVESU' --login_with_auth "Bearer foo"
platform-sync-steam-abnormal-transaction 'grROrP1ip3jNG68D' --login_with_auth "Bearer foo"
platform-sync-steam-iap-by-transaction '{"orderId": "Byf2UMPtigq9zOQO"}' 'cAqBj0bXhOr9OHt6' --login_with_auth "Bearer foo"
platform-public-query-user-third-party-subscription 'STEAM' 'msrmJFHGiYnyhbqx' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 '{"gameId": "LuTZIxgiUaiyy0aW", "language": "bSR_097", "region": "78smYdyge6DroOyw"}' 'OxI4G6jZzoYIFAvY' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'fT8XQw2EOq6BFjmN' --body '{"currencyCode": "4OqKGLRpNWzKZtZn", "price": 0.37758126362673583, "productId": "gywmr4CYNGm7Tk1m", "xstsToken": "MyeNRsjQuDEgO3ME"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'QNL6ijLRvQOgoaBo' --login_with_auth "Bearer foo"
platform-public-create-user-order '{"currencyCode": "oTawHLMxhx9nC3o6", "discountCodes": ["RpgjooaBVemsbkaX", "pXU5MDJLCB6WbXWI", "ZQ6nTj9rZpkSntuO"], "discountedPrice": 8, "ext": {"LyS4VbHJvD0lL7aZ": {}, "UY9d1Idud8bjYeBV": {}, "Mr7zHYmRE4X36KUO": {}}, "itemId": "dfEmoIYwSxxAsfwD", "language": "XIKW-MN", "price": 40, "quantity": 55, "region": "0zPkQWRUlgE0kxzF", "returnUrl": "Mq9ttbEHAEV7C65A", "sectionId": "ns9SquNSJIay5VdU"}' 'dYy9Y9OCSmmT3WKi' --login_with_auth "Bearer foo"
platform-public-preview-order-price '{"currencyCode": "jbqhT3uyQRXvvcUY", "discountCodes": ["3rbkv8V98cupW0L5", "DeWPZ8yhwQ0gIdj1", "lTJdNLmAvEdEBVAU"], "discountedPrice": 100, "itemId": "h1YDedZdNqkXPWZf", "price": 93, "quantity": 84}' 'ZfdKp9q4nXuK0tJA' --login_with_auth "Bearer foo"
platform-public-get-user-order 'Yror2XdtSCG7ZExO' 'oIpWzacOvwUsnIbQ' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'M3ZAtyEWKWoZRUL7' 'wS3HaMTXAX6y0STT' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'N2sBEijjjpvSzGkE' 'D0oweFYDBPyd1jJB' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'xbrbuFay9PXgEQS4' '871QSmsspn5sNfif' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'K65tvaH9jwcO48pt' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'hyYpBJDHIIxTIGI5' 'paypal' 'V2PnCs9R0D5jZEwx' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'cow6L7c3COEP4AZx' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions '70uwV4XgvGTMHkXe' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription '{"currencyCode": "EwuFJf7tbq5KikDE", "itemId": "7hWvT5bzcfzIpL2p", "language": "cz_YRJX_623", "region": "fVlu4bGB1pyk0Ppx", "returnUrl": "XZDy5Pmbu7RrD9a5", "source": "mdlXTCL467xHbAiD"}' '3Pr3mXZO1PnbSlfV' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'RlAI8F2f3mEv09kA' 'A5hnQtd4bcivHGIE' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'plRpcHDWcIoJ45L0' 'Ze3YamxKDSZTl4Ui' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'JSCbG4UmG3TkMTzO' 'cBIciiKwRs1E7sH2' --login_with_auth "Bearer foo"
platform-public-cancel-subscription '{"immediate": true, "reason": "9MJ6F7Rr7O15jqeK"}' 'ssQpme6eyM48tE7e' 'JRsXNeveQXqnFRYm' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'EIX40XOUoLOa7oDz' '00gxcoaH6u9TVf4D' --login_with_auth "Bearer foo"
platform-public-list-views 'vEzpoPRiClZ6rlwX' --login_with_auth "Bearer foo"
platform-public-get-wallet '99AHMLHqguYykVWz' 'NwPcvGyieBsRUduW' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions '5lxSlorWEGN5bPGS' 'OSiiItrSrEJMBAIw' --login_with_auth "Bearer foo"
platform-public-get-my-dlc-content 'XBOX' --login_with_auth "Bearer foo"
platform-query-fulfillments --login_with_auth "Bearer foo"
platform-query-items-v2 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'xnfggnZ3EZp6wSAu' --body '{"itemIds": ["fwYirs9lwvPKd925", "u3fFLV0YeMrVaYST", "RYGFzgLZ7gEypQf2"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 '{"entitlementCollectionId": "Pn9A4gcbDJ0LmdnO", "entitlementOrigin": "Xbox", "metadata": {"pLAi5JmzvM6JFKB8": {}, "ikHpl3sNRaDEC2Ok": {}, "XA3WqypoOw0H2s0s": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "jNpHhM2ZXp4N0ROm", "namespace": "UCTrS7Gi9Iigk9va"}, "item": {"itemId": "mO7Q2WQwSWqSs05r", "itemName": "jISy4B0X9AJdkT7U", "itemSku": "YCV8agvwOI2LlOQN", "itemType": "RN132RdgwMXv9olK"}, "quantity": 31, "type": "CURRENCY"}, {"currency": {"currencyCode": "RyWQim3qlART9mPP", "namespace": "mYUvlkBGPJFaFzkA"}, "item": {"itemId": "BC8zWMcYW5iRrw32", "itemName": "FRg8y4rOuj7J6ijJ", "itemSku": "bcycXmBcrJLb7lab", "itemType": "yotifVk9KyqceGv0"}, "quantity": 59, "type": "CURRENCY"}, {"currency": {"currencyCode": "EDTVSjINYeKLowG7", "namespace": "UQB9pXzuCK5qd2m8"}, "item": {"itemId": "A5axixm9X9TXNhN8", "itemName": "y1PVriIyv9kjuiAG", "itemSku": "iXx47etMikLFggYD", "itemType": "c2FMbzZoeKagnKf2"}, "quantity": 43, "type": "CURRENCY"}], "source": "DLC", "transactionId": "wscICro6P8FWIPeq"}' 'aBeD2uBAvIXEc2CC' --login_with_auth "Bearer foo"
platform-v2-public-fulfill-apple-iap-item 'gYcFo9A93o22UgOb' --body '{"transactionId": "COiBWdw2b031dm4N"}' --login_with_auth "Bearer foo"
platform-fulfill-items-v3 '{"items": [{"duration": 27, "endDate": "1998-02-14T00:00:00Z", "entitlementCollectionId": "MOpmm04BlZUAlYnC", "entitlementOrigin": "Xbox", "itemId": "11qD03er5mdraK47", "itemSku": "FdxXisVlo3aVOGAR", "language": "FDJcGWy826ilCxAx", "metadata": {"QUM5DyrPfBmpZIzS": {}, "FUZqVR5FWGfH66eF": {}, "CMTsLA8vYVvrIAEe": {}}, "orderNo": "hUV0jsjAyVgxS54N", "origin": "Xbox", "quantity": 67, "region": "s3XdhMbQX9D1znEW", "source": "PURCHASE", "startDate": "1980-05-09T00:00:00Z", "storeId": "11bFXkf7rQJ4Kj7Q"}, {"duration": 49, "endDate": "1999-04-26T00:00:00Z", "entitlementCollectionId": "4xF8qFllM1LTrl4M", "entitlementOrigin": "Xbox", "itemId": "RWZPe4ZLAQWuBJwx", "itemSku": "ObZqMGxhffy9cHrL", "language": "Yfftad99JDcnn7f2", "metadata": {"d8SOWP2dw6Uy88Wp": {}, "QalG38VOo82aLD9j": {}, "UjuDITjifWRbmtK7": {}}, "orderNo": "MTxcCWnMiCLsjroK", "origin": "System", "quantity": 70, "region": "PApA8GsGwyocvY9N", "source": "DLC", "startDate": "1992-01-03T00:00:00Z", "storeId": "jLJQJXwUApJWohXn"}, {"duration": 8, "endDate": "1998-05-20T00:00:00Z", "entitlementCollectionId": "RB7pu7BaONXyE5fI", "entitlementOrigin": "Steam", "itemId": "X3XwhOlgcpcOIxqC", "itemSku": "MSpZxby2J9vGOUeS", "language": "eGb02vDPUpv5VEdI", "metadata": {"G82dpIbfxVFfdvKQ": {}, "VgPQw3MVXe4xBPDW": {}, "HRHCCVDBRjPUQWYV": {}}, "orderNo": "xGQVFJlDDJ7z4Pb5", "origin": "IOS", "quantity": 84, "region": "yGID39Ung1D57FjY", "source": "IAP", "startDate": "1993-10-16T00:00:00Z", "storeId": "fOjJUmCbi2llksf6"}]}' 'GA8vTt92kldCoyRd' 'iOikUdqGocLYBaRC' --login_with_auth "Bearer foo"
platform-retry-fulfill-items-v3 '7T5qSl7WN3ncPkqi' 'TKzz72PKXjShM2Dv' --login_with_auth "Bearer foo"
platform-revoke-items-v3 'esmMIbiQfaHxl2YU' 'NRLRjgKqSSYgZnVf' --login_with_auth "Bearer foo"
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
echo "1..499"

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
    'a8govttlpFAq8oeb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'nS4Y2zkGYTr9yJIv' \
    --body '{"grantDays": "eX52r6Inl9VTJB9A"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'l3mn2DsHDHzSVJzh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'U5Z44zgZ1fieLdl3' \
    --body '{"grantDays": "Y82DOj5kPuNRZZaU"}' \
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
    '{"clazz": "ccuBYep9n7b17fsb", "dryRun": false, "fulfillmentUrl": "LSJvdsGpmmUeMikW", "itemType": "EXTENSION", "purchaseConditionUrl": "fHFLSr0O4rEZTbFD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'CODE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    '7iRVFfFvWenMNV00' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    '{"clazz": "KVuLF9WDnGO3bpQW", "dryRun": false, "fulfillmentUrl": "uCwKrt6wn3yVrRCh", "purchaseConditionUrl": "6j7rpv8K8fBAeRa1"}' \
    'R6ksxLYGkOLgReff' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    '5IHxLJIemNHbzgAF' \
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
    '{"description": "jtjC7suvgIUkB2PA", "discountConfig": {"categories": [{"categoryPath": "GJqOrkdlZB246OY0", "includeSubCategories": false}, {"categoryPath": "BRpdbLCiwxOx2XQn", "includeSubCategories": false}, {"categoryPath": "xPqXhqeNMDGA3O5h", "includeSubCategories": false}], "currencyCode": "Al6U2g9imVMh3i7j", "currencyNamespace": "095rDL6lEuB1ZIMI", "discountAmount": 38, "discountPercentage": 59, "discountType": "AMOUNT", "items": [{"itemId": "dFvYokH9t2u8ZZny", "itemName": "HKkk6Gh25tEcX9Ge"}, {"itemId": "gDnrYz0GFpSVdxFs", "itemName": "XAp1roclyXllFitP"}, {"itemId": "amSKRzDIZgSk6suS", "itemName": "90ZbDdmjU11QIZtk"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 8, "itemId": "A5V4gjWv1W6cqnvS", "itemName": "uKswQ7vH8GScnP5Q", "quantity": 53}, {"extraSubscriptionDays": 29, "itemId": "RBY1UrefgmVFBVz4", "itemName": "KRCU0p4jIt01gzH1", "quantity": 63}, {"extraSubscriptionDays": 70, "itemId": "A43WqIMJdrqHIsJ9", "itemName": "8WRjqYieXRthQZvz", "quantity": 90}], "maxRedeemCountPerCampaignPerUser": 96, "maxRedeemCountPerCode": 17, "maxRedeemCountPerCodePerUser": 46, "maxSaleCount": 31, "name": "8MJRIzIgJKg9y86B", "redeemEnd": "1974-04-25T00:00:00Z", "redeemStart": "1999-08-09T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["KqywS6DKNSeb2UMW", "OgVeYkCvqq0tO15p", "EVG7sNihxpuuL7DJ"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    '5LijlQTVq8Bh1p0N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '{"description": "CKWNkLU5ty3uQa7F", "discountConfig": {"categories": [{"categoryPath": "l3ZhSMLtrwnjTJVD", "includeSubCategories": false}, {"categoryPath": "YPNBp9wA4LxO2n7W", "includeSubCategories": true}, {"categoryPath": "FzBCD9S03D7JLsIM", "includeSubCategories": false}], "currencyCode": "VOMRvvqkXDMPzOB0", "currencyNamespace": "8tpk0qhZath4b4Ht", "discountAmount": 45, "discountPercentage": 1, "discountType": "PERCENTAGE", "items": [{"itemId": "L4oAF2lqx8yneWKr", "itemName": "Oy4xcg30BqC5W7g7"}, {"itemId": "hiwumJTI3jlZPjoC", "itemName": "dGiIP6cB3Pj63MJX"}, {"itemId": "IuLWYb2iHHVN0ZBg", "itemName": "vrigXUT4fRbawD5y"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 19, "itemId": "gvMG8QAaWUhIguMv", "itemName": "KDOrx0wQXKEroyKz", "quantity": 3}, {"extraSubscriptionDays": 37, "itemId": "2oF99xI1VVtVrVT6", "itemName": "Hn8B2d1hZUnoQwg5", "quantity": 42}, {"extraSubscriptionDays": 35, "itemId": "DEjxqhgYqmMqIdlR", "itemName": "rQmuILkeRUafUDP5", "quantity": 2}], "maxRedeemCountPerCampaignPerUser": 67, "maxRedeemCountPerCode": 70, "maxRedeemCountPerCodePerUser": 56, "maxSaleCount": 99, "name": "csI8ecZSvzXYOyts", "redeemEnd": "1975-08-17T00:00:00Z", "redeemStart": "1978-01-20T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["QytQagui6lsKF28n", "7UC7y1MKYVeoGFrD", "b8unXv1iE7YgEZsp"]}' \
    'OJ0NiZl6OVLxKtkB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
$PYTHON -m $MODULE 'platform-rename-batch' \
    '{"newName": "paCG8Nu5m4ctwUNV", "oldName": "8ncebaJ0DCuIeESt"}' \
    't3PbyctX7HC2haQw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
$PYTHON -m $MODULE 'platform-query-campaign-batch-names' \
    'VWONEpAPedzI2Adl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'qiyEJIQcbZJJ3Ahk' \
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
    '{"enableInventoryCheck": true, "itemDeletionCheckConfig": ["ENTITLEMENT", "IAP"]}' \
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
    '{"appConfig": {"appName": "i0bnppEJFISze88r"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "jZoDzMmMgoMxZZ9A"}, "extendType": "CUSTOM"}' \
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
    '{"appConfig": {"appName": "4E2FQb6S0VmaTR7E"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "xiHpdfKH35RWUUVE"}, "extendType": "APP"}' \
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
    '{"categoryPath": "CB5wzF6oLIrAwjAs", "localizationDisplayNames": {"go51XHJBG2PmyeFa": "BiT3SyLHXZSyfjuk", "WmkfkiF2GZPuyWBV": "H66JU1IICVNNRV4l", "BToTcn1l44ebrKEK": "deo779KG5yCz9jVs"}}' \
    '1lYK1Mx9rEFkDqb3' \
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
    '1AZzwiQBaGdS41VR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '{"localizationDisplayNames": {"IyAHjYxVhCbXbeBE": "oTlfR33jqIRoXcCP", "aLXJM2B9bMohkWsF": "KIdycYHQcu7JkKBc", "LFRf50Y7ME2QmYiY": "qap7masUcayqmp7v"}}' \
    'hz1T6cSrZL2CgHxd' \
    'mYDj9vZNgfI1AeYH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'e8WPQGPclChxLfbX' \
    'rH6f2GDrNbLOjGz3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    '4ct0ctEeH43wYuLn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'I7cTzIUERPlQI99h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'Mc4NbiJWP5r9EwbI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    '{"batchName": "GMGJ70P9IqAyNlZ2", "codeValue": "OwFSebBkXkaxtY97", "quantity": 94}' \
    '8udl6fLkxFnAqyvj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
$PYTHON -m $MODULE 'platform-download' \
    'By0NXg7zd6SFpkV7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'cAICgWFJZGnNa5yO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'M68r4W1fDZL80oPQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    '0s7QhC8hgSgytNEo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'jK3YgWH9l7rv6XUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'INd4keCeiw7P2PtU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'rPawQPaHARrhjbEU' \
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
    '{"currencyCode": "5n0PNuFyKW95dJsG", "currencySymbol": "oBIjCKlD3axSivIt", "currencyType": "VIRTUAL", "decimals": 95, "localizationDescriptions": {"xLINmdHTGLtX6TN5": "ctYX1sZnYF3hWmCC", "IrP0lJXexseo2e6B": "CNJTTRIHDKdVfOUr", "14yZH00n8MsRjaB8": "iurBWW5jSJi0seeG"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    '{"localizationDescriptions": {"JIqnatME8GnNWfAY": "1yY6D1Euusf0eOzo", "SyKttYwUUlMRG8vO": "0OSsJmhOJDUyyag9", "jBDJFJGOEiWJ8cLr": "ryS5a6A4tL8YKMrU"}}' \
    'BL6dDTVwPIt1hrg2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'mhbI0NDshb7ZzQuB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'PyNi1GhZHEj6p5gr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'jk5wzdksOUku8dtQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
$PYTHON -m $MODULE 'platform-get-dlc-item-config-history' \
    'oIrpvmM19X4zFOvd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
$PYTHON -m $MODULE 'platform-restore-dlc-item-config-history' \
    'RTpGmBUjfEU9vL8H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'RestoreDLCItemConfigHistory' test.out

#- 59 GetDLCItemConfig
$PYTHON -m $MODULE 'platform-get-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GetDLCItemConfig' test.out

#- 60 UpdateDLCItemConfig
$PYTHON -m $MODULE 'platform-update-dlc-item-config' \
    '{"data": [{"autoUpdate": true, "id": "6tuVfQwYIqDWqbPm", "rewards": [{"currency": {"currencyCode": "wQw8J7na1POTXhXL", "namespace": "RU5prAdqnnPOiTVz"}, "item": {"itemId": "AeQq6rnWJoTpYoe2", "itemName": "uHaWnO98YwqHZnED", "itemSku": "kfmNbDTMGgET2yS6", "itemType": "C8a8L0vQDS4EVpBm"}, "quantity": 38, "type": "CURRENCY"}, {"currency": {"currencyCode": "Uzx64Gr4XEm0uYYu", "namespace": "AmqhftIfe2zdqZ7h"}, "item": {"itemId": "t1vUiJ7jBXy8psNo", "itemName": "HNalwgvju62rPFMb", "itemSku": "E1cW57GaNZLT1z0G", "itemType": "qDZN7ftHOhVy48YY"}, "quantity": 13, "type": "ITEM"}, {"currency": {"currencyCode": "1AkRh3NmbRhMxKeI", "namespace": "gwq1NZmxa0ghRG02"}, "item": {"itemId": "0QpWTNKsVyK8EU8J", "itemName": "Yc00PA2ef1jFeqQ8", "itemSku": "mBpTuvLTJUzwXJFa", "itemType": "WW3JVdYpfHOYoLva"}, "quantity": 4, "type": "CURRENCY"}], "rvn": 64}, {"autoUpdate": true, "id": "scEQfBFZXcSXpU81", "rewards": [{"currency": {"currencyCode": "S5H9XsZyvZOFJ5Rr", "namespace": "FZYcwfQ1Q2BbcjSp"}, "item": {"itemId": "v6Nt1oz4tdgfKu4b", "itemName": "mK8kOKcEoCRjQJlP", "itemSku": "Y3p42OS9iGNElTpM", "itemType": "lvRDZSIuM0OXOHPl"}, "quantity": 43, "type": "CURRENCY"}, {"currency": {"currencyCode": "vsry8AKSZxOhUhl3", "namespace": "Y0EshaG0uDiJNUux"}, "item": {"itemId": "K22saWaGvrzBdLvF", "itemName": "UBZDnVrcwbsD0RDL", "itemSku": "xWgEWwoHpV8E1xQZ", "itemType": "La7Kw77UpCxNyx1j"}, "quantity": 20, "type": "CURRENCY"}, {"currency": {"currencyCode": "66YPD4vNdENY1r1r", "namespace": "I0T97qA1OiblWlz2"}, "item": {"itemId": "LXQNqcONcJIsYRQz", "itemName": "97fRWI17eNP3Y2nW", "itemSku": "lS9Sfjh0htyVaGj4", "itemType": "y9ahS7h7XVlmc5Rs"}, "quantity": 82, "type": "ITEM"}], "rvn": 98}, {"autoUpdate": true, "id": "SIqObR55tV0BlN1i", "rewards": [{"currency": {"currencyCode": "Fvw0GSLBmie8SJck", "namespace": "SRbu7hgmUm7RVCUR"}, "item": {"itemId": "EDdoGatGQ1SeOXsg", "itemName": "4jofp9PvlQ1xdmr4", "itemSku": "JDpvZgvPGHjV7MNT", "itemType": "pM7fSods1zdVT0aW"}, "quantity": 20, "type": "CURRENCY"}, {"currency": {"currencyCode": "8Othvd3jzMDAf40g", "namespace": "KSizvmxts5HSQvRA"}, "item": {"itemId": "PG9JoVSLrbs5niXk", "itemName": "jpkOgRCC7qfz5jV7", "itemSku": "NTRYld9FJJ10goNq", "itemType": "8uq79Du28SRRAMaQ"}, "quantity": 64, "type": "ITEM"}, {"currency": {"currencyCode": "aqjKzWDAauqLKarc", "namespace": "LQRQtC927GneBM8L"}, "item": {"itemId": "vzgyIVzGFBLJ5vbC", "itemName": "9NfLTFJGOzAIAqpm", "itemSku": "kDdFSs4s7u1VUuLm", "itemType": "enyxTQVkEg5wouUK"}, "quantity": 0, "type": "CURRENCY"}], "rvn": 3}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'UpdateDLCItemConfig' test.out

#- 61 DeleteDLCItemConfig
$PYTHON -m $MODULE 'platform-delete-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'DeleteDLCItemConfig' test.out

#- 62 GetPlatformDLCConfig
$PYTHON -m $MODULE 'platform-get-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetPlatformDLCConfig' test.out

#- 63 UpdatePlatformDLCConfig
$PYTHON -m $MODULE 'platform-update-platform-dlc-config' \
    '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"m8oH9zCfw7mCMkbv": "SIm7JROcwVmGyrBp", "nTPF4VrRiFSPs2ZM": "cVFcrixULzSeTnUW", "GxxfnMIDSCPr1m1F": "g6tc250c2okDTem6"}}, {"platform": "OCULUS", "platformDlcIdMap": {"g812NQb5Glh8srTl": "Tj61WdV2XUo1BO1r", "E7E12Fapao5jo9nJ": "oKEb8tHmFwLGan2S", "rKckNxLWH6rjhRL9": "uxoV5Oe8ktlePEo1"}}, {"platform": "STEAM", "platformDlcIdMap": {"NyV2HLHZT3oYJlC4": "ie3InnSA22NHTb4q", "XYyJUAlKlTwdJEPo": "emVtmVXTs3tCu4F9", "IgDT2tq2V2lMzfIQ": "HCZ90DqQgP6ynrQj"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'UpdatePlatformDLCConfig' test.out

#- 64 DeletePlatformDLCConfig
$PYTHON -m $MODULE 'platform-delete-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'DeletePlatformDLCConfig' test.out

#- 65 QueryEntitlements1
$PYTHON -m $MODULE 'platform-query-entitlements-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements1' test.out

#- 66 QueryEntitlements
$PYTHON -m $MODULE 'platform-query-entitlements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'QueryEntitlements' test.out

#- 67 EnableEntitlementOriginFeature
$PYTHON -m $MODULE 'platform-enable-entitlement-origin-feature' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'EnableEntitlementOriginFeature' test.out

#- 68 GetEntitlementConfigInfo
$PYTHON -m $MODULE 'platform-get-entitlement-config-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'GetEntitlementConfigInfo' test.out

#- 69 GrantEntitlements
$PYTHON -m $MODULE 'platform-grant-entitlements' \
    '{"entitlementGrantList": [{"collectionId": "YH0N2loTnRa0KiQW", "endDate": "1992-04-15T00:00:00Z", "grantedCode": "xd1gqlwx9CE4Wcsm", "itemId": "YtCkIgcwiDWQFghm", "itemNamespace": "Ii6fphDw3p9QWqwT", "language": "HdPq-uYJb", "metadata": {"KoTYeHaCuN7zpX9v": {}, "p4QJdCrwkz0nw2ox": {}, "Kye8jZqj7k0YiLqO": {}}, "origin": "Xbox", "quantity": 92, "region": "RqXWXQ3JdXdFz8pc", "source": "IAP", "startDate": "1986-09-03T00:00:00Z", "storeId": "EziE5yIvijq9ix16"}, {"collectionId": "vo60jgvwV3C9hJ1k", "endDate": "1994-05-09T00:00:00Z", "grantedCode": "ZonK02WHGVKDcKul", "itemId": "j3Pdegy4G6LOpak8", "itemNamespace": "CYp6DPdukc04j6rb", "language": "gc-beCP_KW", "metadata": {"orrw9QH3rNhDepQu": {}, "m4Dj7pR05RTGXGRk": {}, "YXifTd5nAOF9VV7J": {}}, "origin": "GooglePlay", "quantity": 86, "region": "COm4wL729Hma0nCd", "source": "REFERRAL_BONUS", "startDate": "1988-09-02T00:00:00Z", "storeId": "6O8coYDWUfcL1qse"}, {"collectionId": "gBsrNqeW5BxVe8iW", "endDate": "1988-05-31T00:00:00Z", "grantedCode": "POMXufZPWSe20JfN", "itemId": "vtNcWtpUkw98x3tM", "itemNamespace": "M1bFFDIqKD8HJ4X0", "language": "HEe-EmkS_193", "metadata": {"rz08jh6Tyq7WUilX": {}, "gtf5UctyV3aSw4tw": {}, "ReM5DcHde3fkHf7t": {}}, "origin": "System", "quantity": 90, "region": "8WTOTeBOcYhf6nGC", "source": "OTHER", "startDate": "1985-12-09T00:00:00Z", "storeId": "PxVWlRFnIekrQ99e"}], "userIds": ["gLj4mCShMFlbrRGj", "cmenxguw5bO8Vh4J", "aKYAsoMlLJGMl5xF"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["oBQ45Za4JR4S3iac", "6vLeoIULJlWXmQFl", "ef1tSHJf6sVpwAAK"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'KqmTy0ZSyJ7IIUXl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
$PYTHON -m $MODULE 'platform-query-iap-clawback-history' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
$PYTHON -m $MODULE 'platform-mock-play-station-stream-event' \
    --body '{"body": {"account": "BlZMQeSnOg5gf1Sw", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 35, "clientTransactionId": "0hfM5vQmahJlT5OU"}, {"amountConsumed": 61, "clientTransactionId": "xV5C71gTw8BJPFct"}, {"amountConsumed": 46, "clientTransactionId": "nsuDnkuOJekbO0sk"}], "entitlementId": "7o1z37uuqLDQF12k", "usageCount": 54}, {"clientTransaction": [{"amountConsumed": 11, "clientTransactionId": "VqRuNsXxRu4EQqR3"}, {"amountConsumed": 75, "clientTransactionId": "KOfFFLvER3xqCwUg"}, {"amountConsumed": 76, "clientTransactionId": "GquPnIPwR1BinZ4U"}], "entitlementId": "LwAKO8n42UuxEyfz", "usageCount": 73}, {"clientTransaction": [{"amountConsumed": 65, "clientTransactionId": "sZd9sB6CV9KiWkbd"}, {"amountConsumed": 32, "clientTransactionId": "cGohdjQUwVdPsArk"}, {"amountConsumed": 10, "clientTransactionId": "RT39gKYLk9DmjJh6"}], "entitlementId": "PnpTXWAUt8lgqNM4", "usageCount": 31}], "purpose": "KkD7wAHMrv8zABDh"}, "originalTitleName": "YAVxvs3ugNvvgI2k", "paymentProductSKU": "1P9nQxzj3AnmpWfj", "purchaseDate": "e5cAtTDvwFHcoODi", "sourceOrderItemId": "5oF1pccdjjZpFnVL", "titleName": "b7xerpjVPfktNnl8"}, "eventDomain": "UYH5kesuOtYHLqcd", "eventSource": "y05YrqdFn8sQ7yc8", "eventType": "xLKyBfGLHEAKhp61", "eventVersion": 89, "id": "2ncRf7tEGzYqRoHm", "timestamp": "6EtyXqQbKWMJ0aOD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
$PYTHON -m $MODULE 'platform-mock-xbl-clawback-event' \
    --body '{"data": {"eventDate": "iWn6bPmSa85Riu1a", "eventState": "laVEhjJZbwMHkFWL", "lineItemId": "SzmAXAruYrVjX4HR", "orderId": "Tvm3Qr9IkuW6jjof", "productId": "c6itDEsq0dHfYG6k", "productType": "853GERdJdphepF9d", "purchasedDate": "fsng9FGGjJ0hRPUB", "sandboxId": "FxM2Fr3olO10RAyI", "skuId": "Zs2VfCRhzfKDAGIA", "subscriptionData": {"consumedDurationInDays": 72, "dateTime": "lizsWGrtIgVPb7ho", "durationInDays": 30, "recurrenceId": "TfDc3w1tAXRrQtHk"}}, "datacontenttype": "m0Tthcx9W7PkFNVa", "id": "7czD4wybVjqOKrqY", "source": "GxcBxfjLUZHK0OO1", "specVersion": "yQsMBQAdOfrtHWyG", "subject": "g5TU3INkMgjsnP8i", "time": "tevmjTJjj5tfFQv3", "traceparent": "84ri6A7z0hsW0IHI", "type": "YvJ7PPgVaFwGhl5z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'MockXblClawbackEvent' test.out

#- 76 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetAppleIAPConfig' test.out

#- 77 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    '{"appAppleId": 34, "bundleId": "zA3MkosOcoAcV0T2", "issuerId": "G3vQZNiqaXzRBra3", "keyId": "I4K9iBdljXtowifB", "password": "fAw30kOykBuDJ0IP", "version": "V2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UpdateAppleIAPConfig' test.out

#- 78 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'DeleteAppleIAPConfig' test.out

#- 79 UpdateAppleP8File
$PYTHON -m $MODULE 'platform-update-apple-p8-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UpdateAppleP8File' test.out

#- 80 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetEpicGamesIAPConfig' test.out

#- 81 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    '{"sandboxId": "eAL4MZwEVJe7waGy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'UpdateEpicGamesIAPConfig' test.out

#- 82 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'DeleteEpicGamesIAPConfig' test.out

#- 83 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetGoogleIAPConfig' test.out

#- 84 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    '{"applicationName": "B6g2M5JiwtMOfDfo", "notificationTokenAudience": "MgU2yFBTPfnmfN5E", "notificationTokenEmail": "20ORMCVBTrkvObsi", "packageName": "HQgt7OfL6AcBPjUY", "serviceAccountId": "URB3Rsrc0qvV8Gq1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'UpdateGoogleIAPConfig' test.out

#- 85 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'DeleteGoogleIAPConfig' test.out

#- 86 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'UpdateGoogleP12File' test.out

#- 87 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetIAPItemConfig' test.out

#- 88 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    '{"data": [{"itemIdentity": "cw3ytGWVKPoA1aKR", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"M1Ot0PWppB2H0G8X": "ko9l5J0IOZmnpzwH", "hig9d6vdgfrNiGrH": "0hDjH6IYpfINzNjk", "5V8T9pQjnGB83yon": "udf21g0NhuYvwCAT"}}, {"itemIdentity": "IUep61ZsSiqW7I03", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"V3NSjXUXSMKY09x4": "TKOwsyRNnaLNhw0x", "GnXc29UDQxeiBo2h": "B9u1v1POCjseK1xa", "SbMjyFrYsITcyT5A": "hNNH0Ht1yPtBwXIu"}}, {"itemIdentity": "YrbPUcvEOJ4Pghks", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"ZK5gFHyIOnLu9WBA": "S0qUswy0AnJZJdKr", "In9hHHGg1cTZsJp1": "b5yB8c9gCPFDZh6J", "fJfg4X1dZOTBgYwL": "jPGFqkbTL8ifUAMU"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdateIAPItemConfig' test.out

#- 89 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'DeleteIAPItemConfig' test.out

#- 90 GetOculusIAPConfig
$PYTHON -m $MODULE 'platform-get-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetOculusIAPConfig' test.out

#- 91 UpdateOculusIAPConfig
$PYTHON -m $MODULE 'platform-update-oculus-iap-config' \
    '{"appId": "ekrD0J6iuJsVjhLg", "appSecret": "aFeFJ5QRuvEsU5Qk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UpdateOculusIAPConfig' test.out

#- 92 DeleteOculusIAPConfig
$PYTHON -m $MODULE 'platform-delete-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DeleteOculusIAPConfig' test.out

#- 93 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetPlayStationIAPConfig' test.out

#- 94 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    '{"backOfficeServerClientId": "msmfFhPTfXVzS3hF", "backOfficeServerClientSecret": "UXbdYU08BQZXTcZn", "enableStreamJob": false, "environment": "oYaII5c5UqVvKR3y", "streamName": "dSEb2trPjqlB5c8a", "streamPartnerName": "78gp4BGN4NAydb6G"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'UpdatePlaystationIAPConfig' test.out

#- 95 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'DeletePlaystationIAPConfig' test.out

#- 96 ValidateExistedPlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-existed-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'ValidateExistedPlaystationIAPConfig' test.out

#- 97 ValidatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-playstation-iap-config' \
    '{"backOfficeServerClientId": "gyFczEOMXF1T1sU9", "backOfficeServerClientSecret": "xsmACLFHrXWFobqn", "enableStreamJob": true, "environment": "rnpVE1acxZoDXdPO", "streamName": "RkWkyTcJzvDUlhTl", "streamPartnerName": "BNpvkjg48iVKCqEq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'ValidatePlaystationIAPConfig' test.out

#- 98 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'GetSteamIAPConfig' test.out

#- 99 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    '{"appId": "eZP1CFaMkJVBkZU3", "env": "SANDBOX", "publisherAuthenticationKey": "kxEx6tlxks0yGW8q", "syncMode": "TRANSACTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'UpdateSteamIAPConfig' test.out

#- 100 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'DeleteSteamIAPConfig' test.out

#- 101 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'GetTwitchIAPConfig' test.out

#- 102 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    '{"clientId": "UxEikRyHC9VWMnzb", "clientSecret": "uNQNJxCbLEhfrPxI", "organizationId": "RdbUwkN6Tr6vRneC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'UpdateTwitchIAPConfig' test.out

#- 103 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'DeleteTwitchIAPConfig' test.out

#- 104 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'GetXblIAPConfig' test.out

#- 105 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    '{"enableClawback": false, "entraAppClientId": "qBsbDmsTk9UuiQwe", "entraAppClientSecret": "zvArAKJwZGVyknpO", "entraTenantId": "huGhAnlnjyPBj7h3", "relyingPartyCert": "hncU5vgL62RA2BI7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'UpdateXblIAPConfig' test.out

#- 106 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'DeleteXblAPConfig' test.out

#- 107 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'UpdateXblBPCertFile' test.out

#- 108 QueryThirdPartyNotifications
$PYTHON -m $MODULE 'platform-query-third-party-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'QueryThirdPartyNotifications' test.out

#- 109 QueryAbnormalTransactions
$PYTHON -m $MODULE 'platform-query-abnormal-transactions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'QueryAbnormalTransactions' test.out

#- 110 AdminGetSteamJobInfo
$PYTHON -m $MODULE 'platform-admin-get-steam-job-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'AdminGetSteamJobInfo' test.out

#- 111 AdminResetSteamJobTime
$PYTHON -m $MODULE 'platform-admin-reset-steam-job-time' \
    '{"env": "LIVE", "lastTime": "1980-04-23T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'AdminResetSteamJobTime' test.out

#- 112 AdminRefundIAPOrder
$PYTHON -m $MODULE 'platform-admin-refund-iap-order' \
    'HzGYC1TdLVDBDxK6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'AdminRefundIAPOrder' test.out

#- 113 QuerySteamReportHistories
$PYTHON -m $MODULE 'platform-query-steam-report-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'QuerySteamReportHistories' test.out

#- 114 QueryThirdPartySubscription
$PYTHON -m $MODULE 'platform-query-third-party-subscription' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartySubscription' test.out

#- 115 GetIAPOrderConsumeDetails
$PYTHON -m $MODULE 'platform-get-iap-order-consume-details' \
    'laOkeLBcprByjUr7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'GetIAPOrderConsumeDetails' test.out

#- 116 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'w9w1xKUrLmQSkuEM' \
    'Rzyerpya2oBjbgBh' \
    'OdXE8y1PNIzbnPB5' \
    'INGAMEITEM' \
    's0wyldbDDntsSQ8D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'DownloadInvoiceDetails' test.out

#- 117 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'EsKT6Mw5xDz8asAR' \
    'tI3TVV2QmlqRK5ro' \
    'G1oZArFJBUmMx7nz' \
    'SEASON' \
    'pRsBWQ7RdYqZaQ8s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'GenerateInvoiceSummary' test.out

#- 118 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    '{"categoryPath": "wcFOshiWEFDMG99v", "targetItemId": "5LSSkkEoAarkgZ77", "targetNamespace": "3cdzYhgH24VR4hJn"}' \
    'sU1m6zryXmvvvPmu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'SyncInGameItem' test.out

#- 119 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '{"appId": "eVVC0ymY7ABWgZVx", "appType": "GAME", "baseAppId": "7agVhXIgoHE9eEvI", "boothName": "yV2DqxWhSV3r9vk4", "categoryPath": "HQDiwqJUZHP7HM6J", "clazz": "B2P6ZjZh9eggvvmX", "displayOrder": 2, "entitlementType": "CONSUMABLE", "ext": {"7lVGZ6lIs17PXJ8K": {}, "sgqGNM6sO7IUwIv8": {}, "4zQjc88fKtDQSbDQ": {}}, "features": ["uI2Eihx6IJwMzUqM", "N21JlwPxpuUZm1GV", "16MYY2MVvo3MMCL4"], "flexible": false, "images": [{"as": "PXunBZiqYaReD047", "caption": "17oGCmrTUcZy3DDS", "height": 48, "imageUrl": "N4wHLHx7FCWn7iOm", "smallImageUrl": "KIN2roJNZmgEGzqD", "width": 68}, {"as": "HEYBW8Aq2KVQNFGa", "caption": "JEyBVlQ5iHlTqgMz", "height": 44, "imageUrl": "ZXQKRTVR95IwPCb2", "smallImageUrl": "qOuIRbBL0njCbitE", "width": 74}, {"as": "QkYueQLLJPh6Hpod", "caption": "pzuBQwTS66qr03Mp", "height": 28, "imageUrl": "4S8HG9ID7mZ4eKHa", "smallImageUrl": "AP4PYToJAMgJkC8U", "width": 67}], "inventoryConfig": {"customAttributes": {"7Eu0WCXd8GX7ygT5": {}, "qlBekxw9pO3vyRvi": {}, "PljDYddTDwgc6onX": {}}, "serverCustomAttributes": {"foDvjI9jfJFTHcHv": {}, "AfosnCXqJplcwaBH": {}, "ILlCC7ovjEbjKrZ2": {}}, "slotUsed": 6}, "itemIds": ["gyhgijqtdzrvCDzH", "5ACyLXmLsHXWPqYB", "JTzlt302k4rdWgWY"], "itemQty": {"gFgw3mGmogCJXjHT": 66, "G2kSIurSOWI2donU": 77, "wuD6giqKLavCF9yV": 9}, "itemType": "SEASON", "listable": true, "localizations": {"JwyaY7Ho61RoV0VH": {"description": "7thk8lnCROZodh1g", "localExt": {"bkbnRcIufk5WE4zP": {}, "vxA5061CF9079hQA": {}, "91csvlQSS6PyDb3v": {}}, "longDescription": "KbCw9eAGmM6lPAJM", "title": "izukBmcy1kbAWDUa"}, "c65Jdlm1JJwmCAjT": {"description": "wtCqKdh92wuH9hLk", "localExt": {"Ag90cQgXeZnKRP6G": {}, "dv2QY9BadKJj4HkL": {}, "0mk4HHDzXcKJowQb": {}}, "longDescription": "OrgveLe4hYQEGciv", "title": "ibNKS0tBFxzru1A3"}, "ObcaijxlHrcqzwGg": {"description": "l1SyrFazP5g67zq7", "localExt": {"XCHkJzmy6DtxvO3n": {}, "UiVM7UfbH7Qv0Eyy": {}, "6G3n83Sb2WXmcXtu": {}}, "longDescription": "UYtYkPAHldms0Nwl", "title": "x85unvbUiBJfyM9b"}}, "lootBoxConfig": {"rewardCount": 5, "rewards": [{"lootBoxItems": [{"count": 28, "duration": 16, "endDate": "1982-02-18T00:00:00Z", "itemId": "lbMGheYVteLiiIKP", "itemSku": "jokv6HMQOekLKHzi", "itemType": "Tw5M3KvzpUEcp3cp"}, {"count": 10, "duration": 86, "endDate": "1996-10-11T00:00:00Z", "itemId": "ZnpxYa2jDp3LzelX", "itemSku": "aUz9AKozXBA29DPh", "itemType": "Ya8Ksjfnk7HKSWUL"}, {"count": 21, "duration": 63, "endDate": "1971-11-02T00:00:00Z", "itemId": "2hHbaUEtBnsggbEV", "itemSku": "NmymBNr5C2BOjUiO", "itemType": "QVEbp3z13pDy371Q"}], "name": "LVtDb6RZXatSimmK", "odds": 0.3276000743002748, "type": "PROBABILITY_GROUP", "weight": 89}, {"lootBoxItems": [{"count": 33, "duration": 4, "endDate": "1995-09-03T00:00:00Z", "itemId": "Rkyz4E3EI1bSCYaa", "itemSku": "8JSNQdhrnvuDGFiT", "itemType": "4U6WQQwsTHCgTvrG"}, {"count": 23, "duration": 41, "endDate": "1976-02-26T00:00:00Z", "itemId": "rcttK4WgzdUhB2Yh", "itemSku": "KWidqRPQ1hSmShNa", "itemType": "SmVFsmFW74Dkabvm"}, {"count": 13, "duration": 55, "endDate": "1978-07-13T00:00:00Z", "itemId": "6qTg6ZOaTNC1LAen", "itemSku": "tTXWyBmb2Ir2yOaV", "itemType": "vE1N52PwdeTQhMz9"}], "name": "9aZ3fza0rlzqNhVN", "odds": 0.3620884509586708, "type": "PROBABILITY_GROUP", "weight": 4}, {"lootBoxItems": [{"count": 56, "duration": 14, "endDate": "1985-04-01T00:00:00Z", "itemId": "Zr4m1UpizE7fm00I", "itemSku": "B0YnQ5xpjcMxUGok", "itemType": "G4VQKR0ItcCnXFRj"}, {"count": 16, "duration": 35, "endDate": "1976-01-08T00:00:00Z", "itemId": "7tzIHqZpgJqlw441", "itemSku": "XUfp7AVnf8BzBBqE", "itemType": "vMtJopw2r5pKsXnI"}, {"count": 21, "duration": 48, "endDate": "1989-12-07T00:00:00Z", "itemId": "H6MNrEsOlIFw6Fqa", "itemSku": "6YXBlVXOvZUgW2ZM", "itemType": "VJhOyVaO1sgnJF31"}], "name": "EULHtVtkZrE0YPmt", "odds": 0.4904151052688661, "type": "PROBABILITY_GROUP", "weight": 12}], "rollFunction": "CUSTOM"}, "maxCount": 67, "maxCountPerUser": 44, "name": "xrhAPoREvGmmbGW3", "optionBoxConfig": {"boxItems": [{"count": 90, "duration": 40, "endDate": "1992-06-04T00:00:00Z", "itemId": "xKzbZ7xvbLKNa3OJ", "itemSku": "MFdrQmX2OFLws9RV", "itemType": "6lY9IGsZjUsSUE7N"}, {"count": 42, "duration": 57, "endDate": "1997-11-15T00:00:00Z", "itemId": "EOWNkgUfe6pVMS5m", "itemSku": "8aRIev5s4q7Uwwra", "itemType": "CDr326Q66cxtjNTX"}, {"count": 37, "duration": 60, "endDate": "1985-04-27T00:00:00Z", "itemId": "sfA2pIWzC6nrUavX", "itemSku": "t7t0llsH39PXWtk2", "itemType": "22GY7L58lP7drhfB"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 65, "fixedTrialCycles": 13, "graceDays": 1}, "regionData": {"bFTqXqdzpP7Rk1qb": [{"currencyCode": "FWhtwNaVCqf0vP28", "currencyNamespace": "4yQAbudR95sQ1Fyg", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1994-04-22T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1996-02-05T00:00:00Z", "expireAt": "1997-05-05T00:00:00Z", "price": 7, "purchaseAt": "1986-10-21T00:00:00Z", "trialPrice": 84}, {"currencyCode": "R0cuQGjCShSTNyM9", "currencyNamespace": "yuMOFavgMWyxizWK", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1989-09-19T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1983-08-13T00:00:00Z", "expireAt": "1981-02-16T00:00:00Z", "price": 21, "purchaseAt": "1981-01-21T00:00:00Z", "trialPrice": 92}, {"currencyCode": "KDUzhKKARjqJSWIm", "currencyNamespace": "XvaLXkvZvwk0v0OK", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1981-01-26T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1979-10-10T00:00:00Z", "expireAt": "1995-01-23T00:00:00Z", "price": 6, "purchaseAt": "1999-12-07T00:00:00Z", "trialPrice": 13}], "wYmvZkT3zo8gxMqM": [{"currencyCode": "1wUdXsMjUbhRjnDr", "currencyNamespace": "YWlRfPpgHg36d9NP", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1979-11-22T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1999-07-22T00:00:00Z", "expireAt": "1994-10-11T00:00:00Z", "price": 15, "purchaseAt": "1976-12-28T00:00:00Z", "trialPrice": 45}, {"currencyCode": "EYkndZIrjnjuCHkx", "currencyNamespace": "8hm2178A4NUDAdwt", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1976-09-23T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1981-01-01T00:00:00Z", "expireAt": "1995-08-30T00:00:00Z", "price": 79, "purchaseAt": "1990-04-12T00:00:00Z", "trialPrice": 63}, {"currencyCode": "dPXWaJRdn3WMdrhl", "currencyNamespace": "WqCc54JfyGzMMHiV", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1999-04-23T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1981-05-10T00:00:00Z", "expireAt": "1985-06-12T00:00:00Z", "price": 10, "purchaseAt": "1988-03-15T00:00:00Z", "trialPrice": 11}], "l1d9YaLVuL1mLP65": [{"currencyCode": "pId36F25c13PNqPn", "currencyNamespace": "7XRlnqiWP9WWQMGm", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1971-03-12T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1995-02-17T00:00:00Z", "expireAt": "1976-11-07T00:00:00Z", "price": 62, "purchaseAt": "1996-12-16T00:00:00Z", "trialPrice": 55}, {"currencyCode": "iNNV5Fy4ilLbKzQF", "currencyNamespace": "BHQ0FHWOul5WKkzj", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1993-05-27T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1987-11-01T00:00:00Z", "expireAt": "1971-11-08T00:00:00Z", "price": 64, "purchaseAt": "1975-10-25T00:00:00Z", "trialPrice": 31}, {"currencyCode": "GFSUC1sZtVitkoRy", "currencyNamespace": "EXWrhLNPUvlrOA50", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1988-06-10T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1997-03-30T00:00:00Z", "expireAt": "1996-05-11T00:00:00Z", "price": 75, "purchaseAt": "1986-03-25T00:00:00Z", "trialPrice": 75}]}, "saleConfig": {"currencyCode": "m52TA4zLBSh2QJWg", "price": 100}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "OPkJvsZhfMwJPOcR", "stackable": true, "status": "INACTIVE", "tags": ["TeKbAMIJChPyIhVP", "XGs0qawVMpRu5wP9", "mMs1zqz6exSNhnab"], "targetCurrencyCode": "CTLKxi1BjFMOIsJO", "targetNamespace": "7EUYasMTHGgaQ2UE", "thumbnailUrl": "rhcMpuZW4KtmXptK", "useCount": 68}' \
    'dR3MUQnEeANANjqB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'CreateItem' test.out

#- 120 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'dfMMU89e6CIBWn2Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'GetItemByAppId' test.out

#- 121 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'QueryItems' test.out

#- 122 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'ListBasicItemsByFeatures' test.out

#- 123 GetItems
$PYTHON -m $MODULE 'platform-get-items' \
    '3kMtF5tiwPCAxM9o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetItems' test.out

#- 124 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'FcQUp7hrvKVNdGrr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'GetItemBySku' test.out

#- 125 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    '2TTTiTt8oRoQRf0A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'GetLocaleItemBySku' test.out

#- 126 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    '1eAJUZSjWUPA9vXr' \
    'qLxUCyNQUITTM8jU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'GetEstimatedPrice' test.out

#- 127 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    '9tfr6NkPjb60b0Y8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'GetItemIdBySku' test.out

#- 128 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetBulkItemIdBySkus' test.out

#- 129 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'RDVgsQzaeOv7xB8G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'BulkGetLocaleItems' test.out

#- 130 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'GetAvailablePredicateTypes' test.out

#- 131 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    '{"itemIds": ["lNYJeVVZQH5C76Ga", "eCobrGOAvaYctXd3", "jNOlJBjBMsJisMu1"]}' \
    'kQcGm0x3DmUahjPV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'ValidateItemPurchaseCondition' test.out

#- 132 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'DOEmwpWiJYxvvQCH' \
    --body '{"changes": [{"itemIdentities": ["IreoYDgNe1RyydtC", "Bznu3BT2fe68sGXF", "ylcwoCMa2D9QtE0T"], "itemIdentityType": "ITEM_ID", "regionData": {"HukM2BVMu418S3o2": [{"currencyCode": "DKmAp8kt8156L7Wl", "currencyNamespace": "7UfG3PbsgYDgJ0JR", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1985-12-06T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1971-04-19T00:00:00Z", "discountedPrice": 9, "expireAt": "1996-12-26T00:00:00Z", "price": 90, "purchaseAt": "1987-09-03T00:00:00Z", "trialPrice": 53}, {"currencyCode": "A4kpxN9tCjk58n5f", "currencyNamespace": "Bl9xiCZH2KBHwuAW", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1990-11-17T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1987-11-14T00:00:00Z", "discountedPrice": 34, "expireAt": "1973-01-14T00:00:00Z", "price": 32, "purchaseAt": "1984-10-12T00:00:00Z", "trialPrice": 9}, {"currencyCode": "PlcaufemZ4xlGtWc", "currencyNamespace": "5UcGIGpI8YhyHkIN", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1998-10-28T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1977-10-10T00:00:00Z", "discountedPrice": 40, "expireAt": "1987-10-03T00:00:00Z", "price": 81, "purchaseAt": "1981-11-18T00:00:00Z", "trialPrice": 83}], "vdmy7qa1StMbwcUs": [{"currencyCode": "u3gJ0yHA6KDH87Am", "currencyNamespace": "GMvChuhxZJsDNCQE", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1991-08-21T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1971-09-09T00:00:00Z", "discountedPrice": 20, "expireAt": "1975-11-30T00:00:00Z", "price": 15, "purchaseAt": "1971-11-20T00:00:00Z", "trialPrice": 55}, {"currencyCode": "Kczg6MaoVcixj92J", "currencyNamespace": "kMWuFc2x9p8sArSR", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1978-06-17T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1977-06-21T00:00:00Z", "discountedPrice": 17, "expireAt": "1995-02-16T00:00:00Z", "price": 49, "purchaseAt": "1990-12-22T00:00:00Z", "trialPrice": 79}, {"currencyCode": "A7yUanMI437Ne6Wv", "currencyNamespace": "RNtbN9Eos8o1PdTD", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1977-01-31T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1994-08-21T00:00:00Z", "discountedPrice": 88, "expireAt": "1984-04-28T00:00:00Z", "price": 97, "purchaseAt": "1991-10-09T00:00:00Z", "trialPrice": 33}], "26D2IdXV2RNnCRn6": [{"currencyCode": "spzE0Dj97Arjpd7I", "currencyNamespace": "RveArOFED1MAfVZh", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1986-08-14T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1990-12-09T00:00:00Z", "discountedPrice": 7, "expireAt": "1999-05-02T00:00:00Z", "price": 41, "purchaseAt": "1973-12-09T00:00:00Z", "trialPrice": 23}, {"currencyCode": "wzliHiPYuwUtR55g", "currencyNamespace": "CTACz3aLd0f0QGkw", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1988-01-16T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1978-03-20T00:00:00Z", "discountedPrice": 95, "expireAt": "1974-05-20T00:00:00Z", "price": 78, "purchaseAt": "1993-07-11T00:00:00Z", "trialPrice": 70}, {"currencyCode": "gR5AJVEz4FiSPgU3", "currencyNamespace": "FLs6LbIwwxFBW1Ry", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1985-05-29T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1987-04-01T00:00:00Z", "discountedPrice": 98, "expireAt": "1992-11-01T00:00:00Z", "price": 61, "purchaseAt": "1994-07-26T00:00:00Z", "trialPrice": 98}]}}, {"itemIdentities": ["1fiXmZReVZ4inDP7", "o0Aeler4oEJEmHHU", "4T74NkroVwJFRFLn"], "itemIdentityType": "ITEM_SKU", "regionData": {"r3JiNweUidBVB2vT": [{"currencyCode": "yC482FeT76mWyDrm", "currencyNamespace": "G0FHQOjtRg7ST2UV", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1989-11-19T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1998-08-20T00:00:00Z", "discountedPrice": 33, "expireAt": "1983-09-13T00:00:00Z", "price": 26, "purchaseAt": "1989-10-18T00:00:00Z", "trialPrice": 0}, {"currencyCode": "gOQkViutBjVUos6Z", "currencyNamespace": "MGM14H49GbRHeTMH", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1989-12-17T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1995-11-23T00:00:00Z", "discountedPrice": 55, "expireAt": "1976-02-09T00:00:00Z", "price": 69, "purchaseAt": "1975-05-26T00:00:00Z", "trialPrice": 40}, {"currencyCode": "qyBElA4m1Ywb6nMh", "currencyNamespace": "hSCXGzZMdNwUYOkF", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1991-06-08T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1982-07-13T00:00:00Z", "discountedPrice": 18, "expireAt": "1984-06-17T00:00:00Z", "price": 83, "purchaseAt": "1982-09-22T00:00:00Z", "trialPrice": 81}], "hLJ2qx2h93yz3Y7Y": [{"currencyCode": "tgdQMhzpcpwawMF0", "currencyNamespace": "j9IirMeP7fy5Y0Ri", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1988-10-24T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1992-08-05T00:00:00Z", "discountedPrice": 22, "expireAt": "1988-05-06T00:00:00Z", "price": 22, "purchaseAt": "1994-03-28T00:00:00Z", "trialPrice": 8}, {"currencyCode": "GmHH8I1l3xgoVyEe", "currencyNamespace": "mJDvokY7UUVCHGWc", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1988-05-09T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1997-08-15T00:00:00Z", "discountedPrice": 8, "expireAt": "1981-02-26T00:00:00Z", "price": 4, "purchaseAt": "1988-10-18T00:00:00Z", "trialPrice": 14}, {"currencyCode": "mJSU0agO0PXHCyo7", "currencyNamespace": "0kyuutjjQDfdr0GX", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1993-11-10T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1990-05-10T00:00:00Z", "discountedPrice": 17, "expireAt": "1982-03-21T00:00:00Z", "price": 39, "purchaseAt": "1972-02-21T00:00:00Z", "trialPrice": 3}], "LSGTnWHCZ6XwqnOe": [{"currencyCode": "IUKAIvQjUxtk82oO", "currencyNamespace": "OkHmCFldZ0XAvFit", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1974-10-15T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1998-08-26T00:00:00Z", "discountedPrice": 38, "expireAt": "1988-05-12T00:00:00Z", "price": 7, "purchaseAt": "1976-12-01T00:00:00Z", "trialPrice": 12}, {"currencyCode": "6ugOFZPtLUvuPK7w", "currencyNamespace": "BmEY4lD14f0XIJh3", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1983-08-23T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1995-08-13T00:00:00Z", "discountedPrice": 8, "expireAt": "1987-02-20T00:00:00Z", "price": 63, "purchaseAt": "1992-06-12T00:00:00Z", "trialPrice": 63}, {"currencyCode": "meTG434DmlbwWuZp", "currencyNamespace": "KPB4rzvo2R5Q7tM4", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1992-08-10T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1978-09-19T00:00:00Z", "discountedPrice": 6, "expireAt": "1999-04-20T00:00:00Z", "price": 74, "purchaseAt": "1979-03-02T00:00:00Z", "trialPrice": 10}]}}, {"itemIdentities": ["MJrZv1itpBPRbtgU", "MFAcxhrY80cxjAXF", "OLYQX2ryH4oq6fdh"], "itemIdentityType": "ITEM_SKU", "regionData": {"zBwWKzJldpqtAlzV": [{"currencyCode": "R0WqkbKYSr7IVc2W", "currencyNamespace": "JyX67v7JTcrppNGl", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1977-11-17T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1987-10-04T00:00:00Z", "discountedPrice": 21, "expireAt": "1999-01-07T00:00:00Z", "price": 79, "purchaseAt": "1987-09-09T00:00:00Z", "trialPrice": 4}, {"currencyCode": "GgAqoQkgiht0lsg1", "currencyNamespace": "U1DExMK4z32P13aQ", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1987-10-01T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1991-06-02T00:00:00Z", "discountedPrice": 95, "expireAt": "1985-08-25T00:00:00Z", "price": 32, "purchaseAt": "1983-06-27T00:00:00Z", "trialPrice": 7}, {"currencyCode": "bpyJTgwl3ZOMpzNQ", "currencyNamespace": "DtQNlDFMazvRX5v3", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1978-01-15T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1988-04-16T00:00:00Z", "discountedPrice": 44, "expireAt": "1971-07-27T00:00:00Z", "price": 24, "purchaseAt": "1972-09-23T00:00:00Z", "trialPrice": 1}], "8WEklkFFkJPn2yom": [{"currencyCode": "TQth1iJOyDZJCwuf", "currencyNamespace": "YAURyXVoJ9qEel6x", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1978-01-20T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1987-05-08T00:00:00Z", "discountedPrice": 53, "expireAt": "1981-01-09T00:00:00Z", "price": 20, "purchaseAt": "1986-02-09T00:00:00Z", "trialPrice": 46}, {"currencyCode": "iC34s0kTiXwPjN8E", "currencyNamespace": "3wXz4Q1L3hAG9xOO", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1986-06-30T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1978-04-30T00:00:00Z", "discountedPrice": 54, "expireAt": "1999-01-10T00:00:00Z", "price": 4, "purchaseAt": "1988-05-27T00:00:00Z", "trialPrice": 21}, {"currencyCode": "Mgh1DJARpi5KzpbD", "currencyNamespace": "PfXdGvodrl6UOwYZ", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1999-06-27T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1985-10-16T00:00:00Z", "discountedPrice": 18, "expireAt": "1974-07-27T00:00:00Z", "price": 34, "purchaseAt": "1976-02-24T00:00:00Z", "trialPrice": 51}], "tX87XuWOIpQwptcv": [{"currencyCode": "roohLb6q3F16PO9Y", "currencyNamespace": "dwqEszRnwVX2rvVr", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1984-05-04T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1990-11-28T00:00:00Z", "discountedPrice": 66, "expireAt": "1983-05-26T00:00:00Z", "price": 12, "purchaseAt": "1974-06-17T00:00:00Z", "trialPrice": 37}, {"currencyCode": "96JYKhAD9xM9T3Yc", "currencyNamespace": "YFOYmaaHSXapFLiH", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1973-01-18T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1979-07-28T00:00:00Z", "discountedPrice": 31, "expireAt": "1985-09-29T00:00:00Z", "price": 11, "purchaseAt": "1993-11-02T00:00:00Z", "trialPrice": 87}, {"currencyCode": "2ar4zJmB2wifDA7L", "currencyNamespace": "pND5zXLhrmEeBwTz", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1992-04-12T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1990-04-07T00:00:00Z", "discountedPrice": 90, "expireAt": "1999-01-29T00:00:00Z", "price": 57, "purchaseAt": "1986-03-14T00:00:00Z", "trialPrice": 52}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'BulkUpdateRegionData' test.out

#- 133 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'r6n6anryoVkl4tCh' \
    'uDibBIH1dyZPHtYH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'SearchItems' test.out

#- 134 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'QueryUncategorizedItems' test.out

#- 135 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'Kqpl1Xk1CdFvYqfo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'GetItem' test.out

#- 136 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    '{"appId": "YzBc16XXXuoJGXCy", "appType": "SOFTWARE", "baseAppId": "uLamxL9Ltl0k2ZOJ", "boothName": "HBnYPNYKWhYLsAlP", "categoryPath": "Zs4v14XFGIVeBHRe", "clazz": "7JBlzH9CrXX7cBfn", "displayOrder": 19, "entitlementType": "CONSUMABLE", "ext": {"86xZRHxnOP02x00S": {}, "vR2yNPms1DdUL5bc": {}, "6QMB9TtHXqeaYlaY": {}}, "features": ["7BAFZnpxmzs0AQYJ", "nB9w4rkop7LL7Yqj", "m2XGN51wxYTCHYaW"], "flexible": false, "images": [{"as": "sR3HPQNrtkf3M9oI", "caption": "3ymYms9fuih2WMLl", "height": 7, "imageUrl": "LpvoOxT54t5Ffna7", "smallImageUrl": "2ji4B86NKZ0tkEWA", "width": 34}, {"as": "ngDQya3dvyjxR120", "caption": "zHmDzxvCGS2mYl0s", "height": 53, "imageUrl": "em6ox8O9f2ojEQrZ", "smallImageUrl": "645LOpaGFJniJl9R", "width": 86}, {"as": "X1jGg2X6VHZOulL5", "caption": "KfkSA0amHSK4Sz7f", "height": 3, "imageUrl": "s8XliOoWqixFdv5a", "smallImageUrl": "DRSnCrIQ2kChyafm", "width": 29}], "inventoryConfig": {"customAttributes": {"5KAICc0N5AqnaH49": {}, "QFksDAGUgVcYdzd3": {}, "mUKKxi2anNFpYXwE": {}}, "serverCustomAttributes": {"37QpBIY8LEEtCmse": {}, "mV8gAHQaitMhleY8": {}, "3sh3B07O0XQWCZXa": {}}, "slotUsed": 86}, "itemIds": ["A6x0lY16PWsrsxYq", "77iFOu0ybeoERsKM", "CPmtnE1aHAuVZKYN"], "itemQty": {"aKhi81nO4RNjvO8r": 82, "2Uggyr64isEfxbFE": 1, "31L6KqJTL11T4vlB": 90}, "itemType": "SEASON", "listable": true, "localizations": {"QldxIqMgf2PaNJqI": {"description": "MDWJUW3I4SKjp0NO", "localExt": {"c5dWAES7S7wBqBe4": {}, "F2z2u3wwUBB3KkzI": {}, "Bx4VA9ZxbKQDqG7U": {}}, "longDescription": "JEMeseC0hnoI1dph", "title": "0xgVXvWuSKhoOQCl"}, "joyZp9rrR7RJbkDw": {"description": "kEjOWWCzn2paEvjR", "localExt": {"IcSa260P2hpjhYQE": {}, "dyLRX3etMjv8jskC": {}, "HfqF5uo9BT2QqCxW": {}}, "longDescription": "ZGjDRc27d9a3AaZO", "title": "1VcAqwHJEyMrwNIN"}, "M4zHFF9ucrEcYD5h": {"description": "jgrxoEVEIkvpWupG", "localExt": {"htaU3oC1Ly7xHbAN": {}, "2Bdv1CfQOijhEI21": {}, "znti03vAJizEosju": {}}, "longDescription": "IsTXKAQ4uWLCMgN7", "title": "rU1yiWEODovRwzU7"}}, "lootBoxConfig": {"rewardCount": 87, "rewards": [{"lootBoxItems": [{"count": 39, "duration": 16, "endDate": "1987-08-01T00:00:00Z", "itemId": "de7x4luTsEk9TNqS", "itemSku": "iFJyMByoRKUrvfix", "itemType": "r7UFzLzGaWok215M"}, {"count": 28, "duration": 19, "endDate": "1994-02-18T00:00:00Z", "itemId": "NTPMRaYf8Chh5tiL", "itemSku": "sXIOSE2JSDRlSX5u", "itemType": "OgZ3Msm86Jr35oZQ"}, {"count": 47, "duration": 99, "endDate": "1993-01-13T00:00:00Z", "itemId": "s0ORF2pLQCqPGUmF", "itemSku": "8pQCrEqdstmoPJur", "itemType": "b0FVZK7sonuzTm1g"}], "name": "seYPsB00G8moKbti", "odds": 0.9585082539352575, "type": "PROBABILITY_GROUP", "weight": 65}, {"lootBoxItems": [{"count": 33, "duration": 84, "endDate": "1989-01-22T00:00:00Z", "itemId": "zfSvvmLgxlU5MdUd", "itemSku": "F7gHdIf6eMd0iVUm", "itemType": "BrFwFIESxo8uFqKt"}, {"count": 30, "duration": 71, "endDate": "1975-05-28T00:00:00Z", "itemId": "VPtwECFgcQRsqYFt", "itemSku": "xbpKYKp18TPWOixb", "itemType": "TLfdOF3VtCUZ0wN8"}, {"count": 20, "duration": 59, "endDate": "1992-11-03T00:00:00Z", "itemId": "nywuIoLpkJEPfnaE", "itemSku": "SuOM4olKFVsSfgNQ", "itemType": "jKhrrrStCg99ejNA"}], "name": "CAFAJlcWkS5jnhMZ", "odds": 0.29390517913021796, "type": "REWARD_GROUP", "weight": 64}, {"lootBoxItems": [{"count": 25, "duration": 57, "endDate": "1971-05-07T00:00:00Z", "itemId": "sHXHYBx7KkpRAaiv", "itemSku": "n5yFNSoKf7tdmVpp", "itemType": "uu6acpUdn8X5IZjt"}, {"count": 65, "duration": 64, "endDate": "1994-12-17T00:00:00Z", "itemId": "6Bs8OO0CVqXF6bMz", "itemSku": "Rd2Z2WjutGAptSES", "itemType": "09ZcFGPCokMwrtVv"}, {"count": 66, "duration": 19, "endDate": "1974-10-07T00:00:00Z", "itemId": "87C2CAKbiD5PxA5v", "itemSku": "9644D4d5jTjzZ8Kp", "itemType": "dOxrQ8r5te5FkJ58"}], "name": "wQyrAb67d9kC9MEh", "odds": 0.5227439266188149, "type": "REWARD", "weight": 94}], "rollFunction": "CUSTOM"}, "maxCount": 87, "maxCountPerUser": 63, "name": "3yKCwV9chX3evM1s", "optionBoxConfig": {"boxItems": [{"count": 9, "duration": 38, "endDate": "1987-01-18T00:00:00Z", "itemId": "H9ZwZcLnJPavRNr3", "itemSku": "ysEp4sIwslUQociD", "itemType": "SNS6hf28TvyyZjEM"}, {"count": 2, "duration": 55, "endDate": "1992-12-24T00:00:00Z", "itemId": "ZLHG60X6LS9dYe42", "itemSku": "oicsvoF2EgsoZSKO", "itemType": "zQIDAf44vyeNIfF5"}, {"count": 89, "duration": 82, "endDate": "1975-07-24T00:00:00Z", "itemId": "RydtvWZZFDNIc86T", "itemSku": "Kj3grgVdqSpg9xpX", "itemType": "Ch79kxpJyTba2Sx7"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 100, "fixedTrialCycles": 57, "graceDays": 15}, "regionData": {"5ZP4mdsjnGGtbn27": [{"currencyCode": "LOqX7FWHHlsxNkfg", "currencyNamespace": "F88XOEWI4jARIQkI", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1984-10-20T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1977-07-29T00:00:00Z", "expireAt": "1974-03-21T00:00:00Z", "price": 51, "purchaseAt": "1983-12-26T00:00:00Z", "trialPrice": 10}, {"currencyCode": "qefUM764xXmCkJL9", "currencyNamespace": "p2OQ5Ll9C3fSnnts", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1980-11-05T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1998-12-21T00:00:00Z", "expireAt": "1998-09-06T00:00:00Z", "price": 25, "purchaseAt": "1984-06-01T00:00:00Z", "trialPrice": 40}, {"currencyCode": "U7QpcpkApFODOqz4", "currencyNamespace": "FKRWcvJIwzW53tKi", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1983-02-26T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1993-09-20T00:00:00Z", "expireAt": "1972-12-24T00:00:00Z", "price": 78, "purchaseAt": "1996-01-13T00:00:00Z", "trialPrice": 40}], "YyromMVFEaTLz3hm": [{"currencyCode": "DX1C9gHM8SS73LrE", "currencyNamespace": "ja3XlbCcD2bQLuFw", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1984-02-09T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1977-06-03T00:00:00Z", "expireAt": "1986-09-02T00:00:00Z", "price": 73, "purchaseAt": "1999-09-07T00:00:00Z", "trialPrice": 84}, {"currencyCode": "FfeJdwskeVjYAe1C", "currencyNamespace": "NRQX4T37n6lgMV9t", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1991-10-24T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1976-01-23T00:00:00Z", "expireAt": "1986-10-28T00:00:00Z", "price": 14, "purchaseAt": "1971-12-06T00:00:00Z", "trialPrice": 70}, {"currencyCode": "xGvL2c7KalLFWBzk", "currencyNamespace": "Hql6eJa7PZ2Mvexs", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1996-07-14T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1990-08-01T00:00:00Z", "expireAt": "1987-10-23T00:00:00Z", "price": 23, "purchaseAt": "1996-08-10T00:00:00Z", "trialPrice": 49}], "fLq1zWLmtFhefMqf": [{"currencyCode": "bE0DZBwK4s4YGhc9", "currencyNamespace": "qjsGzedPNuJ4GH00", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1995-11-19T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1984-09-26T00:00:00Z", "expireAt": "1989-11-28T00:00:00Z", "price": 3, "purchaseAt": "1994-07-14T00:00:00Z", "trialPrice": 76}, {"currencyCode": "uqGFaSZmLnl13Nth", "currencyNamespace": "HP0LDshHSWtyrOFm", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1987-09-25T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1988-11-06T00:00:00Z", "expireAt": "1993-10-13T00:00:00Z", "price": 90, "purchaseAt": "1990-01-03T00:00:00Z", "trialPrice": 3}, {"currencyCode": "PbRMRrbKjoifZAWt", "currencyNamespace": "13ISgdwAum4b3t1P", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1975-07-12T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1988-08-19T00:00:00Z", "expireAt": "1973-02-03T00:00:00Z", "price": 62, "purchaseAt": "1984-11-30T00:00:00Z", "trialPrice": 24}]}, "saleConfig": {"currencyCode": "061ScAQ7gSO3GHo6", "price": 63}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "sDilWhSc6XIxh1Hq", "stackable": true, "status": "ACTIVE", "tags": ["fYvmiZxdNpmibPCL", "g5FhY2vclqnTbyZ7", "iJaHXEyuLQOO6qVU"], "targetCurrencyCode": "ihFznsLFP3013gsI", "targetNamespace": "OArelbYwYTtGsRNi", "thumbnailUrl": "j1bUAIrKYw673JvA", "useCount": 42}' \
    'stZ6FN0omme6HiOr' \
    'buq9cXar8FKACMfa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'UpdateItem' test.out

#- 137 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'ESKKo0RBtKDj9PgW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'DeleteItem' test.out

#- 138 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '{"count": 27, "orderNo": "bOcYim2syYc8YuKl"}' \
    'Qjnj5QjrVi62ITQp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AcquireItem' test.out

#- 139 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    '6NklXSUYkHNYqepa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'GetApp' test.out

#- 140 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '{"carousel": [{"alt": "dIS0zRgire2ntrz0", "previewUrl": "FUDXjV0GmcFSjmJG", "thumbnailUrl": "QU5YRHjMz3bo23SF", "type": "image", "url": "XkwdkgeNE7pA2BmA", "videoSource": "generic"}, {"alt": "lFr8NUmSdS49CybT", "previewUrl": "erX6wW5HLYxM5DN6", "thumbnailUrl": "DJmnjBd7q6U3V1i7", "type": "image", "url": "jggLVwAQMWoB0Lkw", "videoSource": "youtube"}, {"alt": "feYn1FnvTuTrRI8Z", "previewUrl": "87U0Y5R6IUWUGWDc", "thumbnailUrl": "gSJ29TqsnbtXNBeq", "type": "video", "url": "wwaH21xuey3fB1KN", "videoSource": "youtube"}], "developer": "EzSmB6aO1JqypofI", "forumUrl": "kM1Wvc2CcOra4RXe", "genres": ["FreeToPlay", "Indie", "FreeToPlay"], "localizations": {"Qae7TEBnzFuxHzrR": {"announcement": "3PiHyAFfiwIi9bI2", "slogan": "X8C6xnSImJqwyGzE"}, "1BMLJmTvUJIV0W2K": {"announcement": "8alZaxyEak02r4dR", "slogan": "vrKr07n72icTrg8R"}, "yI3bDBIKGiLSqDVn": {"announcement": "EtbqHnY6D1Z2oKGm", "slogan": "RbhR6rnSjFQf699g"}}, "platformRequirements": {"OqEWjr9T9UhsGYJ3": [{"additionals": "NLSVOdqFxY9j8P8I", "directXVersion": "FwNKh0Zni7P6ZfRF", "diskSpace": "kQolDEtyxyMGw4ZE", "graphics": "IMYFaIEr69zjnPKV", "label": "LZ59QuwBbW2xX96T", "osVersion": "mFiMrqZaZSR4SAMI", "processor": "G5DRP307xNIxMniv", "ram": "6VDtGhPQu5IgTlvO", "soundCard": "4wr8D7APHhihwdNS"}, {"additionals": "BKpqJ8V1kQHisGld", "directXVersion": "Xgqa99UNyHIlnrLO", "diskSpace": "esUoAwwCO2c7aEAH", "graphics": "cpdx91UabvNvRaUr", "label": "UqTcFsGXxjR7vTeN", "osVersion": "dfPVWmEdVFXX02sJ", "processor": "sXg7AKOu2Xk8T0sq", "ram": "dmD20rolfU1yEokw", "soundCard": "oBSfRPMdPXru40Vm"}, {"additionals": "HvpaJ6EFG9wLOlD7", "directXVersion": "N2GNQs0IgMAbRc0I", "diskSpace": "82pjV4UBb0pZrHFx", "graphics": "E9EAcMe8RHXnsxaz", "label": "B0s0OGtkrGuIEzLq", "osVersion": "OEqdEcHbFrNLqqyB", "processor": "zPWvDsw3y3noSTun", "ram": "CZN39o0vZqaSrHfw", "soundCard": "rqqHXHpPnC56p62c"}], "EYBMPDDNvuy4MWHW": [{"additionals": "8YW1euC0ubVpUB9W", "directXVersion": "TnYHGmKeMnGn3hXT", "diskSpace": "X65W9y7jKRgCFKj2", "graphics": "fpaEDgvMXedU0Ctj", "label": "H3UPJy3CnYG5ypxM", "osVersion": "PXQb9Aa9QMoQgjOf", "processor": "0byuj8Uxptb2o5jd", "ram": "TreVKh6flE9FaNdF", "soundCard": "DCH0BMCufX5Ln9YK"}, {"additionals": "DyW9wNSXGvHGabfC", "directXVersion": "gecNknWoEbRoZQ4V", "diskSpace": "uKeTQQXDNtjgypGg", "graphics": "BtsGOxHfW3WBHUGC", "label": "PEvc97uDKDBhngmX", "osVersion": "pNaXSgg2yJzaaUc8", "processor": "p87eTTm092rucPAh", "ram": "naYqSLkr3tlvhwbp", "soundCard": "OwvWyVZbXXgvJKjv"}, {"additionals": "hZn4m8rgQUG1gDFu", "directXVersion": "tWedPpbBwcmRSOW5", "diskSpace": "MFhNeBercY9DbSYP", "graphics": "sKMU8ah8NJxYKZWU", "label": "VW9NyUUdkrKCCEaI", "osVersion": "UUwPgILFEno141Rn", "processor": "aYhr2WJyqCvAfWi7", "ram": "mDpF9Uxmjutqgr80", "soundCard": "19aVHHRLK0fv936l"}], "SL3gAK6QqFlWlAR1": [{"additionals": "frDQIVwmefiYRytV", "directXVersion": "WtyJI7ujeL0gjx8j", "diskSpace": "AfmTLOwiBSSe1E9D", "graphics": "WrTYLcDOMWy0wefl", "label": "1KKxNl1Bu8GE15Jz", "osVersion": "EvFlzpDnYuSqynNl", "processor": "JACpHVndrAR7z9J0", "ram": "bNuepqWsDLjzow7M", "soundCard": "vJGnWbcVqeQS68Nc"}, {"additionals": "KrOSqAvumNXdNoD6", "directXVersion": "gTOf0jHAc8PGncBz", "diskSpace": "3SqYUIQnwGbMTiA9", "graphics": "6lnb5gdT3QnV1lky", "label": "fpfTo2MX3YvlKKTk", "osVersion": "jhbq0eRvkBW48O77", "processor": "tNIBYTFfPUrNUOX0", "ram": "haxwoUd3ezYAdypb", "soundCard": "6oWXYIQqBIhw3NQX"}, {"additionals": "GJDWtQNJFHNbgt9u", "directXVersion": "aoCeP9rZK0m4whjN", "diskSpace": "MB89Aoh6Jk84k7R0", "graphics": "603b1ChdDIpRn2Hg", "label": "PRevBMjempE90i47", "osVersion": "qjDQAAvYZZABKOA0", "processor": "L11TgHUfODRocsLm", "ram": "BbV1sCNpADwypkoh", "soundCard": "2Ufv88v1ngAJIsXT"}]}, "platforms": ["MacOS", "Linux", "Windows"], "players": ["LocalCoop", "CrossPlatformMulti", "Single"], "primaryGenre": "Adventure", "publisher": "XWb8n1xyB1MxbBG0", "releaseDate": "1982-10-06T00:00:00Z", "websiteUrl": "audrudTuIy3VLkd3"}' \
    'YGg9Bzi8uluQOBuT' \
    'uYNR4hzPkGOuDvT1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateApp' test.out

#- 141 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'kGGvspIGcvW7T4dk' \
    '3MBzfrSZGlXPukj7' \
    --body '{"featuresToCheck": ["REWARD", "DLC", "ENTITLEMENT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'DisableItem' test.out

#- 142 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'MjU2f4833bcUoBfW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'GetItemDynamicData' test.out

#- 143 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'LjRXOqaoDBgsPHcN' \
    'g0Bapd2WF3ACWSPC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'EnableItem' test.out

#- 144 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'OIejZfSnIavouuFp' \
    'qcq4Gd9fk7fhp8GN' \
    'MEX4Ps5vorNX6W3h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'FeatureItem' test.out

#- 145 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    '8ItD6AFXbQvGbKVl' \
    'E5VulHAZZ2SKo1C0' \
    'ktvmekdbic6I2n5H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'DefeatureItem' test.out

#- 146 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'clx6xvlDEhlvzVBq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'GetLocaleItem' test.out

#- 147 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 19, "code": "fNnODJKrDdt60vGd", "comparison": "isLessThan", "name": "i3SL7JlQ0WmwgELy", "predicateType": "EntitlementPredicate", "value": "yTZt7v3mvPolaFeE", "values": ["qnFzR6C20jVL8heT", "WrqYB9hLG74YMs1J", "CrpnpPPUyyCN4MFX"]}, {"anyOf": 34, "code": "YMScWAzVVdQZznMU", "comparison": "is", "name": "IFNDIRhPIRCNW8ML", "predicateType": "StatisticCodePredicate", "value": "wpv9IeC6LAtGzNwZ", "values": ["RFRReZoX0eYwpjuQ", "Po1Bi27Mr8QiSBuE", "Ue0kRnfBio030WDt"]}, {"anyOf": 100, "code": "WdxjHSrIcoNi9NFQ", "comparison": "isGreaterThan", "name": "HX7XexjvW4rZ57Ra", "predicateType": "SeasonPassPredicate", "value": "Wlon8ZzeHgabbmT8", "values": ["1jfik6ShLjJbf174", "NmQrq6p7WrYOBpl7", "MCR5ZpvlWXRfEoUu"]}]}, {"operator": "and", "predicates": [{"anyOf": 76, "code": "UqbLQ3WTZF8gP7Lg", "comparison": "is", "name": "ygZRBzJUpXr5ZkwY", "predicateType": "SeasonPassPredicate", "value": "nvikBnp1ILBujZh8", "values": ["fQHmg4I1PJybUmpL", "g4DkmnJtxZgIUMxG", "S62GO32C73RnfIDx"]}, {"anyOf": 24, "code": "ZXq9atijyFT8B6hE", "comparison": "isNot", "name": "znZA6EVEXEqkFFyG", "predicateType": "SeasonTierPredicate", "value": "yjxylwRVcy18iHO0", "values": ["Tu6c4mMUdJoKmyaU", "dKNHWBFM13F37X9H", "7qTgHxGQ4Dm2YoSL"]}, {"anyOf": 96, "code": "1m19Eiqpyu9P7Yh6", "comparison": "isNot", "name": "mWWhMnRSn6PRk0Dw", "predicateType": "SeasonPassPredicate", "value": "ruQcikSHwHPfyNRU", "values": ["hMXX7FiB3X634iuF", "8pqhqsqRF4kqMbz4", "sxPUl2WbQNFNB2IE"]}]}, {"operator": "and", "predicates": [{"anyOf": 78, "code": "VlJBmSCpF2z5O9ug", "comparison": "isLessThanOrEqual", "name": "uq4uGu9km7KeyQB3", "predicateType": "SeasonTierPredicate", "value": "Ue4ug9J3KKHHaSwF", "values": ["bXXiMg5RAaD5a0gq", "S7fAGmA4gy2QBm02", "aTdgp0WcRdrrdOKQ"]}, {"anyOf": 51, "code": "Zj2jWyKAzXYP9kO0", "comparison": "isGreaterThanOrEqual", "name": "rFsJyanoth2jhzr7", "predicateType": "EntitlementPredicate", "value": "jzRzlmVmpfmMq65n", "values": ["YpNAwv9UsvPaX8W0", "GvPN7gRfsySRn2FX", "0Ac7CzuPXE90ufrB"]}, {"anyOf": 0, "code": "MsLdJrt5FnAIz4y9", "comparison": "isLessThanOrEqual", "name": "LGF8dtk8bqcPfBJ9", "predicateType": "StatisticCodePredicate", "value": "OHxUkZCvqVRe3F78", "values": ["5GGFvLtWl66DAEkA", "sBef6ymEEU6G6YVa", "EGvZd49hW95i4Rm9"]}]}]}}' \
    'vXqNdnEfei54fLtF' \
    'TRx1fcfy4uTVbxv0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'UpdateItemPurchaseCondition' test.out

#- 148 QueryItemReferences
$PYTHON -m $MODULE 'platform-query-item-references' \
    'l7RvPOKq8iNNYLY5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'QueryItemReferences' test.out

#- 149 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '{"orderNo": "oWJPoo8QT5EB5GCO"}' \
    'CowERMveDiI5BYvV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'ReturnItem' test.out

#- 150 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'QueryKeyGroups' test.out

#- 151 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    '{"description": "5LF22GlLe48YQRsZ", "name": "pn4zsR2KwSIl0Un3", "status": "ACTIVE", "tags": ["7vODPmfnV8dOr38j", "FYjFRDj47EZTCCwz", "8yawNImZdPzt9koN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'CreateKeyGroup' test.out

#- 152 GetKeyGroupByBoothName
eval_tap 0 152 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 153 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'SL3vqGgJOWkI0sHp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'GetKeyGroup' test.out

#- 154 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '{"description": "hIU3KaP7nk9iEaqu", "name": "dy3aYo02pzHannSL", "status": "ACTIVE", "tags": ["TuQ90jhJCrrsBPvG", "hWiPLLd5eChF7cgu", "jItr2ZFjL5qUyimm"]}' \
    'VzOJYebI5Egye4Ck' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'UpdateKeyGroup' test.out

#- 155 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'NIFSC7IcfdqOCaqF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'GetKeyGroupDynamic' test.out

#- 156 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'aXYK6AzVrp3wn2Bl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'ListKeys' test.out

#- 157 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'IfmyT5owJEG08jO7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'UploadKeys' test.out

#- 158 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'QueryOrders' test.out

#- 159 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetOrderStatistics' test.out

#- 160 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'JMvkh08NQQhBIt2H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'GetOrder' test.out

#- 161 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    '{"description": "2PvWFnJMiszwcYW9"}' \
    'Jy4n5q4WgYvJS0xu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'RefundOrder' test.out

#- 162 GetPaymentCallbackConfig
eval_tap 0 162 'GetPaymentCallbackConfig # SKIP deprecated' test.out

#- 163 UpdatePaymentCallbackConfig
eval_tap 0 163 'UpdatePaymentCallbackConfig # SKIP deprecated' test.out

#- 164 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'GetPaymentMerchantConfig' test.out

#- 165 UpdatePaymentDomainWhitelistConfig
$PYTHON -m $MODULE 'platform-update-payment-domain-whitelist-config' \
    '{"domains": ["VskVlA0TNAcmfUmA", "zc5JVuc5LBd3uXt6", "TP1AE4lqnIwLN2lG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'UpdatePaymentDomainWhitelistConfig' test.out

#- 166 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'QueryPaymentNotifications' test.out

#- 167 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'QueryPaymentOrders' test.out

#- 168 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    '{"currencyCode": "YqQSzIUdIqmVvmcA", "currencyNamespace": "sPgT6XUEeRKSDbom", "customParameters": {"dWWRi7OHZeGP4o1T": {}, "gbe8J8xso71ULeHV": {}, "V40sjQ8mtTN08V3M": {}}, "description": "MSrrV6FB8DFwD7WX", "extOrderNo": "kw7te8pQfvxY5zPZ", "extUserId": "KMd5ItnXbDbXW9Kl", "itemType": "BUNDLE", "language": "Hpwd_hJUf_it", "metadata": {"YGa2nnyqvFCYJOJl": "9ljs9WPwxzICEykN", "JeEn6eiosoCvrGeD": "ygOZbA1UGLox4eJu", "vLmou5AtB5J9XxYq": "y0HcWUCcahA1tjiB"}, "notifyUrl": "ugkSmA8prRvnuoHm", "omitNotification": false, "platform": "foRLP4zSxApJe0ap", "price": 23, "recurringPaymentOrderNo": "99VixS5Es3u4km3i", "region": "KiNLRNa01SihgZby", "returnUrl": "9mBdGrJY5J0e9jWc", "sandbox": true, "sku": "TCNxjdv8GxhJoB4l", "subscriptionId": "Akbm1Abh9QxLBfhp", "targetNamespace": "Op8UlDmFYNBSDEgs", "targetUserId": "UMikj8NQNDlhAhwA", "title": "c8mPZRllengCdfKG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'CreatePaymentOrderByDedicated' test.out

#- 169 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'CBZMAbJnqDKuBGWm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'ListExtOrderNoByExtTxId' test.out

#- 170 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'Zti7VJ7O7dNzDBzV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'GetPaymentOrder' test.out

#- 171 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '{"extTxId": "mGSholl8uD1hpBtp", "paymentMethod": "d4eLc1PpHJmrL7AZ", "paymentProvider": "WALLET"}' \
    'MKcHBB1AfySUMZOW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'ChargePaymentOrder' test.out

#- 172 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '{"description": "htQEriyOLkuGKVQW"}' \
    'NOUAh5VXa79702d3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'RefundPaymentOrderByDedicated' test.out

#- 173 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '{"amount": 52, "currencyCode": "8ybCNhF9RCyMn5VX", "notifyType": "REFUND", "paymentProvider": "STRIPE", "salesTax": 41, "vat": 92}' \
    '9Hsq4hLUkLLTNMnm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'SimulatePaymentOrderNotification' test.out

#- 174 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'lFzzwpEZwbcCEsJI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'GetPaymentOrderChargeStatus' test.out

#- 175 GetPsnEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-psn-entitlement-ownership' \
    '{"accessToken": "B0JkRcYhCT3pUMiO", "serviceLabel": 22}' \
    'oZJnsAkX5sxny0WL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'GetPsnEntitlementOwnership' test.out

#- 176 GetXboxEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-xbox-entitlement-ownership' \
    '{"delegationToken": "YMNb0QsxPlx64IQU", "sandboxId": "pSToD0bb0SXZUy9H"}' \
    '0C213rnYfZ8c8zUR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'GetXboxEntitlementOwnership' test.out

#- 177 GetPlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-get-platform-entitlement-config' \
    'Steam' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'GetPlatformEntitlementConfig' test.out

#- 178 UpdatePlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-update-platform-entitlement-config' \
    '{"allowedPlatformOrigins": ["Epic", "IOS", "Xbox"]}' \
    'IOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'UpdatePlatformEntitlementConfig' test.out

#- 179 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Other' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'GetPlatformWalletConfig' test.out

#- 180 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    '{"allowedBalanceOrigins": ["IOS", "Playstation", "Oculus"]}' \
    'IOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'UpdatePlatformWalletConfig' test.out

#- 181 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'IOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'ResetPlatformWalletConfig' test.out

#- 182 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'GetRevocationConfig' test.out

#- 183 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'UpdateRevocationConfig' test.out

#- 184 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'DeleteRevocationConfig' test.out

#- 185 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'QueryRevocationHistories' test.out

#- 186 GetRevocationPluginConfig
$PYTHON -m $MODULE 'platform-get-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetRevocationPluginConfig' test.out

#- 187 UpdateRevocationPluginConfig
$PYTHON -m $MODULE 'platform-update-revocation-plugin-config' \
    '{"appConfig": {"appName": "1bNoJJUhL5p56dnY"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "pU3aCkzqs0hC50vE"}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'UpdateRevocationPluginConfig' test.out

#- 188 DeleteRevocationPluginConfig
$PYTHON -m $MODULE 'platform-delete-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'DeleteRevocationPluginConfig' test.out

#- 189 UploadRevocationPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'UploadRevocationPluginConfigCert' test.out

#- 190 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    '{"description": "WTVvIN7c2uh7Ls9n", "eventTopic": "xKiaoWmrw6n7VYPr", "maxAwarded": 43, "maxAwardedPerUser": 54, "namespaceExpression": "a1jk545vt1Vu7dsm", "rewardCode": "zSUsCVLjw2QHwjLR", "rewardConditions": [{"condition": "noGxE4QuZeQkRBv8", "conditionName": "hh81CTYPYD0WHJ0J", "eventName": "zaJpqg9JgEy7Iad7", "rewardItems": [{"duration": 10, "endDate": "1995-08-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CaXsZoyeqN5ouEcX", "quantity": 90, "sku": "2i1n2WJVJy6yBPVm"}, {"duration": 31, "endDate": "1996-01-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "96sJUnv5BwzKyxJq", "quantity": 56, "sku": "WKnNDFZOok9snWC9"}, {"duration": 59, "endDate": "1976-09-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "iRmbELIzawfXvKu5", "quantity": 95, "sku": "mPIGCrJozIio8nWa"}]}, {"condition": "64x5pJSHZCzyWKP3", "conditionName": "0KusyvaitTsWtL2A", "eventName": "AtjEKW31SlSm20Dz", "rewardItems": [{"duration": 7, "endDate": "1990-10-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "k8FlVcy0hcEMFRkn", "quantity": 22, "sku": "SAQhtiWA2DHIocFR"}, {"duration": 81, "endDate": "1989-11-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "PuYWk5lHvw9RXrx8", "quantity": 0, "sku": "vc14DUjHqRaUZuU9"}, {"duration": 94, "endDate": "1994-03-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Lgddr0UUiy5jm1w2", "quantity": 12, "sku": "UGIprrzf5gWNxqxl"}]}, {"condition": "2qgslinTPbY1473R", "conditionName": "FPlwtoen6TTQtwMX", "eventName": "4QAE2aV1l1P0cjdc", "rewardItems": [{"duration": 48, "endDate": "1984-05-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "zEm3km2jjNrqEmuE", "quantity": 10, "sku": "8lPGFyb34DDyqvcw"}, {"duration": 88, "endDate": "1988-03-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qVCMpunzeSPkf8Y5", "quantity": 21, "sku": "vxm9KYr60SyfWNB8"}, {"duration": 42, "endDate": "1996-12-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "lf4KGo0N4g7UWRzP", "quantity": 38, "sku": "e1TkfLiM9EqyhFh7"}]}], "userIdExpression": "mq6sgk5cHaJYkzCl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'CreateReward' test.out

#- 191 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'QueryRewards' test.out

#- 192 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'ExportRewards' test.out

#- 193 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'ImportRewards' test.out

#- 194 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'PobC0FiwNmp1e9Jz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetReward' test.out

#- 195 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    '{"description": "R7Bat3pdbjxfK1P9", "eventTopic": "wjSBBxjKNvNPiwIM", "maxAwarded": 88, "maxAwardedPerUser": 73, "namespaceExpression": "4aL9f0QyO5YXVhTi", "rewardCode": "aE4WKnEeaUdAmgmn", "rewardConditions": [{"condition": "zKSVlXsRNMykbnHT", "conditionName": "rHLmaTGFI1atDOVS", "eventName": "2F6Is27hn9TSwEvJ", "rewardItems": [{"duration": 85, "endDate": "1984-06-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "3ErL5T5rvBRXJxUv", "quantity": 24, "sku": "lq1H5IuOvafRIdOX"}, {"duration": 23, "endDate": "1985-07-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "gTkPtcVfRHox2lJj", "quantity": 29, "sku": "1ZhheDDG5HJEFQRX"}, {"duration": 1, "endDate": "1975-09-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "g8TK1CF9X9mTmMVf", "quantity": 86, "sku": "x9FaoDIwGJ3pRyNw"}]}, {"condition": "b9JgVZofu7lNuwrS", "conditionName": "7xf7BiZI9Jujxs7G", "eventName": "Kf2LOlVbEWajKUr3", "rewardItems": [{"duration": 36, "endDate": "1983-12-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Sdt80ugFtH5gSuRJ", "quantity": 77, "sku": "1azJ2OSkJGMDAkWO"}, {"duration": 86, "endDate": "1978-09-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "K35CZu7WE18eU5rt", "quantity": 88, "sku": "j7nGzgSkTy0cIm2T"}, {"duration": 5, "endDate": "1989-03-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "i4hVE3lKNQy2rJxi", "quantity": 85, "sku": "0uzzvAfa6BW7oGw2"}]}, {"condition": "U9LoHWS4koauo9jk", "conditionName": "TEI52B8LI9vMEB8O", "eventName": "HKsqKaw1EmCxOMl6", "rewardItems": [{"duration": 41, "endDate": "1977-03-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "4gPPfiJZCSkIQI1h", "quantity": 61, "sku": "OjoUY4QXecerXxPo"}, {"duration": 6, "endDate": "1996-12-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "okDUivfNI3KdSIbT", "quantity": 16, "sku": "WYvJX1f7rYnPbkDk"}, {"duration": 31, "endDate": "1974-07-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "y47AVCmFD0nKyUwc", "quantity": 70, "sku": "Tm2OFHVEoRljsGF5"}]}], "userIdExpression": "AYZlEYqTVSCLemvp"}' \
    'JXl2drfGIgu0ksPt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'UpdateReward' test.out

#- 196 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'zdXjtRaBOlhg63Pd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'DeleteReward' test.out

#- 197 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'uP0G77oZV8BGfavV' \
    --body '{"payload": {"POhaaf5eExcjABRx": {}, "8qNMv4XLW0xlb6yL": {}, "TssmZXLvxRhf6ICr": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'CheckEventCondition' test.out

#- 198 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    '{"conditionName": "Mr8z6e2UDBycYrDD", "userId": "g5iDNLOJJmzGW9AQ"}' \
    'MDnaFw1u7BLbxxmg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'DeleteRewardConditionRecord' test.out

#- 199 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'QuerySections' test.out

#- 200 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    '{"active": false, "displayOrder": 5, "endDate": "1997-01-17T00:00:00Z", "ext": {"p6iVAJ6lYOK3cwO9": {}, "ln34fiLxPN5xKoNN": {}, "Yd5p2yVsBAv2ZVlr": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 38, "itemCount": 24, "rule": "SEQUENCE"}, "items": [{"id": "8y91hD1ZHh1VjLqa", "sku": "0AODLarMcrlOCtMC"}, {"id": "yPHnS8uePyiByYQO", "sku": "gKKv9kQYaSI3bbqZ"}, {"id": "QkXAns7VrdNH8v1o", "sku": "P98hanhE18UbY1Zk"}], "localizations": {"rfk0Xn6jwfR02GfM": {"description": "rXzI7oWD1mZ9rW6Q", "localExt": {"dtPe4YleMg5NGs1P": {}, "mz6Amebh0FbOWyhA": {}, "nMP6BdBw6d4UOI7T": {}}, "longDescription": "r9NHcXeEWIpyYx9w", "title": "OuNquv2qkqRR9Nwd"}, "8OrgT5HMaelKs3hd": {"description": "NcCPnrmZDNctQe0I", "localExt": {"M586qYdNvmRITEU7": {}, "usHknnfYNY7ZXicp": {}, "AJw7Ct9AmEoUNlmQ": {}}, "longDescription": "jebaV8c13FZxX6qN", "title": "ntgmml0ts1uw7Wva"}, "RDN6waXRBRT78fZc": {"description": "6LpvtY7Bk3j0Rt5a", "localExt": {"i8x1JHTPfATk2jDk": {}, "Pq7n0VqgiBJsxKkX": {}, "hiEo0RXgJkWelLk7": {}}, "longDescription": "pTvUfmra4esdZ2v5", "title": "vKHsJ5DezdlRlTTS"}}, "name": "LmDolGdb7yXLAgfg", "rotationType": "FIXED_PERIOD", "startDate": "1998-09-24T00:00:00Z", "viewId": "7pXU34waIIRxeTkl"}' \
    '27M6AggzKZ3nqWut' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'CreateSection' test.out

#- 201 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'rpjBOnBeqwBnFdy0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'PurgeExpiredSection' test.out

#- 202 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    '1mQjVblM1GnFG6eP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GetSection' test.out

#- 203 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    '{"active": false, "displayOrder": 19, "endDate": "1977-12-05T00:00:00Z", "ext": {"muQN65HKi5qvwLIq": {}, "gfXvKjhXcfKE45hK": {}, "dn2Ay5KgtWue3Xkq": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 100, "itemCount": 78, "rule": "SEQUENCE"}, "items": [{"id": "E9l0uRkf5RxDdVVe", "sku": "0VvPmen8keuXuWui"}, {"id": "tb85Ns7DhXCIneqd", "sku": "dStnBNigsnBpu24g"}, {"id": "a0d3NvXvIgvIynEa", "sku": "AcX7fXbKWmraqNIK"}], "localizations": {"PX6gPHT29wkZwM8c": {"description": "vObRjKxi25l9mb1m", "localExt": {"SJffUaLwOsYRIJea": {}, "rztP7sqwracbiPrT": {}, "7cARnySCNlQCocWB": {}}, "longDescription": "q1VspKjs4jxjTNe3", "title": "vK6XXKdJ9YgLSRyj"}, "x0xgbEuoPqi79JLK": {"description": "Hle3po9nK2MnWISZ", "localExt": {"8LUxYanMQUFaZF74": {}, "RbeEi4WAntBdOLVn": {}, "sl61rzqSDNeQF7Q3": {}}, "longDescription": "XLgdI7tdEmvBnrNt", "title": "ew73bedVZ6xFNiFC"}, "0HSIZAGhHJlyMBkb": {"description": "UPi2FDgx1gJONPjy", "localExt": {"1ei7AZBrLdMJG912": {}, "CJx1H9kC6LzFqk7M": {}, "St4enxGbQr0GStnc": {}}, "longDescription": "RVLvJm4u9ltRo1cX", "title": "uco8zvapmS8p27dv"}}, "name": "zUWMz6IheEap1Phj", "rotationType": "FIXED_PERIOD", "startDate": "1981-03-24T00:00:00Z", "viewId": "wWEJUvl8k6CNRAfp"}' \
    '1s21wulz8cb64KjG' \
    'DHolxRGH5sQmA6XL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'UpdateSection' test.out

#- 204 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    '9p83Led5r4J7MEwK' \
    'xtP0SkagDcL89Pjv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'DeleteSection' test.out

#- 205 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'ListStores' test.out

#- 206 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    '{"defaultLanguage": "twaUDi2fDyXlYJu8", "defaultRegion": "bIkkFh5LqxA2jff0", "description": "fTRIYip6c9di8Jee", "supportedLanguages": ["fXJ2PdIoHdoDHgvw", "cWxlmJoJSnhyf4L6", "dZ66Zi7azAJHL5PE"], "supportedRegions": ["9RVZONAcvKXL23pp", "vor8grcvFvYajtvd", "iqyZzxREBSrOk54E"], "title": "yWalLjCH6xr3vtL9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'CreateStore' test.out

#- 207 GetCatalogDefinition
$PYTHON -m $MODULE 'platform-get-catalog-definition' \
    'VIEW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'GetCatalogDefinition' test.out

#- 208 DownloadCSVTemplates
$PYTHON -m $MODULE 'platform-download-csv-templates' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'DownloadCSVTemplates' test.out

#- 209 ExportStoreByCSV
$PYTHON -m $MODULE 'platform-export-store-by-csv' \
    '{"catalogType": "APP", "fieldsToBeIncluded": ["TQ5CWaR2DvfAXB1S", "rgLn5lUQ3Mt9iye7", "Sb3gSolD6u7wIciV"], "idsToBeExported": ["VHoFtt4AP9G3HyBu", "gfReiDLdSTRmElGh", "VQf227V7ADaQHt78"], "storeId": "b3DT7qRYPx0W6cXz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'ExportStoreByCSV' test.out

#- 210 ImportStore
eval_tap 0 210 'ImportStore # SKIP deprecated' test.out

#- 211 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'GetPublishedStore' test.out

#- 212 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'DeletePublishedStore' test.out

#- 213 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GetPublishedStoreBackup' test.out

#- 214 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'RollbackPublishedStore' test.out

#- 215 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'OdGXLsEc8XzmjXX4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'GetStore' test.out

#- 216 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    '{"defaultLanguage": "csMlaBkq9QHEb66B", "defaultRegion": "o3ALdAKAQUoGDOUF", "description": "K4BcWOxnwerZoIJ2", "supportedLanguages": ["JMtHAD8gJdK4CJBY", "63ASIuZtE2WuycId", "Vm37lVyVYhbj7X96"], "supportedRegions": ["t5WMLdod5DYqp6XD", "PJmYDZqWoL8k0jED", "j1R673CfYbn53kIR"], "title": "N1df13EvjSbGYcLQ"}' \
    'EocUfUPAI2O4xXXw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'UpdateStore' test.out

#- 217 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'CsNtkQh3rUUKaN66' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'DeleteStore' test.out

#- 218 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'Rjkt9zWkx2SjE4MM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'QueryChanges' test.out

#- 219 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    '82Qw4C7p4YKcL3qt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'PublishAll' test.out

#- 220 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    '4lUCjplpfxQDpz3k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'PublishSelected' test.out

#- 221 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'a75GSPrezfQIy1Fs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'SelectAllRecords' test.out

#- 222 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    'Yo03H0HWXeUSuTJR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'SelectAllRecordsByCriteria' test.out

#- 223 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'HgBRpSb3GL7YAU5A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'GetStatistic' test.out

#- 224 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'nUkmfVW93ZW1tXAO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'UnselectAllRecords' test.out

#- 225 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'pK37SfSPivmYx19G' \
    'Wm87P1GbEQA6nI1V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'SelectRecord' test.out

#- 226 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'hgTvfzwfgRZntMhu' \
    'nn3jSCD2AknCwPe4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'UnselectRecord' test.out

#- 227 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'TX4CK4IBY01KuFbs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'CloneStore' test.out

#- 228 ExportStore
eval_tap 0 228 'ExportStore # SKIP deprecated' test.out

#- 229 QueryImportHistory
$PYTHON -m $MODULE 'platform-query-import-history' \
    '8Iv2Ij9B7VD3SyR3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'QueryImportHistory' test.out

#- 230 ImportStoreByCSV
$PYTHON -m $MODULE 'platform-import-store-by-csv' \
    'tmp.dat' \
    'tmp.dat' \
    'tmp.dat' \
    'UCMUtsTLoeVLjxbw' \
    'tmp.dat' \
    'UQUVEWE0xtN3v8Dg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'ImportStoreByCSV' test.out

#- 231 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'QuerySubscriptions' test.out

#- 232 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'FUrjRGzthYJKH9vh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'RecurringChargeSubscription' test.out

#- 233 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'OLpoWOSJS0kU6fD6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'GetTicketDynamic' test.out

#- 234 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    '{"orderNo": "6yb2MtSEiRgh67yl"}' \
    'D9xIb44v71qZ2QmE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'DecreaseTicketSale' test.out

#- 235 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'uNVKEmoFSme2B5xb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'GetTicketBoothID' test.out

#- 236 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    '{"count": 22, "orderNo": "iWsAEY3T2YDXuJSz"}' \
    'kSZfZ5duijZETiza' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'IncreaseTicketSale' test.out

#- 237 Commit
$PYTHON -m $MODULE 'platform-commit' \
    '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 15, "currencyCode": "ixMgpWQ9PgUcB3N6", "expireAt": "1971-09-10T00:00:00Z"}, "debitPayload": {"count": 8, "currencyCode": "qiXIaji4MOmP494v", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 14, "entitlementCollectionId": "lNtuMUpS3K4kKGKc", "entitlementOrigin": "Other", "itemIdentity": "wbFJ8VUxv8qZiALI", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 86, "entitlementId": "Uy5BK25PGFQBJJHK"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 94, "currencyCode": "XRVh36pW5RFN9k93", "expireAt": "1971-11-22T00:00:00Z"}, "debitPayload": {"count": 49, "currencyCode": "y4vvrPXP6Snc4Uqg", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 74, "entitlementCollectionId": "9zvOaiSMHjVciAVr", "entitlementOrigin": "Xbox", "itemIdentity": "gLrITdqgHGJd9AlC", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 79, "entitlementId": "ccvcf4aG26GboaJ6"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 5, "currencyCode": "iN5b6ODd1kj4Qj6R", "expireAt": "1994-02-20T00:00:00Z"}, "debitPayload": {"count": 1, "currencyCode": "l0tvWir64fqpyffE", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 84, "entitlementCollectionId": "xbTHKA2YqU0FWbYO", "entitlementOrigin": "Playstation", "itemIdentity": "eD5m02245YlrGlfg", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 44, "entitlementId": "zLifZvRPXjiYCPM5"}, "type": "FULFILL_ITEM"}], "userId": "ASyze4T9TmQupOzu"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 43, "currencyCode": "RV8Vw1OuyVC7JcK5", "expireAt": "1994-01-28T00:00:00Z"}, "debitPayload": {"count": 91, "currencyCode": "heuW7HOMooXzmW32", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 18, "entitlementCollectionId": "CGe7BlGbNTtvAEsQ", "entitlementOrigin": "Oculus", "itemIdentity": "gwjgNbqY9SXZMP79", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 17, "entitlementId": "MGL8kITGmF087BWK"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Other", "count": 30, "currencyCode": "zHgwFqS6c2YCA1r3", "expireAt": "1998-12-04T00:00:00Z"}, "debitPayload": {"count": 57, "currencyCode": "rRhISjcIvS4I6tzd", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 32, "entitlementCollectionId": "34MnrbjAM32RlQ3W", "entitlementOrigin": "Nintendo", "itemIdentity": "9kQ9FRDgAEVfEZsh", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 87, "entitlementId": "oviRWdaswUzfV36H"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 39, "currencyCode": "7gG4iNZfEJ6PGvsY", "expireAt": "1986-04-18T00:00:00Z"}, "debitPayload": {"count": 69, "currencyCode": "aTT5U0e2LY7yB5Ei", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 97, "entitlementCollectionId": "QhvZmCSswSPGcfas", "entitlementOrigin": "Oculus", "itemIdentity": "2Nrrm0JBGkT1hNjH", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 25, "entitlementId": "2icYZYjakKtgPfJH"}, "type": "CREDIT_WALLET"}], "userId": "jP9lZT5O6iUdCh9M"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 75, "currencyCode": "bpotD8HTOOdvA4Uh", "expireAt": "1972-06-08T00:00:00Z"}, "debitPayload": {"count": 93, "currencyCode": "DlI96Qjoaq06aI2z", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 100, "entitlementCollectionId": "qmaPgdCvQwz6hdCM", "entitlementOrigin": "Oculus", "itemIdentity": "kIaANvZ0I2EGVDWs", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 59, "entitlementId": "wXLLDtNRfmo1w8aA"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 42, "currencyCode": "AdH94tziEpGVXsUv", "expireAt": "1973-04-07T00:00:00Z"}, "debitPayload": {"count": 51, "currencyCode": "yRfU4YHfMpHxEcJG", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 5, "entitlementCollectionId": "lkM5IYJnbFprRWLj", "entitlementOrigin": "System", "itemIdentity": "bPdtHZPKb8CPLdIk", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 71, "entitlementId": "E9XuQ8gykJm5GMKt"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 89, "currencyCode": "g8Oi6TDpSGwc7wXi", "expireAt": "1973-05-23T00:00:00Z"}, "debitPayload": {"count": 63, "currencyCode": "AsrmYYu40w6szojk", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 45, "entitlementCollectionId": "jtacFSVTvgh23BGE", "entitlementOrigin": "Epic", "itemIdentity": "dy73ukTxjfHXQQVm", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 36, "entitlementId": "HmCVmuzoO2qep49t"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "tJlLDOjXTWGIrWq2"}], "metadata": {"VvH0roA20Sfzrc9Y": {}, "YsgvVLN3usfhiyCf": {}, "1FOddxtE52sFK1jN": {}}, "needPreCheck": false, "transactionId": "mCVFEHDMT1eDVbcv", "type": "yxtTxuptcOYSTj2A"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'Commit' test.out

#- 238 GetTradeHistoryByCriteria
$PYTHON -m $MODULE 'platform-get-trade-history-by-criteria' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'GetTradeHistoryByCriteria' test.out

#- 239 GetTradeHistoryByTransactionId
$PYTHON -m $MODULE 'platform-get-trade-history-by-transaction-id' \
    'WA5f61ztkSpGmf8B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'GetTradeHistoryByTransactionId' test.out

#- 240 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    '{"achievements": [{"id": "XosNylCwcf2iVxv9", "value": 88}, {"id": "j7TPuigp3RiJofgD", "value": 98}, {"id": "W0qApZ98a9g9AjLD", "value": 88}], "steamUserId": "0t9aquw2B2UVIQMA"}' \
    '6BOpxtYbmQwS5kNx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'UnlockSteamUserAchievement' test.out

#- 241 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'CPLeKM4cQl8DlY91' \
    'SXBeHwrkPCaAycmE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetXblUserAchievements' test.out

#- 242 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '{"achievements": [{"id": "vk3rVTLjZT9qayJJ", "percentComplete": 39}, {"id": "0mVVI1FilcO4pajE", "percentComplete": 14}, {"id": "vOhMTdfTjLVxzjyQ", "percentComplete": 38}], "serviceConfigId": "EElwdZORocHSHulJ", "titleId": "HhAnY7QeDSRroVkX", "xboxUserId": "b4xPPUmUifQvfoZ7"}' \
    'n3eRMzJEQYwNGRl2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'UpdateXblUserAchievement' test.out

#- 243 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'gcWdDmIy4Ia2UtS4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeCampaign' test.out

#- 244 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'T1v2y9Je7apQfNdD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'AnonymizeEntitlement' test.out

#- 245 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'yT3a0EGpHgGLUqdG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'AnonymizeFulfillment' test.out

#- 246 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    '3kBfGvwjwttys4Gv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'AnonymizeIntegration' test.out

#- 247 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'Dvs1H5juf5Cq950X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'AnonymizeOrder' test.out

#- 248 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'tiMxQDIHnPin3vZc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'AnonymizePayment' test.out

#- 249 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    '9bUYgwdNmcpdldDn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeRevocation' test.out

#- 250 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    '2Y2l1kZWnqjJaGGT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeSubscription' test.out

#- 251 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'FaJHecFy9m5s6oIW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeWallet' test.out

#- 252 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'Mnk88GXMrS82vN0N' \
    'EPICGAMES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'GetUserDLCByPlatform' test.out

#- 253 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    '236tI7v0x9St2EFf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'GetUserDLC' test.out

#- 254 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'U2FbyIXierPr2qLK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'QueryUserEntitlements' test.out

#- 255 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '[{"collectionId": "BXRYt7v7Wfg2omS1", "endDate": "1998-07-08T00:00:00Z", "grantedCode": "YyIWGPc92PcmK9zT", "itemId": "gGQs1FIKxCXUhNdJ", "itemNamespace": "4cK7rz2VPJ8AZ9i1", "language": "Lp-DGis", "metadata": {"5zPZbllwvt3TjGez": {}, "RRUjCNiQauO5Cfja": {}, "0qWoqWrZJAMVQaCd": {}}, "origin": "Xbox", "quantity": 95, "region": "30cHb0re0TJwuS3N", "source": "IAP", "startDate": "1975-12-09T00:00:00Z", "storeId": "h1nN0txahdhp0tmV"}, {"collectionId": "4jjIkC8lqpB9cbsD", "endDate": "1977-10-18T00:00:00Z", "grantedCode": "reKfjfpUz3jtg1bK", "itemId": "aDBROm6TJ2qMul8c", "itemNamespace": "l55U4RB2xVHiARcF", "language": "aIqi-740", "metadata": {"cbnbAjszS84wsQH4": {}, "51BnJRGwBPZ82ML7": {}, "i85xAiG2FleXiqNP": {}}, "origin": "GooglePlay", "quantity": 84, "region": "ymXgMK8gaxYcDDZj", "source": "REFERRAL_BONUS", "startDate": "1983-05-26T00:00:00Z", "storeId": "VaSV6MkQpPd0utGY"}, {"collectionId": "DVGwpKCkOgcVrMw1", "endDate": "1986-09-01T00:00:00Z", "grantedCode": "AaC3oGYmbE9E87RT", "itemId": "Bvlu7lo1foXU28IE", "itemNamespace": "7EVvQkoqOZIFeJQS", "language": "Ncq_nZ", "metadata": {"JRStF3LRa7q49Edm": {}, "hBpI13Mh9tHYQiln": {}, "HrNI7XsRCD3YOzMK": {}}, "origin": "Oculus", "quantity": 8, "region": "WOxnVMpyEziAPi9d", "source": "REFERRAL_BONUS", "startDate": "1992-02-21T00:00:00Z", "storeId": "pEjPJDBPU8LPr0bj"}]' \
    'y4nFkl8n6PSoXYb9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'GrantUserEntitlement' test.out

#- 256 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'tc6rYyOiaUKC8t4G' \
    'V0JiE7ZbWP80Zctu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementByAppId' test.out

#- 257 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'nIw8zzjr1oeY1p4P' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'QueryUserEntitlementsByAppType' test.out

#- 258 GetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-get-user-entitlements-by-ids' \
    'DjtirdqDck0QFove' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementsByIds' test.out

#- 259 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'lKxdFe87vTbT1yke' \
    'vWiIoubexJQ22uV5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementByItemId' test.out

#- 260 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'cRj529cEGlYlBTFD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'GetUserActiveEntitlementsByItemIds' test.out

#- 261 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    '4MBzAgdtJfaktaCb' \
    'kIORjbuZi76GDzks' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'GetUserEntitlementBySku' test.out

#- 262 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'M1Iq82IG598WdAhv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'ExistsAnyUserActiveEntitlement' test.out

#- 263 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'jsHqU3mTbQzxkHXS' \
    '["iDFpwgjtHkQyb5yo", "i3fhBKutgKyddONr", "CA3C8SvqUKqpSaqB"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 264 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'WWsEePoWos4O5MRx' \
    'u5cYFtJZeinW64n9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 265 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'q4asIfg6qpRvHGYN' \
    'Afvls7pbw9yPFofH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementOwnershipByItemId' test.out

#- 266 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'SVjTbM9IHL2JcpnL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementOwnershipByItemIds' test.out

#- 267 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'uindE3Ucg05FtWiu' \
    'P1xyPeWov5pJJdyu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementOwnershipBySku' test.out

#- 268 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    '2TxbDTPkZkYfTO2G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'RevokeAllEntitlements' test.out

#- 269 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'g00JcXGaIUaL3FoA' \
    '27eK2U3IHpgmmQaQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlements' test.out

#- 270 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'j7hyQjWqzvHab6b9' \
    't7DWTaUGBJRTcrm3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'GetUserEntitlement' test.out

#- 271 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    '{"collectionId": "mIBuPZxqlGGOe2VY", "endDate": "1980-03-27T00:00:00Z", "nullFieldList": ["ej3cSW6YWXMTlqVr", "GyQYDnbzj7Xg2lcv", "B7TOu2FcuLwU5IJt"], "origin": "System", "reason": "pAasYNW28u3UZ3q6", "startDate": "1991-12-30T00:00:00Z", "status": "ACTIVE", "useCount": 24}' \
    'MAL9IC4460Wck2oK' \
    '2mLwkxgJXK2OjNzQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserEntitlement' test.out

#- 272 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '{"metadata": {"95lceIy0lnTniV8j": {}, "7XmR8FUW42wLu5tQ": {}, "BUE3k2mUvrQPFxSa": {}}, "options": ["RrDsF1CKYcMJnrn1", "I3ypoEAwuriKcfEb", "erKsmttvFw6Ev28m"], "platform": "tO5isAId2vIIeRmF", "requestId": "R2TQ2rE5Ugf8q6zX", "useCount": 17}' \
    'Jc7TK5xO3LzmzW8O' \
    'j3HDRoKRr6ZZRLgp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'ConsumeUserEntitlement' test.out

#- 273 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    '1djMaw9o5TdLhB2m' \
    'WrW0A29UflIqBalv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'DisableUserEntitlement' test.out

#- 274 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'Cur3yS6PcP3N8ee3' \
    'aFSyZkpxzyGW3kHA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'EnableUserEntitlement' test.out

#- 275 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'KNzH5cJ1x2IhHEQw' \
    'W44r5yXnevZsdD9I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'GetUserEntitlementHistories' test.out

#- 276 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'ip75t7Rgtj7pKnbt' \
    'PAZsNwKWlHT7wmvO' \
    --body '{"metadata": {"6YDgQ4TLdkZgouTE": {}, "i19doNSCRrqi0F1F": {}, "GxhrYszqB4U4xH3N": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlement' test.out

#- 277 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    '{"reason": "pxEEE1xE1teY5Ma1", "useCount": 36}' \
    'Sr2B137kVZhkISgO' \
    'NgrrElIGGV8sY9Za' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'RevokeUserEntitlementByUseCount' test.out

#- 278 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'FaHBtEtzzbIbJ6ns' \
    'mYALYAas29PBhKjK' \
    '22' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 279 RevokeUseCount
eval_tap 0 279 'RevokeUseCount # SKIP deprecated' test.out

#- 280 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    '{"platform": "MkPiEKRgT1zZPaKl", "requestId": "nIY3vGLET05JQWhw", "useCount": 17}' \
    '657ulArgYuyjFEve' \
    'Rvl0xjoSZYArBlpK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'SellUserEntitlement' test.out

#- 281 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    '{"duration": 46, "endDate": "1978-02-02T00:00:00Z", "entitlementCollectionId": "4T1DBdzzVbhZKnh9", "entitlementOrigin": "System", "itemId": "MX4Dg6kBhhmAmGWg", "itemSku": "ONbsaq6FR89FVcE5", "language": "vUWRlOGzgjnghEeY", "metadata": {"uTA3fZ9naIn2EhpB": {}, "namOqQfF1i9lDi17": {}, "TuzOCkfreVXF3F57": {}}, "order": {"currency": {"currencyCode": "a8i8FBQVq8F8UHFj", "currencySymbol": "nV4a8qkT208c4Eqn", "currencyType": "REAL", "decimals": 49, "namespace": "czanLg5zKTtaPmN6"}, "ext": {"tWQqV1V78ZIjg1Et": {}, "BZbAWeHGdU9mllRG": {}, "wL1hP0ILR0Ela7ZL": {}}, "free": true}, "orderNo": "oYjLN4VPTXzknDz9", "origin": "Steam", "overrideBundleItemQty": {"RB0KErE7XXTkVsvd": 67, "VD0pboKkDZJufSvo": 36, "Gyr43yZ4vipgYCZi": 97}, "quantity": 94, "region": "huUlRF8bgS0Z3T7D", "source": "REWARD", "startDate": "1978-11-29T00:00:00Z", "storeId": "3Vxw1InWyY5J5tCY"}' \
    '01FkbWfSwD66Xg5Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'FulfillItem' test.out

#- 282 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '{"code": "bc0EjxxzLQLRh64Y", "language": "JOr_unsM-VT", "region": "aXSjyAQ2QsMJlAxZ"}' \
    'Uci2CC1SEp55Timg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'RedeemCode' test.out

#- 283 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    '{"itemId": "FFENNE15OyfCm3JL", "itemSku": "SdyxEkUrupaAg8X3", "quantity": 33}' \
    'PczqMDbsgiaaxIpP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PreCheckFulfillItem' test.out

#- 284 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    '{"entitlementCollectionId": "9oAICocQql5YfBZV", "entitlementOrigin": "Xbox", "metadata": {"oM8JpOKNAU33hDeb": {}, "a57ZY9YNNrTcdcnz": {}, "DvUHgR2bX5lx9Ajw": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "Uey4fuSj1kSeWA37", "namespace": "02McnnKWV37CLHYv"}, "item": {"itemId": "ul2IsFExmn4GV4MH", "itemName": "5mOZyTMMDazz0zG1", "itemSku": "FmCCywXfHj329WcN", "itemType": "k8k8qK4gJrux6tlQ"}, "quantity": 59, "type": "ITEM"}, {"currency": {"currencyCode": "fleFLBKj8h7ZrO4p", "namespace": "TU7jATbVBcDGudQQ"}, "item": {"itemId": "m98BKOdsoaTqFhdL", "itemName": "fBWZeRFQvrB1lsWa", "itemSku": "PGfJVUla8UlMM4Cc", "itemType": "3k5J2qbHYNekyXLt"}, "quantity": 61, "type": "CURRENCY"}, {"currency": {"currencyCode": "H1ypF3hIsdFXbbaF", "namespace": "fchju2kAuottOSwo"}, "item": {"itemId": "884abNDjMPiZHxhF", "itemName": "eo51XVDI8f5EWndh", "itemSku": "cek3atmhTw5TDjWY", "itemType": "gm2yGvhR6HS643vg"}, "quantity": 85, "type": "CURRENCY"}], "source": "REDEEM_CODE", "transactionId": "N21mWwtuqNbtaAfD"}' \
    'zs5MyxW90cMZ9Ney' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'FulfillRewards' test.out

#- 285 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'Z5n02q1qbbj3sLmf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'QueryUserIAPOrders' test.out

#- 286 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'YzDVAVhXts4Cdsni' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'QueryAllUserIAPOrders' test.out

#- 287 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'SJKrJ4BrdfV658ZB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'QueryUserIAPConsumeHistory' test.out

#- 288 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '{"itemIdentityType": "ITEM_ID", "language": "CGDX_QuhT_429", "productId": "eT2jwH7ODZfqj84X", "region": "XtngQG9E03eUwSRO", "transactionId": "9eoka5Ufs9UTtAIm", "type": "GOOGLE"}' \
    'HB8O5ke34NGuMLQ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'MockFulfillIAPItem' test.out

#- 289 AdminGetIAPOrderLineItems
$PYTHON -m $MODULE 'platform-admin-get-iap-order-line-items' \
    'iPaGqelc3lbrPkW2' \
    'foKqIz9z80ICxp4M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminGetIAPOrderLineItems' test.out

#- 290 AdminSyncSteamAbnormalTransaction
$PYTHON -m $MODULE 'platform-admin-sync-steam-abnormal-transaction' \
    '7Opf9oRlvBsYj4Ic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminSyncSteamAbnormalTransaction' test.out

#- 291 AdminSyncSteamIAPByTransaction
$PYTHON -m $MODULE 'platform-admin-sync-steam-iap-by-transaction' \
    '{"orderId": "bdUz2cBWKIUuPLfv"}' \
    'TFl9DbHQLYWCwsAV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminSyncSteamIAPByTransaction' test.out

#- 292 QueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription' \
    'cQ0VGEUxlcNQWOpR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'QueryUserThirdPartySubscription' test.out

#- 293 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-group-id' \
    'GOOGLE' \
    'ETWMAv0uJ30L51Tx' \
    'rdknW52x2o1yDO6b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 294 GetThirdPartyPlatformSubscriptionOwnershipByProductId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-product-id' \
    'STADIA' \
    'u4NPuT03UI8xXkOT' \
    'RPX2RbN68q9Xjuvx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 295 QueryUserThirdPartySubscriptionTransactions
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription-transactions' \
    'GSBmDL91zfHvKnS4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 296 GetThirdPartySubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-subscription-details' \
    'TBwlGi9OKYqmnMdD' \
    'OYMCkcE680jXshhA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'GetThirdPartySubscriptionDetails' test.out

#- 297 GetSubscriptionHistory
$PYTHON -m $MODULE 'platform-get-subscription-history' \
    'rmrrsTXqjhryZuWF' \
    '0aXyAfnT9KMwZkUm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'GetSubscriptionHistory' test.out

#- 298 SyncSubscriptionTransaction
$PYTHON -m $MODULE 'platform-sync-subscription-transaction' \
    'ivHbmYwS4MpDJ1DY' \
    'OnlVrhflY3MzIef9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'SyncSubscriptionTransaction' test.out

#- 299 GetThirdPartyUserSubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-user-subscription-details' \
    'mtXHbh3agt9HQKHN' \
    'hlzYRtA24gRvv870' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'GetThirdPartyUserSubscriptionDetails' test.out

#- 300 SyncSubscription
$PYTHON -m $MODULE 'platform-sync-subscription' \
    'jG3e6kpEZmtrpzaL' \
    'fufFoH0vIAAZ3D07' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'SyncSubscription' test.out

#- 301 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'rENh4LQyLj7QmX1i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'QueryUserOrders' test.out

#- 302 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    '{"currencyCode": "jJDLqjyW5nSpi08d", "currencyNamespace": "nnmoWGbDOWBzflDP", "discountCodes": ["xqs6jAQJWL8Yc3AK", "tQffBJPNo4VIzCxI", "p8sE7bcL6xy49IPW"], "discountedPrice": 57, "entitlementPlatform": "Nintendo", "ext": {"t7BEsLhZnLrMlvvX": {}, "Dmz8vDIkHRMj2pIY": {}, "dQhOINS631eYxKFw": {}}, "itemId": "pR5ukyHmVB2oTqRW", "language": "bK0ubDt08F3Ptynk", "options": {"skipPriceValidation": false}, "platform": "Xbox", "price": 27, "quantity": 38, "region": "NZANUG3XywOPxcLT", "returnUrl": "U0y3maqZGwBZAszr", "sandbox": true, "sectionId": "lUceWJidPUCDHoZP"}' \
    'OFJliGQwzPSicmKe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateUserOrder' test.out

#- 303 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    '5tLTY4T61Ztjv4Hj' \
    'tKUJ2g5iKvkb6yaN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'CountOfPurchasedItem' test.out

#- 304 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    '0rJRTtAoroj50ibu' \
    'YM4wRG0lN0X5kMcm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'GetUserOrder' test.out

#- 305 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    '{"status": "REFUND_FAILED", "statusReason": "EkdFOw34ZkvghT5B"}' \
    '0olJY1qewjIDEZed' \
    'b90DCSoLAgeUljuQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'UpdateUserOrderStatus' test.out

#- 306 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'XNi35z75tQmcrR08' \
    'dqYhgjNEKxgigqjI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'FulfillUserOrder' test.out

#- 307 GetUserOrderGrant
eval_tap 0 307 'GetUserOrderGrant # SKIP deprecated' test.out

#- 308 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'aaftddfk3N3FUGt7' \
    'hRJWz66woOwujZiq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'GetUserOrderHistories' test.out

#- 309 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '{"additionalData": {"cardSummary": "rVmhfRRK7pehYZgL"}, "authorisedTime": "1975-09-17T00:00:00Z", "chargebackReversedTime": "1979-01-07T00:00:00Z", "chargebackTime": "1986-05-22T00:00:00Z", "chargedTime": "1983-09-18T00:00:00Z", "createdTime": "1979-06-17T00:00:00Z", "currency": {"currencyCode": "k0U2fuxYpTLF2CAq", "currencySymbol": "FwYdrzmGzkvzgJn2", "currencyType": "REAL", "decimals": 12, "namespace": "WVs6zZRXBAexxsuL"}, "customParameters": {"kWktcAykay7LItVj": {}, "r1YSzeXfUiXANoRi": {}, "oh11etL7rvPzXTBq": {}}, "extOrderNo": "3cXU8GYxE0OhdSVF", "extTxId": "cSQWMXN21fc6lGGf", "extUserId": "o4IJnwUyJDPc4Bi2", "issuedAt": "1985-10-30T00:00:00Z", "metadata": {"T8WWMNZ7MQ0xXiAU": "p37WFZG1bPREFnLF", "vdjVz0bF4f5a8wws": "XbVcGQFcH3a88llB", "2KCetfPNaSebuaBm": "42ZRTd7otFS5xUbl"}, "namespace": "p0GJFHhDBbjdusCt", "nonceStr": "KYo61c23RG7T7E4y", "paymentData": {"discountAmount": 76, "discountCode": "lj1BAkRkfD5QI95O", "subtotalPrice": 5, "tax": 15, "totalPrice": 39}, "paymentMethod": "BPiRxSSC369UVGTn", "paymentMethodFee": 40, "paymentOrderNo": "Oe3QpvyaquevE8jh", "paymentProvider": "WALLET", "paymentProviderFee": 4, "paymentStationUrl": "M4C34bBPbifHDiBM", "price": 38, "refundedTime": "1980-12-25T00:00:00Z", "salesTax": 69, "sandbox": true, "sku": "Qoxlbhfnh1larFYc", "status": "REFUNDED", "statusReason": "d3SDQ0zyrZOMqd75", "subscriptionId": "oCp2u2A2ZLrkeWbm", "subtotalPrice": 5, "targetNamespace": "D0K7Y5bCch6ur33F", "targetUserId": "thZ0FOWCXy70cM2i", "tax": 72, "totalPrice": 79, "totalTax": 40, "txEndTime": "1981-02-21T00:00:00Z", "type": "s5bsovjmmxHjjlqu", "userId": "ESAZpAC3MEgBrVUo", "vat": 78}' \
    'It120hKXcluepkD2' \
    'cjAyU8thUL0rK6Yl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'ProcessUserOrderNotification' test.out

#- 310 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'DgS7DF6WHO4xKI3D' \
    'zXlqZ97UEX77J2Za' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'DownloadUserOrderReceipt' test.out

#- 311 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    '{"currencyCode": "Cgl5zfvvm60VIJWt", "currencyNamespace": "ArjNf9ClzJiLrK8i", "customParameters": {"wSKwTNINv7MbR3h7": {}, "N9mLvImrGFR73LVK": {}, "d3lHIIZTnztswBHI": {}}, "description": "OUcpBs05S6VCRgcp", "extOrderNo": "qzF0Wdx4tTiOqvd6", "extUserId": "is3iMkUYXGJ52Lhr", "itemType": "APP", "language": "dM-450", "metadata": {"f2vnHOZhdmTd8ENV": "RZH8lmeTjzHxgwKa", "MjUptGDH129SPAGK": "8QxsXGgAK3QR9g0C", "7nE1t58LdpQQXSvH": "7kwH9PKAIEqRaoWk"}, "notifyUrl": "dV23II0TEDjWcIzf", "omitNotification": true, "platform": "6yInDEdr3JfyFO9P", "price": 96, "recurringPaymentOrderNo": "fhki2j4K5qHkvYSU", "region": "2i8wpPg4f6CytNOp", "returnUrl": "Tcy8nFxnyUhq8QCA", "sandbox": true, "sku": "YFsOpqr85xVvxj35", "subscriptionId": "1m51uwOolqmdu4Kl", "title": "KLptx5DKFWYNaRNb"}' \
    'zpFsjJLszOiHFs5x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'CreateUserPaymentOrder' test.out

#- 312 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '{"description": "AVg39H5hnoP20tlp"}' \
    'hew85KPyj4EGRMQT' \
    'eDUODYJlL3GEb7Cg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'RefundUserPaymentOrder' test.out

#- 313 GetUserPlatformAccountClosureHistories
$PYTHON -m $MODULE 'platform-get-user-platform-account-closure-histories' \
    'XWeXJrzNrt0fkjel' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'GetUserPlatformAccountClosureHistories' test.out

#- 314 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '{"code": "r7hVgkvQdto2PuC1", "orderNo": "4Lu2G4Mw4Mo4TirG"}' \
    'DZ6OUYrf6N5BjG6b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'ApplyUserRedemption' test.out

#- 315 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    '{"meta": {"ELZwjEmKgZXlgbV3": {}, "dBwrK8hpKlmw63co": {}, "2erbchkQ7n0C9lJb": {}}, "reason": "5WlmAWYUtevQ8Xsa", "requestId": "IOTUAVhHL0RrUev0", "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "26mxx5rFWCDjFeol", "namespace": "1Ra8c5c3F5otSicH"}, "entitlement": {"entitlementId": "NAFf6XoFjTyGzUy7"}, "item": {"entitlementOrigin": "System", "itemIdentity": "kdKgCuxFa4ix8vdZ", "itemIdentityType": "ITEM_SKU", "origin": "Oculus"}, "quantity": 46, "type": "ITEM"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "84W95YMkpzkat1qY", "namespace": "XphVMsbw6Rv3XZ4X"}, "entitlement": {"entitlementId": "gIfTmvZDu1OaoVmt"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "v7wz26xkkYYxgGLN", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 39, "type": "ITEM"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "EcW3bKxXuYOn0ULO", "namespace": "8bwirHmfnBivLKin"}, "entitlement": {"entitlementId": "rwTNNliEMZaebfXS"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "gZ4cc4oVqQk9tqGz", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 90, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "4cMw2Lh6XTFr1d0v"}' \
    '5MiCVrY2QOMJmNbA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'DoRevocation' test.out

#- 316 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    '{"gameSessionId": "v9VCU7hdDbGzcJKa", "payload": {"1wsM434xCGXTsh5x": {}, "ydeZADSKQFv0tnP0": {}, "5L7Nwx1i8sHEbX4m": {}}, "scid": "IdomBVyorRK73vbW", "sessionTemplateName": "SNBzkiEHyJEOg3iI"}' \
    'jU3AAg7WG2eTsmDa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'RegisterXblSessions' test.out

#- 317 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'Tzm1iyRQNy7RFRXu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'QueryUserSubscriptions' test.out

#- 318 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'zS7oKchq3HFDAp8s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'GetUserSubscriptionActivities' test.out

#- 319 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '{"grantDays": 27, "itemId": "E8IGOaRsievm4IDx", "language": "tFXsff5uksqDpH01", "reason": "I9KImkc3YwK5J3Gy", "region": "OQJLupcfcMQlt7ss", "source": "E0BVP1MHJQhmZHHk"}' \
    'tlLrVbhm9d4y2SbI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PlatformSubscribeSubscription' test.out

#- 320 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    '0OO1ououcz4taACO' \
    'l097nqfMF4iGEw5E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 321 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'hhlxYtAWr3elzD6W' \
    'KsCrHf4vU4AqkG2j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'GetUserSubscription' test.out

#- 322 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'U9DouFSA3CLtlE5P' \
    'pY0ZXXFyG4988Dpk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'DeleteUserSubscription' test.out

#- 323 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    '{"immediate": true, "reason": "ZvvwEDVOZ5VOwnn6"}' \
    'MrDyExIjLvTJkl9W' \
    'nxI3c4i8HDHZe4XL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'CancelSubscription' test.out

#- 324 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    '{"grantDays": 74, "reason": "ZvUxYzYBSzriljJO"}' \
    'DaZNFJFbzIchkAZm' \
    'UviJbcnsW6uK889C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'GrantDaysToSubscription' test.out

#- 325 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'cm0VWwNdNaPLrz9N' \
    '2oRxNd2x7bzAMbnc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'GetUserSubscriptionBillingHistories' test.out

#- 326 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    '{"additionalData": {"cardSummary": "0ESgND3Bzn0RXiwL"}, "authorisedTime": "1993-04-26T00:00:00Z", "chargebackReversedTime": "1972-01-08T00:00:00Z", "chargebackTime": "1978-07-20T00:00:00Z", "chargedTime": "1990-02-18T00:00:00Z", "createdTime": "1986-03-08T00:00:00Z", "currency": {"currencyCode": "1VnZFgkytfX1NqG3", "currencySymbol": "h3imEWxUgMEW1S9J", "currencyType": "REAL", "decimals": 49, "namespace": "rmE7zBsX3PYLNcay"}, "customParameters": {"R34iibMmlb6vlF1m": {}, "VrcAyqXXnKEtSQkL": {}, "h10xq2zgtaigOB2X": {}}, "extOrderNo": "WLXBkH6l2KW0sSf0", "extTxId": "vJS3l5sWDcfVxx8P", "extUserId": "SjamcbAWAUiz3UhK", "issuedAt": "1989-02-27T00:00:00Z", "metadata": {"YcE585zPfpDiAo4z": "Aj1AgjctQkNA6tPx", "cpOjecMqPJvYXVa6": "273TGlaOPmEdjp63", "KfNpB5Un5ObPhEk6": "MRN6zzKPZLWVB4YH"}, "namespace": "2roupmMfATapsn4u", "nonceStr": "vJaBhPA5LWJipgrv", "paymentData": {"discountAmount": 88, "discountCode": "4WstdHC5KGE92n4s", "subtotalPrice": 64, "tax": 70, "totalPrice": 95}, "paymentMethod": "M7AWUdPJvJivl1uU", "paymentMethodFee": 27, "paymentOrderNo": "DMwBdaNaGlQD7ToP", "paymentProvider": "NEONPAY", "paymentProviderFee": 94, "paymentStationUrl": "5GAWm1WfXALgsjwf", "price": 7, "refundedTime": "1990-06-08T00:00:00Z", "salesTax": 8, "sandbox": true, "sku": "YGpxI9DQs2vOJH76", "status": "AUTHORISE_FAILED", "statusReason": "7Tk0E680aIGz1A2c", "subscriptionId": "XngjJWPf2xqt2uL9", "subtotalPrice": 63, "targetNamespace": "kPDBgq17ElbCwKI3", "targetUserId": "aXhSEFUvuqvkzikf", "tax": 1, "totalPrice": 39, "totalTax": 71, "txEndTime": "1992-09-05T00:00:00Z", "type": "LhwHqc9mwHFQ3JQt", "userId": "pRpQVAOexmqWb9l5", "vat": 50}' \
    'M4wpXhdaJDB3MXGM' \
    'rRfpSxf1BnhjtAik' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'ProcessUserSubscriptionNotification' test.out

#- 327 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    '{"count": 99, "orderNo": "tFPmTQOO3dJd2YP1"}' \
    'XIUKL9g3ACu1VGeR' \
    'Pwa2XfZ7wxA0lvXb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AcquireUserTicket' test.out

#- 328 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'cZY7zXTdKQkADYHy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'QueryUserCurrencyWallets' test.out

#- 329 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    '{"allowOverdraft": true, "amount": 50, "balanceOrigin": "Other", "balanceSource": "TRADE", "metadata": {"eNCfqyJ435IkibSz": {}, "JGQtaPFC2SxEMchj": {}, "Q84nuG9DGOS5kQvK": {}}, "reason": "7NHpsIBYlUoEWZPa"}' \
    'wFVpfXqbM5rNHQHE' \
    'foYiLFQBUx73FrGG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'DebitUserWalletByCurrencyCode' test.out

#- 330 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    '1NypPAy9ZqaNySvp' \
    'XwMac489Y6N0H6yn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'ListUserCurrencyTransactions' test.out

#- 331 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 86, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"YiqbIBvNbRcU7z56": {}, "hvDaSIChGku6gm1t": {}, "uTKBNwhTZL6vJfgP": {}}, "reason": "EZmTs18vZnFstnJ5", "walletPlatform": "Nintendo"}' \
    '3gYPJQEukOcBtFyz' \
    'W1aKe15m4NorN2PP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'CheckBalance' test.out

#- 332 CheckWallet
eval_tap 0 332 'CheckWallet # SKIP deprecated' test.out

#- 333 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '{"amount": 91, "expireAt": "1974-07-07T00:00:00Z", "metadata": {"XmALwnidAmiLFK5D": {}, "wak0R9n1WBVWp96b": {}, "YrG5ANSRCXWy9C2o": {}}, "origin": "Twitch", "reason": "7hGbYOjo5zLgQb3h", "source": "OTHER"}' \
    'zGQPBQoXpXVvDLul' \
    'elX30R2hPYkRArSf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'CreditUserWallet' test.out

#- 334 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 64, "debitBalanceSource": "OTHER", "metadata": {"xoJMARmEC7Kyhtx4": {}, "sYsq0CbA1NZZ58G8": {}, "Xryw8bfE6VA6HEvq": {}}, "reason": "N7kX4VVVBS89UUbL", "walletPlatform": "Nintendo"}' \
    'bPuYtBYRa3zvDFLg' \
    'Lp1g9EhVfDOcOmH7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'DebitByWalletPlatform' test.out

#- 335 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '{"amount": 11, "metadata": {"PVoTCRV5enPlVeOc": {}, "8uDGuA9ZVtPuyxsP": {}, "GoUCgc3BsZJVlVle": {}}, "walletPlatform": "Other"}' \
    '8y965Raxu2ujZqzk' \
    'OZE6sOGLtoFJvwz5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PayWithUserWallet' test.out

#- 336 GetUserWallet
eval_tap 0 336 'GetUserWallet # SKIP deprecated' test.out

#- 337 DebitUserWallet
eval_tap 0 337 'DebitUserWallet # SKIP deprecated' test.out

#- 338 DisableUserWallet
eval_tap 0 338 'DisableUserWallet # SKIP deprecated' test.out

#- 339 EnableUserWallet
eval_tap 0 339 'EnableUserWallet # SKIP deprecated' test.out

#- 340 ListUserWalletTransactions
eval_tap 0 340 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 341 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'ListViews' test.out

#- 342 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    '{"displayOrder": 49, "localizations": {"i1IDd9h3DkrqAqSq": {"description": "czq4VIqU80fLtA9E", "localExt": {"i7lNOS1nzf1JGU0A": {}, "qSFsHZyeSTGysSto": {}, "p5Pu3KNnlg5aQvtZ": {}}, "longDescription": "qOqyYqukNu3IiEoe", "title": "Ahwgfo77M8FJYRhM"}, "0dJBA4b3QbH3tCVf": {"description": "HKGFiQvPyj1FCk4Q", "localExt": {"M8cZueXeYkC0oo7a": {}, "ThH67UFGXrkXmmck": {}, "OjWhMg8bi8TTnK6a": {}}, "longDescription": "u871df3bxo2XjwMh", "title": "bcaFVUwJJdMacFat"}, "m236DRyTtXhEPzah": {"description": "VXYKrblYxb89S0ly", "localExt": {"srMEifhjrwrJGqlm": {}, "yy5EAtMaJvnkbpEL": {}, "CCQEX7DlAjoDECQ1": {}}, "longDescription": "ALpc5HR4Bp38TGey", "title": "fWQESVLLj435Tsq6"}}, "name": "xxQZBGiif91rgOdz"}' \
    'ASMsVBiv6rL3ZEZR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'CreateView' test.out

#- 343 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'H0Pkkc62P13ItOBe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'GetView' test.out

#- 344 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    '{"displayOrder": 20, "localizations": {"pRUTmAHfO9FrQ9lw": {"description": "zAWiJH282OIiKU7M", "localExt": {"Rx3xefM47AsxVCXe": {}, "fUThoflsBWhnubnR": {}, "OvA1CxkXWIlkrF4c": {}}, "longDescription": "f9E2pKWkX7et7rl9", "title": "ow7BDniJH2zFRgcu"}, "TMYiBESlCYdNui4A": {"description": "frJuSaiOYxuj6n1U", "localExt": {"TUHsgjv4O66qvH38": {}, "lYKeEiUS3GYxZHMK": {}, "3ybnM1cQEihWjWNw": {}}, "longDescription": "YN6xeNeZMtT7f2d2", "title": "NhlIgGSvbXe1Hyw3"}, "mylk3Hwg4Wtj5wR9": {"description": "o07ypJFcZroi0QeG", "localExt": {"6cD8trKjrFSu4MOj": {}, "7pBAbAKLICuRvKGI": {}, "R3uSMSyy1zY8VkZd": {}}, "longDescription": "3qEIVQCbFYV3NuJg", "title": "scT8dY4nux3S39sG"}}, "name": "E4zXVkI5AV7Af2Tu"}' \
    '32ZzATykI3Y8spu5' \
    'S6I5h9Aa4tLrATtq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'UpdateView' test.out

#- 345 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'IhJQruDfpefgGxk7' \
    'jqfRNpfhafmEghm1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'DeleteView' test.out

#- 346 GetWalletConfig
$PYTHON -m $MODULE 'platform-get-wallet-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'GetWalletConfig' test.out

#- 347 UpdateWalletConfig
$PYTHON -m $MODULE 'platform-update-wallet-config' \
    '{"enablePaidForVCExpiration": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'UpdateWalletConfig' test.out

#- 348 QueryWallets
eval_tap 0 348 'QueryWallets # SKIP deprecated' test.out

#- 349 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    '[{"creditRequest": {"amount": 66, "expireAt": "1971-02-18T00:00:00Z", "metadata": {"dYciedOlGrfTUc5A": {}, "CZJjhP2aqyZJps39": {}, "vNgtqv552OktaS7I": {}}, "origin": "Epic", "reason": "ksiAtxe6FuXv7wMn", "source": "PURCHASE"}, "currencyCode": "Spo6vhwdrFa4npr0", "userIds": ["bRBputNAcV0wHVw4", "OJZ9KRfK3ElT6izH", "qt5yxg5LXtD40Rsi"]}, {"creditRequest": {"amount": 87, "expireAt": "1992-03-08T00:00:00Z", "metadata": {"dx5D1ZrPFTEv91Kn": {}, "FOHx4QGVt5sQ7M74": {}, "MHRwGWuXrmWB81vp": {}}, "origin": "Nintendo", "reason": "8lwa3vXLwnFGnmLj", "source": "IAP"}, "currencyCode": "ZrPVAZ2ZLrDa1xpq", "userIds": ["W9QrR9bMgSr1OTY7", "IziihTn1qm3WYY19", "InV7B8tHIYiWBgIk"]}, {"creditRequest": {"amount": 99, "expireAt": "1992-09-18T00:00:00Z", "metadata": {"CTRYI1Nyon9lvA8o": {}, "43VZXjofWhPJjqdf": {}, "6RBiYws6MPqsSKy9": {}}, "origin": "Playstation", "reason": "sYw3NP5yL2qIrhx9", "source": "SELL_BACK"}, "currencyCode": "vDwgTWzfQZmZcPHc", "userIds": ["Yi9kZKg0DnxN18Ea", "aeIREKfKrgrQb1IE", "deyMGra3yLwQHFxe"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'BulkCredit' test.out

#- 350 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    '[{"currencyCode": "QxhuWhajv4y7mpuD", "request": {"allowOverdraft": false, "amount": 47, "balanceOrigin": "Nintendo", "balanceSource": "IAP_REVOCATION", "metadata": {"MHvCJxPolhQomjBG": {}, "Ee1V7Qe1VtpXfKrT": {}, "Ud4eK4cPdj9IYCmO": {}}, "reason": "OskIKiuKPVqNdfcb"}, "userIds": ["armjmzkYQMLffgy1", "mpc59V2qKD8lNq4h", "Ojr98OLoHszOIdSW"]}, {"currencyCode": "IpaLpZwnDkDw7Zri", "request": {"allowOverdraft": false, "amount": 11, "balanceOrigin": "IOS", "balanceSource": "TRADE", "metadata": {"8Q803RjC4wycgOIp": {}, "hhydYZ7NEwrSsI3c": {}, "SyJGEsS9JnHfbeKO": {}}, "reason": "jYbpVv23JUwrktKu"}, "userIds": ["stkqyDQrrYVdLYux", "e5lw0m8Evy70CBhC", "dWsAQcRaz03FZ9YT"]}, {"currencyCode": "DWnlXZ0fFMUOsM2D", "request": {"allowOverdraft": false, "amount": 57, "balanceOrigin": "Twitch", "balanceSource": "ORDER_REVOCATION", "metadata": {"PPSWbsPzR9vQiwMd": {}, "HSV2fA6M7yIgULct": {}, "krQt7UdVDHgEyEMT": {}}, "reason": "17gAkJ9ZOyUyKXZ4"}, "userIds": ["1QNJxA5bUgJyfyqZ", "rjTOGuuZKYSboPR0", "gnJD0btvfiaLotp8"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'BulkDebit' test.out

#- 351 GetWallet
eval_tap 0 351 'GetWallet # SKIP deprecated' test.out

#- 352 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'XsJXmWaoddgjJ2F0' \
    '09o01wDwPk87RGZx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'SyncOrders' test.out

#- 353 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    '{"allowedPaymentMethods": ["hbon95Kr4kABVvvo", "yJHCJBXauQb7rZO3", "cLAcITU9eaHQK6bt"], "apiKey": "DxqspEHxJ7HIZTmr", "authoriseAsCapture": true, "blockedPaymentMethods": ["9JzIoTTXKTR2Z9P6", "6amF5l35onaRK2kO", "t01My99Nzxfq4jTs"], "clientKey": "NihBMEN4c79eXbUH", "dropInSettings": "mcvCVohS9cZeNhZq", "liveEndpointUrlPrefix": "7LKZkGycl5oKG2FV", "merchantAccount": "9jHnWg7dx8OSOJ9E", "notificationHmacKey": "FaxeDD8oVvwa87Yr", "notificationPassword": "banFFARSHMaf8ayq", "notificationUsername": "vkXvHfj2e4dQJLp4", "returnUrl": "KMIcg74z6KA7qyrd", "settings": "GdWMrPtZSPUCJfnr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'TestAdyenConfig' test.out

#- 354 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    '{"appId": "l3yUawIX1hRJUWYF", "privateKey": "9TbCR4qGKgfhTaBB", "publicKey": "mPDLRa6mzkhzzfqs", "returnUrl": "SgeEUzauX2BiTkHq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'TestAliPayConfig' test.out

#- 355 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    '{"publicKey": "Fomi9qMKO7v11iTP", "secretKey": "PXFNeZn2vRR0BflN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'TestCheckoutConfig' test.out

#- 356 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'DebugMatchedPaymentMerchantConfig' test.out

#- 357 TestNeonPayConfig
$PYTHON -m $MODULE 'platform-test-neon-pay-config' \
    '{"apiKey": "L8jjbsyHugFLvZcT", "webhookSecretKey": "CEMbloZsrrwFc43B"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'TestNeonPayConfig' test.out

#- 358 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    '{"clientID": "EFzGxzXRz9ek9cTf", "clientSecret": "klLvhREHXR9ZyR0g", "returnUrl": "Yn2o0UsgX0kqqfQG", "webHookId": "B8T8wu0Hyqob2hEK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'TestPayPalConfig' test.out

#- 359 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    '{"allowedPaymentMethodTypes": ["ozEd4P5Auq8Vd4w6", "txSKD5jHXOt6NIhH", "6zSxo8OYohg3GlW7"], "publishableKey": "2bmWwgdGm7u6jzl0", "secretKey": "5VURHB2aH1OBjSbR", "webhookSecret": "TbA5ngX8nMk5seGm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'TestStripeConfig' test.out

#- 360 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    '{"appId": "bg5yaV5LtdtmXxub", "key": "nK90It1WEpBd8W8y", "mchid": "L5eZhTnha9eiJsMl", "returnUrl": "XtygrzG2QUljK667"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'TestWxPayConfig' test.out

#- 361 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    '{"apiKey": "R7aO0dO8De9iVlq9", "flowCompletionUrl": "yqguKMz482n0E7GA", "merchantId": 22, "projectId": 44, "projectSecretKey": "kemcXh4pNS6sh71n"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'TestXsollaConfig' test.out

#- 362 GetPaymentMerchantConfig1
$PYTHON -m $MODULE 'platform-get-payment-merchant-config-1' \
    'sTcYAqRmpQJ4iKsM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'GetPaymentMerchantConfig1' test.out

#- 363 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '{"allowedPaymentMethods": ["Rzrkq6bbxROX48x3", "z6oqsbyJVZinLIVP", "ccaYI6l6fKrVA93q"], "apiKey": "reneWTQ0fb8ClHBQ", "authoriseAsCapture": false, "blockedPaymentMethods": ["5L53XwwLUeWVf3gL", "2yczZXxdsLxTWwVP", "r4U5NXmKyOdqZZYE"], "clientKey": "LSAPxBDIEPT2GAxO", "dropInSettings": "HInufNkRydUBWF1N", "liveEndpointUrlPrefix": "h9i59vuR6CcSzvIt", "merchantAccount": "wdqe2s7ffSpc1OxK", "notificationHmacKey": "g4Uf3g4nlTA2frzx", "notificationPassword": "3vb2Yn8hNVujI5u1", "notificationUsername": "ivKmyBtn9fNT1GF6", "returnUrl": "M2zSlbUz3WBHpFxz", "settings": "pkrOzs73jVKJexWA"}' \
    'azbTZ8xcQZYsCETX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'UpdateAdyenConfig' test.out

#- 364 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    '7eZJ4NO0fjNEPoyN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'TestAdyenConfigById' test.out

#- 365 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '{"appId": "a1H6pgh7vmRlxBjI", "privateKey": "qeBpbdOgQElalEbC", "publicKey": "ZEVCPO4CPfrYjqZm", "returnUrl": "Ukz3Ex6g0nu0nDYc"}' \
    'jNC6mnTmEkvGygUo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'UpdateAliPayConfig' test.out

#- 366 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'YZDyX1XgjjnrUVMh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'TestAliPayConfigById' test.out

#- 367 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '{"publicKey": "Dfw4eyyzx2XNh0EY", "secretKey": "35JVEQoV68grUjl9"}' \
    'Qae3pK8C8CdtTw2J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'UpdateCheckoutConfig' test.out

#- 368 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    '5ZQEu9BANVmy4KLy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'TestCheckoutConfigById' test.out

#- 369 UpdateNeonPayConfig
$PYTHON -m $MODULE 'platform-update-neon-pay-config' \
    '{"apiKey": "KRCKGC9EJ56TgtZf", "webhookSecretKey": "rBCM5NKhIaT1B5Rk"}' \
    'bc6yUtoHNPAPLpeC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'UpdateNeonPayConfig' test.out

#- 370 TestNeonPayConfigById
$PYTHON -m $MODULE 'platform-test-neon-pay-config-by-id' \
    '92ROlmtwrNVp1hq3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'TestNeonPayConfigById' test.out

#- 371 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '{"clientID": "dVtu3cDHRPMJTQpw", "clientSecret": "uvc5CHBSCrAHrYQJ", "returnUrl": "hGB6o1O006QlzwNp", "webHookId": "wlkXg5rRaOG40vwm"}' \
    'ux5X7eWoUz63g5ld' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'UpdatePayPalConfig' test.out

#- 372 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'LNvDsFRxvIWPhDHl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'TestPayPalConfigById' test.out

#- 373 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '{"allowedPaymentMethodTypes": ["guiwW43ftI0abvQQ", "ByahJAdStJsp8I8S", "vYIsj0HTDvNXyTxv"], "publishableKey": "PRnlFSQ6v7K73Xi2", "secretKey": "AB5OYFvqKEDfQUOT", "webhookSecret": "5Zg2G1BWvZyqW6CS"}' \
    'trsDUMYOj7smPuH5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'UpdateStripeConfig' test.out

#- 374 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'BZrTsNJRR5uMT5lI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'TestStripeConfigById' test.out

#- 375 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    '{"appId": "HTRyEidwdTqJoLD9", "key": "kVnRYM4lgdcOb3Jx", "mchid": "4X529dtXtK0d0nuI", "returnUrl": "BjVZjOjrIUNPjErp"}' \
    'mdsCqI9mZu9LEeOT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'UpdateWxPayConfig' test.out

#- 376 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'aHP4LtwjLUYUJQk8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'UpdateWxPayConfigCert' test.out

#- 377 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    '0tPmdgSg2KTH1uoB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'TestWxPayConfigById' test.out

#- 378 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    '{"apiKey": "UpdqwNpqsh9jEInU", "flowCompletionUrl": "NjjzDzEs7bfi9Y5q", "merchantId": 80, "projectId": 50, "projectSecretKey": "HqNuu1OPm9hwPfrl"}' \
    'E7xqyfwWmTGhwyWJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'UpdateXsollaConfig' test.out

#- 379 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    '7EAB7kGxNwO0Z3aq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'TestXsollaConfigById' test.out

#- 380 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT"}' \
    'fZMlKU7yv9DAnbOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'UpdateXsollaUIConfig' test.out

#- 381 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'QueryPaymentProviderConfig' test.out

#- 382 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    '{"aggregate": "NEONPAY", "namespace": "allb2jaRoKBxDcnd", "region": "YM9mz3tE3VsEwkaf", "sandboxTaxJarApiToken": "cV7jvya0krMPGafh", "specials": ["ALIPAY", "CHECKOUT", "CHECKOUT"], "taxJarApiToken": "EknQOBTBGEdEfyK3", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'CreatePaymentProviderConfig' test.out

#- 383 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'GetAggregatePaymentProviders' test.out

#- 384 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'DebugMatchedPaymentProviderConfig' test.out

#- 385 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'GetSpecialPaymentProviders' test.out

#- 386 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    '{"aggregate": "NEONPAY", "namespace": "HA74vLT0RK95W5F4", "region": "wbgjwLQ0g8wHSHjS", "sandboxTaxJarApiToken": "Lr6q5SdMiLPibZ6R", "specials": ["STRIPE", "PAYPAL", "ADYEN"], "taxJarApiToken": "4FpirWyaX4XU6HXj", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    'lOVRke0Rw0rMOzAo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'UpdatePaymentProviderConfig' test.out

#- 387 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'qZ9f1EMlA0TgPiaT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'DeletePaymentProviderConfig' test.out

#- 388 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'GetPaymentTaxConfig' test.out

#- 389 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    '{"sandboxTaxJarApiToken": "mgHDc2z6oQw2U7bE", "taxJarApiToken": "MvRb14bhXWTQmF3l", "taxJarEnabled": false, "taxJarProductCodesMapping": {"HvpzhH0EfWL4qJaL": "zNq81FeQxv1WvDbJ", "OO9Ei7svAbiWKf1R": "8Jo6PYMB78PcooWL", "EHt7SGsO6cJrH6H0": "hqUIDOC2lhvjQbxJ"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'UpdatePaymentTaxConfig' test.out

#- 390 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    '8kMyYjTMwxUt8Wn0' \
    'bPEgnVesvMZCUgM3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'SyncPaymentOrders' test.out

#- 391 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicGetRootCategories' test.out

#- 392 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'DownloadCategories' test.out

#- 393 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'yTN4uuJ6Vj8z7NX7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicGetCategory' test.out

#- 394 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    '4cqoA0EYfSvI7ekn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicGetChildCategories' test.out

#- 395 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'vgQgx9Q8w3YQS19m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicGetDescendantCategories' test.out

#- 396 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicListCurrencies' test.out

#- 397 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'GeDLCDurableRewardShortMap' test.out

#- 398 GetAppleConfigVersion
$PYTHON -m $MODULE 'platform-get-apple-config-version' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'GetAppleConfigVersion' test.out

#- 399 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'GetIAPItemMapping' test.out

#- 400 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'wavR2tWflzm98aj2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicGetItemByAppId' test.out

#- 401 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicQueryItems' test.out

#- 402 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    '2sDOpjchReV2Sgd0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicGetItemBySku' test.out

#- 403 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'wMGZHEIFdrXoIkuJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicGetEstimatedPrice' test.out

#- 404 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'vjMnmfWaKU8Ip9Yw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicBulkGetItems' test.out

#- 405 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    '{"itemIds": ["I71rpGgzgibcIwh7", "4WoYm2RpiaZTqwxk", "iaQ25Cmx027mrMB0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicValidateItemPurchaseCondition' test.out

#- 406 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'ErGNqgTj0m5aXzvl' \
    '2LFs9Vq7fPpWrWij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicSearchItems' test.out

#- 407 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'vCWVmkHmWlx3nmrI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicGetApp' test.out

#- 408 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'HxWeWaK00OKZeelU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicGetItemDynamicData' test.out

#- 409 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    '0xovCm2YCueyfFOV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItem' test.out

#- 410 GetPaymentCustomization
eval_tap 0 410 'GetPaymentCustomization # SKIP deprecated' test.out

#- 411 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    '{"neonPayConfig": {"cancelUrl": "TaSJ3nJLnkD8LYM6", "successUrl": "5VLZiKm15hez2Mgr"}, "paymentOrderNo": "iZ60A9qKACSJnrZA", "paymentProvider": "WXPAY", "returnUrl": "DQGJdqaQ6yjAOKmx", "ui": "scQRCmbWTm1PRgpz", "zipCode": "XRHuGgWoSnSmEo0d"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicGetPaymentUrl' test.out

#- 412 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'L02zFIdAPaaghTcA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicGetPaymentMethods' test.out

#- 413 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'cuTSz8tViSRVKzwW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicGetUnpaidPaymentOrder' test.out

#- 414 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '{"token": "qYcgoQp44IwVEXXg"}' \
    '779DcEb5nBVeAEY8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'Pay' test.out

#- 415 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    '9xEnoKKlyPtaGSVN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicCheckPaymentOrderPaidStatus' test.out

#- 416 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'NEONPAY' \
    'SadVYWuZYb5azP3B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'GetPaymentPublicConfig' test.out

#- 417 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'n1T6t1Gtc06fMGRK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicGetQRCode' test.out

#- 418 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'whR0ZPvwplWQITcY' \
    'a8Pk58cdH7Udivaf' \
    'STRIPE' \
    'cQ8aIsboqQidXJhh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicNormalizePaymentReturnUrl' test.out

#- 419 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'gBD6TwYNvWLRH2T1' \
    'ALIPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'GetPaymentTaxValue' test.out

#- 420 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'UJ6YBDI6H0BLhMQN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'GetRewardByCode' test.out

#- 421 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'QueryRewards1' test.out

#- 422 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'cUFUuoIPjHtjlsAV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'GetReward1' test.out

#- 423 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicListStores' test.out

#- 424 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicExistsAnyMyActiveEntitlement' test.out

#- 425 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'WEExJQvJmELMA89i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 426 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'xWjkF5JwpR9Zt9Ph' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 427 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'wk7ORkQcyu5lxJ66' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 428 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'PublicGetEntitlementOwnershipToken' test.out

#- 429 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    '{"gameId": "HGJ8Ih3lT8pzoI46", "language": "CgQg-IldX", "region": "3OGPS9CdMQW1gop8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'SyncTwitchDropsEntitlement' test.out

#- 430 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'xEB5Wri70hzuPPRN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'PublicGetMyWallet' test.out

#- 431 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'n7bSYv9Fk7PATOx8' \
    --body '{"epicGamesJwtToken": "N4N4Dg5mDZyNmi9N"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'SyncEpicGameDLC' test.out

#- 432 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'ee8E16CJURxlwSvm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'SyncOculusDLC' test.out

#- 433 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    '0n7bp88FcFKPGv9P' \
    --body '{"serviceLabel": 78}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicSyncPsnDlcInventory' test.out

#- 434 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'loMb1yETgQxGUEwv' \
    --body '{"serviceLabels": [23, 14, 63]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 435 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    '{"appId": "zsmReJ5mzZVaR7dm", "steamId": "ubH0qAuhWzVV19I9"}' \
    'lRlaYwp4MNvBgT09' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'SyncSteamDLC' test.out

#- 436 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'Pvx7f7SN0lAsIrtT' \
    --body '{"xstsToken": "kAPhRsCrtV0KHq6V"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'SyncXboxDLC' test.out

#- 437 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'sfzrlaPzFVXIZH0z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicQueryUserEntitlements' test.out

#- 438 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    '8HSYc2706OUmcszJ' \
    'VLPq9854qsjR0aEz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserAppEntitlementByAppId' test.out

#- 439 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'hzFlD1uglEn1NwYq' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'PublicQueryUserEntitlementsByAppType' test.out

#- 440 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    'pioGwh9SWxNzQ3Dz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'PublicGetUserEntitlementsByIds' test.out

#- 441 PublicGetUserEntitlementByItemId
eval_tap 0 441 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 442 PublicGetUserEntitlementBySku
eval_tap 0 442 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 443 PublicUserEntitlementHistory
$PYTHON -m $MODULE 'platform-public-user-entitlement-history' \
    'IEearFrFMIeo9PYR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'PublicUserEntitlementHistory' test.out

#- 444 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'TxSprB0BtuiJEqmb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'PublicExistsAnyUserActiveEntitlement' test.out

#- 445 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'aRx6F3iux9udWaDY' \
    'HSt1EEifnuSTtCN8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 446 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'i2tS7rAMAxwXuiaH' \
    'CNLmnlRPStXhqg4X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 447 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'eI32fETDPQVe026c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 448 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    '9WrAxnE6M2ryxqcx' \
    'kHbchAPo9rtjQ5kv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 448 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 449 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'wn03vGAW804TWUV2' \
    'HAG9BYa4uwQ0r4tG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserEntitlement' test.out

#- 450 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "options": ["p00rMLZ1eTfmUwkG", "YQeInkHcPjNEn2se", "1yYqxystC5YdtXrM"], "requestId": "6vcndGdt9cB5Ef9p", "useCount": 17}' \
    'ijH07e7HJsG6fiR0' \
    'imQt0JNbgDRBXsG5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 450 'PublicConsumeUserEntitlement' test.out

#- 451 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    '{"requestId": "NNHroQDKwoHHnyDb", "useCount": 96}' \
    'pWz4d2uiESs0ypsu' \
    'zcbl4Dtn32tNBisb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 451 'PublicSellUserEntitlement' test.out

#- 452 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 3}' \
    'vUfmhkAHdGDOTSuc' \
    'llEURtdq3O6BR25z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 452 'PublicSplitUserEntitlement' test.out

#- 453 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    '{"entitlementId": "A3GaAcY14lwQ2mYz", "metadata": {"operationSource": "INVENTORY"}, "useCount": 23}' \
    'YkMiU0vVreF40rVD' \
    'DwsRfL40POY5Hn3s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 453 'PublicTransferUserEntitlement' test.out

#- 454 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '{"code": "kPtxMwqAHjAkfGd2", "language": "lpd", "region": "z9FkJg1Z8rxzVxQf"}' \
    'f0U7Yg4JRkEi3eTo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 454 'PublicRedeemCode' test.out

#- 455 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '{"excludeOldTransactions": false, "language": "OKw_572", "productId": "l5rW530yMjnntV6l", "receiptData": "xz46lnMr9kgHzpU1", "region": "KgX7txYFVqqFEhEL", "transactionId": "z081Q4jTsZOfifLF"}' \
    'OXzxoLgAvBNsJ2nd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 455 'PublicFulfillAppleIAPItem' test.out

#- 456 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'qYrqlR22SxGw0BBG' \
    --body '{"epicGamesJwtToken": "pL3uAigOFar5VeA5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 456 'SyncEpicGamesInventory' test.out

#- 457 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '{"autoAck": false, "autoConsume": true, "language": "Khzs-298", "orderId": "q2zpchS4nABQWx7h", "packageName": "Xtj4En87TJ2E3gIQ", "productId": "hGe5QDctKW2dDMad", "purchaseTime": 64, "purchaseToken": "5Ajldy64tvczW9hk", "region": "NRJKsIQO6Rf71ujk", "subscriptionPurchase": false}' \
    'L1VlSgxKddpVjWOR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 457 'PublicFulfillGoogleIAPItem' test.out

#- 458 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'qaRaiKe3J6MjaTVK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 458 'SyncOculusConsumableEntitlements' test.out

#- 459 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'bc6MVnZY8ef430pl' \
    --body '{"currencyCode": "DAbJOGJnISwkoUkE", "price": 0.47811498625200244, "productId": "T2ZbXq2jUheXRiR9", "serviceLabel": 54}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 459 'PublicReconcilePlayStationStore' test.out

#- 460 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    '{"currencyCode": "CeUFWrh0jQ4KIS0c", "price": 0.9250412408245557, "productId": "TxMgqbcYaXxQuiMi", "serviceLabels": [64, 37, 22]}' \
    'c8nnqOjusG91vBxB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 460 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 461 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '{"appId": "CUBoebiWj66Ddvql", "currencyCode": "wMH6jkWzxyWSduld", "language": "NIye", "price": 0.17657988713050066, "productId": "SvZCHvMYNoHqAWl8", "region": "2R5St1JUUoBHxMWn", "steamId": "M14FYcClCU4wN753"}' \
    'otU8VIKaNC4jAc6z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 461 'SyncSteamInventory' test.out

#- 462 SyncSteamAbnormalTransaction
$PYTHON -m $MODULE 'platform-sync-steam-abnormal-transaction' \
    'ZYFC0mjfQGtP1pKt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 462 'SyncSteamAbnormalTransaction' test.out

#- 463 SyncSteamIAPByTransaction
$PYTHON -m $MODULE 'platform-sync-steam-iap-by-transaction' \
    '{"orderId": "lm5hUGLvZiKzCHyQ"}' \
    'RSjODCVkXOSEqmrC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 463 'SyncSteamIAPByTransaction' test.out

#- 464 PublicQueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-public-query-user-third-party-subscription' \
    'PLAYSTATION' \
    'Js3MYpXMKKRnnXfC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 464 'PublicQueryUserThirdPartySubscription' test.out

#- 465 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    '{"gameId": "8iy9QcGEKMT2TWw1", "language": "kH_dcbT-970", "region": "mEY9AGikaZJ2fla7"}' \
    'ViPnPIspBwL7FLtM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 465 'SyncTwitchDropsEntitlement1' test.out

#- 466 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'U7AARIZojppBuCbl' \
    --body '{"currencyCode": "NaT5zrESuLoU4WFf", "price": 0.15926467154086899, "productId": "qhTf020WVESn3Lq3", "xstsToken": "vc3ONzvBgKDPEX7Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 466 'SyncXboxInventory' test.out

#- 467 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'irJaKrszETGuWESP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 467 'PublicQueryUserOrders' test.out

#- 468 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '{"currencyCode": "DCrsw8wGhpJWYgTB", "discountCodes": ["LzVbQmMiR5z2zAUS", "TeMo4h6vddaV7tlG", "MAqnV7TlTDpCts9e"], "discountedPrice": 25, "ext": {"GboRhmyUZ7K1izC3": {}, "LzjpbZYwmB6mjB4W": {}, "LkFEbz1aaXClnbKh": {}}, "itemId": "W1gHj8siRtfLBrOt", "language": "Odxv_QqGR", "price": 33, "quantity": 73, "region": "L5sOSWb72ObZi7fW", "returnUrl": "369P70k7NWSskBCz", "sectionId": "JpMLgGkyOUdt4mzj"}' \
    'hwLhUrgmZNHpDHS6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 468 'PublicCreateUserOrder' test.out

#- 469 PublicPreviewOrderPrice
$PYTHON -m $MODULE 'platform-public-preview-order-price' \
    '{"currencyCode": "7dthQsFwNMAKYBTB", "discountCodes": ["ZeZanP0VcMDpu1IF", "vz6lS0e11XX6rxlj", "ZkulsLmecCWLGmhI"], "discountedPrice": 78, "itemId": "4aKEWT3it8CuVPPq", "price": 53, "quantity": 40}' \
    'B1bxGCZTRsbLMecw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 469 'PublicPreviewOrderPrice' test.out

#- 470 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'QkE2St3jReFAEQ1w' \
    'UcmmNn9QvtiE6T5R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserOrder' test.out

#- 471 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'o5OB4S56HA4d8Wj6' \
    '2EGWzEbs46rc22tQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 471 'PublicCancelUserOrder' test.out

#- 472 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'Qij2Hme0GGfP6uyt' \
    'yYgZsusP2SPDjVIf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 472 'PublicGetUserOrderHistories' test.out

#- 473 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'ftSxnreb8TQnxnon' \
    '3dB05wGQYx86tv0Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 473 'PublicDownloadUserOrderReceipt' test.out

#- 474 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'ClmxWgu3QfhTr7id' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 474 'PublicGetPaymentAccounts' test.out

#- 475 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'EkKSnDGue6g9jqZC' \
    'card' \
    'F7dDQ83nAeUS40Jx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 475 'PublicDeletePaymentAccount' test.out

#- 476 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'sNUjSVGhlo6BJVxN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 476 'PublicListActiveSections' test.out

#- 477 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'K6m3dLvKKvOeLQJ1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 477 'PublicQueryUserSubscriptions' test.out

#- 478 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    '{"currencyCode": "DfSJm9R8uKJWvSyK", "itemId": "tpPL665Va0hLs3hB", "language": "QfYO-Ro", "region": "4BXCjFsJCGWDLfbE", "returnUrl": "BX1fDFq8rcYfG8Z9", "source": "PgWjy2W7npJxp6vr"}' \
    'bIUXHWViHiwgQxia' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 478 'PublicSubscribeSubscription' test.out

#- 479 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'DuZwYsAt9fGKNjmy' \
    'iX8BwW15hXKp1SF6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 479 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 480 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'rFNCe4IbY0HX1WWN' \
    'f2XD8kjryYdmc2Xy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserSubscription' test.out

#- 481 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'mIObjRrxucZTOtfI' \
    'lJrMOPwdUCtzH0oI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 481 'PublicChangeSubscriptionBillingAccount' test.out

#- 482 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '{"immediate": true, "reason": "IMo6jYsbXIs1j2kd"}' \
    'fY9jVoPTTfSopAH3' \
    'k7WRbBnExLSlEBkI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 482 'PublicCancelSubscription' test.out

#- 483 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'hkcYsdlko7aPaqrC' \
    'wlwxAYSodwJnbozM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 483 'PublicGetUserSubscriptionBillingHistories' test.out

#- 484 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'WXk0IafEeZiiyd7f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 484 'PublicListViews' test.out

#- 485 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'v9BMDJjJPbrYcp30' \
    '4cHsi4N013hrlkY0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 485 'PublicGetWallet' test.out

#- 486 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'fX6m0y4oC4cK1B2r' \
    'FxEperuU9eQbEZT9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 486 'PublicListUserWalletTransactions' test.out

#- 487 PublicGetMyDLCContent
$PYTHON -m $MODULE 'platform-public-get-my-dlc-content' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 487 'PublicGetMyDLCContent' test.out

#- 488 QueryFulfillments
$PYTHON -m $MODULE 'platform-query-fulfillments' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 488 'QueryFulfillments' test.out

#- 489 QueryItemsV2
$PYTHON -m $MODULE 'platform-query-items-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 489 'QueryItemsV2' test.out

#- 490 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 490 'ImportStore1' test.out

#- 491 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'HafpdFCVQ33tE9ZM' \
    --body '{"itemIds": ["Z7dDUb3xQHAKaroE", "L6WcEsfkqADxDJek", "vCkzUk7CFpTd1Fy4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 491 'ExportStore1' test.out

#- 492 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    '{"entitlementCollectionId": "galHYLWoM0gqpkta", "entitlementOrigin": "Oculus", "metadata": {"1mqL00vgrlsz3iDM": {}, "ttQb0e0hIOG3ck0l": {}, "8mOK0kpUyeNZKy2i": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "PY6G9sLHzVEFhnhT", "namespace": "9rEFK3sHMoD0LY4f"}, "item": {"itemId": "DRrTTMj0kVB2KgmS", "itemName": "qpxVMx6QY29ePH3F", "itemSku": "68SIKaFfiPoFVLQt", "itemType": "dZIqlnvafBWIGrui"}, "quantity": 16, "type": "ITEM"}, {"currency": {"currencyCode": "3QdmRaNDlR1T3oWQ", "namespace": "cENhwdIRZ2k23rtJ"}, "item": {"itemId": "U0TZTwgZLJPddQRq", "itemName": "4snlpfQTa0wBlJwb", "itemSku": "8gc7EIBJIKoubLJP", "itemType": "5UIfhGfCHQ5GTdjv"}, "quantity": 46, "type": "ITEM"}, {"currency": {"currencyCode": "8KQZ00gJM1CfnjdH", "namespace": "JX3yCxhko4vfBfr5"}, "item": {"itemId": "3TVizk09fyHgSbIm", "itemName": "HW11IEk63CpmSigP", "itemSku": "ZeDvc6TeWXi65UMA", "itemType": "SaXxaUHbPfHkAIPu"}, "quantity": 43, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "uzR0bwUmJhFK4uae"}' \
    'hrat7hpJzqcjS6dJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 492 'FulfillRewardsV2' test.out

#- 493 FulfillItems
eval_tap 0 493 'FulfillItems # SKIP deprecated' test.out

#- 494 RetryFulfillItems
eval_tap 0 494 'RetryFulfillItems # SKIP deprecated' test.out

#- 495 RevokeItems
eval_tap 0 495 'RevokeItems # SKIP deprecated' test.out

#- 496 V2PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-v2-public-fulfill-apple-iap-item' \
    'ecrL9CObVuorJ76t' \
    --body '{"transactionId": "W1Z81mWpRSn0leqH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 496 'V2PublicFulfillAppleIAPItem' test.out

#- 497 FulfillItemsV3
$PYTHON -m $MODULE 'platform-fulfill-items-v3' \
    '{"items": [{"duration": 40, "endDate": "1989-08-18T00:00:00Z", "entitlementCollectionId": "x8S9YCiABOEkZ1hv", "entitlementOrigin": "Playstation", "itemId": "kXlzMBM5P7kt5p0c", "itemSku": "LeBVGZZwNyRYVMbk", "language": "NRA97ynMftNBV40S", "metadata": {"wjryqo0RU6346MJE": {}, "2Z5gvfvhJoQ6KTnc": {}, "70J3JNzhUB7BaWaC": {}}, "orderNo": "v0yipDxA1dpehk0z", "origin": "Steam", "quantity": 94, "region": "ChLggpl5I3N3i0ll", "source": "REDEEM_CODE", "startDate": "1972-03-13T00:00:00Z", "storeId": "U5WZTOvW4MiVum8H"}, {"duration": 42, "endDate": "1994-06-11T00:00:00Z", "entitlementCollectionId": "598FVz88R6CZzwdL", "entitlementOrigin": "System", "itemId": "74cSSa7EU1y3J3Qu", "itemSku": "KCb4yqkKnarYmr2w", "language": "qi2JJzdauaQcAC3T", "metadata": {"QnKBUx6yHTllMN3Q": {}, "VCfIhWW0tEidcG2u": {}, "wnqkgfbPNlAR8QGt": {}}, "orderNo": "6XnnlPMZif0yzj91", "origin": "Nintendo", "quantity": 17, "region": "gcFk1baeHVAJRjpW", "source": "ORDER_REVOCATION", "startDate": "1994-02-06T00:00:00Z", "storeId": "0vpz0yafOqaviwjy"}, {"duration": 52, "endDate": "1995-06-02T00:00:00Z", "entitlementCollectionId": "y7JasypzINO8hMgC", "entitlementOrigin": "GooglePlay", "itemId": "jEEO1RcLcC8hsGfl", "itemSku": "7IuTJQEKrFlYRqsq", "language": "gjU2fbWodixRnSpY", "metadata": {"8HLcl4PC7Whq4MfY": {}, "lNV4JpSajrb3kPqQ": {}, "wgme45avoS9lAap4": {}}, "orderNo": "MA8Sr2sPgHtfv4c9", "origin": "Xbox", "quantity": 50, "region": "2GCMDAQtHC3JC2VN", "source": "GIFT", "startDate": "1983-09-26T00:00:00Z", "storeId": "qptF3qXZXFqaZPql"}]}' \
    'vbjyBz6AbtYb7GaK' \
    'j6QP6jhS3RZ15D9R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 497 'FulfillItemsV3' test.out

#- 498 RetryFulfillItemsV3
$PYTHON -m $MODULE 'platform-retry-fulfill-items-v3' \
    'U0J0HlMUaZV3Ekag' \
    'oWRp32s9DziqKI1Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 498 'RetryFulfillItemsV3' test.out

#- 499 RevokeItemsV3
$PYTHON -m $MODULE 'platform-revoke-items-v3' \
    'AQ7pb7a65HnETCgo' \
    'e1sa8B0Wy1wLXiwa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 499 'RevokeItemsV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
