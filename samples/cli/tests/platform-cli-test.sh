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
platform-create-campaign --body '{"description": "XcgGVbMqSszE8GHa", "items": [{"extraSubscriptionDays": 43, "itemId": "6SdAdIhUDrwoZ5Me", "itemName": "cdKi5r6QEa1ysLEz", "quantity": 39}, {"extraSubscriptionDays": 14, "itemId": "rGN9A3sNm84hddSp", "itemName": "Ht0P7MIIR7CkyF6C", "quantity": 20}, {"extraSubscriptionDays": 7, "itemId": "UmiTqpyhPFdxLzFQ", "itemName": "N05MYzYiKWe5dNRl", "quantity": 19}], "maxRedeemCountPerCampaignPerUser": 54, "maxRedeemCountPerCode": 45, "maxRedeemCountPerCodePerUser": 19, "maxSaleCount": 66, "name": "IPrDQQRgat0SevkL", "redeemEnd": "1987-11-10T00:00:00Z", "redeemStart": "1977-12-30T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["MBvaO35llzQRaT5k", "PxUfofvnnSuB0y5W", "UlrMdI4sNveabntB"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'xTeIv53HGCiljvjK' --login_with_auth "Bearer foo"
platform-update-campaign 'oyD6SCwGrncqmLtj' --body '{"description": "QHAf8TgoNm03VLis", "items": [{"extraSubscriptionDays": 98, "itemId": "0mPVo3twu0MesTCf", "itemName": "9x4rt69lna7qxNeI", "quantity": 47}, {"extraSubscriptionDays": 11, "itemId": "Pz6MbwL6IY69z1Ua", "itemName": "LqYSYWytLPziZMdj", "quantity": 49}, {"extraSubscriptionDays": 76, "itemId": "cBZufQxGiHPllG4c", "itemName": "YEzfTD1ZBm3MqHcU", "quantity": 25}], "maxRedeemCountPerCampaignPerUser": 55, "maxRedeemCountPerCode": 76, "maxRedeemCountPerCodePerUser": 70, "maxSaleCount": 69, "name": "bSqb8RwNmn9HrNQy", "redeemEnd": "1977-06-21T00:00:00Z", "redeemStart": "1997-08-06T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["NtIuS5S5XUdjsoqw", "GyzzWi9gwQYv7t1o", "7TTr1DmrhZv15T7q"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'uIOvBMcaYmvCkGZ5' --login_with_auth "Bearer foo"
platform-get-loot-box-plugin-config --login_with_auth "Bearer foo"
platform-update-loot-box-plugin-config --body '{"appConfig": {"appName": "dAgqxpBFmaLoxozr"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "wfNPX2bOItRMvqtl"}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
platform-delete-loot-box-plugin-config --login_with_auth "Bearer foo"
platform-uplod-loot-box-plugin-config-cert --login_with_auth "Bearer foo"
platform-get-loot-box-grpc-info --login_with_auth "Bearer foo"
platform-get-section-plugin-config --login_with_auth "Bearer foo"
platform-update-section-plugin-config --body '{"appConfig": {"appName": "VHh2EI8JlDbPWbQ6"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "lNmqRBaAkLnvxkT1"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-section-plugin-config --login_with_auth "Bearer foo"
platform-upload-section-plugin-config-cert --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category '68cmDc3fxU8MyKrQ' --body '{"categoryPath": "pM4hkkK6KKXNB3Gv", "localizationDisplayNames": {"0IqmF51TkhjYnaq6": "foWvXa3bMrXsDr6k", "ILsSSyDdmykmoPYg": "c2L4jk4Lo0LSP0pf", "4IxjUkl535X3ateE": "KDpADz1x3poD3Qgb"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category '3boLQQ1MzH7Qm8bw' --login_with_auth "Bearer foo"
platform-update-category 'bmXgdAPh1EThG96g' 'AFKK2WDgCcxvONZm' --body '{"localizationDisplayNames": {"3EeERmDnyeFoF7VS": "Z6pf3vneSD2Tb3g7", "mSQUhAEtrmjqU6YE": "3p4lSck0ZHn5GI39", "YBHqaTHeKtW18iGe": "Ulc9d9sogWa24CKN"}}' --login_with_auth "Bearer foo"
platform-delete-category 'S0GqVvUfHQvsHXNU' 'Ne4mhgo5QB65lSAi' --login_with_auth "Bearer foo"
platform-get-child-categories 'YnNjkfZrQvGgbLdL' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'sFzHkBMr1yrOMlNF' --login_with_auth "Bearer foo"
platform-query-codes 'SrUEirnjX9fDmIbe' --login_with_auth "Bearer foo"
platform-create-codes 'ZxzfTcyiuATus9hs' --body '{"quantity": 12}' --login_with_auth "Bearer foo"
platform-download 'cvrbYCwZtxFHyPLt' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'I8ilbyDPUIj88cek' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'dqCt81P1ktfIovmv' --login_with_auth "Bearer foo"
platform-query-redeem-history '9gsR5cJcHm3SZLxo' --login_with_auth "Bearer foo"
platform-get-code 'RDFuuuySj29a9LJE' --login_with_auth "Bearer foo"
platform-disable-code '8HoRS1X2PFAAMwzH' --login_with_auth "Bearer foo"
platform-enable-code 'PxB1UskYs4Yw20DO' --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "qOBSC2DKHRuPMMWH", "currencySymbol": "8Yb33T5UBJCjfcnL", "currencyType": "REAL", "decimals": 14, "localizationDescriptions": {"xeCSz9WEi8KlloeH": "0JT1yduat2vQR3bi", "Bfsu4jmsRE2w1yEk": "Lgh3tIYt4SqYUTLD", "x9gIiDandpGT2t24": "aOMh5eC3IHeHSKLC"}}' --login_with_auth "Bearer foo"
platform-update-currency 'a3xreNDUWehwH3q3' --body '{"localizationDescriptions": {"1A806DJgas4b6z3L": "NUj7fdgLA84Z8YYk", "6QEgJjBbEDoNf3n0": "hEoRCAcf80zfFyab", "WAgIUXiI07A68eaq": "C2J9jyEW6GLbc0Na"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'KDUL3sa13lk1dQBH' --login_with_auth "Bearer foo"
platform-get-currency-config 'O86IlBhnetU4RwTq' --login_with_auth "Bearer foo"
platform-get-currency-summary 'UXlTDBzOuYsaZA2y' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "yd4mbqoOfADMMAXF", "rewards": [{"currency": {"currencyCode": "aY9eKa699bRVhyaK", "namespace": "wwrAP2aMlu7WtjCt"}, "item": {"itemId": "oYetOO847g8OudOf", "itemSku": "jnCuHZ3c46IjGa23", "itemType": "YvYmmDg7VYPXIuvU"}, "quantity": 38, "type": "ITEM"}, {"currency": {"currencyCode": "ereSvf9699mCEHTh", "namespace": "UJkETAsSp7gh4TeU"}, "item": {"itemId": "TkOkAYfJB8AT9t4T", "itemSku": "v207Y2QD3oD5fLCr", "itemType": "3OOlXVv8ZGF7uYnG"}, "quantity": 52, "type": "CURRENCY"}, {"currency": {"currencyCode": "zGYY7KQI1AeFgPqa", "namespace": "Okvo1aolB4lkKB4E"}, "item": {"itemId": "YOkQ1jMD3cym8xIf", "itemSku": "kOVW2grREOLx0KOw", "itemType": "w3HICQLfl7MUBG7q"}, "quantity": 39, "type": "ITEM"}]}, {"id": "DrT6QXCs5SPBbRPZ", "rewards": [{"currency": {"currencyCode": "TF6oQAXVG7tnsZg5", "namespace": "QgXjvyGJPN4eXbJE"}, "item": {"itemId": "5Vs2GcyomQoIXimB", "itemSku": "JehyxlNsjUgxBkF6", "itemType": "wFPoJeQediogEhhM"}, "quantity": 36, "type": "ITEM"}, {"currency": {"currencyCode": "IizGdKvOPdq5xrgx", "namespace": "Smy1DN9LFkYW5DQy"}, "item": {"itemId": "j4bj5Ro2ogaKt2uj", "itemSku": "QSa3Zdb65UXmy0Zp", "itemType": "6iIaTIKUkmkk9QM0"}, "quantity": 80, "type": "ITEM"}, {"currency": {"currencyCode": "nb76tFkEORV3bu1b", "namespace": "NCtX7W40V6Do5sYa"}, "item": {"itemId": "dCCFrHHC3DpZxkrQ", "itemSku": "DXuNFviMarv8mnfH", "itemType": "K8CCmE2lPnsbD3SG"}, "quantity": 63, "type": "ITEM"}]}, {"id": "dlwuUccE536ugBp3", "rewards": [{"currency": {"currencyCode": "HBvepnDCjgyJlXe3", "namespace": "6mgWjLfFmteue9nz"}, "item": {"itemId": "J6fH24T805tVg8Jq", "itemSku": "U0jZpjvsugAOS7u8", "itemType": "RiWyerCSa8SRgwsA"}, "quantity": 18, "type": "ITEM"}, {"currency": {"currencyCode": "1ik1jglaDXTvKCWw", "namespace": "NTAhd2wrS0uPdjhd"}, "item": {"itemId": "inpng5BLy8wbhMss", "itemSku": "AHjapIkY9Rf4wP57", "itemType": "dBZNR88YbCtmKy8M"}, "quantity": 54, "type": "ITEM"}, {"currency": {"currencyCode": "czbBdHb2slt71B1S", "namespace": "mZp2JZp50CnPb71O"}, "item": {"itemId": "RYcmQbTU5JX8ccLj", "itemSku": "MXJRk0eaKQDOJvrT", "itemType": "efglSs6g4iY9u02a"}, "quantity": 59, "type": "ITEM"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"YIWekp18lOC3mNqF": "7Bl0LcghVHfPEspx", "whRON0bc1eMbEIjo": "wLqc3ecjXJbZDKKo", "xLE1Y3Dymtj3giPg": "4x4yiPX6ues1Hhhk"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"U0VUfcYHJbBfAKSi": "PW3VgsZXiR1DJ7HV", "WqMkNSawQUWDFJvJ": "BWic7UkBeIXuqDuA", "XI66bQ71w0deoV9L": "x5RDA1l2XcrciYNE"}}, {"platform": "STEAM", "platformDlcIdMap": {"GCHsZYoLfR1KtOv7": "Zy0b65uvuKNuy0yt", "ZQ7M6Nzy1adnSKOL": "FKx1dX4LuWJu3pDM", "UAeeZ97SBROPYuG6": "XqP6oo7G73zdxTgO"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-query-entitlements-1 --login_with_auth "Bearer foo"
platform-grant-entitlements --body '{"entitlementGrantList": [{"endDate": "1973-04-22T00:00:00Z", "grantedCode": "8J1nsv4W2OJhtafx", "itemId": "MSJlHeb34sZKHcl5", "itemNamespace": "LLLOexL4fZvWtND2", "language": "eCh_ozqf", "quantity": 45, "region": "NtFEJ7tnkY6Mca5a", "source": "GIFT", "startDate": "1978-03-17T00:00:00Z", "storeId": "zhLVA3kE8jKvgatO"}, {"endDate": "1986-08-14T00:00:00Z", "grantedCode": "OXudXgNne8kJATwl", "itemId": "c6esUp6Sw1I98jeZ", "itemNamespace": "Q7hfxnhLd3Knakno", "language": "GD_nT", "quantity": 84, "region": "wVJnNnN7kAa7j0ri", "source": "REWARD", "startDate": "1979-01-18T00:00:00Z", "storeId": "AdNJOIG36I6tRbRc"}, {"endDate": "1979-08-29T00:00:00Z", "grantedCode": "EveMdAdiPKDUVSC0", "itemId": "0PYeDcagginxnFIn", "itemNamespace": "a3yddcbsPheTH26I", "language": "Jkio-VahH-867", "quantity": 42, "region": "PrIfapq5AAeMe4L3", "source": "OTHER", "startDate": "1974-09-05T00:00:00Z", "storeId": "WgU4pCAKxeE70Cau"}], "userIds": ["kqsGnmyo5JJTUVmb", "8GEXFTlEMEsFzYqw", "nQNxot371W9G4AvQ"]}' --login_with_auth "Bearer foo"
platform-revoke-entitlements --body '["gK1Np5nodqpLm7Fh", "JBNXzAFdO0Khqf6k", "iTdSGv2LFjAKY7Cb"]' --login_with_auth "Bearer foo"
platform-get-entitlement 'gsWqFWZX7kPBom8F' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-query-iap-clawback-history --login_with_auth "Bearer foo"
platform-mock-play-station-stream-event --body '{"body": {"account": "9GLLTG8phc3n4iLo", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 71, "clientTransactionId": "G9YI89hmguB8FOTj"}, {"amountConsumed": 79, "clientTransactionId": "RaoQomSJC4DdrKF7"}, {"amountConsumed": 91, "clientTransactionId": "VTBcrM8rG0rH0zcs"}], "entitlementId": "wwVeMK6MbGIVIu8v", "usageCount": 44}, {"clientTransaction": [{"amountConsumed": 39, "clientTransactionId": "wLc7KY3uVoJXTIMt"}, {"amountConsumed": 31, "clientTransactionId": "F8ZrQzP4zvtdxdbZ"}, {"amountConsumed": 95, "clientTransactionId": "xbWCYzo8yO2KTK9t"}], "entitlementId": "mmOnYnOpas6ghP1y", "usageCount": 79}, {"clientTransaction": [{"amountConsumed": 16, "clientTransactionId": "IlsHqffnrfsGlfPa"}, {"amountConsumed": 14, "clientTransactionId": "KBwa3Ddb60ufPpzw"}, {"amountConsumed": 18, "clientTransactionId": "rWdTYCfHkIySok5D"}], "entitlementId": "iXZtLW87rGysryod", "usageCount": 7}], "purpose": "X3viLvtEk4mTIpUA"}, "originalTitleName": "9gxo8SV38nEhoXmM", "paymentProductSKU": "2W7l6jHMA2rG3nak", "purchaseDate": "opAywelu01nryEJ0", "sourceOrderItemId": "NqoTow0qiOiC4j0i", "titleName": "ktm0ZPLkLOsp0LZ5"}, "eventDomain": "njN86Hl8kUXzt6bS", "eventSource": "c6bWvgpVyW9dD1kO", "eventType": "mvrAejcq2LgkQuaS", "eventVersion": 54, "id": "RBx3vim02jBOxrZD", "timestamp": "yvpcLYOWA8NjxOna"}' --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "Eok4nOOCzfsflhjb", "password": "ngJOUn18G5MlfDTk"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "8aG40NlncceIZSwg"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "AIkgzh4pTU0Am4DZ", "serviceAccountId": "hl0bQxFJ3sWCqQpQ"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "2FbKPFMycMSQ4qfA", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"X3z46OCaGBeMfPlN": "os4yBRjrERHEonAZ", "R8GmEu0q1p6QCyY6": "vSkVFWdsbYuVEGVx", "YheR3j5mNZ6vwv7K": "8Asvt1j1Rx59hesN"}}, {"itemIdentity": "Wy2NvZ85DDKDAF8K", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"4GrFES9z7xueHpAT": "Hccee9GXhKcjmSEw", "drkEnnqKzFsLfYal": "UlfwEQKjU7eHGebS", "Vu0LQ40kepEaC4df": "iOMZfEhHr39pysFO"}}, {"itemIdentity": "3Zvc1BZG99LyvfvH", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"cENx9xZlAchob44l": "ONDDwMvgI0HlyPR7", "wZNiVsF6xG2mXEQd": "bzIVy8alncV7vWgS", "Hdfo07UctPErqxyM": "yOK06MqQBErxgjVB"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-oculus-iap-config --login_with_auth "Bearer foo"
platform-update-oculus-iap-config --body '{"appId": "ycvU4PbmRDcrg0Dj", "appSecret": "QjBECXvea7H1m2lJ"}' --login_with_auth "Bearer foo"
platform-delete-oculus-iap-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"backOfficeServerClientId": "FRZ3ZprZ60zMjhTH", "backOfficeServerClientSecret": "eh94TSenE5hCFkIf", "enableStreamJob": true, "environment": "VN4ZONJREdUQ3z9F", "streamName": "1BxNNgnke4akncw7", "streamPartnerName": "wu9TmXfJWBPrx9Ns"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-existed-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-playstation-iap-config --body '{"backOfficeServerClientId": "8eLzYEvwSWTaLQjc", "backOfficeServerClientSecret": "tvrK2jhsYpKPlXn7", "enableStreamJob": true, "environment": "MKtezapPr2QEPx3z", "streamName": "TxBGtEJIYppuUSsK", "streamPartnerName": "oHw2hyd12uSE7BEv"}' --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "3aevq6iohU1cg4W1", "publisherAuthenticationKey": "IS3Uv1BpWoJBaqdg"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "2FHcunsS1lnaO2m9", "clientSecret": "vqjhbeK2qN8g6x2P", "organizationId": "yYDo5R3hLiD5sf5y"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "1JsxJNGmyt0SQDUD"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'oWBZVGLlkUetzCAW' 'c9x1aMjgGim51T10' --login_with_auth "Bearer foo"
platform-generate-invoice-summary '7XIZRZ7tZdIs0xf4' 'czdt7zqmSKxOEQlV' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'cx6GqsBq8vdhWVnu' --body '{"categoryPath": "YLgpZehK0G2nmyuV", "targetItemId": "iB9kRTcSQdTnNYGe", "targetNamespace": "AfYFG3wSkHKufBdS"}' --login_with_auth "Bearer foo"
platform-create-item '3ZOokZB4cXnAXyuG' --body '{"appId": "z6LlxHv8SwyagYvD", "appType": "DLC", "baseAppId": "w3UNgIGj2jZtEYT8", "boothName": "sIPSE1XXPzySa0sZ", "categoryPath": "oFS6xCOWMpyh9pMs", "clazz": "Qgb64ELbzDMwyo4n", "displayOrder": 72, "entitlementType": "DURABLE", "ext": {"RysQdbufXjYnSoIF": {}, "eouC2m38kXrDZWlG": {}, "VE9sJ4NpUtKp6M9I": {}}, "features": ["6nEwnZhsjwJeGwaP", "3xe5rruJVfLGea0Z", "SDMZz95OYKiqaZD6"], "flexible": true, "images": [{"as": "s7ACC1RgBfoNrHlF", "caption": "i2qJLgmBLE35Yhyi", "height": 61, "imageUrl": "0TQNEI3kfabxJWWS", "smallImageUrl": "I1ECUo1NPpeFhUzt", "width": 14}, {"as": "DgB7n4C97uAPP8PA", "caption": "TLpUpxeJlsBJT6Hh", "height": 83, "imageUrl": "W9nBhvhf8Q0DtJMc", "smallImageUrl": "YQdN66bswAgt65X4", "width": 80}, {"as": "HKWW4fI1IQcoBQEL", "caption": "cNlZkqTZrKgXNwvm", "height": 9, "imageUrl": "aWsQJtRYoagRJK5P", "smallImageUrl": "X9UcOvhPyE11TRT2", "width": 91}], "itemIds": ["B28MpusuhhDJ5slz", "giWZEtyd56LfxnbY", "97jjYgXchCbkXX26"], "itemQty": {"uEdCfQaMAQuTKfC0": 71, "d9yOfIMLds2DbPca": 30, "3DhqciwIeShF9RKb": 9}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"vxuJlhXbWhbwPwTo": {"description": "C6knjVwVnzaqSfJi", "localExt": {"QFC2gXoda0kg16yU": {}, "SpSOAjHJWwfCjYwW": {}, "kLob9gKLqs2nEZhp": {}}, "longDescription": "ByfHZinxNfgPAwkM", "title": "BsznlBUqnLT4AbGp"}, "tKaWNvPbpg7yrRvX": {"description": "fZ6rvgvEY3Hht1Sw", "localExt": {"qTsKKKo37NHDOQe9": {}, "1Ps3ztUIV0dS6hIH": {}, "9c4VfkyrwpuXxbaE": {}}, "longDescription": "RbfgPmi0eHkt1mr9", "title": "EOIFg0dnWIYN2NVL"}, "70Iw157g00jr9b8M": {"description": "uYmmeKTmBNvGYxEQ", "localExt": {"df3ewoGGoY7xmFNA": {}, "mjDDCvs78mcMdiS7": {}, "6YApGJ9ufwLYkqIg": {}}, "longDescription": "LuZS6hsQryiEtOAb", "title": "peUNf26UqkCfgCUY"}}, "lootBoxConfig": {"rewardCount": 56, "rewards": [{"lootBoxItems": [{"count": 0, "duration": 28, "endDate": "1980-06-25T00:00:00Z", "itemId": "xaOBdPF0JmX8qwU1", "itemSku": "cTuHHPB5S3DvPRCz", "itemType": "BrVUxmDOj3cvRFaT"}, {"count": 59, "duration": 15, "endDate": "1998-04-01T00:00:00Z", "itemId": "1W0TGTCm4fZWuk6p", "itemSku": "QxDQpKqxLGeMvr9T", "itemType": "svcMQ7dBsaIecRxI"}, {"count": 38, "duration": 28, "endDate": "1997-06-22T00:00:00Z", "itemId": "SHiWxF0YbuU5ar5q", "itemSku": "TLWUCy0Afgc050XI", "itemType": "ZRW491e94mQjVOOB"}], "name": "nIWhunElqZUodp3I", "odds": 0.12173679964673378, "type": "REWARD", "weight": 31}, {"lootBoxItems": [{"count": 58, "duration": 92, "endDate": "1988-12-03T00:00:00Z", "itemId": "y1ei1fIrPvfHnRN0", "itemSku": "6EjRwEQlNapJRfk4", "itemType": "f9Zcw1pEHAyNFxcV"}, {"count": 93, "duration": 74, "endDate": "1978-06-22T00:00:00Z", "itemId": "uMybYGxD9IPmmsLm", "itemSku": "u3kaPj0O4zd8Tb7c", "itemType": "UNGPTBxiFFCrn7dj"}, {"count": 18, "duration": 19, "endDate": "1980-04-03T00:00:00Z", "itemId": "69FTFVGUVhvKhJCm", "itemSku": "eisql14mUHVbMPim", "itemType": "NhcZsU3VAdMDcb4q"}], "name": "lkiFAamqvZI2Kwjq", "odds": 0.6656977665959348, "type": "REWARD", "weight": 92}, {"lootBoxItems": [{"count": 18, "duration": 27, "endDate": "1995-11-05T00:00:00Z", "itemId": "Xade41s3rH34mB2y", "itemSku": "PlRpWjmHZAAvKTH8", "itemType": "MuqIg0CzkguwuJCW"}, {"count": 54, "duration": 62, "endDate": "1982-09-03T00:00:00Z", "itemId": "xSvNDlmM5nQFMGzs", "itemSku": "7fzjgyc44mEh9tRk", "itemType": "8knYSV30lnroQehM"}, {"count": 61, "duration": 1, "endDate": "1977-02-03T00:00:00Z", "itemId": "i6t9unQLYXxm09wp", "itemSku": "GAbpEmDY9vLh3u6E", "itemType": "DsUmrV6kH4OotKwG"}], "name": "3UC6XCnnZxF8CmQr", "odds": 0.8659005870062143, "type": "REWARD_GROUP", "weight": 100}], "rollFunction": "CUSTOM"}, "maxCount": 11, "maxCountPerUser": 21, "name": "br34rBBN9tU6TDm5", "optionBoxConfig": {"boxItems": [{"count": 67, "duration": 61, "endDate": "1976-05-01T00:00:00Z", "itemId": "MDu87t0ldWf7iSGI", "itemSku": "iKFtWtn4Yr2svKM6", "itemType": "pqLGZ0TBujELAUK6"}, {"count": 25, "duration": 62, "endDate": "1992-04-01T00:00:00Z", "itemId": "iZgbwwm5iGzXtckn", "itemSku": "rgidKupvXO6aj4hC", "itemType": "mTC34jxW4pIDwdqX"}, {"count": 31, "duration": 26, "endDate": "1985-12-20T00:00:00Z", "itemId": "poBCbyJsF5IjF1c0", "itemSku": "W338HS6CBgVRyihY", "itemType": "NZ84CVhziXV8HwSm"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 4, "fixedTrialCycles": 4, "graceDays": 44}, "regionData": {"cA8wvLsWUNd6lPKv": [{"currencyCode": "qDejvqklTSvDwuOr", "currencyNamespace": "P9lzpiX0VuFpZum7", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1984-09-29T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1974-02-08T00:00:00Z", "expireAt": "1989-03-17T00:00:00Z", "price": 81, "purchaseAt": "1988-12-06T00:00:00Z", "trialPrice": 52}, {"currencyCode": "mwJSrN8jkIykR2zb", "currencyNamespace": "aI6PD7fEscShnGUG", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1995-07-05T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1996-10-11T00:00:00Z", "expireAt": "1990-10-28T00:00:00Z", "price": 54, "purchaseAt": "1977-09-22T00:00:00Z", "trialPrice": 22}, {"currencyCode": "DbLNwjm3FK0nnX2p", "currencyNamespace": "oMfZ1hDHtbh4HtMl", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1982-06-28T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1991-08-05T00:00:00Z", "expireAt": "1986-05-09T00:00:00Z", "price": 32, "purchaseAt": "1999-03-13T00:00:00Z", "trialPrice": 90}], "inFpnQ5xF9wwbvMZ": [{"currencyCode": "yeDeRnVfPUa6xVVB", "currencyNamespace": "cq3wZpFIYeAg79Hc", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1977-07-08T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1995-10-09T00:00:00Z", "expireAt": "1998-01-27T00:00:00Z", "price": 10, "purchaseAt": "1981-09-16T00:00:00Z", "trialPrice": 55}, {"currencyCode": "7aUyrdt4XSpWBAet", "currencyNamespace": "sanzqP8oxfrtbECD", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1992-06-30T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1971-08-10T00:00:00Z", "expireAt": "1975-07-16T00:00:00Z", "price": 57, "purchaseAt": "1989-08-02T00:00:00Z", "trialPrice": 36}, {"currencyCode": "xfYL8Avt70ZUT2fS", "currencyNamespace": "k3LL0calqxEewuGS", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1999-01-24T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1992-09-18T00:00:00Z", "expireAt": "1998-05-27T00:00:00Z", "price": 100, "purchaseAt": "1984-10-30T00:00:00Z", "trialPrice": 67}], "t4sUmanYxM0UHZVN": [{"currencyCode": "YzGMNIpWoSLkUrfu", "currencyNamespace": "f4U3WeYeA9t2ENKK", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1987-04-04T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1984-09-27T00:00:00Z", "expireAt": "1982-10-08T00:00:00Z", "price": 24, "purchaseAt": "1975-08-27T00:00:00Z", "trialPrice": 42}, {"currencyCode": "MgKAOG5iDcCR5PbC", "currencyNamespace": "vDLil8wj9cKM3Ar6", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1974-10-25T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1974-09-09T00:00:00Z", "expireAt": "1973-12-25T00:00:00Z", "price": 15, "purchaseAt": "1986-04-19T00:00:00Z", "trialPrice": 72}, {"currencyCode": "GmWGgTJfHlJl4tHG", "currencyNamespace": "a4XfZcd9CVnGqMX9", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1973-03-17T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1973-09-13T00:00:00Z", "expireAt": "1989-05-28T00:00:00Z", "price": 74, "purchaseAt": "1980-07-24T00:00:00Z", "trialPrice": 65}]}, "saleConfig": {"currencyCode": "EUl07bhwntCVqiYO", "price": 72}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "wMZQjzvjSozv6CTR", "stackable": true, "status": "ACTIVE", "tags": ["5IQYBQuxLvPuWYvE", "E8SohhhuiTnJarYY", "kHBDdSzBXdxapwhd"], "targetCurrencyCode": "3fsNy9Z9OhxXvCp9", "targetNamespace": "y7fLD2qfCXnlUnqx", "thumbnailUrl": "T1WsRNMZcA92hzC7", "useCount": 80}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'HZ3sIhzOx2CXKlvI' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-items 'omU3pIxM9n8D2eLM' --login_with_auth "Bearer foo"
platform-get-item-by-sku 'e3lt9qfx2UDcgVE7' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'L9FK6e0MrPc4vtxk' --login_with_auth "Bearer foo"
platform-get-estimated-price '9hVKlG56HlzGr7Xj' 'dyRJunZPkp6ccIBn' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'WyPw8mj7gyQ7XdIs' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'zGRj46COPipH1MWV' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'THG0qHJCWEfOJpZm' --body '{"itemIds": ["9yEYWNGMy2pgSGSU", "OK68eqGJtWf1Ybgg", "8rdwY9bmrvHmO07K"]}' --login_with_auth "Bearer foo"
platform-bulk-update-region-data 'NqX9LM2IwEsdOGBX' --body '{"changes": [{"itemIdentities": ["BwnzDX8v3xgC1Ge9", "PdbTTAJ2Gp1r0sVZ", "6LJAOddIL2l3hPjN"], "itemIdentityType": "ITEM_SKU", "regionData": {"UIoiIJFNxuNOmUSW": [{"currencyCode": "w18T1IxVWCxdvPL9", "currencyNamespace": "e4P01vxP8xj1LyEi", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1994-12-09T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1998-09-03T00:00:00Z", "discountedPrice": 90, "expireAt": "1999-04-13T00:00:00Z", "price": 96, "purchaseAt": "1986-04-26T00:00:00Z", "trialPrice": 80}, {"currencyCode": "9UBJWodpdwsX1jor", "currencyNamespace": "cyR0x3YiHF8ITGPR", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1985-11-11T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1973-10-11T00:00:00Z", "discountedPrice": 3, "expireAt": "1980-12-28T00:00:00Z", "price": 86, "purchaseAt": "1984-01-27T00:00:00Z", "trialPrice": 23}, {"currencyCode": "lNzwog2IhErkNhNc", "currencyNamespace": "ECWwchW6zL9SkbLl", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1991-02-10T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1977-02-10T00:00:00Z", "discountedPrice": 67, "expireAt": "1976-12-31T00:00:00Z", "price": 27, "purchaseAt": "1978-11-11T00:00:00Z", "trialPrice": 68}], "azb8jvRWenURH48a": [{"currencyCode": "JuALEcSqcE15u6D3", "currencyNamespace": "1DjOsrs3CUYATdqn", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1974-01-15T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1979-05-15T00:00:00Z", "discountedPrice": 16, "expireAt": "1984-05-14T00:00:00Z", "price": 67, "purchaseAt": "1991-01-10T00:00:00Z", "trialPrice": 22}, {"currencyCode": "ruNB72HHMkjzyBB4", "currencyNamespace": "UFKiaoV0VOem2yqP", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1977-09-16T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1982-02-08T00:00:00Z", "discountedPrice": 75, "expireAt": "1983-09-15T00:00:00Z", "price": 3, "purchaseAt": "1977-12-05T00:00:00Z", "trialPrice": 82}, {"currencyCode": "kbuS6x9cLJ1APnNl", "currencyNamespace": "sa2bRBr27fVMWuAf", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1979-06-08T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1973-11-15T00:00:00Z", "discountedPrice": 70, "expireAt": "1993-11-06T00:00:00Z", "price": 13, "purchaseAt": "1998-07-24T00:00:00Z", "trialPrice": 71}], "IZPKOKiAVQXXOmqF": [{"currencyCode": "HLbyXmgCNiXH8uen", "currencyNamespace": "bC5CphgMweexsIAP", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1988-05-06T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1984-03-14T00:00:00Z", "discountedPrice": 56, "expireAt": "1985-08-06T00:00:00Z", "price": 72, "purchaseAt": "1977-11-27T00:00:00Z", "trialPrice": 17}, {"currencyCode": "2EGvJ4UMS93yOxNI", "currencyNamespace": "nDByhnoluO6ti0QP", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1977-06-03T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1975-03-31T00:00:00Z", "discountedPrice": 74, "expireAt": "1986-03-08T00:00:00Z", "price": 73, "purchaseAt": "1991-05-14T00:00:00Z", "trialPrice": 53}, {"currencyCode": "4xQye7HqnVK3YVeO", "currencyNamespace": "Ws9mfVQh3jLBtn9p", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1986-01-02T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1978-05-25T00:00:00Z", "discountedPrice": 39, "expireAt": "1991-07-25T00:00:00Z", "price": 92, "purchaseAt": "1985-04-01T00:00:00Z", "trialPrice": 8}]}}, {"itemIdentities": ["B4CxyQrUpIFvORxT", "i79DpSjb39ukcR6c", "2E2r3vk3IfAKEbqc"], "itemIdentityType": "ITEM_ID", "regionData": {"XSGCCvNowNmdpcJg": [{"currencyCode": "F88ySNq4Mj7mulP4", "currencyNamespace": "tQ6R1OqKVOTniBgL", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1991-11-28T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1986-01-30T00:00:00Z", "discountedPrice": 12, "expireAt": "1992-04-15T00:00:00Z", "price": 72, "purchaseAt": "1984-12-26T00:00:00Z", "trialPrice": 68}, {"currencyCode": "jNRSzOTqcVNX3ahv", "currencyNamespace": "xw9gwwhTnjN6wKZG", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1983-11-09T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1972-12-26T00:00:00Z", "discountedPrice": 38, "expireAt": "1985-03-22T00:00:00Z", "price": 57, "purchaseAt": "1978-01-05T00:00:00Z", "trialPrice": 6}, {"currencyCode": "VVmM45mfIZsWhkS4", "currencyNamespace": "76dGGJwJ00UH197M", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1994-05-25T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1996-11-01T00:00:00Z", "discountedPrice": 43, "expireAt": "1990-01-14T00:00:00Z", "price": 88, "purchaseAt": "1984-07-19T00:00:00Z", "trialPrice": 22}], "MWzYQCAaPJgoxGJo": [{"currencyCode": "JaSzUtY4ZD0Xtb0U", "currencyNamespace": "4pH16NUsVY21NVIs", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1996-12-21T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1972-04-23T00:00:00Z", "discountedPrice": 91, "expireAt": "1999-10-10T00:00:00Z", "price": 9, "purchaseAt": "1991-10-03T00:00:00Z", "trialPrice": 37}, {"currencyCode": "pWCugmfOL0QQpxsu", "currencyNamespace": "D8PGqku59eFJrOXy", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1997-07-21T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1974-06-26T00:00:00Z", "discountedPrice": 72, "expireAt": "1991-01-09T00:00:00Z", "price": 83, "purchaseAt": "1994-12-08T00:00:00Z", "trialPrice": 73}, {"currencyCode": "G0iHDT8QbF7gHPTP", "currencyNamespace": "QbvLt2NRqJGIKzLy", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1999-10-30T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1998-04-12T00:00:00Z", "discountedPrice": 24, "expireAt": "1992-02-13T00:00:00Z", "price": 35, "purchaseAt": "1988-04-14T00:00:00Z", "trialPrice": 42}], "yx34luLdvtsTKXMj": [{"currencyCode": "iw6gYPvfn2Qt9iyq", "currencyNamespace": "3Nyk8ncu2Z3eDHH9", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1977-02-16T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1979-05-23T00:00:00Z", "discountedPrice": 16, "expireAt": "1974-10-26T00:00:00Z", "price": 92, "purchaseAt": "1975-02-19T00:00:00Z", "trialPrice": 61}, {"currencyCode": "nx2h61X9dN1MGRXB", "currencyNamespace": "J6mVV7JS9qjNLwvI", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1975-11-21T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1999-10-15T00:00:00Z", "discountedPrice": 89, "expireAt": "1987-12-22T00:00:00Z", "price": 87, "purchaseAt": "1975-11-05T00:00:00Z", "trialPrice": 16}, {"currencyCode": "lPdinpjS2DRfGt9G", "currencyNamespace": "lyZVQ4X67tPZSTpP", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1999-11-30T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1979-03-17T00:00:00Z", "discountedPrice": 93, "expireAt": "1979-08-05T00:00:00Z", "price": 63, "purchaseAt": "1975-04-02T00:00:00Z", "trialPrice": 14}]}}, {"itemIdentities": ["vvDgw0ag7kSWE0Hi", "qm5IuLryiEXqvUWD", "jU1G0EVjVZw1ToLu"], "itemIdentityType": "ITEM_SKU", "regionData": {"akQN1MpOs1RVFrcg": [{"currencyCode": "2CXxepx78fvsyhE2", "currencyNamespace": "BKtyTDSIM7mkmvZ7", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1977-10-18T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1990-02-28T00:00:00Z", "discountedPrice": 82, "expireAt": "1991-07-22T00:00:00Z", "price": 92, "purchaseAt": "1993-04-26T00:00:00Z", "trialPrice": 72}, {"currencyCode": "4jfMANPpmZDdMiCx", "currencyNamespace": "muCCVuFjS1GC1d2b", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1985-07-08T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1981-04-18T00:00:00Z", "discountedPrice": 62, "expireAt": "1996-02-18T00:00:00Z", "price": 56, "purchaseAt": "1975-07-10T00:00:00Z", "trialPrice": 69}, {"currencyCode": "aTIz0jcgDI8Pkz96", "currencyNamespace": "vd80msqIm5bufnBq", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1979-02-27T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1988-02-05T00:00:00Z", "discountedPrice": 60, "expireAt": "1979-03-05T00:00:00Z", "price": 46, "purchaseAt": "1981-06-21T00:00:00Z", "trialPrice": 16}], "L28FPwTiXfLcxDC9": [{"currencyCode": "Ynd02mECIQhfIhHt", "currencyNamespace": "ADUQ9zimQTQT95pF", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1975-08-04T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1989-06-10T00:00:00Z", "discountedPrice": 37, "expireAt": "1986-07-23T00:00:00Z", "price": 80, "purchaseAt": "1984-02-09T00:00:00Z", "trialPrice": 55}, {"currencyCode": "eKOufV4f15NohXu6", "currencyNamespace": "opxQGRt6PqlkL0di", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1990-08-24T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1994-06-01T00:00:00Z", "discountedPrice": 93, "expireAt": "1975-01-05T00:00:00Z", "price": 14, "purchaseAt": "1974-09-13T00:00:00Z", "trialPrice": 79}, {"currencyCode": "QfY3XCv4hdOa6FdZ", "currencyNamespace": "hNMd1onFjGRbxtAB", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1984-04-14T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1974-11-25T00:00:00Z", "discountedPrice": 100, "expireAt": "1986-04-11T00:00:00Z", "price": 73, "purchaseAt": "1987-08-09T00:00:00Z", "trialPrice": 16}], "hgGq5GIDhNC66szb": [{"currencyCode": "CCf73IFbRkPSSITz", "currencyNamespace": "4TjCrJHXGXku2YVu", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1972-03-07T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1983-02-14T00:00:00Z", "discountedPrice": 69, "expireAt": "1988-04-11T00:00:00Z", "price": 12, "purchaseAt": "1977-05-25T00:00:00Z", "trialPrice": 39}, {"currencyCode": "rV9ZGWrZ05sxe6A6", "currencyNamespace": "RpmKDebNkylbynkg", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1980-12-30T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1983-10-23T00:00:00Z", "discountedPrice": 78, "expireAt": "1990-03-10T00:00:00Z", "price": 38, "purchaseAt": "1975-09-01T00:00:00Z", "trialPrice": 53}, {"currencyCode": "kci5rZ8iMlOuksQJ", "currencyNamespace": "CiRFiZWwJ7NrTb1X", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1975-04-07T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1993-08-31T00:00:00Z", "discountedPrice": 53, "expireAt": "1987-10-14T00:00:00Z", "price": 33, "purchaseAt": "1985-04-02T00:00:00Z", "trialPrice": 58}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'YJ8BzP6EUmUXGM5a' 'nIloyj9lhbvuQdW2' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'jwKUckc794ryY91l' --login_with_auth "Bearer foo"
platform-update-item 'X8DD4MYXlrJ81lHv' 'v9rqvEoM8YmVjAkO' --body '{"appId": "3HKsEp6KlqwW4djr", "appType": "DEMO", "baseAppId": "M7tuL81lsR7xxSVp", "boothName": "3Gd2TK0HzYviTgYm", "categoryPath": "x82JVBRLPZ6Iz8tn", "clazz": "e5dbguBF6Gsvvdl8", "displayOrder": 20, "entitlementType": "DURABLE", "ext": {"z9x7XZIjU4IK9lOL": {}, "aZaMphKCqTq3EVhe": {}, "JjoEEXBLIxGnNuho": {}}, "features": ["cPAGv6c1ESC6hZYT", "EdqQpoGkUWNizk5U", "JM3WWPvvCiCf33Vi"], "flexible": true, "images": [{"as": "bzf5aANNNs5kgSZZ", "caption": "NUHbIT9szApmWJO5", "height": 45, "imageUrl": "Zn1YXj5zFZeOCOR9", "smallImageUrl": "NvBQZSJPOIKrRBrY", "width": 98}, {"as": "fa2LrnpZxNnLRH36", "caption": "bqS2oFY76PU1AziB", "height": 82, "imageUrl": "sys6GdkDcos5uVJ0", "smallImageUrl": "BJfZ0jvA54CSqZFD", "width": 39}, {"as": "3by2kYSCdnFKLc0x", "caption": "cTjqjdcEfU61OJYM", "height": 26, "imageUrl": "PKVSZCg3XTc9vQe0", "smallImageUrl": "dHJfF6KIuvnRCa9J", "width": 22}], "itemIds": ["lhe98oaFKlQicdrx", "VhrtwSd9QWVMYz7T", "U1TsxsChSclSkb5a"], "itemQty": {"Bi9K9zyv6gFZXI5n": 72, "JgjC56pda3YhtQxp": 58, "dIn7QqXBDXJcrqKm": 60}, "itemType": "EXTENSION", "listable": true, "localizations": {"xoLnWGP1PafIjLX8": {"description": "ce0KbNN7Ycl2JfmQ", "localExt": {"plvGjVQ4aebjfgGu": {}, "472oWJlfglLM4xjf": {}, "kNL4lU6jaGfsD1cf": {}}, "longDescription": "swmeFpvtDtetoQVF", "title": "L8LNW11vtpaTxi7k"}, "489jRCn48bvkCPfK": {"description": "ofwXOIZZQAJza84l", "localExt": {"KKmVOaTS6xBbNrSU": {}, "AW2ak7ISDrBVg6Nu": {}, "DZvPb1kuUfNfUDe4": {}}, "longDescription": "g7q6PHEaqbzHvDDl", "title": "1jiLw3XMGBA6JXDp"}, "A1tIC45C0oaGouFu": {"description": "4hXONgUwJnUpryDe", "localExt": {"RcpUvlrw2MwC1uuo": {}, "kpaIjL0Vxe5n9Lx3": {}, "QcFo9gxOgvDc7xMr": {}}, "longDescription": "RKvw8ISP2WKmCRRX", "title": "BxlalCHtWlKxLpS8"}}, "lootBoxConfig": {"rewardCount": 10, "rewards": [{"lootBoxItems": [{"count": 39, "duration": 76, "endDate": "1982-04-30T00:00:00Z", "itemId": "guycGiq9j2EyIknf", "itemSku": "LDpgHnMOn8nc3gUZ", "itemType": "8ZFyyEr0KBXuJBqK"}, {"count": 87, "duration": 79, "endDate": "1981-09-07T00:00:00Z", "itemId": "8uux9xBomQFPFWy5", "itemSku": "cwNPI6aFo0MVwDZC", "itemType": "IXFNEL3uWVRz3V7Y"}, {"count": 2, "duration": 80, "endDate": "1989-04-03T00:00:00Z", "itemId": "M3bNLWHAbCZixe2c", "itemSku": "Q6O30lpzcBQMAEcN", "itemType": "cJqrKxnMzSYoc4Zj"}], "name": "iMY4H34B6wVd8ipc", "odds": 0.5899514335296582, "type": "REWARD", "weight": 46}, {"lootBoxItems": [{"count": 70, "duration": 88, "endDate": "1971-02-10T00:00:00Z", "itemId": "rryHB6GO9zP3Faep", "itemSku": "A3b3YJ9nJM6vtT27", "itemType": "xv85K5MU2qmbeqaV"}, {"count": 8, "duration": 48, "endDate": "1977-12-12T00:00:00Z", "itemId": "INdClpF7OvlBIEgj", "itemSku": "se5kd6GEDo08yq5E", "itemType": "5HleLoog4me2NBFp"}, {"count": 39, "duration": 47, "endDate": "1987-04-05T00:00:00Z", "itemId": "3j9LYdG7xVPqBqe9", "itemSku": "RDQMBSYAFLqp8PF5", "itemType": "hCcoukWpnbz4ys7j"}], "name": "6lxuU3u2HEG0qfKe", "odds": 0.10766913434660086, "type": "REWARD", "weight": 26}, {"lootBoxItems": [{"count": 65, "duration": 93, "endDate": "1986-07-21T00:00:00Z", "itemId": "sPykS8YLmwtYgWGc", "itemSku": "A0h4G1LZ1HaX5UBM", "itemType": "bsF44VTsLDRzdq22"}, {"count": 5, "duration": 2, "endDate": "1985-04-21T00:00:00Z", "itemId": "F2g7TVtzYEHUodh3", "itemSku": "iUfBthbepUCTWiZ1", "itemType": "uqh7GAi4FEIu44u8"}, {"count": 45, "duration": 77, "endDate": "1999-12-23T00:00:00Z", "itemId": "4ouSgkpK70uJmUL0", "itemSku": "uzElixc023dIvDiA", "itemType": "0tQWlHwBcTtztx3V"}], "name": "Al6tXFbnATCzUOIz", "odds": 0.7622020736079372, "type": "PROBABILITY_GROUP", "weight": 12}], "rollFunction": "DEFAULT"}, "maxCount": 63, "maxCountPerUser": 22, "name": "CZ4AELr5lraa5v5P", "optionBoxConfig": {"boxItems": [{"count": 23, "duration": 58, "endDate": "1981-03-18T00:00:00Z", "itemId": "Je32AiwKadEoIVmp", "itemSku": "rwPsa9YD92CX0rIT", "itemType": "ajpwHITGeHTnqRbz"}, {"count": 56, "duration": 91, "endDate": "1985-07-11T00:00:00Z", "itemId": "9ZFgJbQ3Fj1umx4I", "itemSku": "tzkMJ7cudf4r916G", "itemType": "Prhn2etVIQvRkQJA"}, {"count": 39, "duration": 61, "endDate": "1998-09-30T00:00:00Z", "itemId": "4ooQ980ywmg1pWpW", "itemSku": "it1QC7FKe0fnHUlm", "itemType": "U1unGKM0tgfeWy47"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 57, "fixedTrialCycles": 46, "graceDays": 44}, "regionData": {"MI4gGmvK9gW596Fw": [{"currencyCode": "BNrFXt3TAuKBwBcD", "currencyNamespace": "12ae6r3hHwya4Npd", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1974-10-30T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1975-08-05T00:00:00Z", "expireAt": "1979-08-30T00:00:00Z", "price": 41, "purchaseAt": "1976-01-19T00:00:00Z", "trialPrice": 1}, {"currencyCode": "Hf7dbh2iKNUl0qJq", "currencyNamespace": "zoKMRMG541PAiNjU", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1983-10-29T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1995-04-14T00:00:00Z", "expireAt": "1994-10-28T00:00:00Z", "price": 22, "purchaseAt": "1991-01-21T00:00:00Z", "trialPrice": 41}, {"currencyCode": "LMUaDSwwQlnNRZJH", "currencyNamespace": "BSB4fZWEFIZs28Ff", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1997-05-03T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1998-06-22T00:00:00Z", "expireAt": "1996-12-28T00:00:00Z", "price": 21, "purchaseAt": "1973-06-09T00:00:00Z", "trialPrice": 49}], "f4lhBPbarbWEm8bV": [{"currencyCode": "tZcfVCPdQhim9QKU", "currencyNamespace": "AFTVYelIlGJg9wdc", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1975-01-18T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1979-03-03T00:00:00Z", "expireAt": "1978-03-23T00:00:00Z", "price": 36, "purchaseAt": "1973-10-11T00:00:00Z", "trialPrice": 32}, {"currencyCode": "pfcFBUsnnDJlmD1i", "currencyNamespace": "EokbUiYzCQh2iNTw", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1977-11-07T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1973-03-02T00:00:00Z", "expireAt": "1972-10-13T00:00:00Z", "price": 6, "purchaseAt": "1980-11-16T00:00:00Z", "trialPrice": 43}, {"currencyCode": "zMTQ9P7sYLDWAJOA", "currencyNamespace": "75K4BYJ2fkqYJoF2", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1977-07-21T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1983-12-14T00:00:00Z", "expireAt": "1979-12-25T00:00:00Z", "price": 45, "purchaseAt": "1984-05-20T00:00:00Z", "trialPrice": 5}], "o8TWwXWsz9TVmdMK": [{"currencyCode": "EohKzuMYDUTLBeCi", "currencyNamespace": "dXjuGgx8ncXejmeZ", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1984-06-04T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1979-03-23T00:00:00Z", "expireAt": "1983-08-23T00:00:00Z", "price": 24, "purchaseAt": "1972-06-12T00:00:00Z", "trialPrice": 38}, {"currencyCode": "meTrT7cF9oVCh89w", "currencyNamespace": "NOkKYssVejcL3kR3", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1985-05-24T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1981-11-22T00:00:00Z", "expireAt": "1998-02-13T00:00:00Z", "price": 60, "purchaseAt": "1971-03-08T00:00:00Z", "trialPrice": 73}, {"currencyCode": "GAYOHR5BWa9VzIka", "currencyNamespace": "QEl1iUProNB6hI6I", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1987-08-25T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1992-04-22T00:00:00Z", "expireAt": "1996-03-26T00:00:00Z", "price": 14, "purchaseAt": "1989-09-10T00:00:00Z", "trialPrice": 96}]}, "saleConfig": {"currencyCode": "vdRhG9NwV3zDuqVl", "price": 98}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "pcYPK8IxrSZuxWl0", "stackable": false, "status": "ACTIVE", "tags": ["nPS2urJqerobWMZG", "4fJIyFAm3DQht4Jw", "VL5KLTxahWlS6XdB"], "targetCurrencyCode": "aKSLCgOOPXM6XTUh", "targetNamespace": "2dJ90yqHDNacl4F9", "thumbnailUrl": "G6Dl5TFwBY6HKXAb", "useCount": 23}' --login_with_auth "Bearer foo"
platform-delete-item '7TOpyiuvvQUm29Ia' --login_with_auth "Bearer foo"
platform-acquire-item 'cq4XRLaA643nTMtX' --body '{"count": 90, "orderNo": "yPEOuPhGspRi3bhP"}' --login_with_auth "Bearer foo"
platform-get-app 'QvBBJI5JxytpcubN' --login_with_auth "Bearer foo"
platform-update-app '4AUUPFPscZsXeJOD' '4DMtqfIGiGJovgWS' --body '{"carousel": [{"alt": "RxZ8N4UQ2fg3V1o2", "previewUrl": "x0hL5DuBDqMyIAzW", "thumbnailUrl": "ze94MEdJFAy2JTll", "type": "video", "url": "kRGB8jqJEd6eqqsB", "videoSource": "vimeo"}, {"alt": "yONV0JRtozI0jpli", "previewUrl": "CFQ6WgJpGPigdc5V", "thumbnailUrl": "yC4qvWjVac1cQvSx", "type": "image", "url": "aLXzAVYymOuhCkZu", "videoSource": "vimeo"}, {"alt": "htrsf8eIFSovTGXa", "previewUrl": "Msq8ePN1oco2jx8U", "thumbnailUrl": "pe8SjMvpqM8puggO", "type": "video", "url": "l9iCqfW6rqGOQny4", "videoSource": "generic"}], "developer": "3NdEPhNHSH7eKDfR", "forumUrl": "cngEpTnRUQr3RLOM", "genres": ["Indie", "MassivelyMultiplayer", "Racing"], "localizations": {"Srcbc4LWfKaY5c1t": {"announcement": "P5TDuI5f6m4KC07C", "slogan": "nsZe32hqEcB1ExYM"}, "Bb3ckvoaJYdMqGeg": {"announcement": "cg3eRvBZXN3cjIXm", "slogan": "FWRJnj8xN7HDPTUE"}, "DPN1Kb4UTPWDXTSb": {"announcement": "55g8LSTs7Nf95lGl", "slogan": "Prf6obIdnI6Ag7eU"}}, "platformRequirements": {"YcYJ4QzXCmqr6gmP": [{"additionals": "GaHP5SVPvRLiDi0m", "directXVersion": "NHb6Lx8eq8SGNwEQ", "diskSpace": "O8dYXvBSYvJBwb6C", "graphics": "jZUMRf2VJetWsokv", "label": "x3BHuTEczr9KjQ3t", "osVersion": "tz8MTBt1xk9IyssS", "processor": "A8nP5PQjpzk2Tb7i", "ram": "YdmNZWosrsVBPZ64", "soundCard": "j0HUONscofwYLQcD"}, {"additionals": "vkaEIIPoJT83zEGX", "directXVersion": "mVBZLyrH9J7Boysm", "diskSpace": "aORLkP5hc2Fh04JT", "graphics": "sqDTynCewqJligLl", "label": "RxOelKykICRxF6Ht", "osVersion": "lER2txs4qrNARATn", "processor": "6KXOutlYBbLhL8KX", "ram": "x25FZfQIodVBqQsB", "soundCard": "pCJBIXLGYcwWVRK6"}, {"additionals": "UKk5ozrXA4HZHNyq", "directXVersion": "9odanhR1Zrm3thUv", "diskSpace": "V87yfkycLSVdleSa", "graphics": "AylsmLYe2phYOgT5", "label": "kDTyPl3dKF7NXEjr", "osVersion": "JMki8jvc3P8Gwjg3", "processor": "IOH0SDHgYKqxJiFJ", "ram": "drmj5vhzgsJwex7w", "soundCard": "q8ZPlXNaUNgdY2vf"}], "Juje5cPnmGjTvYa5": [{"additionals": "Pqx1K7qcAoijBPAp", "directXVersion": "6EPb988NzxrDKVpU", "diskSpace": "Ljjiw3NeVG4DJi9D", "graphics": "aMrc0WFgKjE945x2", "label": "CPVYYG9WvoGmAmva", "osVersion": "VV5YfxnUNcwjr7gS", "processor": "GhnfuF4WZiQVICVp", "ram": "Wd3UM08gMXhdf3ju", "soundCard": "XW4JprIb3CJCAtvS"}, {"additionals": "G8Cfa9dzOJDGCTHI", "directXVersion": "OFjeXbsSgR43kIDz", "diskSpace": "xBwqRJTzrHNZWUsq", "graphics": "5lQo2jy29EJigqYh", "label": "yVhURx1yPeczRpdk", "osVersion": "0HATGylx2JG2KNGf", "processor": "hzfCTxxrsRRLee3T", "ram": "cJ7DQIi45aCDHN9m", "soundCard": "Vug2zkVf6KgpKOcn"}, {"additionals": "3tMD9UT67bOwugFD", "directXVersion": "a6wUQvehKqwCh86X", "diskSpace": "mRkCEcfHDCdl59Wp", "graphics": "9A3tXGve6DdK6uvg", "label": "8f2cIoByk9fxtvsg", "osVersion": "eAxo57nKAbZpsbJ4", "processor": "Iu5KJ0ynxGBlacDC", "ram": "dFe8ATUqVxcSthrp", "soundCard": "nMUBsnUfuQIcSbUt"}], "5UGkInFGpuUsdtq4": [{"additionals": "dOwNESzCEW9dUVhZ", "directXVersion": "jLftC3sCS8CpLCqP", "diskSpace": "D9CeDEdCnnL6Kt1B", "graphics": "jj3b8QM8Rr45ULqX", "label": "QgvwD3PsKDJiWxQB", "osVersion": "waS7rDBf2S54phbd", "processor": "yGDt47f9GWRlE9hq", "ram": "z6rjDNo4rhjxUdMM", "soundCard": "83WekqfWv04vvn9b"}, {"additionals": "k5qr8qs2mqtnGAqX", "directXVersion": "UjNypF6MMqWpdEJs", "diskSpace": "PoaIbYz8cK5jlpJd", "graphics": "re5ur6yvWJDdvM7T", "label": "7PX2vamIRZHzsIYO", "osVersion": "CUoiCXNjrdQL2jdx", "processor": "1eIba1sB0HsJ06Dz", "ram": "fbzRYt4OVUyumBeI", "soundCard": "qdQGZC5kM03HHijs"}, {"additionals": "QRj7N8IAjmsonjj0", "directXVersion": "ZR50BQ1U6aFD3O2k", "diskSpace": "XQSc58zgZVl4gIF7", "graphics": "v3qbZu9M3OxqVAT4", "label": "H1lRZ9Z1JBrHRzEO", "osVersion": "tIxzPqb6n73m0jia", "processor": "DH86d9rsKgzCsMul", "ram": "pB8HZUtVVaJCiLgK", "soundCard": "OwrSfWhT5B4Wedop"}]}, "platforms": ["MacOS", "Linux", "Linux"], "players": ["Coop", "Single", "Single"], "primaryGenre": "FreeToPlay", "publisher": "ojzPXI2v0prR3OEe", "releaseDate": "1983-09-03T00:00:00Z", "websiteUrl": "0MkZwS6TYwNN3UYh"}' --login_with_auth "Bearer foo"
platform-disable-item 'ic03qGEg5fNzBVrj' 'o3g8CfRwtyl1HeT7' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'VEPgG40QyXzsOzgc' --login_with_auth "Bearer foo"
platform-enable-item 'k078IghoQBp2mWAO' 'YksczxBS0OBCa2vW' --login_with_auth "Bearer foo"
platform-feature-item 'adLmQtYKmEMzicbu' 'L2S3RiW8dLTCBfGU' 'dVEdvdQL7sVwcZ2P' --login_with_auth "Bearer foo"
platform-defeature-item 'ofaJoSqtrEOqxH46' 'fRTSZoDdT0fefo74' 'eg3Nt2c0r4GqF0NH' --login_with_auth "Bearer foo"
platform-get-locale-item 'glOVuNZ9LzNeJnBu' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'rh54CWbYb0Pebyt8' 'b4DGscjwrizsFUgY' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 66, "comparison": "excludes", "name": "xHnmSxvkG9UR5q9n", "predicateType": "EntitlementPredicate", "value": "TBjn3d2sFzMS3QaV", "values": ["277Ivjj1A647XQ3k", "jZF7Ax6115Kg9U8v", "rQJXQxoIbVi2CLEk"]}, {"anyOf": 29, "comparison": "excludes", "name": "KMavu4Ul2IaieEbP", "predicateType": "SeasonTierPredicate", "value": "bojDVaZLpx4kEWYk", "values": ["O6KrKUMhJrASBh61", "hmWKSSrF35anDGvu", "r19V18oIrUKXttgA"]}, {"anyOf": 71, "comparison": "includes", "name": "2QdWJFLmoPEgd8EM", "predicateType": "SeasonPassPredicate", "value": "f2HEHvVevhISjbtB", "values": ["JUK5fE3OufPSX3Pd", "OU2V9yw94oa8UJ34", "TIedV3HyoX4VnO2L"]}]}, {"operator": "or", "predicates": [{"anyOf": 52, "comparison": "isNot", "name": "DNp1SZ58aDllwzTR", "predicateType": "SeasonTierPredicate", "value": "gUSMM5au8GJT0mkV", "values": ["17UDb19R6H7r1ta3", "cXXTUIggoH89QNmI", "PI6zUtf3QaJPGrTN"]}, {"anyOf": 25, "comparison": "excludes", "name": "7jK5pxe82pgFiAS6", "predicateType": "EntitlementPredicate", "value": "KxbS7Q2OgRucL1jw", "values": ["me06c6SKLc2mEC3I", "RXzfjDZZBmOau6sy", "Xl5XCbkOfHaGr5kd"]}, {"anyOf": 0, "comparison": "isLessThanOrEqual", "name": "tvmMB6jzrpRGESmo", "predicateType": "EntitlementPredicate", "value": "XPMqxj4hBgVY3YAx", "values": ["ufc5ZyODR2NVyn4P", "ZLKbcOdyjqf6Q4oi", "woJcaRMEb15LBlTV"]}]}, {"operator": "or", "predicates": [{"anyOf": 67, "comparison": "includes", "name": "TTD81xhNP4t6kYBU", "predicateType": "EntitlementPredicate", "value": "iSNV4qBrt1kcLmRv", "values": ["6EJtl5xWnsb8oWq9", "1VitaomvWTzdsW4N", "4RImNWVIJnhhwFDV"]}, {"anyOf": 47, "comparison": "isLessThan", "name": "cY1HgAnZV4IOglVL", "predicateType": "SeasonPassPredicate", "value": "Yc481dYdvGxJAMDR", "values": ["A1LF7jdWlekFwO94", "VBCV9qJhWva2FPBu", "jX0geYCpGJM4sqsP"]}, {"anyOf": 80, "comparison": "isGreaterThanOrEqual", "name": "MiZXXOFwmGWAvNF0", "predicateType": "EntitlementPredicate", "value": "GkwxUNYyNwGiKrkn", "values": ["H0Y5mrQgLC6D2qsF", "iQHglUQMZi5WjMZf", "OadpgegCUjTdi1Eh"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'r8OtqpNJ9R8TuNy4' --body '{"orderNo": "ejmVA3vMCsGyPd12"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "B8QNUz0hFFNbH6j2", "name": "W4roZM2UKAXEEsL5", "status": "INACTIVE", "tags": ["zRxfNEjUMTs8WIOb", "JBTsvsw76uISRX0b", "KVoWtoUW1P7ocuBA"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'ldDSUS7Haa6unq1y' --login_with_auth "Bearer foo"
platform-update-key-group 'QOSRvyiLBRVtIDi2' --body '{"description": "piIQFVmzMidw70KS", "name": "ahpYZdKZRyR9AX7J", "status": "ACTIVE", "tags": ["7QLFrVgtX7y0fPOi", "eDCow2zXyFFVpM87", "yqEwEacQMTlqN4LK"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'kxJ5v3SBafnKNiMP' --login_with_auth "Bearer foo"
platform-list-keys 'bFkFGA85W3HJkqgS' --login_with_auth "Bearer foo"
platform-upload-keys '2B37wwoPYOHiIsxm' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'sLBPBJuNLnWRrtW8' --login_with_auth "Bearer foo"
platform-refund-order '70qD88ZcduZSe7W2' --body '{"description": "0UZcDaiq0nEZ7Pyh"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": true, "notifyUrl": "fDm0RNFwiz70tRVL", "privateKey": "MlHi8i9gOVqajUWr"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "gEsWDtaKzn8dZwnn", "currencyNamespace": "GeZsZVgbPzPFbrOM", "customParameters": {"ZMgWkFN7Tpkx6Gcf": {}, "yOg6ZUrrp9ubg9mn": {}, "dW2JKmQafUs2bxYz": {}}, "description": "tOEyVbKIf1ZbzgUw", "extOrderNo": "d8DHoCQykmXHYmkR", "extUserId": "lg7gYs6unPYQ9jNQ", "itemType": "SUBSCRIPTION", "language": "BDZ", "metadata": {"1ldhOh6HvjnYuV7N": "fC4A2ODiZhbfb8Qq", "CyK1XH9D6vl5eFdF": "fgK46GjCWaP8huTm", "nq3FGQn3Ahu5wxq6": "oJq4mChmQHQhO9IK"}, "notifyUrl": "BXDFQfXFD58sG6uD", "omitNotification": false, "platform": "7hosaPFC5zBW3ZgV", "price": 5, "recurringPaymentOrderNo": "Cj9ObVGT0Scwl4kN", "region": "mCi15XTJTgCNNH7R", "returnUrl": "tG5Xmo9Q0Wb07N17", "sandbox": false, "sku": "q8OzTE89WDNoMcOm", "subscriptionId": "bfJrCJQIj1haAosK", "targetNamespace": "glqaCXE9ytpIO8bt", "targetUserId": "O3OwNEGSW5TaW4to", "title": "7QCY2NGGvi9kg3rM"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'IzNmhJTNQjKlwjfJ' --login_with_auth "Bearer foo"
platform-get-payment-order '3TJ2xVpge70WsLfg' --login_with_auth "Bearer foo"
platform-charge-payment-order 'bZieRvJI5sT9DH3D' --body '{"extTxId": "fLCv8q4Thmq09bBg", "paymentMethod": "PAYxrBE9jlnTgtgW", "paymentProvider": "WALLET"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated '3wDwD9RKvQX4yFQF' --body '{"description": "drRoM6FoqCYw7Alx"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'O6qdFpc71sSck3gg' --body '{"amount": 19, "currencyCode": "WJlSlCQMDji329Pf", "notifyType": "REFUND", "paymentProvider": "ALIPAY", "salesTax": 43, "vat": 45}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'MEPtpsSNcpK1QkB2' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Epic' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Playstation' --body '{"allowedBalanceOrigins": ["System", "Other", "IOS"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Xbox' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config --body '{"appConfig": {"appName": "qeUB7RSayqGFguhh"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "B19VE838c7OydVw0"}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "9rW8i8krFWJhe03c", "eventTopic": "oRFok5d3AyGrZO8G", "maxAwarded": 42, "maxAwardedPerUser": 79, "namespaceExpression": "oXNSoVEBG7VbBPUW", "rewardCode": "ipz9C05YabFX4FCK", "rewardConditions": [{"condition": "5ucTFsAFzaO3yJpA", "conditionName": "3KMxBlrRytER1qdT", "eventName": "elFAadM9y66Drf4S", "rewardItems": [{"duration": 91, "endDate": "1986-09-23T00:00:00Z", "itemId": "lgC2nzS9SiGUjVAw", "quantity": 86}, {"duration": 44, "endDate": "1998-10-26T00:00:00Z", "itemId": "q6JRHcn7KaoCEkRd", "quantity": 30}, {"duration": 68, "endDate": "1980-05-14T00:00:00Z", "itemId": "HncR5dShqiBUI9es", "quantity": 91}]}, {"condition": "0vqsL9SomqWsGA76", "conditionName": "yxi0QzZWfmP2sx0K", "eventName": "O5bEJaPnAFjsodyJ", "rewardItems": [{"duration": 87, "endDate": "1992-09-06T00:00:00Z", "itemId": "VBrShGbIIuqK8C40", "quantity": 23}, {"duration": 70, "endDate": "1979-02-21T00:00:00Z", "itemId": "shF9Rh2o7GCQGPCx", "quantity": 46}, {"duration": 93, "endDate": "1986-01-26T00:00:00Z", "itemId": "QHK30EX0FclpDl5H", "quantity": 38}]}, {"condition": "ISArROIodcmM6v2A", "conditionName": "EozWWaYvBLE46bpu", "eventName": "Jip8JyxJ39vrtuWW", "rewardItems": [{"duration": 36, "endDate": "1998-05-10T00:00:00Z", "itemId": "yA7U7dGMjupZkZQY", "quantity": 52}, {"duration": 59, "endDate": "1976-11-24T00:00:00Z", "itemId": "33J34fiTxK63OHpn", "quantity": 95}, {"duration": 62, "endDate": "1985-09-23T00:00:00Z", "itemId": "30YWSgxpKWtdtdtV", "quantity": 99}]}], "userIdExpression": "cb2o1J5euLAbBgej"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'ig8Jg5VByeI3ycMc' --login_with_auth "Bearer foo"
platform-update-reward 'YYBixKJXCISQdwec' --body '{"description": "1m8BusV9tUh74KVo", "eventTopic": "6Xqjz2xUKLNWSmYy", "maxAwarded": 97, "maxAwardedPerUser": 65, "namespaceExpression": "vyelIJ8QgaLMqi83", "rewardCode": "6ULa7cfZl4VuY6rs", "rewardConditions": [{"condition": "Zyo6CBRRnoOikIxX", "conditionName": "KKIR6kPmswm5TCAU", "eventName": "1cKApdJDnE73GLmS", "rewardItems": [{"duration": 35, "endDate": "1977-03-30T00:00:00Z", "itemId": "s5owBhoUg4LsGP6K", "quantity": 78}, {"duration": 31, "endDate": "1992-08-15T00:00:00Z", "itemId": "XkvUv2XiXaBzsmax", "quantity": 20}, {"duration": 9, "endDate": "1994-09-26T00:00:00Z", "itemId": "ZPlLitytGka7Kv5T", "quantity": 1}]}, {"condition": "OZ0b2p3b63KrcwIc", "conditionName": "XMhGy83Xit6boOLG", "eventName": "Ccg16DqwdQPQ9HkS", "rewardItems": [{"duration": 92, "endDate": "1997-01-28T00:00:00Z", "itemId": "IwncZPk82GF3eTC0", "quantity": 44}, {"duration": 70, "endDate": "1984-11-18T00:00:00Z", "itemId": "ZUDj9dzGgGVxo9OH", "quantity": 14}, {"duration": 87, "endDate": "1973-09-11T00:00:00Z", "itemId": "HumyfuBNisecYbcO", "quantity": 32}]}, {"condition": "JfuBs1Vpqn47GVgh", "conditionName": "TH2wToOnq9U5lyW8", "eventName": "9Xwt3wmRTrDCjhnK", "rewardItems": [{"duration": 43, "endDate": "1971-06-03T00:00:00Z", "itemId": "brmgjhWK0x0ZidAJ", "quantity": 58}, {"duration": 34, "endDate": "1994-06-09T00:00:00Z", "itemId": "eD1La16Bw3JbUnUD", "quantity": 15}, {"duration": 19, "endDate": "1993-07-13T00:00:00Z", "itemId": "YldcTpdeCD9XPRi4", "quantity": 3}]}], "userIdExpression": "6Z7rb21A2E9pX0BW"}' --login_with_auth "Bearer foo"
platform-delete-reward 'CMqPsRk5htdM5T3f' --login_with_auth "Bearer foo"
platform-check-event-condition 'DSrSHrkoqv2mM6so' --body '{"payload": {"MaTvQq2a9YdFNtRV": {}, "SO0js0hG9xmSnzd7": {}, "zgUxAogcnGkXk17Q": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'PkJHRhmLKQuQVFSK' --body '{"conditionName": "iXl8G2uf6E8EajXL", "userId": "SAS8MKMaxQ1QyJCp"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'KedhuzI7G9NCKKXu' --body '{"active": true, "displayOrder": 2, "endDate": "1985-05-16T00:00:00Z", "ext": {"sSDspvgM16sZ6rjn": {}, "kH4ExObppC6CMYDm": {}, "5ge659UDEOF6gp5U": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 92, "itemCount": 24, "rule": "SEQUENCE"}, "items": [{"id": "OfoNewWjwMWDKEt6", "sku": "JhbJ0fwTDaq6b5Rp"}, {"id": "MwhWPtndriXU9loO", "sku": "xpmEuwDVc12r0DVU"}, {"id": "GgGHkapTCafFMdvY", "sku": "iCBuzUUwyI6Vtd4v"}], "localizations": {"9k4fv3kMiuQ3DhsK": {"description": "Lxjt5srPFxBgpFtD", "localExt": {"BmTLH9kP9U53z6jo": {}, "BAhAlJGI2YYb6ajB": {}, "jgq6eY4PBNHKPx62": {}}, "longDescription": "tHxDb06ZFy3uglSp", "title": "2UxvF2uLXWilRD7H"}, "D6LCgdFxRGj00RT6": {"description": "LvcnGMJbJIYLssMv", "localExt": {"y9gkfTMRrXVRcAVR": {}, "DX6gmDfNfPGYYSTu": {}, "nMgt3C8hEguCqlMH": {}}, "longDescription": "iQN3HWJw9zIWsiP2", "title": "JQ24meDrwEuTyM2q"}, "ohglzO8AEl6A9sh2": {"description": "x2ur2ccp7R7OqPqI", "localExt": {"jS4i0N9ytb3c8pVZ": {}, "8GlU8962e6gtn5pU": {}, "ARJM1T8QwMNOAzXm": {}}, "longDescription": "yHEV4g9P6a280S5R", "title": "NB5dVCsB7xL4axSP"}}, "name": "gPCiwLxCFLDixZwV", "rotationType": "FIXED_PERIOD", "startDate": "1985-06-09T00:00:00Z", "viewId": "QBP766LUnBBR84iA"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'O7sBQt6YJ2tWwF7R' --login_with_auth "Bearer foo"
platform-get-section 'nP1oK3c4RVfjB0zi' --login_with_auth "Bearer foo"
platform-update-section '3XrYZUiN24ol1qqb' 'algizL97ycJV5YqE' --body '{"active": false, "displayOrder": 68, "endDate": "1983-02-23T00:00:00Z", "ext": {"Qzl7X9fHr6WvBxmB": {}, "vNj3ktaDf9B22HGg": {}, "xakPt7IYzaZUTmvs": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 67, "itemCount": 51, "rule": "SEQUENCE"}, "items": [{"id": "LPnnGsnfmBerp84q", "sku": "jwzWpCF1vyamjsEz"}, {"id": "wtLPxK1os4qR8LaQ", "sku": "zEb39sZTdFfC8x5a"}, {"id": "HLsXHlm1RJTTy9Jr", "sku": "Nz1K5M1qgFddYvif"}], "localizations": {"GHawNx6yhniEHLbE": {"description": "QKc0aUvrKXDIjYC4", "localExt": {"df9qswSlpCI8Dhjl": {}, "xUyrs3OSesE5p0Dw": {}, "Uj2HKUvPYUcQBxMS": {}}, "longDescription": "dOOsn2Nd8Jpa19GJ", "title": "DK46Eehx7xasqMY9"}, "aulsL6NOV5agpS6A": {"description": "5mkufBpWVxIK9D2b", "localExt": {"TcgaKoccaSwWcZmz": {}, "CWGI1cIQcPWAShIh": {}, "ieSKUf3zKbyQk2vQ": {}}, "longDescription": "TYX1xsth28NZZgsX", "title": "ycuQNGIDeHlf6IcX"}, "1K9JrK6Or2xx7rLw": {"description": "rPoWiywnxuDLLuIa", "localExt": {"SxoloIH1gBCWVFrv": {}, "ls0ZwosKhDlLfTKx": {}, "pVOXvGSrdkqddI3e": {}}, "longDescription": "zqu6FB0sL2xt6fX9", "title": "j7rhZCAlDlVKBsLZ"}}, "name": "iBRXszE7CL1cQCSo", "rotationType": "FIXED_PERIOD", "startDate": "1988-01-28T00:00:00Z", "viewId": "vH7g63cOx6yrIw37"}' --login_with_auth "Bearer foo"
platform-delete-section 'pKOLrF5i3gr3Cc4M' '2O7NrTQO7KLdZDGw' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "qx7T3l1ut2oyolli", "defaultRegion": "YsTJUmpscwLcUml3", "description": "KuoMKh7tprnacA34", "supportedLanguages": ["xmIOjFLgKR4LjEWh", "OScvtQ92iD02YMvE", "UNfoL7JCcMo7GxxX"], "supportedRegions": ["dbYCRexPekTsQxMT", "faSot7aohFYy4Vxw", "HIJ9gzxqAw4vBGQA"], "title": "eh0VTiTP4PSrXUS6"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'jYI9lsQFD43Df5qU' --login_with_auth "Bearer foo"
platform-update-store 'ZOFzpFd6b5Jc5TET' --body '{"defaultLanguage": "Hcup8GG0VCMTFJ6s", "defaultRegion": "vTyo9RHget5hzB52", "description": "BDFopxUwkMuSqQnK", "supportedLanguages": ["zDgDAtqE3kuybwTQ", "FYEJjIYwqfSRy8Gg", "Vk77fd1GS5YkyhAi"], "supportedRegions": ["AItnWUmD225fp1eg", "sx3ErheNwqd5pric", "lNNqLyrlzrJ4QHbf"], "title": "nAdtkujxHff7n1ya"}' --login_with_auth "Bearer foo"
platform-delete-store 'NCcjgFhS0URBhl0L' --login_with_auth "Bearer foo"
platform-query-changes '5FCbOn46W2B2uPQL' --login_with_auth "Bearer foo"
platform-publish-all 'rt2t6bVpCgKvPXSD' --login_with_auth "Bearer foo"
platform-publish-selected 'ufmKh783cV54JsVB' --login_with_auth "Bearer foo"
platform-select-all-records 'RB0rY0xfWddACyHS' --login_with_auth "Bearer foo"
platform-select-all-records-by-criteria 'mo4KX9TPO3K1k5ZM' --login_with_auth "Bearer foo"
platform-get-statistic '8btmGsgXNXbpqxh7' --login_with_auth "Bearer foo"
platform-unselect-all-records '6Af5JSwjw2fE2g6j' --login_with_auth "Bearer foo"
platform-select-record 'XV7oai2oDm9FaP0H' 'J98tE4UyoQg0b0sG' --login_with_auth "Bearer foo"
platform-unselect-record 'OkzxVt15LKmkQ7YB' 'hsOuJ0ypkkt2G4eF' --login_with_auth "Bearer foo"
platform-clone-store 'h2YNsdoxpLTBM9Q8' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 't829Ido1JyveSRiB' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'q23kyH9jQbHWkcVk' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale '0X28GS54vl7gIKBc' --body '{"orderNo": "7OYTylFRAJKySnC0"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'cfPl3Z2zSBbs4PAV' --login_with_auth "Bearer foo"
platform-increase-ticket-sale '72u8AxE2IQeoxYV4' --body '{"count": 95, "orderNo": "KgrtEPdXXlt8geCd"}' --login_with_auth "Bearer foo"
platform-commit --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 0, "currencyCode": "Xu3iNvn7vLZ7h6al", "expireAt": "1975-12-18T00:00:00Z"}, "debitPayload": {"count": 73, "currencyCode": "4OZ2nDodm4TNs8mA", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 52, "itemIdentity": "6IKSYFdJwgZsRPOz", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 42, "entitlementId": "rLQjk4VoYfIksth2"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 25, "currencyCode": "BpdDFfvzeU5iqhx6", "expireAt": "1984-07-09T00:00:00Z"}, "debitPayload": {"count": 43, "currencyCode": "lxgywkbdOsyxX1tf", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 89, "itemIdentity": "8oYUT4jyCVJ0V8ob", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 66, "entitlementId": "Gd8m7Y3wiNloJfey"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 85, "currencyCode": "XL6SjljNPTXA3qbg", "expireAt": "1990-07-12T00:00:00Z"}, "debitPayload": {"count": 92, "currencyCode": "kFkBtXMU6KRIm5xB", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 48, "itemIdentity": "Ii99ctgFXasxp5h7", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "gl7yHvEqpJSrDXVw"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "fbpMpRl6xRyV19cb"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 35, "currencyCode": "VIuCOCkt2W1DfI8Q", "expireAt": "1981-04-18T00:00:00Z"}, "debitPayload": {"count": 14, "currencyCode": "2ZJY3QvRa7CDRTcs", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 51, "itemIdentity": "HzD3dZyyWbUQpbcv", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 71, "entitlementId": "iA4UTDgS2SVEo5M8"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 99, "currencyCode": "ku9GYH4ijqOVM50t", "expireAt": "1985-08-30T00:00:00Z"}, "debitPayload": {"count": 33, "currencyCode": "PbklTHcmgXsrVj3M", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 32, "itemIdentity": "ml6BpCODWGOLMmCZ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 32, "entitlementId": "elXYyNrXweiCnDld"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 87, "currencyCode": "d6mLZ0GTJwEjoZrR", "expireAt": "1981-04-30T00:00:00Z"}, "debitPayload": {"count": 0, "currencyCode": "qnpKwhpZVdw5UMa8", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 35, "itemIdentity": "mxtEFLwELCY2vIdd", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 78, "entitlementId": "xnA1VynioJcAPwVH"}, "type": "FULFILL_ITEM"}], "userId": "Gcs1ACMvoY4jWH9d"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 26, "currencyCode": "6XTqHc0cM7ixq8Tj", "expireAt": "1977-11-28T00:00:00Z"}, "debitPayload": {"count": 47, "currencyCode": "NQ2vCbMn0Oia336u", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 69, "itemIdentity": "iMTAductvUfVwLah", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "Redh1SiZlOpIQ8GL"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 6, "currencyCode": "F1R5OexAPzCG6ZKQ", "expireAt": "1985-01-18T00:00:00Z"}, "debitPayload": {"count": 23, "currencyCode": "TwEtnHxP5pVtN4jN", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 6, "itemIdentity": "2bCo941ALznQuHVs", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 41, "entitlementId": "fCjUK8GeX4Q0B2Cj"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 83, "currencyCode": "WK09l4wkrzahXR1s", "expireAt": "1986-06-22T00:00:00Z"}, "debitPayload": {"count": 62, "currencyCode": "Qj2isN7bRwcr16lW", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 21, "itemIdentity": "gZpjlMMtPWg8217m", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 34, "entitlementId": "aDa9PDwhu31d8eOd"}, "type": "FULFILL_ITEM"}], "userId": "BbeuQqm9wM7mgTtU"}], "metadata": {"dPVcQijMBhs0kDP6": {}, "d3nuUZ41mSeS9SnG": {}, "qhJOvykBcDpzD9zh": {}}, "needPreCheck": false, "transactionId": "BE0HRsE0GHDOFjrf", "type": "qJcyxT2a7fCFAUzL"}' --login_with_auth "Bearer foo"
platform-get-trade-history-by-criteria --login_with_auth "Bearer foo"
platform-get-trade-history-by-transaction-id 'ELiM573TdtWjfVci' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'uLnLsBKGsALPuCOy' --body '{"achievements": [{"id": "phUUAV95708zaP0w", "value": 31}, {"id": "DQbzTiFrQB1yUoni", "value": 36}, {"id": "DRWobEoGr8W97KBe", "value": 6}], "steamUserId": "MiFEWUT8cAFO5zEw"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements '8GENEJYPKxxOw7xN' 'Q98IEbc9YITN98j4' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'P2AGeidXRRnIAJfK' --body '{"achievements": [{"id": "VjOn6rtILNJVv2DL", "percentComplete": 76}, {"id": "31AZSRkuw6q8FgqG", "percentComplete": 44}, {"id": "6RsFK7eYlSU3vYcH", "percentComplete": 53}], "serviceConfigId": "ZjFegVnZOn0tk4IA", "titleId": "TSIefcqNEn4IZ0Dv", "xboxUserId": "6b8WtaMVvLbG04KK"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'nh3jvW0Qp3kTyL4C' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'sLwiWUMcpxn4B6Xo' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'TNMuqZTHwo1IAJQp' --login_with_auth "Bearer foo"
platform-anonymize-integration 'b6r8ZeaSHwQuiH3O' --login_with_auth "Bearer foo"
platform-anonymize-order 'zu4G6bXxp0gYZyF9' --login_with_auth "Bearer foo"
platform-anonymize-payment 'fJBJkSOrF9Dg4FcD' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'wBGyBiHewZkwEeuz' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'BBRSknxyWkZObuvi' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'g8sMuss76ezTrsDZ' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'NYUV48Oh6I45X7Hv' 'PSN' --login_with_auth "Bearer foo"
platform-get-user-dlc '4iWk12Jffk8dwKNP' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'UOHNZxML3yoBM9qx' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'd6PWz7sVnMxge2in' --body '[{"endDate": "1990-02-19T00:00:00Z", "grantedCode": "8fBFP1ABaIKrEt8d", "itemId": "3o7cTS9OIIMErnNT", "itemNamespace": "LXHrsOFsbhRow4ia", "language": "mO-KPSe", "quantity": 14, "region": "GkYoq8HP1TM0tefV", "source": "IAP", "startDate": "1992-06-26T00:00:00Z", "storeId": "X1NPO5Wn7rNG8rGp"}, {"endDate": "1973-09-14T00:00:00Z", "grantedCode": "fAS09VyQB1vR1mx6", "itemId": "K17GL1CrO4ZuoGZS", "itemNamespace": "xTzm8oMSPIHPtqzI", "language": "jXa-KA", "quantity": 27, "region": "YrJAe5Kd5QB96ndl", "source": "REFERRAL_BONUS", "startDate": "1994-03-08T00:00:00Z", "storeId": "fhAyZKhqilty9NVl"}, {"endDate": "1974-04-20T00:00:00Z", "grantedCode": "xUmnfdOAmu1dX1Nq", "itemId": "D20RUvvYeJZw6QZF", "itemNamespace": "N7wFCnqpvNesGiVn", "language": "LkQ_zSKM", "quantity": 31, "region": "1soDE1K0SvGrMYwP", "source": "OTHER", "startDate": "1981-12-07T00:00:00Z", "storeId": "XD9H1u1CvzWPcZwk"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'j1l6bf2F9EXOBj7v' '8LHYivmD0ekycMKl' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'wJTNL2UCWUtaAD7Z' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id '94HLvWFsXHtMP0k9' 'L5dREQbCqfh0gpAB' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'FBER6WNcDOsRzBkf' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku '9A6HjCnFRdSihcvs' 'zzQLZBktk0siMup0' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement '1kyaFwwD7wecuQb4' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'GNQHVZMKGBnzh4su' '["aGIzttTncVBf5g3o", "euHiNyLkfPQPmjUk", "vSs5YmIejozmG5Hl"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'rIfMAvvpkAHRJHZy' 'frXZmiJX4CjKCeIR' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'Ir997KKpJXTLbYWp' 'qeXjaf1f5fjNMZjK' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'J05puX3197WrMnJt' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'ovSMFw8X4zxbdfXg' 'unt1oMNZ68eovHSH' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements '3xV3URIRVDYBd6hM' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'B0l7sg7IfMH5Tu1k' 'y1ZYvyeHmfoFkUDP' --login_with_auth "Bearer foo"
platform-get-user-entitlement '864shbnQ3bVvuvps' 'DJXPCWkX4Kpi8CJ8' --login_with_auth "Bearer foo"
platform-update-user-entitlement '8aMPGFFAQZbfbmVT' 'EbiRq5Juikmpat75' --body '{"endDate": "1980-01-18T00:00:00Z", "nullFieldList": ["bN9ZBtzJ33tCwv8H", "1f451FVZ630HNBYZ", "Srz7pMjESLLMPKDX"], "startDate": "1990-10-04T00:00:00Z", "status": "CONSUMED", "useCount": 18}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'J6JLb5f3SBMyJUdw' 'EBRrHAWUFqTooGGn' --body '{"options": ["PEgY0t7QQWl42byO", "wXgKyPhXmcysae8H", "pWH4xiz3fWthJSu2"], "requestId": "pUIIuPLFAtcWhjAP", "useCount": 73}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'QbWvSSp71zEPPfmA' 'QiqRRC2caquMRtQO' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'ILcaDqUITBHQR5IS' 'NoFR3GUxdMuvmL0U' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'BfwzaaeP3Wd0Wrb8' 's3GW0CY0vAfbq8xo' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'Curq4lpHXrbVBh60' 'NUA2aKQwnXrmi6ya' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement-by-use-count '8u4sQPvaf1AcweR7' 'tJW3MLMob1hUnIzI' --body '{"reason": "pUM8KK1kGFN0NUNG", "useCount": 74}' --login_with_auth "Bearer foo"
platform-pre-check-revoke-user-entitlement-by-use-count '51kOTJZluTekDMCG' 'UJvERxNg8djSb4Vt' '60' --login_with_auth "Bearer foo"
platform-sell-user-entitlement 'vKQ5vlCdI519Pf2i' 'ogwxM5DZM0dgozmc' --body '{"requestId": "o41750xdYQg34WUV", "useCount": 99}' --login_with_auth "Bearer foo"
platform-fulfill-item 't1Lr5BlO8K6LH4dS' --body '{"duration": 1, "endDate": "1976-01-07T00:00:00Z", "itemId": "DOy5vhSkxERZ2AQ1", "itemSku": "jvXYBar5RMmmGdWl", "language": "0wpj5tVfKU3D8WVP", "metadata": {"h0Z7YiGE2cyzTMBY": {}, "7Xd0OoENg2Lw7uep": {}, "mahXojVZYz2zMU9j": {}}, "order": {"currency": {"currencyCode": "LzNV3GaG43R6nlRP", "currencySymbol": "rEAYqRBeSc5uShoj", "currencyType": "REAL", "decimals": 7, "namespace": "XpW1l70pcZgIn4lP"}, "ext": {"ghHyMEHBzArbyW10": {}, "NkJFQxuMHnfOlX6H": {}, "YVEiaereFCPJU2wE": {}}, "free": true}, "orderNo": "8ZfwCVJW9yspUOyH", "origin": "Steam", "overrideBundleItemQty": {"p400RZe8Bzx9aGEI": 0, "BTCZs97TJI8GPrM2": 9, "F3celFgM62HQtgzQ": 15}, "quantity": 97, "region": "O3nR8j8DlP6OGbn8", "source": "PURCHASE", "startDate": "1998-04-05T00:00:00Z", "storeId": "x2hc8vaN1Off5gRZ"}' --login_with_auth "Bearer foo"
platform-redeem-code 'ZMW3huAIzBPWBYKA' --body '{"code": "EFTdlKNh6GTzKjsC", "language": "pXL_rokB", "region": "SkFrvGciNHb7OY5Y"}' --login_with_auth "Bearer foo"
platform-pre-check-fulfill-item 'IpOLJW52uz3c8pz6' --body '{"itemId": "3M0g4xXT5Ts4e0uR", "itemSku": "47OzUGHeBKtpvyRN", "quantity": 13}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'SiOyReviDaxlPdhw' --body '{"metadata": {"mcH03yoMxzRR6xd9": {}, "rTh3ureaIbxM3Wev": {}, "9pZQjWAN0tny16ZH": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "tuSJGQCrM7JEMRPk", "namespace": "dTcAzkIlndN5xeay"}, "item": {"itemId": "r3vUKMuIiz2MiAAK", "itemSku": "cvAXnxnH0QIhoJRY", "itemType": "807VmBT4wZXQZZrS"}, "quantity": 38, "type": "ITEM"}, {"currency": {"currencyCode": "8qCRbwwZc4ZS1NMk", "namespace": "rnHs1Iyhwqk140Mo"}, "item": {"itemId": "lIrnlkRVbcX435TD", "itemSku": "Ypkk2Gza6DrSycop", "itemType": "hHw3EoEEClTO9SDK"}, "quantity": 26, "type": "ITEM"}, {"currency": {"currencyCode": "MlnKW9jiNMu9QVrM", "namespace": "eD4bD8gISE34yIAZ"}, "item": {"itemId": "QeigiA3wBrmBYIlZ", "itemSku": "eheP72AB8EO3Yrly", "itemType": "rWowUpUDVLlTtuJJ"}, "quantity": 38, "type": "ITEM"}], "source": "REFERRAL_BONUS", "transactionId": "sG6izJZruOJvSRFL"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'DSdj8elbtHvDU91D' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'mHzwiqVPCJ5j18Ou' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history '3aY8nceFU5GKmcEK' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'p8AQwqgJs6O0Qj0c' --body '{"itemIdentityType": "ITEM_ID", "language": "oxL_788", "productId": "ewjRyfo4nWVZZbKF", "region": "sKOmgEhjH2wFzCpx", "transactionId": "xJLfAg5cFT0gHAkl", "type": "STADIA"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'mn0T5uzlmi2NY26x' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'rkPPdg3pXjmtpNfC' --body '{"currencyCode": "rIj9ntYo3dupUHNu", "currencyNamespace": "8abrVVOKxr9Pa315", "discountedPrice": 65, "ext": {"cr2WJQqS7Tq4YIyZ": {}, "AFQ6lZfa2jdNvpWf": {}, "32JS1av9VNpVLT0L": {}}, "itemId": "vqcfSdO1nAjY5FvA", "language": "Db3GUQgci632w6LU", "options": {"skipPriceValidation": true}, "platform": "Xbox", "price": 73, "quantity": 41, "region": "XSh0Z3SWISs1dYrJ", "returnUrl": "Kmx1BT6iLFQejNZJ", "sandbox": false, "sectionId": "F2hm0TqBQprHn3wh"}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'PKU5abnqw8fFa30p' 'Vbhr1BHh1arZAyuL' --login_with_auth "Bearer foo"
platform-get-user-order 'cZoEkPpqKhP2jWnR' 'Tglw0gdWoE4esuiD' --login_with_auth "Bearer foo"
platform-update-user-order-status 'rquccz4J6fFQezJ5' 'E3iYHIknvPcJkjRe' --body '{"status": "FULFILLED", "statusReason": "s9pK8HuUY1QQHQ0N"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'CEddJtx6GV01vD7l' 'NLxlpvqaB9P9Gauk' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'fCEIeSBLhTfzigzH' 'cRuJgYaj4I8Dzyh1' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'N0JEKNoMtHvjM7X1' 'fjzknv2HZMIL2P2b' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'h14LroFTnAuujPeP' '9N0vdVB5a2XkS3XQ' --body '{"additionalData": {"cardSummary": "fMuzZh4AhZRe2hgU"}, "authorisedTime": "1986-07-12T00:00:00Z", "chargebackReversedTime": "1982-12-31T00:00:00Z", "chargebackTime": "1980-07-17T00:00:00Z", "chargedTime": "1978-10-19T00:00:00Z", "createdTime": "1974-06-15T00:00:00Z", "currency": {"currencyCode": "xHrOon2OW4Zw5QwV", "currencySymbol": "KWNy2tnF2MifJR4h", "currencyType": "VIRTUAL", "decimals": 30, "namespace": "4gdJDujYnVnFK6gB"}, "customParameters": {"6ZxC6yYUVUJYnQ3j": {}, "OGmROIqxqQ0gcNeT": {}, "flyvUh3w5ZtfwmOC": {}}, "extOrderNo": "KpFSMF0tfGIZCTNi", "extTxId": "IRc9fEjkZhEpAJMC", "extUserId": "xMp2J0hDg2kMgkvh", "issuedAt": "1978-12-19T00:00:00Z", "metadata": {"6hOg8oukDVdweG0s": "FHxTHa2k60SzCqUg", "q1gLbcIMevTmC631": "p7q794bu49lINFTt", "ERAXT2h3hcQ2wV3Z": "bBTnNQnVUhA5WnzV"}, "namespace": "Zdj8tsyzC4QaLXp3", "nonceStr": "o4TDraEEaDNJbVd2", "paymentMethod": "0FVHevCjthJUb7jK", "paymentMethodFee": 42, "paymentOrderNo": "jacKtGqxMnoAXRlc", "paymentProvider": "STRIPE", "paymentProviderFee": 98, "paymentStationUrl": "0mYWKQYlqMmu2pvF", "price": 20, "refundedTime": "1980-06-01T00:00:00Z", "salesTax": 85, "sandbox": true, "sku": "bQaq1cT88H6RCW8g", "status": "REFUNDED", "statusReason": "tYvLh56AWXoMiowd", "subscriptionId": "WSs9DQ0VU1HED9CG", "subtotalPrice": 30, "targetNamespace": "ma833TDzk66ix88s", "targetUserId": "AUrXr7MXxCvyy7ca", "tax": 48, "totalPrice": 78, "totalTax": 53, "txEndTime": "1974-10-29T00:00:00Z", "type": "MQrODLNlxiEjQBCZ", "userId": "x9DJ4V97SJLlrwXm", "vat": 70}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt '4YHEYLjTSNDf3zaz' 'm6p5Y1tkG9WwU4Ty' --login_with_auth "Bearer foo"
platform-create-user-payment-order '6Ch5QYyFjuBquE7x' --body '{"currencyCode": "ssm4hxczskbSUbOZ", "currencyNamespace": "9WNl3apJmNAbl1g5", "customParameters": {"ZmTTGYRbP4QVey9p": {}, "Ez1TV5cUtPBsw01i": {}, "5Mf7WvbNSeeDNfUE": {}}, "description": "SLlwHv3JgteOLyKp", "extOrderNo": "8a1VqxXnRhDd9TGk", "extUserId": "O6aIYqftw1SrM2nh", "itemType": "OPTIONBOX", "language": "ADO_vzSS-455", "metadata": {"etBW3pvAJJieHhve": "Gg97PY0txzvYwv7a", "tn9EQv2Oj8TFNeGt": "JGjKbMgCeuAYuzrm", "bWofEaKStqdKu4RO": "nONpJ849chqeiUGQ"}, "notifyUrl": "MwNwDlYSli3p8YaA", "omitNotification": false, "platform": "gM8o7lxXq7TkdM7F", "price": 98, "recurringPaymentOrderNo": "kCl1ZKuPxjDUGRGc", "region": "CEPjbUy7F82Adu9B", "returnUrl": "YRHrVTehrqgvEtEs", "sandbox": false, "sku": "8jTyRd3LrR1x6U1v", "subscriptionId": "6zSLjm9zmzUW0vPj", "title": "90jmLTt5YQGawcom"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'PoiYoQ1f1AYq306P' 'ysv4VPaZWolXypwu' --body '{"description": "cUqqqff2iWi4yP3u"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'qNcig6YcDA8Z3g62' --body '{"code": "oGYwkrjLI4EHJEEW", "orderNo": "gki9fbdvUMDZeO4U"}' --login_with_auth "Bearer foo"
platform-do-revocation '55wdCpVpnENiTc9N' --body '{"meta": {"ESV22eRBElD4K2Cy": {}, "1tJcPAEkCeV29QsQ": {}, "k100eu5UcxuXXpt0": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Oculus", "currencyCode": "SPX04uEIdAwgDobo", "namespace": "pbdJeVCiKs2vLyH9"}, "entitlement": {"entitlementId": "kcSBdk7MwQzn28Le"}, "item": {"itemIdentity": "5neohqhCzroAzWQD", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 9, "type": "ITEM"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "G2N09VIbbsz24fQK", "namespace": "DZX6plErw0Gb0ceC"}, "entitlement": {"entitlementId": "bphW4YMhJ0S50bez"}, "item": {"itemIdentity": "9ZLHW882riiPfRQ3", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 56, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "SZBvkehRn83B0nrW", "namespace": "1qx3NJTugVWXz8dv"}, "entitlement": {"entitlementId": "7BiEUqnzxs2deMF8"}, "item": {"itemIdentity": "UAJIHEZv5zyUUyNJ", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 48, "type": "ENTITLEMENT"}], "source": "OTHER", "transactionId": "qkhlqMnE9Wj90EQz"}' --login_with_auth "Bearer foo"
platform-register-xbl-sessions 'OidrWnLrXqImgDf3' --body '{"gameSessionId": "GaJsdCZND0wgYOil", "payload": {"X1e1825iasunESjc": {}, "gr2drXG5NkKCySLA": {}, "8cKCs0dFYRSa2OUL": {}}, "scid": "Z0iOZJiOAh1SpLhM", "sessionTemplateName": "F2Pav11FuU8iXCRz"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions '8KgqgwijYxpGhsFA' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'rq6lolbj7QKvtVRC' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'PMjr5M3vw1GqUjjF' --body '{"grantDays": 31, "itemId": "JYwclb4gd4QgQut2", "language": "hiPuDdOPHcN9drwq", "reason": "ytieXpIZfr5XDq9d", "region": "GLHjtgE2bTXJxCCF", "source": "qPNDqWrpkWnnova1"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id '5WVuE5cYVP9tQSa2' '7BnPyq3I1BLtGEZD' --login_with_auth "Bearer foo"
platform-get-user-subscription 'RNkk4DJUofJXK8RG' 'S0zCYRVmbfzwUmsy' --login_with_auth "Bearer foo"
platform-delete-user-subscription '0stUmKdXiiTObNdq' 'kWa13g3pgHx6uPf6' --login_with_auth "Bearer foo"
platform-cancel-subscription 'jQZcYerH933X7iXE' 'EM2KOusNEHcI95GG' --body '{"immediate": false, "reason": "T3MLwJZquMQSPp5X"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'D4S1ilfgff7Et4uY' '8nlBwGNHgfgwZwVM' --body '{"grantDays": 44, "reason": "hD3NExUFipJsUiDa"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'wAjgHFQk0VzWRNFN' 'iUn2yXMSCcHADYpS' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '861c0CJ7LzpFvOSF' '6xKA6yrnvXY5dDwn' --body '{"additionalData": {"cardSummary": "eac75C6S2eHsH4Y8"}, "authorisedTime": "1992-02-25T00:00:00Z", "chargebackReversedTime": "1982-11-03T00:00:00Z", "chargebackTime": "1977-01-24T00:00:00Z", "chargedTime": "1992-01-08T00:00:00Z", "createdTime": "1977-04-30T00:00:00Z", "currency": {"currencyCode": "PR0Y1sffUaZ64dFp", "currencySymbol": "iv8o9Gw4QtKgyIey", "currencyType": "REAL", "decimals": 78, "namespace": "UxoMrj2J4JGQZAty"}, "customParameters": {"jTxnlmSyjEaFH2DR": {}, "N6HIEqIFEcS0ynIM": {}, "OYWpUYUQMooiKT57": {}}, "extOrderNo": "rmbjEnimeR7EFBz4", "extTxId": "3E9FkOPVu2fDtOjW", "extUserId": "1iSYQbcebBd5wb5H", "issuedAt": "1999-09-19T00:00:00Z", "metadata": {"qppoCiHMD4iBK2O7": "qYtOHV5hnpjc5CNL", "nnEvo25aEtdjls5o": "adseJg7y4Q9CU3fj", "SRaXD4HDmdvhMXxi": "KR29LKIhNU43K8bi"}, "namespace": "hdw3prp0UHlWUxkB", "nonceStr": "efhxRtrqbv56oqwn", "paymentMethod": "CLVc2qHZuuedbBOd", "paymentMethodFee": 60, "paymentOrderNo": "wNnT6A9zosmDnXon", "paymentProvider": "ADYEN", "paymentProviderFee": 78, "paymentStationUrl": "y7NZQ4PkAPXBCfkE", "price": 1, "refundedTime": "1987-01-12T00:00:00Z", "salesTax": 78, "sandbox": false, "sku": "y94eP7yh0zsKhR60", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "XH6LYXXMndxBPKmH", "subscriptionId": "VB7cNzHhvxc4xAPZ", "subtotalPrice": 48, "targetNamespace": "6WNnQOhusPn4466u", "targetUserId": "8agb5HPsBU0Eo6QJ", "tax": 33, "totalPrice": 43, "totalTax": 56, "txEndTime": "1983-12-24T00:00:00Z", "type": "dOB0MThZW6LwcAg5", "userId": "7BYBVCbi0ifdPyKf", "vat": 47}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'SwHekWIz4rXlH5jw' '99HxCjXWcaXBcfXX' --body '{"count": 10, "orderNo": "6DxpwBm2N8PdQ5mQ"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'aGXEbnmWR0H3EkrH' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'qaLNdfKszYZzOg11' '3h6fIaHSx5bClxUO' --body '{"allowOverdraft": true, "amount": 89, "balanceOrigin": "Nintendo", "balanceSource": "ORDER_REVOCATION", "metadata": {"Mwv5pmiIVnhlLoMe": {}, "msp7o3F2LQw7Y2Vd": {}, "SxgXez7VvS0C9JLV": {}}, "reason": "QQPa7PPx4Zi6WaC8"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'wk7HMbJhNwZgf5nl' 'MDORYuXnPNJgayPF' --login_with_auth "Bearer foo"
platform-check-balance '{"amount": 5, "debitBalanceSource": "EXPIRATION", "metadata": {"yUnKXA3mcyMmX6WF": {}, "8jtNAVOYqSH533Yl": {}, "J93CCGBXv4fP4VPz": {}}, "reason": "hcH4UJrrCKvrOAi7", "walletPlatform": "IOS"}' 'f73jAevOnES6YJLl' 'b2AfUEEBbqMMKvkO' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'sR1fHUyirMVMOFES' '2J2OzNlJE3uqZz57' --body '{"amount": 64, "expireAt": "1974-07-07T00:00:00Z", "metadata": {"31cA0PwZxTIZVSGQ": {}, "yTzhs9Asy4d629N4": {}, "YnolVWA2dWxBs056": {}}, "origin": "IOS", "reason": "F831vlCiZAZHCWMX", "source": "IAP_CHARGEBACK_REVERSED"}' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform '{"amount": 91, "debitBalanceSource": "TRADE", "metadata": {"7SDQUDavOlKT5EIH": {}, "NhJQq94Re5IM1akN": {}, "Kz9IltQUku3n32at": {}}, "reason": "B0QPQPEp5UtwUWGt", "walletPlatform": "Playstation"}' 'tooHP5kAww01zalT' 'ddhAQ1pwqnybvUIf' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'uulmeegRwPPbn7lt' 'td21cS6IVE4fzwG3' --body '{"amount": 57, "metadata": {"ZQt753XQB93rOW0g": {}, "uPoQbYzc1RDVhs2l": {}, "hdzxxgibuqUuyW3c": {}}, "walletPlatform": "Playstation"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'z9YyduMomEHcU15S' --body '{"displayOrder": 39, "localizations": {"axw33rNbE4bbDU4F": {"description": "MTbQaANJOODGerDC", "localExt": {"Wcl3VSJENQopeHD6": {}, "iKBGm5Cj7RqnJUmf": {}, "DmofxvN8pRGoUtmb": {}}, "longDescription": "WZbEjPyq35BWDoc3", "title": "qNcQFFyHv141NPqj"}, "RUMKSQjFdjqTaZFs": {"description": "WzbqwTZQIN5jC6a8", "localExt": {"mEVCXHmFnrSL0PJc": {}, "ZQaCeNLYxMID9pqZ": {}, "5rryiMMt6fQtLhzy": {}}, "longDescription": "laquioT3QBt29AiR", "title": "ASsuFM4ahGw7XcF1"}, "Qwzz606UGXPhoNZl": {"description": "XMef7AvS3TfKx6By", "localExt": {"TygbtOtcQS4Cmgw1": {}, "wRUnIVYxY6OhdkrY": {}, "iCinoVOzo4Plv1Il": {}}, "longDescription": "TpEhjTFYdzsUNvQA", "title": "n2LuMjLqwmVz3zKs"}}, "name": "fjz1mFkyxoUzfMFo"}' --login_with_auth "Bearer foo"
platform-get-view 'XCOguSq2A4R3wDdS' --login_with_auth "Bearer foo"
platform-update-view 'kNfHJtA3QiX9Zvty' 'dbaVb0scd97A0GP6' --body '{"displayOrder": 7, "localizations": {"TJo0L5sHil4Q0mqa": {"description": "8GatrjbJ5YT7uvqa", "localExt": {"rTvrG1DXZAWlvz3c": {}, "3XALMresGFfsH4aX": {}, "CDhshvEF8rHd250n": {}}, "longDescription": "yihcUVGHQczI5ZoT", "title": "RUkjGoRkPs2SO9Xr"}, "gXNIaU11cBXLwTfo": {"description": "pqeZtHJnRgaGfLMF", "localExt": {"bvyI5PZGzVLcmZKK": {}, "KYARape2tsNczam4": {}, "Cdd1QYvww4XDoklt": {}}, "longDescription": "gq2vXtUnY6UhDJ4p", "title": "e0s0Cuhl3dU9b4se"}, "YCyiB4tDCWx3cEX8": {"description": "wTi1v2abpCWytPEi", "localExt": {"9Ze0hL9rPkV5GkSr": {}, "cl2O47XVzU7qlNVk": {}, "7qnmBS3XKDhp1OkM": {}}, "longDescription": "cErmeH0lX1hj0LaX", "title": "gQ94flh775AQfzNj"}}, "name": "Q7IuMSY2epRDJjDy"}' --login_with_auth "Bearer foo"
platform-delete-view 'MDKQhuTjtQZyIiAm' 'CL8bNTTfqLCv9DYB' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 85, "expireAt": "1991-12-05T00:00:00Z", "metadata": {"nTbKdwNhiIP7dpJ8": {}, "B8VwFQnVco2oCn1K": {}, "vJmbjapW9UlEqtzD": {}}, "origin": "Epic", "reason": "KFEtwESJCe2ksG3n", "source": "SELL_BACK"}, "currencyCode": "bPsksceGUEX8ERZc", "userIds": ["jtuP9pUUv7qefNMF", "pHCvCYTgX9JQwErz", "KSYLo6y7yJMowQ6L"]}, {"creditRequest": {"amount": 38, "expireAt": "1990-09-11T00:00:00Z", "metadata": {"AIqak1zi0JSa5cRn": {}, "31D8ubfdXi7BycDP": {}, "ckeGJUgU8bD5mGFF": {}}, "origin": "Nintendo", "reason": "SDME8X2MxILI42BJ", "source": "REFERRAL_BONUS"}, "currencyCode": "GlGJvHf558h1ltyh", "userIds": ["iSGhfqXhxBJ7zLXi", "e3z2rtjWpJAlKHF0", "oAGkWgSDdDQvpRfG"]}, {"creditRequest": {"amount": 9, "expireAt": "1998-01-08T00:00:00Z", "metadata": {"pdDrXQ47WSGyDCKF": {}, "0LLhO3lGZ7eGOPj2": {}, "XoFug8BUQUmPHnPu": {}}, "origin": "Nintendo", "reason": "pNNowEuVVZM28w4m", "source": "GIFT"}, "currencyCode": "FeKnQP2j2WsQImTw", "userIds": ["YkiuxzLrbJ0BkGzC", "6kx0adnimPyyzezs", "NgesQlZZHIZH0iks"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "HdFftHHR6xbcVVon", "request": {"allowOverdraft": true, "amount": 92, "balanceOrigin": "Playstation", "balanceSource": "PAYMENT", "metadata": {"27DWfGRVhbZTvCPr": {}, "rZCTU5WUJizF69PS": {}, "squWUafwbFPX1563": {}}, "reason": "3pFgA7i9tqvfHmFv"}, "userIds": ["LXR2n9JQvq7NKWIH", "wQkJuy9oLFcHHcra", "UZiUW5Y0CYw5OXSG"]}, {"currencyCode": "Ysii3fCh7sieJjZP", "request": {"allowOverdraft": true, "amount": 50, "balanceOrigin": "IOS", "balanceSource": "DLC_REVOCATION", "metadata": {"iWumllU31uXPwYxe": {}, "dGHCIkmt4bfJOhNa": {}, "IT0pv7XeqO8gY3c4": {}}, "reason": "SryWB4yRaDxvxwaL"}, "userIds": ["ko7U3gH239LhRx2L", "M8HkVOW8PnLkgqkq", "YZWPZTgKagTzdcYc"]}, {"currencyCode": "aa2RdtVb6VgA5yFI", "request": {"allowOverdraft": false, "amount": 39, "balanceOrigin": "Steam", "balanceSource": "IAP_REVOCATION", "metadata": {"UyeaFi8OE7BCK4Fe": {}, "VGrl5NpUG9zblWEi": {}, "HaUjyTHb0sSlstb3": {}}, "reason": "slUe94NxhXsVcqTY"}, "userIds": ["i1TMBMzaOrxuKvtU", "qIl7U12hO5vpk9DO", "VtqbDWnJ2i9TRmJO"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'SgbsdGVPLD9A5Nmu' 'ZDUV3yHurgOfba1X' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["eoHYTNoRol84Ulkx", "tP5Vok9sNK1ORg3t", "ChsS3fFpaS1uq1mH"], "apiKey": "3oYfPK2QiAUhIfi1", "authoriseAsCapture": true, "blockedPaymentMethods": ["YrkWHNxiaNyqBfgw", "58Hx0XYL0fJOPYpn", "PqGlPnhBDOWqDU8N"], "clientKey": "3DjVUt0n0jfyDbtI", "dropInSettings": "XICLkK8ZvbnTg3zn", "liveEndpointUrlPrefix": "lg8nmzQx1RsYhcRl", "merchantAccount": "v16Wwe8YK3lZFslE", "notificationHmacKey": "CI9QzuQcsjFehD6u", "notificationPassword": "TDYnqyNgN7GoeMse", "notificationUsername": "zFZsTBHkgcJ0DcEt", "returnUrl": "23pci6xEljer6aGJ", "settings": "x5OFp3jKEx4aSGdw"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "TPX4ig3NVFFkP7O3", "privateKey": "F4vsohRWDyGYIVFD", "publicKey": "bTvRYfpJ4wM9WZfO", "returnUrl": "OxAzmsbhi5QJuc2S"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "NBaOlXfgsgBd7MYL", "secretKey": "LoPZrkjRm5Ki0orh"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "XrISEaPZHLQkTHvn", "clientSecret": "dQsCKAO2JRz3CGwt", "returnUrl": "ujkzxidLcAQWGVRg", "webHookId": "6DVso5TJCSugdo4X"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["Tm8t1YTWqItjNWXm", "9sraeMA78YSRS2fP", "y5fpbbbMIu9lu18j"], "publishableKey": "IMBUM77XmemN8LO0", "secretKey": "3mnFSq9jJTVFoFjx", "webhookSecret": "Zjh5qUR1Pq4a4uaM"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "fd0SQAfYIyzHL8jx", "key": "akuVu5r5B08VZxI4", "mchid": "TU3apnZXoJ4gI4EQ", "returnUrl": "KO8xC4D0FsUo3IB2"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "kX5REQZsHyXzoIXN", "flowCompletionUrl": "f0KbL9HyJttdgfLG", "merchantId": 83, "projectId": 76, "projectSecretKey": "3ummpllnV6B62P1K"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'azg73c6UpmA4ehxN' --login_with_auth "Bearer foo"
platform-update-adyen-config 'IIlcrZzgameT2mLk' --body '{"allowedPaymentMethods": ["kAMjHyI0e2Axj0nZ", "HjmoKHJngwMe1AnQ", "Vj6QQjZtkNJCnDSr"], "apiKey": "sSey2BqOxgwCymCD", "authoriseAsCapture": true, "blockedPaymentMethods": ["suff3b7G5FDX4mu0", "qPHb9Ll2EFEb8Gns", "thmQ2Y6ZGOiqrg3l"], "clientKey": "pqN5bOfnqJ5bzDRz", "dropInSettings": "bhMxfEDE4TrtIHyy", "liveEndpointUrlPrefix": "Mq79EdB9MxaF8QHG", "merchantAccount": "M2IuQYBO8m0HgTth", "notificationHmacKey": "479W8rXqwGVIRWgT", "notificationPassword": "NHCka3Wb5kH1BrLW", "notificationUsername": "UetP7nmESQDV3BD1", "returnUrl": "nnEzoUlUWqP4ElzL", "settings": "44KEm3uHBMCP5ckj"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'phURs4ksgsKJ2R6J' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'acwwu8W1zvrKMRPv' --body '{"appId": "wA9k6yJz03NETdyw", "privateKey": "PqYerrpOm4M2pM4f", "publicKey": "IfcHBWZM50aHbPXR", "returnUrl": "ns3qwYL6LwGlZGF7"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'XQPLAcIL7FvAMWqh' --login_with_auth "Bearer foo"
platform-update-checkout-config 'yyNZH1CducB5y5iM' --body '{"publicKey": "deBG7REG4meKEabf", "secretKey": "VXBJPIZqZC5d6JuF"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'dcfiNf0DOHKwxDF5' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'GJhCjVHiCn2hTefT' --body '{"clientID": "8gPFJ4WndMpQhcLK", "clientSecret": "0WTZbtmQkwC8azx3", "returnUrl": "IRWme3C6p2r4D3NQ", "webHookId": "djrjkX3AMgK3JgZu"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'fzssA284mG7uAojL' --login_with_auth "Bearer foo"
platform-update-stripe-config 'YBsx8oqMzbE0ljQa' --body '{"allowedPaymentMethodTypes": ["Btb47V691j0FZp2v", "jOXptxzx6kkaZYpl", "52sQR9Znp5d1eSwr"], "publishableKey": "G2GBBEWrDbQ1ZzhD", "secretKey": "uLHq9LTBstguOdN0", "webhookSecret": "O7l3GbKPHdDTQDEE"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'E2mTsn1NwJ71szsN' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'mnqZSWdEyOVYrTdD' --body '{"appId": "q7IqbTVv8BLsqQW8", "key": "HSrEm5Y7jI232Sjk", "mchid": "tijiNzTUe8KdizXm", "returnUrl": "rmK0sCUsqxKocHom"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'tjoU1kUqRedwIu1T' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'SRr6r8mzfMedpcKh' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'vHPlvYanGqEkn9OE' --body '{"apiKey": "VwLWGT4MXhmzvRQb", "flowCompletionUrl": "7c0vmjWq9fQqzulL", "merchantId": 66, "projectId": 30, "projectSecretKey": "fQMqSLQDlRFYMVfi"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'AMa6Pco7Mfvikslp' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'yL9BYLVVznF6hMYf' --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "ADYEN", "namespace": "8VQhYSFeBOp0ilGQ", "region": "FwHUtZugblT3aIDK", "sandboxTaxJarApiToken": "n9qJXncm5igpAewb", "specials": ["PAYPAL", "WXPAY", "PAYPAL"], "taxJarApiToken": "mMfyshYk3b5cAFVo", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'r1b8Yp2QnuhQuIdv' --body '{"aggregate": "ADYEN", "namespace": "nRPgYlJElgJ8kx1W", "region": "EeDbql13FtQMu41r", "sandboxTaxJarApiToken": "nOzbsFBqg6dziWvd", "specials": ["PAYPAL", "ADYEN", "WALLET"], "taxJarApiToken": "RxY8ZhHeb0CaPFDj", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'SotKnpJWALpToj9r' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "gr5RffM5JXvPdzEp", "taxJarApiToken": "Dln04F8BQjzobhDa", "taxJarEnabled": false, "taxJarProductCodesMapping": {"xKOrfVfBRIfkStOq": "dXqhDMQ6tBLljC7g", "cT3M1DArk4L80aXF": "Y7SQkym9KvKMHK5f", "bqioeoRIplY0DIzR": "CNAO6ZpqXJmPJso6"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'M11LLZWKgWxn9YL1' '6HQdtAneXGgxNg33' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'ZIUrIkfmdXVvaPQz' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'zKdFg7N7piT8VcrX' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'LZnuMNpKEIs3GC9V' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'STEAM' --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'K7tkJWFpHt7MdKu9' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'Xwn5GHJDGatrYOMO' --login_with_auth "Bearer foo"
platform-public-get-estimated-price '91CYEjX867n9PT9f' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'R7mMuBXPDKCriRKz' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["TZ7TXAVRnUVbxEJc", "KHE764EwhQfxFKIO", "GT1WKSmLoA0ILaES"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'C1GJXsoBwqh0TQXa' '2j7v3zQJoQLTAlW7' --login_with_auth "Bearer foo"
platform-public-get-app '5icIKUpXazsFrmaG' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'Noi3RPTgWotLNz0u' --login_with_auth "Bearer foo"
platform-public-get-item '8ySxA0yrjz4q7e0E' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "JnADXC2y0DY1E1SM", "paymentProvider": "WALLET", "returnUrl": "9oA4vK56dsYI5SKV", "ui": "5pDANyJ184miBhdV", "zipCode": "Jt81fmLSyGuu5rbJ"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'VIwRMtwApGbXnR3y' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'C6f2MHGGedk0KzXR' --login_with_auth "Bearer foo"
platform-pay 'clOXdPYZQxBnttu4' --body '{"token": "yW5etl4Xk8Hd1lRt"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'oPMvsu9oswEPTvzw' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'WALLET' '4gBs9UufgsVbG6TU' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'e3jbuQ7HMPO4ozK7' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url '05ykRqSPYZgPm4JL' 'sXVtBOEetHsxAJ8N' 'WXPAY' 'Z9JCqBIkUID0EE9I' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'nZNLwwAhW2b5OHKt' 'WALLET' --login_with_auth "Bearer foo"
platform-get-reward-by-code '0cPZf5OvolfI0mqZ' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'ctohLheRaQkfMLFW' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id '9B7jHZro4hhwnANA' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'Gp8zGqNGrcQyoA1T' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'WPcy83iXfYXNdMkd' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "g9TMwxNcQ6CkVi8f", "language": "SwX_HY", "region": "y9CZ94CAUVW8FoEf"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet '8tjCjWc22qqDfNz5' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc '9jHwSDQHadmAo0lz' --body '{"epicGamesJwtToken": "hPm7RmaOr6TLwVyE"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc '42ApAb7CKt79wAop' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'ZL9Cw6K9h55mwUvh' --body '{"serviceLabel": 6}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'w1qnCAvdnAcokJ0r' --body '{"serviceLabels": [33, 3, 52]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'X2KJcYHgiFDxclBX' --body '{"appId": "ap6j73doCWxhubMX", "steamId": "bxNvT6wAffv4uzKA"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'wiI4wTxNIefCmtrx' --body '{"xstsToken": "Wu293551nQBNKcqC"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'kUXRj8gQHEe4CO37' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id '0OsbzRKKPd6mjzLx' 'llUrFYn7cSuO7NxK' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'HUHg0c4X7fHdITmN' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'gZWdxfIdW8fNAM5Y' 'dHivK2Q0WwolQy03' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku '7hJMOEv5W0v25yAO' 'bZIbrA8XAKKWMDeb' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'ehSjpt0wrfWPXaI1' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'Jb75o2MFOa6xgPt6' '9QROGDeJCyHvUsnL' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'vXCSgQHvs25eiQO3' 'oWdgXdm1IxL1Otle' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'UBqBO0Ze049k9W6Z' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'LVJzRpUsITfVruDu' 'kun42zPZvOd4yZyM' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'KyED3qDO5HXp5oVk' 'hESbHQ7hvTlzf7Xw' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'QtVIYU87NgjDMcJx' 'fMfYFlt3JvDgMiyB' --body '{"options": ["GygWFTAY3Th5mOwP", "CPKVPlOGfFBlu2ZP", "0IkiYXGk6BoBmSLi"], "requestId": "0R7zDFMoNTQmlS8l", "useCount": 79}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement 'tFbjqurHix0QYycD' 'H5we2Mx0sYCnYPT4' --body '{"requestId": "i4mxc14iRfzJwKuc", "useCount": 16}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'EpiQEzz5N5osRYO7' --body '{"code": "wbYh7q02W8tkTURU", "language": "NKRo_DXLI-008", "region": "cNorRls7EC3nDnhF"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'vDlFd7iyZpvWVJFK' --body '{"excludeOldTransactions": false, "language": "UXW_ahld", "productId": "56hIg0g8HIxpzm9A", "receiptData": "cFhH4ZlYY3rEuHMW", "region": "wQNmCQmGCF963Cbs", "transactionId": "OawlRBQJH6fNekhk"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory '077gxaj55huTA6Av' --body '{"epicGamesJwtToken": "mW0567BFqbrPIuxK"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'mBXLi6GpnqAeMvg3' --body '{"autoAck": true, "language": "pgq-nHou-027", "orderId": "Kdva2UREoBSFtCLy", "packageName": "2CqgCG7JwJCDqkzO", "productId": "dFwLJpIPxzLE1V9U", "purchaseTime": 81, "purchaseToken": "2jE1Wad232YV7A2z", "region": "HFGbN8AQaCaw9UF7"}' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'cdSDd99DQZ7vnTx8' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'HDXTJWiyw17ogzmb' --body '{"currencyCode": "j4SLYDrZJvDLGvn6", "price": 0.26684064276653174, "productId": "troZcp16HKXX1ft5", "serviceLabel": 27}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels '1TGZJmgWNHWnvOBR' --body '{"currencyCode": "Ct4onqRo2PnMSRar", "price": 0.5884444849281922, "productId": "g4coy3AFpULIn21N", "serviceLabels": [82, 11, 61]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'FNgDWNC6yh7kgTHl' --body '{"appId": "rxKbsV4XtrI7SFBE", "currencyCode": "gkwHifMHYI581HbF", "language": "Guo_YX", "price": 0.5195132747482332, "productId": "RJM92eX42WW2WKf5", "region": "urEOpASBicX3ZwzZ", "steamId": "7aVhrkmhSOEozGOv"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 '8D0iVxzrec5kNwJA' --body '{"gameId": "xm0Rdm9l6nIhG5Si", "language": "pe-TuMo", "region": "5KeVNHU9GcOivIfc"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'CJt4U8VSgXoi9Fw2' --body '{"currencyCode": "5b9qXzlIK2G6AUjB", "price": 0.4605870813738677, "productId": "df0Rp5e5IvFuN1oU", "xstsToken": "sCnBmGMx5F6EhM3d"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'KvIG9MR0hTINvq1V' --login_with_auth "Bearer foo"
platform-public-create-user-order 'R9SJUfQEX996Mh1s' --body '{"currencyCode": "Q3Dw3uyjgQNAs918", "discountedPrice": 10, "ext": {"Qm3W1De2McGd10we": {}, "fF0CJlH55RLEgeAs": {}, "SpQdcmGHZuRVQ8tz": {}}, "itemId": "wqMayP8A3HGNI3Bf", "language": "Lf", "price": 64, "quantity": 80, "region": "z6eJKuOW61akRFiz", "returnUrl": "qxCmudSXivAL3n47", "sectionId": "8mhb2I2yBJeCJghT"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'rk68FWFzuLBdlrKj' 'UbgZQfw6Zys3mN8f' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'IcC9CkharfqaoMsG' 'yv1RuSNdycDssUeH' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'iVDXzSJ8kbFAyidb' 'nXdMSwmkBkKC1h6h' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt '45u0wuh9pY0011jS' 'mHFTtfM2mGUUpq3i' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'x7Am7W1fwJnV94Br' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'MSP31wAkVH75UcmN' 'card' 'qcIo9lpz9oM52vHP' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'lwVV3jlPKDEYahnl' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'LJaLCvjRKKX1brmk' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'JDfdngbQD3pO8U3W' --body '{"currencyCode": "94Z8IW2MAL9gYHEV", "itemId": "3wnTZTvYYf4ZFuV6", "language": "qubj", "region": "ia7oFd1fEmDuyAsQ", "returnUrl": "GzwJR5poI718RQnj", "source": "4imu6XFfRcWDXhq1"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'YmGeygr2S4Yw8NmP' 'aBeryzX2hOPVVFqV' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'qxjq1iG3TySOh8SI' '75oXbyq8FBbur80Q' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'wnlgAVfqz6gQJh8s' 'n0bVWRkvmAemh8li' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'oBR7xTXcEIFod3lC' 'zvjHzDHOrSJ1vbB7' --body '{"immediate": false, "reason": "Hd96dGLgkfrZveFM"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'WAFT7l0l1jaOAMCz' 'bsoIgmKwwMDQPjUI' --login_with_auth "Bearer foo"
platform-public-list-views 'osq1l6xo0D4JRbNq' --login_with_auth "Bearer foo"
platform-public-get-wallet 'O6IuP2PY5hhX6uNa' 'h9JoHPj7jFWxSv1l' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'YylYAiZ8c7Zd7EUo' 'ezOLw8C1c5bBB3XZ' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 '7ColKwlsNvtFuunQ' --body '{"itemIds": ["svdXGlD40xxIyVwY", "jn6dlC9Kfh9gHulo", "yce0cLJu4ljPWlCW"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 'TuGO8MnfOQu3wdT4' --body '{"metadata": {"Aodp95o1RkX7iW7V": {}, "pCngWAv5DAG8dPdk": {}, "KgQqjyzUZR2rFIAu": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "tLBhvKJq9tWz9yui", "namespace": "8a6jOflFJlZEhz1Q"}, "item": {"itemId": "Deh05hj92bwVVxJ6", "itemSku": "2Q5AOAOyL65cPaOZ", "itemType": "A8BG8KcVWOX9n3Ys"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "JexnFA9Umz3KPICy", "namespace": "a5Fk5TPaEbX29cV8"}, "item": {"itemId": "v7MXctihtxMnIr4b", "itemSku": "7jyfL3zMkklGCPIS", "itemType": "lsnVA6z0uSfNNpJU"}, "quantity": 40, "type": "ITEM"}, {"currency": {"currencyCode": "jRLVOXBMa0JiIe1A", "namespace": "Y0tUA7EKASk3USNL"}, "item": {"itemId": "hOBlxRBLgohp8ByT", "itemSku": "i2F6AyUX8w77riPl", "itemType": "PgJcLbeQf9MICxX7"}, "quantity": 48, "type": "CURRENCY"}], "source": "REDEEM_CODE", "transactionId": "BCHzJ2v9K8c1zOlZ"}' --login_with_auth "Bearer foo"
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
echo "1..432"

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
    'g30pagfP0FfOMBOp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'eQT4zYIbU4i9mLyX' \
    --body '{"grantDays": "46Alt08rrnG8y2Sc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'XkwjpAp82pGcxvXa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'G9LzHpMS53jllopw' \
    --body '{"grantDays": "irRo3A8WxnR0YaMs"}' \
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
    --body '{"clazz": "F3f5KLtpTSsPMGDZ", "dryRun": true, "fulfillmentUrl": "OwEP5Bhh0NStWIgg", "itemType": "COINS", "purchaseConditionUrl": "O1VdtMSews1TrU4F"}' \
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
    'eJM2fWXGk7JObSHk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'sRkabpmvRsc7ZYvX' \
    --body '{"clazz": "CT6m6mRZAlLBczJV", "dryRun": false, "fulfillmentUrl": "hwVVMGkXNwMYwFyl", "purchaseConditionUrl": "jy5bYQdQ87hUHA0F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'JZwP8GslMpx3m7lE' \
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
    --body '{"description": "XTmnTbtjK9RsyoqT", "items": [{"extraSubscriptionDays": 1, "itemId": "KbMb5jal0ruZmBXl", "itemName": "GSp85q6fuGfo5wSD", "quantity": 69}, {"extraSubscriptionDays": 49, "itemId": "nyabk493I3pvHKDa", "itemName": "WhTN1qyxpUzWIZWJ", "quantity": 93}, {"extraSubscriptionDays": 68, "itemId": "DzWguhujw1EoR58u", "itemName": "CVldefonHJZAiX4a", "quantity": 2}], "maxRedeemCountPerCampaignPerUser": 51, "maxRedeemCountPerCode": 25, "maxRedeemCountPerCodePerUser": 92, "maxSaleCount": 33, "name": "e36SA5dxATLv5PkL", "redeemEnd": "1982-01-02T00:00:00Z", "redeemStart": "1980-08-13T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["RzChdjDGdlk2A2jH", "bAPNGInvbnf4ewKF", "FLoGggX4gQWyZocv"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'okl6MlWOl9feWO2b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'mOikTBJHTEm5PSey' \
    --body '{"description": "od5L6OooYoQn9iHE", "items": [{"extraSubscriptionDays": 34, "itemId": "j2BrdCAm3slCwaBq", "itemName": "HpE55sjxBGijw0dQ", "quantity": 40}, {"extraSubscriptionDays": 59, "itemId": "ZNonMrPkzUe9SglA", "itemName": "JGyZS0I8FevJiT98", "quantity": 69}, {"extraSubscriptionDays": 1, "itemId": "UBp56Q4WETxtGMs5", "itemName": "tPKPuK0K4PiMDTR7", "quantity": 78}], "maxRedeemCountPerCampaignPerUser": 24, "maxRedeemCountPerCode": 48, "maxRedeemCountPerCodePerUser": 71, "maxSaleCount": 18, "name": "nhHYzVVlHGFSwjby", "redeemEnd": "1971-05-24T00:00:00Z", "redeemStart": "1991-11-12T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["eASX83SLiIbAP2qy", "UnHnfrEdDfY4TTxu", "8goZgsX4RwfM4qnU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'dcQqZ9F1uivPob0Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetCampaignDynamic' test.out

#- 18 GetLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-get-loot-box-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetLootBoxPluginConfig' test.out

#- 19 UpdateLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-update-loot-box-plugin-config' \
    --body '{"appConfig": {"appName": "ZEuXQACDDQryNf9V"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "rqgEIsMwNbfti0Lo"}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateLootBoxPluginConfig' test.out

#- 20 DeleteLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-delete-loot-box-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteLootBoxPluginConfig' test.out

#- 21 UplodLootBoxPluginConfigCert
$PYTHON -m $MODULE 'platform-uplod-loot-box-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UplodLootBoxPluginConfigCert' test.out

#- 22 GetLootBoxGrpcInfo
$PYTHON -m $MODULE 'platform-get-loot-box-grpc-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetLootBoxGrpcInfo' test.out

#- 23 GetSectionPluginConfig
$PYTHON -m $MODULE 'platform-get-section-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetSectionPluginConfig' test.out

#- 24 UpdateSectionPluginConfig
$PYTHON -m $MODULE 'platform-update-section-plugin-config' \
    --body '{"appConfig": {"appName": "ePWXbAyGiXa9nUsH"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "dYmGzvx9bSqqyAPh"}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateSectionPluginConfig' test.out

#- 25 DeleteSectionPluginConfig
$PYTHON -m $MODULE 'platform-delete-section-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'DeleteSectionPluginConfig' test.out

#- 26 UploadSectionPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-section-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UploadSectionPluginConfigCert' test.out

#- 27 GetRootCategories
$PYTHON -m $MODULE 'platform-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
$PYTHON -m $MODULE 'platform-create-category' \
    'Nel4Bxb9KwFYqdhE' \
    --body '{"categoryPath": "Vq3hbsApeASfR0lj", "localizationDisplayNames": {"KxqZcLuhwNDvValv": "3bkoMXNzl1ywEPiu", "nixlEAHZzHs8x5oP": "SkZFIV2feXnTRlzA", "Jy9oFOHB2KEsIdto": "zVltBhoXE4wgcYT5"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
$PYTHON -m $MODULE 'platform-list-categories-basic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
$PYTHON -m $MODULE 'platform-get-category' \
    'CdjaJuUzFIeqaVr1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'CE1gu6cYuzC77J4i' \
    'rvZ9tktWLtDdlmVG' \
    --body '{"localizationDisplayNames": {"K6iolEw6IIpDc9X5": "ijmtDGvd9ESdY0eT", "kBWA44Qqsi5yOjvl": "5sRN2ENn1RLi5iMP", "nbg7o1zYpqUsliPy": "XZGYIW5ZDtWbdkzP"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'P47RcUIi2CoNj4EG' \
    '2emxKQk8cBrt5E8k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    '8rzDZ08j6ICP75cm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    '8YDChFi3zLvfQWC8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    '5MxWxvW0veFl3uU1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'aMD0mczWxc8f1s2Q' \
    --body '{"quantity": 85}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
$PYTHON -m $MODULE 'platform-download' \
    'ijqEuMfuYFUS079t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'OpZYM1XV0Op0damy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'cnTUOoMkOppZNOkq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'xc42HKv5wvtPJVsu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'zaBciSxwzuIpGBYH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'THoSVxgQCbpZx5yM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'GIQ1ZxVIefYlKBJy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'EnableCode' test.out

#- 44 GetServicePluginConfig
eval_tap 0 44 'GetServicePluginConfig # SKIP deprecated' test.out

#- 45 UpdateServicePluginConfig
eval_tap 0 45 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 46 DeleteServicePluginConfig
eval_tap 0 46 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 47 ListCurrencies
$PYTHON -m $MODULE 'platform-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'ListCurrencies' test.out

#- 48 CreateCurrency
$PYTHON -m $MODULE 'platform-create-currency' \
    --body '{"currencyCode": "QMqUEfDikX6yOlgZ", "currencySymbol": "rn0I6T0hvcAFTaSW", "currencyType": "VIRTUAL", "decimals": 21, "localizationDescriptions": {"VOGIY7hM6uhonkAe": "0FdTSSEluBxM47BT", "ww3nBTVmBFZ6TIs9": "bTi2m7eNsYEqKkeu", "LWDfeFeExlOFjRh8": "mLFTJLveQSDWnMQG"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'aYRxFWia7yJ2d87X' \
    --body '{"localizationDescriptions": {"jA0ajvb7JcGUFgp6": "LkyXpxJeFxhgTwyO", "51CUpcdxL0a9VDhr": "qWCTXOxQUpyFgZhN", "pOTE4toH57yr01N3": "3p1Gha8HwpagvERZ"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'I6CqhcknhecNv2Tw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    '6YKhVrYkMqXkQ7ql' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'aJjSYEseBYCFGoKp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencySummary' test.out

#- 53 GetDLCItemConfig
$PYTHON -m $MODULE 'platform-get-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetDLCItemConfig' test.out

#- 54 UpdateDLCItemConfig
$PYTHON -m $MODULE 'platform-update-dlc-item-config' \
    --body '{"data": [{"id": "Xx60GmEX9x2BYpyK", "rewards": [{"currency": {"currencyCode": "EBQ7TW7lZvDbwFJJ", "namespace": "hBRdq8BgAI81k4Gr"}, "item": {"itemId": "7jVVx5l3yrH9HR4r", "itemSku": "eG0HwUXxQTf5YpDU", "itemType": "GYsJBEkYUrLv4qUi"}, "quantity": 94, "type": "CURRENCY"}, {"currency": {"currencyCode": "cWiX44azSHcwicUV", "namespace": "q2XPljTZj5R0yZSV"}, "item": {"itemId": "Q8SSeJ4qy4PIKleu", "itemSku": "V271bwZ4niLSzQnv", "itemType": "0C00dtNGGzbGYSYo"}, "quantity": 10, "type": "ITEM"}, {"currency": {"currencyCode": "Z2DvnAxH3pS3jyCk", "namespace": "GKltBNE2UbhNtH3y"}, "item": {"itemId": "Yg4Qnn2uhdw7C9Bx", "itemSku": "1LQOTCbAPLC3iqrk", "itemType": "yJFOVaewFcv9h31Y"}, "quantity": 48, "type": "CURRENCY"}]}, {"id": "uZnoSesWpLUHjGaI", "rewards": [{"currency": {"currencyCode": "cZN28gH4Cd9xTdt2", "namespace": "K1CzpQWslNGnLYUY"}, "item": {"itemId": "R0yOvJhUjzcMtwIN", "itemSku": "UlrhIpnlam2EefVo", "itemType": "pbpPhsana0uXG7GU"}, "quantity": 93, "type": "CURRENCY"}, {"currency": {"currencyCode": "V1BwgkLDj4pjVkty", "namespace": "oNSsEHlzyd0Sarkh"}, "item": {"itemId": "ltUxgbN5eElQNESF", "itemSku": "LD8hCc9onSNjbQEq", "itemType": "FGwnDG8kz4kvEv6t"}, "quantity": 81, "type": "CURRENCY"}, {"currency": {"currencyCode": "O3L8x1H5OgzHypgs", "namespace": "SeKCvtPz7jagBG9a"}, "item": {"itemId": "1TZ87ltClc3RDXF5", "itemSku": "055tUlenimjIbm0r", "itemType": "iCaNp8dUBDinAB6H"}, "quantity": 33, "type": "CURRENCY"}]}, {"id": "WIi5Bvb1rcuEtWAF", "rewards": [{"currency": {"currencyCode": "763kci7lT62BOHas", "namespace": "o53W3U2Mu9ZGMWou"}, "item": {"itemId": "1U0RVCf3gMWDAodC", "itemSku": "KqfqzeexHA70NgJT", "itemType": "xjtzgO7W3taRvJ6l"}, "quantity": 75, "type": "CURRENCY"}, {"currency": {"currencyCode": "WJwHO65aOFDwpqy7", "namespace": "XOU3DwglyMGNll4O"}, "item": {"itemId": "8ELahcNJqRjepck1", "itemSku": "l0qxRyQ2pi7xuAuf", "itemType": "JakIPXOQznHZTj8o"}, "quantity": 11, "type": "CURRENCY"}, {"currency": {"currencyCode": "ObyNJKVSQsaCokoG", "namespace": "ynp6xcqNKJnAhrSt"}, "item": {"itemId": "96OaARAjHLGV3sNx", "itemSku": "S8uLBZiVRYIyQLcs", "itemType": "lTEqgVNG8Aqktgvj"}, "quantity": 46, "type": "CURRENCY"}]}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateDLCItemConfig' test.out

#- 55 DeleteDLCItemConfig
$PYTHON -m $MODULE 'platform-delete-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'DeleteDLCItemConfig' test.out

#- 56 GetPlatformDLCConfig
$PYTHON -m $MODULE 'platform-get-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetPlatformDLCConfig' test.out

#- 57 UpdatePlatformDLCConfig
$PYTHON -m $MODULE 'platform-update-platform-dlc-config' \
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"JAwIpEy2ZNpojZ24": "I2n25smsrmJFHGiY", "nyhbqxLuTZIxgiUa": "iyy0aWrshpmb1C9A", "l7eWrbNRE0xyYPUZ": "HyLGQ52IjGpRJCUJ"}}, {"platform": "OCULUS", "platformDlcIdMap": {"XQw2EOq6BFjmN4Oq": "KGLRpNWzKZtZnxgy", "wmr4CYNGm7Tk1mMy": "eNRsjQuDEgO3MEQN", "L6ijLRvQOgoaBooT": "awHLMxhx9nC3o6pX"}}, {"platform": "STEAM", "platformDlcIdMap": {"5MDJLCB6WbXWIRpg": "jooaBVemsbkaXZQ6", "nTj9rZpkSntuOeaP": "AyPeEGBepK1Ix4Sw", "jCYjCHniVSn1gYGa": "l5NrBtT0om9OlGzp"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'UpdatePlatformDLCConfig' test.out

#- 58 DeletePlatformDLCConfig
$PYTHON -m $MODULE 'platform-delete-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'DeletePlatformDLCConfig' test.out

#- 59 QueryEntitlements
$PYTHON -m $MODULE 'platform-query-entitlements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
$PYTHON -m $MODULE 'platform-query-entitlements-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 GrantEntitlements
$PYTHON -m $MODULE 'platform-grant-entitlements' \
    --body '{"entitlementGrantList": [{"endDate": "1987-04-14T00:00:00Z", "grantedCode": "25qu98RhktX6qwkX", "itemId": "bCLbh8t0zPkQWRUl", "itemNamespace": "gE0kxzFMq9ttbEHA", "language": "vwY-tOoT-519", "quantity": 31, "region": "Iay5VdUdYy9Y9OCS", "source": "OTHER", "startDate": "1987-04-13T00:00:00Z", "storeId": "8qAPiANv2Ar8yXV6"}, {"endDate": "1979-06-22T00:00:00Z", "grantedCode": "f6v5SgcJPZPUh2nH", "itemId": "QwpWi8HZ6C0VJ0fK", "itemNamespace": "2m6lQ5Ao8TITYiHS", "language": "xtmf_810", "quantity": 89, "region": "ZdNqkXPWZfT8ZfdK", "source": "PROMOTION", "startDate": "1979-05-14T00:00:00Z", "storeId": "6MaToxBiliy2vtRk"}, {"endDate": "1978-06-10T00:00:00Z", "grantedCode": "qL6KrVcNz83J57t6", "itemId": "OcYPQ5bk5IeuAi3z", "itemNamespace": "WFGorCbncoj5RvEt", "language": "Jyl-vouG", "quantity": 39, "region": "wgSvsTRmJsOm0wVF", "source": "REDEEM_CODE", "startDate": "1982-09-29T00:00:00Z", "storeId": "eFYDBPyd1jJBxbrb"}], "userIds": ["uFay9PXgEQS4871Q", "vaH9jwcO48pthyYp", "Smsspn5sNfifK65t"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["BJDHIIxTIGI5EssY", "llIqjJzuQ8GglVgx", "jOGQGlHm8VTN56tJ"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'KwD8O07L9GG1uenD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetEntitlement' test.out

#- 64 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'QueryFulfillmentHistories' test.out

#- 65 QueryIAPClawbackHistory
$PYTHON -m $MODULE 'platform-query-iap-clawback-history' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'QueryIAPClawbackHistory' test.out

#- 66 MockPlayStationStreamEvent
$PYTHON -m $MODULE 'platform-mock-play-station-stream-event' \
    --body '{"body": {"account": "ihceaLdgPZI0fKW8", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 77, "clientTransactionId": "T5bzcfzIpL2pWB4X"}, {"amountConsumed": 38, "clientTransactionId": "gxjGJx62mkfVlu4b"}, {"amountConsumed": 67, "clientTransactionId": "PcUALNziO9Bz2wx4"}], "entitlementId": "kDAm8XIleiujtv2N", "usageCount": 7}, {"clientTransaction": [{"amountConsumed": 88, "clientTransactionId": "67xHbAiD3Pr3mXZO"}, {"amountConsumed": 54, "clientTransactionId": "PnbSlfVRlAI8F2f3"}, {"amountConsumed": 24, "clientTransactionId": "Oo94gS5DHLB65fxQ"}], "entitlementId": "06GwTmobiBnfrnq9", "usageCount": 22}, {"clientTransaction": [{"amountConsumed": 29, "clientTransactionId": "OFBWhUTPiKR3qcbH"}, {"amountConsumed": 77, "clientTransactionId": "Tl4UiJSCbG4UmG3T"}, {"amountConsumed": 20, "clientTransactionId": "0VrgPuNtOv3jbhGB"}], "entitlementId": "uW8KcyPMfDWSEEpK", "usageCount": 28}], "purpose": "5jqeKssQpme6eyM4"}, "originalTitleName": "8tE7eJRsXNeveQXq", "paymentProductSKU": "nFRYmEIX40XOUoLO", "purchaseDate": "a7oDz00gxcoaH6u9", "sourceOrderItemId": "TVf4DvEzpoPRiClZ", "titleName": "6rlwX99AHMLHqguY"}, "eventDomain": "ykVWzNwPcvGyieBs", "eventSource": "RUduW5lxSlorWEGN", "eventType": "5bPGSOSiiItrSrEJ", "eventVersion": 79, "id": "C37xPXxnfggnZ3EZ", "timestamp": "p6wSAufwYirs9lwv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'MockPlayStationStreamEvent' test.out

#- 67 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetAppleIAPConfig' test.out

#- 68 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    --body '{"bundleId": "PKd925u3fFLV0YeM", "password": "rVaYSTRYGFzgLZ7g"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'UpdateAppleIAPConfig' test.out

#- 69 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteAppleIAPConfig' test.out

#- 70 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'GetEpicGamesIAPConfig' test.out

#- 71 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    --body '{"sandboxId": "EypQf2Pn9A4gcbDJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'UpdateEpicGamesIAPConfig' test.out

#- 72 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'DeleteEpicGamesIAPConfig' test.out

#- 73 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetGoogleIAPConfig' test.out

#- 74 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    --body '{"applicationName": "0LmdnOPkIT1C6KGT", "serviceAccountId": "pA7JZ6xullPROSfi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateGoogleIAPConfig' test.out

#- 75 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteGoogleIAPConfig' test.out

#- 76 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'UpdateGoogleP12File' test.out

#- 77 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'GetIAPItemConfig' test.out

#- 78 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    --body '{"data": [{"itemIdentity": "W9zcxmgNfTHu3vkZ", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"0H2s0sibQNBz81zR": "Pntxpgi7tXIcNEcG", "JjOCXpuix5vnPeTu": "9evbRov7Bm40CtZi", "Axk43DGV1SCkw8U0": "d4FvVmPMtpRMWSQ8"}}, {"itemIdentity": "Szi1IrGidRmR5BGR", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"hFwxmkGfPI3j4luX": "QuuLtYa86kvL6cBZ", "QssUUXOsXMNdvW1h": "bvGenRbm3QtsY5Wa", "KM5YY6pYrmeMIHLS": "8egV8XhgDjbrum8U"}}, {"itemIdentity": "xcutmVg8APWKxoj6", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"8VuKDoklYmkytCAH": "8Jiqe7gfV1G6bYgI", "bVKp4Kgew2mHDksA": "6Mv9Nzs19eBq9a1L", "8S1yduOwscICro6P": "8FWIPeqaBeD2uBAv"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UpdateIAPItemConfig' test.out

#- 79 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'DeleteIAPItemConfig' test.out

#- 80 GetOculusIAPConfig
$PYTHON -m $MODULE 'platform-get-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetOculusIAPConfig' test.out

#- 81 UpdateOculusIAPConfig
$PYTHON -m $MODULE 'platform-update-oculus-iap-config' \
    --body '{"appId": "IXEc2CCgYcFo9A93", "appSecret": "o22UgObCOiBWdw2b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'UpdateOculusIAPConfig' test.out

#- 82 DeleteOculusIAPConfig
$PYTHON -m $MODULE 'platform-delete-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'DeleteOculusIAPConfig' test.out

#- 83 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPlayStationIAPConfig' test.out

#- 84 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    --body '{"backOfficeServerClientId": "031dm4N41MOpmm04", "backOfficeServerClientSecret": "BlZUAlYnCT11qD03", "enableStreamJob": false, "environment": "k1h5EKvMGd6hQ2mH", "streamName": "jmLu4oFlReHy0JyZ", "streamPartnerName": "v7honqeiGTTqpgVs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'UpdatePlaystationIAPConfig' test.out

#- 85 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'DeletePlaystationIAPConfig' test.out

#- 86 ValidateExistedPlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-existed-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'ValidateExistedPlaystationIAPConfig' test.out

#- 87 ValidatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-playstation-iap-config' \
    --body '{"backOfficeServerClientId": "Y1kPNdJiJXB3yjNU", "backOfficeServerClientSecret": "PIfvoXRO0CkW1Zcg", "enableStreamJob": true, "environment": "SbbnffBWRaJN1SjC", "streamName": "FLDNJfAhJGwSYEZj", "streamPartnerName": "Eb0Pv35fEk9s11bF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'ValidatePlaystationIAPConfig' test.out

#- 88 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetSteamIAPConfig' test.out

#- 89 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"appId": "Xkf7rQJ4Kj7Qyo9t", "publisherAuthenticationKey": "UptiyZzRX8Y4rxRW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateSteamIAPConfig' test.out

#- 90 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteSteamIAPConfig' test.out

#- 91 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetTwitchIAPConfig' test.out

#- 92 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    --body '{"clientId": "ZPe4ZLAQWuBJwxOb", "clientSecret": "ZqMGxhffy9cHrLYf", "organizationId": "ftad99JDcnn7f2d8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'UpdateTwitchIAPConfig' test.out

#- 93 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'DeleteTwitchIAPConfig' test.out

#- 94 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'GetXblIAPConfig' test.out

#- 95 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    --body '{"relyingPartyCert": "SOWP2dw6Uy88WpQa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'UpdateXblIAPConfig' test.out

#- 96 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'DeleteXblAPConfig' test.out

#- 97 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblBPCertFile' test.out

#- 98 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'lG38VOo82aLD9jUj' \
    'uDITjifWRbmtK7MT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'xcCWnMiCLsjroKHP' \
    'ApA8GsGwyocvY9Ne' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'PjLJQJXwUApJWohX' \
    --body '{"categoryPath": "n01RB7pu7BaONXyE", "targetItemId": "5fIDbsMi48xOYVvE", "targetNamespace": "cEm53BYMBacQBIuD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'Vs7U0AJtWPRteszM' \
    --body '{"appId": "Td0R5Fsrf9xbVfgv", "appType": "GAME", "baseAppId": "617GmxzClkR3M6Tw", "boothName": "pwq3nLwxnJKjOo9f", "categoryPath": "vfXF1VsikD3IphQQ", "clazz": "iRcOtsthUwgQzNHU", "displayOrder": 65, "entitlementType": "CONSUMABLE", "ext": {"l1FRfOjJUmCbi2ll": {}, "ksf6GA8vTt92kldC": {}, "oyRdiOikUdqGocLY": {}}, "features": ["BaRC7T5qSl7WN3nc", "PkqiTKzz72PKXjSh", "M2DvesmMIbiQfaHx"], "flexible": false, "images": [{"as": "JMVnYj2yKqavWpyd", "caption": "epM3ap069B9Okr0x", "height": 73, "imageUrl": "oebnS4Y2zkGYTr9y", "smallImageUrl": "JIveX52r6Inl9VTJ", "width": 56}, {"as": "25N7NAvZdGuyYEYZ", "caption": "E3KaGSdhEGKcp6g1", "height": 54, "imageUrl": "l3Y82DOj5kPuNRZZ", "smallImageUrl": "aUccuBYep9n7b17f", "width": 39}, {"as": "VvLSJvdsGpmmUeMi", "caption": "kW3s54zffAL2DZ7g", "height": 56, "imageUrl": "bFDj2L2McvCrrR7h", "smallImageUrl": "9uKLXDaRf3pxKtJb", "width": 89}], "itemIds": ["pQWmnS52ZuuuI7F1", "xpVrcoXzSOEGEDYf", "iGPYo2K3dN3YBOJf"], "itemQty": {"vV6SuHovoQlk5wL2": 29, "gAFjtjC7suvgIUkB": 85, "jXGj2G0GZ3JBYi9b": 57}, "itemType": "SEASON", "listable": false, "localizations": {"BRpdbLCiwxOx2XQn": {"description": "94xPqXhqeNMDGA3O", "localExt": {"5hQAl6U2g9imVMh3": {}, "i7j095rDL6lEuB1Z": {}, "IMIs1dFvYokH9t2u": {}}, "longDescription": "8ZZnyHKkk6Gh25tE", "title": "cX9GegDnrYz0GFpS"}, "VdxFsXAp1roclyXl": {"description": "lFitPamSKRzDIZgS", "localExt": {"k6suS90ZbDdmjU11": {}, "QIZtkSn8QRbA5V4g": {}, "jWv1W6cqnvSuKswQ": {}}, "longDescription": "7vH8GScnP5QzRBY1", "title": "UrefgmVFBVz4KRCU"}, "0p4jIt01gzH17Icf": {"description": "JyGulmByN5rcDA3W", "localExt": {"cv9ouALjgLZZzLU9": {}, "w8MJRIzIgJKg9y86": {}, "BgnBQtm5AilVhASF": {}}, "longDescription": "lYMVJtE2dAeC7pF7", "title": "3y9eALKWinUJ7bAu"}}, "lootBoxConfig": {"rewardCount": 95, "rewards": [{"lootBoxItems": [{"count": 42, "duration": 74, "endDate": "1990-09-10T00:00:00Z", "itemId": "DJCxvzZnh8oBAk1M", "itemSku": "NCAUmdnLaVRUu5Vb", "itemType": "jwPa9rYgHaxeTT3e"}, {"count": 3, "duration": 98, "endDate": "1981-08-28T00:00:00Z", "itemId": "aYPNBp9wA4LxO2n7", "itemSku": "WJQFzBCD9S03D7JL", "itemType": "sIM3VOMRvvqkXDMP"}, {"count": 52, "duration": 58, "endDate": "1991-07-11T00:00:00Z", "itemId": "B08tpk0qhZath4b4", "itemSku": "HtwEYX55pJNTX1sD", "itemType": "jSWiSXsV5rJ8eZXZ"}], "name": "1TLMZnNL3DQK45IA", "odds": 0.3172473844350925, "type": "PROBABILITY_GROUP", "weight": 29}, {"lootBoxItems": [{"count": 51, "duration": 59, "endDate": "1995-01-24T00:00:00Z", "itemId": "DDSJSV8pzl1lfIR7", "itemSku": "jnetIJPGObyWCLyF", "itemType": "PHaxkKxEDvSoi2X9"}, {"count": 91, "duration": 43, "endDate": "1983-03-17T00:00:00Z", "itemId": "gvMG8QAaWUhIguMv", "itemSku": "KDOrx0wQXKEroyKz", "itemType": "2reP63EVHT72Vuho"}, {"count": 67, "duration": 86, "endDate": "1988-04-21T00:00:00Z", "itemId": "IFXGU5hujEfCMt95", "itemSku": "DEjxqhgYqmMqIdlR", "itemType": "rQmuILkeRUafUDP5"}], "name": "b6BWfm7cYCpDIJG4", "odds": 0.8838812142134931, "type": "REWARD_GROUP", "weight": 39}, {"lootBoxItems": [{"count": 77, "duration": 38, "endDate": "1974-03-07T00:00:00Z", "itemId": "UoCh8lmKKocC5Ea2", "itemSku": "9JhfFGN964J8WOgs", "itemType": "Aj2Rmf1DXvAIkzTR"}, {"count": 81, "duration": 88, "endDate": "1980-05-10T00:00:00Z", "itemId": "yeEGu1ICOCmLAmca", "itemSku": "EFBKgy92LYqtQcDN", "itemType": "7OMCehk42acy8wsW"}, {"count": 1, "duration": 39, "endDate": "1992-07-17T00:00:00Z", "itemId": "PbyctX7HC2haQwVW", "itemSku": "ONEpAPedzI2Adlqi", "itemType": "yEJIQcbZJJ3AhkrM"}], "name": "i0bnppEJFISze88r", "odds": 0.5321457129447099, "type": "REWARD", "weight": 19}], "rollFunction": "DEFAULT"}, "maxCount": 29, "maxCountPerUser": 4, "name": "DzMmMgoMxZZ9AutW", "optionBoxConfig": {"boxItems": [{"count": 59, "duration": 65, "endDate": "1973-12-18T00:00:00Z", "itemId": "VOINhql9CdDX4xiH", "itemSku": "pdfKH35RWUUVEHCB", "itemType": "5wzF6oLIrAwjAsgo"}, {"count": 39, "duration": 67, "endDate": "1996-09-27T00:00:00Z", "itemId": "r238G8Aevk3k1478", "itemSku": "2W2oNo3X4m6wms9S", "itemType": "PaHlqtDPry2vMON7"}, {"count": 38, "duration": 70, "endDate": "1972-10-15T00:00:00Z", "itemId": "hlilfpDT8o2iFrYt", "itemSku": "GfCZCcrvsV2I4X26", "itemType": "p21iDBZGJ8ZMLwPJ"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 65, "fixedTrialCycles": 27, "graceDays": 22}, "regionData": {"V5ALS7cneNLItUJg": [{"currencyCode": "h74tyxkTR8ZCVJtk", "currencyNamespace": "xjBJrNeQRsqkkKK2", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1972-05-20T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1983-12-05T00:00:00Z", "expireAt": "1982-12-30T00:00:00Z", "price": 78, "purchaseAt": "1989-10-18T00:00:00Z", "trialPrice": 54}, {"currencyCode": "M2B9bMohkWsFKIdy", "currencyNamespace": "cYHQcu7JkKBcLFRf", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1997-06-10T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1973-09-07T00:00:00Z", "expireAt": "1990-01-24T00:00:00Z", "price": 87, "purchaseAt": "1996-04-05T00:00:00Z", "trialPrice": 49}, {"currencyCode": "YiYqap7masUcayqm", "currencyNamespace": "p7vhz1T6cSrZL2Cg", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1993-01-20T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1977-01-28T00:00:00Z", "expireAt": "1997-09-04T00:00:00Z", "price": 61, "purchaseAt": "1974-03-17T00:00:00Z", "trialPrice": 81}], "vZNgfI1AeYHe8WPQ": [{"currencyCode": "GPclChxLfbXrH6f2", "currencyNamespace": "GDrNbLOjGz34ct0c", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1986-04-20T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1979-10-03T00:00:00Z", "expireAt": "1971-11-10T00:00:00Z", "price": 46, "purchaseAt": "1986-06-17T00:00:00Z", "trialPrice": 67}, {"currencyCode": "LnI7cTzIUERPlQI9", "currencyNamespace": "9hMc4NbiJWP5r9Ew", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1988-09-23T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1990-06-11T00:00:00Z", "expireAt": "1987-04-12T00:00:00Z", "price": 72, "purchaseAt": "1983-12-11T00:00:00Z", "trialPrice": 65}, {"currencyCode": "P9IqAyNlZ2OwFSeb", "currencyNamespace": "BkXkaxtY97TMJH8b", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1983-08-30T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1988-04-17T00:00:00Z", "expireAt": "1994-08-05T00:00:00Z", "price": 33, "purchaseAt": "1997-07-13T00:00:00Z", "trialPrice": 1}], "vjBy0NXg7zd6SFpk": [{"currencyCode": "V7cAICgWFJZGnNa5", "currencyNamespace": "yOM68r4W1fDZL80o", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1977-10-06T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1992-06-10T00:00:00Z", "expireAt": "1992-12-13T00:00:00Z", "price": 15, "purchaseAt": "1986-08-25T00:00:00Z", "trialPrice": 68}, {"currencyCode": "hgSgytNEojK3YgWH", "currencyNamespace": "9l7rv6XUSINd4keC", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1975-02-24T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1974-12-07T00:00:00Z", "expireAt": "1975-11-19T00:00:00Z", "price": 86, "purchaseAt": "1989-06-03T00:00:00Z", "trialPrice": 52}, {"currencyCode": "UrPawQPaHARrhjbE", "currencyNamespace": "U5n0PNuFyKW95dJs", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1985-04-19T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1976-03-23T00:00:00Z", "expireAt": "1987-08-25T00:00:00Z", "price": 76, "purchaseAt": "1985-03-31T00:00:00Z", "trialPrice": 16}]}, "saleConfig": {"currencyCode": "D3axSivItV1txLIN", "price": 25}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "HTGLtX6TN5ctYX1s", "stackable": false, "status": "ACTIVE", "tags": ["dVfOUr14yZH00n8M", "3hWmCCIrP0lJXexs", "eo2e6BCNJTTRIHDK"], "targetCurrencyCode": "sRjaB8iurBWW5jSJ", "targetNamespace": "i0seeGJIqnatME8G", "thumbnailUrl": "nNWfAY1yY6D1Euus", "useCount": 11}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'ZSeDCKT4ilZB8apD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'GetItemByAppId' test.out

#- 103 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'QueryItems' test.out

#- 104 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'ListBasicItemsByFeatures' test.out

#- 105 GetItems
$PYTHON -m $MODULE 'platform-get-items' \
    'TR3aL9sunWp7V1s8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'GetItems' test.out

#- 106 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'LmXm0FaJMIjgzU02' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'GetItemBySku' test.out

#- 107 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'nZWwBdEFpfccauYD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItemBySku' test.out

#- 108 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'c86pxK9KhF4KRVPo' \
    'IuzAuQNjAfvOE2cV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GetEstimatedPrice' test.out

#- 109 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'jFp1CeCEfaV4ZGGw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'GetItemIdBySku' test.out

#- 110 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GetBulkItemIdBySkus' test.out

#- 111 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'bqOB4mD3E7AFHqlT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'BulkGetLocaleItems' test.out

#- 112 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'GetAvailablePredicateTypes' test.out

#- 113 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    'TkL8cmpA0sZ0tgeR' \
    --body '{"itemIds": ["4UV5SMZ8GUvWZvoC", "mprkv7A8MRutCKCs", "qmx2zriOGB8b5qTF"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'ValidateItemPurchaseCondition' test.out

#- 114 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'p3cIxOI33nt54i5h' \
    --body '{"changes": [{"itemIdentities": ["dAezedcppbujZh1f", "YXF6R9Rz3HVP2Y9W", "qSRiwV3UZg0UJLPM"], "itemIdentityType": "ITEM_ID", "regionData": {"ET2yS6C8a8L0vQDS": [{"currencyCode": "4EVpBmsUzx64Gr4X", "currencyNamespace": "Em0uYYuAmqhftIfe", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1997-01-27T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1980-03-27T00:00:00Z", "discountedPrice": 29, "expireAt": "1975-04-14T00:00:00Z", "price": 41, "purchaseAt": "1993-03-19T00:00:00Z", "trialPrice": 43}, {"currencyCode": "52mAIMo6EW9QhzU8", "currencyNamespace": "FwQtZpfUoyoiUjmq", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1987-01-02T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1977-11-20T00:00:00Z", "discountedPrice": 25, "expireAt": "1997-09-14T00:00:00Z", "price": 76, "purchaseAt": "1974-10-05T00:00:00Z", "trialPrice": 31}, {"currencyCode": "z0GqDZN7ftHOhVy4", "currencyNamespace": "8YYg1AkRh3NmbRhM", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1989-03-04T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1986-10-08T00:00:00Z", "discountedPrice": 13, "expireAt": "1972-07-01T00:00:00Z", "price": 18, "purchaseAt": "1979-06-06T00:00:00Z", "trialPrice": 80}], "VeOFBDA3gvCRfoBi": [{"currencyCode": "jpbMblGWnp94a6GK", "currencyNamespace": "Y0BrHiWs0B0RhxQt", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1995-10-31T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1994-01-09T00:00:00Z", "discountedPrice": 73, "expireAt": "1991-07-25T00:00:00Z", "price": 22, "purchaseAt": "1982-05-27T00:00:00Z", "trialPrice": 73}, {"currencyCode": "72hJvrOCdAEZ2RHt", "currencyNamespace": "3uQ5nFrPXwxJZQpk", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1986-09-28T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1980-03-03T00:00:00Z", "discountedPrice": 18, "expireAt": "1994-10-23T00:00:00Z", "price": 56, "purchaseAt": "1988-05-03T00:00:00Z", "trialPrice": 60}, {"currencyCode": "XsZyvZOFJ5RrFZYc", "currencyNamespace": "wfQ1Q2BbcjSpv6Nt", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1985-07-23T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1998-06-05T00:00:00Z", "discountedPrice": 7, "expireAt": "1995-02-19T00:00:00Z", "price": 64, "purchaseAt": "1973-09-21T00:00:00Z", "trialPrice": 75}], "hO5FcdTvIDQI2uIi": [{"currencyCode": "2SNZKqlJZsdnY04D", "currencyNamespace": "IyosprZPBaERb7U9", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1989-12-04T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1995-06-18T00:00:00Z", "discountedPrice": 4, "expireAt": "1982-06-10T00:00:00Z", "price": 37, "purchaseAt": "1995-05-22T00:00:00Z", "trialPrice": 26}, {"currencyCode": "y8AKSZxOhUhl3Y0E", "currencyNamespace": "shaG0uDiJNUuxK22", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1971-02-06T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1980-01-04T00:00:00Z", "discountedPrice": 46, "expireAt": "1988-06-22T00:00:00Z", "price": 44, "purchaseAt": "1976-05-25T00:00:00Z", "trialPrice": 52}, {"currencyCode": "zBdLvFUBZDnVrcwb", "currencyNamespace": "sD0RDLxWgEWwoHpV", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1983-03-04T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1977-11-05T00:00:00Z", "discountedPrice": 58, "expireAt": "1971-10-27T00:00:00Z", "price": 73, "purchaseAt": "1982-09-12T00:00:00Z", "trialPrice": 84}]}}, {"itemIdentities": ["7UpCxNyx1jjdxNeP", "PAJ6Z9UzqIhZZiK0", "QEG6C9w4lVRNOF1B"], "itemIdentityType": "ITEM_ID", "regionData": {"cONcJIsYRQz97fRW": [{"currencyCode": "I17eNP3Y2nWlS9Sf", "currencyNamespace": "jh0htyVaGj4y9ahS", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1992-02-03T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1995-07-22T00:00:00Z", "discountedPrice": 23, "expireAt": "1977-05-05T00:00:00Z", "price": 5, "purchaseAt": "1988-12-19T00:00:00Z", "trialPrice": 37}, {"currencyCode": "s5FVQSIqObR55tV0", "currencyNamespace": "BlN1iFvw0GSLBmie", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1986-01-18T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1976-02-01T00:00:00Z", "discountedPrice": 92, "expireAt": "1978-12-21T00:00:00Z", "price": 76, "purchaseAt": "1971-06-24T00:00:00Z", "trialPrice": 94}, {"currencyCode": "7hgmUm7RVCUREDdo", "currencyNamespace": "GatGQ1SeOXsg4jof", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1978-12-10T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1982-05-22T00:00:00Z", "discountedPrice": 23, "expireAt": "1991-12-10T00:00:00Z", "price": 0, "purchaseAt": "1998-03-25T00:00:00Z", "trialPrice": 48}], "KGvOSvpmZZdlNXdx": [{"currencyCode": "2kWmSqodNZgfQyDV", "currencyNamespace": "VkkqiMiRf2yCyM0T", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1984-09-26T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1989-10-02T00:00:00Z", "discountedPrice": 68, "expireAt": "1974-01-15T00:00:00Z", "price": 74, "purchaseAt": "1980-12-29T00:00:00Z", "trialPrice": 78}, {"currencyCode": "izvmxts5HSQvRAPG", "currencyNamespace": "9JoVSLrbs5niXkjp", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1991-02-18T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1993-08-20T00:00:00Z", "discountedPrice": 80, "expireAt": "1985-11-18T00:00:00Z", "price": 51, "purchaseAt": "1979-08-26T00:00:00Z", "trialPrice": 11}, {"currencyCode": "iytnfMoO1I3KISTb", "currencyNamespace": "n4yEa2AaBRalz5HE", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1984-09-23T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1971-01-09T00:00:00Z", "discountedPrice": 26, "expireAt": "1992-06-08T00:00:00Z", "price": 64, "purchaseAt": "1986-01-04T00:00:00Z", "trialPrice": 52}], "qjKzWDAauqLKarcL": [{"currencyCode": "QRQtC927GneBM8Lv", "currencyNamespace": "zgyIVzGFBLJ5vbC9", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1977-11-04T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1994-12-10T00:00:00Z", "discountedPrice": 64, "expireAt": "1982-10-15T00:00:00Z", "price": 3, "purchaseAt": "1987-05-19T00:00:00Z", "trialPrice": 83}, {"currencyCode": "xQpUSnos6QiHyrcG", "currencyNamespace": "eRv27hj73EtufHuN", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1998-06-25T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1978-06-16T00:00:00Z", "discountedPrice": 33, "expireAt": "1994-11-11T00:00:00Z", "price": 75, "purchaseAt": "1971-04-24T00:00:00Z", "trialPrice": 3}, {"currencyCode": "5m8oH9zCfw7mCMkb", "currencyNamespace": "vSIm7JROcwVmGyrB", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1977-04-18T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1992-07-01T00:00:00Z", "discountedPrice": 65, "expireAt": "1988-01-24T00:00:00Z", "price": 98, "purchaseAt": "1994-05-23T00:00:00Z", "trialPrice": 3}]}}, {"itemIdentities": ["RiFSPs2ZMcVFcrix", "ULzSeTnUWGxxfnMI", "DSCPr1m1Fg6tc250"], "itemIdentityType": "ITEM_ID", "regionData": {"FxEaEHCGtg812NQb": [{"currencyCode": "5Glh8srTlTj61WdV", "currencyNamespace": "2XUo1BO1rE7E12Fa", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1971-05-07T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1984-07-12T00:00:00Z", "discountedPrice": 18, "expireAt": "1983-04-28T00:00:00Z", "price": 61, "purchaseAt": "1977-04-22T00:00:00Z", "trialPrice": 68}, {"currencyCode": "JoKEb8tHmFwLGan2", "currencyNamespace": "SrKckNxLWH6rjhRL", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1983-07-10T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1978-12-25T00:00:00Z", "discountedPrice": 24, "expireAt": "1991-04-05T00:00:00Z", "price": 8, "purchaseAt": "1998-09-20T00:00:00Z", "trialPrice": 22}, {"currencyCode": "IEUJtMC8NyV2HLHZ", "currencyNamespace": "T3oYJlC4ie3InnSA", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1973-01-10T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1977-05-19T00:00:00Z", "discountedPrice": 22, "expireAt": "1996-10-21T00:00:00Z", "price": 86, "purchaseAt": "1983-11-20T00:00:00Z", "trialPrice": 72}], "wJUGtC0tAhxn1ay6": [{"currencyCode": "ruu7PYWHODRb6skO", "currencyNamespace": "j0lfYFGnQCAWidWP", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1974-05-18T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1993-01-29T00:00:00Z", "discountedPrice": 13, "expireAt": "1971-12-08T00:00:00Z", "price": 96, "purchaseAt": "1983-05-20T00:00:00Z", "trialPrice": 27}, {"currencyCode": "HFirnUpZ9UJ4N78q", "currencyNamespace": "HTGdn7gE4bwLzDEw", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1981-04-08T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1981-08-19T00:00:00Z", "discountedPrice": 90, "expireAt": "1976-12-30T00:00:00Z", "price": 70, "purchaseAt": "1971-02-28T00:00:00Z", "trialPrice": 83}, {"currencyCode": "cwiDWQFghmIi6fph", "currencyNamespace": "Dw3p9QWqwTF2pOJs", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1999-07-10T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1984-02-16T00:00:00Z", "discountedPrice": 75, "expireAt": "1978-07-24T00:00:00Z", "price": 93, "purchaseAt": "1998-03-09T00:00:00Z", "trialPrice": 8}], "y01FkEEXlKiTIDgP": [{"currencyCode": "7wuXQdfW99JglSco", "currencyNamespace": "OlkkBxiXf8OBQRqX", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1996-08-28T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1993-09-17T00:00:00Z", "discountedPrice": 41, "expireAt": "1984-08-11T00:00:00Z", "price": 32, "purchaseAt": "1977-01-21T00:00:00Z", "trialPrice": 99}, {"currencyCode": "0EEziE5yIvijq9ix", "currencyNamespace": "16vo60jgvwV3C9hJ", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1987-05-11T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1989-04-20T00:00:00Z", "discountedPrice": 59, "expireAt": "1989-08-25T00:00:00Z", "price": 28, "purchaseAt": "1999-06-30T00:00:00Z", "trialPrice": 99}, {"currencyCode": "GWgccuzuc6QDRMGd", "currencyNamespace": "BPbUyHTYPS8CGKXG", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1978-03-30T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1973-01-20T00:00:00Z", "discountedPrice": 4, "expireAt": "1975-05-23T00:00:00Z", "price": 3, "purchaseAt": "1984-02-13T00:00:00Z", "trialPrice": 64}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'BulkUpdateRegionData' test.out

#- 115 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'BuKBco1AeO3yvvBL' \
    'ZPBuekeBe4Tvb3fH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'SearchItems' test.out

#- 116 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'QueryUncategorizedItems' test.out

#- 117 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'CIJZkwEcCRi2U7s2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'GetItem' test.out

#- 118 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'ZQAarwH0c87v0PwZ' \
    'jydyzGDZM4zTTYI6' \
    --body '{"appId": "O8coYDWUfcL1qseg", "appType": "SOFTWARE", "baseAppId": "496H02yOVN1h41jI", "boothName": "POMXufZPWSe20JfN", "categoryPath": "vtNcWtpUkw98x3tM", "clazz": "M1bFFDIqKD8HJ4X0", "displayOrder": 61, "entitlementType": "CONSUMABLE", "ext": {"etCeJ4x0wf5mQx6H": {}, "s7M5apPMc8ZR3bPC": {}, "J5n5s6DODBmrqEhG": {}}, "features": ["WuCQpjuJzpPO7BPx", "VWlRFnIekrQ99ecm", "lkEmGdCbwodVRjZJ"], "flexible": false, "images": [{"as": "FQCyQBqKxayGvw7M", "caption": "qOsypCJmfRnW0spg", "height": 43, "imageUrl": "4mCShMFlbrRGjoBQ", "smallImageUrl": "45Za4JR4S3iac6vL", "width": 9}, {"as": "WRucRpP1Tq7uYXhB", "caption": "6FPfF5DvveMdBsPt", "height": 50, "imageUrl": "9V2FkBPk0QLufK6e", "smallImageUrl": "iT38raaRG1Fg0hfM", "width": 65}, {"as": "vQmahJlT5OUDEMwA", "caption": "jgNZgto2EhOlnsuD", "height": 28, "imageUrl": "dxXOBu3TWmHDVmCG", "smallImageUrl": "FoD7aNFj9wORAVqR", "width": 43}], "itemIds": ["Qxos58kVk7F1KKOf", "FFLvER3xqCwUgKa4", "oCBoJDxGa1UuSr4e"], "itemQty": {"hnV8Aw9m6GvDSE2F": 54, "d9sB6CV9KiWkbdpG": 33, "ohdjQUwVdPsArkep": 10}, "itemType": "SEASON", "listable": false, "localizations": {"DE3IibPSQnphnvAW": {"description": "BSOr7zljUKyhKkD7", "localExt": {"wAHMrv8zABDhYAVx": {}, "vs3ugNvvgI2k1P9n": {}, "Qxzj3AnmpWfje5cA": {}}, "longDescription": "tTDvwFHcoODi5oF1", "title": "pccdjjZpFnVLb7xe"}, "rpjVPfktNnl8UYH5": {"description": "kesuOtYHLqcdy05Y", "localExt": {"rqdFn8sQ7yc8xLKy": {}, "BfGLHEAKhp612Y2n": {}, "cRf7tEGzYqRoHm6E": {}}, "longDescription": "tyXqQbKWMJ0aODiW", "title": "n6bPmSa85Riu1ala"}, "VEhjJZbwMHkFWLSz": {"description": "mAXAruYrVjX4HRTv", "localExt": {"m3Qr9IkuW6jjofc6": {}, "itDEsq0dHfYG6k85": {}, "3GERdJdphepF9dfs": {}}, "longDescription": "ng9FGGjJ0hRPUBFx", "title": "M2Fr3olO10RAyIZs"}}, "lootBoxConfig": {"rewardCount": 90, "rewards": [{"lootBoxItems": [{"count": 97, "duration": 19, "endDate": "1973-08-28T00:00:00Z", "itemId": "eYSM479gn62lizsW", "itemSku": "GrtIgVPb7hoo8YkN", "itemType": "PW8mWOJGtdXJGDsx"}, {"count": 88, "duration": 5, "endDate": "1984-07-09T00:00:00Z", "itemId": "R3NObYp43YXMHqWe", "itemSku": "VjnOURxGvOhz9s7k", "itemType": "tWkJDaHg6kDVjxhx"}, {"count": 89, "duration": 8, "endDate": "1983-12-03T00:00:00Z", "itemId": "jeDrqCfJEjrqJkFo", "itemSku": "ZFZex0eOw31PXkVn", "itemType": "etcvAuim14Wdh1qK"}], "name": "oSDBbyqlJyfVgaW6", "odds": 0.4095790126200364, "type": "PROBABILITY_GROUP", "weight": 46}, {"lootBoxItems": [{"count": 67, "duration": 64, "endDate": "1974-04-06T00:00:00Z", "itemId": "ijZzA3MkosOcoAcV", "itemSku": "0T2G3vQZNiqaXzRB", "itemType": "ra3I4K9iBdljXtow"}, {"count": 18, "duration": 21, "endDate": "1973-01-28T00:00:00Z", "itemId": "BfAw30kOykBuDJ0I", "itemSku": "PQeAL4MZwEVJe7wa", "itemType": "GyB6g2M5JiwtMOfD"}, {"count": 11, "duration": 29, "endDate": "1993-11-09T00:00:00Z", "itemId": "W0qgxO0Y6TFpFSCs", "itemSku": "rhSGeeExZYnGcrZH", "itemType": "MKoTcIXeKZzZBo6A"}], "name": "RaQnNZQ1R0PGBFVn", "odds": 0.038839179048613226, "type": "REWARD", "weight": 1}, {"lootBoxItems": [{"count": 40, "duration": 100, "endDate": "1987-03-21T00:00:00Z", "itemId": "VKPoA1aKRZM1Ot0P", "itemSku": "WppB2H0G8Xko9l5J", "itemType": "0IOZmnpzwHhig9d6"}, {"count": 44, "duration": 2, "endDate": "1972-08-26T00:00:00Z", "itemId": "gfrNiGrH0hDjH6IY", "itemSku": "pfINzNjk5V8T9pQj", "itemType": "nGB83yonudf21g0N"}, {"count": 16, "duration": 81, "endDate": "1981-06-25T00:00:00Z", "itemId": "2CNqmO8JALtCiDuG", "itemSku": "QQsvWV3NSjXUXSMK", "itemType": "Y09x4TKOwsyRNnaL"}], "name": "Nhw0xGnXc29UDQxe", "odds": 0.13560955582384993, "type": "REWARD", "weight": 99}], "rollFunction": "CUSTOM"}, "maxCount": 2, "maxCountPerUser": 83, "name": "hB9u1v1POCjseK1x", "optionBoxConfig": {"boxItems": [{"count": 0, "duration": 91, "endDate": "1978-01-13T00:00:00Z", "itemId": "IgQzkWzcBqVcuTTr", "itemSku": "Ik6hU0mqdwBJax1j", "itemType": "Bd6Yng8ps5XknDJZ"}, {"count": 74, "duration": 93, "endDate": "1974-02-26T00:00:00Z", "itemId": "W37NTbz8HiRmuknv", "itemSku": "XiTP0KrWQ3pgbHM0", "itemType": "Svy3GRenDzwlTE9C"}, {"count": 52, "duration": 14, "endDate": "1972-04-21T00:00:00Z", "itemId": "9gCPFDZh6JfJfg4X", "itemSku": "1dZOTBgYwLjPGFqk", "itemType": "bTL8ifUAMUekrD0J"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 42, "fixedTrialCycles": 46, "graceDays": 72}, "regionData": {"eJxWANt1bDay64En": [{"currencyCode": "FyFeW0oNhddKrrhz", "currencyNamespace": "wz2PFXC33KjLNUFQ", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1994-01-13T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1997-04-15T00:00:00Z", "expireAt": "1973-10-06T00:00:00Z", "price": 19, "purchaseAt": "1978-10-14T00:00:00Z", "trialPrice": 1}, {"currencyCode": "5eVnflH2hnMV6Yxt", "currencyNamespace": "l5DKUhjBy9oWPcMI", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1985-04-06T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1993-11-14T00:00:00Z", "expireAt": "1992-04-24T00:00:00Z", "price": 82, "purchaseAt": "1976-08-08T00:00:00Z", "trialPrice": 16}, {"currencyCode": "ydb6GgyFczEOMXF1", "currencyNamespace": "T1sU9xsmACLFHrXW", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1971-02-26T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1980-04-23T00:00:00Z", "expireAt": "1974-08-28T00:00:00Z", "price": 36, "purchaseAt": "1976-04-24T00:00:00Z", "trialPrice": 11}], "pVE1acxZoDXdPORk": [{"currencyCode": "WkyTcJzvDUlhTlBN", "currencyNamespace": "pvkjg48iVKCqEqeZ", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1985-12-24T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1978-01-01T00:00:00Z", "expireAt": "1977-11-16T00:00:00Z", "price": 94, "purchaseAt": "1976-10-19T00:00:00Z", "trialPrice": 65}, {"currencyCode": "VBkZU3qtk0dM4GZG", "currencyNamespace": "iSutb6wUxEikRyHC", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1998-11-12T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1984-07-26T00:00:00Z", "expireAt": "1975-01-12T00:00:00Z", "price": 4, "purchaseAt": "1981-10-16T00:00:00Z", "trialPrice": 81}, {"currencyCode": "fG9qYAEpR44fWWEs", "currencyNamespace": "CETqKlcFcaL6XOoO", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1978-08-16T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1980-07-22T00:00:00Z", "expireAt": "1971-08-30T00:00:00Z", "price": 66, "purchaseAt": "1977-06-08T00:00:00Z", "trialPrice": 37}], "qWw67LheLDvwZjth": [{"currencyCode": "GMOB4HFIzTlGBnpL", "currencyNamespace": "Bd02br9OfMbjgS5W", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1972-06-19T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1993-03-09T00:00:00Z", "expireAt": "1984-07-08T00:00:00Z", "price": 53, "purchaseAt": "1984-10-11T00:00:00Z", "trialPrice": 5}, {"currencyCode": "7knizQ4Jx8In4w8y", "currencyNamespace": "RFOLeTQyplscfsZv", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1995-05-02T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1985-11-08T00:00:00Z", "expireAt": "1982-10-15T00:00:00Z", "price": 89, "purchaseAt": "1982-04-04T00:00:00Z", "trialPrice": 76}, {"currencyCode": "iFCmFC9uUxSxI4yy", "currencyNamespace": "rZIV9M22gRLsc6Jw", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1991-10-05T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1984-01-14T00:00:00Z", "expireAt": "1983-04-22T00:00:00Z", "price": 64, "purchaseAt": "1992-03-10T00:00:00Z", "trialPrice": 57}]}, "saleConfig": {"currencyCode": "DZs0wyldbDDntsSQ", "price": 90}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "UCgn7oklNewpAIwt", "stackable": false, "status": "INACTIVE", "tags": ["TVV2QmlqRK5roG1o", "ZArFJBUmMx7nzK8r", "RAYvvynDPJ9SMRzS"], "targetCurrencyCode": "o0RzUoSen8CjEhtR", "targetNamespace": "cnVsYOwypw6F21uY", "thumbnailUrl": "owkPNGANjli9XZkb", "useCount": 36}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'UpdateItem' test.out

#- 119 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'm6zryXmvvvPmueVV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'DeleteItem' test.out

#- 120 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'C0ymY7ABWgZVxM4r' \
    --body '{"count": 55, "orderNo": "agVhXIgoHE9eEvIy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'AcquireItem' test.out

#- 121 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'V2DqxWhSV3r9vk4H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetApp' test.out

#- 122 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'QDiwqJUZHP7HM6JB' \
    '2P6ZjZh9eggvvmXZ' \
    --body '{"carousel": [{"alt": "U7lVGZ6lIs17PXJ8", "previewUrl": "KsgqGNM6sO7IUwIv", "thumbnailUrl": "84zQjc88fKtDQSbD", "type": "image", "url": "N21JlwPxpuUZm1GV", "videoSource": "vimeo"}, {"alt": "MX2yYJopKxd9MtXY", "previewUrl": "GoZGkBNXT0feu7KK", "thumbnailUrl": "PXunBZiqYaReD047", "type": "video", "url": "oGCmrTUcZy3DDSxp", "videoSource": "vimeo"}, {"alt": "ZV6J5QloYCaB5Imp", "previewUrl": "xpHJCcuqJR2TT3HE", "thumbnailUrl": "YBW8Aq2KVQNFGaJE", "type": "video", "url": "03Nqu13LgD6kOUZX", "videoSource": "youtube"}], "developer": "sHLF7s3hgmxOOzP7", "forumUrl": "vteUYzMZzggFcJQk", "genres": ["MassivelyMultiplayer", "MassivelyMultiplayer", "Adventure"], "localizations": {"eQLLJPh6HpodpzuB": {"announcement": "QwTS66qr03Mp14S8", "slogan": "HG9ID7mZ4eKHaAP4"}, "PYToJAMgJkC8UGlq": {"announcement": "b7cexeEhHz7OKYNI", "slogan": "MPTFnrbysdru1Pot"}, "ArVtIQyxp17b8SHv": {"announcement": "RIiJgGrdz6Ar6ZMG", "slogan": "UI9Z0Fol65yD1dLB"}}, "platformRequirements": {"QJcBsvUaK2iHOkgy": [{"additionals": "hgijqtdzrvCDzH5A", "directXVersion": "CyLXmLsHXWPqYBJT", "diskSpace": "zlt302k4rdWgWYgF", "graphics": "gw3mGmogCJXjHTGh", "label": "yemqqwoT441DX6xw", "osVersion": "uD6giqKLavCF9yVe", "processor": "JJwyaY7Ho61RoV0V", "ram": "H7thk8lnCROZodh1", "soundCard": "gbkbnRcIufk5WE4z"}, {"additionals": "PvxA5061CF9079hQ", "directXVersion": "A91csvlQSS6PyDb3", "diskSpace": "vKbCw9eAGmM6lPAJ", "graphics": "MizukBmcy1kbAWDU", "label": "ac65Jdlm1JJwmCAj", "osVersion": "TwtCqKdh92wuH9hL", "processor": "kAg90cQgXeZnKRP6", "ram": "Gdv2QY9BadKJj4Hk", "soundCard": "L0mk4HHDzXcKJowQ"}, {"additionals": "bOrgveLe4hYQEGci", "directXVersion": "vibNKS0tBFxzru1A", "diskSpace": "3ObcaijxlHrcqzwG", "graphics": "gl1SyrFazP5g67zq", "label": "7XCHkJzmy6DtxvO3", "osVersion": "nUiVM7UfbH7Qv0Ey", "processor": "y6G3n83Sb2WXmcXt", "ram": "uUYtYkPAHldms0Nw", "soundCard": "lx85unvbUiBJfyM9"}], "bc1hgFvKO2erV4cc": [{"additionals": "UhiQnHGDNXw2L4mp", "directXVersion": "580sUSlEfC6ckbV2", "diskSpace": "y32kG5QTZnpxYa2j", "graphics": "Dp3LzelXaUz9AKoz", "label": "XBA29DPhYa8Ksjfn", "osVersion": "k7HKSWULkEKqQ4To", "processor": "qWjpaECYi7fBJaU4", "ram": "3PzOITmqjrcuIH9i", "soundCard": "4ICwRHM518oPa2gl"}, {"additionals": "j6rHbkWMDSiPRcEy", "directXVersion": "fbUswXLyVVZqZpYA", "diskSpace": "dyPafGBlwnYRpUkT", "graphics": "KjXxvgslvMllaEVu", "label": "gbCEifQCe5eN88Z7", "osVersion": "U1e8C1HnrPGydCRG", "processor": "PXLKNNfCxcAJoMhS", "ram": "Zgpx0HtzCgr8ybpA", "soundCard": "O0Pgh6Uenz7FjcRR"}, {"additionals": "IKcTVvsormCNHH08", "directXVersion": "vEf2WSsLchLBElch", "diskSpace": "9a9Knc6glMjwg8OW", "graphics": "AT7d65hchXzG4ffz", "label": "0lXBDbBGrYGleamV", "osVersion": "gjm0xqJhfraXwzn0", "processor": "bbNK5rhgy51k1e1g", "ram": "Z8QCEx41nhN2NMDX", "soundCard": "EHz2uROYqy72xPht"}], "IM8Rw0xHZOUW3jlX": [{"additionals": "Yz8azHYdzaYe7Wjw", "directXVersion": "oU21EdgoOvT13nFP", "diskSpace": "xMy9YNTBZTR5tZma", "graphics": "ZGxrhAPoREvGmmbG", "label": "W3SttwZrmKkREJXu", "osVersion": "cN3IEt8vZSqh6SjL", "processor": "dDyVf6irpvxpCXFl", "ram": "M52jb80Nlw8icwWR", "soundCard": "vvZB46NCiqdleq2j"}, {"additionals": "CNZAKjBlI9fsL6HE", "directXVersion": "OiPcSKlQDo4ih358", "diskSpace": "Lf5RXgVFrsR55cpO", "graphics": "V3Qg6eU0Mc21ZZli", "label": "CydumMW9HWHfZ3bF", "osVersion": "TqXqdzpP7Rk1qbFW", "processor": "htwNaVCqf0vP284y", "ram": "QAbudR95sQ1FygQv", "soundCard": "oX9pEJ3R0cuQGjCS"}, {"additionals": "hSTNyM9yuMOFavgM", "directXVersion": "WyxizWKQdVExukcK", "diskSpace": "DUzhKKARjqJSWImX", "graphics": "vaLXkvZvwk0v0OKy", "label": "45dqId3gXUWVAmaD", "osVersion": "jrn0iZsIfqeLfl0w", "processor": "acx4istsfrFqHu6f", "ram": "54mL4hAfiqX3ThRE", "soundCard": "YkndZIrjnjuCHkx8"}]}, "platforms": ["IOS", "MacOS", "IOS"], "players": ["LocalCoop", "Coop", "LocalCoop"], "primaryGenre": "Strategy", "publisher": "A4NUDAdwt7cj6v5D", "releaseDate": "1990-04-12T00:00:00Z", "websiteUrl": "Ek9RkumkrnY4LksF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'UpdateApp' test.out

#- 123 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'D2le3UGhQnnmMgk0' \
    'WYv2NTpSejfbYniL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'DisableItem' test.out

#- 124 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'mi1GQTjQVaJ9ioRZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'GetItemDynamicData' test.out

#- 125 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    '1HvMCIXTQG7AUUES' \
    '36bRVaiOL6Q5N2eg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'EnableItem' test.out

#- 126 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'LXRiNNV5Fy4ilLbK' \
    'zQFBHQ0FHWOul5WK' \
    'kzjzRnLLFKGFSUC1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'FeatureItem' test.out

#- 127 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'sZtVitkoRyEXWrhL' \
    'NPUvlrOA50xGdlq3' \
    'Dkm52TA4zLBSh2QJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'DefeatureItem' test.out

#- 128 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'WgWvIZGJOPkJvsZh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetLocaleItem' test.out

#- 129 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'fMwJPOcRFJTeKbAM' \
    'IJChPyIhVPmMs1zq' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 76, "comparison": "isLessThanOrEqual", "name": "exSNhnabXGs0qawV", "predicateType": "SeasonTierPredicate", "value": "rycewrnLBAZlvnOJ", "values": ["cGURTnJUdR3MUQnE", "Zn6egDbFDXW3N42c", "eNxZdT1fZJTutZpZ"]}, {"anyOf": 10, "comparison": "isNot", "name": "ANANjqBdfMMU89e6", "predicateType": "SeasonPassPredicate", "value": "ntHsI11lC6BXyQW3", "values": ["eG0BvuCoP1hIpdIW", "XmHB9cu1ZdRIZ1hH", "ajZTyB7k7Q9zNJHk"]}, {"anyOf": 59, "comparison": "isGreaterThanOrEqual", "name": "A9vXrqLxUCyNQUIT", "predicateType": "SeasonTierPredicate", "value": "GxJNOaveGzkTPehZ", "values": ["qYE8GuKFRwAkAyYY", "VmZi1UYM7BApA1YB", "yiGkJR30lAinKfKX"]}]}, {"operator": "or", "predicates": [{"anyOf": 15, "comparison": "excludes", "name": "NUTpzSm7jdrPdkMM", "predicateType": "EntitlementPredicate", "value": "1kQcGm0x3DmUahjP", "values": ["CBznu3BT2fe68sGX", "HIreoYDgNe1Ryydt", "VDOEmwpWiJYxvvQC"]}, {"anyOf": 65, "comparison": "isLessThanOrEqual", "name": "8vRJ3ebbfa3ep8cK", "predicateType": "SeasonTierPredicate", "value": "RHukM2BVMu418S3o", "values": ["2DKmAp8kt8156L7W", "RrcPbe1REA4kpxN9", "l7UfG3PbsgYDgJ0J"]}, {"anyOf": 41, "comparison": "is", "name": "Cjk58n5fBl9xiCZH", "predicateType": "SeasonTierPredicate", "value": "KBHwuAW3jLkVq9bA", "values": ["B83a6h6dNfg9f25Y", "efBF8tiF7mi3iOrn", "sZ1L6IGHuO7u2tOU"]}]}, {"operator": "and", "predicates": [{"anyOf": 26, "comparison": "isLessThan", "name": "tMbwcUsu3gJ0yHA6", "predicateType": "SeasonTierPredicate", "value": "YUnfHWyBg5c3Wq2d", "values": ["GygLo40eCb82j4Oh", "aAiWk4TKx1WRjiCo", "kzg7q7bMwxVAujRx"]}, {"anyOf": 89, "comparison": "isGreaterThan", "name": "ypvu88WyRMMRloXy", "predicateType": "SeasonTierPredicate", "value": "I437Ne6WvRNtbN9E", "values": ["Nqw2oEptJsPYgvPn", "os8o1PdTDqm0SXzX", "AlN2mJeW1LQJ8A7N"]}, {"anyOf": 72, "comparison": "isLessThan", "name": "PAny29oO2B8osfAc", "predicateType": "SeasonPassPredicate", "value": "FM15pfl1N2CNDu3D", "values": ["5uuCoR3Wc6j3UqRI", "pGXJrOgVnrneQPU3", "CnmZxob6vepvgW3V"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'UpdateItemPurchaseCondition' test.out

#- 130 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'mnz3WsgPS6R3Uev7' \
    --body '{"orderNo": "bCsylPZDz1fiXmZR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'ReturnItem' test.out

#- 131 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'QueryKeyGroups' test.out

#- 132 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "eVZ4inDP7o0Aeler", "name": "4oEJEmHHU4T74Nkr", "status": "ACTIVE", "tags": ["RIVY69dhSr3JiNwe", "UidBVB2vTyC482Fe", "T76mWyDrmG0FHQOj"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'CreateKeyGroup' test.out

#- 133 GetKeyGroupByBoothName
eval_tap 0 133 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 134 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'tRg7ST2UVRJN0qFJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroup' test.out

#- 135 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'aGDiDmatCvCembJF' \
    --body '{"description": "NyIwxPt19hjyI7AL", "name": "yZHQ8V4AejtUM6ll", "status": "ACTIVE", "tags": ["4m1Ywb6nMhhSCXGz", "ZMdNwUYOkFXnGtw8", "AuvUND3dJ4hbxnIu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateKeyGroup' test.out

#- 136 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'xtrWKvmz0RzwVRhR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroupDynamic' test.out

#- 137 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'mllqqWYgDWbrtw6q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'ListKeys' test.out

#- 138 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'iRU6n8IKPZ1kpSeR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UploadKeys' test.out

#- 139 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'QueryOrders' test.out

#- 140 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetOrderStatistics' test.out

#- 141 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'ooa84wgi9Qjy4Ltk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'GetOrder' test.out

#- 142 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'YsyCJFj0ayzojVNI' \
    --body '{"description": "rqZCtbJmJSU0agO0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'RefundOrder' test.out

#- 143 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'GetPaymentCallbackConfig' test.out

#- 144 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": false, "notifyUrl": "XHCyo70kyuutjjQD", "privateKey": "fdr0GXMgSK5Yx6db"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'UpdatePaymentCallbackConfig' test.out

#- 145 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'QueryPaymentNotifications' test.out

#- 146 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'QueryPaymentOrders' test.out

#- 147 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "DNBB9LNziCP1xQyg", "currencyNamespace": "VqAioKka1tx56Awx", "customParameters": {"AJU0XOoXFpKZ7smO": {}, "vhTDIdO6ugOFZPtL": {}, "UvuPK7wBmEY4lD14": {}}, "description": "f0XIJh3uxrBGEume", "extOrderNo": "TG434DmlbwWuZpKP", "extUserId": "B4rzvo2R5Q7tM4Yb", "itemType": "SUBSCRIPTION", "language": "SOg", "metadata": {"3KhfoL7PlFt47mQA": "QQzQAxQ8GRgWKOBJ", "YYXgFmEZ8kWtzrSI": "fMjxzBwWKzJldpqt", "AlzVR0WqkbKYSr7I": "Vc2WJyX67v7JTcrp"}, "notifyUrl": "pNGl78VMGk3b5E1G", "omitNotification": false, "platform": "BWrzKJ0Lj0VNzr8k", "price": 93, "recurringPaymentOrderNo": "DExMK4z32P13aQRT", "region": "MzFLsBDzdO8IwGdL", "returnUrl": "KPo5zR4q58Tka2qL", "sandbox": false, "sku": "azvRX5v3UCobMU8b", "subscriptionId": "zcaf0Qv0dFMnEcDH", "targetNamespace": "ueqAKTjdRpgYeuit", "targetUserId": "qLYJ7E9mP2Be9WZ9", "title": "kuWMnRcGzbD5iC34"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'CreatePaymentOrderByDedicated' test.out

#- 148 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    's0kTiXwPjN8E3wXz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'ListExtOrderNoByExtTxId' test.out

#- 149 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    '4Q1L3hAG9xOOi4DV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentOrder' test.out

#- 150 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'UYo37I8Mgh1DJARp' \
    --body '{"extTxId": "i5KzpbDPfXdGvodr", "paymentMethod": "l6UOwYZJq3OJhzlg", "paymentProvider": "WALLET"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'ChargePaymentOrder' test.out

#- 151 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '16Jp7HjPDG07Xwug' \
    --body '{"description": "hkPLKDhdMf1o4pwe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'RefundPaymentOrderByDedicated' test.out

#- 152 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'yQyv10mRO0tK1CH6' \
    --body '{"amount": 28, "currencyCode": "DpLOyrgsLZV9arTx", "notifyType": "REFUND", "paymentProvider": "WXPAY", "salesTax": 12, "vat": 79}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'SimulatePaymentOrderNotification' test.out

#- 153 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'nOqH9lyv8wx2JosS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'GetPaymentOrderChargeStatus' test.out

#- 154 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Xbox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'GetPlatformWalletConfig' test.out

#- 155 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Nintendo' \
    --body '{"allowedBalanceOrigins": ["Twitch", "System", "IOS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'UpdatePlatformWalletConfig' test.out

#- 156 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Oculus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'ResetPlatformWalletConfig' test.out

#- 157 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetRevocationConfig' test.out

#- 158 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'UpdateRevocationConfig' test.out

#- 159 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'DeleteRevocationConfig' test.out

#- 160 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'QueryRevocationHistories' test.out

#- 161 GetRevocationPluginConfig
$PYTHON -m $MODULE 'platform-get-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'GetRevocationPluginConfig' test.out

#- 162 UpdateRevocationPluginConfig
$PYTHON -m $MODULE 'platform-update-revocation-plugin-config' \
    --body '{"appConfig": {"appName": "79zCfL2ar4zJmB2w"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "syjuA8sqeXbV9I8y"}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'UpdateRevocationPluginConfig' test.out

#- 163 DeleteRevocationPluginConfig
$PYTHON -m $MODULE 'platform-delete-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'DeleteRevocationPluginConfig' test.out

#- 164 UploadRevocationPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'UploadRevocationPluginConfigCert' test.out

#- 165 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "eBwTzs9QmLReEZ0r", "eventTopic": "6n6anryoVkl4tChu", "maxAwarded": 61, "maxAwardedPerUser": 20, "namespaceExpression": "ibBIH1dyZPHtYHKq", "rewardCode": "pl1Xk1CdFvYqfoYz", "rewardConditions": [{"condition": "Bc16XXXuoJGXCyzA", "conditionName": "8a5uh1LdVOaWOjRi", "eventName": "nmMTxEz6bdDFDqRM", "rewardItems": [{"duration": 51, "endDate": "1994-06-23T00:00:00Z", "itemId": "ZOXYRC3gIRiYFpDl", "quantity": 55}, {"duration": 53, "endDate": "1986-09-29T00:00:00Z", "itemId": "yVuvyXITMn2F86xZ", "quantity": 90}, {"duration": 60, "endDate": "1988-07-09T00:00:00Z", "itemId": "KSEeAEd96gzUY6Eu", "quantity": 97}]}, {"condition": "s1DdUL5bc6QMB9Tt", "conditionName": "HXqeaYlaYm2XGN51", "eventName": "wxYTCHYaW7BAFZnp", "rewardItems": [{"duration": 49, "endDate": "1974-04-12T00:00:00Z", "itemId": "FYqZQAUm9m9ht4Js", "quantity": 36}, {"duration": 58, "endDate": "1990-11-02T00:00:00Z", "itemId": "ho0XSsR3HPQNrtkf", "quantity": 51}, {"duration": 79, "endDate": "1990-03-25T00:00:00Z", "itemId": "oI3ymYms9fuih2WM", "quantity": 77}]}, {"condition": "F1LpvoOxT54t5Ffn", "conditionName": "a72ji4B86NKZ0tkE", "eventName": "WAqM0EZhtIp1XL7H", "rewardItems": [{"duration": 77, "endDate": "1999-04-20T00:00:00Z", "itemId": "zHmDzxvCGS2mYl0s", "quantity": 53}, {"duration": 9, "endDate": "1977-02-26T00:00:00Z", "itemId": "ox8O9f2ojEQrZ645", "quantity": 76}, {"duration": 99, "endDate": "1992-03-13T00:00:00Z", "itemId": "paGFJniJl9RPULWp", "quantity": 99}]}], "userIdExpression": "2X6VHZOulL5KfkSA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'CreateReward' test.out

#- 166 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'QueryRewards' test.out

#- 167 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'ExportRewards' test.out

#- 168 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'ImportRewards' test.out

#- 169 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'z3euR4MhLQs8XliO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetReward' test.out

#- 170 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'oWqixFdv5aDRSnCr' \
    --body '{"description": "IQ2kChyafmo2nIKr", "eventTopic": "9krylalbZWuO0OVw", "maxAwarded": 66, "maxAwardedPerUser": 66, "namespaceExpression": "UgR3PEWI0N4k2W2c", "rewardCode": "aqaRVdR05rSilF29", "rewardConditions": [{"condition": "Lpg0zAUzpliq50de", "conditionName": "mc4rS3d2v2ibO04g", "eventName": "NmB9r9MA5lA6x0lY", "rewardItems": [{"duration": 20, "endDate": "1997-12-02T00:00:00Z", "itemId": "P57PyBLX7knj7y5q", "quantity": 62}, {"duration": 8, "endDate": "1992-04-27T00:00:00Z", "itemId": "p7hzPCxvetFhAgAk", "quantity": 21}, {"duration": 97, "endDate": "1986-02-28T00:00:00Z", "itemId": "KYNaKhi81nO4RNjv", "quantity": 82}]}, {"condition": "9WC342Uggyr64isE", "conditionName": "fxbFEabmT6MmgebE", "eventName": "kQ73QcKQldxIqMgf", "rewardItems": [{"duration": 43, "endDate": "1992-05-15T00:00:00Z", "itemId": "aNJqIMDWJUW3I4SK", "quantity": 19}, {"duration": 15, "endDate": "1979-12-23T00:00:00Z", "itemId": "NOc5dWAES7S7wBqB", "quantity": 8}, {"duration": 87, "endDate": "1998-09-14T00:00:00Z", "itemId": "rqjRECHyhLYGnvEd", "quantity": 58}]}, {"condition": "x4VA9ZxbKQDqG7UJ", "conditionName": "EMeseC0hnoI1dph0", "eventName": "xgVXvWuSKhoOQClj", "rewardItems": [{"duration": 29, "endDate": "1999-07-15T00:00:00Z", "itemId": "kOXwHnS2VOESYx49", "quantity": 79}, {"duration": 83, "endDate": "1998-10-13T00:00:00Z", "itemId": "WCzn2paEvjRIcSa2", "quantity": 24}, {"duration": 80, "endDate": "1991-12-28T00:00:00Z", "itemId": "2hpjhYQEdyLRX3et", "quantity": 78}]}], "userIdExpression": "FIdlTuousRcrhXNA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'UpdateReward' test.out

#- 171 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'h3Cu4ou029lD9VLX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'DeleteReward' test.out

#- 172 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'NwkZWTbX0PZb0I9Q' \
    --body '{"payload": {"m4xKek7ZAZJCk1fi": {}, "zRJy5JoIlHjTZ4mD": {}, "mXZIBTi05akxBYoz": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'CheckEventCondition' test.out

#- 173 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'WzUW4RDVM8Y4PcXD' \
    --body '{"conditionName": "H8RZqUjELC82uP1n", "userId": "MUDAKQEkOvO52VTP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'DeleteRewardConditionRecord' test.out

#- 174 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'QuerySections' test.out

#- 175 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    'FFuLWL0HQkTuy4fU' \
    --body '{"active": false, "displayOrder": 62, "endDate": "1982-03-16T00:00:00Z", "ext": {"RwzU7QiANYIF1YbE": {}, "ZwEzBNPCCnVKYp3E": {}, "Qx9pSofiZZNcWBxK": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 4, "itemCount": 20, "rule": "SEQUENCE"}, "items": [{"id": "215MnSNTPMRaYf8C", "sku": "hh5tiLsXIOSE2JSD"}, {"id": "RlSX5uOgZ3Msm86J", "sku": "r35oZQ3WcFld5DKw"}, {"id": "JoCrYrlOXZN7MoQZ", "sku": "DN1sjuHXDU9ZFHIS"}], "localizations": {"uKMr6e9VKi3lHZdn": {"description": "YzFYEnOA6gFO3zfS", "localExt": {"vvmLgxlU5MdUdF7g": {}, "HdIf6eMd0iVUmBrF": {}, "wFIESxo8uFqKtoZi": {}}, "longDescription": "VPtwECFgcQRsqYFt", "title": "xbpKYKp18TPWOixb"}, "TLfdOF3VtCUZ0wN8": {"description": "1CLC324P82gdsOb5", "localExt": {"Jp6oxvvtB4aireJS": {}, "Zc7Cojp07DFR7IvE": {}, "hnKAMSw1WGHPO22m": {}}, "longDescription": "Cj7yFmbpItmTcMVU", "title": "lRoYFks2ULHooisO"}, "HhyiZyNxeNJcBIeP": {"description": "MwBjK11IFRybWjjY", "localExt": {"kFvEHCnQ2BiPScmf": {}, "oBQ1VO5Trcu36LS6": {}, "o87DKPLLTcjU87C2": {}}, "longDescription": "CAKbiD5PxA5v9644", "title": "D4d5jTjzZ8KpdOxr"}}, "name": "Q8r5te5FkJ58wQyr", "rotationType": "FIXED_PERIOD", "startDate": "1992-01-09T00:00:00Z", "viewId": "3NsS8VgyzvujT8aE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'CreateSection' test.out

#- 176 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'ay0LM1IpMDZuDLXN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'PurgeExpiredSection' test.out

#- 177 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'scwbXgdwQnMuReen' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'GetSection' test.out

#- 178 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    '3aYjhar5GRzOAfOX' \
    'baEHFX0sySxhkhCp' \
    --body '{"active": false, "displayOrder": 55, "endDate": "1992-12-24T00:00:00Z", "ext": {"ZLHG60X6LS9dYe42": {}, "oicsvoF2EgsoZSKO": {}, "zQIDAf44vyeNIfF5": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 97, "itemCount": 51, "rule": "SEQUENCE"}, "items": [{"id": "ydtvWZZFDNIc86TK", "sku": "j3grgVdqSpg9xpXC"}, {"id": "h79kxpJyTba2Sx7l", "sku": "PUWhfLYtrkZ2V3jz"}, {"id": "XzilslRzP96yJ7Rb", "sku": "X8fkG3hcRbcSuSkd"}], "localizations": {"72wzQJjmhy4f9F9u": {"description": "sH1ByGD8DDRW0KNw", "localExt": {"lKcveutOHZ2aWSL1": {}, "1msU7QpcpkApFODO": {}, "qz4FKRWcvJIwzW53": {}}, "longDescription": "tKi9mxhR8RWtFcnN", "title": "AoxNPXPlSv6kWXBT"}, "TodpLcEI0mWFWKlS": {"description": "wI38LyDyLTQxmA6n", "localExt": {"DD3EFfeJdwskeVjY": {}, "Ae1CNRQX4T37n6lg": {}, "MV9tMXN2kDg7INFT": {}}, "longDescription": "JO4FUT152zR0PBTE", "title": "vM3TgMsAS5t3TYXN"}, "AGl1xy1H8Ag2XY2T": {"description": "nyPCVsWzhPIeHkoU", "localExt": {"SeT3lv51D9Vwsfza": {}, "tv4JzfVNAJbSLBzq": {}, "s2u1EntDzkQLgWQH": {}}, "longDescription": "Xc3bRYKbJGFP8HZN", "title": "LJ7aPbRMRrbKjoif"}}, "name": "ZAWt13ISgdwAum4b", "rotationType": "NONE", "startDate": "1981-04-27T00:00:00Z", "viewId": "1Ph8xHfEAlyda8FP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'UpdateSection' test.out

#- 179 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'utbAgA4OlQUCJsDi' \
    'lWhSc6XIxh1HqBg5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'DeleteSection' test.out

#- 180 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'ListStores' test.out

#- 181 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "FhY2vclqnTbyZ7fY", "defaultRegion": "vmiZxdNpmibPCLiJ", "description": "aHXEyuLQOO6qVUih", "supportedLanguages": ["FznsLFP3013gsIOA", "relbYwYTtGsRNij1", "bUAIrKYw673JvA3s"], "supportedRegions": ["tZ6FN0omme6HiOrb", "uq9cXar8FKACMfaE", "SKKo0RBtKDj9PgWn"], "title": "ODMMswus0ykKyOTF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'CreateStore' test.out

#- 182 ImportStore
eval_tap 0 182 'ImportStore # SKIP deprecated' test.out

#- 183 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GetPublishedStore' test.out

#- 184 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'DeletePublishedStore' test.out

#- 185 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'GetPublishedStoreBackup' test.out

#- 186 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'RollbackPublishedStore' test.out

#- 187 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'H9npo1k2W89U6PA5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'GetStore' test.out

#- 188 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'Byr1VJKsNpin9ZAg' \
    --body '{"defaultLanguage": "5mDVmepTMiQqOA7W", "defaultRegion": "iIi8k4T7A6suz0JP", "description": "LhBV8H4Rs8p9AflD", "supportedLanguages": ["jkRQna4afJC9mgf0", "blFr8NUmSdS49Cyb", "TerX6wW5HLYxM5DN"], "supportedRegions": ["6DJmnjBd7q6U3V1i", "7ip9ibQlReTecqcb", "ggfeYn1FnvTuTrRI"], "title": "8Z87U0Y5R6IUWUGW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'UpdateStore' test.out

#- 189 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'DcgSJ29TqsnbtXNB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'DeleteStore' test.out

#- 190 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'eq2uoLHWsw0m7ZY4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'QueryChanges' test.out

#- 191 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    '6mjkOA84jougrIsa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'PublishAll' test.out

#- 192 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'MHmzafNaxCNIzvOh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'PublishSelected' test.out

#- 193 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    '61wCAYs9Qae7TEBn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'SelectAllRecords' test.out

#- 194 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    'zFuxHzrR3PiHyAFf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'SelectAllRecordsByCriteria' test.out

#- 195 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'iwIi9bI2X8C6xnSI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'GetStatistic' test.out

#- 196 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'mJqwyGzE1BMLJmTv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'UnselectAllRecords' test.out

#- 197 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'UJIV0W2K8alZaxyE' \
    'ak02r4dRvrKr07n7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'SelectRecord' test.out

#- 198 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    '2icTrg8RyI3bDBIK' \
    'GiLSqDVnEtbqHnY6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'UnselectRecord' test.out

#- 199 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'D1Z2oKGmRbhR6rnS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'CloneStore' test.out

#- 200 ExportStore
eval_tap 0 200 'ExportStore # SKIP deprecated' test.out

#- 201 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'QuerySubscriptions' test.out

#- 202 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'jFQf699gOqEWjr9T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'RecurringChargeSubscription' test.out

#- 203 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    '9UhsGYJ3NLSVOdqF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'GetTicketDynamic' test.out

#- 204 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'xY9j8P8IFwNKh0Zn' \
    --body '{"orderNo": "i7P6ZfRFkQolDEty"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'DecreaseTicketSale' test.out

#- 205 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'xyMGw4ZEIMYFaIEr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetTicketBoothID' test.out

#- 206 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    '69zjnPKVLZ59QuwB' \
    --body '{"count": 2, "orderNo": "ltXTRz9WtMMb9e3S"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'IncreaseTicketSale' test.out

#- 207 Commit
$PYTHON -m $MODULE 'platform-commit' \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 90, "currencyCode": "iXun5fD0BBCts02K", "expireAt": "1974-07-16T00:00:00Z"}, "debitPayload": {"count": 52, "currencyCode": "Mniv6VDtGhPQu5Ig", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 24, "itemIdentity": "VBRFOlmRZZrSiE7m", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 81, "entitlementId": "OUBb0ZMyPVBowpLO"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 44, "currencyCode": "Xgqa99UNyHIlnrLO", "expireAt": "1973-05-13T00:00:00Z"}, "debitPayload": {"count": 37, "currencyCode": "gbZMgBinMuWrJOAv", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 7, "itemIdentity": "xG7UhRxqteme7V0m", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 5, "entitlementId": "4XANjqP7L1mgHDq7"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 25, "currencyCode": "2SQp9UXJYEGGpt55", "expireAt": "1973-12-01T00:00:00Z"}, "debitPayload": {"count": 98, "currencyCode": "u2Xk8T0sqdmD20ro", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 31, "itemIdentity": "fU1yEokwoBSfRPMd", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 4, "entitlementId": "ru40VmHvpaJ6EFG9"}, "type": "FULFILL_ITEM"}], "userId": "rOrO7m2fUVM4vgvN"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 1, "currencyCode": "Rc0I82pjV4UBb0pZ", "expireAt": "1980-11-14T00:00:00Z"}, "debitPayload": {"count": 69, "currencyCode": "KCe8F6OE3PKy2vHH", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 51, "itemIdentity": "rTj3i1nC0J9A8DUt", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 83, "entitlementId": "T9Nimqnzt0awizca"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 60, "currencyCode": "Kf2QcbDNp9wVgloP", "expireAt": "1979-04-29T00:00:00Z"}, "debitPayload": {"count": 41, "currencyCode": "0vZqaSrHfwrqqHXH", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 30, "itemIdentity": "PnC56p62cEYBMPDD", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 21, "entitlementId": "uy4MWHW8YW1euC0u"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 98, "currencyCode": "GfdMvM0zEHmThs6O", "expireAt": "1983-04-20T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "3hXTX65W9y7jKRgC", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 75, "itemIdentity": "7XGD7r4dvtuyipF1", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 57, "entitlementId": "jH3UPJy3CnYG5ypx"}, "type": "CREDIT_WALLET"}], "userId": "b9Aa9QMoQgjOf0by"}, {"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 42, "currencyCode": "j8Uxptb2o5jdTreV", "expireAt": "1989-02-28T00:00:00Z"}, "debitPayload": {"count": 47, "currencyCode": "6flE9FaNdFDCH0BM", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 42, "itemIdentity": "8A5DLkL19tXrv2bC", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 15, "entitlementId": "HGabfCgecNknWoEb"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 5, "currencyCode": "ZQ4VuKeTQQXDNtjg", "expireAt": "1983-10-03T00:00:00Z"}, "debitPayload": {"count": 31, "currencyCode": "hHTDHO8mQoGOS84j", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 66, "itemIdentity": "VRGn0aQHrmMgGX6W", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 31, "entitlementId": "9WPUEwP8KagnEKkf"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 54, "currencyCode": "TTm092rucPAhnaYq", "expireAt": "1993-11-26T00:00:00Z"}, "debitPayload": {"count": 77, "currencyCode": "hmWshFK5hyfwqkxF", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 74, "itemIdentity": "bXXgvJKjvhZn4m8r", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 78, "entitlementId": "QUG1gDFutWedPpbB"}, "type": "FULFILL_ITEM"}], "userId": "BTm7Hy1AvjH8TO5O"}], "metadata": {"IzshGgQ4ThugQFOW": {}, "wlpo3MnSMNdjVtLt": {}, "8CrUFIkcZk3UEaPs": {}}, "needPreCheck": true, "transactionId": "no141RnaYhr2WJyq", "type": "CvAfWi7mDpF9Uxmj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'Commit' test.out

#- 208 GetTradeHistoryByCriteria
$PYTHON -m $MODULE 'platform-get-trade-history-by-criteria' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetTradeHistoryByCriteria' test.out

#- 209 GetTradeHistoryByTransactionId
$PYTHON -m $MODULE 'platform-get-trade-history-by-transaction-id' \
    'utqgr8019aVHHRLK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'GetTradeHistoryByTransactionId' test.out

#- 210 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    '0fv936lSL3gAK6Qq' \
    --body '{"achievements": [{"id": "FlWlAR1frDQIVwme", "value": 11}, {"id": "m182ykfY01Gcykfq", "value": 89}, {"id": "0gjx8jAfmTLOwiBS", "value": 92}], "steamUserId": "5AVm0vOTpy2xyajH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'UnlockSteamUserAchievement' test.out

#- 211 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'MUnKflmcC3pOWLT8' \
    'ckEy2SMQcmxebThG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'GetXblUserAchievements' test.out

#- 212 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'YrgNOimVrZzkyKHv' \
    --body '{"achievements": [{"id": "wa7cbRj2at5ZJSh0", "percentComplete": 51}, {"id": "srNNRw3Y1j6viZbW", "percentComplete": 10}, {"id": "68NcKrOSqAvumNXd", "percentComplete": 80}], "serviceConfigId": "1Oq4B0c6hcP5jLY1", "titleId": "KxbFbyzOePaXR3ub", "xboxUserId": "0i4catfNOlhlYHQh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'UpdateXblUserAchievement' test.out

#- 213 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    '4VgYhBaVDBRlLxoA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeCampaign' test.out

#- 214 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'zljrhdaWNQoeso9m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AnonymizeEntitlement' test.out

#- 215 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'KjTRboTLjWe4LfJe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeFulfillment' test.out

#- 216 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'e5PI5dFv5buhIZ4e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AnonymizeIntegration' test.out

#- 217 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'MnCDQFCYcyYCi2g6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AnonymizeOrder' test.out

#- 218 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    's9FQKCfcu923Ypsd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AnonymizePayment' test.out

#- 219 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'jtVRUIv3uIM3CoS6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AnonymizeRevocation' test.out

#- 220 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'JahcK1Pr6BT8bcW2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AnonymizeSubscription' test.out

#- 221 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    '1yKVRUAUf5lebfPe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AnonymizeWallet' test.out

#- 222 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'nWUEBZC8keF5vI1Q' \
    'OCULUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'GetUserDLCByPlatform' test.out

#- 223 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'i47qjDQAAvYZZABK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'GetUserDLC' test.out

#- 224 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'OA0L11TgHUfODRoc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'QueryUserEntitlements' test.out

#- 225 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'sLmBbV1sCNpADwyp' \
    --body '[{"endDate": "1976-04-28T00:00:00Z", "grantedCode": "rXjamc3OX9fjEzsc", "itemId": "uFPv5tNXWb8n1xyB", "itemNamespace": "1MxbBG0waudrudTu", "language": "fZAg_Drfz_120", "quantity": 43, "region": "CBgg2D4HUqIhXDNw", "source": "PROMOTION", "startDate": "1987-01-31T00:00:00Z", "storeId": "OuDvT1kGGvspIGcv"}, {"endDate": "1996-01-21T00:00:00Z", "grantedCode": "axRFeMgIQdJNm52k", "itemId": "6wEP9rj7lO6vs4tM", "itemNamespace": "fHLoSkvb8lbFBtF0", "language": "inCN_TceA", "quantity": 31, "region": "CtbUIxxTu6SQF7Bt", "source": "GIFT", "startDate": "1980-12-29T00:00:00Z", "storeId": "vdiz3ZJfWFdytTpA"}, {"endDate": "1995-02-07T00:00:00Z", "grantedCode": "x0pd4puXNhGU3RmY", "itemId": "w0EwPDL8fEraUQnz", "itemNamespace": "cZCIvQUYP4zKaJuB", "language": "tv", "quantity": 65, "region": "1C0ktvmekdbic6I2", "source": "OTHER", "startDate": "1982-02-19T00:00:00Z", "storeId": "Hclx6xvlDEhlvzVB"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GrantUserEntitlement' test.out

#- 226 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'qt9fNnODJKrDdt60' \
    'vGd1u3lR0fkCW4fY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'GetUserAppEntitlementByAppId' test.out

#- 227 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'JAHmuYyTZt7v3mvP' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'QueryUserEntitlementsByAppType' test.out

#- 228 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'IV4pb5hZyPikzEmn' \
    'mdOWGrvu5JZsUPqt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'GetUserEntitlementByItemId' test.out

#- 229 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'ph4Z0KsCWhJPpmpj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GetUserActiveEntitlementsByItemIds' test.out

#- 230 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'ibu6WMYMScWAzVVd' \
    'QZznMUlqj2djHHFF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlementBySku' test.out

#- 231 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'RxJPvHewpv9IeC6L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'ExistsAnyUserActiveEntitlement' test.out

#- 232 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'AtGzNwZUe0kRnfBi' \
    '["o030WDtRFRReZoX0", "eYwpjuQPo1Bi27Mr", "8QiSBuE8WdxjHSrI"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 233 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'coNi9NFQFpBDG4ba' \
    'NqdGxNGcHil6iUOT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 234 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'Wxf4GH0N4kVmTj68' \
    '3Ybw4TKyPTxRuzNf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlementOwnershipByItemId' test.out

#- 235 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'mvBcfNBFiIw9mkjC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlementOwnershipByItemIds' test.out

#- 236 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '9qXOVUNHtfbgUqbL' \
    'Q3WTZF8gP7Lgkxhk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'GetUserEntitlementOwnershipBySku' test.out

#- 237 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'SSID9PxPyXJHsWip' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'RevokeAllEntitlements' test.out

#- 238 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'vZANpRXHVqJaiwko' \
    'aBb8UYH2Pz5V5CtS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'RevokeUserEntitlements' test.out

#- 239 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'rcX7aRP8vZ9a77wO' \
    'P10AbpbjZo2dQM3Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlement' test.out

#- 240 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'Xq9atijyFT8B6hEC' \
    'r4zqhZ9lpllwasnr' \
    --body '{"endDate": "1983-03-17T00:00:00Z", "nullFieldList": ["XhgI2SuEyr4hactA", "HdK0X7OZKu6MmVxE", "FptfSFU0F8qXSfSk"], "startDate": "1983-03-04T00:00:00Z", "status": "ACTIVE", "useCount": 35}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'UpdateUserEntitlement' test.out

#- 241 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'HxGQ4Dm2YoSLUIzz' \
    'QsIU3IZf93pQmmWW' \
    --body '{"options": ["hMnRSn6PRk0DwXkY", "J6aX6XRSXg6OXqwh", "2Uj0IZZFXv7pY5cN"], "requestId": "IYdQRni6IfH05hVd", "useCount": 0}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'ConsumeUserEntitlement' test.out

#- 242 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'PUl2WbQNFNB2IE43' \
    'MBCGNyjqnDuWD1qi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'DisableUserEntitlement' test.out

#- 243 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'ZzXQxSDgH9L20T6f' \
    'VxvK30nHMYxf8xOR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'EnableUserEntitlement' test.out

#- 244 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    '1DEgYR3iOynLLtqS' \
    'maHvUExz8o7TwcWL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetUserEntitlementHistories' test.out

#- 245 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    '7fNlyGuj0EkM7M8G' \
    '78KZj2jWyKAzXYP9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'RevokeUserEntitlement' test.out

#- 246 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    'kO0rmonOpgtONmMv' \
    'rDH4IXc6tn8XayBI' \
    --body '{"reason": "734jCTSnRqHTWC4N", "useCount": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'RevokeUserEntitlementByUseCount' test.out

#- 247 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'PaX8W0GvPN7gRfsy' \
    'SRn2FX0Ac7CzuPXE' \
    '95' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 248 RevokeUseCount
eval_tap 0 248 'RevokeUseCount # SKIP deprecated' test.out

#- 249 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    '0ufrBaS458bBTbcq' \
    'QVkSIXLGF8dtk8bq' \
    --body '{"requestId": "cPfBJ9GOHxUkZCvq", "useCount": 97}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'SellUserEntitlement' test.out

#- 250 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'OXhewthszMsYOEmQ' \
    --body '{"duration": 18, "endDate": "1987-03-08T00:00:00Z", "itemId": "1OsXfJG3psjIBzja", "itemSku": "FmN0MInvVPAPEovH", "language": "VVguusvVUxkCG4IG", "metadata": {"PYHaRvV3JGi5l0G5": {}, "NBtXVTXK1JdoClQQ": {}, "GLneKl3iXOvSGgZz": {}}, "order": {"currency": {"currencyCode": "uoTiOgT4AtBZJsMB", "currencySymbol": "PDcUuWC1NgHaxQlx", "currencyType": "VIRTUAL", "decimals": 87, "namespace": "2MPGkLeY5CedGPB0"}, "ext": {"iJF96NG7vODPmfnV": {}, "8dOr38jFYjFRDj47": {}, "EZTCCwz8yawNImZd": {}}, "free": true}, "orderNo": "Kx8oPBJncKdyabXy", "origin": "Nintendo", "overrideBundleItemQty": {"I0sHphIU3KaP7nk9": 17, "4YD9fDzx1WPpvLBM": 78, "nnSLeEYvuciynwWb": 57}, "quantity": 86, "region": "HLrp6OW9Y7FIIEJM", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1974-06-18T00:00:00Z", "storeId": "Kizs3NRbyYMyWPHp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'FulfillItem' test.out

#- 251 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '8NpreWtVtRQu0coT' \
    --body '{"code": "hNxwnnpoM2KSoHlp", "language": "Agy_243", "region": "q1O6RDUgilQHCts6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'RedeemCode' test.out

#- 252 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    'SUNxUWIGSkxjKL3E' \
    --body '{"itemId": "iP6WeXWf3dBAVfIM", "itemSku": "2oLFaTIhv5XrQvTA", "quantity": 7}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PreCheckFulfillItem' test.out

#- 253 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'vJS0xuVskVlA0TNA' \
    --body '{"metadata": {"cmfUmAzc5JVuc5LB": {}, "d3uXt6TP1AE4lqnI": {}, "wLN2lGYqQSzIUdIq": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "Io6VbU9gwMgZPR9Q", "namespace": "5Lstog0ehjEmcjJz"}, "item": {"itemId": "kf7rNu3ZARHXZ5yu", "itemSku": "JsfxI3zuYwCYQw4R", "itemType": "r3lmeyijwD3pYZEo"}, "quantity": 75, "type": "ITEM"}, {"currency": {"currencyCode": "fBV4CX15snBgmfly", "namespace": "gDW6ab0RoZeMIFYm"}, "item": {"itemId": "EraqGPOCMPGtRg0H", "itemSku": "GzSGs8nBUQVBsF03", "itemType": "D5vkAkZ8CS09fFrb"}, "quantity": 6, "type": "CURRENCY"}, {"currency": {"currencyCode": "regZfA6pBIXqoaoY", "namespace": "oHcrIwc6qkDf3ciu"}, "item": {"itemId": "VB7vM6wSqwns2XJf", "itemSku": "Ul3uiEO9E03Jk5kB", "itemType": "nuo4jR1HYLJjnydx"}, "quantity": 54, "type": "CURRENCY"}], "source": "EXPIRATION", "transactionId": "foRLP4zSxApJe0ap"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'FulfillRewards' test.out

#- 254 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'lQXEaoGjonwKDYwj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'QueryUserIAPOrders' test.out

#- 255 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'vKhxwtaxd74bEkQ8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'QueryAllUserIAPOrders' test.out

#- 256 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'XN3xQ0KaIZ1ISja5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'QueryUserIAPConsumeHistory' test.out

#- 257 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'TxqN8RXvgNzoX14K' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "bK_eC", "productId": "dphWEIlBnOKyfAbd", "region": "UB1OM5oKTXANlenF", "transactionId": "uUeRc2SCqQ9kgrqA", "type": "OCULUS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'MockFulfillIAPItem' test.out

#- 258 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'aKAUBfyFCxsJfyos' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'QueryUserOrders' test.out

#- 259 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    '4fOD6B14cwUNByHq' \
    --body '{"currencyCode": "sS7t8WUpg0equIg7", "currencyNamespace": "wIz8o3rFWvlE7bmu", "discountedPrice": 0, "ext": {"HJmrL7AZ1MKcHBB1": {}, "AfySUMZOWhtQEriy": {}, "OLkuGKVQWNOUAh5V": {}}, "itemId": "Xa79702d31zPHg6t", "language": "XTsGmv1XM6sr8tSa", "options": {"skipPriceValidation": true}, "platform": "Oculus", "price": 33, "quantity": 12, "region": "4hLUkLLTNMnmlFzz", "returnUrl": "wpEZwbcCEsJIB0Jk", "sandbox": false, "sectionId": "0J2JeqNTxshoZJns"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'AdminCreateUserOrder' test.out

#- 260 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'AkX5sxny0WLYMNb0' \
    'QsxPlx64IQUpSToD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'CountOfPurchasedItem' test.out

#- 261 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    '0bb0SXZUy9H0C213' \
    'rnYfZ8c8zURCckWW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'GetUserOrder' test.out

#- 262 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'VlTYAkogbV1bNoJJ' \
    'UhL5p56dnYHk1iLt' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "kzqs0hC50vEOIxc2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'UpdateUserOrderStatus' test.out

#- 263 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    '5vtorwrF6HtcJbqj' \
    'CZkEvdWNk2SHYsva' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'FulfillUserOrder' test.out

#- 264 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    '1jk545vt1Vu7dsmz' \
    'SUsCVLjw2QHwjLRn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'GetUserOrderGrant' test.out

#- 265 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'oGxE4QuZeQkRBv8h' \
    'h81CTYPYD0WHJ0Jz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'GetUserOrderHistories' test.out

#- 266 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'aJpqg9JgEy7Iad7f' \
    'AMCaXsZoyeqN5ouE' \
    --body '{"additionalData": {"cardSummary": "cXRhWbROnhOUSnN2"}, "authorisedTime": "1990-05-05T00:00:00Z", "chargebackReversedTime": "1977-02-18T00:00:00Z", "chargebackTime": "1978-01-15T00:00:00Z", "chargedTime": "1989-06-27T00:00:00Z", "createdTime": "1995-09-24T00:00:00Z", "currency": {"currencyCode": "sJUnv5BwzKyxJqBC", "currencySymbol": "aof96NNQPxPe1HYk", "currencyType": "REAL", "decimals": 17, "namespace": "4KjUJVMedBEWe14k"}, "customParameters": {"mPIGCrJozIio8nWa": {}, "64x5pJSHZCzyWKP3": {}, "0KusyvaitTsWtL2A": {}}, "extOrderNo": "AtjEKW31SlSm20Dz", "extTxId": "dKk8FlVcy0hcEMFR", "extUserId": "kn8SAQhtiWA2DHIo", "issuedAt": "1972-06-08T00:00:00Z", "metadata": {"FR98KOabgb0l3UUR": "ltNbDbdvc14DUjHq", "RaUZuU9T9SRQFfxR": "IUU3K7sjvHHFmaUG", "Iprrzf5gWNxqxl2q": "gslinTPbY1473RFP"}, "namespace": "lwtoen6TTQtwMX4Q", "nonceStr": "AE2aV1l1P0cjdc49", "paymentMethod": "Ah8hoDWRw7XYzZLl", "paymentMethodFee": 77, "paymentOrderNo": "Ef6JRpqZEUH2Rr5l", "paymentProvider": "CHECKOUT", "paymentProviderFee": 45, "paymentStationUrl": "fHjqVCMpunzeSPkf", "price": 3, "refundedTime": "1993-03-21T00:00:00Z", "salesTax": 44, "sandbox": true, "sku": "xm9KYr60SyfWNB8u", "status": "REFUNDING", "statusReason": "e9tt0zz5gs7YuyxJ", "subscriptionId": "Le1TkfLiM9EqyhFh", "subtotalPrice": 40, "targetNamespace": "mq6sgk5cHaJYkzCl", "targetUserId": "qPty2kxgyry1MM9e", "tax": 29, "totalPrice": 89, "totalTax": 55, "txEndTime": "1991-12-29T00:00:00Z", "type": "i5cRehBB7o24lw21", "userId": "Z3nE04Cbkpn0yX44", "vat": 1}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'ProcessUserOrderNotification' test.out

#- 267 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'bLCG20BKfuTGRLmL' \
    'wLS7dIB0aGjtNbry' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'DownloadUserOrderReceipt' test.out

#- 268 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'vmkemouOe0GhKNxa' \
    --body '{"currencyCode": "vCN2N47HbR5lY76l", "currencyNamespace": "AzKbyHphqwB5Iehz", "customParameters": {"t3ErL5T5rvBRXJxU": {}, "vm1xIvCywA95KVla": {}, "3LCTgTkPtcVfRHox": {}}, "description": "2lJjo1I9gluGDrbO", "extOrderNo": "6CoGGaGBbMIhMZL5", "extUserId": "o3htHW6Gx9FaoDIw", "itemType": "OPTIONBOX", "language": "kPTP_FocX", "metadata": {"vsb9aicyajUNH4cy": "uoR5YkRhK1PGfmAn", "DGtInmyZkHQxUB5U": "4Qk0fD8GqtXguE8X", "vdv1azJ2OSkJGMDA": "kWOP9y3eP20aRJVX"}, "notifyUrl": "YPkIGnj7nGzgSkTy", "omitNotification": true, "platform": "cIm2Tc4sbYVp7amy", "price": 61, "recurringPaymentOrderNo": "Qy2rJxiPPjJk44WH", "region": "DDNDVgExcmm4fkoN", "returnUrl": "MVNk6z4A3FI60uUr", "sandbox": true, "sku": "jqwLfyh5UUBSKyen", "subscriptionId": "hZ56H3l3jc1060kq", "title": "FKNcGHYIXDqQpOY2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'CreateUserPaymentOrder' test.out

#- 269 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '56yQcC8CPFXan7LU' \
    'fcQhcxynrF5qWYvJ' \
    --body '{"description": "X1f7rYnPbkDk5g9y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'RefundUserPaymentOrder' test.out

#- 270 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '47AVCmFD0nKyUwcI' \
    --body '{"code": "9KJZt31la1wZgpPX", "orderNo": "xtcOPw0UBm7wccEL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'ApplyUserRedemption' test.out

#- 271 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'Vo9RYTquwIrGgk3e' \
    --body '{"meta": {"qgOf7WwNZWyYuM3y": {}, "1TjdcOVw94gqQYOW": {}, "Gw7LSW6Kb9otdVBj": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Epic", "currencyCode": "qNMv4XLW0xlb6yLT", "namespace": "ssmZXLvxRhf6ICrM"}, "entitlement": {"entitlementId": "r8z6e2UDBycYrDDg"}, "item": {"itemIdentity": "5iDNLOJJmzGW9AQM", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 27, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "zB1jbh95vj0V2ccQ", "namespace": "60lub807E0PGhia3"}, "entitlement": {"entitlementId": "QvaFIVfHyAiTeDDu"}, "item": {"itemIdentity": "vgKTfrZ6TfrQrFIs", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 7, "type": "ITEM"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "n2pA64FJuEPymbIA", "namespace": "wDAyNBagGD33WMVj"}, "entitlement": {"entitlementId": "7bfdfxyqKQ4YNnTT"}, "item": {"itemIdentity": "wZeuX7f9iY3skbk2", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 78, "type": "ITEM"}], "source": "ORDER", "transactionId": "6zS6a5C6awft8NPN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'DoRevocation' test.out

#- 272 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    'JCopJg7IJTeOWoVt' \
    --body '{"gameSessionId": "cblaKlhxMNx5h4l3", "payload": {"ogPTLlSlGfh2XhfC": {}, "B53jlBjzXLwoMxsh": {}, "oo8aHsXJ87ywdDto": {}}, "scid": "u8Np74s3RLe4gpS5", "sessionTemplateName": "50eQ5WiZiQUzC0vB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'RegisterXblSessions' test.out

#- 273 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'F108QVF9gKmJBuqE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'QueryUserSubscriptions' test.out

#- 274 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'pgnV3xNdP3uQJ2Zd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'GetUserSubscriptionActivities' test.out

#- 275 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'CStanvPwuBVifTkf' \
    --body '{"grantDays": 23, "itemId": "mRITEU7usHknnfYN", "language": "Y7ZXicpAJw7Ct9Am", "reason": "EoUNlmQjebaV8c13", "region": "FZxX6qNntgmml0ts", "source": "1uw7WvaRDN6waXRB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PlatformSubscribeSubscription' test.out

#- 276 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'RT78fZc6LpvtY7Bk' \
    '3j0Rt5ai8x1JHTPf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 277 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'ATk2jDkPq7n0Vqgi' \
    'BJsxKkXhiEo0RXgJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'GetUserSubscription' test.out

#- 278 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'kWelLk7pTvUfmra4' \
    'esdZ2v5vKHsJ5Dez' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'DeleteUserSubscription' test.out

#- 279 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'dlRlTTSLmDolGdb7' \
    'yXLAgfgESHWCK8Lc' \
    --body '{"immediate": false, "reason": "aIIRxeTkl27M6Agg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'CancelSubscription' test.out

#- 280 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'zKZ3nqWutrpjBOnB' \
    'eqwBnFdy01mQjVbl' \
    --body '{"grantDays": 79, "reason": "g0TSRxhI4XnmuQN6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'GrantDaysToSubscription' test.out

#- 281 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    '5HKi5qvwLIqgfXvK' \
    'jhXcfKE45hKdn2Ay' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'GetUserSubscriptionBillingHistories' test.out

#- 282 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    '5KgtWue3XkqcMKE9' \
    'l0uRkf5RxDdVVe0V' \
    --body '{"additionalData": {"cardSummary": "vPmen8keuXuWuitb"}, "authorisedTime": "1977-11-24T00:00:00Z", "chargebackReversedTime": "1996-05-26T00:00:00Z", "chargebackTime": "1993-08-28T00:00:00Z", "chargedTime": "1974-08-22T00:00:00Z", "createdTime": "1989-10-06T00:00:00Z", "currency": {"currencyCode": "46ZNRNpLcI8Vh4bQ", "currencySymbol": "O4Nc65zcFKgC0oME", "currencyType": "REAL", "decimals": 49, "namespace": "gLEiStlzCMldcic4"}, "customParameters": {"UcTKpdyvGEAo7B9g": {}, "Tsb09YBTADJQdJJb": {}, "27jRm1nyjO60S3gf": {}}, "extOrderNo": "5tl2wHKp1L42H1n3", "extTxId": "ZvUrBoqK16btU6So", "extUserId": "aoiAtMgNN8B4oo9j", "issuedAt": "1987-11-19T00:00:00Z", "metadata": {"mBqiyicQHvr1zREq": "WwsQaxbdG9IxEoxc", "gOEmGQpzN4HM3v5w": "AiimBQXCxR1cObsy", "s0SaqnYIBTANshJc": "dLEofyiS3dO8j3ta"}, "namespace": "WbShXMN0MRNkMX09", "nonceStr": "nQEwFSce6VsIsSSd", "paymentMethod": "kP3IqaPaXJc57cVP", "paymentMethodFee": 21, "paymentOrderNo": "tXCteutO2hlDa0vo", "paymentProvider": "WXPAY", "paymentProviderFee": 54, "paymentStationUrl": "ei7AZBrLdMJG912C", "price": 72, "refundedTime": "1971-07-17T00:00:00Z", "salesTax": 23, "sandbox": false, "sku": "kC6LzFqk7MSt4enx", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "GvxKwuL3MuhHXzy6", "subscriptionId": "WjNeNYuVWrqxrNDh", "subtotalPrice": 37, "targetNamespace": "pmS8p27dvzUWMz6I", "targetUserId": "heEap1PhjtZknu6K", "tax": 9, "totalPrice": 44, "totalTax": 23, "txEndTime": "1979-03-01T00:00:00Z", "type": "k6CNRAfp1s21wulz", "userId": "8cb64KjGDHolxRGH", "vat": 37}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'ProcessUserSubscriptionNotification' test.out

#- 283 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'V6wTNktWOwGcqmkq' \
    'ou4IX6ynCg7jZBPZ' \
    --body '{"count": 95, "orderNo": "L89PjvtwaUDi2fDy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AcquireUserTicket' test.out

#- 284 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'XlYJu8bIkkFh5Lqx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'QueryUserCurrencyWallets' test.out

#- 285 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'A2jff0fTRIYip6c9' \
    'di8JeefXJ2PdIoHd' \
    --body '{"allowOverdraft": false, "amount": 73, "balanceOrigin": "Steam", "balanceSource": "ORDER_REVOCATION", "metadata": {"HgvwcWxlmJoJSnhy": {}, "f4L6dZ66Zi7azAJH": {}, "L5PE9RVZONAcvKXL": {}}, "reason": "23ppvor8grcvFvYa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'DebitUserWalletByCurrencyCode' test.out

#- 286 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'jtvdiqyZzxREBSrO' \
    'k54EyWalLjCH6xr3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'ListUserCurrencyTransactions' test.out

#- 287 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 44, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"3YRc0T3d9XaFEWXt": {}, "vTExHo1HliWVA9kY": {}, "xDaegAgXI2ciZ5FW": {}}, "reason": "oyqYl8KD0zlFtltc", "walletPlatform": "Xbox"}' \
    'yBugfReiDLdSTRmE' \
    'lGhVQf227V7ADaQH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'CheckBalance' test.out

#- 288 CheckWallet
eval_tap 0 288 'CheckWallet # SKIP deprecated' test.out

#- 289 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    't78b3DT7qRYPx0W6' \
    'cXzOdGXLsEc8Xzmj' \
    --body '{"amount": 100, "expireAt": "1996-08-02T00:00:00Z", "metadata": {"4csMlaBkq9QHEb66": {}, "Bo3ALdAKAQUoGDOU": {}, "FK4BcWOxnwerZoIJ": {}}, "origin": "GooglePlay", "reason": "JMtHAD8gJdK4CJBY", "source": "TRADE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'CreditUserWallet' test.out

#- 290 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 52, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"4CHHaydtaKJNujTv": {}, "CDwyDu1QGAcJRAK1": {}, "mgNt0pudyASz9qbH": {}}, "reason": "Esbgt8Nb6qoNGzjQ", "walletPlatform": "Steam"}' \
    '73CfYbn53kIRN1df' \
    '13EvjSbGYcLQEocU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'DebitByWalletPlatform' test.out

#- 291 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'fUPAI2O4xXXwCsNt' \
    'kQh3rUUKaN66Rjkt' \
    --body '{"amount": 46, "metadata": {"zWkx2SjE4MM82Qw4": {}, "C7p4YKcL3qt4lUCj": {}, "plpfxQDpz3ka75GS": {}}, "walletPlatform": "Oculus"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PayWithUserWallet' test.out

#- 292 GetUserWallet
eval_tap 0 292 'GetUserWallet # SKIP deprecated' test.out

#- 293 DebitUserWallet
eval_tap 0 293 'DebitUserWallet # SKIP deprecated' test.out

#- 294 DisableUserWallet
eval_tap 0 294 'DisableUserWallet # SKIP deprecated' test.out

#- 295 EnableUserWallet
eval_tap 0 295 'EnableUserWallet # SKIP deprecated' test.out

#- 296 ListUserWalletTransactions
eval_tap 0 296 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 297 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'ListViews' test.out

#- 298 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    'ZSzWfq3hqssnqUPI' \
    --body '{"displayOrder": 74, "localizations": {"WXeUSuTJRHgBRpSb": {"description": "3GL7YAU5AnUkmfVW", "localExt": {"93ZW1tXAOpK37SfS": {}, "PivmYx19GWm87P1G": {}, "bEQA6nI1VhgTvfzw": {}}, "longDescription": "fgRZntMhunn3jSCD", "title": "2AknCwPe4TX4CK4I"}, "BY01KuFbs8Iv2Ij9": {"description": "B7VD3SyR3UCMUtsT", "localExt": {"LoeVLjxbwUQUVEWE": {}, "0xtN3v8DgFUrjRGz": {}, "thYJKH9vhOLpoWOS": {}}, "longDescription": "JS0kU6fD66yb2MtS", "title": "EiRgh67ylD9xIb44"}, "v71qZ2QmEuNVKEmo": {"description": "FSme2B5xb6kbzroG", "localExt": {"yrFwTSdzLOXwPp0O": {}, "S1jOq8HtddVhZ7lf": {}, "OiLRYQkDw4MI4SEq": {}}, "longDescription": "iXIaji4MOmP494vG", "title": "lNtuMUpS3K4kKGKc"}}, "name": "t8SZQK7TEK4sZzj7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'CreateView' test.out

#- 299 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'oPP3OeZVILEaXbHn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'GetView' test.out

#- 300 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'hR8gT3if17nsndhy' \
    '0Gtga4xRRNit3Apy' \
    --body '{"displayOrder": 54, "localizations": {"nc4UqgNJcVC0MQnj": {"description": "UphnyKSPgLrITdqg", "localExt": {"HGJd9AlCqccvcf4a": {}, "G26GboaJ63McAoV2": {}, "wACiUOAYJUhwTgl0": {}}, "longDescription": "tvWir64fqpyffEz0", "title": "xbTHKA2YqU0FWbYO"}, "y7zpSeyGBLauvijI": {"description": "1vUPcP4XMNICniSw", "localExt": {"lnSYTuNVajwq9onI": {}, "9NBO48v6DUJRe1Lp": {}, "wuZIoLrVS0AcrY9V": {}}, "longDescription": "dxzm1SnMFP7ijRI3", "title": "15PPtar2LEaQgwjg"}, "NbqY9SXZMP793iEd": {"description": "DgNGO3Dfmm8Q8A03", "localExt": {"ovBcVCnifE0YS9Kh": {}, "gP8rRhISjcIvS4I6": {}, "tzdbpIKoQhtOlKvn": {}}, "longDescription": "pfkWv9kQ9FRDgAEV", "title": "fEZshgoviRWdaswU"}}, "name": "zfV36Hwf7gG4iNZf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'UpdateView' test.out

#- 301 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'EJ6PGvsYDnaTT5U0' \
    'e2LY7yB5EiqQhvZm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'DeleteView' test.out

#- 302 QueryWallets
eval_tap 0 302 'QueryWallets # SKIP deprecated' test.out

#- 303 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 60, "expireAt": "1978-06-02T00:00:00Z", "metadata": {"CzyYEaMgXsszL7hp": {}, "sSwAQxtDEUm4PnTT": {}, "yHhBvqhixMPjP9lZ": {}}, "origin": "Xbox", "reason": "O6iUdCh9M0KC9zNZ", "source": "REFUND"}, "currencyCode": "HTOOdvA4UhdTY2DN", "userIds": ["ANvZ0I2EGVDWs67z", "Z43r4ZLb7i2SZkIa", "sFuGcD5vraJ3Wftg"]}, {"creditRequest": {"amount": 48, "expireAt": "1973-11-06T00:00:00Z", "metadata": {"XmSBfgrJcwR3qktA": {}, "dH94tziEpGVXsUve": {}, "z1lbenagh9kCPNSZ": {}}, "origin": "System", "reason": "c76AToup2zhRng3K", "source": "DLC"}, "currencyCode": "HPiPqvMMmYJeKvsh", "userIds": ["c7wXieEOkn4KNYWb", "KtZSng8Oi6TDpSGw", "wdE9XuQ8gykJm5GM"]}, {"creditRequest": {"amount": 45, "expireAt": "1980-05-30T00:00:00Z", "metadata": {"mtsOVvpKYJyOQGUi": {}, "qcJ2Jldy73ukTxjf": {}, "HXQQVmxHmCVmuzoO": {}}, "origin": "Playstation", "reason": "qep49tDHFl18cQlJ", "source": "PROMOTION"}, "currencyCode": "GIrWq2VvH0roA20S", "userIds": ["fzrc9YYsgvVLN3us", "fhiyCf1FOddxtE52", "sFK1jNp3OwcrNR2j"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'BulkCredit' test.out

#- 304 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "H7Xx7m8IqIRyUqaC", "request": {"allowOverdraft": false, "amount": 5, "balanceOrigin": "Twitch", "balanceSource": "PAYMENT", "metadata": {"a2LqgJOAfFwvvgYP": {}, "IFEVZLGzEglEe95L": {}, "WKrkj7TPuigp3RiJ": {}}, "reason": "ofgD4VypGT4cTfKN"}, "userIds": ["wS5kNxCPLeKM4cQl", "rjPqUk0t9aquw2B2", "UVIQMA6BOpxtYbmQ"]}, {"currencyCode": "8DlY91SXBeHwrkPC", "request": {"allowOverdraft": false, "amount": 54, "balanceOrigin": "Playstation", "balanceSource": "OTHER", "metadata": {"cmEvk3rVTLjZT9qa": {}, "yJJtW8sqkuIBd1Nr": {}, "GWPVvOhMTdfTjLVx": {}}, "reason": "zjyQsgv5n6Vn7Tia"}, "userIds": ["wPTM0LfcjvOko733", "kc1Rzb4MCHH4aATH", "2ZZa1YfuaQ7gPgiz"]}, {"currencyCode": "2EBME5ikH5iUT9GB", "request": {"allowOverdraft": false, "amount": 41, "balanceOrigin": "System", "balanceSource": "PAYMENT", "metadata": {"cYzy0T6Q89155mM6": {}, "RsYxtVcgA1q0sR85": {}, "DcnV5fUvb2OK8scK": {}}, "reason": "4MyIy9F8aBXzn8z7"}, "userIds": ["2hf4D4NOpbUDnyVm", "YotZCA9LADbjj6vi", "KPQxoVP77RuEzCRL"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'BulkDebit' test.out

#- 305 GetWallet
eval_tap 0 305 'GetWallet # SKIP deprecated' test.out

#- 306 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'rZmVBFc2P689TFuh' \
    '1hFoX56gzosv2p6W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'SyncOrders' test.out

#- 307 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["tLfgPM8t1tgWhx94", "eFnxfKdptYcgxbMB", "Zz4e7YZPuTkhJH0g"], "apiKey": "QxqxmEFytm0rZGlR", "authoriseAsCapture": true, "blockedPaymentMethods": ["zTgGQs1FIKxCXUhN", "dJ4cK7rz2VPJ8AZ9", "i1ml0sbgQ5zPZbll"], "clientKey": "wvt3TjGezRRUjCNi", "dropInSettings": "QauO5Cfja0qWoqWr", "liveEndpointUrlPrefix": "ZJAMVQaCd4UgSRsF", "merchantAccount": "c8FKz1j1HfaNk1P4", "notificationHmacKey": "hC8wgvaTIntj0rek", "notificationPassword": "mCKMOHEhe6apnthJ", "notificationUsername": "sQpzHxEsiEsZH3UV", "returnUrl": "mVcOxU0GsP6oBsZy", "settings": "1nIeavdWM4UiM8xE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'TestAdyenConfig' test.out

#- 308 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "2iHgKDtYUBWq18cb", "privateKey": "nbAjszS84wsQH451", "publicKey": "BnJRGwBPZ82ML7i8", "returnUrl": "5xAiG2FleXiqNPey"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'TestAliPayConfig' test.out

#- 309 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "mXgMK8gaxYcDDZjC", "secretKey": "rklUdoPRrSlMOoEl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'TestCheckoutConfig' test.out

#- 310 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'DebugMatchedPaymentMerchantConfig' test.out

#- 311 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "lCitDiZDBLqmmiE0", "clientSecret": "hD2A6L9zZJpI7J4n", "returnUrl": "jh6wMyuNtA5mMerA", "webHookId": "vf2EK1rsQWD1svih"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'TestPayPalConfig' test.out

#- 312 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["oAZBd4hkykRLwN2L", "HFkXjhDf4RPTS1xm", "IM78uco5di3sJNay"], "publishableKey": "fJakaJtAFsemukeO", "secretKey": "nQqvXAFVKLeOpEjP", "webhookSecret": "JDBPU8LPr0bjy4nF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'TestStripeConfig' test.out

#- 313 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "kl8n6PSoXYb9tc6r", "key": "YyOiaUKC8t4GV0Ji", "mchid": "E7ZbWP80ZctunIw8", "returnUrl": "zzjr1oeY1p4P0xno"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'TestWxPayConfig' test.out

#- 314 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "1luSqciM4rfqsoJ7", "flowCompletionUrl": "AkLiYjJvlKhH1ccn", "merchantId": 35, "projectId": 72, "projectSecretKey": "p3T2fKqq9CzJlj0U"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'TestXsollaConfig' test.out

#- 315 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'GtCqJnqpaur75iSs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'GetPaymentMerchantConfig' test.out

#- 316 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'LSqGKfGJDmzFepqp' \
    --body '{"allowedPaymentMethods": ["oIzofQ17bQpOtqU8", "Y63DFSnh5IbdftTL", "RLUGwenKzXRT99U5"], "apiKey": "B5j9CT2YI1qt4AYI", "authoriseAsCapture": true, "blockedPaymentMethods": ["4fgXlDCLFwNGzR7z", "vW33BLQ5NyteBZg7", "IM93LGdMKko1WdXc"], "clientKey": "uqjnyBh936FR7fT7", "dropInSettings": "f00EZw65iq4fnnFA", "liveEndpointUrlPrefix": "4ieAeG0JcWHLxYck", "merchantAccount": "KH0j3mmJ2Y5FsP84", "notificationHmacKey": "rgl0AQlBikeTeA9e", "notificationPassword": "q8hIKrzAUsKqpjQG", "notificationUsername": "HI3Wkg4HIrEmqfnh", "returnUrl": "jjtIQ7ipAfw6xTfJ", "settings": "iEwGhGbMCnu8NHDP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'UpdateAdyenConfig' test.out

#- 317 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'iOQzKhR4x3pYj5be' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'TestAdyenConfigById' test.out

#- 318 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '9x03hTzeUaFK6P6y' \
    --body '{"appId": "xOlFhdtyrLQHkz1E", "privateKey": "s8nQbk4SztMOdFHQ", "publicKey": "XjAZrDNCoJ22Rrow", "returnUrl": "eT9Xanvbg8nAmHsr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'UpdateAliPayConfig' test.out

#- 319 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'mzoPN3GJz77wPral' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'TestAliPayConfigById' test.out

#- 320 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'gkstRsUi0oaze9bI' \
    --body '{"publicKey": "njdq27RgguQ45JSo", "secretKey": "DgfLayvPNWmvzOaD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'UpdateCheckoutConfig' test.out

#- 321 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'topfGPnF4i8PP7jd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'TestCheckoutConfigById' test.out

#- 322 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'my3KsRDI0m4nKNGl' \
    --body '{"clientID": "Xp2jJfLGd0zQqYmG", "clientSecret": "kk8Pcq83l2hWOuqs", "returnUrl": "ilAWXNFfxIWM9jL0", "webHookId": "8jtCIr8STWuiyz2e"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'UpdatePayPalConfig' test.out

#- 323 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'Ogny7d8WVlcOTKoZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'TestPayPalConfigById' test.out

#- 324 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'imYNHB2ph25oEsCR' \
    --body '{"allowedPaymentMethodTypes": ["rlY6AX1ksmS6Cm75", "yFZVt1HZPcFbl4Xr", "KUphPevxFz1b7Q3N"], "publishableKey": "wVn8PU8JfFPiZpcq", "secretKey": "q8qH8MR9K5kA67H3", "webhookSecret": "XOJlQfOCN2keFNIQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'UpdateStripeConfig' test.out

#- 325 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'usmcAYWBLZg00dmq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'TestStripeConfigById' test.out

#- 326 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'gWRmPnXpH8xifqav' \
    --body '{"appId": "EfKK0Dei3ChLwkIG", "key": "KtgDjDah0UewhSyu", "mchid": "7JMOvmbqHpLDqY64", "returnUrl": "bsfWMA6zIWiASrar"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'UpdateWxPayConfig' test.out

#- 327 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'IiILeXO18VYOBdYd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'UpdateWxPayConfigCert' test.out

#- 328 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'QraUweJSX5gGRLc0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'TestWxPayConfigById' test.out

#- 329 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'R4vMMPlJqY7ujDDL' \
    --body '{"apiKey": "uoQJspLLZbnusI9N", "flowCompletionUrl": "ty8KpP0RHI8icuY9", "merchantId": 74, "projectId": 17, "projectSecretKey": "kXDnEXVzzBDNoUXO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'UpdateXsollaConfig' test.out

#- 330 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'IkGhmAMgJu6c1uzC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'TestXsollaConfigById' test.out

#- 331 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'A657ulArgYuyjFEv' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'UpdateXsollaUIConfig' test.out

#- 332 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'QueryPaymentProviderConfig' test.out

#- 333 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "Q5iJtNrVbjnyYERw", "region": "24T1DBdzzVbhZKnh", "sandboxTaxJarApiToken": "9FfHsuwhOtgOWtZu", "specials": ["ALIPAY", "ALIPAY", "WXPAY"], "taxJarApiToken": "ONbsaq6FR89FVcE5", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'CreatePaymentProviderConfig' test.out

#- 334 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'GetAggregatePaymentProviders' test.out

#- 335 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'DebugMatchedPaymentProviderConfig' test.out

#- 336 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'GetSpecialPaymentProviders' test.out

#- 337 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'UWRlOGzgjnghEeYu' \
    --body '{"aggregate": "XSOLLA", "namespace": "A3fZ9naIn2EhpBna", "region": "mOqQfF1i9lDi17Tu", "sandboxTaxJarApiToken": "zOCkfreVXF3F57a8", "specials": ["CHECKOUT", "PAYPAL", "WALLET"], "taxJarApiToken": "FBQVq8F8UHFjnV4a", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'UpdatePaymentProviderConfig' test.out

#- 338 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'Q6h4G1JwgwqyIOpm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'DeletePaymentProviderConfig' test.out

#- 339 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'GetPaymentTaxConfig' test.out

#- 340 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "NMgpfDY1FR9rKaxa", "taxJarApiToken": "WsCGgI79Hr331Yip", "taxJarEnabled": true, "taxJarProductCodesMapping": {"eHGdU9mllRGwL1hP": "0ILR0Ela7ZLwTA0w", "t5op6F6Z1a1sBmUa": "Cx3pnw2UqOcXFVD0", "pboKkDZJufSvoXGy": "r43yZ4vipgYCZiVh"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'UpdatePaymentTaxConfig' test.out

#- 341 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'uUlRF8bgS0Z3T7DC' \
    '5TO5zuEOtCw7S3b8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'SyncPaymentOrders' test.out

#- 342 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicGetRootCategories' test.out

#- 343 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'DownloadCategories' test.out

#- 344 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'oIW8rduVEpRjbhlZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGetCategory' test.out

#- 345 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    '8rATgmfiV8x6LtOu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetChildCategories' test.out

#- 346 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    '3SAtYQcZ2M0m2eu4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicGetDescendantCategories' test.out

#- 347 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicListCurrencies' test.out

#- 348 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'GeDLCDurableRewardShortMap' test.out

#- 349 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'GetIAPItemMapping' test.out

#- 350 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'aXSjyAQ2QsMJlAxZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicGetItemByAppId' test.out

#- 351 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicQueryItems' test.out

#- 352 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'Uci2CC1SEp55Timg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicGetItemBySku' test.out

#- 353 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'FFENNE15OyfCm3JL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicGetEstimatedPrice' test.out

#- 354 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'SdyxEkUrupaAg8X3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicBulkGetItems' test.out

#- 355 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["qrN4NJQHucDPcorT", "kEhvJJBHTf7gHQdN", "qoM8JpOKNAU33hDe"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicValidateItemPurchaseCondition' test.out

#- 356 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'ba57ZY9YNNrTcdcn' \
    'zDvUHgR2bX5lx9Aj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicSearchItems' test.out

#- 357 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'wbpWgnIzWRtzH2wW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicGetApp' test.out

#- 358 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'VwIlnX0PYoF43qdl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicGetItemDynamicData' test.out

#- 359 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'pBadznEopQjdlmCK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicGetItem' test.out

#- 360 GetPaymentCustomization
eval_tap 0 360 'GetPaymentCustomization # SKIP deprecated' test.out

#- 361 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "ky8f25OS6EXRpHjQ", "paymentProvider": "ALIPAY", "returnUrl": "FmCCywXfHj329WcN", "ui": "k8k8qK4gJrux6tlQ", "zipCode": "DfleFLBKj8h7ZrO4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicGetPaymentUrl' test.out

#- 362 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'pTU7jATbVBcDGudQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicGetPaymentMethods' test.out

#- 363 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'Qm98BKOdsoaTqFhd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUnpaidPaymentOrder' test.out

#- 364 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'LfBWZeRFQvrB1lsW' \
    --body '{"token": "aPGfJVUla8UlMM4C"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'Pay' test.out

#- 365 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'c3k5J2qbHYNekyXL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicCheckPaymentOrderPaidStatus' test.out

#- 366 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'STRIPE' \
    'Oajs9HWygfQVPPqE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'GetPaymentPublicConfig' test.out

#- 367 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    '6XNxmrOFx6AenNJC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicGetQRCode' test.out

#- 368 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'zeLqjOhHMsieBzDB' \
    'hi6oZhjEnbkZp3ZH' \
    'CHECKOUT' \
    'hcek3atmhTw5TDjW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicNormalizePaymentReturnUrl' test.out

#- 369 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'Ygm2yGvhR6HS643v' \
    'ALIPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'GetPaymentTaxValue' test.out

#- 370 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'N7ybL3lT1Ois7OsT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'GetRewardByCode' test.out

#- 371 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'QueryRewards1' test.out

#- 372 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'ElVV8XJ7Jg2JP8JK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'GetReward1' test.out

#- 373 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicListStores' test.out

#- 374 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicExistsAnyMyActiveEntitlement' test.out

#- 375 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'Q1Fia4jQzEGsQTmK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 376 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'Teq9hsX0E1pSQzkJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 377 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'a95maQLAJLoGMHeP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 378 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicGetEntitlementOwnershipToken' test.out

#- 379 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "6XZjcdrsSt4spX9e", "language": "VJcX_qR", "region": "8bRBVoq807roCNo3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'SyncTwitchDropsEntitlement' test.out

#- 380 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'Qw4Z54sNMs82e3yx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicGetMyWallet' test.out

#- 381 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'hkTFfQHB8O5ke34N' \
    --body '{"epicGamesJwtToken": "GuMLQ7iPaGqelc3l"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'SyncEpicGameDLC' test.out

#- 382 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'brPkW2foKqIz9z80' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'SyncOculusDLC' test.out

#- 383 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'ICxp4M7Opf9oRlvB' \
    --body '{"serviceLabel": 38}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicSyncPsnDlcInventory' test.out

#- 384 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'fidwt7qJ1Y75wS8M' \
    --body '{"serviceLabels": [26, 42, 59]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 385 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'PLfvTFl9DbHQLYWC' \
    --body '{"appId": "wsAVcQ0VGEUxlcNQ", "steamId": "WOpRLETWMAv0uJ30"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'SyncSteamDLC' test.out

#- 386 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'L51TxrdknW52x2o1' \
    --body '{"xstsToken": "yDO6bwcKYeFoxUWd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'SyncXboxDLC' test.out

#- 387 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'vEBTwUyzq5bzdNEH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicQueryUserEntitlements' test.out

#- 388 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'v6GmaokUOIadEDAm' \
    'p524IRplmKcwvGgu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserAppEntitlementByAppId' test.out

#- 389 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'z7SAcGvV4lCJgcrA' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicQueryUserEntitlementsByAppType' test.out

#- 390 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'XshhArmrrsTXqjhr' \
    'yZuWF0aXyAfnT9KM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicGetUserEntitlementByItemId' test.out

#- 391 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'wZkUmivHbmYwS4Mp' \
    'DJ1DYOnlVrhflY3M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserEntitlementBySku' test.out

#- 392 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'zIef9mtXHbh3agt9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicExistsAnyUserActiveEntitlement' test.out

#- 393 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'HQKHNhlzYRtA24gR' \
    'vv870jG3e6kpEZmt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 394 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'rpzaLfufFoH0vIAA' \
    'Z3D07rENh4LQyLj7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 395 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'QmX1ijJDLqjyW5nS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 396 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'pi08dnnmoWGbDOWB' \
    'zflDPp8sE7bcL6xy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 397 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    '49IPWxqs6jAQJWL8' \
    'Yc3AKtQffBJPNo4V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserEntitlement' test.out

#- 398 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'IzCxIBQt7BEsLhZn' \
    'LrMlvvXDmz8vDIkH' \
    --body '{"options": ["RMj2pIYdQhOINS63", "1eYxKFwpR5ukyHmV", "B2oTqRWbK0ubDt08"], "requestId": "F3Ptynki71NZANUG", "useCount": 42}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicConsumeUserEntitlement' test.out

#- 399 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    'XywOPxcLTU0y3maq' \
    'ZGwBZAszrs6F6qWE' \
    --body '{"requestId": "8F5UT7Jy1J0W4Bcr", "useCount": 98}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicSellUserEntitlement' test.out

#- 400 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'wzPSicmKe5tLTY4T' \
    --body '{"code": "61Ztjv4HjtKUJ2g5", "language": "Dl-gBeZ_Kk", "region": "L304sV2h9pg3yvd9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicRedeemCode' test.out

#- 401 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'MZqnUseNuEx7YDEk' \
    --body '{"excludeOldTransactions": false, "language": "gup_bVbG", "productId": "q6LMyqmJBIayJYIY", "receiptData": "PCQLT4UtcQmxMnH6", "region": "08ZzCha8xLBGlN6G", "transactionId": "GKXlt1XAswrMMjtu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicFulfillAppleIAPItem' test.out

#- 402 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'fusABAiEcZPc54Zo' \
    --body '{"epicGamesJwtToken": "DD56c8ZJFga6qXT5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'SyncEpicGamesInventory' test.out

#- 403 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '6186aDmZpx6FpqFA' \
    --body '{"autoAck": false, "language": "mrJg_SYgR_FV", "orderId": "8QPR4rrBu0xMLSZM", "packageName": "2reG0eUsKe4gH8U0", "productId": "4S5FCpmYeCJwMPHx", "purchaseTime": 54, "purchaseToken": "qbq2es6TWDRr2bTP", "region": "UxXfvsOwNGBX5w0C"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicFulfillGoogleIAPItem' test.out

#- 404 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'KM4KgSaTFkYqyDBV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'SyncOculusConsumableEntitlements' test.out

#- 405 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'eKhVWlgMI2a4HuuQ' \
    --body '{"currencyCode": "iMf3ZtSRaKTvnYQc", "price": 0.6845096479951799, "productId": "K3OLU5xNeaLjRoNM", "serviceLabel": 26}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicReconcilePlayStationStore' test.out

#- 406 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'Z7MQ0xXiAUp37WFZ' \
    --body '{"currencyCode": "G1bPREFnLFvdjVz0", "price": 0.0281142707254034, "productId": "F4f5a8wwsXbVcGQF", "serviceLabels": [24, 69, 5]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 407 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'BmznrLziwCnnibCj' \
    --body '{"appId": "n2uxoSkuKry9iZZv", "currencyCode": "treyTjGpaUSGjv2A", "language": "Bm", "price": 0.0621804040460453, "productId": "usCtKYo61c23RG7T", "region": "7E4yKJUPzM18zamm", "steamId": "JN39lhBPiRxSSC36"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'SyncSteamInventory' test.out

#- 408 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    '9UVGTnts7qK33YCs' \
    --body '{"gameId": "De0la83cvnj5Ut4Y", "language": "IXFj-AcZn-632", "region": "FMVlAhaDsIMEFd3S"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'SyncTwitchDropsEntitlement1' test.out

#- 409 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'DQ0zyrZOMqd75oCp' \
    --body '{"currencyCode": "2u2A2ZLrkeWbmcgf", "price": 0.25607170878080576, "productId": "lQTNIZctTysFM89B", "xstsToken": "CAF2MVozVctDaMus"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'SyncXboxInventory' test.out

#- 410 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    '5bsovjmmxHjjlquE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicQueryUserOrders' test.out

#- 411 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'SAZpAC3MEgBrVUoM' \
    --body '{"currencyCode": "CPYZARtb3TsS5jOB", "discountedPrice": 89, "ext": {"jAyU8thUL0rK6YlD": {}, "gS7DF6WHO4xKI3Dz": {}, "XlqZ97UEX77J2ZaC": {}}, "itemId": "gl5zfvvm60VIJWtA", "language": "uJp_xdkM_nS", "price": 51, "quantity": 75, "region": "B9JEYLPl0Rjsq0yR", "returnUrl": "uQRarSVoIleZ7Ptb", "sectionId": "bcriinQEr7oILTom"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicCreateUserOrder' test.out

#- 412 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'zVEdqAFGjuRaB4cc' \
    'MpIH8Lan5Ny9rMiD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicGetUserOrder' test.out

#- 413 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    '8seoTU64hQTXu9Mi' \
    'xCLkCkF4GsByu7cc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicCancelUserOrder' test.out

#- 414 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'qHPLY7ScjfHWvp5y' \
    'xoHDN8wbZhTBvAeH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicGetUserOrderHistories' test.out

#- 415 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'GP8MEJHjkHXgaYcr' \
    'I47DABOUyTgLqcqW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicDownloadUserOrderReceipt' test.out

#- 416 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'j25jcDQ7S4nZymFu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicGetPaymentAccounts' test.out

#- 417 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    '9HDayb3pUN53xwUD' \
    'card' \
    '23II0TEDjWcIzfsS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicDeletePaymentAccount' test.out

#- 418 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'rF9JBbs3ioKOVcrf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicListActiveSections' test.out

#- 419 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'hki2j4K5qHkvYSU2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicQueryUserSubscriptions' test.out

#- 420 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'i8wpPg4f6CytNOpT' \
    --body '{"currencyCode": "cy8nFxnyUhq8QCAC", "itemId": "dn9QBrEBZ0FGcSF0", "language": "wn-GqgP", "region": "lqmdu4KlKLptx5DK", "returnUrl": "FWYNaRNbzpFsjJLs", "source": "zOiHFs5xAVg39H5h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicSubscribeSubscription' test.out

#- 421 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'noP20tlphew85KPy' \
    'j4EGRMQTeDUODYJl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 422 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'L3GEb7CgXWeXJrzN' \
    'rt0fkjelr7hVgkvQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicGetUserSubscription' test.out

#- 423 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'dto2PuC14Lu2G4Mw' \
    '4Mo4TirGDZ6OUYrf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicChangeSubscriptionBillingAccount' test.out

#- 424 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '6N5BjG6bELZwjEmK' \
    'gZXlgbV3dBwrK8hp' \
    --body '{"immediate": false, "reason": "ezU2RemXA27tg6by"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicCancelSubscription' test.out

#- 425 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'pXmwZRpU8Qcrmp46' \
    'NHHKuQExWorl4PYK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicGetUserSubscriptionBillingHistories' test.out

#- 426 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'J1GJKlZ26mxx5rFW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicListViews' test.out

#- 427 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'CDjFeol1Ra8c5c3F' \
    '5otSicHNAFf6XoFj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicGetWallet' test.out

#- 428 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'TyGzUy7Gy3lIbJD3' \
    'ko0KsF8jqH84W95Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'PublicListUserWalletTransactions' test.out

#- 429 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'QueryItems1' test.out

#- 430 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'ImportStore1' test.out

#- 431 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'Mkpzkat1qYXphVMs' \
    --body '{"itemIds": ["bw6Rv3XZ4XgIfTmv", "ZDu1OaoVmtgO5YP5", "6VohkMQrBSOet1Ec"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'ExportStore1' test.out

#- 432 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    'W3bKxXuYOn0ULO8b' \
    --body '{"metadata": {"wirHmfnBivLKinrw": {}, "TNNliEMZaebfXS8g": {}, "Z4cc4oVqQk9tqGzt": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "S24cMw2Lh6XTFr1d", "namespace": "0v5MiCVrY2QOMJmN"}, "item": {"itemId": "bAv9VCU7hdDbGzcJ", "itemSku": "Ka1wsM434xCGXTsh", "itemType": "5xydeZADSKQFv0tn"}, "quantity": 86, "type": "ITEM"}, {"currency": {"currencyCode": "5L7Nwx1i8sHEbX4m", "namespace": "IdomBVyorRK73vbW"}, "item": {"itemId": "SNBzkiEHyJEOg3iI", "itemSku": "jU3AAg7WG2eTsmDa", "itemType": "Tzm1iyRQNy7RFRXu"}, "quantity": 52, "type": "CURRENCY"}, {"currency": {"currencyCode": "S7oKchq3HFDAp8sn", "namespace": "TqP81J1c6C2wvWDh"}, "item": {"itemId": "sYWwX5hKxgCMD1qR", "itemSku": "yNe4g5DSTBpRPaWH", "itemType": "EoCnndVYqgBPmwdN"}, "quantity": 28, "type": "ITEM"}], "source": "OTHER", "transactionId": "VP1MHJQhmZHHktlL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'FulfillRewardsV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
