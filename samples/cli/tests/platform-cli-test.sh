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
platform-create-item-type-config --body '{"clazz": "odwpzS6DaDpv8N7Z", "dryRun": true, "fulfillmentUrl": "qGj6oDLjWjkY1aXl", "itemType": "OPTIONBOX", "purchaseConditionUrl": "oMF78NY4YkHs1cnz"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'MEDIA' --login_with_auth "Bearer foo"
platform-get-item-type-config 'JSDgY1TXp38zsCTC' --login_with_auth "Bearer foo"
platform-update-item-type-config 'rbCbPOyNQkT7NvyE' --body '{"clazz": "3cwyALczNIicXm7a", "dryRun": false, "fulfillmentUrl": "BZqxYG3aREAu2D6Q", "purchaseConditionUrl": "VKNCWP75TB0i7pKx"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config 'R8dl0zRVW4EZG9m0' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "XcgGVbMqSszE8GHa", "discountConfig": {"categories": [{"categoryPath": "vj7AorKsxwkosAVe", "includeSubCategories": true}, {"categoryPath": "cdKi5r6QEa1ysLEz", "includeSubCategories": true}, {"categoryPath": "3rGN9A3sNm84hddS", "includeSubCategories": false}], "currencyCode": "AcBdW19m4eu6d5tA", "currencyNamespace": "5jUmiTqpyhPFdxLz", "discountAmount": 65, "discountPercentage": 89, "discountType": "AMOUNT", "items": [{"itemId": "N05MYzYiKWe5dNRl", "itemName": "jv7IPrDQQRgat0Se"}, {"itemId": "vkLGMS0lyuI9a2I9", "itemName": "u6Vpbsx5w8hqUI06"}, {"itemId": "UpOXGSLmCVuHOPlL", "itemName": "lkvR8sKgnuRkgghG"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 42, "itemId": "iljvjKoyD6SCwGrn", "itemName": "cqmLtjQHAf8TgoNm", "quantity": 67}, {"extraSubscriptionDays": 20, "itemId": "VLisV6zwPuo3td6T", "itemName": "C6I3lMjGSWN2laRl", "quantity": 48}, {"extraSubscriptionDays": 48, "itemId": "fcjHfYakUCTqGkE7", "itemName": "wcWfDslpJSqGAXQ0", "quantity": 50}], "maxRedeemCountPerCampaignPerUser": 80, "maxRedeemCountPerCode": 30, "maxRedeemCountPerCodePerUser": 7, "maxSaleCount": 81, "name": "jxcBZufQxGiHPllG", "redeemEnd": "1985-01-19T00:00:00Z", "redeemStart": "1999-06-14T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["zfTD1ZBm3MqHcUmL", "ZZbSqb8RwNmn9HrN", "Qy4uZAAiE0mit9RG"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'djsoqwGyzzWi9gwQ' --login_with_auth "Bearer foo"
platform-update-campaign 'Yv7t1o7TTr1DmrhZ' --body '{"description": "v15T7quIOvBMcaYm", "discountConfig": {"categories": [{"categoryPath": "vCkGZ5dAgqxpBFma", "includeSubCategories": true}, {"categoryPath": "oxozr6wfNPX2bOIt", "includeSubCategories": true}, {"categoryPath": "MvqtlB2jJCSQT279", "includeSubCategories": false}], "currencyCode": "YGu0rdlgdWyOtXi3", "currencyNamespace": "choQrpOsDBU5Sepj", "discountAmount": 59, "discountPercentage": 79, "discountType": "AMOUNT", "items": [{"itemId": "yKrQpM4hkkK6KKXN", "itemName": "B3Gv0IqmF51TkhjY"}, {"itemId": "naq6foWvXa3bMrXs", "itemName": "Dr6kILsSSyDdmykm"}, {"itemId": "oPYgc2L4jk4Lo0LS", "itemName": "P0pf4IxjUkl535X3"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 57, "itemId": "eEKDpADz1x3poD3Q", "itemName": "gb3boLQQ1MzH7Qm8", "quantity": 4}, {"extraSubscriptionDays": 56, "itemId": "wbmXgdAPh1EThG96", "itemName": "gAFKK2WDgCcxvONZ", "quantity": 25}, {"extraSubscriptionDays": 94, "itemId": "3EeERmDnyeFoF7VS", "itemName": "Z6pf3vneSD2Tb3g7", "quantity": 26}], "maxRedeemCountPerCampaignPerUser": 48, "maxRedeemCountPerCode": 92, "maxRedeemCountPerCodePerUser": 39, "maxSaleCount": 87, "name": "u7LQRENjEEztx1Ws", "redeemEnd": "1996-03-28T00:00:00Z", "redeemStart": "1993-03-05T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["qan0nSBJroav91GX", "lvPG6bFYReVHQipc", "Cx9Zw5D2L7vIYhGG"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'SyEW4ZJJ42d3PBdd' --login_with_auth "Bearer foo"
platform-get-catalog-config --login_with_auth "Bearer foo"
platform-update-catalog-config --body '{"enableInventoryCheck": true}' --login_with_auth "Bearer foo"
platform-get-loot-box-plugin-config --login_with_auth "Bearer foo"
platform-update-loot-box-plugin-config --body '{"appConfig": {"appName": "48l9lyNApflxqMrj"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "gbLdLsFzHkBMr1yr"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-loot-box-plugin-config --login_with_auth "Bearer foo"
platform-uplod-loot-box-plugin-config-cert --login_with_auth "Bearer foo"
platform-get-loot-box-grpc-info --login_with_auth "Bearer foo"
platform-get-section-plugin-config --login_with_auth "Bearer foo"
platform-update-section-plugin-config --body '{"appConfig": {"appName": "lNFSrUEirnjX9fDm"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "VkydwYWQG26yUZNm"}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
platform-delete-section-plugin-config --login_with_auth "Bearer foo"
platform-upload-section-plugin-config-cert --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category 'BcvrbYCwZtxFHyPL' --body '{"categoryPath": "tI8ilbyDPUIj88ce", "localizationDisplayNames": {"kdqCt81P1ktfIovm": "v9gsR5cJcHm3SZLx", "oRDFuuuySj29a9LJ": "E8HoRS1X2PFAAMwz", "HPxB1UskYs4Yw20D": "OqOBSC2DKHRuPMMW"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'H8Yb33T5UBJCjfcn' --login_with_auth "Bearer foo"
platform-update-category 'LRfxeCSz9WEi8Kll' 'oeH0JT1yduat2vQR' --body '{"localizationDisplayNames": {"3biBfsu4jmsRE2w1": "yEkLgh3tIYt4SqYU", "TLDx9gIiDandpGT2": "t24aOMh5eC3IHeHS", "KLCa3xreNDUWehwH": "3q31A806DJgas4b6"}}' --login_with_auth "Bearer foo"
platform-delete-category 'z3LNUj7fdgLA84Z8' 'YYk6QEgJjBbEDoNf' --login_with_auth "Bearer foo"
platform-get-child-categories '3n0hEoRCAcf80zfF' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'yabWAgIUXiI07A68' --login_with_auth "Bearer foo"
platform-query-codes 'eaqC2J9jyEW6GLbc' --login_with_auth "Bearer foo"
platform-create-codes '0NaKDUL3sa13lk1d' --body '{"codeValue": "QBHO86IlBhnetU4R", "quantity": 46}' --login_with_auth "Bearer foo"
platform-download 'DNxtXgeO3FgkXhjD' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'zaQY3snn2ZkP7cFd' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'P43e5dC9XIBudfZg' --login_with_auth "Bearer foo"
platform-query-redeem-history 'rbHDIDm4hMzF4Txo' --login_with_auth "Bearer foo"
platform-get-code 'denSrUTvfqU0bfoM' --login_with_auth "Bearer foo"
platform-disable-code 'm5cTtFWbotQyXJRc' --login_with_auth "Bearer foo"
platform-enable-code 'QWsmqPNs92epxk0i' --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "8VxsZNereSvf9699", "currencySymbol": "mCEHThUJkETAsSp7", "currencyType": "REAL", "decimals": 15, "localizationDescriptions": {"imdb4rbkXj0ZwsVC": "0gL97ZVJSPqJiwv1", "qlYB1RSKs6gQxC3G": "b7S0o4zGYY7KQI1A", "eFgPqaOkvo1aolB4": "lkKB4EYOkQ1jMD3c"}}' --login_with_auth "Bearer foo"
platform-update-currency 'ym8xIfkOVW2grREO' --body '{"localizationDescriptions": {"Lx0KOww3HICQLfl7": "MUBG7qtPu64yAtUR", "KLRkb738HGS6rDgM": "dIIlhS1fSiM9331m", "7Ta1PsKc50Kv6ecn": "EevcAx2K2zkRenmP"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'ZnGBt4P7WnbdSJtj' --login_with_auth "Bearer foo"
platform-get-currency-config 'X7ZshZyZl5x4bRXB' --login_with_auth "Bearer foo"
platform-get-currency-summary 'HUTrDzZSKscfOcYu' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "3dpCROYqUiGKXVFC", "rewards": [{"currency": {"currencyCode": "mpo6sPwVOEDSJsEK", "namespace": "5QpNhlI2iS5EpGhh"}, "item": {"itemId": "vXYck0upMzUYnb76", "itemName": "tFkEORV3bu1bNCtX", "itemSku": "7W40V6Do5sYadCCF", "itemType": "rHHC3DpZxkrQDXuN"}, "quantity": 64, "type": "ITEM"}, {"currency": {"currencyCode": "UcqsuGKHhMRWLVd3", "namespace": "DlhLuIpomM8sm1Mi"}, "item": {"itemId": "aI1mX2tJoARtdbBe", "itemName": "7udsMrok0WvGYYnx", "itemSku": "4V709xbnGezKsDwG", "itemType": "2omOR2nvYI9TVqJd"}, "quantity": 44, "type": "CURRENCY"}, {"currency": {"currencyCode": "zcWbfUpaXp5JMl5L", "namespace": "L4bTxBmZjdrrIxsB"}, "item": {"itemId": "0NRsB1fPqqRRulpq", "itemName": "pymDkQhtrHWwRVnw", "itemSku": "VBOqOHi8pWGd1juY", "itemType": "hiqjRJOqB5F93zFQ"}, "quantity": 2, "type": "CURRENCY"}]}, {"id": "YbCtmKy8M9zVrjfG", "rewards": [{"currency": {"currencyCode": "XZnqAQUoY1GjlIIk", "namespace": "0iKoTTS1j02o7JjT"}, "item": {"itemId": "XAQN0qdskdQV0TqI", "itemName": "8EFnmDbxIxi4YKlO", "itemSku": "Nk2Q5Y4Jvaizwiil", "itemType": "atuUjjt9lIMGql5E"}, "quantity": 23, "type": "ITEM"}, {"currency": {"currencyCode": "cghVHfPEspxwhRON", "namespace": "0bc1eMbEIjowLqc3"}, "item": {"itemId": "ecjXJbZDKKoxLE1Y", "itemName": "3Dymtj3giPg4x4yi", "itemSku": "PX6ues1Hhhkg1yLV", "itemType": "bLFzHEP8cM4NTwr0"}, "quantity": 76, "type": "ITEM"}, {"currency": {"currencyCode": "HaAsmTej52WKi6tA", "namespace": "rAURt9plCSVq8PdH"}, "item": {"itemId": "6hJPUAc0RVwXgAgn", "itemName": "tLMCuaXBWQi6BqPg", "itemSku": "4xr0lCancUZGCHsZ", "itemType": "YoLfR1KtOv7Zy0b6"}, "quantity": 77, "type": "ITEM"}]}, {"id": "xh4ijFnE3Tam69qS", "rewards": [{"currency": {"currencyCode": "Z7PC6f6QkmZXElW9", "namespace": "YfRSse6AAz3S4czz"}, "item": {"itemId": "0QKFlAVmVLu4AOec", "itemName": "0z8eBeeoip68J1ns", "itemSku": "v4W2OJhtafxMSJlH", "itemType": "eb34sZKHcl5LLLOe"}, "quantity": 48, "type": "ITEM"}, {"currency": {"currencyCode": "L4fZvWtND2tcBFpX", "namespace": "8lNtFEJ7tnkY6Mca"}, "item": {"itemId": "5afj12K2IzrBvvWm", "itemName": "4udE0OXudXgNne8k", "itemSku": "JATwlc6esUp6Sw1I", "itemType": "98jeZQ7hfxnhLd3K"}, "quantity": 28, "type": "CURRENCY"}, {"currency": {"currencyCode": "SWP3glU6muswVJnN", "namespace": "nN7kAa7j0riFc5HT"}, "item": {"itemId": "HQIoVsGo7dwV9DBq", "itemName": "FKHQkETJyTlUrwDT", "itemSku": "noujQD4IEiH9Z5qX", "itemType": "n3aoRtlqOECohViH"}, "quantity": 53, "type": "ITEM"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"uGRUvpZaHCuESOiI": "ZsMfB4ZH3mtgWgU4", "pCAKxeE70CaunQNx": "ot371W9G4AvQkqsG", "nmyo5JJTUVmb8GEX": "FTlEMEsFzYqwgK1N"}}, {"platform": "OCULUS", "platformDlcIdMap": {"cVTd4BxqGWV6mTJ0": "sQs6XNbjvqhnUVLW", "u8olKdxL6ozRmDD0": "jJvlfV5OemPYdYT7", "DROCjtuzFMbAG9YI": "89hmguB8FOTjMLo4"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"omSJC4DdrKF7SUQP": "LG59e0k5ZtX6wK7P", "pUlcIW32iK7MGt1i": "xY5rA1WoVeJIePF8", "ZrQzP4zvtdxdbZUp": "d6FJtHJ1pyVwyKQL"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-query-entitlements-1 --login_with_auth "Bearer foo"
platform-enable-entitlement-origin-feature --login_with_auth "Bearer foo"
platform-get-entitlement-config-info --login_with_auth "Bearer foo"
platform-grant-entitlements --body '{"entitlementGrantList": [{"collectionId": "Y6FEO65Rb3z7CYLM", "endDate": "1975-10-10T00:00:00Z", "grantedCode": "7s7QBlk44Z44B1GZ", "itemId": "gKg4uKxaCgcGLuC3", "itemNamespace": "brWdTYCfHkIySok5", "language": "EJf_HSqh-426", "origin": "Twitch", "quantity": 30, "region": "Od6X3viLvtEk4mTI", "source": "OTHER", "startDate": "1993-06-30T00:00:00Z", "storeId": "A9gxo8SV38nEhoXm"}, {"collectionId": "M2W7l6jHMA2rG3na", "endDate": "1976-10-20T00:00:00Z", "grantedCode": "opAywelu01nryEJ0", "itemId": "NqoTow0qiOiC4j0i", "itemNamespace": "ktm0ZPLkLOsp0LZ5", "language": "ZK", "origin": "System", "quantity": 13, "region": "l8kUXzt6bSc6bWvg", "source": "PROMOTION", "startDate": "1991-11-04T00:00:00Z", "storeId": "yW9dD1kOmvrAejcq"}, {"collectionId": "2LgkQuaS7RBx3vim", "endDate": "1998-06-03T00:00:00Z", "grantedCode": "jBOxrZDyvpcLYOWA", "itemId": "8NjxOnaEok4nOOCz", "itemNamespace": "fsflhjbngJOUn18G", "language": "nULY-CA", "origin": "System", "quantity": 11, "region": "40NlncceIZSwgAIk", "source": "GIFT", "startDate": "1986-07-23T00:00:00Z", "storeId": "Y8VnocGAjci0V3tB"}], "userIds": ["f2jnHGKXphn50c9t", "NLDljhZ2jxLRX3z4", "6OCaGBeMfPlNos4y"]}' --login_with_auth "Bearer foo"
platform-revoke-entitlements --body '["BRjrERHEonAZR8Gm", "Eu0q1p6QCyY6vSkV", "FWdsbYuVEGVxYheR"]' --login_with_auth "Bearer foo"
platform-get-entitlement '3j5mNZ6vwv7K8Asv' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-query-iap-clawback-history --login_with_auth "Bearer foo"
platform-mock-play-station-stream-event --body '{"body": {"account": "t1j1Rx59hesNWy2N", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 43, "clientTransactionId": "UckSC6ePeN8i4GrF"}, {"amountConsumed": 62, "clientTransactionId": "uYQJ03BAHZ7c53q7"}, {"amountConsumed": 0, "clientTransactionId": "9GXhKcjmSEwdrkEn"}], "entitlementId": "nqKzFsLfYalUlfwE", "usageCount": 87}, {"clientTransaction": [{"amountConsumed": 87, "clientTransactionId": "KjU7eHGebSVu0LQ4"}, {"amountConsumed": 77, "clientTransactionId": "kepEaC4dfiOMZfEh"}, {"amountConsumed": 69, "clientTransactionId": "PYhrLTyU8OhgfY9J"}], "entitlementId": "QYGF4bYXEcENx9xZ", "usageCount": 24}, {"clientTransaction": [{"amountConsumed": 97, "clientTransactionId": "Achob44lONDDwMvg"}, {"amountConsumed": 71, "clientTransactionId": "IGaffoflEIByYqeK"}, {"amountConsumed": 81, "clientTransactionId": "G2mXEQdbzIVy8aln"}], "entitlementId": "cV7vWgSHdfo07Uct", "usageCount": 85}], "purpose": "Su4PWam1jxR7SETW"}, "originalTitleName": "jteoc8fgvZDDhoO0", "paymentProductSKU": "5oKqymxLD1Lcvw6T", "purchaseDate": "6mZEiwxxElpMYSWI", "sourceOrderItemId": "eVzm7z9noowmlTIK", "titleName": "Vowi0RY2VN4ZONJR"}, "eventDomain": "EdUQ3z9F1BxNNgnk", "eventSource": "e4akncw7wu9TmXfJ", "eventType": "WBPrx9Ns8eLzYEvw", "eventVersion": 91, "id": "1tdA3QhjCMW64f4X", "timestamp": "hIjSoTB2NMKtezap"}' --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "Pr2QEPx3zTxBGtEJ", "password": "IYppuUSsKoHw2hyd"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "12uSE7BEv3aevq6i"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "ohU1cg4W1IS3Uv1B", "serviceAccountId": "pWoJBaqdg2FHcuns"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "S1lnaO2m9vqjhbeK", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"xiKdV57GvRyd9UuL": "02Le8HSCslsDd4M1", "F5qRIblS7Nz81GRa": "zPAANjfBoldFOyqA", "2clJ5gEOaCgM6Yn6": "RugbNEIpGBFUjOn5"}}, {"itemIdentity": "mM7k8nbLzvtCIW5y", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"vdhWVnuYLgpZehK0": "G2nmyuViB9kRTcSQ", "dTnNYGeAfYFG3wSk": "HKufBdS3ZOokZB4c", "XnAXyuGz6LlxHv8S": "wyagYvDJ3w3UNgIG"}}, {"itemIdentity": "j2jZtEYT8sIPSE1X", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"PzySa0sZoFS6xCOW": "Mpyh9pMsQgb64ELb", "zDMwyo4nIRysQdbu": "fXjYnSoIFeouC2m3", "8kXrDZWlGVE9sJ4N": "pUtKp6M9I6nEwnZh"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-oculus-iap-config --login_with_auth "Bearer foo"
platform-update-oculus-iap-config --body '{"appId": "sjwJeGwaPSDMZz95", "appSecret": "OYKiqaZD63xe5rru"}' --login_with_auth "Bearer foo"
platform-delete-oculus-iap-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"backOfficeServerClientId": "JVfLGea0ZtlzUcuH", "backOfficeServerClientSecret": "AXz0UV31MfuGaXsA", "enableStreamJob": true, "environment": "BLE35YhyiDV90SeI", "streamName": "5yppBHoytVznCgNy", "streamPartnerName": "x9fbT63ShEh8PbGi"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-existed-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-playstation-iap-config --body '{"backOfficeServerClientId": "kLjgjcj34uulU6FY", "backOfficeServerClientSecret": "BZsWFbr3RSP0W9nB", "enableStreamJob": false, "environment": "q2mK8lbSEEelxnb5", "streamName": "QxWG2HFnZlA6HKWW", "streamPartnerName": "4fI1IQcoBQELcNlZ"}' --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "kqTZrKgXNwvm4e5G", "publisherAuthenticationKey": "X6H742OixhtAoKiV"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "m6URT95XhnUcvWB2", "clientSecret": "8MpusuhhDJ5slzgi", "organizationId": "WZEtyd56LfxnbY97"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "jjYgXchCbkXX26uE"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'dCfQaMAQuTKfC0I2' 'kNjCMDtDMrentgn3' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'DhqciwIeShF9RKb9' 'vvxuJlhXbWhbwPwT' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'oC6knjVwVnzaqSfJ' --body '{"categoryPath": "iQFC2gXoda0kg16y", "targetItemId": "USpSOAjHJWwfCjYw", "targetNamespace": "WkLob9gKLqs2nEZh"}' --login_with_auth "Bearer foo"
platform-create-item 'pByfHZinxNfgPAwk' --body '{"appId": "MBsznlBUqnLT4AbG", "appType": "DLC", "baseAppId": "Az0vJjFIYWOaNdsi", "boothName": "mmkW2miH3xRHAKy4", "categoryPath": "QxZkaXZ7vmiEd0JP", "clazz": "xVyQpshaDwNqTbbF", "displayOrder": 80, "entitlementType": "CONSUMABLE", "ext": {"AMfVXe0GZeMgsRsm": {}, "H1EQrYmkPKTPOlhT": {}, "tSiZNCxuogFteTHJ": {}}, "features": ["D7ufFVTOhvQpfbBk", "e8aEdd36xj6wySol", "e4BhSSQkQD6WmOt6"], "flexible": true, "images": [{"as": "DDCvs78mcMdiS76Y", "caption": "ApGJ9ufwLYkqIgLu", "height": 92, "imageUrl": "WgumrIz4NhGztZpr", "smallImageUrl": "4U4fwQIiLXgmRasv", "width": 18}, {"as": "aOBdPF0JmX8qwU1c", "caption": "TuHHPB5S3DvPRCzB", "height": 36, "imageUrl": "D2NY0kABeGs9yxah", "smallImageUrl": "ld1pO0Gyf5PO3COy", "width": 79}, {"as": "QxDQpKqxLGeMvr9T", "caption": "svcMQ7dBsaIecRxI", "height": 38, "imageUrl": "n3SHiWxF0YbuU5ar", "smallImageUrl": "5qTLWUCy0Afgc050", "width": 100}], "inventoryConfig": {"customAttributes": {"IZRW491e94mQjVOO": {}, "BnIWhunElqZUodp3": {}, "IhtCSHy1ei1fIrPv": {}}, "serverCustomAttributes": {"fHnRN06EjRwEQlNa": {}, "pJRfk4f9Zcw1pEHA": {}, "yNFxcVTKuAQTGh5B": {}}, "slotUsed": 49}, "itemIds": ["9IPmmsLmu3kaPj0O", "4zd8Tb7cUNGPTBxi", "FFCrn7djjs69FTFV"], "itemQty": {"GUVhvKhJCmeisql1": 62, "mUHVbMPimNhcZsU3": 97, "J2h23GUS2amU7syG": 24}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"ZI2KwjqPBiWXade4": {"description": "1s3rH34mB2yPlRpW", "localExt": {"jmHZAAvKTH8MuqIg": {}, "0CzkguwuJCW7EEFB": {}, "67AODbi9BzupBsFp": {}}, "longDescription": "Yc77GtRUcCFeY5g4", "title": "XgBsbfzqxBPNe8ae"}, "1Il4aAtEbu4IjGdq": {"description": "thRxTjQ7gkZEY8rG", "localExt": {"0q0Q2Qd2JzRbkF2I": {}, "03dIjvBbA6bfbYaJ": {}, "CJjfk2TUvn95FhO7": {}}, "longDescription": "VW3mbDVMDu87t0ld", "title": "Wf7iSGIiKFtWtn4Y"}, "r2svKM6pqLGZ0TBu": {"description": "jELAUK6mQ5iZgbww", "localExt": {"m5iGzXtcknrgidKu": {}, "pvXO6aj4hCmTC34j": {}, "xW4pIDwdqXpmRmut": {}}, "longDescription": "9H9XyWI8bp8fQxRu", "title": "X91uYmtrHJbEGTUj"}}, "lootBoxConfig": {"rewardCount": 57, "rewards": [{"lootBoxItems": [{"count": 97, "duration": 18, "endDate": "1975-09-06T00:00:00Z", "itemId": "ziXV8HwSmvcvcDKF", "itemSku": "19yVRafCjOuSYht8", "itemType": "3AdvBaagTiRJ8daG"}, {"count": 93, "duration": 17, "endDate": "1995-08-07T00:00:00Z", "itemId": "uFpZum7izxe7NPzj", "itemSku": "Oa8E7wY76PxLv9HB", "itemType": "EUe89AwEw1HO4FnK"}, {"count": 40, "duration": 98, "endDate": "1982-09-24T00:00:00Z", "itemId": "XLKAmlDr19uJ3nq6", "itemSku": "VerzVCcI8y3Cz0Yq", "itemType": "CKUh5RD9vNAp4jin"}], "name": "FpnQ5xF9wwbvMZye", "odds": 0.4766935174914173, "type": "PROBABILITY_GROUP", "weight": 53}, {"lootBoxItems": [{"count": 89, "duration": 28, "endDate": "1988-02-12T00:00:00Z", "itemId": "ovFi4tPAGfleyCA6", "itemSku": "jEtcqsnzoVILjkwW", "itemType": "61duF87aUyrdt4XS"}, {"count": 32, "duration": 100, "endDate": "1972-08-16T00:00:00Z", "itemId": "j4KyOVgvnWbfRJts", "itemSku": "B7cUQZ2QUAxJrINP", "itemType": "XppPNO3AfmXcgwC3"}, {"count": 71, "duration": 82, "endDate": "1972-01-10T00:00:00Z", "itemId": "tvKgLB9QmJIOq9dP", "itemSku": "5szG71utjsQ4CrRb", "itemType": "9gUCeVz7fWbZIdhe"}], "name": "vfZvyV7AcodcZwKj", "odds": 0.8108994635469852, "type": "REWARD", "weight": 74}, {"lootBoxItems": [{"count": 6, "duration": 75, "endDate": "1977-10-18T00:00:00Z", "itemId": "rFtHIi1CMgKAOG5i", "itemSku": "DcCR5PbCvDLil8wj", "itemType": "9cKM3Ar6MF35hCER"}, {"count": 61, "duration": 27, "endDate": "1989-09-22T00:00:00Z", "itemId": "xEN7JlZc8LMq1o2j", "itemSku": "ZWu4yA3r0u4q1bTH", "itemType": "XIjfJKyFlM0u1uuo"}, {"count": 97, "duration": 40, "endDate": "1973-08-24T00:00:00Z", "itemId": "n9yVoSlKNchPHNL4", "itemSku": "X3LLaGPGdqLE8Soh", "itemType": "hhuiTnJarYYkHBDd"}], "name": "SzBXdxapwhd5IQYB", "odds": 0.6811380869869565, "type": "REWARD", "weight": 38}], "rollFunction": "DEFAULT"}, "maxCount": 42, "maxCountPerUser": 77, "name": "fmfxKYB4LM6H6QXm", "optionBoxConfig": {"boxItems": [{"count": 32, "duration": 14, "endDate": "1997-07-06T00:00:00Z", "itemId": "9X3fUSR1l9xLPBsm", "itemSku": "AUrD9L1IiD6MlcEP", "itemType": "hMDFzjHZ3sIhzOx2"}, {"count": 59, "duration": 53, "endDate": "1989-02-19T00:00:00Z", "itemId": "lvIomU3pIxM9n8D2", "itemSku": "eLMe3lt9qfx2UDcg", "itemType": "VE7L9FK6e0MrPc4v"}, {"count": 40, "duration": 44, "endDate": "1983-11-18T00:00:00Z", "itemId": "k9hVKlG56HlzGr7X", "itemSku": "jdyRJunZPkp6ccIB", "itemType": "nWyPw8mj7gyQ7XdI"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 25, "fixedTrialCycles": 67, "graceDays": 17}, "regionData": {"Rj46COPipH1MWVTH": [{"currencyCode": "G0qHJCWEfOJpZm9y", "currencyNamespace": "EYWNGMy2pgSGSUOK", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1979-07-09T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1997-10-16T00:00:00Z", "expireAt": "1986-06-11T00:00:00Z", "price": 61, "purchaseAt": "1996-07-11T00:00:00Z", "trialPrice": 12}, {"currencyCode": "GiBnNbn0zaf7CaOS", "currencyNamespace": "lHXrUSA6sMJzA5mt", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1988-11-23T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1987-12-18T00:00:00Z", "expireAt": "1985-08-14T00:00:00Z", "price": 93, "purchaseAt": "1982-04-24T00:00:00Z", "trialPrice": 2}, {"currencyCode": "zDX8v3xgC1Ge9Pdb", "currencyNamespace": "TTAJ2Gp1r0sVZ6LJ", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1987-01-29T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1984-10-06T00:00:00Z", "expireAt": "1992-11-01T00:00:00Z", "price": 33, "purchaseAt": "1999-03-29T00:00:00Z", "trialPrice": 6}], "hPjNDKv2LWfXqjr8": [{"currencyCode": "fS79En3wYowBdkaZ", "currencyNamespace": "3y6i38XQjLDRqkpi", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1985-03-05T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1980-03-08T00:00:00Z", "expireAt": "1994-12-09T00:00:00Z", "price": 90, "purchaseAt": "1998-09-03T00:00:00Z", "trialPrice": 90}, {"currencyCode": "2Uo9UBJWodpdwsX1", "currencyNamespace": "jorcyR0x3YiHF8IT", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1977-12-17T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1984-09-17T00:00:00Z", "expireAt": "1985-11-11T00:00:00Z", "price": 13, "purchaseAt": "1973-10-11T00:00:00Z", "trialPrice": 3}, {"currencyCode": "s1Q2lzxl0yF5m77T", "currencyNamespace": "Th4gUoj8u2WRcLiE", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1984-01-14T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1990-03-29T00:00:00Z", "expireAt": "1977-04-24T00:00:00Z", "price": 36, "purchaseAt": "1976-11-24T00:00:00Z", "trialPrice": 11}], "XnGanMazb8jvRWen": [{"currencyCode": "URH48aJuALEcSqcE", "currencyNamespace": "15u6D31DjOsrs3CU", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1985-09-05T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1980-05-12T00:00:00Z", "expireAt": "1998-04-19T00:00:00Z", "price": 74, "purchaseAt": "1992-01-19T00:00:00Z", "trialPrice": 68}, {"currencyCode": "geqzGbruNB72HHMk", "currencyNamespace": "jzyBB4UFKiaoV0VO", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1977-07-19T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1983-11-19T00:00:00Z", "expireAt": "1979-05-28T00:00:00Z", "price": 86, "purchaseAt": "1978-05-30T00:00:00Z", "trialPrice": 79}, {"currencyCode": "nFe9FmN86sK5LOq4", "currencyNamespace": "ft5jGcMICPUYnfG6", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1976-11-15T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1994-06-14T00:00:00Z", "expireAt": "1984-03-16T00:00:00Z", "price": 11, "purchaseAt": "1993-08-31T00:00:00Z", "trialPrice": 9}]}, "saleConfig": {"currencyCode": "qLMR919IZPKOKiAV", "price": 88}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "q2OspCZbt3Uta5I0", "stackable": true, "status": "ACTIVE", "tags": ["GcL1koyHjCH5olYL", "MS93yOxNInDByhno", "ETRpABAmO2EGvJ4U"], "targetCurrencyCode": "luO6ti0QP2ssiJ66", "targetNamespace": "OzOj84O6tgohjtC7", "thumbnailUrl": "bzjPpucddXJ5zifF", "useCount": 32}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'y959anrNSleywHbH' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-items 'ig6IKWVZ77KeRWdE' --login_with_auth "Bearer foo"
platform-get-item-by-sku 'CaFGzfZ2hxcJ2Fne' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'mn7M23SzUo4hNBDh' --login_with_auth "Bearer foo"
platform-get-estimated-price '9ZFP1OW0nXOErQPS' '4VsRoYIK69yg9ADC' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'GiXaLs2xjHkinOD9' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items '75nARHCmhNHSXuqI' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'HsxvaUoXDmwWsukx' --body '{"itemIds": ["ncuD3QxCXMd00YBW", "CaVVmM45mfIZsWhk", "S476dGGJwJ00UH19"]}' --login_with_auth "Bearer foo"
platform-bulk-update-region-data '7MJ6zU7JLMQyMWzY' --body '{"changes": [{"itemIdentities": ["QCAaPJgoxGJoJaSz", "UtY4ZD0Xtb0U4pH1", "6NUsVY21NVIs7NRe"], "itemIdentityType": "ITEM_ID", "regionData": {"S0IeHpWCugmfOL0Q": [{"currencyCode": "QpxsuD8PGqku59eF", "currencyNamespace": "JrOXyDYz9vMUOPG0", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1988-03-27T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1972-02-23T00:00:00Z", "discountedPrice": 87, "expireAt": "1977-01-08T00:00:00Z", "price": 3, "purchaseAt": "1987-02-18T00:00:00Z", "trialPrice": 69}, {"currencyCode": "FyOjApNHBVfNOURc", "currencyNamespace": "jY3YYT9oTynmfIuB", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1977-06-18T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1990-09-11T00:00:00Z", "discountedPrice": 6, "expireAt": "1973-06-30T00:00:00Z", "price": 79, "purchaseAt": "1980-05-30T00:00:00Z", "trialPrice": 79}, {"currencyCode": "TKXMjiw6gYPvfn2Q", "currencyNamespace": "t9iyq3Nyk8ncu2Z3", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1985-04-30T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1990-09-28T00:00:00Z", "discountedPrice": 60, "expireAt": "1981-06-21T00:00:00Z", "price": 1, "purchaseAt": "1977-02-16T00:00:00Z", "trialPrice": 82}], "qrgSfnx2h61X9dN1": [{"currencyCode": "MGRXBJ6mVV7JS9qj", "currencyNamespace": "NLwvI8JdiY3RRiLi", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1977-01-28T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1975-09-29T00:00:00Z", "discountedPrice": 27, "expireAt": "1987-05-06T00:00:00Z", "price": 18, "purchaseAt": "1972-11-08T00:00:00Z", "trialPrice": 76}, {"currencyCode": "DRfGt9GlyZVQ4X67", "currencyNamespace": "tPZSTpPq3xjrElvv", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1974-10-02T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1973-01-08T00:00:00Z", "discountedPrice": 55, "expireAt": "1974-11-21T00:00:00Z", "price": 94, "purchaseAt": "1976-10-22T00:00:00Z", "trialPrice": 91}, {"currencyCode": "9Yk997XkGOdC6Itx", "currencyNamespace": "DT8p4n4XCFkD1AJL", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1994-05-27T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1984-11-05T00:00:00Z", "discountedPrice": 4, "expireAt": "1981-12-08T00:00:00Z", "price": 49, "purchaseAt": "1971-06-22T00:00:00Z", "trialPrice": 21}], "HSgDOK8bjoF7bL26": [{"currencyCode": "35KbtZTGJpqgl2Iz", "currencyNamespace": "NXGTuQPIDpor7t1a", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1974-11-26T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1994-07-21T00:00:00Z", "discountedPrice": 92, "expireAt": "1993-04-26T00:00:00Z", "price": 72, "purchaseAt": "1999-03-11T00:00:00Z", "trialPrice": 58}, {"currencyCode": "fMANPpmZDdMiCxmu", "currencyNamespace": "CCVuFjS1GC1d2b92", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1984-06-22T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1986-02-20T00:00:00Z", "discountedPrice": 56, "expireAt": "1975-07-10T00:00:00Z", "price": 69, "purchaseAt": "1971-11-29T00:00:00Z", "trialPrice": 93}, {"currencyCode": "mhcWm428XejRF94N", "currencyNamespace": "IY9nMrBZo0lNUBDS", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1988-02-05T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1979-03-05T00:00:00Z", "discountedPrice": 46, "expireAt": "1981-06-21T00:00:00Z", "price": 16, "purchaseAt": "1990-03-16T00:00:00Z", "trialPrice": 27}]}}, {"itemIdentities": ["8FPwTiXfLcxDC9Yn", "d02mECIQhfIhHtAD", "UQ9zimQTQT95pFJU"], "itemIdentityType": "ITEM_SKU", "regionData": {"utDM6BqguqD5xxGx": [{"currencyCode": "BWtnTKUe2znsqPzP", "currencyNamespace": "kwCBo2SwCUsTag4M", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1997-04-27T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1985-06-22T00:00:00Z", "discountedPrice": 86, "expireAt": "1975-02-02T00:00:00Z", "price": 48, "purchaseAt": "1991-12-31T00:00:00Z", "trialPrice": 0}, {"currencyCode": "Nfmn8Onb1a9gMz0F", "currencyNamespace": "2UBRmMhAbUWmFhdY", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1984-09-19T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1988-06-14T00:00:00Z", "discountedPrice": 60, "expireAt": "1981-03-01T00:00:00Z", "price": 81, "purchaseAt": "1984-08-18T00:00:00Z", "trialPrice": 20}, {"currencyCode": "66szbCCf73IFbRkP", "currencyNamespace": "SSITz4TjCrJHXGXk", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1999-11-22T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1994-12-29T00:00:00Z", "discountedPrice": 41, "expireAt": "1972-12-02T00:00:00Z", "price": 57, "purchaseAt": "1984-01-23T00:00:00Z", "trialPrice": 16}], "JfIfXshuLUk5Wdpx": [{"currencyCode": "jZx5noXPhPUTKbon", "currencyNamespace": "oucNmzwOZOK56sDk", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1975-09-29T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1973-07-30T00:00:00Z", "discountedPrice": 16, "expireAt": "1989-11-11T00:00:00Z", "price": 72, "purchaseAt": "1976-02-02T00:00:00Z", "trialPrice": 83}, {"currencyCode": "lt7rjF5RaJwvkWVc", "currencyNamespace": "o2LTo5ijlvDF8qBW", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1989-01-28T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1990-07-23T00:00:00Z", "discountedPrice": 86, "expireAt": "1997-07-15T00:00:00Z", "price": 62, "purchaseAt": "1994-04-11T00:00:00Z", "trialPrice": 53}, {"currencyCode": "UXGM5anIloyj9lhb", "currencyNamespace": "vuQdW2jwKUckc794", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1991-10-29T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1998-04-03T00:00:00Z", "discountedPrice": 60, "expireAt": "1975-09-04T00:00:00Z", "price": 83, "purchaseAt": "1999-02-15T00:00:00Z", "trialPrice": 79}], "2sVBiCoeC5weXJl7": [{"currencyCode": "PeiMH8z8dVej8N2y", "currencyNamespace": "v6VTnOK7xAvM7tuL", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1976-05-03T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1992-12-17T00:00:00Z", "discountedPrice": 44, "expireAt": "1978-07-14T00:00:00Z", "price": 97, "purchaseAt": "1983-12-29T00:00:00Z", "trialPrice": 98}, {"currencyCode": "4RctmTozCi8HeV6j", "currencyNamespace": "balHmqBBfi7sSF5B", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1987-02-03T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1994-01-25T00:00:00Z", "discountedPrice": 57, "expireAt": "1971-02-22T00:00:00Z", "price": 37, "purchaseAt": "1981-08-10T00:00:00Z", "trialPrice": 37}, {"currencyCode": "F6Gsvvdl8jHz9x7X", "currencyNamespace": "ZIjU4IK9lOLaZaMp", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1989-08-19T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1979-07-22T00:00:00Z", "discountedPrice": 34, "expireAt": "1994-03-16T00:00:00Z", "price": 63, "purchaseAt": "1972-10-29T00:00:00Z", "trialPrice": 16}]}}, {"itemIdentities": ["NKgYazujsmSmylT1", "YtxIq73aMb48jISd", "97KORRhxSWLWLNfH"], "itemIdentityType": "ITEM_SKU", "regionData": {"cPAGv6c1ESC6hZYT": [{"currencyCode": "YZbzf5aANNNs5kgS", "currencyNamespace": "ZZNUHbIT9szApmWJ", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1978-07-25T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1975-07-29T00:00:00Z", "discountedPrice": 0, "expireAt": "1987-10-30T00:00:00Z", "price": 9, "purchaseAt": "1998-11-23T00:00:00Z", "trialPrice": 59}, {"currencyCode": "RVfriSpPFnZBJZkD", "currencyNamespace": "nEiyfa2LrnpZxNnL", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1971-05-19T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1993-04-22T00:00:00Z", "discountedPrice": 41, "expireAt": "1987-01-02T00:00:00Z", "price": 77, "purchaseAt": "1992-01-07T00:00:00Z", "trialPrice": 84}, {"currencyCode": "AziBOHEAj1cT3u6Z", "currencyNamespace": "c2FbrTFznTgDIwZI", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1997-02-10T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1986-06-03T00:00:00Z", "discountedPrice": 83, "expireAt": "1971-07-26T00:00:00Z", "price": 38, "purchaseAt": "1999-03-24T00:00:00Z", "trialPrice": 20}], "RjOU1SMfQVQa6blj": [{"currencyCode": "9Rdd85bdYUumPKVS", "currencyNamespace": "ZCg3XTc9vQe0dHJf", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1993-10-04T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1981-11-03T00:00:00Z", "discountedPrice": 43, "expireAt": "1977-01-24T00:00:00Z", "price": 89, "purchaseAt": "1974-08-23T00:00:00Z", "trialPrice": 2}, {"currencyCode": "a9JktyBdxkZKrEWF", "currencyNamespace": "w9GYxjiiOQAD77ci", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1973-05-04T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1993-07-09T00:00:00Z", "discountedPrice": 89, "expireAt": "1980-11-11T00:00:00Z", "price": 59, "purchaseAt": "1992-02-23T00:00:00Z", "trialPrice": 17}, {"currencyCode": "SclSkb5aBi9K9zyv", "currencyNamespace": "6gFZXI5nXJ7hLi6H", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1973-01-03T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1999-01-29T00:00:00Z", "discountedPrice": 88, "expireAt": "1975-04-13T00:00:00Z", "price": 40, "purchaseAt": "1983-12-14T00:00:00Z", "trialPrice": 29}], "xpCYME6x21pdX2QS": [{"currencyCode": "PAd9sxoLnWGP1Paf", "currencyNamespace": "IjLX8ce0KbNN7Ycl", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1990-02-09T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1977-08-20T00:00:00Z", "discountedPrice": 87, "expireAt": "1998-04-30T00:00:00Z", "price": 26, "purchaseAt": "1976-12-22T00:00:00Z", "trialPrice": 45}, {"currencyCode": "vSoaGk4ktF5wnJDg", "currencyNamespace": "9Q3WXiydCOInVols", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1985-09-30T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1975-03-20T00:00:00Z", "discountedPrice": 1, "expireAt": "1988-02-10T00:00:00Z", "price": 37, "purchaseAt": "1981-08-27T00:00:00Z", "trialPrice": 78}, {"currencyCode": "1cfswmeFpvtDteto", "currencyNamespace": "QVFL8LNW11vtpaTx", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1981-03-23T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1986-03-10T00:00:00Z", "discountedPrice": 18, "expireAt": "1986-12-21T00:00:00Z", "price": 4, "purchaseAt": "1985-03-29T00:00:00Z", "trialPrice": 27}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'Vs3qFTi1t530Wj1W' 'fzIvc3VlSXrA3XUG' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'ud4tVjmxEf4XvVhF' --login_with_auth "Bearer foo"
platform-update-item 'JTxFHITBg9x4unq3' 'eOMHIKeTyBG5dCUo' --body '{"appId": "ExnKfV3869IN4V1O", "appType": "DEMO", "baseAppId": "MGBA6JXDpA1tIC45", "boothName": "C0oaGouFu4hXONgU", "categoryPath": "wJnUpryDeRcpUvlr", "clazz": "w2MwC1uuokpaIjL0", "displayOrder": 98, "entitlementType": "DURABLE", "ext": {"xe5n9Lx3QcFo9gxO": {}, "gvDc7xMrRKvw8ISP": {}, "2WKmCRRXBxlalCHt": {}}, "features": ["gOKLTDmHe8c1eJ9s", "WlKxLpS8fLWoQ5nu", "JhatQPxR7dvBVC5z"], "flexible": false, "images": [{"as": "Er0KBXuJBqK4QtEy", "caption": "dPWLPBYiR3UbJc1Z", "height": 81, "imageUrl": "apx7C477etqgfOJD", "smallImageUrl": "UT0uKAPrARya2IMl", "width": 81}, {"as": "3bNLWHAbCZixe2cQ", "caption": "6O30lpzcBQMAEcNc", "height": 72, "imageUrl": "oVzl2kBuLFXIeCEK", "smallImageUrl": "ZUTz3GvCAZ5j24ac", "width": 46}, {"as": "HbrryHB6GO9zP3Fa", "caption": "epA3b3YJ9nJM6vtT", "height": 80, "imageUrl": "7xv85K5MU2qmbeqa", "smallImageUrl": "VemINdClpF7OvlBI", "width": 63}], "inventoryConfig": {"customAttributes": {"jJepUnEEgja2mIE2": {}, "kLTnJwc5XmkCuL5W": {}, "4tKt6G3j9LYdG7xV": {}}, "serverCustomAttributes": {"PqBqe9RDQMBSYAFL": {}, "qp8PF5hCcoukWpnb": {}, "z4ys7j6lxuU3u2HE": {}}, "slotUsed": 67}, "itemIds": ["arjaLOKnX51yAB8P", "a3uNGKhaLlJzJMSn", "JIIgsAVmaGYxUX1B"], "itemQty": {"9oVuzG2CnYX2YBF2": 14, "3ggFDh2kaZP7pnnV": 12, "BthbepUCTWiZ1uqh": 88}, "itemType": "OPTIONBOX", "listable": true, "localizations": {"Ai4FEIu44u83ZLRx": {"description": "YlYqlpq03BGdIk4o", "localExt": {"EogFVGR71rJOBy6l": {}, "sj1AKGBjnHmaAu4Y": {}, "K87DYAWWcbcbGWmK": {}}, "longDescription": "gE8CZ4AELr5lraa5", "title": "v5P5Cj8hgFsqHC9h"}, "5JPiMEtgKuiGTYgw": {"description": "Wv5XldL6rOVGcRAn", "localExt": {"51rVAQSxp4qTB54m": {}, "KA3V9DKlCeZ7mLYs": {}, "HooOIaxIpb1cIOJP": {}}, "longDescription": "S3lJ80YJ41U4ooQ9", "title": "80ywmg1pWpWit1QC"}, "7FKe0fnHUlmU1unG": {"description": "KM0tgfeWy47bbwMI", "localExt": {"4gGmvK9gW596FwBN": {}, "rFXt3TAuKBwBcD12": {}, "ae6r3hHwya4NpdOz": {}}, "longDescription": "g3hr6ucHf7dbh2iK", "title": "NUl0qJqzoKMRMG54"}}, "lootBoxConfig": {"rewardCount": 6, "rewards": [{"lootBoxItems": [{"count": 85, "duration": 90, "endDate": "1984-10-11T00:00:00Z", "itemId": "iNjULsx4SnKNXLMU", "itemSku": "aDSwwQlnNRZJHBSB", "itemType": "4fZWEFIZs28Ff1kZ"}, {"count": 32, "duration": 89, "endDate": "1998-06-22T00:00:00Z", "itemId": "Zktx3N7WNMYIfcDK", "itemSku": "bLu8pnK34oA1keYX", "itemType": "JvtggDdXjbdjMBah"}, {"count": 65, "duration": 47, "endDate": "1997-01-24T00:00:00Z", "itemId": "ZGMTcqnWrIprOv0B", "itemSku": "J9Sgl7H1sdH2RIJz", "itemType": "1eI7Q5pu9PutLf6I"}], "name": "rvZoBGQbO4S3rURG", "odds": 0.7886902573166743, "type": "REWARD_GROUP", "weight": 52}, {"lootBoxItems": [{"count": 85, "duration": 75, "endDate": "1984-09-02T00:00:00Z", "itemId": "BYJ2fkqYJoF2FI3v", "itemSku": "yyqRzc20O7FdsJP1", "itemType": "G9tyBTfERXdvgD1Q"}, {"count": 11, "duration": 78, "endDate": "1985-11-28T00:00:00Z", "itemId": "eCidXjuGgx8ncXej", "itemSku": "meZtzT0qj0ltsqfi", "itemType": "ZrthVvyX0OCKDJE3"}, {"count": 89, "duration": 80, "endDate": "1980-05-30T00:00:00Z", "itemId": "ddwSSgxCu8zru1Dh", "itemSku": "GAYOHR5BWa9VzIka", "itemType": "QEl1iUProNB6hI6I"}], "name": "pGcToWgFvdRhG9Nw", "odds": 0.7685587206909691, "type": "PROBABILITY_GROUP", "weight": 53}, {"lootBoxItems": [{"count": 47, "duration": 61, "endDate": "1981-06-16T00:00:00Z", "itemId": "yQENvJrBCqeg67d4", "itemSku": "RWOqO4U0bitNQLzw", "itemType": "RoWnR0AbkCPY70Fm"}, {"count": 45, "duration": 8, "endDate": "1981-05-20T00:00:00Z", "itemId": "iVIBbcujF8Vk5qb8", "itemSku": "NhWWwaxyMchkt8l5", "itemType": "IPSrwrJl7wYIVw13"}, {"count": 81, "duration": 1, "endDate": "1985-01-20T00:00:00Z", "itemId": "o9yXlbQ52FTHTCj6", "itemSku": "SEAzT7TOpyiuvvQU", "itemType": "m29Iacq4XRLaA643"}], "name": "nTMtXSAyejnny0Ju", "odds": 0.8702758709888515, "type": "PROBABILITY_GROUP", "weight": 2}], "rollFunction": "CUSTOM"}, "maxCount": 30, "maxCountPerUser": 86, "name": "5uB2XM6IHy7EEvHy", "optionBoxConfig": {"boxItems": [{"count": 77, "duration": 25, "endDate": "1984-01-15T00:00:00Z", "itemId": "UUPFPscZsXeJOD4D", "itemSku": "MtqfIGiGJovgWSRx", "itemType": "Z8N4UQ2fg3V1o2x0"}, {"count": 15, "duration": 52, "endDate": "1990-05-24T00:00:00Z", "itemId": "5DuBDqMyIAzWze94", "itemSku": "MEdJFAy2JTllJkRG", "itemType": "B8jqJEd6eqqsBVyO"}, {"count": 81, "duration": 97, "endDate": "1993-03-04T00:00:00Z", "itemId": "JRtozI0jpliCFQ6W", "itemSku": "gJpGPigdc5VyC4qv", "itemType": "WjVac1cQvSxgTNIU"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 61, "fixedTrialCycles": 51, "graceDays": 14}, "regionData": {"mOuhCkZu4htrsf8e": [{"currencyCode": "IFSovTGXaMsq8ePN", "currencyNamespace": "1oco2jx8Upe8SjMv", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1983-11-14T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1982-06-17T00:00:00Z", "expireAt": "1975-02-19T00:00:00Z", "price": 82, "purchaseAt": "1974-08-15T00:00:00Z", "trialPrice": 83}, {"currencyCode": "Yl9iCqfW6rqGOQny", "currencyNamespace": "4ij4ysYPonb59gQf", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1976-01-22T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1977-12-02T00:00:00Z", "expireAt": "1974-04-16T00:00:00Z", "price": 63, "purchaseAt": "1981-05-07T00:00:00Z", "trialPrice": 3}, {"currencyCode": "TnRUQr3RLOM1vEx4", "currencyNamespace": "gqDY6jwyKRxhkLe5", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1978-06-19T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1988-02-21T00:00:00Z", "expireAt": "1974-06-06T00:00:00Z", "price": 25, "purchaseAt": "1981-06-09T00:00:00Z", "trialPrice": 75}], "RQt28b6o3K0COF74": [{"currencyCode": "tz6aeXZOYwbwjMNd", "currencyNamespace": "xKWlBfnRyFS0Ed7g", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1989-07-30T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1995-09-09T00:00:00Z", "expireAt": "1979-06-07T00:00:00Z", "price": 89, "purchaseAt": "1985-10-18T00:00:00Z", "trialPrice": 87}, {"currencyCode": "nj8xN7HDPTUEDPN1", "currencyNamespace": "Kb4UTPWDXTSb55g8", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1991-05-01T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1978-12-02T00:00:00Z", "expireAt": "1990-04-01T00:00:00Z", "price": 24, "purchaseAt": "1987-04-01T00:00:00Z", "trialPrice": 85}, {"currencyCode": "j84P0KqirJ4PkMFt", "currencyNamespace": "snFfz8Ew0X8fBuBS", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1988-12-04T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1999-09-19T00:00:00Z", "expireAt": "1995-06-26T00:00:00Z", "price": 85, "purchaseAt": "1990-06-26T00:00:00Z", "trialPrice": 39}], "RLiDi0mNHb6Lx8eq": [{"currencyCode": "8SGNwEQO8dYXvBSY", "currencyNamespace": "vJBwb6CjZUMRf2VJ", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1980-06-29T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1998-04-21T00:00:00Z", "expireAt": "1975-03-30T00:00:00Z", "price": 4, "purchaseAt": "1982-07-13T00:00:00Z", "trialPrice": 13}, {"currencyCode": "3BHuTEczr9KjQ3tt", "currencyNamespace": "z8MTBt1xk9IyssSA", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1992-01-10T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1992-12-09T00:00:00Z", "expireAt": "1981-03-15T00:00:00Z", "price": 34, "purchaseAt": "1979-12-11T00:00:00Z", "trialPrice": 52}, {"currencyCode": "tQmQN6eKAGiZFCft", "currencyNamespace": "T0RWECdjWYrnulxc", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1989-08-01T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1979-12-14T00:00:00Z", "expireAt": "1981-01-21T00:00:00Z", "price": 61, "purchaseAt": "1978-06-23T00:00:00Z", "trialPrice": 84}]}, "saleConfig": {"currencyCode": "kaEIIPoJT83zEGXm", "price": 98}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "YmuYCPG181q9GA5D", "stackable": true, "status": "ACTIVE", "tags": ["ewqJligLlRxOelKy", "kICRxF6HtlER2txs", "hc2Fh04JTsqDTynC"], "targetCurrencyCode": "4qrNARATn6KXOutl", "targetNamespace": "YBbLhL8KXx25FZfQ", "thumbnailUrl": "IodVBqQsBpCJBIXL", "useCount": 67}' --login_with_auth "Bearer foo"
platform-delete-item 'GgfLKsg0b1Bq78cE' --login_with_auth "Bearer foo"
platform-acquire-item '5O5pmPnbiPJ9j4vx' --body '{"count": 25, "orderNo": "Zrm3thUvV87yfkyc"}' --login_with_auth "Bearer foo"
platform-get-app 'LSVdleSaAylsmLYe' --login_with_auth "Bearer foo"
platform-update-app '2phYOgT5kDTyPl3d' 'KF7NXEjrJMki8jvc' --body '{"carousel": [{"alt": "3P8Gwjg3IOH0SDHg", "previewUrl": "YKqxJiFJdrmj5vhz", "thumbnailUrl": "gsJwex7wq8ZPlXNa", "type": "image", "url": "NgdY2vfJuje5cPnm", "videoSource": "youtube"}, {"alt": "NoN9AWtLK9TFgi9j", "previewUrl": "2XMh9WpifqjNjLOt", "thumbnailUrl": "NQts2yxf6MLZJ2jZ", "type": "image", "url": "4DJi9DaMrc0WFgKj", "videoSource": "vimeo"}, {"alt": "9SRu0YqUxKDc84OM", "previewUrl": "IzvTScdbKBsAyJMz", "thumbnailUrl": "4ILNDvhB4Eoes9a6", "type": "image", "url": "ICVpWd3UM08gMXhd", "videoSource": "generic"}], "developer": "RUY0ilrNoFT98Sgt", "forumUrl": "Jd4Z5f8nfaKqdZFL", "genres": ["Action", "Simulation", "Racing"], "localizations": {"IOFjeXbsSgR43kID": {"announcement": "zxBwqRJTzrHNZWUs", "slogan": "q5lQo2jy29EJigqY"}, "hyVhURx1yPeczRpd": {"announcement": "k0HATGylx2JG2KNG", "slogan": "fhzfCTxxrsRRLee3"}, "TcJ7DQIi45aCDHN9": {"announcement": "mVug2zkVf6KgpKOc", "slogan": "n3tMD9UT67bOwugF"}}, "platformRequirements": {"Da6wUQvehKqwCh86": [{"additionals": "XmRkCEcfHDCdl59W", "directXVersion": "p9A3tXGve6DdK6uv", "diskSpace": "g8f2cIoByk9fxtvs", "graphics": "geAxo57nKAbZpsbJ", "label": "4Iu5KJ0ynxGBlacD", "osVersion": "CdFe8ATUqVxcSthr", "processor": "pnMUBsnUfuQIcSbU", "ram": "t5UGkInFGpuUsdtq", "soundCard": "4dOwNESzCEW9dUVh"}, {"additionals": "ZjLftC3sCS8CpLCq", "directXVersion": "PD9CeDEdCnnL6Kt1", "diskSpace": "Bjj3b8QM8Rr45ULq", "graphics": "XQgvwD3PsKDJiWxQ", "label": "BwaS7rDBf2S54phb", "osVersion": "dyGDt47f9GWRlE9h", "processor": "qz6rjDNo4rhjxUdM", "ram": "M83WekqfWv04vvn9", "soundCard": "bk5qr8qs2mqtnGAq"}, {"additionals": "XUjNypF6MMqWpdEJ", "directXVersion": "sPoaIbYz8cK5jlpJ", "diskSpace": "dre5ur6yvWJDdvM7", "graphics": "T7PX2vamIRZHzsIY", "label": "OCUoiCXNjrdQL2jd", "osVersion": "x1eIba1sB0HsJ06D", "processor": "zfbzRYt4OVUyumBe", "ram": "IqdQGZC5kM03HHij", "soundCard": "sQRj7N8IAjmsonjj"}], "0ZR50BQ1U6aFD3O2": [{"additionals": "kXQSc58zgZVl4gIF", "directXVersion": "7v3qbZu9M3OxqVAT", "diskSpace": "4H1lRZ9Z1JBrHRzE", "graphics": "OtIxzPqb6n73m0ji", "label": "aDH86d9rsKgzCsMu", "osVersion": "lpB8HZUtVVaJCiLg", "processor": "KOwrSfWhT5B4Wedo", "ram": "pzwSluBtRFPKThyG", "soundCard": "nbjmPDKFS6u9FHuv"}, {"additionals": "1M3qfch4SqIV6LQP", "directXVersion": "HlaeYl4csFq65cU6", "diskSpace": "6yJaj4ovoKWE4EW0", "graphics": "sw8v5peiuxoBJATa", "label": "uyD3XCXVMiyEvMf9", "osVersion": "yilUEujk6oqYo1HQ", "processor": "YTFzwdOMdupwD4O3", "ram": "uNbcIDcIyvZbOy1T", "soundCard": "4hfwkuVykH4Rpfmj"}, {"additionals": "IXFGZ5PKdbabJIkN", "directXVersion": "nt9P1Tkm08luh4dp", "diskSpace": "PRMDbUXBWTbpAogG", "graphics": "2wlZkLhuU5FI8Nij", "label": "FI0GKwJ3vfXlsAMy", "osVersion": "2Zp2UAGxHnmSxvkG", "processor": "9UR5q9neoW6JBcGp", "ram": "9Rx2RfcRhXpmeeHd", "soundCard": "vphas9S7ivHEoLbU"}], "MM47f1UreUpxEkXI": [{"additionals": "bE1ETzRJZKMavu4U", "directXVersion": "l2IaieEbPSE7TGke", "diskSpace": "HsYsW9oGBN1pYMBw", "graphics": "bPZTlMlUvFEiGprc", "label": "NSQ9kEeXBZ6FVrBz", "osVersion": "yhyhoS6a9oe0JaXF", "processor": "pff28uYbe4Cf2HEH", "ram": "vVevhISjbtBJUK5f", "soundCard": "E3OufPSX3PdOU2V9"}, {"additionals": "yw94oa8UJ34TIedV", "directXVersion": "3HyoX4VnO2LpBU08", "diskSpace": "wfnlHBXFIqFUmgUS", "graphics": "MM5au8GJT0mkVPI6", "label": "zUtf3QaJPGrTNcXX", "osVersion": "TUIggoH89QNmI17U", "processor": "Db19R6H7r1ta3m7j", "ram": "K5pxe82pgFiAS6pi", "soundCard": "Izmc8rKrKEPGSAco"}, {"additionals": "ng6eNERUf8kjci1C", "directXVersion": "tccv9Gv4tOcbnuCq", "diskSpace": "f0lm6WBkIzjoSV31", "graphics": "tvmMB6jzrpRGESmo", "label": "oHiCV4GUOnXpapXQ", "osVersion": "GRakUbcG7PcR4eiU", "processor": "3Idi55jNrGNT2VHT", "ram": "KuIT5FwwHj0Ur5F2", "soundCard": "PWGTTD81xhNP4t6k"}]}, "platforms": ["MacOS", "MacOS", "Android"], "players": ["Single", "Multi", "CrossPlatformMulti"], "primaryGenre": "Casual", "publisher": "yXAn3bWQF6QcAiJp", "releaseDate": "1996-09-03T00:00:00Z", "websiteUrl": "IrgroixptZhckUTG"}' --login_with_auth "Bearer foo"
platform-disable-item 'kcBOE4qMcH1Kyi8Z' 'FvGcV8DY0XOkDstx' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'ZcY1HgAnZV4IOglV' --login_with_auth "Bearer foo"
platform-enable-item 'Lqb9lGAJUg21Lt7J' 'wgwMUSuC3Bajy3Bc' --login_with_auth "Bearer foo"
platform-feature-item 'EMCtQs2FcEcvVAyI' 'd6Cp85HVDsZBQgOn' 'XuXsGThYZrmm0wrF' --login_with_auth "Bearer foo"
platform-defeature-item 'MnPpWgrQD4hEk0OL' 'jYsnignE7KcMF7fu' 'DbzRRYMNXWUsp1tO' --login_with_auth "Bearer foo"
platform-get-locale-item 'ibJY9aL9ie6vvMbi' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'NURrlm88QlKyuoya' '4JgakZyUV7t73VnS' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 2, "code": "Pd12B8QNUz0hFFNb", "comparison": "isGreaterThan", "name": "6j2W4roZM2UKAXEE", "predicateType": "SeasonTierPredicate", "value": "JdXzRxfNEjUMTs8W", "values": ["IObJBTsvsw76uISR", "X0bKVoWtoUW1P7oc", "uBAldDSUS7Haa6un"]}, {"anyOf": 33, "code": "bumu2QHLyZNuysyM", "comparison": "is", "name": "OfCzdQCXMAWnf87Y", "predicateType": "EntitlementPredicate", "value": "Oe9Eevf1fhMg1E2k", "values": ["eDCow2zXyFFVpM87", "yqEwEacQMTlqN4LK", "7QLFrVgtX7y0fPOi"]}, {"anyOf": 21, "code": "4pd5A7MYcpBD6lKN", "comparison": "excludes", "name": "FkFGA85W3HJkqgS2", "predicateType": "StatisticCodePredicate", "value": "19fqBwNbNe1ffYRt", "values": ["IvQaKyevWYtZjK6J", "JkzJHAckUyBksYQf", "29v8MpBSpo3AKRmn"]}]}, {"operator": "or", "predicates": [{"anyOf": 72, "code": "m0RNFwiz70tRVLMl", "comparison": "isNot", "name": "i8i9gOVqajUWrgEs", "predicateType": "StatisticCodePredicate", "value": "TZkil67kRngoUa83", "values": ["ECh1gqPeS193TNNz", "bRAhzzEWzWlTY70q", "ot3sVli3GN2XTrFi"]}, {"anyOf": 6, "code": "mQafUs2bxYztOEyV", "comparison": "excludes", "name": "BjV00ReCXFffjJJx", "predicateType": "SeasonPassPredicate", "value": "QykmXHYmkRlg7gYs", "values": ["6unPYQ9jNQN1di1l", "dhOh6HvjnYuV7NfC", "4A2ODiZhbfb8QqCy"]}, {"anyOf": 75, "code": "Z7FHls3nyvconqbH", "comparison": "isGreaterThanOrEqual", "name": "6GjCWaP8huTmnq3F", "predicateType": "SeasonPassPredicate", "value": "Qn3Ahu5wxq6oJq4m", "values": ["fXFD58sG6uDhFYlr", "ChmQHQhO9IKBXDFQ", "zJBYSeMuJfQecutj"]}]}, {"operator": "and", "predicates": [{"anyOf": 98, "code": "29BiJWOG1m7MKclr", "comparison": "is", "name": "JTgCNNH7RtG5Xmo9", "predicateType": "EntitlementPredicate", "value": "0Wb07N17fkxZSc6V", "values": ["bE0AGcekjMNHuPXt", "oN91uc28HoSpGt1g", "z8tXxrmzafMUguyD"]}, {"anyOf": 99, "code": "GGbT4Hf2PPKOldkb", "comparison": "includes", "name": "i9kg3rMIzNmhJTNQ", "predicateType": "SeasonPassPredicate", "value": "q86IaDFjjx6uZerW", "values": ["btwTX9gNRByjbE8l", "La7LevxNHOSEhQRZ", "OLAfTXKLzbrddqcK"]}, {"anyOf": 71, "code": "nTgtgW33wDwD9RKv", "comparison": "isLessThanOrEqual", "name": "4yFQFdrRoM6FoqCY", "predicateType": "SeasonTierPredicate", "value": "hOqG5KDdUvk0LEi2", "values": ["6Ls7mjRxNmvvNtjJ", "NQepUTGhwlY4lPzl", "sCR5rVsyfcH7WjP7"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'HuGz3b5WAEvdRF9b' --body '{"orderNo": "qMj4ro5B19VE838c"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "7OydVw0zCqoMZvpI", "name": "OO97DmQ5ZOzx6iCJ", "status": "INACTIVE", "tags": ["u60IifzMhkk5Pxsj", "qbCKpMv2Yky9DYkD", "2sIllFtBtXJKG3rq"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'BmILhtWm8RQvRUbU' --login_with_auth "Bearer foo"
platform-update-key-group 'DSiefGEdLucrtO2g' --body '{"description": "CQD057DrDlgC2nzS", "name": "9SiGUjVAw4v3q6JR", "status": "ACTIVE", "tags": ["1mMIfOCDyVAHrHnc", "R5dShqiBUI9esSsX", "egSEhrPpK2q8kxR4"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'BuEksS2A9VOA8H9V' --login_with_auth "Bearer foo"
platform-list-keys 'eHv0L2Acm960EYQE' --login_with_auth "Bearer foo"
platform-upload-keys 'uGJVl8xs1WId9Wla' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'lqshF9Rh2o7GCQGP' --login_with_auth "Bearer foo"
platform-refund-order 'CxwEdkyuT3MgzReR' --body '{"description": "q0112ISArROIodcm"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": true, "notifyUrl": "6v2AEozWWaYvBLE4", "privateKey": "6bpuJip8JyxJ39vr"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config --login_with_auth "Bearer foo"
platform-update-payment-domain-whitelist-config --body '{"domains": ["tuWWrqTZbSqBSKp8", "AmgwhYzk33J34fiT", "xK63OHpnUCGBVfpc"]}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "tNFUsUQ6ZXQcb2o1", "currencyNamespace": "J5euLAbBgejqc0ap", "customParameters": {"xqZ209BySn8aUaGl": {}, "AyvIslt7N1qcxKs4": {}, "nlf1MfqUZXkjHvcU": {}}, "description": "OTlxNf09pefgFIiJ", "extOrderNo": "ssShBKsQjXvfQgQD", "extUserId": "t6ce8NDMErA82FrR", "itemType": "MEDIA", "language": "cttO", "metadata": {"kewIzTOqKkcjRh3l": "2gAJOTCbx7J3gNLI", "lTk3Bpclrk4hIRn0": "znIKzAEAHQpBOgHE", "P5l94s7CbIJ7eHnV": "WOboMkyB7FTexsOZ"}, "notifyUrl": "0b2p3b63KrcwIcXM", "omitNotification": false, "platform": "rr3KCAV9alq3hK1G", "price": 21, "recurringPaymentOrderNo": "6DqwdQPQ9HkSSV8e", "region": "1MgTTLS2FgarY903", "returnUrl": "INGIyEfRBEj7qms9", "sandbox": true, "sku": "HgfHumyfuBNisecY", "subscriptionId": "bcOpR45VDlvSc0Mr", "targetNamespace": "7ImwCwGqOf0bNs97", "targetUserId": "KvKyj3MqS7Dcmtfh", "title": "50eObbrmgjhWK0x0"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'ZidAJ1CU1eD1La16' --login_with_auth "Bearer foo"
platform-get-payment-order 'Bw3JbUnUDh5yGjjv' --login_with_auth "Bearer foo"
platform-charge-payment-order '4Mwrv2vancmR6Z7r' --body '{"extTxId": "b21A2E9pX0BWCMqP", "paymentMethod": "sRk5htdM5T3fDSrS", "paymentProvider": "XSOLLA"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'uOXJPm5ztrr09CDA' --body '{"description": "8Ij5bGKSuopWQbaC"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'vdPSq8Z27GpvHCDx' --body '{"amount": 30, "currencyCode": "5JZ5z6gujpFzlPsp", "notifyType": "CHARGE", "paymentProvider": "WXPAY", "salesTax": 76, "vat": 74}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'IRIpDDubntPCFxfe' --login_with_auth "Bearer foo"
platform-get-psn-entitlement-ownership 'oW2NdSWzOXjO1NQU' --body '{"accessToken": "qWHBW78XREZCiTNA", "serviceLabel": 47}' --login_with_auth "Bearer foo"
platform-get-xbox-entitlement-ownership '9NCKKXu1bqI2M5Pm' --body '{"delegationToken": "XfKnQ7BYGjCUDMOr", "sandboxId": "bmoRvWnfmGFy0eUo"}' --login_with_auth "Bearer foo"
platform-get-platform-entitlement-config 'Steam' --login_with_auth "Bearer foo"
platform-update-platform-entitlement-config 'Steam' --body '{"allowedPlatformOrigins": ["Steam", "Epic", "Xbox"]}' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Xbox' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'IOS' --body '{"allowedBalanceOrigins": ["GooglePlay", "Oculus", "Steam"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Steam' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config --body '{"appConfig": {"appName": "iVbqJnZcrqrPye7f"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "bJ0fwTDaq6b5RpMw"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "wMHMtJy1Oqn59tEG", "eventTopic": "m9NYeUT5P0nx8TqS", "maxAwarded": 69, "maxAwardedPerUser": 6, "namespaceExpression": "kapTCafFMdvYiCBu", "rewardCode": "zUUwyI6Vtd4v9k4f", "rewardConditions": [{"condition": "v3kMiuQ3DhsKLxjt", "conditionName": "5srPFxBgpFtDBmTL", "eventName": "H9kP9U53z6joBAhA", "rewardItems": [{"duration": 23, "endDate": "1985-10-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "GI2YYb6ajBjgq6eY", "quantity": 9, "sku": "PBNHKPx62tHxDb06"}, {"duration": 48, "endDate": "1987-07-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "uglSp2UxvF2uLXWi", "quantity": 23, "sku": "80y9uxgVLGgK8aVS"}, {"duration": 58, "endDate": "1998-11-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "6LvcnGMJbJIYLssM", "quantity": 44, "sku": "wKVXGPhEJsc7rZpx"}]}, {"condition": "aPHc9r8eToFmkHJ6", "conditionName": "BPOKFLxIwKssw647", "eventName": "YwDudnGRufOUGfMj", "rewardItems": [{"duration": 93, "endDate": "1989-12-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "l07jPlcYaqYM7YfB", "quantity": 26, "sku": "O8AEl6A9sh2x2ur2"}, {"duration": 5, "endDate": "1972-01-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "KPCFUIeyYEymNXzN", "quantity": 39, "sku": "6TGh4UdEweeBsJEv"}, {"duration": 56, "endDate": "1971-02-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "tn5pUARJM1T8QwMN", "quantity": 84, "sku": "UvmzbajE2gjooiDn"}]}, {"condition": "c1NUb51lEgUwQ9tk", "conditionName": "WaMOH47CAT7cBP09", "eventName": "18JaEBQBP766LUnB", "rewardItems": [{"duration": 56, "endDate": "1978-12-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "4iAO7sBQt6YJ2tWw", "quantity": 64, "sku": "lttmrpgF5szl0sMY"}, {"duration": 53, "endDate": "1973-03-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "3XrYZUiN24ol1qqb", "quantity": 0, "sku": "EFd8xArWJuCAIfNB"}, {"duration": 91, "endDate": "1977-10-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "gpFNw9K9pmAIc6VS", "quantity": 11, "sku": "vNj3ktaDf9B22HGg"}]}], "userIdExpression": "xakPt7IYzaZUTmvs"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'GuA4S1dS7H7yIS7b' --login_with_auth "Bearer foo"
platform-update-reward '5TSDRIoMg7Dc5APz' --body '{"description": "fzXDELJFaIaEMW5b", "eventTopic": "hJyL72WDyhBsCCbn", "maxAwarded": 11, "maxAwardedPerUser": 1, "namespaceExpression": "ihnXKxGxaupnTTq9", "rewardCode": "ihZkvFKfSHQh8I9x", "rewardConditions": [{"condition": "k3sFl0cbuCRM69XK", "conditionName": "kLwioRaKnWhlh80B", "eventName": "hYe2fJDS6T75Q4ul", "rewardItems": [{"duration": 29, "endDate": "1983-04-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "FjmYqE1wJhfogWg2", "quantity": 55, "sku": "HKUvPYUcQBxMSdOO"}, {"duration": 37, "endDate": "1981-04-18T00:00:00Z", "identityType": "ITEM_ID", "itemId": "2Nd8Jpa19GJDK46E", "quantity": 8, "sku": "EZywonA2SrEdN2tm"}, {"duration": 67, "endDate": "1991-06-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "agpS6A5mkufBpWVx", "quantity": 72, "sku": "nYxmkmCWbs5qugkl"}]}, {"condition": "BUS6uwWrCQt86Jrg", "conditionName": "8tLAJWpcyNkUvqn6", "eventName": "eXr6FNbKJ05Orya6", "rewardItems": [{"duration": 76, "endDate": "1997-02-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "lugIAknXcSaVYcAY", "quantity": 32, "sku": "X1K9JrK6Or2xx7rL"}, {"duration": 47, "endDate": "1980-05-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "oWiywnxuDLLuIaSx", "quantity": 30, "sku": "YoID2UqO0iAXA9dB"}, {"duration": 18, "endDate": "1982-01-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "8HDOJ8TNiP8KgEAj", "quantity": 91, "sku": "dbRTI0i6dO3zkbDs"}]}, {"condition": "eh4tJdoGcwMBmegq", "conditionName": "VUaWMJBjrV0p9A7t", "eventName": "cHrV0MbJGr4drgkD", "rewardItems": [{"duration": 43, "endDate": "1999-01-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5m0pGzazM2BUXnzU", "quantity": 63, "sku": "gr3Cc4M2O7NrTQO7"}, {"duration": 74, "endDate": "1973-11-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "dZDGwqx7T3l1ut2o", "quantity": 50, "sku": "2FBS93Mg6TKwdRMr"}, {"duration": 1, "endDate": "1994-08-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Lrwh3d0ykRGkgqUN", "quantity": 72, "sku": "34xmIOjFLgKR4LjE"}]}], "userIdExpression": "WhOScvtQ92iD02YM"}' --login_with_auth "Bearer foo"
platform-delete-reward 'vEUNfoL7JCcMo7Gx' --login_with_auth "Bearer foo"
platform-check-event-condition 'xXdbYCRexPekTsQx' --body '{"payload": {"MTfaSot7aohFYy4V": {}, "xwHIJ9gzxqAw4vBG": {}, "QAeh0VTiTP4PSrXU": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'S6jYI9lsQFD43Df5' --body '{"conditionName": "qUZOFzpFd6b5Jc5T", "userId": "ETHcup8GG0VCMTFJ"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section '6svTyo9RHget5hzB' --body '{"active": true, "displayOrder": 56, "endDate": "1993-08-28T00:00:00Z", "ext": {"PGV9n769zLJdKMex": {}, "eJc7NvgTSgKjCxZj": {}, "Kf8NA4cGUaDfy9Xn": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 11, "itemCount": 8, "rule": "SEQUENCE"}, "items": [{"id": "1GS5YkyhAiAItnWU", "sku": "mD225fp1egsx3Erh"}, {"id": "eNwqd5priclNNqLy", "sku": "rlzrJ4QHbfnAdtku"}, {"id": "jxHff7n1yaNCcjgF", "sku": "hS0URBhl0L5FCbOn"}], "localizations": {"46W2B2uPQLrt2t6b": {"description": "VpCgKvPXSDufmKh7", "localExt": {"83cV54JsVBRB0rY0": {}, "xfWddACyHSmo4KX9": {}, "TPO3K1k5ZM8btmGs": {}}, "longDescription": "gXNXbpqxh76Af5JS", "title": "wjw2fE2g6jXV7oai"}, "2oDm9FaP0HJ98tE4": {"description": "UyoQg0b0sGOkzxVt", "localExt": {"15LKmkQ7YBhsOuJ0": {}, "ypkkt2G4eFh2YNsd": {}, "oxpLTBM9Q8t829Id": {}}, "longDescription": "o1JyveSRiBq23kyH", "title": "9jQbHWkcVk0X28GS"}, "54vl7gIKBc7OYTyl": {"description": "FRAJKySnC0cfPl3Z", "localExt": {"2zSBbs4PAV72u8Ax": {}, "E2IQeoxYV4UcYzsw": {}, "AGpXqQxctuVaqPJG": {}}, "longDescription": "AHEZmuQrZ8GaQ4OZ", "title": "2nDodm4TNs8mAj6I"}}, "name": "KSYFdJwgZsRPOzwu", "rotationType": "FIXED_PERIOD", "startDate": "1990-12-26T00:00:00Z", "viewId": "Qjk4VoYfIksth24c"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'ZBpdDFfvzeU5iqhx' --login_with_auth "Bearer foo"
platform-get-section '6zv7EURTNIoG1DBd' --login_with_auth "Bearer foo"
platform-update-section 'oKH6sREmmfwUZLZZ' 'S7snx0Q2Gd8m7Y3w' --body '{"active": false, "displayOrder": 81, "endDate": "1978-04-01T00:00:00Z", "ext": {"IcV33yjPxibDjfF7": {}, "JkjCVpZKMxkFkBtX": {}, "MU6KRIm5xBoIi99c": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 66, "itemCount": 12, "rule": "SEQUENCE"}, "items": [{"id": "Xasxp5h780ktjQw2", "sku": "yXzaQWaF2PqUfbpM"}, {"id": "pRl6xRyV19cborUH", "sku": "eCpqnZ5NW623WWn2"}, {"id": "ZJY3QvRa7CDRTcsA", "sku": "HzD3dZyyWbUQpbcv"}], "localizations": {"3IwmL7a1K3zIUYJm": {"description": "dF1YtWNSQlcMzxfp", "localExt": {"pNCrscDPbklTHcmg": {}, "XsrVj3Mjml6BpCOD": {}, "WGOLMmCZUeelXYyN": {}}, "longDescription": "rXweiCnDldRPRfd6", "title": "mLZ0GTJwEjoZrRta"}, "eWKMC8wsOByQAMAg": {"description": "qFEzEt8umj5XhKnw", "localExt": {"7MHDwFVKUC2ecnpU": {}, "DqvLQixPKVSmWa8T": {}, "Gko16XTqHc0cM7ix": {}}, "longDescription": "q8Tjnxp5Cl8ggaEm", "title": "CcuK2hHviBEWpbus"}, "O6EyVqstpgZpbz77": {"description": "y88rUFum2ZcA8iKc", "localExt": {"F0bkfjcTEFXcTwEt": {}, "nHxP5pVtN4jNVIdr": {}, "uEA39uCJzsE8WObt": {}}, "longDescription": "6t0w8LOBxE15JYj4", "title": "IqWK09l4wkrzahXR"}}, "name": "1sDEDVKDINE3HjCi", "rotationType": "NONE", "startDate": "1977-01-25T00:00:00Z", "viewId": "5YwgZpjlMMtPWg82"}' --login_with_auth "Bearer foo"
platform-delete-section '17m7qNkQiKp2oac8' 'QTNEuBbeuQqm9wM7' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "mgTtUdPVcQijMBhs", "defaultRegion": "0kDP6d3nuUZ41mSe", "description": "S9SnGqhJOvykBcDp", "supportedLanguages": ["zD9zh6dtPK4fVHLM", "vrCsH3RYxH2Up9Vt", "hPjFrK7Hip0eONFD"], "supportedRegions": ["gUPShG8wwFKY9AMp", "cwJd4SrigIxAhbFM", "ZfxaznlDQbzTiFrQ"], "title": "B1yUonirH4URx3Nk"}' --login_with_auth "Bearer foo"
platform-get-catalog-definition 'VIEW' --login_with_auth "Bearer foo"
platform-download-csv-templates --login_with_auth "Bearer foo"
platform-export-store-by-csv --body '{"catalogType": "SECTION", "fieldsToBeIncluded": ["97KBedcr6PM51z7i", "0wQ9egK2t46EG8I2", "lTviKbOgVuN3nhkn"], "idsToBeExported": ["6QIesNoYqvVsakyl", "HikKkpOjqwgKvfXX", "s8pDqm31AZSRkuw6"], "storeId": "q8FgqG46RsFK7eYl"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'SU3vYcHZZjFegVnZ' --login_with_auth "Bearer foo"
platform-update-store 'On0tk4IATSIefcqN' --body '{"defaultLanguage": "En4IZ0Dv6b8WtaMV", "defaultRegion": "vLbG04KKnh3jvW0Q", "description": "p3kTyL4CsLwiWUMc", "supportedLanguages": ["pxn4B6XoTNMuqZTH", "wo1IAJQpb6r8ZeaS", "HwQuiH3Ozu4G6bXx"], "supportedRegions": ["p0gYZyF9fJBJkSOr", "F9Dg4FcDwBGyBiHe", "wZkwEeuzBBRSknxy"], "title": "WkZObuvig8sMuss7"}' --login_with_auth "Bearer foo"
platform-delete-store '6ezTrsDZNYUV48Oh' --login_with_auth "Bearer foo"
platform-query-changes '6I45X7HvUtPYONZd' --login_with_auth "Bearer foo"
platform-publish-all 'Fk75lkjQNHrjaboG' --login_with_auth "Bearer foo"
platform-publish-selected 'omguUqeuZh5qtrRb' --login_with_auth "Bearer foo"
platform-select-all-records 'NnGejdTGvZgN5hsh' --login_with_auth "Bearer foo"
platform-select-all-records-by-criteria 'Se5YmZXKEQLkM6o3' --login_with_auth "Bearer foo"
platform-get-statistic 'eGSP4Htmr90TqGf0' --login_with_auth "Bearer foo"
platform-unselect-all-records 'OyqJ9ibJMmRgoxNw' --login_with_auth "Bearer foo"
platform-select-record 'p1lGkYoq8HP1TM0t' 'efVQPWX1NPO5Wn7r' --login_with_auth "Bearer foo"
platform-unselect-record 'NG8rGp7Fadvo5Ezp' 'X0IttsRezyY9GB5s' --login_with_auth "Bearer foo"
platform-clone-store 'f94ALBmvdncQkcZb' --login_with_auth "Bearer foo"
platform-query-import-history '8cWdVH9bww15zZsa' --login_with_auth "Bearer foo"
platform-import-store-by-csv 'YrJAe5Kd5QB96ndl' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'O6iPGC9RhzMC7V8B' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'EphnRXnSpCzyb8Fk' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'oxQbrPngi87K58pQ' --body '{"orderNo": "swqKLutINusOsa92"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'F6iwkJIYOLarmpWy' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'vib9CDW21ANrlpuX' --body '{"count": 60, "orderNo": "C2LfL2m5rP2A20t6"}' --login_with_auth "Bearer foo"
platform-commit --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 23, "currencyCode": "oPPH94SUinY5diUl", "expireAt": "1979-02-21T00:00:00Z"}, "debitPayload": {"count": 16, "currencyCode": "vY7dPPyahppgxJhk", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 96, "entitlementCollectionId": "dTZ000rS92594HLv", "entitlementOrigin": "System", "itemIdentity": "WcDSqGYRMdz07xEJ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 33, "entitlementId": "epssgJJC3CX0hpB1"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 89, "currencyCode": "Mo5DSozCuFsrBMto", "expireAt": "1991-02-24T00:00:00Z"}, "debitPayload": {"count": 10, "currencyCode": "cvszzQLZBktk0siM", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 32, "entitlementCollectionId": "rghZwGhdZJkkGhYv", "entitlementOrigin": "System", "itemIdentity": "MIyaEMEqOpwetb82", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 66, "entitlementId": "96rsH73hRfDgl29G"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 82, "currencyCode": "ItMt4GszRufkDFLY", "expireAt": "1983-04-09T00:00:00Z"}, "debitPayload": {"count": 80, "currencyCode": "IejozmG5HlrIfMAv", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 31, "entitlementCollectionId": "pkAHRJHZyfrXZmiJ", "entitlementOrigin": "Playstation", "itemIdentity": "CjKCeIRIr997KKpJ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 2, "entitlementId": "TJvKNDFrx6LabyDn"}, "type": "FULFILL_ITEM"}], "userId": "ZjKJ05puX3197WrM"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 66, "currencyCode": "JtovSMFw8X4zxbdf", "expireAt": "1996-02-16T00:00:00Z"}, "debitPayload": {"count": 48, "currencyCode": "unt1oMNZ68eovHSH", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 43, "entitlementCollectionId": "V3URIRVDYBd6hMB0", "entitlementOrigin": "Nintendo", "itemIdentity": "gDXNrFEE4Jf4hQps", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 5, "entitlementId": "yeHmfoFkUDP864sh"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 87, "currencyCode": "UOoICxQMit8555Ni", "expireAt": "1983-10-30T00:00:00Z"}, "debitPayload": {"count": 81, "currencyCode": "pi8CJ88aMPGFFAQZ", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 78, "entitlementCollectionId": "fbmVTEbiRq5Juikm", "entitlementOrigin": "Nintendo", "itemIdentity": "VlYQi9cfMCeNnu6O", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 67, "entitlementId": "Cwv8H1f451FVZ630"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 69, "currencyCode": "BYZSrz7pMjESLLMP", "expireAt": "1988-12-31T00:00:00Z"}, "debitPayload": {"count": 60, "currencyCode": "qwH9J6JLb5f3SBMy", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 96, "entitlementCollectionId": "Sf1srB7hGwGbUmQm", "entitlementOrigin": "Twitch", "itemIdentity": "GnPEgY0t7QQWl42b", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 35, "entitlementId": "OwXgKyPhXmcysae8"}, "type": "DEBIT_WALLET"}], "userId": "pWH4xiz3fWthJSu2"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 95, "currencyCode": "bWHb5sbX6asrjV7X", "expireAt": "1989-12-15T00:00:00Z"}, "debitPayload": {"count": 95, "currencyCode": "bWvSSp71zEPPfmAQ", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 34, "entitlementCollectionId": "b2H2THLwZGikW7TF", "entitlementOrigin": "Playstation", "itemIdentity": "aDqUITBHQR5ISNoF", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 95, "entitlementId": "EHbiKHW7flVolAWE"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 100, "currencyCode": "SPDTRqjlvwnnCA5t", "expireAt": "1973-02-14T00:00:00Z"}, "debitPayload": {"count": 75, "currencyCode": "bq8xoCurq4lpHXrb", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 56, "entitlementCollectionId": "UdgNlyU4IJnqtrjC", "entitlementOrigin": "Xbox", "itemIdentity": "6ya8u4sQPvaf1Acw", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 59, "entitlementId": "R7tJW3MLMob1hUnI"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "System", "count": 70, "currencyCode": "MyF7CcNu2DYn6E9G", "expireAt": "1976-10-25T00:00:00Z"}, "debitPayload": {"count": 47, "currencyCode": "1kOTJZluTekDMCGU", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 83, "entitlementCollectionId": "ERxNg8djSb4Vt2vK", "entitlementOrigin": "Oculus", "itemIdentity": "5vlCdI519Pf2iogw", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 16, "entitlementId": "M5DZM0dgozmco417"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "xdYQg34WUV0WpmsQ"}], "metadata": {"np1n4YGumTKOlDOy": {}, "5vhSkxERZ2AQ1jvX": {}, "YBar5RMmmGdWl0wp": {}}, "needPreCheck": false, "transactionId": "z70LFQMI0oZuEjY0", "type": "rNBbbB9txAvtRQvq"}' --login_with_auth "Bearer foo"
platform-get-trade-history-by-criteria --login_with_auth "Bearer foo"
platform-get-trade-history-by-transaction-id 'JacXR2Rf4noXDFaE' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'UkPUBnB0ZEJH3ebM' --body '{"achievements": [{"id": "71Tg922xiBgHSka0", "value": 86}, {"id": "qRBeSc5uShoj3dGH", "value": 79}, {"id": "1l70pcZgIn4lPghH", "value": 49}], "steamUserId": "05IT9Agsjl5NmnSH"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'hxNmCe4txY0MsPc9' 'EMgf9JCJiEvhL8Zf' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'wCVJW9yspUOyHC9e' --body '{"achievements": [{"id": "KeXzrvzBllwzyC1a", "percentComplete": 93}, {"id": "TCZs97TJI8GPrM24", "percentComplete": 64}, {"id": "id4mRoFNxv10ckMQ", "percentComplete": 97}], "serviceConfigId": "O3nR8j8DlP6OGbn8", "titleId": "vmfMYGLt1AjKhh3J", "xboxUserId": "MX7xSrz1EH6X2SM3"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'xzsNrJzWBcdFlo7o' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'AsOlfLB1J19b5rTf' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'iL2P3r1a8KIJH33a' --login_with_auth "Bearer foo"
platform-anonymize-integration 'KkPuWD59MgTy1HA5' --login_with_auth "Bearer foo"
platform-anonymize-order '8Jt5NaROjSKFEuZo' --login_with_auth "Bearer foo"
platform-anonymize-payment '2ElXYSS4ezBRSiOy' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'ReviDaxlPdhwmcH0' --login_with_auth "Bearer foo"
platform-anonymize-subscription '3yoMxzRR6xd9rTh3' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'ureaIbxM3Wev9pZQ' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'jWAN0tny16ZHZtuS' 'XBOX' --login_with_auth "Bearer foo"
platform-get-user-dlc 'qOHaLwYnXxrz7sLm' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'P70LxN0f3JA27Qz5' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'SjzQfOLYu9O46OOz' --body '[{"collectionId": "z9p57qSpHerzO87c", "endDate": "1974-04-11T00:00:00Z", "grantedCode": "7TqtMiQgi7Aj28qC", "itemId": "RbwwZc4ZS1NMkrnH", "itemNamespace": "s1Iyhwqk140MolIr", "language": "rM", "origin": "Epic", "quantity": 71, "region": "cX435TDYpkk2Gza6", "source": "REFERRAL_BONUS", "startDate": "1988-05-25T00:00:00Z", "storeId": "Fe2bzr6qQw6fSESk"}, {"collectionId": "M19OPMBb12gpmShl", "endDate": "1977-06-20T00:00:00Z", "grantedCode": "It2nfhUaZGqjslu5", "itemId": "9GT2E6AacmZRXZm6", "itemNamespace": "26POXWVj3KP1mX0i", "language": "zScM-PXUw", "origin": "Nintendo", "quantity": 96, "region": "307IORTyHnLYDAAg", "source": "IAP", "startDate": "1997-07-20T00:00:00Z", "storeId": "A4kZURmoGgxVRMPf"}, {"collectionId": "8g1rbhfIMStMnSqr", "endDate": "1989-05-16T00:00:00Z", "grantedCode": "WYOuITlYS2RYaD9W", "itemId": "NKGhbLhjz1v0RBIO", "itemNamespace": "2rkJGmPaK6HEVIQJ", "language": "aq-bWQK-yu", "origin": "Nintendo", "quantity": 18, "region": "WVZZbKFsKOmgEhjH", "source": "GIFT", "startDate": "1982-09-17T00:00:00Z", "storeId": "n6iQyr5cb5YL6fwB"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'iaVPmmn0T5uzlmi2' 'NY26xrkPPdg3pXjm' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'tpNfCrIj9ntYo3du' 'GAME' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id '4d3kSbTkHPMUvOAU' 'Xkw36cr2WJQqS7Tq' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids '4YIyZAFQ6lZfa2jd' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'NvpWf32JS1av9VNp' 'VLT0LvqcfSdO1nAj' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'Y5FvADb3GUQgci63' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids '2w6LUrHuKBoNTpPQ' '["XDNHto74GcmVf0fb", "CU9QdPuWeMEeL0EJ", "G67g4W1eAmDxP23q"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'stMuikKc6VNU8570' 'siWm3V9sirE0JOQx' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'WeHypqCWMDPRI2cC' 'k8zHR8VyCC0EQwE0' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'cXokXbwKDtVmrYQu' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku '7hZvHfiT9s9pK8Hu' 'UY1QQHQ0NCEddJtx' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements '6GV01vD7lNLxlpvq' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'aB9P9GaukfCEIeSB' 'LhTfzigzHcRuJgYa' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'j4I8Dzyh1N0JEKNo' 'MtHvjM7X1fjzknv2' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'HZMIL2P2bh14LroF' 'TnAuujPeP9N0vdVB' --body '{"collectionId": "5a2XkS3XQfMuzZh4", "endDate": "1984-09-11T00:00:00Z", "nullFieldList": ["hZRe2hgU56xtyJtn", "bTDXu7FbleSP5Pcd", "Ouq0m0rvakR8rcwo"], "origin": "IOS", "reason": "gdJDujYnVnFK6gB6", "startDate": "1997-04-26T00:00:00Z", "status": "REVOKED", "useCount": 7}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'C6yYUVUJYnQ3jOGm' 'ROIqxqQ0gcNeTfly' --body '{"options": ["vUh3w5ZtfwmOCKpF", "SMF0tfGIZCTNiIRc", "9fEjkZhEpAJMCxMp"], "platform": "2J0hDg2kMgkvhoQe", "requestId": "9gD9tGN0nE7M36mI", "useCount": 47}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'u3EeZtLQij2JXsqd' 'XfhZTTaCeqGv7meu' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'QhJuq1C6JHkWMSUb' 'qByWN2BCnRz9w2nu' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'r0B9jKaunAcylsau' '7wRQmL4i3eRyIECE' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'Da1I4lwXqwPfq3Vz' 'HQjtolx64w1gyvja' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement-by-use-count 'cKtGqxMnoAXRlcq0' 'mYWKQYlqMmu2pvF6' --body '{"reason": "rP03bQaq1cT88H6R", "useCount": 59}' --login_with_auth "Bearer foo"
platform-pre-check-revoke-user-entitlement-by-use-count 'zsbrtYvLh56AWXoM' 'iowdWSs9DQ0VU1HE' '60' --login_with_auth "Bearer foo"
platform-sell-user-entitlement 'UT6mma833TDzk66i' 'x88sAUrXr7MXxCvy' --body '{"platform": "y7caxz4MQrODLNlx", "requestId": "iEjQBCZx9DJ4V97S", "useCount": 72}' --login_with_auth "Bearer foo"
platform-fulfill-item 'lLg4bsO4YHEYLjTS' --body '{"duration": 80, "endDate": "1990-08-29T00:00:00Z", "entitlementCollectionId": "x4rV4CXVMrDYKe2e", "entitlementOrigin": "Other", "itemId": "f1axo16GqT2vSLLi", "itemSku": "Mvcu39YZJypWzpNX", "language": "gnoKIz8O8NglJtZT", "metadata": {"h280vflFMxIhlIT8": {}, "AgyZJ16MMd2bzOrT": {}, "n2huwPgyUzBUWiKo": {}}, "order": {"currency": {"currencyCode": "NGtvyk5xEfrJDxKs", "currencySymbol": "w5Xl7ZZrDZdbuvCF", "currencyType": "VIRTUAL", "decimals": 1, "namespace": "TGkO6aIYqftw1SrM"}, "ext": {"2nhSEanfUYrMU6A4": {}, "3UKGpvC1cr5T1PSX": {}, "hduTWchzXDv3TAtB": {}}, "free": false}, "orderNo": "Ywv7atn9EQv2Oj8T", "origin": "System", "overrideBundleItemQty": {"mNL8p6AbdtU0CDrl": 87, "uzrmbWofEaKStqdK": 42, "dmMDikc3Fjm9HoQD": 9}, "quantity": 96, "region": "mtiQvURYZCeF30RT", "source": "ACHIEVEMENT", "startDate": "1980-08-05T00:00:00Z", "storeId": "BgM8o7lxXq7TkdM7"}' --login_with_auth "Bearer foo"
platform-redeem-code 'FVDCBcvVegrZddP8' --body '{"code": "lLQo6tHj4z4cAM4L", "language": "ckFt-bHHR-155", "region": "EtEs2LpE0qfbvdU8"}' --login_with_auth "Bearer foo"
platform-pre-check-fulfill-item 'hlDoC9FnxqBlPBYJ' --body '{"itemId": "7X6uVy7FWTSfMi2C", "itemSku": "PVGxjcdpdCqVeePM", "quantity": 91}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'Yq306Pysv4VPaZWo' --body '{"entitlementCollectionId": "lXypwucUqqqff2iW", "entitlementOrigin": "IOS", "metadata": {"ZSvgWuCuLsUGrVQA": {}, "bhS54ZuQHKersDmJ": {}, "LUHAKtfXCKOna8Dd": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "ZeO4U55wdCpVpnEN", "namespace": "iTc9NESV22eRBElD"}, "item": {"itemId": "4K2Cy1tJcPAEkCeV", "itemName": "29QsQk100eu5Ucxu", "itemSku": "XXpt0YSPX04uEIdA", "itemType": "wgDobopbdJeVCiKs"}, "quantity": 40, "type": "ITEM"}, {"currency": {"currencyCode": "CaIv4Lp91wYUJPbv", "namespace": "zn8TYoMDAaUXSuBQ"}, "item": {"itemId": "dvdhJoT0WK5ngNUx", "itemName": "DKfZYofPGUbSaA00", "itemSku": "nKxQjYU6KlavIiLx", "itemType": "U2I1GyJS48Hxu8Ju"}, "quantity": 35, "type": "CURRENCY"}, {"currency": {"currencyCode": "AnlXRYB9BgSZBvke", "namespace": "hRn83B0nrW1qx3NJ"}, "item": {"itemId": "TugVWXz8dv7BiEUq", "itemName": "nzxs2deMF8UAJIHE", "itemSku": "Zv5zyUUyNJkvA5xF", "itemType": "3zHtZSd3QzXhkrN4"}, "quantity": 31, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "ryt4XTNwpp0ni1Yf"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'IgLZ4YIzElrLZOBL' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'HCKmLBaIwlokbAFW' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history '8RgBUwBL28BqM8Uz' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'vKqeoTiNKGRUMrim' --body '{"itemIdentityType": "ITEM_SKU", "language": "aIpp_Njup-094", "productId": "F2Pav11FuU8iXCRz", "region": "8KgqgwijYxpGhsFA", "transactionId": "rq6lolbj7QKvtVRC", "type": "TWITCH"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'Mjr5M3vw1GqUjjFp' --login_with_auth "Bearer foo"
platform-admin-create-user-order '6R8mYZwKftVqSECs' --body '{"currencyCode": "ypS42NmYQ8HlHbHn", "currencyNamespace": "fs4tLVOYQCWMktmi", "discountCodes": ["Kd9vLPP0w52JRAZx", "MWdoleYNHXeOpaRD", "wYLge851PbK2MFKv"], "discountedPrice": 47, "entitlementPlatform": "Steam", "ext": {"5TWjAh4gy41LLzQ2": {}, "IjY5PeNr4JmYxH2q": {}, "s28hePJjMp0TKKUB": {}}, "itemId": "fPNI9f2oLWDPSZex", "language": "fKVxqdxmh5QWxuQu", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 7, "quantity": 10, "region": "DTDb3WdnOpzTrRzC", "returnUrl": "CafADJfWBspT3MLw", "sandbox": false, "sectionId": "ZquMQSPp5XD4S1il"}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'fgff7Et4uY8nlBwG' 'NHgfgwZwVMvshGms' --login_with_auth "Bearer foo"
platform-get-user-order 'g6ZJYnkHDnHTlRug' 'M7a2UZgeesipbP02' --login_with_auth "Bearer foo"
platform-update-user-order-status '7okM5E8tAajVSvLR' 'j306RDuaSixXEdlo' --body '{"status": "DELETED", "statusReason": "ZBkatNLc42eq0O6V"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'sXtOlQwj5xPvm7c5' 'nPR0Y1sffUaZ64dF' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'piv8o9Gw4QtKgyIe' 'ySoUxoMrj2J4JGQZ' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'AtyjTxnlmSyjEaFH' '2DRN6HIEqIFEcS0y' --body '{"additionalData": {"cardSummary": "nIMOYWpUYUQMooiK"}, "authorisedTime": "1994-11-06T00:00:00Z", "chargebackReversedTime": "1999-05-19T00:00:00Z", "chargebackTime": "1975-04-10T00:00:00Z", "chargedTime": "1984-01-11T00:00:00Z", "createdTime": "1975-03-20T00:00:00Z", "currency": {"currencyCode": "kCh6q0yq2WAHtL7I", "currencySymbol": "WE3MFqvfDG5jvMOa", "currencyType": "VIRTUAL", "decimals": 3, "namespace": "DlEX42U0syrGNhBm"}, "customParameters": {"gT2q0kIbrJ2S5Pf1": {}, "Lvg8kYEVylINJpxF": {}, "Y8E6pU8eHjh0aTjI": {}}, "extOrderNo": "OaQt0snbE0yMvqF7", "extTxId": "TJ9uB0zypjJiu7BI", "extUserId": "imNuwB3hBVhuSMHh", "issuedAt": "1973-05-21T00:00:00Z", "metadata": {"5R2MkxQTAYGfE6hX": "Z7XLoWCGf0dZEeXB", "d6mGG6SHcZbX2wNn": "T6A9zosmDnXoncy7", "NZQ4PkAPXBCfkE1F": "b0y94eP7yh0zsKhR"}, "namespace": "60HZwUwk48XK7MXH", "nonceStr": "bEwAvvpEeHhXiJcJ", "paymentData": {"discountAmount": 33, "discountCode": "PZ86WNnQOhusPn44", "subtotalPrice": 1, "tax": 82, "totalPrice": 41}, "paymentMethod": "zsTqEFXUhGAwpYq1", "paymentMethodFee": 96, "paymentOrderNo": "9vBRJ4UP09fabC01", "paymentProvider": "WALLET", "paymentProviderFee": 15, "paymentStationUrl": "g57BYBVCbi0ifdPy", "price": 74, "refundedTime": "1981-02-11T00:00:00Z", "salesTax": 20, "sandbox": true, "sku": "SwHekWIz4rXlH5jw", "status": "INIT", "statusReason": "HxCjXWcaXBcfXXeV", "subscriptionId": "7BXefsSgZxSYnVwX", "subtotalPrice": 34, "targetNamespace": "XEbnmWR0H3EkrHqa", "targetUserId": "LNdfKszYZzOg113h", "tax": 66, "totalPrice": 10, "totalTax": 5, "txEndTime": "1988-04-08T00:00:00Z", "type": "aHSx5bClxUOBmMwv", "userId": "5pmiIVnhlLoMemsp", "vat": 51}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'o3F2LQw7Y2VdSxgX' 'ez7VvS0C9JLVQQPa' --login_with_auth "Bearer foo"
platform-create-user-payment-order '7PPx4Zi6WaC8wk7H' --body '{"currencyCode": "MbJhNwZgf5nlMDOR", "currencyNamespace": "YuXnPNJgayPFcyUn", "customParameters": {"KXA3mcyMmX6WF8jt": {}, "NAVOYqSH533YlJ93": {}, "CCGBXv4fP4VPzhcH": {}}, "description": "4UJrrCKvrOAi7lMg", "extOrderNo": "kVWJYzSCIDxWUxgO", "extUserId": "zeRNHIqK5PT404mF", "itemType": "INGAMEITEM", "language": "ii-Sunx", "metadata": {"MOFES2J2OzNlJE3u": "qZz574g31cA0PwZx", "TIZVSGQyTzhs9Asy": "4d629N4YnolVWA2d", "WxBs056jkPCUuE1p": "gdHvlQKiR7SDQUDa"}, "notifyUrl": "vOlKT5EIHNhJQq94", "omitNotification": false, "platform": "qNZrLCRRUysya4J3", "price": 36, "recurringPaymentOrderNo": "u3n32atB0QPQPEp5", "region": "UtwUWGt6tooHP5kA", "returnUrl": "ww01zalTddhAQ1pw", "sandbox": true, "sku": "lf6j8PZOzUiQKZqz", "subscriptionId": "5NSp0B7LODN3Boi2", "title": "sSAO2n4MZQt753XQ"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'B93rOW0guPoQbYzc' '1RDVhs2lhdzxxgib' --body '{"description": "uqUuyW3cMz9YyduM"}' --login_with_auth "Bearer foo"
platform-get-user-platform-account-closure-histories 'omEHcU15St4v8ry8' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'IyqNVv0KVpXJTMx3' --body '{"code": "Y8Um1iqehObg3OZ9", "orderNo": "j0HDtbqMFlgHKQIR"}' --login_with_auth "Bearer foo"
platform-do-revocation 'tLfPngD83roOeqE7' --body '{"meta": {"fcCAeExeQX43Lpmd": {}, "MiZeyIrA4QUKSJgE": {}, "CzvaWUCA7wKru7ry": {}}, "reason": "3AQ2sEHvSxjWoM1r", "revokeEntries": [{"currency": {"balanceOrigin": "Xbox", "currencyCode": "QIN5jC6a8mEVCXHm", "namespace": "FnrSL0PJcZQaCeNL"}, "entitlement": {"entitlementId": "YxMID9pqZ5rryiMM"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "ZvUVInos5RK100yH", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 40, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "PXRL8cbTAntB1STa", "namespace": "ab1UeibXg7RCe5Bt"}, "entitlement": {"entitlementId": "Kcwj6PqqOgCimr3Z"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "NBBkrXu9czsYr3cF", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 47, "type": "ITEM"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "xdNTuOdLKK0M2B2h", "namespace": "bqJin37P69t1KqeG"}, "entitlement": {"entitlementId": "z7qbPnXEuOzzkoBm"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "MjLqwmVz3zKsfjz1", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 45, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "yxoUzfMFoXCOguSq"}' --login_with_auth "Bearer foo"
platform-register-xbl-sessions '2A4R3wDdSkNfHJtA' --body '{"gameSessionId": "3QiX9ZvtydbaVb0s", "payload": {"cd97A0GP6djn2Ps3": {}, "IVT5hUZ3cnDq0ddZ": {}, "G0EpfGAqHKcSxUc2": {}}, "scid": "YgRpk2IFGIgIpscU", "sessionTemplateName": "pVAciu2XPPUxzXHU"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'vxhvTZcvRKoaM4oz' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'SAg8FTLrByWOJhbo' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'coGlPzdfxcC3rpWh' --body '{"grantDays": 90, "itemId": "1cBXLwTfopqeZtHJ", "language": "nRgaGfLMFbvyI5PZ", "reason": "GzVLcmZKKKYARape", "region": "2tsNczam4Cdd1QYv", "source": "ww4XDokltgq2vXtU"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'nY6UhDJ4pe0s0Cuh' 'l3dU9b4seYCyiB4t' --login_with_auth "Bearer foo"
platform-get-user-subscription 'DCWx3cEX8wTi1v2a' 'bpCWytPEi9Ze0hL9' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'rPkV5GkSrcl2O47X' 'VzU7qlNVk7qnmBS3' --login_with_auth "Bearer foo"
platform-cancel-subscription 'XKDhp1OkMcErmeH0' 'lX1hj0LaXgQ94flh' --body '{"immediate": true, "reason": "75AQfzNjQ7IuMSY2"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'epRDJjDyMDKQhuTj' 'tQZyIiAmCL8bNTTf' --body '{"grantDays": 34, "reason": "CFkyiQZfMnTbKdwN"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'hiIP7dpJ8B8VwFQn' 'Vco2oCn1KvJmbjap' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'W9UlEqtzDd7Sgxdx' 'B5kvtM8ah9bPsksc' --body '{"additionalData": {"cardSummary": "eGUEX8ERZcKSYLo6"}, "authorisedTime": "1983-07-24T00:00:00Z", "chargebackReversedTime": "1988-10-15T00:00:00Z", "chargebackTime": "1999-11-11T00:00:00Z", "chargedTime": "1996-04-27T00:00:00Z", "createdTime": "1990-06-28T00:00:00Z", "currency": {"currencyCode": "Ig3MgmdSvWp3h0xP", "currencySymbol": "sVY8qNwB2TY4v9NN", "currencyType": "REAL", "decimals": 82, "namespace": "QSYLFKSl3FNFFJnt"}, "customParameters": {"3rIwZdW02Su6aCnL": {}, "816aH6gOBUIMeL0G": {}, "L3aefSDME8X2MxIL": {}}, "extOrderNo": "I42BJMPkZmay4Csy", "extTxId": "e3iJLtjsu6ZJRCoD", "extUserId": "q3geuHFFaZzPIjET", "issuedAt": "1979-06-24T00:00:00Z", "metadata": {"cKN1gaQ4Bn0cPPtK": "aJlw31pdDrXQ47WS", "GyDCKF0LLhO3lGZ7": "eGOPj2XoFug8BUQU", "mPHnPumcazKAna0j": "i757aNDFeKnQP2j2"}, "namespace": "WsQImTwYkiuxzLrb", "nonceStr": "J0BkGzCNgesQlZZH", "paymentData": {"discountAmount": 70, "discountCode": "kUxyZ1OH5Nn4nMT8", "subtotalPrice": 87, "tax": 50, "totalPrice": 84}, "paymentMethod": "yzezsHdFftHHR6xb", "paymentMethodFee": 5, "paymentOrderNo": "QcpBWSNrCjSNEAdo", "paymentProvider": "CHECKOUT", "paymentProviderFee": 21, "paymentStationUrl": "TvCPrrZCTU5WUJiz", "price": 64, "refundedTime": "1981-03-19T00:00:00Z", "salesTax": 31, "sandbox": true, "sku": "o0qJtqp4Q6XgICLg", "status": "REFUNDED", "statusReason": "pFgA7i9tqvfHmFvU", "subscriptionId": "ZiUW5Y0CYw5OXSGw", "subtotalPrice": 87, "targetNamespace": "69D1MMoaf6KlgRtw", "targetUserId": "aM2IoyY1wpIdjcAt", "tax": 94, "totalPrice": 18, "totalTax": 20, "txEndTime": "1975-10-09T00:00:00Z", "type": "fCh7sieJjZPAkiWu", "userId": "mllU31uXPwYxedGH", "vat": 59}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'K5Y5heA2ewWnFcqH' 'xXP3kRhtrBcBofWT' --body '{"count": 67, "orderNo": "B4yRaDxvxwaLM8Hk"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'VOW8PnLkgqkqYZWP' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'ZTgKagTzdcYcko7U' '3gH239LhRx2Laa2R' --body '{"allowOverdraft": false, "amount": 82, "balanceOrigin": "Oculus", "balanceSource": "PAYMENT", "metadata": {"Vb6VgA5yFIH3s9Uy": {}, "eaFi8OE7BCK4FeVG": {}, "rl5NpUG9zblWEiHa": {}}, "reason": "UjyTHb0sSlstb3sl"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'Ue94NxhXsVcqTYi1' 'TMBMzaOrxuKvtUVt' --login_with_auth "Bearer foo"
platform-check-balance '{"amount": 34, "debitBalanceSource": "EXPIRATION", "metadata": {"bDWnJ2i9TRmJOqIl": {}, "7U12hO5vpk9DOSgb": {}, "sdGVPLD9A5NmuZDU": {}}, "reason": "V3yHurgOfba1XeoH", "walletPlatform": "Playstation"}' 'TNoRol84UlkxtP5V' 'ok9sNK1ORg3tChsS' --login_with_auth "Bearer foo"
platform-credit-user-wallet '3fFpaS1uq1mH3oYf' 'PK2QiAUhIfi17Yrk' --body '{"amount": 85, "expireAt": "1988-07-12T00:00:00Z", "metadata": {"NxiaNyqBfgw58Hx0": {}, "XYL0fJOPYpnPqGlP": {}, "nhBDOWqDU8N3DjVU": {}}, "origin": "Oculus", "reason": "qyBzWzCgMMWZuD6t", "source": "GIFT"}' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform '{"amount": 71, "debitBalanceSource": "TRADE", "metadata": {"R28xVxbtpSKOfiIP": {}, "3S6pypZqISn3msry": {}, "kQFtW8QGKFZLrIfq": {}}, "reason": "rZuu7IwKcT7sAsv2", "walletPlatform": "Steam"}' 'GoeMsezFZsTBHkgc' 'J0DcEt23pci6xElj' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'er6aGJx5OFp3jKEx' '4aSGdwTPX4ig3NVF' --body '{"amount": 65, "metadata": {"Uz8nWKJjv06PuffH": {}, "ghAQfAsYXVzBenLt": {}, "aAoYyRfiCWrm3s1A": {}}, "walletPlatform": "GooglePlay"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'Juc2SNBaOlXfgsgB' --body '{"displayOrder": 7, "localizations": {"8jKedx0CVRpd7SwZ": {"description": "w2UkjDzJ4NuMMgI1", "localExt": {"3nplXaUQV5QEvKEl": {}, "LfbB7gwwAR1xFrny": {}, "irw3iJt5iA3JS2xe": {}}, "longDescription": "aJ08JrSHPqdhKHn6", "title": "ZjZMdr1C2TIQzRJY"}, "7UfYSrdN0JVz4U43": {"description": "EcV1FRyeeqehMNeR", "localExt": {"YKeMbL0G4v5D6ylZ": {}, "guO918X7rLoexHBM": {}, "BMMAYokSWFwajRGU": {}}, "longDescription": "yklfLVY6g3PO4hKA", "title": "eF4GUV5m96qcCJsV"}, "OWtu5RPsqd66ImBE": {"description": "uhnaxZVf6MD9r1y5", "localExt": {"Ihr531Kajxq7lzuV": {}, "RVEvhKIbrq1xsGpd": {}, "obYun8hcO55hVjfW": {}}, "longDescription": "yK02w5QytAmkanuk", "title": "AzAMaRvIUhUwguGg"}}, "name": "bLLN3O7CEYjxqElP"}' --login_with_auth "Bearer foo"
platform-get-view '5lA2FJ0iGLRTXGsC' --login_with_auth "Bearer foo"
platform-update-view '5mxxse4eeuMgEctV' 'Eux2MSuwsEHlwdeJ' --body '{"displayOrder": 50, "localizations": {"DX4mu0qPHb9Ll2EF": {"description": "Eb8GnsthmQ2Y6ZGO", "localExt": {"iqrg3lpqN5bOfnqJ": {}, "5bzDRzbhMxfEDE4T": {}, "rtIHyyMq79EdB9Mx": {}}, "longDescription": "aF8QHGM2IuQYBO8m", "title": "0HgTth479W8rXqwG"}, "VIRWgTNHCka3Wb5k": {"description": "H1BrLWUetP7nmESQ", "localExt": {"DV3BD1nnEzoUlUWq": {}, "P4ElzL44KEm3uHBM": {}, "CP5ckjphURs4ksgs": {}}, "longDescription": "KJ2R6Jacwwu8W1zv", "title": "rKMRPvwA9k6yJz03"}, "NETdywPqYerrpOm4": {"description": "M2pM4fIfcHBWZM50", "localExt": {"aHbPXRns3qwYL6Lw": {}, "GlZGF7XQPLAcIL7F": {}, "vAMWqhyyNZH1Cduc": {}}, "longDescription": "B5y5iMdeBG7REG4m", "title": "eKEabfVXBJPIZqZC"}}, "name": "5d6JuFdcfiNf0DOH"}' --login_with_auth "Bearer foo"
platform-delete-view 'KwxDF5GJhCjVHiCn' '2hTefT8gPFJ4WndM' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 33, "expireAt": "1992-04-06T00:00:00Z", "metadata": {"hcLK0WTZbtmQkwC8": {}, "azx3IRWme3C6p2r4": {}, "D3NQdjrjkX3AMgK3": {}}, "origin": "Twitch", "reason": "ZAxbDPXU5xJBhIpJ", "source": "GIFT"}, "currencyCode": "b0Ap7CmSiKPjcwAw", "userIds": ["BGdX66DqPTdurR3M", "Yda0Y0BCO4qPnvxE", "5GdxpvLfa4b4hTaZ"]}, {"creditRequest": {"amount": 91, "expireAt": "1982-05-19T00:00:00Z", "metadata": {"jKasq5zQ6uZNwKjn": {}, "X7vDIqpcjmaq5KBC": {}, "sHlwNrfKJrkzwR40": {}}, "origin": "Oculus", "reason": "E2mTsn1NwJ71szsN", "source": "GIFT"}, "currencyCode": "8nlBthUSu4WNfTvD", "userIds": ["5UcES1eLMZs9lSQV", "Dp16qVIqXCK9dS5J", "TbdJEe6mnkYAfw61"]}, {"creditRequest": {"amount": 21, "expireAt": "1977-07-18T00:00:00Z", "metadata": {"K0sCUsqxKocHomtj": {}, "oU1kUqRedwIu1TSR": {}, "r6r8mzfMedpcKhvH": {}}, "origin": "Xbox", "reason": "bv60ixUuUhopdqGr", "source": "IAP"}, "currencyCode": "WGT4MXhmzvRQb7c0", "userIds": ["MqSLQDlRFYMVfiAM", "a6Pco7MfvikslpyL", "vmjWq9fQqzulLGfQ"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "9BYLVVznF6hMYfks", "request": {"allowOverdraft": false, "amount": 20, "balanceOrigin": "Nintendo", "balanceSource": "PAYMENT", "metadata": {"TteJhwNbwHGG39YA": {}, "ZJ4HuLfeTfFBTOFF": {}, "MJ9pq511jZcTK8zm": {}}, "reason": "MfyshYk3b5cAFVo8"}, "userIds": ["vZdj6AspWBfRnLcL", "5r1b8Yp2QnuhQuId", "bp7OmcrDJ7u1rrRP"]}, {"currencyCode": "cnG89rnNW1Yjfn8l", "request": {"allowOverdraft": true, "amount": 7, "balanceOrigin": "Steam", "balanceSource": "PAYMENT", "metadata": {"nYRxY8ZhHeb0CaPF": {}, "DjrSotKnpJWALpTo": {}, "j9rgr5RffM5JXvPd": {}}, "reason": "zEpDln04F8BQjzob"}, "userIds": ["ljC7gcT3M1DArk4L", "hDa8VxKOrfVfBRIf", "kStOqdXqhDMQ6tBL"]}, {"currencyCode": "80aXFY7SQkym9KvK", "request": {"allowOverdraft": false, "amount": 69, "balanceOrigin": "Oculus", "balanceSource": "OTHER", "metadata": {"i7cHTSdGoLZbC3UJ": {}, "ruU4uIXBZsEYogFW": {}, "iH9z4E8zmaZ5cg0R": {}}, "reason": "EtUWY4fVIdqwCWF5"}, "userIds": ["wmbOubTxAAeDCowR", "3MeCNL1oNrF3Smgu", "dQusJLsPlW7ZyORF"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'kN9EbKbTbrDzNgVE' 'cw0lxRam16O6v4Vj' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["Jf40LjUdORELVXUF", "QyVlt9jmxmxpfp41", "k1uDg59PhdUXShab"], "apiKey": "wyYCxTHrDel8oThv", "authoriseAsCapture": true, "blockedPaymentMethods": ["KIOGT1WKSmLoA0IL", "aESC1GJXsoBwqh0T", "QXa2j7v3zQJoQLTA"], "clientKey": "lW75icIKUpXazsFr", "dropInSettings": "maGNoi3RPTgWotLN", "liveEndpointUrlPrefix": "z0u8ySxA0yrjz4q7", "merchantAccount": "e0EJnADXC2y0DY1E", "notificationHmacKey": "1SMK9oA4vK56dsYI", "notificationPassword": "5SKV5pDANyJ184mi", "notificationUsername": "BhdVJt81fmLSyGuu", "returnUrl": "5rbJVIwRMtwApGbX", "settings": "nR3yC6f2MHGGedk0"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "KzXRclOXdPYZQxBn", "privateKey": "ttu4yW5etl4Xk8Hd", "publicKey": "1lRtoPMvsu9oswEP", "returnUrl": "TvzwwGnpbx8MCIjK"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "zylqW8auyseP9wEE", "secretKey": "yYAnHPp4XzVL5Mcg"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-neon-pay-config --body '{"apiKey": "lFCrjxqqxAYqXG2V", "webhookSecretKey": "3baMkZ9JCqBIkUID"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "0EE9InZNLwwAhW2b", "clientSecret": "5OHKtUv4lTkQNjxh", "returnUrl": "Xdj1CG0EBgst9Qu8", "webHookId": "Ofl2oB8VTjF0pD3N"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["HU8iYUOtG5gbQSKW", "2MdgCH4bWxRF6fBP", "a6GOuV5z0p8jaJs2"], "publishableKey": "duQqawPrxi6F4elh", "secretKey": "y9CZ94CAUVW8FoEf", "webhookSecret": "8tjCjWc22qqDfNz5"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "9jHwSDQHadmAo0lz", "key": "hPm7RmaOr6TLwVyE", "mchid": "42ApAb7CKt79wAop", "returnUrl": "ZL9Cw6K9h55mwUvh"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "dBOgumV4wAsd4ifG", "flowCompletionUrl": "d0bkWrlhtfTywRW4", "merchantId": 11, "projectId": 56, "projectSecretKey": "mg6btk3mAO4EtB0h"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config-1 'n2x1oTOX5gBQlVDx' --login_with_auth "Bearer foo"
platform-update-adyen-config '9neFHWhDRJtyYEt7' --body '{"allowedPaymentMethods": ["ygZleAoUuVKneoO1", "0ytPdJ8SY3qoogOx", "oPYvdIBJYyGURjEj"], "apiKey": "nslEYM8ngVT1ewVx", "authoriseAsCapture": true, "blockedPaymentMethods": ["KHUHg0c4X7fHdITm", "N9opaF0kh3pCRB3i", "nfEVxArF7TB6A6a7"], "clientKey": "1zAJpaPeudUtKPJU", "dropInSettings": "mAvxBxJNPlvvYZw4", "liveEndpointUrlPrefix": "MWzWFTuNPf5JCSDy", "merchantAccount": "Yy4e5qoTZxSoZbQU", "notificationHmacKey": "nUxS6m68WL3HDL4y", "notificationPassword": "x5I0euBsccHPA2v9", "notificationUsername": "XP9enfEX7lloLgIY", "returnUrl": "qxFfSNJlHCjxLNnY", "settings": "UlGQsFpy9ZVlLIFw"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'LgT78nootfUs9559' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'ilm3cauhrw9Yn2z5' --body '{"appId": "cnbm7z2Aa24yBTw3", "privateKey": "wfNGyWf3VujS7Bq5", "publicKey": "bcfPW4pPZB9YXltC", "returnUrl": "xyztUnj17t3gHBXv"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'jvziexzOLbOWbtcJ' --login_with_auth "Bearer foo"
platform-update-checkout-config 'UxM3AWyDkA5LmART' --body '{"publicKey": "6kulpM4SRtUE5P4k", "secretKey": "xmHtFbjqurHix0QY"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'ycDH5we2Mx0sYCnY' --login_with_auth "Bearer foo"
platform-update-neon-pay-config 'PT4i4mxc14iRfzJw' --body '{"apiKey": "Kuc7EpiQEzz5N5os", "webhookSecretKey": "RYO7wbYh7q02W8tk"}' --login_with_auth "Bearer foo"
platform-test-neon-pay-config-by-id 'TURUFmqNc8xhQqpt' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'ccNorRls7EC3nDnh' --body '{"clientID": "FvDlFd7iyZpvWVJF", "clientSecret": "K6ZuvlzGCII156hI", "returnUrl": "g0g8HIxpzm9AcFhH", "webHookId": "4ZlYY3rEuHMWwQNm"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'CQmGCF963CbsOawl' --login_with_auth "Bearer foo"
platform-update-stripe-config 'RBQJH6fNekhk077g' --body '{"allowedPaymentMethodTypes": ["xaj55huTA6AvmW05", "67BFqbrPIuxKmBXL", "i6GpnqAeMvg3w0FQ"], "publishableKey": "1520WM3TxWXSdTiK", "secretKey": "dva2UREoBSFtCLy2", "webhookSecret": "CqgCG7JwJCDqkzOd"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'FwLJpIPxzLE1V9U1' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'NgpH7Oc44yjRdfqZ' --body '{"appId": "gv34GqqjelcN0GJm", "key": "PwUTWMx0MiPAjnWI", "mchid": "hFrqSn4erXEtU1Ca", "returnUrl": "D8AqsMCGBNhmUt6f"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'zYRn85brTu8F7cuC' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'Ph1TGZJmgWNHWnvO' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'BRCt4onqRo2PnMSR' --body '{"apiKey": "arKg4coy3AFpULIn", "flowCompletionUrl": "21Nf2FNgDWNC6yh7", "merchantId": 21, "projectId": 13, "projectSecretKey": "5YLaM0wmi0i1WABB"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'bq8IzZsMFLX9ZhFX' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'cFtfBS3ZIHofhwyM' --body '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "42WW2WKf5urEOpAS", "region": "BicX3ZwzZ7aVhrkm", "sandboxTaxJarApiToken": "hSOEozGOv8D0iVxz", "specials": ["PAYPAL", "PAYPAL", "ALIPAY"], "taxJarApiToken": "jld0LnREsrrB2pJ7", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'hG5SilDDIsmj4h62' --body '{"aggregate": "XSOLLA", "namespace": "dIsMKWBxF9RAIrI8", "region": "1ZR2kNzh60RQNaTE", "sandboxTaxJarApiToken": "hMXMepgzY9jLiAdM", "specials": ["CHECKOUT", "ALIPAY", "ALIPAY"], "taxJarApiToken": "IvFuN1oUsCnBmGMx", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'MHpPbvflI3LkRc1N' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "gZaoYAaCCeRgtsts", "taxJarApiToken": "U3Qecxo4bQZO3P2f", "taxJarEnabled": true, "taxJarProductCodesMapping": {"TTOVf6jrr1OL606Q": "pqCgxt0NgDSj1T6E", "deYFmrLT0HbvS4kS": "St3CyDgf6eFAiqSk", "Hi0BR2ElF6z6eJKu": "OW61akRFizqxCmud"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'SXivAL3n478mhb2I' '2yBJeCJghTrk68FW' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'FzuLBdlrKjUbgZQf' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'w6Zys3mN8fIcC9Ck' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'harfqaoMsGyv1RuS' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'STEAM' --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'dycDssUeHiVDXzSJ' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku '8kbFAyidbnXdMSwm' --login_with_auth "Bearer foo"
platform-public-get-estimated-price 'kBkKC1h6h45u0wuh' --login_with_auth "Bearer foo"
platform-public-bulk-get-items '9pY0011jSmHFTtfM' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["2mGUUpq3ix7Am7W1", "fwJnV94BrMSP31wA", "kVH75UcmNXK5RqcI"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'o9lpz9oM52vHPlwV' 'V3jlPKDEYahnlLJa' --login_with_auth "Bearer foo"
platform-public-get-app 'LCvjRKKX1brmkJDf' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'dngbQD3pO8U3W94Z' --login_with_auth "Bearer foo"
platform-public-get-item '8IW2MAL9gYHEV3wn' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"neonPayConfig": {"cancelUrl": "TZTvYYf4ZFuV6L2A", "successUrl": "ldoWWRN5wNYlFili"}, "paymentOrderNo": "YmBrqrOc0NIligBr", "paymentProvider": "CHECKOUT", "returnUrl": "kBljwRENjt04ZpyT", "ui": "TZG1LxLdySvyVqY8", "zipCode": "nxBZbHcPHEFuEVP9"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'bF07gnWDULkJPQR0' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'UJMr8ouccGH0B4LC' --login_with_auth "Bearer foo"
platform-pay 'e2h0iFCCZgFWs5s0' --body '{"token": "nT89A88GDOUClGyz"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'YgnYTdim6PkRoq5T' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'WALLET' '65KWh8ztRJkXxUAj' --login_with_auth "Bearer foo"
platform-public-get-qr-code '3jzZvEaY103YUIMu' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'SjDHz0zPWMZQNNP2' 'JqQqhISTBT1Gofv4' 'XSOLLA' 'uaZ8yCB9TVZnuzgv' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'AZJRm71EC3ENuvD8' 'CHECKOUT' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'Psp5Z3ez84KVB7He' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'WPnVeFdy5ezlCU6S' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'GzkMpTL2wxobjxAb' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'agqEmXn6U2VeV2em' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'K3JecJA4skqCbPxR' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "kIAFQh9yDdoLE2s7", "language": "CS_WU", "region": "ljPWlCWTuGO8MnfO"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'Qu3wdT4Aodp95o1R' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'kX7iW7VpCngWAv5D' --body '{"epicGamesJwtToken": "AG8dPdkKgQqjyzUZ"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'R2rFIAuALNhNCysc' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'sMBRLsWadk2OQ421' --body '{"serviceLabel": 33}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'lZEhz1QDeh05hj92' --body '{"serviceLabels": [97, 2, 45]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'ApCkVN3QchuQ6pnt' --body '{"appId": "xB648ss7rBnvQHAM", "steamId": "8gSdIybKUByHBzfv"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'gtRTPPzwJmKaLCx3' --body '{"xstsToken": "gcidEALWe6RG5wWz"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'nu5AjwR1Z4fU7ICc' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'aQtuuKUw3dUwWHhQ' 'W3I1y9tjRLVOXBMa' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type '0JiIe1AY0tUA7EKA' 'GAME' --login_with_auth "Bearer foo"
platform-public-get-user-entitlements-by-ids 'k3USNLhOBlxRBLgo' --login_with_auth "Bearer foo"
platform-public-user-entitlement-history 'hp8ByTi2F6AyUX8w' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement '77riPlPgJcLbeQf9' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'MICxX7xKyCfgwSPz' '14asyOdgn77gN8K1' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'FlNkgbFE8U4meK5g' 'rmPBsFH71VrhsISY' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'tegQbNA2WQrHTkJT' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku '1VkChD3n0c1ryAkR' 'vdPR8gx2rX5dck8N' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'FKPgT6LMehg047ax' 'U5ktNywRIvO2Sgz3' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '0hejqdktHIO1VdtM' 'Sews1TrU4FhAfKDc' --body '{"options": ["DG5bMTba1tUlFGcP", "6eL7EpWtPifmO0JK", "4dP1aZFiSkmhwVVM"], "requestId": "GkXNwMYwFyljy5bY", "useCount": 87}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement 'mxhBS6YypRW7fNnt' 'aIEtDI6MbhxkQdez' --body '{"requestId": "bmf392ersoZ2KbMb", "useCount": 73}' --login_with_auth "Bearer foo"
platform-public-split-user-entitlement 'jal0ruZmBXlGSp85' 'q6fuGfo5wSDHnyab' --body '{"useCount": 21}' --login_with_auth "Bearer foo"
platform-public-transfer-user-entitlement 'IZx0zdNAagipZwia' 'BrFrXtGMjujfHZB1' --body '{"entitlementId": "gMI1B8DXb37DffTZ", "useCount": 8}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'yQz337LLNCjIySe3' --body '{"code": "6SA5dxATLv5PkLvr", "language": "Js_nHcD", "region": "kMzKycYrhr4FnNzd"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'T4pWwIVXp9avUr6I' --body '{"excludeOldTransactions": true, "language": "QG_EWuz", "productId": "okl6MlWOl9feWO2b", "receiptData": "mOikTBJHTEm5PSey", "region": "od5L6OooYoQn9iHE", "transactionId": "qWO1cVCUIOx90FQd"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'wLi3GOQkLtpuRNeT' --body '{"epicGamesJwtToken": "1CULEMPaOU5nukyc"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'AUlkUSZKUrsxNRzF' --body '{"autoAck": false, "language": "cVQd-yEfu-944", "orderId": "5tPKPuK0K4PiMDTR", "packageName": "7LxihuOn57io0d9d", "productId": "G3yzaNbGeASX83SL", "purchaseTime": 17, "purchaseToken": "INRKQsxUO1YMxAnd", "region": "Oj5O6IBwXJjgQjgL"}' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'oJyqwFVBd1ZjaRXE' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'dWgS12bSbPgOCWUo' --body '{"currencyCode": "gizeWOPUMrqgEIsM", "price": 0.3669229893818521, "productId": "Nbfti0LoTBcNzyoC", "serviceLabel": 92}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'GiXa9nUsHCVicuJ7' --body '{"currencyCode": "onrUXVlB6xNel4Bx", "price": 0.022537415209124, "productId": "9KwFYqdhEVq3hbsA", "serviceLabels": [57, 9, 31]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'WuVIROZuqdJBi8pk' --body '{"appId": "n98VtLNkaIQJfkFD", "currencyCode": "hSeSGXtZU5SuIhMS", "language": "ie_OEqv", "price": 0.5401898759279752, "productId": "cjrb6qNeKpOxPrlG", "region": "9svdqsiVTqPbzY1y", "steamId": "xl7zeEpmSPO6KwlJ"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 'Qlj9Ii2jARwzowk9' --body '{"gameId": "OoiPdnq9KBqBwiNC", "language": "OUl-ep", "region": "dlmVGK6iolEw6IIp"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'Dc9X5ijmtDGvd9ES' --body '{"currencyCode": "dY0eTkBWA44Qqsi5", "price": 0.3882948227416627, "productId": "Ojvl5sRN2ENn1RLi", "xstsToken": "5iMPnbg7o1zYpqUs"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'liPyXZGYIW5ZDtWb' --login_with_auth "Bearer foo"
platform-public-create-user-order 'dkzPP47RcUIi2CoN' --body '{"currencyCode": "j4EG2emxKQk8cBrt", "discountCodes": ["5E8k8rzDZ08j6ICP", "QWC85MxWxvW0veFl", "75cm8YDChFi3zLvf"], "discountedPrice": 42, "ext": {"a7uykADFpinFcH2Z": {}, "MSYijqEuMfuYFUS0": {}, "79tOpZYM1XV0Op0d": {}}, "itemId": "amycnTUOoMkOppZN", "language": "WKuR_534", "price": 57, "quantity": 85, "region": "9mYBvtOwxjqyrjDA", "returnUrl": "peN5eAfRqSgH5xIu", "sectionId": "BTYOdsvNyk52MQFk"}' --login_with_auth "Bearer foo"
platform-public-preview-order-price 'VVEf36S7yPgG48bk' --body '{"currencyCode": "6PwH1tdEAJSqXA0W", "discountCodes": ["YT3GuaZVTxBlw1IW", "eXKFT4rfSbbSlDPG", "v0zWGvkc6byp3mvy"], "discountedPrice": 10, "itemId": "Z6TIs9bTi2m7eNsY", "price": 61, "quantity": 72}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'qKkeuLWDfeFeExlO' 'FjRh8mLFTJLveQSD' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'WnMQGaYRxFWia7yJ' '2d87XjA0ajvb7JcG' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'UFgp6LkyXpxJeFxh' 'gTwyO51CUpcdxL0a' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt '9VDhrqWCTXOxQUpy' 'FgZhNpOTE4toH57y' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'r01N33p1Gha8Hwpa' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'gvERZI6Cqhcknhec' 'paypal' 'v2Tw6YKhVrYkMqXk' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'Q7qlaJjSYEseBYCF' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'GoKpXx60GmEX9x2B' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'YpyKEBQ7TW7lZvDb' --body '{"currencyCode": "wFJJhBRdq8BgAI81", "itemId": "k4Gr7jVVx5l3yrH9", "language": "stPR_Hhmh", "region": "wUXxQTf5YpDUGYsJ", "returnUrl": "BEkYUrLv4qUiTkFc", "source": "LBrg2JB0WiCpVBwv"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'AffJ3btt0PpQY3Pn' 'nic80yEO8dL6Jh10' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'XMUGeDavCKradJmJ' 'FUsU418vAlmfGg9N' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'O1Z2DvnAxH3pS3jy' 'CkGKltBNE2UbhNtH' --login_with_auth "Bearer foo"
platform-public-cancel-subscription '3yYg4Qnn2uhdw7C9' 'Bx1LQOTCbAPLC3iq' --body '{"immediate": true, "reason": "rRcs3GeOsKPNlG7r"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'EXi6LEqJERpbxEq0' '7txnvZZeAf7QBuZK' --login_with_auth "Bearer foo"
platform-public-list-views '5GJlBncg8tQnJOKH' --login_with_auth "Bearer foo"
platform-public-get-wallet 'C16xjJZ4kiU3N855' '6ll2LQWpdESOBV7w' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'ZJsg7wSv9lyRyTdY' 'BUljvBzvYNEtfgBF' --login_with_auth "Bearer foo"
platform-public-get-my-dlc-content 'OCULUS' --login_with_auth "Bearer foo"
platform-query-fulfillments --login_with_auth "Bearer foo"
platform-query-items-v2 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'ktyoNSsEHlzyd0Sa' --body '{"itemIds": ["rkhltUxgbN5eElQN", "ESFLD8hCc9onSNjb", "QEqFGwnDG8kz4kvE"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 'v6tNjGRhrmRAxRGe' --body '{"entitlementCollectionId": "IKGlCJmDXpjyvLSH", "entitlementOrigin": "Steam", "metadata": {"BG9a1TZ87ltClc3R": {}, "DXF5055tUlenimjI": {}, "bm0riCaNp8dUBDin": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "5FzYMf1jaCgZosnt", "namespace": "PzP1vXXB92q150WE"}, "item": {"itemId": "IetOXMt37MXy7Fp7", "itemName": "lUfQqXrqGadwvKlJ", "itemSku": "FX1ZHV9yo9Ur1hfh", "itemType": "mGEKuVUZdCacRGat"}, "quantity": 1, "type": "ITEM"}, {"currency": {"currencyCode": "rcgTcA71dtqtSUN4", "namespace": "zvBzGh3mhIDNuMBZ"}, "item": {"itemId": "egHtB9uTCiiIoMZC", "itemName": "jGiOZJpUf9RpcfEQ", "itemSku": "n0O6D8PGQuazAypg", "itemType": "WhTED5YmPTBUkm2F"}, "quantity": 49, "type": "ITEM"}, {"currency": {"currencyCode": "vdguCYVqFyIKh1Yt", "namespace": "TY4AejyQc5Dac7hS"}, "item": {"itemId": "LldWx5DyniVESUgr", "itemName": "ROrP1ip3jNG68DBy", "itemSku": "f2UMPtigq9zOQOcA", "itemType": "qBj0bXhOr9OHt6zx"}, "quantity": 36, "type": "CURRENCY"}], "source": "IAP_CHARGEBACK_REVERSED", "transactionId": "2W3GY7tdh8hHlQyM"}' --login_with_auth "Bearer foo"
platform-fulfill-items 'lgfkTsAThLyflAqq' 'AP4M78smYdyge6Dr' --body '{"items": [{"duration": 29, "endDate": "1982-11-27T00:00:00Z", "entitlementCollectionId": "yYPUZHyLGQ52IjGp", "entitlementOrigin": "Other", "itemId": "JCUJpscOTkWETSJ0", "itemSku": "4c5MGInO4yznh2Yp", "language": "ZvvmziSSiSpXeWOG", "metadata": {"ayfRkQvoN06SpNOn": {}, "uSksfm7hcIFdkdrw": {}, "AcK2lUda9h9Fgvfh": {}}, "orderNo": "iLEAkA7n6516ydoR", "origin": "System", "quantity": 34, "region": "RpgjooaBVemsbkaX", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1971-10-31T00:00:00Z", "storeId": "j9rZpkSntuOeaPAy"}, {"duration": 86, "endDate": "1971-02-08T00:00:00Z", "entitlementCollectionId": "HJvD0lL7aZUY9d1I", "entitlementOrigin": "GooglePlay", "itemId": "CHniVSn1gYGal5Nr", "itemSku": "BtT0om9OlGzpF25q", "language": "u98RhktX6qwkXbCL", "metadata": {"bh8t0zPkQWRUlgE0": {}, "kxzFMq9ttbEHAEV7": {}, "C65Ans9SquNSJIay": {}}, "orderNo": "5VdUdYy9Y9OCSmmT", "origin": "Playstation", "quantity": 99, "region": "PiANv2Ar8yXV6qf6", "source": "PROMOTION", "startDate": "1995-08-27T00:00:00Z", "storeId": "gcJPZPUh2nHQwpWi"}, {"duration": 93, "endDate": "1988-10-15T00:00:00Z", "entitlementCollectionId": "Z6C0VJ0fK2m6lQ5A", "entitlementOrigin": "Nintendo", "itemId": "kv8V98cupW0L5Wsi", "itemSku": "uITRMSPOUfWQwr4P", "language": "Yf48r66MaToxBili", "metadata": {"y2vtRkpqL6KrVcNz": {}, "83J57t6OcYPQ5bk5": {}, "IeuAi3zWFGorCbnc": {}}, "orderNo": "oj5RvEtXiKyUGdNf", "origin": "Xbox", "quantity": 17, "region": "sBEijjjpvSzGkED0", "source": "ORDER_REVOCATION", "startDate": "1983-07-02T00:00:00Z", "storeId": "HvFhRMCFJuA0DEMg"}]}' --login_with_auth "Bearer foo"
platform-revoke-items 'ykqqjoHTpIPMSRAu' 'PI7mSZQ5UDm1q51P' --login_with_auth "Bearer foo"
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
echo "1..460"

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
    'lW2HG8LAiIzuo321' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'Ll90IBFsSb3FsV2P' \
    --body '{"grantDays": "nCs9R0D5jZEwxcow"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    '6L7c3COEP4AZx70u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'wV4XgvGTMHkXeEwu' \
    --body '{"grantDays": "FJf7tbq5KikDE7hW"}' \
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
    --body '{"clazz": "vT5bzcfzIpL2pWB4", "dryRun": true, "fulfillmentUrl": "gxjGJx62mkfVlu4b", "itemType": "OPTIONBOX", "purchaseConditionUrl": "PcUALNziO9Bz2wx4"}' \
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
    'bu7RrD9a5mdlXTCL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    '467xHbAiD3Pr3mXZ' \
    --body '{"clazz": "O1PnbSlfVRlAI8F2", "dryRun": false, "fulfillmentUrl": "4ZOo94gS5DHLB65f", "purchaseConditionUrl": "xQ06GwTmobiBnfrn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'q9kOFBWhUTPiKR3q' \
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
    --body '{"description": "cbHLGplYsS3jsRZf", "discountConfig": {"categories": [{"categoryPath": "fCd00VrgPuNtOv3j", "includeSubCategories": false}, {"categoryPath": "Rs1E7sH2G9MJ6F7R", "includeSubCategories": true}, {"categoryPath": "EpKoJlmhMQUCx70Q", "includeSubCategories": false}], "currencyCode": "yM48tE7eJRsXNeve", "currencyNamespace": "QXqnFRYmEIX40XOU", "discountAmount": 30, "discountPercentage": 31, "discountType": "AMOUNT", "items": [{"itemId": "Xgnsxx3c2bUsO7FP", "itemName": "8RmOstZAGDgiVsV2"}, {"itemId": "OttwJaMxPDIJ5hFQ", "itemName": "HumFvPKqupHj72Tl"}, {"itemId": "Ls964iABOgTKtnaA", "itemName": "7O35Iaytd9CsAMTZ"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 53, "itemId": "7xPXxnfggnZ3EZp6", "itemName": "wSAufwYirs9lwvPK", "quantity": 6}, {"extraSubscriptionDays": 57, "itemId": "925u3fFLV0YeMrVa", "itemName": "YSTRYGFzgLZ7gEyp", "quantity": 86}, {"extraSubscriptionDays": 15, "itemId": "f2Pn9A4gcbDJ0Lmd", "itemName": "nOPkIT1C6KGTpA7J", "quantity": 56}], "maxRedeemCountPerCampaignPerUser": 48, "maxRedeemCountPerCode": 17, "maxRedeemCountPerCodePerUser": 41, "maxSaleCount": 22, "name": "llPROSfiW9zcxmgN", "redeemEnd": "1973-10-02T00:00:00Z", "redeemStart": "1979-06-20T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["vkZt9FgWckjNpHhM", "2ZXp4N0ROmUCTrS7", "Gi9Iigk9vamO7Q2W"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'wSWqSs05rjISy4B0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'X9AJdkT7UYCV8agv' \
    --body '{"description": "wOI2LlOQNRN132Rd", "discountConfig": {"categories": [{"categoryPath": "gwMXv9olKpRyWQim", "includeSubCategories": true}, {"categoryPath": "RJhFwxmkGfPI3j4l", "includeSubCategories": true}, {"categoryPath": "PJFaFzkABC8zWMcY", "includeSubCategories": false}], "currencyCode": "ssUUXOsXMNdvW1hb", "currencyNamespace": "vGenRbm3QtsY5WaK", "discountAmount": 80, "discountPercentage": 2, "discountType": "AMOUNT", "items": [{"itemId": "Y6pYrmeMIHLS8egV", "itemName": "8XhgDjbrum8Uxcut"}, {"itemId": "mVg8APWKxoj6MF68", "itemName": "VuKDoklYmkytCAH8"}, {"itemId": "Jiqe7gfV1G6bYgIb", "itemName": "VKp4Kgew2mHDksA6"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 61, "itemId": "Nzs19eBq9a1L8S1y", "itemName": "duOwscICro6P8FWI", "quantity": 84}, {"extraSubscriptionDays": 64, "itemId": "eqaBeD2uBAvIXEc2", "itemName": "CCgYcFo9A93o22Ug", "quantity": 82}, {"extraSubscriptionDays": 37, "itemId": "bCOiBWdw2b031dm4", "itemName": "N41MOpmm04BlZUAl", "quantity": 8}], "maxRedeemCountPerCampaignPerUser": 28, "maxRedeemCountPerCode": 22, "maxRedeemCountPerCodePerUser": 58, "maxSaleCount": 22, "name": "T11qD03er5mdraK4", "redeemEnd": "1972-09-18T00:00:00Z", "redeemStart": "1972-02-29T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["mHjmLu4oFlReHy0J", "yZv7honqeiGTTqpg", "VsY1kPNdJiJXB3yj"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'NUPIfvoXRO0CkW1Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetCampaignDynamic' test.out

#- 18 GetCatalogConfig
$PYTHON -m $MODULE 'platform-get-catalog-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetCatalogConfig' test.out

#- 19 UpdateCatalogConfig
$PYTHON -m $MODULE 'platform-update-catalog-config' \
    --body '{"enableInventoryCheck": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateCatalogConfig' test.out

#- 20 GetLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-get-loot-box-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetLootBoxPluginConfig' test.out

#- 21 UpdateLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-update-loot-box-plugin-config' \
    --body '{"appConfig": {"appName": "A8vYVvrIAEehUV0j"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "jCFLDNJfAhJGwSYE"}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateLootBoxPluginConfig' test.out

#- 22 DeleteLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-delete-loot-box-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteLootBoxPluginConfig' test.out

#- 23 UplodLootBoxPluginConfigCert
$PYTHON -m $MODULE 'platform-uplod-loot-box-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UplodLootBoxPluginConfigCert' test.out

#- 24 GetLootBoxGrpcInfo
$PYTHON -m $MODULE 'platform-get-loot-box-grpc-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetLootBoxGrpcInfo' test.out

#- 25 GetSectionPluginConfig
$PYTHON -m $MODULE 'platform-get-section-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetSectionPluginConfig' test.out

#- 26 UpdateSectionPluginConfig
$PYTHON -m $MODULE 'platform-update-section-plugin-config' \
    --body '{"appConfig": {"appName": "bQX9D1znEWw9p7g4"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "kf7rQJ4Kj7Qyo9tU"}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateSectionPluginConfig' test.out

#- 27 DeleteSectionPluginConfig
$PYTHON -m $MODULE 'platform-delete-section-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'DeleteSectionPluginConfig' test.out

#- 28 UploadSectionPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-section-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'UploadSectionPluginConfigCert' test.out

#- 29 GetRootCategories
$PYTHON -m $MODULE 'platform-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetRootCategories' test.out

#- 30 CreateCategory
$PYTHON -m $MODULE 'platform-create-category' \
    'qFllM1LTrl4MP3Nl' \
    --body '{"categoryPath": "4T3ujvV7W6ADLtn7", "localizationDisplayNames": {"oInn1Bz3wM3BI51e": "tn17OcmSVHZ6wtPV", "AwgvxYxXJTduZp1n": "NYHREmm1cBuaRaGe", "M8yxRfejqSbVgLd1": "FoyNFGpu5r2K0IvV"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreateCategory' test.out

#- 31 ListCategoriesBasic
$PYTHON -m $MODULE 'platform-list-categories-basic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'ListCategoriesBasic' test.out

#- 32 GetCategory
$PYTHON -m $MODULE 'platform-get-category' \
    'g5LwUygH98dzTL8a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetCategory' test.out

#- 33 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'zKCCNBZpwRFNYxx2' \
    'dr6DDuDHXcfvXPXJ' \
    --body '{"localizationDisplayNames": {"URX3XwhOlgcpcOIx": "qCMSpZxby2J9vGOU", "eSeGb02vDPUpv5VE": "dIG82dpIbfxVFfdv", "KQVgPQw3MVXe4xBP": "DWHRHCCVDBRjPUQW"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateCategory' test.out

#- 34 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'YVxGQVFJlDDJ7z4P' \
    'b5jyGID39Ung1D57' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeleteCategory' test.out

#- 35 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'FjYKlJiRIvhej77O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetChildCategories' test.out

#- 36 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'SPwdzMSmrSvQdsAd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetDescendantCategories' test.out

#- 37 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'TUGpd8KFrXKFA2gd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryCodes' test.out

#- 38 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'jQCYoE8b0CZetLfp' \
    --body '{"codeValue": "FNyp7375rhOmR4zF", "quantity": 18}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'CreateCodes' test.out

#- 39 Download
$PYTHON -m $MODULE 'platform-download' \
    'hM2DvesmMIbiQfaH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'Download' test.out

#- 40 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'xl2YUNRLRjgKqSSY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkDisableCodes' test.out

#- 41 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'gZnVfa8govttlpFA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'BulkEnableCodes' test.out

#- 42 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'q8oebnS4Y2zkGYTr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'QueryRedeemHistory' test.out

#- 43 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    '9yJIveX52r6Inl9V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetCode' test.out

#- 44 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'TJB9Al3mn2DsHDHz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DisableCode' test.out

#- 45 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'SVJzhU5Z44zgZ1fi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'EnableCode' test.out

#- 46 GetServicePluginConfig
eval_tap 0 46 'GetServicePluginConfig # SKIP deprecated' test.out

#- 47 UpdateServicePluginConfig
eval_tap 0 47 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 48 DeleteServicePluginConfig
eval_tap 0 48 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 49 ListCurrencies
$PYTHON -m $MODULE 'platform-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'ListCurrencies' test.out

#- 50 CreateCurrency
$PYTHON -m $MODULE 'platform-create-currency' \
    --body '{"currencyCode": "eLdl3Y82DOj5kPuN", "currencySymbol": "RZZaUccuBYep9n7b", "currencyType": "VIRTUAL", "decimals": 50, "localizationDescriptions": {"fsblalJrwQiU3DD0": "xZFH1fHFLSr0O4rE", "ZTbFDj2L2McvCrrR": "7h9uKLXDaRf3pxKt", "JbRY5luCwKrt6wn3": "yVrRCh6j7rpv8K8f"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'CreateCurrency' test.out

#- 51 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'BAeRa1R6ksxLYGkO' \
    --body '{"localizationDescriptions": {"LgReff5IHxLJIemN": "HbzgAFjtjC7suvgI", "UkB2PAGJqOrkdlZB": "246OY0dPVMd2WDUV", "EQTpfyAIoF7qsANB": "bEKQrgocpjGNenRl"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdateCurrency' test.out

#- 52 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'DORLvP7ynTuXzafC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteCurrency' test.out

#- 53 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'qlMrrVIehVCf3AwI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetCurrencyConfig' test.out

#- 54 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'zUdQ6sTrUg7Z0SLr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetCurrencySummary' test.out

#- 55 GetDLCItemConfig
$PYTHON -m $MODULE 'platform-get-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetDLCItemConfig' test.out

#- 56 UpdateDLCItemConfig
$PYTHON -m $MODULE 'platform-update-dlc-item-config' \
    --body '{"data": [{"id": "ZraV3NLBUSrFnzE6", "rewards": [{"currency": {"currencyCode": "yR1wLTgjsnB2LFVr", "namespace": "ZRrOntm2KjbfCOuW"}, "item": {"itemId": "3dBmFwUO7Y0xhMLw", "itemName": "xgRpTSUppvO3QG68", "itemSku": "KeD7QJQEEVDAg045", "itemType": "BvtPd7ibBA3sd51m"}, "quantity": 60, "type": "CURRENCY"}, {"currency": {"currencyCode": "zRBY1UrefgmVFBVz", "namespace": "4KRCU0p4jIt01gzH"}, "item": {"itemId": "17IcfJyGulmByN5r", "itemName": "cDA3Wcv9ouALjgLZ", "itemSku": "ZzLU9w8MJRIzIgJK", "itemType": "g9y86BgnBQtm5Ail"}, "quantity": 97, "type": "ITEM"}, {"currency": {"currencyCode": "hASFlYMVJtE2dAeC", "namespace": "7pF73y9eALKWinUJ"}, "item": {"itemId": "7bAuUJ7Fxg5LijlQ", "itemName": "TVq8Bh1p0NCKWNkL", "itemSku": "U5ty3uQa7Fl3ZhSM", "itemType": "LtrwnjTJVDlh112b"}, "quantity": 49, "type": "ITEM"}]}, {"id": "TYCDBnAvf8JpFuJS", "rewards": [{"currency": {"currencyCode": "ZistM75544PDlVK8", "namespace": "taScpV0NtCxDDz5r"}, "item": {"itemId": "xt6LflBJjokLAaL4", "itemName": "oAF2lqx8yneWKrOy", "itemSku": "4xcg30BqC5W7g7hi", "itemType": "wumJTI3jlZPjoCdG"}, "quantity": 17, "type": "CURRENCY"}, {"currency": {"currencyCode": "8pzl1lfIR7jnetIJ", "namespace": "PGObyWCLyFPHaxkK"}, "item": {"itemId": "xEDvSoi2X9SygvMG", "itemName": "8QAaWUhIguMvKDOr", "itemSku": "x0wQXKEroyKz2reP", "itemType": "63EVHT72VuhoGP2I"}, "quantity": 64, "type": "ITEM"}, {"currency": {"currencyCode": "XGU5hujEfCMt95DE", "namespace": "jxqhgYqmMqIdlRrQ"}, "item": {"itemId": "muILkeRUafUDP5b6", "itemName": "BWfm7cYCpDIJG42I", "itemSku": "LhUoCh8lmKKocC5E", "itemType": "a29JhfFGN964J8WO"}, "quantity": 13, "type": "CURRENCY"}]}, {"id": "sAj2Rmf1DXvAIkzT", "rewards": [{"currency": {"currencyCode": "RNRVyeEGu1ICOCmL", "namespace": "AmcaEFBKgy92LYqt"}, "item": {"itemId": "QcDN7OMCehk42acy", "itemName": "8wsWaPyppR3ztPSA", "itemSku": "LA8LlV2sccbVr6HS", "itemType": "iXVzrG4EdKn8eypT"}, "quantity": 52, "type": "ITEM"}, {"currency": {"currencyCode": "497DG0ZNoJvvi4Ys", "namespace": "50iE7IjZoDzMmMgo"}, "item": {"itemId": "MxZZ9AutWDfVOINh", "itemName": "ql9CdDX4xiHpdfKH", "itemSku": "35RWUUVEHCB5wzF6", "itemType": "oLIrAwjAsgo51XHJ"}, "quantity": 57, "type": "CURRENCY"}, {"currency": {"currencyCode": "Aevk3k14782W2oNo", "namespace": "3X4m6wms9SPaHlqt"}, "item": {"itemId": "DPry2vMON7sdhlil", "itemName": "fpDT8o2iFrYtGfCZ", "itemSku": "CcrvsV2I4X26p21i", "itemType": "DBZGJ8ZMLwPJ871n"}, "quantity": 98, "type": "ITEM"}]}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'UpdateDLCItemConfig' test.out

#- 57 DeleteDLCItemConfig
$PYTHON -m $MODULE 'platform-delete-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'DeleteDLCItemConfig' test.out

#- 58 GetPlatformDLCConfig
$PYTHON -m $MODULE 'platform-get-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetPlatformDLCConfig' test.out

#- 59 UpdatePlatformDLCConfig
$PYTHON -m $MODULE 'platform-update-platform-dlc-config' \
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"ALS7cneNLItUJgh7": "4tyxkTR8ZCVJtkxj", "BJrNeQRsqkkKK2qx": "qzy4KSA5UtSXWjAN", "SWIT9TLnuMLNJAEk": "3A6A6rYiIu8eLdWy"}}, {"platform": "OCULUS", "platformDlcIdMap": {"iYqap7masUcayqmp": "7vhz1T6cSrZL2CgH", "xdmYDj9vZNgfI1Ae": "YHe8WPQGPclChxLf", "bXrH6f2GDrNbLOjG": "z34ct0ctEeH43wYu"}}, {"platform": "XBOX", "platformDlcIdMap": {"g1r4nW4pBcPPaiaM": "1og5rxUjGPKKLMoA", "y1stmxPFz0i1IK3Q": "zkcRwFPpXGlKR9ss", "8b8udl6fLkxFnAqy": "vjBy0NXg7zd6SFpk"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'UpdatePlatformDLCConfig' test.out

#- 60 DeletePlatformDLCConfig
$PYTHON -m $MODULE 'platform-delete-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeletePlatformDLCConfig' test.out

#- 61 QueryEntitlements
$PYTHON -m $MODULE 'platform-query-entitlements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'QueryEntitlements' test.out

#- 62 QueryEntitlements1
$PYTHON -m $MODULE 'platform-query-entitlements-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'QueryEntitlements1' test.out

#- 63 EnableEntitlementOriginFeature
$PYTHON -m $MODULE 'platform-enable-entitlement-origin-feature' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'EnableEntitlementOriginFeature' test.out

#- 64 GetEntitlementConfigInfo
$PYTHON -m $MODULE 'platform-get-entitlement-config-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetEntitlementConfigInfo' test.out

#- 65 GrantEntitlements
$PYTHON -m $MODULE 'platform-grant-entitlements' \
    --body '{"entitlementGrantList": [{"collectionId": "V7cAICgWFJZGnNa5", "endDate": "1983-10-15T00:00:00Z", "grantedCode": "OM68r4W1fDZL80oP", "itemId": "Q0s7QhC8hgSgytNE", "itemNamespace": "ojK3YgWH9l7rv6XU", "language": "joDD_dY", "origin": "GooglePlay", "quantity": 50, "region": "iw7P2PtUrPawQPaH", "source": "REDEEM_CODE", "startDate": "1989-12-24T00:00:00Z", "storeId": "3SeYvULYNIhs5PZG"}, {"collectionId": "TJmgofq7nlF5Ch8J", "endDate": "1999-07-08T00:00:00Z", "grantedCode": "Qs990APOU4hcdwln", "itemId": "sTap2RJpHtncLywP", "itemNamespace": "3WlLmNdQGk6vneHo", "language": "YSq", "origin": "Xbox", "quantity": 9, "region": "vT1AonFO3syvkYd7", "source": "REWARD", "startDate": "1980-05-28T00:00:00Z", "storeId": "14yZH00n8MsRjaB8"}, {"collectionId": "iurBWW5jSJi0seeG", "endDate": "1989-07-18T00:00:00Z", "grantedCode": "IqnatME8GnNWfAY1", "itemId": "yY6D1Euusf0eOzoS", "itemNamespace": "yKttYwUUlMRG8vO0", "language": "VtNS", "origin": "GooglePlay", "quantity": 98, "region": "OJDUyyag9jBDJFJG", "source": "REFERRAL_BONUS", "startDate": "1998-03-08T00:00:00Z", "storeId": "2nZWwBdEFpfccauY"}], "userIds": ["Dc86pxK9KhF4KRVP", "VjFp1CeCEfaV4ZGG", "oIuzAuQNjAfvOE2c"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GrantEntitlements' test.out

#- 66 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["wbqOB4mD3E7AFHql", "TTkL8cmpA0sZ0tge", "R4UV5SMZ8GUvWZvo"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'RevokeEntitlements' test.out

#- 67 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'Cmprkv7A8MRutCKC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetEntitlement' test.out

#- 68 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'QueryFulfillmentHistories' test.out

#- 69 QueryIAPClawbackHistory
$PYTHON -m $MODULE 'platform-query-iap-clawback-history' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'QueryIAPClawbackHistory' test.out

#- 70 MockPlayStationStreamEvent
$PYTHON -m $MODULE 'platform-mock-play-station-stream-event' \
    --body '{"body": {"account": "sqmx2zriOGB8b5qT", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 65, "clientTransactionId": "POTXhXLRU5prAdqn"}, {"amountConsumed": 28, "clientTransactionId": "dAezedcppbujZh1f"}, {"amountConsumed": 93, "clientTransactionId": "XF6R9Rz3HVP2Y9Wq"}], "entitlementId": "SRiwV3UZg0UJLPMk", "usageCount": 9}, {"clientTransaction": [{"amountConsumed": 94, "clientTransactionId": "Uwa6OVKxCMxuf0P9"}, {"amountConsumed": 37, "clientTransactionId": "VpBmsUzx64Gr4XEm"}, {"amountConsumed": 39, "clientTransactionId": "uYYuAmqhftIfe2zd"}], "entitlementId": "qZ7ht1vUiJ7jBXy8", "usageCount": 31}, {"clientTransaction": [{"amountConsumed": 38, "clientTransactionId": "QhzU8FwQtZpfUoyo"}, {"amountConsumed": 18, "clientTransactionId": "MbE1cW57GaNZLT1z"}, {"amountConsumed": 8, "clientTransactionId": "GqDZN7ftHOhVy48Y"}], "entitlementId": "Yg1AkRh3NmbRhMxK", "usageCount": 8}], "purpose": "D7djt1VeOFBDA3gv"}, "originalTitleName": "CRfoBijpbMblGWnp", "paymentProductSKU": "94a6GKY0BrHiWs0B", "purchaseDate": "0RhxQtgVgbN8kr87", "sourceOrderItemId": "2hJvrOCdAEZ2RHt3", "titleName": "uQ5nFrPXwxJZQpke"}, "eventDomain": "DHr0hjKBpDMIvK4q", "eventSource": "fQ0pQIcYMBktqqAA", "eventType": "F6YG1dD1vECBb01V", "eventVersion": 64, "id": "fKu4bmK8kOKcEoCR", "timestamp": "jQJlPY3p42OS9iGN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'MockPlayStationStreamEvent' test.out

#- 71 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'GetAppleIAPConfig' test.out

#- 72 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    --body '{"bundleId": "ElTpMlvRDZSIuM0O", "password": "XOHPluvsry8AKSZx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'UpdateAppleIAPConfig' test.out

#- 73 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'DeleteAppleIAPConfig' test.out

#- 74 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'GetEpicGamesIAPConfig' test.out

#- 75 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    --body '{"sandboxId": "OhUhl3Y0EshaG0uD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UpdateEpicGamesIAPConfig' test.out

#- 76 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteEpicGamesIAPConfig' test.out

#- 77 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'GetGoogleIAPConfig' test.out

#- 78 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    --body '{"applicationName": "iJNUuxK22saWaGvr", "serviceAccountId": "zBdLvFUBZDnVrcwb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UpdateGoogleIAPConfig' test.out

#- 79 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'DeleteGoogleIAPConfig' test.out

#- 80 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UpdateGoogleP12File' test.out

#- 81 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GetIAPItemConfig' test.out

#- 82 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    --body '{"data": [{"itemIdentity": "sD0RDLxWgEWwoHpV", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"8HhmXC68JFPdxhvB": "Kee6wG66YPD4vNdE", "NY1r1rI0T97qA1Oi": "blWlz2LXQNqcONcJ", "IsYRQz97fRWI17eN": "P3Y2nWlS9Sfjh0ht"}}, {"itemIdentity": "yVaGj4y9ahS7h7XV", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"9pGYsLNEGrfy9qHK": "ufJfk0MeG3qYJr6P", "uCVK9WmDAdpLVTVs": "j9pDiyybXY4v7JRF", "MRaeIaQuPWPlkxeo": "trNakKGvOSvpmZZd"}}, {"itemIdentity": "lNXdx2kWmSqodNZg", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"s1zdVT0aWj58Othv": "d3jzMDAf40gKSizv", "mxts5HSQvRAPG9Jo": "VSLrbs5niXkjpkOg", "RCC7qfz5jV7NTRYl": "d9FJJ10goNq8uq79"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateIAPItemConfig' test.out

#- 83 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'DeleteIAPItemConfig' test.out

#- 84 GetOculusIAPConfig
$PYTHON -m $MODULE 'platform-get-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetOculusIAPConfig' test.out

#- 85 UpdateOculusIAPConfig
$PYTHON -m $MODULE 'platform-update-oculus-iap-config' \
    --body '{"appId": "Du28SRRAMaQFEzpp", "appSecret": "eticckSUon7awfol"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'UpdateOculusIAPConfig' test.out

#- 86 DeleteOculusIAPConfig
$PYTHON -m $MODULE 'platform-delete-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'DeleteOculusIAPConfig' test.out

#- 87 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetPlayStationIAPConfig' test.out

#- 88 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    --body '{"backOfficeServerClientId": "07696uxp5ieMjjOf", "backOfficeServerClientSecret": "FSx3AJN97kUjwiCm", "enableStreamJob": true, "environment": "JGOzAIAqpmkDdFSs", "streamName": "4s7u1VUuLmenyxTQ", "streamPartnerName": "VkEg5wouUKa35m8o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdatePlaystationIAPConfig' test.out

#- 89 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'DeletePlaystationIAPConfig' test.out

#- 90 ValidateExistedPlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-existed-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'ValidateExistedPlaystationIAPConfig' test.out

#- 91 ValidatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-playstation-iap-config' \
    --body '{"backOfficeServerClientId": "H9zCfw7mCMkbvSIm", "backOfficeServerClientSecret": "7JROcwVmGyrBpnTP", "enableStreamJob": false, "environment": "VrRiFSPs2ZMcVFcr", "streamName": "ixULzSeTnUWGxxfn", "streamPartnerName": "MIDSCPr1m1Fg6tc2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'ValidatePlaystationIAPConfig' test.out

#- 92 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'GetSteamIAPConfig' test.out

#- 93 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"appId": "50c2okDTem6o62xF", "publisherAuthenticationKey": "Y6TNqoLFFS4wB6Um"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'UpdateSteamIAPConfig' test.out

#- 94 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'DeleteSteamIAPConfig' test.out

#- 95 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'GetTwitchIAPConfig' test.out

#- 96 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    --body '{"clientId": "7ir0n6O3vbYVjrcE", "clientSecret": "rgoApAxyDnHjAx7r", "organizationId": "ZTvew0WVDSMNr23L"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'UpdateTwitchIAPConfig' test.out

#- 97 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'DeleteTwitchIAPConfig' test.out

#- 98 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'GetXblIAPConfig' test.out

#- 99 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    --body '{"relyingPartyCert": "V7xZEEv7O1lwxVTR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblIAPConfig' test.out

#- 100 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'DeleteXblAPConfig' test.out

#- 101 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateXblBPCertFile' test.out

#- 102 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'll0GIEUJtMC8NyV2' \
    'HLHZT3oYJlC4ie3I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DownloadInvoiceDetails' test.out

#- 103 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'nnSA22NHTb4qXYyJ' \
    'UAlKlTwdJEPoemVt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GenerateInvoiceSummary' test.out

#- 104 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'mVXTs3tCu4F9IgDT' \
    --body '{"categoryPath": "2tq2V2lMzfIQHCZ9", "targetItemId": "0DqQgP6ynrQjYH0N", "targetNamespace": "2loTnRa0KiQWPxd1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'SyncInGameItem' test.out

#- 105 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'gqlwx9CE4WcsmYtC' \
    --body '{"appId": "kIgcwiDWQFghmIi6", "appType": "DEMO", "baseAppId": "mtuIFllfSUnaUhC4", "boothName": "x11AS2jTKoTYeHaC", "categoryPath": "uN7zpX9vp4QJdCrw", "clazz": "kz0nw2oxKye8jZqj", "displayOrder": 56, "entitlementType": "CONSUMABLE", "ext": {"xiXf8OBQRqXWXQ3J": {}, "dXdFz8pc0EEziE5y": {}, "Ivijq9ix16vo60jg": {}}, "features": ["2WHGVKDcKulj3Pde", "vwV3C9hJ1kSZonK0", "gy4G6LOpak8CYp6D"], "flexible": false, "images": [{"as": "on2ecc65YAFLweD9", "caption": "Z7U2lNkorrw9QH3r", "height": 82, "imageUrl": "eBe4Tvb3fHCIJZkw", "smallImageUrl": "EcCRi2U7s2ZQAarw", "width": 70}, {"as": "F9VV7JgCOm4wL729", "caption": "Hma0nCdCEFcf2doB", "height": 35, "imageUrl": "UfcL1qsegBsrNqeW", "smallImageUrl": "5BxVe8iW7sGELnMd", "width": 84}, {"as": "RqdGPzxXvZPtrhje", "caption": "VBnTrsYihhgbeAZo", "height": 64, "imageUrl": "KD8HJ4X0DetCeJ4x", "smallImageUrl": "0wf5mQx6Hs7M5apP", "width": 79}], "inventoryConfig": {"customAttributes": {"UilXgtf5UctyV3aS": {}, "w4twReM5DcHde3fk": {}, "Hf7tH8WTOTeBOcYh": {}}, "serverCustomAttributes": {"f6nGCnPjiIbJifs0": {}, "arKxCcNv8FQCyQBq": {}, "KxayGvw7MqOsypCJ": {}}, "slotUsed": 25}, "itemIds": ["GMl5xFgLj4mCShMF", "lbrRGjoBQ45Za4JR", "4S3iac6vLeoIULJl"], "itemQty": {"WXmQFlef1tSHJf6s": 97, "vveMdBsPt19V2FkB": 86, "IIUXlBlZMQeSnOg5": 13}, "itemType": "BUNDLE", "listable": true, "localizations": {"g0hfM5vQmahJlT5O": {"description": "UDEMwAjgNZgto2Eh", "localExt": {"OlnsuDnkuOJekbO0": {}, "sk7o1z37uuqLDQF1": {}, "2kYfBqeQxos58kVk": {}}, "longDescription": "7F1KKOfFFLvER3xq", "title": "CwUgKa4oCBoJDxGa"}, "1UuSr4ehnV8Aw9m6": {"description": "GvDSE2F7Ad69Dln4", "localExt": {"mqFhgKKcGohdjQUw": {}, "VdPsArkepfK0DE3I": {}, "ibPSQnphnvAWBSOr": {}}, "longDescription": "7zljUKyhKkD7wAHM", "title": "rv8zABDhYAVxvs3u"}, "gNvvgI2k1P9nQxzj": {"description": "3AnmpWfje5cAtTDv", "localExt": {"wFHcoODi5oF1pccd": {}, "jjZpFnVLb7xerpjV": {}, "PfktNnl8UYH5kesu": {}}, "longDescription": "OtYHLqcdy05YrqdF", "title": "n8sQ7yc8xLKyBfGL"}}, "lootBoxConfig": {"rewardCount": 68, "rewards": [{"lootBoxItems": [{"count": 50, "duration": 62, "endDate": "1984-10-23T00:00:00Z", "itemId": "vlhWw1RCgHr3f6Uq", "itemSku": "FGCvsMFEFlXHBOK1", "itemType": "RqtKYVObVorIVWWL"}, {"count": 0, "duration": 99, "endDate": "1993-10-16T00:00:00Z", "itemId": "iu1alaVEhjJZbwMH", "itemSku": "kFWLSzmAXAruYrVj", "itemType": "X4HRTvm3Qr9IkuW6"}, {"count": 20, "duration": 20, "endDate": "1975-09-11T00:00:00Z", "itemId": "ofc6itDEsq0dHfYG", "itemSku": "6k853GERdJdphepF", "itemType": "9dfsng9FGGjJ0hRP"}], "name": "UBFxM2Fr3olO10RA", "odds": 0.4012211326839037, "type": "REWARD_GROUP", "weight": 96}, {"lootBoxItems": [{"count": 38, "duration": 90, "endDate": "1995-03-14T00:00:00Z", "itemId": "fCRhzfKDAGIAJuPh", "itemSku": "QcZwXRE9FOZUVTfD", "itemType": "c3w1tAXRrQtHkm0T"}, {"count": 40, "duration": 47, "endDate": "1974-12-22T00:00:00Z", "itemId": "cx9W7PkFNVa7czD4", "itemSku": "wybVjqOKrqYGxcBx", "itemType": "fjLUZHK0OO1yQsMB"}, {"count": 87, "duration": 48, "endDate": "1984-12-22T00:00:00Z", "itemId": "dOfrtHWyGg5TU3IN", "itemSku": "kMgjsnP8itevmjTJ", "itemType": "jj5tfFQv384ri6A7"}], "name": "z0hsW0IHIYvJ7PPg", "odds": 0.7630352671931218, "type": "PROBABILITY_GROUP", "weight": 52}, {"lootBoxItems": [{"count": 65, "duration": 18, "endDate": "1982-09-27T00:00:00Z", "itemId": "F6ijZzA3MkosOcoA", "itemSku": "cV0T2G3vQZNiqaXz", "itemType": "RBra3I4K9iBdljXt"}, {"count": 30, "duration": 73, "endDate": "1982-04-16T00:00:00Z", "itemId": "ifBfAw30kOykBuDJ", "itemSku": "0IPQeAL4MZwEVJe7", "itemType": "waGyB6g2M5JiwtMO"}, {"count": 10, "duration": 86, "endDate": "1986-08-26T00:00:00Z", "itemId": "foMgU2yFBTPfnmfN", "itemSku": "5E20ORMCVBTrkvOb", "itemType": "siHQgt7OfL6AcBPj"}], "name": "UYURB3Rsrc0qvV8G", "odds": 0.26198056161519745, "type": "PROBABILITY_GROUP", "weight": 4}], "rollFunction": "CUSTOM"}, "maxCount": 47, "maxCountPerUser": 49, "name": "aWVjM3iVKjr5VDqa", "optionBoxConfig": {"boxItems": [{"count": 21, "duration": 40, "endDate": "1990-01-24T00:00:00Z", "itemId": "PWppB2H0G8Xko9l5", "itemSku": "J0IOZmnpzwHhig9d", "itemType": "6vdgfrNiGrH0hDjH"}, {"count": 20, "duration": 70, "endDate": "1996-05-13T00:00:00Z", "itemId": "pfINzNjk5V8T9pQj", "itemSku": "nGB83yonudf21g0N", "itemType": "huYvwCATIUep61Zs"}, {"count": 92, "duration": 61, "endDate": "1975-06-17T00:00:00Z", "itemId": "qW7I03oSwCfYpN9j", "itemSku": "kLCsMYyyhEyBfFFZ", "itemType": "wkC1PRjBWzTuXttD"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 17, "fixedTrialCycles": 61, "graceDays": 57}, "regionData": {"WbOM3xQaraaEVt3v": [{"currencyCode": "sBCXpIgQzkWzcBqV", "currencyNamespace": "cuTTrIk6hU0mqdwB", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1983-06-19T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1979-08-17T00:00:00Z", "expireAt": "1971-01-31T00:00:00Z", "price": 85, "purchaseAt": "1994-01-16T00:00:00Z", "trialPrice": 28}, {"currencyCode": "vEOJ4PghksbaThW3", "currencyNamespace": "7NTbz8HiRmuknvXi", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1997-08-04T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1977-05-27T00:00:00Z", "expireAt": "1989-12-17T00:00:00Z", "price": 73, "purchaseAt": "1999-01-26T00:00:00Z", "trialPrice": 32}, {"currencyCode": "KrIn9hHHGg1cTZsJ", "currencyNamespace": "p1b5yB8c9gCPFDZh", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1989-04-17T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1974-03-20T00:00:00Z", "expireAt": "1995-09-02T00:00:00Z", "price": 7, "purchaseAt": "1992-09-25T00:00:00Z", "trialPrice": 84}], "kZ8AVzeiaDi67E3r": [{"currencyCode": "TwN2LrT85Arfe6Ew", "currencyNamespace": "eJxWANt1bDay64En", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1980-09-18T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1973-12-17T00:00:00Z", "expireAt": "1998-03-24T00:00:00Z", "price": 30, "purchaseAt": "1977-11-22T00:00:00Z", "trialPrice": 37}, {"currencyCode": "hddKrrhzwz2PFXC3", "currencyNamespace": "3KjLNUFQJgCWV7dj", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1973-10-10T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1977-01-18T00:00:00Z", "expireAt": "1973-04-04T00:00:00Z", "price": 95, "purchaseAt": "1988-05-09T00:00:00Z", "trialPrice": 98}, {"currencyCode": "hnMV6Yxtl5DKUhjB", "currencyNamespace": "y9oWPcMIQc5lRQoj", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1989-01-23T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1971-05-12T00:00:00Z", "expireAt": "1996-09-21T00:00:00Z", "price": 98, "purchaseAt": "1974-08-21T00:00:00Z", "trialPrice": 50}], "ubdw0sPrgDKqHCs5": [{"currencyCode": "GTdTLCxJqK7dgsgr", "currencyNamespace": "npVE1acxZoDXdPOR", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1995-01-21T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1990-07-18T00:00:00Z", "expireAt": "1981-04-12T00:00:00Z", "price": 4, "purchaseAt": "1978-10-21T00:00:00Z", "trialPrice": 69}, {"currencyCode": "zvDUlhTlBNpvkjg4", "currencyNamespace": "8iVKCqEqeZP1CFaM", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1987-10-04T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1996-03-22T00:00:00Z", "expireAt": "1997-01-18T00:00:00Z", "price": 96, "purchaseAt": "1974-06-13T00:00:00Z", "trialPrice": 33}, {"currencyCode": "kxEx6tlxks0yGW8q", "currencyNamespace": "DWfr7MF8Ptq10XBh", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1989-11-18T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1993-09-21T00:00:00Z", "expireAt": "1991-10-20T00:00:00Z", "price": 34, "purchaseAt": "1983-08-24T00:00:00Z", "trialPrice": 54}]}, "saleConfig": {"currencyCode": "bLEhfrPxIRdbUwkN", "price": 5}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "vRneC9JYmpKyZGtq", "stackable": false, "status": "INACTIVE", "tags": ["GVyknpOhuGhAnlnj", "yPBj7h3hncU5vgL6", "9UuiQwezvArAKJwZ"], "targetCurrencyCode": "2RA2BI7knizQ4Jx8", "targetNamespace": "In4w8yRFOLeTQypl", "thumbnailUrl": "scfsZvvUpCMJRliF", "useCount": 58}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'CreateItem' test.out

#- 106 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'LmQSkuEMRzyerpya' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'GetItemByAppId' test.out

#- 107 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'QueryItems' test.out

#- 108 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'ListBasicItemsByFeatures' test.out

#- 109 GetItems
$PYTHON -m $MODULE 'platform-get-items' \
    '2oBjbgBhOdXE8y1P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'GetItems' test.out

#- 110 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'NIzbnPB5wG65f3AC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GetItemBySku' test.out

#- 111 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'fS3A8JeRMYUCgn7o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItemBySku' test.out

#- 112 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'klNewpAIwtlAooXZ' \
    '7HDb8g2BhzW03O2p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'GetEstimatedPrice' test.out

#- 113 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'p9qVpZbsppRsBWQ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'GetItemIdBySku' test.out

#- 114 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'GetBulkItemIdBySkus' test.out

#- 115 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'RdYqZaQ8swcFOshi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'BulkGetLocaleItems' test.out

#- 116 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetAvailablePredicateTypes' test.out

#- 117 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    'WEFDMG99v5LSSkkE' \
    --body '{"itemIds": ["oAarkgZ773cdzYhg", "H24VR4hJnsU1m6zr", "yXmvvvPmueVVC0ym"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'ValidateItemPurchaseCondition' test.out

#- 118 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'Y7ABWgZVxM4rAqxl' \
    --body '{"changes": [{"itemIdentities": ["nHLAFNEwXBsCkfqz", "KlzlLgHPF5iRWnRE", "ifOFJQwGPy5zGebV"], "itemIdentityType": "ITEM_SKU", "regionData": {"jZh9eggvvmXZU7lV": [{"currencyCode": "GZ6lIs17PXJ8Ksgq", "currencyNamespace": "GNM6sO7IUwIv84zQ", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1972-02-18T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1991-02-12T00:00:00Z", "discountedPrice": 92, "expireAt": "1989-04-10T00:00:00Z", "price": 40, "purchaseAt": "1993-08-25T00:00:00Z", "trialPrice": 88}, {"currencyCode": "F0p5g7b3MegxV9Jn", "currencyNamespace": "AJSu3MX2yYJopKxd", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1995-06-09T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1996-11-04T00:00:00Z", "discountedPrice": 67, "expireAt": "1978-11-15T00:00:00Z", "price": 66, "purchaseAt": "1997-03-21T00:00:00Z", "trialPrice": 56}, {"currencyCode": "MVvo3MMCL4aV6oMU", "currencyNamespace": "zpMmsvvKTljWspMr", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1994-02-05T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1993-07-17T00:00:00Z", "discountedPrice": 81, "expireAt": "1999-08-26T00:00:00Z", "price": 61, "purchaseAt": "1984-12-27T00:00:00Z", "trialPrice": 48}], "N4wHLHx7FCWn7iOm": [{"currencyCode": "KIN2roJNZmgEGzqD", "currencyNamespace": "HdLpDjLIhvCNlBRc", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1971-07-23T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1999-11-19T00:00:00Z", "discountedPrice": 22, "expireAt": "1979-12-17T00:00:00Z", "price": 42, "purchaseAt": "1998-03-09T00:00:00Z", "trialPrice": 70}, {"currencyCode": "LgD6kOUZXQKRTVR9", "currencyNamespace": "5IwPCb2qOuIRbBL0", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1984-08-22T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1971-02-28T00:00:00Z", "discountedPrice": 17, "expireAt": "1987-06-08T00:00:00Z", "price": 5, "purchaseAt": "1986-10-17T00:00:00Z", "trialPrice": 74}, {"currencyCode": "QkYueQLLJPh6Hpod", "currencyNamespace": "pzuBQwTS66qr03Mp", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1994-06-13T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1988-04-27T00:00:00Z", "discountedPrice": 67, "expireAt": "1975-10-13T00:00:00Z", "price": 60, "purchaseAt": "1987-08-08T00:00:00Z", "trialPrice": 26}], "QZEbNr6VtQiKwKuI": [{"currencyCode": "HMjiIjX7Eu0WCXd8", "currencyNamespace": "GX7ygT5qlBekxw9p", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1981-01-27T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1980-12-22T00:00:00Z", "discountedPrice": 41, "expireAt": "1982-03-09T00:00:00Z", "price": 86, "purchaseAt": "1992-04-29T00:00:00Z", "trialPrice": 24}, {"currencyCode": "tArVtIQyxp17b8SH", "currencyNamespace": "vRIiJgGrdz6Ar6ZM", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1980-10-09T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1985-05-18T00:00:00Z", "discountedPrice": 64, "expireAt": "1989-04-27T00:00:00Z", "price": 32, "purchaseAt": "1977-04-04T00:00:00Z", "trialPrice": 5}, {"currencyCode": "5yD1dLBQJcBsvUaK", "currencyNamespace": "2iHOkgyhgijqtdzr", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1987-08-31T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1984-05-02T00:00:00Z", "discountedPrice": 69, "expireAt": "1973-09-22T00:00:00Z", "price": 54, "purchaseAt": "1995-08-19T00:00:00Z", "trialPrice": 25}]}}, {"itemIdentities": ["yLXmLsHXWPqYBJTz", "lt302k4rdWgWYgFg", "w3mGmogCJXjHTGhy"], "itemIdentityType": "ITEM_ID", "regionData": {"SIurSOWI2donULQo": [{"currencyCode": "kdCSsp87x6Jfe5YA", "currencyNamespace": "YJeb1GUdtB5G8NIT", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1998-02-23T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1976-04-07T00:00:00Z", "discountedPrice": 5, "expireAt": "1978-05-17T00:00:00Z", "price": 59, "purchaseAt": "1997-12-18T00:00:00Z", "trialPrice": 27}, {"currencyCode": "OZodh1gbkbnRcIuf", "currencyNamespace": "k5WE4zPvxA5061CF", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1971-03-07T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1993-07-08T00:00:00Z", "discountedPrice": 53, "expireAt": "1979-12-11T00:00:00Z", "price": 5, "purchaseAt": "1989-05-30T00:00:00Z", "trialPrice": 42}, {"currencyCode": "vlQSS6PyDb3vKbCw", "currencyNamespace": "9eAGmM6lPAJMizuk", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1984-01-23T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1998-10-19T00:00:00Z", "discountedPrice": 21, "expireAt": "1983-01-08T00:00:00Z", "price": 21, "purchaseAt": "1984-01-06T00:00:00Z", "trialPrice": 61}], "5FeKFm3raYpWl0Mf": [{"currencyCode": "F3iAQb4Iiy26m51A", "currencyNamespace": "wCv4UKmP7eczfnYg", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1996-01-20T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1982-10-20T00:00:00Z", "discountedPrice": 87, "expireAt": "1997-08-28T00:00:00Z", "price": 71, "purchaseAt": "1985-04-27T00:00:00Z", "trialPrice": 2}, {"currencyCode": "kID1ZFk9fRCHfId0", "currencyNamespace": "Dhnin8RxnO0qs4Fy", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1987-12-12T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1986-01-26T00:00:00Z", "discountedPrice": 67, "expireAt": "1972-01-26T00:00:00Z", "price": 95, "purchaseAt": "1975-06-21T00:00:00Z", "trialPrice": 44}, {"currencyCode": "EE9wh4CEOrPY29A1", "currencyNamespace": "L1Xijb7GTIFWcZWK", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1987-09-29T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1987-07-18T00:00:00Z", "discountedPrice": 36, "expireAt": "1990-09-16T00:00:00Z", "price": 57, "purchaseAt": "1971-05-10T00:00:00Z", "trialPrice": 52}], "1AEcNUzfWwpdraZO": [{"currencyCode": "1lfHzX5CHNiYaLYU", "currencyNamespace": "lRZSLj5xwmP8QMJJ", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1999-11-01T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1979-01-21T00:00:00Z", "discountedPrice": 45, "expireAt": "1996-06-07T00:00:00Z", "price": 1, "purchaseAt": "1981-03-06T00:00:00Z", "trialPrice": 96}, {"currencyCode": "KZbUJQ92BTViMMFj", "currencyNamespace": "i1GmfmwhN25xGSRR", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1982-02-18T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1987-01-09T00:00:00Z", "discountedPrice": 44, "expireAt": "1991-10-29T00:00:00Z", "price": 66, "purchaseAt": "1991-02-23T00:00:00Z", "trialPrice": 9}, {"currencyCode": "erV4ccUhiQnHGDNX", "currencyNamespace": "w2L4mp580sUSlEfC", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1984-03-21T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1971-09-06T00:00:00Z", "discountedPrice": 5, "expireAt": "1983-05-03T00:00:00Z", "price": 5, "purchaseAt": "1976-05-07T00:00:00Z", "trialPrice": 66}]}}, {"itemIdentities": ["4fWJlLrbVQceKy5J", "ZK1rVpGdpzlwFNJy", "yLozi8eBqPD6pfcv"], "itemIdentityType": "ITEM_ID", "regionData": {"ULkEKqQ4ToqWjpaE": [{"currencyCode": "CYi7fBJaU43PzOIT", "currencyNamespace": "mqjrcuIH9i4ICwRH", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1991-12-31T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1999-08-27T00:00:00Z", "discountedPrice": 14, "expireAt": "1971-04-08T00:00:00Z", "price": 18, "purchaseAt": "1993-05-17T00:00:00Z", "trialPrice": 69}, {"currencyCode": "atSimmKudqURkyz4", "currencyNamespace": "E3EI1bSCYaa8JSNQ", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1974-09-30T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1985-04-16T00:00:00Z", "discountedPrice": 24, "expireAt": "1982-07-03T00:00:00Z", "price": 42, "purchaseAt": "1977-09-02T00:00:00Z", "trialPrice": 67}, {"currencyCode": "RpUkTKjXxvgslvMl", "currencyNamespace": "laEVugbCEifQCe5e", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1999-03-01T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1989-02-05T00:00:00Z", "discountedPrice": 17, "expireAt": "1972-08-23T00:00:00Z", "price": 34, "purchaseAt": "1998-12-19T00:00:00Z", "trialPrice": 69}], "PQ1hSmShNaSmVFsm": [{"currencyCode": "FW74DkabvmYAT6qT", "currencyNamespace": "g6ZOaTNC1LAentTX", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1978-08-11T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1977-01-13T00:00:00Z", "discountedPrice": 65, "expireAt": "1999-03-10T00:00:00Z", "price": 71, "purchaseAt": "1972-05-23T00:00:00Z", "trialPrice": 90}, {"currencyCode": "2yOaVvE1N52PwdeT", "currencyNamespace": "QhMz99aZ3fza0rlz", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1991-03-02T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1995-11-20T00:00:00Z", "discountedPrice": 74, "expireAt": "1982-04-23T00:00:00Z", "price": 12, "purchaseAt": "1972-08-15T00:00:00Z", "trialPrice": 14}, {"currencyCode": "CZr4m1UpizE7fm00", "currencyNamespace": "IB0YnQ5xpjcMxUGo", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1987-09-20T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1976-12-13T00:00:00Z", "discountedPrice": 9, "expireAt": "1988-12-28T00:00:00Z", "price": 89, "purchaseAt": "1977-10-15T00:00:00Z", "trialPrice": 13}], "tcCnXFRjhk7tzIHq": [{"currencyCode": "ZpgJqlw441XUfp7A", "currencyNamespace": "Vnf8BzBBqEvMtJop", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1998-07-27T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1999-06-14T00:00:00Z", "discountedPrice": 32, "expireAt": "1993-10-24T00:00:00Z", "price": 83, "purchaseAt": "1980-05-12T00:00:00Z", "trialPrice": 28}, {"currencyCode": "y72xPhtIM8Rw0xHZ", "currencyNamespace": "OUW3jlXYz8azHYdz", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1997-11-08T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1975-10-20T00:00:00Z", "discountedPrice": 47, "expireAt": "1974-05-04T00:00:00Z", "price": 83, "purchaseAt": "1994-07-18T00:00:00Z", "trialPrice": 98}, {"currencyCode": "1EdgoOvT13nFPxMy", "currencyNamespace": "9YNTBZTR5tZmaZGx", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1974-12-05T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1993-12-05T00:00:00Z", "discountedPrice": 83, "expireAt": "1978-06-29T00:00:00Z", "price": 89, "purchaseAt": "1986-09-09T00:00:00Z", "trialPrice": 44}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'BulkUpdateRegionData' test.out

#- 119 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'FiqEUhsD6QxKzbZ7' \
    'xvbLKNa3OJMFdrQm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'SearchItems' test.out

#- 120 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'QueryUncategorizedItems' test.out

#- 121 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'X2OFLws9RV6lY9IG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetItem' test.out

#- 122 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'sZjUsSUE7NuCYEOW' \
    'NkgUfe6pVMS5m8aR' \
    --body '{"appId": "Iev5s4q7UwwraCDr", "appType": "GAME", "baseAppId": "26Q66cxtjNTXsCsf", "boothName": "A2pIWzC6nrUavXt7", "categoryPath": "t0llsH39PXWtk222", "clazz": "GY7L58lP7drhfBjZ", "displayOrder": 65, "entitlementType": "CONSUMABLE", "ext": {"3bFTqXqdzpP7Rk1q": {}, "bFWhtwNaVCqf0vP2": {}, "84yQAbudR95sQ1Fy": {}}, "features": ["gQvoX9pEJ3R0cuQG", "jCShSTNyM9yuMOFa", "vgMWyxizWKQdVExu"], "flexible": false, "images": [{"as": "uSzytkPE6mw3Zv0z", "caption": "D14WsQt5oimAfS3S", "height": 15, "imageUrl": "Ky45dqId3gXUWVAm", "smallImageUrl": "aDjrn0iZsIfqeLfl", "width": 19}, {"as": "wacx4istsfrFqHu6", "caption": "f54mL4hAfiqX3ThR", "height": 63, "imageUrl": "tYI9wKX9V1XxF2CF", "smallImageUrl": "fEpf0qN2twLYXq4H", "width": 92}, {"as": "cj6v5DLEk9Rkumkr", "caption": "nY4LksFD2le3UGhQ", "height": 27, "imageUrl": "GzMMHiVQ6covYDuI", "smallImageUrl": "4l1d9YaLVuL1mLP6", "width": 73}], "inventoryConfig": {"customAttributes": {"pId36F25c13PNqPn": {}, "7XRlnqiWP9WWQMGm": {}, "m0biVjE8A3EsOz8L": {}}, "serverCustomAttributes": {"DnxgL0t7Qhdw4vmS": {}, "xnJcyaijSCsFa6ip": {}, "Ru1AaFjz0yLelzMz": {}}, "slotUsed": 99}, "itemIds": ["XWrhLNPUvlrOA50x", "Gdlq3Dkm52TA4zLB", "Sh2QJWgWvIZGJOPk"], "itemQty": {"JvsZhfMwJPOcRFJT": 9, "0D6RcLpRxXCStzvO": 50, "s1zqz6exSNhnabXG": 38}, "itemType": "LOOTBOX", "listable": true, "localizations": {"0oyOrycewrnLBAZl": {"description": "vnOJeNxZdT1fZJTu", "localExt": {"tZpZZn6egDbFDXW3": {}, "N42ccGURTnJUdR3M": {}, "UQnEeANANjqBdfMM": {}}, "longDescription": "U89e6CIBWn2Q3kMt", "title": "F5tiwPCAxM9oFcQU"}, "p7hrvKVNdGrr2TTT": {"description": "iTt8oRoQRf0A1eAJ", "localExt": {"UZSjWUPA9vXrqLxU": {}, "CyNQUITTM8jU9tfr": {}, "6NkPjb60b0Y8RDVg": {}}, "longDescription": "sQzaeOv7xB8GlNYJ", "title": "eVVZQH5C76GaeCob"}, "rGOAvaYctXd3jNOl": {"description": "JBjBMsJisMu1kQcG", "localExt": {"m0x3DmUahjPVDOEm": {}, "wpWiJYxvvQCHIreo": {}, "YDgNe1RyydtCBznu": {}}, "longDescription": "3BT2fe68sGXFylcw", "title": "oCMa2D9QtE0TKRHu"}}, "lootBoxConfig": {"rewardCount": 21, "rewards": [{"lootBoxItems": [{"count": 79, "duration": 64, "endDate": "1985-07-26T00:00:00Z", "itemId": "VMu418S3o2DKmAp8", "itemSku": "kt8156L7Wl7UfG3P", "itemType": "bsgYDgJ0JRrcPbe1"}, {"count": 90, "duration": 67, "endDate": "1986-07-30T00:00:00Z", "itemId": "A4kpxN9tCjk58n5f", "itemSku": "Bl9xiCZH2KBHwuAW", "itemType": "3jLkVq9bAefBF8ti"}, {"count": 65, "duration": 24, "endDate": "1997-04-08T00:00:00Z", "itemId": "4xlGtWc5UcGIGpI8", "itemSku": "YhyHkINdPYamt1NN", "itemType": "vdmy7qa1StMbwcUs"}], "name": "u3gJ0yHA6KDH87Am", "odds": 0.5248229685539022, "type": "REWARD_GROUP", "weight": 13}, {"lootBoxItems": [{"count": 44, "duration": 58, "endDate": "1972-03-02T00:00:00Z", "itemId": "3Wq2dGygLo40eCb8", "itemSku": "2j4OhaAiWk4TKx1W", "itemType": "RjiCokzg7q7bMwxV"}, {"count": 55, "duration": 41, "endDate": "1980-03-15T00:00:00Z", "itemId": "ArSRypvu88WyRMMR", "itemSku": "loXySTO9W3BEI4eB", "itemType": "0PHoEfIdFP0QarAd"}, {"count": 29, "duration": 92, "endDate": "1985-12-16T00:00:00Z", "itemId": "zXNqw2oEptJsPYgv", "itemSku": "PnAlN2mJeW1LQJ8A", "itemType": "7NZLQPAny29oO2B8"}], "name": "osfAcB6Pd2uPwzli", "odds": 0.5405052276633051, "type": "PROBABILITY_GROUP", "weight": 60}, {"lootBoxItems": [{"count": 85, "duration": 41, "endDate": "1996-06-12T00:00:00Z", "itemId": "DpGXJrOgVnrneQPU", "itemSku": "35uuCoR3Wc6j3UqR", "itemType": "ICnmZxob6vepvgW3"}, {"count": 98, "duration": 64, "endDate": "1977-11-06T00:00:00Z", "itemId": "nz3WsgPS6R3Uev7b", "itemSku": "CsylPZDz1fiXmZRe", "itemType": "VZ4inDP7o0Aeler4"}, {"count": 29, "duration": 60, "endDate": "1986-05-21T00:00:00Z", "itemId": "JEmHHU4T74NkroVw", "itemSku": "JFRFLnsSyJhQApjt", "itemType": "9Vvn7MyjPjMUoUC9"}], "name": "cUOeLu9OVb7aBijw", "odds": 0.540360241795443, "type": "REWARD_GROUP", "weight": 92}], "rollFunction": "DEFAULT"}, "maxCount": 93, "maxCountPerUser": 44, "name": "2UVRJN0qFJaGDiDm", "optionBoxConfig": {"boxItems": [{"count": 0, "duration": 41, "endDate": "1980-06-04T00:00:00Z", "itemId": "CvCembJFNyIwxPt1", "itemSku": "9hjyI7ALyZHQ8V4A", "itemType": "ejtUM6llcl5hdZoP"}, {"count": 14, "duration": 78, "endDate": "1995-03-01T00:00:00Z", "itemId": "cQ4wXeArPe089cqM", "itemSku": "uV8MLxiTO3GhLJ2q", "itemType": "x2h93yz3Y7YtgdQM"}, {"count": 16, "duration": 52, "endDate": "1984-07-02T00:00:00Z", "itemId": "pcpwawMF0j9IirMe", "itemSku": "P7fy5Y0RiyzWJZAZ", "itemType": "HklGmHH8I1l3xgoV"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 77, "fixedTrialCycles": 9, "graceDays": 40}, "regionData": {"mJDvokY7UUVCHGWc": [{"currencyCode": "VrHG4ehIhJk597xU", "currencyNamespace": "XpiOLFQFxY4AHLzQ", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1985-09-01T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1973-02-02T00:00:00Z", "expireAt": "1981-05-25T00:00:00Z", "price": 21, "purchaseAt": "1997-09-19T00:00:00Z", "trialPrice": 2}, {"currencyCode": "XMgSK5Yx6dbDNBB9", "currencyNamespace": "LNziCP1xQygVqAio", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1971-07-14T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1980-07-10T00:00:00Z", "expireAt": "1976-08-03T00:00:00Z", "price": 30, "purchaseAt": "1982-12-02T00:00:00Z", "trialPrice": 48}, {"currencyCode": "OkHmCFldZ0XAvFit", "currencyNamespace": "LhI0sqjfua9x08SJ", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1977-06-23T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1974-12-12T00:00:00Z", "expireAt": "1990-10-25T00:00:00Z", "price": 34, "purchaseAt": "1982-08-11T00:00:00Z", "trialPrice": 46}], "mEY4lD14f0XIJh3u": [{"currencyCode": "xrBGEumeTG434Dml", "currencyNamespace": "bwWuZpKPB4rzvo2R", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1981-03-08T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1982-12-28T00:00:00Z", "expireAt": "1997-01-04T00:00:00Z", "price": 38, "purchaseAt": "1992-08-10T00:00:00Z", "trialPrice": 37}, {"currencyCode": "odn1p1MJrZv1itpB", "currencyNamespace": "PRbtgUMFAcxhrY80", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1982-10-18T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1996-08-02T00:00:00Z", "expireAt": "1996-09-15T00:00:00Z", "price": 13, "purchaseAt": "1991-09-13T00:00:00Z", "trialPrice": 76}, {"currencyCode": "mEZ8kWtzrSIfMjxz", "currencyNamespace": "BwWKzJldpqtAlzVR", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1976-01-27T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1989-10-21T00:00:00Z", "expireAt": "1980-12-28T00:00:00Z", "price": 51, "purchaseAt": "1980-12-18T00:00:00Z", "trialPrice": 97}], "IVc2WJyX67v7JTcr": [{"currencyCode": "ppNGl78VMGk3b5E1", "currencyNamespace": "GgAqoQkgiht0lsg1", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1986-04-06T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1997-07-06T00:00:00Z", "expireAt": "1990-04-25T00:00:00Z", "price": 75, "purchaseAt": "1975-06-16T00:00:00Z", "trialPrice": 52}, {"currencyCode": "bu5HHlb7VI1cHNU3", "currencyNamespace": "pvbpyJTgwl3ZOMpz", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1986-06-05T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1992-03-21T00:00:00Z", "expireAt": "1990-12-31T00:00:00Z", "price": 23, "purchaseAt": "1998-08-22T00:00:00Z", "trialPrice": 33}, {"currencyCode": "FMazvRX5v3UCobMU", "currencyNamespace": "8bzcaf0Qv0dFMnEc", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1983-06-20T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1973-04-15T00:00:00Z", "expireAt": "1979-08-03T00:00:00Z", "price": 86, "purchaseAt": "1989-06-08T00:00:00Z", "trialPrice": 94}]}, "saleConfig": {"currencyCode": "h1iJOyDZJCwufYAU", "price": 89}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "Be9WZ9kuWMnRcGzb", "stackable": true, "status": "ACTIVE", "tags": ["E3wXz4Q1L3hAG9xO", "5iC34s0kTiXwPjN8", "Oi4DVUYo37I8Mgh1"], "targetCurrencyCode": "DJARpi5KzpbDPfXd", "targetNamespace": "Gvodrl6UOwYZJq3O", "thumbnailUrl": "JhzlgtX87XuWOIpQ", "useCount": 45}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'UpdateItem' test.out

#- 123 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    '7XwughkPLKDhdMf1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'DeleteItem' test.out

#- 124 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'o4pweyQyv10mRO0t' \
    --body '{"count": 74, "orderNo": "rvVr6DpLOyrgsLZV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AcquireItem' test.out

#- 125 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    '9arTxBgnOqH9lyv8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'GetApp' test.out

#- 126 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'wx2JosSHLipk5N6e' \
    '79zCfL2ar4zJmB2w' \
    --body '{"carousel": [{"alt": "ifDA7LpND5zXLhrm", "previewUrl": "EeBwTzs9QmLReEZ0", "thumbnailUrl": "r6n6anryoVkl4tCh", "type": "video", "url": "wkTTCLlRCEQSp3Xw", "videoSource": "youtube"}, {"alt": "qpl1Xk1CdFvYqfoY", "previewUrl": "zBc16XXXuoJGXCyz", "thumbnailUrl": "A8a5uh1LdVOaWOjR", "type": "image", "url": "BnYPNYKWhYLsAlPZ", "videoSource": "vimeo"}, {"alt": "yTZOXYRC3gIRiYFp", "previewUrl": "DlAEyVuvyXITMn2F", "thumbnailUrl": "86xZRHxnOP02x00S", "type": "video", "url": "zUY6EuVZznqQVYO5", "videoSource": "youtube"}], "developer": "28Ri3CuA2GelFQyu", "forumUrl": "DWvfe4Hp9aCLekZc", "genres": ["Casual", "RPG", "Simulation"], "localizations": {"a3b0hFYqZQAUm9m9": {"announcement": "ht4JsrC6ho0XSsR3", "slogan": "HPQNrtkf3M9oI3ym"}, "Yms9fuih2WMLldox": {"announcement": "YLZHiFEo5sDrk8BZ", "slogan": "0jnV4jAAxGZ794ng"}, "DQya3dvyjxR120zH": {"announcement": "mDzxvCGS2mYl0sA8", "slogan": "7gQx9kL8a1tEpNGa"}}, "platformRequirements": {"oJWjZSpZNjdKHqDX": [{"additionals": "1jGg2X6VHZOulL5K", "directXVersion": "fkSA0amHSK4Sz7fb", "diskSpace": "w7cgHHvIEPvqjKVv", "graphics": "PP5x3gf1HnOzyuw5", "label": "5KAICc0N5AqnaH49", "osVersion": "QFksDAGUgVcYdzd3", "processor": "mUKKxi2anNFpYXwE", "ram": "37QpBIY8LEEtCmse", "soundCard": "mV8gAHQaitMhleY8"}, {"additionals": "3sh3B07O0XQWCZXa", "directXVersion": "Pi8oY6VkZP57PyBL", "diskSpace": "X7knj7y5qEOp7hzP", "graphics": "CxvetFhAgAkkEhd3", "label": "Y16uyKwJ713r4F9W", "osVersion": "C342Uggyr64isEfx", "processor": "bFEabmT6MmgebEkQ", "ram": "73QcKQldxIqMgf2P", "soundCard": "aNJqIMDWJUW3I4SK"}, {"additionals": "jp0NOc5dWAES7S7w", "directXVersion": "BqBe4F2z2u3wwUBB", "diskSpace": "3KkzIBx4VA9ZxbKQ", "graphics": "DqG7UJEMeseC0hno", "label": "I1dph0xgVXvWuSKh", "osVersion": "oOQCljoyZp9rrR7R", "processor": "JbkDwkEjOWWCzn2p", "ram": "aEvjRIcSa260P2hp", "soundCard": "jhYQEdyLRX3etMjv"}], "8jskCHfqF5uo9BT2": [{"additionals": "QqCxWZGjDRc27d9a", "directXVersion": "3AaZO1VcAqwHJEyM", "diskSpace": "rwNINM4zHFF9ucrE", "graphics": "cYD5hjgrxoEVEIkv", "label": "pWupGhtaU3oC1Ly7", "osVersion": "xHbAN2Bdv1CfQOij", "processor": "hEI21znti03vAJiz", "ram": "EosjuIsTXKAQ4uWL", "soundCard": "CMgN7rU1yiWEODov"}, {"additionals": "RwzU7QiANYIF1YbE", "directXVersion": "ZwEzBNPCCnVKYp3E", "diskSpace": "Qx9pSofiZZNcWBxK", "graphics": "2ScBMbpsjgGDmxpN", "label": "0sNW3RHxioyNedQ1", "osVersion": "E2lQg6rSZj7yw7aP", "processor": "U0DqhD5agSwSs0OR", "ram": "F2pLQCqPGUmF8pQC", "soundCard": "rEqdstmoPJurb0FV"}, {"additionals": "ZK7sonuzTm1gseYP", "directXVersion": "sB00G8moKbti7cqK", "diskSpace": "dwnwTyTyr1XXDYCl", "graphics": "bgXA2XATEcyKtSz6", "label": "QsS6BHqs2Z5aknpC", "osVersion": "HXIr8JndNzIiCZiP", "processor": "RCujrja26Ygd7A15", "ram": "55BielNg6kfRgfnB", "soundCard": "T7OdjPnywuIoLpkJ"}], "EPfnaESuOM4olKFV": [{"additionals": "sSfgNQjKhrrrStCg", "directXVersion": "99ejNACAFAJlcWkS", "diskSpace": "5jnhMZsQ8CVsHXHY", "graphics": "Bx7KkpRAaivn5yFN", "label": "SoKf7tdmVppuu6ac", "osVersion": "pUdn8X5IZjtFT6Bs", "processor": "8OO0CVqXF6bMzRd2", "ram": "Z2WjutGAptSES09Z", "soundCard": "cFGPCokMwrtVvGhH"}, {"additionals": "zNdHMJys9gtFxWSk", "directXVersion": "vzQZjQrgnXc87G37", "diskSpace": "jhABEz5T57ICJiWE", "graphics": "PnZsQ3NsS8Vgyzvu", "label": "jT8aEay0LM1IpMDZ", "osVersion": "uDLXNscwbXgdwQnM", "processor": "uReen3aYjhar5GRz", "ram": "OAfOXbaEHFX0sySx", "soundCard": "hkhCpV5A2ZLHG60X"}, {"additionals": "6LS9dYe42oicsvoF", "directXVersion": "2EgsoZSKOzQIDAf4", "diskSpace": "4vyeNIfF5Ri6ydoL", "graphics": "4tB0FUpx5TLiooOq", "label": "Rm1Mxf3NfjnW9axv", "osVersion": "ejxDQgdz6GmSzMPz", "processor": "B5ZP4mdsjnGGtbn2", "ram": "7LOqX7FWHHlsxNkf", "soundCard": "gF88XOEWI4jARIQk"}]}, "platforms": ["Windows", "MacOS", "IOS"], "players": ["Single", "MMO", "Multi"], "primaryGenre": "Casual", "publisher": "4zjyRqefUM764xXm", "releaseDate": "1985-03-25T00:00:00Z", "websiteUrl": "DDRW0KNwlKcveutO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'UpdateApp' test.out

#- 127 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'HZ2aWSL11msU7Qpc' \
    'pkApFODOqz4FKRWc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'DisableItem' test.out

#- 128 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'vJIwzW53tKi9mxhR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetItemDynamicData' test.out

#- 129 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    '8RWtFcnNAoxNPXPl' \
    'Sv6kWXBTTodpLcEI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'EnableItem' test.out

#- 130 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    '0mWFWKlSwI38LyDy' \
    'LTQxmA6nDD3EFfeJ' \
    'dwskeVjYAe1CNRQX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'FeatureItem' test.out

#- 131 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    '4T37n6lgMV9tMXN2' \
    'kDg7INFTJO4FUT15' \
    '2zR0PBTEvM3TgMsA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'DefeatureItem' test.out

#- 132 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'S5t3TYXNAGl1xy1H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetLocaleItem' test.out

#- 133 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '8Ag2XY2TnyPCVsWz' \
    'hPIeHkoUSeT3lv51' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 53, "code": "9Vwsfzatv4JzfVNA", "comparison": "excludes", "name": "7yuqGFaSZmLnl13N", "predicateType": "SeasonTierPredicate", "value": "LgWQHXc3bRYKbJGF", "values": ["KjoifZAWt13ISgdw", "P8HZNLJ7aPbRMRrb", "Aum4b3t1Ph8xHfEA"]}, {"anyOf": 24, "code": "061ScAQ7gSO3GHo6", "comparison": "isNot", "name": "UCJsDilWhSc6XIxh", "predicateType": "SeasonTierPredicate", "value": "AnmCFUZdH9CHHozR", "values": ["cgyTtSOU4FdUceGt", "ud9g15dSBhpLRxyd", "IE1CQFSQS3RD8Q6Y"]}, {"anyOf": 28, "code": "IOArelbYwYTtGsRN", "comparison": "is", "name": "ryZK7UKLhMA3DOG2", "predicateType": "SeasonTierPredicate", "value": "stZ6FN0omme6HiOr", "values": ["buq9cXar8FKACMfa", "nODMMswus0ykKyOT", "ESKKo0RBtKDj9PgW"]}]}, {"operator": "and", "predicates": [{"anyOf": 28, "code": "npo1k2W89U6PA5By", "comparison": "isGreaterThanOrEqual", "name": "lXSUYkHNYqepadIS", "predicateType": "StatisticCodePredicate", "value": "mepTMiQqOA7WiIi8", "values": ["8H4Rs8p9AflDjkRQ", "k4T7A6suz0JPLhBV", "na4afJC9mgf0blFr"]}, {"anyOf": 82, "code": "A9VvbcAi4ZmdXz2N", "comparison": "includes", "name": "5HLYxM5DN6DJmnjB", "predicateType": "EntitlementPredicate", "value": "IY8wqc2OcvjggLVw", "values": ["D8YJKnP2TmDSwAt1", "UGNieMe0c6eA8xCv", "AQMWoB0LkwHKKIT2"]}, {"anyOf": 97, "code": "qsnbtXNBeq2uoLHW", "comparison": "isGreaterThanOrEqual", "name": "1xuey3fB1KN5EzSm", "predicateType": "StatisticCodePredicate", "value": "ougrIsaMHmzafNax", "values": ["ae7TEBnzFuxHzrR3", "CNIzvOh61wCAYs9Q", "PiHyAFfiwIi9bI2X"]}]}, {"operator": "or", "predicates": [{"anyOf": 58, "code": "8nIgoYpZYIYto2cp", "comparison": "isGreaterThan", "name": "mTvUJIV0W2K8alZa", "predicateType": "SeasonTierPredicate", "value": "tB2fqN6D76apW4Cs", "values": ["iLkAEWkqMo2uv4G0", "uQx2nME1E8lGIgW2", "AWqhlJfHgWSAjBmz"]}, {"anyOf": 15, "code": "nSjFQf699gOqEWjr", "comparison": "includes", "name": "9UhsGYJ3NLSVOdqF", "predicateType": "StatisticCodePredicate", "value": "zKcDEz6ivQvlpRKa", "values": ["gGd8OJWfXgBkof2D", "oT4csEU6rwlyAZXR", "gN1OHBaKIf5hoyD0"]}, {"anyOf": 24, "code": "W2xX96TmFiMrqZaZ", "comparison": "excludes", "name": "R4SAMIG5DRP307xN", "predicateType": "EntitlementPredicate", "value": "xMniv6VDtGhPQu5I", "values": ["gTlvO4wr8D7APHhi", "isGldXgqa99UNyHI", "hwdNSBKpqJ8V1kQH"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'UpdateItemPurchaseCondition' test.out

#- 134 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'lnrLOesUoAwwCO2c' \
    --body '{"orderNo": "7aEAHcpdx91UabvN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'ReturnItem' test.out

#- 135 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'QueryKeyGroups' test.out

#- 136 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "vRaUrUqTcFsGXxjR", "name": "7vTeNdfPVWmEdVFX", "status": "INACTIVE", "tags": ["EGGpt55fVsBfrc4O", "J06MAINAypeu3Zwg", "LF3XSMYkGVjcYe2w"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'CreateKeyGroup' test.out

#- 137 GetKeyGroupByBoothName
eval_tap 0 137 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 138 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'wruEu9pKFWxMrOrO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroup' test.out

#- 139 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '7m2fUVM4vgvN5a9n' \
    --body '{"description": "lua2qF5WhoaEpbMK", "name": "Ce8F6OE3PKy2vHH6", "status": "INACTIVE", "tags": ["rTj3i1nC0J9A8DUt", "bT9Nimqnzt0awizc", "aXFFkKf2QcbDNp9w"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'UpdateKeyGroup' test.out

#- 140 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'VgloPqugy2zhY3Cj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetKeyGroupDynamic' test.out

#- 141 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'OqLPkNLoeCULsEpt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'ListKeys' test.out

#- 142 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'E9wdsebmIkQbE3nP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'UploadKeys' test.out

#- 143 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'QueryOrders' test.out

#- 144 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'GetOrderStatistics' test.out

#- 145 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'bd7YNYQJL8jGfdMv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'GetOrder' test.out

#- 146 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'M0zEHmThs6Oydk9j' \
    --body '{"description": "SSY0aqjjeExTo07X"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'RefundOrder' test.out

#- 147 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'GetPaymentCallbackConfig' test.out

#- 148 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": false, "notifyUrl": "D7r4dvtuyipF1FB9", "privateKey": "RNF3G6sPweMmOIXU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'UpdatePaymentCallbackConfig' test.out

#- 149 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentMerchantConfig' test.out

#- 150 UpdatePaymentDomainWhitelistConfig
$PYTHON -m $MODULE 'platform-update-payment-domain-whitelist-config' \
    --body '{"domains": ["6IcFkTWMTXNI4WIT", "2qYutqii44IKSSMR", "4zJKYxouzcD0pPXk"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'UpdatePaymentDomainWhitelistConfig' test.out

#- 151 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'QueryPaymentNotifications' test.out

#- 152 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'QueryPaymentOrders' test.out

#- 153 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "dTrLYN48A5DLkL19", "currencyNamespace": "tXrv2bC14hfBeKIS", "customParameters": {"P0coyLHG52kcFEHK": {}, "N66TOzJSyl83HhHT": {}, "DHO8mQoGOS84jEVR": {}}, "description": "Gn0aQHrmMgGX6WiX", "extOrderNo": "9WPUEwP8KagnEKkf", "extUserId": "RnTAD7nNuqrknaj1", "itemType": "OPTIONBOX", "language": "KS_NSyS_lI", "metadata": {"5hyfwqkxFeK2HSaU": "yXEOQUwXDX8MGlij", "aR3VVk7nD09WBTm7": "Hy1AvjH8TO5OIzsh", "GgQ4ThugQFOWwlpo": "3MnSMNdjVtLt8CrU"}, "notifyUrl": "FIkcZk3UEaPstaXt", "omitNotification": true, "platform": "RnaYhr2WJyqCvAfW", "price": 18, "recurringPaymentOrderNo": "LXwaZwDM1CYDLmaP", "region": "DEUbDvBUnl1NO7rL", "returnUrl": "a2XTR4IEvU0JE2kL", "sandbox": false, "sku": "b2CBEoV5Nm182ykf", "subscriptionId": "Y01GcykfqRyXIVni", "targetNamespace": "s4SKjpYMZV5AVm0v", "targetUserId": "OTpy2xyajHMUnKfl", "title": "mcC3pOWLT8ckEy2S"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'CreatePaymentOrderByDedicated' test.out

#- 154 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'MQcmxebThGYrgNOi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'ListExtOrderNoByExtTxId' test.out

#- 155 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'mVrZzkyKHvwa7cbR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrder' test.out

#- 156 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'j2at5ZJSh02srNNR' \
    --body '{"extTxId": "w3Y1j6viZbWeu0Wy", "paymentMethod": "HCl9Xs4E416s1Oq4", "paymentProvider": "WXPAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'ChargePaymentOrder' test.out

#- 157 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'TOf0jHAc8PGncBz3' \
    --body '{"description": "SqYUIQnwGbMTiA96"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'RefundPaymentOrderByDedicated' test.out

#- 158 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'lnb5gdT3QnV1lkyf' \
    --body '{"amount": 31, "currencyCode": "BaVDBRlLxoAzljrh", "notifyType": "CHARGE", "paymentProvider": "ADYEN", "salesTax": 0, "vat": 34}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'SimulatePaymentOrderNotification' test.out

#- 159 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'WNQoeso9mKjTRboT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetPaymentOrderChargeStatus' test.out

#- 160 GetPsnEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-psn-entitlement-ownership' \
    'LjWe4LfJee5PI5dF' \
    --body '{"accessToken": "v5buhIZ4eMnCDQFC", "serviceLabel": 4}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'GetPsnEntitlementOwnership' test.out

#- 161 GetXboxEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-xbox-entitlement-ownership' \
    'IQqBIhw3NQXGJDWt' \
    --body '{"delegationToken": "QNJFHNbgt9uaoCeP", "sandboxId": "9rZK0m4whjNMB89A"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'GetXboxEntitlementOwnership' test.out

#- 162 GetPlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-get-platform-entitlement-config' \
    'Nintendo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetPlatformEntitlementConfig' test.out

#- 163 UpdatePlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-update-platform-entitlement-config' \
    'Steam' \
    --body '{"allowedPlatformOrigins": ["IOS", "Twitch", "Epic"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'UpdatePlatformEntitlementConfig' test.out

#- 164 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'IOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'GetPlatformWalletConfig' test.out

#- 165 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Epic' \
    --body '{"allowedBalanceOrigins": ["IOS", "Playstation", "Twitch"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'UpdatePlatformWalletConfig' test.out

#- 166 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Playstation' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'ResetPlatformWalletConfig' test.out

#- 167 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'GetRevocationConfig' test.out

#- 168 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'UpdateRevocationConfig' test.out

#- 169 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'DeleteRevocationConfig' test.out

#- 170 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'QueryRevocationHistories' test.out

#- 171 GetRevocationPluginConfig
$PYTHON -m $MODULE 'platform-get-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'GetRevocationPluginConfig' test.out

#- 172 UpdateRevocationPluginConfig
$PYTHON -m $MODULE 'platform-update-revocation-plugin-config' \
    --body '{"appConfig": {"appName": "ebfPenWUEBZC8keF"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "vI1QiMb8GRzCETFW"}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'UpdateRevocationPluginConfig' test.out

#- 173 DeleteRevocationPluginConfig
$PYTHON -m $MODULE 'platform-delete-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'DeleteRevocationPluginConfig' test.out

#- 174 UploadRevocationPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'UploadRevocationPluginConfigCert' test.out

#- 175 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "ABKOA0L11TgHUfOD", "eventTopic": "RocsLmBbV1sCNpAD", "maxAwarded": 47, "maxAwardedPerUser": 25, "namespaceExpression": "ypkoh2Ufv88v1ngA", "rewardCode": "JIsXT5AL1og70bKW", "rewardConditions": [{"condition": "5QYtGAVQvqyIVadq", "conditionName": "2JITEaFYCmQEyL35", "eventName": "Lh1cCBgg2D4HUqIh", "rewardItems": [{"duration": 16, "endDate": "1986-07-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "kGOuDvT1kGGvspIG", "quantity": 6, "sku": "ny0912axRFeMgIQd"}, {"duration": 73, "endDate": "1976-11-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Pukj7q5MjU2f4833", "quantity": 2, "sku": "4tMfHLoSkvb8lbFB"}, {"duration": 39, "endDate": "1974-09-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0ILnxdtDeCtbUIxx", "quantity": 94, "sku": "WSPCOIejZfSnIavo"}]}, {"condition": "uuFpqcq4Gd9fk7fh", "conditionName": "p8GNMEX4Ps5vorNX", "eventName": "6W3h8ItD6AFXbQvG", "rewardItems": [{"duration": 4, "endDate": "1993-10-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "P4zKaJuBk11UoFtS", "quantity": 59, "sku": "ktvmekdbic6I2n5H"}, {"duration": 6, "endDate": "1991-04-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "AylHS3htDNYuRa6j", "quantity": 95, "sku": "NnODJKrDdt60vGd1"}, {"duration": 43, "endDate": "1975-04-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "JlQ0WmwgELy9cxgD", "quantity": 1, "sku": "7v3mvPolaFeEWrqY"}]}, {"condition": "B9hLG74YMs1JCrpn", "conditionName": "pPPUyyCN4MFXqnFz", "eventName": "R6C20jVL8heTq0Wm", "rewardItems": [{"duration": 10, "endDate": "1996-08-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "d7wzxTtcIyIFNDIR", "quantity": 14, "sku": "HFFRxJPvHewpv9Ie"}, {"duration": 59, "endDate": "1984-08-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "xQG5zPNH4eYMWbtv", "quantity": 21, "sku": "030WDtRFRReZoX0e"}, {"duration": 78, "endDate": "1982-07-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "jqaJnmx4p5ShR3fI", "quantity": 56, "sku": "ZeDWbxHSLn6kQxqK"}]}], "userIdExpression": "7yxoQHX7XexjvW4r"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'CreateReward' test.out

#- 176 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'QueryRewards' test.out

#- 177 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'ExportRewards' test.out

#- 178 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'ImportRewards' test.out

#- 179 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'Ra4Wlon8ZzeHgabb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'GetReward' test.out

#- 180 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'mT81jfik6ShLjJbf' \
    --body '{"description": "174MCR5ZpvlWXRfE", "eventTopic": "oUuNmQrq6p7WrYOB", "maxAwarded": 31, "maxAwardedPerUser": 39, "namespaceExpression": "l77LsKN46XLNfQ0S", "rewardCode": "XyMTygZRBzJUpXr5", "rewardConditions": [{"condition": "ZkwYPLnvikBnp1IL", "conditionName": "BujZh8S62GO32C73", "eventName": "RnfIDxg4DkmnJtxZ", "rewardItems": [{"duration": 12, "endDate": "1997-10-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "MxGfQHmg4I1PJybU", "quantity": 25, "sku": "QM3ZXq9atijyFT8B"}, {"duration": 93, "endDate": "1974-12-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "OznZA6EVEXEqkFFy", "quantity": 67, "sku": "ryjxylwRVcy18iHO"}, {"duration": 40, "endDate": "1972-08-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "HWBFM13F37X9HTu6", "quantity": 5, "sku": "tfSFU0F8qXSfSkxh"}]}, {"condition": "rHhjWxkDQUTY21m1", "conditionName": "9Eiqpyu9P7Yh6ERW", "eventName": "yedt6rkPxW72ya2r", "rewardItems": [{"duration": 41, "endDate": "1989-12-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "aX6XRSXg6OXqwh2U", "quantity": 19, "sku": "7FiB3X634iuF8pqh"}, {"duration": 34, "endDate": "1993-05-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ni6IfH05hVdagEET", "quantity": 19, "sku": "bQNFNB2IE43MBCGN"}, {"duration": 50, "endDate": "1993-03-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qnDuWD1qiZzXQxSD", "quantity": 13, "sku": "9km7KeyQB3SUe4ug"}]}, {"condition": "9J3KKHHaSwFS7fAG", "conditionName": "mA4gy2QBm02aTdgp", "eventName": "0WcRdrrdOKQbXXiM", "rewardItems": [{"duration": 13, "endDate": "1998-09-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "AaD5a0gqyakuryIS", "quantity": 20, "sku": "zXYP9kO0rmonOpgt"}, {"duration": 83, "endDate": "1981-11-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "mMvrDH4IXc6tn8Xa", "quantity": 49, "sku": "mpfmMq65nYpNAwv9"}, {"duration": 96, "endDate": "1980-11-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "CbltixkXwXO0XemK", "quantity": 68, "sku": "SRn2FX0Ac7CzuPXE"}]}], "userIdExpression": "90ufrBaS458bBTbc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'UpdateReward' test.out

#- 181 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'qQVkSIXLGF8dtk8b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'DeleteReward' test.out

#- 182 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'qcPfBJ9GOHxUkZCv' \
    --body '{"payload": {"qVRe3F78EGvZd49h": {}, "W95i4Rm9sBef6ymE": {}, "EU6G6YVa5GGFvLtW": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'CheckEventCondition' test.out

#- 183 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'l66DAEkAvXqNdnEf' \
    --body '{"conditionName": "ei54fLtFTRx1fcfy", "userId": "4uTVbxv0l7RvPOKq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'DeleteRewardConditionRecord' test.out

#- 184 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'QuerySections' test.out

#- 185 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    '8iNNYLY5oWJPoo8Q' \
    --body '{"active": false, "displayOrder": 63, "endDate": "1983-08-17T00:00:00Z", "ext": {"uoTiOgT4AtBZJsMB": {}, "PDcUuWC1NgHaxQlx": {}, "s2MPGkLeY5CedGPB": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 96, "itemCount": 73, "rule": "SEQUENCE"}, "items": [{"id": "F96NG7vODPmfnV8d", "sku": "Or38jFYjFRDj47EZ"}, {"id": "TCCwz8yawNImZdPz", "sku": "t9koNSL3vqGgJOWk"}, {"id": "I0sHphIU3KaP7nk9", "sku": "iEaqudy3aYo02pzH"}], "localizations": {"annSLeEYvuciynwW": {"description": "b01HLrp6OW9Y7FII", "localExt": {"EJMm4Kizs3NRbyYM": {}, "yWPHp8NpreWtVtRQ": {}, "u0coThNxwnnpoM2K": {}}, "longDescription": "SoHlpDFImJNovlZq", "title": "1O6RDUgilQHCts6S"}, "UNxUWIGSkxjKL3Ei": {"description": "P6WeXWf3dBAVfIM2", "localExt": {"oLFaTIhv5XrQvTAd": {}, "isxP0DyxqSYeCl4g": {}, "EZgIMDALa4nsITUe": {}}, "longDescription": "FKNh8kgmMjBxD74L", "title": "ujtGQD9sT5LHkWjF"}, "Io6VbU9gwMgZPR9Q": {"description": "5Lstog0ehjEmcjJz", "localExt": {"kf7rNu3ZARHXZ5yu": {}, "JsfxI3zuYwCYQw4R": {}, "r3lmeyijwD3pYZEo": {}}, "longDescription": "KfBV4CX15snBgmfl", "title": "ygDW6ab0RoZeMIFY"}}, "name": "mEraqGPOCMPGtRg0", "rotationType": "NONE", "startDate": "1987-10-20T00:00:00Z", "viewId": "zSGs8nBUQVBsF03D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'CreateSection' test.out

#- 186 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    '5vkAkZ8CS09fFrbd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'PurgeExpiredSection' test.out

#- 187 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'regZfA6pBIXqoaoY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'GetSection' test.out

#- 188 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'oHcrIwc6qkDf3ciu' \
    'VB7vM6wSqwns2XJf' \
    --body '{"active": true, "displayOrder": 24, "endDate": "1983-06-15T00:00:00Z", "ext": {"HcWUCcahA1tjiBug": {}, "kSmA8prRvnuoHm9f": {}, "oRLP4zSxApJe0apl": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 17, "itemCount": 2, "rule": "SEQUENCE"}, "items": [{"id": "oGjonwKDYwjvKhxw", "sku": "taxd74bEkQ8XN3xQ"}, {"id": "0KaIZ1ISja5TxqN8", "sku": "RXvgNzoX14Km851z"}, {"id": "HcDdphWEIlBnOKyf", "sku": "AbdUB1OM5oKTXANl"}], "localizations": {"enFuUeRc2SCqQ9kg": {"description": "rqAIaKAUBfyFCxsJ", "localExt": {"fyos4fOD6B14cwUN": {}, "ByHqsS7t8WUpg0eq": {}, "uIg7wIz8o3rFWvlE": {}}, "longDescription": "7bmuaFNPCECKSzHT", "title": "T5beKYt4CDlWZzqp"}, "JeQd6tN5oH4E7Jos": {"description": "GEpOKUFWLtsLf278", "localExt": {"ybCNhF9RCyMn5VX8": {}, "7u49Hsq4hLUkLLTN": {}, "MnmlFzzwpEZwbcCE": {}}, "longDescription": "sJIB0JkRcYhCT3pU", "title": "MiOk2aKaj7wqr7ww"}, "PCgByCnljJ7CYvap": {"description": "WO5JGco1tRG98viu", "localExt": {"YwQTHKPcc8Z82Wtw": {}, "cihC87O1U2uYktiA": {}, "FqIsHod9kt3xkRSa": {}}, "longDescription": "jXSTpU3aCkzqs0hC", "title": "50vEOIxc25vtorwr"}}, "name": "F6HtcJbqjCZkEvdW", "rotationType": "NONE", "startDate": "1977-03-31T00:00:00Z", "viewId": "7VYPrZA5UWNq6yTj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'UpdateSection' test.out

#- 189 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    '5WST6JF9lLvPS5jJ' \
    '58vaRaaxVQeMUb1k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'DeleteSection' test.out

#- 190 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'ListStores' test.out

#- 191 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "vSj6jcjlxGsLgfrh", "defaultRegion": "BTH1QV91XmB5Z6en", "description": "6c5d620U9addYCAt", "supportedLanguages": ["uTx2FKoGRQ2i1n2W", "JVJy6yBPVmpbwVG3", "MwHy6yQU2RSNGWKn"], "supportedRegions": ["NDFZOok9snWC9CFi", "RmbELIzawfXvKu5U", "suFOUXohEHKCKphT"], "title": "iityfpZixQMzfhG3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'CreateStore' test.out

#- 192 GetCatalogDefinition
$PYTHON -m $MODULE 'platform-get-catalog-definition' \
    'APP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'GetCatalogDefinition' test.out

#- 193 DownloadCSVTemplates
$PYTHON -m $MODULE 'platform-download-csv-templates' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'DownloadCSVTemplates' test.out

#- 194 ExportStoreByCSV
$PYTHON -m $MODULE 'platform-export-store-by-csv' \
    --body '{"catalogType": "VIEW", "fieldsToBeIncluded": ["C9Be3Cvn1QymYMLA", "dBSViPHKLXkQVWSL", "bAXxxeatall18E5J"], "idsToBeExported": ["9knaLMlveXWFZqot", "aiZN3MPuYWk5lHvw", "9RXrx8aUB1xXuK2M"], "storeId": "wrRJukMTkO00KLgd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'ExportStoreByCSV' test.out

#- 195 ImportStore
eval_tap 0 195 'ImportStore # SKIP deprecated' test.out

#- 196 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'GetPublishedStore' test.out

#- 197 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'DeletePublishedStore' test.out

#- 198 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'GetPublishedStoreBackup' test.out

#- 199 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'RollbackPublishedStore' test.out

#- 200 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'dr0UUiy5jm1w2g65' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetStore' test.out

#- 201 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'JkaoPuBsuSb0LePf' \
    --body '{"defaultLanguage": "5b8MJ94DAh1Mc7Vk", "defaultRegion": "Hxj8k5KSFtbEoEr5", "description": "LqKRRnKy17sBYlx7", "supportedLanguages": ["rzEm3km2jjNrqEmu", "Ef6JRpqZEUH2Rr5l", "kfHjqVCMpunzeSPk"], "supportedRegions": ["f8Y5ksiqVvcGZxTP", "7pduqX3e9tt0zz5g", "s7YuyxJLe1TkfLiM"], "title": "9EqyhFh7mq6sgk5c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'UpdateStore' test.out

#- 202 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'HaJYkzClqPty2kxg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'DeleteStore' test.out

#- 203 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'yry1MM9eo43Qi5cR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'QueryChanges' test.out

#- 204 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'ehBB7o24lw21Z3nE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'PublishAll' test.out

#- 205 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    '04Cbkpn0yX44aL9f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'PublishSelected' test.out

#- 206 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    '0QyO5YXVhTiaE4WK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'SelectAllRecords' test.out

#- 207 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    'nEeaUdAmgmnzKSVl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'SelectAllRecordsByCriteria' test.out

#- 208 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'XsRNMykbnHTrHLma' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetStatistic' test.out

#- 209 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'TGFI1atDOVS2F6Is' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'UnselectAllRecords' test.out

#- 210 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    '27hn9TSwEvJPZcYr' \
    'XKMnNZIm0ooHCnlq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'SelectRecord' test.out

#- 211 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    '1H5IuOvafRIdOXlx' \
    'xdySywm5h2pCfHjg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'UnselectRecord' test.out

#- 212 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    '41ZhheDDG5HJEFQR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'CloneStore' test.out

#- 213 ExportStore
eval_tap 0 213 'ExportStore # SKIP deprecated' test.out

#- 214 QueryImportHistory
$PYTHON -m $MODULE 'platform-query-import-history' \
    'X4iVg8TK1CF9X9mT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'QueryImportHistory' test.out

#- 215 ImportStoreByCSV
$PYTHON -m $MODULE 'platform-import-store-by-csv' \
    'mMVfQaiQKdHknLot' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'ImportStoreByCSV' test.out

#- 216 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'QuerySubscriptions' test.out

#- 217 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'plfBOvsb9aicyajU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'RecurringChargeSubscription' test.out

#- 218 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'NH4cyuoR5YkRhK1P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'GetTicketDynamic' test.out

#- 219 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'GfmAnDGtInmyZkHQ' \
    --body '{"orderNo": "xUB5U4Qk0fD8GqtX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'DecreaseTicketSale' test.out

#- 220 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'guE8Xvdv1azJ2OSk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'GetTicketBoothID' test.out

#- 221 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'JGMDAkWOP9y3eP20' \
    --body '{"count": 0, "orderNo": "7WE18eU5rtQUWRLv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'IncreaseTicketSale' test.out

#- 222 Commit
$PYTHON -m $MODULE 'platform-commit' \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 91, "currencyCode": "3WEfwBn40sJji4hV", "expireAt": "1986-01-05T00:00:00Z"}, "debitPayload": {"count": 24, "currencyCode": "myDRQk3QGp0uzzvA", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 99, "entitlementCollectionId": "a6BW7oGw2U9LoHWS", "entitlementOrigin": "Xbox", "itemIdentity": "koauo9jkTEI52B8L", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 18, "entitlementId": "MEB8OHKsqKaw1EmC"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 80, "currencyCode": "6H3l3jc1060kqFKN", "expireAt": "1972-10-13T00:00:00Z"}, "debitPayload": {"count": 68, "currencyCode": "QI1h6OjoUY4QXece", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 59, "entitlementCollectionId": "XxPodPokDUivfNI3", "entitlementOrigin": "Twitch", "itemIdentity": "ynrF5qWYvJX1f7rY", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 80, "entitlementId": "PbkDk5g9y47AVCmF"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 68, "currencyCode": "nKyUwcI9KJZt31la", "expireAt": "1998-03-31T00:00:00Z"}, "debitPayload": {"count": 47, "currencyCode": "jsGF5AYZlEYqTVSC", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 9, "entitlementCollectionId": "ccELVo9RYTquwIrG", "entitlementOrigin": "GooglePlay", "itemIdentity": "sPtzdXjtRaBOlhg6", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 49, "entitlementId": "uP0G77oZV8BGfavV"}, "type": "FULFILL_ITEM"}], "userId": "haaf5eExcjABRx8q"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 78, "currencyCode": "5doQGhc8zSCeJ4Q8", "expireAt": "1992-09-27T00:00:00Z"}, "debitPayload": {"count": 77, "currencyCode": "6vGzNfPWTQ1pJMwP", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 61, "entitlementCollectionId": "UNYFOg7TplEkOZy7", "entitlementOrigin": "Nintendo", "itemIdentity": "bRBtWCJCJuzB1jbh", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 43, "entitlementId": "xxmghZp6iVAJ6lYO"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 46, "currencyCode": "hia3QvaFIVfHyAiT", "expireAt": "1973-11-23T00:00:00Z"}, "debitPayload": {"count": 61, "currencyCode": "NYd5p2yVsBAv2ZVl", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 71, "entitlementCollectionId": "nlY8y91hD1ZHh1Vj", "entitlementOrigin": "Twitch", "itemIdentity": "EPymbIAwDAyNBagG", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 79, "entitlementId": "33WMVj7bfdfxyqKQ"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 74, "currencyCode": "nTTwZeuX7f9iY3sk", "expireAt": "1971-03-29T00:00:00Z"}, "debitPayload": {"count": 55, "currencyCode": "25jLP6zS6a5C6awf", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 1, "entitlementCollectionId": "8NPNJCopJg7IJTeO", "entitlementOrigin": "Nintendo", "itemIdentity": "oVtcblaKlhxMNx5h", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 60, "entitlementId": "3ogPTLlSlGfh2Xhf"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "Mg5NGs1Pmz6Amebh"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 64, "currencyCode": "o8aHsXJ87ywdDtou", "expireAt": "1999-11-13T00:00:00Z"}, "debitPayload": {"count": 96, "currencyCode": "p74s3RLe4gpS550e", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 99, "entitlementCollectionId": "9wOuNquv2qkqRR9N", "entitlementOrigin": "Other", "itemIdentity": "F9gKmJBuqEpgnV3x", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 6, "entitlementId": "NcCPnrmZDNctQe0I"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 97, "currencyCode": "6qYdNvmRITEU7usH", "expireAt": "1976-08-05T00:00:00Z"}, "debitPayload": {"count": 27, "currencyCode": "sGfQVawbSlqUfFfZ", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 40, "entitlementCollectionId": "tHO4xrQvXR88ArNP", "entitlementOrigin": "IOS", "itemIdentity": "c13FZxX6qNntgmml", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "hreKq9si5LTZGjfJ"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "System", "count": 93, "currencyCode": "RPR9FWa3sAlKnzZ5", "expireAt": "1989-04-23T00:00:00Z"}, "debitPayload": {"count": 89, "currencyCode": "q98jWszWZxmbhMr5", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 20, "entitlementCollectionId": "DNyd7VDhThmXAsBw", "entitlementOrigin": "Steam", "itemIdentity": "kXhiEo0RXgJkWelL", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 16, "entitlementId": "pTvUfmra4esdZ2v5"}, "type": "FULFILL_ITEM"}], "userId": "6VYnuoHevgj9ralh"}], "metadata": {"2tjIEDpjLJD7E0dh": {}, "077pXU34waIIRxeT": {}, "kl27M6AggzKZ3nqW": {}}, "needPreCheck": true, "transactionId": "PXhsCdeun9QN513G", "type": "mIqfQ8mJbg0TSRxh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'Commit' test.out

#- 223 GetTradeHistoryByCriteria
$PYTHON -m $MODULE 'platform-get-trade-history-by-criteria' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'GetTradeHistoryByCriteria' test.out

#- 224 GetTradeHistoryByTransactionId
$PYTHON -m $MODULE 'platform-get-trade-history-by-transaction-id' \
    'I4XnmuQN65HKi5qv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'GetTradeHistoryByTransactionId' test.out

#- 225 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'wLIqgfXvKjhXcfKE' \
    --body '{"achievements": [{"id": "45hKdn2Ay5KgtWue", "value": 74}, {"id": "XkqcMKE9l0uRkf5R", "value": 49}, {"id": "QTyBW6pf9Ni5L9Nk", "value": 44}], "steamUserId": "XuWuitb85Ns7DhXC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'UnlockSteamUserAchievement' test.out

#- 226 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'IneqddStnBNigsnB' \
    'pu24ga0d3NvXvIgv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'GetXblUserAchievements' test.out

#- 227 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'IynEaAcX7fXbKWmr' \
    --body '{"achievements": [{"id": "aqNIKPX6gPHT29wk", "percentComplete": 13}, {"id": "wM8cvObRjKxi25l9", "percentComplete": 25}, {"id": "27jRm1nyjO60S3gf", "percentComplete": 72}], "serviceConfigId": "tl2wHKp1L42H1n3Z", "titleId": "vUrBoqK16btU6Soa", "xboxUserId": "oiAtMgNN8B4oo9jF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'UpdateXblUserAchievement' test.out

#- 228 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'mBqiyicQHvr1zREq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeCampaign' test.out

#- 229 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'WwsQaxbdG9IxEoxc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeEntitlement' test.out

#- 230 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'gOEmGQpzN4HM3v5w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeFulfillment' test.out

#- 231 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'AiimBQXCxR1cObsy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AnonymizeIntegration' test.out

#- 232 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    's0SaqnYIBTANshJc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'AnonymizeOrder' test.out

#- 233 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'dLEofyiS3dO8j3ta' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'AnonymizePayment' test.out

#- 234 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'WbShXMN0MRNkMX09' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'AnonymizeRevocation' test.out

#- 235 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'nQEwFSce6VsIsSSd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'AnonymizeSubscription' test.out

#- 236 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'kP3IqaPaXJc57cVP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeWallet' test.out

#- 237 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    '8tXCteutO2hlDa0v' \
    'OCULUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetUserDLCByPlatform' test.out

#- 238 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'jy1ei7AZBrLdMJG9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'GetUserDLC' test.out

#- 239 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    '12CJx1H9kC6LzFqk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'QueryUserEntitlements' test.out

#- 240 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '7MSt4enxGbQr0GSt' \
    --body '[{"collectionId": "ncRVLvJm4u9ltRo1", "endDate": "1972-05-26T00:00:00Z", "grantedCode": "uco8zvapmS8p27dv", "itemId": "zUWMz6IheEap1Phj", "itemNamespace": "tZknu6Ke0rhmQrBL", "language": "FIQ-WNUM-Bz", "origin": "Twitch", "quantity": 13, "region": "jGDHolxRGH5sQmA6", "source": "IAP", "startDate": "1990-06-09T00:00:00Z", "storeId": "9p83Led5r4J7MEwK"}, {"collectionId": "xtP0SkagDcL89Pjv", "endDate": "1981-07-05T00:00:00Z", "grantedCode": "wN3o2LnIKn5bM9rW", "itemId": "10Xi6WV5MHuvBu2Q", "itemNamespace": "QOXQatBE5QBIDADP", "language": "kGTr", "origin": "Nintendo", "quantity": 71, "region": "0iTCIEKHYwj85RIJ", "source": "IAP", "startDate": "1989-03-31T00:00:00Z", "storeId": "Snhyf4L6dZ66Zi7a"}, {"collectionId": "zAJHL5PE9RVZONAc", "endDate": "1982-10-30T00:00:00Z", "grantedCode": "ZfTmD5U7RTvIuyjo", "itemId": "eXOEFAR7ULC1He2x", "itemNamespace": "JmIQ7lG3SSfJb7YC", "language": "MVU_ge", "origin": "Steam", "quantity": 44, "region": "WXtvTExHo1HliWVA", "source": "PURCHASE", "startDate": "1976-03-09T00:00:00Z", "storeId": "xDaegAgXI2ciZ5FW"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GrantUserEntitlement' test.out

#- 241 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'oyqYl8KD0zlFtltc' \
    'FGPdVe0VJQksEtHq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetUserAppEntitlementByAppId' test.out

#- 242 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    '5KHA9baTP1jNjpn8' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'QueryUserEntitlementsByAppType' test.out

#- 243 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    't78b3DT7qRYPx0W6' \
    'cXzOdGXLsEc8Xzmj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementByItemId' test.out

#- 244 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'XX4csMlaBkq9QHEb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetUserActiveEntitlementsByItemIds' test.out

#- 245 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    '66Bo3ALdAKAQUoGD' \
    'OUFK4BcWOxnwerZo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementBySku' test.out

#- 246 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'IJ2JMtHAD8gJdK4C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'ExistsAnyUserActiveEntitlement' test.out

#- 247 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'JBY63ASIuZtE2Wuy' \
    '["cIdVm37lVyVYhbj7", "X96t5WMLdod5DYqp", "6XDPJmYDZqWoL8k0"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 248 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'jEDj1R673CfYbn53' \
    'kIRN1df13EvjSbGY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 249 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'cLQEocUfUPAI2O4x' \
    'XXwCsNtkQh3rUUKa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'GetUserEntitlementOwnershipByItemId' test.out

#- 250 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'N66Rjkt9zWkx2SjE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlementOwnershipByItemIds' test.out

#- 251 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '4MM82Qw4C7p4YKcL' \
    '3qt4lUCjplpfxQDp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'GetUserEntitlementOwnershipBySku' test.out

#- 252 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'z3ka75GSPrezfQIy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'RevokeAllEntitlements' test.out

#- 253 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    '1FsYo03H0HWXeUSu' \
    'TJRHgBRpSb3GL7YA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserEntitlements' test.out

#- 254 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'U5AnUkmfVW93ZW1t' \
    'XAOpK37SfSPivmYx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'GetUserEntitlement' test.out

#- 255 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    '19GWm87P1GbEQA6n' \
    'I1VhgTvfzwfgRZnt' \
    --body '{"collectionId": "Mhunn3jSCD2AknCw", "endDate": "1992-12-19T00:00:00Z", "nullFieldList": ["e4TX4CK4IBY01KuF", "bs8Iv2Ij9B7VD3Sy", "R3UCMUtsTLoeVLjx"], "origin": "Epic", "reason": "awrlckTguotHZZnB", "startDate": "1976-02-25T00:00:00Z", "status": "ACTIVE", "useCount": 65}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'UpdateUserEntitlement' test.out

#- 256 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '1WomHQ23RrmGI0fa' \
    '4tSghREoTAvCltzr' \
    --body '{"options": ["UTJgBjWwZMcxIcmh", "utMHEeUDIyZ6bUl6", "Q4DAwzeZS20lWbIy"], "platform": "7iWsAEY3T2YDXuJS", "requestId": "zkSZfZ5duijZETiz", "useCount": 1}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'ConsumeUserEntitlement' test.out

#- 257 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'VhZ7lfOiLRYQkDw4' \
    'MI4SEqiXIaji4MOm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'DisableUserEntitlement' test.out

#- 258 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'P494vGlNtuMUpS3K' \
    '4kKGKct8SZQK7TEK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'EnableUserEntitlement' test.out

#- 259 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    '4sZzj7oPP3OeZVIL' \
    'EaXbHnhR8gT3if17' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementHistories' test.out

#- 260 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'nsndhy0Gtga4xRRN' \
    'it3ApyAvkVtA8b9z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'RevokeUserEntitlement' test.out

#- 261 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    'vOaiSMHjVciAVrPu' \
    'zKV1Wj7J3QrgnhZM' \
    --body '{"reason": "ehNOncXNM18ZiBLa", "useCount": 1}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'RevokeUserEntitlementByUseCount' test.out

#- 262 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'McAoV2wACiUOAYJU' \
    'hwTgl0tvWir64fqp' \
    '50' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 263 RevokeUseCount
eval_tap 0 263 'RevokeUseCount # SKIP deprecated' test.out

#- 264 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    '25Kp2PGW8gpXu2mB' \
    'dRvF84eD5m02245Y' \
    --body '{"platform": "lrGlfgrzLifZvRPX", "requestId": "jiYCPM52HK8ASyze", "useCount": 33}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'SellUserEntitlement' test.out

#- 265 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'T9TmQupOzuaRV8Vw' \
    --body '{"duration": 9, "endDate": "1991-06-18T00:00:00Z", "entitlementCollectionId": "LpwuZIoLrVS0AcrY", "entitlementOrigin": "Xbox", "itemId": "Vdxzm1SnMFP7ijRI", "itemSku": "315PPtar2LEaQgwj", "language": "gNbqY9SXZMP793iE", "metadata": {"dDgNGO3Dfmm8Q8A0": {}, "3ovBcVCnifE0YS9K": {}, "hgP8rRhISjcIvS4I": {}}, "order": {"currency": {"currencyCode": "6tzdbpIKoQhtOlKv", "currencySymbol": "npfkWv9kQ9FRDgAE", "currencyType": "REAL", "decimals": 88, "namespace": "EZshgoviRWdaswUz"}, "ext": {"fV36Hwf7gG4iNZfE": {}, "J6PGvsYDnaTT5U0e": {}, "2LY7yB5EiqQhvZmC": {}}, "free": true}, "orderNo": "CzyYEaMgXsszL7hp", "origin": "Oculus", "overrideBundleItemQty": {"BGkT1hNjHr2icYZY": 18, "HhBvqhixMPjP9lZT": 86, "O6iUdCh9M0KC9zNZ": 89}, "quantity": 69, "region": "aWXjMCSId4tDlI96", "source": "GIFT", "startDate": "1981-05-02T00:00:00Z", "storeId": "GcD5vraJ3WftgZ43"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'FulfillItem' test.out

#- 266 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'r4ZLb7i2SZkIaANv' \
    --body '{"code": "Z0I2EGVDWs67zwXL", "language": "MetU_FSMk", "region": "cwR3qktAdH94tziE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'RedeemCode' test.out

#- 267 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    'pGVXsUvez1lbenag' \
    --body '{"itemId": "h9kCPNSZTIlkM5IY", "itemSku": "JnbFprRWLjHPiPqv", "quantity": 80}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PreCheckFulfillItem' test.out

#- 268 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'PKb8CPLdIk4I9TU6' \
    --body '{"entitlementCollectionId": "FvvEdqHzEDtl5oR9", "entitlementOrigin": "Nintendo", "metadata": {"Oi6TDpSGwc7wXieE": {}, "Okn4KNYWbvsmtsOV": {}, "vpKYJyOQGUiqcJ2J": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "a5ftmSBKQ3zAXk9q", "namespace": "VrzEqsDwIwRyHKWs"}, "item": {"itemId": "pPtJlLDOjXTWGIrW", "itemName": "q2VvH0roA20Sfzrc", "itemSku": "9YYsgvVLN3usfhiy", "itemType": "Cf1FOddxtE52sFK1"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "Np3OwcrNR2jH7Xx7", "namespace": "m8IqIRyUqaCbbMa2"}, "item": {"itemId": "LqgJOAfFwvvgYPIF", "itemName": "EVZLGzEglEe95LWK", "itemSku": "rkj7TPuigp3RiJof", "itemType": "gD4VypGT4cTfKNrj"}, "quantity": 84, "type": "CURRENCY"}, {"currency": {"currencyCode": "qUk0t9aquw2B2UVI", "namespace": "QMA6BOpxtYbmQwS5"}, "item": {"itemId": "kNxCPLeKM4cQl8Dl", "itemName": "Y91SXBeHwrkPCaAy", "itemSku": "cmEvk3rVTLjZT9qa", "itemType": "yJJtW8sqkuIBd1Nr"}, "quantity": 67, "type": "CURRENCY"}], "source": "GIFT", "transactionId": "PVvOhMTdfTjLVxzj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'FulfillRewards' test.out

#- 269 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'yQsgv5n6Vn7Tiakc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'QueryUserIAPOrders' test.out

#- 270 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    '1Rzb4MCHH4aATHwP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'QueryAllUserIAPOrders' test.out

#- 271 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'TM0LfcjvOko7332Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'QueryUserIAPConsumeHistory' test.out

#- 272 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'Za1YfuaQ7gPgiz2E' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "nf", "productId": "ikH5iUT9GB4bGcYz", "region": "y0T6Q89155mM6RsY", "transactionId": "xtVcgA1q0sR85Dcn", "type": "TWITCH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'MockFulfillIAPItem' test.out

#- 273 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    '5fUvb2OK8scK4MyI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'QueryUserOrders' test.out

#- 274 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'y9F8aBXzn8z72hf4' \
    --body '{"currencyCode": "D4NOpbUDnyVmYotZ", "currencyNamespace": "CA9LADbjj6viKPQx", "discountCodes": ["oVP77RuEzCRLrZmV", "X56gzosv2p6WtLfg", "BFc2P689TFuh1hFo"], "discountedPrice": 86, "entitlementPlatform": "Oculus", "ext": {"8t1tgWhx94eFnxfK": {}, "dptYcgxbMBZz4e7Y": {}, "ZPuTkhJH0gQxqxmE": {}}, "itemId": "Fytm0rZGlRUuJ7Hg", "language": "gA1D8DBtkE9JX7oD", "options": {"skipPriceValidation": false}, "platform": "Oculus", "price": 53, "quantity": 31, "region": "2VPJ8AZ9i1ml0sbg", "returnUrl": "Q5zPZbllwvt3TjGe", "sandbox": true, "sectionId": "5eaYqdXkBqt2UfrB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'AdminCreateUserOrder' test.out

#- 275 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'E1JhOOdYFVxYR0Xh' \
    'aQ30cHb0re0TJwuS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'CountOfPurchasedItem' test.out

#- 276 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    '3NPZi6h1nN0txahd' \
    'hp0tmV4jjIkC8lqp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'GetUserOrder' test.out

#- 277 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'B9cbsDlreKfjfpUz' \
    '3jtg1bKaDBROm6TJ' \
    --body '{"status": "REFUND_FAILED", "statusReason": "qMul8cl55U4RB2xV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'UpdateUserOrderStatus' test.out

#- 278 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'HiARcFLzOW7Uz8Gz' \
    '5TN3bJ6UVKAdNp2R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'FulfillUserOrder' test.out

#- 279 GetUserOrderGrant
eval_tap 0 279 'GetUserOrderGrant # SKIP deprecated' test.out

#- 280 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'eRw5WPjohGmJKCjb' \
    'EtFKLGvBQOS81LpI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'GetUserOrderHistories' test.out

#- 281 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'h5QqEOKQXnUYMXvJ' \
    'JrO8K9yVaSV6MkQp' \
    --body '{"additionalData": {"cardSummary": "Pd0utGYDVGwpKCkO"}, "authorisedTime": "1974-05-17T00:00:00Z", "chargebackReversedTime": "1972-04-15T00:00:00Z", "chargebackTime": "1995-04-05T00:00:00Z", "chargedTime": "1980-03-06T00:00:00Z", "createdTime": "1991-09-07T00:00:00Z", "currency": {"currencyCode": "w1DAaC3oGYmbE9E8", "currencySymbol": "7RTBvlu7lo1foXU2", "currencyType": "VIRTUAL", "decimals": 71, "namespace": "vf2EK1rsQWD1svih"}, "customParameters": {"oAZBd4hkykRLwN2L": {}, "HFkXjhDf4RPTS1xm": {}, "IM78uco5di3sJNay": {}}, "extOrderNo": "fJakaJtAFsemukeO", "extTxId": "nQqvXAFVKLeOpEjP", "extUserId": "JDBPU8LPr0bjy4nF", "issuedAt": "1976-02-01T00:00:00Z", "metadata": {"l8n6PSoXYb9tc6rY": "yOiaUKC8t4GV0JiE", "7ZbWP80ZctunIw8z": "zjr1oeY1p4P0xno1", "luSqciM4rfqsoJ7A": "kLiYjJvlKhH1ccnr"}, "namespace": "p3T2fKqq9CzJlj0U", "nonceStr": "GtCqJnqpaur75iSs", "paymentData": {"discountAmount": 76, "discountCode": "AgdtJfaktaCbkIOR", "subtotalPrice": 18, "tax": 71, "totalPrice": 3}, "paymentMethod": "zofQ17bQpOtqU8Y6", "paymentMethodFee": 71, "paymentOrderNo": "DFSnh5IbdftTLRLU", "paymentProvider": "XSOLLA", "paymentProviderFee": 93, "paymentStationUrl": "wenKzXRT99U5B5j9", "price": 58, "refundedTime": "1988-03-28T00:00:00Z", "salesTax": 87, "sandbox": true, "sku": "I1qt4AYI54fgXlDC", "status": "REFUNDED", "statusReason": "dONrCA3C8SvqUKqp", "subscriptionId": "SaqBWWsEePoWos4O", "subtotalPrice": 74, "targetNamespace": "MRxu5cYFtJZeinW6", "targetUserId": "4n9q4asIfg6qpRvH", "tax": 67, "totalPrice": 33, "totalTax": 82, "txEndTime": "1973-08-08T00:00:00Z", "type": "nnFA4ieAeG0JcWHL", "userId": "xYckKH0j3mmJ2Y5F", "vat": 38}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'ProcessUserOrderNotification' test.out

#- 282 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'indE3Ucg05FtWiuP' \
    '1xyPeWov5pJJdyu2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'DownloadUserOrderReceipt' test.out

#- 283 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'TxbDTPkZkYfTO2Gg' \
    --body '{"currencyCode": "00JcXGaIUaL3FoA2", "currencyNamespace": "7eK2U3IHpgmmQaQj", "customParameters": {"7hyQjWqzvHab6b9t": {}, "7DWTaUGBJRTcrm3m": {}, "IBuPZxqlGGOe2VYs": {}}, "description": "ej3cSW6YWXMTlqVr", "extOrderNo": "GyQYDnbzj7Xg2lcv", "extUserId": "B7TOu2FcuLwU5IJt", "itemType": "OPTIONBOX", "language": "SbR", "metadata": {"sYNW28u3UZ3q6QdM": "AL9IC4460Wck2oK2", "mLwkxgJXK2OjNzQ9": "5lceIy0lnTniV8j7", "XmR8FUW42wLu5tQB": "UE3k2mUvrQPFxSaR"}, "notifyUrl": "rDsF1CKYcMJnrn1I", "omitNotification": false, "platform": "ypoEAwuriKcfEber", "price": 74, "recurringPaymentOrderNo": "AWXNFfxIWM9jL08j", "region": "tCIr8STWuiyz2eOg", "returnUrl": "ny7d8WVlcOTKoZim", "sandbox": true, "sku": "5xO3LzmzW8Oj3HDR", "subscriptionId": "oKRr6ZZRLgp1djMa", "title": "w9o5TdLhB2mWrW0A"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'CreateUserPaymentOrder' test.out

#- 284 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '29UflIqBalvCur3y' \
    'S6PcP3N8ee3aFSyZ' \
    --body '{"description": "kpxzyGW3kHAKNzH5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'RefundUserPaymentOrder' test.out

#- 285 GetUserPlatformAccountClosureHistories
$PYTHON -m $MODULE 'platform-get-user-platform-account-closure-histories' \
    'cJ1x2IhHEQwW44r5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'GetUserPlatformAccountClosureHistories' test.out

#- 286 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'yXnevZsdD9Iip75t' \
    --body '{"code": "7Rgtj7pKnbtPAZsN", "orderNo": "wKWlHT7wmvO6YDgQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'ApplyUserRedemption' test.out

#- 287 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    '4TLdkZgouTEi19do' \
    --body '{"meta": {"NSCRrqi0F1FGxhrY": {}, "szqB4U4xH3NpxEEE": {}, "1xE1teY5Ma16Sr2B": {}}, "reason": "137kVZhkISgONgrr", "revokeEntries": [{"currency": {"balanceOrigin": "Steam", "currencyCode": "lJqY7ujDDLuoQJsp", "namespace": "LLZbnusI9Nty8KpP"}, "entitlement": {"entitlementId": "0RHI8icuY92iMkPi"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "XVzzBDNoUXOIkGhm", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 80, "type": "ITEM"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "ET05JQWhwijC7ydS", "namespace": "FRQ4V5OyypfQ5iJt"}, "entitlement": {"entitlementId": "NrVbjnyYERw24T1D"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "na0T42qYhPsMMX4D", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 14, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "BhhmAmGWgONbsaq6", "namespace": "FR89FVcE5vUWRlOG"}, "entitlement": {"entitlementId": "zgjnghEeYuTA3fZ9"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "tpaZz47mZuZptSin", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 75, "type": "CURRENCY"}], "source": "IAP", "transactionId": "Di17TuzOCkfreVXF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'DoRevocation' test.out

#- 288 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    '3F57a8i8FBQVq8F8' \
    --body '{"gameSessionId": "UHFjnV4a8qkT208c", "payload": {"4EqnaczanLg5zKTt": {}, "aPmN6tWQqV1V78ZI": {}, "jg1EtBZbAWeHGdU9": {}}, "scid": "mllRGwL1hP0ILR0E", "sessionTemplateName": "la7ZLwTA0wt5op6F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'RegisterXblSessions' test.out

#- 289 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    '6Z1a1sBmUaCx3pnw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'QueryUserSubscriptions' test.out

#- 290 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    '2UqOcXFVD0pboKkD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionActivities' test.out

#- 291 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'ZJufSvoXGyr43yZ4' \
    --body '{"grantDays": 45, "itemId": "hXVFTTx0TcboB98G", "language": "f5PcmWICZpV13Vxw", "reason": "1InWyY5J5tCY01Fk", "region": "bWfSwD66Xg5Qbc0E", "source": "jxxzLQLRh64Y1jop"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PlatformSubscribeSubscription' test.out

#- 292 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'YiTRZEzq26aXSjyA' \
    'Q2QsMJlAxZUci2CC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 293 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    '1SEp55TimgFFENNE' \
    '15OyfCm3JLSdyxEk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'GetUserSubscription' test.out

#- 294 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'UrupaAg8X3qrN4NJ' \
    'QHucDPcorTkEhvJJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'DeleteUserSubscription' test.out

#- 295 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'BHTf7gHQdNqoM8Jp' \
    'OKNAU33hDeba57ZY' \
    --body '{"immediate": true, "reason": "NNrTcdcnzDvUHgR2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'CancelSubscription' test.out

#- 296 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'bX5lx9AjwbpWgnIz' \
    'WRtzH2wWVwIlnX0P' \
    --body '{"grantDays": 100, "reason": "oF43qdlpBadznEop"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'GrantDaysToSubscription' test.out

#- 297 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'QjdlmCKky8f25OS6' \
    'EXRpHjQ4hViJ1Z0G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'GetUserSubscriptionBillingHistories' test.out

#- 298 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'tE9ePlbHeBy2yYQJ' \
    'sEZNAnUcJCHbaM8I' \
    --body '{"additionalData": {"cardSummary": "2sFnR0i1EP6ekQzr"}, "authorisedTime": "1977-09-02T00:00:00Z", "chargebackReversedTime": "1985-05-15T00:00:00Z", "chargebackTime": "1972-08-23T00:00:00Z", "chargedTime": "1986-09-21T00:00:00Z", "createdTime": "1999-06-15T00:00:00Z", "currency": {"currencyCode": "7Ayw8HdDdyIIR5cs", "currencySymbol": "3jEJm9cqIJO6etrg", "currencyType": "VIRTUAL", "decimals": 5, "namespace": "WaPGfJVUla8UlMM4"}, "customParameters": {"Cc3k5J2qbHYNekyX": {}, "LtDH1ypF3hIsdFXb": {}, "baFfchju2kAuottO": {}}, "extOrderNo": "Swo884abNDjMPiZH", "extTxId": "xhFeo51XVDI8f5EW", "extUserId": "ndhcek3atmhTw5TD", "issuedAt": "1975-10-09T00:00:00Z", "metadata": {"WYgm2yGvhR6HS643": "vgPdN21mWwtuqNbt", "aAfDzs5MyxW90cMZ": "9NeyZ5n02q1qbbj3", "sLmfYzDVAVhXts4C": "dsniSJKrJ4BrdfV6"}, "namespace": "58ZBVGgxlpGxhD9k", "nonceStr": "KX2uBUIh1pfP8bRB", "paymentData": {"discountAmount": 99, "discountCode": "XtngQG9E03eUwSRO", "subtotalPrice": 8, "tax": 37, "totalPrice": 29}, "paymentMethod": "NMs82e3yxhkTFfQH", "paymentMethodFee": 57, "paymentOrderNo": "qib3nbPkju9PQ5pN", "paymentProvider": "ADYEN", "paymentProviderFee": 66, "paymentStationUrl": "Xmk4owknspUKyKWq", "price": 83, "refundedTime": "1987-12-29T00:00:00Z", "salesTax": 52, "sandbox": true, "sku": "En9Ut2qFCzvpinQC", "status": "REFUNDING", "statusReason": "vBsYj4IcbdUz2cBW", "subscriptionId": "KIUuPLfvTFl9DbHQ", "subtotalPrice": 78, "targetNamespace": "PqcYNEbLCaeCuMBo", "targetUserId": "kWfuz2Zskdg2b5Ip", "tax": 89, "totalPrice": 74, "totalTax": 91, "txEndTime": "1999-08-01T00:00:00Z", "type": "0L51TxrdknW52x2o", "userId": "1yDO6bwcKYeFoxUW", "vat": 6}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'ProcessUserSubscriptionNotification' test.out

#- 299 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    '8xXkOTRPX2RbN68q' \
    '9XjuvxGSBmDL91zf' \
    --body '{"count": 69, "orderNo": "p524IRplmKcwvGgu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AcquireUserTicket' test.out

#- 300 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'z7SAcGvV4lCJgcrA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'QueryUserCurrencyWallets' test.out

#- 301 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'ut2gYpuKbE8ulWHo' \
    'G1zC1K7oT3iNe5yh' \
    --body '{"allowOverdraft": true, "amount": 5, "balanceOrigin": "Oculus", "balanceSource": "EXPIRATION", "metadata": {"mAgI6LUauh1GlEo4": {}, "faeHIeXSROEb0iXu": {}, "cFoRm7DFw5ArJzNA": {}}, "reason": "ElybJSWLbZCdcwYH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'DebitUserWalletByCurrencyCode' test.out

#- 302 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'hOIGu0vXLFZoXt8k' \
    '5ZtRJGwh0BPRCWdT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'ListUserCurrencyTransactions' test.out

#- 303 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 28, "debitBalanceSource": "TRADE", "metadata": {"ytxmesJ8JDDcPDev": {}, "3e8oc7sh3o0r9VYI": {}, "h3Jj15pf4bXUrytK": {}}, "reason": "H5rM54pVKLq2niQI", "walletPlatform": "Xbox"}' \
    'Wxqs6jAQJWL8Yc3A' \
    'KtQffBJPNo4VIzCx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'CheckBalance' test.out

#- 304 CheckWallet
eval_tap 0 304 'CheckWallet # SKIP deprecated' test.out

#- 305 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'IBQt7BEsLhZnLrMl' \
    'vvXDmz8vDIkHRMj2' \
    --body '{"amount": 33, "expireAt": "1982-10-14T00:00:00Z", "metadata": {"j20fgU419HQGug3A": {}, "piXAivNHSVq7Hy14": {}, "PWQgyxy3AZ9Q29c3": {}}, "origin": "System", "reason": "ki71NZANUG3XywOP", "source": "OTHER"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'CreditUserWallet' test.out

#- 306 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 71, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"eGfzqhOBhMJ8BCR0": {}, "Pr4lUceWJidPUCDH": {}, "oZPOFJliGQwzPSic": {}}, "reason": "mKe5tLTY4T61Ztjv", "walletPlatform": "Epic"}' \
    'HjtKUJ2g5iKvkb6y' \
    'aN0rJRTtAoroj50i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'DebitByWalletPlatform' test.out

#- 307 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'buYM4wRG0lN0X5kM' \
    'cmOdLuSZLYkIABWq' \
    --body '{"amount": 77, "metadata": {"B0olJY1qewjIDEZe": {}, "db90DCSoLAgeUlju": {}, "QXNi35z75tQmcrR0": {}}, "walletPlatform": "IOS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PayWithUserWallet' test.out

#- 308 GetUserWallet
eval_tap 0 308 'GetUserWallet # SKIP deprecated' test.out

#- 309 DebitUserWallet
eval_tap 0 309 'DebitUserWallet # SKIP deprecated' test.out

#- 310 DisableUserWallet
eval_tap 0 310 'DisableUserWallet # SKIP deprecated' test.out

#- 311 EnableUserWallet
eval_tap 0 311 'EnableUserWallet # SKIP deprecated' test.out

#- 312 ListUserWalletTransactions
eval_tap 0 312 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 313 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'ListViews' test.out

#- 314 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    'dqYhgjNEKxgigqjI' \
    --body '{"displayOrder": 1, "localizations": {"BAiEcZPc54ZoDD56": {"description": "c8ZJFga6qXT56186", "localExt": {"aDmZpx6FpqFAR1FP": {}, "2qDxqukQGmZ8QPR4": {}, "rrBu0xMLSZM2reG0": {}}, "longDescription": "eUsKe4gH8U04S5FC", "title": "pmYeCJwMPHx5qbq2"}, "es6TWDRr2bTPUxXf": {"description": "vsOwNGBX5w0CKM4K", "localExt": {"gSaTFkYqyDBVeKhV": {}, "WlgMI2a4HuuQiMf3": {}, "ZtSRaKTvnYQcQK3O": {}}, "longDescription": "LU5xNeaLjRoNMmfy", "title": "uSugV63aIt0NDFEc"}, "KEQaxvtIGC9xYvHb": {"description": "X0ptwZqHLOEqFcFl", "localExt": {"BmznrLziwCnnibCj": {}, "n2uxoSkuKry9iZZv": {}, "treyTjGpaUSGjv2A": {}}, "longDescription": "bKgIoGvyLZGyV2nN", "title": "IKGyVatdlj1BAkRk"}}, "name": "fD5QI95OctLxGf6S"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'CreateView' test.out

#- 315 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'ilVAgYAplPOe3Qpv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'GetView' test.out

#- 316 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'yaquevE8jhAM4C34' \
    'bBPbifHDiBMsRy1Z' \
    --body '{"displayOrder": 26, "localizations": {"lbhfnh1larFYcM0O": {"description": "oFV93hG5GVHrcfGp", "localExt": {"WAuflVB1opvSUYD0": {}, "K7Y5bCch6ur33Fth": {}, "Z0FOWCXy70cM2iJt": {}}, "longDescription": "gpMAKpwx7WN70b3l", "title": "BnY61oiTLHdBClY8"}, "kIt120hKXcluepkD": {"description": "2cjAyU8thUL0rK6Y", "localExt": {"lDgS7DF6WHO4xKI3": {}, "DzXlqZ97UEX77J2Z": {}, "aCgl5zfvvm60VIJW": {}}, "longDescription": "tArjNf9ClzJiLrK8", "title": "iwSKwTNINv7MbR3h"}, "7N9mLvImrGFR73LV": {"description": "Kd3lHIIZTnztswBH", "localExt": {"IOUcpBs05S6VCRgc": {}, "pqzF0Wdx4tTiOqvd": {}, "6is3iMkUYXGJ52Lh": {}}, "longDescription": "rcYmNqU8FNr2Sf2v", "title": "nHOZhdmTd8ENVRZH"}}, "name": "8lmeTjzHxgwKaMjU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'UpdateView' test.out

#- 317 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'ptGDH129SPAGK8Qx' \
    'sXGgAK3QR9g0C7nE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'DeleteView' test.out

#- 318 QueryWallets
eval_tap 0 318 'QueryWallets # SKIP deprecated' test.out

#- 319 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 41, "expireAt": "1976-01-18T00:00:00Z", "metadata": {"8LdpQQXSvH7kwH9P": {}, "KAIEqRaoWkdV23II": {}, "0TEDjWcIzfsSrF9J": {}}, "origin": "Steam", "reason": "dr3JfyFO9PUA61ce", "source": "REDEEM_CODE"}, "currencyCode": "4K5qHkvYSU2i8wpP", "userIds": ["g4f6CytNOpTcy8nF", "xnyUhq8QCACdn9QB", "rEBZ0FGcSF09VMOB"]}, {"creditRequest": {"amount": 13, "expireAt": "1992-09-14T00:00:00Z", "metadata": {"olqmdu4KlKLptx5D": {}, "KFWYNaRNbzpFsjJL": {}, "szOiHFs5xAVg39H5": {}}, "origin": "GooglePlay", "reason": "OIEm4CCHTjiJTcJC", "source": "REFERRAL_BONUS"}, "currencyCode": "j4EGRMQTeDUODYJl", "userIds": ["dto2PuC14Lu2G4Mw", "rt0fkjelr7hVgkvQ", "L3GEb7CgXWeXJrzN"]}, {"creditRequest": {"amount": 60, "expireAt": "1990-04-22T00:00:00Z", "metadata": {"fH4BlyXE2K4uNJRg": {}, "Q3CCklU97KkomnjF": {}, "aT7NQeCqpaKPJkOe": {}}, "origin": "Playstation", "reason": "w63co2erbchkQ7n0", "source": "PROMOTION"}, "currencyCode": "mwZRpU8Qcrmp46NH", "userIds": ["HKuQExWorl4PYKJ1", "jFeol1Ra8c5c3F5o", "GJKlZ26mxx5rFWCD"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'BulkCredit' test.out

#- 320 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "tSicHNAFf6XoFjTy", "request": {"allowOverdraft": true, "amount": 96, "balanceOrigin": "GooglePlay", "balanceSource": "ORDER_REVOCATION", "metadata": {"RMkdKgCuxFa4ix8v": {}, "dZvwAMOmTtBEJjCy": {}, "ABy7DKD883wae7z4": {}}, "reason": "E6bRC4ufnScsyhWe"}, "userIds": ["6QJ1Ov7wz26xkkYY", "xgGLN3OJhmFyZH05", "CCwf21Y2Taz2uFpz"]}, {"currencyCode": "174OkRp3BkdVbqgN", "request": {"allowOverdraft": true, "amount": 81, "balanceOrigin": "Xbox", "balanceSource": "DLC_REVOCATION", "metadata": {"ytIR58rTLNpt4Rpq": {}, "pKk9toELRS24cMw2": {}, "Lh6XTFr1d0v5MiCV": {}}, "reason": "rY2QOMJmNbAv9VCU"}, "userIds": ["7hdDbGzcJKa1wsM4", "34xCGXTsh5xydeZA", "DSKQFv0tnP05L7Nw"]}, {"currencyCode": "x1i8sHEbX4mIdomB", "request": {"allowOverdraft": true, "amount": 43, "balanceOrigin": "Nintendo", "balanceSource": "TRADE", "metadata": {"rRK73vbWSNBzkiEH": {}, "yJEOg3iIjU3AAg7W": {}, "G2eTsmDaTzm1iyRQ": {}}, "reason": "Ny7RFRXuzS7oKchq"}, "userIds": ["3HFDAp8snTqP81J1", "c6C2wvWDhsYWwX5h", "KxgCMD1qRyNe4g5D"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'BulkDebit' test.out

#- 321 GetWallet
eval_tap 0 321 'GetWallet # SKIP deprecated' test.out

#- 322 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'STBpRPaWHEoCnndV' \
    'YqgBPmwdNn0rosYX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'SyncOrders' test.out

#- 323 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["Z8eImgQ2x0SgQXdY", "wRiDuKo24S6RgeY6", "mxarVsr09JpliIbz"], "apiKey": "DdA20g9UeCPSEkHv", "authoriseAsCapture": true, "blockedPaymentMethods": ["r3elzD6WKsCrHf4v", "U4AqkG2jU9DouFSA", "3CLtlE5PpY0ZXXFy"], "clientKey": "G4988DpkyITbfvPj", "dropInSettings": "kpdcTxG4LMLOAiZC", "liveEndpointUrlPrefix": "06KMQoJCvczbpTe8", "merchantAccount": "wnvbAKMlJZvUxYzY", "notificationHmacKey": "BSzriljJODaZNFJF", "notificationPassword": "bzIchkAZmUviJbcn", "notificationUsername": "sW6uK889Ccm0VWwN", "returnUrl": "dNaPLrz9N2oRxNd2", "settings": "x7bzAMbnc0ESgND3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'TestAdyenConfig' test.out

#- 324 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "Bzn0RXiwLSoaZygi", "privateKey": "LJ4dBRmXwqKSWTRu", "publicKey": "DBWveCv1Rj0emRqo", "returnUrl": "5yTUCEJDyanAifsU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'TestAliPayConfig' test.out

#- 325 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "A6fKzeVIHcetoKKy", "secretKey": "ITDGaFUZsvAcQqJM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'TestCheckoutConfig' test.out

#- 326 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'DebugMatchedPaymentMerchantConfig' test.out

#- 327 TestNeonPayConfig
$PYTHON -m $MODULE 'platform-test-neon-pay-config' \
    --body '{"apiKey": "BspeHcHhz8Ok8bgV", "webhookSecretKey": "76h8tj65I0OW9Dhw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'TestNeonPayConfig' test.out

#- 328 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "NHdSw93IumFyH8gF", "clientSecret": "ezb1WOjy0XInTSZS", "returnUrl": "MKJYcE585zPfpDiA", "webHookId": "o4zAj1AgjctQkNA6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'TestPayPalConfig' test.out

#- 329 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["tPxcpOjecMqPJvYX", "Va6273TGlaOPmEdj", "p63KfNpB5Un5ObPh"], "publishableKey": "Ek6MRN6zzKPZLWVB", "secretKey": "4YH2roupmMfATaps", "webhookSecret": "n4uvJaBhPA5LWJip"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'TestStripeConfig' test.out

#- 330 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "grvQaTdiKmmlpHUD", "key": "2h7I7UbUNrp02FBw", "mchid": "xeZXuYnlq95T6quy", "returnUrl": "9PsI3dx75GAWm1Wf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'TestWxPayConfig' test.out

#- 331 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "XALgsjwfd3eYGpxI", "flowCompletionUrl": "9DQs2vOJH76fEQ8W", "merchantId": 59, "projectId": 17, "projectSecretKey": "0aIGz1A2cXngjJWP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'TestXsollaConfig' test.out

#- 332 GetPaymentMerchantConfig1
$PYTHON -m $MODULE 'platform-get-payment-merchant-config-1' \
    'f2xqt2uL9EtENwWq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'GetPaymentMerchantConfig1' test.out

#- 333 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'OZUVxd7bZpS2i4gN' \
    --body '{"allowedPaymentMethods": ["vHnKuaNhVEaIWElc", "UTlMDbUWJ5spS6gL", "d7l7OF4v4RTLnsM4"], "apiKey": "wpXhdaJDB3MXGMrR", "authoriseAsCapture": false, "blockedPaymentMethods": ["PV9L4ILPJqDbKXtF", "PmTQOO3dJd2YP1XI", "UKL9g3ACu1VGeRPw"], "clientKey": "a2XfZ7wxA0lvXbcZ", "dropInSettings": "Y7zXTdKQkADYHyER", "liveEndpointUrlPrefix": "3eNCfqyJ435IkibS", "merchantAccount": "zJGQtaPFC2SxEMch", "notificationHmacKey": "jQ84nuG9DGOS5kQv", "notificationPassword": "K7NHpsIBYlUoEWZP", "notificationUsername": "awFVpfXqbM5rNHQH", "returnUrl": "EfoYiLFQBUx73FrG", "settings": "G1NypPAy9ZqaNySv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'UpdateAdyenConfig' test.out

#- 334 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'pXwMac489Y6N0H6y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'TestAdyenConfigById' test.out

#- 335 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'n3PYiqbIBvNbRcU7' \
    --body '{"appId": "z56hvDaSIChGku6g", "privateKey": "m1tuTKBNwhTZL6vJ", "publicKey": "fgPEZmTs18vZnFst", "returnUrl": "nJ5mnLz7c4rYnurB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'UpdateAliPayConfig' test.out

#- 336 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    '4du28xKiygvn2QBd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'TestAliPayConfigById' test.out

#- 337 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'HQt8RwdG0MnCL6kK' \
    --body '{"publicKey": "YCj9livHcRCMFbd8", "secretKey": "VDJQUNNivS5r4NDh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'UpdateCheckoutConfig' test.out

#- 338 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'qj2sHH7hGbYOjo5z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'TestCheckoutConfigById' test.out

#- 339 UpdateNeonPayConfig
$PYTHON -m $MODULE 'platform-update-neon-pay-config' \
    'LgQb3hA8P6XcQUNH' \
    --body '{"apiKey": "o5ZFndtlgufbSdQg", "webhookSecretKey": "TPPO9giI7gI536KV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'UpdateNeonPayConfig' test.out

#- 340 TestNeonPayConfigById
$PYTHON -m $MODULE 'platform-test-neon-pay-config-by-id' \
    'Ax0UzIc4Ou1SpoEw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'TestNeonPayConfigById' test.out

#- 341 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'l9NhPbf7Fy05sDwO' \
    --body '{"clientID": "SuSEBEXGahhtxfa1", "clientSecret": "XwrrRMEWbPuYtBYR", "returnUrl": "a3zvDFLgLp1g9EhV", "webHookId": "fDOcOmH7fDSvD2JN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'UpdatePayPalConfig' test.out

#- 342 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'OQnrQjYIugFoF3Va' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'TestPayPalConfigById' test.out

#- 343 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'lgZcNJSYGVxi7ACW' \
    --body '{"allowedPaymentMethodTypes": ["F50CSEIj98y965Ra", "xu2ujZqzkOZE6sOG", "LtoFJvwz5yKIpwoa"], "publishableKey": "QavSCZfTzJfHZF17", "secretKey": "lZ95JmGny7g72f6S", "webhookSecret": "O7XayfUmZz42HE0t"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'UpdateStripeConfig' test.out

#- 344 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    '7TAQm0TGMk4Dmrwx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'TestStripeConfigById' test.out

#- 345 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'C6EQr9lk8teEugVd' \
    --body '{"appId": "3X7cq2K0e7A1xHVz", "key": "xmePZ06tOqoxMhyq", "mchid": "IyPdnz3ReXTrC2sN", "returnUrl": "ANyInXnunWNxg0gQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'UpdateWxPayConfig' test.out

#- 346 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'ztAjYiUb5SlpeaMD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'UpdateWxPayConfigCert' test.out

#- 347 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'VE3ODebYRPEkmK5e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'TestWxPayConfigById' test.out

#- 348 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'PPaacnQTuUibmiz8' \
    --body '{"apiKey": "AhOGRIwwo9w06X6X", "flowCompletionUrl": "zJiljntx5TSAxNBc", "merchantId": 14, "projectId": 94, "projectSecretKey": "tcaaoKZYk4GlikyI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'UpdateXsollaConfig' test.out

#- 349 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    '0LGO0eNNgl7jdIf7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'TestXsollaConfigById' test.out

#- 350 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'ptoc5rPRsGFfGRRK' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT_DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'UpdateXsollaUIConfig' test.out

#- 351 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'QueryPaymentProviderConfig' test.out

#- 352 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "CHECKOUT", "namespace": "ERFGopzQ87CbxAJ0", "region": "xdAPFrw8ssJejQ7q", "sandboxTaxJarApiToken": "SiyUPY0Gnwcv8NFI", "specials": ["XSOLLA", "PAYPAL", "CHECKOUT"], "taxJarApiToken": "q6xxQZBGiif91rgO", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'CreatePaymentProviderConfig' test.out

#- 353 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'GetAggregatePaymentProviders' test.out

#- 354 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'DebugMatchedPaymentProviderConfig' test.out

#- 355 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'GetSpecialPaymentProviders' test.out

#- 356 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'zASMsVBiv6rL3ZEZ' \
    --body '{"aggregate": "XSOLLA", "namespace": "eSExhChscwh8P6pe", "region": "jiRuUjCpBUL68KLW", "sandboxTaxJarApiToken": "ODgQ2gkEKZZQfGQJ", "specials": ["XSOLLA", "WALLET", "WALLET"], "taxJarApiToken": "t3thMfA2pxZ7ocAt", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'UpdatePaymentProviderConfig' test.out

#- 357 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'WGRZGmCEL7IaqoDD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'DeletePaymentProviderConfig' test.out

#- 358 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'GetPaymentTaxConfig' test.out

#- 359 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "iQ322lITGdQLjygz", "taxJarApiToken": "dLTAC4I9fqjfISER", "taxJarEnabled": false, "taxJarProductCodesMapping": {"niJH2zFRgcuTMYiB": "ESlCYdNui4AfrJuS", "aiOYxuj6n1UTUHsg": "jv4O66qvH38lYKeE", "iUS3GYxZHMK3ybnM": "1cQEihWjWNwYN6xe"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'UpdatePaymentTaxConfig' test.out

#- 360 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'NeZMtT7f2d2NhlIg' \
    'GSvbXe1Hyw3mylk3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'SyncPaymentOrders' test.out

#- 361 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicGetRootCategories' test.out

#- 362 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'DownloadCategories' test.out

#- 363 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'Hwg4Wtj5wR9o07yp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicGetCategory' test.out

#- 364 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'JFcZroi0QeG6cD8t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicGetChildCategories' test.out

#- 365 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'rKjrFSu4MOj7pBAb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicGetDescendantCategories' test.out

#- 366 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicListCurrencies' test.out

#- 367 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'STEAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'GeDLCDurableRewardShortMap' test.out

#- 368 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'GetIAPItemMapping' test.out

#- 369 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'uLW7T1d689kzJWUj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicGetItemByAppId' test.out

#- 370 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicQueryItems' test.out

#- 371 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    '0IhAuSR15xUgtPxW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicGetItemBySku' test.out

#- 372 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'pU3njfM3MLLEwpsd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicGetEstimatedPrice' test.out

#- 373 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'D0knPNT7MZM5TUkT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicBulkGetItems' test.out

#- 374 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["p46Y9LTNtGN9WUqY", "yTxul6u3RuXCCJSa", "Ymbf4tEBMWAIsbPm"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicValidateItemPurchaseCondition' test.out

#- 375 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'XPNCh5Rfq2UC1TCP' \
    'Csq2BAEzRa56radY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicSearchItems' test.out

#- 376 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'ciedOlGrfTUc5ACZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicGetApp' test.out

#- 377 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'JjhP2aqyZJps39vN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicGetItemDynamicData' test.out

#- 378 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'gtqv552OktaS7Id9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicGetItem' test.out

#- 379 GetPaymentCustomization
eval_tap 0 379 'GetPaymentCustomization # SKIP deprecated' test.out

#- 380 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"neonPayConfig": {"cancelUrl": "oPGerpovdmW3j3eS", "successUrl": "po6vhwdrFa4npr0q"}, "paymentOrderNo": "t5yxg5LXtD40Rsib", "paymentProvider": "WXPAY", "returnUrl": "kt11ORM1E26jRox5", "ui": "zjnyjrUk4JAORZPi", "zipCode": "kticJyIfLP3Q4SvS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicGetPaymentUrl' test.out

#- 381 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'mMtkqbFFNrsD4cYw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicGetPaymentMethods' test.out

#- 382 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'TyG7sUevPhkYV72N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicGetUnpaidPaymentOrder' test.out

#- 383 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '58lwa3vXLwnFGnmL' \
    --body '{"token": "jqORwHyI3QRLhTWO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'Pay' test.out

#- 384 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'cA2kF7G3yINinZ8Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicCheckPaymentOrderPaidStatus' test.out

#- 385 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'PAYPAL' \
    '9InV7B8tHIYiWBgI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'GetPaymentPublicConfig' test.out

#- 386 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'kW9QrR9bMgSr1OTY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicGetQRCode' test.out

#- 387 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    '7V3CTRYI1Nyon9lv' \
    'A8o43VZXjofWhPJj' \
    'PAYPAL' \
    'YuzawgheBGV6FopC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicNormalizePaymentReturnUrl' test.out

#- 388 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'asHzSLbZZFVIz8Ax' \
    'ALIPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'GetPaymentTaxValue' test.out

#- 389 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'hx90T4EDNbgre3Ew' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'GetRewardByCode' test.out

#- 390 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'QueryRewards1' test.out

#- 391 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'hoEBW0FNQL1GY5CS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'GetReward1' test.out

#- 392 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicListStores' test.out

#- 393 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicExistsAnyMyActiveEntitlement' test.out

#- 394 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'EzZsaak9MNj0mKis' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 395 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    '5KQHhwB99zMKOwz2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 396 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'mKAvkSzld2vfGrbc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 397 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicGetEntitlementOwnershipToken' test.out

#- 398 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "2jP3wtM1fSokFngc", "language": "NJ-yD", "region": "V7Qe1VtpXfKrTUd4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'SyncTwitchDropsEntitlement' test.out

#- 399 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'eK4cPdj9IYCmOOsk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicGetMyWallet' test.out

#- 400 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'IKiuKPVqNdfcbarm' \
    --body '{"epicGamesJwtToken": "jmzkYQMLffgy1mpc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'SyncEpicGameDLC' test.out

#- 401 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    '59V2qKD8lNq4hOjr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'SyncOculusDLC' test.out

#- 402 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    '98OLoHszOIdSWIpa' \
    --body '{"serviceLabel": 77}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicSyncPsnDlcInventory' test.out

#- 403 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'QbsGBZrZxDKJWeWY' \
    --body '{"serviceLabels": [8, 11, 87]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 404 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'RjC4wycgOIphhydY' \
    --body '{"appId": "Z7NEwrSsI3cSyJGE", "steamId": "sS9JnHfbeKOjYbpV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'SyncSteamDLC' test.out

#- 405 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'v23JUwrktKue5lw0' \
    --body '{"xstsToken": "m8Evy70CBhCstkqy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'SyncXboxDLC' test.out

#- 406 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'DQrrYVdLYuxdWsAQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicQueryUserEntitlements' test.out

#- 407 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'cRaz03FZ9YTDWnlX' \
    'Z0fFMUOsM2D6XBEf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserAppEntitlementByAppId' test.out

#- 408 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'j5FBqjqhaVBjVf2b' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicQueryUserEntitlementsByAppType' test.out

#- 409 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    'V2fA6M7yIgULctkr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserEntitlementsByIds' test.out

#- 410 PublicGetUserEntitlementByItemId
eval_tap 0 410 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 411 PublicGetUserEntitlementBySku
eval_tap 0 411 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 412 PublicUserEntitlementHistory
$PYTHON -m $MODULE 'platform-public-user-entitlement-history' \
    'Qt7UdVDHgEyEMT17' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicUserEntitlementHistory' test.out

#- 413 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'gAkJ9ZOyUyKXZ4gn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicExistsAnyUserActiveEntitlement' test.out

#- 414 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'JD0btvfiaLotp8rj' \
    'TOGuuZKYSboPR01Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 415 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'NJxA5bUgJyfyqZXs' \
    'JXmWaoddgjJ2F009' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 416 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'o01wDwPk87RGZxhb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 417 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'on95Kr4kABVvvoyJ' \
    'HCJBXauQb7rZO3cL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 418 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'AcITU9eaHQK6btDx' \
    'qspEHxJ7HIZTmr9S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicGetUserEntitlement' test.out

#- 419 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '9JzIoTTXKTR2Z9P6' \
    '6amF5l35onaRK2kO' \
    --body '{"options": ["t01My99Nzxfq4jTs", "NihBMEN4c79eXbUH", "mcvCVohS9cZeNhZq"], "requestId": "7LKZkGycl5oKG2FV", "useCount": 19}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicConsumeUserEntitlement' test.out

#- 420 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    '3tzAjekCOilOpoou' \
    'Kkx1qj85bRrVwuOn' \
    --body '{"requestId": "qEPcdhXj214NDtW9", "useCount": 19}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicSellUserEntitlement' test.out

#- 421 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    'XvHfj2e4dQJLp4KM' \
    'Icg74z6KA7qyrdGd' \
    --body '{"useCount": 99}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicSplitUserEntitlement' test.out

#- 422 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    '9zBS6MQ3orSyb3fS' \
    'oG1E1gohjzQBWPVD' \
    --body '{"entitlementId": "8fgTZBggdAj0B017", "useCount": 63}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicTransferUserEntitlement' test.out

#- 423 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'LRa6mzkhzzfqsSge' \
    --body '{"code": "EUzauX2BiTkHqFom", "language": "GQ_ckfJ", "region": "TPPXFNeZn2vRR0Bf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicRedeemCode' test.out

#- 424 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'lNL8jjbsyHugFLvZ' \
    --body '{"excludeOldTransactions": false, "language": "vN-unoB", "productId": "loZsrrwFc43BEFzG", "receiptData": "xzXRz9ek9cTfklLv", "region": "hREHXR9ZyR0gYn2o", "transactionId": "0UsgX0kqqfQGB8T8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicFulfillAppleIAPItem' test.out

#- 425 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'wu0Hyqob2hEKozEd' \
    --body '{"epicGamesJwtToken": "4P5Auq8Vd4w6txSK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'SyncEpicGamesInventory' test.out

#- 426 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'D5jHXOt6NIhH6zSx' \
    --body '{"autoAck": false, "language": "pL", "orderId": "B5I8W0zaXLBbr6dE", "packageName": "vFXUrJEtc0XkTqZC", "productId": "dBgcQYrtBw2f7cfd", "purchaseTime": 40, "purchaseToken": "Mk5seGmbg5yaV5Lt", "region": "dtmXxubnK90It1WE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicFulfillGoogleIAPItem' test.out

#- 427 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'pBd8W8yL5eZhTnha' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'SyncOculusConsumableEntitlements' test.out

#- 428 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    '9eiJsMlXtygrzG2Q' \
    --body '{"currencyCode": "UljK667R7aO0dO8D", "price": 0.06897150540884944, "productId": "9iVlq9yqguKMz482", "serviceLabel": 27}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'PublicReconcilePlayStationStore' test.out

#- 429 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'cgPFdfkkemcXh4pN' \
    --body '{"currencyCode": "S6sh71nsTcYAqRmp", "price": 0.6861054786877676, "productId": "J4iKsMRzrkq6bbxR", "serviceLabels": [82, 68, 5]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 430 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '8x3z6oqsbyJVZinL' \
    --body '{"appId": "IVPccaYI6l6fKrVA", "currencyCode": "93qreneWTQ0fb8Cl", "language": "cusi-961", "price": 0.07841612762365391, "productId": "WVf3gL2yczZXxdsL", "region": "xTWwVPr4U5NXmKyO", "steamId": "dqZZYELSAPxBDIEP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'SyncSteamInventory' test.out

#- 431 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'T2GAxOHInufNkRyd' \
    --body '{"gameId": "UBWF1Nh9i59vuR6C", "language": "Ct_jjUS-gF", "region": "FHJVtc0SoSjcBoYh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'SyncTwitchDropsEntitlement1' test.out

#- 432 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'fbT5F3zL27szSOYd' \
    --body '{"currencyCode": "9Y0NpVE2aa5kTg04", "price": 0.6869223594837638, "productId": "Rdr4bKBKfiq3tQEN", "xstsToken": "j55DMrhcrF1L6pYs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'SyncXboxInventory' test.out

#- 433 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'esFql7XfSkThfq5O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicQueryUserOrders' test.out

#- 434 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'wxwX51WDxmrewNJa' \
    --body '{"currencyCode": "fvdNvKldM0rekJkW", "discountCodes": ["WoqwGQqu93mWqYwI", "tRTQVKkxYEWAJyif", "Vsl4tsCWoX1lSzPY"], "discountedPrice": 82, "ext": {"x6g0nu0nDYcjNC6m": {}, "nTmEkvGygUoYZDyX": {}, "1XgjjnrUVMhDfw4e": {}}, "itemId": "yyzx2XNh0EY35JVE", "language": "HPyw_tw", "price": 68, "quantity": 20, "region": "ubWYDMejv14bJ1yJ", "returnUrl": "TjZ8h4Ac4ud51aru", "sectionId": "34XxqVeNlhPSGr2G"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicCreateUserOrder' test.out

#- 435 PublicPreviewOrderPrice
$PYTHON -m $MODULE 'platform-public-preview-order-price' \
    'CSBlAc1QqeDAODDX' \
    --body '{"currencyCode": "DcBp0Zm4J2X1YZBU", "discountCodes": ["riOMFSlzu34Wp4oA", "men8aoqlm2gZZIId", "MBx4SopAgGjVmLAR"], "discountedPrice": 39, "itemId": "QJhGB6o1O006Qlzw", "price": 81, "quantity": 94}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicPreviewOrderPrice' test.out

#- 436 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'pwlkXg5rRaOG40vw' \
    'mux5X7eWoUz63g5l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserOrder' test.out

#- 437 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'dLNvDsFRxvIWPhDH' \
    'lguiwW43ftI0abvQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicCancelUserOrder' test.out

#- 438 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'QByahJAdStJsp8I8' \
    'SvYIsj0HTDvNXyTx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserOrderHistories' test.out

#- 439 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'vPRnlFSQ6v7K73Xi' \
    '2AB5OYFvqKEDfQUO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'PublicDownloadUserOrderReceipt' test.out

#- 440 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'T5Zg2G1BWvZyqW6C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'PublicGetPaymentAccounts' test.out

#- 441 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'StrsDUMYOj7smPuH' \
    'paypal' \
    'LLaUNG3D8lKkUzgY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 441 'PublicDeletePaymentAccount' test.out

#- 442 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'xPns7F4XRUTiU2cK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'PublicListActiveSections' test.out

#- 443 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'n41r9o0qDqNegcfI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'PublicQueryUserSubscriptions' test.out

#- 444 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'RO7qY6MNSv6eRNd4' \
    --body '{"currencyCode": "FbsuGGAOCvNpKR5W", "itemId": "iIdTzoKekJyqR0Ok", "language": "iUq-529", "region": "LUYUJQk80tPmdgSg", "returnUrl": "2KTH1uoBUpdqwNpq", "source": "sh9jEInUNjjzDzEs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'PublicSubscribeSubscription' test.out

#- 445 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    '7bfi9Y5qNyFFoN9k' \
    'FG7qVot9rEFUcFqi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 446 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    '9IXEnojjP0c29b1W' \
    'NB9WkCyToRi2vfZM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserSubscription' test.out

#- 447 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'lKU7yv9DAnbOd7qQ' \
    'POKIe1lgNxUznu6M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 447 'PublicChangeSubscriptionBillingAccount' test.out

#- 448 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'jx3XgwCS1yYFaMMS' \
    'sZH370QWAB8aAtAS' \
    --body '{"immediate": false, "reason": "kgPI2HTPdp4vXIxO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 448 'PublicCancelSubscription' test.out

#- 449 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    't6CxiNDALftVYMBY' \
    '66nz5wiI9UtojzAh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserSubscriptionBillingHistories' test.out

#- 450 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'VtlXb0Ww9cX9qD3u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 450 'PublicListViews' test.out

#- 451 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'p8zSqbSAJ6bSZOsV' \
    'SW0yfhrPlOVRke0R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 451 'PublicGetWallet' test.out

#- 452 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'w0rMOzAoqZ9f1EMl' \
    'A0TgPiaTmgHDc2z6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 452 'PublicListUserWalletTransactions' test.out

#- 453 PublicGetMyDLCContent
$PYTHON -m $MODULE 'platform-public-get-my-dlc-content' \
    'OCULUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 453 'PublicGetMyDLCContent' test.out

#- 454 QueryFulfillments
$PYTHON -m $MODULE 'platform-query-fulfillments' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 454 'QueryFulfillments' test.out

#- 455 QueryItemsV2
$PYTHON -m $MODULE 'platform-query-items-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 455 'QueryItemsV2' test.out

#- 456 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 456 'ImportStore1' test.out

#- 457 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'l80IXa09qvdnZbUJ' \
    --body '{"itemIds": ["9uSIJAuvbRoyVKQW", "hRCa4MeqaWAGntKi", "5VcfdJHSQ99MzsmC"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 457 'ExportStore1' test.out

#- 458 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    'z9csPD3mAixnTRCn' \
    --body '{"entitlementCollectionId": "tYAOhAPz9lCMI8Ja", "entitlementOrigin": "GooglePlay", "metadata": {"6cJrH6H0hqUIDOC2": {}, "lhvjQbxJ8kMyYjTM": {}, "wxUt8Wn0bPEgnVes": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "4BukgYrUkqKLhOtC", "namespace": "oMjjcsvkUgpfrF2p"}, "item": {"itemId": "DBhsviMDzvKxm5Av", "itemName": "whDq9hlVwavR2tWf", "itemSku": "lzm98aj22sDOpjch", "itemType": "ReV2Sgd0wMGZHEIF"}, "quantity": 7, "type": "CURRENCY"}, {"currency": {"currencyCode": "rXoIkuJvjMnmfWaK", "namespace": "U8Ip9YwI71rpGgzg"}, "item": {"itemId": "ibcIwh74WoYm2Rpi", "itemName": "aZTqwxkiaQ25Cmx0", "itemSku": "27mrMB0ErGNqgTj0", "itemType": "m5aXzvl2LFs9Vq7f"}, "quantity": 85, "type": "CURRENCY"}, {"currency": {"currencyCode": "4uFmlM5vFocITDTP", "namespace": "5pBOko0gsrX5YmIH"}, "item": {"itemId": "aEjuL7g0PIjLnAoN", "itemName": "jzCHCUKdVx6o2rds", "itemSku": "iMHF2QEzGFMhZeUF", "itemType": "Op0vi3HGFkQMxctU"}, "quantity": 13, "type": "CURRENCY"}], "source": "PAYMENT", "transactionId": "E7xDyzd8ui7Gq6HS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 458 'FulfillRewardsV2' test.out

#- 459 FulfillItems
$PYTHON -m $MODULE 'platform-fulfill-items' \
    '2mGz4ijW6dYj3vyo' \
    'Ah76kCLT28EqooAS' \
    --body '{"items": [{"duration": 75, "endDate": "1978-01-30T00:00:00Z", "entitlementCollectionId": "uHs4x776RICQMUv3", "entitlementOrigin": "Oculus", "itemId": "cuTSz8tViSRVKzwW", "itemSku": "qYcgoQp44IwVEXXg", "language": "779DcEb5nBVeAEY8", "metadata": {"9xEnoKKlyPtaGSVN": {}, "lRTRrauD2sfxOt0y": {}, "IgL5CqZtwn2hSKKZ": {}}, "orderNo": "vM4WSz7P7y5q6uDa", "origin": "Steam", "quantity": 0, "region": "x8hxTiqpntZvRypS", "source": "CONSUME_ENTITLEMENT", "startDate": "1988-12-17T00:00:00Z", "storeId": "NmSOYNlojMWEfrT6"}, {"duration": 61, "endDate": "1992-07-16T00:00:00Z", "entitlementCollectionId": "TwYNvWLRH2T1hELa", "entitlementOrigin": "System", "itemId": "BDI6H0BLhMQNcUFU", "itemSku": "uoIPjHtjlsAVWEEx", "language": "JQvJmELMA89ixWjk", "metadata": {"F5JwpR9Zt9Phwk7O": {}, "RkQcyu5lxJ66HGJ8": {}, "Ih3lT8pzoI46Pcpu": {}}, "orderNo": "wiYC0cysoxUGXNjS", "origin": "Oculus", "quantity": 14, "region": "uHgrhtzk9E9cWWrZ", "source": "ACHIEVEMENT", "startDate": "1993-11-21T00:00:00Z", "storeId": "EG94tgrGpAyKwLIb"}, {"duration": 95, "endDate": "1991-11-19T00:00:00Z", "entitlementCollectionId": "jEqDJTlFzhUbELJw", "entitlementOrigin": "Epic", "itemId": "E16CJURxlwSvm0n7", "itemSku": "bp88FcFKPGv9PMYo", "language": "gmUVrSepOEo9ODEl", "metadata": {"88lSj9W9Qui3Qm0W": {}, "GaMwhFTQ6M5yBhQN": {}, "fv11khOgEX8q4Xcy": {}}, "orderNo": "M1quCP7gHWdrdkbX", "origin": "GooglePlay", "quantity": 54, "region": "hVXJ7MAA1c3t56Ep", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1984-05-13T00:00:00Z", "storeId": "rlaPzFVXIZH0z8HS"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 459 'FulfillItems' test.out

#- 460 RevokeItems
$PYTHON -m $MODULE 'platform-revoke-items' \
    'Yc2706OUmcszJVLP' \
    'q9854qsjR0aEzhzF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 460 'RevokeItems' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
